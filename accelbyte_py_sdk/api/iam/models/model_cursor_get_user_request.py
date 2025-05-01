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

from ..models.accountcommon_query_cursor import AccountcommonQueryCursor


class ModelCursorGetUserRequest(Model):
    """Model cursor get user request (model.CursorGetUserRequest)

    Properties:
        limit: (limit) REQUIRED int

        cursor: (cursor) OPTIONAL AccountcommonQueryCursor

        fields: (fields) OPTIONAL List[str]
    """

    # region fields

    limit: int  # REQUIRED
    cursor: AccountcommonQueryCursor  # OPTIONAL
    fields: List[str]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_limit(self, value: int) -> ModelCursorGetUserRequest:
        self.limit = value
        return self

    def with_cursor(self, value: AccountcommonQueryCursor) -> ModelCursorGetUserRequest:
        self.cursor = value
        return self

    def with_fields(self, value: List[str]) -> ModelCursorGetUserRequest:
        self.fields = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "limit"):
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = 0
        if hasattr(self, "cursor"):
            result["cursor"] = self.cursor.to_dict(include_empty=include_empty)
        elif include_empty:
            result["cursor"] = AccountcommonQueryCursor()
        if hasattr(self, "fields"):
            result["fields"] = [str(i0) for i0 in self.fields]
        elif include_empty:
            result["fields"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        limit: int,
        cursor: Optional[AccountcommonQueryCursor] = None,
        fields: Optional[List[str]] = None,
        **kwargs,
    ) -> ModelCursorGetUserRequest:
        instance = cls()
        instance.limit = limit
        if cursor is not None:
            instance.cursor = cursor
        if fields is not None:
            instance.fields = fields
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelCursorGetUserRequest:
        instance = cls()
        if not dict_:
            return instance
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = 0
        if "cursor" in dict_ and dict_["cursor"] is not None:
            instance.cursor = AccountcommonQueryCursor.create_from_dict(
                dict_["cursor"], include_empty=include_empty
            )
        elif include_empty:
            instance.cursor = AccountcommonQueryCursor()
        if "fields" in dict_ and dict_["fields"] is not None:
            instance.fields = [str(i0) for i0 in dict_["fields"]]
        elif include_empty:
            instance.fields = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelCursorGetUserRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelCursorGetUserRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelCursorGetUserRequest,
        List[ModelCursorGetUserRequest],
        Dict[Any, ModelCursorGetUserRequest],
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
            "limit": "limit",
            "cursor": "cursor",
            "fields": "fields",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "limit": True,
            "cursor": False,
            "fields": False,
        }

    # endregion static methods
