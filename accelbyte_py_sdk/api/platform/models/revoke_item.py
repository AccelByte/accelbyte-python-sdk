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


class ItemIdentityTypeEnum(StrEnum):
    ITEM_ID = "ITEM_ID"
    ITEM_SKU = "ITEM_SKU"


class OriginEnum(StrEnum):
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


class RevokeItem(Model):
    """Revoke item (RevokeItem)

    Properties:
        entitlement_origin: (entitlementOrigin) OPTIONAL Union[str, EntitlementOriginEnum]

        item_identity: (itemIdentity) OPTIONAL str

        item_identity_type: (itemIdentityType) OPTIONAL Union[str, ItemIdentityTypeEnum]

        origin: (origin) OPTIONAL Union[str, OriginEnum]
    """

    # region fields

    entitlement_origin: Union[str, EntitlementOriginEnum]  # OPTIONAL
    item_identity: str  # OPTIONAL
    item_identity_type: Union[str, ItemIdentityTypeEnum]  # OPTIONAL
    origin: Union[str, OriginEnum]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_entitlement_origin(
        self, value: Union[str, EntitlementOriginEnum]
    ) -> RevokeItem:
        self.entitlement_origin = value
        return self

    def with_item_identity(self, value: str) -> RevokeItem:
        self.item_identity = value
        return self

    def with_item_identity_type(
        self, value: Union[str, ItemIdentityTypeEnum]
    ) -> RevokeItem:
        self.item_identity_type = value
        return self

    def with_origin(self, value: Union[str, OriginEnum]) -> RevokeItem:
        self.origin = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "entitlement_origin"):
            result["entitlementOrigin"] = str(self.entitlement_origin)
        elif include_empty:
            result["entitlementOrigin"] = Union[str, EntitlementOriginEnum]()
        if hasattr(self, "item_identity"):
            result["itemIdentity"] = str(self.item_identity)
        elif include_empty:
            result["itemIdentity"] = ""
        if hasattr(self, "item_identity_type"):
            result["itemIdentityType"] = str(self.item_identity_type)
        elif include_empty:
            result["itemIdentityType"] = Union[str, ItemIdentityTypeEnum]()
        if hasattr(self, "origin"):
            result["origin"] = str(self.origin)
        elif include_empty:
            result["origin"] = Union[str, OriginEnum]()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        entitlement_origin: Optional[Union[str, EntitlementOriginEnum]] = None,
        item_identity: Optional[str] = None,
        item_identity_type: Optional[Union[str, ItemIdentityTypeEnum]] = None,
        origin: Optional[Union[str, OriginEnum]] = None,
        **kwargs,
    ) -> RevokeItem:
        instance = cls()
        if entitlement_origin is not None:
            instance.entitlement_origin = entitlement_origin
        if item_identity is not None:
            instance.item_identity = item_identity
        if item_identity_type is not None:
            instance.item_identity_type = item_identity_type
        if origin is not None:
            instance.origin = origin
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> RevokeItem:
        instance = cls()
        if not dict_:
            return instance
        if "entitlementOrigin" in dict_ and dict_["entitlementOrigin"] is not None:
            instance.entitlement_origin = str(dict_["entitlementOrigin"])
        elif include_empty:
            instance.entitlement_origin = Union[str, EntitlementOriginEnum]()
        if "itemIdentity" in dict_ and dict_["itemIdentity"] is not None:
            instance.item_identity = str(dict_["itemIdentity"])
        elif include_empty:
            instance.item_identity = ""
        if "itemIdentityType" in dict_ and dict_["itemIdentityType"] is not None:
            instance.item_identity_type = str(dict_["itemIdentityType"])
        elif include_empty:
            instance.item_identity_type = Union[str, ItemIdentityTypeEnum]()
        if "origin" in dict_ and dict_["origin"] is not None:
            instance.origin = str(dict_["origin"])
        elif include_empty:
            instance.origin = Union[str, OriginEnum]()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RevokeItem]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RevokeItem]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[RevokeItem, List[RevokeItem], Dict[Any, RevokeItem]]:
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
            "entitlementOrigin": "entitlement_origin",
            "itemIdentity": "item_identity",
            "itemIdentityType": "item_identity_type",
            "origin": "origin",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "entitlementOrigin": False,
            "itemIdentity": False,
            "itemIdentityType": False,
            "origin": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
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
            "itemIdentityType": ["ITEM_ID", "ITEM_SKU"],
            "origin": [
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
