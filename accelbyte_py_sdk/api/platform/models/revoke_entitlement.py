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


class ClazzEnum(StrEnum):
    APP = "APP"
    CODE = "CODE"
    ENTITLEMENT = "ENTITLEMENT"
    LOOTBOX = "LOOTBOX"
    MEDIA = "MEDIA"
    OPTIONBOX = "OPTIONBOX"
    SUBSCRIPTION = "SUBSCRIPTION"


class TypeEnum(StrEnum):
    CONSUMABLE = "CONSUMABLE"
    DURABLE = "DURABLE"


class RevokeEntitlement(Model):
    """Revoke entitlement (RevokeEntitlement)

    Properties:
        clazz: (clazz) OPTIONAL Union[str, ClazzEnum]

        entitlement_id: (entitlementId) OPTIONAL str

        type_: (type) OPTIONAL Union[str, TypeEnum]
    """

    # region fields

    clazz: Union[str, ClazzEnum]  # OPTIONAL
    entitlement_id: str  # OPTIONAL
    type_: Union[str, TypeEnum]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_clazz(self, value: Union[str, ClazzEnum]) -> RevokeEntitlement:
        self.clazz = value
        return self

    def with_entitlement_id(self, value: str) -> RevokeEntitlement:
        self.entitlement_id = value
        return self

    def with_type(self, value: Union[str, TypeEnum]) -> RevokeEntitlement:
        self.type_ = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "clazz"):
            result["clazz"] = str(self.clazz)
        elif include_empty:
            result["clazz"] = Union[str, ClazzEnum]()
        if hasattr(self, "entitlement_id"):
            result["entitlementId"] = str(self.entitlement_id)
        elif include_empty:
            result["entitlementId"] = ""
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
        clazz: Optional[Union[str, ClazzEnum]] = None,
        entitlement_id: Optional[str] = None,
        type_: Optional[Union[str, TypeEnum]] = None,
    ) -> RevokeEntitlement:
        instance = cls()
        if clazz is not None:
            instance.clazz = clazz
        if entitlement_id is not None:
            instance.entitlement_id = entitlement_id
        if type_ is not None:
            instance.type_ = type_
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RevokeEntitlement:
        instance = cls()
        if not dict_:
            return instance
        if "clazz" in dict_ and dict_["clazz"] is not None:
            instance.clazz = str(dict_["clazz"])
        elif include_empty:
            instance.clazz = Union[str, ClazzEnum]()
        if "entitlementId" in dict_ and dict_["entitlementId"] is not None:
            instance.entitlement_id = str(dict_["entitlementId"])
        elif include_empty:
            instance.entitlement_id = ""
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = Union[str, TypeEnum]()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RevokeEntitlement]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RevokeEntitlement]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        RevokeEntitlement, List[RevokeEntitlement], Dict[Any, RevokeEntitlement]
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
            "clazz": "clazz",
            "entitlementId": "entitlement_id",
            "type": "type_",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "clazz": False,
            "entitlementId": False,
            "type": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "clazz": [
                "APP",
                "CODE",
                "ENTITLEMENT",
                "LOOTBOX",
                "MEDIA",
                "OPTIONBOX",
                "SUBSCRIPTION",
            ],
            "type": ["CONSUMABLE", "DURABLE"],
        }

    # endregion static methods
