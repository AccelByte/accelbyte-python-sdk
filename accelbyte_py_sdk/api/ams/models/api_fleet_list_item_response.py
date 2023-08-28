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


class ApiFleetListItemResponse(Model):
    """Api fleet list item response (api.FleetListItemResponse)

    Properties:
        active_ds: (activeDs) REQUIRED int

        claimed_ds: (claimedDs) REQUIRED int

        counts: (counts) REQUIRED List[ApiFleetRegionalServerCounts]

        id_: (id) REQUIRED str

        image: (image) REQUIRED str

        name: (name) REQUIRED str

        regions: (regions) REQUIRED List[str]
    """

    # region fields

    active_ds: int  # REQUIRED
    claimed_ds: int  # REQUIRED
    counts: List[ApiFleetRegionalServerCounts]  # REQUIRED
    id_: str  # REQUIRED
    image: str  # REQUIRED
    name: str  # REQUIRED
    regions: List[str]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_active_ds(self, value: int) -> ApiFleetListItemResponse:
        self.active_ds = value
        return self

    def with_claimed_ds(self, value: int) -> ApiFleetListItemResponse:
        self.claimed_ds = value
        return self

    def with_counts(
        self, value: List[ApiFleetRegionalServerCounts]
    ) -> ApiFleetListItemResponse:
        self.counts = value
        return self

    def with_id(self, value: str) -> ApiFleetListItemResponse:
        self.id_ = value
        return self

    def with_image(self, value: str) -> ApiFleetListItemResponse:
        self.image = value
        return self

    def with_name(self, value: str) -> ApiFleetListItemResponse:
        self.name = value
        return self

    def with_regions(self, value: List[str]) -> ApiFleetListItemResponse:
        self.regions = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "active_ds"):
            result["activeDs"] = int(self.active_ds)
        elif include_empty:
            result["activeDs"] = 0
        if hasattr(self, "claimed_ds"):
            result["claimedDs"] = int(self.claimed_ds)
        elif include_empty:
            result["claimedDs"] = 0
        if hasattr(self, "counts"):
            result["counts"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.counts
            ]
        elif include_empty:
            result["counts"] = []
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "image"):
            result["image"] = str(self.image)
        elif include_empty:
            result["image"] = ""
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
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
        active_ds: int,
        claimed_ds: int,
        counts: List[ApiFleetRegionalServerCounts],
        id_: str,
        image: str,
        name: str,
        regions: List[str],
        **kwargs,
    ) -> ApiFleetListItemResponse:
        instance = cls()
        instance.active_ds = active_ds
        instance.claimed_ds = claimed_ds
        instance.counts = counts
        instance.id_ = id_
        instance.image = image
        instance.name = name
        instance.regions = regions
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiFleetListItemResponse:
        instance = cls()
        if not dict_:
            return instance
        if "activeDs" in dict_ and dict_["activeDs"] is not None:
            instance.active_ds = int(dict_["activeDs"])
        elif include_empty:
            instance.active_ds = 0
        if "claimedDs" in dict_ and dict_["claimedDs"] is not None:
            instance.claimed_ds = int(dict_["claimedDs"])
        elif include_empty:
            instance.claimed_ds = 0
        if "counts" in dict_ and dict_["counts"] is not None:
            instance.counts = [
                ApiFleetRegionalServerCounts.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["counts"]
            ]
        elif include_empty:
            instance.counts = []
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "image" in dict_ and dict_["image"] is not None:
            instance.image = str(dict_["image"])
        elif include_empty:
            instance.image = ""
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
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
            "activeDs": "active_ds",
            "claimedDs": "claimed_ds",
            "counts": "counts",
            "id": "id_",
            "image": "image",
            "name": "name",
            "regions": "regions",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "activeDs": True,
            "claimedDs": True,
            "counts": True,
            "id": True,
            "image": True,
            "name": True,
            "regions": True,
        }

    # endregion static methods
