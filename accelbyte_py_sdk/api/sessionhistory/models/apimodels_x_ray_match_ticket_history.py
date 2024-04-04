# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Session History Service

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

from ..models.apimodels_event_match_history import ApimodelsEventMatchHistory
from ..models.models_ticket import ModelsTicket


class ApimodelsXRayMatchTicketHistory(Model):
    """Apimodels X ray match ticket history (apimodels.XRayMatchTicketHistory)

    Properties:
        action: (action) REQUIRED str

        timestamp: (timestamp) REQUIRED str

        match: (match) OPTIONAL ApimodelsEventMatchHistory

        ticket: (ticket) OPTIONAL ModelsTicket
    """

    # region fields

    action: str  # REQUIRED
    timestamp: str  # REQUIRED
    match: ApimodelsEventMatchHistory  # OPTIONAL
    ticket: ModelsTicket  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_action(self, value: str) -> ApimodelsXRayMatchTicketHistory:
        self.action = value
        return self

    def with_timestamp(self, value: str) -> ApimodelsXRayMatchTicketHistory:
        self.timestamp = value
        return self

    def with_match(
        self, value: ApimodelsEventMatchHistory
    ) -> ApimodelsXRayMatchTicketHistory:
        self.match = value
        return self

    def with_ticket(self, value: ModelsTicket) -> ApimodelsXRayMatchTicketHistory:
        self.ticket = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "action"):
            result["action"] = str(self.action)
        elif include_empty:
            result["action"] = ""
        if hasattr(self, "timestamp"):
            result["timestamp"] = str(self.timestamp)
        elif include_empty:
            result["timestamp"] = ""
        if hasattr(self, "match"):
            result["match"] = self.match.to_dict(include_empty=include_empty)
        elif include_empty:
            result["match"] = ApimodelsEventMatchHistory()
        if hasattr(self, "ticket"):
            result["ticket"] = self.ticket.to_dict(include_empty=include_empty)
        elif include_empty:
            result["ticket"] = ModelsTicket()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        action: str,
        timestamp: str,
        match: Optional[ApimodelsEventMatchHistory] = None,
        ticket: Optional[ModelsTicket] = None,
        **kwargs,
    ) -> ApimodelsXRayMatchTicketHistory:
        instance = cls()
        instance.action = action
        instance.timestamp = timestamp
        if match is not None:
            instance.match = match
        if ticket is not None:
            instance.ticket = ticket
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsXRayMatchTicketHistory:
        instance = cls()
        if not dict_:
            return instance
        if "action" in dict_ and dict_["action"] is not None:
            instance.action = str(dict_["action"])
        elif include_empty:
            instance.action = ""
        if "timestamp" in dict_ and dict_["timestamp"] is not None:
            instance.timestamp = str(dict_["timestamp"])
        elif include_empty:
            instance.timestamp = ""
        if "match" in dict_ and dict_["match"] is not None:
            instance.match = ApimodelsEventMatchHistory.create_from_dict(
                dict_["match"], include_empty=include_empty
            )
        elif include_empty:
            instance.match = ApimodelsEventMatchHistory()
        if "ticket" in dict_ and dict_["ticket"] is not None:
            instance.ticket = ModelsTicket.create_from_dict(
                dict_["ticket"], include_empty=include_empty
            )
        elif include_empty:
            instance.ticket = ModelsTicket()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsXRayMatchTicketHistory]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsXRayMatchTicketHistory]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsXRayMatchTicketHistory,
        List[ApimodelsXRayMatchTicketHistory],
        Dict[Any, ApimodelsXRayMatchTicketHistory],
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
            "timestamp": "timestamp",
            "match": "match",
            "ticket": "ticket",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "action": True,
            "timestamp": True,
            "match": False,
            "ticket": False,
        }

    # endregion static methods
