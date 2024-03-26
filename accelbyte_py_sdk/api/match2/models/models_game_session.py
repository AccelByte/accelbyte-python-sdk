# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Match Service V2

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

from ..models.matchmaker_team import MatchmakerTeam
from ..models.models_configuration import ModelsConfiguration
from ..models.models_ds_information import ModelsDSInformation
from ..models.models_user import ModelsUser


class ModelsGameSession(Model):
    """Models game session (models.GameSession)

    Properties:
        attributes: (attributes) REQUIRED Dict[str, Any]

        backfill_ticket_id: (backfillTicketID) REQUIRED str

        configuration: (configuration) REQUIRED ModelsConfiguration

        created_at: (createdAt) REQUIRED str

        ds_information: (DSInformation) REQUIRED ModelsDSInformation

        game_mode: (GameMode) REQUIRED str

        id_: (id) REQUIRED str

        is_full: (IsFull) REQUIRED bool

        join_type: (JoinType) REQUIRED str

        leader_id: (leaderID) REQUIRED str

        match_pool: (matchPool) REQUIRED str

        members: (Members) REQUIRED List[ModelsUser]

        namespace: (namespace) REQUIRED str

        teams: (teams) REQUIRED List[MatchmakerTeam]

        updated_at: (updatedAt) REQUIRED str

        version: (version) REQUIRED int
    """

    # region fields

    attributes: Dict[str, Any]  # REQUIRED
    backfill_ticket_id: str  # REQUIRED
    configuration: ModelsConfiguration  # REQUIRED
    created_at: str  # REQUIRED
    ds_information: ModelsDSInformation  # REQUIRED
    game_mode: str  # REQUIRED
    id_: str  # REQUIRED
    is_full: bool  # REQUIRED
    join_type: str  # REQUIRED
    leader_id: str  # REQUIRED
    match_pool: str  # REQUIRED
    members: List[ModelsUser]  # REQUIRED
    namespace: str  # REQUIRED
    teams: List[MatchmakerTeam]  # REQUIRED
    updated_at: str  # REQUIRED
    version: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_attributes(self, value: Dict[str, Any]) -> ModelsGameSession:
        self.attributes = value
        return self

    def with_backfill_ticket_id(self, value: str) -> ModelsGameSession:
        self.backfill_ticket_id = value
        return self

    def with_configuration(self, value: ModelsConfiguration) -> ModelsGameSession:
        self.configuration = value
        return self

    def with_created_at(self, value: str) -> ModelsGameSession:
        self.created_at = value
        return self

    def with_ds_information(self, value: ModelsDSInformation) -> ModelsGameSession:
        self.ds_information = value
        return self

    def with_game_mode(self, value: str) -> ModelsGameSession:
        self.game_mode = value
        return self

    def with_id(self, value: str) -> ModelsGameSession:
        self.id_ = value
        return self

    def with_is_full(self, value: bool) -> ModelsGameSession:
        self.is_full = value
        return self

    def with_join_type(self, value: str) -> ModelsGameSession:
        self.join_type = value
        return self

    def with_leader_id(self, value: str) -> ModelsGameSession:
        self.leader_id = value
        return self

    def with_match_pool(self, value: str) -> ModelsGameSession:
        self.match_pool = value
        return self

    def with_members(self, value: List[ModelsUser]) -> ModelsGameSession:
        self.members = value
        return self

    def with_namespace(self, value: str) -> ModelsGameSession:
        self.namespace = value
        return self

    def with_teams(self, value: List[MatchmakerTeam]) -> ModelsGameSession:
        self.teams = value
        return self

    def with_updated_at(self, value: str) -> ModelsGameSession:
        self.updated_at = value
        return self

    def with_version(self, value: int) -> ModelsGameSession:
        self.version = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "attributes"):
            result["attributes"] = {str(k0): v0 for k0, v0 in self.attributes.items()}
        elif include_empty:
            result["attributes"] = {}
        if hasattr(self, "backfill_ticket_id"):
            result["backfillTicketID"] = str(self.backfill_ticket_id)
        elif include_empty:
            result["backfillTicketID"] = ""
        if hasattr(self, "configuration"):
            result["configuration"] = self.configuration.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["configuration"] = ModelsConfiguration()
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "ds_information"):
            result["DSInformation"] = self.ds_information.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["DSInformation"] = ModelsDSInformation()
        if hasattr(self, "game_mode"):
            result["GameMode"] = str(self.game_mode)
        elif include_empty:
            result["GameMode"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "is_full"):
            result["IsFull"] = bool(self.is_full)
        elif include_empty:
            result["IsFull"] = False
        if hasattr(self, "join_type"):
            result["JoinType"] = str(self.join_type)
        elif include_empty:
            result["JoinType"] = ""
        if hasattr(self, "leader_id"):
            result["leaderID"] = str(self.leader_id)
        elif include_empty:
            result["leaderID"] = ""
        if hasattr(self, "match_pool"):
            result["matchPool"] = str(self.match_pool)
        elif include_empty:
            result["matchPool"] = ""
        if hasattr(self, "members"):
            result["Members"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.members
            ]
        elif include_empty:
            result["Members"] = []
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "teams"):
            result["teams"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.teams
            ]
        elif include_empty:
            result["teams"] = []
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
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
        attributes: Dict[str, Any],
        backfill_ticket_id: str,
        configuration: ModelsConfiguration,
        created_at: str,
        ds_information: ModelsDSInformation,
        game_mode: str,
        id_: str,
        is_full: bool,
        join_type: str,
        leader_id: str,
        match_pool: str,
        members: List[ModelsUser],
        namespace: str,
        teams: List[MatchmakerTeam],
        updated_at: str,
        version: int,
        **kwargs,
    ) -> ModelsGameSession:
        instance = cls()
        instance.attributes = attributes
        instance.backfill_ticket_id = backfill_ticket_id
        instance.configuration = configuration
        instance.created_at = created_at
        instance.ds_information = ds_information
        instance.game_mode = game_mode
        instance.id_ = id_
        instance.is_full = is_full
        instance.join_type = join_type
        instance.leader_id = leader_id
        instance.match_pool = match_pool
        instance.members = members
        instance.namespace = namespace
        instance.teams = teams
        instance.updated_at = updated_at
        instance.version = version
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsGameSession:
        instance = cls()
        if not dict_:
            return instance
        if "attributes" in dict_ and dict_["attributes"] is not None:
            instance.attributes = {
                str(k0): v0 for k0, v0 in dict_["attributes"].items()
            }
        elif include_empty:
            instance.attributes = {}
        if "backfillTicketID" in dict_ and dict_["backfillTicketID"] is not None:
            instance.backfill_ticket_id = str(dict_["backfillTicketID"])
        elif include_empty:
            instance.backfill_ticket_id = ""
        if "configuration" in dict_ and dict_["configuration"] is not None:
            instance.configuration = ModelsConfiguration.create_from_dict(
                dict_["configuration"], include_empty=include_empty
            )
        elif include_empty:
            instance.configuration = ModelsConfiguration()
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "DSInformation" in dict_ and dict_["DSInformation"] is not None:
            instance.ds_information = ModelsDSInformation.create_from_dict(
                dict_["DSInformation"], include_empty=include_empty
            )
        elif include_empty:
            instance.ds_information = ModelsDSInformation()
        if "GameMode" in dict_ and dict_["GameMode"] is not None:
            instance.game_mode = str(dict_["GameMode"])
        elif include_empty:
            instance.game_mode = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "IsFull" in dict_ and dict_["IsFull"] is not None:
            instance.is_full = bool(dict_["IsFull"])
        elif include_empty:
            instance.is_full = False
        if "JoinType" in dict_ and dict_["JoinType"] is not None:
            instance.join_type = str(dict_["JoinType"])
        elif include_empty:
            instance.join_type = ""
        if "leaderID" in dict_ and dict_["leaderID"] is not None:
            instance.leader_id = str(dict_["leaderID"])
        elif include_empty:
            instance.leader_id = ""
        if "matchPool" in dict_ and dict_["matchPool"] is not None:
            instance.match_pool = str(dict_["matchPool"])
        elif include_empty:
            instance.match_pool = ""
        if "Members" in dict_ and dict_["Members"] is not None:
            instance.members = [
                ModelsUser.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["Members"]
            ]
        elif include_empty:
            instance.members = []
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "teams" in dict_ and dict_["teams"] is not None:
            instance.teams = [
                MatchmakerTeam.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["teams"]
            ]
        elif include_empty:
            instance.teams = []
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "version" in dict_ and dict_["version"] is not None:
            instance.version = int(dict_["version"])
        elif include_empty:
            instance.version = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsGameSession]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsGameSession]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsGameSession, List[ModelsGameSession], Dict[Any, ModelsGameSession]
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
            "attributes": "attributes",
            "backfillTicketID": "backfill_ticket_id",
            "configuration": "configuration",
            "createdAt": "created_at",
            "DSInformation": "ds_information",
            "GameMode": "game_mode",
            "id": "id_",
            "IsFull": "is_full",
            "JoinType": "join_type",
            "leaderID": "leader_id",
            "matchPool": "match_pool",
            "Members": "members",
            "namespace": "namespace",
            "teams": "teams",
            "updatedAt": "updated_at",
            "version": "version",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "attributes": True,
            "backfillTicketID": True,
            "configuration": True,
            "createdAt": True,
            "DSInformation": True,
            "GameMode": True,
            "id": True,
            "IsFull": True,
            "JoinType": True,
            "leaderID": True,
            "matchPool": True,
            "Members": True,
            "namespace": True,
            "teams": True,
            "updatedAt": True,
            "version": True,
        }

    # endregion static methods
