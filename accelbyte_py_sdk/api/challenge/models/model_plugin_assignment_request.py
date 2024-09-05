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


class ExtendTypeEnum(StrEnum):
    APP = "APP"
    CUSTOM = "CUSTOM"


class ModelPluginAssignmentRequest(Model):
    """Model plugin assignment request (model.PluginAssignmentRequest)

    Properties:
        extend_type: (extendType) REQUIRED Union[str, ExtendTypeEnum]

        app_name: (appName) OPTIONAL str

        grpc_server_address: (grpcServerAddress) OPTIONAL str
    """

    # region fields

    extend_type: Union[str, ExtendTypeEnum]  # REQUIRED
    app_name: str  # OPTIONAL
    grpc_server_address: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_extend_type(
        self, value: Union[str, ExtendTypeEnum]
    ) -> ModelPluginAssignmentRequest:
        self.extend_type = value
        return self

    def with_app_name(self, value: str) -> ModelPluginAssignmentRequest:
        self.app_name = value
        return self

    def with_grpc_server_address(self, value: str) -> ModelPluginAssignmentRequest:
        self.grpc_server_address = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "extend_type"):
            result["extendType"] = str(self.extend_type)
        elif include_empty:
            result["extendType"] = Union[str, ExtendTypeEnum]()
        if hasattr(self, "app_name"):
            result["appName"] = str(self.app_name)
        elif include_empty:
            result["appName"] = ""
        if hasattr(self, "grpc_server_address"):
            result["grpcServerAddress"] = str(self.grpc_server_address)
        elif include_empty:
            result["grpcServerAddress"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        extend_type: Union[str, ExtendTypeEnum],
        app_name: Optional[str] = None,
        grpc_server_address: Optional[str] = None,
        **kwargs,
    ) -> ModelPluginAssignmentRequest:
        instance = cls()
        instance.extend_type = extend_type
        if app_name is not None:
            instance.app_name = app_name
        if grpc_server_address is not None:
            instance.grpc_server_address = grpc_server_address
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelPluginAssignmentRequest:
        instance = cls()
        if not dict_:
            return instance
        if "extendType" in dict_ and dict_["extendType"] is not None:
            instance.extend_type = str(dict_["extendType"])
        elif include_empty:
            instance.extend_type = Union[str, ExtendTypeEnum]()
        if "appName" in dict_ and dict_["appName"] is not None:
            instance.app_name = str(dict_["appName"])
        elif include_empty:
            instance.app_name = ""
        if "grpcServerAddress" in dict_ and dict_["grpcServerAddress"] is not None:
            instance.grpc_server_address = str(dict_["grpcServerAddress"])
        elif include_empty:
            instance.grpc_server_address = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelPluginAssignmentRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelPluginAssignmentRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelPluginAssignmentRequest,
        List[ModelPluginAssignmentRequest],
        Dict[Any, ModelPluginAssignmentRequest],
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
            "appName": "app_name",
            "grpcServerAddress": "grpc_server_address",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "extendType": True,
            "appName": False,
            "grpcServerAddress": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "extendType": ["APP", "CUSTOM"],
        }

    # endregion static methods
