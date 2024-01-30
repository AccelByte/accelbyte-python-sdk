# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Session Service

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


class ApimodelsEnvironmentVariableResponse(Model):
    """Apimodels environment variable response (apimodels.EnvironmentVariableResponse)

    Properties:
        name: (name) REQUIRED str

        actual_value: (actualValue) OPTIONAL str

        default_value: (defaultValue) OPTIONAL str

        description: (description) OPTIONAL str
    """

    # region fields

    name: str  # REQUIRED
    actual_value: str  # OPTIONAL
    default_value: str  # OPTIONAL
    description: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_name(self, value: str) -> ApimodelsEnvironmentVariableResponse:
        self.name = value
        return self

    def with_actual_value(self, value: str) -> ApimodelsEnvironmentVariableResponse:
        self.actual_value = value
        return self

    def with_default_value(self, value: str) -> ApimodelsEnvironmentVariableResponse:
        self.default_value = value
        return self

    def with_description(self, value: str) -> ApimodelsEnvironmentVariableResponse:
        self.description = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "actual_value"):
            result["actualValue"] = str(self.actual_value)
        elif include_empty:
            result["actualValue"] = ""
        if hasattr(self, "default_value"):
            result["defaultValue"] = str(self.default_value)
        elif include_empty:
            result["defaultValue"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        name: str,
        actual_value: Optional[str] = None,
        default_value: Optional[str] = None,
        description: Optional[str] = None,
        **kwargs,
    ) -> ApimodelsEnvironmentVariableResponse:
        instance = cls()
        instance.name = name
        if actual_value is not None:
            instance.actual_value = actual_value
        if default_value is not None:
            instance.default_value = default_value
        if description is not None:
            instance.description = description
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsEnvironmentVariableResponse:
        instance = cls()
        if not dict_:
            return instance
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "actualValue" in dict_ and dict_["actualValue"] is not None:
            instance.actual_value = str(dict_["actualValue"])
        elif include_empty:
            instance.actual_value = ""
        if "defaultValue" in dict_ and dict_["defaultValue"] is not None:
            instance.default_value = str(dict_["defaultValue"])
        elif include_empty:
            instance.default_value = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsEnvironmentVariableResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsEnvironmentVariableResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsEnvironmentVariableResponse,
        List[ApimodelsEnvironmentVariableResponse],
        Dict[Any, ApimodelsEnvironmentVariableResponse],
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
            "name": "name",
            "actualValue": "actual_value",
            "defaultValue": "default_value",
            "description": "description",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "name": True,
            "actualValue": False,
            "defaultValue": False,
            "description": False,
        }

    # endregion static methods
