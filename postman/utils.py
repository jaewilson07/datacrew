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

    Args:
        folder_path (str): The path of the folder to create or update
        is_replace (bool, optional): If True, removes existing folder before creating.
            Defaults to False.

    Raises:
        OSError: If there are permission issues or other OS-related errors
    """
    if is_replace and os.path.exists(folder_path):
        shutil.rmtree(folder_path)
    os.makedirs(folder_path, exist_ok=True)


def gd_requests(
    method: str,
    url: str,
    auth: Dict[str, str],
    headers: Optional[Dict[str, str]] = None,
    params: Optional[Dict[str, str]] = None,
    body: Optional[Union[str, Dict[str, Any]]] = None,
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
    all_headers = {**auth, **(headers or {})}

    # Prepare request data
    data = body if isinstance(body, str) else None
    json_data = body if isinstance(body, dict) else None

    return requests.request(
        method=method,
        url=url,
        headers=all_headers,
        params=params,
        data=data,
        json=json_data,
    )
