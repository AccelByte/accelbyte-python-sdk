# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Platform Service (4.42.0)

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


class StatusEnum(StrEnum):
    FAIL = "FAIL"
    SUCCESS = "SUCCESS"


class RevocationResult(Model):
    """Revocation result (RevocationResult)

    Properties:
        id_: (id) REQUIRED str

        status: (status) REQUIRED Union[str, StatusEnum]

        credit_revocations: (creditRevocations) OPTIONAL List[CreditRevocation]

        entitlement_revocations: (entitlementRevocations) OPTIONAL List[EntitlementRevocation]

        item_revocations: (itemRevocations) OPTIONAL List[ItemRevocation]
    """

    # region fields

    id_: str  # REQUIRED
    status: Union[str, StatusEnum]  # REQUIRED
    credit_revocations: List[CreditRevocation]  # OPTIONAL
    entitlement_revocations: List[EntitlementRevocation]  # OPTIONAL
    item_revocations: List[ItemRevocation]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> RevocationResult:
        self.id_ = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> RevocationResult:
        self.status = value
        return self

    def with_credit_revocations(
        self, value: List[CreditRevocation]
    ) -> RevocationResult:
        self.credit_revocations = value
        return self

    def with_entitlement_revocations(
        self, value: List[EntitlementRevocation]
    ) -> RevocationResult:
        self.entitlement_revocations = value
        return self

    def with_item_revocations(self, value: List[ItemRevocation]) -> RevocationResult:
        self.item_revocations = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
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
        if hasattr(self, "item_revocations"):
            result["itemRevocations"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.item_revocations
            ]
        elif include_empty:
            result["itemRevocations"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        id_: str,
        status: Union[str, StatusEnum],
        credit_revocations: Optional[List[CreditRevocation]] = None,
        entitlement_revocations: Optional[List[EntitlementRevocation]] = None,
        item_revocations: Optional[List[ItemRevocation]] = None,
        **kwargs,
    ) -> RevocationResult:
        instance = cls()
        instance.id_ = id_
        instance.status = status
        if credit_revocations is not None:
            instance.credit_revocations = credit_revocations
        if entitlement_revocations is not None:
            instance.entitlement_revocations = entitlement_revocations
        if item_revocations is not None:
            instance.item_revocations = item_revocations
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RevocationResult:
        instance = cls()
        if not dict_:
            return instance
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
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
        if "itemRevocations" in dict_ and dict_["itemRevocations"] is not None:
            instance.item_revocations = [
                ItemRevocation.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["itemRevocations"]
            ]
        elif include_empty:
            instance.item_revocations = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RevocationResult]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RevocationResult]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[RevocationResult, List[RevocationResult], Dict[Any, RevocationResult]]:
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
            "status": "status",
            "creditRevocations": "credit_revocations",
            "entitlementRevocations": "entitlement_revocations",
            "itemRevocations": "item_revocations",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "id": True,
            "status": True,
            "creditRevocations": False,
            "entitlementRevocations": False,
            "itemRevocations": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "status": ["FAIL", "SUCCESS"],
        }

    # endregion static methods
