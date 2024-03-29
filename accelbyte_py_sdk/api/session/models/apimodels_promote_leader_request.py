# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Session Service

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


class ApimodelsPromoteLeaderRequest(Model):
    """Apimodels promote leader request (apimodels.PromoteLeaderRequest)

    Properties:
        leader_id: (leaderID) REQUIRED str
    """

    # region fields

    leader_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_leader_id(self, value: str) -> ApimodelsPromoteLeaderRequest:
        self.leader_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "leader_id"):
            result["leaderID"] = str(self.leader_id)
        elif include_empty:
            result["leaderID"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(cls, leader_id: str, **kwargs) -> ApimodelsPromoteLeaderRequest:
        instance = cls()
        instance.leader_id = leader_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsPromoteLeaderRequest:
        instance = cls()
        if not dict_:
            return instance
        if "leaderID" in dict_ and dict_["leaderID"] is not None:
            instance.leader_id = str(dict_["leaderID"])
        elif include_empty:
            instance.leader_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsPromoteLeaderRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsPromoteLeaderRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsPromoteLeaderRequest,
        List[ApimodelsPromoteLeaderRequest],
        Dict[Any, ApimodelsPromoteLeaderRequest],
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
            "leaderID": "leader_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "leaderID": True,
        }

    # endregion static methods
