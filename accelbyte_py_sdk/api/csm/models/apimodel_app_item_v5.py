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


class ApimodelAppItemV5(Model):
    """Apimodel app item V5 (apimodel.AppItemV5)

    Properties:
        app_id: (appId) REQUIRED str

        app_name: (appName) REQUIRED str

        app_status: (appStatus) REQUIRED str

        created_at: (createdAt) REQUIRED str

        game_name: (gameName) REQUIRED str

        scenario: (scenario) REQUIRED str

        updated_at: (updatedAt) REQUIRED str

        base_path: (basePath) OPTIONAL str

        description: (description) OPTIONAL str

        vm_sharing_configuration: (vmSharingConfiguration) OPTIONAL str
    """

    # region fields

    app_id: str  # REQUIRED
    app_name: str  # REQUIRED
    app_status: str  # REQUIRED
    created_at: str  # REQUIRED
    game_name: str  # REQUIRED
    scenario: str  # REQUIRED
    updated_at: str  # REQUIRED
    base_path: str  # OPTIONAL
    description: str  # OPTIONAL
    vm_sharing_configuration: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_app_id(self, value: str) -> ApimodelAppItemV5:
        self.app_id = value
        return self

    def with_app_name(self, value: str) -> ApimodelAppItemV5:
        self.app_name = value
        return self

    def with_app_status(self, value: str) -> ApimodelAppItemV5:
        self.app_status = value
        return self

    def with_created_at(self, value: str) -> ApimodelAppItemV5:
        self.created_at = value
        return self

    def with_game_name(self, value: str) -> ApimodelAppItemV5:
        self.game_name = value
        return self

    def with_scenario(self, value: str) -> ApimodelAppItemV5:
        self.scenario = value
        return self

    def with_updated_at(self, value: str) -> ApimodelAppItemV5:
        self.updated_at = value
        return self

    def with_base_path(self, value: str) -> ApimodelAppItemV5:
        self.base_path = value
        return self

    def with_description(self, value: str) -> ApimodelAppItemV5:
        self.description = value
        return self

    def with_vm_sharing_configuration(self, value: str) -> ApimodelAppItemV5:
        self.vm_sharing_configuration = value
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
        if hasattr(self, "scenario"):
            result["scenario"] = str(self.scenario)
        elif include_empty:
            result["scenario"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "base_path"):
            result["basePath"] = str(self.base_path)
        elif include_empty:
            result["basePath"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
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
        app_id: str,
        app_name: str,
        app_status: str,
        created_at: str,
        game_name: str,
        scenario: str,
        updated_at: str,
        base_path: Optional[str] = None,
        description: Optional[str] = None,
        vm_sharing_configuration: Optional[str] = None,
        **kwargs,
    ) -> ApimodelAppItemV5:
        instance = cls()
        instance.app_id = app_id
        instance.app_name = app_name
        instance.app_status = app_status
        instance.created_at = created_at
        instance.game_name = game_name
        instance.scenario = scenario
        instance.updated_at = updated_at
        if base_path is not None:
            instance.base_path = base_path
        if description is not None:
            instance.description = description
        if vm_sharing_configuration is not None:
            instance.vm_sharing_configuration = vm_sharing_configuration
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelAppItemV5:
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
        if "scenario" in dict_ and dict_["scenario"] is not None:
            instance.scenario = str(dict_["scenario"])
        elif include_empty:
            instance.scenario = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "basePath" in dict_ and dict_["basePath"] is not None:
            instance.base_path = str(dict_["basePath"])
        elif include_empty:
            instance.base_path = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
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
    ) -> Dict[str, ApimodelAppItemV5]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelAppItemV5]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelAppItemV5, List[ApimodelAppItemV5], Dict[Any, ApimodelAppItemV5]
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
            "appStatus": "app_status",
            "createdAt": "created_at",
            "gameName": "game_name",
            "scenario": "scenario",
            "updatedAt": "updated_at",
            "basePath": "base_path",
            "description": "description",
            "vmSharingConfiguration": "vm_sharing_configuration",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "appId": True,
            "appName": True,
            "appStatus": True,
            "createdAt": True,
            "gameName": True,
            "scenario": True,
            "updatedAt": True,
            "basePath": False,
            "description": False,
            "vmSharingConfiguration": False,
        }

    # endregion static methods
