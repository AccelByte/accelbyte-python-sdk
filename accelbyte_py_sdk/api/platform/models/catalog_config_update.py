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


class ItemDeletionCheckConfigEnum(StrEnum):
    CAMPAIGN = "CAMPAIGN"
    CATALOG = "CATALOG"
    DLC = "DLC"
    ENTITLEMENT = "ENTITLEMENT"
    IAP = "IAP"
    REWARD = "REWARD"


class CatalogConfigUpdate(Model):
    """Catalog config update (CatalogConfigUpdate)

    Properties:
        enable_inventory_check: (enableInventoryCheck) REQUIRED bool

        item_deletion_check_config: (itemDeletionCheckConfig) OPTIONAL List[Union[str, ItemDeletionCheckConfigEnum]]
    """

    # region fields

    enable_inventory_check: bool  # REQUIRED
    item_deletion_check_config: List[
        Union[str, ItemDeletionCheckConfigEnum]
    ]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_enable_inventory_check(self, value: bool) -> CatalogConfigUpdate:
        self.enable_inventory_check = value
        return self

    def with_item_deletion_check_config(
        self, value: List[Union[str, ItemDeletionCheckConfigEnum]]
    ) -> CatalogConfigUpdate:
        self.item_deletion_check_config = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "enable_inventory_check"):
            result["enableInventoryCheck"] = bool(self.enable_inventory_check)
        elif include_empty:
            result["enableInventoryCheck"] = False
        if hasattr(self, "item_deletion_check_config"):
            result["itemDeletionCheckConfig"] = [
                str(i0) for i0 in self.item_deletion_check_config
            ]
        elif include_empty:
            result["itemDeletionCheckConfig"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        enable_inventory_check: bool,
        item_deletion_check_config: Optional[
            List[Union[str, ItemDeletionCheckConfigEnum]]
        ] = None,
        **kwargs,
    ) -> CatalogConfigUpdate:
        instance = cls()
        instance.enable_inventory_check = enable_inventory_check
        if item_deletion_check_config is not None:
            instance.item_deletion_check_config = item_deletion_check_config
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> CatalogConfigUpdate:
        instance = cls()
        if not dict_:
            return instance
        if (
            "enableInventoryCheck" in dict_
            and dict_["enableInventoryCheck"] is not None
        ):
            instance.enable_inventory_check = bool(dict_["enableInventoryCheck"])
        elif include_empty:
            instance.enable_inventory_check = False
        if (
            "itemDeletionCheckConfig" in dict_
            and dict_["itemDeletionCheckConfig"] is not None
        ):
            instance.item_deletion_check_config = [
                str(i0) for i0 in dict_["itemDeletionCheckConfig"]
            ]
        elif include_empty:
            instance.item_deletion_check_config = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, CatalogConfigUpdate]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[CatalogConfigUpdate]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        CatalogConfigUpdate, List[CatalogConfigUpdate], Dict[Any, CatalogConfigUpdate]
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
            "enableInventoryCheck": "enable_inventory_check",
            "itemDeletionCheckConfig": "item_deletion_check_config",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "enableInventoryCheck": True,
            "itemDeletionCheckConfig": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "itemDeletionCheckConfig": [
                "CAMPAIGN",
                "CATALOG",
                "DLC",
                "ENTITLEMENT",
                "IAP",
                "REWARD",
            ],
        }

    # endregion static methods
