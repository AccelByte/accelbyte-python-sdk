# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Fleet Commander (1.2.2)

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


class ApiAccountLimits(Model):
    """Api account limits (api.AccountLimits)

    Properties:
        fleet_count: (fleetCount) OPTIONAL int

        fleet_vm_count: (fleetVmCount) OPTIONAL int
    """

    # region fields

    fleet_count: int  # OPTIONAL
    fleet_vm_count: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_fleet_count(self, value: int) -> ApiAccountLimits:
        self.fleet_count = value
        return self

    def with_fleet_vm_count(self, value: int) -> ApiAccountLimits:
        self.fleet_vm_count = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "fleet_count"):
            result["fleetCount"] = int(self.fleet_count)
        elif include_empty:
            result["fleetCount"] = 0
        if hasattr(self, "fleet_vm_count"):
            result["fleetVmCount"] = int(self.fleet_vm_count)
        elif include_empty:
            result["fleetVmCount"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        fleet_count: Optional[int] = None,
        fleet_vm_count: Optional[int] = None,
        **kwargs,
    ) -> ApiAccountLimits:
        instance = cls()
        if fleet_count is not None:
            instance.fleet_count = fleet_count
        if fleet_vm_count is not None:
            instance.fleet_vm_count = fleet_vm_count
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiAccountLimits:
        instance = cls()
        if not dict_:
            return instance
        if "fleetCount" in dict_ and dict_["fleetCount"] is not None:
            instance.fleet_count = int(dict_["fleetCount"])
        elif include_empty:
            instance.fleet_count = 0
        if "fleetVmCount" in dict_ and dict_["fleetVmCount"] is not None:
            instance.fleet_vm_count = int(dict_["fleetVmCount"])
        elif include_empty:
            instance.fleet_vm_count = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiAccountLimits]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiAccountLimits]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ApiAccountLimits, List[ApiAccountLimits], Dict[Any, ApiAccountLimits]]:
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
            "fleetCount": "fleet_count",
            "fleetVmCount": "fleet_vm_count",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "fleetCount": False,
            "fleetVmCount": False,
        }

    # endregion static methods
