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
from ..models.models_team import ModelsTeam


class ApimodelsAppendTeamGameSessionRequest(Model):
    """Apimodels append team game session request (apimodels.AppendTeamGameSessionRequest)

    Properties:
        additional_members: (additionalMembers) REQUIRED List[ModelsPartyMembers]

        proposed_teams: (proposedTeams) REQUIRED List[ModelsTeam]

        version: (version) REQUIRED int
    """

    # region fields

    additional_members: List[ModelsPartyMembers]  # REQUIRED
    proposed_teams: List[ModelsTeam]  # REQUIRED
    version: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_additional_members(
        self, value: List[ModelsPartyMembers]
    ) -> ApimodelsAppendTeamGameSessionRequest:
        self.additional_members = value
        return self

    def with_proposed_teams(
        self, value: List[ModelsTeam]
    ) -> ApimodelsAppendTeamGameSessionRequest:
        self.proposed_teams = value
        return self

    def with_version(self, value: int) -> ApimodelsAppendTeamGameSessionRequest:
        self.version = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "additional_members"):
            result["additionalMembers"] = [
                i0.to_dict(include_empty=include_empty)
                for i0 in self.additional_members
            ]
        elif include_empty:
            result["additionalMembers"] = []
        if hasattr(self, "proposed_teams"):
            result["proposedTeams"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.proposed_teams
            ]
        elif include_empty:
            result["proposedTeams"] = []
        if hasattr(self, "version"):
            result["version"] = int(self.version)
        elif include_empty:
            result["version"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        additional_members: List[ModelsPartyMembers],
        proposed_teams: List[ModelsTeam],
        version: int,
        **kwargs,
    ) -> ApimodelsAppendTeamGameSessionRequest:
        instance = cls()
        instance.additional_members = additional_members
        instance.proposed_teams = proposed_teams
        instance.version = version
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsAppendTeamGameSessionRequest:
        instance = cls()
        if not dict_:
            return instance
        if "additionalMembers" in dict_ and dict_["additionalMembers"] is not None:
            instance.additional_members = [
                ModelsPartyMembers.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["additionalMembers"]
            ]
        elif include_empty:
            instance.additional_members = []
        if "proposedTeams" in dict_ and dict_["proposedTeams"] is not None:
            instance.proposed_teams = [
                ModelsTeam.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["proposedTeams"]
            ]
        elif include_empty:
            instance.proposed_teams = []
        if "version" in dict_ and dict_["version"] is not None:
            instance.version = int(dict_["version"])
        elif include_empty:
            instance.version = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsAppendTeamGameSessionRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsAppendTeamGameSessionRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsAppendTeamGameSessionRequest,
        List[ApimodelsAppendTeamGameSessionRequest],
        Dict[Any, ApimodelsAppendTeamGameSessionRequest],
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
            "additionalMembers": "additional_members",
            "proposedTeams": "proposed_teams",
            "version": "version",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "additionalMembers": True,
            "proposedTeams": True,
            "version": True,
        }

    # endregion static methods
