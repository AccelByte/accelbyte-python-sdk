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


class ApimodelsXRayMatchPoolPodTickResult(Model):
    """Apimodels X ray match pool pod tick result (apimodels.XRayMatchPoolPodTickResult)

    Properties:
        pod_name: (podName) REQUIRED str

        tick_id: (tickId) REQUIRED str

        timestamp: (timestamp) REQUIRED str

        total_match_backfilled: (totalMatchBackfilled) REQUIRED int

        total_match_created: (totalMatchCreated) REQUIRED int

        total_match_to_backfill: (totalMatchToBackfill) REQUIRED int

        total_ticket_backfilled: (totalTicketBackfilled) REQUIRED int

        total_ticket_for_backfill: (totalTicketForBackfill) REQUIRED int

        total_ticket_for_match: (totalTicketForMatch) REQUIRED int

        total_ticket_in_queue: (totalTicketInQueue) REQUIRED int

        total_ticket_matched: (totalTicketMatched) REQUIRED int
    """

    # region fields

    pod_name: str  # REQUIRED
    tick_id: str  # REQUIRED
    timestamp: str  # REQUIRED
    total_match_backfilled: int  # REQUIRED
    total_match_created: int  # REQUIRED
    total_match_to_backfill: int  # REQUIRED
    total_ticket_backfilled: int  # REQUIRED
    total_ticket_for_backfill: int  # REQUIRED
    total_ticket_for_match: int  # REQUIRED
    total_ticket_in_queue: int  # REQUIRED
    total_ticket_matched: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_pod_name(self, value: str) -> ApimodelsXRayMatchPoolPodTickResult:
        self.pod_name = value
        return self

    def with_tick_id(self, value: str) -> ApimodelsXRayMatchPoolPodTickResult:
        self.tick_id = value
        return self

    def with_timestamp(self, value: str) -> ApimodelsXRayMatchPoolPodTickResult:
        self.timestamp = value
        return self

    def with_total_match_backfilled(
        self, value: int
    ) -> ApimodelsXRayMatchPoolPodTickResult:
        self.total_match_backfilled = value
        return self

    def with_total_match_created(
        self, value: int
    ) -> ApimodelsXRayMatchPoolPodTickResult:
        self.total_match_created = value
        return self

    def with_total_match_to_backfill(
        self, value: int
    ) -> ApimodelsXRayMatchPoolPodTickResult:
        self.total_match_to_backfill = value
        return self

    def with_total_ticket_backfilled(
        self, value: int
    ) -> ApimodelsXRayMatchPoolPodTickResult:
        self.total_ticket_backfilled = value
        return self

    def with_total_ticket_for_backfill(
        self, value: int
    ) -> ApimodelsXRayMatchPoolPodTickResult:
        self.total_ticket_for_backfill = value
        return self

    def with_total_ticket_for_match(
        self, value: int
    ) -> ApimodelsXRayMatchPoolPodTickResult:
        self.total_ticket_for_match = value
        return self

    def with_total_ticket_in_queue(
        self, value: int
    ) -> ApimodelsXRayMatchPoolPodTickResult:
        self.total_ticket_in_queue = value
        return self

    def with_total_ticket_matched(
        self, value: int
    ) -> ApimodelsXRayMatchPoolPodTickResult:
        self.total_ticket_matched = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "pod_name"):
            result["podName"] = str(self.pod_name)
        elif include_empty:
            result["podName"] = ""
        if hasattr(self, "tick_id"):
            result["tickId"] = str(self.tick_id)
        elif include_empty:
            result["tickId"] = ""
        if hasattr(self, "timestamp"):
            result["timestamp"] = str(self.timestamp)
        elif include_empty:
            result["timestamp"] = ""
        if hasattr(self, "total_match_backfilled"):
            result["totalMatchBackfilled"] = int(self.total_match_backfilled)
        elif include_empty:
            result["totalMatchBackfilled"] = 0
        if hasattr(self, "total_match_created"):
            result["totalMatchCreated"] = int(self.total_match_created)
        elif include_empty:
            result["totalMatchCreated"] = 0
        if hasattr(self, "total_match_to_backfill"):
            result["totalMatchToBackfill"] = int(self.total_match_to_backfill)
        elif include_empty:
            result["totalMatchToBackfill"] = 0
        if hasattr(self, "total_ticket_backfilled"):
            result["totalTicketBackfilled"] = int(self.total_ticket_backfilled)
        elif include_empty:
            result["totalTicketBackfilled"] = 0
        if hasattr(self, "total_ticket_for_backfill"):
            result["totalTicketForBackfill"] = int(self.total_ticket_for_backfill)
        elif include_empty:
            result["totalTicketForBackfill"] = 0
        if hasattr(self, "total_ticket_for_match"):
            result["totalTicketForMatch"] = int(self.total_ticket_for_match)
        elif include_empty:
            result["totalTicketForMatch"] = 0
        if hasattr(self, "total_ticket_in_queue"):
            result["totalTicketInQueue"] = int(self.total_ticket_in_queue)
        elif include_empty:
            result["totalTicketInQueue"] = 0
        if hasattr(self, "total_ticket_matched"):
            result["totalTicketMatched"] = int(self.total_ticket_matched)
        elif include_empty:
            result["totalTicketMatched"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        pod_name: str,
        tick_id: str,
        timestamp: str,
        total_match_backfilled: int,
        total_match_created: int,
        total_match_to_backfill: int,
        total_ticket_backfilled: int,
        total_ticket_for_backfill: int,
        total_ticket_for_match: int,
        total_ticket_in_queue: int,
        total_ticket_matched: int,
        **kwargs,
    ) -> ApimodelsXRayMatchPoolPodTickResult:
        instance = cls()
        instance.pod_name = pod_name
        instance.tick_id = tick_id
        instance.timestamp = timestamp
        instance.total_match_backfilled = total_match_backfilled
        instance.total_match_created = total_match_created
        instance.total_match_to_backfill = total_match_to_backfill
        instance.total_ticket_backfilled = total_ticket_backfilled
        instance.total_ticket_for_backfill = total_ticket_for_backfill
        instance.total_ticket_for_match = total_ticket_for_match
        instance.total_ticket_in_queue = total_ticket_in_queue
        instance.total_ticket_matched = total_ticket_matched
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsXRayMatchPoolPodTickResult:
        instance = cls()
        if not dict_:
            return instance
        if "podName" in dict_ and dict_["podName"] is not None:
            instance.pod_name = str(dict_["podName"])
        elif include_empty:
            instance.pod_name = ""
        if "tickId" in dict_ and dict_["tickId"] is not None:
            instance.tick_id = str(dict_["tickId"])
        elif include_empty:
            instance.tick_id = ""
        if "timestamp" in dict_ and dict_["timestamp"] is not None:
            instance.timestamp = str(dict_["timestamp"])
        elif include_empty:
            instance.timestamp = ""
        if (
            "totalMatchBackfilled" in dict_
            and dict_["totalMatchBackfilled"] is not None
        ):
            instance.total_match_backfilled = int(dict_["totalMatchBackfilled"])
        elif include_empty:
            instance.total_match_backfilled = 0
        if "totalMatchCreated" in dict_ and dict_["totalMatchCreated"] is not None:
            instance.total_match_created = int(dict_["totalMatchCreated"])
        elif include_empty:
            instance.total_match_created = 0
        if (
            "totalMatchToBackfill" in dict_
            and dict_["totalMatchToBackfill"] is not None
        ):
            instance.total_match_to_backfill = int(dict_["totalMatchToBackfill"])
        elif include_empty:
            instance.total_match_to_backfill = 0
        if (
            "totalTicketBackfilled" in dict_
            and dict_["totalTicketBackfilled"] is not None
        ):
            instance.total_ticket_backfilled = int(dict_["totalTicketBackfilled"])
        elif include_empty:
            instance.total_ticket_backfilled = 0
        if (
            "totalTicketForBackfill" in dict_
            and dict_["totalTicketForBackfill"] is not None
        ):
            instance.total_ticket_for_backfill = int(dict_["totalTicketForBackfill"])
        elif include_empty:
            instance.total_ticket_for_backfill = 0
        if "totalTicketForMatch" in dict_ and dict_["totalTicketForMatch"] is not None:
            instance.total_ticket_for_match = int(dict_["totalTicketForMatch"])
        elif include_empty:
            instance.total_ticket_for_match = 0
        if "totalTicketInQueue" in dict_ and dict_["totalTicketInQueue"] is not None:
            instance.total_ticket_in_queue = int(dict_["totalTicketInQueue"])
        elif include_empty:
            instance.total_ticket_in_queue = 0
        if "totalTicketMatched" in dict_ and dict_["totalTicketMatched"] is not None:
            instance.total_ticket_matched = int(dict_["totalTicketMatched"])
        elif include_empty:
            instance.total_ticket_matched = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsXRayMatchPoolPodTickResult]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsXRayMatchPoolPodTickResult]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsXRayMatchPoolPodTickResult,
        List[ApimodelsXRayMatchPoolPodTickResult],
        Dict[Any, ApimodelsXRayMatchPoolPodTickResult],
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
            "podName": "pod_name",
            "tickId": "tick_id",
            "timestamp": "timestamp",
            "totalMatchBackfilled": "total_match_backfilled",
            "totalMatchCreated": "total_match_created",
            "totalMatchToBackfill": "total_match_to_backfill",
            "totalTicketBackfilled": "total_ticket_backfilled",
            "totalTicketForBackfill": "total_ticket_for_backfill",
            "totalTicketForMatch": "total_ticket_for_match",
            "totalTicketInQueue": "total_ticket_in_queue",
            "totalTicketMatched": "total_ticket_matched",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "podName": True,
            "tickId": True,
            "timestamp": True,
            "totalMatchBackfilled": True,
            "totalMatchCreated": True,
            "totalMatchToBackfill": True,
            "totalTicketBackfilled": True,
            "totalTicketForBackfill": True,
            "totalTicketForMatch": True,
            "totalTicketInQueue": True,
            "totalTicketMatched": True,
        }

    # endregion static methods
