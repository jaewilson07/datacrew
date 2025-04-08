from dataclasses import dataclass, field
from typing import List, Dict, Optional, Any, Union


@dataclass
class Info:
    """Represents collection information"""

    _postman_id: str
    name: str
    schema: str
    _exporter_id: Optional[str] = None
    _collection_link: Optional[str] = None


@dataclass
class Header:
    """Represents an HTTP header"""

    key: str
    value: str


@dataclass
class UrlQuery:
    """Represents a URL query parameter"""

    key: str
    value: str


@dataclass
class Url:
    """Represents a URL with its components"""

    raw: str
    protocol: Optional[str] = None
    host: List[str] = field(default_factory=list)
    path: List[str] = field(default_factory=list)
    query: List[UrlQuery] = field(default_factory=list)


@dataclass
class RequestBody:
    """Represents the request body"""

    mode: str  # 'raw', 'urlencoded', etc.
    raw: Optional[str] = None
    urlencoded: Optional[List[Dict[str, str]]] = None


@dataclass
class Request:
    """Represents an HTTP request"""

    method: str
    header: List[Header] = field(default_factory=list)
    url: Optional[Url] = None
    body: Optional[RequestBody] = None


@dataclass
class Response:
    """Represents an HTTP response"""

    # Usually empty in the collection but can contain example responses
    pass


@dataclass
class Item:
    """Represents a Postman collection item (request)"""

    name: str
    request: Request
    response: List[Response] = field(default_factory=list)


@dataclass
class PostmanCollection:
    """Represents a Postman collection"""

    info: Info
    item: List[Item]
