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


class GeneratedUpdateAppV1Response(Model):
    """Generated update app V1 response (generated.UpdateAppV1Response)

    Properties:
        app_id: (appId) OPTIONAL str

        app_name: (appName) OPTIONAL str

        app_repo_arn: (appRepoArn) OPTIONAL str

        app_repo_url: (appRepoUrl) OPTIONAL str

        deleted_at: (deletedAt) OPTIONAL str

        description: (description) OPTIONAL str

        message: (message) OPTIONAL str

        scenario: (scenario) OPTIONAL str

        service_url: (serviceURL) OPTIONAL str

        status: (status) OPTIONAL str

        updated_at: (updatedAt) OPTIONAL str
    """

    # region fields

    app_id: str  # OPTIONAL
    app_name: str  # OPTIONAL
    app_repo_arn: str  # OPTIONAL
    app_repo_url: str  # OPTIONAL
    deleted_at: str  # OPTIONAL
    description: str  # OPTIONAL
    message: str  # OPTIONAL
    scenario: str  # OPTIONAL
    service_url: str  # OPTIONAL
    status: str  # OPTIONAL
    updated_at: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_app_id(self, value: str) -> GeneratedUpdateAppV1Response:
        self.app_id = value
        return self

    def with_app_name(self, value: str) -> GeneratedUpdateAppV1Response:
        self.app_name = value
        return self

    def with_app_repo_arn(self, value: str) -> GeneratedUpdateAppV1Response:
        self.app_repo_arn = value
        return self

    def with_app_repo_url(self, value: str) -> GeneratedUpdateAppV1Response:
        self.app_repo_url = value
        return self

    def with_deleted_at(self, value: str) -> GeneratedUpdateAppV1Response:
        self.deleted_at = value
        return self

    def with_description(self, value: str) -> GeneratedUpdateAppV1Response:
        self.description = value
        return self

    def with_message(self, value: str) -> GeneratedUpdateAppV1Response:
        self.message = value
        return self

    def with_scenario(self, value: str) -> GeneratedUpdateAppV1Response:
        self.scenario = value
        return self

    def with_service_url(self, value: str) -> GeneratedUpdateAppV1Response:
        self.service_url = value
        return self

    def with_status(self, value: str) -> GeneratedUpdateAppV1Response:
        self.status = value
        return self

    def with_updated_at(self, value: str) -> GeneratedUpdateAppV1Response:
        self.updated_at = value
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
        if hasattr(self, "app_repo_arn"):
            result["appRepoArn"] = str(self.app_repo_arn)
        elif include_empty:
            result["appRepoArn"] = ""
        if hasattr(self, "app_repo_url"):
            result["appRepoUrl"] = str(self.app_repo_url)
        elif include_empty:
            result["appRepoUrl"] = ""
        if hasattr(self, "deleted_at"):
            result["deletedAt"] = str(self.deleted_at)
        elif include_empty:
            result["deletedAt"] = ""
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
        app_id: Optional[str] = None,
        app_name: Optional[str] = None,
        app_repo_arn: Optional[str] = None,
        app_repo_url: Optional[str] = None,
        deleted_at: Optional[str] = None,
        description: Optional[str] = None,
        message: Optional[str] = None,
        scenario: Optional[str] = None,
        service_url: Optional[str] = None,
        status: Optional[str] = None,
        updated_at: Optional[str] = None,
        **kwargs,
    ) -> GeneratedUpdateAppV1Response:
        instance = cls()
        if app_id is not None:
            instance.app_id = app_id
        if app_name is not None:
            instance.app_name = app_name
        if app_repo_arn is not None:
            instance.app_repo_arn = app_repo_arn
        if app_repo_url is not None:
            instance.app_repo_url = app_repo_url
        if deleted_at is not None:
            instance.deleted_at = deleted_at
        if description is not None:
            instance.description = description
        if message is not None:
            instance.message = message
        if scenario is not None:
            instance.scenario = scenario
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
    ) -> GeneratedUpdateAppV1Response:
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
        if "appRepoArn" in dict_ and dict_["appRepoArn"] is not None:
            instance.app_repo_arn = str(dict_["appRepoArn"])
        elif include_empty:
            instance.app_repo_arn = ""
        if "appRepoUrl" in dict_ and dict_["appRepoUrl"] is not None:
            instance.app_repo_url = str(dict_["appRepoUrl"])
        elif include_empty:
            instance.app_repo_url = ""
        if "deletedAt" in dict_ and dict_["deletedAt"] is not None:
            instance.deleted_at = str(dict_["deletedAt"])
        elif include_empty:
            instance.deleted_at = ""
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
    ) -> Dict[str, GeneratedUpdateAppV1Response]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[GeneratedUpdateAppV1Response]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        GeneratedUpdateAppV1Response,
        List[GeneratedUpdateAppV1Response],
        Dict[Any, GeneratedUpdateAppV1Response],
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
            "appId": "app_id",
            "appName": "app_name",
            "appRepoArn": "app_repo_arn",
            "appRepoUrl": "app_repo_url",
            "deletedAt": "deleted_at",
            "description": "description",
            "message": "message",
            "scenario": "scenario",
            "serviceURL": "service_url",
            "status": "status",
            "updatedAt": "updated_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "appId": False,
            "appName": False,
            "appRepoArn": False,
            "appRepoUrl": False,
            "deletedAt": False,
            "description": False,
            "message": False,
            "scenario": False,
            "serviceURL": False,
            "status": False,
            "updatedAt": False,
        }

    # endregion static methods
