# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.23.0)

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

from ..models.credit_revocation import CreditRevocation
from ..models.entitlement_revocation import EntitlementRevocation
from ..models.item_revocation import ItemRevocation
from ..models.revoke_entry import RevokeEntry


class StatusEnum(StrEnum):
    FAIL = "FAIL"
    SUCCESS = "SUCCESS"


class RevocationHistoryInfo(Model):
    """Revocation history info (RevocationHistoryInfo)

    Properties:
        created_at: (createdAt) OPTIONAL str

        credit_revocations: (creditRevocations) OPTIONAL List[CreditRevocation]

        entitlement_revocations: (entitlementRevocations) OPTIONAL List[EntitlementRevocation]

        id_: (id) OPTIONAL str

        item_revocations: (itemRevocations) OPTIONAL List[ItemRevocation]

        meta: (meta) OPTIONAL Dict[str, Any]

        namespace: (namespace) OPTIONAL str

        revoke_entries: (revokeEntries) OPTIONAL List[RevokeEntry]

        source: (source) OPTIONAL str

        status: (status) OPTIONAL Union[str, StatusEnum]

        updated_at: (updatedAt) OPTIONAL str

        user_id: (userId) OPTIONAL str
    """

    # region fields

    created_at: str  # OPTIONAL
    credit_revocations: List[CreditRevocation]  # OPTIONAL
    entitlement_revocations: List[EntitlementRevocation]  # OPTIONAL
    id_: str  # OPTIONAL
    item_revocations: List[ItemRevocation]  # OPTIONAL
    meta: Dict[str, Any]  # OPTIONAL
    namespace: str  # OPTIONAL
    revoke_entries: List[RevokeEntry]  # OPTIONAL
    source: str  # OPTIONAL
    status: Union[str, StatusEnum]  # OPTIONAL
    updated_at: str  # OPTIONAL
    user_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> RevocationHistoryInfo:
        self.created_at = value
        return self

    def with_credit_revocations(
        self, value: List[CreditRevocation]
    ) -> RevocationHistoryInfo:
        self.credit_revocations = value
        return self

    def with_entitlement_revocations(
        self, value: List[EntitlementRevocation]
    ) -> RevocationHistoryInfo:
        self.entitlement_revocations = value
        return self

    def with_id(self, value: str) -> RevocationHistoryInfo:
        self.id_ = value
        return self

    def with_item_revocations(
        self, value: List[ItemRevocation]
    ) -> RevocationHistoryInfo:
        self.item_revocations = value
        return self

    def with_meta(self, value: Dict[str, Any]) -> RevocationHistoryInfo:
        self.meta = value
        return self

    def with_namespace(self, value: str) -> RevocationHistoryInfo:
        self.namespace = value
        return self

    def with_revoke_entries(self, value: List[RevokeEntry]) -> RevocationHistoryInfo:
        self.revoke_entries = value
        return self

    def with_source(self, value: str) -> RevocationHistoryInfo:
        self.source = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> RevocationHistoryInfo:
        self.status = value
        return self

    def with_updated_at(self, value: str) -> RevocationHistoryInfo:
        self.updated_at = value
        return self

    def with_user_id(self, value: str) -> RevocationHistoryInfo:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "credit_revocations"):
            result["creditRevocations"] = [
                i0.to_dict(include_empty=include_empty)
                for i0 in self.credit_revocations
            ]
        elif include_empty:
            result["creditRevocations"] = []
        if hasattr(self, "entitlement_revocations"):
            result["entitlementRevocations"] = [
                i0.to_dict(include_empty=include_empty)
                for i0 in self.entitlement_revocations
            ]
        elif include_empty:
            result["entitlementRevocations"] = []
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "item_revocations"):
            result["itemRevocations"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.item_revocations
            ]
        elif include_empty:
            result["itemRevocations"] = []
        if hasattr(self, "meta"):
            result["meta"] = {str(k0): v0 for k0, v0 in self.meta.items()}
        elif include_empty:
            result["meta"] = {}
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "revoke_entries"):
            result["revokeEntries"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.revoke_entries
            ]
        elif include_empty:
            result["revokeEntries"] = []
        if hasattr(self, "source"):
            result["source"] = str(self.source)
        elif include_empty:
            result["source"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: Optional[str] = None,
        credit_revocations: Optional[List[CreditRevocation]] = None,
        entitlement_revocations: Optional[List[EntitlementRevocation]] = None,
        id_: Optional[str] = None,
        item_revocations: Optional[List[ItemRevocation]] = None,
        meta: Optional[Dict[str, Any]] = None,
        namespace: Optional[str] = None,
        revoke_entries: Optional[List[RevokeEntry]] = None,
        source: Optional[str] = None,
        status: Optional[Union[str, StatusEnum]] = None,
        updated_at: Optional[str] = None,
        user_id: Optional[str] = None,
    ) -> RevocationHistoryInfo:
        instance = cls()
        if created_at is not None:
            instance.created_at = created_at
        if credit_revocations is not None:
            instance.credit_revocations = credit_revocations
        if entitlement_revocations is not None:
            instance.entitlement_revocations = entitlement_revocations
        if id_ is not None:
            instance.id_ = id_
        if item_revocations is not None:
            instance.item_revocations = item_revocations
        if meta is not None:
            instance.meta = meta
        if namespace is not None:
            instance.namespace = namespace
        if revoke_entries is not None:
            instance.revoke_entries = revoke_entries
        if source is not None:
            instance.source = source
        if status is not None:
            instance.status = status
        if updated_at is not None:
            instance.updated_at = updated_at
        if user_id is not None:
            instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RevocationHistoryInfo:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "creditRevocations" in dict_ and dict_["creditRevocations"] is not None:
            instance.credit_revocations = [
                CreditRevocation.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["creditRevocations"]
            ]
        elif include_empty:
            instance.credit_revocations = []
        if (
            "entitlementRevocations" in dict_
            and dict_["entitlementRevocations"] is not None
        ):
            instance.entitlement_revocations = [
                EntitlementRevocation.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["entitlementRevocations"]
            ]
        elif include_empty:
            instance.entitlement_revocations = []
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "itemRevocations" in dict_ and dict_["itemRevocations"] is not None:
            instance.item_revocations = [
                ItemRevocation.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["itemRevocations"]
            ]
        elif include_empty:
            instance.item_revocations = []
        if "meta" in dict_ and dict_["meta"] is not None:
            instance.meta = {str(k0): v0 for k0, v0 in dict_["meta"].items()}
        elif include_empty:
            instance.meta = {}
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "revokeEntries" in dict_ and dict_["revokeEntries"] is not None:
            instance.revoke_entries = [
                RevokeEntry.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["revokeEntries"]
            ]
        elif include_empty:
            instance.revoke_entries = []
        if "source" in dict_ and dict_["source"] is not None:
            instance.source = str(dict_["source"])
        elif include_empty:
            instance.source = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RevocationHistoryInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RevocationHistoryInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        RevocationHistoryInfo,
        List[RevocationHistoryInfo],
        Dict[Any, RevocationHistoryInfo],
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
            "creditRevocations": "credit_revocations",
            "entitlementRevocations": "entitlement_revocations",
            "id": "id_",
            "itemRevocations": "item_revocations",
            "meta": "meta",
            "namespace": "namespace",
            "revokeEntries": "revoke_entries",
            "source": "source",
            "status": "status",
            "updatedAt": "updated_at",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": False,
            "creditRevocations": False,
            "entitlementRevocations": False,
            "id": False,
            "itemRevocations": False,
            "meta": False,
            "namespace": False,
            "revokeEntries": False,
            "source": False,
            "status": False,
            "updatedAt": False,
            "userId": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "status": ["FAIL", "SUCCESS"],
        }

    # endregion static methods
