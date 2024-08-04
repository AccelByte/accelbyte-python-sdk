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

from ..models.models_match_ticket import ModelsMatchTicket
from ..models.models_team import ModelsTeam


class ModelsMatch(Model):
    """Models match (models.Match)

    Properties:
        backfill: (Backfill) OPTIONAL bool

        client_version: (ClientVersion) OPTIONAL str

        match_attributes: (MatchAttributes) OPTIONAL Dict[str, Any]

        pivot_id: (PivotID) OPTIONAL str

        region_preference: (RegionPreference) OPTIONAL List[str]

        server_name: (ServerName) OPTIONAL str

        teams: (Teams) OPTIONAL List[ModelsTeam]

        tickets: (Tickets) OPTIONAL List[ModelsMatchTicket]

        timestamp: (Timestamp) OPTIONAL str
    """

    # region fields

    backfill: bool  # OPTIONAL
    client_version: str  # OPTIONAL
    match_attributes: Dict[str, Any]  # OPTIONAL
    pivot_id: str  # OPTIONAL
    region_preference: List[str]  # OPTIONAL
    server_name: str  # OPTIONAL
    teams: List[ModelsTeam]  # OPTIONAL
    tickets: List[ModelsMatchTicket]  # OPTIONAL
    timestamp: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_backfill(self, value: bool) -> ModelsMatch:
        self.backfill = value
        return self

    def with_client_version(self, value: str) -> ModelsMatch:
        self.client_version = value
        return self

    def with_match_attributes(self, value: Dict[str, Any]) -> ModelsMatch:
        self.match_attributes = value
        return self

    def with_pivot_id(self, value: str) -> ModelsMatch:
        self.pivot_id = value
        return self

    def with_region_preference(self, value: List[str]) -> ModelsMatch:
        self.region_preference = value
        return self

    def with_server_name(self, value: str) -> ModelsMatch:
        self.server_name = value
        return self

    def with_teams(self, value: List[ModelsTeam]) -> ModelsMatch:
        self.teams = value
        return self

    def with_tickets(self, value: List[ModelsMatchTicket]) -> ModelsMatch:
        self.tickets = value
        return self

    def with_timestamp(self, value: str) -> ModelsMatch:
        self.timestamp = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "backfill"):
            result["Backfill"] = bool(self.backfill)
        elif include_empty:
            result["Backfill"] = False
        if hasattr(self, "client_version"):
            result["ClientVersion"] = str(self.client_version)
        elif include_empty:
            result["ClientVersion"] = ""
        if hasattr(self, "match_attributes"):
            result["MatchAttributes"] = {
                str(k0): v0 for k0, v0 in self.match_attributes.items()
            }
        elif include_empty:
            result["MatchAttributes"] = {}
        if hasattr(self, "pivot_id"):
            result["PivotID"] = str(self.pivot_id)
        elif include_empty:
            result["PivotID"] = ""
        if hasattr(self, "region_preference"):
            result["RegionPreference"] = [str(i0) for i0 in self.region_preference]
        elif include_empty:
            result["RegionPreference"] = []
        if hasattr(self, "server_name"):
            result["ServerName"] = str(self.server_name)
        elif include_empty:
            result["ServerName"] = ""
        if hasattr(self, "teams"):
            result["Teams"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.teams
            ]
        elif include_empty:
            result["Teams"] = []
        if hasattr(self, "tickets"):
            result["Tickets"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.tickets
            ]
        elif include_empty:
            result["Tickets"] = []
        if hasattr(self, "timestamp"):
            result["Timestamp"] = str(self.timestamp)
        elif include_empty:
            result["Timestamp"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        backfill: Optional[bool] = None,
        client_version: Optional[str] = None,
        match_attributes: Optional[Dict[str, Any]] = None,
        pivot_id: Optional[str] = None,
        region_preference: Optional[List[str]] = None,
        server_name: Optional[str] = None,
        teams: Optional[List[ModelsTeam]] = None,
        tickets: Optional[List[ModelsMatchTicket]] = None,
        timestamp: Optional[str] = None,
        **kwargs,
    ) -> ModelsMatch:
        instance = cls()
        if backfill is not None:
            instance.backfill = backfill
        if client_version is not None:
            instance.client_version = client_version
        if match_attributes is not None:
            instance.match_attributes = match_attributes
        if pivot_id is not None:
            instance.pivot_id = pivot_id
        if region_preference is not None:
            instance.region_preference = region_preference
        if server_name is not None:
            instance.server_name = server_name
        if teams is not None:
            instance.teams = teams
        if tickets is not None:
            instance.tickets = tickets
        if timestamp is not None:
            instance.timestamp = timestamp
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsMatch:
        instance = cls()
        if not dict_:
            return instance
        if "Backfill" in dict_ and dict_["Backfill"] is not None:
            instance.backfill = bool(dict_["Backfill"])
        elif include_empty:
            instance.backfill = False
        if "ClientVersion" in dict_ and dict_["ClientVersion"] is not None:
            instance.client_version = str(dict_["ClientVersion"])
        elif include_empty:
            instance.client_version = ""
        if "MatchAttributes" in dict_ and dict_["MatchAttributes"] is not None:
            instance.match_attributes = {
                str(k0): v0 for k0, v0 in dict_["MatchAttributes"].items()
            }
        elif include_empty:
            instance.match_attributes = {}
        if "PivotID" in dict_ and dict_["PivotID"] is not None:
            instance.pivot_id = str(dict_["PivotID"])
        elif include_empty:
            instance.pivot_id = ""
        if "RegionPreference" in dict_ and dict_["RegionPreference"] is not None:
            instance.region_preference = [str(i0) for i0 in dict_["RegionPreference"]]
        elif include_empty:
            instance.region_preference = []
        if "ServerName" in dict_ and dict_["ServerName"] is not None:
            instance.server_name = str(dict_["ServerName"])
        elif include_empty:
            instance.server_name = ""
        if "Teams" in dict_ and dict_["Teams"] is not None:
            instance.teams = [
                ModelsTeam.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["Teams"]
            ]
        elif include_empty:
            instance.teams = []
        if "Tickets" in dict_ and dict_["Tickets"] is not None:
            instance.tickets = [
                ModelsMatchTicket.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["Tickets"]
            ]
        elif include_empty:
            instance.tickets = []
        if "Timestamp" in dict_ and dict_["Timestamp"] is not None:
            instance.timestamp = str(dict_["Timestamp"])
        elif include_empty:
            instance.timestamp = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsMatch]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsMatch]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ModelsMatch, List[ModelsMatch], Dict[Any, ModelsMatch]]:
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
            "Backfill": "backfill",
            "ClientVersion": "client_version",
            "MatchAttributes": "match_attributes",
            "PivotID": "pivot_id",
            "RegionPreference": "region_preference",
            "ServerName": "server_name",
            "Teams": "teams",
            "Tickets": "tickets",
            "Timestamp": "timestamp",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "Backfill": False,
            "ClientVersion": False,
            "MatchAttributes": False,
            "PivotID": False,
            "RegionPreference": False,
            "ServerName": False,
            "Teams": False,
            "Tickets": False,
            "Timestamp": False,
        }

    # endregion static methods
