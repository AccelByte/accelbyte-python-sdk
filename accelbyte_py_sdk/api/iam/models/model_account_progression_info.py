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

from ..models.model_progression_info import ModelProgressionInfo


class ModelAccountProgressionInfo(Model):
    """Model account progression info (model.AccountProgressionInfo)

    Properties:
        linked_games: (linkedGames) REQUIRED List[str]

        display_name: (displayName) OPTIONAL str

        email: (email) OPTIONAL str

        platform_id: (platformId) OPTIONAL str

        progressions: (progressions) OPTIONAL List[ModelProgressionInfo]

        unique_display_name: (uniqueDisplayName) OPTIONAL str

        user_name: (userName) OPTIONAL str
    """

    # region fields

    linked_games: List[str]  # REQUIRED
    display_name: str  # OPTIONAL
    email: str  # OPTIONAL
    platform_id: str  # OPTIONAL
    progressions: List[ModelProgressionInfo]  # OPTIONAL
    unique_display_name: str  # OPTIONAL
    user_name: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_linked_games(self, value: List[str]) -> ModelAccountProgressionInfo:
        self.linked_games = value
        return self

    def with_display_name(self, value: str) -> ModelAccountProgressionInfo:
        self.display_name = value
        return self

    def with_email(self, value: str) -> ModelAccountProgressionInfo:
        self.email = value
        return self

    def with_platform_id(self, value: str) -> ModelAccountProgressionInfo:
        self.platform_id = value
        return self

    def with_progressions(
        self, value: List[ModelProgressionInfo]
    ) -> ModelAccountProgressionInfo:
        self.progressions = value
        return self

    def with_unique_display_name(self, value: str) -> ModelAccountProgressionInfo:
        self.unique_display_name = value
        return self

    def with_user_name(self, value: str) -> ModelAccountProgressionInfo:
        self.user_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "linked_games"):
            result["linkedGames"] = [str(i0) for i0 in self.linked_games]
        elif include_empty:
            result["linkedGames"] = []
        if hasattr(self, "display_name"):
            result["displayName"] = str(self.display_name)
        elif include_empty:
            result["displayName"] = ""
        if hasattr(self, "email"):
            result["email"] = str(self.email)
        elif include_empty:
            result["email"] = ""
        if hasattr(self, "platform_id"):
            result["platformId"] = str(self.platform_id)
        elif include_empty:
            result["platformId"] = ""
        if hasattr(self, "progressions"):
            result["progressions"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.progressions
            ]
        elif include_empty:
            result["progressions"] = []
        if hasattr(self, "unique_display_name"):
            result["uniqueDisplayName"] = str(self.unique_display_name)
        elif include_empty:
            result["uniqueDisplayName"] = ""
        if hasattr(self, "user_name"):
            result["userName"] = str(self.user_name)
        elif include_empty:
            result["userName"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        linked_games: List[str],
        display_name: Optional[str] = None,
        email: Optional[str] = None,
        platform_id: Optional[str] = None,
        progressions: Optional[List[ModelProgressionInfo]] = None,
        unique_display_name: Optional[str] = None,
        user_name: Optional[str] = None,
        **kwargs,
    ) -> ModelAccountProgressionInfo:
        instance = cls()
        instance.linked_games = linked_games
        if display_name is not None:
            instance.display_name = display_name
        if email is not None:
            instance.email = email
        if platform_id is not None:
            instance.platform_id = platform_id
        if progressions is not None:
            instance.progressions = progressions
        if unique_display_name is not None:
            instance.unique_display_name = unique_display_name
        if user_name is not None:
            instance.user_name = user_name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelAccountProgressionInfo:
        instance = cls()
        if not dict_:
            return instance
        if "linkedGames" in dict_ and dict_["linkedGames"] is not None:
            instance.linked_games = [str(i0) for i0 in dict_["linkedGames"]]
        elif include_empty:
            instance.linked_games = []
        if "displayName" in dict_ and dict_["displayName"] is not None:
            instance.display_name = str(dict_["displayName"])
        elif include_empty:
            instance.display_name = ""
        if "email" in dict_ and dict_["email"] is not None:
            instance.email = str(dict_["email"])
        elif include_empty:
            instance.email = ""
        if "platformId" in dict_ and dict_["platformId"] is not None:
            instance.platform_id = str(dict_["platformId"])
        elif include_empty:
            instance.platform_id = ""
        if "progressions" in dict_ and dict_["progressions"] is not None:
            instance.progressions = [
                ModelProgressionInfo.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["progressions"]
            ]
        elif include_empty:
            instance.progressions = []
        if "uniqueDisplayName" in dict_ and dict_["uniqueDisplayName"] is not None:
            instance.unique_display_name = str(dict_["uniqueDisplayName"])
        elif include_empty:
            instance.unique_display_name = ""
        if "userName" in dict_ and dict_["userName"] is not None:
            instance.user_name = str(dict_["userName"])
        elif include_empty:
            instance.user_name = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelAccountProgressionInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelAccountProgressionInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelAccountProgressionInfo,
        List[ModelAccountProgressionInfo],
        Dict[Any, ModelAccountProgressionInfo],
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
            "linkedGames": "linked_games",
            "displayName": "display_name",
            "email": "email",
            "platformId": "platform_id",
            "progressions": "progressions",
            "uniqueDisplayName": "unique_display_name",
            "userName": "user_name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "linkedGames": True,
            "displayName": False,
            "email": False,
            "platformId": False,
            "progressions": False,
            "uniqueDisplayName": False,
            "userName": False,
        }

    # endregion static methods
