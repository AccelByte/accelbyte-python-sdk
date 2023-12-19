# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Platform Service (4.42.0)

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

from ..models.revoke_currency import RevokeCurrency
from ..models.revoke_entitlement import RevokeEntitlement
from ..models.revoke_item import RevokeItem


class TypeEnum(StrEnum):
    CURRENCY = "CURRENCY"
    ENTITLEMENT = "ENTITLEMENT"
    ITEM = "ITEM"


class RevokeEntry(Model):
    """Revoke entry (RevokeEntry)

    Properties:
        currency: (currency) OPTIONAL RevokeCurrency

        entitlement: (entitlement) OPTIONAL RevokeEntitlement

        item: (item) OPTIONAL RevokeItem

        quantity: (quantity) OPTIONAL int

        type_: (type) OPTIONAL Union[str, TypeEnum]
    """

    # region fields

    currency: RevokeCurrency  # OPTIONAL
    entitlement: RevokeEntitlement  # OPTIONAL
    item: RevokeItem  # OPTIONAL
    quantity: int  # OPTIONAL
    type_: Union[str, TypeEnum]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_currency(self, value: RevokeCurrency) -> RevokeEntry:
        self.currency = value
        return self

    def with_entitlement(self, value: RevokeEntitlement) -> RevokeEntry:
        self.entitlement = value
        return self

    def with_item(self, value: RevokeItem) -> RevokeEntry:
        self.item = value
        return self

    def with_quantity(self, value: int) -> RevokeEntry:
        self.quantity = value
        return self

    def with_type(self, value: Union[str, TypeEnum]) -> RevokeEntry:
        self.type_ = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "currency"):
            result["currency"] = self.currency.to_dict(include_empty=include_empty)
        elif include_empty:
            result["currency"] = RevokeCurrency()
        if hasattr(self, "entitlement"):
            result["entitlement"] = self.entitlement.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["entitlement"] = RevokeEntitlement()
        if hasattr(self, "item"):
            result["item"] = self.item.to_dict(include_empty=include_empty)
        elif include_empty:
            result["item"] = RevokeItem()
        if hasattr(self, "quantity"):
            result["quantity"] = int(self.quantity)
        elif include_empty:
            result["quantity"] = 0
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = Union[str, TypeEnum]()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        currency: Optional[RevokeCurrency] = None,
        entitlement: Optional[RevokeEntitlement] = None,
        item: Optional[RevokeItem] = None,
        quantity: Optional[int] = None,
        type_: Optional[Union[str, TypeEnum]] = None,
        **kwargs,
    ) -> RevokeEntry:
        instance = cls()
        if currency is not None:
            instance.currency = currency
        if entitlement is not None:
            instance.entitlement = entitlement
        if item is not None:
            instance.item = item
        if quantity is not None:
            instance.quantity = quantity
        if type_ is not None:
            instance.type_ = type_
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> RevokeEntry:
        instance = cls()
        if not dict_:
            return instance
        if "currency" in dict_ and dict_["currency"] is not None:
            instance.currency = RevokeCurrency.create_from_dict(
                dict_["currency"], include_empty=include_empty
            )
        elif include_empty:
            instance.currency = RevokeCurrency()
        if "entitlement" in dict_ and dict_["entitlement"] is not None:
            instance.entitlement = RevokeEntitlement.create_from_dict(
                dict_["entitlement"], include_empty=include_empty
            )
        elif include_empty:
            instance.entitlement = RevokeEntitlement()
        if "item" in dict_ and dict_["item"] is not None:
            instance.item = RevokeItem.create_from_dict(
                dict_["item"], include_empty=include_empty
            )
        elif include_empty:
            instance.item = RevokeItem()
        if "quantity" in dict_ and dict_["quantity"] is not None:
            instance.quantity = int(dict_["quantity"])
        elif include_empty:
            instance.quantity = 0
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = Union[str, TypeEnum]()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RevokeEntry]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RevokeEntry]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[RevokeEntry, List[RevokeEntry], Dict[Any, RevokeEntry]]:
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
            "currency": "currency",
            "entitlement": "entitlement",
            "item": "item",
            "quantity": "quantity",
            "type": "type_",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "currency": False,
            "entitlement": False,
            "item": False,
            "quantity": False,
            "type": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "type": ["CURRENCY", "ENTITLEMENT", "ITEM"],
        }

    # endregion static methods
