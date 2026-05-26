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

from ..models.apimodel_integration_credential_info import (
    ApimodelIntegrationCredentialInfo,
)


class ApimodelGetIntegrationAppKeyValueResponse(Model):
    """Apimodel get integration app key value response (apimodel.GetIntegrationAppKeyValueResponse)

    Properties:
        accept_key_value_secure_credential_handling: (acceptKeyValueSecureCredentialHandling) REQUIRED bool

        app_id: (appId) REQUIRED str

        credentials: (credentials) REQUIRED ApimodelIntegrationCredentialInfo

        game_namespace: (gameNamespace) REQUIRED str

        hostnames: (hostnames) REQUIRED str

        integration_id: (integrationId) REQUIRED str

        platform_name: (platformName) REQUIRED str

        resource_id: (resourceId) REQUIRED str

        resource_status: (resourceStatus) REQUIRED str

        status: (status) REQUIRED str

        status_message: (statusMessage) REQUIRED str
    """

    # region fields

    accept_key_value_secure_credential_handling: bool  # REQUIRED
    app_id: str  # REQUIRED
    credentials: ApimodelIntegrationCredentialInfo  # REQUIRED
    game_namespace: str  # REQUIRED
    hostnames: str  # REQUIRED
    integration_id: str  # REQUIRED
    platform_name: str  # REQUIRED
    resource_id: str  # REQUIRED
    resource_status: str  # REQUIRED
    status: str  # REQUIRED
    status_message: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_accept_key_value_secure_credential_handling(
        self, value: bool
    ) -> ApimodelGetIntegrationAppKeyValueResponse:
        self.accept_key_value_secure_credential_handling = value
        return self

    def with_app_id(self, value: str) -> ApimodelGetIntegrationAppKeyValueResponse:
        self.app_id = value
        return self

    def with_credentials(
        self, value: ApimodelIntegrationCredentialInfo
    ) -> ApimodelGetIntegrationAppKeyValueResponse:
        self.credentials = value
        return self

    def with_game_namespace(
        self, value: str
    ) -> ApimodelGetIntegrationAppKeyValueResponse:
        self.game_namespace = value
        return self

    def with_hostnames(self, value: str) -> ApimodelGetIntegrationAppKeyValueResponse:
        self.hostnames = value
        return self

    def with_integration_id(
        self, value: str
    ) -> ApimodelGetIntegrationAppKeyValueResponse:
        self.integration_id = value
        return self

    def with_platform_name(
        self, value: str
    ) -> ApimodelGetIntegrationAppKeyValueResponse:
        self.platform_name = value
        return self

    def with_resource_id(self, value: str) -> ApimodelGetIntegrationAppKeyValueResponse:
        self.resource_id = value
        return self

    def with_resource_status(
        self, value: str
    ) -> ApimodelGetIntegrationAppKeyValueResponse:
        self.resource_status = value
        return self

    def with_status(self, value: str) -> ApimodelGetIntegrationAppKeyValueResponse:
        self.status = value
        return self

    def with_status_message(
        self, value: str
    ) -> ApimodelGetIntegrationAppKeyValueResponse:
        self.status_message = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "accept_key_value_secure_credential_handling"):
            result["acceptKeyValueSecureCredentialHandling"] = bool(
                self.accept_key_value_secure_credential_handling
            )
        elif include_empty:
            result["acceptKeyValueSecureCredentialHandling"] = False
        if hasattr(self, "app_id"):
            result["appId"] = str(self.app_id)
        elif include_empty:
            result["appId"] = ""
        if hasattr(self, "credentials"):
            result["credentials"] = self.credentials.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["credentials"] = ApimodelIntegrationCredentialInfo()
        if hasattr(self, "game_namespace"):
            result["gameNamespace"] = str(self.game_namespace)
        elif include_empty:
            result["gameNamespace"] = ""
        if hasattr(self, "hostnames"):
            result["hostnames"] = str(self.hostnames)
        elif include_empty:
            result["hostnames"] = ""
        if hasattr(self, "integration_id"):
            result["integrationId"] = str(self.integration_id)
        elif include_empty:
            result["integrationId"] = ""
        if hasattr(self, "platform_name"):
            result["platformName"] = str(self.platform_name)
        elif include_empty:
            result["platformName"] = ""
        if hasattr(self, "resource_id"):
            result["resourceId"] = str(self.resource_id)
        elif include_empty:
            result["resourceId"] = ""
        if hasattr(self, "resource_status"):
            result["resourceStatus"] = str(self.resource_status)
        elif include_empty:
            result["resourceStatus"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = ""
        if hasattr(self, "status_message"):
            result["statusMessage"] = str(self.status_message)
        elif include_empty:
            result["statusMessage"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        accept_key_value_secure_credential_handling: bool,
        app_id: str,
        credentials: ApimodelIntegrationCredentialInfo,
        game_namespace: str,
        hostnames: str,
        integration_id: str,
        platform_name: str,
        resource_id: str,
        resource_status: str,
        status: str,
        status_message: str,
        **kwargs,
    ) -> ApimodelGetIntegrationAppKeyValueResponse:
        instance = cls()
        instance.accept_key_value_secure_credential_handling = (
            accept_key_value_secure_credential_handling
        )
        instance.app_id = app_id
        instance.credentials = credentials
        instance.game_namespace = game_namespace
        instance.hostnames = hostnames
        instance.integration_id = integration_id
        instance.platform_name = platform_name
        instance.resource_id = resource_id
        instance.resource_status = resource_status
        instance.status = status
        instance.status_message = status_message
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelGetIntegrationAppKeyValueResponse:
        instance = cls()
        if not dict_:
            return instance
        if (
            "acceptKeyValueSecureCredentialHandling" in dict_
            and dict_["acceptKeyValueSecureCredentialHandling"] is not None
        ):
            instance.accept_key_value_secure_credential_handling = bool(
                dict_["acceptKeyValueSecureCredentialHandling"]
            )
        elif include_empty:
            instance.accept_key_value_secure_credential_handling = False
        if "appId" in dict_ and dict_["appId"] is not None:
            instance.app_id = str(dict_["appId"])
        elif include_empty:
            instance.app_id = ""
        if "credentials" in dict_ and dict_["credentials"] is not None:
            instance.credentials = ApimodelIntegrationCredentialInfo.create_from_dict(
                dict_["credentials"], include_empty=include_empty
            )
        elif include_empty:
            instance.credentials = ApimodelIntegrationCredentialInfo()
        if "gameNamespace" in dict_ and dict_["gameNamespace"] is not None:
            instance.game_namespace = str(dict_["gameNamespace"])
        elif include_empty:
            instance.game_namespace = ""
        if "hostnames" in dict_ and dict_["hostnames"] is not None:
            instance.hostnames = str(dict_["hostnames"])
        elif include_empty:
            instance.hostnames = ""
        if "integrationId" in dict_ and dict_["integrationId"] is not None:
            instance.integration_id = str(dict_["integrationId"])
        elif include_empty:
            instance.integration_id = ""
        if "platformName" in dict_ and dict_["platformName"] is not None:
            instance.platform_name = str(dict_["platformName"])
        elif include_empty:
            instance.platform_name = ""
        if "resourceId" in dict_ and dict_["resourceId"] is not None:
            instance.resource_id = str(dict_["resourceId"])
        elif include_empty:
            instance.resource_id = ""
        if "resourceStatus" in dict_ and dict_["resourceStatus"] is not None:
            instance.resource_status = str(dict_["resourceStatus"])
        elif include_empty:
            instance.resource_status = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = ""
        if "statusMessage" in dict_ and dict_["statusMessage"] is not None:
            instance.status_message = str(dict_["statusMessage"])
        elif include_empty:
            instance.status_message = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelGetIntegrationAppKeyValueResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelGetIntegrationAppKeyValueResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelGetIntegrationAppKeyValueResponse,
        List[ApimodelGetIntegrationAppKeyValueResponse],
        Dict[Any, ApimodelGetIntegrationAppKeyValueResponse],
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
            "acceptKeyValueSecureCredentialHandling": "accept_key_value_secure_credential_handling",
            "appId": "app_id",
            "credentials": "credentials",
            "gameNamespace": "game_namespace",
            "hostnames": "hostnames",
            "integrationId": "integration_id",
            "platformName": "platform_name",
            "resourceId": "resource_id",
            "resourceStatus": "resource_status",
            "status": "status",
            "statusMessage": "status_message",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "acceptKeyValueSecureCredentialHandling": True,
            "appId": True,
            "credentials": True,
            "gameNamespace": True,
            "hostnames": True,
            "integrationId": True,
            "platformName": True,
            "resourceId": True,
            "resourceStatus": True,
            "status": True,
            "statusMessage": True,
        }

    # endregion static methods
