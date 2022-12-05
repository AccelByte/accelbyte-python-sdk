# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.18.1)

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

from ..models.platform_reward import PlatformReward
from ..models.revoke_result import RevokeResult


class StatusEnum(StrEnum):
    FULFILLED = "FULFILLED"
    REVOKED = "REVOKED"


class DLCRecord(Model):
    """DLC record (DLCRecord)

    Properties:
        id_: (id) OPTIONAL str

        obtained_at: (obtainedAt) OPTIONAL str

        revoke_results: (revokeResults) OPTIONAL List[RevokeResult]

        revoked_at: (revokedAt) OPTIONAL str

        rewards: (rewards) OPTIONAL List[PlatformReward]

        sources: (sources) OPTIONAL List[str]

        status: (status) OPTIONAL Union[str, StatusEnum]
    """

    # region fields

    id_: str  # OPTIONAL
    obtained_at: str  # OPTIONAL
    revoke_results: List[RevokeResult]  # OPTIONAL
    revoked_at: str  # OPTIONAL
    rewards: List[PlatformReward]  # OPTIONAL
    sources: List[str]  # OPTIONAL
    status: Union[str, StatusEnum]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> DLCRecord:
        self.id_ = value
        return self

    def with_obtained_at(self, value: str) -> DLCRecord:
        self.obtained_at = value
        return self

    def with_revoke_results(self, value: List[RevokeResult]) -> DLCRecord:
        self.revoke_results = value
        return self

    def with_revoked_at(self, value: str) -> DLCRecord:
        self.revoked_at = value
        return self

    def with_rewards(self, value: List[PlatformReward]) -> DLCRecord:
        self.rewards = value
        return self

    def with_sources(self, value: List[str]) -> DLCRecord:
        self.sources = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> DLCRecord:
        self.status = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "obtained_at"):
            result["obtainedAt"] = str(self.obtained_at)
        elif include_empty:
            result["obtainedAt"] = ""
        if hasattr(self, "revoke_results"):
            result["revokeResults"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.revoke_results
            ]
        elif include_empty:
            result["revokeResults"] = []
        if hasattr(self, "revoked_at"):
            result["revokedAt"] = str(self.revoked_at)
        elif include_empty:
            result["revokedAt"] = ""
        if hasattr(self, "rewards"):
            result["rewards"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.rewards
            ]
        elif include_empty:
            result["rewards"] = []
        if hasattr(self, "sources"):
            result["sources"] = [str(i0) for i0 in self.sources]
        elif include_empty:
            result["sources"] = []
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        id_: Optional[str] = None,
        obtained_at: Optional[str] = None,
        revoke_results: Optional[List[RevokeResult]] = None,
        revoked_at: Optional[str] = None,
        rewards: Optional[List[PlatformReward]] = None,
        sources: Optional[List[str]] = None,
        status: Optional[Union[str, StatusEnum]] = None,
    ) -> DLCRecord:
        instance = cls()
        if id_ is not None:
            instance.id_ = id_
        if obtained_at is not None:
            instance.obtained_at = obtained_at
        if revoke_results is not None:
            instance.revoke_results = revoke_results
        if revoked_at is not None:
            instance.revoked_at = revoked_at
        if rewards is not None:
            instance.rewards = rewards
        if sources is not None:
            instance.sources = sources
        if status is not None:
            instance.status = status
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> DLCRecord:
        instance = cls()
        if not dict_:
            return instance
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "obtainedAt" in dict_ and dict_["obtainedAt"] is not None:
            instance.obtained_at = str(dict_["obtainedAt"])
        elif include_empty:
            instance.obtained_at = ""
        if "revokeResults" in dict_ and dict_["revokeResults"] is not None:
            instance.revoke_results = [
                RevokeResult.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["revokeResults"]
            ]
        elif include_empty:
            instance.revoke_results = []
        if "revokedAt" in dict_ and dict_["revokedAt"] is not None:
            instance.revoked_at = str(dict_["revokedAt"])
        elif include_empty:
            instance.revoked_at = ""
        if "rewards" in dict_ and dict_["rewards"] is not None:
            instance.rewards = [
                PlatformReward.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["rewards"]
            ]
        elif include_empty:
            instance.rewards = []
        if "sources" in dict_ and dict_["sources"] is not None:
            instance.sources = [str(i0) for i0 in dict_["sources"]]
        elif include_empty:
            instance.sources = []
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, DLCRecord]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[DLCRecord]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[DLCRecord, List[DLCRecord], Dict[Any, DLCRecord]]:
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
            "obtainedAt": "obtained_at",
            "revokeResults": "revoke_results",
            "revokedAt": "revoked_at",
            "rewards": "rewards",
            "sources": "sources",
            "status": "status",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "id": False,
            "obtainedAt": False,
            "revokeResults": False,
            "revokedAt": False,
            "rewards": False,
            "sources": False,
            "status": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "status": ["FULFILLED", "REVOKED"],
        }

    # endregion static methods
