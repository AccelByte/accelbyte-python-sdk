# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Fleet Commander

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


class ApiFleetListItemResponse(Model):
    """Api fleet list item response (api.FleetListItemResponse)

    Properties:
        active: (active) REQUIRED bool

        counts: (counts) REQUIRED List[ApiFleetRegionalServerCounts]

        fallback_fleet: (fallbackFleet) REQUIRED str

        id_: (id) REQUIRED str

        image: (image) REQUIRED str

        instance_provider: (instanceProvider) REQUIRED str

        is_local: (isLocal) REQUIRED bool

        name: (name) REQUIRED str

        on_demand: (onDemand) REQUIRED bool

        primary_fleet: (primaryFleet) REQUIRED str

        regions: (regions) REQUIRED List[str]
    """

    # region fields

    active: bool  # REQUIRED
    counts: List[ApiFleetRegionalServerCounts]  # REQUIRED
    fallback_fleet: str  # REQUIRED
    id_: str  # REQUIRED
    image: str  # REQUIRED
    instance_provider: str  # REQUIRED
    is_local: bool  # REQUIRED
    name: str  # REQUIRED
    on_demand: bool  # REQUIRED
    primary_fleet: str  # REQUIRED
    regions: List[str]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_active(self, value: bool) -> ApiFleetListItemResponse:
        self.active = value
        return self

    def with_counts(
        self, value: List[ApiFleetRegionalServerCounts]
    ) -> ApiFleetListItemResponse:
        self.counts = value
        return self

    def with_fallback_fleet(self, value: str) -> ApiFleetListItemResponse:
        self.fallback_fleet = value
        return self

    def with_id(self, value: str) -> ApiFleetListItemResponse:
        self.id_ = value
        return self

    def with_image(self, value: str) -> ApiFleetListItemResponse:
        self.image = value
        return self

    def with_instance_provider(self, value: str) -> ApiFleetListItemResponse:
        self.instance_provider = value
        return self

    def with_is_local(self, value: bool) -> ApiFleetListItemResponse:
        self.is_local = value
        return self

    def with_name(self, value: str) -> ApiFleetListItemResponse:
        self.name = value
        return self

    def with_on_demand(self, value: bool) -> ApiFleetListItemResponse:
        self.on_demand = value
        return self

    def with_primary_fleet(self, value: str) -> ApiFleetListItemResponse:
        self.primary_fleet = value
        return self

    def with_regions(self, value: List[str]) -> ApiFleetListItemResponse:
        self.regions = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "active"):
            result["active"] = bool(self.active)
        elif include_empty:
            result["active"] = False
        if hasattr(self, "counts"):
            result["counts"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.counts
            ]
        elif include_empty:
            result["counts"] = []
        if hasattr(self, "fallback_fleet"):
            result["fallbackFleet"] = str(self.fallback_fleet)
        elif include_empty:
            result["fallbackFleet"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "image"):
            result["image"] = str(self.image)
        elif include_empty:
            result["image"] = ""
        if hasattr(self, "instance_provider"):
            result["instanceProvider"] = str(self.instance_provider)
        elif include_empty:
            result["instanceProvider"] = ""
        if hasattr(self, "is_local"):
            result["isLocal"] = bool(self.is_local)
        elif include_empty:
            result["isLocal"] = False
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "on_demand"):
            result["onDemand"] = bool(self.on_demand)
        elif include_empty:
            result["onDemand"] = False
        if hasattr(self, "primary_fleet"):
            result["primaryFleet"] = str(self.primary_fleet)
        elif include_empty:
            result["primaryFleet"] = ""
        if hasattr(self, "regions"):
            result["regions"] = [str(i0) for i0 in self.regions]
        elif include_empty:
            result["regions"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        active: bool,
        counts: List[ApiFleetRegionalServerCounts],
        fallback_fleet: str,
        id_: str,
        image: str,
        instance_provider: str,
        is_local: bool,
        name: str,
        on_demand: bool,
        primary_fleet: str,
        regions: List[str],
        **kwargs,
    ) -> ApiFleetListItemResponse:
        instance = cls()
        instance.active = active
        instance.counts = counts
        instance.fallback_fleet = fallback_fleet
        instance.id_ = id_
        instance.image = image
        instance.instance_provider = instance_provider
        instance.is_local = is_local
        instance.name = name
        instance.on_demand = on_demand
        instance.primary_fleet = primary_fleet
        instance.regions = regions
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiFleetListItemResponse:
        instance = cls()
        if not dict_:
            return instance
        if "active" in dict_ and dict_["active"] is not None:
            instance.active = bool(dict_["active"])
        elif include_empty:
            instance.active = False
        if "counts" in dict_ and dict_["counts"] is not None:
            instance.counts = [
                ApiFleetRegionalServerCounts.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["counts"]
            ]
        elif include_empty:
            instance.counts = []
        if "fallbackFleet" in dict_ and dict_["fallbackFleet"] is not None:
            instance.fallback_fleet = str(dict_["fallbackFleet"])
        elif include_empty:
            instance.fallback_fleet = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "image" in dict_ and dict_["image"] is not None:
            instance.image = str(dict_["image"])
        elif include_empty:
            instance.image = ""
        if "instanceProvider" in dict_ and dict_["instanceProvider"] is not None:
            instance.instance_provider = str(dict_["instanceProvider"])
        elif include_empty:
            instance.instance_provider = ""
        if "isLocal" in dict_ and dict_["isLocal"] is not None:
            instance.is_local = bool(dict_["isLocal"])
        elif include_empty:
            instance.is_local = False
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "onDemand" in dict_ and dict_["onDemand"] is not None:
            instance.on_demand = bool(dict_["onDemand"])
        elif include_empty:
            instance.on_demand = False
        if "primaryFleet" in dict_ and dict_["primaryFleet"] is not None:
            instance.primary_fleet = str(dict_["primaryFleet"])
        elif include_empty:
            instance.primary_fleet = ""
        if "regions" in dict_ and dict_["regions"] is not None:
            instance.regions = [str(i0) for i0 in dict_["regions"]]
        elif include_empty:
            instance.regions = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiFleetListItemResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiFleetListItemResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiFleetListItemResponse,
        List[ApiFleetListItemResponse],
        Dict[Any, ApiFleetListItemResponse],
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
            "active": "active",
            "counts": "counts",
            "fallbackFleet": "fallback_fleet",
            "id": "id_",
            "image": "image",
            "instanceProvider": "instance_provider",
            "isLocal": "is_local",
            "name": "name",
            "onDemand": "on_demand",
            "primaryFleet": "primary_fleet",
            "regions": "regions",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "active": True,
            "counts": True,
            "fallbackFleet": True,
            "id": True,
            "image": True,
            "instanceProvider": True,
            "isLocal": True,
            "name": True,
            "onDemand": True,
            "primaryFleet": True,
            "regions": True,
        }

    # endregion static methods
