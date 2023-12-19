# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Match Service V2 (2.13.0)

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

from ..models.matchmaker_party import MatchmakerParty


class MatchmakerTeam(Model):
    """Matchmaker team (matchmaker.Team)

    Properties:
        parties: (Parties) REQUIRED List[MatchmakerParty]

        user_i_ds: (UserIDs) REQUIRED List[str]
    """

    # region fields

    parties: List[MatchmakerParty]  # REQUIRED
    user_i_ds: List[str]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_parties(self, value: List[MatchmakerParty]) -> MatchmakerTeam:
        self.parties = value
        return self

    def with_user_i_ds(self, value: List[str]) -> MatchmakerTeam:
        self.user_i_ds = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "parties"):
            result["Parties"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.parties
            ]
        elif include_empty:
            result["Parties"] = []
        if hasattr(self, "user_i_ds"):
            result["UserIDs"] = [str(i0) for i0 in self.user_i_ds]
        elif include_empty:
            result["UserIDs"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, parties: List[MatchmakerParty], user_i_ds: List[str], **kwargs
    ) -> MatchmakerTeam:
        instance = cls()
        instance.parties = parties
        instance.user_i_ds = user_i_ds
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> MatchmakerTeam:
        instance = cls()
        if not dict_:
            return instance
        if "Parties" in dict_ and dict_["Parties"] is not None:
            instance.parties = [
                MatchmakerParty.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["Parties"]
            ]
        elif include_empty:
            instance.parties = []
        if "UserIDs" in dict_ and dict_["UserIDs"] is not None:
            instance.user_i_ds = [str(i0) for i0 in dict_["UserIDs"]]
        elif include_empty:
            instance.user_i_ds = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, MatchmakerTeam]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[MatchmakerTeam]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[MatchmakerTeam, List[MatchmakerTeam], Dict[Any, MatchmakerTeam]]:
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
            "Parties": "parties",
            "UserIDs": "user_i_ds",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "Parties": True,
            "UserIDs": True,
        }

    # endregion static methods
