# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Matchmaking Service (2.20.2)

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


class ModelsMatchAddUserIntoSessionRequest(Model):
    """Models match add user into session request (models.MatchAddUserIntoSessionRequest)

    Properties:
        user_id: (user_id) REQUIRED str

        blocked_players: (blocked_players) OPTIONAL List[str]

        party_id: (party_id) OPTIONAL str
    """

    # region fields

    user_id: str  # REQUIRED
    blocked_players: List[str]  # OPTIONAL
    party_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_user_id(self, value: str) -> ModelsMatchAddUserIntoSessionRequest:
        self.user_id = value
        return self

    def with_blocked_players(
        self, value: List[str]
    ) -> ModelsMatchAddUserIntoSessionRequest:
        self.blocked_players = value
        return self

    def with_party_id(self, value: str) -> ModelsMatchAddUserIntoSessionRequest:
        self.party_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "user_id"):
            result["user_id"] = str(self.user_id)
        elif include_empty:
            result["user_id"] = ""
        if hasattr(self, "blocked_players"):
            result["blocked_players"] = [str(i0) for i0 in self.blocked_players]
        elif include_empty:
            result["blocked_players"] = []
        if hasattr(self, "party_id"):
            result["party_id"] = str(self.party_id)
        elif include_empty:
            result["party_id"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        user_id: str,
        blocked_players: Optional[List[str]] = None,
        party_id: Optional[str] = None,
    ) -> ModelsMatchAddUserIntoSessionRequest:
        instance = cls()
        instance.user_id = user_id
        if blocked_players is not None:
            instance.blocked_players = blocked_players
        if party_id is not None:
            instance.party_id = party_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsMatchAddUserIntoSessionRequest:
        instance = cls()
        if not dict_:
            return instance
        if "user_id" in dict_ and dict_["user_id"] is not None:
            instance.user_id = str(dict_["user_id"])
        elif include_empty:
            instance.user_id = ""
        if "blocked_players" in dict_ and dict_["blocked_players"] is not None:
            instance.blocked_players = [str(i0) for i0 in dict_["blocked_players"]]
        elif include_empty:
            instance.blocked_players = []
        if "party_id" in dict_ and dict_["party_id"] is not None:
            instance.party_id = str(dict_["party_id"])
        elif include_empty:
            instance.party_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsMatchAddUserIntoSessionRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsMatchAddUserIntoSessionRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsMatchAddUserIntoSessionRequest,
        List[ModelsMatchAddUserIntoSessionRequest],
        Dict[Any, ModelsMatchAddUserIntoSessionRequest],
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
            "user_id": "user_id",
            "blocked_players": "blocked_players",
            "party_id": "party_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "user_id": True,
            "blocked_players": False,
            "party_id": False,
        }

    # endregion static methods
