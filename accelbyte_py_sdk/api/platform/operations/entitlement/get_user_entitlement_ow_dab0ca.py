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

from ...models import TimedOwnership


class EntitlementClazzEnum(StrEnum):
    APP = "APP"
    CODE = "CODE"
    ENTITLEMENT = "ENTITLEMENT"
    LOOTBOX = "LOOTBOX"
    MEDIA = "MEDIA"
    OPTIONBOX = "OPTIONBOX"
    SUBSCRIPTION = "SUBSCRIPTION"


class GetUserEntitlementOwnershipBySku(Operation):
    """Get user entitlement ownership by sku (getUserEntitlementOwnershipBySku)

    Get user entitlement ownership by sku.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT", action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ENTITLEMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/ownership/bySku

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        entitlement_clazz: (entitlementClazz) OPTIONAL Union[str, EntitlementClazzEnum] in query

        sku: (sku) REQUIRED str in query

    Responses:
        200: OK - TimedOwnership (successful operation)
    """

    # region fields

    _url: str = "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/ownership/bySku"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    user_id: str  # REQUIRED in [path]
    entitlement_clazz: Union[str, EntitlementClazzEnum]  # OPTIONAL in [query]
    sku: str  # REQUIRED in [query]

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
        if hasattr(self, "entitlement_clazz"):
            result["entitlementClazz"] = self.entitlement_clazz
        if hasattr(self, "sku"):
            result["sku"] = self.sku
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> GetUserEntitlementOwnershipBySku:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> GetUserEntitlementOwnershipBySku:
        self.user_id = value
        return self

    def with_entitlement_clazz(
        self, value: Union[str, EntitlementClazzEnum]
    ) -> GetUserEntitlementOwnershipBySku:
        self.entitlement_clazz = value
        return self

    def with_sku(self, value: str) -> GetUserEntitlementOwnershipBySku:
        self.sku = value
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
        if hasattr(self, "entitlement_clazz") and self.entitlement_clazz:
            result["entitlementClazz"] = str(self.entitlement_clazz)
        elif include_empty:
            result["entitlementClazz"] = Union[str, EntitlementClazzEnum]()
        if hasattr(self, "sku") and self.sku:
            result["sku"] = str(self.sku)
        elif include_empty:
            result["sku"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[Union[None, TimedOwnership], Union[None, HttpResponse]]:
        """Parse the given response.

        200: OK - TimedOwnership (successful operation)

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
            return TimedOwnership.create_from_dict(content), None

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
        sku: str,
        entitlement_clazz: Optional[Union[str, EntitlementClazzEnum]] = None,
    ) -> GetUserEntitlementOwnershipBySku:
        instance = cls()
        instance.namespace = namespace
        instance.user_id = user_id
        instance.sku = sku
        if entitlement_clazz is not None:
            instance.entitlement_clazz = entitlement_clazz
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> GetUserEntitlementOwnershipBySku:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "entitlementClazz" in dict_ and dict_["entitlementClazz"] is not None:
            instance.entitlement_clazz = str(dict_["entitlementClazz"])
        elif include_empty:
            instance.entitlement_clazz = Union[str, EntitlementClazzEnum]()
        if "sku" in dict_ and dict_["sku"] is not None:
            instance.sku = str(dict_["sku"])
        elif include_empty:
            instance.sku = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "userId": "user_id",
            "entitlementClazz": "entitlement_clazz",
            "sku": "sku",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "userId": True,
            "entitlementClazz": False,
            "sku": True,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "entitlementClazz": [
                "APP",
                "CODE",
                "ENTITLEMENT",
                "LOOTBOX",
                "MEDIA",
                "OPTIONBOX",
                "SUBSCRIPTION",
            ],  # in query
        }

    # endregion static methods
