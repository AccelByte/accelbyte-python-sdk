# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.27.2)

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

from ..models.model_device_ban_response_v4 import ModelDeviceBanResponseV4


class ModelDeviceResponseV4(Model):
    """Model device response V4 (model.DeviceResponseV4)

    Properties:
        device_id: (deviceId) REQUIRED str

        device_type: (deviceType) REQUIRED str

        ip: (ip) REQUIRED str

        last_login_time: (lastLoginTime) REQUIRED int

        ban: (ban) OPTIONAL ModelDeviceBanResponseV4

        ext: (ext) OPTIONAL Dict[str, Any]
    """

    # region fields

    device_id: str  # REQUIRED
    device_type: str  # REQUIRED
    ip: str  # REQUIRED
    last_login_time: int  # REQUIRED
    ban: ModelDeviceBanResponseV4  # OPTIONAL
    ext: Dict[str, Any]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_device_id(self, value: str) -> ModelDeviceResponseV4:
        self.device_id = value
        return self

    def with_device_type(self, value: str) -> ModelDeviceResponseV4:
        self.device_type = value
        return self

    def with_ip(self, value: str) -> ModelDeviceResponseV4:
        self.ip = value
        return self

    def with_last_login_time(self, value: int) -> ModelDeviceResponseV4:
        self.last_login_time = value
        return self

    def with_ban(self, value: ModelDeviceBanResponseV4) -> ModelDeviceResponseV4:
        self.ban = value
        return self

    def with_ext(self, value: Dict[str, Any]) -> ModelDeviceResponseV4:
        self.ext = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "device_id"):
            result["deviceId"] = str(self.device_id)
        elif include_empty:
            result["deviceId"] = ""
        if hasattr(self, "device_type"):
            result["deviceType"] = str(self.device_type)
        elif include_empty:
            result["deviceType"] = ""
        if hasattr(self, "ip"):
            result["ip"] = str(self.ip)
        elif include_empty:
            result["ip"] = ""
        if hasattr(self, "last_login_time"):
            result["lastLoginTime"] = int(self.last_login_time)
        elif include_empty:
            result["lastLoginTime"] = 0
        if hasattr(self, "ban"):
            result["ban"] = self.ban.to_dict(include_empty=include_empty)
        elif include_empty:
            result["ban"] = ModelDeviceBanResponseV4()
        if hasattr(self, "ext"):
            result["ext"] = {str(k0): v0 for k0, v0 in self.ext.items()}
        elif include_empty:
            result["ext"] = {}
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        device_id: str,
        device_type: str,
        ip: str,
        last_login_time: int,
        ban: Optional[ModelDeviceBanResponseV4] = None,
        ext: Optional[Dict[str, Any]] = None,
    ) -> ModelDeviceResponseV4:
        instance = cls()
        instance.device_id = device_id
        instance.device_type = device_type
        instance.ip = ip
        instance.last_login_time = last_login_time
        if ban is not None:
            instance.ban = ban
        if ext is not None:
            instance.ext = ext
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelDeviceResponseV4:
        instance = cls()
        if not dict_:
            return instance
        if "deviceId" in dict_ and dict_["deviceId"] is not None:
            instance.device_id = str(dict_["deviceId"])
        elif include_empty:
            instance.device_id = ""
        if "deviceType" in dict_ and dict_["deviceType"] is not None:
            instance.device_type = str(dict_["deviceType"])
        elif include_empty:
            instance.device_type = ""
        if "ip" in dict_ and dict_["ip"] is not None:
            instance.ip = str(dict_["ip"])
        elif include_empty:
            instance.ip = ""
        if "lastLoginTime" in dict_ and dict_["lastLoginTime"] is not None:
            instance.last_login_time = int(dict_["lastLoginTime"])
        elif include_empty:
            instance.last_login_time = 0
        if "ban" in dict_ and dict_["ban"] is not None:
            instance.ban = ModelDeviceBanResponseV4.create_from_dict(
                dict_["ban"], include_empty=include_empty
            )
        elif include_empty:
            instance.ban = ModelDeviceBanResponseV4()
        if "ext" in dict_ and dict_["ext"] is not None:
            instance.ext = {str(k0): v0 for k0, v0 in dict_["ext"].items()}
        elif include_empty:
            instance.ext = {}
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelDeviceResponseV4]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelDeviceResponseV4]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelDeviceResponseV4,
        List[ModelDeviceResponseV4],
        Dict[Any, ModelDeviceResponseV4],
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
            "deviceId": "device_id",
            "deviceType": "device_type",
            "ip": "ip",
            "lastLoginTime": "last_login_time",
            "ban": "ban",
            "ext": "ext",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "deviceId": True,
            "deviceType": True,
            "ip": True,
            "lastLoginTime": True,
            "ban": False,
            "ext": False,
        }

    # endregion static methods
