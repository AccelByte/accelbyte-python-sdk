# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Session Service (2.6.1)

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


class ModelsGameServer(Model):
    """Models game server (models.GameServer)

    Properties:
        alternate_ips: (alternate_ips) REQUIRED List[str]

        custom_attribute: (custom_attribute) REQUIRED str

        deployment: (deployment) REQUIRED str

        game_version: (game_version) REQUIRED str

        image_version: (image_version) REQUIRED str

        ip: (ip) REQUIRED str

        is_override_game_version: (is_override_game_version) REQUIRED bool

        last_update: (last_update) REQUIRED str

        namespace: (namespace) REQUIRED str

        pod_name: (pod_name) REQUIRED str

        port: (port) REQUIRED int

        ports: (ports) REQUIRED Dict[str, int]

        protocol: (protocol) REQUIRED str

        provider: (provider) REQUIRED str

        region: (region) REQUIRED str

        session_id: (session_id) REQUIRED str

        status: (status) REQUIRED str
    """

    # region fields

    alternate_ips: List[str]  # REQUIRED
    custom_attribute: str  # REQUIRED
    deployment: str  # REQUIRED
    game_version: str  # REQUIRED
    image_version: str  # REQUIRED
    ip: str  # REQUIRED
    is_override_game_version: bool  # REQUIRED
    last_update: str  # REQUIRED
    namespace: str  # REQUIRED
    pod_name: str  # REQUIRED
    port: int  # REQUIRED
    ports: Dict[str, int]  # REQUIRED
    protocol: str  # REQUIRED
    provider: str  # REQUIRED
    region: str  # REQUIRED
    session_id: str  # REQUIRED
    status: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_alternate_ips(self, value: List[str]) -> ModelsGameServer:
        self.alternate_ips = value
        return self

    def with_custom_attribute(self, value: str) -> ModelsGameServer:
        self.custom_attribute = value
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

    def with_is_override_game_version(self, value: bool) -> ModelsGameServer:
        self.is_override_game_version = value
        return self

    def with_last_update(self, value: str) -> ModelsGameServer:
        self.last_update = value
        return self

    def with_namespace(self, value: str) -> ModelsGameServer:
        self.namespace = value
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

    def with_region(self, value: str) -> ModelsGameServer:
        self.region = value
        return self

    def with_session_id(self, value: str) -> ModelsGameServer:
        self.session_id = value
        return self

    def with_status(self, value: str) -> ModelsGameServer:
        self.status = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "alternate_ips"):
            result["alternate_ips"] = [str(i0) for i0 in self.alternate_ips]
        elif include_empty:
            result["alternate_ips"] = []
        if hasattr(self, "custom_attribute"):
            result["custom_attribute"] = str(self.custom_attribute)
        elif include_empty:
            result["custom_attribute"] = ""
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
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = ""
        if hasattr(self, "session_id"):
            result["session_id"] = str(self.session_id)
        elif include_empty:
            result["session_id"] = ""
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
        alternate_ips: List[str],
        custom_attribute: str,
        deployment: str,
        game_version: str,
        image_version: str,
        ip: str,
        is_override_game_version: bool,
        last_update: str,
        namespace: str,
        pod_name: str,
        port: int,
        ports: Dict[str, int],
        protocol: str,
        provider: str,
        region: str,
        session_id: str,
        status: str,
    ) -> ModelsGameServer:
        instance = cls()
        instance.alternate_ips = alternate_ips
        instance.custom_attribute = custom_attribute
        instance.deployment = deployment
        instance.game_version = game_version
        instance.image_version = image_version
        instance.ip = ip
        instance.is_override_game_version = is_override_game_version
        instance.last_update = last_update
        instance.namespace = namespace
        instance.pod_name = pod_name
        instance.port = port
        instance.ports = ports
        instance.protocol = protocol
        instance.provider = provider
        instance.region = region
        instance.session_id = session_id
        instance.status = status
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsGameServer:
        instance = cls()
        if not dict_:
            return instance
        if "alternate_ips" in dict_ and dict_["alternate_ips"] is not None:
            instance.alternate_ips = [str(i0) for i0 in dict_["alternate_ips"]]
        elif include_empty:
            instance.alternate_ips = []
        if "custom_attribute" in dict_ and dict_["custom_attribute"] is not None:
            instance.custom_attribute = str(dict_["custom_attribute"])
        elif include_empty:
            instance.custom_attribute = ""
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
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = ""
        if "session_id" in dict_ and dict_["session_id"] is not None:
            instance.session_id = str(dict_["session_id"])
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
            "alternate_ips": "alternate_ips",
            "custom_attribute": "custom_attribute",
            "deployment": "deployment",
            "game_version": "game_version",
            "image_version": "image_version",
            "ip": "ip",
            "is_override_game_version": "is_override_game_version",
            "last_update": "last_update",
            "namespace": "namespace",
            "pod_name": "pod_name",
            "port": "port",
            "ports": "ports",
            "protocol": "protocol",
            "provider": "provider",
            "region": "region",
            "session_id": "session_id",
            "status": "status",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "alternate_ips": True,
            "custom_attribute": True,
            "deployment": True,
            "game_version": True,
            "image_version": True,
            "ip": True,
            "is_override_game_version": True,
            "last_update": True,
            "namespace": True,
            "pod_name": True,
            "port": True,
            "ports": True,
            "protocol": True,
            "provider": True,
            "region": True,
            "session_id": True,
            "status": True,
        }

    # endregion static methods
