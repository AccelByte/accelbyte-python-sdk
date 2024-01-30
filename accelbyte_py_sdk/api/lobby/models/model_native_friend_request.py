# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Lobby Server

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


class ModelNativeFriendRequest(Model):
    """Model native friend request (model.NativeFriendRequest)

    Properties:
        is_login: (isLogin) REQUIRED bool

        platform_id: (platformId) REQUIRED str

        platform_token: (platformToken) OPTIONAL str

        psn_env: (psnEnv) OPTIONAL str
    """

    # region fields

    is_login: bool  # REQUIRED
    platform_id: str  # REQUIRED
    platform_token: str  # OPTIONAL
    psn_env: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_is_login(self, value: bool) -> ModelNativeFriendRequest:
        self.is_login = value
        return self

    def with_platform_id(self, value: str) -> ModelNativeFriendRequest:
        self.platform_id = value
        return self

    def with_platform_token(self, value: str) -> ModelNativeFriendRequest:
        self.platform_token = value
        return self

    def with_psn_env(self, value: str) -> ModelNativeFriendRequest:
        self.psn_env = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "is_login"):
            result["isLogin"] = bool(self.is_login)
        elif include_empty:
            result["isLogin"] = False
        if hasattr(self, "platform_id"):
            result["platformId"] = str(self.platform_id)
        elif include_empty:
            result["platformId"] = ""
        if hasattr(self, "platform_token"):
            result["platformToken"] = str(self.platform_token)
        elif include_empty:
            result["platformToken"] = ""
        if hasattr(self, "psn_env"):
            result["psnEnv"] = str(self.psn_env)
        elif include_empty:
            result["psnEnv"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        is_login: bool,
        platform_id: str,
        platform_token: Optional[str] = None,
        psn_env: Optional[str] = None,
        **kwargs,
    ) -> ModelNativeFriendRequest:
        instance = cls()
        instance.is_login = is_login
        instance.platform_id = platform_id
        if platform_token is not None:
            instance.platform_token = platform_token
        if psn_env is not None:
            instance.psn_env = psn_env
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelNativeFriendRequest:
        instance = cls()
        if not dict_:
            return instance
        if "isLogin" in dict_ and dict_["isLogin"] is not None:
            instance.is_login = bool(dict_["isLogin"])
        elif include_empty:
            instance.is_login = False
        if "platformId" in dict_ and dict_["platformId"] is not None:
            instance.platform_id = str(dict_["platformId"])
        elif include_empty:
            instance.platform_id = ""
        if "platformToken" in dict_ and dict_["platformToken"] is not None:
            instance.platform_token = str(dict_["platformToken"])
        elif include_empty:
            instance.platform_token = ""
        if "psnEnv" in dict_ and dict_["psnEnv"] is not None:
            instance.psn_env = str(dict_["psnEnv"])
        elif include_empty:
            instance.psn_env = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelNativeFriendRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelNativeFriendRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelNativeFriendRequest,
        List[ModelNativeFriendRequest],
        Dict[Any, ModelNativeFriendRequest],
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
            "isLogin": "is_login",
            "platformId": "platform_id",
            "platformToken": "platform_token",
            "psnEnv": "psn_env",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "isLogin": True,
            "platformId": True,
            "platformToken": False,
            "psnEnv": False,
        }

    # endregion static methods
