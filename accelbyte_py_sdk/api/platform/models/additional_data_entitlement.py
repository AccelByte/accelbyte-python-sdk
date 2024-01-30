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

from ..models.client_transaction import ClientTransaction


class AdditionalDataEntitlement(Model):
    """Additional data entitlement (AdditionalDataEntitlement)

    Properties:
        client_transaction: (clientTransaction) OPTIONAL List[ClientTransaction]

        entitlement_id: (entitlementId) OPTIONAL str

        usage_count: (usageCount) OPTIONAL int
    """

    # region fields

    client_transaction: List[ClientTransaction]  # OPTIONAL
    entitlement_id: str  # OPTIONAL
    usage_count: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_client_transaction(
        self, value: List[ClientTransaction]
    ) -> AdditionalDataEntitlement:
        self.client_transaction = value
        return self

    def with_entitlement_id(self, value: str) -> AdditionalDataEntitlement:
        self.entitlement_id = value
        return self

    def with_usage_count(self, value: int) -> AdditionalDataEntitlement:
        self.usage_count = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "client_transaction"):
            result["clientTransaction"] = [
                i0.to_dict(include_empty=include_empty)
                for i0 in self.client_transaction
            ]
        elif include_empty:
            result["clientTransaction"] = []
        if hasattr(self, "entitlement_id"):
            result["entitlementId"] = str(self.entitlement_id)
        elif include_empty:
            result["entitlementId"] = ""
        if hasattr(self, "usage_count"):
            result["usageCount"] = int(self.usage_count)
        elif include_empty:
            result["usageCount"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        client_transaction: Optional[List[ClientTransaction]] = None,
        entitlement_id: Optional[str] = None,
        usage_count: Optional[int] = None,
        **kwargs,
    ) -> AdditionalDataEntitlement:
        instance = cls()
        if client_transaction is not None:
            instance.client_transaction = client_transaction
        if entitlement_id is not None:
            instance.entitlement_id = entitlement_id
        if usage_count is not None:
            instance.usage_count = usage_count
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AdditionalDataEntitlement:
        instance = cls()
        if not dict_:
            return instance
        if "clientTransaction" in dict_ and dict_["clientTransaction"] is not None:
            instance.client_transaction = [
                ClientTransaction.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["clientTransaction"]
            ]
        elif include_empty:
            instance.client_transaction = []
        if "entitlementId" in dict_ and dict_["entitlementId"] is not None:
            instance.entitlement_id = str(dict_["entitlementId"])
        elif include_empty:
            instance.entitlement_id = ""
        if "usageCount" in dict_ and dict_["usageCount"] is not None:
            instance.usage_count = int(dict_["usageCount"])
        elif include_empty:
            instance.usage_count = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, AdditionalDataEntitlement]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[AdditionalDataEntitlement]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        AdditionalDataEntitlement,
        List[AdditionalDataEntitlement],
        Dict[Any, AdditionalDataEntitlement],
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
            "clientTransaction": "client_transaction",
            "entitlementId": "entitlement_id",
            "usageCount": "usage_count",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "clientTransaction": False,
            "entitlementId": False,
            "usageCount": False,
        }

    # endregion static methods
