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

from ..models.apimodel_public_iam_client_response import ApimodelPublicIAMClientResponse


class ApimodelAppUIResponse(Model):
    """Apimodel app UI response (apimodel.AppUIResponse)

    Properties:
        app_ui_id: (appUiId) REQUIRED str

        asset_base_path: (assetBasePath) REQUIRED str

        created_at: (createdAt) REQUIRED str

        current_file_version: (currentFileVersion) REQUIRED str

        game_namespace: (gameNamespace) REQUIRED str

        name: (name) REQUIRED str

        updated_at: (updatedAt) REQUIRED str

        public_iam_client: (publicIamClient) OPTIONAL ApimodelPublicIAMClientResponse
    """

    # region fields

    app_ui_id: str  # REQUIRED
    asset_base_path: str  # REQUIRED
    created_at: str  # REQUIRED
    current_file_version: str  # REQUIRED
    game_namespace: str  # REQUIRED
    name: str  # REQUIRED
    updated_at: str  # REQUIRED
    public_iam_client: ApimodelPublicIAMClientResponse  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_app_ui_id(self, value: str) -> ApimodelAppUIResponse:
        self.app_ui_id = value
        return self

    def with_asset_base_path(self, value: str) -> ApimodelAppUIResponse:
        self.asset_base_path = value
        return self

    def with_created_at(self, value: str) -> ApimodelAppUIResponse:
        self.created_at = value
        return self

    def with_current_file_version(self, value: str) -> ApimodelAppUIResponse:
        self.current_file_version = value
        return self

    def with_game_namespace(self, value: str) -> ApimodelAppUIResponse:
        self.game_namespace = value
        return self

    def with_name(self, value: str) -> ApimodelAppUIResponse:
        self.name = value
        return self

    def with_updated_at(self, value: str) -> ApimodelAppUIResponse:
        self.updated_at = value
        return self

    def with_public_iam_client(
        self, value: ApimodelPublicIAMClientResponse
    ) -> ApimodelAppUIResponse:
        self.public_iam_client = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "app_ui_id"):
            result["appUiId"] = str(self.app_ui_id)
        elif include_empty:
            result["appUiId"] = ""
        if hasattr(self, "asset_base_path"):
            result["assetBasePath"] = str(self.asset_base_path)
        elif include_empty:
            result["assetBasePath"] = ""
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "current_file_version"):
            result["currentFileVersion"] = str(self.current_file_version)
        elif include_empty:
            result["currentFileVersion"] = ""
        if hasattr(self, "game_namespace"):
            result["gameNamespace"] = str(self.game_namespace)
        elif include_empty:
            result["gameNamespace"] = ""
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "public_iam_client"):
            result["publicIamClient"] = self.public_iam_client.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["publicIamClient"] = ApimodelPublicIAMClientResponse()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        app_ui_id: str,
        asset_base_path: str,
        created_at: str,
        current_file_version: str,
        game_namespace: str,
        name: str,
        updated_at: str,
        public_iam_client: Optional[ApimodelPublicIAMClientResponse] = None,
        **kwargs,
    ) -> ApimodelAppUIResponse:
        instance = cls()
        instance.app_ui_id = app_ui_id
        instance.asset_base_path = asset_base_path
        instance.created_at = created_at
        instance.current_file_version = current_file_version
        instance.game_namespace = game_namespace
        instance.name = name
        instance.updated_at = updated_at
        if public_iam_client is not None:
            instance.public_iam_client = public_iam_client
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelAppUIResponse:
        instance = cls()
        if not dict_:
            return instance
        if "appUiId" in dict_ and dict_["appUiId"] is not None:
            instance.app_ui_id = str(dict_["appUiId"])
        elif include_empty:
            instance.app_ui_id = ""
        if "assetBasePath" in dict_ and dict_["assetBasePath"] is not None:
            instance.asset_base_path = str(dict_["assetBasePath"])
        elif include_empty:
            instance.asset_base_path = ""
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "currentFileVersion" in dict_ and dict_["currentFileVersion"] is not None:
            instance.current_file_version = str(dict_["currentFileVersion"])
        elif include_empty:
            instance.current_file_version = ""
        if "gameNamespace" in dict_ and dict_["gameNamespace"] is not None:
            instance.game_namespace = str(dict_["gameNamespace"])
        elif include_empty:
            instance.game_namespace = ""
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "publicIamClient" in dict_ and dict_["publicIamClient"] is not None:
            instance.public_iam_client = (
                ApimodelPublicIAMClientResponse.create_from_dict(
                    dict_["publicIamClient"], include_empty=include_empty
                )
            )
        elif include_empty:
            instance.public_iam_client = ApimodelPublicIAMClientResponse()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelAppUIResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelAppUIResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelAppUIResponse,
        List[ApimodelAppUIResponse],
        Dict[Any, ApimodelAppUIResponse],
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
            "appUiId": "app_ui_id",
            "assetBasePath": "asset_base_path",
            "createdAt": "created_at",
            "currentFileVersion": "current_file_version",
            "gameNamespace": "game_namespace",
            "name": "name",
            "updatedAt": "updated_at",
            "publicIamClient": "public_iam_client",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "appUiId": True,
            "assetBasePath": True,
            "createdAt": True,
            "currentFileVersion": True,
            "gameNamespace": True,
            "name": True,
            "updatedAt": True,
            "publicIamClient": False,
        }

    # endregion static methods
