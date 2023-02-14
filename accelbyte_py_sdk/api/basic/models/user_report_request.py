# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Basic Service (2.5.0)

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


class UserReportRequest(Model):
    """A DTO object for reporting user API call. (UserReportRequest)

    Properties:
        category: (category) REQUIRED str

        user_id: (userId) REQUIRED str

        description: (description) OPTIONAL str

        game_session_id: (gameSessionId) OPTIONAL str

        subcategory: (subcategory) OPTIONAL str
    """

    # region fields

    category: str  # REQUIRED
    user_id: str  # REQUIRED
    description: str  # OPTIONAL
    game_session_id: str  # OPTIONAL
    subcategory: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_category(self, value: str) -> UserReportRequest:
        self.category = value
        return self

    def with_user_id(self, value: str) -> UserReportRequest:
        self.user_id = value
        return self

    def with_description(self, value: str) -> UserReportRequest:
        self.description = value
        return self

    def with_game_session_id(self, value: str) -> UserReportRequest:
        self.game_session_id = value
        return self

    def with_subcategory(self, value: str) -> UserReportRequest:
        self.subcategory = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "category"):
            result["category"] = str(self.category)
        elif include_empty:
            result["category"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "game_session_id"):
            result["gameSessionId"] = str(self.game_session_id)
        elif include_empty:
            result["gameSessionId"] = ""
        if hasattr(self, "subcategory"):
            result["subcategory"] = str(self.subcategory)
        elif include_empty:
            result["subcategory"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        category: str,
        user_id: str,
        description: Optional[str] = None,
        game_session_id: Optional[str] = None,
        subcategory: Optional[str] = None,
    ) -> UserReportRequest:
        instance = cls()
        instance.category = category
        instance.user_id = user_id
        if description is not None:
            instance.description = description
        if game_session_id is not None:
            instance.game_session_id = game_session_id
        if subcategory is not None:
            instance.subcategory = subcategory
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> UserReportRequest:
        instance = cls()
        if not dict_:
            return instance
        if "category" in dict_ and dict_["category"] is not None:
            instance.category = str(dict_["category"])
        elif include_empty:
            instance.category = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "gameSessionId" in dict_ and dict_["gameSessionId"] is not None:
            instance.game_session_id = str(dict_["gameSessionId"])
        elif include_empty:
            instance.game_session_id = ""
        if "subcategory" in dict_ and dict_["subcategory"] is not None:
            instance.subcategory = str(dict_["subcategory"])
        elif include_empty:
            instance.subcategory = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, UserReportRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[UserReportRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        UserReportRequest, List[UserReportRequest], Dict[Any, UserReportRequest]
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
            "category": "category",
            "userId": "user_id",
            "description": "description",
            "gameSessionId": "game_session_id",
            "subcategory": "subcategory",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "category": True,
            "userId": True,
            "description": False,
            "gameSessionId": False,
            "subcategory": False,
        }

    # endregion static methods
