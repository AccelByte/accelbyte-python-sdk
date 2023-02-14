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


class ModelDeviceTypeResponseV4(Model):
    """Model device type response V4 (model.DeviceTypeResponseV4)

    Properties:
        device_type: (deviceType) REQUIRED str
    """

    # region fields

    device_type: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_device_type(self, value: str) -> ModelDeviceTypeResponseV4:
        self.device_type = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "device_type"):
            result["deviceType"] = str(self.device_type)
        elif include_empty:
            result["deviceType"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        device_type: str,
    ) -> ModelDeviceTypeResponseV4:
        instance = cls()
        instance.device_type = device_type
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelDeviceTypeResponseV4:
        instance = cls()
        if not dict_:
            return instance
        if "deviceType" in dict_ and dict_["deviceType"] is not None:
            instance.device_type = str(dict_["deviceType"])
        elif include_empty:
            instance.device_type = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelDeviceTypeResponseV4]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelDeviceTypeResponseV4]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelDeviceTypeResponseV4,
        List[ModelDeviceTypeResponseV4],
        Dict[Any, ModelDeviceTypeResponseV4],
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
            "deviceType": "device_type",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "deviceType": True,
        }

    # endregion static methods
