import re
import os
import shutil
from typing import List, Dict, Optional
from models import PostmanRequest, PostmanCollection
import requests
from urllib.parse import urljoin
from utils import to_snake_case, upsert_folder


def generate_function_name(request: PostmanRequest) -> str:
    """Generate a function name from a PostmanRequest.

    Args:
        request (PostmanRequest): The request to generate a name for

    Returns:
        str: A valid Python function name in snake_case
    """
    # Extract the last part of the URL path
    path_parts = request.url.path
    endpoint = path_parts[-1] if path_parts else "endpoint"

    # Combine method and endpoint
    name = f"{request.method.lower()}_{endpoint}"

    # Convert to snake_case
    return to_snake_case(name)


def generate_headers(
    request: PostmanRequest, required_headers: Optional[List[str]] = None
) -> Dict[str, str]:
    """Generate headers dictionary from a PostmanRequest, optionally filtered by required headers.

    Args:
        request (PostmanRequest): The request containing headers
        required_headers (Optional[List[str]]): List of header keys to include. If None, all headers are included.

    Returns:
        Dict[str, str]: Dictionary of headers
    """
    if required_headers is None:
        return {h.key: h.value for h in request.header}

    # Convert required_headers to lowercase for case-insensitive comparison
    required_headers_lower = [h.lower() for h in required_headers]

    return {
        h.key: h.value
        for h in request.header
        if h.key.lower() in required_headers_lower
    }


def build_url(request: PostmanRequest) -> str:
    """Build the complete URL from a PostmanRequest.

    Args:
        request (PostmanRequest): The request containing URL information

    Returns:
        str: The complete URL
    """
    base_url = f"{request.url.protocol}://{'.'.join(request.url.host)}"
    path = "/".join(request.url.path)
    return urljoin(base_url, path)


def build_params(request: PostmanRequest) -> Dict[str, str]:
    """Build query parameters dictionary from a PostmanRequest.

    Args:
        request (PostmanRequest): The request containing query parameters

    Returns:
        Dict[str, str]: Dictionary of query parameters
    """
    return {q.key: q.value for q in (request.url.query or [])}


def build_request_code(
    func_name: str,
    url: str,
    headers: Dict[str, str],
    params: Dict[str, str],
    method: str,
    body: Optional[str] = None,
) -> str:
    """Build the request code for a function.

    Args:
        func_name (str): Name of the function
        url (str): The complete URL
        headers (Dict[str, str]): Headers dictionary
        params (Dict[str, str]): Query parameters dictionary
        method (str): HTTP method
        body (Optional[str]): Request body if present

    Returns:
        str: The request code as a string
    """
    code = [
        f"def {func_name}() -> requests.Response:",
        f'    """Make a {method} request to {url}',
        "    ",
        "    Returns:",
        "        requests.Response: The response from the API",
        '    """',
        f'    url = "{url}"',
        f"    headers = {headers}",
        f"    params = {params}",
    ]

    if body:
        code.extend(
            [
                f"    data = {body}",
                f"    response = requests.{method.lower()}(url, headers=headers, params=params, data=data)",
            ]
        )
    else:
        code.append(
            f"    response = requests.{method.lower()}(url, headers=headers, params=params)"
        )

    code.append("    return response")
    return "\n".join(code)


def build_test_code(func_name: str) -> str:
    """Build the test code for a function.

    Args:
        func_name (str): Name of the function to test

    Returns:
        str: The test code as a string
    """
    return "\n".join(
        [
            "",
            f"def test_{func_name}():",
            f'    """Test the {func_name} function."""',
            f"    response = {func_name}()",
            '    assert response.status_code == 200, f"Expected status code 200, got {response.status_code}"',
            "    return response",
        ]
    )


def generate_function_code(
    request: PostmanRequest, config: Optional[Dict] = None
) -> str:
    """Generate Python function code for a PostmanRequest.

    Args:
        request (PostmanRequest): The request to generate code for
        config (Optional[Dict]): Configuration dictionary containing:
            - required_headers (List[str]): List of header keys to include

    Returns:
        str: Python function code as a string
    """
    # Generate function name
    func_name = generate_function_name(request)

    # Build URL and parameters
    url = build_url(request)
    params = build_params(request)

    # Get required headers from config
    required_headers = config.get("required_headers") if config else None
    headers = generate_headers(request, required_headers)

    # Build request code
    request_code = build_request_code(
        func_name=func_name,
        url=url,
        headers=headers,
        params=params,
        method=request.method,
        body=request.body.raw if request.body else None,
    )

    # Build test code
    test_code = build_test_code(func_name)

    return request_code + test_code


def generate_implementation_files(
    collection: PostmanCollection,
    export_folder: str = None,
    config: Optional[Dict] = None,
) -> None:
    """Generate implementation files for each request in the collection.

    Args:
        collection (PostmanCollection): The collection to generate files for
        export_folder (str, optional): The folder to export the files to.
            Defaults to EXPORT/{collection_name} where collection_name is the snake_case version of the collection name.
        config (Optional[Dict]): Configuration dictionary containing:
            - required_headers (List[str]): List of header keys to include
    """
    # Determine export folder
    if export_folder is None:
        collection_name = to_snake_case(collection.info.name)
        export_folder = os.path.join("EXPORT", collection_name)

    # Create export folder if it doesn't exist
    upsert_folder(export_folder)

    for request in collection.requests:
        # Generate function code
        code = generate_function_code(request, config)

        # Generate filename
        func_name = generate_function_name(request)
        filename = f"domo_{func_name}.py"
        filepath = os.path.join(export_folder, filename)

        # Write to file
        with open(filepath, "w") as f:
            f.write("import requests\n\n")
            f.write(code)


def main():
    """Main function to demonstrate usage."""
    # Example usage:
    # 1. Load your Postman collection
    # 2. Convert to PostmanCollection object
    # 3. Generate implementation files

    # Example:
    # with open('test.postman_collection.json') as f:
    #     data = json.load(f)
    # collection = from_json(data)
    # config = {
    #     "required_headers": ["Authorization", "Content-Type"]
    # }
    # generate_implementation_files(collection, config=config)


if __name__ == "__main__":
    main()
