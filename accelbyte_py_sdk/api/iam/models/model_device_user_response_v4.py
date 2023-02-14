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


class ModelDeviceUserResponseV4(Model):
    """Model device user response V4 (model.DeviceUserResponseV4)

    Properties:
        ip: (ip) REQUIRED str

        last_login_time: (lastLoginTime) REQUIRED int

        namespace: (namespace) REQUIRED str

        user_id: (userId) REQUIRED str

        ext: (ext) OPTIONAL Dict[str, Any]
    """

    # region fields

    ip: str  # REQUIRED
    last_login_time: int  # REQUIRED
    namespace: str  # REQUIRED
    user_id: str  # REQUIRED
    ext: Dict[str, Any]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_ip(self, value: str) -> ModelDeviceUserResponseV4:
        self.ip = value
        return self

    def with_last_login_time(self, value: int) -> ModelDeviceUserResponseV4:
        self.last_login_time = value
        return self

    def with_namespace(self, value: str) -> ModelDeviceUserResponseV4:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> ModelDeviceUserResponseV4:
        self.user_id = value
        return self

    def with_ext(self, value: Dict[str, Any]) -> ModelDeviceUserResponseV4:
        self.ext = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "ip"):
            result["ip"] = str(self.ip)
        elif include_empty:
            result["ip"] = ""
        if hasattr(self, "last_login_time"):
            result["lastLoginTime"] = int(self.last_login_time)
        elif include_empty:
            result["lastLoginTime"] = 0
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
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
        ip: str,
        last_login_time: int,
        namespace: str,
        user_id: str,
        ext: Optional[Dict[str, Any]] = None,
    ) -> ModelDeviceUserResponseV4:
        instance = cls()
        instance.ip = ip
        instance.last_login_time = last_login_time
        instance.namespace = namespace
        instance.user_id = user_id
        if ext is not None:
            instance.ext = ext
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelDeviceUserResponseV4:
        instance = cls()
        if not dict_:
            return instance
        if "ip" in dict_ and dict_["ip"] is not None:
            instance.ip = str(dict_["ip"])
        elif include_empty:
            instance.ip = ""
        if "lastLoginTime" in dict_ and dict_["lastLoginTime"] is not None:
            instance.last_login_time = int(dict_["lastLoginTime"])
        elif include_empty:
            instance.last_login_time = 0
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "ext" in dict_ and dict_["ext"] is not None:
            instance.ext = {str(k0): v0 for k0, v0 in dict_["ext"].items()}
        elif include_empty:
            instance.ext = {}
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelDeviceUserResponseV4]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelDeviceUserResponseV4]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelDeviceUserResponseV4,
        List[ModelDeviceUserResponseV4],
        Dict[Any, ModelDeviceUserResponseV4],
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
            "ip": "ip",
            "lastLoginTime": "last_login_time",
            "namespace": "namespace",
            "userId": "user_id",
            "ext": "ext",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "ip": True,
            "lastLoginTime": True,
            "namespace": True,
            "userId": True,
            "ext": False,
        }

    # endregion static methods
