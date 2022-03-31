# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

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

# justice-platform-service (4.5.1)

from __future__ import annotations
import re
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HttpResponse

from ...models import TimedOwnership


class PublicGetMyEntitlementOwnershipByItemId(Operation):
    """Get my entitlement ownership by itemId (publicGetMyEntitlementOwnershipByItemId)

    Get my entitlement ownership by itemId.

    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:ENTITLEMENT", action=2 (READ)
      *  Path's namespace :
        * can be filled with publisher namespace in order to get publisher namespace entitlement ownership by sku
        * can be filled with game namespace in order to get game namespace entitlement ownership by sku

    Required Permission(s):
        - NAMESPACE:{namespace}:ENTITLEMENT [READ]

    Properties:
        url: /platform/public/namespaces/{namespace}/users/me/entitlements/ownership/byItemId

        method: GET

        tags: ["Entitlement"]

        consumes: []

        produces: ["application/json"]

        security_type: bearer

        namespace: (namespace) REQUIRED str in path

        entitlement_clazz: (entitlementClazz) OPTIONAL str in query

        item_id: (itemId) REQUIRED str in query

    Responses:
        200: OK - TimedOwnership (successful operation)
    """

    # region fields

    _url: str = "/platform/public/namespaces/{namespace}/users/me/entitlements/ownership/byItemId"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _security_type: Optional[str] = "bearer"
    _location_query: str = None

    namespace: str                                                                                 # REQUIRED in [path]
    entitlement_clazz: str                                                                         # OPTIONAL in [query]
    item_id: str                                                                                   # REQUIRED in [query]

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
    def security_type(self) -> Optional[str]:
        return self._security_type

    @property
    def location_query(self) -> str:
        return self._location_query

    # endregion properties

    # region get methods

    def get_full_url(self, base_url: Union[None, str] = None, collection_format_map: Optional[Dict[str, Optional[str]]] = None) -> str:
        return self.create_full_url(
            url=self.url,
            base_url=base_url,
            path_params=self.get_path_params(),
            query_params=self.get_query_params(),
        )

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "namespace",
            "item_id",
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
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "entitlement_clazz"):
            result["entitlementClazz"] = self.entitlement_clazz
        if hasattr(self, "item_id"):
            result["itemId"] = self.item_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        # required checks
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        if not hasattr(self, "item_id") or self.item_id is None:
            return False
        # enum checks
        if hasattr(self, "entitlement_clazz") and self.entitlement_clazz is not None and self.entitlement_clazz not in PublicGetMyEntitlementOwnershipByItemId.get_enum_map()["entitlementClazz"]:
            return False
        # pattern checks
        return True

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> PublicGetMyEntitlementOwnershipByItemId:
        self.namespace = value
        return self

    def with_entitlement_clazz(self, value: str) -> PublicGetMyEntitlementOwnershipByItemId:
        self.entitlement_clazz = value
        return self

    def with_item_id(self, value: str) -> PublicGetMyEntitlementOwnershipByItemId:
        self.item_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "entitlement_clazz") and self.entitlement_clazz:
            result["entitlementClazz"] = str(self.entitlement_clazz)
        elif include_empty:
            result["entitlementClazz"] = str()
        if hasattr(self, "item_id") and self.item_id:
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, TimedOwnership], Union[None, HttpResponse]]:
        """Parse the given response.

        200: OK - TimedOwnership (successful operation)

        ---: HttpResponse (Undocumented Response)

        ---: HttpResponse (Unexpected Content-Type Error)

        ---: HttpResponse (Unhandled Error)
        """
        pre_processed_response, error = self.pre_process_response(code=code, content_type=content_type, content=content)
        if error is not None:
            return None, None if error.is_no_content() else error
        code, content_type, content = pre_processed_response

        if code == 200:
            return TimedOwnership.create_from_dict(content), None

        return None, self.handle_undocumented_response(code=code, content_type=content_type, content=content)

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        item_id: str,
        entitlement_clazz: Optional[str] = None,
    ) -> PublicGetMyEntitlementOwnershipByItemId:
        instance = cls()
        instance.namespace = namespace
        instance.item_id = item_id
        if entitlement_clazz is not None:
            instance.entitlement_clazz = entitlement_clazz
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PublicGetMyEntitlementOwnershipByItemId:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "entitlementClazz" in dict_ and dict_["entitlementClazz"] is not None:
            instance.entitlement_clazz = str(dict_["entitlementClazz"])
        elif include_empty:
            instance.entitlement_clazz = str()
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "entitlementClazz": "entitlement_clazz",
            "itemId": "item_id",
        }

    @staticmethod
    def get_enum_map() -> Dict[str, Union[None, List[Any]]]:
        return {
            "entitlementClazz": ["APP", "CODE", "ENTITLEMENT", "MEDIA", "SUBSCRIPTION"],           # in query
        }

    # endregion static methods
