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

# AccelByte Cloud Platform Service (4.23.0)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse
from .....core import StrEnum

from ...models import AppEntitlementPagingSlicedResult


class AppTypeEnum(StrEnum):
    DEMO = "DEMO"
    DLC = "DLC"
    GAME = "GAME"
    SOFTWARE = "SOFTWARE"


class QueryUserEntitlementsByAppType(Operation):
    """Query app entitlements by appType (queryUserEntitlementsByAppType)

    Query app entitlements by appType.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2
      *  Returns : app entitlement pagination

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT []

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/byAppType

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        app_type: (appType) REQUIRED Union[str, AppTypeEnum] in query

    Responses:
        200: OK - AppEntitlementPagingSlicedResult (successful operation)
    """

    # region fields

    _url: str = (
        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/byAppType"
    )
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    user_id: str  # REQUIRED in [path]
    active_only: bool  # OPTIONAL in [query]
    limit: int  # OPTIONAL in [query]
    offset: int  # OPTIONAL in [query]
    app_type: Union[str, AppTypeEnum]  # REQUIRED in [query]

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
        if hasattr(self, "user_id"):
            result["userId"] = self.user_id
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "active_only"):
            result["activeOnly"] = self.active_only
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "app_type"):
            result["appType"] = self.app_type
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> QueryUserEntitlementsByAppType:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> QueryUserEntitlementsByAppType:
        self.user_id = value
        return self

    def with_active_only(self, value: bool) -> QueryUserEntitlementsByAppType:
        self.active_only = value
        return self

    def with_limit(self, value: int) -> QueryUserEntitlementsByAppType:
        self.limit = value
        return self

    def with_offset(self, value: int) -> QueryUserEntitlementsByAppType:
        self.offset = value
        return self

    def with_app_type(
        self, value: Union[str, AppTypeEnum]
    ) -> QueryUserEntitlementsByAppType:
        self.app_type = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "active_only") and self.active_only:
            result["activeOnly"] = bool(self.active_only)
        elif include_empty:
            result["activeOnly"] = False
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = 0
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = 0
        if hasattr(self, "app_type") and self.app_type:
            result["appType"] = str(self.app_type)
        elif include_empty:
            result["appType"] = Union[str, AppTypeEnum]()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, AppEntitlementPagingSlicedResult], Union[None, HttpResponse]
    ]:
        """Parse the given response.

        200: OK - AppEntitlementPagingSlicedResult (successful operation)

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
            return AppEntitlementPagingSlicedResult.create_from_dict(content), None

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        user_id: str,
        app_type: Union[str, AppTypeEnum],
        active_only: Optional[bool] = None,
        limit: Optional[int] = None,
        offset: Optional[int] = None,
    ) -> QueryUserEntitlementsByAppType:
        instance = cls()
        instance.namespace = namespace
        instance.user_id = user_id
        instance.app_type = app_type
        if active_only is not None:
            instance.active_only = active_only
        if limit is not None:
            instance.limit = limit
        if offset is not None:
            instance.offset = offset
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> QueryUserEntitlementsByAppType:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "activeOnly" in dict_ and dict_["activeOnly"] is not None:
            instance.active_only = bool(dict_["activeOnly"])
        elif include_empty:
            instance.active_only = False
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = 0
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = 0
        if "appType" in dict_ and dict_["appType"] is not None:
            instance.app_type = str(dict_["appType"])
        elif include_empty:
            instance.app_type = Union[str, AppTypeEnum]()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "userId": "user_id",
            "activeOnly": "active_only",
            "limit": "limit",
            "offset": "offset",
            "appType": "app_type",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "userId": True,
            "activeOnly": False,
            "limit": False,
            "offset": False,
            "appType": True,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "appType": ["DEMO", "DLC", "GAME", "SOFTWARE"],  # in query
        }

    # endregion static methods
