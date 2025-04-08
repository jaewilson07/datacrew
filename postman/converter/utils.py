import os
import shutil
import re
import requests
from typing import Optional, Dict, Any, Union


def to_snake_case(name: str) -> str:
    """Convert a string to snake_case.

    Args:
        name (str): The string to convert

    Returns:
        str: The string in snake_case format
    """
    # Remove any special characters and replace spaces/underscores with hyphens
    name = re.sub(r"[^\w\s-]", "", name)
    # Convert to lowercase and replace spaces/underscores with hyphens
    name = name.lower().replace(" ", "-").replace("_", "-")
    # Split on hyphens and join with underscores
    return "_".join(name.split("-"))


def upsert_folder(folder_path: str, is_replace: bool = False) -> None:
    """Create or update a folder based on the provided parameters.

    If the path appears to be a file path (has an extension),
    it creates only the directory part of the path.

    Args:
        folder_path (str): The path of the folder or file to create directory for
        is_replace (bool, optional): If True, removes existing folder before creating.
            Defaults to False.

    Raises:
        OSError: If there are permission issues or other OS-related errors
    """
    # Check if path looks like a file path (has extension)
    if os.path.splitext(folder_path)[1]:
        # Extract directory part only
        directory = os.path.dirname(folder_path)
    else:
        directory = folder_path

    # Only proceed if we have a directory to create
    if directory:
        if is_replace and os.path.exists(directory):
            shutil.rmtree(directory)

        # Create directory if it doesn't exist
        os.makedirs(directory, exist_ok=True)


def gd_requests(
    method: str,
    url: str,
    headers: Optional[Dict[str, str]] = None,
    params: Optional[Dict[str, str]] = None,
    body: Optional[Union[str, Dict[str, Any]]] = None,
    debug_api: bool = False,
) -> requests.Response:
    """Wrapper around requests.request that handles authentication and common parameters.

    Args:
        method (str): HTTP method (GET, POST, etc.)
        url (str): The URL to make the request to
        auth (Dict[str, str]): Authentication credentials
        headers (Optional[Dict[str, str]]): Request headers
        params (Optional[Dict[str, str]]): Query parameters
        body (Optional[Union[str, Dict[str, Any]]]): Request body

    Returns:
        requests.Response: The response from the request
    """
    # Merge auth headers with provided headers

    # Prepare request data
    data = body if isinstance(body, str) else None
    json_data = body if isinstance(body, dict) else None

    if debug_api:
        print(f"🚀 Making {method} request to {url}")
        print(f"Headers: {headers}")
        print(f"Params: {params}")
        print(f"Data: {data}")
        print(f"JSON: {json_data}")

    return requests.request(
        method=method,
        url=url,
        headers=headers,
        params=params,
        data=data,
        json=json_data,
    )


def normalize_json_to_python(json_str: str) -> str:
    """Convert JSON-style boolean and null values to Python syntax (True, False, None).

    Args:
        json_str (str): JSON string that might contain 'true', 'false', or 'null'

    Returns:
        str: String with Python-style boolean and None values
    """
    if not json_str:
        return json_str

    # Replace JSON booleans with Python booleans
    # Use word boundaries to ensure we only replace complete words
    result = json_str
    result = result.replace("true", "True")
    result = result.replace("false", "False")
    result = result.replace("null", "None")

    return result
