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


class GeneratedGetAppListV1DataItem(Model):
    """Generated get app list V1 data item (generated.GetAppListV1DataItem)

    Properties:
        deployment_created_at: (deploymentCreatedAt) REQUIRED str

        deployment_id: (deploymentId) REQUIRED str

        deployment_image_tag: (deploymentImageTag) REQUIRED str

        app_id: (appId) OPTIONAL str

        app_name: (appName) OPTIONAL str

        app_release_status: (app_release_status) OPTIONAL str

        app_repo_arn: (appRepoArn) OPTIONAL str

        app_repo_url: (appRepoUrl) OPTIONAL str

        app_status: (appStatus) OPTIONAL str

        base_path: (basePath) OPTIONAL str

        deleted_at: (deletedAt) OPTIONAL str

        deployment_status: (deployment_status) OPTIONAL str

        description: (description) OPTIONAL str

        message: (message) OPTIONAL str

        scenario: (scenario) OPTIONAL str

        service_public_url: (servicePublicURL) OPTIONAL str

        service_url: (serviceURL) OPTIONAL str

        status: (status) OPTIONAL str

        updated_at: (updatedAt) OPTIONAL str
    """

    # region fields

    deployment_created_at: str  # REQUIRED
    deployment_id: str  # REQUIRED
    deployment_image_tag: str  # REQUIRED
    app_id: str  # OPTIONAL
    app_name: str  # OPTIONAL
    app_release_status: str  # OPTIONAL
    app_repo_arn: str  # OPTIONAL
    app_repo_url: str  # OPTIONAL
    app_status: str  # OPTIONAL
    base_path: str  # OPTIONAL
    deleted_at: str  # OPTIONAL
    deployment_status: str  # OPTIONAL
    description: str  # OPTIONAL
    message: str  # OPTIONAL
    scenario: str  # OPTIONAL
    service_public_url: str  # OPTIONAL
    service_url: str  # OPTIONAL
    status: str  # OPTIONAL
    updated_at: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_deployment_created_at(self, value: str) -> GeneratedGetAppListV1DataItem:
        self.deployment_created_at = value
        return self

    def with_deployment_id(self, value: str) -> GeneratedGetAppListV1DataItem:
        self.deployment_id = value
        return self

    def with_deployment_image_tag(self, value: str) -> GeneratedGetAppListV1DataItem:
        self.deployment_image_tag = value
        return self

    def with_app_id(self, value: str) -> GeneratedGetAppListV1DataItem:
        self.app_id = value
        return self

    def with_app_name(self, value: str) -> GeneratedGetAppListV1DataItem:
        self.app_name = value
        return self

    def with_app_release_status(self, value: str) -> GeneratedGetAppListV1DataItem:
        self.app_release_status = value
        return self

    def with_app_repo_arn(self, value: str) -> GeneratedGetAppListV1DataItem:
        self.app_repo_arn = value
        return self

    def with_app_repo_url(self, value: str) -> GeneratedGetAppListV1DataItem:
        self.app_repo_url = value
        return self

    def with_app_status(self, value: str) -> GeneratedGetAppListV1DataItem:
        self.app_status = value
        return self

    def with_base_path(self, value: str) -> GeneratedGetAppListV1DataItem:
        self.base_path = value
        return self

    def with_deleted_at(self, value: str) -> GeneratedGetAppListV1DataItem:
        self.deleted_at = value
        return self

    def with_deployment_status(self, value: str) -> GeneratedGetAppListV1DataItem:
        self.deployment_status = value
        return self

    def with_description(self, value: str) -> GeneratedGetAppListV1DataItem:
        self.description = value
        return self

    def with_message(self, value: str) -> GeneratedGetAppListV1DataItem:
        self.message = value
        return self

    def with_scenario(self, value: str) -> GeneratedGetAppListV1DataItem:
        self.scenario = value
        return self

    def with_service_public_url(self, value: str) -> GeneratedGetAppListV1DataItem:
        self.service_public_url = value
        return self

    def with_service_url(self, value: str) -> GeneratedGetAppListV1DataItem:
        self.service_url = value
        return self

    def with_status(self, value: str) -> GeneratedGetAppListV1DataItem:
        self.status = value
        return self

    def with_updated_at(self, value: str) -> GeneratedGetAppListV1DataItem:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
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
        if hasattr(self, "app_id"):
            result["appId"] = str(self.app_id)
        elif include_empty:
            result["appId"] = ""
        if hasattr(self, "app_name"):
            result["appName"] = str(self.app_name)
        elif include_empty:
            result["appName"] = ""
        if hasattr(self, "app_release_status"):
            result["app_release_status"] = str(self.app_release_status)
        elif include_empty:
            result["app_release_status"] = ""
        if hasattr(self, "app_repo_arn"):
            result["appRepoArn"] = str(self.app_repo_arn)
        elif include_empty:
            result["appRepoArn"] = ""
        if hasattr(self, "app_repo_url"):
            result["appRepoUrl"] = str(self.app_repo_url)
        elif include_empty:
            result["appRepoUrl"] = ""
        if hasattr(self, "app_status"):
            result["appStatus"] = str(self.app_status)
        elif include_empty:
            result["appStatus"] = ""
        if hasattr(self, "base_path"):
            result["basePath"] = str(self.base_path)
        elif include_empty:
            result["basePath"] = ""
        if hasattr(self, "deleted_at"):
            result["deletedAt"] = str(self.deleted_at)
        elif include_empty:
            result["deletedAt"] = ""
        if hasattr(self, "deployment_status"):
            result["deployment_status"] = str(self.deployment_status)
        elif include_empty:
            result["deployment_status"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "message"):
            result["message"] = str(self.message)
        elif include_empty:
            result["message"] = ""
        if hasattr(self, "scenario"):
            result["scenario"] = str(self.scenario)
        elif include_empty:
            result["scenario"] = ""
        if hasattr(self, "service_public_url"):
            result["servicePublicURL"] = str(self.service_public_url)
        elif include_empty:
            result["servicePublicURL"] = ""
        if hasattr(self, "service_url"):
            result["serviceURL"] = str(self.service_url)
        elif include_empty:
            result["serviceURL"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        deployment_created_at: str,
        deployment_id: str,
        deployment_image_tag: str,
        app_id: Optional[str] = None,
        app_name: Optional[str] = None,
        app_release_status: Optional[str] = None,
        app_repo_arn: Optional[str] = None,
        app_repo_url: Optional[str] = None,
        app_status: Optional[str] = None,
        base_path: Optional[str] = None,
        deleted_at: Optional[str] = None,
        deployment_status: Optional[str] = None,
        description: Optional[str] = None,
        message: Optional[str] = None,
        scenario: Optional[str] = None,
        service_public_url: Optional[str] = None,
        service_url: Optional[str] = None,
        status: Optional[str] = None,
        updated_at: Optional[str] = None,
        **kwargs,
    ) -> GeneratedGetAppListV1DataItem:
        instance = cls()
        instance.deployment_created_at = deployment_created_at
        instance.deployment_id = deployment_id
        instance.deployment_image_tag = deployment_image_tag
        if app_id is not None:
            instance.app_id = app_id
        if app_name is not None:
            instance.app_name = app_name
        if app_release_status is not None:
            instance.app_release_status = app_release_status
        if app_repo_arn is not None:
            instance.app_repo_arn = app_repo_arn
        if app_repo_url is not None:
            instance.app_repo_url = app_repo_url
        if app_status is not None:
            instance.app_status = app_status
        if base_path is not None:
            instance.base_path = base_path
        if deleted_at is not None:
            instance.deleted_at = deleted_at
        if deployment_status is not None:
            instance.deployment_status = deployment_status
        if description is not None:
            instance.description = description
        if message is not None:
            instance.message = message
        if scenario is not None:
            instance.scenario = scenario
        if service_public_url is not None:
            instance.service_public_url = service_public_url
        if service_url is not None:
            instance.service_url = service_url
        if status is not None:
            instance.status = status
        if updated_at is not None:
            instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> GeneratedGetAppListV1DataItem:
        instance = cls()
        if not dict_:
            return instance
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
        if "appId" in dict_ and dict_["appId"] is not None:
            instance.app_id = str(dict_["appId"])
        elif include_empty:
            instance.app_id = ""
        if "appName" in dict_ and dict_["appName"] is not None:
            instance.app_name = str(dict_["appName"])
        elif include_empty:
            instance.app_name = ""
        if "app_release_status" in dict_ and dict_["app_release_status"] is not None:
            instance.app_release_status = str(dict_["app_release_status"])
        elif include_empty:
            instance.app_release_status = ""
        if "appRepoArn" in dict_ and dict_["appRepoArn"] is not None:
            instance.app_repo_arn = str(dict_["appRepoArn"])
        elif include_empty:
            instance.app_repo_arn = ""
        if "appRepoUrl" in dict_ and dict_["appRepoUrl"] is not None:
            instance.app_repo_url = str(dict_["appRepoUrl"])
        elif include_empty:
            instance.app_repo_url = ""
        if "appStatus" in dict_ and dict_["appStatus"] is not None:
            instance.app_status = str(dict_["appStatus"])
        elif include_empty:
            instance.app_status = ""
        if "basePath" in dict_ and dict_["basePath"] is not None:
            instance.base_path = str(dict_["basePath"])
        elif include_empty:
            instance.base_path = ""
        if "deletedAt" in dict_ and dict_["deletedAt"] is not None:
            instance.deleted_at = str(dict_["deletedAt"])
        elif include_empty:
            instance.deleted_at = ""
        if "deployment_status" in dict_ and dict_["deployment_status"] is not None:
            instance.deployment_status = str(dict_["deployment_status"])
        elif include_empty:
            instance.deployment_status = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "message" in dict_ and dict_["message"] is not None:
            instance.message = str(dict_["message"])
        elif include_empty:
            instance.message = ""
        if "scenario" in dict_ and dict_["scenario"] is not None:
            instance.scenario = str(dict_["scenario"])
        elif include_empty:
            instance.scenario = ""
        if "servicePublicURL" in dict_ and dict_["servicePublicURL"] is not None:
            instance.service_public_url = str(dict_["servicePublicURL"])
        elif include_empty:
            instance.service_public_url = ""
        if "serviceURL" in dict_ and dict_["serviceURL"] is not None:
            instance.service_url = str(dict_["serviceURL"])
        elif include_empty:
            instance.service_url = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, GeneratedGetAppListV1DataItem]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[GeneratedGetAppListV1DataItem]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        GeneratedGetAppListV1DataItem,
        List[GeneratedGetAppListV1DataItem],
        Dict[Any, GeneratedGetAppListV1DataItem],
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
            "deploymentCreatedAt": "deployment_created_at",
            "deploymentId": "deployment_id",
            "deploymentImageTag": "deployment_image_tag",
            "appId": "app_id",
            "appName": "app_name",
            "app_release_status": "app_release_status",
            "appRepoArn": "app_repo_arn",
            "appRepoUrl": "app_repo_url",
            "appStatus": "app_status",
            "basePath": "base_path",
            "deletedAt": "deleted_at",
            "deployment_status": "deployment_status",
            "description": "description",
            "message": "message",
            "scenario": "scenario",
            "servicePublicURL": "service_public_url",
            "serviceURL": "service_url",
            "status": "status",
            "updatedAt": "updated_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "deploymentCreatedAt": True,
            "deploymentId": True,
            "deploymentImageTag": True,
            "appId": False,
            "appName": False,
            "app_release_status": False,
            "appRepoArn": False,
            "appRepoUrl": False,
            "appStatus": False,
            "basePath": False,
            "deletedAt": False,
            "deployment_status": False,
            "description": False,
            "message": False,
            "scenario": False,
            "servicePublicURL": False,
            "serviceURL": False,
            "status": False,
            "updatedAt": False,
        }

    # endregion static methods
