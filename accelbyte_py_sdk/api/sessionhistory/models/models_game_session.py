# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Session History Service

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

from ..models.models_ds_information import ModelsDSInformation
from ..models.models_game_session_team import ModelsGameSessionTeam
from ..models.models_session_config import ModelsSessionConfig
from ..models.models_user import ModelsUser


class ModelsGameSession(Model):
    """Models game session (models.GameSession)

    Properties:
        attributes: (Attributes) OPTIONAL Dict[str, Any]

        backfill_ticket_id: (BackfillTicketID) OPTIONAL str

        code: (Code) OPTIONAL str

        configuration: (Configuration) OPTIONAL ModelsSessionConfig

        configuration_name: (ConfigurationName) OPTIONAL str

        created_at: (CreatedAt) OPTIONAL str

        created_by: (CreatedBy) OPTIONAL str

        ds_information: (DSInformation) OPTIONAL ModelsDSInformation

        game_mode: (GameMode) OPTIONAL str

        id_: (ID) OPTIONAL str

        is_active: (isActive) OPTIONAL bool

        is_full: (IsFull) OPTIONAL bool

        leader_id: (LeaderID) OPTIONAL str

        match_pool: (MatchPool) OPTIONAL str

        members: (Members) OPTIONAL List[ModelsUser]

        namespace: (Namespace) OPTIONAL str

        processing_time: (ProcessingTime) OPTIONAL int

        teams: (Teams) OPTIONAL List[ModelsGameSessionTeam]

        ticket_i_ds: (TicketIDs) OPTIONAL List[str]

        updated_at: (UpdatedAt) OPTIONAL str

        version: (Version) OPTIONAL int
    """

    # region fields

    attributes: Dict[str, Any]  # OPTIONAL
    backfill_ticket_id: str  # OPTIONAL
    code: str  # OPTIONAL
    configuration: ModelsSessionConfig  # OPTIONAL
    configuration_name: str  # OPTIONAL
    created_at: str  # OPTIONAL
    created_by: str  # OPTIONAL
    ds_information: ModelsDSInformation  # OPTIONAL
    game_mode: str  # OPTIONAL
    id_: str  # OPTIONAL
    is_active: bool  # OPTIONAL
    is_full: bool  # OPTIONAL
    leader_id: str  # OPTIONAL
    match_pool: str  # OPTIONAL
    members: List[ModelsUser]  # OPTIONAL
    namespace: str  # OPTIONAL
    processing_time: int  # OPTIONAL
    teams: List[ModelsGameSessionTeam]  # OPTIONAL
    ticket_i_ds: List[str]  # OPTIONAL
    updated_at: str  # OPTIONAL
    version: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_attributes(self, value: Dict[str, Any]) -> ModelsGameSession:
        self.attributes = value
        return self

    def with_backfill_ticket_id(self, value: str) -> ModelsGameSession:
        self.backfill_ticket_id = value
        return self

    def with_code(self, value: str) -> ModelsGameSession:
        self.code = value
        return self

    def with_configuration(self, value: ModelsSessionConfig) -> ModelsGameSession:
        self.configuration = value
        return self

    def with_configuration_name(self, value: str) -> ModelsGameSession:
        self.configuration_name = value
        return self

    def with_created_at(self, value: str) -> ModelsGameSession:
        self.created_at = value
        return self

    def with_created_by(self, value: str) -> ModelsGameSession:
        self.created_by = value
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

    def with_is_active(self, value: bool) -> ModelsGameSession:
        self.is_active = value
        return self

    def with_is_full(self, value: bool) -> ModelsGameSession:
        self.is_full = value
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

    def with_processing_time(self, value: int) -> ModelsGameSession:
        self.processing_time = value
        return self

    def with_teams(self, value: List[ModelsGameSessionTeam]) -> ModelsGameSession:
        self.teams = value
        return self

    def with_ticket_i_ds(self, value: List[str]) -> ModelsGameSession:
        self.ticket_i_ds = value
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
            result["Attributes"] = {str(k0): v0 for k0, v0 in self.attributes.items()}
        elif include_empty:
            result["Attributes"] = {}
        if hasattr(self, "backfill_ticket_id"):
            result["BackfillTicketID"] = str(self.backfill_ticket_id)
        elif include_empty:
            result["BackfillTicketID"] = ""
        if hasattr(self, "code"):
            result["Code"] = str(self.code)
        elif include_empty:
            result["Code"] = ""
        if hasattr(self, "configuration"):
            result["Configuration"] = self.configuration.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["Configuration"] = ModelsSessionConfig()
        if hasattr(self, "configuration_name"):
            result["ConfigurationName"] = str(self.configuration_name)
        elif include_empty:
            result["ConfigurationName"] = ""
        if hasattr(self, "created_at"):
            result["CreatedAt"] = str(self.created_at)
        elif include_empty:
            result["CreatedAt"] = ""
        if hasattr(self, "created_by"):
            result["CreatedBy"] = str(self.created_by)
        elif include_empty:
            result["CreatedBy"] = ""
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
            result["ID"] = str(self.id_)
        elif include_empty:
            result["ID"] = ""
        if hasattr(self, "is_active"):
            result["isActive"] = bool(self.is_active)
        elif include_empty:
            result["isActive"] = False
        if hasattr(self, "is_full"):
            result["IsFull"] = bool(self.is_full)
        elif include_empty:
            result["IsFull"] = False
        if hasattr(self, "leader_id"):
            result["LeaderID"] = str(self.leader_id)
        elif include_empty:
            result["LeaderID"] = ""
        if hasattr(self, "match_pool"):
            result["MatchPool"] = str(self.match_pool)
        elif include_empty:
            result["MatchPool"] = ""
        if hasattr(self, "members"):
            result["Members"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.members
            ]
        elif include_empty:
            result["Members"] = []
        if hasattr(self, "namespace"):
            result["Namespace"] = str(self.namespace)
        elif include_empty:
            result["Namespace"] = ""
        if hasattr(self, "processing_time"):
            result["ProcessingTime"] = int(self.processing_time)
        elif include_empty:
            result["ProcessingTime"] = 0
        if hasattr(self, "teams"):
            result["Teams"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.teams
            ]
        elif include_empty:
            result["Teams"] = []
        if hasattr(self, "ticket_i_ds"):
            result["TicketIDs"] = [str(i0) for i0 in self.ticket_i_ds]
        elif include_empty:
            result["TicketIDs"] = []
        if hasattr(self, "updated_at"):
            result["UpdatedAt"] = str(self.updated_at)
        elif include_empty:
            result["UpdatedAt"] = ""
        if hasattr(self, "version"):
            result["Version"] = int(self.version)
        elif include_empty:
            result["Version"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        attributes: Optional[Dict[str, Any]] = None,
        backfill_ticket_id: Optional[str] = None,
        code: Optional[str] = None,
        configuration: Optional[ModelsSessionConfig] = None,
        configuration_name: Optional[str] = None,
        created_at: Optional[str] = None,
        created_by: Optional[str] = None,
        ds_information: Optional[ModelsDSInformation] = None,
        game_mode: Optional[str] = None,
        id_: Optional[str] = None,
        is_active: Optional[bool] = None,
        is_full: Optional[bool] = None,
        leader_id: Optional[str] = None,
        match_pool: Optional[str] = None,
        members: Optional[List[ModelsUser]] = None,
        namespace: Optional[str] = None,
        processing_time: Optional[int] = None,
        teams: Optional[List[ModelsGameSessionTeam]] = None,
        ticket_i_ds: Optional[List[str]] = None,
        updated_at: Optional[str] = None,
        version: Optional[int] = None,
        **kwargs,
    ) -> ModelsGameSession:
        instance = cls()
        if attributes is not None:
            instance.attributes = attributes
        if backfill_ticket_id is not None:
            instance.backfill_ticket_id = backfill_ticket_id
        if code is not None:
            instance.code = code
        if configuration is not None:
            instance.configuration = configuration
        if configuration_name is not None:
            instance.configuration_name = configuration_name
        if created_at is not None:
            instance.created_at = created_at
        if created_by is not None:
            instance.created_by = created_by
        if ds_information is not None:
            instance.ds_information = ds_information
        if game_mode is not None:
            instance.game_mode = game_mode
        if id_ is not None:
            instance.id_ = id_
        if is_active is not None:
            instance.is_active = is_active
        if is_full is not None:
            instance.is_full = is_full
        if leader_id is not None:
            instance.leader_id = leader_id
        if match_pool is not None:
            instance.match_pool = match_pool
        if members is not None:
            instance.members = members
        if namespace is not None:
            instance.namespace = namespace
        if processing_time is not None:
            instance.processing_time = processing_time
        if teams is not None:
            instance.teams = teams
        if ticket_i_ds is not None:
            instance.ticket_i_ds = ticket_i_ds
        if updated_at is not None:
            instance.updated_at = updated_at
        if version is not None:
            instance.version = version
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsGameSession:
        instance = cls()
        if not dict_:
            return instance
        if "Attributes" in dict_ and dict_["Attributes"] is not None:
            instance.attributes = {
                str(k0): v0 for k0, v0 in dict_["Attributes"].items()
            }
        elif include_empty:
            instance.attributes = {}
        if "BackfillTicketID" in dict_ and dict_["BackfillTicketID"] is not None:
            instance.backfill_ticket_id = str(dict_["BackfillTicketID"])
        elif include_empty:
            instance.backfill_ticket_id = ""
        if "Code" in dict_ and dict_["Code"] is not None:
            instance.code = str(dict_["Code"])
        elif include_empty:
            instance.code = ""
        if "Configuration" in dict_ and dict_["Configuration"] is not None:
            instance.configuration = ModelsSessionConfig.create_from_dict(
                dict_["Configuration"], include_empty=include_empty
            )
        elif include_empty:
            instance.configuration = ModelsSessionConfig()
        if "ConfigurationName" in dict_ and dict_["ConfigurationName"] is not None:
            instance.configuration_name = str(dict_["ConfigurationName"])
        elif include_empty:
            instance.configuration_name = ""
        if "CreatedAt" in dict_ and dict_["CreatedAt"] is not None:
            instance.created_at = str(dict_["CreatedAt"])
        elif include_empty:
            instance.created_at = ""
        if "CreatedBy" in dict_ and dict_["CreatedBy"] is not None:
            instance.created_by = str(dict_["CreatedBy"])
        elif include_empty:
            instance.created_by = ""
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
        if "ID" in dict_ and dict_["ID"] is not None:
            instance.id_ = str(dict_["ID"])
        elif include_empty:
            instance.id_ = ""
        if "isActive" in dict_ and dict_["isActive"] is not None:
            instance.is_active = bool(dict_["isActive"])
        elif include_empty:
            instance.is_active = False
        if "IsFull" in dict_ and dict_["IsFull"] is not None:
            instance.is_full = bool(dict_["IsFull"])
        elif include_empty:
            instance.is_full = False
        if "LeaderID" in dict_ and dict_["LeaderID"] is not None:
            instance.leader_id = str(dict_["LeaderID"])
        elif include_empty:
            instance.leader_id = ""
        if "MatchPool" in dict_ and dict_["MatchPool"] is not None:
            instance.match_pool = str(dict_["MatchPool"])
        elif include_empty:
            instance.match_pool = ""
        if "Members" in dict_ and dict_["Members"] is not None:
            instance.members = [
                ModelsUser.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["Members"]
            ]
        elif include_empty:
            instance.members = []
        if "Namespace" in dict_ and dict_["Namespace"] is not None:
            instance.namespace = str(dict_["Namespace"])
        elif include_empty:
            instance.namespace = ""
        if "ProcessingTime" in dict_ and dict_["ProcessingTime"] is not None:
            instance.processing_time = int(dict_["ProcessingTime"])
        elif include_empty:
            instance.processing_time = 0
        if "Teams" in dict_ and dict_["Teams"] is not None:
            instance.teams = [
                ModelsGameSessionTeam.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["Teams"]
            ]
        elif include_empty:
            instance.teams = []
        if "TicketIDs" in dict_ and dict_["TicketIDs"] is not None:
            instance.ticket_i_ds = [str(i0) for i0 in dict_["TicketIDs"]]
        elif include_empty:
            instance.ticket_i_ds = []
        if "UpdatedAt" in dict_ and dict_["UpdatedAt"] is not None:
            instance.updated_at = str(dict_["UpdatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "Version" in dict_ and dict_["Version"] is not None:
            instance.version = int(dict_["Version"])
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
            "Attributes": "attributes",
            "BackfillTicketID": "backfill_ticket_id",
            "Code": "code",
            "Configuration": "configuration",
            "ConfigurationName": "configuration_name",
            "CreatedAt": "created_at",
            "CreatedBy": "created_by",
            "DSInformation": "ds_information",
            "GameMode": "game_mode",
            "ID": "id_",
            "isActive": "is_active",
            "IsFull": "is_full",
            "LeaderID": "leader_id",
            "MatchPool": "match_pool",
            "Members": "members",
            "Namespace": "namespace",
            "ProcessingTime": "processing_time",
            "Teams": "teams",
            "TicketIDs": "ticket_i_ds",
            "UpdatedAt": "updated_at",
            "Version": "version",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "Attributes": False,
            "BackfillTicketID": False,
            "Code": False,
            "Configuration": False,
            "ConfigurationName": False,
            "CreatedAt": False,
            "CreatedBy": False,
            "DSInformation": False,
            "GameMode": False,
            "ID": False,
            "isActive": False,
            "IsFull": False,
            "LeaderID": False,
            "MatchPool": False,
            "Members": False,
            "Namespace": False,
            "ProcessingTime": False,
            "Teams": False,
            "TicketIDs": False,
            "UpdatedAt": False,
            "Version": False,
        }

    # endregion static methods
