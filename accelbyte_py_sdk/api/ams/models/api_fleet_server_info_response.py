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

from ..models.api_port_configuration import ApiPortConfiguration


class ApiFleetServerInfoResponse(Model):
    """Api fleet server info response (api.FleetServerInfoResponse)

    Properties:
        created_at: (createdAt) REQUIRED str

        fleet_id: (fleetId) REQUIRED str

        fleet_name: (fleetName) REQUIRED str

        image_cmd: (imageCmd) REQUIRED str

        image_id: (imageId) REQUIRED str

        instance_type: (instanceType) REQUIRED str

        ip_address: (ipAddress) REQUIRED str

        port_configuration: (portConfiguration) REQUIRED List[ApiPortConfiguration]

        ports: (ports) REQUIRED Dict[str, int]

        region: (region) REQUIRED str

        server_configuration: (serverConfiguration) REQUIRED str

        server_id: (serverId) REQUIRED str

        session_id: (sessionId) REQUIRED str

        status: (status) REQUIRED str
    """

    # region fields

    created_at: str  # REQUIRED
    fleet_id: str  # REQUIRED
    fleet_name: str  # REQUIRED
    image_cmd: str  # REQUIRED
    image_id: str  # REQUIRED
    instance_type: str  # REQUIRED
    ip_address: str  # REQUIRED
    port_configuration: List[ApiPortConfiguration]  # REQUIRED
    ports: Dict[str, int]  # REQUIRED
    region: str  # REQUIRED
    server_configuration: str  # REQUIRED
    server_id: str  # REQUIRED
    session_id: str  # REQUIRED
    status: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> ApiFleetServerInfoResponse:
        self.created_at = value
        return self

    def with_fleet_id(self, value: str) -> ApiFleetServerInfoResponse:
        self.fleet_id = value
        return self

    def with_fleet_name(self, value: str) -> ApiFleetServerInfoResponse:
        self.fleet_name = value
        return self

    def with_image_cmd(self, value: str) -> ApiFleetServerInfoResponse:
        self.image_cmd = value
        return self

    def with_image_id(self, value: str) -> ApiFleetServerInfoResponse:
        self.image_id = value
        return self

    def with_instance_type(self, value: str) -> ApiFleetServerInfoResponse:
        self.instance_type = value
        return self

    def with_ip_address(self, value: str) -> ApiFleetServerInfoResponse:
        self.ip_address = value
        return self

    def with_port_configuration(
        self, value: List[ApiPortConfiguration]
    ) -> ApiFleetServerInfoResponse:
        self.port_configuration = value
        return self

    def with_ports(self, value: Dict[str, int]) -> ApiFleetServerInfoResponse:
        self.ports = value
        return self

    def with_region(self, value: str) -> ApiFleetServerInfoResponse:
        self.region = value
        return self

    def with_server_configuration(self, value: str) -> ApiFleetServerInfoResponse:
        self.server_configuration = value
        return self

    def with_server_id(self, value: str) -> ApiFleetServerInfoResponse:
        self.server_id = value
        return self

    def with_session_id(self, value: str) -> ApiFleetServerInfoResponse:
        self.session_id = value
        return self

    def with_status(self, value: str) -> ApiFleetServerInfoResponse:
        self.status = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "fleet_id"):
            result["fleetId"] = str(self.fleet_id)
        elif include_empty:
            result["fleetId"] = ""
        if hasattr(self, "fleet_name"):
            result["fleetName"] = str(self.fleet_name)
        elif include_empty:
            result["fleetName"] = ""
        if hasattr(self, "image_cmd"):
            result["imageCmd"] = str(self.image_cmd)
        elif include_empty:
            result["imageCmd"] = ""
        if hasattr(self, "image_id"):
            result["imageId"] = str(self.image_id)
        elif include_empty:
            result["imageId"] = ""
        if hasattr(self, "instance_type"):
            result["instanceType"] = str(self.instance_type)
        elif include_empty:
            result["instanceType"] = ""
        if hasattr(self, "ip_address"):
            result["ipAddress"] = str(self.ip_address)
        elif include_empty:
            result["ipAddress"] = ""
        if hasattr(self, "port_configuration"):
            result["portConfiguration"] = [
                i0.to_dict(include_empty=include_empty)
                for i0 in self.port_configuration
            ]
        elif include_empty:
            result["portConfiguration"] = []
        if hasattr(self, "ports"):
            result["ports"] = {str(k0): int(v0) for k0, v0 in self.ports.items()}
        elif include_empty:
            result["ports"] = {}
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = ""
        if hasattr(self, "server_configuration"):
            result["serverConfiguration"] = str(self.server_configuration)
        elif include_empty:
            result["serverConfiguration"] = ""
        if hasattr(self, "server_id"):
            result["serverId"] = str(self.server_id)
        elif include_empty:
            result["serverId"] = ""
        if hasattr(self, "session_id"):
            result["sessionId"] = str(self.session_id)
        elif include_empty:
            result["sessionId"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: str,
        fleet_id: str,
        fleet_name: str,
        image_cmd: str,
        image_id: str,
        instance_type: str,
        ip_address: str,
        port_configuration: List[ApiPortConfiguration],
        ports: Dict[str, int],
        region: str,
        server_configuration: str,
        server_id: str,
        session_id: str,
        status: str,
        **kwargs,
    ) -> ApiFleetServerInfoResponse:
        instance = cls()
        instance.created_at = created_at
        instance.fleet_id = fleet_id
        instance.fleet_name = fleet_name
        instance.image_cmd = image_cmd
        instance.image_id = image_id
        instance.instance_type = instance_type
        instance.ip_address = ip_address
        instance.port_configuration = port_configuration
        instance.ports = ports
        instance.region = region
        instance.server_configuration = server_configuration
        instance.server_id = server_id
        instance.session_id = session_id
        instance.status = status
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiFleetServerInfoResponse:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "fleetId" in dict_ and dict_["fleetId"] is not None:
            instance.fleet_id = str(dict_["fleetId"])
        elif include_empty:
            instance.fleet_id = ""
        if "fleetName" in dict_ and dict_["fleetName"] is not None:
            instance.fleet_name = str(dict_["fleetName"])
        elif include_empty:
            instance.fleet_name = ""
        if "imageCmd" in dict_ and dict_["imageCmd"] is not None:
            instance.image_cmd = str(dict_["imageCmd"])
        elif include_empty:
            instance.image_cmd = ""
        if "imageId" in dict_ and dict_["imageId"] is not None:
            instance.image_id = str(dict_["imageId"])
        elif include_empty:
            instance.image_id = ""
        if "instanceType" in dict_ and dict_["instanceType"] is not None:
            instance.instance_type = str(dict_["instanceType"])
        elif include_empty:
            instance.instance_type = ""
        if "ipAddress" in dict_ and dict_["ipAddress"] is not None:
            instance.ip_address = str(dict_["ipAddress"])
        elif include_empty:
            instance.ip_address = ""
        if "portConfiguration" in dict_ and dict_["portConfiguration"] is not None:
            instance.port_configuration = [
                ApiPortConfiguration.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["portConfiguration"]
            ]
        elif include_empty:
            instance.port_configuration = []
        if "ports" in dict_ and dict_["ports"] is not None:
            instance.ports = {str(k0): int(v0) for k0, v0 in dict_["ports"].items()}
        elif include_empty:
            instance.ports = {}
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = ""
        if "serverConfiguration" in dict_ and dict_["serverConfiguration"] is not None:
            instance.server_configuration = str(dict_["serverConfiguration"])
        elif include_empty:
            instance.server_configuration = ""
        if "serverId" in dict_ and dict_["serverId"] is not None:
            instance.server_id = str(dict_["serverId"])
        elif include_empty:
            instance.server_id = ""
        if "sessionId" in dict_ and dict_["sessionId"] is not None:
            instance.session_id = str(dict_["sessionId"])
        elif include_empty:
            instance.session_id = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiFleetServerInfoResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiFleetServerInfoResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiFleetServerInfoResponse,
        List[ApiFleetServerInfoResponse],
        Dict[Any, ApiFleetServerInfoResponse],
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
            "createdAt": "created_at",
            "fleetId": "fleet_id",
            "fleetName": "fleet_name",
            "imageCmd": "image_cmd",
            "imageId": "image_id",
            "instanceType": "instance_type",
            "ipAddress": "ip_address",
            "portConfiguration": "port_configuration",
            "ports": "ports",
            "region": "region",
            "serverConfiguration": "server_configuration",
            "serverId": "server_id",
            "sessionId": "session_id",
            "status": "status",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": True,
            "fleetId": True,
            "fleetName": True,
            "imageCmd": True,
            "imageId": True,
            "instanceType": True,
            "ipAddress": True,
            "portConfiguration": True,
            "ports": True,
            "region": True,
            "serverConfiguration": True,
            "serverId": True,
            "sessionId": True,
            "status": True,
        }

    # endregion static methods
