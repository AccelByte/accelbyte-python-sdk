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


class DeleteRewardConditionRequest(Model):
    """Delete reward condition request (DeleteRewardConditionRequest)

    Properties:
        condition_name: (conditionName) OPTIONAL str

        user_id: (userId) OPTIONAL str
    """

    # region fields

    condition_name: str  # OPTIONAL
    user_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_condition_name(self, value: str) -> DeleteRewardConditionRequest:
        self.condition_name = value
        return self

    def with_user_id(self, value: str) -> DeleteRewardConditionRequest:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "condition_name"):
            result["conditionName"] = str(self.condition_name)
        elif include_empty:
            result["conditionName"] = ""
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
        condition_name: Optional[str] = None,
        user_id: Optional[str] = None,
    ) -> DeleteRewardConditionRequest:
        instance = cls()
        if condition_name is not None:
            instance.condition_name = condition_name
        if user_id is not None:
            instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> DeleteRewardConditionRequest:
        instance = cls()
        if not dict_:
            return instance
        if "conditionName" in dict_ and dict_["conditionName"] is not None:
            instance.condition_name = str(dict_["conditionName"])
        elif include_empty:
            instance.condition_name = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, DeleteRewardConditionRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[DeleteRewardConditionRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        DeleteRewardConditionRequest,
        List[DeleteRewardConditionRequest],
        Dict[Any, DeleteRewardConditionRequest],
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
            "conditionName": "condition_name",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "conditionName": False,
            "userId": False,
        }

    # endregion static methods
