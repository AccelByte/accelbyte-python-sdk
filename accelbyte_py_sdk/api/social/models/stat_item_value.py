# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Statistics Service

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


class StatItemValue(Model):
    """Stat item value (StatItemValue)

    Properties:
        created_at: (createdAt) OPTIONAL str

        updated_at: (updatedAt) OPTIONAL str

        user_id: (userId) OPTIONAL str

        value: (value) OPTIONAL float
    """

    # region fields

    created_at: str  # OPTIONAL
    updated_at: str  # OPTIONAL
    user_id: str  # OPTIONAL
    value: float  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> StatItemValue:
        self.created_at = value
        return self

    def with_updated_at(self, value: str) -> StatItemValue:
        self.updated_at = value
        return self

    def with_user_id(self, value: str) -> StatItemValue:
        self.user_id = value
        return self

    def with_value(self, value: float) -> StatItemValue:
        self.value = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "value"):
            result["value"] = float(self.value)
        elif include_empty:
            result["value"] = 0.0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: Optional[str] = None,
        updated_at: Optional[str] = None,
        user_id: Optional[str] = None,
        value: Optional[float] = None,
        **kwargs,
    ) -> StatItemValue:
        instance = cls()
        if created_at is not None:
            instance.created_at = created_at
        if updated_at is not None:
            instance.updated_at = updated_at
        if user_id is not None:
            instance.user_id = user_id
        if value is not None:
            instance.value = value
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> StatItemValue:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "value" in dict_ and dict_["value"] is not None:
            instance.value = float(dict_["value"])
        elif include_empty:
            instance.value = 0.0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, StatItemValue]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[StatItemValue]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[StatItemValue, List[StatItemValue], Dict[Any, StatItemValue]]:
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
            "createdAt": "created_at",
            "updatedAt": "updated_at",
            "userId": "user_id",
            "value": "value",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": False,
            "updatedAt": False,
            "userId": False,
            "value": False,
        }

    # endregion static methods
