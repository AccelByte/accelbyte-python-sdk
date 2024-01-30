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

from ..models.operation import Operation


class StatusEnum(StrEnum):
    FAILED = "FAILED"
    INIT = "INIT"
    SKIPPED = "SKIPPED"
    SUCCESS = "SUCCESS"


class Action(Model):
    """Action (Action)

    Properties:
        operations: (operations) OPTIONAL List[Operation]

        status: (status) OPTIONAL Union[str, StatusEnum]

        status_reason: (statusReason) OPTIONAL str

        user_id: (userId) OPTIONAL str
    """

    # region fields

    operations: List[Operation]  # OPTIONAL
    status: Union[str, StatusEnum]  # OPTIONAL
    status_reason: str  # OPTIONAL
    user_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_operations(self, value: List[Operation]) -> Action:
        self.operations = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> Action:
        self.status = value
        return self

    def with_status_reason(self, value: str) -> Action:
        self.status_reason = value
        return self

    def with_user_id(self, value: str) -> Action:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "operations"):
            result["operations"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.operations
            ]
        elif include_empty:
            result["operations"] = []
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "status_reason"):
            result["statusReason"] = str(self.status_reason)
        elif include_empty:
            result["statusReason"] = ""
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
        operations: Optional[List[Operation]] = None,
        status: Optional[Union[str, StatusEnum]] = None,
        status_reason: Optional[str] = None,
        user_id: Optional[str] = None,
        **kwargs,
    ) -> Action:
        instance = cls()
        if operations is not None:
            instance.operations = operations
        if status is not None:
            instance.status = status
        if status_reason is not None:
            instance.status_reason = status_reason
        if user_id is not None:
            instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> Action:
        instance = cls()
        if not dict_:
            return instance
        if "operations" in dict_ and dict_["operations"] is not None:
            instance.operations = [
                Operation.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["operations"]
            ]
        elif include_empty:
            instance.operations = []
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "statusReason" in dict_ and dict_["statusReason"] is not None:
            instance.status_reason = str(dict_["statusReason"])
        elif include_empty:
            instance.status_reason = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, Action]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[Action]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[Action, List[Action], Dict[Any, Action]]:
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
            "operations": "operations",
            "status": "status",
            "statusReason": "status_reason",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "operations": False,
            "status": False,
            "statusReason": False,
            "userId": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "status": ["FAILED", "INIT", "SKIPPED", "SUCCESS"],
        }

    # endregion static methods
