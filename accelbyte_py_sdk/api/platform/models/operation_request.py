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

from ..models.credit_payload import CreditPayload
from ..models.debit_payload import DebitPayload
from ..models.ful_fill_item_payload import FulFillItemPayload
from ..models.revoke_entitlement_payload import RevokeEntitlementPayload


class TypeEnum(StrEnum):
    CREDIT_WALLET = "CREDIT_WALLET"
    DEBIT_WALLET = "DEBIT_WALLET"
    FULFILL_ITEM = "FULFILL_ITEM"
    REVOKE_ENTITLEMENT = "REVOKE_ENTITLEMENT"


class OperationRequest(Model):
    """Represents a single operation request. (OperationRequest)

    Properties:
        credit_payload: (creditPayload) OPTIONAL CreditPayload

        debit_payload: (debitPayload) OPTIONAL DebitPayload

        ful_fill_item_payload: (fulFillItemPayload) OPTIONAL FulFillItemPayload

        revoke_entitlement_payload: (revokeEntitlementPayload) OPTIONAL RevokeEntitlementPayload

        type_: (type) OPTIONAL Union[str, TypeEnum]
    """

    # region fields

    credit_payload: CreditPayload  # OPTIONAL
    debit_payload: DebitPayload  # OPTIONAL
    ful_fill_item_payload: FulFillItemPayload  # OPTIONAL
    revoke_entitlement_payload: RevokeEntitlementPayload  # OPTIONAL
    type_: Union[str, TypeEnum]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_credit_payload(self, value: CreditPayload) -> OperationRequest:
        self.credit_payload = value
        return self

    def with_debit_payload(self, value: DebitPayload) -> OperationRequest:
        self.debit_payload = value
        return self

    def with_ful_fill_item_payload(self, value: FulFillItemPayload) -> OperationRequest:
        self.ful_fill_item_payload = value
        return self

    def with_revoke_entitlement_payload(
        self, value: RevokeEntitlementPayload
    ) -> OperationRequest:
        self.revoke_entitlement_payload = value
        return self

    def with_type(self, value: Union[str, TypeEnum]) -> OperationRequest:
        self.type_ = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "credit_payload"):
            result["creditPayload"] = self.credit_payload.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["creditPayload"] = CreditPayload()
        if hasattr(self, "debit_payload"):
            result["debitPayload"] = self.debit_payload.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["debitPayload"] = DebitPayload()
        if hasattr(self, "ful_fill_item_payload"):
            result["fulFillItemPayload"] = self.ful_fill_item_payload.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["fulFillItemPayload"] = FulFillItemPayload()
        if hasattr(self, "revoke_entitlement_payload"):
            result[
                "revokeEntitlementPayload"
            ] = self.revoke_entitlement_payload.to_dict(include_empty=include_empty)
        elif include_empty:
            result["revokeEntitlementPayload"] = RevokeEntitlementPayload()
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = Union[str, TypeEnum]()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        credit_payload: Optional[CreditPayload] = None,
        debit_payload: Optional[DebitPayload] = None,
        ful_fill_item_payload: Optional[FulFillItemPayload] = None,
        revoke_entitlement_payload: Optional[RevokeEntitlementPayload] = None,
        type_: Optional[Union[str, TypeEnum]] = None,
        **kwargs,
    ) -> OperationRequest:
        instance = cls()
        if credit_payload is not None:
            instance.credit_payload = credit_payload
        if debit_payload is not None:
            instance.debit_payload = debit_payload
        if ful_fill_item_payload is not None:
            instance.ful_fill_item_payload = ful_fill_item_payload
        if revoke_entitlement_payload is not None:
            instance.revoke_entitlement_payload = revoke_entitlement_payload
        if type_ is not None:
            instance.type_ = type_
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> OperationRequest:
        instance = cls()
        if not dict_:
            return instance
        if "creditPayload" in dict_ and dict_["creditPayload"] is not None:
            instance.credit_payload = CreditPayload.create_from_dict(
                dict_["creditPayload"], include_empty=include_empty
            )
        elif include_empty:
            instance.credit_payload = CreditPayload()
        if "debitPayload" in dict_ and dict_["debitPayload"] is not None:
            instance.debit_payload = DebitPayload.create_from_dict(
                dict_["debitPayload"], include_empty=include_empty
            )
        elif include_empty:
            instance.debit_payload = DebitPayload()
        if "fulFillItemPayload" in dict_ and dict_["fulFillItemPayload"] is not None:
            instance.ful_fill_item_payload = FulFillItemPayload.create_from_dict(
                dict_["fulFillItemPayload"], include_empty=include_empty
            )
        elif include_empty:
            instance.ful_fill_item_payload = FulFillItemPayload()
        if (
            "revokeEntitlementPayload" in dict_
            and dict_["revokeEntitlementPayload"] is not None
        ):
            instance.revoke_entitlement_payload = (
                RevokeEntitlementPayload.create_from_dict(
                    dict_["revokeEntitlementPayload"], include_empty=include_empty
                )
            )
        elif include_empty:
            instance.revoke_entitlement_payload = RevokeEntitlementPayload()
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = Union[str, TypeEnum]()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, OperationRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[OperationRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[OperationRequest, List[OperationRequest], Dict[Any, OperationRequest]]:
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
            "creditPayload": "credit_payload",
            "debitPayload": "debit_payload",
            "fulFillItemPayload": "ful_fill_item_payload",
            "revokeEntitlementPayload": "revoke_entitlement_payload",
            "type": "type_",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "creditPayload": False,
            "debitPayload": False,
            "fulFillItemPayload": False,
            "revokeEntitlementPayload": False,
            "type": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "type": [
                "CREDIT_WALLET",
                "DEBIT_WALLET",
                "FULFILL_ITEM",
                "REVOKE_ENTITLEMENT",
            ],
        }

    # endregion static methods
