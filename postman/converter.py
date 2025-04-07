import os
from typing import List, Dict, Optional
from models import PostmanRequest, PostmanCollection
from utils import to_snake_case
from urllib.parse import urljoin


def generate_function_name(request: PostmanRequest) -> str:
    """Generate a function name from a PostmanRequest.

    Args:
        request (PostmanRequest): The request to generate a name for

    Returns:
        str: A valid Python function name in snake_case
    """
    # Extract the last part of the URL path
    path_parts = request.name.split("/")
    endpoint = path_parts[-1] if path_parts else "endpoint"

    # Combine method and endpoint
    name = f"{request.method.lower()}_{endpoint}"

    # Convert to snake_case
    return to_snake_case(name)


def generate_headers(
    request: PostmanRequest, required_headers: Optional[List[str]]
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
    auth: Dict[str, str],
    body: Optional[str] = None,
) -> str:
    """Build the request code for a function.

    Args:
        func_name (str): Name of the function
        url (str): The complete URL
        headers (Dict[str, str]): Headers dictionary
        params (Dict[str, str]): Query parameters dictionary
        method (str): HTTP method
        auth (Dict[str, str]): Authentication credentials
        body (Optional[str]): Request body if present

    Returns:
        str: The request code as a string
    """
    code = [
        f"def {func_name}( auth : Dict[str, str] = {{}} ) -> requests.Response:",
        f'    """Make a {method} request to {url}',
        "    ",
        "    Returns:",
        "        requests.Response: The response from the API",
        '    """',
        f'    url = "{url}"',
        f"    headers = {headers}",
        f"    params = {params}",
        f"    auth = {auth}",
    ]

    if body:
        code.extend(
            [
                f"    data = {body}",
                f"    response = gd_requests(method='{method.lower()}', url=url, auth=auth, headers=headers, params=params, body=data)",
            ]
        )
    else:
        code.append(
            f"    response = gd_requests(method='{method.lower()}', url=url, auth=auth, headers=headers, params=params)"
        )

    code.append("    return response")
    return "\n".join(code)


def build_test_code(func_name: str, auth: Dict[str, str]) -> str:
    """Build the test code for a function.

    Args:
        func_name (str): Name of the function to test
        auth (Dict[str, str]): Authentication credentials

    Returns:
        str: The test code as a string
    """
    return "\n".join(
        [
            "",
            f"def test_{func_name}():",
            f'    """Test the {func_name} function."""',
            f"    auth = {auth}",
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
            - auth (Dict[str, str]): Authentication credentials

    Returns:
        str: Python function code as a string
    """
    # Generate function name
    func_name = generate_function_name(request)

    # Build URL and parameters
    url = build_url(request)
    params = build_params(request)

    # Get required headers and auth from config
    required_headers = config.get("required_headers") if config else None
    headers = generate_headers(request, required_headers)
    auth = config.get("auth", {}) if config else {}

    # Build request code
    request_code = build_request_code(
        func_name=func_name,
        url=url,
        headers=headers,
        params=params,
        method=request.method,
        auth=auth,
        body=request.body.raw if request.body else None,
    )

    # Build test code
    test_code = build_test_code(func_name, auth)

    return request_code + "\n\n" + test_code


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
            - required_headers (Optional[List[str]]): List of header keys to include. If None, all headers are included.
            - auth (Dict[str, str]): Authentication credentials
    """
    # Determine export folder
    if export_folder is None:
        collection_name = to_snake_case(collection.info.name)
        export_folder = os.path.join("EXPORT", collection_name)

    # Create export folder if it doesn't exist
    os.makedirs(export_folder, exist_ok=True)

    for request in collection.requests:
        # Generate function code
        code = generate_function_code(request, config)

        # Generate filename
        func_name = generate_function_name(request)
        filename = f"domo_{func_name}.py"
        filepath = os.path.join(export_folder, filename)

        # Write to file
        with open(filepath, "w", encoding="utf-8") as f:
            f.write("import requests\n\n")
            f.write("from utils import gd_requests\n\n")
            f.write(code)
