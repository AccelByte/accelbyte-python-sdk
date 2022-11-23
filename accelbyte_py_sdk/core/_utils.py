# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

import base64
import binascii
import hashlib
import json
import logging
import logging.handlers
import os

from base64 import b64encode
from time import time
from typing import Any, Dict, List, Optional, Tuple, Union
from urllib.parse import quote
from uuid import uuid4

from ._http_response import HttpResponse

QUERY_DELIMITER_MAP = {
    "csv": ",",
    "ssv": " ",
    "tsv": "\t",
    "pipes": "|",
}

SENTINEL = object()


def add_buffered_file_handler_to_logger(
    filename: Union[str, os.PathLike[str]],
    capacity: int,
    level: Union[None, int] = None,
    flush_level: Union[None, int] = None,
    flush_on_close: Union[None, bool] = None,
    additional_scope: Union[None, str] = None,
) -> logging.Handler:
    logger = get_logger(additional_scope)
    if level is not None:
        logger.setLevel(level=level)
    buffered_file_handler = create_buffered_file_handler(
        f_filename=filename,
        m_capacity=capacity,
        m_flush_level=flush_level,
        m_flush_on_close=flush_on_close,
    )
    logger.addHandler(buffered_file_handler)
    return buffered_file_handler


def add_stream_handler_to_logger(
    level: Union[None, int] = None, additional_scope: Union[None, str] = None
) -> logging.Handler:
    logger = get_logger(additional_scope)
    if level is not None:
        logger.setLevel(level=level)
    stream_handler = logging.StreamHandler()
    logger.addHandler(stream_handler)
    return stream_handler


def clamp(value, minimum, maximum):
    return max(minimum, min(value, maximum))


def clean_content_type(content_type: Optional[str]) -> Optional[str]:
    if content_type is None:
        return None
    clean_content_type_map = {"application/problem+json": "application/json"}
    parts = content_type.split(";", maxsplit=1)
    content_type = parts[0].strip()
    if content_type in clean_content_type_map:
        content_type = clean_content_type_map[content_type]
    return content_type


def create_basic_authentication(
    username: str, password: str, prefix: str = "Basic "
) -> str:
    return (
        f'{prefix}{b64encode(f"{username}:{password}".encode("utf-8")).decode("utf-8")}'
    )


def create_buffered_file_handler(
    f_filename: Union[str, os.PathLike[str]],
    m_capacity: int,
    f_mode: Union[None, str] = None,
    f_encoding: Union[None, str] = None,
    f_delay: Union[None, bool] = None,
    f_errors: Union[None, str] = None,
    m_flush_level: Union[None, int] = None,
    m_flush_on_close: Union[None, bool] = None,
) -> logging.handlers.MemoryHandler:
    f_mode = f_mode if f_mode is not None else "a"
    f_delay = f_delay if f_delay is not None else False
    m_flush_level = m_flush_level if m_flush_level is not None else logging.ERROR
    m_flush_on_close = m_flush_on_close if m_flush_on_close is not None else True
    file_handler = logging.FileHandler(
        filename=f_filename,
        mode=f_mode,
        encoding=f_encoding,
        delay=f_delay,
        errors=f_errors,
    )
    memory_handler = logging.handlers.MemoryHandler(
        capacity=m_capacity,
        flushLevel=m_flush_level,
        target=file_handler,
        flushOnClose=m_flush_on_close,
    )
    return memory_handler


def create_curl_request(
    uri: str, method: str, headers: Dict[str, str], data: Any, delimiter: str = "\n"
):
    parts = [f'curl -X {method} "{uri}"']
    for k, v in headers.items():
        parts.append(f'-H "{k}: {v}"')
    if data:
        parts.append(f"-d '{data}'")
    result = delimiter.join(parts)
    return result


def create_pkce_verifier_and_challenge_plain(
    size: int = 32, encoding: str = "ascii"
) -> Tuple[str, str, str]:
    method = "plain"
    verifier_bytes = os.urandom(size)
    verifier_base64 = base64.urlsafe_b64encode(verifier_bytes).rstrip(b"=")
    verifier_str = verifier_base64.decode(encoding)
    return verifier_str, verifier_str, method


def create_pkce_verifier_and_challenge_s256(
    size: int = 32, encoding: str = "ascii"
) -> Tuple[str, str, str]:
    method = "S256"
    verifier_bytes = os.urandom(size)
    verifier_base64 = base64.urlsafe_b64encode(verifier_bytes).rstrip(b"=")
    verifier_str = verifier_base64.decode(encoding)
    challenge_bytes = hashlib.sha256(verifier_base64).digest()
    challenge_base64 = base64.urlsafe_b64encode(challenge_bytes).rstrip(b"=")
    challenge_str = challenge_base64.decode(encoding)
    return verifier_str, challenge_str, method


def create_url(
    path: str,
    base: str = "",
    path_params: Optional[Dict[str, str]] = None,
    query_params: Optional[Dict[str, Union[Any, List[Any]]]] = None,
    collection_format_map: Optional[Dict[str, Optional[str]]] = None,
) -> str:
    result = base.removesuffix("/")

    if path_params:
        for key, value in path_params.items():
            path = path.replace(f"{{{key}}}", str(value))

    result += "/" + path.removeprefix("/")

    if query_params:
        flattened_query_params = flatten_query_params(
            query_params=query_params, collection_format_map=collection_format_map
        )
        result += flattened_query_params

    return result


def flatten_query_params(
    query_params: Optional[Dict[str, Union[Any, List[Any]]]] = None,
    collection_format_map: Optional[Dict[str, Optional[str]]] = None,
) -> str:
    def str_quote(o):
        return quote(str(o), safe="")

    if not query_params:
        return ""
    if collection_format_map is None:
        collection_format_map = {}
    flattened_query_params = []
    for key, value in query_params.items():
        if isinstance(value, list):
            if len(value) == 0:
                continue
            collection_format = collection_format_map.get(key, "csv")
            if collection_format == "multi":
                for v in value:
                    flattened_query_params.append((key, str_quote(v)))
            else:
                delimiter = QUERY_DELIMITER_MAP.get(collection_format, ",")
                flattened_query_value = delimiter.join([str_quote(v) for v in value])
                flattened_query_params.append((key, flattened_query_value))
        else:
            flattened_query_params.append((key, str_quote(value)))
    return "?" + "&".join(f"{k}={v}" for k, v in flattened_query_params)


def generate_id(length: int) -> str:
    uuid_str = str(uuid4()).replace("-", "")[0:length]
    return uuid_str


def generate_amazon_xray_trace_id(
    version: int = 1, request_time: Union[None, float] = None
) -> str:
    request_time = request_time or time()
    current_time_hex = hex(int(request_time))[
        2:
    ]  # time of the original request, in Unix epoch time, in 8 hexadecimal digits
    request_id = binascii.hexlify(os.urandom(12)).decode(
        "utf-8"
    )  # 96-bit guid, in 24 hexadecimal digits
    return f"{version}-{current_time_hex}-{request_id}"  # see: https://docs.aws.amazon.com/xray/latest/devguide/xray-api-sendingdata.html


def generate_websocket_message_id() -> str:
    return generate_id(24)


def get_env_config() -> Tuple[str, str, str, str]:
    return (
        os.environ.get("AB_BASE_URL", ""),
        os.environ.get("AB_CLIENT_ID", ""),
        os.environ.get("AB_CLIENT_SECRET", ""),
        os.environ.get("AB_NAMESPACE", ""),
    )


def get_env_user_credentials() -> Tuple[str, str]:
    return os.environ.get("AB_USERNAME", ""), os.environ.get("AB_PASSWORD", "")


def get_logger(additional_scope: Union[None, str] = None) -> logging.Logger:
    additional_scope = additional_scope or ""
    base_logger_name = "accelbyte_py_sdk"
    logger_name = (
        ".".join([base_logger_name, additional_scope])
        if additional_scope
        else base_logger_name
    )
    logger = logging.getLogger(logger_name)
    return logger


def get_member(obj: Any, member_name: str, default: Any = None) -> Any:
    if obj is None:
        return default
    if hasattr(obj, member_name):
        return getattr(obj, member_name)
    elif hasattr(obj, "__iter__") and member_name in obj:
        return obj[member_name]
    else:
        return default


def get_query_from_http_redirect_response(
    http_response: HttpResponse, query_key: str
) -> Tuple[Union[None, str], Union[None, HttpResponse]]:
    if http_response.content_type != "location":
        return None, HttpResponse.create_error(
            http_response.code, "Can't find 'Location' in Header."
        )
    query = http_response.get_query_params()
    if query_key not in query:
        error_related_keys = [
            "error",
            "error_code",
            "error_description",
            "error_message",
        ]
        if any(q in error_related_keys for q in query):
            error_parts = []
            if "error" in query:
                error_parts.append(f"[{str(query['error'][0])}]")
            elif "error_code" in query:
                error_parts.append(f"[{str(query['error_code'][0])}]")
            if "error_description" in query:
                error_parts.append(str(query["error_description"][0]))
            elif "error_message" in query:
                error_parts.append(str(query["error_message"][0]))
            return None, HttpResponse.create_error(
                http_response.code, " ".join(error_parts)
            )
        return None, HttpResponse.create_error(
            http_response.code, f"Can't find '{query_key}' in query."
        )
    query_value = str(query[query_key][0])
    return query_value, None


def is_file(key: str, value: Any) -> bool:
    return key.casefold() == "file"


def is_json_mime_type(content_type: Optional[str]) -> bool:
    if content_type is None:
        return False
    parts = content_type.split("; ")
    for part in parts:
        if "/" not in part:
            continue
        subparts = part.split("/", maxsplit=1)
        if len(subparts) != 2:
            continue
        p0, p1 = subparts
        if p0 != "application":
            continue
        if p1 == "json" or p1.endswith("+json"):
            return True
    return False


def set_env_config(
    base_url: str, client_id: str, client_secret: str, namespace: str
) -> None:
    os.environ["AB_BASE_URL"] = base_url
    os.environ["AB_CLIENT_ID"] = client_id
    os.environ["AB_CLIENT_SECRET"] = client_secret
    os.environ["AB_NAMESPACE"] = namespace


def set_env_user_credentials(username: str, password: str) -> None:
    os.environ["AB_USERNAME"] = username
    os.environ["AB_PASSWORD"] = password


def set_logger_level(
    level: Union[int, str], additional_scope: Union[None, str] = None
) -> None:
    logger = get_logger(additional_scope)
    logger.setLevel(level)


def try_convert_content_type(
    actual_content_type: str, expected_content_types: List[str], content: Any
) -> Tuple[bool, Any]:
    same_content_type = {
        "application/zip": ("application/x-zip-compressed",),
    }
    for expected_content_type in expected_content_types:
        if (
            expected_content_type in same_content_type
            and actual_content_type in same_content_type[expected_content_type]
        ):
            return True, content
        if actual_content_type == "text/plain":
            if expected_content_type == "application/json":
                # noinspection PyBroadException
                # pylint: disable=broad-except
                try:
                    new_content = json.loads(content)
                    return True, new_content
                except Exception:
                    pass
    return False, content
