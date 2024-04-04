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

from ..models.models_ticket import ModelsTicket


class ModelsTicketStatus(Model):
    """Models ticket status (models.TicketStatus)

    Properties:
        matched: (matched) REQUIRED bool

        ticket: (ticket) REQUIRED ModelsTicket
    """

    # region fields

    matched: bool  # REQUIRED
    ticket: ModelsTicket  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_matched(self, value: bool) -> ModelsTicketStatus:
        self.matched = value
        return self

    def with_ticket(self, value: ModelsTicket) -> ModelsTicketStatus:
        self.ticket = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "matched"):
            result["matched"] = bool(self.matched)
        elif include_empty:
            result["matched"] = False
        if hasattr(self, "ticket"):
            result["ticket"] = self.ticket.to_dict(include_empty=include_empty)
        elif include_empty:
            result["ticket"] = ModelsTicket()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, matched: bool, ticket: ModelsTicket, **kwargs
    ) -> ModelsTicketStatus:
        instance = cls()
        instance.matched = matched
        instance.ticket = ticket
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsTicketStatus:
        instance = cls()
        if not dict_:
            return instance
        if "matched" in dict_ and dict_["matched"] is not None:
            instance.matched = bool(dict_["matched"])
        elif include_empty:
            instance.matched = False
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
    ) -> Dict[str, ModelsTicketStatus]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsTicketStatus]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsTicketStatus, List[ModelsTicketStatus], Dict[Any, ModelsTicketStatus]
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
            "matched": "matched",
            "ticket": "ticket",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "matched": True,
            "ticket": True,
        }

    # endregion static methods
