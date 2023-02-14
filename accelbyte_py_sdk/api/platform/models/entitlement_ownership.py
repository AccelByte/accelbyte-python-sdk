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


class EntitlementOwnership(Model):
    """Entitlement ownership (EntitlementOwnership)

    Properties:
        owned: (owned) REQUIRED bool

        item_id: (itemId) OPTIONAL str
    """

    # region fields

    owned: bool  # REQUIRED
    item_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_owned(self, value: bool) -> EntitlementOwnership:
        self.owned = value
        return self

    def with_item_id(self, value: str) -> EntitlementOwnership:
        self.item_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "owned"):
            result["owned"] = bool(self.owned)
        elif include_empty:
            result["owned"] = False
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        owned: bool,
        item_id: Optional[str] = None,
    ) -> EntitlementOwnership:
        instance = cls()
        instance.owned = owned
        if item_id is not None:
            instance.item_id = item_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> EntitlementOwnership:
        instance = cls()
        if not dict_:
            return instance
        if "owned" in dict_ and dict_["owned"] is not None:
            instance.owned = bool(dict_["owned"])
        elif include_empty:
            instance.owned = False
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, EntitlementOwnership]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[EntitlementOwnership]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        EntitlementOwnership,
        List[EntitlementOwnership],
        Dict[Any, EntitlementOwnership],
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
            "owned": "owned",
            "itemId": "item_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "owned": True,
            "itemId": False,
        }

    # endregion static methods
