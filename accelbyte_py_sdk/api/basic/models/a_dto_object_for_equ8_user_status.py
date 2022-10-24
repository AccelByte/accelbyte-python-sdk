# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Basic Service (2.2.1)

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


class ADTOObjectForEqu8UserStatus(Model):
    """A DTO object for equ8 user status (A DTO object for equ8 user status)

    Properties:
        action_comment: (actionComment) OPTIONAL str

        action_id: (actionId) OPTIONAL int

        expires: (expires) OPTIONAL str

        user_id: (userId) OPTIONAL str

        when: (when) OPTIONAL str
    """

    # region fields

    action_comment: str  # OPTIONAL
    action_id: int  # OPTIONAL
    expires: str  # OPTIONAL
    user_id: str  # OPTIONAL
    when: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_action_comment(self, value: str) -> ADTOObjectForEqu8UserStatus:
        self.action_comment = value
        return self

    def with_action_id(self, value: int) -> ADTOObjectForEqu8UserStatus:
        self.action_id = value
        return self

    def with_expires(self, value: str) -> ADTOObjectForEqu8UserStatus:
        self.expires = value
        return self

    def with_user_id(self, value: str) -> ADTOObjectForEqu8UserStatus:
        self.user_id = value
        return self

    def with_when(self, value: str) -> ADTOObjectForEqu8UserStatus:
        self.when = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "action_comment"):
            result["actionComment"] = str(self.action_comment)
        elif include_empty:
            result["actionComment"] = ""
        if hasattr(self, "action_id"):
            result["actionId"] = int(self.action_id)
        elif include_empty:
            result["actionId"] = 0
        if hasattr(self, "expires"):
            result["expires"] = str(self.expires)
        elif include_empty:
            result["expires"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "when"):
            result["when"] = str(self.when)
        elif include_empty:
            result["when"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        action_comment: Optional[str] = None,
        action_id: Optional[int] = None,
        expires: Optional[str] = None,
        user_id: Optional[str] = None,
        when: Optional[str] = None,
    ) -> ADTOObjectForEqu8UserStatus:
        instance = cls()
        if action_comment is not None:
            instance.action_comment = action_comment
        if action_id is not None:
            instance.action_id = action_id
        if expires is not None:
            instance.expires = expires
        if user_id is not None:
            instance.user_id = user_id
        if when is not None:
            instance.when = when
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ADTOObjectForEqu8UserStatus:
        instance = cls()
        if not dict_:
            return instance
        if "actionComment" in dict_ and dict_["actionComment"] is not None:
            instance.action_comment = str(dict_["actionComment"])
        elif include_empty:
            instance.action_comment = ""
        if "actionId" in dict_ and dict_["actionId"] is not None:
            instance.action_id = int(dict_["actionId"])
        elif include_empty:
            instance.action_id = 0
        if "expires" in dict_ and dict_["expires"] is not None:
            instance.expires = str(dict_["expires"])
        elif include_empty:
            instance.expires = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "when" in dict_ and dict_["when"] is not None:
            instance.when = str(dict_["when"])
        elif include_empty:
            instance.when = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ADTOObjectForEqu8UserStatus]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ADTOObjectForEqu8UserStatus]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ADTOObjectForEqu8UserStatus,
        List[ADTOObjectForEqu8UserStatus],
        Dict[Any, ADTOObjectForEqu8UserStatus],
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
            "actionComment": "action_comment",
            "actionId": "action_id",
            "expires": "expires",
            "userId": "user_id",
            "when": "when",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "actionComment": False,
            "actionId": False,
            "expires": False,
            "userId": False,
            "when": False,
        }

    # endregion static methods
