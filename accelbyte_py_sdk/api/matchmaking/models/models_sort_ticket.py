# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Matchmaking Service

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


class ModelsSortTicket(Model):
    """Models sort ticket (models.SortTicket)

    Properties:
        search_result: (search_result) REQUIRED str

        ticket_queue: (ticket_queue) REQUIRED str
    """

    # region fields

    search_result: str  # REQUIRED
    ticket_queue: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_search_result(self, value: str) -> ModelsSortTicket:
        self.search_result = value
        return self

    def with_ticket_queue(self, value: str) -> ModelsSortTicket:
        self.ticket_queue = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "search_result"):
            result["search_result"] = str(self.search_result)
        elif include_empty:
            result["search_result"] = ""
        if hasattr(self, "ticket_queue"):
            result["ticket_queue"] = str(self.ticket_queue)
        elif include_empty:
            result["ticket_queue"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, search_result: str, ticket_queue: str, **kwargs
    ) -> ModelsSortTicket:
        instance = cls()
        instance.search_result = search_result
        instance.ticket_queue = ticket_queue
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsSortTicket:
        instance = cls()
        if not dict_:
            return instance
        if "search_result" in dict_ and dict_["search_result"] is not None:
            instance.search_result = str(dict_["search_result"])
        elif include_empty:
            instance.search_result = ""
        if "ticket_queue" in dict_ and dict_["ticket_queue"] is not None:
            instance.ticket_queue = str(dict_["ticket_queue"])
        elif include_empty:
            instance.ticket_queue = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsSortTicket]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsSortTicket]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ModelsSortTicket, List[ModelsSortTicket], Dict[Any, ModelsSortTicket]]:
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
            "search_result": "search_result",
            "ticket_queue": "ticket_queue",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "search_result": True,
            "ticket_queue": True,
        }

    # endregion static methods
