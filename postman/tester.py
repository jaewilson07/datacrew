import os
import sys
from typing import Dict, Any, List, Optional
import importlib.util
from datetime import datetime


def test_exports(
    export_folder: str, auth: dict, debug_api: bool = False, update_files: bool = True
) -> Dict[str, Any]:
    """Test all exported functions in the given folder path and optionally update the source files.

    Args:
        export_folder (str): Path to the folder containing exported API modules
        auth (dict): Authentication dictionary with base_url and headers
        debug_api (bool): Whether to enable API debugging
        update_files (bool): Whether to update source files with test results

    Returns:
        Dict[str, Any]: Dictionary with test results where keys are function names
                       and values are either responses or exceptions
    """
    results = {}

    # Ensure auth has required structure
    if auth is None:
        auth = {"base_url": "", "headers": {}}

    # Check if the directory exists
    if not os.path.isdir(export_folder):
        raise ValueError(f"Directory not found: {export_folder}")

    # Get all Python files in the directory
    py_files = [
        f
        for f in os.listdir(export_folder)
        if f.endswith(".py") and f != "__init__.py" and not f.startswith("test_")
    ]

    # Process each file
    for py_file in py_files:
        file_results = {}
        _process_test_file(
            py_file, export_folder, auth, file_results, debug_api=debug_api
        )

        # Update file with test results if requested
        if update_files:
            _update_file_with_results(py_file, export_folder, file_results)

        # Add file results to overall results
        results.update(file_results)

    # Print summary
    success_count = sum(
        1 for result in results.values() if result.get("success", False)
    )
    print(f"\nTest Summary: {success_count}/{len(results)} successful")

    return results


def _update_file_with_results(py_file: str, folder_path: str, results: dict) -> None:
    """Update source file with test results.

    Args:
        py_file (str): The Python file to update
        folder_path (str): The folder containing the file
        results (dict): Test results for the file
    """
    file_path = os.path.join(folder_path, py_file)
    module_name = py_file[:-3]  # Remove .py extension

    # Extract results for this module only
    module_results = {
        key.split(".")[-1]: value
        for key, value in results.items()
        if key.startswith(f"{module_name}.")
    }

    if not module_results:
        return

    # Format results as a comment
    timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    result_lines = [
        "\n",
        "# ======================================================",
        f"# Test Results (Last Run: {timestamp})",
    ]

    for func_name, result in module_results.items():
        status = result.get("status", "error")
        success = "✓" if result.get("success", False) else "✗"

        if isinstance(status, int):
            result_lines.append(f"# {func_name}: {success} Status: {status}")
        else:
            error = result.get("error", "Unknown error")
            result_lines.append(f"# {func_name}: {success} Error: {error}")

    result_lines.append("# ======================================================")

    # Read the current file content
    with open(file_path, "r", encoding="utf-8") as f:
        content = f.read()

    # Remove any existing test results section if present
    if "# Test Results (Last Run:" in content:
        content = content.split(
            "# ======================================================"
        )[0]

    # Add the results section
    result_text = "\n".join(result_lines)
    with open(file_path, "w", encoding="utf-8") as f:
        f.write(content.rstrip() + result_text + "\n")

    print(f"Updated {py_file} with test results")


def _process_test_file(
    py_file: str, output_path: str, auth: dict, results: dict, debug_api: bool = False
) -> None:
    """Process a single Python file for testing.

    Args:
        py_file (str): The Python file to process
        output_path (str): Path to the folder containing the file
        auth (dict): Authentication dictionary
        results (dict): Dictionary to store results in
        debug_api (bool): Whether to enable API debugging
    """
    module_name = py_file[:-3]  # Remove .py extension
    file_path = os.path.join(output_path, py_file)

    # Load the module dynamically
    try:
        print(f"Testing module {module_name} from {file_path}...")
        spec = importlib.util.spec_from_file_location(module_name, file_path)
        if spec is None or spec.loader is None:
            print(f"Failed to load module spec for {py_file}")
            return

        module = importlib.util.module_from_spec(spec)
        sys.modules[module_name] = module
        spec.loader.exec_module(module)

        # Find only functions defined in this module (not imported)
        module_dict = module.__dict__
        api_functions = [
            func_name
            for func_name, func_obj in module_dict.items()
            if callable(func_obj)
            and not func_name.startswith("_")
            and not func_name.startswith("test_")
            and func_obj.__module__
            == module.__name__  # Check if function is defined in this module
        ]

        # Test each API function
        for func_name in api_functions:
            _test_api_function(
                module, module_name, func_name, auth, results, debug_api=debug_api
            )

        # Check for test functions to run
        test_functions = [
            func_name
            for func_name, func_obj in module_dict.items()
            if callable(func_obj)
            and func_name.startswith("test_")
            and func_obj.__module__ == module.__name__
        ]

        for test_func_name in test_functions:
            _test_test_function(
                module, module_name, test_func_name, auth, results, debug_api=debug_api
            )

    except Exception as e:
        print(f"Error loading module {py_file}: {str(e)}")
        results[f"module.{module_name}"] = {
            "status": "error",
            "success": False,
            "error": str(e),
            "exception": e,
        }


def _test_api_function(
    module: Any,
    module_name: str,
    func_name: str,
    auth: dict,
    results: dict,
    debug_api: bool = False,
) -> None:
    """Test a single API function.

    Args:
        module (Any): The module containing the function
        module_name (str): Name of the module
        func_name (str): Name of the function to test
        auth (dict): Authentication dictionary
        results (dict): Dictionary to store results in
        debug_api (bool): Whether to enable API debugging
    """
    func = getattr(module, func_name)
    try:
        print(f"Testing {module_name}.{func_name}...")
        response = func(auth=auth, debug_api=debug_api)
        results[f"{module_name}.{func_name}"] = {
            "status": (
                response.status_code if hasattr(response, "status_code") else "unknown"
            ),
            "success": (
                (200 <= response.status_code < 300)
                if hasattr(response, "status_code")
                else False
            ),
            "response": response,
        }
        print(f"  Status: {results[f'{module_name}.{func_name}']['status']}")
    except Exception as e:
        results[f"{module_name}.{func_name}"] = {
            "status": "error",
            "success": False,
            "error": str(e),
            "exception": e,
        }
        print(f"  Error: {str(e)}")


def _test_test_function(
    module: Any,
    module_name: str,
    func_name: str,
    auth: dict,
    results: dict,
    debug_api: bool = False,
) -> None:
    """Test a single test function (functions that start with test_).

    Args:
        module (Any): The module containing the function
        module_name (str): Name of the module
        func_name (str): Name of the function to test
        auth (dict): Authentication dictionary
        results (dict): Dictionary to store results in
        debug_api (bool): Whether to enable API debugging
    """
    func = getattr(module, func_name)
    try:
        print(f"Running test function {module_name}.{func_name}...")
        response = func(auth=auth)
        results[f"{module_name}.{func_name}"] = {
            "status": (
                response.status_code
                if hasattr(response, "status_code")
                else "test_pass"
            ),
            "success": True,
            "response": response,
        }
        print(f"  Result: {results[f'{module_name}.{func_name}']['status']}")
    except Exception as e:
        results[f"{module_name}.{func_name}"] = {
            "status": "error",
            "success": False,
            "error": str(e),
            "exception": e,
        }
        print(f"  Error: {str(e)}")
