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


class ModelRoleOverrideResponse(Model):
    """Model role override response (model.RoleOverrideResponse)

    Properties:
        active: (active) REQUIRED bool

        additions: (additions) REQUIRED List[AccountcommonOverrideRolePermission]

        exclusions: (exclusions) REQUIRED List[AccountcommonOverrideRolePermission]

        identity: (identity) REQUIRED str

        namespace: (namespace) REQUIRED str

        overrides: (overrides) REQUIRED List[AccountcommonOverrideRolePermission]

        replacements: (replacements) REQUIRED List[AccountcommonReplaceRolePermission]

        created_at: (createdAt) OPTIONAL str

        updated_at: (updatedAt) OPTIONAL str
    """

    # region fields

    active: bool  # REQUIRED
    additions: List[AccountcommonOverrideRolePermission]  # REQUIRED
    exclusions: List[AccountcommonOverrideRolePermission]  # REQUIRED
    identity: str  # REQUIRED
    namespace: str  # REQUIRED
    overrides: List[AccountcommonOverrideRolePermission]  # REQUIRED
    replacements: List[AccountcommonReplaceRolePermission]  # REQUIRED
    created_at: str  # OPTIONAL
    updated_at: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_active(self, value: bool) -> ModelRoleOverrideResponse:
        self.active = value
        return self

    def with_additions(
        self, value: List[AccountcommonOverrideRolePermission]
    ) -> ModelRoleOverrideResponse:
        self.additions = value
        return self

    def with_exclusions(
        self, value: List[AccountcommonOverrideRolePermission]
    ) -> ModelRoleOverrideResponse:
        self.exclusions = value
        return self

    def with_identity(self, value: str) -> ModelRoleOverrideResponse:
        self.identity = value
        return self

    def with_namespace(self, value: str) -> ModelRoleOverrideResponse:
        self.namespace = value
        return self

    def with_overrides(
        self, value: List[AccountcommonOverrideRolePermission]
    ) -> ModelRoleOverrideResponse:
        self.overrides = value
        return self

    def with_replacements(
        self, value: List[AccountcommonReplaceRolePermission]
    ) -> ModelRoleOverrideResponse:
        self.replacements = value
        return self

    def with_created_at(self, value: str) -> ModelRoleOverrideResponse:
        self.created_at = value
        return self

    def with_updated_at(self, value: str) -> ModelRoleOverrideResponse:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "active"):
            result["active"] = bool(self.active)
        elif include_empty:
            result["active"] = False
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
        if hasattr(self, "identity"):
            result["identity"] = str(self.identity)
        elif include_empty:
            result["identity"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
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
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        active: bool,
        additions: List[AccountcommonOverrideRolePermission],
        exclusions: List[AccountcommonOverrideRolePermission],
        identity: str,
        namespace: str,
        overrides: List[AccountcommonOverrideRolePermission],
        replacements: List[AccountcommonReplaceRolePermission],
        created_at: Optional[str] = None,
        updated_at: Optional[str] = None,
        **kwargs,
    ) -> ModelRoleOverrideResponse:
        instance = cls()
        instance.active = active
        instance.additions = additions
        instance.exclusions = exclusions
        instance.identity = identity
        instance.namespace = namespace
        instance.overrides = overrides
        instance.replacements = replacements
        if created_at is not None:
            instance.created_at = created_at
        if updated_at is not None:
            instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelRoleOverrideResponse:
        instance = cls()
        if not dict_:
            return instance
        if "active" in dict_ and dict_["active"] is not None:
            instance.active = bool(dict_["active"])
        elif include_empty:
            instance.active = False
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
        if "identity" in dict_ and dict_["identity"] is not None:
            instance.identity = str(dict_["identity"])
        elif include_empty:
            instance.identity = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
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
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelRoleOverrideResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelRoleOverrideResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelRoleOverrideResponse,
        List[ModelRoleOverrideResponse],
        Dict[Any, ModelRoleOverrideResponse],
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
            "active": "active",
            "additions": "additions",
            "exclusions": "exclusions",
            "identity": "identity",
            "namespace": "namespace",
            "overrides": "overrides",
            "replacements": "replacements",
            "createdAt": "created_at",
            "updatedAt": "updated_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "active": True,
            "additions": True,
            "exclusions": True,
            "identity": True,
            "namespace": True,
            "overrides": True,
            "replacements": True,
            "createdAt": False,
            "updatedAt": False,
        }

    # endregion static methods
