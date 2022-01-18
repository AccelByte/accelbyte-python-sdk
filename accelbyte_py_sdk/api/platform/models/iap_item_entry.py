# justice-platform-service (4.1.1)

# template file: justice_py_sdk_codegen/__main__.py

# Copyright (c) 2018 - 2022 AccelByte Inc. All Rights Reserved.
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


class IAPItemEntry(Model):
    """IAP item entry (IAPItemEntry)

    Properties:
        item_identity: (itemIdentity) OPTIONAL str

        platform_product_id_map: (platformProductIdMap) OPTIONAL Dict[str, str]
    """

    # region fields

    item_identity: str                                                                             # OPTIONAL
    platform_product_id_map: Dict[str, str]                                                        # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_item_identity(self, value: str) -> IAPItemEntry:
        self.item_identity = value
        return self

    def with_platform_product_id_map(self, value: Dict[str, str]) -> IAPItemEntry:
        self.platform_product_id_map = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "item_identity"):
            result["itemIdentity"] = str(self.item_identity)
        elif include_empty:
            result["itemIdentity"] = str()
        if hasattr(self, "platform_product_id_map"):
            result["platformProductIdMap"] = {str(k0): str(v0) for k0, v0 in self.platform_product_id_map.items()}
        elif include_empty:
            result["platformProductIdMap"] = {}
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        item_identity: Optional[str] = None,
        platform_product_id_map: Optional[Dict[str, str]] = None,
    ) -> IAPItemEntry:
        instance = cls()
        if item_identity is not None:
            instance.item_identity = item_identity
        if platform_product_id_map is not None:
            instance.platform_product_id_map = platform_product_id_map
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> IAPItemEntry:
        instance = cls()
        if not dict_:
            return instance
        if "itemIdentity" in dict_ and dict_["itemIdentity"] is not None:
            instance.item_identity = str(dict_["itemIdentity"])
        elif include_empty:
            instance.item_identity = str()
        if "platformProductIdMap" in dict_ and dict_["platformProductIdMap"] is not None:
            instance.platform_product_id_map = {str(k0): str(v0) for k0, v0 in dict_["platformProductIdMap"].items()}
        elif include_empty:
            instance.platform_product_id_map = {}
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "itemIdentity": "item_identity",
            "platformProductIdMap": "platform_product_id_map",
        }

    # endregion static methods
