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


class ApiMatchTicketResponse(Model):
    """Api match ticket response (api.MatchTicketResponse)

    Properties:
        match_ticket_id: (matchTicketID) REQUIRED str
    """

    # region fields

    match_ticket_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_match_ticket_id(self, value: str) -> ApiMatchTicketResponse:
        self.match_ticket_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "match_ticket_id"):
            result["matchTicketID"] = str(self.match_ticket_id)
        elif include_empty:
            result["matchTicketID"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        match_ticket_id: str,
    ) -> ApiMatchTicketResponse:
        instance = cls()
        instance.match_ticket_id = match_ticket_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiMatchTicketResponse:
        instance = cls()
        if not dict_:
            return instance
        if "matchTicketID" in dict_ and dict_["matchTicketID"] is not None:
            instance.match_ticket_id = str(dict_["matchTicketID"])
        elif include_empty:
            instance.match_ticket_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiMatchTicketResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiMatchTicketResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiMatchTicketResponse,
        List[ApiMatchTicketResponse],
        Dict[Any, ApiMatchTicketResponse],
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
            "matchTicketID": "match_ticket_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "matchTicketID": True,
        }

    # endregion static methods
