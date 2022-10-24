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


class ModelDeviceBanRequestV4(Model):
    """Model device ban request V4 (model.DeviceBanRequestV4)

    Properties:
        comment: (comment) REQUIRED str

        device_id: (deviceId) REQUIRED str

        device_type: (deviceType) REQUIRED str

        enabled: (enabled) REQUIRED bool

        end_date: (endDate) REQUIRED str

        ext: (ext) REQUIRED Dict[str, Any]

        reason: (reason) REQUIRED str
    """

    # region fields

    comment: str  # REQUIRED
    device_id: str  # REQUIRED
    device_type: str  # REQUIRED
    enabled: bool  # REQUIRED
    end_date: str  # REQUIRED
    ext: Dict[str, Any]  # REQUIRED
    reason: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_comment(self, value: str) -> ModelDeviceBanRequestV4:
        self.comment = value
        return self

    def with_device_id(self, value: str) -> ModelDeviceBanRequestV4:
        self.device_id = value
        return self

    def with_device_type(self, value: str) -> ModelDeviceBanRequestV4:
        self.device_type = value
        return self

    def with_enabled(self, value: bool) -> ModelDeviceBanRequestV4:
        self.enabled = value
        return self

    def with_end_date(self, value: str) -> ModelDeviceBanRequestV4:
        self.end_date = value
        return self

    def with_ext(self, value: Dict[str, Any]) -> ModelDeviceBanRequestV4:
        self.ext = value
        return self

    def with_reason(self, value: str) -> ModelDeviceBanRequestV4:
        self.reason = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
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
        if hasattr(self, "enabled"):
            result["enabled"] = bool(self.enabled)
        elif include_empty:
            result["enabled"] = False
        if hasattr(self, "end_date"):
            result["endDate"] = str(self.end_date)
        elif include_empty:
            result["endDate"] = ""
        if hasattr(self, "ext"):
            result["ext"] = {str(k0): v0 for k0, v0 in self.ext.items()}
        elif include_empty:
            result["ext"] = {}
        if hasattr(self, "reason"):
            result["reason"] = str(self.reason)
        elif include_empty:
            result["reason"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        comment: str,
        device_id: str,
        device_type: str,
        enabled: bool,
        end_date: str,
        ext: Dict[str, Any],
        reason: str,
    ) -> ModelDeviceBanRequestV4:
        instance = cls()
        instance.comment = comment
        instance.device_id = device_id
        instance.device_type = device_type
        instance.enabled = enabled
        instance.end_date = end_date
        instance.ext = ext
        instance.reason = reason
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelDeviceBanRequestV4:
        instance = cls()
        if not dict_:
            return instance
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
        if "enabled" in dict_ and dict_["enabled"] is not None:
            instance.enabled = bool(dict_["enabled"])
        elif include_empty:
            instance.enabled = False
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = str(dict_["endDate"])
        elif include_empty:
            instance.end_date = ""
        if "ext" in dict_ and dict_["ext"] is not None:
            instance.ext = {str(k0): v0 for k0, v0 in dict_["ext"].items()}
        elif include_empty:
            instance.ext = {}
        if "reason" in dict_ and dict_["reason"] is not None:
            instance.reason = str(dict_["reason"])
        elif include_empty:
            instance.reason = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelDeviceBanRequestV4]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelDeviceBanRequestV4]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelDeviceBanRequestV4,
        List[ModelDeviceBanRequestV4],
        Dict[Any, ModelDeviceBanRequestV4],
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
            "comment": "comment",
            "deviceId": "device_id",
            "deviceType": "device_type",
            "enabled": "enabled",
            "endDate": "end_date",
            "ext": "ext",
            "reason": "reason",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "comment": True,
            "deviceId": True,
            "deviceType": True,
            "enabled": True,
            "endDate": True,
            "ext": True,
            "reason": True,
        }

    # endregion static methods
