# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Cloudsave Service

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

from ..models.models_app_config import ModelsAppConfig
from ..models.models_custom_config import ModelsCustomConfig
from ..models.models_custom_function import ModelsCustomFunction


class ExtendTypeEnum(StrEnum):
    APP = "APP"
    CUSTOM = "CUSTOM"


class ModelsPluginResponse(Model):
    """Models plugin response (models.PluginResponse)

    Properties:
        custom_function: (customFunction) REQUIRED ModelsCustomFunction

        extend_type: (extendType) REQUIRED Union[str, ExtendTypeEnum]

        namespace: (namespace) REQUIRED str

        app_config: (appConfig) OPTIONAL ModelsAppConfig

        custom_config: (customConfig) OPTIONAL ModelsCustomConfig
    """

    # region fields

    custom_function: ModelsCustomFunction  # REQUIRED
    extend_type: Union[str, ExtendTypeEnum]  # REQUIRED
    namespace: str  # REQUIRED
    app_config: ModelsAppConfig  # OPTIONAL
    custom_config: ModelsCustomConfig  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_custom_function(self, value: ModelsCustomFunction) -> ModelsPluginResponse:
        self.custom_function = value
        return self

    def with_extend_type(
        self, value: Union[str, ExtendTypeEnum]
    ) -> ModelsPluginResponse:
        self.extend_type = value
        return self

    def with_namespace(self, value: str) -> ModelsPluginResponse:
        self.namespace = value
        return self

    def with_app_config(self, value: ModelsAppConfig) -> ModelsPluginResponse:
        self.app_config = value
        return self

    def with_custom_config(self, value: ModelsCustomConfig) -> ModelsPluginResponse:
        self.custom_config = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "custom_function"):
            result["customFunction"] = self.custom_function.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["customFunction"] = ModelsCustomFunction()
        if hasattr(self, "extend_type"):
            result["extendType"] = str(self.extend_type)
        elif include_empty:
            result["extendType"] = Union[str, ExtendTypeEnum]()
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "app_config"):
            result["appConfig"] = self.app_config.to_dict(include_empty=include_empty)
        elif include_empty:
            result["appConfig"] = ModelsAppConfig()
        if hasattr(self, "custom_config"):
            result["customConfig"] = self.custom_config.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["customConfig"] = ModelsCustomConfig()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        custom_function: ModelsCustomFunction,
        extend_type: Union[str, ExtendTypeEnum],
        namespace: str,
        app_config: Optional[ModelsAppConfig] = None,
        custom_config: Optional[ModelsCustomConfig] = None,
        **kwargs,
    ) -> ModelsPluginResponse:
        instance = cls()
        instance.custom_function = custom_function
        instance.extend_type = extend_type
        instance.namespace = namespace
        if app_config is not None:
            instance.app_config = app_config
        if custom_config is not None:
            instance.custom_config = custom_config
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsPluginResponse:
        instance = cls()
        if not dict_:
            return instance
        if "customFunction" in dict_ and dict_["customFunction"] is not None:
            instance.custom_function = ModelsCustomFunction.create_from_dict(
                dict_["customFunction"], include_empty=include_empty
            )
        elif include_empty:
            instance.custom_function = ModelsCustomFunction()
        if "extendType" in dict_ and dict_["extendType"] is not None:
            instance.extend_type = str(dict_["extendType"])
        elif include_empty:
            instance.extend_type = Union[str, ExtendTypeEnum]()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "appConfig" in dict_ and dict_["appConfig"] is not None:
            instance.app_config = ModelsAppConfig.create_from_dict(
                dict_["appConfig"], include_empty=include_empty
            )
        elif include_empty:
            instance.app_config = ModelsAppConfig()
        if "customConfig" in dict_ and dict_["customConfig"] is not None:
            instance.custom_config = ModelsCustomConfig.create_from_dict(
                dict_["customConfig"], include_empty=include_empty
            )
        elif include_empty:
            instance.custom_config = ModelsCustomConfig()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsPluginResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsPluginResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsPluginResponse,
        List[ModelsPluginResponse],
        Dict[Any, ModelsPluginResponse],
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
            "customFunction": "custom_function",
            "extendType": "extend_type",
            "namespace": "namespace",
            "appConfig": "app_config",
            "customConfig": "custom_config",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "customFunction": True,
            "extendType": True,
            "namespace": True,
            "appConfig": False,
            "customConfig": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "extendType": ["APP", "CUSTOM"],
        }

    # endregion static methods
