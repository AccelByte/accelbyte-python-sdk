# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Match Service V2 (2.1.1)

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


class ApiBackFillCreateRequest(Model):
    """Api back fill create request (api.BackFillCreateRequest)

    Properties:
        match_pool: (matchPool) REQUIRED str

        session_id: (sessionId) REQUIRED str
    """

    # region fields

    match_pool: str  # REQUIRED
    session_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_match_pool(self, value: str) -> ApiBackFillCreateRequest:
        self.match_pool = value
        return self

    def with_session_id(self, value: str) -> ApiBackFillCreateRequest:
        self.session_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "match_pool"):
            result["matchPool"] = str(self.match_pool)
        elif include_empty:
            result["matchPool"] = ""
        if hasattr(self, "session_id"):
            result["sessionId"] = str(self.session_id)
        elif include_empty:
            result["sessionId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        match_pool: str,
        session_id: str,
    ) -> ApiBackFillCreateRequest:
        instance = cls()
        instance.match_pool = match_pool
        instance.session_id = session_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiBackFillCreateRequest:
        instance = cls()
        if not dict_:
            return instance
        if "matchPool" in dict_ and dict_["matchPool"] is not None:
            instance.match_pool = str(dict_["matchPool"])
        elif include_empty:
            instance.match_pool = ""
        if "sessionId" in dict_ and dict_["sessionId"] is not None:
            instance.session_id = str(dict_["sessionId"])
        elif include_empty:
            instance.session_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiBackFillCreateRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiBackFillCreateRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiBackFillCreateRequest,
        List[ApiBackFillCreateRequest],
        Dict[Any, ApiBackFillCreateRequest],
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
            "matchPool": "match_pool",
            "sessionId": "session_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "matchPool": True,
            "sessionId": True,
        }

    # endregion static methods
