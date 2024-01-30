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
        counts: (counts) REQUIRED List[ApiFleetRegionalServerCounts]

        id_: (id) REQUIRED str

        image: (image) REQUIRED str

        is_local: (isLocal) REQUIRED bool

        name: (name) REQUIRED str

        regions: (regions) REQUIRED List[str]
    """

    # region fields

    counts: List[ApiFleetRegionalServerCounts]  # REQUIRED
    id_: str  # REQUIRED
    image: str  # REQUIRED
    is_local: bool  # REQUIRED
    name: str  # REQUIRED
    regions: List[str]  # REQUIRED

    # endregion fields

    # region with_x methods

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

    def with_is_local(self, value: bool) -> ApiFleetListItemResponse:
        self.is_local = value
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
        if hasattr(self, "is_local"):
            result["isLocal"] = bool(self.is_local)
        elif include_empty:
            result["isLocal"] = False
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
        counts: List[ApiFleetRegionalServerCounts],
        id_: str,
        image: str,
        is_local: bool,
        name: str,
        regions: List[str],
        **kwargs,
    ) -> ApiFleetListItemResponse:
        instance = cls()
        instance.counts = counts
        instance.id_ = id_
        instance.image = image
        instance.is_local = is_local
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
        if "isLocal" in dict_ and dict_["isLocal"] is not None:
            instance.is_local = bool(dict_["isLocal"])
        elif include_empty:
            instance.is_local = False
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
            "counts": "counts",
            "id": "id_",
            "image": "image",
            "isLocal": "is_local",
            "name": "name",
            "regions": "regions",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "counts": True,
            "id": True,
            "image": True,
            "isLocal": True,
            "name": True,
            "regions": True,
        }

    # endregion static methods
