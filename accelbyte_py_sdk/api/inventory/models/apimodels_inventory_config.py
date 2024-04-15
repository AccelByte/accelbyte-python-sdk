# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Inventory Service

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


class ApimodelsInventoryConfig(Model):
    """Apimodels inventory config (apimodels.InventoryConfig)

    Properties:
        slot_used: (slotUsed) OPTIONAL int
    """

    # region fields

    slot_used: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_slot_used(self, value: int) -> ApimodelsInventoryConfig:
        self.slot_used = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "slot_used"):
            result["slotUsed"] = int(self.slot_used)
        elif include_empty:
            result["slotUsed"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, slot_used: Optional[int] = None, **kwargs
    ) -> ApimodelsInventoryConfig:
        instance = cls()
        if slot_used is not None:
            instance.slot_used = slot_used
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsInventoryConfig:
        instance = cls()
        if not dict_:
            return instance
        if "slotUsed" in dict_ and dict_["slotUsed"] is not None:
            instance.slot_used = int(dict_["slotUsed"])
        elif include_empty:
            instance.slot_used = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsInventoryConfig]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsInventoryConfig]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsInventoryConfig,
        List[ApimodelsInventoryConfig],
        Dict[Any, ApimodelsInventoryConfig],
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
            "slotUsed": "slot_used",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "slotUsed": False,
        }

    # endregion static methods
