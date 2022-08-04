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


class ModelsAdminDeleteProfanityFilterRequest(Model):
    """Models admin delete profanity filter request (models.AdminDeleteProfanityFilterRequest)

    Properties:
        filter_: (filter) REQUIRED str
    """

    # region fields

    filter_: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_filter(self, value: str) -> ModelsAdminDeleteProfanityFilterRequest:
        self.filter_ = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "filter_"):
            result["filter"] = str(self.filter_)
        elif include_empty:
            result["filter"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        filter_: str,
    ) -> ModelsAdminDeleteProfanityFilterRequest:
        instance = cls()
        instance.filter_ = filter_
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsAdminDeleteProfanityFilterRequest:
        instance = cls()
        if not dict_:
            return instance
        if "filter" in dict_ and dict_["filter"] is not None:
            instance.filter_ = str(dict_["filter"])
        elif include_empty:
            instance.filter_ = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsAdminDeleteProfanityFilterRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsAdminDeleteProfanityFilterRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsAdminDeleteProfanityFilterRequest,
        List[ModelsAdminDeleteProfanityFilterRequest],
        Dict[Any, ModelsAdminDeleteProfanityFilterRequest],
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
            "filter": "filter_",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "filter": True,
        }

    # endregion static methods
