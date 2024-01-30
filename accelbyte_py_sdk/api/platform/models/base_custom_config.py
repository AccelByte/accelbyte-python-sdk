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


class ConnectionTypeEnum(StrEnum):
    INSECURE = "INSECURE"
    TLS = "TLS"


class BaseCustomConfig(Model):
    """Base custom config (BaseCustomConfig)

    Properties:
        connection_type: (connectionType) REQUIRED Union[str, ConnectionTypeEnum]

        grpc_server_address: (grpcServerAddress) REQUIRED str
    """

    # region fields

    connection_type: Union[str, ConnectionTypeEnum]  # REQUIRED
    grpc_server_address: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_connection_type(
        self, value: Union[str, ConnectionTypeEnum]
    ) -> BaseCustomConfig:
        self.connection_type = value
        return self

    def with_grpc_server_address(self, value: str) -> BaseCustomConfig:
        self.grpc_server_address = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "connection_type"):
            result["connectionType"] = str(self.connection_type)
        elif include_empty:
            result["connectionType"] = Union[str, ConnectionTypeEnum]()
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
        connection_type: Union[str, ConnectionTypeEnum],
        grpc_server_address: str,
        **kwargs,
    ) -> BaseCustomConfig:
        instance = cls()
        instance.connection_type = connection_type
        instance.grpc_server_address = grpc_server_address
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> BaseCustomConfig:
        instance = cls()
        if not dict_:
            return instance
        if "connectionType" in dict_ and dict_["connectionType"] is not None:
            instance.connection_type = str(dict_["connectionType"])
        elif include_empty:
            instance.connection_type = Union[str, ConnectionTypeEnum]()
        if "grpcServerAddress" in dict_ and dict_["grpcServerAddress"] is not None:
            instance.grpc_server_address = str(dict_["grpcServerAddress"])
        elif include_empty:
            instance.grpc_server_address = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, BaseCustomConfig]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[BaseCustomConfig]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[BaseCustomConfig, List[BaseCustomConfig], Dict[Any, BaseCustomConfig]]:
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
            "connectionType": "connection_type",
            "grpcServerAddress": "grpc_server_address",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "connectionType": True,
            "grpcServerAddress": True,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "connectionType": ["INSECURE", "TLS"],
        }

    # endregion static methods
