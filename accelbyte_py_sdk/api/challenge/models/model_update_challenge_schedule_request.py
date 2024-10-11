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


class ActionEnum(StrEnum):
    ACCELERATE = "ACCELERATE"
    STOP = "STOP"


class ModelUpdateChallengeScheduleRequest(Model):
    """Model update challenge schedule request (model.UpdateChallengeScheduleRequest)

    Properties:
        action: (action) REQUIRED Union[str, ActionEnum]

        end_date: (endDate) OPTIONAL str
    """

    # region fields

    action: Union[str, ActionEnum]  # REQUIRED
    end_date: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_action(
        self, value: Union[str, ActionEnum]
    ) -> ModelUpdateChallengeScheduleRequest:
        self.action = value
        return self

    def with_end_date(self, value: str) -> ModelUpdateChallengeScheduleRequest:
        self.end_date = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "action"):
            result["action"] = str(self.action)
        elif include_empty:
            result["action"] = Union[str, ActionEnum]()
        if hasattr(self, "end_date"):
            result["endDate"] = str(self.end_date)
        elif include_empty:
            result["endDate"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, action: Union[str, ActionEnum], end_date: Optional[str] = None, **kwargs
    ) -> ModelUpdateChallengeScheduleRequest:
        instance = cls()
        instance.action = action
        if end_date is not None:
            instance.end_date = end_date
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelUpdateChallengeScheduleRequest:
        instance = cls()
        if not dict_:
            return instance
        if "action" in dict_ and dict_["action"] is not None:
            instance.action = str(dict_["action"])
        elif include_empty:
            instance.action = Union[str, ActionEnum]()
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = str(dict_["endDate"])
        elif include_empty:
            instance.end_date = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelUpdateChallengeScheduleRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelUpdateChallengeScheduleRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelUpdateChallengeScheduleRequest,
        List[ModelUpdateChallengeScheduleRequest],
        Dict[Any, ModelUpdateChallengeScheduleRequest],
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
            "action": "action",
            "endDate": "end_date",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "action": True,
            "endDate": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "action": ["ACCELERATE", "STOP"],
        }

    # endregion static methods
