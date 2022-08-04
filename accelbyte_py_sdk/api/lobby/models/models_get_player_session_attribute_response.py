# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Lobby Server (staging)

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


class ModelsGetPlayerSessionAttributeResponse(Model):
    """Models get player session attribute response (models.GetPlayerSessionAttributeResponse)

    Properties:
        key: (key) REQUIRED str

        value: (value) REQUIRED str
    """

    # region fields

    key: str  # REQUIRED
    value: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_key(self, value: str) -> ModelsGetPlayerSessionAttributeResponse:
        self.key = value
        return self

    def with_value(self, value: str) -> ModelsGetPlayerSessionAttributeResponse:
        self.value = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "key"):
            result["key"] = str(self.key)
        elif include_empty:
            result["key"] = ""
        if hasattr(self, "value"):
            result["value"] = str(self.value)
        elif include_empty:
            result["value"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        key: str,
        value: str,
    ) -> ModelsGetPlayerSessionAttributeResponse:
        instance = cls()
        instance.key = key
        instance.value = value
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsGetPlayerSessionAttributeResponse:
        instance = cls()
        if not dict_:
            return instance
        if "key" in dict_ and dict_["key"] is not None:
            instance.key = str(dict_["key"])
        elif include_empty:
            instance.key = ""
        if "value" in dict_ and dict_["value"] is not None:
            instance.value = str(dict_["value"])
        elif include_empty:
            instance.value = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsGetPlayerSessionAttributeResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsGetPlayerSessionAttributeResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsGetPlayerSessionAttributeResponse,
        List[ModelsGetPlayerSessionAttributeResponse],
        Dict[Any, ModelsGetPlayerSessionAttributeResponse],
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
            "key": "key",
            "value": "value",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "key": True,
            "value": True,
        }

    # endregion static methods
