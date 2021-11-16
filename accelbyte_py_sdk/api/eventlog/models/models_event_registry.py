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


class ModelsEventRegistry(Model):
    """Models event registry (models.EventRegistry)

    Properties:
        event_id: (EventID) REQUIRED int

        event_level: (EventLevel) REQUIRED int

        event_type: (EventType) REQUIRED int

        ux: (UX) REQUIRED int
    """

    # region fields

    event_id: int                                                                                  # REQUIRED
    event_level: int                                                                               # REQUIRED
    event_type: int                                                                                # REQUIRED
    ux: int                                                                                        # REQUIRED

    # endregion fields

    # region with_x methods

    def with_event_id(self, value: int) -> ModelsEventRegistry:
        self.event_id = value
        return self

    def with_event_level(self, value: int) -> ModelsEventRegistry:
        self.event_level = value
        return self

    def with_event_type(self, value: int) -> ModelsEventRegistry:
        self.event_type = value
        return self

    def with_ux(self, value: int) -> ModelsEventRegistry:
        self.ux = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "event_id"):
            result["EventID"] = int(self.event_id)
        elif include_empty:
            result["EventID"] = int()
        if hasattr(self, "event_level"):
            result["EventLevel"] = int(self.event_level)
        elif include_empty:
            result["EventLevel"] = int()
        if hasattr(self, "event_type"):
            result["EventType"] = int(self.event_type)
        elif include_empty:
            result["EventType"] = int()
        if hasattr(self, "ux"):
            result["UX"] = int(self.ux)
        elif include_empty:
            result["UX"] = int()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        event_id: int,
        event_level: int,
        event_type: int,
        ux: int,
    ) -> ModelsEventRegistry:
        instance = cls()
        instance.event_id = event_id
        instance.event_level = event_level
        instance.event_type = event_type
        instance.ux = ux
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsEventRegistry:
        instance = cls()
        if not dict_:
            return instance
        if "EventID" in dict_ and dict_["EventID"] is not None:
            instance.event_id = int(dict_["EventID"])
        elif include_empty:
            instance.event_id = int()
        if "EventLevel" in dict_ and dict_["EventLevel"] is not None:
            instance.event_level = int(dict_["EventLevel"])
        elif include_empty:
            instance.event_level = int()
        if "EventType" in dict_ and dict_["EventType"] is not None:
            instance.event_type = int(dict_["EventType"])
        elif include_empty:
            instance.event_type = int()
        if "UX" in dict_ and dict_["UX"] is not None:
            instance.ux = int(dict_["UX"])
        elif include_empty:
            instance.ux = int()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "EventID": "event_id",
            "EventLevel": "event_level",
            "EventType": "event_type",
            "UX": "ux",
        }

    # endregion static methods
