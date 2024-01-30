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


class EntitlementOriginEnum(StrEnum):
    EPIC = "Epic"
    GOOGLEPLAY = "GooglePlay"
    IOS = "IOS"
    NINTENDO = "Nintendo"
    OCULUS = "Oculus"
    OTHER = "Other"
    PLAYSTATION = "Playstation"
    STEAM = "Steam"
    SYSTEM = "System"
    TWITCH = "Twitch"
    XBOX = "Xbox"


class FulFillItemPayload(Model):
    """Ful fill item payload (FulFillItemPayload)

    Properties:
        count: (count) REQUIRED int

        item_identity: (itemIdentity) REQUIRED str

        item_identity_type: (itemIdentityType) REQUIRED Union[str, ItemIdentityTypeEnum]

        entitlement_collection_id: (entitlementCollectionId) OPTIONAL str

        entitlement_origin: (entitlementOrigin) OPTIONAL Union[str, EntitlementOriginEnum]
    """

    # region fields

    count: int  # REQUIRED
    item_identity: str  # REQUIRED
    item_identity_type: Union[str, ItemIdentityTypeEnum]  # REQUIRED
    entitlement_collection_id: str  # OPTIONAL
    entitlement_origin: Union[str, EntitlementOriginEnum]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_count(self, value: int) -> FulFillItemPayload:
        self.count = value
        return self

    def with_item_identity(self, value: str) -> FulFillItemPayload:
        self.item_identity = value
        return self

    def with_item_identity_type(
        self, value: Union[str, ItemIdentityTypeEnum]
    ) -> FulFillItemPayload:
        self.item_identity_type = value
        return self

    def with_entitlement_collection_id(self, value: str) -> FulFillItemPayload:
        self.entitlement_collection_id = value
        return self

    def with_entitlement_origin(
        self, value: Union[str, EntitlementOriginEnum]
    ) -> FulFillItemPayload:
        self.entitlement_origin = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "count"):
            result["count"] = int(self.count)
        elif include_empty:
            result["count"] = 0
        if hasattr(self, "item_identity"):
            result["itemIdentity"] = str(self.item_identity)
        elif include_empty:
            result["itemIdentity"] = ""
        if hasattr(self, "item_identity_type"):
            result["itemIdentityType"] = str(self.item_identity_type)
        elif include_empty:
            result["itemIdentityType"] = Union[str, ItemIdentityTypeEnum]()
        if hasattr(self, "entitlement_collection_id"):
            result["entitlementCollectionId"] = str(self.entitlement_collection_id)
        elif include_empty:
            result["entitlementCollectionId"] = ""
        if hasattr(self, "entitlement_origin"):
            result["entitlementOrigin"] = str(self.entitlement_origin)
        elif include_empty:
            result["entitlementOrigin"] = Union[str, EntitlementOriginEnum]()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        count: int,
        item_identity: str,
        item_identity_type: Union[str, ItemIdentityTypeEnum],
        entitlement_collection_id: Optional[str] = None,
        entitlement_origin: Optional[Union[str, EntitlementOriginEnum]] = None,
        **kwargs,
    ) -> FulFillItemPayload:
        instance = cls()
        instance.count = count
        instance.item_identity = item_identity
        instance.item_identity_type = item_identity_type
        if entitlement_collection_id is not None:
            instance.entitlement_collection_id = entitlement_collection_id
        if entitlement_origin is not None:
            instance.entitlement_origin = entitlement_origin
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> FulFillItemPayload:
        instance = cls()
        if not dict_:
            return instance
        if "count" in dict_ and dict_["count"] is not None:
            instance.count = int(dict_["count"])
        elif include_empty:
            instance.count = 0
        if "itemIdentity" in dict_ and dict_["itemIdentity"] is not None:
            instance.item_identity = str(dict_["itemIdentity"])
        elif include_empty:
            instance.item_identity = ""
        if "itemIdentityType" in dict_ and dict_["itemIdentityType"] is not None:
            instance.item_identity_type = str(dict_["itemIdentityType"])
        elif include_empty:
            instance.item_identity_type = Union[str, ItemIdentityTypeEnum]()
        if (
            "entitlementCollectionId" in dict_
            and dict_["entitlementCollectionId"] is not None
        ):
            instance.entitlement_collection_id = str(dict_["entitlementCollectionId"])
        elif include_empty:
            instance.entitlement_collection_id = ""
        if "entitlementOrigin" in dict_ and dict_["entitlementOrigin"] is not None:
            instance.entitlement_origin = str(dict_["entitlementOrigin"])
        elif include_empty:
            instance.entitlement_origin = Union[str, EntitlementOriginEnum]()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, FulFillItemPayload]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[FulFillItemPayload]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        FulFillItemPayload, List[FulFillItemPayload], Dict[Any, FulFillItemPayload]
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
            "count": "count",
            "itemIdentity": "item_identity",
            "itemIdentityType": "item_identity_type",
            "entitlementCollectionId": "entitlement_collection_id",
            "entitlementOrigin": "entitlement_origin",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "count": True,
            "itemIdentity": True,
            "itemIdentityType": True,
            "entitlementCollectionId": False,
            "entitlementOrigin": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "itemIdentityType": ["ITEM_ID", "ITEM_SKU"],
            "entitlementOrigin": [
                "Epic",
                "GooglePlay",
                "IOS",
                "Nintendo",
                "Oculus",
                "Other",
                "Playstation",
                "Steam",
                "System",
                "Twitch",
                "Xbox",
            ],
        }

    # endregion static methods
