# Auto-generated at 2021-10-21T08:52:31.825262+08:00
# from: Justice sessionbrowser Service ()

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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


class ModelsMatchMaking(Model):
    """Models match making (models.MatchMaking)

    Properties:
        channel: (channel) REQUIRED str

        client_version: (client_version) REQUIRED str

        created_at: (created_at) REQUIRED str

        deployment: (deployment) REQUIRED str

        event: (event) REQUIRED str

        game_mode: (game_mode) REQUIRED str

        joinable: (joinable) OPTIONAL bool

        match_id: (match_id) REQUIRED str

        matching_allies: (matching_allies) REQUIRED List[ModelsMatchingAlly]

        namespace: (namespace) REQUIRED str

        party_attributes: (party_attributes) REQUIRED Dict[str, Any]

        party_id: (party_id) OPTIONAL str

        queued_at: (queued_at) REQUIRED int

        region: (region) REQUIRED str

        server_name: (server_name) REQUIRED str

        status: (status) REQUIRED str
    """

    # region fields

    channel: str                                                                                   # REQUIRED
    client_version: str                                                                            # REQUIRED
    created_at: str                                                                                # REQUIRED
    deployment: str                                                                                # REQUIRED
    event: str                                                                                     # REQUIRED
    game_mode: str                                                                                 # REQUIRED
    joinable: bool                                                                                 # OPTIONAL
    match_id: str                                                                                  # REQUIRED
    matching_allies: List[ModelsMatchingAlly]                                                      # REQUIRED
    namespace: str                                                                                 # REQUIRED
    party_attributes: Dict[str, Any]                                                               # REQUIRED
    party_id: str                                                                                  # OPTIONAL
    queued_at: int                                                                                 # REQUIRED
    region: str                                                                                    # REQUIRED
    server_name: str                                                                               # REQUIRED
    status: str                                                                                    # REQUIRED

    # endregion fields

    # region with_x methods

    def with_channel(self, value: str) -> ModelsMatchMaking:
        self.channel = value
        return self

    def with_client_version(self, value: str) -> ModelsMatchMaking:
        self.client_version = value
        return self

    def with_created_at(self, value: str) -> ModelsMatchMaking:
        self.created_at = value
        return self

    def with_deployment(self, value: str) -> ModelsMatchMaking:
        self.deployment = value
        return self

    def with_event(self, value: str) -> ModelsMatchMaking:
        self.event = value
        return self

    def with_game_mode(self, value: str) -> ModelsMatchMaking:
        self.game_mode = value
        return self

    def with_joinable(self, value: bool) -> ModelsMatchMaking:
        self.joinable = value
        return self

    def with_match_id(self, value: str) -> ModelsMatchMaking:
        self.match_id = value
        return self

    def with_matching_allies(self, value: List[ModelsMatchingAlly]) -> ModelsMatchMaking:
        self.matching_allies = value
        return self

    def with_namespace(self, value: str) -> ModelsMatchMaking:
        self.namespace = value
        return self

    def with_party_attributes(self, value: Dict[str, Any]) -> ModelsMatchMaking:
        self.party_attributes = value
        return self

    def with_party_id(self, value: str) -> ModelsMatchMaking:
        self.party_id = value
        return self

    def with_queued_at(self, value: int) -> ModelsMatchMaking:
        self.queued_at = value
        return self

    def with_region(self, value: str) -> ModelsMatchMaking:
        self.region = value
        return self

    def with_server_name(self, value: str) -> ModelsMatchMaking:
        self.server_name = value
        return self

    def with_status(self, value: str) -> ModelsMatchMaking:
        self.status = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "channel") and self.channel:
            result["channel"] = str(self.channel)
        elif include_empty:
            result["channel"] = str()
        if hasattr(self, "client_version") and self.client_version:
            result["client_version"] = str(self.client_version)
        elif include_empty:
            result["client_version"] = str()
        if hasattr(self, "created_at") and self.created_at:
            result["created_at"] = str(self.created_at)
        elif include_empty:
            result["created_at"] = str()
        if hasattr(self, "deployment") and self.deployment:
            result["deployment"] = str(self.deployment)
        elif include_empty:
            result["deployment"] = str()
        if hasattr(self, "event") and self.event:
            result["event"] = str(self.event)
        elif include_empty:
            result["event"] = str()
        if hasattr(self, "game_mode") and self.game_mode:
            result["game_mode"] = str(self.game_mode)
        elif include_empty:
            result["game_mode"] = str()
        if hasattr(self, "joinable") and self.joinable:
            result["joinable"] = bool(self.joinable)
        elif include_empty:
            result["joinable"] = bool()
        if hasattr(self, "match_id") and self.match_id:
            result["match_id"] = str(self.match_id)
        elif include_empty:
            result["match_id"] = str()
        if hasattr(self, "matching_allies") and self.matching_allies:
            result["matching_allies"] = [i0.to_dict(include_empty=include_empty) for i0 in self.matching_allies]
        elif include_empty:
            result["matching_allies"] = []
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "party_attributes") and self.party_attributes:
            result["party_attributes"] = {str(k0): v0 for k0, v0 in self.party_attributes.items()}
        elif include_empty:
            result["party_attributes"] = {}
        if hasattr(self, "party_id") and self.party_id:
            result["party_id"] = str(self.party_id)
        elif include_empty:
            result["party_id"] = str()
        if hasattr(self, "queued_at") and self.queued_at:
            result["queued_at"] = int(self.queued_at)
        elif include_empty:
            result["queued_at"] = int()
        if hasattr(self, "region") and self.region:
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = str()
        if hasattr(self, "server_name") and self.server_name:
            result["server_name"] = str(self.server_name)
        elif include_empty:
            result["server_name"] = str()
        if hasattr(self, "status") and self.status:
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        channel: str,
        client_version: str,
        created_at: str,
        deployment: str,
        event: str,
        game_mode: str,
        match_id: str,
        matching_allies: List[ModelsMatchingAlly],
        namespace: str,
        party_attributes: Dict[str, Any],
        queued_at: int,
        region: str,
        server_name: str,
        status: str,
        joinable: Optional[bool] = None,
        party_id: Optional[str] = None,
    ) -> ModelsMatchMaking:
        instance = cls()
        instance.channel = channel
        instance.client_version = client_version
        instance.created_at = created_at
        instance.deployment = deployment
        instance.event = event
        instance.game_mode = game_mode
        instance.match_id = match_id
        instance.matching_allies = matching_allies
        instance.namespace = namespace
        instance.party_attributes = party_attributes
        instance.queued_at = queued_at
        instance.region = region
        instance.server_name = server_name
        instance.status = status
        if joinable is not None:
            instance.joinable = joinable
        if party_id is not None:
            instance.party_id = party_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsMatchMaking:
        instance = cls()
        if not dict_:
            return instance
        if "channel" in dict_ and dict_["channel"] is not None:
            instance.channel = str(dict_["channel"])
        elif include_empty:
            instance.channel = str()
        if "client_version" in dict_ and dict_["client_version"] is not None:
            instance.client_version = str(dict_["client_version"])
        elif include_empty:
            instance.client_version = str()
        if "created_at" in dict_ and dict_["created_at"] is not None:
            instance.created_at = str(dict_["created_at"])
        elif include_empty:
            instance.created_at = str()
        if "deployment" in dict_ and dict_["deployment"] is not None:
            instance.deployment = str(dict_["deployment"])
        elif include_empty:
            instance.deployment = str()
        if "event" in dict_ and dict_["event"] is not None:
            instance.event = str(dict_["event"])
        elif include_empty:
            instance.event = str()
        if "game_mode" in dict_ and dict_["game_mode"] is not None:
            instance.game_mode = str(dict_["game_mode"])
        elif include_empty:
            instance.game_mode = str()
        if "joinable" in dict_ and dict_["joinable"] is not None:
            instance.joinable = bool(dict_["joinable"])
        elif include_empty:
            instance.joinable = bool()
        if "match_id" in dict_ and dict_["match_id"] is not None:
            instance.match_id = str(dict_["match_id"])
        elif include_empty:
            instance.match_id = str()
        if "matching_allies" in dict_ and dict_["matching_allies"] is not None:
            instance.matching_allies = [ModelsMatchingAlly.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["matching_allies"]]
        elif include_empty:
            instance.matching_allies = []
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "party_attributes" in dict_ and dict_["party_attributes"] is not None:
            instance.party_attributes = {str(k0): v0 for k0, v0 in dict_["party_attributes"].items()}
        elif include_empty:
            instance.party_attributes = {}
        if "party_id" in dict_ and dict_["party_id"] is not None:
            instance.party_id = str(dict_["party_id"])
        elif include_empty:
            instance.party_id = str()
        if "queued_at" in dict_ and dict_["queued_at"] is not None:
            instance.queued_at = int(dict_["queued_at"])
        elif include_empty:
            instance.queued_at = int()
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = str()
        if "server_name" in dict_ and dict_["server_name"] is not None:
            instance.server_name = str(dict_["server_name"])
        elif include_empty:
            instance.server_name = str()
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "channel": "channel",
            "client_version": "client_version",
            "created_at": "created_at",
            "deployment": "deployment",
            "event": "event",
            "game_mode": "game_mode",
            "joinable": "joinable",
            "match_id": "match_id",
            "matching_allies": "matching_allies",
            "namespace": "namespace",
            "party_attributes": "party_attributes",
            "party_id": "party_id",
            "queued_at": "queued_at",
            "region": "region",
            "server_name": "server_name",
            "status": "status",
        }

    # endregion static methods
