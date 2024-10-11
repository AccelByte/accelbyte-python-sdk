# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Fleet Commander

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


class ApiDSHostConfigurationParameters(Model):
    """Api DS host configuration parameters (api.DSHostConfigurationParameters)

    Properties:
        instance_id: (instanceId) REQUIRED str

        servers_per_vm: (serversPerVm) REQUIRED int
    """

    # region fields

    instance_id: str  # REQUIRED
    servers_per_vm: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_instance_id(self, value: str) -> ApiDSHostConfigurationParameters:
        self.instance_id = value
        return self

    def with_servers_per_vm(self, value: int) -> ApiDSHostConfigurationParameters:
        self.servers_per_vm = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "instance_id"):
            result["instanceId"] = str(self.instance_id)
        elif include_empty:
            result["instanceId"] = ""
        if hasattr(self, "servers_per_vm"):
            result["serversPerVm"] = int(self.servers_per_vm)
        elif include_empty:
            result["serversPerVm"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, instance_id: str, servers_per_vm: int, **kwargs
    ) -> ApiDSHostConfigurationParameters:
        instance = cls()
        instance.instance_id = instance_id
        instance.servers_per_vm = servers_per_vm
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiDSHostConfigurationParameters:
        instance = cls()
        if not dict_:
            return instance
        if "instanceId" in dict_ and dict_["instanceId"] is not None:
            instance.instance_id = str(dict_["instanceId"])
        elif include_empty:
            instance.instance_id = ""
        if "serversPerVm" in dict_ and dict_["serversPerVm"] is not None:
            instance.servers_per_vm = int(dict_["serversPerVm"])
        elif include_empty:
            instance.servers_per_vm = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiDSHostConfigurationParameters]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiDSHostConfigurationParameters]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiDSHostConfigurationParameters,
        List[ApiDSHostConfigurationParameters],
        Dict[Any, ApiDSHostConfigurationParameters],
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
            "instanceId": "instance_id",
            "serversPerVm": "servers_per_vm",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "instanceId": True,
            "serversPerVm": True,
        }

    # endregion static methods
