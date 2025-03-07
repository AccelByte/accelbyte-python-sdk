# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

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

# AccelByte Gaming Services Platform Service

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse
from .....core import StrEnum

from ...models import ErrorEntity


class FeaturesToCheckEnum(StrEnum):
    CAMPAIGN = "CAMPAIGN"
    CATALOG = "CATALOG"
    DLC = "DLC"
    ENTITLEMENT = "ENTITLEMENT"
    IAP = "IAP"
    REWARD = "REWARD"


class DeleteItem(Operation):
    """Delete an item (deleteItem)

    This API is used to delete an item permanently.

    force: the default value should be: false. When the value is:
    * false: only the items in the draft store that have never been published yet can be removed.
    *  true: the item in the draft store(even been published before) can be removed.

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/{itemId}

        method: DELETE

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        item_id: (itemId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        features_to_check: (featuresToCheck) OPTIONAL List[Union[str, FeaturesToCheckEnum]] in query

        force: (force) OPTIONAL bool in query

        store_id: (storeId) OPTIONAL str in query

    Responses:
        204: No Content - (Delete item successfully)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}] | 30335: Item [{itemId}] can't be deleted in non-forced mode if item has been published)

        409: Conflict - ErrorEntity (30386: The item [{itemId}] is currently associated and cannot be deleted in namespace [{namespace}], Feature {featureName}, Module {moduleName}, and Reference ID {referenceId} are using this item ID)
    """

    # region fields

    _url: str = "/platform/admin/namespaces/{namespace}/items/{itemId}"
    _method: str = "DELETE"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    item_id: str  # REQUIRED in [path]
    namespace: str  # REQUIRED in [path]
    features_to_check: List[Union[str, FeaturesToCheckEnum]]  # OPTIONAL in [query]
    force: bool  # OPTIONAL in [query]
    store_id: str  # OPTIONAL in [query]

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
        if hasattr(self, "item_id"):
            result["itemId"] = self.item_id
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "features_to_check"):
            result["featuresToCheck"] = self.features_to_check
        if hasattr(self, "force"):
            result["force"] = self.force
        if hasattr(self, "store_id"):
            result["storeId"] = self.store_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_item_id(self, value: str) -> DeleteItem:
        self.item_id = value
        return self

    def with_namespace(self, value: str) -> DeleteItem:
        self.namespace = value
        return self

    def with_features_to_check(
        self, value: List[Union[str, FeaturesToCheckEnum]]
    ) -> DeleteItem:
        self.features_to_check = value
        return self

    def with_force(self, value: bool) -> DeleteItem:
        self.force = value
        return self

    def with_store_id(self, value: str) -> DeleteItem:
        self.store_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "item_id") and self.item_id:
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = ""
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "features_to_check") and self.features_to_check:
            result["featuresToCheck"] = [str(i0) for i0 in self.features_to_check]
        elif include_empty:
            result["featuresToCheck"] = []
        if hasattr(self, "force") and self.force:
            result["force"] = bool(self.force)
        elif include_empty:
            result["force"] = False
        if hasattr(self, "store_id") and self.store_id:
            result["storeId"] = str(self.store_id)
        elif include_empty:
            result["storeId"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[None, Union[None, ErrorEntity, HttpResponse]]:
        """Parse the given response.

        204: No Content - (Delete item successfully)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}] | 30335: Item [{itemId}] can't be deleted in non-forced mode if item has been published)

        409: Conflict - ErrorEntity (30386: The item [{itemId}] is currently associated and cannot be deleted in namespace [{namespace}], Feature {featureName}, Module {moduleName}, and Reference ID {referenceId} are using this item ID)

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

        if code == 204:
            return None, None
        if code == 404:
            return None, ErrorEntity.create_from_dict(content)
        if code == 409:
            return None, ErrorEntity.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        item_id: str,
        namespace: str,
        features_to_check: Optional[List[Union[str, FeaturesToCheckEnum]]] = None,
        force: Optional[bool] = None,
        store_id: Optional[str] = None,
        **kwargs,
    ) -> DeleteItem:
        instance = cls()
        instance.item_id = item_id
        instance.namespace = namespace
        if features_to_check is not None:
            instance.features_to_check = features_to_check
        if force is not None:
            instance.force = force
        if store_id is not None:
            instance.store_id = store_id
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> DeleteItem:
        instance = cls()
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "featuresToCheck" in dict_ and dict_["featuresToCheck"] is not None:
            instance.features_to_check = [str(i0) for i0 in dict_["featuresToCheck"]]
        elif include_empty:
            instance.features_to_check = []
        if "force" in dict_ and dict_["force"] is not None:
            instance.force = bool(dict_["force"])
        elif include_empty:
            instance.force = False
        if "storeId" in dict_ and dict_["storeId"] is not None:
            instance.store_id = str(dict_["storeId"])
        elif include_empty:
            instance.store_id = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "itemId": "item_id",
            "namespace": "namespace",
            "featuresToCheck": "features_to_check",
            "force": "force",
            "storeId": "store_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "itemId": True,
            "namespace": True,
            "featuresToCheck": False,
            "force": False,
            "storeId": False,
        }

    @staticmethod
    def get_collection_format_map() -> Dict[str, Union[None, str]]:
        return {
            "featuresToCheck": "multi",  # in query
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "featuresToCheck": [
                "CAMPAIGN",
                "CATALOG",
                "DLC",
                "ENTITLEMENT",
                "IAP",
                "REWARD",
            ],  # in query
        }

    # endregion static methods
