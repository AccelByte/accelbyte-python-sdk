# justice-platform-service (3.34.0)

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


class EntitlementGrant(Model):
    """A DTO object for granting entitlement API call. (EntitlementGrant)

    Properties:
        store_id: (storeId) OPTIONAL str

        item_id: (itemId) REQUIRED str

        granted_code: (grantedCode) OPTIONAL str

        item_namespace: (itemNamespace) REQUIRED str

        quantity: (quantity) REQUIRED int

        source: (source) OPTIONAL str

        start_date: (startDate) OPTIONAL str

        end_date: (endDate) OPTIONAL str

        region: (region) OPTIONAL str

        language: (language) OPTIONAL str
    """

    # region fields

    store_id: str                                                                                  # OPTIONAL
    item_id: str                                                                                   # REQUIRED
    granted_code: str                                                                              # OPTIONAL
    item_namespace: str                                                                            # REQUIRED
    quantity: int                                                                                  # REQUIRED
    source: str                                                                                    # OPTIONAL
    start_date: str                                                                                # OPTIONAL
    end_date: str                                                                                  # OPTIONAL
    region: str                                                                                    # OPTIONAL
    language: str                                                                                  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_store_id(self, value: str) -> EntitlementGrant:
        self.store_id = value
        return self

    def with_item_id(self, value: str) -> EntitlementGrant:
        self.item_id = value
        return self

    def with_granted_code(self, value: str) -> EntitlementGrant:
        self.granted_code = value
        return self

    def with_item_namespace(self, value: str) -> EntitlementGrant:
        self.item_namespace = value
        return self

    def with_quantity(self, value: int) -> EntitlementGrant:
        self.quantity = value
        return self

    def with_source(self, value: str) -> EntitlementGrant:
        self.source = value
        return self

    def with_start_date(self, value: str) -> EntitlementGrant:
        self.start_date = value
        return self

    def with_end_date(self, value: str) -> EntitlementGrant:
        self.end_date = value
        return self

    def with_region(self, value: str) -> EntitlementGrant:
        self.region = value
        return self

    def with_language(self, value: str) -> EntitlementGrant:
        self.language = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "store_id"):
            result["storeId"] = str(self.store_id)
        elif include_empty:
            result["storeId"] = str()
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = str()
        if hasattr(self, "granted_code"):
            result["grantedCode"] = str(self.granted_code)
        elif include_empty:
            result["grantedCode"] = str()
        if hasattr(self, "item_namespace"):
            result["itemNamespace"] = str(self.item_namespace)
        elif include_empty:
            result["itemNamespace"] = str()
        if hasattr(self, "quantity"):
            result["quantity"] = int(self.quantity)
        elif include_empty:
            result["quantity"] = int()
        if hasattr(self, "source"):
            result["source"] = str(self.source)
        elif include_empty:
            result["source"] = str()
        if hasattr(self, "start_date"):
            result["startDate"] = str(self.start_date)
        elif include_empty:
            result["startDate"] = str()
        if hasattr(self, "end_date"):
            result["endDate"] = str(self.end_date)
        elif include_empty:
            result["endDate"] = str()
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = str()
        if hasattr(self, "language"):
            result["language"] = str(self.language)
        elif include_empty:
            result["language"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        item_id: str,
        item_namespace: str,
        quantity: int,
        store_id: Optional[str] = None,
        granted_code: Optional[str] = None,
        source: Optional[str] = None,
        start_date: Optional[str] = None,
        end_date: Optional[str] = None,
        region: Optional[str] = None,
        language: Optional[str] = None,
    ) -> EntitlementGrant:
        instance = cls()
        instance.item_id = item_id
        instance.item_namespace = item_namespace
        instance.quantity = quantity
        if store_id is not None:
            instance.store_id = store_id
        if granted_code is not None:
            instance.granted_code = granted_code
        if source is not None:
            instance.source = source
        if start_date is not None:
            instance.start_date = start_date
        if end_date is not None:
            instance.end_date = end_date
        if region is not None:
            instance.region = region
        if language is not None:
            instance.language = language
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> EntitlementGrant:
        instance = cls()
        if not dict_:
            return instance
        if "storeId" in dict_ and dict_["storeId"] is not None:
            instance.store_id = str(dict_["storeId"])
        elif include_empty:
            instance.store_id = str()
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = str()
        if "grantedCode" in dict_ and dict_["grantedCode"] is not None:
            instance.granted_code = str(dict_["grantedCode"])
        elif include_empty:
            instance.granted_code = str()
        if "itemNamespace" in dict_ and dict_["itemNamespace"] is not None:
            instance.item_namespace = str(dict_["itemNamespace"])
        elif include_empty:
            instance.item_namespace = str()
        if "quantity" in dict_ and dict_["quantity"] is not None:
            instance.quantity = int(dict_["quantity"])
        elif include_empty:
            instance.quantity = int()
        if "source" in dict_ and dict_["source"] is not None:
            instance.source = str(dict_["source"])
        elif include_empty:
            instance.source = str()
        if "startDate" in dict_ and dict_["startDate"] is not None:
            instance.start_date = str(dict_["startDate"])
        elif include_empty:
            instance.start_date = str()
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = str(dict_["endDate"])
        elif include_empty:
            instance.end_date = str()
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = str()
        if "language" in dict_ and dict_["language"] is not None:
            instance.language = str(dict_["language"])
        elif include_empty:
            instance.language = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "storeId": "store_id",
            "itemId": "item_id",
            "grantedCode": "granted_code",
            "itemNamespace": "item_namespace",
            "quantity": "quantity",
            "source": "source",
            "startDate": "start_date",
            "endDate": "end_date",
            "region": "region",
            "language": "language",
        }

    # endregion static methods
