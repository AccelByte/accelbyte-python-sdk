# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Iam Service

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


class ModelInternalConfigResponseV3(Model):
    """Model internal config response V3 (model.InternalConfigResponseV3)

    Properties:
        search_query_max_length: (searchQueryMaxLength) REQUIRED int

        search_query_max_length_for_email: (searchQueryMaxLengthForEmail) REQUIRED int

        search_query_min_length: (searchQueryMinLength) REQUIRED int
    """

    # region fields

    search_query_max_length: int  # REQUIRED
    search_query_max_length_for_email: int  # REQUIRED
    search_query_min_length: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_search_query_max_length(self, value: int) -> ModelInternalConfigResponseV3:
        self.search_query_max_length = value
        return self

    def with_search_query_max_length_for_email(
        self, value: int
    ) -> ModelInternalConfigResponseV3:
        self.search_query_max_length_for_email = value
        return self

    def with_search_query_min_length(self, value: int) -> ModelInternalConfigResponseV3:
        self.search_query_min_length = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "search_query_max_length"):
            result["searchQueryMaxLength"] = int(self.search_query_max_length)
        elif include_empty:
            result["searchQueryMaxLength"] = 0
        if hasattr(self, "search_query_max_length_for_email"):
            result["searchQueryMaxLengthForEmail"] = int(
                self.search_query_max_length_for_email
            )
        elif include_empty:
            result["searchQueryMaxLengthForEmail"] = 0
        if hasattr(self, "search_query_min_length"):
            result["searchQueryMinLength"] = int(self.search_query_min_length)
        elif include_empty:
            result["searchQueryMinLength"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        search_query_max_length: int,
        search_query_max_length_for_email: int,
        search_query_min_length: int,
        **kwargs,
    ) -> ModelInternalConfigResponseV3:
        instance = cls()
        instance.search_query_max_length = search_query_max_length
        instance.search_query_max_length_for_email = search_query_max_length_for_email
        instance.search_query_min_length = search_query_min_length
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelInternalConfigResponseV3:
        instance = cls()
        if not dict_:
            return instance
        if (
            "searchQueryMaxLength" in dict_
            and dict_["searchQueryMaxLength"] is not None
        ):
            instance.search_query_max_length = int(dict_["searchQueryMaxLength"])
        elif include_empty:
            instance.search_query_max_length = 0
        if (
            "searchQueryMaxLengthForEmail" in dict_
            and dict_["searchQueryMaxLengthForEmail"] is not None
        ):
            instance.search_query_max_length_for_email = int(
                dict_["searchQueryMaxLengthForEmail"]
            )
        elif include_empty:
            instance.search_query_max_length_for_email = 0
        if (
            "searchQueryMinLength" in dict_
            and dict_["searchQueryMinLength"] is not None
        ):
            instance.search_query_min_length = int(dict_["searchQueryMinLength"])
        elif include_empty:
            instance.search_query_min_length = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelInternalConfigResponseV3]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelInternalConfigResponseV3]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelInternalConfigResponseV3,
        List[ModelInternalConfigResponseV3],
        Dict[Any, ModelInternalConfigResponseV3],
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
            "searchQueryMaxLength": "search_query_max_length",
            "searchQueryMaxLengthForEmail": "search_query_max_length_for_email",
            "searchQueryMinLength": "search_query_min_length",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "searchQueryMaxLength": True,
            "searchQueryMaxLengthForEmail": True,
            "searchQueryMinLength": True,
        }

    # endregion static methods
