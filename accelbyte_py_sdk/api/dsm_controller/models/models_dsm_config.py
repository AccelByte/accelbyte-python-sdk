# Auto-generated at 2021-10-14T22:17:08.944618+08:00
# from: Justice DsmController Service (2.4.0)

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

from ..models.models_deployment_config import ModelsDeploymentConfig
from ..models.models_deployment_with_override import ModelsDeploymentWithOverride
from ..models.models_pod_config import ModelsPodConfig


class ModelsDSMConfig(Model):
    """Models DSM config (models.DSMConfig)

    Properties:
        allow_version_override: (allow_version_override) REQUIRED bool

        artifact_path: (artifact_path) REQUIRED str

        buffer_count: (buffer_count) REQUIRED int

        claim_timeout: (claim_timeout) REQUIRED int

        configurations: (configurations) REQUIRED Dict[str, ModelsPodConfig]

        cpu_limit: (cpu_limit) REQUIRED int

        creation_timeout: (creation_timeout) REQUIRED int

        default_version: (default_version) REQUIRED str

        deployments: (deployments) REQUIRED Dict[str, ModelsDeploymentWithOverride]

        image_version_mapping: (image_version_mapping) REQUIRED Dict[str, str]

        max_count: (max_count) REQUIRED int

        mem_limit: (mem_limit) REQUIRED int

        min_count: (min_count) REQUIRED int

        namespace: (namespace) REQUIRED str

        overrides: (overrides) REQUIRED Dict[str, ModelsDeploymentConfig]

        params: (params) REQUIRED str

        port: (port) REQUIRED int

        ports: (ports) REQUIRED Dict[str, int]

        protocol: (protocol) REQUIRED str

        providers: (providers) REQUIRED List[str]

        session_timeout: (session_timeout) REQUIRED int

        unreachable_timeout: (unreachable_timeout) REQUIRED int

        version_image_size_mapping: (version_image_size_mapping) REQUIRED Dict[str, int]
    """

    # region fields

    allow_version_override: bool                                                                   # REQUIRED
    artifact_path: str                                                                             # REQUIRED
    buffer_count: int                                                                              # REQUIRED
    claim_timeout: int                                                                             # REQUIRED
    configurations: Dict[str, ModelsPodConfig]                                                     # REQUIRED
    cpu_limit: int                                                                                 # REQUIRED
    creation_timeout: int                                                                          # REQUIRED
    default_version: str                                                                           # REQUIRED
    deployments: Dict[str, ModelsDeploymentWithOverride]                                           # REQUIRED
    image_version_mapping: Dict[str, str]                                                          # REQUIRED
    max_count: int                                                                                 # REQUIRED
    mem_limit: int                                                                                 # REQUIRED
    min_count: int                                                                                 # REQUIRED
    namespace: str                                                                                 # REQUIRED
    overrides: Dict[str, ModelsDeploymentConfig]                                                   # REQUIRED
    params: str                                                                                    # REQUIRED
    port: int                                                                                      # REQUIRED
    ports: Dict[str, int]                                                                          # REQUIRED
    protocol: str                                                                                  # REQUIRED
    providers: List[str]                                                                           # REQUIRED
    session_timeout: int                                                                           # REQUIRED
    unreachable_timeout: int                                                                       # REQUIRED
    version_image_size_mapping: Dict[str, int]                                                     # REQUIRED

    # endregion fields

    # region with_x methods

    def with_allow_version_override(self, value: bool) -> ModelsDSMConfig:
        self.allow_version_override = value
        return self

    def with_artifact_path(self, value: str) -> ModelsDSMConfig:
        self.artifact_path = value
        return self

    def with_buffer_count(self, value: int) -> ModelsDSMConfig:
        self.buffer_count = value
        return self

    def with_claim_timeout(self, value: int) -> ModelsDSMConfig:
        self.claim_timeout = value
        return self

    def with_configurations(self, value: Dict[str, ModelsPodConfig]) -> ModelsDSMConfig:
        self.configurations = value
        return self

    def with_cpu_limit(self, value: int) -> ModelsDSMConfig:
        self.cpu_limit = value
        return self

    def with_creation_timeout(self, value: int) -> ModelsDSMConfig:
        self.creation_timeout = value
        return self

    def with_default_version(self, value: str) -> ModelsDSMConfig:
        self.default_version = value
        return self

    def with_deployments(self, value: Dict[str, ModelsDeploymentWithOverride]) -> ModelsDSMConfig:
        self.deployments = value
        return self

    def with_image_version_mapping(self, value: Dict[str, str]) -> ModelsDSMConfig:
        self.image_version_mapping = value
        return self

    def with_max_count(self, value: int) -> ModelsDSMConfig:
        self.max_count = value
        return self

    def with_mem_limit(self, value: int) -> ModelsDSMConfig:
        self.mem_limit = value
        return self

    def with_min_count(self, value: int) -> ModelsDSMConfig:
        self.min_count = value
        return self

    def with_namespace(self, value: str) -> ModelsDSMConfig:
        self.namespace = value
        return self

    def with_overrides(self, value: Dict[str, ModelsDeploymentConfig]) -> ModelsDSMConfig:
        self.overrides = value
        return self

    def with_params(self, value: str) -> ModelsDSMConfig:
        self.params = value
        return self

    def with_port(self, value: int) -> ModelsDSMConfig:
        self.port = value
        return self

    def with_ports(self, value: Dict[str, int]) -> ModelsDSMConfig:
        self.ports = value
        return self

    def with_protocol(self, value: str) -> ModelsDSMConfig:
        self.protocol = value
        return self

    def with_providers(self, value: List[str]) -> ModelsDSMConfig:
        self.providers = value
        return self

    def with_session_timeout(self, value: int) -> ModelsDSMConfig:
        self.session_timeout = value
        return self

    def with_unreachable_timeout(self, value: int) -> ModelsDSMConfig:
        self.unreachable_timeout = value
        return self

    def with_version_image_size_mapping(self, value: Dict[str, int]) -> ModelsDSMConfig:
        self.version_image_size_mapping = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "allow_version_override") and self.allow_version_override:
            result["allow_version_override"] = bool(self.allow_version_override)
        elif include_empty:
            result["allow_version_override"] = bool()
        if hasattr(self, "artifact_path") and self.artifact_path:
            result["artifact_path"] = str(self.artifact_path)
        elif include_empty:
            result["artifact_path"] = str()
        if hasattr(self, "buffer_count") and self.buffer_count:
            result["buffer_count"] = int(self.buffer_count)
        elif include_empty:
            result["buffer_count"] = int()
        if hasattr(self, "claim_timeout") and self.claim_timeout:
            result["claim_timeout"] = int(self.claim_timeout)
        elif include_empty:
            result["claim_timeout"] = int()
        if hasattr(self, "configurations") and self.configurations:
            result["configurations"] = {str(k0): v0.to_dict(include_empty=include_empty) for k0, v0 in self.configurations.items()}
        elif include_empty:
            result["configurations"] = {}
        if hasattr(self, "cpu_limit") and self.cpu_limit:
            result["cpu_limit"] = int(self.cpu_limit)
        elif include_empty:
            result["cpu_limit"] = int()
        if hasattr(self, "creation_timeout") and self.creation_timeout:
            result["creation_timeout"] = int(self.creation_timeout)
        elif include_empty:
            result["creation_timeout"] = int()
        if hasattr(self, "default_version") and self.default_version:
            result["default_version"] = str(self.default_version)
        elif include_empty:
            result["default_version"] = str()
        if hasattr(self, "deployments") and self.deployments:
            result["deployments"] = {str(k0): v0.to_dict(include_empty=include_empty) for k0, v0 in self.deployments.items()}
        elif include_empty:
            result["deployments"] = {}
        if hasattr(self, "image_version_mapping") and self.image_version_mapping:
            result["image_version_mapping"] = {str(k0): str(v0) for k0, v0 in self.image_version_mapping.items()}
        elif include_empty:
            result["image_version_mapping"] = {}
        if hasattr(self, "max_count") and self.max_count:
            result["max_count"] = int(self.max_count)
        elif include_empty:
            result["max_count"] = int()
        if hasattr(self, "mem_limit") and self.mem_limit:
            result["mem_limit"] = int(self.mem_limit)
        elif include_empty:
            result["mem_limit"] = int()
        if hasattr(self, "min_count") and self.min_count:
            result["min_count"] = int(self.min_count)
        elif include_empty:
            result["min_count"] = int()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "overrides") and self.overrides:
            result["overrides"] = {str(k0): v0.to_dict(include_empty=include_empty) for k0, v0 in self.overrides.items()}
        elif include_empty:
            result["overrides"] = {}
        if hasattr(self, "params") and self.params:
            result["params"] = str(self.params)
        elif include_empty:
            result["params"] = str()
        if hasattr(self, "port") and self.port:
            result["port"] = int(self.port)
        elif include_empty:
            result["port"] = int()
        if hasattr(self, "ports") and self.ports:
            result["ports"] = {str(k0): int(v0) for k0, v0 in self.ports.items()}
        elif include_empty:
            result["ports"] = {}
        if hasattr(self, "protocol") and self.protocol:
            result["protocol"] = str(self.protocol)
        elif include_empty:
            result["protocol"] = str()
        if hasattr(self, "providers") and self.providers:
            result["providers"] = [str(i0) for i0 in self.providers]
        elif include_empty:
            result["providers"] = []
        if hasattr(self, "session_timeout") and self.session_timeout:
            result["session_timeout"] = int(self.session_timeout)
        elif include_empty:
            result["session_timeout"] = int()
        if hasattr(self, "unreachable_timeout") and self.unreachable_timeout:
            result["unreachable_timeout"] = int(self.unreachable_timeout)
        elif include_empty:
            result["unreachable_timeout"] = int()
        if hasattr(self, "version_image_size_mapping") and self.version_image_size_mapping:
            result["version_image_size_mapping"] = {str(k0): int(v0) for k0, v0 in self.version_image_size_mapping.items()}
        elif include_empty:
            result["version_image_size_mapping"] = {}
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        allow_version_override: bool,
        artifact_path: str,
        buffer_count: int,
        claim_timeout: int,
        configurations: Dict[str, ModelsPodConfig],
        cpu_limit: int,
        creation_timeout: int,
        default_version: str,
        deployments: Dict[str, ModelsDeploymentWithOverride],
        image_version_mapping: Dict[str, str],
        max_count: int,
        mem_limit: int,
        min_count: int,
        namespace: str,
        overrides: Dict[str, ModelsDeploymentConfig],
        params: str,
        port: int,
        ports: Dict[str, int],
        protocol: str,
        providers: List[str],
        session_timeout: int,
        unreachable_timeout: int,
        version_image_size_mapping: Dict[str, int],
    ) -> ModelsDSMConfig:
        instance = cls()
        instance.allow_version_override = allow_version_override
        instance.artifact_path = artifact_path
        instance.buffer_count = buffer_count
        instance.claim_timeout = claim_timeout
        instance.configurations = configurations
        instance.cpu_limit = cpu_limit
        instance.creation_timeout = creation_timeout
        instance.default_version = default_version
        instance.deployments = deployments
        instance.image_version_mapping = image_version_mapping
        instance.max_count = max_count
        instance.mem_limit = mem_limit
        instance.min_count = min_count
        instance.namespace = namespace
        instance.overrides = overrides
        instance.params = params
        instance.port = port
        instance.ports = ports
        instance.protocol = protocol
        instance.providers = providers
        instance.session_timeout = session_timeout
        instance.unreachable_timeout = unreachable_timeout
        instance.version_image_size_mapping = version_image_size_mapping
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsDSMConfig:
        instance = cls()
        if not dict_:
            return instance
        if "allow_version_override" in dict_ and dict_["allow_version_override"] is not None:
            instance.allow_version_override = bool(dict_["allow_version_override"])
        elif include_empty:
            instance.allow_version_override = bool()
        if "artifact_path" in dict_ and dict_["artifact_path"] is not None:
            instance.artifact_path = str(dict_["artifact_path"])
        elif include_empty:
            instance.artifact_path = str()
        if "buffer_count" in dict_ and dict_["buffer_count"] is not None:
            instance.buffer_count = int(dict_["buffer_count"])
        elif include_empty:
            instance.buffer_count = int()
        if "claim_timeout" in dict_ and dict_["claim_timeout"] is not None:
            instance.claim_timeout = int(dict_["claim_timeout"])
        elif include_empty:
            instance.claim_timeout = int()
        if "configurations" in dict_ and dict_["configurations"] is not None:
            instance.configurations = {str(k0): ModelsPodConfig.create_from_dict(v0, include_empty=include_empty) for k0, v0 in dict_["configurations"].items()}
        elif include_empty:
            instance.configurations = {}
        if "cpu_limit" in dict_ and dict_["cpu_limit"] is not None:
            instance.cpu_limit = int(dict_["cpu_limit"])
        elif include_empty:
            instance.cpu_limit = int()
        if "creation_timeout" in dict_ and dict_["creation_timeout"] is not None:
            instance.creation_timeout = int(dict_["creation_timeout"])
        elif include_empty:
            instance.creation_timeout = int()
        if "default_version" in dict_ and dict_["default_version"] is not None:
            instance.default_version = str(dict_["default_version"])
        elif include_empty:
            instance.default_version = str()
        if "deployments" in dict_ and dict_["deployments"] is not None:
            instance.deployments = {str(k0): ModelsDeploymentWithOverride.create_from_dict(v0, include_empty=include_empty) for k0, v0 in dict_["deployments"].items()}
        elif include_empty:
            instance.deployments = {}
        if "image_version_mapping" in dict_ and dict_["image_version_mapping"] is not None:
            instance.image_version_mapping = {str(k0): str(v0) for k0, v0 in dict_["image_version_mapping"].items()}
        elif include_empty:
            instance.image_version_mapping = {}
        if "max_count" in dict_ and dict_["max_count"] is not None:
            instance.max_count = int(dict_["max_count"])
        elif include_empty:
            instance.max_count = int()
        if "mem_limit" in dict_ and dict_["mem_limit"] is not None:
            instance.mem_limit = int(dict_["mem_limit"])
        elif include_empty:
            instance.mem_limit = int()
        if "min_count" in dict_ and dict_["min_count"] is not None:
            instance.min_count = int(dict_["min_count"])
        elif include_empty:
            instance.min_count = int()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "overrides" in dict_ and dict_["overrides"] is not None:
            instance.overrides = {str(k0): ModelsDeploymentConfig.create_from_dict(v0, include_empty=include_empty) for k0, v0 in dict_["overrides"].items()}
        elif include_empty:
            instance.overrides = {}
        if "params" in dict_ and dict_["params"] is not None:
            instance.params = str(dict_["params"])
        elif include_empty:
            instance.params = str()
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
        if "version_image_size_mapping" in dict_ and dict_["version_image_size_mapping"] is not None:
            instance.version_image_size_mapping = {str(k0): int(v0) for k0, v0 in dict_["version_image_size_mapping"].items()}
        elif include_empty:
            instance.version_image_size_mapping = {}
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "allow_version_override": "allow_version_override",
            "artifact_path": "artifact_path",
            "buffer_count": "buffer_count",
            "claim_timeout": "claim_timeout",
            "configurations": "configurations",
            "cpu_limit": "cpu_limit",
            "creation_timeout": "creation_timeout",
            "default_version": "default_version",
            "deployments": "deployments",
            "image_version_mapping": "image_version_mapping",
            "max_count": "max_count",
            "mem_limit": "mem_limit",
            "min_count": "min_count",
            "namespace": "namespace",
            "overrides": "overrides",
            "params": "params",
            "port": "port",
            "ports": "ports",
            "protocol": "protocol",
            "providers": "providers",
            "session_timeout": "session_timeout",
            "unreachable_timeout": "unreachable_timeout",
            "version_image_size_mapping": "version_image_size_mapping",
        }

    # endregion static methods
