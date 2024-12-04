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


class GeneratedCreateAppV1Request(Model):
    """Generated create app V1 request (generated.CreateAppV1Request)

    Properties:
        description: (description) OPTIONAL str

        scenario: (scenario) OPTIONAL str
    """

    # region fields

    description: str  # OPTIONAL
    scenario: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_description(self, value: str) -> GeneratedCreateAppV1Request:
        self.description = value
        return self

    def with_scenario(self, value: str) -> GeneratedCreateAppV1Request:
        self.scenario = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "scenario"):
            result["scenario"] = str(self.scenario)
        elif include_empty:
            result["scenario"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, description: Optional[str] = None, scenario: Optional[str] = None, **kwargs
    ) -> GeneratedCreateAppV1Request:
        instance = cls()
        if description is not None:
            instance.description = description
        if scenario is not None:
            instance.scenario = scenario
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> GeneratedCreateAppV1Request:
        instance = cls()
        if not dict_:
            return instance
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "scenario" in dict_ and dict_["scenario"] is not None:
            instance.scenario = str(dict_["scenario"])
        elif include_empty:
            instance.scenario = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, GeneratedCreateAppV1Request]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[GeneratedCreateAppV1Request]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        GeneratedCreateAppV1Request,
        List[GeneratedCreateAppV1Request],
        Dict[Any, GeneratedCreateAppV1Request],
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
            "description": "description",
            "scenario": "scenario",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "description": False,
            "scenario": False,
        }

    # endregion static methods
