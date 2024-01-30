# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Inventory Service

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

from ..models.apimodels_consume_item import ApimodelsConsumeItem
from ..models.apimodels_create_item import ApimodelsCreateItem
from ..models.apimodels_remove_item import ApimodelsRemoveItem
from ..models.apimodels_update_item import ApimodelsUpdateItem


class ApimodelsOperation(Model):
    """Apimodels operation (apimodels.Operation)

    Properties:
        consume_items: (consumeItems) REQUIRED List[ApimodelsConsumeItem]

        create_items: (createItems) REQUIRED List[ApimodelsCreateItem]

        remove_items: (removeItems) REQUIRED List[ApimodelsRemoveItem]

        target_user_id: (targetUserId) REQUIRED str

        update_items: (updateItems) REQUIRED List[ApimodelsUpdateItem]
    """

    # region fields

    consume_items: List[ApimodelsConsumeItem]  # REQUIRED
    create_items: List[ApimodelsCreateItem]  # REQUIRED
    remove_items: List[ApimodelsRemoveItem]  # REQUIRED
    target_user_id: str  # REQUIRED
    update_items: List[ApimodelsUpdateItem]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_consume_items(
        self, value: List[ApimodelsConsumeItem]
    ) -> ApimodelsOperation:
        self.consume_items = value
        return self

    def with_create_items(self, value: List[ApimodelsCreateItem]) -> ApimodelsOperation:
        self.create_items = value
        return self

    def with_remove_items(self, value: List[ApimodelsRemoveItem]) -> ApimodelsOperation:
        self.remove_items = value
        return self

    def with_target_user_id(self, value: str) -> ApimodelsOperation:
        self.target_user_id = value
        return self

    def with_update_items(self, value: List[ApimodelsUpdateItem]) -> ApimodelsOperation:
        self.update_items = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "consume_items"):
            result["consumeItems"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.consume_items
            ]
        elif include_empty:
            result["consumeItems"] = []
        if hasattr(self, "create_items"):
            result["createItems"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.create_items
            ]
        elif include_empty:
            result["createItems"] = []
        if hasattr(self, "remove_items"):
            result["removeItems"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.remove_items
            ]
        elif include_empty:
            result["removeItems"] = []
        if hasattr(self, "target_user_id"):
            result["targetUserId"] = str(self.target_user_id)
        elif include_empty:
            result["targetUserId"] = ""
        if hasattr(self, "update_items"):
            result["updateItems"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.update_items
            ]
        elif include_empty:
            result["updateItems"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        consume_items: List[ApimodelsConsumeItem],
        create_items: List[ApimodelsCreateItem],
        remove_items: List[ApimodelsRemoveItem],
        target_user_id: str,
        update_items: List[ApimodelsUpdateItem],
        **kwargs,
    ) -> ApimodelsOperation:
        instance = cls()
        instance.consume_items = consume_items
        instance.create_items = create_items
        instance.remove_items = remove_items
        instance.target_user_id = target_user_id
        instance.update_items = update_items
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsOperation:
        instance = cls()
        if not dict_:
            return instance
        if "consumeItems" in dict_ and dict_["consumeItems"] is not None:
            instance.consume_items = [
                ApimodelsConsumeItem.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["consumeItems"]
            ]
        elif include_empty:
            instance.consume_items = []
        if "createItems" in dict_ and dict_["createItems"] is not None:
            instance.create_items = [
                ApimodelsCreateItem.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["createItems"]
            ]
        elif include_empty:
            instance.create_items = []
        if "removeItems" in dict_ and dict_["removeItems"] is not None:
            instance.remove_items = [
                ApimodelsRemoveItem.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["removeItems"]
            ]
        elif include_empty:
            instance.remove_items = []
        if "targetUserId" in dict_ and dict_["targetUserId"] is not None:
            instance.target_user_id = str(dict_["targetUserId"])
        elif include_empty:
            instance.target_user_id = ""
        if "updateItems" in dict_ and dict_["updateItems"] is not None:
            instance.update_items = [
                ApimodelsUpdateItem.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["updateItems"]
            ]
        elif include_empty:
            instance.update_items = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsOperation]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsOperation]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsOperation, List[ApimodelsOperation], Dict[Any, ApimodelsOperation]
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
            "consumeItems": "consume_items",
            "createItems": "create_items",
            "removeItems": "remove_items",
            "targetUserId": "target_user_id",
            "updateItems": "update_items",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "consumeItems": True,
            "createItems": True,
            "removeItems": True,
            "targetUserId": True,
            "updateItems": True,
        }

    # endregion static methods
