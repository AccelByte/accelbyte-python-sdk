# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Seasonpass Service (1.18.0)

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


class UserPurchasable(Model):
    """A DTO object for user purchasable. (UserPurchasable)

    Properties:
        pass_item_id: (passItemId) OPTIONAL str

        tier_item_count: (tierItemCount) OPTIONAL int

        tier_item_id: (tierItemId) OPTIONAL str
    """

    # region fields

    pass_item_id: str  # OPTIONAL
    tier_item_count: int  # OPTIONAL
    tier_item_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_pass_item_id(self, value: str) -> UserPurchasable:
        self.pass_item_id = value
        return self

    def with_tier_item_count(self, value: int) -> UserPurchasable:
        self.tier_item_count = value
        return self

    def with_tier_item_id(self, value: str) -> UserPurchasable:
        self.tier_item_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "pass_item_id"):
            result["passItemId"] = str(self.pass_item_id)
        elif include_empty:
            result["passItemId"] = ""
        if hasattr(self, "tier_item_count"):
            result["tierItemCount"] = int(self.tier_item_count)
        elif include_empty:
            result["tierItemCount"] = 0
        if hasattr(self, "tier_item_id"):
            result["tierItemId"] = str(self.tier_item_id)
        elif include_empty:
            result["tierItemId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        pass_item_id: Optional[str] = None,
        tier_item_count: Optional[int] = None,
        tier_item_id: Optional[str] = None,
    ) -> UserPurchasable:
        instance = cls()
        if pass_item_id is not None:
            instance.pass_item_id = pass_item_id
        if tier_item_count is not None:
            instance.tier_item_count = tier_item_count
        if tier_item_id is not None:
            instance.tier_item_id = tier_item_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> UserPurchasable:
        instance = cls()
        if not dict_:
            return instance
        if "passItemId" in dict_ and dict_["passItemId"] is not None:
            instance.pass_item_id = str(dict_["passItemId"])
        elif include_empty:
            instance.pass_item_id = ""
        if "tierItemCount" in dict_ and dict_["tierItemCount"] is not None:
            instance.tier_item_count = int(dict_["tierItemCount"])
        elif include_empty:
            instance.tier_item_count = 0
        if "tierItemId" in dict_ and dict_["tierItemId"] is not None:
            instance.tier_item_id = str(dict_["tierItemId"])
        elif include_empty:
            instance.tier_item_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, UserPurchasable]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[UserPurchasable]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[UserPurchasable, List[UserPurchasable], Dict[Any, UserPurchasable]]:
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
            "passItemId": "pass_item_id",
            "tierItemCount": "tier_item_count",
            "tierItemId": "tier_item_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "passItemId": False,
            "tierItemCount": False,
            "tierItemId": False,
        }

    # endregion static methods
