import os
import sys
from typing import List, Dict, Optional, Any
from dataclasses import dataclass, field
from models import PostmanRequest, PostmanCollection
from utils import to_snake_case
from urllib.parse import urljoin, urlparse
import utils


@dataclass
class PostmanRequestConverter:
    """Class to convert Postman requests to Python API client code.

    Extends the PostmanRequest class to add functionality for converting
    requests to Python code.
    """

    Request: PostmanRequest

    url: str = None
    function_name: str = None
    params: Dict[str, str] = field(default_factory=dict)
    headers: Dict[str, str] = field(default_factory=dict)

    # Instance variables to store filter configurations
    required_headers: List[str] = field(default_factory=list)
    ignored_headers: List[str] = field(default_factory=list)

    default_params: List[str] = field(default_factory=list)
    ignored_params: List[str] = field(default_factory=list)

    def __post_init__(self):
        self.generate_function_name()
        self.generate_headers()
        self.generate_url()
        self.generate_params()

    def export_function(
        self,
        export_folder: str,
        prefix: str = "",
        include_test_code: bool = True,
        is_replace: bool = True,
    ) -> str:
        """Export the function code to a Python file.

        Args:
            export_folder (str): Directory where the file should be created
            prefix (str, optional): Prefix to add to the filename. Defaults to "".
            include_test_code (bool, optional): Whether to include test code. Defaults to True.
            overwrite (bool, optional): Whether to overwrite existing files. Defaults to False.

        Returns:
            str: Path to the created file

        Raises:
            FileExistsError: If the file already exists and overwrite is False
        """
        # Create export folder if it doesn't exist
        filename = f"{prefix}{self.function_name}.py"
        filepath = os.path.join(export_folder, filename)

        utils.upsert_folder(filepath, is_replace=is_replace)

        # Generate filename with optional prefix

        # Generate the function code
        request_code = self.build_request_code()

        # Add test code if requested
        if include_test_code:
            test_code = self.build_test_code()
            complete_code = request_code + "\n\n" + test_code
        else:
            complete_code = request_code

        # Write to file with appropriate imports
        with open(filepath, "w", encoding="utf-8") as f:
            f.write("from utils import gd_requests\n\n")
            f.write("import requests\n")
            f.write("from typing import Dict\n\n")
            f.write(complete_code)

        print(f"Exported function to {filepath}")
        return filepath

    @staticmethod
    def _generate_function_name(url, method) -> str:
        """Get a valid Python function name from a URL.

        Args:
            url (str): The URL to convert

        Returns:
            str: A valid Python function name in snake_case
        """
        # Extract the last part of the URL path
        path_parts = url.split("/")
        endpoint = path_parts[-1] if path_parts else "endpoint"

        # Combine method and endpoint
        name = f"{method.lower()}_{endpoint}"

        # Convert to snake_case
        return to_snake_case(name)

    def generate_function_name(self) -> str:
        """Generate a function name from this PostmanRequest.

        Returns:
            str: A valid Python function name in snake_case
        """
        # Extract the last part of the URL path
        path_parts = self.Request.url.path
        endpoint = path_parts[-1] if path_parts else "endpoint"

        # Combine method and endpoint
        self.function_name = f"{self.Request.method.lower()}_{endpoint}"

        # Convert to snake_case
        self.function_name = to_snake_case(self.function_name)

        return self.function_name

    def generate_headers(
        self,
        required_headers: Optional[List[str]] = None,
        ignored_headers: Optional[List[str]] = None,
    ) -> Dict[str, str]:
        """Build headers dictionary from this PostmanRequest, optionally filtered by required and ignored headers.

        Args:
            required_headers (Optional[List[str]]): List of header keys to include. If None, all headers are included.
            ignored_headers (Optional[List[str]]): List of header keys to exclude. If None, no headers are excluded.

        Returns:
            Dict[str, str]: Dictionary of headers
        """

        if required_headers:
            self.required_headers = required_headers

        if ignored_headers:
            self.ignored_headers = ignored_headers

        # Start with all headers
        self.headers = {h.key.lower(): h.value for h in self.Request.header}

        # Filter out ignored headers
        if self.ignored_headers:
            self.headers = {
                k: v
                for k, v in self.headers.items()
                if k.lower() not in [h.lower() for h in self.ignored_headers]
            }

        return self.headers

    def generate_url(self) -> str:
        """Build the complete URL from this PostmanRequest.

        Returns:
            str: The complete URL
        """
        base_url = f"{self.Request.url.protocol}://{'.'.join(self.Request.url.host)}"
        path = "/".join(self.Request.url.path)
        self.url = str(urljoin(base_url, path))

        return self.url

    def generate_params(
        self,
        default_params: Optional[List[str]] = None,
        ignored_params: Optional[List[str]] = None,
    ) -> Dict[str, str]:
        """Build query parameters dictionary from this PostmanRequest.

        Args:
            default_params (Optional[List[str]]): List of parameter keys that must be included. If None, all parameters are included.
            ignored_params (Optional[List[str]]): List of parameter keys that should be excluded. If None, no parameters are excluded.

        Returns:
            Dict[str, str]: Dictionary of query parameters
        """
        # Store the parameters configuration
        if default_params:
            self.default_params = default_params

        if ignored_params:
            self.ignored_params = ignored_params or []

        # Start with all parameters
        self.params = {q.key.lower(): q.value for q in (self.Request.url.query or [])}

        # Filter out ignored parameters
        if self.ignored_params:
            self.parms = {
                k: v
                for k, v in self.params.items()
                if k.lower() not in self.ignored_params
            }

        return self.params

    def build_request_code(self) -> str:
        """Build the request code for a function.

        Args:
            default_params (Optional[List[str]]): List of parameters to expose as function arguments

        Returns:
            str: The request code as a string
        """
        # Parse the URL to extract the path part
        parsed_url = urlparse(self.url)
        path = parsed_url.path
        if parsed_url.query:
            path += f"?{parsed_url.query}"

        # Build function signature with default parameters
        signature = f"def {self.function_name}("
        param_args = []

        if self.default_params and self.params:
            for param in self.default_params:
                if param in self.params:
                    param_args.append(f"{param}: str = None")

        # Add auth parameter after any default parameters
        signature += (
            ", ".join(
                param_args + ["auth: Dict[str, str] = None", "debug_api: bool = False"]
            )
            + ") -> requests.Response:"
        )

        code = [
            signature,
            f'    """Make a {self.Request.method} request to {self.url}',
            "    ",
        ]

        # Add parameter documentation
        if self.default_params and self.params:
            code.append("    Args:")
            for param in self.default_params:
                if param in self.params:
                    code.append(
                        f"        {param} (str, optional): Value for the {param} parameter"
                    )
            code.append(
                "        auth (Dict[str, str], optional): Authentication information"
            )
            code.append(
                "        debug_api (bool, optional): Enable debug output for API calls"
            )

        code.extend(
            [
                "    ",
                "    Returns:",
                "        requests.Response: The response from the API",
                '    """',
                f'    base_url = auth.get("base_url") if auth else ""',
                f'    url = f"{{base_url}}{path}"',
                f"    headers = {{**{self.headers}, **auth.get('headers', {{}})}}",
            ]
        )

        # Handle parameters, including any custom default parameters
        if self.default_params and self.params:
            # Start with original params dictionary
            code.append(f"    params = {self.params}")

            # Update with provided parameter values
            for param in self.default_params:
                if param in self.params:
                    code.append(f"    if {param} is not None:")
                    code.append(f"        params['{param}'] = {param}")
        else:
            code.append(f"    params = {self.params}")

        if self.Request.body:
            code.extend(
                [
                    f"    data = {self.Request.body.raw}",
                    f"    response = gd_requests(method='{self.Request.method.lower()}', url=url, headers=headers, params=params, body=data, debug_api=debug_api)",
                ]
            )
        else:
            code.append(
                f"    response = gd_requests(method='{self.Request.method.lower()}', url=url, headers=headers, params=params, debug_api=debug_api)"
            )

        code.append("    return response")
        return "\n".join(code)

    def build_test_code(
        self,
        func_name: Optional[str] = None,
        default_params: Optional[List[str]] = None,
    ) -> str:
        """Build the test code for a function.

        Args:
            func_name (Optional[str]): Name of the function to test.
                If None, uses the converter's function_name.
            default_params (Optional[List[str]]): List of parameters
                exposed as function arguments.

        Returns:
            str: The test code as a string
        """
        # Use provided function name or fall back to the converter's function name
        func_name = func_name or self.function_name

        # Use provided default params or fall back to the converter's default params
        params_to_use = default_params or self.default_params

        param_args = []
        if params_to_use:
            # Add default values for all parameters in test function
            param_args = [f"{param}=None" for param in params_to_use]

        return "\n".join(
            [
                "",
                f"def test_{func_name}({', '.join(param_args + ['auth: Dict[str, str] = None'])}):",
                f'    """Test the {func_name} function."""',
                f"    auth = {{'base_url': '', 'headers': {{}}}} if auth is None else auth",
                f"    response = {func_name}({', '.join(param_args + ['auth'])})",
                '    assert response.status_code == 200, f"Expected status code 200, got {{response.status_code}}"',
                "    return response",
            ]
        )

    @classmethod
    def from_postman_request(
        cls,
        request: PostmanRequest,
        required_headers: Optional[Dict] = None,
        ignored_headers: Optional[Dict] = None,
        default_params: Optional[Dict] = None,
        ignored_params: Optional[Dict] = None,
        export_folder: Optional[str] = None,
        is_include_test_code: bool = True,
        is_replace: Optional[bool] = True,
    ):
        """Create a PostmanRequestConverter from a PostmanRequest and generate function code."""

        converter = cls(
            Request=request,
            required_headers=required_headers,
            ignored_headers=ignored_headers,
            default_params=default_params,
            ignored_params=ignored_params,
        )

        if not export_folder:
            return converter

        # Generate code using the converter
        converter.export_function(
            export_folder=export_folder,
            include_test_code=is_include_test_code,
            is_replace=is_replace,
        )
        return converter


@dataclass
class PostmanCollectionConverter:
    """Class to handle conversions for entire Postman Collections."""

    export_folder: str
    converters: List[PostmanRequestConverter] = field(default_factory=list)

    collection: PostmanCollection = field(default=None)
    customize: Dict[str, Dict] = field(default_factory=dict)

    def __post_init__(self):
        """Initialize any default values after dataclass initialization"""
        # Make sure export folder exists
        os.makedirs(self.export_folder, exist_ok=True)

    @classmethod
    def from_postman_collection(
        cls,
        postman_path: str,
        export_folder: str,
        customize: Optional[Dict[str, Dict]] = None,
    ) -> "PostmanCollectionConverter":
        """Load a PostmanCollection from a file.

        Args:
            postman_path (str): Path to the Postman collection file
            export_folder (str): Folder to export the generated files to
            customize (Optional[Dict[str, Dict]]): Customization options for functions

        Returns:
            PostmanCollectionConverter: Converter instance for the collection
        """
        collection = PostmanCollection.from_file(postman_path)
        collection_converter = cls(
            collection=collection,
            export_folder=export_folder,
            customize=customize or {},
        )
        return collection_converter

    def get_customize(self, function_name):
        """Get the customization options for a specific function."""
        return self.customize.get(function_name, {})

    def generate_conversion_files(
        self, is_replace: bool = True, is_include_test_code: bool = True
    ) -> List[PostmanRequestConverter]:
        """Generate implementation files for each request in the collection.

        Args:
            is_replace (bool): Whether to replace existing files. Defaults to True.
            is_include_test_code (bool): Whether to include test code. Defaults to True

        Returns:
            List[PostmanRequestConverter]: List of converters used to generate the files
        """
        # Create export folder if it doesn't exist
        os.makedirs(self.export_folder, exist_ok=True)

        for request in self.collection.requests:
            # Generate the function name that would be used
            function_name = PostmanRequestConverter._generate_function_name(
                request.name, request.method
            )

            # Get any customizations for this function
            customize = self.get_customize(function_name)

            # Convert request to a PostmanRequestConverter
            converter = PostmanRequestConverter.from_postman_request(
                request=request,
                export_folder=self.export_folder,
                is_include_test_code=is_include_test_code,
                is_replace=is_replace,
                **customize,
            )

            self.converters.append(converter)

        return self.converters


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
    from datetime import datetime

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
    """
    import importlib.util

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
    """
    func = getattr(module, func_name)
    try:
        print(f"Testing {module_name}.{func_name}...")
        response = func(auth=auth, debug_api=debug_api)
        results[f"{module_name}.{func_name}"] = {
            "status": response.status_code,
            "success": 200 <= response.status_code < 300,
            "response": response,
        }
        print(f"  Status: {response.status_code}")
    except Exception as e:
        results[f"{module_name}.{func_name}"] = {
            "status": "error",
            "success": False,
            "error": str(e),
            "exception": e,
        }
        print(f"  Error: {str(e)}")
