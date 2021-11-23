# justice-event-log-service (1.18.3)

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

from ..models.models_event_id import ModelsEventID


class ModelsMultipleEventID(Model):
    """Models multiple event ID (models.MultipleEventID)

    Properties:
        event_i_ds: (EventIDs) REQUIRED List[ModelsEventID]
    """

    # region fields

    event_i_ds: List[ModelsEventID]                                                                # REQUIRED

    # endregion fields

    # region with_x methods

    def with_event_i_ds(self, value: List[ModelsEventID]) -> ModelsMultipleEventID:
        self.event_i_ds = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "event_i_ds"):
            result["EventIDs"] = [i0.to_dict(include_empty=include_empty) for i0 in self.event_i_ds]
        elif include_empty:
            result["EventIDs"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        event_i_ds: List[ModelsEventID],
    ) -> ModelsMultipleEventID:
        instance = cls()
        instance.event_i_ds = event_i_ds
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsMultipleEventID:
        instance = cls()
        if not dict_:
            return instance
        if "EventIDs" in dict_ and dict_["EventIDs"] is not None:
            instance.event_i_ds = [ModelsEventID.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["EventIDs"]]
        elif include_empty:
            instance.event_i_ds = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "EventIDs": "event_i_ds",
        }

    # endregion static methods