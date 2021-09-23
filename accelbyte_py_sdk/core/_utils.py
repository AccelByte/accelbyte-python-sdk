import base64
import hashlib
import os

from base64 import b64encode
from time import time
from typing import Dict, Tuple, Union
from uuid import uuid4

from ._http_response import HttpResponse


def create_basic_authentication(username: str, password: str) -> str:
    return f'Basic {b64encode(f"{username}:{password}".encode("utf-8")).decode("utf-8")}'


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


def generate_amazon_xray_trace_id(version: int = 1) -> str:
    unix_timestamp_hex = format(int(time()), "X")
    uuid_str = str(uuid4()).replace("-", "")[0:24]
    return f"{version}-{unix_timestamp_hex}-{uuid_str}"


def get_query_from_http_redirect_response(
        http_response: HttpResponse,
        query_key: str
) -> Tuple[Union[None, str], Union[None, HttpResponse]]:
    if http_response.content_type != "location":
        return None, HttpResponse.create_error(http_response.code, "Can't find 'Location' in Header.")
    query = http_response.get_query_params()
    if query_key not in query or len(query[query_key]) < 1:
        return None, HttpResponse.create_error(http_response.code, f"Can't '{query_key}' in query.")
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
        result["Accept"] = accept

    if "Content-Type" not in result:
        if operation.consumes is not None and len(operation.consumes) > 0:
            content_type = operation.consumes[0]
        else:
            params = operation.get_all_params()
            content_type = infer_content_type_from_params(params)
        result["Content-Type"] = content_type

    return result
