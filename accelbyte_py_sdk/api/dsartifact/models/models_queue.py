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


class ModelsQueue(Model):
    """Models queue (models.Queue)

    Properties:
        allocation_id: (AllocationID) REQUIRED str

        created_at: (CreatedAt) REQUIRED str

        failed: (Failed) REQUIRED bool

        failed_reason: (FailedReason) REQUIRED str

        namespace: (Namespace) REQUIRED str

        node_ip: (NodeIP) REQUIRED str

        pod_name: (PodName) REQUIRED str

        uploading: (Uploading) REQUIRED bool
    """

    # region fields

    allocation_id: str  # REQUIRED
    created_at: str  # REQUIRED
    failed: bool  # REQUIRED
    failed_reason: str  # REQUIRED
    namespace: str  # REQUIRED
    node_ip: str  # REQUIRED
    pod_name: str  # REQUIRED
    uploading: bool  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_allocation_id(self, value: str) -> ModelsQueue:
        self.allocation_id = value
        return self

    def with_created_at(self, value: str) -> ModelsQueue:
        self.created_at = value
        return self

    def with_failed(self, value: bool) -> ModelsQueue:
        self.failed = value
        return self

    def with_failed_reason(self, value: str) -> ModelsQueue:
        self.failed_reason = value
        return self

    def with_namespace(self, value: str) -> ModelsQueue:
        self.namespace = value
        return self

    def with_node_ip(self, value: str) -> ModelsQueue:
        self.node_ip = value
        return self

    def with_pod_name(self, value: str) -> ModelsQueue:
        self.pod_name = value
        return self

    def with_uploading(self, value: bool) -> ModelsQueue:
        self.uploading = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "allocation_id"):
            result["AllocationID"] = str(self.allocation_id)
        elif include_empty:
            result["AllocationID"] = ""
        if hasattr(self, "created_at"):
            result["CreatedAt"] = str(self.created_at)
        elif include_empty:
            result["CreatedAt"] = ""
        if hasattr(self, "failed"):
            result["Failed"] = bool(self.failed)
        elif include_empty:
            result["Failed"] = False
        if hasattr(self, "failed_reason"):
            result["FailedReason"] = str(self.failed_reason)
        elif include_empty:
            result["FailedReason"] = ""
        if hasattr(self, "namespace"):
            result["Namespace"] = str(self.namespace)
        elif include_empty:
            result["Namespace"] = ""
        if hasattr(self, "node_ip"):
            result["NodeIP"] = str(self.node_ip)
        elif include_empty:
            result["NodeIP"] = ""
        if hasattr(self, "pod_name"):
            result["PodName"] = str(self.pod_name)
        elif include_empty:
            result["PodName"] = ""
        if hasattr(self, "uploading"):
            result["Uploading"] = bool(self.uploading)
        elif include_empty:
            result["Uploading"] = False
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
        namespace: str,
        node_ip: str,
        pod_name: str,
        uploading: bool,
        **kwargs,
    ) -> ModelsQueue:
        instance = cls()
        instance.allocation_id = allocation_id
        instance.created_at = created_at
        instance.failed = failed
        instance.failed_reason = failed_reason
        instance.namespace = namespace
        instance.node_ip = node_ip
        instance.pod_name = pod_name
        instance.uploading = uploading
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsQueue:
        instance = cls()
        if not dict_:
            return instance
        if "AllocationID" in dict_ and dict_["AllocationID"] is not None:
            instance.allocation_id = str(dict_["AllocationID"])
        elif include_empty:
            instance.allocation_id = ""
        if "CreatedAt" in dict_ and dict_["CreatedAt"] is not None:
            instance.created_at = str(dict_["CreatedAt"])
        elif include_empty:
            instance.created_at = ""
        if "Failed" in dict_ and dict_["Failed"] is not None:
            instance.failed = bool(dict_["Failed"])
        elif include_empty:
            instance.failed = False
        if "FailedReason" in dict_ and dict_["FailedReason"] is not None:
            instance.failed_reason = str(dict_["FailedReason"])
        elif include_empty:
            instance.failed_reason = ""
        if "Namespace" in dict_ and dict_["Namespace"] is not None:
            instance.namespace = str(dict_["Namespace"])
        elif include_empty:
            instance.namespace = ""
        if "NodeIP" in dict_ and dict_["NodeIP"] is not None:
            instance.node_ip = str(dict_["NodeIP"])
        elif include_empty:
            instance.node_ip = ""
        if "PodName" in dict_ and dict_["PodName"] is not None:
            instance.pod_name = str(dict_["PodName"])
        elif include_empty:
            instance.pod_name = ""
        if "Uploading" in dict_ and dict_["Uploading"] is not None:
            instance.uploading = bool(dict_["Uploading"])
        elif include_empty:
            instance.uploading = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsQueue]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsQueue]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ModelsQueue, List[ModelsQueue], Dict[Any, ModelsQueue]]:
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
            "AllocationID": "allocation_id",
            "CreatedAt": "created_at",
            "Failed": "failed",
            "FailedReason": "failed_reason",
            "Namespace": "namespace",
            "NodeIP": "node_ip",
            "PodName": "pod_name",
            "Uploading": "uploading",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "AllocationID": True,
            "CreatedAt": True,
            "Failed": True,
            "FailedReason": True,
            "Namespace": True,
            "NodeIP": True,
            "PodName": True,
            "Uploading": True,
        }

    # endregion static methods
