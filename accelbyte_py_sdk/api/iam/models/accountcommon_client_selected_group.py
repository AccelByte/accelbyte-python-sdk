# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Iam Service

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


class AccountcommonClientSelectedGroup(Model):
    """Accountcommon client selected group (accountcommon.ClientSelectedGroup)

    Properties:
        group_id: (groupId) REQUIRED str

        selected_actions: (selectedActions) REQUIRED List[int]
    """

    # region fields

    group_id: str  # REQUIRED
    selected_actions: List[int]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_group_id(self, value: str) -> AccountcommonClientSelectedGroup:
        self.group_id = value
        return self

    def with_selected_actions(
        self, value: List[int]
    ) -> AccountcommonClientSelectedGroup:
        self.selected_actions = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "group_id"):
            result["groupId"] = str(self.group_id)
        elif include_empty:
            result["groupId"] = ""
        if hasattr(self, "selected_actions"):
            result["selectedActions"] = [int(i0) for i0 in self.selected_actions]
        elif include_empty:
            result["selectedActions"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, group_id: str, selected_actions: List[int], **kwargs
    ) -> AccountcommonClientSelectedGroup:
        instance = cls()
        instance.group_id = group_id
        instance.selected_actions = selected_actions
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AccountcommonClientSelectedGroup:
        instance = cls()
        if not dict_:
            return instance
        if "groupId" in dict_ and dict_["groupId"] is not None:
            instance.group_id = str(dict_["groupId"])
        elif include_empty:
            instance.group_id = ""
        if "selectedActions" in dict_ and dict_["selectedActions"] is not None:
            instance.selected_actions = [int(i0) for i0 in dict_["selectedActions"]]
        elif include_empty:
            instance.selected_actions = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, AccountcommonClientSelectedGroup]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[AccountcommonClientSelectedGroup]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        AccountcommonClientSelectedGroup,
        List[AccountcommonClientSelectedGroup],
        Dict[Any, AccountcommonClientSelectedGroup],
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
            "groupId": "group_id",
            "selectedActions": "selected_actions",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "groupId": True,
            "selectedActions": True,
        }

    # endregion static methods
