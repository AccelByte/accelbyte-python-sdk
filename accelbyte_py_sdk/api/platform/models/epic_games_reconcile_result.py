# Auto-generated at 2021-09-27T17:12:36.386415+08:00
# from: Justice Platform Service (3.24.0)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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


class EpicGamesReconcileResult(Model):
    """Epic games reconcile result

    Properties:
        transaction_id: (transactionId) OPTIONAL str

        epic_games_item_id: (epicGamesItemId) OPTIONAL str

        item_id: (itemId) OPTIONAL str

        sku: (sku) OPTIONAL str

        status: (status) OPTIONAL str
    """

    # region fields

    transaction_id: str                                                                            # OPTIONAL
    epic_games_item_id: str                                                                        # OPTIONAL
    item_id: str                                                                                   # OPTIONAL
    sku: str                                                                                       # OPTIONAL
    status: str                                                                                    # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_transaction_id(self, value: str) -> EpicGamesReconcileResult:
        self.transaction_id = value
        return self

    def with_epic_games_item_id(self, value: str) -> EpicGamesReconcileResult:
        self.epic_games_item_id = value
        return self

    def with_item_id(self, value: str) -> EpicGamesReconcileResult:
        self.item_id = value
        return self

    def with_sku(self, value: str) -> EpicGamesReconcileResult:
        self.sku = value
        return self

    def with_status(self, value: str) -> EpicGamesReconcileResult:
        self.status = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "transaction_id") and self.transaction_id:
            result["transactionId"] = str(self.transaction_id)
        elif include_empty:
            result["transactionId"] = str()
        if hasattr(self, "epic_games_item_id") and self.epic_games_item_id:
            result["epicGamesItemId"] = str(self.epic_games_item_id)
        elif include_empty:
            result["epicGamesItemId"] = str()
        if hasattr(self, "item_id") and self.item_id:
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = str()
        if hasattr(self, "sku") and self.sku:
            result["sku"] = str(self.sku)
        elif include_empty:
            result["sku"] = str()
        if hasattr(self, "status") and self.status:
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        transaction_id: Optional[str] = None,
        epic_games_item_id: Optional[str] = None,
        item_id: Optional[str] = None,
        sku: Optional[str] = None,
        status: Optional[str] = None,
    ) -> EpicGamesReconcileResult:
        instance = cls()
        if transaction_id is not None:
            instance.transaction_id = transaction_id
        if epic_games_item_id is not None:
            instance.epic_games_item_id = epic_games_item_id
        if item_id is not None:
            instance.item_id = item_id
        if sku is not None:
            instance.sku = sku
        if status is not None:
            instance.status = status
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> EpicGamesReconcileResult:
        instance = cls()
        if not dict_:
            return instance
        if "transactionId" in dict_ and dict_["transactionId"] is not None:
            instance.transaction_id = str(dict_["transactionId"])
        elif include_empty:
            instance.transaction_id = str()
        if "epicGamesItemId" in dict_ and dict_["epicGamesItemId"] is not None:
            instance.epic_games_item_id = str(dict_["epicGamesItemId"])
        elif include_empty:
            instance.epic_games_item_id = str()
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = str()
        if "sku" in dict_ and dict_["sku"] is not None:
            instance.sku = str(dict_["sku"])
        elif include_empty:
            instance.sku = str()
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "transactionId": "transaction_id",
            "epicGamesItemId": "epic_games_item_id",
            "itemId": "item_id",
            "sku": "sku",
            "status": "status",
        }

    # endregion static methods
