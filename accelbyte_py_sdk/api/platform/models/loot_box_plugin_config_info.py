# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Platform Service (4.42.0)

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
from ..models.public_custom_config_info import PublicCustomConfigInfo


class ExtendTypeEnum(StrEnum):
    APP = "APP"
    CUSTOM = "CUSTOM"


class LootBoxPluginConfigInfo(Model):
    """Loot box plugin config info (LootBoxPluginConfigInfo)

    Properties:
        namespace: (namespace) REQUIRED str

        app_config: (appConfig) OPTIONAL AppConfig

        custom_config: (customConfig) OPTIONAL PublicCustomConfigInfo

        extend_type: (extendType) OPTIONAL Union[str, ExtendTypeEnum]
    """

    # region fields

    namespace: str  # REQUIRED
    app_config: AppConfig  # OPTIONAL
    custom_config: PublicCustomConfigInfo  # OPTIONAL
    extend_type: Union[str, ExtendTypeEnum]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_namespace(self, value: str) -> LootBoxPluginConfigInfo:
        self.namespace = value
        return self

    def with_app_config(self, value: AppConfig) -> LootBoxPluginConfigInfo:
        self.app_config = value
        return self

    def with_custom_config(
        self, value: PublicCustomConfigInfo
    ) -> LootBoxPluginConfigInfo:
        self.custom_config = value
        return self

    def with_extend_type(
        self, value: Union[str, ExtendTypeEnum]
    ) -> LootBoxPluginConfigInfo:
        self.extend_type = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "app_config"):
            result["appConfig"] = self.app_config.to_dict(include_empty=include_empty)
        elif include_empty:
            result["appConfig"] = AppConfig()
        if hasattr(self, "custom_config"):
            result["customConfig"] = self.custom_config.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["customConfig"] = PublicCustomConfigInfo()
        if hasattr(self, "extend_type"):
            result["extendType"] = str(self.extend_type)
        elif include_empty:
            result["extendType"] = Union[str, ExtendTypeEnum]()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        app_config: Optional[AppConfig] = None,
        custom_config: Optional[PublicCustomConfigInfo] = None,
        extend_type: Optional[Union[str, ExtendTypeEnum]] = None,
        **kwargs,
    ) -> LootBoxPluginConfigInfo:
        instance = cls()
        instance.namespace = namespace
        if app_config is not None:
            instance.app_config = app_config
        if custom_config is not None:
            instance.custom_config = custom_config
        if extend_type is not None:
            instance.extend_type = extend_type
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> LootBoxPluginConfigInfo:
        instance = cls()
        if not dict_:
            return instance
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "appConfig" in dict_ and dict_["appConfig"] is not None:
            instance.app_config = AppConfig.create_from_dict(
                dict_["appConfig"], include_empty=include_empty
            )
        elif include_empty:
            instance.app_config = AppConfig()
        if "customConfig" in dict_ and dict_["customConfig"] is not None:
            instance.custom_config = PublicCustomConfigInfo.create_from_dict(
                dict_["customConfig"], include_empty=include_empty
            )
        elif include_empty:
            instance.custom_config = PublicCustomConfigInfo()
        if "extendType" in dict_ and dict_["extendType"] is not None:
            instance.extend_type = str(dict_["extendType"])
        elif include_empty:
            instance.extend_type = Union[str, ExtendTypeEnum]()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, LootBoxPluginConfigInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[LootBoxPluginConfigInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        LootBoxPluginConfigInfo,
        List[LootBoxPluginConfigInfo],
        Dict[Any, LootBoxPluginConfigInfo],
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
            "namespace": "namespace",
            "appConfig": "app_config",
            "customConfig": "custom_config",
            "extendType": "extend_type",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "appConfig": False,
            "customConfig": False,
            "extendType": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "extendType": ["APP", "CUSTOM"],
        }

    # endregion static methods
