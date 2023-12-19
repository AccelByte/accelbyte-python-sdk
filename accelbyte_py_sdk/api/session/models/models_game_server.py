# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Session Service (3.12.3)

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

from ..models.models_port_configuration_ams import ModelsPortConfigurationAMS


class ModelsGameServer(Model):
    """Models game server (models.GameServer)

    Properties:
        custom_attribute: (custom_attribute) REQUIRED str

        is_override_game_version: (is_override_game_version) REQUIRED bool

        last_update: (last_update) REQUIRED str

        namespace: (namespace) REQUIRED str

        region: (region) REQUIRED str

        session_id: (session_id) REQUIRED str

        source: (source) REQUIRED str

        status: (status) REQUIRED str

        alternate_ips: (alternate_ips) OPTIONAL List[str]

        ams_protocol: (ams_protocol) OPTIONAL List[ModelsPortConfigurationAMS]

        deployment: (deployment) OPTIONAL str

        game_version: (game_version) OPTIONAL str

        image_version: (image_version) OPTIONAL str

        ip: (ip) OPTIONAL str

        pod_name: (pod_name) OPTIONAL str

        port: (port) OPTIONAL int

        ports: (ports) OPTIONAL Dict[str, int]

        protocol: (protocol) OPTIONAL str

        provider: (provider) OPTIONAL str
    """

    # region fields

    custom_attribute: str  # REQUIRED
    is_override_game_version: bool  # REQUIRED
    last_update: str  # REQUIRED
    namespace: str  # REQUIRED
    region: str  # REQUIRED
    session_id: str  # REQUIRED
    source: str  # REQUIRED
    status: str  # REQUIRED
    alternate_ips: List[str]  # OPTIONAL
    ams_protocol: List[ModelsPortConfigurationAMS]  # OPTIONAL
    deployment: str  # OPTIONAL
    game_version: str  # OPTIONAL
    image_version: str  # OPTIONAL
    ip: str  # OPTIONAL
    pod_name: str  # OPTIONAL
    port: int  # OPTIONAL
    ports: Dict[str, int]  # OPTIONAL
    protocol: str  # OPTIONAL
    provider: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_custom_attribute(self, value: str) -> ModelsGameServer:
        self.custom_attribute = value
        return self

    def with_is_override_game_version(self, value: bool) -> ModelsGameServer:
        self.is_override_game_version = value
        return self

    def with_last_update(self, value: str) -> ModelsGameServer:
        self.last_update = value
        return self

    def with_namespace(self, value: str) -> ModelsGameServer:
        self.namespace = value
        return self

    def with_region(self, value: str) -> ModelsGameServer:
        self.region = value
        return self

    def with_session_id(self, value: str) -> ModelsGameServer:
        self.session_id = value
        return self

    def with_source(self, value: str) -> ModelsGameServer:
        self.source = value
        return self

    def with_status(self, value: str) -> ModelsGameServer:
        self.status = value
        return self

    def with_alternate_ips(self, value: List[str]) -> ModelsGameServer:
        self.alternate_ips = value
        return self

    def with_ams_protocol(
        self, value: List[ModelsPortConfigurationAMS]
    ) -> ModelsGameServer:
        self.ams_protocol = value
        return self

    def with_deployment(self, value: str) -> ModelsGameServer:
        self.deployment = value
        return self

    def with_game_version(self, value: str) -> ModelsGameServer:
        self.game_version = value
        return self

    def with_image_version(self, value: str) -> ModelsGameServer:
        self.image_version = value
        return self

    def with_ip(self, value: str) -> ModelsGameServer:
        self.ip = value
        return self

    def with_pod_name(self, value: str) -> ModelsGameServer:
        self.pod_name = value
        return self

    def with_port(self, value: int) -> ModelsGameServer:
        self.port = value
        return self

    def with_ports(self, value: Dict[str, int]) -> ModelsGameServer:
        self.ports = value
        return self

    def with_protocol(self, value: str) -> ModelsGameServer:
        self.protocol = value
        return self

    def with_provider(self, value: str) -> ModelsGameServer:
        self.provider = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "custom_attribute"):
            result["custom_attribute"] = str(self.custom_attribute)
        elif include_empty:
            result["custom_attribute"] = ""
        if hasattr(self, "is_override_game_version"):
            result["is_override_game_version"] = bool(self.is_override_game_version)
        elif include_empty:
            result["is_override_game_version"] = False
        if hasattr(self, "last_update"):
            result["last_update"] = str(self.last_update)
        elif include_empty:
            result["last_update"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = ""
        if hasattr(self, "session_id"):
            result["session_id"] = str(self.session_id)
        elif include_empty:
            result["session_id"] = ""
        if hasattr(self, "source"):
            result["source"] = str(self.source)
        elif include_empty:
            result["source"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = ""
        if hasattr(self, "alternate_ips"):
            result["alternate_ips"] = [str(i0) for i0 in self.alternate_ips]
        elif include_empty:
            result["alternate_ips"] = []
        if hasattr(self, "ams_protocol"):
            result["ams_protocol"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.ams_protocol
            ]
        elif include_empty:
            result["ams_protocol"] = []
        if hasattr(self, "deployment"):
            result["deployment"] = str(self.deployment)
        elif include_empty:
            result["deployment"] = ""
        if hasattr(self, "game_version"):
            result["game_version"] = str(self.game_version)
        elif include_empty:
            result["game_version"] = ""
        if hasattr(self, "image_version"):
            result["image_version"] = str(self.image_version)
        elif include_empty:
            result["image_version"] = ""
        if hasattr(self, "ip"):
            result["ip"] = str(self.ip)
        elif include_empty:
            result["ip"] = ""
        if hasattr(self, "pod_name"):
            result["pod_name"] = str(self.pod_name)
        elif include_empty:
            result["pod_name"] = ""
        if hasattr(self, "port"):
            result["port"] = int(self.port)
        elif include_empty:
            result["port"] = 0
        if hasattr(self, "ports"):
            result["ports"] = {str(k0): int(v0) for k0, v0 in self.ports.items()}
        elif include_empty:
            result["ports"] = {}
        if hasattr(self, "protocol"):
            result["protocol"] = str(self.protocol)
        elif include_empty:
            result["protocol"] = ""
        if hasattr(self, "provider"):
            result["provider"] = str(self.provider)
        elif include_empty:
            result["provider"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        custom_attribute: str,
        is_override_game_version: bool,
        last_update: str,
        namespace: str,
        region: str,
        session_id: str,
        source: str,
        status: str,
        alternate_ips: Optional[List[str]] = None,
        ams_protocol: Optional[List[ModelsPortConfigurationAMS]] = None,
        deployment: Optional[str] = None,
        game_version: Optional[str] = None,
        image_version: Optional[str] = None,
        ip: Optional[str] = None,
        pod_name: Optional[str] = None,
        port: Optional[int] = None,
        ports: Optional[Dict[str, int]] = None,
        protocol: Optional[str] = None,
        provider: Optional[str] = None,
        **kwargs,
    ) -> ModelsGameServer:
        instance = cls()
        instance.custom_attribute = custom_attribute
        instance.is_override_game_version = is_override_game_version
        instance.last_update = last_update
        instance.namespace = namespace
        instance.region = region
        instance.session_id = session_id
        instance.source = source
        instance.status = status
        if alternate_ips is not None:
            instance.alternate_ips = alternate_ips
        if ams_protocol is not None:
            instance.ams_protocol = ams_protocol
        if deployment is not None:
            instance.deployment = deployment
        if game_version is not None:
            instance.game_version = game_version
        if image_version is not None:
            instance.image_version = image_version
        if ip is not None:
            instance.ip = ip
        if pod_name is not None:
            instance.pod_name = pod_name
        if port is not None:
            instance.port = port
        if ports is not None:
            instance.ports = ports
        if protocol is not None:
            instance.protocol = protocol
        if provider is not None:
            instance.provider = provider
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsGameServer:
        instance = cls()
        if not dict_:
            return instance
        if "custom_attribute" in dict_ and dict_["custom_attribute"] is not None:
            instance.custom_attribute = str(dict_["custom_attribute"])
        elif include_empty:
            instance.custom_attribute = ""
        if (
            "is_override_game_version" in dict_
            and dict_["is_override_game_version"] is not None
        ):
            instance.is_override_game_version = bool(dict_["is_override_game_version"])
        elif include_empty:
            instance.is_override_game_version = False
        if "last_update" in dict_ and dict_["last_update"] is not None:
            instance.last_update = str(dict_["last_update"])
        elif include_empty:
            instance.last_update = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = ""
        if "session_id" in dict_ and dict_["session_id"] is not None:
            instance.session_id = str(dict_["session_id"])
        elif include_empty:
            instance.session_id = ""
        if "source" in dict_ and dict_["source"] is not None:
            instance.source = str(dict_["source"])
        elif include_empty:
            instance.source = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = ""
        if "alternate_ips" in dict_ and dict_["alternate_ips"] is not None:
            instance.alternate_ips = [str(i0) for i0 in dict_["alternate_ips"]]
        elif include_empty:
            instance.alternate_ips = []
        if "ams_protocol" in dict_ and dict_["ams_protocol"] is not None:
            instance.ams_protocol = [
                ModelsPortConfigurationAMS.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["ams_protocol"]
            ]
        elif include_empty:
            instance.ams_protocol = []
        if "deployment" in dict_ and dict_["deployment"] is not None:
            instance.deployment = str(dict_["deployment"])
        elif include_empty:
            instance.deployment = ""
        if "game_version" in dict_ and dict_["game_version"] is not None:
            instance.game_version = str(dict_["game_version"])
        elif include_empty:
            instance.game_version = ""
        if "image_version" in dict_ and dict_["image_version"] is not None:
            instance.image_version = str(dict_["image_version"])
        elif include_empty:
            instance.image_version = ""
        if "ip" in dict_ and dict_["ip"] is not None:
            instance.ip = str(dict_["ip"])
        elif include_empty:
            instance.ip = ""
        if "pod_name" in dict_ and dict_["pod_name"] is not None:
            instance.pod_name = str(dict_["pod_name"])
        elif include_empty:
            instance.pod_name = ""
        if "port" in dict_ and dict_["port"] is not None:
            instance.port = int(dict_["port"])
        elif include_empty:
            instance.port = 0
        if "ports" in dict_ and dict_["ports"] is not None:
            instance.ports = {str(k0): int(v0) for k0, v0 in dict_["ports"].items()}
        elif include_empty:
            instance.ports = {}
        if "protocol" in dict_ and dict_["protocol"] is not None:
            instance.protocol = str(dict_["protocol"])
        elif include_empty:
            instance.protocol = ""
        if "provider" in dict_ and dict_["provider"] is not None:
            instance.provider = str(dict_["provider"])
        elif include_empty:
            instance.provider = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsGameServer]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsGameServer]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ModelsGameServer, List[ModelsGameServer], Dict[Any, ModelsGameServer]]:
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
            "custom_attribute": "custom_attribute",
            "is_override_game_version": "is_override_game_version",
            "last_update": "last_update",
            "namespace": "namespace",
            "region": "region",
            "session_id": "session_id",
            "source": "source",
            "status": "status",
            "alternate_ips": "alternate_ips",
            "ams_protocol": "ams_protocol",
            "deployment": "deployment",
            "game_version": "game_version",
            "image_version": "image_version",
            "ip": "ip",
            "pod_name": "pod_name",
            "port": "port",
            "ports": "ports",
            "protocol": "protocol",
            "provider": "provider",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "custom_attribute": True,
            "is_override_game_version": True,
            "last_update": True,
            "namespace": True,
            "region": True,
            "session_id": True,
            "source": True,
            "status": True,
            "alternate_ips": False,
            "ams_protocol": False,
            "deployment": False,
            "game_version": False,
            "image_version": False,
            "ip": False,
            "pod_name": False,
            "port": False,
            "ports": False,
            "protocol": False,
            "provider": False,
        }

    # endregion static methods
