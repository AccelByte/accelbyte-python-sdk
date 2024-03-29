# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Iam Service

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

from ..models.model_device_response_v4 import ModelDeviceResponseV4


class ModelDevicesResponseV4(Model):
    """Model devices response V4 (model.DevicesResponseV4)

    Properties:
        devices: (devices) REQUIRED List[ModelDeviceResponseV4]
    """

    # region fields

    devices: List[ModelDeviceResponseV4]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_devices(
        self, value: List[ModelDeviceResponseV4]
    ) -> ModelDevicesResponseV4:
        self.devices = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "devices"):
            result["devices"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.devices
            ]
        elif include_empty:
            result["devices"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, devices: List[ModelDeviceResponseV4], **kwargs
    ) -> ModelDevicesResponseV4:
        instance = cls()
        instance.devices = devices
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelDevicesResponseV4:
        instance = cls()
        if not dict_:
            return instance
        if "devices" in dict_ and dict_["devices"] is not None:
            instance.devices = [
                ModelDeviceResponseV4.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["devices"]
            ]
        elif include_empty:
            instance.devices = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelDevicesResponseV4]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelDevicesResponseV4]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelDevicesResponseV4,
        List[ModelDevicesResponseV4],
        Dict[Any, ModelDevicesResponseV4],
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
            "devices": "devices",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "devices": True,
        }

    # endregion static methods
