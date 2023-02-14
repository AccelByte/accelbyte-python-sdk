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

from ..models.api_team import ApiTeam
from ..models.api_ticket import ApiTicket


class ApiMatch(Model):
    """Api match (api.Match)

    Properties:
        backfill: (backfill) OPTIONAL bool

        client_version: (clientVersion) OPTIONAL str

        match_attributes: (matchAttributes) OPTIONAL Dict[str, Any]

        region_preference: (regionPreference) OPTIONAL List[str]

        server_name: (serverName) OPTIONAL str

        teams: (teams) OPTIONAL List[ApiTeam]

        tickets: (tickets) OPTIONAL List[ApiTicket]
    """

    # region fields

    backfill: bool  # OPTIONAL
    client_version: str  # OPTIONAL
    match_attributes: Dict[str, Any]  # OPTIONAL
    region_preference: List[str]  # OPTIONAL
    server_name: str  # OPTIONAL
    teams: List[ApiTeam]  # OPTIONAL
    tickets: List[ApiTicket]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_backfill(self, value: bool) -> ApiMatch:
        self.backfill = value
        return self

    def with_client_version(self, value: str) -> ApiMatch:
        self.client_version = value
        return self

    def with_match_attributes(self, value: Dict[str, Any]) -> ApiMatch:
        self.match_attributes = value
        return self

    def with_region_preference(self, value: List[str]) -> ApiMatch:
        self.region_preference = value
        return self

    def with_server_name(self, value: str) -> ApiMatch:
        self.server_name = value
        return self

    def with_teams(self, value: List[ApiTeam]) -> ApiMatch:
        self.teams = value
        return self

    def with_tickets(self, value: List[ApiTicket]) -> ApiMatch:
        self.tickets = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "backfill"):
            result["backfill"] = bool(self.backfill)
        elif include_empty:
            result["backfill"] = False
        if hasattr(self, "client_version"):
            result["clientVersion"] = str(self.client_version)
        elif include_empty:
            result["clientVersion"] = ""
        if hasattr(self, "match_attributes"):
            result["matchAttributes"] = {
                str(k0): v0 for k0, v0 in self.match_attributes.items()
            }
        elif include_empty:
            result["matchAttributes"] = {}
        if hasattr(self, "region_preference"):
            result["regionPreference"] = [str(i0) for i0 in self.region_preference]
        elif include_empty:
            result["regionPreference"] = []
        if hasattr(self, "server_name"):
            result["serverName"] = str(self.server_name)
        elif include_empty:
            result["serverName"] = ""
        if hasattr(self, "teams"):
            result["teams"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.teams
            ]
        elif include_empty:
            result["teams"] = []
        if hasattr(self, "tickets"):
            result["tickets"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.tickets
            ]
        elif include_empty:
            result["tickets"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        backfill: Optional[bool] = None,
        client_version: Optional[str] = None,
        match_attributes: Optional[Dict[str, Any]] = None,
        region_preference: Optional[List[str]] = None,
        server_name: Optional[str] = None,
        teams: Optional[List[ApiTeam]] = None,
        tickets: Optional[List[ApiTicket]] = None,
    ) -> ApiMatch:
        instance = cls()
        if backfill is not None:
            instance.backfill = backfill
        if client_version is not None:
            instance.client_version = client_version
        if match_attributes is not None:
            instance.match_attributes = match_attributes
        if region_preference is not None:
            instance.region_preference = region_preference
        if server_name is not None:
            instance.server_name = server_name
        if teams is not None:
            instance.teams = teams
        if tickets is not None:
            instance.tickets = tickets
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ApiMatch:
        instance = cls()
        if not dict_:
            return instance
        if "backfill" in dict_ and dict_["backfill"] is not None:
            instance.backfill = bool(dict_["backfill"])
        elif include_empty:
            instance.backfill = False
        if "clientVersion" in dict_ and dict_["clientVersion"] is not None:
            instance.client_version = str(dict_["clientVersion"])
        elif include_empty:
            instance.client_version = ""
        if "matchAttributes" in dict_ and dict_["matchAttributes"] is not None:
            instance.match_attributes = {
                str(k0): v0 for k0, v0 in dict_["matchAttributes"].items()
            }
        elif include_empty:
            instance.match_attributes = {}
        if "regionPreference" in dict_ and dict_["regionPreference"] is not None:
            instance.region_preference = [str(i0) for i0 in dict_["regionPreference"]]
        elif include_empty:
            instance.region_preference = []
        if "serverName" in dict_ and dict_["serverName"] is not None:
            instance.server_name = str(dict_["serverName"])
        elif include_empty:
            instance.server_name = ""
        if "teams" in dict_ and dict_["teams"] is not None:
            instance.teams = [
                ApiTeam.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["teams"]
            ]
        elif include_empty:
            instance.teams = []
        if "tickets" in dict_ and dict_["tickets"] is not None:
            instance.tickets = [
                ApiTicket.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["tickets"]
            ]
        elif include_empty:
            instance.tickets = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiMatch]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiMatch]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ApiMatch, List[ApiMatch], Dict[Any, ApiMatch]]:
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
            "backfill": "backfill",
            "clientVersion": "client_version",
            "matchAttributes": "match_attributes",
            "regionPreference": "region_preference",
            "serverName": "server_name",
            "teams": "teams",
            "tickets": "tickets",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "backfill": False,
            "clientVersion": False,
            "matchAttributes": False,
            "regionPreference": False,
            "serverName": False,
            "teams": False,
            "tickets": False,
        }

    # endregion static methods
