# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Group Service (2.15.1)

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


class ModelsGetGroupListRequestV2(Model):
    """Models get group list request V2 (models.GetGroupListRequestV2)

    Properties:
        group_i_ds: (groupIDs) REQUIRED List[str]
    """

    # region fields

    group_i_ds: List[str]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_group_i_ds(self, value: List[str]) -> ModelsGetGroupListRequestV2:
        self.group_i_ds = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "group_i_ds"):
            result["groupIDs"] = [str(i0) for i0 in self.group_i_ds]
        elif include_empty:
            result["groupIDs"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        group_i_ds: List[str],
    ) -> ModelsGetGroupListRequestV2:
        instance = cls()
        instance.group_i_ds = group_i_ds
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsGetGroupListRequestV2:
        instance = cls()
        if not dict_:
            return instance
        if "groupIDs" in dict_ and dict_["groupIDs"] is not None:
            instance.group_i_ds = [str(i0) for i0 in dict_["groupIDs"]]
        elif include_empty:
            instance.group_i_ds = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsGetGroupListRequestV2]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsGetGroupListRequestV2]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsGetGroupListRequestV2,
        List[ModelsGetGroupListRequestV2],
        Dict[Any, ModelsGetGroupListRequestV2],
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
            "groupIDs": "group_i_ds",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "groupIDs": True,
        }

    # endregion static methods