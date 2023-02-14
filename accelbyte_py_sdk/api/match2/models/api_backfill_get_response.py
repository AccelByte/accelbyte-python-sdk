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

from ..models.api_match import ApiMatch


class ApiBackfillGetResponse(Model):
    """Api backfill get response (api.BackfillGetResponse)

    Properties:
        created_at: (createdAt) OPTIONAL str

        match_pool: (matchPool) OPTIONAL str

        match_session_id: (matchSessionID) OPTIONAL str

        partial_match: (partialMatch) OPTIONAL ApiMatch

        ticket_id: (ticketID) OPTIONAL str
    """

    # region fields

    created_at: str  # OPTIONAL
    match_pool: str  # OPTIONAL
    match_session_id: str  # OPTIONAL
    partial_match: ApiMatch  # OPTIONAL
    ticket_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> ApiBackfillGetResponse:
        self.created_at = value
        return self

    def with_match_pool(self, value: str) -> ApiBackfillGetResponse:
        self.match_pool = value
        return self

    def with_match_session_id(self, value: str) -> ApiBackfillGetResponse:
        self.match_session_id = value
        return self

    def with_partial_match(self, value: ApiMatch) -> ApiBackfillGetResponse:
        self.partial_match = value
        return self

    def with_ticket_id(self, value: str) -> ApiBackfillGetResponse:
        self.ticket_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "match_pool"):
            result["matchPool"] = str(self.match_pool)
        elif include_empty:
            result["matchPool"] = ""
        if hasattr(self, "match_session_id"):
            result["matchSessionID"] = str(self.match_session_id)
        elif include_empty:
            result["matchSessionID"] = ""
        if hasattr(self, "partial_match"):
            result["partialMatch"] = self.partial_match.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["partialMatch"] = ApiMatch()
        if hasattr(self, "ticket_id"):
            result["ticketID"] = str(self.ticket_id)
        elif include_empty:
            result["ticketID"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: Optional[str] = None,
        match_pool: Optional[str] = None,
        match_session_id: Optional[str] = None,
        partial_match: Optional[ApiMatch] = None,
        ticket_id: Optional[str] = None,
    ) -> ApiBackfillGetResponse:
        instance = cls()
        if created_at is not None:
            instance.created_at = created_at
        if match_pool is not None:
            instance.match_pool = match_pool
        if match_session_id is not None:
            instance.match_session_id = match_session_id
        if partial_match is not None:
            instance.partial_match = partial_match
        if ticket_id is not None:
            instance.ticket_id = ticket_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiBackfillGetResponse:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "matchPool" in dict_ and dict_["matchPool"] is not None:
            instance.match_pool = str(dict_["matchPool"])
        elif include_empty:
            instance.match_pool = ""
        if "matchSessionID" in dict_ and dict_["matchSessionID"] is not None:
            instance.match_session_id = str(dict_["matchSessionID"])
        elif include_empty:
            instance.match_session_id = ""
        if "partialMatch" in dict_ and dict_["partialMatch"] is not None:
            instance.partial_match = ApiMatch.create_from_dict(
                dict_["partialMatch"], include_empty=include_empty
            )
        elif include_empty:
            instance.partial_match = ApiMatch()
        if "ticketID" in dict_ and dict_["ticketID"] is not None:
            instance.ticket_id = str(dict_["ticketID"])
        elif include_empty:
            instance.ticket_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiBackfillGetResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiBackfillGetResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiBackfillGetResponse,
        List[ApiBackfillGetResponse],
        Dict[Any, ApiBackfillGetResponse],
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
            "createdAt": "created_at",
            "matchPool": "match_pool",
            "matchSessionID": "match_session_id",
            "partialMatch": "partial_match",
            "ticketID": "ticket_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": False,
            "matchPool": False,
            "matchSessionID": False,
            "partialMatch": False,
            "ticketID": False,
        }

    # endregion static methods
