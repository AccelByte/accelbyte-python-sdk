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


class ApimodelIntegrationListItem(Model):
    """Apimodel integration list item (apimodel.IntegrationListItem)

    Properties:
        app_id: (appId) REQUIRED str

        app_name: (appName) REQUIRED str

        created_at: (createdAt) REQUIRED str

        game_namespace: (gameNamespace) REQUIRED str

        integration_id: (integrationId) REQUIRED str

        resource_id: (resourceId) REQUIRED str

        scenario: (scenario) REQUIRED str

        status: (status) REQUIRED str

        status_message: (statusMessage) REQUIRED str

        studio_name: (studioName) REQUIRED str
    """

    # region fields

    app_id: str  # REQUIRED
    app_name: str  # REQUIRED
    created_at: str  # REQUIRED
    game_namespace: str  # REQUIRED
    integration_id: str  # REQUIRED
    resource_id: str  # REQUIRED
    scenario: str  # REQUIRED
    status: str  # REQUIRED
    status_message: str  # REQUIRED
    studio_name: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_app_id(self, value: str) -> ApimodelIntegrationListItem:
        self.app_id = value
        return self

    def with_app_name(self, value: str) -> ApimodelIntegrationListItem:
        self.app_name = value
        return self

    def with_created_at(self, value: str) -> ApimodelIntegrationListItem:
        self.created_at = value
        return self

    def with_game_namespace(self, value: str) -> ApimodelIntegrationListItem:
        self.game_namespace = value
        return self

    def with_integration_id(self, value: str) -> ApimodelIntegrationListItem:
        self.integration_id = value
        return self

    def with_resource_id(self, value: str) -> ApimodelIntegrationListItem:
        self.resource_id = value
        return self

    def with_scenario(self, value: str) -> ApimodelIntegrationListItem:
        self.scenario = value
        return self

    def with_status(self, value: str) -> ApimodelIntegrationListItem:
        self.status = value
        return self

    def with_status_message(self, value: str) -> ApimodelIntegrationListItem:
        self.status_message = value
        return self

    def with_studio_name(self, value: str) -> ApimodelIntegrationListItem:
        self.studio_name = value
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
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "game_namespace"):
            result["gameNamespace"] = str(self.game_namespace)
        elif include_empty:
            result["gameNamespace"] = ""
        if hasattr(self, "integration_id"):
            result["integrationId"] = str(self.integration_id)
        elif include_empty:
            result["integrationId"] = ""
        if hasattr(self, "resource_id"):
            result["resourceId"] = str(self.resource_id)
        elif include_empty:
            result["resourceId"] = ""
        if hasattr(self, "scenario"):
            result["scenario"] = str(self.scenario)
        elif include_empty:
            result["scenario"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = ""
        if hasattr(self, "status_message"):
            result["statusMessage"] = str(self.status_message)
        elif include_empty:
            result["statusMessage"] = ""
        if hasattr(self, "studio_name"):
            result["studioName"] = str(self.studio_name)
        elif include_empty:
            result["studioName"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        app_id: str,
        app_name: str,
        created_at: str,
        game_namespace: str,
        integration_id: str,
        resource_id: str,
        scenario: str,
        status: str,
        status_message: str,
        studio_name: str,
        **kwargs,
    ) -> ApimodelIntegrationListItem:
        instance = cls()
        instance.app_id = app_id
        instance.app_name = app_name
        instance.created_at = created_at
        instance.game_namespace = game_namespace
        instance.integration_id = integration_id
        instance.resource_id = resource_id
        instance.scenario = scenario
        instance.status = status
        instance.status_message = status_message
        instance.studio_name = studio_name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelIntegrationListItem:
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
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "gameNamespace" in dict_ and dict_["gameNamespace"] is not None:
            instance.game_namespace = str(dict_["gameNamespace"])
        elif include_empty:
            instance.game_namespace = ""
        if "integrationId" in dict_ and dict_["integrationId"] is not None:
            instance.integration_id = str(dict_["integrationId"])
        elif include_empty:
            instance.integration_id = ""
        if "resourceId" in dict_ and dict_["resourceId"] is not None:
            instance.resource_id = str(dict_["resourceId"])
        elif include_empty:
            instance.resource_id = ""
        if "scenario" in dict_ and dict_["scenario"] is not None:
            instance.scenario = str(dict_["scenario"])
        elif include_empty:
            instance.scenario = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = ""
        if "statusMessage" in dict_ and dict_["statusMessage"] is not None:
            instance.status_message = str(dict_["statusMessage"])
        elif include_empty:
            instance.status_message = ""
        if "studioName" in dict_ and dict_["studioName"] is not None:
            instance.studio_name = str(dict_["studioName"])
        elif include_empty:
            instance.studio_name = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelIntegrationListItem]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelIntegrationListItem]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelIntegrationListItem,
        List[ApimodelIntegrationListItem],
        Dict[Any, ApimodelIntegrationListItem],
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
            "createdAt": "created_at",
            "gameNamespace": "game_namespace",
            "integrationId": "integration_id",
            "resourceId": "resource_id",
            "scenario": "scenario",
            "status": "status",
            "statusMessage": "status_message",
            "studioName": "studio_name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "appId": True,
            "appName": True,
            "createdAt": True,
            "gameNamespace": True,
            "integrationId": True,
            "resourceId": True,
            "scenario": True,
            "status": True,
            "statusMessage": True,
            "studioName": True,
        }

    # endregion static methods
