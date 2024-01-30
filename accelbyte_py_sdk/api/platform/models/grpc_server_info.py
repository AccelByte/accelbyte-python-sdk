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

from ..models.tls_config import TLSConfig


class ConnectionTypeEnumEnum(StrEnum):
    INSECURE = "INSECURE"
    TLS = "TLS"


class GrpcServerInfo(Model):
    """Grpc server info (GrpcServerInfo)

    Properties:
        address: (address) OPTIONAL str

        connection_type_enum: (connectionTypeEnum) OPTIONAL Union[str, ConnectionTypeEnumEnum]

        status: (status) OPTIONAL str

        tls_config: (tlsConfig) OPTIONAL TLSConfig
    """

    # region fields

    address: str  # OPTIONAL
    connection_type_enum: Union[str, ConnectionTypeEnumEnum]  # OPTIONAL
    status: str  # OPTIONAL
    tls_config: TLSConfig  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_address(self, value: str) -> GrpcServerInfo:
        self.address = value
        return self

    def with_connection_type_enum(
        self, value: Union[str, ConnectionTypeEnumEnum]
    ) -> GrpcServerInfo:
        self.connection_type_enum = value
        return self

    def with_status(self, value: str) -> GrpcServerInfo:
        self.status = value
        return self

    def with_tls_config(self, value: TLSConfig) -> GrpcServerInfo:
        self.tls_config = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "address"):
            result["address"] = str(self.address)
        elif include_empty:
            result["address"] = ""
        if hasattr(self, "connection_type_enum"):
            result["connectionTypeEnum"] = str(self.connection_type_enum)
        elif include_empty:
            result["connectionTypeEnum"] = Union[str, ConnectionTypeEnumEnum]()
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = ""
        if hasattr(self, "tls_config"):
            result["tlsConfig"] = self.tls_config.to_dict(include_empty=include_empty)
        elif include_empty:
            result["tlsConfig"] = TLSConfig()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        address: Optional[str] = None,
        connection_type_enum: Optional[Union[str, ConnectionTypeEnumEnum]] = None,
        status: Optional[str] = None,
        tls_config: Optional[TLSConfig] = None,
        **kwargs,
    ) -> GrpcServerInfo:
        instance = cls()
        if address is not None:
            instance.address = address
        if connection_type_enum is not None:
            instance.connection_type_enum = connection_type_enum
        if status is not None:
            instance.status = status
        if tls_config is not None:
            instance.tls_config = tls_config
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> GrpcServerInfo:
        instance = cls()
        if not dict_:
            return instance
        if "address" in dict_ and dict_["address"] is not None:
            instance.address = str(dict_["address"])
        elif include_empty:
            instance.address = ""
        if "connectionTypeEnum" in dict_ and dict_["connectionTypeEnum"] is not None:
            instance.connection_type_enum = str(dict_["connectionTypeEnum"])
        elif include_empty:
            instance.connection_type_enum = Union[str, ConnectionTypeEnumEnum]()
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = ""
        if "tlsConfig" in dict_ and dict_["tlsConfig"] is not None:
            instance.tls_config = TLSConfig.create_from_dict(
                dict_["tlsConfig"], include_empty=include_empty
            )
        elif include_empty:
            instance.tls_config = TLSConfig()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, GrpcServerInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[GrpcServerInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[GrpcServerInfo, List[GrpcServerInfo], Dict[Any, GrpcServerInfo]]:
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
            "address": "address",
            "connectionTypeEnum": "connection_type_enum",
            "status": "status",
            "tlsConfig": "tls_config",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "address": False,
            "connectionTypeEnum": False,
            "status": False,
            "tlsConfig": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "connectionTypeEnum": ["INSECURE", "TLS"],
        }

    # endregion static methods
