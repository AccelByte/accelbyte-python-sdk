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

from ..models.apimodels_matchmaking_history import ApimodelsMatchmakingHistory


class ApimodelsMatchmakingDetail(Model):
    """Apimodels matchmaking detail (apimodels.MatchmakingDetail)

    Properties:
        created_at: (createdAt) OPTIONAL str

        expired_at: (expiredAt) OPTIONAL str

        game_session_id: (gameSessionID) OPTIONAL str

        histories: (histories) OPTIONAL List[ApimodelsMatchmakingHistory]

        match_pool: (matchPool) OPTIONAL str

        match_rule: (matchRule) OPTIONAL str

        namespace: (namespace) OPTIONAL str

        party_session_id: (partySessionID) OPTIONAL str

        ticket_id: (ticketID) OPTIONAL str
    """

    # region fields

    created_at: str  # OPTIONAL
    expired_at: str  # OPTIONAL
    game_session_id: str  # OPTIONAL
    histories: List[ApimodelsMatchmakingHistory]  # OPTIONAL
    match_pool: str  # OPTIONAL
    match_rule: str  # OPTIONAL
    namespace: str  # OPTIONAL
    party_session_id: str  # OPTIONAL
    ticket_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> ApimodelsMatchmakingDetail:
        self.created_at = value
        return self

    def with_expired_at(self, value: str) -> ApimodelsMatchmakingDetail:
        self.expired_at = value
        return self

    def with_game_session_id(self, value: str) -> ApimodelsMatchmakingDetail:
        self.game_session_id = value
        return self

    def with_histories(
        self, value: List[ApimodelsMatchmakingHistory]
    ) -> ApimodelsMatchmakingDetail:
        self.histories = value
        return self

    def with_match_pool(self, value: str) -> ApimodelsMatchmakingDetail:
        self.match_pool = value
        return self

    def with_match_rule(self, value: str) -> ApimodelsMatchmakingDetail:
        self.match_rule = value
        return self

    def with_namespace(self, value: str) -> ApimodelsMatchmakingDetail:
        self.namespace = value
        return self

    def with_party_session_id(self, value: str) -> ApimodelsMatchmakingDetail:
        self.party_session_id = value
        return self

    def with_ticket_id(self, value: str) -> ApimodelsMatchmakingDetail:
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
        if hasattr(self, "expired_at"):
            result["expiredAt"] = str(self.expired_at)
        elif include_empty:
            result["expiredAt"] = ""
        if hasattr(self, "game_session_id"):
            result["gameSessionID"] = str(self.game_session_id)
        elif include_empty:
            result["gameSessionID"] = ""
        if hasattr(self, "histories"):
            result["histories"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.histories
            ]
        elif include_empty:
            result["histories"] = []
        if hasattr(self, "match_pool"):
            result["matchPool"] = str(self.match_pool)
        elif include_empty:
            result["matchPool"] = ""
        if hasattr(self, "match_rule"):
            result["matchRule"] = str(self.match_rule)
        elif include_empty:
            result["matchRule"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "party_session_id"):
            result["partySessionID"] = str(self.party_session_id)
        elif include_empty:
            result["partySessionID"] = ""
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
        expired_at: Optional[str] = None,
        game_session_id: Optional[str] = None,
        histories: Optional[List[ApimodelsMatchmakingHistory]] = None,
        match_pool: Optional[str] = None,
        match_rule: Optional[str] = None,
        namespace: Optional[str] = None,
        party_session_id: Optional[str] = None,
        ticket_id: Optional[str] = None,
        **kwargs,
    ) -> ApimodelsMatchmakingDetail:
        instance = cls()
        if created_at is not None:
            instance.created_at = created_at
        if expired_at is not None:
            instance.expired_at = expired_at
        if game_session_id is not None:
            instance.game_session_id = game_session_id
        if histories is not None:
            instance.histories = histories
        if match_pool is not None:
            instance.match_pool = match_pool
        if match_rule is not None:
            instance.match_rule = match_rule
        if namespace is not None:
            instance.namespace = namespace
        if party_session_id is not None:
            instance.party_session_id = party_session_id
        if ticket_id is not None:
            instance.ticket_id = ticket_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsMatchmakingDetail:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "expiredAt" in dict_ and dict_["expiredAt"] is not None:
            instance.expired_at = str(dict_["expiredAt"])
        elif include_empty:
            instance.expired_at = ""
        if "gameSessionID" in dict_ and dict_["gameSessionID"] is not None:
            instance.game_session_id = str(dict_["gameSessionID"])
        elif include_empty:
            instance.game_session_id = ""
        if "histories" in dict_ and dict_["histories"] is not None:
            instance.histories = [
                ApimodelsMatchmakingHistory.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["histories"]
            ]
        elif include_empty:
            instance.histories = []
        if "matchPool" in dict_ and dict_["matchPool"] is not None:
            instance.match_pool = str(dict_["matchPool"])
        elif include_empty:
            instance.match_pool = ""
        if "matchRule" in dict_ and dict_["matchRule"] is not None:
            instance.match_rule = str(dict_["matchRule"])
        elif include_empty:
            instance.match_rule = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "partySessionID" in dict_ and dict_["partySessionID"] is not None:
            instance.party_session_id = str(dict_["partySessionID"])
        elif include_empty:
            instance.party_session_id = ""
        if "ticketID" in dict_ and dict_["ticketID"] is not None:
            instance.ticket_id = str(dict_["ticketID"])
        elif include_empty:
            instance.ticket_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsMatchmakingDetail]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsMatchmakingDetail]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsMatchmakingDetail,
        List[ApimodelsMatchmakingDetail],
        Dict[Any, ApimodelsMatchmakingDetail],
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
            "createdAt": "created_at",
            "expiredAt": "expired_at",
            "gameSessionID": "game_session_id",
            "histories": "histories",
            "matchPool": "match_pool",
            "matchRule": "match_rule",
            "namespace": "namespace",
            "partySessionID": "party_session_id",
            "ticketID": "ticket_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": False,
            "expiredAt": False,
            "gameSessionID": False,
            "histories": False,
            "matchPool": False,
            "matchRule": False,
            "namespace": False,
            "partySessionID": False,
            "ticketID": False,
        }

    # endregion static methods
