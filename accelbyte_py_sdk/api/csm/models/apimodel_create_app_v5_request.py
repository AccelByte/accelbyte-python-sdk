# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Custom Service Manager

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

from ..models.createappparams_autoscaling_request import (
    CreateappparamsAutoscalingRequest,
)
from ..models.createappparams_cpu_request import CreateappparamsCPURequest
from ..models.createappparams_memory_request import CreateappparamsMemoryRequest
from ..models.createappparams_replica_request import CreateappparamsReplicaRequest


class ApimodelCreateAppV5Request(Model):
    """Apimodel create app V5 request (apimodel.CreateAppV5Request)

    Properties:
        scenario: (scenario) REQUIRED str

        autoscaling: (autoscaling) OPTIONAL CreateappparamsAutoscalingRequest

        cpu: (cpu) OPTIONAL CreateappparamsCPURequest

        description: (description) OPTIONAL str

        memory: (memory) OPTIONAL CreateappparamsMemoryRequest

        preferred_k8s_namespace: (preferred_k8s_namespace) OPTIONAL str

        replica: (replica) OPTIONAL CreateappparamsReplicaRequest

        vm_sharing_configuration: (vmSharingConfiguration) OPTIONAL str
    """

    # region fields

    scenario: str  # REQUIRED
    autoscaling: CreateappparamsAutoscalingRequest  # OPTIONAL
    cpu: CreateappparamsCPURequest  # OPTIONAL
    description: str  # OPTIONAL
    memory: CreateappparamsMemoryRequest  # OPTIONAL
    preferred_k8s_namespace: str  # OPTIONAL
    replica: CreateappparamsReplicaRequest  # OPTIONAL
    vm_sharing_configuration: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_scenario(self, value: str) -> ApimodelCreateAppV5Request:
        self.scenario = value
        return self

    def with_autoscaling(
        self, value: CreateappparamsAutoscalingRequest
    ) -> ApimodelCreateAppV5Request:
        self.autoscaling = value
        return self

    def with_cpu(self, value: CreateappparamsCPURequest) -> ApimodelCreateAppV5Request:
        self.cpu = value
        return self

    def with_description(self, value: str) -> ApimodelCreateAppV5Request:
        self.description = value
        return self

    def with_memory(
        self, value: CreateappparamsMemoryRequest
    ) -> ApimodelCreateAppV5Request:
        self.memory = value
        return self

    def with_preferred_k8s_namespace(self, value: str) -> ApimodelCreateAppV5Request:
        self.preferred_k8s_namespace = value
        return self

    def with_replica(
        self, value: CreateappparamsReplicaRequest
    ) -> ApimodelCreateAppV5Request:
        self.replica = value
        return self

    def with_vm_sharing_configuration(self, value: str) -> ApimodelCreateAppV5Request:
        self.vm_sharing_configuration = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "scenario"):
            result["scenario"] = str(self.scenario)
        elif include_empty:
            result["scenario"] = ""
        if hasattr(self, "autoscaling"):
            result["autoscaling"] = self.autoscaling.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["autoscaling"] = CreateappparamsAutoscalingRequest()
        if hasattr(self, "cpu"):
            result["cpu"] = self.cpu.to_dict(include_empty=include_empty)
        elif include_empty:
            result["cpu"] = CreateappparamsCPURequest()
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "memory"):
            result["memory"] = self.memory.to_dict(include_empty=include_empty)
        elif include_empty:
            result["memory"] = CreateappparamsMemoryRequest()
        if hasattr(self, "preferred_k8s_namespace"):
            result["preferred_k8s_namespace"] = str(self.preferred_k8s_namespace)
        elif include_empty:
            result["preferred_k8s_namespace"] = ""
        if hasattr(self, "replica"):
            result["replica"] = self.replica.to_dict(include_empty=include_empty)
        elif include_empty:
            result["replica"] = CreateappparamsReplicaRequest()
        if hasattr(self, "vm_sharing_configuration"):
            result["vmSharingConfiguration"] = str(self.vm_sharing_configuration)
        elif include_empty:
            result["vmSharingConfiguration"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        scenario: str,
        autoscaling: Optional[CreateappparamsAutoscalingRequest] = None,
        cpu: Optional[CreateappparamsCPURequest] = None,
        description: Optional[str] = None,
        memory: Optional[CreateappparamsMemoryRequest] = None,
        preferred_k8s_namespace: Optional[str] = None,
        replica: Optional[CreateappparamsReplicaRequest] = None,
        vm_sharing_configuration: Optional[str] = None,
        **kwargs,
    ) -> ApimodelCreateAppV5Request:
        instance = cls()
        instance.scenario = scenario
        if autoscaling is not None:
            instance.autoscaling = autoscaling
        if cpu is not None:
            instance.cpu = cpu
        if description is not None:
            instance.description = description
        if memory is not None:
            instance.memory = memory
        if preferred_k8s_namespace is not None:
            instance.preferred_k8s_namespace = preferred_k8s_namespace
        if replica is not None:
            instance.replica = replica
        if vm_sharing_configuration is not None:
            instance.vm_sharing_configuration = vm_sharing_configuration
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelCreateAppV5Request:
        instance = cls()
        if not dict_:
            return instance
        if "scenario" in dict_ and dict_["scenario"] is not None:
            instance.scenario = str(dict_["scenario"])
        elif include_empty:
            instance.scenario = ""
        if "autoscaling" in dict_ and dict_["autoscaling"] is not None:
            instance.autoscaling = CreateappparamsAutoscalingRequest.create_from_dict(
                dict_["autoscaling"], include_empty=include_empty
            )
        elif include_empty:
            instance.autoscaling = CreateappparamsAutoscalingRequest()
        if "cpu" in dict_ and dict_["cpu"] is not None:
            instance.cpu = CreateappparamsCPURequest.create_from_dict(
                dict_["cpu"], include_empty=include_empty
            )
        elif include_empty:
            instance.cpu = CreateappparamsCPURequest()
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "memory" in dict_ and dict_["memory"] is not None:
            instance.memory = CreateappparamsMemoryRequest.create_from_dict(
                dict_["memory"], include_empty=include_empty
            )
        elif include_empty:
            instance.memory = CreateappparamsMemoryRequest()
        if (
            "preferred_k8s_namespace" in dict_
            and dict_["preferred_k8s_namespace"] is not None
        ):
            instance.preferred_k8s_namespace = str(dict_["preferred_k8s_namespace"])
        elif include_empty:
            instance.preferred_k8s_namespace = ""
        if "replica" in dict_ and dict_["replica"] is not None:
            instance.replica = CreateappparamsReplicaRequest.create_from_dict(
                dict_["replica"], include_empty=include_empty
            )
        elif include_empty:
            instance.replica = CreateappparamsReplicaRequest()
        if (
            "vmSharingConfiguration" in dict_
            and dict_["vmSharingConfiguration"] is not None
        ):
            instance.vm_sharing_configuration = str(dict_["vmSharingConfiguration"])
        elif include_empty:
            instance.vm_sharing_configuration = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelCreateAppV5Request]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelCreateAppV5Request]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelCreateAppV5Request,
        List[ApimodelCreateAppV5Request],
        Dict[Any, ApimodelCreateAppV5Request],
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
            "scenario": "scenario",
            "autoscaling": "autoscaling",
            "cpu": "cpu",
            "description": "description",
            "memory": "memory",
            "preferred_k8s_namespace": "preferred_k8s_namespace",
            "replica": "replica",
            "vmSharingConfiguration": "vm_sharing_configuration",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "scenario": True,
            "autoscaling": False,
            "cpu": False,
            "description": False,
            "memory": False,
            "preferred_k8s_namespace": False,
            "replica": False,
            "vmSharingConfiguration": False,
        }

    # endregion static methods
