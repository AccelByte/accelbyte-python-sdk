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


class CatalogDefinitionInfo(Model):
    """Catalog definition info (CatalogDefinitionInfo)

    Properties:
        field: (field) REQUIRED str

        name: (name) REQUIRED str

        required: (required) REQUIRED bool

        item_type: (itemType) OPTIONAL Union[str, ItemTypeEnum]
    """

    # region fields

    field: str  # REQUIRED
    name: str  # REQUIRED
    required: bool  # REQUIRED
    item_type: Union[str, ItemTypeEnum]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_field(self, value: str) -> CatalogDefinitionInfo:
        self.field = value
        return self

    def with_name(self, value: str) -> CatalogDefinitionInfo:
        self.name = value
        return self

    def with_required(self, value: bool) -> CatalogDefinitionInfo:
        self.required = value
        return self

    def with_item_type(self, value: Union[str, ItemTypeEnum]) -> CatalogDefinitionInfo:
        self.item_type = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "field"):
            result["field"] = str(self.field)
        elif include_empty:
            result["field"] = ""
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "required"):
            result["required"] = bool(self.required)
        elif include_empty:
            result["required"] = False
        if hasattr(self, "item_type"):
            result["itemType"] = str(self.item_type)
        elif include_empty:
            result["itemType"] = Union[str, ItemTypeEnum]()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        field: str,
        name: str,
        required: bool,
        item_type: Optional[Union[str, ItemTypeEnum]] = None,
        **kwargs,
    ) -> CatalogDefinitionInfo:
        instance = cls()
        instance.field = field
        instance.name = name
        instance.required = required
        if item_type is not None:
            instance.item_type = item_type
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> CatalogDefinitionInfo:
        instance = cls()
        if not dict_:
            return instance
        if "field" in dict_ and dict_["field"] is not None:
            instance.field = str(dict_["field"])
        elif include_empty:
            instance.field = ""
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "required" in dict_ and dict_["required"] is not None:
            instance.required = bool(dict_["required"])
        elif include_empty:
            instance.required = False
        if "itemType" in dict_ and dict_["itemType"] is not None:
            instance.item_type = str(dict_["itemType"])
        elif include_empty:
            instance.item_type = Union[str, ItemTypeEnum]()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, CatalogDefinitionInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[CatalogDefinitionInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        CatalogDefinitionInfo,
        List[CatalogDefinitionInfo],
        Dict[Any, CatalogDefinitionInfo],
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
            "field": "field",
            "name": "name",
            "required": "required",
            "itemType": "item_type",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "field": True,
            "name": True,
            "required": True,
            "itemType": False,
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
