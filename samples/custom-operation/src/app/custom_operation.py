# Copyright (c) 2023 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

from typing import Any, Dict, List, Literal, Optional

from accelbyte_py_sdk.core import Operation

from .custom_model import GoogleCustomSearchResponse


class GoogleCustomSearch(Operation):
    url = "/customsearch/v1"
    produces = ["application/json"]

    id_: str  # REQUIRED in [query]
    key: str  # REQUIRED in [query]
    query: str  # REQUIRED in [query]
    limit: Optional[int] = 5  # OPTIONAL in [query]
    safe: Optional[Literal["active", "off"]] = "off"  # OPTIONAL in [query]

    def get_query_params(self) -> dict:
        return self.create_params_dict(("cx", "key", "num", "q", "safe"))

    def parse_response(self, code: int, content_type: str, content: Any):
        pre_processed_response, error = self.pre_process_response(
            code, content_type, content
        )
        if error is not None:
            return None, None if error.is_no_content() else error
        code, content_type, content = pre_processed_response

        if code == 200:
            return GoogleCustomSearchResponse.create_from_dict(content), None

        return self.handle_undocumented_response(code, content_type, content)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "cx": "id_",
            "key": "key",
            "num": "limit",
            "q": "query",
            "safe": "safe",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "cx": True,
            "key": True,
            "num": False,
            "q": True,
            "safe": False,
        }
