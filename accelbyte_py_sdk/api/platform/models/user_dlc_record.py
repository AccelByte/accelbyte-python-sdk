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

from ..models.entitlement_origin_sync_result import EntitlementOriginSyncResult
from ..models.platform_reward import PlatformReward
from ..models.revocation_result import RevocationResult
from ..models.revoke_result import RevokeResult


class EntitlementOriginSyncStatusEnum(StrEnum):
    NOT_SYNCED = "NOT_SYNCED"
    SYNCED = "SYNCED"
    SYNCED_FAILED = "SYNCED_FAILED"


class PlatformEnum(StrEnum):
    EPICGAMES = "EPICGAMES"
    OCULUS = "OCULUS"
    PSN = "PSN"
    STEAM = "STEAM"
    XBOX = "XBOX"


class StatusEnum(StrEnum):
    FULFILLED = "FULFILLED"
    REVOKED = "REVOKED"
    REVOKE_FAILED = "REVOKE_FAILED"


class UserDLCRecord(Model):
    """User DLC record (UserDLCRecord)

    Properties:
        entitlement_origin_sync_result: (entitlementOriginSyncResult) OPTIONAL List[EntitlementOriginSyncResult]

        entitlement_origin_sync_status: (entitlementOriginSyncStatus) OPTIONAL Union[str, EntitlementOriginSyncStatusEnum]

        id_: (id) OPTIONAL str

        metadata: (metadata) OPTIONAL Dict[str, Any]

        namespace: (namespace) OPTIONAL str

        obtained_at: (obtainedAt) OPTIONAL str

        platform: (platform) OPTIONAL Union[str, PlatformEnum]

        revocation_result: (revocationResult) OPTIONAL RevocationResult

        revoke_results: (revokeResults) OPTIONAL List[RevokeResult]

        revoked_at: (revokedAt) OPTIONAL str

        rewards: (rewards) OPTIONAL List[PlatformReward]

        sources: (sources) OPTIONAL List[str]

        status: (status) OPTIONAL Union[str, StatusEnum]

        transaction_id: (transactionId) OPTIONAL str

        user_id: (userId) OPTIONAL str

        version: (version) OPTIONAL int
    """

    # region fields

    entitlement_origin_sync_result: List[EntitlementOriginSyncResult]  # OPTIONAL
    entitlement_origin_sync_status: Union[
        str, EntitlementOriginSyncStatusEnum
    ]  # OPTIONAL
    id_: str  # OPTIONAL
    metadata: Dict[str, Any]  # OPTIONAL
    namespace: str  # OPTIONAL
    obtained_at: str  # OPTIONAL
    platform: Union[str, PlatformEnum]  # OPTIONAL
    revocation_result: RevocationResult  # OPTIONAL
    revoke_results: List[RevokeResult]  # OPTIONAL
    revoked_at: str  # OPTIONAL
    rewards: List[PlatformReward]  # OPTIONAL
    sources: List[str]  # OPTIONAL
    status: Union[str, StatusEnum]  # OPTIONAL
    transaction_id: str  # OPTIONAL
    user_id: str  # OPTIONAL
    version: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_entitlement_origin_sync_result(
        self, value: List[EntitlementOriginSyncResult]
    ) -> UserDLCRecord:
        self.entitlement_origin_sync_result = value
        return self

    def with_entitlement_origin_sync_status(
        self, value: Union[str, EntitlementOriginSyncStatusEnum]
    ) -> UserDLCRecord:
        self.entitlement_origin_sync_status = value
        return self

    def with_id(self, value: str) -> UserDLCRecord:
        self.id_ = value
        return self

    def with_metadata(self, value: Dict[str, Any]) -> UserDLCRecord:
        self.metadata = value
        return self

    def with_namespace(self, value: str) -> UserDLCRecord:
        self.namespace = value
        return self

    def with_obtained_at(self, value: str) -> UserDLCRecord:
        self.obtained_at = value
        return self

    def with_platform(self, value: Union[str, PlatformEnum]) -> UserDLCRecord:
        self.platform = value
        return self

    def with_revocation_result(self, value: RevocationResult) -> UserDLCRecord:
        self.revocation_result = value
        return self

    def with_revoke_results(self, value: List[RevokeResult]) -> UserDLCRecord:
        self.revoke_results = value
        return self

    def with_revoked_at(self, value: str) -> UserDLCRecord:
        self.revoked_at = value
        return self

    def with_rewards(self, value: List[PlatformReward]) -> UserDLCRecord:
        self.rewards = value
        return self

    def with_sources(self, value: List[str]) -> UserDLCRecord:
        self.sources = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> UserDLCRecord:
        self.status = value
        return self

    def with_transaction_id(self, value: str) -> UserDLCRecord:
        self.transaction_id = value
        return self

    def with_user_id(self, value: str) -> UserDLCRecord:
        self.user_id = value
        return self

    def with_version(self, value: int) -> UserDLCRecord:
        self.version = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "entitlement_origin_sync_result"):
            result["entitlementOriginSyncResult"] = [
                i0.to_dict(include_empty=include_empty)
                for i0 in self.entitlement_origin_sync_result
            ]
        elif include_empty:
            result["entitlementOriginSyncResult"] = []
        if hasattr(self, "entitlement_origin_sync_status"):
            result["entitlementOriginSyncStatus"] = str(
                self.entitlement_origin_sync_status
            )
        elif include_empty:
            result["entitlementOriginSyncStatus"] = Union[
                str, EntitlementOriginSyncStatusEnum
            ]()
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "metadata"):
            result["metadata"] = {str(k0): v0 for k0, v0 in self.metadata.items()}
        elif include_empty:
            result["metadata"] = {}
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "obtained_at"):
            result["obtainedAt"] = str(self.obtained_at)
        elif include_empty:
            result["obtainedAt"] = ""
        if hasattr(self, "platform"):
            result["platform"] = str(self.platform)
        elif include_empty:
            result["platform"] = Union[str, PlatformEnum]()
        if hasattr(self, "revocation_result"):
            result["revocationResult"] = self.revocation_result.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["revocationResult"] = RevocationResult()
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
        if hasattr(self, "transaction_id"):
            result["transactionId"] = str(self.transaction_id)
        elif include_empty:
            result["transactionId"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "version"):
            result["version"] = int(self.version)
        elif include_empty:
            result["version"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        entitlement_origin_sync_result: Optional[
            List[EntitlementOriginSyncResult]
        ] = None,
        entitlement_origin_sync_status: Optional[
            Union[str, EntitlementOriginSyncStatusEnum]
        ] = None,
        id_: Optional[str] = None,
        metadata: Optional[Dict[str, Any]] = None,
        namespace: Optional[str] = None,
        obtained_at: Optional[str] = None,
        platform: Optional[Union[str, PlatformEnum]] = None,
        revocation_result: Optional[RevocationResult] = None,
        revoke_results: Optional[List[RevokeResult]] = None,
        revoked_at: Optional[str] = None,
        rewards: Optional[List[PlatformReward]] = None,
        sources: Optional[List[str]] = None,
        status: Optional[Union[str, StatusEnum]] = None,
        transaction_id: Optional[str] = None,
        user_id: Optional[str] = None,
        version: Optional[int] = None,
        **kwargs,
    ) -> UserDLCRecord:
        instance = cls()
        if entitlement_origin_sync_result is not None:
            instance.entitlement_origin_sync_result = entitlement_origin_sync_result
        if entitlement_origin_sync_status is not None:
            instance.entitlement_origin_sync_status = entitlement_origin_sync_status
        if id_ is not None:
            instance.id_ = id_
        if metadata is not None:
            instance.metadata = metadata
        if namespace is not None:
            instance.namespace = namespace
        if obtained_at is not None:
            instance.obtained_at = obtained_at
        if platform is not None:
            instance.platform = platform
        if revocation_result is not None:
            instance.revocation_result = revocation_result
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
        if transaction_id is not None:
            instance.transaction_id = transaction_id
        if user_id is not None:
            instance.user_id = user_id
        if version is not None:
            instance.version = version
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> UserDLCRecord:
        instance = cls()
        if not dict_:
            return instance
        if (
            "entitlementOriginSyncResult" in dict_
            and dict_["entitlementOriginSyncResult"] is not None
        ):
            instance.entitlement_origin_sync_result = [
                EntitlementOriginSyncResult.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["entitlementOriginSyncResult"]
            ]
        elif include_empty:
            instance.entitlement_origin_sync_result = []
        if (
            "entitlementOriginSyncStatus" in dict_
            and dict_["entitlementOriginSyncStatus"] is not None
        ):
            instance.entitlement_origin_sync_status = str(
                dict_["entitlementOriginSyncStatus"]
            )
        elif include_empty:
            instance.entitlement_origin_sync_status = Union[
                str, EntitlementOriginSyncStatusEnum
            ]()
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "metadata" in dict_ and dict_["metadata"] is not None:
            instance.metadata = {str(k0): v0 for k0, v0 in dict_["metadata"].items()}
        elif include_empty:
            instance.metadata = {}
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "obtainedAt" in dict_ and dict_["obtainedAt"] is not None:
            instance.obtained_at = str(dict_["obtainedAt"])
        elif include_empty:
            instance.obtained_at = ""
        if "platform" in dict_ and dict_["platform"] is not None:
            instance.platform = str(dict_["platform"])
        elif include_empty:
            instance.platform = Union[str, PlatformEnum]()
        if "revocationResult" in dict_ and dict_["revocationResult"] is not None:
            instance.revocation_result = RevocationResult.create_from_dict(
                dict_["revocationResult"], include_empty=include_empty
            )
        elif include_empty:
            instance.revocation_result = RevocationResult()
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
        if "transactionId" in dict_ and dict_["transactionId"] is not None:
            instance.transaction_id = str(dict_["transactionId"])
        elif include_empty:
            instance.transaction_id = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "version" in dict_ and dict_["version"] is not None:
            instance.version = int(dict_["version"])
        elif include_empty:
            instance.version = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, UserDLCRecord]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[UserDLCRecord]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[UserDLCRecord, List[UserDLCRecord], Dict[Any, UserDLCRecord]]:
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
            "entitlementOriginSyncResult": "entitlement_origin_sync_result",
            "entitlementOriginSyncStatus": "entitlement_origin_sync_status",
            "id": "id_",
            "metadata": "metadata",
            "namespace": "namespace",
            "obtainedAt": "obtained_at",
            "platform": "platform",
            "revocationResult": "revocation_result",
            "revokeResults": "revoke_results",
            "revokedAt": "revoked_at",
            "rewards": "rewards",
            "sources": "sources",
            "status": "status",
            "transactionId": "transaction_id",
            "userId": "user_id",
            "version": "version",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "entitlementOriginSyncResult": False,
            "entitlementOriginSyncStatus": False,
            "id": False,
            "metadata": False,
            "namespace": False,
            "obtainedAt": False,
            "platform": False,
            "revocationResult": False,
            "revokeResults": False,
            "revokedAt": False,
            "rewards": False,
            "sources": False,
            "status": False,
            "transactionId": False,
            "userId": False,
            "version": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "entitlementOriginSyncStatus": ["NOT_SYNCED", "SYNCED", "SYNCED_FAILED"],
            "platform": ["EPICGAMES", "OCULUS", "PSN", "STEAM", "XBOX"],
            "status": ["FULFILLED", "REVOKED", "REVOKE_FAILED"],
        }

    # endregion static methods
