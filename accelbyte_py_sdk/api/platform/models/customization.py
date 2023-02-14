# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.23.0)

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


class Customization(Model):
    """Customization (Customization)

    Properties:
        settings: (settings) OPTIONAL str
    """

    # region fields

    settings: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_settings(self, value: str) -> Customization:
        self.settings = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "settings"):
            result["settings"] = str(self.settings)
        elif include_empty:
            result["settings"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        settings: Optional[str] = None,
    ) -> Customization:
        instance = cls()
        if settings is not None:
            instance.settings = settings
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Customization:
        instance = cls()
        if not dict_:
            return instance
        if "settings" in dict_ and dict_["settings"] is not None:
            instance.settings = str(dict_["settings"])
        elif include_empty:
            instance.settings = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, Customization]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[Customization]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[Customization, List[Customization], Dict[Any, Customization]]:
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
            "settings": "settings",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "settings": False,
        }

    # endregion static methods
