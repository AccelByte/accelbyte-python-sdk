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


class ModelPluginAssignmentCustomConfig(Model):
    """Model plugin assignment custom config (model.PluginAssignmentCustomConfig)

    Properties:
        grpc_server_address: (grpcServerAddress) REQUIRED str
    """

    # region fields

    grpc_server_address: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_grpc_server_address(self, value: str) -> ModelPluginAssignmentCustomConfig:
        self.grpc_server_address = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "grpc_server_address"):
            result["grpcServerAddress"] = str(self.grpc_server_address)
        elif include_empty:
            result["grpcServerAddress"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, grpc_server_address: str, **kwargs
    ) -> ModelPluginAssignmentCustomConfig:
        instance = cls()
        instance.grpc_server_address = grpc_server_address
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelPluginAssignmentCustomConfig:
        instance = cls()
        if not dict_:
            return instance
        if "grpcServerAddress" in dict_ and dict_["grpcServerAddress"] is not None:
            instance.grpc_server_address = str(dict_["grpcServerAddress"])
        elif include_empty:
            instance.grpc_server_address = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelPluginAssignmentCustomConfig]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelPluginAssignmentCustomConfig]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelPluginAssignmentCustomConfig,
        List[ModelPluginAssignmentCustomConfig],
        Dict[Any, ModelPluginAssignmentCustomConfig],
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
            "grpcServerAddress": "grpc_server_address",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "grpcServerAddress": True,
        }

    # endregion static methods
