# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Chat Service

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


class ModelsUserInbox(Model):
    """Models user inbox (models.UserInbox)

    Properties:
        keep: (keep) REQUIRED bool

        read_at: (readAt) REQUIRED int

        user_id: (userId) REQUIRED str
    """

    # region fields

    keep: bool  # REQUIRED
    read_at: int  # REQUIRED
    user_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_keep(self, value: bool) -> ModelsUserInbox:
        self.keep = value
        return self

    def with_read_at(self, value: int) -> ModelsUserInbox:
        self.read_at = value
        return self

    def with_user_id(self, value: str) -> ModelsUserInbox:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "keep"):
            result["keep"] = bool(self.keep)
        elif include_empty:
            result["keep"] = False
        if hasattr(self, "read_at"):
            result["readAt"] = int(self.read_at)
        elif include_empty:
            result["readAt"] = 0
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, keep: bool, read_at: int, user_id: str, **kwargs
    ) -> ModelsUserInbox:
        instance = cls()
        instance.keep = keep
        instance.read_at = read_at
        instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsUserInbox:
        instance = cls()
        if not dict_:
            return instance
        if "keep" in dict_ and dict_["keep"] is not None:
            instance.keep = bool(dict_["keep"])
        elif include_empty:
            instance.keep = False
        if "readAt" in dict_ and dict_["readAt"] is not None:
            instance.read_at = int(dict_["readAt"])
        elif include_empty:
            instance.read_at = 0
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsUserInbox]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsUserInbox]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ModelsUserInbox, List[ModelsUserInbox], Dict[Any, ModelsUserInbox]]:
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
            "keep": "keep",
            "readAt": "read_at",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "keep": True,
            "readAt": True,
            "userId": True,
        }

    # endregion static methods
