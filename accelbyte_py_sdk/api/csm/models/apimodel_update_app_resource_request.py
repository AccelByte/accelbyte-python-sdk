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

from ..models.apimodel_autoscaling_request import ApimodelAutoscalingRequest
from ..models.apimodel_cpu_request import ApimodelCPURequest
from ..models.apimodel_memory_request import ApimodelMemoryRequest
from ..models.apimodel_replica_request import ApimodelReplicaRequest


class ApimodelUpdateAppResourceRequest(Model):
    """Apimodel update app resource request (apimodel.UpdateAppResourceRequest)

    Properties:
        autoscaling: (autoscaling) REQUIRED ApimodelAutoscalingRequest

        cpu: (cpu) OPTIONAL ApimodelCPURequest

        memory: (memory) OPTIONAL ApimodelMemoryRequest

        replica: (replica) OPTIONAL ApimodelReplicaRequest

        vm_sharing_configuration: (vmSharingConfiguration) OPTIONAL str
    """

    # region fields

    autoscaling: ApimodelAutoscalingRequest  # REQUIRED
    cpu: ApimodelCPURequest  # OPTIONAL
    memory: ApimodelMemoryRequest  # OPTIONAL
    replica: ApimodelReplicaRequest  # OPTIONAL
    vm_sharing_configuration: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_autoscaling(
        self, value: ApimodelAutoscalingRequest
    ) -> ApimodelUpdateAppResourceRequest:
        self.autoscaling = value
        return self

    def with_cpu(self, value: ApimodelCPURequest) -> ApimodelUpdateAppResourceRequest:
        self.cpu = value
        return self

    def with_memory(
        self, value: ApimodelMemoryRequest
    ) -> ApimodelUpdateAppResourceRequest:
        self.memory = value
        return self

    def with_replica(
        self, value: ApimodelReplicaRequest
    ) -> ApimodelUpdateAppResourceRequest:
        self.replica = value
        return self

    def with_vm_sharing_configuration(
        self, value: str
    ) -> ApimodelUpdateAppResourceRequest:
        self.vm_sharing_configuration = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "autoscaling"):
            result["autoscaling"] = self.autoscaling.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["autoscaling"] = ApimodelAutoscalingRequest()
        if hasattr(self, "cpu"):
            result["cpu"] = self.cpu.to_dict(include_empty=include_empty)
        elif include_empty:
            result["cpu"] = ApimodelCPURequest()
        if hasattr(self, "memory"):
            result["memory"] = self.memory.to_dict(include_empty=include_empty)
        elif include_empty:
            result["memory"] = ApimodelMemoryRequest()
        if hasattr(self, "replica"):
            result["replica"] = self.replica.to_dict(include_empty=include_empty)
        elif include_empty:
            result["replica"] = ApimodelReplicaRequest()
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
        autoscaling: ApimodelAutoscalingRequest,
        cpu: Optional[ApimodelCPURequest] = None,
        memory: Optional[ApimodelMemoryRequest] = None,
        replica: Optional[ApimodelReplicaRequest] = None,
        vm_sharing_configuration: Optional[str] = None,
        **kwargs,
    ) -> ApimodelUpdateAppResourceRequest:
        instance = cls()
        instance.autoscaling = autoscaling
        if cpu is not None:
            instance.cpu = cpu
        if memory is not None:
            instance.memory = memory
        if replica is not None:
            instance.replica = replica
        if vm_sharing_configuration is not None:
            instance.vm_sharing_configuration = vm_sharing_configuration
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelUpdateAppResourceRequest:
        instance = cls()
        if not dict_:
            return instance
        if "autoscaling" in dict_ and dict_["autoscaling"] is not None:
            instance.autoscaling = ApimodelAutoscalingRequest.create_from_dict(
                dict_["autoscaling"], include_empty=include_empty
            )
        elif include_empty:
            instance.autoscaling = ApimodelAutoscalingRequest()
        if "cpu" in dict_ and dict_["cpu"] is not None:
            instance.cpu = ApimodelCPURequest.create_from_dict(
                dict_["cpu"], include_empty=include_empty
            )
        elif include_empty:
            instance.cpu = ApimodelCPURequest()
        if "memory" in dict_ and dict_["memory"] is not None:
            instance.memory = ApimodelMemoryRequest.create_from_dict(
                dict_["memory"], include_empty=include_empty
            )
        elif include_empty:
            instance.memory = ApimodelMemoryRequest()
        if "replica" in dict_ and dict_["replica"] is not None:
            instance.replica = ApimodelReplicaRequest.create_from_dict(
                dict_["replica"], include_empty=include_empty
            )
        elif include_empty:
            instance.replica = ApimodelReplicaRequest()
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
    ) -> Dict[str, ApimodelUpdateAppResourceRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelUpdateAppResourceRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelUpdateAppResourceRequest,
        List[ApimodelUpdateAppResourceRequest],
        Dict[Any, ApimodelUpdateAppResourceRequest],
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
            "autoscaling": "autoscaling",
            "cpu": "cpu",
            "memory": "memory",
            "replica": "replica",
            "vmSharingConfiguration": "vm_sharing_configuration",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "autoscaling": True,
            "cpu": False,
            "memory": False,
            "replica": False,
            "vmSharingConfiguration": False,
        }

    # endregion static methods
