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
import re
from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import Model
from ....core import StrEnum


class TypeEnum(StrEnum):
    APPLE = "APPLE"
    EPICGAMES = "EPICGAMES"
    GOOGLE = "GOOGLE"
    PLAYSTATION = "PLAYSTATION"
    STADIA = "STADIA"
    STEAM = "STEAM"
    TWITCH = "TWITCH"
    XBOX = "XBOX"


class ItemIdentityTypeEnum(StrEnum):
    ITEM_ID = "ITEM_ID"
    ITEM_SKU = "ITEM_SKU"


class MockIAPReceipt(Model):
    """Mock IAP receipt (MockIAPReceipt)

    Properties:
        product_id: (productId) REQUIRED str

        type_: (type) REQUIRED Union[str, TypeEnum]

        item_identity_type: (itemIdentityType) OPTIONAL Union[str, ItemIdentityTypeEnum]

        language: (language) OPTIONAL str

        region: (region) OPTIONAL str
    """

    # region fields

    product_id: str  # REQUIRED
    type_: Union[str, TypeEnum]  # REQUIRED
    item_identity_type: Union[str, ItemIdentityTypeEnum]  # OPTIONAL
    language: str  # OPTIONAL
    region: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_product_id(self, value: str) -> MockIAPReceipt:
        self.product_id = value
        return self

    def with_type(self, value: Union[str, TypeEnum]) -> MockIAPReceipt:
        self.type_ = value
        return self

    def with_item_identity_type(
        self, value: Union[str, ItemIdentityTypeEnum]
    ) -> MockIAPReceipt:
        self.item_identity_type = value
        return self

    def with_language(self, value: str) -> MockIAPReceipt:
        self.language = value
        return self

    def with_region(self, value: str) -> MockIAPReceipt:
        self.region = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "product_id"):
            result["productId"] = str(self.product_id)
        elif include_empty:
            result["productId"] = ""
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = Union[str, TypeEnum]()
        if hasattr(self, "item_identity_type"):
            result["itemIdentityType"] = str(self.item_identity_type)
        elif include_empty:
            result["itemIdentityType"] = Union[str, ItemIdentityTypeEnum]()
        if hasattr(self, "language"):
            result["language"] = str(self.language)
        elif include_empty:
            result["language"] = ""
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        product_id: str,
        type_: Union[str, TypeEnum],
        item_identity_type: Optional[Union[str, ItemIdentityTypeEnum]] = None,
        language: Optional[str] = None,
        region: Optional[str] = None,
    ) -> MockIAPReceipt:
        instance = cls()
        instance.product_id = product_id
        instance.type_ = type_
        if item_identity_type is not None:
            instance.item_identity_type = item_identity_type
        if language is not None:
            instance.language = language
        if region is not None:
            instance.region = region
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> MockIAPReceipt:
        instance = cls()
        if not dict_:
            return instance
        if "productId" in dict_ and dict_["productId"] is not None:
            instance.product_id = str(dict_["productId"])
        elif include_empty:
            instance.product_id = ""
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = Union[str, TypeEnum]()
        if "itemIdentityType" in dict_ and dict_["itemIdentityType"] is not None:
            instance.item_identity_type = str(dict_["itemIdentityType"])
        elif include_empty:
            instance.item_identity_type = Union[str, ItemIdentityTypeEnum]()
        if "language" in dict_ and dict_["language"] is not None:
            instance.language = str(dict_["language"])
        elif include_empty:
            instance.language = ""
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, MockIAPReceipt]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[MockIAPReceipt]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[MockIAPReceipt, List[MockIAPReceipt], Dict[Any, MockIAPReceipt]]:
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
            "productId": "product_id",
            "type": "type_",
            "itemIdentityType": "item_identity_type",
            "language": "language",
            "region": "region",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "productId": True,
            "type": True,
            "itemIdentityType": False,
            "language": False,
            "region": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "type": [
                "APPLE",
                "EPICGAMES",
                "GOOGLE",
                "PLAYSTATION",
                "STADIA",
                "STEAM",
                "TWITCH",
                "XBOX",
            ],
            "itemIdentityType": ["ITEM_ID", "ITEM_SKU"],
        }

    @staticmethod
    def get_pattern_map() -> Dict[str, re.Pattern]:
        return {
            "language": re.compile(
                r"^[A-Za-z]{2,4}([_-][A-Za-z]{4})?([_-]([A-Za-z]{2}|[0-9]{3}))?$"
            ),
        }

    # endregion static methods
