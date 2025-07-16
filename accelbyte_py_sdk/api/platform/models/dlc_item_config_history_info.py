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

from ..models.platform_reward import PlatformReward


class DLCItemConfigHistoryInfo(Model):
    """DLC item config history info (DLCItemConfigHistoryInfo)

    Properties:
        auto_update: (autoUpdate) OPTIONAL bool

        created_at: (createdAt) OPTIONAL str

        dlc_id: (dlcId) OPTIONAL str

        enable_revocation: (enableRevocation) OPTIONAL bool

        id_: (id) OPTIONAL str

        namespace: (namespace) OPTIONAL str

        rewards: (rewards) OPTIONAL List[PlatformReward]

        rvn: (rvn) OPTIONAL int

        updated_at: (updatedAt) OPTIONAL str
    """

    # region fields

    auto_update: bool  # OPTIONAL
    created_at: str  # OPTIONAL
    dlc_id: str  # OPTIONAL
    enable_revocation: bool  # OPTIONAL
    id_: str  # OPTIONAL
    namespace: str  # OPTIONAL
    rewards: List[PlatformReward]  # OPTIONAL
    rvn: int  # OPTIONAL
    updated_at: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_auto_update(self, value: bool) -> DLCItemConfigHistoryInfo:
        self.auto_update = value
        return self

    def with_created_at(self, value: str) -> DLCItemConfigHistoryInfo:
        self.created_at = value
        return self

    def with_dlc_id(self, value: str) -> DLCItemConfigHistoryInfo:
        self.dlc_id = value
        return self

    def with_enable_revocation(self, value: bool) -> DLCItemConfigHistoryInfo:
        self.enable_revocation = value
        return self

    def with_id(self, value: str) -> DLCItemConfigHistoryInfo:
        self.id_ = value
        return self

    def with_namespace(self, value: str) -> DLCItemConfigHistoryInfo:
        self.namespace = value
        return self

    def with_rewards(self, value: List[PlatformReward]) -> DLCItemConfigHistoryInfo:
        self.rewards = value
        return self

    def with_rvn(self, value: int) -> DLCItemConfigHistoryInfo:
        self.rvn = value
        return self

    def with_updated_at(self, value: str) -> DLCItemConfigHistoryInfo:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "auto_update"):
            result["autoUpdate"] = bool(self.auto_update)
        elif include_empty:
            result["autoUpdate"] = False
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "dlc_id"):
            result["dlcId"] = str(self.dlc_id)
        elif include_empty:
            result["dlcId"] = ""
        if hasattr(self, "enable_revocation"):
            result["enableRevocation"] = bool(self.enable_revocation)
        elif include_empty:
            result["enableRevocation"] = False
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "rewards"):
            result["rewards"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.rewards
            ]
        elif include_empty:
            result["rewards"] = []
        if hasattr(self, "rvn"):
            result["rvn"] = int(self.rvn)
        elif include_empty:
            result["rvn"] = 0
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
        auto_update: Optional[bool] = None,
        created_at: Optional[str] = None,
        dlc_id: Optional[str] = None,
        enable_revocation: Optional[bool] = None,
        id_: Optional[str] = None,
        namespace: Optional[str] = None,
        rewards: Optional[List[PlatformReward]] = None,
        rvn: Optional[int] = None,
        updated_at: Optional[str] = None,
        **kwargs,
    ) -> DLCItemConfigHistoryInfo:
        instance = cls()
        if auto_update is not None:
            instance.auto_update = auto_update
        if created_at is not None:
            instance.created_at = created_at
        if dlc_id is not None:
            instance.dlc_id = dlc_id
        if enable_revocation is not None:
            instance.enable_revocation = enable_revocation
        if id_ is not None:
            instance.id_ = id_
        if namespace is not None:
            instance.namespace = namespace
        if rewards is not None:
            instance.rewards = rewards
        if rvn is not None:
            instance.rvn = rvn
        if updated_at is not None:
            instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> DLCItemConfigHistoryInfo:
        instance = cls()
        if not dict_:
            return instance
        if "autoUpdate" in dict_ and dict_["autoUpdate"] is not None:
            instance.auto_update = bool(dict_["autoUpdate"])
        elif include_empty:
            instance.auto_update = False
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "dlcId" in dict_ and dict_["dlcId"] is not None:
            instance.dlc_id = str(dict_["dlcId"])
        elif include_empty:
            instance.dlc_id = ""
        if "enableRevocation" in dict_ and dict_["enableRevocation"] is not None:
            instance.enable_revocation = bool(dict_["enableRevocation"])
        elif include_empty:
            instance.enable_revocation = False
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "rewards" in dict_ and dict_["rewards"] is not None:
            instance.rewards = [
                PlatformReward.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["rewards"]
            ]
        elif include_empty:
            instance.rewards = []
        if "rvn" in dict_ and dict_["rvn"] is not None:
            instance.rvn = int(dict_["rvn"])
        elif include_empty:
            instance.rvn = 0
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, DLCItemConfigHistoryInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[DLCItemConfigHistoryInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        DLCItemConfigHistoryInfo,
        List[DLCItemConfigHistoryInfo],
        Dict[Any, DLCItemConfigHistoryInfo],
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
            "autoUpdate": "auto_update",
            "createdAt": "created_at",
            "dlcId": "dlc_id",
            "enableRevocation": "enable_revocation",
            "id": "id_",
            "namespace": "namespace",
            "rewards": "rewards",
            "rvn": "rvn",
            "updatedAt": "updated_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "autoUpdate": False,
            "createdAt": False,
            "dlcId": False,
            "enableRevocation": False,
            "id": False,
            "namespace": False,
            "rewards": False,
            "rvn": False,
            "updatedAt": False,
        }

    # endregion static methods
