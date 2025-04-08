from dataclasses import dataclass
from typing import List, Optional, Dict, Any, Union


@dataclass
class PostmanRequest_Header:
    """Represents an HTTP header in a request or response.

    Attributes:
        key (str): The name of the header (e.g., 'content-type', 'authorization')
        value (str): The value of the header
    """

    key: str
    value: str

    @classmethod
    def from_dict(cls, header_data: Dict[str, str]) -> "PostmanRequest_Header":
        """Create a PostmanRequest_Header from header data.

        Args:
            header_data (Dict[str, str]): Dictionary containing header key and value

        Returns:
            PostmanRequest_Header: A new header instance
        """
        return cls(key=header_data["key"].lower(), value=header_data["value"])


@dataclass
class PostmanQueryParam:
    """Represents a URL query parameter.

    Attributes:
        key (str): The parameter name
        value (str): The parameter value
    """

    key: str
    value: str

    @classmethod
    def from_dict(cls, param_data: Dict[str, str]) -> "PostmanQueryParam":
        """Create a PostmanQueryParam from parameter data.

        Args:
            param_data (Dict[str, str]): Dictionary containing parameter key and value

        Returns:
            PostmanQueryParam: A new query parameter instance
        """
        return cls(key=param_data["key"], value=param_data["value"])


@dataclass
class PostmanUrl:
    """Represents a complete URL with all its components.

    Attributes:
        raw (str): The complete URL as a string
        protocol (str): The protocol (e.g., 'http', 'https')
        host (List[str]): The host components (e.g., ['api', 'example', 'com'])
        path (List[str]): The path components
        query (Optional[List[PostmanQueryParam]]): List of query parameters, if any
    """

    raw: str
    protocol: str
    host: List[str]
    path: List[str]
    query: Optional[List[PostmanQueryParam]] = None

    @classmethod
    def from_dict(cls, url_data: Dict[str, Any]) -> "PostmanUrl":
        """Create a PostmanUrl from URL data.

        Args:
            url_data (Dict[str, Any]): Dictionary containing URL components

        Returns:
            PostmanUrl: A new URL instance
        """
        return cls(
            raw=url_data["raw"],
            protocol=url_data["protocol"],
            host=url_data["host"],
            path=url_data["path"],
            query=[PostmanQueryParam.from_dict(q) for q in url_data.get("query", [])],
        )


@dataclass
class PostmanRequest_Body:
    """Represents the body of an HTTP request.

    Attributes:
        mode (str): The mode of the body (e.g., 'raw', 'formdata', 'urlencoded')
        raw (str): The actual content of the body
    """

    mode: str
    raw: str

    @classmethod
    def from_dict(
        cls, body_data: Optional[Dict[str, Any]]
    ) -> Optional["PostmanRequest_Body"]:
        """Create a PostmanRequest_Body from body data.

        Args:
            body_data (Optional[Dict[str, Any]]): Dictionary containing body data

        Returns:
            Optional[PostmanRequest_Body]: A new body instance or None if no body data
        """
        if not body_data:
            return None
        return cls(mode=body_data["mode"], raw=body_data.get("raw"))


@dataclass
class PostmanResponse:
    """Represents an HTTP response in a Postman collection.

    Note: This is currently a placeholder class as the example collection
    had empty responses. In a real implementation, you would want to add
    fields like status code, headers, body, etc.
    """

    pass


@dataclass
class PostmanRequest:
    """Represents a single request in a Postman collection.

    A request typically represents a single API endpoint with its request
    and response details.

    Attributes:
        name (str): The name of the request
        method (str): The HTTP method (e.g., 'GET', 'POST', 'PUT')
        header (List[PostmanRequest_Header]): List of HTTP headers
        url (PostmanUrl): The request URL
        body (Optional[PostmanRequest_Body]): The request body, if any
        response (List[PostmanResponse]): List of example responses
    """

    name: str
    method: str
    header: List[PostmanRequest_Header]
    url: PostmanUrl
    body: Optional[PostmanRequest_Body] = None
    response: List[PostmanResponse] = None

    def __post_init__(self):
        if self.response is None:
            self.response = []

    @classmethod
    def from_dict(cls, item_data: Dict[str, Any]) -> "PostmanRequest":
        """Create a PostmanRequest from item data.

        Args:
            item_data (Dict[str, Any]): Dictionary containing request data

        Returns:
            PostmanRequest: A new request instance
        """
        request_data = item_data["request"]
        return cls(
            name=item_data["name"],
            method=request_data["method"],
            header=[PostmanRequest_Header.from_dict(h) for h in request_data["header"]],
            url=PostmanUrl.from_dict(request_data["url"]),
            body=PostmanRequest_Body.from_dict(request_data.get("body")),
            response=[PostmanResponse() for _ in item_data.get("response", [])],
        )


@dataclass
class PostmanCollectionInfo:
    """Contains metadata about the Postman collection.

    Attributes:
        _postman_id (str): Unique identifier for the collection
        name (str): Name of the collection
        schema (str): The schema version used by the collection
        _exporter_id (str): ID of the exporter that created the collection
        _collection_link (str): Link to the collection in Postman
    """

    _postman_id: str
    name: str
    schema: str
    _exporter_id: str
    _collection_link: str

    @classmethod
    def from_dict(cls, info_data: Dict[str, str]) -> "PostmanCollectionInfo":
        """Create a PostmanCollectionInfo from info data.

        Args:
            info_data (Dict[str, str]): Dictionary containing collection info

        Returns:
            PostmanCollectionInfo: A new info instance
        """
        return cls(
            _postman_id=info_data["_postman_id"],
            name=info_data["name"],
            schema=info_data["schema"],
            _exporter_id=info_data["_exporter_id"],
            _collection_link=info_data["_collection_link"],
        )


@dataclass
class PostmanCollection:
    """Represents a complete Postman collection.

    This is the root class that contains all the information about
    a Postman collection, including its metadata and all the API
    requests it contains.

    Attributes:
        info (PostmanCollectionInfo): Collection metadata
        requests (List[PostmanRequest]): List of requests in the collection
    """

    info: PostmanCollectionInfo
    requests: List[PostmanRequest]

    @classmethod
    def from_dict(cls, data: Dict[str, Any]) -> "PostmanCollection":
        """Creates a PostmanCollection object from a JSON dictionary.

        This helper function converts a JSON representation of a Postman
        collection into a structured Python object with proper typing.

        Args:
            data (Dict[str, Any]): The JSON data as a Python dictionary

        Returns:
            PostmanCollection: A structured representation of the collection
        """
        info = PostmanCollectionInfo.from_dict(data["info"])
        requests = [PostmanRequest.from_dict(item) for item in data["item"]]
        return cls(info=info, requests=requests)

    @classmethod
    def from_file(cls, file_path: str) -> "PostmanCollection":
        """Load a PostmanCollection from a JSON file.

        Args:
            file_path (str): Path to the Postman collection JSON file

        Returns:
            PostmanCollection: A structured representation of the collection

        Raises:
            FileNotFoundError: If the file doesn't exist
            json.JSONDecodeError: If the file isn't valid JSON
        """
        import json

        with open(file_path, "r", encoding="utf-8") as f:
            data = json.load(f)

        return cls.from_dict(data)

    def list_all_headers(self) -> Dict[str, List[str]]:
        """List all unique headers and their values from this collection.

        Returns:
            Dict[str, List[str]]: Dictionary where keys are header names and values are lists of unique values
        """
        headers_dict = {}

        for request in self.requests:
            for header in request.header:
                if header.key not in headers_dict:
                    headers_dict[header.key] = set()
                headers_dict[header.key].add(header.value)

        # Convert sets to lists for better serialization
        return {key: list(values) for key, values in headers_dict.items()}

    def list_all_params(self) -> Dict[str, List[str]]:
        """List all unique query parameters and their values from this collection.

        Returns:
            Dict[str, List[str]]: Dictionary where keys are parameter names and values are lists of unique values
        """
        params_dict = {}

        for request in self.requests:
            if request.url.query:
                for param in request.url.query:
                    if param.key not in params_dict:
                        params_dict[param.key] = set()
                    params_dict[param.key].add(param.value)

        # Convert sets to lists for better serialization
        return {key: list(values) for key, values in params_dict.items()}
