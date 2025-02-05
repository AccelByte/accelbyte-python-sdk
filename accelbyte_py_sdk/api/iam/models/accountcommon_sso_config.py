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

from ..models.accountcommon_group_and_role_mapping_for_update import (
    AccountcommonGroupAndRoleMappingForUpdate,
)


class AccountcommonSsoConfig(Model):
    """Accountcommon sso config (accountcommon.SsoConfig)

    Properties:
        google_key: (googleKey) REQUIRED Dict[str, Any]

        group_configs: (groupConfigs) REQUIRED List[AccountcommonGroupAndRoleMappingForUpdate]
    """

    # region fields

    google_key: Dict[str, Any]  # REQUIRED
    group_configs: List[AccountcommonGroupAndRoleMappingForUpdate]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_google_key(self, value: Dict[str, Any]) -> AccountcommonSsoConfig:
        self.google_key = value
        return self

    def with_group_configs(
        self, value: List[AccountcommonGroupAndRoleMappingForUpdate]
    ) -> AccountcommonSsoConfig:
        self.group_configs = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "google_key"):
            result["googleKey"] = {str(k0): v0 for k0, v0 in self.google_key.items()}
        elif include_empty:
            result["googleKey"] = {}
        if hasattr(self, "group_configs"):
            result["groupConfigs"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.group_configs
            ]
        elif include_empty:
            result["groupConfigs"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        google_key: Dict[str, Any],
        group_configs: List[AccountcommonGroupAndRoleMappingForUpdate],
        **kwargs,
    ) -> AccountcommonSsoConfig:
        instance = cls()
        instance.google_key = google_key
        instance.group_configs = group_configs
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AccountcommonSsoConfig:
        instance = cls()
        if not dict_:
            return instance
        if "googleKey" in dict_ and dict_["googleKey"] is not None:
            instance.google_key = {str(k0): v0 for k0, v0 in dict_["googleKey"].items()}
        elif include_empty:
            instance.google_key = {}
        if "groupConfigs" in dict_ and dict_["groupConfigs"] is not None:
            instance.group_configs = [
                AccountcommonGroupAndRoleMappingForUpdate.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["groupConfigs"]
            ]
        elif include_empty:
            instance.group_configs = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, AccountcommonSsoConfig]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[AccountcommonSsoConfig]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        AccountcommonSsoConfig,
        List[AccountcommonSsoConfig],
        Dict[Any, AccountcommonSsoConfig],
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
            "googleKey": "google_key",
            "groupConfigs": "group_configs",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "googleKey": True,
            "groupConfigs": True,
        }

    # endregion static methods
