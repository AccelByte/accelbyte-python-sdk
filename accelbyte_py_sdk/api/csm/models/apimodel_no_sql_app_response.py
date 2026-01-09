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


class ApimodelNoSQLAppResponse(Model):
    """Apimodel no SQL app response (apimodel.NoSQLAppResponse)

    Properties:
        app_id: (appId) REQUIRED str

        app_name: (appName) REQUIRED str

        game_name: (gameName) REQUIRED str

        scenario: (scenario) REQUIRED str
    """

    # region fields

    app_id: str  # REQUIRED
    app_name: str  # REQUIRED
    game_name: str  # REQUIRED
    scenario: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_app_id(self, value: str) -> ApimodelNoSQLAppResponse:
        self.app_id = value
        return self

    def with_app_name(self, value: str) -> ApimodelNoSQLAppResponse:
        self.app_name = value
        return self

    def with_game_name(self, value: str) -> ApimodelNoSQLAppResponse:
        self.game_name = value
        return self

    def with_scenario(self, value: str) -> ApimodelNoSQLAppResponse:
        self.scenario = value
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
        if hasattr(self, "game_name"):
            result["gameName"] = str(self.game_name)
        elif include_empty:
            result["gameName"] = ""
        if hasattr(self, "scenario"):
            result["scenario"] = str(self.scenario)
        elif include_empty:
            result["scenario"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, app_id: str, app_name: str, game_name: str, scenario: str, **kwargs
    ) -> ApimodelNoSQLAppResponse:
        instance = cls()
        instance.app_id = app_id
        instance.app_name = app_name
        instance.game_name = game_name
        instance.scenario = scenario
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelNoSQLAppResponse:
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
        if "gameName" in dict_ and dict_["gameName"] is not None:
            instance.game_name = str(dict_["gameName"])
        elif include_empty:
            instance.game_name = ""
        if "scenario" in dict_ and dict_["scenario"] is not None:
            instance.scenario = str(dict_["scenario"])
        elif include_empty:
            instance.scenario = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelNoSQLAppResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelNoSQLAppResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelNoSQLAppResponse,
        List[ApimodelNoSQLAppResponse],
        Dict[Any, ApimodelNoSQLAppResponse],
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
            "gameName": "game_name",
            "scenario": "scenario",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "appId": True,
            "appName": True,
            "gameName": True,
            "scenario": True,
        }

    # endregion static methods
