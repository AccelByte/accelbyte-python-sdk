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

from ..models.accountcommon_override_role_permission import (
    AccountcommonOverrideRolePermission,
)
from ..models.accountcommon_replace_role_permission import (
    AccountcommonReplaceRolePermission,
)


class ModelRoleOverrideUpdateRequest(Model):
    """Model role override update request (model.RoleOverrideUpdateRequest)

    Properties:
        additions: (additions) REQUIRED List[AccountcommonOverrideRolePermission]

        exclusions: (exclusions) REQUIRED List[AccountcommonOverrideRolePermission]

        overrides: (overrides) REQUIRED List[AccountcommonOverrideRolePermission]

        replacements: (replacements) REQUIRED List[AccountcommonReplaceRolePermission]
    """

    # region fields

    additions: List[AccountcommonOverrideRolePermission]  # REQUIRED
    exclusions: List[AccountcommonOverrideRolePermission]  # REQUIRED
    overrides: List[AccountcommonOverrideRolePermission]  # REQUIRED
    replacements: List[AccountcommonReplaceRolePermission]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_additions(
        self, value: List[AccountcommonOverrideRolePermission]
    ) -> ModelRoleOverrideUpdateRequest:
        self.additions = value
        return self

    def with_exclusions(
        self, value: List[AccountcommonOverrideRolePermission]
    ) -> ModelRoleOverrideUpdateRequest:
        self.exclusions = value
        return self

    def with_overrides(
        self, value: List[AccountcommonOverrideRolePermission]
    ) -> ModelRoleOverrideUpdateRequest:
        self.overrides = value
        return self

    def with_replacements(
        self, value: List[AccountcommonReplaceRolePermission]
    ) -> ModelRoleOverrideUpdateRequest:
        self.replacements = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "additions"):
            result["additions"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.additions
            ]
        elif include_empty:
            result["additions"] = []
        if hasattr(self, "exclusions"):
            result["exclusions"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.exclusions
            ]
        elif include_empty:
            result["exclusions"] = []
        if hasattr(self, "overrides"):
            result["overrides"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.overrides
            ]
        elif include_empty:
            result["overrides"] = []
        if hasattr(self, "replacements"):
            result["replacements"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.replacements
            ]
        elif include_empty:
            result["replacements"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        additions: List[AccountcommonOverrideRolePermission],
        exclusions: List[AccountcommonOverrideRolePermission],
        overrides: List[AccountcommonOverrideRolePermission],
        replacements: List[AccountcommonReplaceRolePermission],
        **kwargs,
    ) -> ModelRoleOverrideUpdateRequest:
        instance = cls()
        instance.additions = additions
        instance.exclusions = exclusions
        instance.overrides = overrides
        instance.replacements = replacements
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelRoleOverrideUpdateRequest:
        instance = cls()
        if not dict_:
            return instance
        if "additions" in dict_ and dict_["additions"] is not None:
            instance.additions = [
                AccountcommonOverrideRolePermission.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["additions"]
            ]
        elif include_empty:
            instance.additions = []
        if "exclusions" in dict_ and dict_["exclusions"] is not None:
            instance.exclusions = [
                AccountcommonOverrideRolePermission.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["exclusions"]
            ]
        elif include_empty:
            instance.exclusions = []
        if "overrides" in dict_ and dict_["overrides"] is not None:
            instance.overrides = [
                AccountcommonOverrideRolePermission.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["overrides"]
            ]
        elif include_empty:
            instance.overrides = []
        if "replacements" in dict_ and dict_["replacements"] is not None:
            instance.replacements = [
                AccountcommonReplaceRolePermission.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["replacements"]
            ]
        elif include_empty:
            instance.replacements = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelRoleOverrideUpdateRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelRoleOverrideUpdateRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelRoleOverrideUpdateRequest,
        List[ModelRoleOverrideUpdateRequest],
        Dict[Any, ModelRoleOverrideUpdateRequest],
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
            "additions": "additions",
            "exclusions": "exclusions",
            "overrides": "overrides",
            "replacements": "replacements",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "additions": True,
            "exclusions": True,
            "overrides": True,
            "replacements": True,
        }

    # endregion static methods
