# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.17.0)

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


class CategoryUpdate(Model):
    """A DTO object for updating category API call. (CategoryUpdate)

    Properties:
        localization_display_names: (localizationDisplayNames) REQUIRED Dict[str, str]
    """

    # region fields

    localization_display_names: Dict[str, str]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_localization_display_names(self, value: Dict[str, str]) -> CategoryUpdate:
        self.localization_display_names = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "localization_display_names"):
            result["localizationDisplayNames"] = {
                str(k0): str(v0) for k0, v0 in self.localization_display_names.items()
            }
        elif include_empty:
            result["localizationDisplayNames"] = {}
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        localization_display_names: Dict[str, str],
    ) -> CategoryUpdate:
        instance = cls()
        instance.localization_display_names = localization_display_names
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> CategoryUpdate:
        instance = cls()
        if not dict_:
            return instance
        if (
            "localizationDisplayNames" in dict_
            and dict_["localizationDisplayNames"] is not None
        ):
            instance.localization_display_names = {
                str(k0): str(v0) for k0, v0 in dict_["localizationDisplayNames"].items()
            }
        elif include_empty:
            instance.localization_display_names = {}
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, CategoryUpdate]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[CategoryUpdate]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[CategoryUpdate, List[CategoryUpdate], Dict[Any, CategoryUpdate]]:
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
            "localizationDisplayNames": "localization_display_names",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "localizationDisplayNames": True,
        }

    # endregion static methods
