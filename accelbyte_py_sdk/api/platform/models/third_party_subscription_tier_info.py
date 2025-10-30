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


class ThirdPartySubscriptionTierInfo(Model):
    """Third party subscription tier info (ThirdPartySubscriptionTierInfo)

    Properties:
        group_sku: (groupSku) OPTIONAL str

        sku: (sku) OPTIONAL str
    """

    # region fields

    group_sku: str  # OPTIONAL
    sku: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_group_sku(self, value: str) -> ThirdPartySubscriptionTierInfo:
        self.group_sku = value
        return self

    def with_sku(self, value: str) -> ThirdPartySubscriptionTierInfo:
        self.sku = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "group_sku"):
            result["groupSku"] = str(self.group_sku)
        elif include_empty:
            result["groupSku"] = ""
        if hasattr(self, "sku"):
            result["sku"] = str(self.sku)
        elif include_empty:
            result["sku"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, group_sku: Optional[str] = None, sku: Optional[str] = None, **kwargs
    ) -> ThirdPartySubscriptionTierInfo:
        instance = cls()
        if group_sku is not None:
            instance.group_sku = group_sku
        if sku is not None:
            instance.sku = sku
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ThirdPartySubscriptionTierInfo:
        instance = cls()
        if not dict_:
            return instance
        if "groupSku" in dict_ and dict_["groupSku"] is not None:
            instance.group_sku = str(dict_["groupSku"])
        elif include_empty:
            instance.group_sku = ""
        if "sku" in dict_ and dict_["sku"] is not None:
            instance.sku = str(dict_["sku"])
        elif include_empty:
            instance.sku = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ThirdPartySubscriptionTierInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ThirdPartySubscriptionTierInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ThirdPartySubscriptionTierInfo,
        List[ThirdPartySubscriptionTierInfo],
        Dict[Any, ThirdPartySubscriptionTierInfo],
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
            "groupSku": "group_sku",
            "sku": "sku",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "groupSku": False,
            "sku": False,
        }

    # endregion static methods
