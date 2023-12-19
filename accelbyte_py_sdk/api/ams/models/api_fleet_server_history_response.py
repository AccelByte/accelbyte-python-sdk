# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Fleet Commander (1.7.1)

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

from ..models.api_fleet_server_history_event_response import (
    ApiFleetServerHistoryEventResponse,
)


class ApiFleetServerHistoryResponse(Model):
    """Api fleet server history response (api.FleetServerHistoryResponse)

    Properties:
        events: (events) REQUIRED List[ApiFleetServerHistoryEventResponse]
    """

    # region fields

    events: List[ApiFleetServerHistoryEventResponse]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_events(
        self, value: List[ApiFleetServerHistoryEventResponse]
    ) -> ApiFleetServerHistoryResponse:
        self.events = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "events"):
            result["events"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.events
            ]
        elif include_empty:
            result["events"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, events: List[ApiFleetServerHistoryEventResponse], **kwargs
    ) -> ApiFleetServerHistoryResponse:
        instance = cls()
        instance.events = events
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiFleetServerHistoryResponse:
        instance = cls()
        if not dict_:
            return instance
        if "events" in dict_ and dict_["events"] is not None:
            instance.events = [
                ApiFleetServerHistoryEventResponse.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["events"]
            ]
        elif include_empty:
            instance.events = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiFleetServerHistoryResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiFleetServerHistoryResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiFleetServerHistoryResponse,
        List[ApiFleetServerHistoryResponse],
        Dict[Any, ApiFleetServerHistoryResponse],
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
            "events": "events",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "events": True,
        }

    # endregion static methods
