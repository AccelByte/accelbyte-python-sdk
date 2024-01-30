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


class ItemIdentityTypeEnum(StrEnum):
    ITEM_ID = "ITEM_ID"
    ITEM_SKU = "ITEM_SKU"


class PlatformEnum(StrEnum):
    APPLE = "APPLE"
    EPICGAMES = "EPICGAMES"
    GOOGLE = "GOOGLE"
    OCULUS = "OCULUS"
    PLAYSTATION = "PLAYSTATION"
    STADIA = "STADIA"
    STEAM = "STEAM"
    TWITCH = "TWITCH"
    XBOX = "XBOX"


class IAPItemFlatEntry(Model):
    """IAP item flat entry (IAPItemFlatEntry)

    Properties:
        item_identity: (itemIdentity) OPTIONAL str

        item_identity_type: (itemIdentityType) OPTIONAL Union[str, ItemIdentityTypeEnum]

        platform: (platform) OPTIONAL Union[str, PlatformEnum]

        platform_product_id: (platformProductId) OPTIONAL str
    """

    # region fields

    item_identity: str  # OPTIONAL
    item_identity_type: Union[str, ItemIdentityTypeEnum]  # OPTIONAL
    platform: Union[str, PlatformEnum]  # OPTIONAL
    platform_product_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_item_identity(self, value: str) -> IAPItemFlatEntry:
        self.item_identity = value
        return self

    def with_item_identity_type(
        self, value: Union[str, ItemIdentityTypeEnum]
    ) -> IAPItemFlatEntry:
        self.item_identity_type = value
        return self

    def with_platform(self, value: Union[str, PlatformEnum]) -> IAPItemFlatEntry:
        self.platform = value
        return self

    def with_platform_product_id(self, value: str) -> IAPItemFlatEntry:
        self.platform_product_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "item_identity"):
            result["itemIdentity"] = str(self.item_identity)
        elif include_empty:
            result["itemIdentity"] = ""
        if hasattr(self, "item_identity_type"):
            result["itemIdentityType"] = str(self.item_identity_type)
        elif include_empty:
            result["itemIdentityType"] = Union[str, ItemIdentityTypeEnum]()
        if hasattr(self, "platform"):
            result["platform"] = str(self.platform)
        elif include_empty:
            result["platform"] = Union[str, PlatformEnum]()
        if hasattr(self, "platform_product_id"):
            result["platformProductId"] = str(self.platform_product_id)
        elif include_empty:
            result["platformProductId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        item_identity: Optional[str] = None,
        item_identity_type: Optional[Union[str, ItemIdentityTypeEnum]] = None,
        platform: Optional[Union[str, PlatformEnum]] = None,
        platform_product_id: Optional[str] = None,
        **kwargs,
    ) -> IAPItemFlatEntry:
        instance = cls()
        if item_identity is not None:
            instance.item_identity = item_identity
        if item_identity_type is not None:
            instance.item_identity_type = item_identity_type
        if platform is not None:
            instance.platform = platform
        if platform_product_id is not None:
            instance.platform_product_id = platform_product_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> IAPItemFlatEntry:
        instance = cls()
        if not dict_:
            return instance
        if "itemIdentity" in dict_ and dict_["itemIdentity"] is not None:
            instance.item_identity = str(dict_["itemIdentity"])
        elif include_empty:
            instance.item_identity = ""
        if "itemIdentityType" in dict_ and dict_["itemIdentityType"] is not None:
            instance.item_identity_type = str(dict_["itemIdentityType"])
        elif include_empty:
            instance.item_identity_type = Union[str, ItemIdentityTypeEnum]()
        if "platform" in dict_ and dict_["platform"] is not None:
            instance.platform = str(dict_["platform"])
        elif include_empty:
            instance.platform = Union[str, PlatformEnum]()
        if "platformProductId" in dict_ and dict_["platformProductId"] is not None:
            instance.platform_product_id = str(dict_["platformProductId"])
        elif include_empty:
            instance.platform_product_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, IAPItemFlatEntry]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[IAPItemFlatEntry]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[IAPItemFlatEntry, List[IAPItemFlatEntry], Dict[Any, IAPItemFlatEntry]]:
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
            "itemIdentity": "item_identity",
            "itemIdentityType": "item_identity_type",
            "platform": "platform",
            "platformProductId": "platform_product_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "itemIdentity": False,
            "itemIdentityType": False,
            "platform": False,
            "platformProductId": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "itemIdentityType": ["ITEM_ID", "ITEM_SKU"],
            "platform": [
                "APPLE",
                "EPICGAMES",
                "GOOGLE",
                "OCULUS",
                "PLAYSTATION",
                "STADIA",
                "STEAM",
                "TWITCH",
                "XBOX",
            ],
        }

    # endregion static methods
