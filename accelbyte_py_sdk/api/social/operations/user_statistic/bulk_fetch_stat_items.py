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

# AccelByte Cloud Social Service (1.33.0)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import UserStatItemInfo
from ...models import ValidationErrorEntity


class BulkFetchStatItems(Operation):
    """Bulk fetch statitems value (bulkFetchStatItems)

    Bulk fetch multiple user's statitem value for a given namespace and statCode.
    Other detail info:
    + *Required permission*: resource="ADMIN:NAMESPACE:{namespace}:STATITEM", action=2 (READ)
    + *Returns*: list of user's statItem

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STATITEM [READ]

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/statitems/bulk

        method: GET

        tags: ["UserStatistic"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in query

        user_ids: (userIds) REQUIRED str in query

    Responses:
        200: OK - List[UserStatItemInfo] (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """

    # region fields

    _url: str = "/social/v1/admin/namespaces/{namespace}/statitems/bulk"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    stat_code: str  # REQUIRED in [query]
    user_ids: str  # REQUIRED in [query]

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
        if hasattr(self, "stat_code"):
            result["statCode"] = self.stat_code
        if hasattr(self, "user_ids"):
            result["userIds"] = self.user_ids
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> BulkFetchStatItems:
        self.namespace = value
        return self

    def with_stat_code(self, value: str) -> BulkFetchStatItems:
        self.stat_code = value
        return self

    def with_user_ids(self, value: str) -> BulkFetchStatItems:
        self.user_ids = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "stat_code") and self.stat_code:
            result["statCode"] = str(self.stat_code)
        elif include_empty:
            result["statCode"] = ""
        if hasattr(self, "user_ids") and self.user_ids:
            result["userIds"] = str(self.user_ids)
        elif include_empty:
            result["userIds"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, List[UserStatItemInfo]],
        Union[None, HttpResponse, ValidationErrorEntity],
    ]:
        """Parse the given response.

        200: OK - List[UserStatItemInfo] (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

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
            return [UserStatItemInfo.create_from_dict(i) for i in content], None
        if code == 422:
            return None, ValidationErrorEntity.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        stat_code: str,
        user_ids: str,
    ) -> BulkFetchStatItems:
        instance = cls()
        instance.namespace = namespace
        instance.stat_code = stat_code
        instance.user_ids = user_ids
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> BulkFetchStatItems:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "statCode" in dict_ and dict_["statCode"] is not None:
            instance.stat_code = str(dict_["statCode"])
        elif include_empty:
            instance.stat_code = ""
        if "userIds" in dict_ and dict_["userIds"] is not None:
            instance.user_ids = str(dict_["userIds"])
        elif include_empty:
            instance.user_ids = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "statCode": "stat_code",
            "userIds": "user_ids",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "statCode": True,
            "userIds": True,
        }

    # endregion static methods
