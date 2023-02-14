# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.23.0)

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

from ....core import Model
from ....core import StrEnum


class ItemTypeEnum(StrEnum):
    APP = "APP"
    BUNDLE = "BUNDLE"
    CODE = "CODE"
    COINS = "COINS"
    EXTENSION = "EXTENSION"
    INGAMEITEM = "INGAMEITEM"
    LOOTBOX = "LOOTBOX"
    MEDIA = "MEDIA"
    OPTIONBOX = "OPTIONBOX"
    SEASON = "SEASON"
    SUBSCRIPTION = "SUBSCRIPTION"


class ExtensionFulfillmentSummary(Model):
    """Extension fulfillment summary (ExtensionFulfillmentSummary)

    Properties:
        quantity: (quantity) REQUIRED int

        granted_at: (grantedAt) OPTIONAL str

        item_clazz: (itemClazz) OPTIONAL str

        item_ext: (itemExt) OPTIONAL Dict[str, Any]

        item_id: (itemId) OPTIONAL str

        item_type: (itemType) OPTIONAL Union[str, ItemTypeEnum]

        metadata: (metadata) OPTIONAL Dict[str, Any]

        namespace: (namespace) OPTIONAL str

        user_id: (userId) OPTIONAL str
    """

    # region fields

    quantity: int  # REQUIRED
    granted_at: str  # OPTIONAL
    item_clazz: str  # OPTIONAL
    item_ext: Dict[str, Any]  # OPTIONAL
    item_id: str  # OPTIONAL
    item_type: Union[str, ItemTypeEnum]  # OPTIONAL
    metadata: Dict[str, Any]  # OPTIONAL
    namespace: str  # OPTIONAL
    user_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_quantity(self, value: int) -> ExtensionFulfillmentSummary:
        self.quantity = value
        return self

    def with_granted_at(self, value: str) -> ExtensionFulfillmentSummary:
        self.granted_at = value
        return self

    def with_item_clazz(self, value: str) -> ExtensionFulfillmentSummary:
        self.item_clazz = value
        return self

    def with_item_ext(self, value: Dict[str, Any]) -> ExtensionFulfillmentSummary:
        self.item_ext = value
        return self

    def with_item_id(self, value: str) -> ExtensionFulfillmentSummary:
        self.item_id = value
        return self

    def with_item_type(
        self, value: Union[str, ItemTypeEnum]
    ) -> ExtensionFulfillmentSummary:
        self.item_type = value
        return self

    def with_metadata(self, value: Dict[str, Any]) -> ExtensionFulfillmentSummary:
        self.metadata = value
        return self

    def with_namespace(self, value: str) -> ExtensionFulfillmentSummary:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> ExtensionFulfillmentSummary:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "quantity"):
            result["quantity"] = int(self.quantity)
        elif include_empty:
            result["quantity"] = 0
        if hasattr(self, "granted_at"):
            result["grantedAt"] = str(self.granted_at)
        elif include_empty:
            result["grantedAt"] = ""
        if hasattr(self, "item_clazz"):
            result["itemClazz"] = str(self.item_clazz)
        elif include_empty:
            result["itemClazz"] = ""
        if hasattr(self, "item_ext"):
            result["itemExt"] = {str(k0): v0 for k0, v0 in self.item_ext.items()}
        elif include_empty:
            result["itemExt"] = {}
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = ""
        if hasattr(self, "item_type"):
            result["itemType"] = str(self.item_type)
        elif include_empty:
            result["itemType"] = Union[str, ItemTypeEnum]()
        if hasattr(self, "metadata"):
            result["metadata"] = {str(k0): v0 for k0, v0 in self.metadata.items()}
        elif include_empty:
            result["metadata"] = {}
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        quantity: int,
        granted_at: Optional[str] = None,
        item_clazz: Optional[str] = None,
        item_ext: Optional[Dict[str, Any]] = None,
        item_id: Optional[str] = None,
        item_type: Optional[Union[str, ItemTypeEnum]] = None,
        metadata: Optional[Dict[str, Any]] = None,
        namespace: Optional[str] = None,
        user_id: Optional[str] = None,
    ) -> ExtensionFulfillmentSummary:
        instance = cls()
        instance.quantity = quantity
        if granted_at is not None:
            instance.granted_at = granted_at
        if item_clazz is not None:
            instance.item_clazz = item_clazz
        if item_ext is not None:
            instance.item_ext = item_ext
        if item_id is not None:
            instance.item_id = item_id
        if item_type is not None:
            instance.item_type = item_type
        if metadata is not None:
            instance.metadata = metadata
        if namespace is not None:
            instance.namespace = namespace
        if user_id is not None:
            instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ExtensionFulfillmentSummary:
        instance = cls()
        if not dict_:
            return instance
        if "quantity" in dict_ and dict_["quantity"] is not None:
            instance.quantity = int(dict_["quantity"])
        elif include_empty:
            instance.quantity = 0
        if "grantedAt" in dict_ and dict_["grantedAt"] is not None:
            instance.granted_at = str(dict_["grantedAt"])
        elif include_empty:
            instance.granted_at = ""
        if "itemClazz" in dict_ and dict_["itemClazz"] is not None:
            instance.item_clazz = str(dict_["itemClazz"])
        elif include_empty:
            instance.item_clazz = ""
        if "itemExt" in dict_ and dict_["itemExt"] is not None:
            instance.item_ext = {str(k0): v0 for k0, v0 in dict_["itemExt"].items()}
        elif include_empty:
            instance.item_ext = {}
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = ""
        if "itemType" in dict_ and dict_["itemType"] is not None:
            instance.item_type = str(dict_["itemType"])
        elif include_empty:
            instance.item_type = Union[str, ItemTypeEnum]()
        if "metadata" in dict_ and dict_["metadata"] is not None:
            instance.metadata = {str(k0): v0 for k0, v0 in dict_["metadata"].items()}
        elif include_empty:
            instance.metadata = {}
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ExtensionFulfillmentSummary]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ExtensionFulfillmentSummary]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ExtensionFulfillmentSummary,
        List[ExtensionFulfillmentSummary],
        Dict[Any, ExtensionFulfillmentSummary],
    ]:
        if many:
            if isinstance(any_, dict):
                return cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                return cls.create_many_from_list(any_, include_empty=include_empty)
            else:
                raise ValueError()
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "quantity": "quantity",
            "grantedAt": "granted_at",
            "itemClazz": "item_clazz",
            "itemExt": "item_ext",
            "itemId": "item_id",
            "itemType": "item_type",
            "metadata": "metadata",
            "namespace": "namespace",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "quantity": True,
            "grantedAt": False,
            "itemClazz": False,
            "itemExt": False,
            "itemId": False,
            "itemType": False,
            "metadata": False,
            "namespace": False,
            "userId": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "itemType": [
                "APP",
                "BUNDLE",
                "CODE",
                "COINS",
                "EXTENSION",
                "INGAMEITEM",
                "LOOTBOX",
                "MEDIA",
                "OPTIONBOX",
                "SEASON",
                "SUBSCRIPTION",
            ],
        }

    # endregion static methods
