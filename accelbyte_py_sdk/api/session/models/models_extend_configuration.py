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


class ModelsExtendConfiguration(Model):
    """Models extend configuration (models.ExtendConfiguration)

    Properties:
        app_name: (appName) OPTIONAL str

        custom_url: (customURL) OPTIONAL str

        function_flag: (functionFlag) OPTIONAL int
    """

    # region fields

    app_name: str  # OPTIONAL
    custom_url: str  # OPTIONAL
    function_flag: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_app_name(self, value: str) -> ModelsExtendConfiguration:
        self.app_name = value
        return self

    def with_custom_url(self, value: str) -> ModelsExtendConfiguration:
        self.custom_url = value
        return self

    def with_function_flag(self, value: int) -> ModelsExtendConfiguration:
        self.function_flag = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "app_name"):
            result["appName"] = str(self.app_name)
        elif include_empty:
            result["appName"] = ""
        if hasattr(self, "custom_url"):
            result["customURL"] = str(self.custom_url)
        elif include_empty:
            result["customURL"] = ""
        if hasattr(self, "function_flag"):
            result["functionFlag"] = int(self.function_flag)
        elif include_empty:
            result["functionFlag"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        app_name: Optional[str] = None,
        custom_url: Optional[str] = None,
        function_flag: Optional[int] = None,
        **kwargs,
    ) -> ModelsExtendConfiguration:
        instance = cls()
        if app_name is not None:
            instance.app_name = app_name
        if custom_url is not None:
            instance.custom_url = custom_url
        if function_flag is not None:
            instance.function_flag = function_flag
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsExtendConfiguration:
        instance = cls()
        if not dict_:
            return instance
        if "appName" in dict_ and dict_["appName"] is not None:
            instance.app_name = str(dict_["appName"])
        elif include_empty:
            instance.app_name = ""
        if "customURL" in dict_ and dict_["customURL"] is not None:
            instance.custom_url = str(dict_["customURL"])
        elif include_empty:
            instance.custom_url = ""
        if "functionFlag" in dict_ and dict_["functionFlag"] is not None:
            instance.function_flag = int(dict_["functionFlag"])
        elif include_empty:
            instance.function_flag = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsExtendConfiguration]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsExtendConfiguration]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsExtendConfiguration,
        List[ModelsExtendConfiguration],
        Dict[Any, ModelsExtendConfiguration],
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
            "appName": "app_name",
            "customURL": "custom_url",
            "functionFlag": "function_flag",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "appName": False,
            "customURL": False,
            "functionFlag": False,
        }

    # endregion static methods
