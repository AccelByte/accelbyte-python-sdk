# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Basic Service

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


class UserBanRequest(Model):
    """A DTO for ban(temporarily/permanently) user API call. (UserBanRequest)

    Properties:
        action_id: (actionId) REQUIRED int

        user_ids: (userIds) REQUIRED List[str]

        comment: (comment) OPTIONAL str
    """

    # region fields

    action_id: int  # REQUIRED
    user_ids: List[str]  # REQUIRED
    comment: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_action_id(self, value: int) -> UserBanRequest:
        self.action_id = value
        return self

    def with_user_ids(self, value: List[str]) -> UserBanRequest:
        self.user_ids = value
        return self

    def with_comment(self, value: str) -> UserBanRequest:
        self.comment = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "action_id"):
            result["actionId"] = int(self.action_id)
        elif include_empty:
            result["actionId"] = 0
        if hasattr(self, "user_ids"):
            result["userIds"] = [str(i0) for i0 in self.user_ids]
        elif include_empty:
            result["userIds"] = []
        if hasattr(self, "comment"):
            result["comment"] = str(self.comment)
        elif include_empty:
            result["comment"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        action_id: int,
        user_ids: List[str],
        comment: Optional[str] = None,
        **kwargs,
    ) -> UserBanRequest:
        instance = cls()
        instance.action_id = action_id
        instance.user_ids = user_ids
        if comment is not None:
            instance.comment = comment
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> UserBanRequest:
        instance = cls()
        if not dict_:
            return instance
        if "actionId" in dict_ and dict_["actionId"] is not None:
            instance.action_id = int(dict_["actionId"])
        elif include_empty:
            instance.action_id = 0
        if "userIds" in dict_ and dict_["userIds"] is not None:
            instance.user_ids = [str(i0) for i0 in dict_["userIds"]]
        elif include_empty:
            instance.user_ids = []
        if "comment" in dict_ and dict_["comment"] is not None:
            instance.comment = str(dict_["comment"])
        elif include_empty:
            instance.comment = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, UserBanRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[UserBanRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[UserBanRequest, List[UserBanRequest], Dict[Any, UserBanRequest]]:
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
            "actionId": "action_id",
            "userIds": "user_ids",
            "comment": "comment",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "actionId": True,
            "userIds": True,
            "comment": False,
        }

    # endregion static methods
