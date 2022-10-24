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
import re
from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import Model
from ....core import StrEnum


class SourceEnum(StrEnum):
    ACHIEVEMENT = "ACHIEVEMENT"
    GIFT = "GIFT"
    IAP = "IAP"
    OTHER = "OTHER"
    PROMOTION = "PROMOTION"
    PURCHASE = "PURCHASE"
    REDEEM_CODE = "REDEEM_CODE"
    REFERRAL_BONUS = "REFERRAL_BONUS"
    REWARD = "REWARD"


class EntitlementGrant(Model):
    """A DTO object for granting entitlement API call. (EntitlementGrant)

    Properties:
        item_id: (itemId) REQUIRED str

        item_namespace: (itemNamespace) REQUIRED str

        quantity: (quantity) REQUIRED int

        end_date: (endDate) OPTIONAL str

        granted_code: (grantedCode) OPTIONAL str

        language: (language) OPTIONAL str

        region: (region) OPTIONAL str

        source: (source) OPTIONAL Union[str, SourceEnum]

        start_date: (startDate) OPTIONAL str

        store_id: (storeId) OPTIONAL str
    """

    # region fields

    item_id: str  # REQUIRED
    item_namespace: str  # REQUIRED
    quantity: int  # REQUIRED
    end_date: str  # OPTIONAL
    granted_code: str  # OPTIONAL
    language: str  # OPTIONAL
    region: str  # OPTIONAL
    source: Union[str, SourceEnum]  # OPTIONAL
    start_date: str  # OPTIONAL
    store_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_item_id(self, value: str) -> EntitlementGrant:
        self.item_id = value
        return self

    def with_item_namespace(self, value: str) -> EntitlementGrant:
        self.item_namespace = value
        return self

    def with_quantity(self, value: int) -> EntitlementGrant:
        self.quantity = value
        return self

    def with_end_date(self, value: str) -> EntitlementGrant:
        self.end_date = value
        return self

    def with_granted_code(self, value: str) -> EntitlementGrant:
        self.granted_code = value
        return self

    def with_language(self, value: str) -> EntitlementGrant:
        self.language = value
        return self

    def with_region(self, value: str) -> EntitlementGrant:
        self.region = value
        return self

    def with_source(self, value: Union[str, SourceEnum]) -> EntitlementGrant:
        self.source = value
        return self

    def with_start_date(self, value: str) -> EntitlementGrant:
        self.start_date = value
        return self

    def with_store_id(self, value: str) -> EntitlementGrant:
        self.store_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = ""
        if hasattr(self, "item_namespace"):
            result["itemNamespace"] = str(self.item_namespace)
        elif include_empty:
            result["itemNamespace"] = ""
        if hasattr(self, "quantity"):
            result["quantity"] = int(self.quantity)
        elif include_empty:
            result["quantity"] = 0
        if hasattr(self, "end_date"):
            result["endDate"] = str(self.end_date)
        elif include_empty:
            result["endDate"] = ""
        if hasattr(self, "granted_code"):
            result["grantedCode"] = str(self.granted_code)
        elif include_empty:
            result["grantedCode"] = ""
        if hasattr(self, "language"):
            result["language"] = str(self.language)
        elif include_empty:
            result["language"] = ""
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = ""
        if hasattr(self, "source"):
            result["source"] = str(self.source)
        elif include_empty:
            result["source"] = Union[str, SourceEnum]()
        if hasattr(self, "start_date"):
            result["startDate"] = str(self.start_date)
        elif include_empty:
            result["startDate"] = ""
        if hasattr(self, "store_id"):
            result["storeId"] = str(self.store_id)
        elif include_empty:
            result["storeId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        item_id: str,
        item_namespace: str,
        quantity: int,
        end_date: Optional[str] = None,
        granted_code: Optional[str] = None,
        language: Optional[str] = None,
        region: Optional[str] = None,
        source: Optional[Union[str, SourceEnum]] = None,
        start_date: Optional[str] = None,
        store_id: Optional[str] = None,
    ) -> EntitlementGrant:
        instance = cls()
        instance.item_id = item_id
        instance.item_namespace = item_namespace
        instance.quantity = quantity
        if end_date is not None:
            instance.end_date = end_date
        if granted_code is not None:
            instance.granted_code = granted_code
        if language is not None:
            instance.language = language
        if region is not None:
            instance.region = region
        if source is not None:
            instance.source = source
        if start_date is not None:
            instance.start_date = start_date
        if store_id is not None:
            instance.store_id = store_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> EntitlementGrant:
        instance = cls()
        if not dict_:
            return instance
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = ""
        if "itemNamespace" in dict_ and dict_["itemNamespace"] is not None:
            instance.item_namespace = str(dict_["itemNamespace"])
        elif include_empty:
            instance.item_namespace = ""
        if "quantity" in dict_ and dict_["quantity"] is not None:
            instance.quantity = int(dict_["quantity"])
        elif include_empty:
            instance.quantity = 0
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = str(dict_["endDate"])
        elif include_empty:
            instance.end_date = ""
        if "grantedCode" in dict_ and dict_["grantedCode"] is not None:
            instance.granted_code = str(dict_["grantedCode"])
        elif include_empty:
            instance.granted_code = ""
        if "language" in dict_ and dict_["language"] is not None:
            instance.language = str(dict_["language"])
        elif include_empty:
            instance.language = ""
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = ""
        if "source" in dict_ and dict_["source"] is not None:
            instance.source = str(dict_["source"])
        elif include_empty:
            instance.source = Union[str, SourceEnum]()
        if "startDate" in dict_ and dict_["startDate"] is not None:
            instance.start_date = str(dict_["startDate"])
        elif include_empty:
            instance.start_date = ""
        if "storeId" in dict_ and dict_["storeId"] is not None:
            instance.store_id = str(dict_["storeId"])
        elif include_empty:
            instance.store_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, EntitlementGrant]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[EntitlementGrant]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[EntitlementGrant, List[EntitlementGrant], Dict[Any, EntitlementGrant]]:
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
            "itemNamespace": "item_namespace",
            "quantity": "quantity",
            "endDate": "end_date",
            "grantedCode": "granted_code",
            "language": "language",
            "region": "region",
            "source": "source",
            "startDate": "start_date",
            "storeId": "store_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "itemId": True,
            "itemNamespace": True,
            "quantity": True,
            "endDate": False,
            "grantedCode": False,
            "language": False,
            "region": False,
            "source": False,
            "startDate": False,
            "storeId": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "source": [
                "ACHIEVEMENT",
                "GIFT",
                "IAP",
                "OTHER",
                "PROMOTION",
                "PURCHASE",
                "REDEEM_CODE",
                "REFERRAL_BONUS",
                "REWARD",
            ],
        }

    @staticmethod
    def get_pattern_map() -> Dict[str, re.Pattern]:
        return {
            "language": re.compile(
                r"^[A-Za-z]{2,4}([_-][A-Za-z]{4})?([_-]([A-Za-z]{2}|[0-9]{3}))?$"
            ),
        }

    # endregion static methods
