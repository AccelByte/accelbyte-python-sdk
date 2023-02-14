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
from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import Model
from ....core import StrEnum


class ItemIdentityTypeEnum(StrEnum):
    ITEM_ID = "ITEM_ID"
    ITEM_SKU = "ITEM_SKU"


class ConsumeItem(Model):
    """Consume item (ConsumeItem)

    Properties:
        ext_item_id: (extItemId) OPTIONAL str

        item_identity: (itemIdentity) OPTIONAL str

        item_identity_type: (itemIdentityType) OPTIONAL Union[str, ItemIdentityTypeEnum]
    """

    # region fields

    ext_item_id: str  # OPTIONAL
    item_identity: str  # OPTIONAL
    item_identity_type: Union[str, ItemIdentityTypeEnum]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_ext_item_id(self, value: str) -> ConsumeItem:
        self.ext_item_id = value
        return self

    def with_item_identity(self, value: str) -> ConsumeItem:
        self.item_identity = value
        return self

    def with_item_identity_type(
        self, value: Union[str, ItemIdentityTypeEnum]
    ) -> ConsumeItem:
        self.item_identity_type = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "ext_item_id"):
            result["extItemId"] = str(self.ext_item_id)
        elif include_empty:
            result["extItemId"] = ""
        if hasattr(self, "item_identity"):
            result["itemIdentity"] = str(self.item_identity)
        elif include_empty:
            result["itemIdentity"] = ""
        if hasattr(self, "item_identity_type"):
            result["itemIdentityType"] = str(self.item_identity_type)
        elif include_empty:
            result["itemIdentityType"] = Union[str, ItemIdentityTypeEnum]()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        ext_item_id: Optional[str] = None,
        item_identity: Optional[str] = None,
        item_identity_type: Optional[Union[str, ItemIdentityTypeEnum]] = None,
    ) -> ConsumeItem:
        instance = cls()
        if ext_item_id is not None:
            instance.ext_item_id = ext_item_id
        if item_identity is not None:
            instance.item_identity = item_identity
        if item_identity_type is not None:
            instance.item_identity_type = item_identity_type
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ConsumeItem:
        instance = cls()
        if not dict_:
            return instance
        if "extItemId" in dict_ and dict_["extItemId"] is not None:
            instance.ext_item_id = str(dict_["extItemId"])
        elif include_empty:
            instance.ext_item_id = ""
        if "itemIdentity" in dict_ and dict_["itemIdentity"] is not None:
            instance.item_identity = str(dict_["itemIdentity"])
        elif include_empty:
            instance.item_identity = ""
        if "itemIdentityType" in dict_ and dict_["itemIdentityType"] is not None:
            instance.item_identity_type = str(dict_["itemIdentityType"])
        elif include_empty:
            instance.item_identity_type = Union[str, ItemIdentityTypeEnum]()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ConsumeItem]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ConsumeItem]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ConsumeItem, List[ConsumeItem], Dict[Any, ConsumeItem]]:
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
            "extItemId": "ext_item_id",
            "itemIdentity": "item_identity",
            "itemIdentityType": "item_identity_type",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "extItemId": False,
            "itemIdentity": False,
            "itemIdentityType": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "itemIdentityType": ["ITEM_ID", "ITEM_SKU"],
        }

    # endregion static methods
