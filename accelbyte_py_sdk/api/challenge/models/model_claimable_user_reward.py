# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Challenge Service

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


class StatusEnum(StrEnum):
    CLAIMED = "CLAIMED"
    UNCLAIMED = "UNCLAIMED"


class TypeEnum(StrEnum):
    ENTITLEMENT = "ENTITLEMENT"
    STATISTIC = "STATISTIC"


class ModelClaimableUserReward(Model):
    """Model claimable user reward (model.ClaimableUserReward)

    Properties:
        goal_progression_id: (goalProgressionId) REQUIRED str

        id_: (id) REQUIRED str

        item_id: (itemId) REQUIRED str

        item_name: (itemName) REQUIRED str

        qty: (qty) REQUIRED float

        status: (status) REQUIRED Union[str, StatusEnum]

        type_: (type) REQUIRED Union[str, TypeEnum]
    """

    # region fields

    goal_progression_id: str  # REQUIRED
    id_: str  # REQUIRED
    item_id: str  # REQUIRED
    item_name: str  # REQUIRED
    qty: float  # REQUIRED
    status: Union[str, StatusEnum]  # REQUIRED
    type_: Union[str, TypeEnum]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_goal_progression_id(self, value: str) -> ModelClaimableUserReward:
        self.goal_progression_id = value
        return self

    def with_id(self, value: str) -> ModelClaimableUserReward:
        self.id_ = value
        return self

    def with_item_id(self, value: str) -> ModelClaimableUserReward:
        self.item_id = value
        return self

    def with_item_name(self, value: str) -> ModelClaimableUserReward:
        self.item_name = value
        return self

    def with_qty(self, value: float) -> ModelClaimableUserReward:
        self.qty = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> ModelClaimableUserReward:
        self.status = value
        return self

    def with_type(self, value: Union[str, TypeEnum]) -> ModelClaimableUserReward:
        self.type_ = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "goal_progression_id"):
            result["goalProgressionId"] = str(self.goal_progression_id)
        elif include_empty:
            result["goalProgressionId"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = ""
        if hasattr(self, "item_name"):
            result["itemName"] = str(self.item_name)
        elif include_empty:
            result["itemName"] = ""
        if hasattr(self, "qty"):
            result["qty"] = float(self.qty)
        elif include_empty:
            result["qty"] = 0.0
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
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
        goal_progression_id: str,
        id_: str,
        item_id: str,
        item_name: str,
        qty: float,
        status: Union[str, StatusEnum],
        type_: Union[str, TypeEnum],
        **kwargs,
    ) -> ModelClaimableUserReward:
        instance = cls()
        instance.goal_progression_id = goal_progression_id
        instance.id_ = id_
        instance.item_id = item_id
        instance.item_name = item_name
        instance.qty = qty
        instance.status = status
        instance.type_ = type_
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelClaimableUserReward:
        instance = cls()
        if not dict_:
            return instance
        if "goalProgressionId" in dict_ and dict_["goalProgressionId"] is not None:
            instance.goal_progression_id = str(dict_["goalProgressionId"])
        elif include_empty:
            instance.goal_progression_id = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = ""
        if "itemName" in dict_ and dict_["itemName"] is not None:
            instance.item_name = str(dict_["itemName"])
        elif include_empty:
            instance.item_name = ""
        if "qty" in dict_ and dict_["qty"] is not None:
            instance.qty = float(dict_["qty"])
        elif include_empty:
            instance.qty = 0.0
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = Union[str, TypeEnum]()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelClaimableUserReward]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelClaimableUserReward]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelClaimableUserReward,
        List[ModelClaimableUserReward],
        Dict[Any, ModelClaimableUserReward],
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
            "goalProgressionId": "goal_progression_id",
            "id": "id_",
            "itemId": "item_id",
            "itemName": "item_name",
            "qty": "qty",
            "status": "status",
            "type": "type_",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "goalProgressionId": True,
            "id": True,
            "itemId": True,
            "itemName": True,
            "qty": True,
            "status": True,
            "type": True,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "status": ["CLAIMED", "UNCLAIMED"],
            "type": ["ENTITLEMENT", "STATISTIC"],
        }

    # endregion static methods
