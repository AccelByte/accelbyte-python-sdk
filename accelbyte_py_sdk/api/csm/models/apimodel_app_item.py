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

from ..models.apimodel_autoscaling_response import ApimodelAutoscalingResponse
from ..models.apimodel_cpu_response import ApimodelCPUResponse
from ..models.apimodel_memory_response import ApimodelMemoryResponse
from ..models.apimodel_replica_response import ApimodelReplicaResponse


class ApimodelAppItem(Model):
    """Apimodel app item (apimodel.AppItem)

    Properties:
        app_id: (appId) REQUIRED str

        app_name: (appName) REQUIRED str

        app_status: (appStatus) REQUIRED str

        created_at: (createdAt) REQUIRED str

        game_name: (gameName) REQUIRED str

        is_resource_applied: (isResourceApplied) REQUIRED bool

        scenario: (scenario) REQUIRED str

        updated_at: (updatedAt) REQUIRED str

        vm_sharing_configuration: (vmSharingConfiguration) REQUIRED str

        app_repo_arn: (appRepoArn) OPTIONAL str

        app_repo_url: (appRepoUrl) OPTIONAL str

        autoscaling: (autoscaling) OPTIONAL ApimodelAutoscalingResponse

        base_path: (basePath) OPTIONAL str

        cpu: (cpu) OPTIONAL ApimodelCPUResponse

        deleted_at: (deletedAt) OPTIONAL str

        deployment_created_at: (deploymentCreatedAt) OPTIONAL str

        deployment_id: (deploymentId) OPTIONAL str

        deployment_image_tag: (deploymentImageTag) OPTIONAL str

        description: (description) OPTIONAL str

        memory: (memory) OPTIONAL ApimodelMemoryResponse

        message: (message) OPTIONAL str

        replica: (replica) OPTIONAL ApimodelReplicaResponse

        service_public_url: (servicePublicURL) OPTIONAL str

        service_url: (serviceURL) OPTIONAL str
    """

    # region fields

    app_id: str  # REQUIRED
    app_name: str  # REQUIRED
    app_status: str  # REQUIRED
    created_at: str  # REQUIRED
    game_name: str  # REQUIRED
    is_resource_applied: bool  # REQUIRED
    scenario: str  # REQUIRED
    updated_at: str  # REQUIRED
    vm_sharing_configuration: str  # REQUIRED
    app_repo_arn: str  # OPTIONAL
    app_repo_url: str  # OPTIONAL
    autoscaling: ApimodelAutoscalingResponse  # OPTIONAL
    base_path: str  # OPTIONAL
    cpu: ApimodelCPUResponse  # OPTIONAL
    deleted_at: str  # OPTIONAL
    deployment_created_at: str  # OPTIONAL
    deployment_id: str  # OPTIONAL
    deployment_image_tag: str  # OPTIONAL
    description: str  # OPTIONAL
    memory: ApimodelMemoryResponse  # OPTIONAL
    message: str  # OPTIONAL
    replica: ApimodelReplicaResponse  # OPTIONAL
    service_public_url: str  # OPTIONAL
    service_url: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_app_id(self, value: str) -> ApimodelAppItem:
        self.app_id = value
        return self

    def with_app_name(self, value: str) -> ApimodelAppItem:
        self.app_name = value
        return self

    def with_app_status(self, value: str) -> ApimodelAppItem:
        self.app_status = value
        return self

    def with_created_at(self, value: str) -> ApimodelAppItem:
        self.created_at = value
        return self

    def with_game_name(self, value: str) -> ApimodelAppItem:
        self.game_name = value
        return self

    def with_is_resource_applied(self, value: bool) -> ApimodelAppItem:
        self.is_resource_applied = value
        return self

    def with_scenario(self, value: str) -> ApimodelAppItem:
        self.scenario = value
        return self

    def with_updated_at(self, value: str) -> ApimodelAppItem:
        self.updated_at = value
        return self

    def with_vm_sharing_configuration(self, value: str) -> ApimodelAppItem:
        self.vm_sharing_configuration = value
        return self

    def with_app_repo_arn(self, value: str) -> ApimodelAppItem:
        self.app_repo_arn = value
        return self

    def with_app_repo_url(self, value: str) -> ApimodelAppItem:
        self.app_repo_url = value
        return self

    def with_autoscaling(self, value: ApimodelAutoscalingResponse) -> ApimodelAppItem:
        self.autoscaling = value
        return self

    def with_base_path(self, value: str) -> ApimodelAppItem:
        self.base_path = value
        return self

    def with_cpu(self, value: ApimodelCPUResponse) -> ApimodelAppItem:
        self.cpu = value
        return self

    def with_deleted_at(self, value: str) -> ApimodelAppItem:
        self.deleted_at = value
        return self

    def with_deployment_created_at(self, value: str) -> ApimodelAppItem:
        self.deployment_created_at = value
        return self

    def with_deployment_id(self, value: str) -> ApimodelAppItem:
        self.deployment_id = value
        return self

    def with_deployment_image_tag(self, value: str) -> ApimodelAppItem:
        self.deployment_image_tag = value
        return self

    def with_description(self, value: str) -> ApimodelAppItem:
        self.description = value
        return self

    def with_memory(self, value: ApimodelMemoryResponse) -> ApimodelAppItem:
        self.memory = value
        return self

    def with_message(self, value: str) -> ApimodelAppItem:
        self.message = value
        return self

    def with_replica(self, value: ApimodelReplicaResponse) -> ApimodelAppItem:
        self.replica = value
        return self

    def with_service_public_url(self, value: str) -> ApimodelAppItem:
        self.service_public_url = value
        return self

    def with_service_url(self, value: str) -> ApimodelAppItem:
        self.service_url = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "app_id"):
            result["appId"] = str(self.app_id)
        elif include_empty:
            result["appId"] = ""
        if hasattr(self, "app_name"):
            result["appName"] = str(self.app_name)
        elif include_empty:
            result["appName"] = ""
        if hasattr(self, "app_status"):
            result["appStatus"] = str(self.app_status)
        elif include_empty:
            result["appStatus"] = ""
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "game_name"):
            result["gameName"] = str(self.game_name)
        elif include_empty:
            result["gameName"] = ""
        if hasattr(self, "is_resource_applied"):
            result["isResourceApplied"] = bool(self.is_resource_applied)
        elif include_empty:
            result["isResourceApplied"] = False
        if hasattr(self, "scenario"):
            result["scenario"] = str(self.scenario)
        elif include_empty:
            result["scenario"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "vm_sharing_configuration"):
            result["vmSharingConfiguration"] = str(self.vm_sharing_configuration)
        elif include_empty:
            result["vmSharingConfiguration"] = ""
        if hasattr(self, "app_repo_arn"):
            result["appRepoArn"] = str(self.app_repo_arn)
        elif include_empty:
            result["appRepoArn"] = ""
        if hasattr(self, "app_repo_url"):
            result["appRepoUrl"] = str(self.app_repo_url)
        elif include_empty:
            result["appRepoUrl"] = ""
        if hasattr(self, "autoscaling"):
            result["autoscaling"] = self.autoscaling.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["autoscaling"] = ApimodelAutoscalingResponse()
        if hasattr(self, "base_path"):
            result["basePath"] = str(self.base_path)
        elif include_empty:
            result["basePath"] = ""
        if hasattr(self, "cpu"):
            result["cpu"] = self.cpu.to_dict(include_empty=include_empty)
        elif include_empty:
            result["cpu"] = ApimodelCPUResponse()
        if hasattr(self, "deleted_at"):
            result["deletedAt"] = str(self.deleted_at)
        elif include_empty:
            result["deletedAt"] = ""
        if hasattr(self, "deployment_created_at"):
            result["deploymentCreatedAt"] = str(self.deployment_created_at)
        elif include_empty:
            result["deploymentCreatedAt"] = ""
        if hasattr(self, "deployment_id"):
            result["deploymentId"] = str(self.deployment_id)
        elif include_empty:
            result["deploymentId"] = ""
        if hasattr(self, "deployment_image_tag"):
            result["deploymentImageTag"] = str(self.deployment_image_tag)
        elif include_empty:
            result["deploymentImageTag"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "memory"):
            result["memory"] = self.memory.to_dict(include_empty=include_empty)
        elif include_empty:
            result["memory"] = ApimodelMemoryResponse()
        if hasattr(self, "message"):
            result["message"] = str(self.message)
        elif include_empty:
            result["message"] = ""
        if hasattr(self, "replica"):
            result["replica"] = self.replica.to_dict(include_empty=include_empty)
        elif include_empty:
            result["replica"] = ApimodelReplicaResponse()
        if hasattr(self, "service_public_url"):
            result["servicePublicURL"] = str(self.service_public_url)
        elif include_empty:
            result["servicePublicURL"] = ""
        if hasattr(self, "service_url"):
            result["serviceURL"] = str(self.service_url)
        elif include_empty:
            result["serviceURL"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        app_id: str,
        app_name: str,
        app_status: str,
        created_at: str,
        game_name: str,
        is_resource_applied: bool,
        scenario: str,
        updated_at: str,
        vm_sharing_configuration: str,
        app_repo_arn: Optional[str] = None,
        app_repo_url: Optional[str] = None,
        autoscaling: Optional[ApimodelAutoscalingResponse] = None,
        base_path: Optional[str] = None,
        cpu: Optional[ApimodelCPUResponse] = None,
        deleted_at: Optional[str] = None,
        deployment_created_at: Optional[str] = None,
        deployment_id: Optional[str] = None,
        deployment_image_tag: Optional[str] = None,
        description: Optional[str] = None,
        memory: Optional[ApimodelMemoryResponse] = None,
        message: Optional[str] = None,
        replica: Optional[ApimodelReplicaResponse] = None,
        service_public_url: Optional[str] = None,
        service_url: Optional[str] = None,
        **kwargs,
    ) -> ApimodelAppItem:
        instance = cls()
        instance.app_id = app_id
        instance.app_name = app_name
        instance.app_status = app_status
        instance.created_at = created_at
        instance.game_name = game_name
        instance.is_resource_applied = is_resource_applied
        instance.scenario = scenario
        instance.updated_at = updated_at
        instance.vm_sharing_configuration = vm_sharing_configuration
        if app_repo_arn is not None:
            instance.app_repo_arn = app_repo_arn
        if app_repo_url is not None:
            instance.app_repo_url = app_repo_url
        if autoscaling is not None:
            instance.autoscaling = autoscaling
        if base_path is not None:
            instance.base_path = base_path
        if cpu is not None:
            instance.cpu = cpu
        if deleted_at is not None:
            instance.deleted_at = deleted_at
        if deployment_created_at is not None:
            instance.deployment_created_at = deployment_created_at
        if deployment_id is not None:
            instance.deployment_id = deployment_id
        if deployment_image_tag is not None:
            instance.deployment_image_tag = deployment_image_tag
        if description is not None:
            instance.description = description
        if memory is not None:
            instance.memory = memory
        if message is not None:
            instance.message = message
        if replica is not None:
            instance.replica = replica
        if service_public_url is not None:
            instance.service_public_url = service_public_url
        if service_url is not None:
            instance.service_url = service_url
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelAppItem:
        instance = cls()
        if not dict_:
            return instance
        if "appId" in dict_ and dict_["appId"] is not None:
            instance.app_id = str(dict_["appId"])
        elif include_empty:
            instance.app_id = ""
        if "appName" in dict_ and dict_["appName"] is not None:
            instance.app_name = str(dict_["appName"])
        elif include_empty:
            instance.app_name = ""
        if "appStatus" in dict_ and dict_["appStatus"] is not None:
            instance.app_status = str(dict_["appStatus"])
        elif include_empty:
            instance.app_status = ""
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "gameName" in dict_ and dict_["gameName"] is not None:
            instance.game_name = str(dict_["gameName"])
        elif include_empty:
            instance.game_name = ""
        if "isResourceApplied" in dict_ and dict_["isResourceApplied"] is not None:
            instance.is_resource_applied = bool(dict_["isResourceApplied"])
        elif include_empty:
            instance.is_resource_applied = False
        if "scenario" in dict_ and dict_["scenario"] is not None:
            instance.scenario = str(dict_["scenario"])
        elif include_empty:
            instance.scenario = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if (
            "vmSharingConfiguration" in dict_
            and dict_["vmSharingConfiguration"] is not None
        ):
            instance.vm_sharing_configuration = str(dict_["vmSharingConfiguration"])
        elif include_empty:
            instance.vm_sharing_configuration = ""
        if "appRepoArn" in dict_ and dict_["appRepoArn"] is not None:
            instance.app_repo_arn = str(dict_["appRepoArn"])
        elif include_empty:
            instance.app_repo_arn = ""
        if "appRepoUrl" in dict_ and dict_["appRepoUrl"] is not None:
            instance.app_repo_url = str(dict_["appRepoUrl"])
        elif include_empty:
            instance.app_repo_url = ""
        if "autoscaling" in dict_ and dict_["autoscaling"] is not None:
            instance.autoscaling = ApimodelAutoscalingResponse.create_from_dict(
                dict_["autoscaling"], include_empty=include_empty
            )
        elif include_empty:
            instance.autoscaling = ApimodelAutoscalingResponse()
        if "basePath" in dict_ and dict_["basePath"] is not None:
            instance.base_path = str(dict_["basePath"])
        elif include_empty:
            instance.base_path = ""
        if "cpu" in dict_ and dict_["cpu"] is not None:
            instance.cpu = ApimodelCPUResponse.create_from_dict(
                dict_["cpu"], include_empty=include_empty
            )
        elif include_empty:
            instance.cpu = ApimodelCPUResponse()
        if "deletedAt" in dict_ and dict_["deletedAt"] is not None:
            instance.deleted_at = str(dict_["deletedAt"])
        elif include_empty:
            instance.deleted_at = ""
        if "deploymentCreatedAt" in dict_ and dict_["deploymentCreatedAt"] is not None:
            instance.deployment_created_at = str(dict_["deploymentCreatedAt"])
        elif include_empty:
            instance.deployment_created_at = ""
        if "deploymentId" in dict_ and dict_["deploymentId"] is not None:
            instance.deployment_id = str(dict_["deploymentId"])
        elif include_empty:
            instance.deployment_id = ""
        if "deploymentImageTag" in dict_ and dict_["deploymentImageTag"] is not None:
            instance.deployment_image_tag = str(dict_["deploymentImageTag"])
        elif include_empty:
            instance.deployment_image_tag = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "memory" in dict_ and dict_["memory"] is not None:
            instance.memory = ApimodelMemoryResponse.create_from_dict(
                dict_["memory"], include_empty=include_empty
            )
        elif include_empty:
            instance.memory = ApimodelMemoryResponse()
        if "message" in dict_ and dict_["message"] is not None:
            instance.message = str(dict_["message"])
        elif include_empty:
            instance.message = ""
        if "replica" in dict_ and dict_["replica"] is not None:
            instance.replica = ApimodelReplicaResponse.create_from_dict(
                dict_["replica"], include_empty=include_empty
            )
        elif include_empty:
            instance.replica = ApimodelReplicaResponse()
        if "servicePublicURL" in dict_ and dict_["servicePublicURL"] is not None:
            instance.service_public_url = str(dict_["servicePublicURL"])
        elif include_empty:
            instance.service_public_url = ""
        if "serviceURL" in dict_ and dict_["serviceURL"] is not None:
            instance.service_url = str(dict_["serviceURL"])
        elif include_empty:
            instance.service_url = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelAppItem]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelAppItem]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ApimodelAppItem, List[ApimodelAppItem], Dict[Any, ApimodelAppItem]]:
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
            "appId": "app_id",
            "appName": "app_name",
            "appStatus": "app_status",
            "createdAt": "created_at",
            "gameName": "game_name",
            "isResourceApplied": "is_resource_applied",
            "scenario": "scenario",
            "updatedAt": "updated_at",
            "vmSharingConfiguration": "vm_sharing_configuration",
            "appRepoArn": "app_repo_arn",
            "appRepoUrl": "app_repo_url",
            "autoscaling": "autoscaling",
            "basePath": "base_path",
            "cpu": "cpu",
            "deletedAt": "deleted_at",
            "deploymentCreatedAt": "deployment_created_at",
            "deploymentId": "deployment_id",
            "deploymentImageTag": "deployment_image_tag",
            "description": "description",
            "memory": "memory",
            "message": "message",
            "replica": "replica",
            "servicePublicURL": "service_public_url",
            "serviceURL": "service_url",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "appId": True,
            "appName": True,
            "appStatus": True,
            "createdAt": True,
            "gameName": True,
            "isResourceApplied": True,
            "scenario": True,
            "updatedAt": True,
            "vmSharingConfiguration": True,
            "appRepoArn": False,
            "appRepoUrl": False,
            "autoscaling": False,
            "basePath": False,
            "cpu": False,
            "deletedAt": False,
            "deploymentCreatedAt": False,
            "deploymentId": False,
            "deploymentImageTag": False,
            "description": False,
            "memory": False,
            "message": False,
            "replica": False,
            "servicePublicURL": False,
            "serviceURL": False,
        }

    # endregion static methods
