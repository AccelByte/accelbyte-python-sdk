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


class RevokeStatusEnum(StrEnum):
    COMPLETED = "COMPLETED"
    SKIPPED = "SKIPPED"


class RevokeItemSummary(Model):
    """Revoke item summary (RevokeItemSummary)

    Properties:
        item_id: (itemId) OPTIONAL str

        item_sku: (itemSku) OPTIONAL str

        item_type: (itemType) OPTIONAL str

        revoke_status: (revokeStatus) OPTIONAL Union[str, RevokeStatusEnum]
    """

    # region fields

    item_id: str  # OPTIONAL
    item_sku: str  # OPTIONAL
    item_type: str  # OPTIONAL
    revoke_status: Union[str, RevokeStatusEnum]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_item_id(self, value: str) -> RevokeItemSummary:
        self.item_id = value
        return self

    def with_item_sku(self, value: str) -> RevokeItemSummary:
        self.item_sku = value
        return self

    def with_item_type(self, value: str) -> RevokeItemSummary:
        self.item_type = value
        return self

    def with_revoke_status(
        self, value: Union[str, RevokeStatusEnum]
    ) -> RevokeItemSummary:
        self.revoke_status = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = ""
        if hasattr(self, "item_sku"):
            result["itemSku"] = str(self.item_sku)
        elif include_empty:
            result["itemSku"] = ""
        if hasattr(self, "item_type"):
            result["itemType"] = str(self.item_type)
        elif include_empty:
            result["itemType"] = ""
        if hasattr(self, "revoke_status"):
            result["revokeStatus"] = str(self.revoke_status)
        elif include_empty:
            result["revokeStatus"] = Union[str, RevokeStatusEnum]()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        item_id: Optional[str] = None,
        item_sku: Optional[str] = None,
        item_type: Optional[str] = None,
        revoke_status: Optional[Union[str, RevokeStatusEnum]] = None,
        **kwargs,
    ) -> RevokeItemSummary:
        instance = cls()
        if item_id is not None:
            instance.item_id = item_id
        if item_sku is not None:
            instance.item_sku = item_sku
        if item_type is not None:
            instance.item_type = item_type
        if revoke_status is not None:
            instance.revoke_status = revoke_status
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RevokeItemSummary:
        instance = cls()
        if not dict_:
            return instance
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = ""
        if "itemSku" in dict_ and dict_["itemSku"] is not None:
            instance.item_sku = str(dict_["itemSku"])
        elif include_empty:
            instance.item_sku = ""
        if "itemType" in dict_ and dict_["itemType"] is not None:
            instance.item_type = str(dict_["itemType"])
        elif include_empty:
            instance.item_type = ""
        if "revokeStatus" in dict_ and dict_["revokeStatus"] is not None:
            instance.revoke_status = str(dict_["revokeStatus"])
        elif include_empty:
            instance.revoke_status = Union[str, RevokeStatusEnum]()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RevokeItemSummary]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RevokeItemSummary]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        RevokeItemSummary, List[RevokeItemSummary], Dict[Any, RevokeItemSummary]
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
            "itemSku": "item_sku",
            "itemType": "item_type",
            "revokeStatus": "revoke_status",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "itemId": False,
            "itemSku": False,
            "itemType": False,
            "revokeStatus": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "revokeStatus": ["COMPLETED", "SKIPPED"],
        }

    # endregion static methods
