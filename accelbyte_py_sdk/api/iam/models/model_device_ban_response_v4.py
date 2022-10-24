# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.20.0)

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


class ModelDeviceBanResponseV4(Model):
    """Model device ban response V4 (model.DeviceBanResponseV4)

    Properties:
        banned_at: (bannedAt) REQUIRED int

        banned_by: (bannedBy) REQUIRED str

        comment: (comment) REQUIRED str

        device_id: (deviceId) REQUIRED str

        device_type: (deviceType) REQUIRED str

        disabled_at: (disabledAt) REQUIRED int

        enabled: (enabled) REQUIRED bool

        end_date: (endDate) REQUIRED int

        id_: (id) REQUIRED str

        namespace: (namespace) REQUIRED str

        reason: (reason) REQUIRED str

        target_namespace: (targetNamespace) REQUIRED str
    """

    # region fields

    banned_at: int  # REQUIRED
    banned_by: str  # REQUIRED
    comment: str  # REQUIRED
    device_id: str  # REQUIRED
    device_type: str  # REQUIRED
    disabled_at: int  # REQUIRED
    enabled: bool  # REQUIRED
    end_date: int  # REQUIRED
    id_: str  # REQUIRED
    namespace: str  # REQUIRED
    reason: str  # REQUIRED
    target_namespace: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_banned_at(self, value: int) -> ModelDeviceBanResponseV4:
        self.banned_at = value
        return self

    def with_banned_by(self, value: str) -> ModelDeviceBanResponseV4:
        self.banned_by = value
        return self

    def with_comment(self, value: str) -> ModelDeviceBanResponseV4:
        self.comment = value
        return self

    def with_device_id(self, value: str) -> ModelDeviceBanResponseV4:
        self.device_id = value
        return self

    def with_device_type(self, value: str) -> ModelDeviceBanResponseV4:
        self.device_type = value
        return self

    def with_disabled_at(self, value: int) -> ModelDeviceBanResponseV4:
        self.disabled_at = value
        return self

    def with_enabled(self, value: bool) -> ModelDeviceBanResponseV4:
        self.enabled = value
        return self

    def with_end_date(self, value: int) -> ModelDeviceBanResponseV4:
        self.end_date = value
        return self

    def with_id(self, value: str) -> ModelDeviceBanResponseV4:
        self.id_ = value
        return self

    def with_namespace(self, value: str) -> ModelDeviceBanResponseV4:
        self.namespace = value
        return self

    def with_reason(self, value: str) -> ModelDeviceBanResponseV4:
        self.reason = value
        return self

    def with_target_namespace(self, value: str) -> ModelDeviceBanResponseV4:
        self.target_namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "banned_at"):
            result["bannedAt"] = int(self.banned_at)
        elif include_empty:
            result["bannedAt"] = 0
        if hasattr(self, "banned_by"):
            result["bannedBy"] = str(self.banned_by)
        elif include_empty:
            result["bannedBy"] = ""
        if hasattr(self, "comment"):
            result["comment"] = str(self.comment)
        elif include_empty:
            result["comment"] = ""
        if hasattr(self, "device_id"):
            result["deviceId"] = str(self.device_id)
        elif include_empty:
            result["deviceId"] = ""
        if hasattr(self, "device_type"):
            result["deviceType"] = str(self.device_type)
        elif include_empty:
            result["deviceType"] = ""
        if hasattr(self, "disabled_at"):
            result["disabledAt"] = int(self.disabled_at)
        elif include_empty:
            result["disabledAt"] = 0
        if hasattr(self, "enabled"):
            result["enabled"] = bool(self.enabled)
        elif include_empty:
            result["enabled"] = False
        if hasattr(self, "end_date"):
            result["endDate"] = int(self.end_date)
        elif include_empty:
            result["endDate"] = 0
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "reason"):
            result["reason"] = str(self.reason)
        elif include_empty:
            result["reason"] = ""
        if hasattr(self, "target_namespace"):
            result["targetNamespace"] = str(self.target_namespace)
        elif include_empty:
            result["targetNamespace"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        banned_at: int,
        banned_by: str,
        comment: str,
        device_id: str,
        device_type: str,
        disabled_at: int,
        enabled: bool,
        end_date: int,
        id_: str,
        namespace: str,
        reason: str,
        target_namespace: str,
    ) -> ModelDeviceBanResponseV4:
        instance = cls()
        instance.banned_at = banned_at
        instance.banned_by = banned_by
        instance.comment = comment
        instance.device_id = device_id
        instance.device_type = device_type
        instance.disabled_at = disabled_at
        instance.enabled = enabled
        instance.end_date = end_date
        instance.id_ = id_
        instance.namespace = namespace
        instance.reason = reason
        instance.target_namespace = target_namespace
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelDeviceBanResponseV4:
        instance = cls()
        if not dict_:
            return instance
        if "bannedAt" in dict_ and dict_["bannedAt"] is not None:
            instance.banned_at = int(dict_["bannedAt"])
        elif include_empty:
            instance.banned_at = 0
        if "bannedBy" in dict_ and dict_["bannedBy"] is not None:
            instance.banned_by = str(dict_["bannedBy"])
        elif include_empty:
            instance.banned_by = ""
        if "comment" in dict_ and dict_["comment"] is not None:
            instance.comment = str(dict_["comment"])
        elif include_empty:
            instance.comment = ""
        if "deviceId" in dict_ and dict_["deviceId"] is not None:
            instance.device_id = str(dict_["deviceId"])
        elif include_empty:
            instance.device_id = ""
        if "deviceType" in dict_ and dict_["deviceType"] is not None:
            instance.device_type = str(dict_["deviceType"])
        elif include_empty:
            instance.device_type = ""
        if "disabledAt" in dict_ and dict_["disabledAt"] is not None:
            instance.disabled_at = int(dict_["disabledAt"])
        elif include_empty:
            instance.disabled_at = 0
        if "enabled" in dict_ and dict_["enabled"] is not None:
            instance.enabled = bool(dict_["enabled"])
        elif include_empty:
            instance.enabled = False
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = int(dict_["endDate"])
        elif include_empty:
            instance.end_date = 0
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "reason" in dict_ and dict_["reason"] is not None:
            instance.reason = str(dict_["reason"])
        elif include_empty:
            instance.reason = ""
        if "targetNamespace" in dict_ and dict_["targetNamespace"] is not None:
            instance.target_namespace = str(dict_["targetNamespace"])
        elif include_empty:
            instance.target_namespace = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelDeviceBanResponseV4]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelDeviceBanResponseV4]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelDeviceBanResponseV4,
        List[ModelDeviceBanResponseV4],
        Dict[Any, ModelDeviceBanResponseV4],
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
            "bannedAt": "banned_at",
            "bannedBy": "banned_by",
            "comment": "comment",
            "deviceId": "device_id",
            "deviceType": "device_type",
            "disabledAt": "disabled_at",
            "enabled": "enabled",
            "endDate": "end_date",
            "id": "id_",
            "namespace": "namespace",
            "reason": "reason",
            "targetNamespace": "target_namespace",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "bannedAt": True,
            "bannedBy": True,
            "comment": True,
            "deviceId": True,
            "deviceType": True,
            "disabledAt": True,
            "enabled": True,
            "endDate": True,
            "id": True,
            "namespace": True,
            "reason": True,
            "targetNamespace": True,
        }

    # endregion static methods
