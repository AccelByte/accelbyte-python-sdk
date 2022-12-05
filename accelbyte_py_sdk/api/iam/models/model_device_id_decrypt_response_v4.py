# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.22.0)

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


class ModelDeviceIDDecryptResponseV4(Model):
    """Model device ID decrypt response V4 (model.DeviceIDDecryptResponseV4)

    Properties:
        device_id: (deviceId) REQUIRED str
    """

    # region fields

    device_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_device_id(self, value: str) -> ModelDeviceIDDecryptResponseV4:
        self.device_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "device_id"):
            result["deviceId"] = str(self.device_id)
        elif include_empty:
            result["deviceId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        device_id: str,
    ) -> ModelDeviceIDDecryptResponseV4:
        instance = cls()
        instance.device_id = device_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelDeviceIDDecryptResponseV4:
        instance = cls()
        if not dict_:
            return instance
        if "deviceId" in dict_ and dict_["deviceId"] is not None:
            instance.device_id = str(dict_["deviceId"])
        elif include_empty:
            instance.device_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelDeviceIDDecryptResponseV4]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelDeviceIDDecryptResponseV4]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelDeviceIDDecryptResponseV4,
        List[ModelDeviceIDDecryptResponseV4],
        Dict[Any, ModelDeviceIDDecryptResponseV4],
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
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "deviceId": True,
        }

    # endregion static methods
