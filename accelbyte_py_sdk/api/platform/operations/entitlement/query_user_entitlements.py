# Auto-generated at 2021-09-27T17:01:29.585267+08:00
# from: Justice Platform Service (3.24.0)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HttpResponse

from ...models import EntitlementPagingSlicedResult


class QueryUserEntitlements(Operation):
    """Query user entitlements (queryUserEntitlements)

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements

        method: GET

        tags: Entitlement

        consumes: []

        produces: ["application/json"]

        security: bearer

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        entitlement_clazz: (entitlementClazz) OPTIONAL str in query

        app_type: (appType) OPTIONAL str in query

        entitlement_name: (entitlementName) OPTIONAL str in query

        item_id: (itemId) OPTIONAL str in query

        active_only: (activeOnly) OPTIONAL bool in query

        offset: (offset) OPTIONAL int in query

        limit: (limit) OPTIONAL int in query

    Responses:
        200: OK - EntitlementPagingSlicedResult (successful operation)
    """

    # region fields

    _url: str = "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    namespace: str                                                                                 # REQUIRED in [path]
    user_id: str                                                                                   # REQUIRED in [path]
    entitlement_clazz: str                                                                         # OPTIONAL in [query]
    app_type: str                                                                                  # OPTIONAL in [query]
    entitlement_name: str                                                                          # OPTIONAL in [query]
    item_id: str                                                                                   # OPTIONAL in [query]
    active_only: bool                                                                              # OPTIONAL in [query]
    offset: int                                                                                    # OPTIONAL in [query]
    limit: int                                                                                     # OPTIONAL in [query]

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
    def security(self) -> Optional[str]:
        return self._security

    @property
    def location_query(self) -> str:
        return self._location_query

    # endregion properties

    # region get methods

    def get_full_url(self, base_url: Union[None, str] = None) -> str:
        result = base_url if base_url is not None else ""

        # path params
        url = self.url
        for k, v in self.get_path_params().items():
            url = url.replace(f"{{{k}}}", v)
        result += url

        # query params
        result += "?" + "&".join([f"{k}={v}" for k, v in self.get_query_params().items()])

        return result

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "namespace",
            "user_id",
        ]

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
        if hasattr(self, "entitlement_clazz"):
            result["entitlementClazz"] = self.entitlement_clazz
        if hasattr(self, "app_type"):
            result["appType"] = self.app_type
        if hasattr(self, "entitlement_name"):
            result["entitlementName"] = self.entitlement_name
        if hasattr(self, "item_id"):
            result["itemId"] = self.item_id
        if hasattr(self, "active_only"):
            result["activeOnly"] = self.active_only
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        if not hasattr(self, "user_id") or self.user_id is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> QueryUserEntitlements:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> QueryUserEntitlements:
        self.user_id = value
        return self

    def with_entitlement_clazz(self, value: str) -> QueryUserEntitlements:
        self.entitlement_clazz = value
        return self

    def with_app_type(self, value: str) -> QueryUserEntitlements:
        self.app_type = value
        return self

    def with_entitlement_name(self, value: str) -> QueryUserEntitlements:
        self.entitlement_name = value
        return self

    def with_item_id(self, value: str) -> QueryUserEntitlements:
        self.item_id = value
        return self

    def with_active_only(self, value: bool) -> QueryUserEntitlements:
        self.active_only = value
        return self

    def with_offset(self, value: int) -> QueryUserEntitlements:
        self.offset = value
        return self

    def with_limit(self, value: int) -> QueryUserEntitlements:
        self.limit = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = str()
        if hasattr(self, "entitlement_clazz") and self.entitlement_clazz:
            result["entitlementClazz"] = str(self.entitlement_clazz)
        elif include_empty:
            result["entitlementClazz"] = str()
        if hasattr(self, "app_type") and self.app_type:
            result["appType"] = str(self.app_type)
        elif include_empty:
            result["appType"] = str()
        if hasattr(self, "entitlement_name") and self.entitlement_name:
            result["entitlementName"] = str(self.entitlement_name)
        elif include_empty:
            result["entitlementName"] = str()
        if hasattr(self, "item_id") and self.item_id:
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = str()
        if hasattr(self, "active_only") and self.active_only:
            result["activeOnly"] = bool(self.active_only)
        elif include_empty:
            result["activeOnly"] = bool()
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = int()
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = int()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, EntitlementPagingSlicedResult], Union[None, HttpResponse]]:
        """Parse the given response.

        200: OK - EntitlementPagingSlicedResult (successful operation)
        """
        if code == 200:
            return EntitlementPagingSlicedResult.create_from_dict(content), None
        was_handled, undocumented_response = HttpResponse.try_create_undocumented_response(code, content)
        if was_handled:
            return None, undocumented_response
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        user_id: str,
        entitlement_clazz: Optional[str] = None,
        app_type: Optional[str] = None,
        entitlement_name: Optional[str] = None,
        item_id: Optional[str] = None,
        active_only: Optional[bool] = None,
        offset: Optional[int] = None,
        limit: Optional[int] = None,
    ) -> QueryUserEntitlements:
        instance = cls()
        instance.namespace = namespace
        instance.user_id = user_id
        if entitlement_clazz is not None:
            instance.entitlement_clazz = entitlement_clazz
        if app_type is not None:
            instance.app_type = app_type
        if entitlement_name is not None:
            instance.entitlement_name = entitlement_name
        if item_id is not None:
            instance.item_id = item_id
        if active_only is not None:
            instance.active_only = active_only
        if offset is not None:
            instance.offset = offset
        if limit is not None:
            instance.limit = limit
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> QueryUserEntitlements:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = str()
        if "entitlementClazz" in dict_ and dict_["entitlementClazz"] is not None:
            instance.entitlement_clazz = str(dict_["entitlementClazz"])
        elif include_empty:
            instance.entitlement_clazz = str()
        if "appType" in dict_ and dict_["appType"] is not None:
            instance.app_type = str(dict_["appType"])
        elif include_empty:
            instance.app_type = str()
        if "entitlementName" in dict_ and dict_["entitlementName"] is not None:
            instance.entitlement_name = str(dict_["entitlementName"])
        elif include_empty:
            instance.entitlement_name = str()
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = str()
        if "activeOnly" in dict_ and dict_["activeOnly"] is not None:
            instance.active_only = bool(dict_["activeOnly"])
        elif include_empty:
            instance.active_only = bool()
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = int()
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = int()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "userId": "user_id",
            "entitlementClazz": "entitlement_clazz",
            "appType": "app_type",
            "entitlementName": "entitlement_name",
            "itemId": "item_id",
            "activeOnly": "active_only",
            "offset": "offset",
            "limit": "limit",
        }

    # endregion static methods
