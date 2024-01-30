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

from ..models.models_server import ModelsServer


class ModelsDSInformation(Model):
    """Models DS information (models.DSInformation)

    Properties:
        min_players: (MinPlayers) REQUIRED int

        requested_at: (RequestedAt) REQUIRED str

        requested_regions: (RequestedRegions) REQUIRED List[str]

        server: (Server) REQUIRED ModelsServer

        status: (Status) REQUIRED str
    """

    # region fields

    min_players: int  # REQUIRED
    requested_at: str  # REQUIRED
    requested_regions: List[str]  # REQUIRED
    server: ModelsServer  # REQUIRED
    status: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_min_players(self, value: int) -> ModelsDSInformation:
        self.min_players = value
        return self

    def with_requested_at(self, value: str) -> ModelsDSInformation:
        self.requested_at = value
        return self

    def with_requested_regions(self, value: List[str]) -> ModelsDSInformation:
        self.requested_regions = value
        return self

    def with_server(self, value: ModelsServer) -> ModelsDSInformation:
        self.server = value
        return self

    def with_status(self, value: str) -> ModelsDSInformation:
        self.status = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "min_players"):
            result["MinPlayers"] = int(self.min_players)
        elif include_empty:
            result["MinPlayers"] = 0
        if hasattr(self, "requested_at"):
            result["RequestedAt"] = str(self.requested_at)
        elif include_empty:
            result["RequestedAt"] = ""
        if hasattr(self, "requested_regions"):
            result["RequestedRegions"] = [str(i0) for i0 in self.requested_regions]
        elif include_empty:
            result["RequestedRegions"] = []
        if hasattr(self, "server"):
            result["Server"] = self.server.to_dict(include_empty=include_empty)
        elif include_empty:
            result["Server"] = ModelsServer()
        if hasattr(self, "status"):
            result["Status"] = str(self.status)
        elif include_empty:
            result["Status"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        min_players: int,
        requested_at: str,
        requested_regions: List[str],
        server: ModelsServer,
        status: str,
        **kwargs,
    ) -> ModelsDSInformation:
        instance = cls()
        instance.min_players = min_players
        instance.requested_at = requested_at
        instance.requested_regions = requested_regions
        instance.server = server
        instance.status = status
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsDSInformation:
        instance = cls()
        if not dict_:
            return instance
        if "MinPlayers" in dict_ and dict_["MinPlayers"] is not None:
            instance.min_players = int(dict_["MinPlayers"])
        elif include_empty:
            instance.min_players = 0
        if "RequestedAt" in dict_ and dict_["RequestedAt"] is not None:
            instance.requested_at = str(dict_["RequestedAt"])
        elif include_empty:
            instance.requested_at = ""
        if "RequestedRegions" in dict_ and dict_["RequestedRegions"] is not None:
            instance.requested_regions = [str(i0) for i0 in dict_["RequestedRegions"]]
        elif include_empty:
            instance.requested_regions = []
        if "Server" in dict_ and dict_["Server"] is not None:
            instance.server = ModelsServer.create_from_dict(
                dict_["Server"], include_empty=include_empty
            )
        elif include_empty:
            instance.server = ModelsServer()
        if "Status" in dict_ and dict_["Status"] is not None:
            instance.status = str(dict_["Status"])
        elif include_empty:
            instance.status = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsDSInformation]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsDSInformation]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsDSInformation, List[ModelsDSInformation], Dict[Any, ModelsDSInformation]
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
            "MinPlayers": "min_players",
            "RequestedAt": "requested_at",
            "RequestedRegions": "requested_regions",
            "Server": "server",
            "Status": "status",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "MinPlayers": True,
            "RequestedAt": True,
            "RequestedRegions": True,
            "Server": True,
            "Status": True,
        }

    # endregion static methods
