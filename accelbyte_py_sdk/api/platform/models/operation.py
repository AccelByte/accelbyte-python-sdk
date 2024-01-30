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


class StatusEnum(StrEnum):
    FAILED = "FAILED"
    INIT = "INIT"
    SKIPPED = "SKIPPED"
    SUCCESS = "SUCCESS"


class Operation(Model):
    """Operation (Operation)

    Properties:
        type_: (type) REQUIRED Union[str, TypeEnum]

        credit_payload: (creditPayload) OPTIONAL CreditPayload

        debit_payload: (debitPayload) OPTIONAL DebitPayload

        ful_fill_item_payload: (fulFillItemPayload) OPTIONAL FulFillItemPayload

        result_id: (resultId) OPTIONAL str

        revoke_entitlement_payload: (revokeEntitlementPayload) OPTIONAL RevokeEntitlementPayload

        status: (status) OPTIONAL Union[str, StatusEnum]

        status_reason: (statusReason) OPTIONAL str
    """

    # region fields

    type_: Union[str, TypeEnum]  # REQUIRED
    credit_payload: CreditPayload  # OPTIONAL
    debit_payload: DebitPayload  # OPTIONAL
    ful_fill_item_payload: FulFillItemPayload  # OPTIONAL
    result_id: str  # OPTIONAL
    revoke_entitlement_payload: RevokeEntitlementPayload  # OPTIONAL
    status: Union[str, StatusEnum]  # OPTIONAL
    status_reason: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_type(self, value: Union[str, TypeEnum]) -> Operation:
        self.type_ = value
        return self

    def with_credit_payload(self, value: CreditPayload) -> Operation:
        self.credit_payload = value
        return self

    def with_debit_payload(self, value: DebitPayload) -> Operation:
        self.debit_payload = value
        return self

    def with_ful_fill_item_payload(self, value: FulFillItemPayload) -> Operation:
        self.ful_fill_item_payload = value
        return self

    def with_result_id(self, value: str) -> Operation:
        self.result_id = value
        return self

    def with_revoke_entitlement_payload(
        self, value: RevokeEntitlementPayload
    ) -> Operation:
        self.revoke_entitlement_payload = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> Operation:
        self.status = value
        return self

    def with_status_reason(self, value: str) -> Operation:
        self.status_reason = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = Union[str, TypeEnum]()
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
        if hasattr(self, "result_id"):
            result["resultId"] = str(self.result_id)
        elif include_empty:
            result["resultId"] = ""
        if hasattr(self, "revoke_entitlement_payload"):
            result[
                "revokeEntitlementPayload"
            ] = self.revoke_entitlement_payload.to_dict(include_empty=include_empty)
        elif include_empty:
            result["revokeEntitlementPayload"] = RevokeEntitlementPayload()
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "status_reason"):
            result["statusReason"] = str(self.status_reason)
        elif include_empty:
            result["statusReason"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        type_: Union[str, TypeEnum],
        credit_payload: Optional[CreditPayload] = None,
        debit_payload: Optional[DebitPayload] = None,
        ful_fill_item_payload: Optional[FulFillItemPayload] = None,
        result_id: Optional[str] = None,
        revoke_entitlement_payload: Optional[RevokeEntitlementPayload] = None,
        status: Optional[Union[str, StatusEnum]] = None,
        status_reason: Optional[str] = None,
        **kwargs,
    ) -> Operation:
        instance = cls()
        instance.type_ = type_
        if credit_payload is not None:
            instance.credit_payload = credit_payload
        if debit_payload is not None:
            instance.debit_payload = debit_payload
        if ful_fill_item_payload is not None:
            instance.ful_fill_item_payload = ful_fill_item_payload
        if result_id is not None:
            instance.result_id = result_id
        if revoke_entitlement_payload is not None:
            instance.revoke_entitlement_payload = revoke_entitlement_payload
        if status is not None:
            instance.status = status
        if status_reason is not None:
            instance.status_reason = status_reason
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> Operation:
        instance = cls()
        if not dict_:
            return instance
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = Union[str, TypeEnum]()
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
        if "resultId" in dict_ and dict_["resultId"] is not None:
            instance.result_id = str(dict_["resultId"])
        elif include_empty:
            instance.result_id = ""
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
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "statusReason" in dict_ and dict_["statusReason"] is not None:
            instance.status_reason = str(dict_["statusReason"])
        elif include_empty:
            instance.status_reason = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, Operation]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[Operation]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[Operation, List[Operation], Dict[Any, Operation]]:
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
            "type": "type_",
            "creditPayload": "credit_payload",
            "debitPayload": "debit_payload",
            "fulFillItemPayload": "ful_fill_item_payload",
            "resultId": "result_id",
            "revokeEntitlementPayload": "revoke_entitlement_payload",
            "status": "status",
            "statusReason": "status_reason",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "type": True,
            "creditPayload": False,
            "debitPayload": False,
            "fulFillItemPayload": False,
            "resultId": False,
            "revokeEntitlementPayload": False,
            "status": False,
            "statusReason": False,
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
            "status": ["FAILED", "INIT", "SKIPPED", "SUCCESS"],
        }

    # endregion static methods
