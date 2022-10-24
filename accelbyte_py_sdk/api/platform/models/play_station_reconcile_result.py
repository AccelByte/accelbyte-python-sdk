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
from ....core import StrEnum


class StatusEnum(StrEnum):
    FAILED = "FAILED"
    FULFILLED = "FULFILLED"
    VERIFIED = "VERIFIED"


class PlayStationReconcileResult(Model):
    """Play station reconcile result (PlayStationReconcileResult)

    Properties:
        item_id: (itemId) OPTIONAL str

        psn_item_id: (psnItemId) OPTIONAL str

        sku: (sku) OPTIONAL str

        status: (status) OPTIONAL Union[str, StatusEnum]

        transaction_id: (transactionId) OPTIONAL str
    """

    # region fields

    item_id: str  # OPTIONAL
    psn_item_id: str  # OPTIONAL
    sku: str  # OPTIONAL
    status: Union[str, StatusEnum]  # OPTIONAL
    transaction_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_item_id(self, value: str) -> PlayStationReconcileResult:
        self.item_id = value
        return self

    def with_psn_item_id(self, value: str) -> PlayStationReconcileResult:
        self.psn_item_id = value
        return self

    def with_sku(self, value: str) -> PlayStationReconcileResult:
        self.sku = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> PlayStationReconcileResult:
        self.status = value
        return self

    def with_transaction_id(self, value: str) -> PlayStationReconcileResult:
        self.transaction_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = ""
        if hasattr(self, "psn_item_id"):
            result["psnItemId"] = str(self.psn_item_id)
        elif include_empty:
            result["psnItemId"] = ""
        if hasattr(self, "sku"):
            result["sku"] = str(self.sku)
        elif include_empty:
            result["sku"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "transaction_id"):
            result["transactionId"] = str(self.transaction_id)
        elif include_empty:
            result["transactionId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        item_id: Optional[str] = None,
        psn_item_id: Optional[str] = None,
        sku: Optional[str] = None,
        status: Optional[Union[str, StatusEnum]] = None,
        transaction_id: Optional[str] = None,
    ) -> PlayStationReconcileResult:
        instance = cls()
        if item_id is not None:
            instance.item_id = item_id
        if psn_item_id is not None:
            instance.psn_item_id = psn_item_id
        if sku is not None:
            instance.sku = sku
        if status is not None:
            instance.status = status
        if transaction_id is not None:
            instance.transaction_id = transaction_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PlayStationReconcileResult:
        instance = cls()
        if not dict_:
            return instance
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = ""
        if "psnItemId" in dict_ and dict_["psnItemId"] is not None:
            instance.psn_item_id = str(dict_["psnItemId"])
        elif include_empty:
            instance.psn_item_id = ""
        if "sku" in dict_ and dict_["sku"] is not None:
            instance.sku = str(dict_["sku"])
        elif include_empty:
            instance.sku = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "transactionId" in dict_ and dict_["transactionId"] is not None:
            instance.transaction_id = str(dict_["transactionId"])
        elif include_empty:
            instance.transaction_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, PlayStationReconcileResult]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[PlayStationReconcileResult]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        PlayStationReconcileResult,
        List[PlayStationReconcileResult],
        Dict[Any, PlayStationReconcileResult],
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
            "itemId": "item_id",
            "psnItemId": "psn_item_id",
            "sku": "sku",
            "status": "status",
            "transactionId": "transaction_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "itemId": False,
            "psnItemId": False,
            "sku": False,
            "status": False,
            "transactionId": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "status": ["FAILED", "FULFILLED", "VERIFIED"],
        }

    # endregion static methods
