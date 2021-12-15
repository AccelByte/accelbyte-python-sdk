# justice-event-log-service ()

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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

from ..models.models_event_type import ModelsEventType


class ModelsMultipleEventType(Model):
    """Models multiple event type (models.MultipleEventType)

    Properties:
        event_type: (EventType) REQUIRED List[ModelsEventType]
    """

    # region fields

    event_type: List[ModelsEventType]                                                              # REQUIRED

    # endregion fields

    # region with_x methods

    def with_event_type(self, value: List[ModelsEventType]) -> ModelsMultipleEventType:
        self.event_type = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "event_type"):
            result["EventType"] = [i0.to_dict(include_empty=include_empty) for i0 in self.event_type]
        elif include_empty:
            result["EventType"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        event_type: List[ModelsEventType],
    ) -> ModelsMultipleEventType:
        instance = cls()
        instance.event_type = event_type
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsMultipleEventType:
        instance = cls()
        if not dict_:
            return instance
        if "EventType" in dict_ and dict_["EventType"] is not None:
            instance.event_type = [ModelsEventType.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["EventType"]]
        elif include_empty:
            instance.event_type = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "EventType": "event_type",
        }

    # endregion static methods
