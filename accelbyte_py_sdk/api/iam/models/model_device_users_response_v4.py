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

from ..models.model_device_user_response_v4 import ModelDeviceUserResponseV4


class ModelDeviceUsersResponseV4(Model):
    """Model device users response V4 (model.DeviceUsersResponseV4)

    Properties:
        users: (users) REQUIRED List[ModelDeviceUserResponseV4]
    """

    # region fields

    users: List[ModelDeviceUserResponseV4]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_users(
        self, value: List[ModelDeviceUserResponseV4]
    ) -> ModelDeviceUsersResponseV4:
        self.users = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "users"):
            result["users"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.users
            ]
        elif include_empty:
            result["users"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        users: List[ModelDeviceUserResponseV4],
    ) -> ModelDeviceUsersResponseV4:
        instance = cls()
        instance.users = users
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelDeviceUsersResponseV4:
        instance = cls()
        if not dict_:
            return instance
        if "users" in dict_ and dict_["users"] is not None:
            instance.users = [
                ModelDeviceUserResponseV4.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["users"]
            ]
        elif include_empty:
            instance.users = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelDeviceUsersResponseV4]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelDeviceUsersResponseV4]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelDeviceUsersResponseV4,
        List[ModelDeviceUsersResponseV4],
        Dict[Any, ModelDeviceUsersResponseV4],
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
            "users": "users",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "users": True,
        }

    # endregion static methods
