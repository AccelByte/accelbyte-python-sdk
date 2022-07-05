# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

import json
from dataclasses import dataclass
from io import IOBase
from typing import Any, Dict, IO, List, Optional, Tuple, Union
from pathlib import Path

from ._config_repository import ConfigRepository
from ._token_repository import TokenRepository
from ._header import Header
from ._headerstr import HeaderStr
from ._http_response import HttpResponse
from ._operation import Operation
from ._utils import SENTINEL
from ._utils import create_basic_authentication
from ._utils import create_url
from ._utils import is_file
from ._utils import is_json_mime_type


@dataclass
class ProtoHttpRequest:
    def __init__(
        self,
        url: str,
        method: str,
        headers: Optional[Header] = None,
        data: Any = None,
        files: Any = None,
        json_: Any = None,
    ):
        self.url = url
        self.method = method
        self.headers = headers if headers is not None else {}
        self.data = data
        self.files = files
        self.json_ = json_


class SecuritiesResolver:
    def __init__(
        self,
        config_repo: ConfigRepository,
        token_repo: TokenRepository,
        replace_existing: bool = False,
    ):
        if config_repo is None:
            raise ValueError(config_repo)
        if token_repo is None:
            raise ValueError(token_repo)

        self.config_repo = config_repo
        self.token_repo = token_repo
        self.replace_existing = replace_existing

        self.basic_auth = SENTINEL
        self.access_token = SENTINEL

    def _resolve_basic_auth(self, proto: ProtoHttpRequest):
        result = False
        if proto.headers.has_authorization():
            if not self.replace_existing:
                return True
            else:
                result = True
        if self.basic_auth is not None and self.basic_auth is not SENTINEL:
            proto.headers.add_authorization(self.basic_auth)
            return True
        if self.basic_auth is SENTINEL:
            client_id = self.config_repo.get_client_id()
            if not client_id:
                return result
            client_secret = self.config_repo.get_client_secret() or ""
            self.basic_auth = create_basic_authentication(
                username=client_id, password=client_secret
            )
            proto.headers.add_authorization(self.basic_auth)
            return True
        return result

    def _resolve_bearer_auth(self, proto: ProtoHttpRequest):
        result = False
        if proto.headers.has_authorization():
            if not self.replace_existing:
                return True
            else:
                result = True
        if self.access_token is not None and self.access_token is not SENTINEL:
            proto.headers.add_bearer_authorization(self.access_token)
            return True
        if self.access_token is SENTINEL:
            self.access_token = self.token_repo.get_access_token()
            if self.access_token is None:
                return result
            proto.headers.add_bearer_authorization(self.access_token)
            return True
        return result

    def _resolve_cookie_auth(
        self, proto: ProtoHttpRequest, cookie_auth_key: str = "access_token"
    ):
        result = False
        if proto.headers.has_cookie_key(cookie_auth_key):
            if not self.replace_existing:
                return True
            else:
                result = True
        if self.access_token is not None and self.access_token is not SENTINEL:
            proto.headers.add_cookie(
                key=cookie_auth_key, value=self.access_token, replace_existing=True
            )
            return True
        if self.access_token is SENTINEL:
            self.access_token = self.token_repo.get_access_token()
            if self.access_token is None:
                return result
            proto.headers.add_cookie(
                key=cookie_auth_key, value=self.access_token, replace_existing=True
            )
            return True
        return result

    def resolve(
        self, proto: ProtoHttpRequest, securities: List[List[str]] = None
    ) -> bool:
        if not securities:
            return True
        for security in securities:
            fulfilled = True
            for requirement in security:
                if requirement == "BASIC_AUTH":
                    if not self._resolve_basic_auth(proto=proto):
                        fulfilled = False
                        break
                elif requirement == "BEARER_AUTH":
                    if not self._resolve_bearer_auth(proto=proto):
                        fulfilled = False
                        break
                elif requirement == "COOKIE_AUTH":
                    if not self._resolve_cookie_auth(proto=proto):
                        fulfilled = False
                        break
                else:
                    raise NotImplementedError()
            if fulfilled:
                return True
        return False


def convert_any_to_file_tuple(name: str, file: Any) -> Tuple[str, Union[IO, IOBase]]:
    if isinstance(file, IOBase):
        return name, file

    if isinstance(file, str):
        file = Path(file)
    if isinstance(file, Path):
        if not file.exists():
            raise FileNotFoundError
        return file.name, file.open()

    raise ValueError


def create_headers(
    header_params: Optional[Dict[str, Union[str, HeaderStr]]] = None,
    additional_headers: Optional[Dict[str, str]] = None,
    additional_headers_override: bool = True,
    authorization_override: Optional[str] = None,
    **kwargs
) -> Header:
    headers = Header()

    if header_params:
        for key, value in header_params.items():
            if not isinstance(value, str):
                value = str(value)
            if value:
                headers[key] = value

    if authorization_override:
        headers.add_authorization(authorization_override)

    if additional_headers:
        for key, value in additional_headers.items():
            if not additional_headers_override and key in headers:
                continue
            headers[key] = value

    return headers


def create_proto_from_operation(
    operation: Operation,
    config_repo: ConfigRepository,
    token_repo: TokenRepository,
    base_url: str = "",
    additional_headers: Optional[Dict[str, str]] = None,
    additional_headers_override: bool = True,
    **kwargs
) -> Tuple[Optional[ProtoHttpRequest], Optional[HttpResponse]]:
    base_url = base_url if base_url is not None else ""

    url = create_url(
        path=operation.url,
        base=base_url,
        path_params=operation.get_path_params(),
        query_params=operation.get_query_params(),
        collection_format_map=operation.get_collection_format_map(),
    )

    inferred_headers = infer_headers_from_operation(operation)
    if inferred_headers:
        if additional_headers is None:
            additional_headers = {}
        for key, value in inferred_headers.items():
            if key not in additional_headers:
                additional_headers[key] = value

    headers = create_headers(
        header_params=operation.get_header_params(),
        additional_headers=additional_headers,
        additional_headers_override=additional_headers_override,
        authorization_override=getattr(operation, "authorization_override", None),
    )

    data, files, json_ = extract_payload_from_operation(operation, headers=headers)

    # NOTE: Remove 'Content-Type' when 'files' is truthy.
    # See: https://stackoverflow.com/questions/12385179/how-to-send-a-multipart-form-data-with-requests-in-python#comment90642370_12385661
    if files and "Content-Type" in headers:
        headers.pop("Content-Type")

    if (
        not headers.has_amazon_xray_trace_id()
        and config_repo.auto_add_amazon_trace_id()
    ):
        headers.add_amazon_xray_trace_id()

    if not headers.has_user_agent() and config_repo.auto_add_user_agent():
        app_name = config_repo.get_app_name()
        app_version = config_repo.get_app_version()
        headers.add_user_agent(app_info=(app_name, app_version))

    proto = ProtoHttpRequest(
        url=url,
        method=operation.method,
        headers=headers,
        data=data,
        files=files,
        json_=json_,
    )

    success = SecuritiesResolver(
        config_repo=config_repo, token_repo=token_repo
    ).resolve(proto=proto, securities=operation.securities)
    if not success:
        return None, HttpResponse.create_failed_to_resolve_security_error()

    return proto, None


def extract_payload_from_operation(
    operation: Operation, headers: Optional[Header] = None
) -> Tuple[Any, Any, Any]:
    content_type = headers.get("Content-Type") if headers else None

    body_params = operation.get_body_params()
    form_data_params = operation.get_form_data_params()

    if body_params is not None:
        if is_json_mime_type(content_type):
            data, files, json_ = None, None, body_params
        else:
            data, files, json_ = json.dumps(body_params), None, None
    elif form_data_params:
        data, files, json_ = {}, {}, None
        for key, value in form_data_params.items():
            if is_file(key, value):
                files[key] = convert_any_to_file_tuple(key, value)
            else:
                data[key] = value
        if not data:
            data = None
        if not files:
            files = None
    else:
        data, files, json_ = None, None, None

    return data, files, json_


def infer_content_type_from_params(
    params: Dict[str, Any], default: str = "application/octet-stream"
) -> str:
    if "body" in params:
        return "application/json"
    elif "form_data" in params or "formData" in params:
        return "application/x-www-form-urlencoded"
    return default


def infer_headers_from_operation(operation: Operation) -> Dict[str, str]:
    inferred_headers = {}

    accept = operation.produces[0] if operation.produces else "application/json"
    inferred_headers["Accept"] = accept

    content_type = (
        operation.consumes[0]
        if operation.consumes
        else infer_content_type_from_params(operation.get_all_params())
    )
    inferred_headers["Content-Type"] = content_type

    return inferred_headers
