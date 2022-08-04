# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Session Browser Service ()

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


class ModelsPagingCursor(Model):
    """Models paging cursor (models.PagingCursor)

    Properties:
        next_: (next) REQUIRED str

        previous: (previous) REQUIRED str
    """

    # region fields

    next_: str  # REQUIRED
    previous: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_next(self, value: str) -> ModelsPagingCursor:
        self.next_ = value
        return self

    def with_previous(self, value: str) -> ModelsPagingCursor:
        self.previous = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "next_"):
            result["next"] = str(self.next_)
        elif include_empty:
            result["next"] = ""
        if hasattr(self, "previous"):
            result["previous"] = str(self.previous)
        elif include_empty:
            result["previous"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        next_: str,
        previous: str,
    ) -> ModelsPagingCursor:
        instance = cls()
        instance.next_ = next_
        instance.previous = previous
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsPagingCursor:
        instance = cls()
        if not dict_:
            return instance
        if "next" in dict_ and dict_["next"] is not None:
            instance.next_ = str(dict_["next"])
        elif include_empty:
            instance.next_ = ""
        if "previous" in dict_ and dict_["previous"] is not None:
            instance.previous = str(dict_["previous"])
        elif include_empty:
            instance.previous = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsPagingCursor]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsPagingCursor]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsPagingCursor, List[ModelsPagingCursor], Dict[Any, ModelsPagingCursor]
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
            "next": "next_",
            "previous": "previous",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "next": True,
            "previous": True,
        }

    # endregion static methods
