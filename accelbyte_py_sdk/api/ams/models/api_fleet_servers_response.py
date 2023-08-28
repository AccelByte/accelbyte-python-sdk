# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Fleet Commander (1.0.1)

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

from ..models.api_fleet_regional_server_counts import ApiFleetRegionalServerCounts
from ..models.api_fleet_server_info_response import ApiFleetServerInfoResponse


class ApiFleetServersResponse(Model):
    """Api fleet servers response (api.FleetServersResponse)

    Properties:
        regions: (regions) REQUIRED List[ApiFleetRegionalServerCounts]

        servers: (servers) REQUIRED List[ApiFleetServerInfoResponse]
    """

    # region fields

    regions: List[ApiFleetRegionalServerCounts]  # REQUIRED
    servers: List[ApiFleetServerInfoResponse]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_regions(
        self, value: List[ApiFleetRegionalServerCounts]
    ) -> ApiFleetServersResponse:
        self.regions = value
        return self

    def with_servers(
        self, value: List[ApiFleetServerInfoResponse]
    ) -> ApiFleetServersResponse:
        self.servers = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "regions"):
            result["regions"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.regions
            ]
        elif include_empty:
            result["regions"] = []
        if hasattr(self, "servers"):
            result["servers"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.servers
            ]
        elif include_empty:
            result["servers"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        regions: List[ApiFleetRegionalServerCounts],
        servers: List[ApiFleetServerInfoResponse],
        **kwargs,
    ) -> ApiFleetServersResponse:
        instance = cls()
        instance.regions = regions
        instance.servers = servers
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiFleetServersResponse:
        instance = cls()
        if not dict_:
            return instance
        if "regions" in dict_ and dict_["regions"] is not None:
            instance.regions = [
                ApiFleetRegionalServerCounts.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["regions"]
            ]
        elif include_empty:
            instance.regions = []
        if "servers" in dict_ and dict_["servers"] is not None:
            instance.servers = [
                ApiFleetServerInfoResponse.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["servers"]
            ]
        elif include_empty:
            instance.servers = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiFleetServersResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiFleetServersResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiFleetServersResponse,
        List[ApiFleetServersResponse],
        Dict[Any, ApiFleetServersResponse],
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
            "regions": "regions",
            "servers": "servers",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "regions": True,
            "servers": True,
        }

    # endregion static methods
