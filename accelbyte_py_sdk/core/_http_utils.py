# Copyright (c) 2024 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

import binascii
import base64
import os
import hashlib
import json

from base64 import b64encode
from time import time
from typing import Any, Dict, List, Optional, Tuple, Union
from urllib.parse import quote

from ._http_response import HttpResponse

QUERY_DELIMITER_MAP = {
    "csv": ",",
    "ssv": " ",
    "tsv": "\t",
    "pipes": "|",
}


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
    username: str, password: Optional[str], prefix: str = "Basic "
) -> str:
    password = password or ""
    return (
        f'{prefix}{b64encode(f"{username}:{password}".encode("utf-8")).decode("utf-8")}'
    )


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


def is_file(key: Union[str, Tuple[str, str]], value: Any) -> bool:
    if isinstance(key, tuple):
        key_name, key_type = key
        return key_type == "file"
    return key.casefold() == "file"


def is_json_mime_type(content_type: Optional[str]) -> bool:
    if content_type is None:
        return False
    parts = [x.strip() for x in content_type.split(";")]
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


def try_convert_content_type(
    actual_content_type: str, expected_content_types: List[str], content: Any
) -> Tuple[bool, Any, Optional[str]]:
    same_content_type = {
        "application/zip": ("application/x-zip-compressed",),
    }
    errors = []
    for expected_content_type in expected_content_types:
        if (
            expected_content_type in same_content_type
            and actual_content_type in same_content_type[expected_content_type]
        ):
            return True, content, None
        if actual_content_type == "text/plain":
            if expected_content_type == "application/json":
                # noinspection PyBroadException
                # pylint: disable=broad-except
                try:
                    new_content = json.loads(content)
                    return True, new_content, None
                except Exception as error:
                    errors.append(str(error))
    errors.insert(0, f"{content=}\n")
    return False, content, "\n".join(errors)
