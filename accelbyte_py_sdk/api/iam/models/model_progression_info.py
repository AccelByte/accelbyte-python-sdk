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

from ..models.model_simple_user_ban import ModelSimpleUserBan
from ..models.platform_dlc_agg_response import PlatformDLCAggResponse
from ..models.platform_wallet_agg_response import PlatformWalletAggResponse


class ModelProgressionInfo(Model):
    """Model progression info (model.ProgressionInfo)

    Properties:
        created_at: (createdAt) REQUIRED int

        namespace: (namespace) REQUIRED str

        dlcs: (dlcs) OPTIONAL PlatformDLCAggResponse

        last_login_time: (lastLoginTime) OPTIONAL int

        user_ban: (userBan) OPTIONAL ModelSimpleUserBan

        wallets: (wallets) OPTIONAL List[PlatformWalletAggResponse]
    """

    # region fields

    created_at: int  # REQUIRED
    namespace: str  # REQUIRED
    dlcs: PlatformDLCAggResponse  # OPTIONAL
    last_login_time: int  # OPTIONAL
    user_ban: ModelSimpleUserBan  # OPTIONAL
    wallets: List[PlatformWalletAggResponse]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: int) -> ModelProgressionInfo:
        self.created_at = value
        return self

    def with_namespace(self, value: str) -> ModelProgressionInfo:
        self.namespace = value
        return self

    def with_dlcs(self, value: PlatformDLCAggResponse) -> ModelProgressionInfo:
        self.dlcs = value
        return self

    def with_last_login_time(self, value: int) -> ModelProgressionInfo:
        self.last_login_time = value
        return self

    def with_user_ban(self, value: ModelSimpleUserBan) -> ModelProgressionInfo:
        self.user_ban = value
        return self

    def with_wallets(
        self, value: List[PlatformWalletAggResponse]
    ) -> ModelProgressionInfo:
        self.wallets = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["createdAt"] = int(self.created_at)
        elif include_empty:
            result["createdAt"] = 0
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "dlcs"):
            result["dlcs"] = self.dlcs.to_dict(include_empty=include_empty)
        elif include_empty:
            result["dlcs"] = PlatformDLCAggResponse()
        if hasattr(self, "last_login_time"):
            result["lastLoginTime"] = int(self.last_login_time)
        elif include_empty:
            result["lastLoginTime"] = 0
        if hasattr(self, "user_ban"):
            result["userBan"] = self.user_ban.to_dict(include_empty=include_empty)
        elif include_empty:
            result["userBan"] = ModelSimpleUserBan()
        if hasattr(self, "wallets"):
            result["wallets"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.wallets
            ]
        elif include_empty:
            result["wallets"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: int,
        namespace: str,
        dlcs: Optional[PlatformDLCAggResponse] = None,
        last_login_time: Optional[int] = None,
        user_ban: Optional[ModelSimpleUserBan] = None,
        wallets: Optional[List[PlatformWalletAggResponse]] = None,
        **kwargs,
    ) -> ModelProgressionInfo:
        instance = cls()
        instance.created_at = created_at
        instance.namespace = namespace
        if dlcs is not None:
            instance.dlcs = dlcs
        if last_login_time is not None:
            instance.last_login_time = last_login_time
        if user_ban is not None:
            instance.user_ban = user_ban
        if wallets is not None:
            instance.wallets = wallets
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelProgressionInfo:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = int(dict_["createdAt"])
        elif include_empty:
            instance.created_at = 0
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "dlcs" in dict_ and dict_["dlcs"] is not None:
            instance.dlcs = PlatformDLCAggResponse.create_from_dict(
                dict_["dlcs"], include_empty=include_empty
            )
        elif include_empty:
            instance.dlcs = PlatformDLCAggResponse()
        if "lastLoginTime" in dict_ and dict_["lastLoginTime"] is not None:
            instance.last_login_time = int(dict_["lastLoginTime"])
        elif include_empty:
            instance.last_login_time = 0
        if "userBan" in dict_ and dict_["userBan"] is not None:
            instance.user_ban = ModelSimpleUserBan.create_from_dict(
                dict_["userBan"], include_empty=include_empty
            )
        elif include_empty:
            instance.user_ban = ModelSimpleUserBan()
        if "wallets" in dict_ and dict_["wallets"] is not None:
            instance.wallets = [
                PlatformWalletAggResponse.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["wallets"]
            ]
        elif include_empty:
            instance.wallets = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelProgressionInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelProgressionInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelProgressionInfo,
        List[ModelProgressionInfo],
        Dict[Any, ModelProgressionInfo],
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
            "createdAt": "created_at",
            "namespace": "namespace",
            "dlcs": "dlcs",
            "lastLoginTime": "last_login_time",
            "userBan": "user_ban",
            "wallets": "wallets",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": True,
            "namespace": True,
            "dlcs": False,
            "lastLoginTime": False,
            "userBan": False,
            "wallets": False,
        }

    # endregion static methods
