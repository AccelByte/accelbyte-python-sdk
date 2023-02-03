# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# pylint: disable=duplicate-code
# pylint: disable=line-too-long
# pylint: disable=missing-function-docstring
# pylint: disable=missing-module-docstring
# pylint: disable=too-many-arguments
# pylint: disable=too-many-branches
# pylint: disable=too-many-instance-attributes
# pylint: disable=too-many-lines
# pylint: disable=too-many-locals
# pylint: disable=too-many-public-methods
# pylint: disable=too-many-return-statements
# pylint: disable=too-many-statements
# pylint: disable=unused-import

# AccelByte Cloud Reporting Service (0.1.23)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import RestapiUnusedReasonListResponse
from ...models import RestapiErrorResponse


class AdminGetUnusedReasons(Operation):
    """Get list of reasons that not used by moderation rules (adminGetUnusedReasons)

    This endpoint get reasons not used by moderation rules.




    Required Permission: ADMIN:NAMESPACE:{namespace}:REASON [READ]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:REASON [READ]

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/reasons/unused

        method: GET

        tags: ["Admin Reasons"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        extension_category: (extensionCategory) OPTIONAL str in query

        category: (category) REQUIRED str in query

    Responses:
        200: OK - RestapiUnusedReasonListResponse (OK)

        404: Not Found - RestapiErrorResponse (Not Found)

        500: Internal Server Error - RestapiErrorResponse (Internal Server Error)
    """

    # region fields

    _url: str = "/reporting/v1/admin/namespaces/{namespace}/reasons/unused"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    extension_category: str  # OPTIONAL in [query]
    category: str  # REQUIRED in [query]

    # endregion fields

    # region properties

    @property
    def url(self) -> str:
        return self._url

    @property
    def method(self) -> str:
        return self._method

    @property
    def consumes(self) -> List[str]:
        return self._consumes

    @property
    def produces(self) -> List[str]:
        return self._produces

    @property
    def securities(self) -> List[List[str]]:
        return self._securities

    @property
    def location_query(self) -> str:
        return self._location_query

    # endregion properties

    # region get methods

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "path": self.get_path_params(),
            "query": self.get_query_params(),
        }

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "extension_category"):
            result["extensionCategory"] = self.extension_category
        if hasattr(self, "category"):
            result["category"] = self.category
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> AdminGetUnusedReasons:
        self.namespace = value
        return self

    def with_extension_category(self, value: str) -> AdminGetUnusedReasons:
        self.extension_category = value
        return self

    def with_category(self, value: str) -> AdminGetUnusedReasons:
        self.category = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "extension_category") and self.extension_category:
            result["extensionCategory"] = str(self.extension_category)
        elif include_empty:
            result["extensionCategory"] = ""
        if hasattr(self, "category") and self.category:
            result["category"] = str(self.category)
        elif include_empty:
            result["category"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, RestapiUnusedReasonListResponse],
        Union[None, HttpResponse, RestapiErrorResponse],
    ]:
        """Parse the given response.

        200: OK - RestapiUnusedReasonListResponse (OK)

        404: Not Found - RestapiErrorResponse (Not Found)

        500: Internal Server Error - RestapiErrorResponse (Internal Server Error)

        ---: HttpResponse (Undocumented Response)

        ---: HttpResponse (Unexpected Content-Type Error)

        ---: HttpResponse (Unhandled Error)
        """
        pre_processed_response, error = self.pre_process_response(
            code=code, content_type=content_type, content=content
        )
        if error is not None:
            return None, None if error.is_no_content() else error
        code, content_type, content = pre_processed_response

        if code == 200:
            return RestapiUnusedReasonListResponse.create_from_dict(content), None
        if code == 404:
            return None, RestapiErrorResponse.create_from_dict(content)
        if code == 500:
            return None, RestapiErrorResponse.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        category: str,
        extension_category: Optional[str] = None,
    ) -> AdminGetUnusedReasons:
        instance = cls()
        instance.namespace = namespace
        instance.category = category
        if extension_category is not None:
            instance.extension_category = extension_category
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AdminGetUnusedReasons:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "extensionCategory" in dict_ and dict_["extensionCategory"] is not None:
            instance.extension_category = str(dict_["extensionCategory"])
        elif include_empty:
            instance.extension_category = ""
        if "category" in dict_ and dict_["category"] is not None:
            instance.category = str(dict_["category"])
        elif include_empty:
            instance.category = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "extensionCategory": "extension_category",
            "category": "category",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "extensionCategory": False,
            "category": True,
        }

    # endregion static methods
