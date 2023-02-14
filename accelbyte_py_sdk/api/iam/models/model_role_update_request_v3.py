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


class ModelRoleUpdateRequestV3(Model):
    """Model role update request V3 (model.RoleUpdateRequestV3)

    Properties:
        is_wildcard: (isWildcard) REQUIRED bool

        role_name: (roleName) REQUIRED str

        deletable: (deletable) OPTIONAL bool
    """

    # region fields

    is_wildcard: bool  # REQUIRED
    role_name: str  # REQUIRED
    deletable: bool  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_is_wildcard(self, value: bool) -> ModelRoleUpdateRequestV3:
        self.is_wildcard = value
        return self

    def with_role_name(self, value: str) -> ModelRoleUpdateRequestV3:
        self.role_name = value
        return self

    def with_deletable(self, value: bool) -> ModelRoleUpdateRequestV3:
        self.deletable = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
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
        is_wildcard: bool,
        role_name: str,
        deletable: Optional[bool] = None,
    ) -> ModelRoleUpdateRequestV3:
        instance = cls()
        instance.is_wildcard = is_wildcard
        instance.role_name = role_name
        if deletable is not None:
            instance.deletable = deletable
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelRoleUpdateRequestV3:
        instance = cls()
        if not dict_:
            return instance
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
    ) -> Dict[str, ModelRoleUpdateRequestV3]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelRoleUpdateRequestV3]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelRoleUpdateRequestV3,
        List[ModelRoleUpdateRequestV3],
        Dict[Any, ModelRoleUpdateRequestV3],
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
            "isWildcard": "is_wildcard",
            "roleName": "role_name",
            "deletable": "deletable",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "isWildcard": True,
            "roleName": True,
            "deletable": False,
        }

    # endregion static methods
