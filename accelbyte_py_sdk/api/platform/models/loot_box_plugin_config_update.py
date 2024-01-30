# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Platform Service

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
from ....core import StrEnum

from ..models.app_config import AppConfig
from ..models.base_custom_config import BaseCustomConfig


class ExtendTypeEnum(StrEnum):
    APP = "APP"
    CUSTOM = "CUSTOM"


class LootBoxPluginConfigUpdate(Model):
    """Loot box plugin config update (LootBoxPluginConfigUpdate)

    Properties:
        extend_type: (extendType) REQUIRED Union[str, ExtendTypeEnum]

        app_config: (appConfig) OPTIONAL AppConfig

        custom_config: (customConfig) OPTIONAL BaseCustomConfig
    """

    # region fields

    extend_type: Union[str, ExtendTypeEnum]  # REQUIRED
    app_config: AppConfig  # OPTIONAL
    custom_config: BaseCustomConfig  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_extend_type(
        self, value: Union[str, ExtendTypeEnum]
    ) -> LootBoxPluginConfigUpdate:
        self.extend_type = value
        return self

    def with_app_config(self, value: AppConfig) -> LootBoxPluginConfigUpdate:
        self.app_config = value
        return self

    def with_custom_config(self, value: BaseCustomConfig) -> LootBoxPluginConfigUpdate:
        self.custom_config = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "extend_type"):
            result["extendType"] = str(self.extend_type)
        elif include_empty:
            result["extendType"] = Union[str, ExtendTypeEnum]()
        if hasattr(self, "app_config"):
            result["appConfig"] = self.app_config.to_dict(include_empty=include_empty)
        elif include_empty:
            result["appConfig"] = AppConfig()
        if hasattr(self, "custom_config"):
            result["customConfig"] = self.custom_config.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["customConfig"] = BaseCustomConfig()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        extend_type: Union[str, ExtendTypeEnum],
        app_config: Optional[AppConfig] = None,
        custom_config: Optional[BaseCustomConfig] = None,
        **kwargs,
    ) -> LootBoxPluginConfigUpdate:
        instance = cls()
        instance.extend_type = extend_type
        if app_config is not None:
            instance.app_config = app_config
        if custom_config is not None:
            instance.custom_config = custom_config
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> LootBoxPluginConfigUpdate:
        instance = cls()
        if not dict_:
            return instance
        if "extendType" in dict_ and dict_["extendType"] is not None:
            instance.extend_type = str(dict_["extendType"])
        elif include_empty:
            instance.extend_type = Union[str, ExtendTypeEnum]()
        if "appConfig" in dict_ and dict_["appConfig"] is not None:
            instance.app_config = AppConfig.create_from_dict(
                dict_["appConfig"], include_empty=include_empty
            )
        elif include_empty:
            instance.app_config = AppConfig()
        if "customConfig" in dict_ and dict_["customConfig"] is not None:
            instance.custom_config = BaseCustomConfig.create_from_dict(
                dict_["customConfig"], include_empty=include_empty
            )
        elif include_empty:
            instance.custom_config = BaseCustomConfig()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, LootBoxPluginConfigUpdate]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[LootBoxPluginConfigUpdate]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        LootBoxPluginConfigUpdate,
        List[LootBoxPluginConfigUpdate],
        Dict[Any, LootBoxPluginConfigUpdate],
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
            "extendType": "extend_type",
            "appConfig": "app_config",
            "customConfig": "custom_config",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "extendType": True,
            "appConfig": False,
            "customConfig": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "extendType": ["APP", "CUSTOM"],
        }

    # endregion static methods
