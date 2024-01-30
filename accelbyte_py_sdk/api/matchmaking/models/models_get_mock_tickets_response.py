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

from ..models.models_mock_ticket import ModelsMockTicket


class ModelsGetMockTicketsResponse(Model):
    """Models get mock tickets response (models.GetMockTicketsResponse)

    Properties:
        cancelled_count: (cancelled_count) REQUIRED int

        highest_mmr: (highest_mmr) REQUIRED int

        in_queue_count: (in_queue_count) REQUIRED int

        lowest_mmr: (lowest_mmr) REQUIRED int

        matched_count: (matched_count) REQUIRED int

        mmr_in_queue: (mmr_in_queue) REQUIRED Dict[str, int]

        mmr_matched: (mmr_matched) REQUIRED Dict[str, int]

        mmr_timeout: (mmr_timeout) REQUIRED Dict[str, int]

        tickets: (tickets) REQUIRED List[ModelsMockTicket]

        timeout_count: (timeout_count) REQUIRED int
    """

    # region fields

    cancelled_count: int  # REQUIRED
    highest_mmr: int  # REQUIRED
    in_queue_count: int  # REQUIRED
    lowest_mmr: int  # REQUIRED
    matched_count: int  # REQUIRED
    mmr_in_queue: Dict[str, int]  # REQUIRED
    mmr_matched: Dict[str, int]  # REQUIRED
    mmr_timeout: Dict[str, int]  # REQUIRED
    tickets: List[ModelsMockTicket]  # REQUIRED
    timeout_count: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_cancelled_count(self, value: int) -> ModelsGetMockTicketsResponse:
        self.cancelled_count = value
        return self

    def with_highest_mmr(self, value: int) -> ModelsGetMockTicketsResponse:
        self.highest_mmr = value
        return self

    def with_in_queue_count(self, value: int) -> ModelsGetMockTicketsResponse:
        self.in_queue_count = value
        return self

    def with_lowest_mmr(self, value: int) -> ModelsGetMockTicketsResponse:
        self.lowest_mmr = value
        return self

    def with_matched_count(self, value: int) -> ModelsGetMockTicketsResponse:
        self.matched_count = value
        return self

    def with_mmr_in_queue(self, value: Dict[str, int]) -> ModelsGetMockTicketsResponse:
        self.mmr_in_queue = value
        return self

    def with_mmr_matched(self, value: Dict[str, int]) -> ModelsGetMockTicketsResponse:
        self.mmr_matched = value
        return self

    def with_mmr_timeout(self, value: Dict[str, int]) -> ModelsGetMockTicketsResponse:
        self.mmr_timeout = value
        return self

    def with_tickets(
        self, value: List[ModelsMockTicket]
    ) -> ModelsGetMockTicketsResponse:
        self.tickets = value
        return self

    def with_timeout_count(self, value: int) -> ModelsGetMockTicketsResponse:
        self.timeout_count = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "cancelled_count"):
            result["cancelled_count"] = int(self.cancelled_count)
        elif include_empty:
            result["cancelled_count"] = 0
        if hasattr(self, "highest_mmr"):
            result["highest_mmr"] = int(self.highest_mmr)
        elif include_empty:
            result["highest_mmr"] = 0
        if hasattr(self, "in_queue_count"):
            result["in_queue_count"] = int(self.in_queue_count)
        elif include_empty:
            result["in_queue_count"] = 0
        if hasattr(self, "lowest_mmr"):
            result["lowest_mmr"] = int(self.lowest_mmr)
        elif include_empty:
            result["lowest_mmr"] = 0
        if hasattr(self, "matched_count"):
            result["matched_count"] = int(self.matched_count)
        elif include_empty:
            result["matched_count"] = 0
        if hasattr(self, "mmr_in_queue"):
            result["mmr_in_queue"] = {
                str(k0): int(v0) for k0, v0 in self.mmr_in_queue.items()
            }
        elif include_empty:
            result["mmr_in_queue"] = {}
        if hasattr(self, "mmr_matched"):
            result["mmr_matched"] = {
                str(k0): int(v0) for k0, v0 in self.mmr_matched.items()
            }
        elif include_empty:
            result["mmr_matched"] = {}
        if hasattr(self, "mmr_timeout"):
            result["mmr_timeout"] = {
                str(k0): int(v0) for k0, v0 in self.mmr_timeout.items()
            }
        elif include_empty:
            result["mmr_timeout"] = {}
        if hasattr(self, "tickets"):
            result["tickets"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.tickets
            ]
        elif include_empty:
            result["tickets"] = []
        if hasattr(self, "timeout_count"):
            result["timeout_count"] = int(self.timeout_count)
        elif include_empty:
            result["timeout_count"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        cancelled_count: int,
        highest_mmr: int,
        in_queue_count: int,
        lowest_mmr: int,
        matched_count: int,
        mmr_in_queue: Dict[str, int],
        mmr_matched: Dict[str, int],
        mmr_timeout: Dict[str, int],
        tickets: List[ModelsMockTicket],
        timeout_count: int,
        **kwargs,
    ) -> ModelsGetMockTicketsResponse:
        instance = cls()
        instance.cancelled_count = cancelled_count
        instance.highest_mmr = highest_mmr
        instance.in_queue_count = in_queue_count
        instance.lowest_mmr = lowest_mmr
        instance.matched_count = matched_count
        instance.mmr_in_queue = mmr_in_queue
        instance.mmr_matched = mmr_matched
        instance.mmr_timeout = mmr_timeout
        instance.tickets = tickets
        instance.timeout_count = timeout_count
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsGetMockTicketsResponse:
        instance = cls()
        if not dict_:
            return instance
        if "cancelled_count" in dict_ and dict_["cancelled_count"] is not None:
            instance.cancelled_count = int(dict_["cancelled_count"])
        elif include_empty:
            instance.cancelled_count = 0
        if "highest_mmr" in dict_ and dict_["highest_mmr"] is not None:
            instance.highest_mmr = int(dict_["highest_mmr"])
        elif include_empty:
            instance.highest_mmr = 0
        if "in_queue_count" in dict_ and dict_["in_queue_count"] is not None:
            instance.in_queue_count = int(dict_["in_queue_count"])
        elif include_empty:
            instance.in_queue_count = 0
        if "lowest_mmr" in dict_ and dict_["lowest_mmr"] is not None:
            instance.lowest_mmr = int(dict_["lowest_mmr"])
        elif include_empty:
            instance.lowest_mmr = 0
        if "matched_count" in dict_ and dict_["matched_count"] is not None:
            instance.matched_count = int(dict_["matched_count"])
        elif include_empty:
            instance.matched_count = 0
        if "mmr_in_queue" in dict_ and dict_["mmr_in_queue"] is not None:
            instance.mmr_in_queue = {
                str(k0): int(v0) for k0, v0 in dict_["mmr_in_queue"].items()
            }
        elif include_empty:
            instance.mmr_in_queue = {}
        if "mmr_matched" in dict_ and dict_["mmr_matched"] is not None:
            instance.mmr_matched = {
                str(k0): int(v0) for k0, v0 in dict_["mmr_matched"].items()
            }
        elif include_empty:
            instance.mmr_matched = {}
        if "mmr_timeout" in dict_ and dict_["mmr_timeout"] is not None:
            instance.mmr_timeout = {
                str(k0): int(v0) for k0, v0 in dict_["mmr_timeout"].items()
            }
        elif include_empty:
            instance.mmr_timeout = {}
        if "tickets" in dict_ and dict_["tickets"] is not None:
            instance.tickets = [
                ModelsMockTicket.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["tickets"]
            ]
        elif include_empty:
            instance.tickets = []
        if "timeout_count" in dict_ and dict_["timeout_count"] is not None:
            instance.timeout_count = int(dict_["timeout_count"])
        elif include_empty:
            instance.timeout_count = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsGetMockTicketsResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsGetMockTicketsResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsGetMockTicketsResponse,
        List[ModelsGetMockTicketsResponse],
        Dict[Any, ModelsGetMockTicketsResponse],
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
            "cancelled_count": "cancelled_count",
            "highest_mmr": "highest_mmr",
            "in_queue_count": "in_queue_count",
            "lowest_mmr": "lowest_mmr",
            "matched_count": "matched_count",
            "mmr_in_queue": "mmr_in_queue",
            "mmr_matched": "mmr_matched",
            "mmr_timeout": "mmr_timeout",
            "tickets": "tickets",
            "timeout_count": "timeout_count",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "cancelled_count": True,
            "highest_mmr": True,
            "in_queue_count": True,
            "lowest_mmr": True,
            "matched_count": True,
            "mmr_in_queue": True,
            "mmr_matched": True,
            "mmr_timeout": True,
            "tickets": True,
            "timeout_count": True,
        }

    # endregion static methods
