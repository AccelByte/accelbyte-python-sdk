# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Dsm Controller Service (3.10.1)

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


class ModelsCreateDSMConfigRequest(Model):
    """Models create DSM config request (models.CreateDSMConfigRequest)

    Properties:
        claim_timeout: (claim_timeout) REQUIRED int

        creation_timeout: (creation_timeout) REQUIRED int

        default_version: (default_version) REQUIRED str

        port: (port) REQUIRED int

        ports: (ports) REQUIRED Dict[str, int]

        protocol: (protocol) REQUIRED str

        providers: (providers) REQUIRED List[str]

        session_timeout: (session_timeout) REQUIRED int

        unreachable_timeout: (unreachable_timeout) REQUIRED int
    """

    # region fields

    claim_timeout: int  # REQUIRED
    creation_timeout: int  # REQUIRED
    default_version: str  # REQUIRED
    port: int  # REQUIRED
    ports: Dict[str, int]  # REQUIRED
    protocol: str  # REQUIRED
    providers: List[str]  # REQUIRED
    session_timeout: int  # REQUIRED
    unreachable_timeout: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_claim_timeout(self, value: int) -> ModelsCreateDSMConfigRequest:
        self.claim_timeout = value
        return self

    def with_creation_timeout(self, value: int) -> ModelsCreateDSMConfigRequest:
        self.creation_timeout = value
        return self

    def with_default_version(self, value: str) -> ModelsCreateDSMConfigRequest:
        self.default_version = value
        return self

    def with_port(self, value: int) -> ModelsCreateDSMConfigRequest:
        self.port = value
        return self

    def with_ports(self, value: Dict[str, int]) -> ModelsCreateDSMConfigRequest:
        self.ports = value
        return self

    def with_protocol(self, value: str) -> ModelsCreateDSMConfigRequest:
        self.protocol = value
        return self

    def with_providers(self, value: List[str]) -> ModelsCreateDSMConfigRequest:
        self.providers = value
        return self

    def with_session_timeout(self, value: int) -> ModelsCreateDSMConfigRequest:
        self.session_timeout = value
        return self

    def with_unreachable_timeout(self, value: int) -> ModelsCreateDSMConfigRequest:
        self.unreachable_timeout = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "claim_timeout"):
            result["claim_timeout"] = int(self.claim_timeout)
        elif include_empty:
            result["claim_timeout"] = 0
        if hasattr(self, "creation_timeout"):
            result["creation_timeout"] = int(self.creation_timeout)
        elif include_empty:
            result["creation_timeout"] = 0
        if hasattr(self, "default_version"):
            result["default_version"] = str(self.default_version)
        elif include_empty:
            result["default_version"] = ""
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
        if hasattr(self, "providers"):
            result["providers"] = [str(i0) for i0 in self.providers]
        elif include_empty:
            result["providers"] = []
        if hasattr(self, "session_timeout"):
            result["session_timeout"] = int(self.session_timeout)
        elif include_empty:
            result["session_timeout"] = 0
        if hasattr(self, "unreachable_timeout"):
            result["unreachable_timeout"] = int(self.unreachable_timeout)
        elif include_empty:
            result["unreachable_timeout"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        claim_timeout: int,
        creation_timeout: int,
        default_version: str,
        port: int,
        ports: Dict[str, int],
        protocol: str,
        providers: List[str],
        session_timeout: int,
        unreachable_timeout: int,
    ) -> ModelsCreateDSMConfigRequest:
        instance = cls()
        instance.claim_timeout = claim_timeout
        instance.creation_timeout = creation_timeout
        instance.default_version = default_version
        instance.port = port
        instance.ports = ports
        instance.protocol = protocol
        instance.providers = providers
        instance.session_timeout = session_timeout
        instance.unreachable_timeout = unreachable_timeout
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsCreateDSMConfigRequest:
        instance = cls()
        if not dict_:
            return instance
        if "claim_timeout" in dict_ and dict_["claim_timeout"] is not None:
            instance.claim_timeout = int(dict_["claim_timeout"])
        elif include_empty:
            instance.claim_timeout = 0
        if "creation_timeout" in dict_ and dict_["creation_timeout"] is not None:
            instance.creation_timeout = int(dict_["creation_timeout"])
        elif include_empty:
            instance.creation_timeout = 0
        if "default_version" in dict_ and dict_["default_version"] is not None:
            instance.default_version = str(dict_["default_version"])
        elif include_empty:
            instance.default_version = ""
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
        if "providers" in dict_ and dict_["providers"] is not None:
            instance.providers = [str(i0) for i0 in dict_["providers"]]
        elif include_empty:
            instance.providers = []
        if "session_timeout" in dict_ and dict_["session_timeout"] is not None:
            instance.session_timeout = int(dict_["session_timeout"])
        elif include_empty:
            instance.session_timeout = 0
        if "unreachable_timeout" in dict_ and dict_["unreachable_timeout"] is not None:
            instance.unreachable_timeout = int(dict_["unreachable_timeout"])
        elif include_empty:
            instance.unreachable_timeout = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsCreateDSMConfigRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsCreateDSMConfigRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsCreateDSMConfigRequest,
        List[ModelsCreateDSMConfigRequest],
        Dict[Any, ModelsCreateDSMConfigRequest],
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
            "claim_timeout": "claim_timeout",
            "creation_timeout": "creation_timeout",
            "default_version": "default_version",
            "port": "port",
            "ports": "ports",
            "protocol": "protocol",
            "providers": "providers",
            "session_timeout": "session_timeout",
            "unreachable_timeout": "unreachable_timeout",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "claim_timeout": True,
            "creation_timeout": True,
            "default_version": True,
            "port": True,
            "ports": True,
            "protocol": True,
            "providers": True,
            "session_timeout": True,
            "unreachable_timeout": True,
        }

    # endregion static methods
