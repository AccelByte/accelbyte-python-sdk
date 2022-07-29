# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

import urllib.parse

from typing import Any, Dict, List, Optional, Union

from ._http_status_codes import HTTP_STATUS_CODES
from ._model import Model


class HttpResponse(Model):
    """HTTP Error

    Properties:

        code: (code) OPTIONAL int

        content_type: (content_type) OPTIONAL str

        content: (content) OPTIONAL Any
    """

    code: int
    content_type: str
    content: Any

    def __str__(self):
        return f"[{self.code}] {self.content_type}: {str(self.content)}"

    def is_error(self) -> bool:
        return self.content_type == "error"

    def is_no_content(self) -> bool:
        return self.content_type == "no_content"

    def get_query_params(self) -> dict:
        if self.content_type == "location":
            return urllib.parse.parse_qs(urllib.parse.urlparse(self.content).query)
        return {}

    @classmethod
    def create(cls, code: int, message: str):
        instance = cls()
        instance.code = code
        instance.content_type = "message"
        instance.content = message
        return instance

    @classmethod
    def create_redirect(cls, code: int, location: str):
        instance = cls()
        instance.code = code
        instance.content_type = "location"
        instance.content = location
        return instance

    @classmethod
    def create_error(cls, code: int, error: str):
        instance = cls()
        instance.code = code
        instance.content_type = "error"
        instance.content = error
        return instance

    @classmethod
    def create_connection_error(cls):
        instance = cls()
        instance.code = 0
        instance.content_type = "error"
        instance.content = "Connection Error"
        return instance

    @classmethod
    def create_undocumented_response(cls, code: int, content_type: str, content: Any):
        if code not in HTTP_STATUS_CODES:
            return None
        if code == 200 and not content:
            content_type = "no_content"
            content = None
        elif code == 204:
            content_type = "no_content"
            content = None
        elif 400 <= code <= 599:
            content_type = "error"
        instance = cls()
        instance.code = code
        instance.content_type = content_type
        instance.content = content
        return instance

    @classmethod
    def create_unexpected_content_type_error(
        cls,
        actual: Optional[str] = None,
        expected: Optional[Union[str, List[str]]] = None,
    ):
        content = "Unexpected Content-Type Error"
        if actual is not None and expected is not None:
            content += f" (actual: {actual} expected one in: {expected})"
        elif actual is not None:
            content += f" (actual: {actual})"
        elif expected is not None:
            content += f" (expected: {expected})"
        instance = cls()
        instance.code = -1
        instance.content_type = "error"
        instance.content = content
        return instance

    @classmethod
    def create_unhandled_error(cls):
        instance = cls()
        instance.code = -1
        instance.content_type = "error"
        instance.content = "Unhandled Error"
        return instance

    @classmethod
    def create_sdk_not_initialized_error(cls):
        instance = cls()
        instance.code = 400
        instance.content_type = "error"
        instance.content = "SDK not initialized."
        return instance

    @classmethod
    def create_base_url_not_set_error(cls):
        instance = cls()
        instance.code = 400
        instance.content_type = "error"
        instance.content = "Base URL not set."
        return instance

    @classmethod
    def create_client_not_registered_error(cls):
        instance = cls()
        instance.code = 400
        instance.content_type = "error"
        instance.content = "Client not registered."
        return instance

    @classmethod
    def create_token_not_found_error(cls):
        instance = cls()
        instance.code = 400
        instance.content_type = "error"
        instance.content = "Token not found."
        return instance

    @classmethod
    def create_token_invalid_error(cls):
        instance = cls()
        instance.code = 400
        instance.content_type = "error"
        instance.content = "Token invalid."
        return instance

    @classmethod
    def create_config_repo_not_found_error(cls):
        instance = cls()
        instance.code = 400
        instance.content_type = "error"
        instance.content = "Config repository not found."
        return instance

    @classmethod
    def create_token_repo_not_found_error(cls):
        instance = cls()
        instance.code = 400
        instance.content_type = "error"
        instance.content = "Token repository not found."
        return instance

    @classmethod
    def create_http_client_not_found_error(cls):
        instance = cls()
        instance.code = 400
        instance.content_type = "error"
        instance.content = "HTTP client not found."
        return instance

    @classmethod
    def create_failed_to_resolve_security_error(cls):
        instance = cls()
        instance.code = 400
        instance.content_type = "error"
        instance.content = "Failed to resolve security."
        return instance

    @classmethod
    def create_failed_to_remove_token_error(cls):
        instance = cls()
        instance.code = 400
        instance.content_type = "error"
        instance.content = "Failed to remove token."
        return instance

    @classmethod
    def create_failed_to_set_token_error(cls):
        instance = cls()
        instance.code = 400
        instance.content_type = "error"
        instance.content = "Failed to set token."
        return instance

    @classmethod
    def try_create_undocumented_response(cls, code: int, content: Any):
        if code not in HTTP_STATUS_CODES:
            return False, None
        content_type = "error"
        if code == 204:
            content_type = "no_content"
            content = None
        instance = cls()
        instance.code = code
        instance.content_type = content_type
        instance.content = content
        return True, instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "code": "code",
            "content_type": "content_type",
            "content": "content",
        }
