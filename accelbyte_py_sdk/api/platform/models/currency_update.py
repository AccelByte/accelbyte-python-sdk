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


class CurrencyUpdate(Model):
    """A DTO for update currency (CurrencyUpdate)

    Properties:
        localization_descriptions: (localizationDescriptions) OPTIONAL Dict[str, str]
    """

    # region fields

    localization_descriptions: Dict[str, str]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_localization_descriptions(self, value: Dict[str, str]) -> CurrencyUpdate:
        self.localization_descriptions = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "localization_descriptions"):
            result["localizationDescriptions"] = {
                str(k0): str(v0) for k0, v0 in self.localization_descriptions.items()
            }
        elif include_empty:
            result["localizationDescriptions"] = {}
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        localization_descriptions: Optional[Dict[str, str]] = None,
    ) -> CurrencyUpdate:
        instance = cls()
        if localization_descriptions is not None:
            instance.localization_descriptions = localization_descriptions
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> CurrencyUpdate:
        instance = cls()
        if not dict_:
            return instance
        if (
            "localizationDescriptions" in dict_
            and dict_["localizationDescriptions"] is not None
        ):
            instance.localization_descriptions = {
                str(k0): str(v0) for k0, v0 in dict_["localizationDescriptions"].items()
            }
        elif include_empty:
            instance.localization_descriptions = {}
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, CurrencyUpdate]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[CurrencyUpdate]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[CurrencyUpdate, List[CurrencyUpdate], Dict[Any, CurrencyUpdate]]:
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
            "localizationDescriptions": "localization_descriptions",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "localizationDescriptions": False,
        }

    # endregion static methods
