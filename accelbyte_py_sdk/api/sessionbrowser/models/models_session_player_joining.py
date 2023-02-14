# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Session Browser Service ()

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


class ModelsSessionPlayerJoining(Model):
    """Models session player joining (models.SessionPlayerJoining)

    Properties:
        date: (Date) REQUIRED str

        state: (State) REQUIRED str

        user_id: (UserID) REQUIRED str
    """

    # region fields

    date: str  # REQUIRED
    state: str  # REQUIRED
    user_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_date(self, value: str) -> ModelsSessionPlayerJoining:
        self.date = value
        return self

    def with_state(self, value: str) -> ModelsSessionPlayerJoining:
        self.state = value
        return self

    def with_user_id(self, value: str) -> ModelsSessionPlayerJoining:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "date"):
            result["Date"] = str(self.date)
        elif include_empty:
            result["Date"] = ""
        if hasattr(self, "state"):
            result["State"] = str(self.state)
        elif include_empty:
            result["State"] = ""
        if hasattr(self, "user_id"):
            result["UserID"] = str(self.user_id)
        elif include_empty:
            result["UserID"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        date: str,
        state: str,
        user_id: str,
    ) -> ModelsSessionPlayerJoining:
        instance = cls()
        instance.date = date
        instance.state = state
        instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsSessionPlayerJoining:
        instance = cls()
        if not dict_:
            return instance
        if "Date" in dict_ and dict_["Date"] is not None:
            instance.date = str(dict_["Date"])
        elif include_empty:
            instance.date = ""
        if "State" in dict_ and dict_["State"] is not None:
            instance.state = str(dict_["State"])
        elif include_empty:
            instance.state = ""
        if "UserID" in dict_ and dict_["UserID"] is not None:
            instance.user_id = str(dict_["UserID"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsSessionPlayerJoining]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsSessionPlayerJoining]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsSessionPlayerJoining,
        List[ModelsSessionPlayerJoining],
        Dict[Any, ModelsSessionPlayerJoining],
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
            "Date": "date",
            "State": "state",
            "UserID": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "Date": True,
            "State": True,
            "UserID": True,
        }

    # endregion static methods
