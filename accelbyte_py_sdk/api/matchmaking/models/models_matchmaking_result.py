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

from ..models.models_matching_ally import ModelsMatchingAlly


class ModelsMatchmakingResult(Model):
    """Models matchmaking result (models.MatchmakingResult)

    Properties:
        channel: (channel) REQUIRED str

        client_version: (client_version) REQUIRED str

        deployment: (deployment) REQUIRED str

        error_code: (error_code) REQUIRED int

        error_message: (error_message) REQUIRED str

        game_mode: (game_mode) REQUIRED str

        match_id: (match_id) REQUIRED str

        matching_allies: (matching_allies) REQUIRED List[ModelsMatchingAlly]

        namespace: (namespace) REQUIRED str

        party_attributes: (party_attributes) REQUIRED Dict[str, Any]

        queued_at: (queued_at) REQUIRED int

        region: (region) REQUIRED str

        server_name: (server_name) REQUIRED str

        status: (status) REQUIRED str

        ticket_id: (ticket_id) REQUIRED str

        updated_at: (updated_at) REQUIRED str

        joinable: (joinable) OPTIONAL bool

        party_id: (party_id) OPTIONAL str
    """

    # region fields

    channel: str  # REQUIRED
    client_version: str  # REQUIRED
    deployment: str  # REQUIRED
    error_code: int  # REQUIRED
    error_message: str  # REQUIRED
    game_mode: str  # REQUIRED
    match_id: str  # REQUIRED
    matching_allies: List[ModelsMatchingAlly]  # REQUIRED
    namespace: str  # REQUIRED
    party_attributes: Dict[str, Any]  # REQUIRED
    queued_at: int  # REQUIRED
    region: str  # REQUIRED
    server_name: str  # REQUIRED
    status: str  # REQUIRED
    ticket_id: str  # REQUIRED
    updated_at: str  # REQUIRED
    joinable: bool  # OPTIONAL
    party_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_channel(self, value: str) -> ModelsMatchmakingResult:
        self.channel = value
        return self

    def with_client_version(self, value: str) -> ModelsMatchmakingResult:
        self.client_version = value
        return self

    def with_deployment(self, value: str) -> ModelsMatchmakingResult:
        self.deployment = value
        return self

    def with_error_code(self, value: int) -> ModelsMatchmakingResult:
        self.error_code = value
        return self

    def with_error_message(self, value: str) -> ModelsMatchmakingResult:
        self.error_message = value
        return self

    def with_game_mode(self, value: str) -> ModelsMatchmakingResult:
        self.game_mode = value
        return self

    def with_match_id(self, value: str) -> ModelsMatchmakingResult:
        self.match_id = value
        return self

    def with_matching_allies(
        self, value: List[ModelsMatchingAlly]
    ) -> ModelsMatchmakingResult:
        self.matching_allies = value
        return self

    def with_namespace(self, value: str) -> ModelsMatchmakingResult:
        self.namespace = value
        return self

    def with_party_attributes(self, value: Dict[str, Any]) -> ModelsMatchmakingResult:
        self.party_attributes = value
        return self

    def with_queued_at(self, value: int) -> ModelsMatchmakingResult:
        self.queued_at = value
        return self

    def with_region(self, value: str) -> ModelsMatchmakingResult:
        self.region = value
        return self

    def with_server_name(self, value: str) -> ModelsMatchmakingResult:
        self.server_name = value
        return self

    def with_status(self, value: str) -> ModelsMatchmakingResult:
        self.status = value
        return self

    def with_ticket_id(self, value: str) -> ModelsMatchmakingResult:
        self.ticket_id = value
        return self

    def with_updated_at(self, value: str) -> ModelsMatchmakingResult:
        self.updated_at = value
        return self

    def with_joinable(self, value: bool) -> ModelsMatchmakingResult:
        self.joinable = value
        return self

    def with_party_id(self, value: str) -> ModelsMatchmakingResult:
        self.party_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "channel"):
            result["channel"] = str(self.channel)
        elif include_empty:
            result["channel"] = ""
        if hasattr(self, "client_version"):
            result["client_version"] = str(self.client_version)
        elif include_empty:
            result["client_version"] = ""
        if hasattr(self, "deployment"):
            result["deployment"] = str(self.deployment)
        elif include_empty:
            result["deployment"] = ""
        if hasattr(self, "error_code"):
            result["error_code"] = int(self.error_code)
        elif include_empty:
            result["error_code"] = 0
        if hasattr(self, "error_message"):
            result["error_message"] = str(self.error_message)
        elif include_empty:
            result["error_message"] = ""
        if hasattr(self, "game_mode"):
            result["game_mode"] = str(self.game_mode)
        elif include_empty:
            result["game_mode"] = ""
        if hasattr(self, "match_id"):
            result["match_id"] = str(self.match_id)
        elif include_empty:
            result["match_id"] = ""
        if hasattr(self, "matching_allies"):
            result["matching_allies"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.matching_allies
            ]
        elif include_empty:
            result["matching_allies"] = []
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "party_attributes"):
            result["party_attributes"] = {
                str(k0): v0 for k0, v0 in self.party_attributes.items()
            }
        elif include_empty:
            result["party_attributes"] = {}
        if hasattr(self, "queued_at"):
            result["queued_at"] = int(self.queued_at)
        elif include_empty:
            result["queued_at"] = 0
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = ""
        if hasattr(self, "server_name"):
            result["server_name"] = str(self.server_name)
        elif include_empty:
            result["server_name"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = ""
        if hasattr(self, "ticket_id"):
            result["ticket_id"] = str(self.ticket_id)
        elif include_empty:
            result["ticket_id"] = ""
        if hasattr(self, "updated_at"):
            result["updated_at"] = str(self.updated_at)
        elif include_empty:
            result["updated_at"] = ""
        if hasattr(self, "joinable"):
            result["joinable"] = bool(self.joinable)
        elif include_empty:
            result["joinable"] = False
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
        channel: str,
        client_version: str,
        deployment: str,
        error_code: int,
        error_message: str,
        game_mode: str,
        match_id: str,
        matching_allies: List[ModelsMatchingAlly],
        namespace: str,
        party_attributes: Dict[str, Any],
        queued_at: int,
        region: str,
        server_name: str,
        status: str,
        ticket_id: str,
        updated_at: str,
        joinable: Optional[bool] = None,
        party_id: Optional[str] = None,
    ) -> ModelsMatchmakingResult:
        instance = cls()
        instance.channel = channel
        instance.client_version = client_version
        instance.deployment = deployment
        instance.error_code = error_code
        instance.error_message = error_message
        instance.game_mode = game_mode
        instance.match_id = match_id
        instance.matching_allies = matching_allies
        instance.namespace = namespace
        instance.party_attributes = party_attributes
        instance.queued_at = queued_at
        instance.region = region
        instance.server_name = server_name
        instance.status = status
        instance.ticket_id = ticket_id
        instance.updated_at = updated_at
        if joinable is not None:
            instance.joinable = joinable
        if party_id is not None:
            instance.party_id = party_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsMatchmakingResult:
        instance = cls()
        if not dict_:
            return instance
        if "channel" in dict_ and dict_["channel"] is not None:
            instance.channel = str(dict_["channel"])
        elif include_empty:
            instance.channel = ""
        if "client_version" in dict_ and dict_["client_version"] is not None:
            instance.client_version = str(dict_["client_version"])
        elif include_empty:
            instance.client_version = ""
        if "deployment" in dict_ and dict_["deployment"] is not None:
            instance.deployment = str(dict_["deployment"])
        elif include_empty:
            instance.deployment = ""
        if "error_code" in dict_ and dict_["error_code"] is not None:
            instance.error_code = int(dict_["error_code"])
        elif include_empty:
            instance.error_code = 0
        if "error_message" in dict_ and dict_["error_message"] is not None:
            instance.error_message = str(dict_["error_message"])
        elif include_empty:
            instance.error_message = ""
        if "game_mode" in dict_ and dict_["game_mode"] is not None:
            instance.game_mode = str(dict_["game_mode"])
        elif include_empty:
            instance.game_mode = ""
        if "match_id" in dict_ and dict_["match_id"] is not None:
            instance.match_id = str(dict_["match_id"])
        elif include_empty:
            instance.match_id = ""
        if "matching_allies" in dict_ and dict_["matching_allies"] is not None:
            instance.matching_allies = [
                ModelsMatchingAlly.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["matching_allies"]
            ]
        elif include_empty:
            instance.matching_allies = []
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "party_attributes" in dict_ and dict_["party_attributes"] is not None:
            instance.party_attributes = {
                str(k0): v0 for k0, v0 in dict_["party_attributes"].items()
            }
        elif include_empty:
            instance.party_attributes = {}
        if "queued_at" in dict_ and dict_["queued_at"] is not None:
            instance.queued_at = int(dict_["queued_at"])
        elif include_empty:
            instance.queued_at = 0
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = ""
        if "server_name" in dict_ and dict_["server_name"] is not None:
            instance.server_name = str(dict_["server_name"])
        elif include_empty:
            instance.server_name = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = ""
        if "ticket_id" in dict_ and dict_["ticket_id"] is not None:
            instance.ticket_id = str(dict_["ticket_id"])
        elif include_empty:
            instance.ticket_id = ""
        if "updated_at" in dict_ and dict_["updated_at"] is not None:
            instance.updated_at = str(dict_["updated_at"])
        elif include_empty:
            instance.updated_at = ""
        if "joinable" in dict_ and dict_["joinable"] is not None:
            instance.joinable = bool(dict_["joinable"])
        elif include_empty:
            instance.joinable = False
        if "party_id" in dict_ and dict_["party_id"] is not None:
            instance.party_id = str(dict_["party_id"])
        elif include_empty:
            instance.party_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsMatchmakingResult]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsMatchmakingResult]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsMatchmakingResult,
        List[ModelsMatchmakingResult],
        Dict[Any, ModelsMatchmakingResult],
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
            "channel": "channel",
            "client_version": "client_version",
            "deployment": "deployment",
            "error_code": "error_code",
            "error_message": "error_message",
            "game_mode": "game_mode",
            "match_id": "match_id",
            "matching_allies": "matching_allies",
            "namespace": "namespace",
            "party_attributes": "party_attributes",
            "queued_at": "queued_at",
            "region": "region",
            "server_name": "server_name",
            "status": "status",
            "ticket_id": "ticket_id",
            "updated_at": "updated_at",
            "joinable": "joinable",
            "party_id": "party_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "channel": True,
            "client_version": True,
            "deployment": True,
            "error_code": True,
            "error_message": True,
            "game_mode": True,
            "match_id": True,
            "matching_allies": True,
            "namespace": True,
            "party_attributes": True,
            "queued_at": True,
            "region": True,
            "server_name": True,
            "status": True,
            "ticket_id": True,
            "updated_at": True,
            "joinable": False,
            "party_id": False,
        }

    # endregion static methods
