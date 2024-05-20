# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Platform Service

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
from ....core import StrEnum

from ..models.simple_entitlement import SimpleEntitlement
from ..models.simple_user_dlc import SimpleUserDLC
from ..models.simple_wallet import SimpleWallet


class ProgressionEnum(StrEnum):
    IN_PROGRESS = "IN_PROGRESS"
    SUCCESS = "SUCCESS"


class PlatformAccountClosureHistoryInfo(Model):
    """Platform account closure history info (PlatformAccountClosureHistoryInfo)

    Properties:
        id_: (id) REQUIRED str

        namespace: (namespace) REQUIRED str

        platform: (platform) REQUIRED str

        progression: (progression) REQUIRED Union[str, ProgressionEnum]

        user_id: (userId) REQUIRED str

        entitlements: (entitlements) OPTIONAL List[SimpleEntitlement]

        user_dlc_s: (userDlcS) OPTIONAL List[SimpleUserDLC]

        wallets: (wallets) OPTIONAL List[SimpleWallet]
    """

    # region fields

    id_: str  # REQUIRED
    namespace: str  # REQUIRED
    platform: str  # REQUIRED
    progression: Union[str, ProgressionEnum]  # REQUIRED
    user_id: str  # REQUIRED
    entitlements: List[SimpleEntitlement]  # OPTIONAL
    user_dlc_s: List[SimpleUserDLC]  # OPTIONAL
    wallets: List[SimpleWallet]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> PlatformAccountClosureHistoryInfo:
        self.id_ = value
        return self

    def with_namespace(self, value: str) -> PlatformAccountClosureHistoryInfo:
        self.namespace = value
        return self

    def with_platform(self, value: str) -> PlatformAccountClosureHistoryInfo:
        self.platform = value
        return self

    def with_progression(
        self, value: Union[str, ProgressionEnum]
    ) -> PlatformAccountClosureHistoryInfo:
        self.progression = value
        return self

    def with_user_id(self, value: str) -> PlatformAccountClosureHistoryInfo:
        self.user_id = value
        return self

    def with_entitlements(
        self, value: List[SimpleEntitlement]
    ) -> PlatformAccountClosureHistoryInfo:
        self.entitlements = value
        return self

    def with_user_dlc_s(
        self, value: List[SimpleUserDLC]
    ) -> PlatformAccountClosureHistoryInfo:
        self.user_dlc_s = value
        return self

    def with_wallets(
        self, value: List[SimpleWallet]
    ) -> PlatformAccountClosureHistoryInfo:
        self.wallets = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "platform"):
            result["platform"] = str(self.platform)
        elif include_empty:
            result["platform"] = ""
        if hasattr(self, "progression"):
            result["progression"] = str(self.progression)
        elif include_empty:
            result["progression"] = Union[str, ProgressionEnum]()
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "entitlements"):
            result["entitlements"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.entitlements
            ]
        elif include_empty:
            result["entitlements"] = []
        if hasattr(self, "user_dlc_s"):
            result["userDlcS"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.user_dlc_s
            ]
        elif include_empty:
            result["userDlcS"] = []
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
        id_: str,
        namespace: str,
        platform: str,
        progression: Union[str, ProgressionEnum],
        user_id: str,
        entitlements: Optional[List[SimpleEntitlement]] = None,
        user_dlc_s: Optional[List[SimpleUserDLC]] = None,
        wallets: Optional[List[SimpleWallet]] = None,
        **kwargs,
    ) -> PlatformAccountClosureHistoryInfo:
        instance = cls()
        instance.id_ = id_
        instance.namespace = namespace
        instance.platform = platform
        instance.progression = progression
        instance.user_id = user_id
        if entitlements is not None:
            instance.entitlements = entitlements
        if user_dlc_s is not None:
            instance.user_dlc_s = user_dlc_s
        if wallets is not None:
            instance.wallets = wallets
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PlatformAccountClosureHistoryInfo:
        instance = cls()
        if not dict_:
            return instance
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "platform" in dict_ and dict_["platform"] is not None:
            instance.platform = str(dict_["platform"])
        elif include_empty:
            instance.platform = ""
        if "progression" in dict_ and dict_["progression"] is not None:
            instance.progression = str(dict_["progression"])
        elif include_empty:
            instance.progression = Union[str, ProgressionEnum]()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "entitlements" in dict_ and dict_["entitlements"] is not None:
            instance.entitlements = [
                SimpleEntitlement.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["entitlements"]
            ]
        elif include_empty:
            instance.entitlements = []
        if "userDlcS" in dict_ and dict_["userDlcS"] is not None:
            instance.user_dlc_s = [
                SimpleUserDLC.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["userDlcS"]
            ]
        elif include_empty:
            instance.user_dlc_s = []
        if "wallets" in dict_ and dict_["wallets"] is not None:
            instance.wallets = [
                SimpleWallet.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["wallets"]
            ]
        elif include_empty:
            instance.wallets = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, PlatformAccountClosureHistoryInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[PlatformAccountClosureHistoryInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        PlatformAccountClosureHistoryInfo,
        List[PlatformAccountClosureHistoryInfo],
        Dict[Any, PlatformAccountClosureHistoryInfo],
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
            "id": "id_",
            "namespace": "namespace",
            "platform": "platform",
            "progression": "progression",
            "userId": "user_id",
            "entitlements": "entitlements",
            "userDlcS": "user_dlc_s",
            "wallets": "wallets",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "id": True,
            "namespace": True,
            "platform": True,
            "progression": True,
            "userId": True,
            "entitlements": False,
            "userDlcS": False,
            "wallets": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "progression": ["IN_PROGRESS", "SUCCESS"],
        }

    # endregion static methods
