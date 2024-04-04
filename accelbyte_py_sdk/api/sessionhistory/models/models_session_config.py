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


class ModelsSessionConfig(Model):
    """Models session config (models.SessionConfig)

    Properties:
        client_version: (ClientVersion) OPTIONAL str

        deployment: (Deployment) OPTIONAL str

        inactive_timeout: (InactiveTimeout) OPTIONAL int

        invite_timeout: (InviteTimeout) OPTIONAL int

        joinability: (Joinability) OPTIONAL str

        max_players: (MaxPlayers) OPTIONAL int

        min_players: (MinPlayers) OPTIONAL int

        name: (Name) OPTIONAL str

        persistent: (Persistent) OPTIONAL bool

        requested_regions: (RequestedRegions) OPTIONAL List[str]

        type_: (Type) OPTIONAL str
    """

    # region fields

    client_version: str  # OPTIONAL
    deployment: str  # OPTIONAL
    inactive_timeout: int  # OPTIONAL
    invite_timeout: int  # OPTIONAL
    joinability: str  # OPTIONAL
    max_players: int  # OPTIONAL
    min_players: int  # OPTIONAL
    name: str  # OPTIONAL
    persistent: bool  # OPTIONAL
    requested_regions: List[str]  # OPTIONAL
    type_: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_client_version(self, value: str) -> ModelsSessionConfig:
        self.client_version = value
        return self

    def with_deployment(self, value: str) -> ModelsSessionConfig:
        self.deployment = value
        return self

    def with_inactive_timeout(self, value: int) -> ModelsSessionConfig:
        self.inactive_timeout = value
        return self

    def with_invite_timeout(self, value: int) -> ModelsSessionConfig:
        self.invite_timeout = value
        return self

    def with_joinability(self, value: str) -> ModelsSessionConfig:
        self.joinability = value
        return self

    def with_max_players(self, value: int) -> ModelsSessionConfig:
        self.max_players = value
        return self

    def with_min_players(self, value: int) -> ModelsSessionConfig:
        self.min_players = value
        return self

    def with_name(self, value: str) -> ModelsSessionConfig:
        self.name = value
        return self

    def with_persistent(self, value: bool) -> ModelsSessionConfig:
        self.persistent = value
        return self

    def with_requested_regions(self, value: List[str]) -> ModelsSessionConfig:
        self.requested_regions = value
        return self

    def with_type(self, value: str) -> ModelsSessionConfig:
        self.type_ = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "client_version"):
            result["ClientVersion"] = str(self.client_version)
        elif include_empty:
            result["ClientVersion"] = ""
        if hasattr(self, "deployment"):
            result["Deployment"] = str(self.deployment)
        elif include_empty:
            result["Deployment"] = ""
        if hasattr(self, "inactive_timeout"):
            result["InactiveTimeout"] = int(self.inactive_timeout)
        elif include_empty:
            result["InactiveTimeout"] = 0
        if hasattr(self, "invite_timeout"):
            result["InviteTimeout"] = int(self.invite_timeout)
        elif include_empty:
            result["InviteTimeout"] = 0
        if hasattr(self, "joinability"):
            result["Joinability"] = str(self.joinability)
        elif include_empty:
            result["Joinability"] = ""
        if hasattr(self, "max_players"):
            result["MaxPlayers"] = int(self.max_players)
        elif include_empty:
            result["MaxPlayers"] = 0
        if hasattr(self, "min_players"):
            result["MinPlayers"] = int(self.min_players)
        elif include_empty:
            result["MinPlayers"] = 0
        if hasattr(self, "name"):
            result["Name"] = str(self.name)
        elif include_empty:
            result["Name"] = ""
        if hasattr(self, "persistent"):
            result["Persistent"] = bool(self.persistent)
        elif include_empty:
            result["Persistent"] = False
        if hasattr(self, "requested_regions"):
            result["RequestedRegions"] = [str(i0) for i0 in self.requested_regions]
        elif include_empty:
            result["RequestedRegions"] = []
        if hasattr(self, "type_"):
            result["Type"] = str(self.type_)
        elif include_empty:
            result["Type"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        client_version: Optional[str] = None,
        deployment: Optional[str] = None,
        inactive_timeout: Optional[int] = None,
        invite_timeout: Optional[int] = None,
        joinability: Optional[str] = None,
        max_players: Optional[int] = None,
        min_players: Optional[int] = None,
        name: Optional[str] = None,
        persistent: Optional[bool] = None,
        requested_regions: Optional[List[str]] = None,
        type_: Optional[str] = None,
        **kwargs,
    ) -> ModelsSessionConfig:
        instance = cls()
        if client_version is not None:
            instance.client_version = client_version
        if deployment is not None:
            instance.deployment = deployment
        if inactive_timeout is not None:
            instance.inactive_timeout = inactive_timeout
        if invite_timeout is not None:
            instance.invite_timeout = invite_timeout
        if joinability is not None:
            instance.joinability = joinability
        if max_players is not None:
            instance.max_players = max_players
        if min_players is not None:
            instance.min_players = min_players
        if name is not None:
            instance.name = name
        if persistent is not None:
            instance.persistent = persistent
        if requested_regions is not None:
            instance.requested_regions = requested_regions
        if type_ is not None:
            instance.type_ = type_
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsSessionConfig:
        instance = cls()
        if not dict_:
            return instance
        if "ClientVersion" in dict_ and dict_["ClientVersion"] is not None:
            instance.client_version = str(dict_["ClientVersion"])
        elif include_empty:
            instance.client_version = ""
        if "Deployment" in dict_ and dict_["Deployment"] is not None:
            instance.deployment = str(dict_["Deployment"])
        elif include_empty:
            instance.deployment = ""
        if "InactiveTimeout" in dict_ and dict_["InactiveTimeout"] is not None:
            instance.inactive_timeout = int(dict_["InactiveTimeout"])
        elif include_empty:
            instance.inactive_timeout = 0
        if "InviteTimeout" in dict_ and dict_["InviteTimeout"] is not None:
            instance.invite_timeout = int(dict_["InviteTimeout"])
        elif include_empty:
            instance.invite_timeout = 0
        if "Joinability" in dict_ and dict_["Joinability"] is not None:
            instance.joinability = str(dict_["Joinability"])
        elif include_empty:
            instance.joinability = ""
        if "MaxPlayers" in dict_ and dict_["MaxPlayers"] is not None:
            instance.max_players = int(dict_["MaxPlayers"])
        elif include_empty:
            instance.max_players = 0
        if "MinPlayers" in dict_ and dict_["MinPlayers"] is not None:
            instance.min_players = int(dict_["MinPlayers"])
        elif include_empty:
            instance.min_players = 0
        if "Name" in dict_ and dict_["Name"] is not None:
            instance.name = str(dict_["Name"])
        elif include_empty:
            instance.name = ""
        if "Persistent" in dict_ and dict_["Persistent"] is not None:
            instance.persistent = bool(dict_["Persistent"])
        elif include_empty:
            instance.persistent = False
        if "RequestedRegions" in dict_ and dict_["RequestedRegions"] is not None:
            instance.requested_regions = [str(i0) for i0 in dict_["RequestedRegions"]]
        elif include_empty:
            instance.requested_regions = []
        if "Type" in dict_ and dict_["Type"] is not None:
            instance.type_ = str(dict_["Type"])
        elif include_empty:
            instance.type_ = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsSessionConfig]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsSessionConfig]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsSessionConfig, List[ModelsSessionConfig], Dict[Any, ModelsSessionConfig]
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
            "ClientVersion": "client_version",
            "Deployment": "deployment",
            "InactiveTimeout": "inactive_timeout",
            "InviteTimeout": "invite_timeout",
            "Joinability": "joinability",
            "MaxPlayers": "max_players",
            "MinPlayers": "min_players",
            "Name": "name",
            "Persistent": "persistent",
            "RequestedRegions": "requested_regions",
            "Type": "type_",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "ClientVersion": False,
            "Deployment": False,
            "InactiveTimeout": False,
            "InviteTimeout": False,
            "Joinability": False,
            "MaxPlayers": False,
            "MinPlayers": False,
            "Name": False,
            "Persistent": False,
            "RequestedRegions": False,
            "Type": False,
        }

    # endregion static methods
