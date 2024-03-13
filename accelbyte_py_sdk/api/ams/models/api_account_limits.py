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


class ApiAccountLimits(Model):
    """Api account limits (api.AccountLimits)

    Properties:
        allowed_node_classes: (allowedNodeClasses) OPTIONAL List[str]

        allowed_regions: (allowedRegions) OPTIONAL List[str]

        fleet_count: (fleetCount) OPTIONAL int

        fleet_vm_count: (fleetVmCount) OPTIONAL int

        image_storage_quota_bytes: (imageStorageQuotaBytes) OPTIONAL int
    """

    # region fields

    allowed_node_classes: List[str]  # OPTIONAL
    allowed_regions: List[str]  # OPTIONAL
    fleet_count: int  # OPTIONAL
    fleet_vm_count: int  # OPTIONAL
    image_storage_quota_bytes: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_allowed_node_classes(self, value: List[str]) -> ApiAccountLimits:
        self.allowed_node_classes = value
        return self

    def with_allowed_regions(self, value: List[str]) -> ApiAccountLimits:
        self.allowed_regions = value
        return self

    def with_fleet_count(self, value: int) -> ApiAccountLimits:
        self.fleet_count = value
        return self

    def with_fleet_vm_count(self, value: int) -> ApiAccountLimits:
        self.fleet_vm_count = value
        return self

    def with_image_storage_quota_bytes(self, value: int) -> ApiAccountLimits:
        self.image_storage_quota_bytes = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "allowed_node_classes"):
            result["allowedNodeClasses"] = [str(i0) for i0 in self.allowed_node_classes]
        elif include_empty:
            result["allowedNodeClasses"] = []
        if hasattr(self, "allowed_regions"):
            result["allowedRegions"] = [str(i0) for i0 in self.allowed_regions]
        elif include_empty:
            result["allowedRegions"] = []
        if hasattr(self, "fleet_count"):
            result["fleetCount"] = int(self.fleet_count)
        elif include_empty:
            result["fleetCount"] = 0
        if hasattr(self, "fleet_vm_count"):
            result["fleetVmCount"] = int(self.fleet_vm_count)
        elif include_empty:
            result["fleetVmCount"] = 0
        if hasattr(self, "image_storage_quota_bytes"):
            result["imageStorageQuotaBytes"] = int(self.image_storage_quota_bytes)
        elif include_empty:
            result["imageStorageQuotaBytes"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        allowed_node_classes: Optional[List[str]] = None,
        allowed_regions: Optional[List[str]] = None,
        fleet_count: Optional[int] = None,
        fleet_vm_count: Optional[int] = None,
        image_storage_quota_bytes: Optional[int] = None,
        **kwargs,
    ) -> ApiAccountLimits:
        instance = cls()
        if allowed_node_classes is not None:
            instance.allowed_node_classes = allowed_node_classes
        if allowed_regions is not None:
            instance.allowed_regions = allowed_regions
        if fleet_count is not None:
            instance.fleet_count = fleet_count
        if fleet_vm_count is not None:
            instance.fleet_vm_count = fleet_vm_count
        if image_storage_quota_bytes is not None:
            instance.image_storage_quota_bytes = image_storage_quota_bytes
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiAccountLimits:
        instance = cls()
        if not dict_:
            return instance
        if "allowedNodeClasses" in dict_ and dict_["allowedNodeClasses"] is not None:
            instance.allowed_node_classes = [
                str(i0) for i0 in dict_["allowedNodeClasses"]
            ]
        elif include_empty:
            instance.allowed_node_classes = []
        if "allowedRegions" in dict_ and dict_["allowedRegions"] is not None:
            instance.allowed_regions = [str(i0) for i0 in dict_["allowedRegions"]]
        elif include_empty:
            instance.allowed_regions = []
        if "fleetCount" in dict_ and dict_["fleetCount"] is not None:
            instance.fleet_count = int(dict_["fleetCount"])
        elif include_empty:
            instance.fleet_count = 0
        if "fleetVmCount" in dict_ and dict_["fleetVmCount"] is not None:
            instance.fleet_vm_count = int(dict_["fleetVmCount"])
        elif include_empty:
            instance.fleet_vm_count = 0
        if (
            "imageStorageQuotaBytes" in dict_
            and dict_["imageStorageQuotaBytes"] is not None
        ):
            instance.image_storage_quota_bytes = int(dict_["imageStorageQuotaBytes"])
        elif include_empty:
            instance.image_storage_quota_bytes = 0
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
            "allowedNodeClasses": "allowed_node_classes",
            "allowedRegions": "allowed_regions",
            "fleetCount": "fleet_count",
            "fleetVmCount": "fleet_vm_count",
            "imageStorageQuotaBytes": "image_storage_quota_bytes",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "allowedNodeClasses": False,
            "allowedRegions": False,
            "fleetCount": False,
            "fleetVmCount": False,
            "imageStorageQuotaBytes": False,
        }

    # endregion static methods
