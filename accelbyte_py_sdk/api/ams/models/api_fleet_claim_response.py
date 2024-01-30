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


class ApiFleetClaimResponse(Model):
    """Api fleet claim response (api.FleetClaimResponse)

    Properties:
        ip: (ip) REQUIRED str

        ports: (ports) REQUIRED Dict[str, int]

        region: (region) REQUIRED str

        server_id: (serverId) REQUIRED str
    """

    # region fields

    ip: str  # REQUIRED
    ports: Dict[str, int]  # REQUIRED
    region: str  # REQUIRED
    server_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_ip(self, value: str) -> ApiFleetClaimResponse:
        self.ip = value
        return self

    def with_ports(self, value: Dict[str, int]) -> ApiFleetClaimResponse:
        self.ports = value
        return self

    def with_region(self, value: str) -> ApiFleetClaimResponse:
        self.region = value
        return self

    def with_server_id(self, value: str) -> ApiFleetClaimResponse:
        self.server_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "ip"):
            result["ip"] = str(self.ip)
        elif include_empty:
            result["ip"] = ""
        if hasattr(self, "ports"):
            result["ports"] = {str(k0): int(v0) for k0, v0 in self.ports.items()}
        elif include_empty:
            result["ports"] = {}
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = ""
        if hasattr(self, "server_id"):
            result["serverId"] = str(self.server_id)
        elif include_empty:
            result["serverId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, ip: str, ports: Dict[str, int], region: str, server_id: str, **kwargs
    ) -> ApiFleetClaimResponse:
        instance = cls()
        instance.ip = ip
        instance.ports = ports
        instance.region = region
        instance.server_id = server_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiFleetClaimResponse:
        instance = cls()
        if not dict_:
            return instance
        if "ip" in dict_ and dict_["ip"] is not None:
            instance.ip = str(dict_["ip"])
        elif include_empty:
            instance.ip = ""
        if "ports" in dict_ and dict_["ports"] is not None:
            instance.ports = {str(k0): int(v0) for k0, v0 in dict_["ports"].items()}
        elif include_empty:
            instance.ports = {}
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = ""
        if "serverId" in dict_ and dict_["serverId"] is not None:
            instance.server_id = str(dict_["serverId"])
        elif include_empty:
            instance.server_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiFleetClaimResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiFleetClaimResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiFleetClaimResponse,
        List[ApiFleetClaimResponse],
        Dict[Any, ApiFleetClaimResponse],
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
            "ip": "ip",
            "ports": "ports",
            "region": "region",
            "serverId": "server_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "ip": True,
            "ports": True,
            "region": True,
            "serverId": True,
        }

    # endregion static methods
