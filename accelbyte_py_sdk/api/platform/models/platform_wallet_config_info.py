# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.17.0)

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


class PlatformWalletConfigInfo(Model):
    """Platform wallet config info (PlatformWalletConfigInfo)

    Properties:
        allowed_balance_origins: (allowedBalanceOrigins) REQUIRED List[str]

        namespace: (namespace) REQUIRED str

        platform: (platform) REQUIRED str

        created_at: (createdAt) OPTIONAL str

        id_: (id) OPTIONAL str

        updated_at: (updatedAt) OPTIONAL str
    """

    # region fields

    allowed_balance_origins: List[str]  # REQUIRED
    namespace: str  # REQUIRED
    platform: str  # REQUIRED
    created_at: str  # OPTIONAL
    id_: str  # OPTIONAL
    updated_at: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_allowed_balance_origins(
        self, value: List[str]
    ) -> PlatformWalletConfigInfo:
        self.allowed_balance_origins = value
        return self

    def with_namespace(self, value: str) -> PlatformWalletConfigInfo:
        self.namespace = value
        return self

    def with_platform(self, value: str) -> PlatformWalletConfigInfo:
        self.platform = value
        return self

    def with_created_at(self, value: str) -> PlatformWalletConfigInfo:
        self.created_at = value
        return self

    def with_id(self, value: str) -> PlatformWalletConfigInfo:
        self.id_ = value
        return self

    def with_updated_at(self, value: str) -> PlatformWalletConfigInfo:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "allowed_balance_origins"):
            result["allowedBalanceOrigins"] = [
                str(i0) for i0 in self.allowed_balance_origins
            ]
        elif include_empty:
            result["allowedBalanceOrigins"] = []
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "platform"):
            result["platform"] = str(self.platform)
        elif include_empty:
            result["platform"] = ""
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        allowed_balance_origins: List[str],
        namespace: str,
        platform: str,
        created_at: Optional[str] = None,
        id_: Optional[str] = None,
        updated_at: Optional[str] = None,
    ) -> PlatformWalletConfigInfo:
        instance = cls()
        instance.allowed_balance_origins = allowed_balance_origins
        instance.namespace = namespace
        instance.platform = platform
        if created_at is not None:
            instance.created_at = created_at
        if id_ is not None:
            instance.id_ = id_
        if updated_at is not None:
            instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PlatformWalletConfigInfo:
        instance = cls()
        if not dict_:
            return instance
        if (
            "allowedBalanceOrigins" in dict_
            and dict_["allowedBalanceOrigins"] is not None
        ):
            instance.allowed_balance_origins = [
                str(i0) for i0 in dict_["allowedBalanceOrigins"]
            ]
        elif include_empty:
            instance.allowed_balance_origins = []
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "platform" in dict_ and dict_["platform"] is not None:
            instance.platform = str(dict_["platform"])
        elif include_empty:
            instance.platform = ""
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, PlatformWalletConfigInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[PlatformWalletConfigInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        PlatformWalletConfigInfo,
        List[PlatformWalletConfigInfo],
        Dict[Any, PlatformWalletConfigInfo],
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
            "allowedBalanceOrigins": "allowed_balance_origins",
            "namespace": "namespace",
            "platform": "platform",
            "createdAt": "created_at",
            "id": "id_",
            "updatedAt": "updated_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "allowedBalanceOrigins": True,
            "namespace": True,
            "platform": True,
            "createdAt": False,
            "id": False,
            "updatedAt": False,
        }

    # endregion static methods
