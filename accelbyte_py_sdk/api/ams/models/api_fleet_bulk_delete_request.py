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


class ApiFleetBulkDeleteRequest(Model):
    """Api fleet bulk delete request (api.FleetBulkDeleteRequest)

    Properties:
        fleet_ids: (fleetIds) REQUIRED List[str]
    """

    # region fields

    fleet_ids: List[str]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_fleet_ids(self, value: List[str]) -> ApiFleetBulkDeleteRequest:
        self.fleet_ids = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "fleet_ids"):
            result["fleetIds"] = [str(i0) for i0 in self.fleet_ids]
        elif include_empty:
            result["fleetIds"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(cls, fleet_ids: List[str], **kwargs) -> ApiFleetBulkDeleteRequest:
        instance = cls()
        instance.fleet_ids = fleet_ids
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiFleetBulkDeleteRequest:
        instance = cls()
        if not dict_:
            return instance
        if "fleetIds" in dict_ and dict_["fleetIds"] is not None:
            instance.fleet_ids = [str(i0) for i0 in dict_["fleetIds"]]
        elif include_empty:
            instance.fleet_ids = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiFleetBulkDeleteRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiFleetBulkDeleteRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiFleetBulkDeleteRequest,
        List[ApiFleetBulkDeleteRequest],
        Dict[Any, ApiFleetBulkDeleteRequest],
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
            "fleetIds": "fleet_ids",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "fleetIds": True,
        }

    # endregion static methods
