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


class ServiceGetSessionHistorySearchResponseItem(Model):
    """Service get session history search response item (service.GetSessionHistorySearchResponseItem)

    Properties:
        channel: (channel) REQUIRED str

        client_version: (client_version) REQUIRED str

        created_at: (created_at) REQUIRED str

        event_description: (event_description) REQUIRED str

        event_name: (event_name) REQUIRED str

        game_mode: (game_mode) REQUIRED str

        id_: (_id) REQUIRED str

        joinable: (joinable) REQUIRED bool

        match_id: (match_id) REQUIRED str

        namespace: (namespace) REQUIRED str

        region: (region) REQUIRED str

        server_name: (server_name) REQUIRED str

        status: (status) REQUIRED str

        sub_game_mode: (sub_game_mode) REQUIRED List[str]

        party_id: (party_id) OPTIONAL str
    """

    # region fields

    channel: str  # REQUIRED
    client_version: str  # REQUIRED
    created_at: str  # REQUIRED
    event_description: str  # REQUIRED
    event_name: str  # REQUIRED
    game_mode: str  # REQUIRED
    id_: str  # REQUIRED
    joinable: bool  # REQUIRED
    match_id: str  # REQUIRED
    namespace: str  # REQUIRED
    region: str  # REQUIRED
    server_name: str  # REQUIRED
    status: str  # REQUIRED
    sub_game_mode: List[str]  # REQUIRED
    party_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_channel(self, value: str) -> ServiceGetSessionHistorySearchResponseItem:
        self.channel = value
        return self

    def with_client_version(
        self, value: str
    ) -> ServiceGetSessionHistorySearchResponseItem:
        self.client_version = value
        return self

    def with_created_at(self, value: str) -> ServiceGetSessionHistorySearchResponseItem:
        self.created_at = value
        return self

    def with_event_description(
        self, value: str
    ) -> ServiceGetSessionHistorySearchResponseItem:
        self.event_description = value
        return self

    def with_event_name(self, value: str) -> ServiceGetSessionHistorySearchResponseItem:
        self.event_name = value
        return self

    def with_game_mode(self, value: str) -> ServiceGetSessionHistorySearchResponseItem:
        self.game_mode = value
        return self

    def with_id(self, value: str) -> ServiceGetSessionHistorySearchResponseItem:
        self.id_ = value
        return self

    def with_joinable(self, value: bool) -> ServiceGetSessionHistorySearchResponseItem:
        self.joinable = value
        return self

    def with_match_id(self, value: str) -> ServiceGetSessionHistorySearchResponseItem:
        self.match_id = value
        return self

    def with_namespace(self, value: str) -> ServiceGetSessionHistorySearchResponseItem:
        self.namespace = value
        return self

    def with_region(self, value: str) -> ServiceGetSessionHistorySearchResponseItem:
        self.region = value
        return self

    def with_server_name(
        self, value: str
    ) -> ServiceGetSessionHistorySearchResponseItem:
        self.server_name = value
        return self

    def with_status(self, value: str) -> ServiceGetSessionHistorySearchResponseItem:
        self.status = value
        return self

    def with_sub_game_mode(
        self, value: List[str]
    ) -> ServiceGetSessionHistorySearchResponseItem:
        self.sub_game_mode = value
        return self

    def with_party_id(self, value: str) -> ServiceGetSessionHistorySearchResponseItem:
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
        if hasattr(self, "created_at"):
            result["created_at"] = str(self.created_at)
        elif include_empty:
            result["created_at"] = ""
        if hasattr(self, "event_description"):
            result["event_description"] = str(self.event_description)
        elif include_empty:
            result["event_description"] = ""
        if hasattr(self, "event_name"):
            result["event_name"] = str(self.event_name)
        elif include_empty:
            result["event_name"] = ""
        if hasattr(self, "game_mode"):
            result["game_mode"] = str(self.game_mode)
        elif include_empty:
            result["game_mode"] = ""
        if hasattr(self, "id_"):
            result["_id"] = str(self.id_)
        elif include_empty:
            result["_id"] = ""
        if hasattr(self, "joinable"):
            result["joinable"] = bool(self.joinable)
        elif include_empty:
            result["joinable"] = False
        if hasattr(self, "match_id"):
            result["match_id"] = str(self.match_id)
        elif include_empty:
            result["match_id"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
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
        if hasattr(self, "sub_game_mode"):
            result["sub_game_mode"] = [str(i0) for i0 in self.sub_game_mode]
        elif include_empty:
            result["sub_game_mode"] = []
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
        created_at: str,
        event_description: str,
        event_name: str,
        game_mode: str,
        id_: str,
        joinable: bool,
        match_id: str,
        namespace: str,
        region: str,
        server_name: str,
        status: str,
        sub_game_mode: List[str],
        party_id: Optional[str] = None,
    ) -> ServiceGetSessionHistorySearchResponseItem:
        instance = cls()
        instance.channel = channel
        instance.client_version = client_version
        instance.created_at = created_at
        instance.event_description = event_description
        instance.event_name = event_name
        instance.game_mode = game_mode
        instance.id_ = id_
        instance.joinable = joinable
        instance.match_id = match_id
        instance.namespace = namespace
        instance.region = region
        instance.server_name = server_name
        instance.status = status
        instance.sub_game_mode = sub_game_mode
        if party_id is not None:
            instance.party_id = party_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ServiceGetSessionHistorySearchResponseItem:
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
        if "created_at" in dict_ and dict_["created_at"] is not None:
            instance.created_at = str(dict_["created_at"])
        elif include_empty:
            instance.created_at = ""
        if "event_description" in dict_ and dict_["event_description"] is not None:
            instance.event_description = str(dict_["event_description"])
        elif include_empty:
            instance.event_description = ""
        if "event_name" in dict_ and dict_["event_name"] is not None:
            instance.event_name = str(dict_["event_name"])
        elif include_empty:
            instance.event_name = ""
        if "game_mode" in dict_ and dict_["game_mode"] is not None:
            instance.game_mode = str(dict_["game_mode"])
        elif include_empty:
            instance.game_mode = ""
        if "_id" in dict_ and dict_["_id"] is not None:
            instance.id_ = str(dict_["_id"])
        elif include_empty:
            instance.id_ = ""
        if "joinable" in dict_ and dict_["joinable"] is not None:
            instance.joinable = bool(dict_["joinable"])
        elif include_empty:
            instance.joinable = False
        if "match_id" in dict_ and dict_["match_id"] is not None:
            instance.match_id = str(dict_["match_id"])
        elif include_empty:
            instance.match_id = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
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
        if "sub_game_mode" in dict_ and dict_["sub_game_mode"] is not None:
            instance.sub_game_mode = [str(i0) for i0 in dict_["sub_game_mode"]]
        elif include_empty:
            instance.sub_game_mode = []
        if "party_id" in dict_ and dict_["party_id"] is not None:
            instance.party_id = str(dict_["party_id"])
        elif include_empty:
            instance.party_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ServiceGetSessionHistorySearchResponseItem]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ServiceGetSessionHistorySearchResponseItem]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ServiceGetSessionHistorySearchResponseItem,
        List[ServiceGetSessionHistorySearchResponseItem],
        Dict[Any, ServiceGetSessionHistorySearchResponseItem],
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
            "created_at": "created_at",
            "event_description": "event_description",
            "event_name": "event_name",
            "game_mode": "game_mode",
            "_id": "id_",
            "joinable": "joinable",
            "match_id": "match_id",
            "namespace": "namespace",
            "region": "region",
            "server_name": "server_name",
            "status": "status",
            "sub_game_mode": "sub_game_mode",
            "party_id": "party_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "channel": True,
            "client_version": True,
            "created_at": True,
            "event_description": True,
            "event_name": True,
            "game_mode": True,
            "_id": True,
            "joinable": True,
            "match_id": True,
            "namespace": True,
            "region": True,
            "server_name": True,
            "status": True,
            "sub_game_mode": True,
            "party_id": False,
        }

    # endregion static methods
