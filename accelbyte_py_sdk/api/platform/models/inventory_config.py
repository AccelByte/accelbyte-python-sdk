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


class InventoryConfig(Model):
    """Inventory config (InventoryConfig)

    Properties:
        custom_attributes: (customAttributes) OPTIONAL Dict[str, Any]

        server_custom_attributes: (serverCustomAttributes) OPTIONAL Dict[str, Any]

        slot_used: (slotUsed) OPTIONAL int
    """

    # region fields

    custom_attributes: Dict[str, Any]  # OPTIONAL
    server_custom_attributes: Dict[str, Any]  # OPTIONAL
    slot_used: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_custom_attributes(self, value: Dict[str, Any]) -> InventoryConfig:
        self.custom_attributes = value
        return self

    def with_server_custom_attributes(self, value: Dict[str, Any]) -> InventoryConfig:
        self.server_custom_attributes = value
        return self

    def with_slot_used(self, value: int) -> InventoryConfig:
        self.slot_used = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "custom_attributes"):
            result["customAttributes"] = {
                str(k0): v0 for k0, v0 in self.custom_attributes.items()
            }
        elif include_empty:
            result["customAttributes"] = {}
        if hasattr(self, "server_custom_attributes"):
            result["serverCustomAttributes"] = {
                str(k0): v0 for k0, v0 in self.server_custom_attributes.items()
            }
        elif include_empty:
            result["serverCustomAttributes"] = {}
        if hasattr(self, "slot_used"):
            result["slotUsed"] = int(self.slot_used)
        elif include_empty:
            result["slotUsed"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        custom_attributes: Optional[Dict[str, Any]] = None,
        server_custom_attributes: Optional[Dict[str, Any]] = None,
        slot_used: Optional[int] = None,
        **kwargs,
    ) -> InventoryConfig:
        instance = cls()
        if custom_attributes is not None:
            instance.custom_attributes = custom_attributes
        if server_custom_attributes is not None:
            instance.server_custom_attributes = server_custom_attributes
        if slot_used is not None:
            instance.slot_used = slot_used
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> InventoryConfig:
        instance = cls()
        if not dict_:
            return instance
        if "customAttributes" in dict_ and dict_["customAttributes"] is not None:
            instance.custom_attributes = {
                str(k0): v0 for k0, v0 in dict_["customAttributes"].items()
            }
        elif include_empty:
            instance.custom_attributes = {}
        if (
            "serverCustomAttributes" in dict_
            and dict_["serverCustomAttributes"] is not None
        ):
            instance.server_custom_attributes = {
                str(k0): v0 for k0, v0 in dict_["serverCustomAttributes"].items()
            }
        elif include_empty:
            instance.server_custom_attributes = {}
        if "slotUsed" in dict_ and dict_["slotUsed"] is not None:
            instance.slot_used = int(dict_["slotUsed"])
        elif include_empty:
            instance.slot_used = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, InventoryConfig]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[InventoryConfig]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[InventoryConfig, List[InventoryConfig], Dict[Any, InventoryConfig]]:
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
            "customAttributes": "custom_attributes",
            "serverCustomAttributes": "server_custom_attributes",
            "slotUsed": "slot_used",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "customAttributes": False,
            "serverCustomAttributes": False,
            "slotUsed": False,
        }

    # endregion static methods
