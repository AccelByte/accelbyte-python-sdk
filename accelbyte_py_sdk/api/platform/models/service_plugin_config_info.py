# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.23.0)

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


class ServicePluginConfigInfo(Model):
    """Service plugin config info (ServicePluginConfigInfo)

    Properties:
        grpc_server_address: (grpcServerAddress) OPTIONAL str

        namespace: (namespace) OPTIONAL str
    """

    # region fields

    grpc_server_address: str  # OPTIONAL
    namespace: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_grpc_server_address(self, value: str) -> ServicePluginConfigInfo:
        self.grpc_server_address = value
        return self

    def with_namespace(self, value: str) -> ServicePluginConfigInfo:
        self.namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "grpc_server_address"):
            result["grpcServerAddress"] = str(self.grpc_server_address)
        elif include_empty:
            result["grpcServerAddress"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        grpc_server_address: Optional[str] = None,
        namespace: Optional[str] = None,
    ) -> ServicePluginConfigInfo:
        instance = cls()
        if grpc_server_address is not None:
            instance.grpc_server_address = grpc_server_address
        if namespace is not None:
            instance.namespace = namespace
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ServicePluginConfigInfo:
        instance = cls()
        if not dict_:
            return instance
        if "grpcServerAddress" in dict_ and dict_["grpcServerAddress"] is not None:
            instance.grpc_server_address = str(dict_["grpcServerAddress"])
        elif include_empty:
            instance.grpc_server_address = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ServicePluginConfigInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ServicePluginConfigInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ServicePluginConfigInfo,
        List[ServicePluginConfigInfo],
        Dict[Any, ServicePluginConfigInfo],
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
            "namespace": "namespace",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "grpcServerAddress": False,
            "namespace": False,
        }

    # endregion static methods
