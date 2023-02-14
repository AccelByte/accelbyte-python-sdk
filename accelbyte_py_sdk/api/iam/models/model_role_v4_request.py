# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.27.2)

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


class ModelRoleV4Request(Model):
    """Model role V4 request (model.RoleV4Request)

    Properties:
        admin_role: (adminRole) REQUIRED bool

        is_wildcard: (isWildcard) REQUIRED bool

        role_name: (roleName) REQUIRED str

        deletable: (deletable) OPTIONAL bool
    """

    # region fields

    admin_role: bool  # REQUIRED
    is_wildcard: bool  # REQUIRED
    role_name: str  # REQUIRED
    deletable: bool  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_admin_role(self, value: bool) -> ModelRoleV4Request:
        self.admin_role = value
        return self

    def with_is_wildcard(self, value: bool) -> ModelRoleV4Request:
        self.is_wildcard = value
        return self

    def with_role_name(self, value: str) -> ModelRoleV4Request:
        self.role_name = value
        return self

    def with_deletable(self, value: bool) -> ModelRoleV4Request:
        self.deletable = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "admin_role"):
            result["adminRole"] = bool(self.admin_role)
        elif include_empty:
            result["adminRole"] = False
        if hasattr(self, "is_wildcard"):
            result["isWildcard"] = bool(self.is_wildcard)
        elif include_empty:
            result["isWildcard"] = False
        if hasattr(self, "role_name"):
            result["roleName"] = str(self.role_name)
        elif include_empty:
            result["roleName"] = ""
        if hasattr(self, "deletable"):
            result["deletable"] = bool(self.deletable)
        elif include_empty:
            result["deletable"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        admin_role: bool,
        is_wildcard: bool,
        role_name: str,
        deletable: Optional[bool] = None,
    ) -> ModelRoleV4Request:
        instance = cls()
        instance.admin_role = admin_role
        instance.is_wildcard = is_wildcard
        instance.role_name = role_name
        if deletable is not None:
            instance.deletable = deletable
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelRoleV4Request:
        instance = cls()
        if not dict_:
            return instance
        if "adminRole" in dict_ and dict_["adminRole"] is not None:
            instance.admin_role = bool(dict_["adminRole"])
        elif include_empty:
            instance.admin_role = False
        if "isWildcard" in dict_ and dict_["isWildcard"] is not None:
            instance.is_wildcard = bool(dict_["isWildcard"])
        elif include_empty:
            instance.is_wildcard = False
        if "roleName" in dict_ and dict_["roleName"] is not None:
            instance.role_name = str(dict_["roleName"])
        elif include_empty:
            instance.role_name = ""
        if "deletable" in dict_ and dict_["deletable"] is not None:
            instance.deletable = bool(dict_["deletable"])
        elif include_empty:
            instance.deletable = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelRoleV4Request]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelRoleV4Request]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelRoleV4Request, List[ModelRoleV4Request], Dict[Any, ModelRoleV4Request]
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
            "adminRole": "admin_role",
            "isWildcard": "is_wildcard",
            "roleName": "role_name",
            "deletable": "deletable",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "adminRole": True,
            "isWildcard": True,
            "roleName": True,
            "deletable": False,
        }

    # endregion static methods
