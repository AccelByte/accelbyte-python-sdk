# justice-dsm-controller-service (2.10.0)

# template file: justice_py_sdk_codegen/__main__.py

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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


class ModelsDSMConfigRecord(Model):
    """Models DSM config record (models.DSMConfigRecord)

    Properties:
        claim_timeout: (claim_timeout) REQUIRED int

        created_at: (createdAt) REQUIRED str

        creation_timeout: (creation_timeout) REQUIRED int

        default_version: (default_version) REQUIRED str

        modified_by: (modifiedBy) REQUIRED str

        namespace: (namespace) REQUIRED str

        port: (port) REQUIRED int

        ports: (ports) REQUIRED Dict[str, int]

        protocol: (protocol) REQUIRED str

        providers: (providers) REQUIRED List[str]

        session_timeout: (session_timeout) REQUIRED int

        unreachable_timeout: (unreachable_timeout) REQUIRED int

        updated_at: (updatedAt) REQUIRED str
    """

    # region fields

    claim_timeout: int                                                                             # REQUIRED
    created_at: str                                                                                # REQUIRED
    creation_timeout: int                                                                          # REQUIRED
    default_version: str                                                                           # REQUIRED
    modified_by: str                                                                               # REQUIRED
    namespace: str                                                                                 # REQUIRED
    port: int                                                                                      # REQUIRED
    ports: Dict[str, int]                                                                          # REQUIRED
    protocol: str                                                                                  # REQUIRED
    providers: List[str]                                                                           # REQUIRED
    session_timeout: int                                                                           # REQUIRED
    unreachable_timeout: int                                                                       # REQUIRED
    updated_at: str                                                                                # REQUIRED

    # endregion fields

    # region with_x methods

    def with_claim_timeout(self, value: int) -> ModelsDSMConfigRecord:
        self.claim_timeout = value
        return self

    def with_created_at(self, value: str) -> ModelsDSMConfigRecord:
        self.created_at = value
        return self

    def with_creation_timeout(self, value: int) -> ModelsDSMConfigRecord:
        self.creation_timeout = value
        return self

    def with_default_version(self, value: str) -> ModelsDSMConfigRecord:
        self.default_version = value
        return self

    def with_modified_by(self, value: str) -> ModelsDSMConfigRecord:
        self.modified_by = value
        return self

    def with_namespace(self, value: str) -> ModelsDSMConfigRecord:
        self.namespace = value
        return self

    def with_port(self, value: int) -> ModelsDSMConfigRecord:
        self.port = value
        return self

    def with_ports(self, value: Dict[str, int]) -> ModelsDSMConfigRecord:
        self.ports = value
        return self

    def with_protocol(self, value: str) -> ModelsDSMConfigRecord:
        self.protocol = value
        return self

    def with_providers(self, value: List[str]) -> ModelsDSMConfigRecord:
        self.providers = value
        return self

    def with_session_timeout(self, value: int) -> ModelsDSMConfigRecord:
        self.session_timeout = value
        return self

    def with_unreachable_timeout(self, value: int) -> ModelsDSMConfigRecord:
        self.unreachable_timeout = value
        return self

    def with_updated_at(self, value: str) -> ModelsDSMConfigRecord:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "claim_timeout"):
            result["claim_timeout"] = int(self.claim_timeout)
        elif include_empty:
            result["claim_timeout"] = int()
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = str()
        if hasattr(self, "creation_timeout"):
            result["creation_timeout"] = int(self.creation_timeout)
        elif include_empty:
            result["creation_timeout"] = int()
        if hasattr(self, "default_version"):
            result["default_version"] = str(self.default_version)
        elif include_empty:
            result["default_version"] = str()
        if hasattr(self, "modified_by"):
            result["modifiedBy"] = str(self.modified_by)
        elif include_empty:
            result["modifiedBy"] = str()
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "port"):
            result["port"] = int(self.port)
        elif include_empty:
            result["port"] = int()
        if hasattr(self, "ports"):
            result["ports"] = {str(k0): int(v0) for k0, v0 in self.ports.items()}
        elif include_empty:
            result["ports"] = {}
        if hasattr(self, "protocol"):
            result["protocol"] = str(self.protocol)
        elif include_empty:
            result["protocol"] = str()
        if hasattr(self, "providers"):
            result["providers"] = [str(i0) for i0 in self.providers]
        elif include_empty:
            result["providers"] = []
        if hasattr(self, "session_timeout"):
            result["session_timeout"] = int(self.session_timeout)
        elif include_empty:
            result["session_timeout"] = int()
        if hasattr(self, "unreachable_timeout"):
            result["unreachable_timeout"] = int(self.unreachable_timeout)
        elif include_empty:
            result["unreachable_timeout"] = int()
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        claim_timeout: int,
        created_at: str,
        creation_timeout: int,
        default_version: str,
        modified_by: str,
        namespace: str,
        port: int,
        ports: Dict[str, int],
        protocol: str,
        providers: List[str],
        session_timeout: int,
        unreachable_timeout: int,
        updated_at: str,
    ) -> ModelsDSMConfigRecord:
        instance = cls()
        instance.claim_timeout = claim_timeout
        instance.created_at = created_at
        instance.creation_timeout = creation_timeout
        instance.default_version = default_version
        instance.modified_by = modified_by
        instance.namespace = namespace
        instance.port = port
        instance.ports = ports
        instance.protocol = protocol
        instance.providers = providers
        instance.session_timeout = session_timeout
        instance.unreachable_timeout = unreachable_timeout
        instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsDSMConfigRecord:
        instance = cls()
        if not dict_:
            return instance
        if "claim_timeout" in dict_ and dict_["claim_timeout"] is not None:
            instance.claim_timeout = int(dict_["claim_timeout"])
        elif include_empty:
            instance.claim_timeout = int()
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = str()
        if "creation_timeout" in dict_ and dict_["creation_timeout"] is not None:
            instance.creation_timeout = int(dict_["creation_timeout"])
        elif include_empty:
            instance.creation_timeout = int()
        if "default_version" in dict_ and dict_["default_version"] is not None:
            instance.default_version = str(dict_["default_version"])
        elif include_empty:
            instance.default_version = str()
        if "modifiedBy" in dict_ and dict_["modifiedBy"] is not None:
            instance.modified_by = str(dict_["modifiedBy"])
        elif include_empty:
            instance.modified_by = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "port" in dict_ and dict_["port"] is not None:
            instance.port = int(dict_["port"])
        elif include_empty:
            instance.port = int()
        if "ports" in dict_ and dict_["ports"] is not None:
            instance.ports = {str(k0): int(v0) for k0, v0 in dict_["ports"].items()}
        elif include_empty:
            instance.ports = {}
        if "protocol" in dict_ and dict_["protocol"] is not None:
            instance.protocol = str(dict_["protocol"])
        elif include_empty:
            instance.protocol = str()
        if "providers" in dict_ and dict_["providers"] is not None:
            instance.providers = [str(i0) for i0 in dict_["providers"]]
        elif include_empty:
            instance.providers = []
        if "session_timeout" in dict_ and dict_["session_timeout"] is not None:
            instance.session_timeout = int(dict_["session_timeout"])
        elif include_empty:
            instance.session_timeout = int()
        if "unreachable_timeout" in dict_ and dict_["unreachable_timeout"] is not None:
            instance.unreachable_timeout = int(dict_["unreachable_timeout"])
        elif include_empty:
            instance.unreachable_timeout = int()
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "claim_timeout": "claim_timeout",
            "createdAt": "created_at",
            "creation_timeout": "creation_timeout",
            "default_version": "default_version",
            "modifiedBy": "modified_by",
            "namespace": "namespace",
            "port": "port",
            "ports": "ports",
            "protocol": "protocol",
            "providers": "providers",
            "session_timeout": "session_timeout",
            "unreachable_timeout": "unreachable_timeout",
            "updatedAt": "updated_at",
        }

    # endregion static methods
