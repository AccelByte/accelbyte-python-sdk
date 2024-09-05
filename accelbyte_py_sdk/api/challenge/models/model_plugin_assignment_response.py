# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Challenge Service

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

from ..models.model_plugin_asignment_app_config import ModelPluginAsignmentAppConfig
from ..models.model_plugin_assignment_custom_config import (
    ModelPluginAssignmentCustomConfig,
)


class ExtendTypeEnum(StrEnum):
    APP = "APP"
    CUSTOM = "CUSTOM"


class ModelPluginAssignmentResponse(Model):
    """Model plugin assignment response (model.PluginAssignmentResponse)

    Properties:
        extend_type: (extendType) REQUIRED Union[str, ExtendTypeEnum]

        app_config: (appConfig) OPTIONAL ModelPluginAsignmentAppConfig

        custom_config: (customConfig) OPTIONAL ModelPluginAssignmentCustomConfig
    """

    # region fields

    extend_type: Union[str, ExtendTypeEnum]  # REQUIRED
    app_config: ModelPluginAsignmentAppConfig  # OPTIONAL
    custom_config: ModelPluginAssignmentCustomConfig  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_extend_type(
        self, value: Union[str, ExtendTypeEnum]
    ) -> ModelPluginAssignmentResponse:
        self.extend_type = value
        return self

    def with_app_config(
        self, value: ModelPluginAsignmentAppConfig
    ) -> ModelPluginAssignmentResponse:
        self.app_config = value
        return self

    def with_custom_config(
        self, value: ModelPluginAssignmentCustomConfig
    ) -> ModelPluginAssignmentResponse:
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
            result["appConfig"] = ModelPluginAsignmentAppConfig()
        if hasattr(self, "custom_config"):
            result["customConfig"] = self.custom_config.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["customConfig"] = ModelPluginAssignmentCustomConfig()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        extend_type: Union[str, ExtendTypeEnum],
        app_config: Optional[ModelPluginAsignmentAppConfig] = None,
        custom_config: Optional[ModelPluginAssignmentCustomConfig] = None,
        **kwargs,
    ) -> ModelPluginAssignmentResponse:
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
    ) -> ModelPluginAssignmentResponse:
        instance = cls()
        if not dict_:
            return instance
        if "extendType" in dict_ and dict_["extendType"] is not None:
            instance.extend_type = str(dict_["extendType"])
        elif include_empty:
            instance.extend_type = Union[str, ExtendTypeEnum]()
        if "appConfig" in dict_ and dict_["appConfig"] is not None:
            instance.app_config = ModelPluginAsignmentAppConfig.create_from_dict(
                dict_["appConfig"], include_empty=include_empty
            )
        elif include_empty:
            instance.app_config = ModelPluginAsignmentAppConfig()
        if "customConfig" in dict_ and dict_["customConfig"] is not None:
            instance.custom_config = ModelPluginAssignmentCustomConfig.create_from_dict(
                dict_["customConfig"], include_empty=include_empty
            )
        elif include_empty:
            instance.custom_config = ModelPluginAssignmentCustomConfig()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelPluginAssignmentResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelPluginAssignmentResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelPluginAssignmentResponse,
        List[ModelPluginAssignmentResponse],
        Dict[Any, ModelPluginAssignmentResponse],
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
