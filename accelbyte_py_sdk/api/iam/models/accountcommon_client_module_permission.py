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

from ..models.accountcommon_client_selected_group import (
    AccountcommonClientSelectedGroup,
)


class AccountcommonClientModulePermission(Model):
    """Accountcommon client module permission (accountcommon.ClientModulePermission)

    Properties:
        module_id: (moduleId) REQUIRED str

        selected_groups: (selectedGroups) REQUIRED List[AccountcommonClientSelectedGroup]
    """

    # region fields

    module_id: str  # REQUIRED
    selected_groups: List[AccountcommonClientSelectedGroup]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_module_id(self, value: str) -> AccountcommonClientModulePermission:
        self.module_id = value
        return self

    def with_selected_groups(
        self, value: List[AccountcommonClientSelectedGroup]
    ) -> AccountcommonClientModulePermission:
        self.selected_groups = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "module_id"):
            result["moduleId"] = str(self.module_id)
        elif include_empty:
            result["moduleId"] = ""
        if hasattr(self, "selected_groups"):
            result["selectedGroups"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.selected_groups
            ]
        elif include_empty:
            result["selectedGroups"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        module_id: str,
        selected_groups: List[AccountcommonClientSelectedGroup],
        **kwargs,
    ) -> AccountcommonClientModulePermission:
        instance = cls()
        instance.module_id = module_id
        instance.selected_groups = selected_groups
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AccountcommonClientModulePermission:
        instance = cls()
        if not dict_:
            return instance
        if "moduleId" in dict_ and dict_["moduleId"] is not None:
            instance.module_id = str(dict_["moduleId"])
        elif include_empty:
            instance.module_id = ""
        if "selectedGroups" in dict_ and dict_["selectedGroups"] is not None:
            instance.selected_groups = [
                AccountcommonClientSelectedGroup.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["selectedGroups"]
            ]
        elif include_empty:
            instance.selected_groups = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, AccountcommonClientModulePermission]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[AccountcommonClientModulePermission]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        AccountcommonClientModulePermission,
        List[AccountcommonClientModulePermission],
        Dict[Any, AccountcommonClientModulePermission],
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
            "moduleId": "module_id",
            "selectedGroups": "selected_groups",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "moduleId": True,
            "selectedGroups": True,
        }

    # endregion static methods
