# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Platform Service

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

from ..models.region_data_item import RegionDataItem


class ItemIdentityTypeEnum(StrEnum):
    ITEM_ID = "ITEM_ID"
    ITEM_SKU = "ITEM_SKU"


class RegionDataChange(Model):
    """Region data change (RegionDataChange)

    Properties:
        item_identity_type: (itemIdentityType) REQUIRED Union[str, ItemIdentityTypeEnum]

        item_identities: (itemIdentities) OPTIONAL List[str]

        region_data: (regionData) OPTIONAL Dict[str, List[RegionDataItem]]
    """

    # region fields

    item_identity_type: Union[str, ItemIdentityTypeEnum]  # REQUIRED
    item_identities: List[str]  # OPTIONAL
    region_data: Dict[str, List[RegionDataItem]]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_item_identity_type(
        self, value: Union[str, ItemIdentityTypeEnum]
    ) -> RegionDataChange:
        self.item_identity_type = value
        return self

    def with_item_identities(self, value: List[str]) -> RegionDataChange:
        self.item_identities = value
        return self

    def with_region_data(
        self, value: Dict[str, List[RegionDataItem]]
    ) -> RegionDataChange:
        self.region_data = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "item_identity_type"):
            result["itemIdentityType"] = str(self.item_identity_type)
        elif include_empty:
            result["itemIdentityType"] = Union[str, ItemIdentityTypeEnum]()
        if hasattr(self, "item_identities"):
            result["itemIdentities"] = [str(i0) for i0 in self.item_identities]
        elif include_empty:
            result["itemIdentities"] = []
        if hasattr(self, "region_data"):
            result["regionData"] = {
                str(k0): [i1.to_dict(include_empty=include_empty) for i1 in v0]
                for k0, v0 in self.region_data.items()
            }
        elif include_empty:
            result["regionData"] = {}
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        item_identity_type: Union[str, ItemIdentityTypeEnum],
        item_identities: Optional[List[str]] = None,
        region_data: Optional[Dict[str, List[RegionDataItem]]] = None,
        **kwargs,
    ) -> RegionDataChange:
        instance = cls()
        instance.item_identity_type = item_identity_type
        if item_identities is not None:
            instance.item_identities = item_identities
        if region_data is not None:
            instance.region_data = region_data
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RegionDataChange:
        instance = cls()
        if not dict_:
            return instance
        if "itemIdentityType" in dict_ and dict_["itemIdentityType"] is not None:
            instance.item_identity_type = str(dict_["itemIdentityType"])
        elif include_empty:
            instance.item_identity_type = Union[str, ItemIdentityTypeEnum]()
        if "itemIdentities" in dict_ and dict_["itemIdentities"] is not None:
            instance.item_identities = [str(i0) for i0 in dict_["itemIdentities"]]
        elif include_empty:
            instance.item_identities = []
        if "regionData" in dict_ and dict_["regionData"] is not None:
            instance.region_data = {
                str(k0): [
                    RegionDataItem.create_from_dict(i1, include_empty=include_empty)
                    for i1 in v0
                ]
                for k0, v0 in dict_["regionData"].items()
            }
        elif include_empty:
            instance.region_data = {}
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RegionDataChange]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RegionDataChange]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[RegionDataChange, List[RegionDataChange], Dict[Any, RegionDataChange]]:
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
            "itemIdentityType": "item_identity_type",
            "itemIdentities": "item_identities",
            "regionData": "region_data",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "itemIdentityType": True,
            "itemIdentities": False,
            "regionData": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "itemIdentityType": ["ITEM_ID", "ITEM_SKU"],
        }

    # endregion static methods
