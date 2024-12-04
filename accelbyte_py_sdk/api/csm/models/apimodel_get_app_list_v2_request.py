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


class ApimodelGetAppListV2Request(Model):
    """Apimodel get app list V2 request (apimodel.GetAppListV2Request)

    Properties:
        app_names: (appNames) OPTIONAL List[str]

        app_statuses: (appStatuses) OPTIONAL List[str]

        fuzzy_app_name: (fuzzyAppName) OPTIONAL str

        scenario: (scenario) OPTIONAL str
    """

    # region fields

    app_names: List[str]  # OPTIONAL
    app_statuses: List[str]  # OPTIONAL
    fuzzy_app_name: str  # OPTIONAL
    scenario: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_app_names(self, value: List[str]) -> ApimodelGetAppListV2Request:
        self.app_names = value
        return self

    def with_app_statuses(self, value: List[str]) -> ApimodelGetAppListV2Request:
        self.app_statuses = value
        return self

    def with_fuzzy_app_name(self, value: str) -> ApimodelGetAppListV2Request:
        self.fuzzy_app_name = value
        return self

    def with_scenario(self, value: str) -> ApimodelGetAppListV2Request:
        self.scenario = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "app_names"):
            result["appNames"] = [str(i0) for i0 in self.app_names]
        elif include_empty:
            result["appNames"] = []
        if hasattr(self, "app_statuses"):
            result["appStatuses"] = [str(i0) for i0 in self.app_statuses]
        elif include_empty:
            result["appStatuses"] = []
        if hasattr(self, "fuzzy_app_name"):
            result["fuzzyAppName"] = str(self.fuzzy_app_name)
        elif include_empty:
            result["fuzzyAppName"] = ""
        if hasattr(self, "scenario"):
            result["scenario"] = str(self.scenario)
        elif include_empty:
            result["scenario"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        app_names: Optional[List[str]] = None,
        app_statuses: Optional[List[str]] = None,
        fuzzy_app_name: Optional[str] = None,
        scenario: Optional[str] = None,
        **kwargs,
    ) -> ApimodelGetAppListV2Request:
        instance = cls()
        if app_names is not None:
            instance.app_names = app_names
        if app_statuses is not None:
            instance.app_statuses = app_statuses
        if fuzzy_app_name is not None:
            instance.fuzzy_app_name = fuzzy_app_name
        if scenario is not None:
            instance.scenario = scenario
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelGetAppListV2Request:
        instance = cls()
        if not dict_:
            return instance
        if "appNames" in dict_ and dict_["appNames"] is not None:
            instance.app_names = [str(i0) for i0 in dict_["appNames"]]
        elif include_empty:
            instance.app_names = []
        if "appStatuses" in dict_ and dict_["appStatuses"] is not None:
            instance.app_statuses = [str(i0) for i0 in dict_["appStatuses"]]
        elif include_empty:
            instance.app_statuses = []
        if "fuzzyAppName" in dict_ and dict_["fuzzyAppName"] is not None:
            instance.fuzzy_app_name = str(dict_["fuzzyAppName"])
        elif include_empty:
            instance.fuzzy_app_name = ""
        if "scenario" in dict_ and dict_["scenario"] is not None:
            instance.scenario = str(dict_["scenario"])
        elif include_empty:
            instance.scenario = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelGetAppListV2Request]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelGetAppListV2Request]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelGetAppListV2Request,
        List[ApimodelGetAppListV2Request],
        Dict[Any, ApimodelGetAppListV2Request],
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
            "appNames": "app_names",
            "appStatuses": "app_statuses",
            "fuzzyAppName": "fuzzy_app_name",
            "scenario": "scenario",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "appNames": False,
            "appStatuses": False,
            "fuzzyAppName": False,
            "scenario": False,
        }

    # endregion static methods
