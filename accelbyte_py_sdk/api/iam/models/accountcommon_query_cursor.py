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


class AccountcommonQueryCursor(Model):
    """Accountcommon query cursor (accountcommon.QueryCursor)

    Properties:
        cursor_time: (cursorTime) REQUIRED str

        user_id: (userId) REQUIRED str
    """

    # region fields

    cursor_time: str  # REQUIRED
    user_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_cursor_time(self, value: str) -> AccountcommonQueryCursor:
        self.cursor_time = value
        return self

    def with_user_id(self, value: str) -> AccountcommonQueryCursor:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "cursor_time"):
            result["cursorTime"] = str(self.cursor_time)
        elif include_empty:
            result["cursorTime"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, cursor_time: str, user_id: str, **kwargs
    ) -> AccountcommonQueryCursor:
        instance = cls()
        instance.cursor_time = cursor_time
        instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AccountcommonQueryCursor:
        instance = cls()
        if not dict_:
            return instance
        if "cursorTime" in dict_ and dict_["cursorTime"] is not None:
            instance.cursor_time = str(dict_["cursorTime"])
        elif include_empty:
            instance.cursor_time = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, AccountcommonQueryCursor]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[AccountcommonQueryCursor]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        AccountcommonQueryCursor,
        List[AccountcommonQueryCursor],
        Dict[Any, AccountcommonQueryCursor],
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
            "cursorTime": "cursor_time",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "cursorTime": True,
            "userId": True,
        }

    # endregion static methods
