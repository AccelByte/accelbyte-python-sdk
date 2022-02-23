# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

import base64
import binascii
import hashlib
import logging
import logging.handlers
import os

from base64 import b64encode
from time import time
from typing import Any, Dict, Tuple, Union
from uuid import uuid4

from ._http_response import HttpResponse


def add_buffered_file_handler_to_logger(
        filename: Union[str, os.PathLike[str]],
        capacity: int,
        level: Union[None, int] = None,
        additional_scope: Union[None, str] = None,
) -> logging.Handler:
    logger = get_logger(additional_scope)
    if level is not None:
        logger.setLevel(level=level)
    buffered_file_handler = create_buffered_file_handler(
        f_filename=filename,
        m_capacity=capacity,
    )
    logger.addHandler(buffered_file_handler)
    return buffered_file_handler


def add_stream_handler_to_logger(additional_scope: Union[None, str] = None) -> logging.Handler:
    logger = get_logger(additional_scope)
    stream_handler = logging.StreamHandler()
    logger.addHandler(stream_handler)
    return stream_handler


def create_basic_authentication(username: str, password: str) -> str:
    return f'Basic {b64encode(f"{username}:{password}".encode("utf-8")).decode("utf-8")}'


def create_buffered_file_handler(
        f_filename: Union[str, os.PathLike[str]],
        m_capacity: int,
        f_mode: Union[None, str] = None,
        f_encoding: Union[None, str] = None,
        f_delay: bool = False,
        f_errors: Union[None, str] = None,
        m_flush_level: int = logging.ERROR,
        m_flush_on_close: bool = True,
) -> logging.handlers.MemoryHandler:
    f_mode = f_mode or "a"
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


def create_curl_request(uri: str, method: str, headers: Dict[str, str], data: Any, delimiter: str = "\n"):
    parts = [f'curl -X {method} "{uri}"']
    for k, v in headers.items():
        parts.append(f'-H "{k}: {v}"')
    if data:
        parts.append(f"-d '{data}'")
    result = delimiter.join(parts)
    return result


def create_pkce_verifier_and_challenge_plain(
        size: int = 32,
        encoding: str = "ascii"
) -> Tuple[str, str, str]:
    method = "plain"
    verifier_bytes = os.urandom(size)
    verifier_base64 = base64.urlsafe_b64encode(verifier_bytes).rstrip(b"=")
    verifier_str = verifier_base64.decode(encoding)
    return verifier_str, verifier_str, method


def create_pkce_verifier_and_challenge_s256(
        size: int = 32,
        encoding: str = "ascii"
) -> Tuple[str, str, str]:
    method = "S256"
    verifier_bytes = os.urandom(size)
    verifier_base64 = base64.urlsafe_b64encode(verifier_bytes).rstrip(b'=')
    verifier_str = verifier_base64.decode(encoding)
    challenge_bytes = hashlib.sha256(verifier_base64).digest()
    challenge_base64 = base64.urlsafe_b64encode(challenge_bytes).rstrip(b"=")
    challenge_str = challenge_base64.decode(encoding)
    return verifier_str, challenge_str, method


def generate_amazon_xray_trace_id(version: int = 1, request_time: Union[None, float] = None) -> str:
    request_time = request_time or time()
    current_time_hex = hex(int(request_time))[2:]                  # time of the original request, in Unix epoch time, in 8 hexadecimal digits
    request_id = binascii.hexlify(os.urandom(12)).decode("utf-8")  # 96-bit guid, in 24 hexadecimal digits
    return f"{version}-{current_time_hex}-{request_id}"            # see: https://docs.aws.amazon.com/xray/latest/devguide/xray-api-sendingdata.html


def generate_websocket_message_id() -> str:
    uuid_str = str(uuid4()).replace("-", "")[0:24]
    return uuid_str


def get_env_config() -> Tuple[str, str, str, str]:
    return os.environ.get("AB_BASE_URL", ""), os.environ.get("AB_CLIENT_ID", ""), os.environ.get("AB_CLIENT_SECRET", ""), os.environ.get("AB_NAMESPACE", "")


def get_env_user_credentials() -> Tuple[str, str]:
    return os.environ.get("AB_USERNAME", ""), os.environ.get("AB_PASSWORD", "")


def get_logger(additional_scope: Union[None, str] = None) -> logging.Logger:
    additional_scope = additional_scope or ""
    base_logger_name = "accelbyte_py_sdk"
    logger_name = ".".join([base_logger_name, additional_scope]) if additional_scope else base_logger_name
    logger = logging.getLogger(logger_name)
    return logger


def get_query_from_http_redirect_response(
        http_response: HttpResponse,
        query_key: str
) -> Tuple[Union[None, str], Union[None, HttpResponse]]:
    if http_response.content_type != "location":
        return None, HttpResponse.create_error(http_response.code, "Can't find 'Location' in Header.")
    query = http_response.get_query_params()
    if query_key not in query:
        error_related_keys = ["error", "error_code", "error_description", "error_message"]
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
            return None, HttpResponse.create_error(http_response.code, " ".join(error_parts))
        return None, HttpResponse.create_error(http_response.code, f"Can't find '{query_key}' in query.")
    query_value = str(query[query_key][0])
    return query_value, None


def infer_content_type_from_params(params: dict, default: Union[None, str] = None) -> str:
    content_type_default = default if default is not None else "application/octet-stream"

    if "body" in params:
        return "application/json"

    if "form_data" in params:
        return "application/x-www-form-urlencoded"

    return content_type_default


# TODO(elmer): set flag to allow overwrites?
def infer_headers_from_operation(operation, existing: Union[None, dict] = None) -> Dict[str, str]:
    result = existing if existing is not None else {}

    if "Accept" not in result:
        if operation.produces is not None and len(operation.produces) > 0:
            accept = operation.produces[0]
        else:
            accept = "application/json"
        if accept:
            result["Accept"] = accept

    if "Content-Type" not in result:
        if operation.consumes is not None and len(operation.consumes) > 0:
            content_type = operation.consumes[0]
        else:
            params = operation.get_all_params()
            content_type = infer_content_type_from_params(params)
        if content_type:
            result["Content-Type"] = content_type

    return result


def set_env_config(base_url: str, client_id: str, client_secret: str, namespace: str) -> None:
    os.environ["AB_BASE_URL"] = base_url
    os.environ["AB_CLIENT_ID"] = client_id
    os.environ["AB_CLIENT_SECRET"] = client_secret
    os.environ["AB_NAMESPACE"] = namespace


def set_env_user_credentials(username: str, password: str) -> None:
    os.environ["AB_USERNAME"] = username
    os.environ["AB_PASSWORD"] = password


def set_logger_level(level: Union[int, str], additional_scope: Union[None, str] = None) -> None:
    logger = get_logger(additional_scope)
    logger.setLevel(level)
