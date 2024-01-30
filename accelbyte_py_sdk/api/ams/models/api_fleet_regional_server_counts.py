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


class ApiFleetRegionalServerCounts(Model):
    """Api fleet regional server counts (api.FleetRegionalServerCounts)

    Properties:
        claimed_server_count: (claimedServerCount) REQUIRED int

        ready_server_count: (readyServerCount) REQUIRED int

        region: (region) REQUIRED str

        running_vm_count: (runningVmCount) REQUIRED int

        target_ds_count: (targetDsCount) REQUIRED int

        target_vm_count: (targetVmCount) REQUIRED int
    """

    # region fields

    claimed_server_count: int  # REQUIRED
    ready_server_count: int  # REQUIRED
    region: str  # REQUIRED
    running_vm_count: int  # REQUIRED
    target_ds_count: int  # REQUIRED
    target_vm_count: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_claimed_server_count(self, value: int) -> ApiFleetRegionalServerCounts:
        self.claimed_server_count = value
        return self

    def with_ready_server_count(self, value: int) -> ApiFleetRegionalServerCounts:
        self.ready_server_count = value
        return self

    def with_region(self, value: str) -> ApiFleetRegionalServerCounts:
        self.region = value
        return self

    def with_running_vm_count(self, value: int) -> ApiFleetRegionalServerCounts:
        self.running_vm_count = value
        return self

    def with_target_ds_count(self, value: int) -> ApiFleetRegionalServerCounts:
        self.target_ds_count = value
        return self

    def with_target_vm_count(self, value: int) -> ApiFleetRegionalServerCounts:
        self.target_vm_count = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "claimed_server_count"):
            result["claimedServerCount"] = int(self.claimed_server_count)
        elif include_empty:
            result["claimedServerCount"] = 0
        if hasattr(self, "ready_server_count"):
            result["readyServerCount"] = int(self.ready_server_count)
        elif include_empty:
            result["readyServerCount"] = 0
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = ""
        if hasattr(self, "running_vm_count"):
            result["runningVmCount"] = int(self.running_vm_count)
        elif include_empty:
            result["runningVmCount"] = 0
        if hasattr(self, "target_ds_count"):
            result["targetDsCount"] = int(self.target_ds_count)
        elif include_empty:
            result["targetDsCount"] = 0
        if hasattr(self, "target_vm_count"):
            result["targetVmCount"] = int(self.target_vm_count)
        elif include_empty:
            result["targetVmCount"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        claimed_server_count: int,
        ready_server_count: int,
        region: str,
        running_vm_count: int,
        target_ds_count: int,
        target_vm_count: int,
        **kwargs,
    ) -> ApiFleetRegionalServerCounts:
        instance = cls()
        instance.claimed_server_count = claimed_server_count
        instance.ready_server_count = ready_server_count
        instance.region = region
        instance.running_vm_count = running_vm_count
        instance.target_ds_count = target_ds_count
        instance.target_vm_count = target_vm_count
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiFleetRegionalServerCounts:
        instance = cls()
        if not dict_:
            return instance
        if "claimedServerCount" in dict_ and dict_["claimedServerCount"] is not None:
            instance.claimed_server_count = int(dict_["claimedServerCount"])
        elif include_empty:
            instance.claimed_server_count = 0
        if "readyServerCount" in dict_ and dict_["readyServerCount"] is not None:
            instance.ready_server_count = int(dict_["readyServerCount"])
        elif include_empty:
            instance.ready_server_count = 0
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = ""
        if "runningVmCount" in dict_ and dict_["runningVmCount"] is not None:
            instance.running_vm_count = int(dict_["runningVmCount"])
        elif include_empty:
            instance.running_vm_count = 0
        if "targetDsCount" in dict_ and dict_["targetDsCount"] is not None:
            instance.target_ds_count = int(dict_["targetDsCount"])
        elif include_empty:
            instance.target_ds_count = 0
        if "targetVmCount" in dict_ and dict_["targetVmCount"] is not None:
            instance.target_vm_count = int(dict_["targetVmCount"])
        elif include_empty:
            instance.target_vm_count = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiFleetRegionalServerCounts]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiFleetRegionalServerCounts]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiFleetRegionalServerCounts,
        List[ApiFleetRegionalServerCounts],
        Dict[Any, ApiFleetRegionalServerCounts],
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
            "claimedServerCount": "claimed_server_count",
            "readyServerCount": "ready_server_count",
            "region": "region",
            "runningVmCount": "running_vm_count",
            "targetDsCount": "target_ds_count",
            "targetVmCount": "target_vm_count",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "claimedServerCount": True,
            "readyServerCount": True,
            "region": True,
            "runningVmCount": True,
            "targetDsCount": True,
            "targetVmCount": True,
        }

    # endregion static methods
