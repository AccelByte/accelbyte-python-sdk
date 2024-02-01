# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Ds Artifact Manager

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


class ModelsAllQueueResult(Model):
    """Models all queue result (models.AllQueueResult)

    Properties:
        allocation_id: (allocation_id) REQUIRED str

        created_at: (created_at) REQUIRED str

        failed: (failed) REQUIRED bool

        failed_reason: (failed_reason) REQUIRED str

        node_ip: (node_ip) REQUIRED str

        pod_name: (pod_name) REQUIRED str

        uploading: (uploading) REQUIRED bool
    """

    # region fields

    allocation_id: str  # REQUIRED
    created_at: str  # REQUIRED
    failed: bool  # REQUIRED
    failed_reason: str  # REQUIRED
    node_ip: str  # REQUIRED
    pod_name: str  # REQUIRED
    uploading: bool  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_allocation_id(self, value: str) -> ModelsAllQueueResult:
        self.allocation_id = value
        return self

    def with_created_at(self, value: str) -> ModelsAllQueueResult:
        self.created_at = value
        return self

    def with_failed(self, value: bool) -> ModelsAllQueueResult:
        self.failed = value
        return self

    def with_failed_reason(self, value: str) -> ModelsAllQueueResult:
        self.failed_reason = value
        return self

    def with_node_ip(self, value: str) -> ModelsAllQueueResult:
        self.node_ip = value
        return self

    def with_pod_name(self, value: str) -> ModelsAllQueueResult:
        self.pod_name = value
        return self

    def with_uploading(self, value: bool) -> ModelsAllQueueResult:
        self.uploading = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "allocation_id"):
            result["allocation_id"] = str(self.allocation_id)
        elif include_empty:
            result["allocation_id"] = ""
        if hasattr(self, "created_at"):
            result["created_at"] = str(self.created_at)
        elif include_empty:
            result["created_at"] = ""
        if hasattr(self, "failed"):
            result["failed"] = bool(self.failed)
        elif include_empty:
            result["failed"] = False
        if hasattr(self, "failed_reason"):
            result["failed_reason"] = str(self.failed_reason)
        elif include_empty:
            result["failed_reason"] = ""
        if hasattr(self, "node_ip"):
            result["node_ip"] = str(self.node_ip)
        elif include_empty:
            result["node_ip"] = ""
        if hasattr(self, "pod_name"):
            result["pod_name"] = str(self.pod_name)
        elif include_empty:
            result["pod_name"] = ""
        if hasattr(self, "uploading"):
            result["uploading"] = bool(self.uploading)
        elif include_empty:
            result["uploading"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        allocation_id: str,
        created_at: str,
        failed: bool,
        failed_reason: str,
        node_ip: str,
        pod_name: str,
        uploading: bool,
        **kwargs,
    ) -> ModelsAllQueueResult:
        instance = cls()
        instance.allocation_id = allocation_id
        instance.created_at = created_at
        instance.failed = failed
        instance.failed_reason = failed_reason
        instance.node_ip = node_ip
        instance.pod_name = pod_name
        instance.uploading = uploading
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsAllQueueResult:
        instance = cls()
        if not dict_:
            return instance
        if "allocation_id" in dict_ and dict_["allocation_id"] is not None:
            instance.allocation_id = str(dict_["allocation_id"])
        elif include_empty:
            instance.allocation_id = ""
        if "created_at" in dict_ and dict_["created_at"] is not None:
            instance.created_at = str(dict_["created_at"])
        elif include_empty:
            instance.created_at = ""
        if "failed" in dict_ and dict_["failed"] is not None:
            instance.failed = bool(dict_["failed"])
        elif include_empty:
            instance.failed = False
        if "failed_reason" in dict_ and dict_["failed_reason"] is not None:
            instance.failed_reason = str(dict_["failed_reason"])
        elif include_empty:
            instance.failed_reason = ""
        if "node_ip" in dict_ and dict_["node_ip"] is not None:
            instance.node_ip = str(dict_["node_ip"])
        elif include_empty:
            instance.node_ip = ""
        if "pod_name" in dict_ and dict_["pod_name"] is not None:
            instance.pod_name = str(dict_["pod_name"])
        elif include_empty:
            instance.pod_name = ""
        if "uploading" in dict_ and dict_["uploading"] is not None:
            instance.uploading = bool(dict_["uploading"])
        elif include_empty:
            instance.uploading = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsAllQueueResult]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsAllQueueResult]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsAllQueueResult,
        List[ModelsAllQueueResult],
        Dict[Any, ModelsAllQueueResult],
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
            "allocation_id": "allocation_id",
            "created_at": "created_at",
            "failed": "failed",
            "failed_reason": "failed_reason",
            "node_ip": "node_ip",
            "pod_name": "pod_name",
            "uploading": "uploading",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "allocation_id": True,
            "created_at": True,
            "failed": True,
            "failed_reason": True,
            "node_ip": True,
            "pod_name": True,
            "uploading": True,
        }

    # endregion static methods
