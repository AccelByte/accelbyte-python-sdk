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

from ..models.accountcommon_profile_update_config import (
    AccountcommonProfileUpdateConfig,
)


class ModelSimpleProfileUpdateStrategyConfigs(Model):
    """Model simple profile update strategy configs (model.SimpleProfileUpdateStrategyConfigs)

    Properties:
        created_at: (createdAt) REQUIRED str

        field: (field) REQUIRED str

        type_: (type) REQUIRED str

        updated_at: (updatedAt) REQUIRED str

        config: (config) OPTIONAL AccountcommonProfileUpdateConfig
    """

    # region fields

    created_at: str  # REQUIRED
    field: str  # REQUIRED
    type_: str  # REQUIRED
    updated_at: str  # REQUIRED
    config: AccountcommonProfileUpdateConfig  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> ModelSimpleProfileUpdateStrategyConfigs:
        self.created_at = value
        return self

    def with_field(self, value: str) -> ModelSimpleProfileUpdateStrategyConfigs:
        self.field = value
        return self

    def with_type(self, value: str) -> ModelSimpleProfileUpdateStrategyConfigs:
        self.type_ = value
        return self

    def with_updated_at(self, value: str) -> ModelSimpleProfileUpdateStrategyConfigs:
        self.updated_at = value
        return self

    def with_config(
        self, value: AccountcommonProfileUpdateConfig
    ) -> ModelSimpleProfileUpdateStrategyConfigs:
        self.config = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "field"):
            result["field"] = str(self.field)
        elif include_empty:
            result["field"] = ""
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "config"):
            result["config"] = self.config.to_dict(include_empty=include_empty)
        elif include_empty:
            result["config"] = AccountcommonProfileUpdateConfig()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: str,
        field: str,
        type_: str,
        updated_at: str,
        config: Optional[AccountcommonProfileUpdateConfig] = None,
        **kwargs,
    ) -> ModelSimpleProfileUpdateStrategyConfigs:
        instance = cls()
        instance.created_at = created_at
        instance.field = field
        instance.type_ = type_
        instance.updated_at = updated_at
        if config is not None:
            instance.config = config
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelSimpleProfileUpdateStrategyConfigs:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "field" in dict_ and dict_["field"] is not None:
            instance.field = str(dict_["field"])
        elif include_empty:
            instance.field = ""
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "config" in dict_ and dict_["config"] is not None:
            instance.config = AccountcommonProfileUpdateConfig.create_from_dict(
                dict_["config"], include_empty=include_empty
            )
        elif include_empty:
            instance.config = AccountcommonProfileUpdateConfig()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelSimpleProfileUpdateStrategyConfigs]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelSimpleProfileUpdateStrategyConfigs]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelSimpleProfileUpdateStrategyConfigs,
        List[ModelSimpleProfileUpdateStrategyConfigs],
        Dict[Any, ModelSimpleProfileUpdateStrategyConfigs],
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
            "createdAt": "created_at",
            "field": "field",
            "type": "type_",
            "updatedAt": "updated_at",
            "config": "config",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": True,
            "field": True,
            "type": True,
            "updatedAt": True,
            "config": False,
        }

    # endregion static methods
