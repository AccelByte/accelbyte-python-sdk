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


class ItemIdentityTypeEnum(StrEnum):
    ITEM_ID = "ITEM_ID"
    ITEM_SKU = "ITEM_SKU"


class IAPItemEntry(Model):
    """IAP item entry (IAPItemEntry)

    Properties:
        item_identity: (itemIdentity) OPTIONAL str

        item_identity_type: (itemIdentityType) OPTIONAL Union[str, ItemIdentityTypeEnum]

        platform_product_id_map: (platformProductIdMap) OPTIONAL Dict[str, str]
    """

    # region fields

    item_identity: str  # OPTIONAL
    item_identity_type: Union[str, ItemIdentityTypeEnum]  # OPTIONAL
    platform_product_id_map: Dict[str, str]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_item_identity(self, value: str) -> IAPItemEntry:
        self.item_identity = value
        return self

    def with_item_identity_type(
        self, value: Union[str, ItemIdentityTypeEnum]
    ) -> IAPItemEntry:
        self.item_identity_type = value
        return self

    def with_platform_product_id_map(self, value: Dict[str, str]) -> IAPItemEntry:
        self.platform_product_id_map = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "item_identity"):
            result["itemIdentity"] = str(self.item_identity)
        elif include_empty:
            result["itemIdentity"] = ""
        if hasattr(self, "item_identity_type"):
            result["itemIdentityType"] = str(self.item_identity_type)
        elif include_empty:
            result["itemIdentityType"] = Union[str, ItemIdentityTypeEnum]()
        if hasattr(self, "platform_product_id_map"):
            result["platformProductIdMap"] = {
                str(k0): str(v0) for k0, v0 in self.platform_product_id_map.items()
            }
        elif include_empty:
            result["platformProductIdMap"] = {}
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        item_identity: Optional[str] = None,
        item_identity_type: Optional[Union[str, ItemIdentityTypeEnum]] = None,
        platform_product_id_map: Optional[Dict[str, str]] = None,
    ) -> IAPItemEntry:
        instance = cls()
        if item_identity is not None:
            instance.item_identity = item_identity
        if item_identity_type is not None:
            instance.item_identity_type = item_identity_type
        if platform_product_id_map is not None:
            instance.platform_product_id_map = platform_product_id_map
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> IAPItemEntry:
        instance = cls()
        if not dict_:
            return instance
        if "itemIdentity" in dict_ and dict_["itemIdentity"] is not None:
            instance.item_identity = str(dict_["itemIdentity"])
        elif include_empty:
            instance.item_identity = ""
        if "itemIdentityType" in dict_ and dict_["itemIdentityType"] is not None:
            instance.item_identity_type = str(dict_["itemIdentityType"])
        elif include_empty:
            instance.item_identity_type = Union[str, ItemIdentityTypeEnum]()
        if (
            "platformProductIdMap" in dict_
            and dict_["platformProductIdMap"] is not None
        ):
            instance.platform_product_id_map = {
                str(k0): str(v0) for k0, v0 in dict_["platformProductIdMap"].items()
            }
        elif include_empty:
            instance.platform_product_id_map = {}
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, IAPItemEntry]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[IAPItemEntry]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[IAPItemEntry, List[IAPItemEntry], Dict[Any, IAPItemEntry]]:
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
            "itemIdentity": "item_identity",
            "itemIdentityType": "item_identity_type",
            "platformProductIdMap": "platform_product_id_map",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "itemIdentity": False,
            "itemIdentityType": False,
            "platformProductIdMap": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "itemIdentityType": ["ITEM_ID", "ITEM_SKU"],
        }

    # endregion static methods
