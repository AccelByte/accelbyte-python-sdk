# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Dsm Controller Service

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


class ModelsAddBufferRequest(Model):
    """Models add buffer request (models.AddBufferRequest)

    Properties:
        alloc_count: (AllocCount) REQUIRED int

        deployment_name: (DeploymentName) REQUIRED str

        job_count: (JobCount) REQUIRED int

        job_priority: (JobPriority) REQUIRED int

        override_version: (OverrideVersion) REQUIRED str

        region: (Region) REQUIRED str
    """

    # region fields

    alloc_count: int  # REQUIRED
    deployment_name: str  # REQUIRED
    job_count: int  # REQUIRED
    job_priority: int  # REQUIRED
    override_version: str  # REQUIRED
    region: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_alloc_count(self, value: int) -> ModelsAddBufferRequest:
        self.alloc_count = value
        return self

    def with_deployment_name(self, value: str) -> ModelsAddBufferRequest:
        self.deployment_name = value
        return self

    def with_job_count(self, value: int) -> ModelsAddBufferRequest:
        self.job_count = value
        return self

    def with_job_priority(self, value: int) -> ModelsAddBufferRequest:
        self.job_priority = value
        return self

    def with_override_version(self, value: str) -> ModelsAddBufferRequest:
        self.override_version = value
        return self

    def with_region(self, value: str) -> ModelsAddBufferRequest:
        self.region = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "alloc_count"):
            result["AllocCount"] = int(self.alloc_count)
        elif include_empty:
            result["AllocCount"] = 0
        if hasattr(self, "deployment_name"):
            result["DeploymentName"] = str(self.deployment_name)
        elif include_empty:
            result["DeploymentName"] = ""
        if hasattr(self, "job_count"):
            result["JobCount"] = int(self.job_count)
        elif include_empty:
            result["JobCount"] = 0
        if hasattr(self, "job_priority"):
            result["JobPriority"] = int(self.job_priority)
        elif include_empty:
            result["JobPriority"] = 0
        if hasattr(self, "override_version"):
            result["OverrideVersion"] = str(self.override_version)
        elif include_empty:
            result["OverrideVersion"] = ""
        if hasattr(self, "region"):
            result["Region"] = str(self.region)
        elif include_empty:
            result["Region"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        alloc_count: int,
        deployment_name: str,
        job_count: int,
        job_priority: int,
        override_version: str,
        region: str,
        **kwargs,
    ) -> ModelsAddBufferRequest:
        instance = cls()
        instance.alloc_count = alloc_count
        instance.deployment_name = deployment_name
        instance.job_count = job_count
        instance.job_priority = job_priority
        instance.override_version = override_version
        instance.region = region
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsAddBufferRequest:
        instance = cls()
        if not dict_:
            return instance
        if "AllocCount" in dict_ and dict_["AllocCount"] is not None:
            instance.alloc_count = int(dict_["AllocCount"])
        elif include_empty:
            instance.alloc_count = 0
        if "DeploymentName" in dict_ and dict_["DeploymentName"] is not None:
            instance.deployment_name = str(dict_["DeploymentName"])
        elif include_empty:
            instance.deployment_name = ""
        if "JobCount" in dict_ and dict_["JobCount"] is not None:
            instance.job_count = int(dict_["JobCount"])
        elif include_empty:
            instance.job_count = 0
        if "JobPriority" in dict_ and dict_["JobPriority"] is not None:
            instance.job_priority = int(dict_["JobPriority"])
        elif include_empty:
            instance.job_priority = 0
        if "OverrideVersion" in dict_ and dict_["OverrideVersion"] is not None:
            instance.override_version = str(dict_["OverrideVersion"])
        elif include_empty:
            instance.override_version = ""
        if "Region" in dict_ and dict_["Region"] is not None:
            instance.region = str(dict_["Region"])
        elif include_empty:
            instance.region = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsAddBufferRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsAddBufferRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsAddBufferRequest,
        List[ModelsAddBufferRequest],
        Dict[Any, ModelsAddBufferRequest],
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
            "AllocCount": "alloc_count",
            "DeploymentName": "deployment_name",
            "JobCount": "job_count",
            "JobPriority": "job_priority",
            "OverrideVersion": "override_version",
            "Region": "region",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "AllocCount": True,
            "DeploymentName": True,
            "JobCount": True,
            "JobPriority": True,
            "OverrideVersion": True,
            "Region": True,
        }

    # endregion static methods
