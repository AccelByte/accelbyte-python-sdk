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

from ..models.apimodel_no_sql_database_credential_response import (
    ApimodelNoSQLDatabaseCredentialResponse,
)


class ApimodelNoSQLDatabaseResponse(Model):
    """Apimodel no SQL database response (apimodel.NoSQLDatabaseResponse)

    Properties:
        app_id: (appId) REQUIRED str

        credentials: (credentials) REQUIRED ApimodelNoSQLDatabaseCredentialResponse

        db_id: (dbId) REQUIRED str

        db_name: (dbName) REQUIRED str

        game_namespace: (gameNamespace) REQUIRED str

        hostnames: (hostnames) REQUIRED str

        platform_name: (platformName) REQUIRED str

        resource_id: (resourceId) REQUIRED str

        resource_status: (resourceStatus) REQUIRED str
    """

    # region fields

    app_id: str  # REQUIRED
    credentials: ApimodelNoSQLDatabaseCredentialResponse  # REQUIRED
    db_id: str  # REQUIRED
    db_name: str  # REQUIRED
    game_namespace: str  # REQUIRED
    hostnames: str  # REQUIRED
    platform_name: str  # REQUIRED
    resource_id: str  # REQUIRED
    resource_status: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_app_id(self, value: str) -> ApimodelNoSQLDatabaseResponse:
        self.app_id = value
        return self

    def with_credentials(
        self, value: ApimodelNoSQLDatabaseCredentialResponse
    ) -> ApimodelNoSQLDatabaseResponse:
        self.credentials = value
        return self

    def with_db_id(self, value: str) -> ApimodelNoSQLDatabaseResponse:
        self.db_id = value
        return self

    def with_db_name(self, value: str) -> ApimodelNoSQLDatabaseResponse:
        self.db_name = value
        return self

    def with_game_namespace(self, value: str) -> ApimodelNoSQLDatabaseResponse:
        self.game_namespace = value
        return self

    def with_hostnames(self, value: str) -> ApimodelNoSQLDatabaseResponse:
        self.hostnames = value
        return self

    def with_platform_name(self, value: str) -> ApimodelNoSQLDatabaseResponse:
        self.platform_name = value
        return self

    def with_resource_id(self, value: str) -> ApimodelNoSQLDatabaseResponse:
        self.resource_id = value
        return self

    def with_resource_status(self, value: str) -> ApimodelNoSQLDatabaseResponse:
        self.resource_status = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "app_id"):
            result["appId"] = str(self.app_id)
        elif include_empty:
            result["appId"] = ""
        if hasattr(self, "credentials"):
            result["credentials"] = self.credentials.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["credentials"] = ApimodelNoSQLDatabaseCredentialResponse()
        if hasattr(self, "db_id"):
            result["dbId"] = str(self.db_id)
        elif include_empty:
            result["dbId"] = ""
        if hasattr(self, "db_name"):
            result["dbName"] = str(self.db_name)
        elif include_empty:
            result["dbName"] = ""
        if hasattr(self, "game_namespace"):
            result["gameNamespace"] = str(self.game_namespace)
        elif include_empty:
            result["gameNamespace"] = ""
        if hasattr(self, "hostnames"):
            result["hostnames"] = str(self.hostnames)
        elif include_empty:
            result["hostnames"] = ""
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
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        app_id: str,
        credentials: ApimodelNoSQLDatabaseCredentialResponse,
        db_id: str,
        db_name: str,
        game_namespace: str,
        hostnames: str,
        platform_name: str,
        resource_id: str,
        resource_status: str,
        **kwargs,
    ) -> ApimodelNoSQLDatabaseResponse:
        instance = cls()
        instance.app_id = app_id
        instance.credentials = credentials
        instance.db_id = db_id
        instance.db_name = db_name
        instance.game_namespace = game_namespace
        instance.hostnames = hostnames
        instance.platform_name = platform_name
        instance.resource_id = resource_id
        instance.resource_status = resource_status
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelNoSQLDatabaseResponse:
        instance = cls()
        if not dict_:
            return instance
        if "appId" in dict_ and dict_["appId"] is not None:
            instance.app_id = str(dict_["appId"])
        elif include_empty:
            instance.app_id = ""
        if "credentials" in dict_ and dict_["credentials"] is not None:
            instance.credentials = (
                ApimodelNoSQLDatabaseCredentialResponse.create_from_dict(
                    dict_["credentials"], include_empty=include_empty
                )
            )
        elif include_empty:
            instance.credentials = ApimodelNoSQLDatabaseCredentialResponse()
        if "dbId" in dict_ and dict_["dbId"] is not None:
            instance.db_id = str(dict_["dbId"])
        elif include_empty:
            instance.db_id = ""
        if "dbName" in dict_ and dict_["dbName"] is not None:
            instance.db_name = str(dict_["dbName"])
        elif include_empty:
            instance.db_name = ""
        if "gameNamespace" in dict_ and dict_["gameNamespace"] is not None:
            instance.game_namespace = str(dict_["gameNamespace"])
        elif include_empty:
            instance.game_namespace = ""
        if "hostnames" in dict_ and dict_["hostnames"] is not None:
            instance.hostnames = str(dict_["hostnames"])
        elif include_empty:
            instance.hostnames = ""
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
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelNoSQLDatabaseResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelNoSQLDatabaseResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelNoSQLDatabaseResponse,
        List[ApimodelNoSQLDatabaseResponse],
        Dict[Any, ApimodelNoSQLDatabaseResponse],
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
            "credentials": "credentials",
            "dbId": "db_id",
            "dbName": "db_name",
            "gameNamespace": "game_namespace",
            "hostnames": "hostnames",
            "platformName": "platform_name",
            "resourceId": "resource_id",
            "resourceStatus": "resource_status",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "appId": True,
            "credentials": True,
            "dbId": True,
            "dbName": True,
            "gameNamespace": True,
            "hostnames": True,
            "platformName": True,
            "resourceId": True,
            "resourceStatus": True,
        }

    # endregion static methods
