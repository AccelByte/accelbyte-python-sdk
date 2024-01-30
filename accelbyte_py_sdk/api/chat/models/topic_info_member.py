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


class TopicInfoMember(Model):
    """Topic info member (topic.InfoMember)

    Properties:
        user_id: (userId) REQUIRED str

        left_at: (leftAt) OPTIONAL int
    """

    # region fields

    user_id: str  # REQUIRED
    left_at: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_user_id(self, value: str) -> TopicInfoMember:
        self.user_id = value
        return self

    def with_left_at(self, value: int) -> TopicInfoMember:
        self.left_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "left_at"):
            result["leftAt"] = int(self.left_at)
        elif include_empty:
            result["leftAt"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, user_id: str, left_at: Optional[int] = None, **kwargs
    ) -> TopicInfoMember:
        instance = cls()
        instance.user_id = user_id
        if left_at is not None:
            instance.left_at = left_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> TopicInfoMember:
        instance = cls()
        if not dict_:
            return instance
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "leftAt" in dict_ and dict_["leftAt"] is not None:
            instance.left_at = int(dict_["leftAt"])
        elif include_empty:
            instance.left_at = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, TopicInfoMember]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[TopicInfoMember]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[TopicInfoMember, List[TopicInfoMember], Dict[Any, TopicInfoMember]]:
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
            "userId": "user_id",
            "leftAt": "left_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "userId": True,
            "leftAt": False,
        }

    # endregion static methods
