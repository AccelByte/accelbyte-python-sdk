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


class ModelUserReward(Model):
    """Model user reward (model.UserReward)

    Properties:
        challenge_code: (challengeCode) REQUIRED str

        created_at: (createdAt) REQUIRED str

        goal_code: (goalCode) REQUIRED str

        goal_progression_id: (goalProgressionId) REQUIRED str

        id_: (id) REQUIRED str

        item_id: (itemId) REQUIRED str

        item_name: (itemName) REQUIRED str

        qty: (qty) REQUIRED float

        status: (status) REQUIRED Union[str, StatusEnum]

        type_: (type) REQUIRED Union[str, TypeEnum]

        updated_at: (updatedAt) REQUIRED str

        user_id: (userId) REQUIRED str
    """

    # region fields

    challenge_code: str  # REQUIRED
    created_at: str  # REQUIRED
    goal_code: str  # REQUIRED
    goal_progression_id: str  # REQUIRED
    id_: str  # REQUIRED
    item_id: str  # REQUIRED
    item_name: str  # REQUIRED
    qty: float  # REQUIRED
    status: Union[str, StatusEnum]  # REQUIRED
    type_: Union[str, TypeEnum]  # REQUIRED
    updated_at: str  # REQUIRED
    user_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_challenge_code(self, value: str) -> ModelUserReward:
        self.challenge_code = value
        return self

    def with_created_at(self, value: str) -> ModelUserReward:
        self.created_at = value
        return self

    def with_goal_code(self, value: str) -> ModelUserReward:
        self.goal_code = value
        return self

    def with_goal_progression_id(self, value: str) -> ModelUserReward:
        self.goal_progression_id = value
        return self

    def with_id(self, value: str) -> ModelUserReward:
        self.id_ = value
        return self

    def with_item_id(self, value: str) -> ModelUserReward:
        self.item_id = value
        return self

    def with_item_name(self, value: str) -> ModelUserReward:
        self.item_name = value
        return self

    def with_qty(self, value: float) -> ModelUserReward:
        self.qty = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> ModelUserReward:
        self.status = value
        return self

    def with_type(self, value: Union[str, TypeEnum]) -> ModelUserReward:
        self.type_ = value
        return self

    def with_updated_at(self, value: str) -> ModelUserReward:
        self.updated_at = value
        return self

    def with_user_id(self, value: str) -> ModelUserReward:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "challenge_code"):
            result["challengeCode"] = str(self.challenge_code)
        elif include_empty:
            result["challengeCode"] = ""
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "goal_code"):
            result["goalCode"] = str(self.goal_code)
        elif include_empty:
            result["goalCode"] = ""
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
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        challenge_code: str,
        created_at: str,
        goal_code: str,
        goal_progression_id: str,
        id_: str,
        item_id: str,
        item_name: str,
        qty: float,
        status: Union[str, StatusEnum],
        type_: Union[str, TypeEnum],
        updated_at: str,
        user_id: str,
        **kwargs,
    ) -> ModelUserReward:
        instance = cls()
        instance.challenge_code = challenge_code
        instance.created_at = created_at
        instance.goal_code = goal_code
        instance.goal_progression_id = goal_progression_id
        instance.id_ = id_
        instance.item_id = item_id
        instance.item_name = item_name
        instance.qty = qty
        instance.status = status
        instance.type_ = type_
        instance.updated_at = updated_at
        instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelUserReward:
        instance = cls()
        if not dict_:
            return instance
        if "challengeCode" in dict_ and dict_["challengeCode"] is not None:
            instance.challenge_code = str(dict_["challengeCode"])
        elif include_empty:
            instance.challenge_code = ""
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "goalCode" in dict_ and dict_["goalCode"] is not None:
            instance.goal_code = str(dict_["goalCode"])
        elif include_empty:
            instance.goal_code = ""
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
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelUserReward]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelUserReward]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ModelUserReward, List[ModelUserReward], Dict[Any, ModelUserReward]]:
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
            "challengeCode": "challenge_code",
            "createdAt": "created_at",
            "goalCode": "goal_code",
            "goalProgressionId": "goal_progression_id",
            "id": "id_",
            "itemId": "item_id",
            "itemName": "item_name",
            "qty": "qty",
            "status": "status",
            "type": "type_",
            "updatedAt": "updated_at",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "challengeCode": True,
            "createdAt": True,
            "goalCode": True,
            "goalProgressionId": True,
            "id": True,
            "itemId": True,
            "itemName": True,
            "qty": True,
            "status": True,
            "type": True,
            "updatedAt": True,
            "userId": True,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "status": ["CLAIMED", "UNCLAIMED"],
            "type": ["ENTITLEMENT", "STATISTIC"],
        }

    # endregion static methods
