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

# AccelByte Cloud Platform Service (4.17.0)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse
from .....core import StrEnum

from ...models import EntitlementPagingSlicedResult


class AppTypeEnum(StrEnum):
    DEMO = "DEMO"
    DLC = "DLC"
    GAME = "GAME"
    SOFTWARE = "SOFTWARE"


class EntitlementClazzEnum(StrEnum):
    APP = "APP"
    CODE = "CODE"
    ENTITLEMENT = "ENTITLEMENT"
    MEDIA = "MEDIA"
    OPTIONBOX = "OPTIONBOX"
    SUBSCRIPTION = "SUBSCRIPTION"


class QueryUserEntitlements(Operation):
    """Query user entitlements (queryUserEntitlements)

    Query entitlements for a specific user.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)
      *  Returns : entitlement list

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        app_type: (appType) OPTIONAL Union[str, AppTypeEnum] in query

        entitlement_clazz: (entitlementClazz) OPTIONAL Union[str, EntitlementClazzEnum] in query

        entitlement_name: (entitlementName) OPTIONAL str in query

        features: (features) OPTIONAL List[str] in query

        item_id: (itemId) OPTIONAL List[str] in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - EntitlementPagingSlicedResult (successful operation)
    """

    # region fields

    _url: str = "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    user_id: str  # REQUIRED in [path]
    active_only: bool  # OPTIONAL in [query]
    app_type: Union[str, AppTypeEnum]  # OPTIONAL in [query]
    entitlement_clazz: Union[str, EntitlementClazzEnum]  # OPTIONAL in [query]
    entitlement_name: str  # OPTIONAL in [query]
    features: List[str]  # OPTIONAL in [query]
    item_id: List[str]  # OPTIONAL in [query]
    limit: int  # OPTIONAL in [query]
    offset: int  # OPTIONAL in [query]

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
        if hasattr(self, "app_type"):
            result["appType"] = self.app_type
        if hasattr(self, "entitlement_clazz"):
            result["entitlementClazz"] = self.entitlement_clazz
        if hasattr(self, "entitlement_name"):
            result["entitlementName"] = self.entitlement_name
        if hasattr(self, "features"):
            result["features"] = self.features
        if hasattr(self, "item_id"):
            result["itemId"] = self.item_id
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> QueryUserEntitlements:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> QueryUserEntitlements:
        self.user_id = value
        return self

    def with_active_only(self, value: bool) -> QueryUserEntitlements:
        self.active_only = value
        return self

    def with_app_type(self, value: Union[str, AppTypeEnum]) -> QueryUserEntitlements:
        self.app_type = value
        return self

    def with_entitlement_clazz(
        self, value: Union[str, EntitlementClazzEnum]
    ) -> QueryUserEntitlements:
        self.entitlement_clazz = value
        return self

    def with_entitlement_name(self, value: str) -> QueryUserEntitlements:
        self.entitlement_name = value
        return self

    def with_features(self, value: List[str]) -> QueryUserEntitlements:
        self.features = value
        return self

    def with_item_id(self, value: List[str]) -> QueryUserEntitlements:
        self.item_id = value
        return self

    def with_limit(self, value: int) -> QueryUserEntitlements:
        self.limit = value
        return self

    def with_offset(self, value: int) -> QueryUserEntitlements:
        self.offset = value
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
        if hasattr(self, "app_type") and self.app_type:
            result["appType"] = str(self.app_type)
        elif include_empty:
            result["appType"] = Union[str, AppTypeEnum]()
        if hasattr(self, "entitlement_clazz") and self.entitlement_clazz:
            result["entitlementClazz"] = str(self.entitlement_clazz)
        elif include_empty:
            result["entitlementClazz"] = Union[str, EntitlementClazzEnum]()
        if hasattr(self, "entitlement_name") and self.entitlement_name:
            result["entitlementName"] = str(self.entitlement_name)
        elif include_empty:
            result["entitlementName"] = ""
        if hasattr(self, "features") and self.features:
            result["features"] = [str(i0) for i0 in self.features]
        elif include_empty:
            result["features"] = []
        if hasattr(self, "item_id") and self.item_id:
            result["itemId"] = [str(i0) for i0 in self.item_id]
        elif include_empty:
            result["itemId"] = []
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = 0
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = 0
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[Union[None, EntitlementPagingSlicedResult], Union[None, HttpResponse]]:
        """Parse the given response.

        200: OK - EntitlementPagingSlicedResult (successful operation)

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
            return EntitlementPagingSlicedResult.create_from_dict(content), None

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
        active_only: Optional[bool] = None,
        app_type: Optional[Union[str, AppTypeEnum]] = None,
        entitlement_clazz: Optional[Union[str, EntitlementClazzEnum]] = None,
        entitlement_name: Optional[str] = None,
        features: Optional[List[str]] = None,
        item_id: Optional[List[str]] = None,
        limit: Optional[int] = None,
        offset: Optional[int] = None,
    ) -> QueryUserEntitlements:
        instance = cls()
        instance.namespace = namespace
        instance.user_id = user_id
        if active_only is not None:
            instance.active_only = active_only
        if app_type is not None:
            instance.app_type = app_type
        if entitlement_clazz is not None:
            instance.entitlement_clazz = entitlement_clazz
        if entitlement_name is not None:
            instance.entitlement_name = entitlement_name
        if features is not None:
            instance.features = features
        if item_id is not None:
            instance.item_id = item_id
        if limit is not None:
            instance.limit = limit
        if offset is not None:
            instance.offset = offset
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> QueryUserEntitlements:
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
        if "appType" in dict_ and dict_["appType"] is not None:
            instance.app_type = str(dict_["appType"])
        elif include_empty:
            instance.app_type = Union[str, AppTypeEnum]()
        if "entitlementClazz" in dict_ and dict_["entitlementClazz"] is not None:
            instance.entitlement_clazz = str(dict_["entitlementClazz"])
        elif include_empty:
            instance.entitlement_clazz = Union[str, EntitlementClazzEnum]()
        if "entitlementName" in dict_ and dict_["entitlementName"] is not None:
            instance.entitlement_name = str(dict_["entitlementName"])
        elif include_empty:
            instance.entitlement_name = ""
        if "features" in dict_ and dict_["features"] is not None:
            instance.features = [str(i0) for i0 in dict_["features"]]
        elif include_empty:
            instance.features = []
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = [str(i0) for i0 in dict_["itemId"]]
        elif include_empty:
            instance.item_id = []
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = 0
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = 0
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "userId": "user_id",
            "activeOnly": "active_only",
            "appType": "app_type",
            "entitlementClazz": "entitlement_clazz",
            "entitlementName": "entitlement_name",
            "features": "features",
            "itemId": "item_id",
            "limit": "limit",
            "offset": "offset",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "userId": True,
            "activeOnly": False,
            "appType": False,
            "entitlementClazz": False,
            "entitlementName": False,
            "features": False,
            "itemId": False,
            "limit": False,
            "offset": False,
        }

    @staticmethod
    def get_collection_format_map() -> Dict[str, Union[None, str]]:
        return {
            "features": "multi",  # in query
            "itemId": "multi",  # in query
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "appType": ["DEMO", "DLC", "GAME", "SOFTWARE"],  # in query
            "entitlementClazz": [
                "APP",
                "CODE",
                "ENTITLEMENT",
                "MEDIA",
                "OPTIONBOX",
                "SUBSCRIPTION",
            ],  # in query
        }

    # endregion static methods
