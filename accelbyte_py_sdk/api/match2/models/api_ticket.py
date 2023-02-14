# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Match Service V2 (2.1.1)

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

from ..models.api_player_data import ApiPlayerData


class ApiTicket(Model):
    """Api ticket (api.Ticket)

    Properties:
        created_at: (createdAt) OPTIONAL str

        latencies: (latencies) OPTIONAL Dict[str, int]

        match_pool: (matchPool) OPTIONAL str

        namespace: (namespace) OPTIONAL str

        party_session_id: (partySessionID) OPTIONAL str

        players: (players) OPTIONAL List[ApiPlayerData]

        ticket_attributes: (ticketAttributes) OPTIONAL Dict[str, Any]

        ticket_id: (ticketID) OPTIONAL str
    """

    # region fields

    created_at: str  # OPTIONAL
    latencies: Dict[str, int]  # OPTIONAL
    match_pool: str  # OPTIONAL
    namespace: str  # OPTIONAL
    party_session_id: str  # OPTIONAL
    players: List[ApiPlayerData]  # OPTIONAL
    ticket_attributes: Dict[str, Any]  # OPTIONAL
    ticket_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> ApiTicket:
        self.created_at = value
        return self

    def with_latencies(self, value: Dict[str, int]) -> ApiTicket:
        self.latencies = value
        return self

    def with_match_pool(self, value: str) -> ApiTicket:
        self.match_pool = value
        return self

    def with_namespace(self, value: str) -> ApiTicket:
        self.namespace = value
        return self

    def with_party_session_id(self, value: str) -> ApiTicket:
        self.party_session_id = value
        return self

    def with_players(self, value: List[ApiPlayerData]) -> ApiTicket:
        self.players = value
        return self

    def with_ticket_attributes(self, value: Dict[str, Any]) -> ApiTicket:
        self.ticket_attributes = value
        return self

    def with_ticket_id(self, value: str) -> ApiTicket:
        self.ticket_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "latencies"):
            result["latencies"] = {
                str(k0): int(v0) for k0, v0 in self.latencies.items()
            }
        elif include_empty:
            result["latencies"] = {}
        if hasattr(self, "match_pool"):
            result["matchPool"] = str(self.match_pool)
        elif include_empty:
            result["matchPool"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "party_session_id"):
            result["partySessionID"] = str(self.party_session_id)
        elif include_empty:
            result["partySessionID"] = ""
        if hasattr(self, "players"):
            result["players"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.players
            ]
        elif include_empty:
            result["players"] = []
        if hasattr(self, "ticket_attributes"):
            result["ticketAttributes"] = {
                str(k0): v0 for k0, v0 in self.ticket_attributes.items()
            }
        elif include_empty:
            result["ticketAttributes"] = {}
        if hasattr(self, "ticket_id"):
            result["ticketID"] = str(self.ticket_id)
        elif include_empty:
            result["ticketID"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: Optional[str] = None,
        latencies: Optional[Dict[str, int]] = None,
        match_pool: Optional[str] = None,
        namespace: Optional[str] = None,
        party_session_id: Optional[str] = None,
        players: Optional[List[ApiPlayerData]] = None,
        ticket_attributes: Optional[Dict[str, Any]] = None,
        ticket_id: Optional[str] = None,
    ) -> ApiTicket:
        instance = cls()
        if created_at is not None:
            instance.created_at = created_at
        if latencies is not None:
            instance.latencies = latencies
        if match_pool is not None:
            instance.match_pool = match_pool
        if namespace is not None:
            instance.namespace = namespace
        if party_session_id is not None:
            instance.party_session_id = party_session_id
        if players is not None:
            instance.players = players
        if ticket_attributes is not None:
            instance.ticket_attributes = ticket_attributes
        if ticket_id is not None:
            instance.ticket_id = ticket_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ApiTicket:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "latencies" in dict_ and dict_["latencies"] is not None:
            instance.latencies = {
                str(k0): int(v0) for k0, v0 in dict_["latencies"].items()
            }
        elif include_empty:
            instance.latencies = {}
        if "matchPool" in dict_ and dict_["matchPool"] is not None:
            instance.match_pool = str(dict_["matchPool"])
        elif include_empty:
            instance.match_pool = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "partySessionID" in dict_ and dict_["partySessionID"] is not None:
            instance.party_session_id = str(dict_["partySessionID"])
        elif include_empty:
            instance.party_session_id = ""
        if "players" in dict_ and dict_["players"] is not None:
            instance.players = [
                ApiPlayerData.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["players"]
            ]
        elif include_empty:
            instance.players = []
        if "ticketAttributes" in dict_ and dict_["ticketAttributes"] is not None:
            instance.ticket_attributes = {
                str(k0): v0 for k0, v0 in dict_["ticketAttributes"].items()
            }
        elif include_empty:
            instance.ticket_attributes = {}
        if "ticketID" in dict_ and dict_["ticketID"] is not None:
            instance.ticket_id = str(dict_["ticketID"])
        elif include_empty:
            instance.ticket_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiTicket]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiTicket]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ApiTicket, List[ApiTicket], Dict[Any, ApiTicket]]:
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
            "createdAt": "created_at",
            "latencies": "latencies",
            "matchPool": "match_pool",
            "namespace": "namespace",
            "partySessionID": "party_session_id",
            "players": "players",
            "ticketAttributes": "ticket_attributes",
            "ticketID": "ticket_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": False,
            "latencies": False,
            "matchPool": False,
            "namespace": False,
            "partySessionID": False,
            "players": False,
            "ticketAttributes": False,
            "ticketID": False,
        }

    # endregion static methods
