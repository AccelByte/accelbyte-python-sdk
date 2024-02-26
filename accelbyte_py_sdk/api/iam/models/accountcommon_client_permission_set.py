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

from ..models.accountcommon_permission_group import AccountcommonPermissionGroup


class AccountcommonClientPermissionSet(Model):
    """Accountcommon client permission set (accountcommon.ClientPermissionSet)

    Properties:
        doc_link: (docLink) REQUIRED str

        groups: (groups) REQUIRED List[AccountcommonPermissionGroup]

        module: (module) REQUIRED str

        module_id: (moduleId) REQUIRED str
    """

    # region fields

    doc_link: str  # REQUIRED
    groups: List[AccountcommonPermissionGroup]  # REQUIRED
    module: str  # REQUIRED
    module_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_doc_link(self, value: str) -> AccountcommonClientPermissionSet:
        self.doc_link = value
        return self

    def with_groups(
        self, value: List[AccountcommonPermissionGroup]
    ) -> AccountcommonClientPermissionSet:
        self.groups = value
        return self

    def with_module(self, value: str) -> AccountcommonClientPermissionSet:
        self.module = value
        return self

    def with_module_id(self, value: str) -> AccountcommonClientPermissionSet:
        self.module_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "doc_link"):
            result["docLink"] = str(self.doc_link)
        elif include_empty:
            result["docLink"] = ""
        if hasattr(self, "groups"):
            result["groups"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.groups
            ]
        elif include_empty:
            result["groups"] = []
        if hasattr(self, "module"):
            result["module"] = str(self.module)
        elif include_empty:
            result["module"] = ""
        if hasattr(self, "module_id"):
            result["moduleId"] = str(self.module_id)
        elif include_empty:
            result["moduleId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        doc_link: str,
        groups: List[AccountcommonPermissionGroup],
        module: str,
        module_id: str,
        **kwargs,
    ) -> AccountcommonClientPermissionSet:
        instance = cls()
        instance.doc_link = doc_link
        instance.groups = groups
        instance.module = module
        instance.module_id = module_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AccountcommonClientPermissionSet:
        instance = cls()
        if not dict_:
            return instance
        if "docLink" in dict_ and dict_["docLink"] is not None:
            instance.doc_link = str(dict_["docLink"])
        elif include_empty:
            instance.doc_link = ""
        if "groups" in dict_ and dict_["groups"] is not None:
            instance.groups = [
                AccountcommonPermissionGroup.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["groups"]
            ]
        elif include_empty:
            instance.groups = []
        if "module" in dict_ and dict_["module"] is not None:
            instance.module = str(dict_["module"])
        elif include_empty:
            instance.module = ""
        if "moduleId" in dict_ and dict_["moduleId"] is not None:
            instance.module_id = str(dict_["moduleId"])
        elif include_empty:
            instance.module_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, AccountcommonClientPermissionSet]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[AccountcommonClientPermissionSet]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        AccountcommonClientPermissionSet,
        List[AccountcommonClientPermissionSet],
        Dict[Any, AccountcommonClientPermissionSet],
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
            "docLink": "doc_link",
            "groups": "groups",
            "module": "module",
            "moduleId": "module_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "docLink": True,
            "groups": True,
            "module": True,
            "moduleId": True,
        }

    # endregion static methods
