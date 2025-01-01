# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Session Service

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

from ..models.models_party_members import ModelsPartyMembers


class ModelsTeam(Model):
    """Models team (models.Team)

    Properties:
        parties: (parties) OPTIONAL List[ModelsPartyMembers]

        team_id: (teamID) OPTIONAL str

        user_i_ds: (userIDs) OPTIONAL List[str]
    """

    # region fields

    parties: List[ModelsPartyMembers]  # OPTIONAL
    team_id: str  # OPTIONAL
    user_i_ds: List[str]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_parties(self, value: List[ModelsPartyMembers]) -> ModelsTeam:
        self.parties = value
        return self

    def with_team_id(self, value: str) -> ModelsTeam:
        self.team_id = value
        return self

    def with_user_i_ds(self, value: List[str]) -> ModelsTeam:
        self.user_i_ds = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "parties"):
            result["parties"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.parties
            ]
        elif include_empty:
            result["parties"] = []
        if hasattr(self, "team_id"):
            result["teamID"] = str(self.team_id)
        elif include_empty:
            result["teamID"] = ""
        if hasattr(self, "user_i_ds"):
            result["userIDs"] = [str(i0) for i0 in self.user_i_ds]
        elif include_empty:
            result["userIDs"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        parties: Optional[List[ModelsPartyMembers]] = None,
        team_id: Optional[str] = None,
        user_i_ds: Optional[List[str]] = None,
        **kwargs,
    ) -> ModelsTeam:
        instance = cls()
        if parties is not None:
            instance.parties = parties
        if team_id is not None:
            instance.team_id = team_id
        if user_i_ds is not None:
            instance.user_i_ds = user_i_ds
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsTeam:
        instance = cls()
        if not dict_:
            return instance
        if "parties" in dict_ and dict_["parties"] is not None:
            instance.parties = [
                ModelsPartyMembers.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["parties"]
            ]
        elif include_empty:
            instance.parties = []
        if "teamID" in dict_ and dict_["teamID"] is not None:
            instance.team_id = str(dict_["teamID"])
        elif include_empty:
            instance.team_id = ""
        if "userIDs" in dict_ and dict_["userIDs"] is not None:
            instance.user_i_ds = [str(i0) for i0 in dict_["userIDs"]]
        elif include_empty:
            instance.user_i_ds = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsTeam]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsTeam]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ModelsTeam, List[ModelsTeam], Dict[Any, ModelsTeam]]:
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
            "parties": "parties",
            "teamID": "team_id",
            "userIDs": "user_i_ds",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "parties": False,
            "teamID": False,
            "userIDs": False,
        }

    # endregion static methods
