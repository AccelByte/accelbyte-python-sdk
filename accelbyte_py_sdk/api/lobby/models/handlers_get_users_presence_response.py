# justice-lobby-server (1.33.0)

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

from ..models.handlers_user_presence import HandlersUserPresence


class HandlersGetUsersPresenceResponse(Model):
    """Handlers get users presence response (handlers.GetUsersPresenceResponse)

    Properties:
        busy: (busy) REQUIRED int

        data: (data) REQUIRED List[HandlersUserPresence]

        invisible: (invisible) REQUIRED int

        offline: (offline) REQUIRED int

        online: (online) REQUIRED int
    """

    # region fields

    busy: int                                                                                      # REQUIRED
    data: List[HandlersUserPresence]                                                               # REQUIRED
    invisible: int                                                                                 # REQUIRED
    offline: int                                                                                   # REQUIRED
    online: int                                                                                    # REQUIRED

    # endregion fields

    # region with_x methods

    def with_busy(self, value: int) -> HandlersGetUsersPresenceResponse:
        self.busy = value
        return self

    def with_data(self, value: List[HandlersUserPresence]) -> HandlersGetUsersPresenceResponse:
        self.data = value
        return self

    def with_invisible(self, value: int) -> HandlersGetUsersPresenceResponse:
        self.invisible = value
        return self

    def with_offline(self, value: int) -> HandlersGetUsersPresenceResponse:
        self.offline = value
        return self

    def with_online(self, value: int) -> HandlersGetUsersPresenceResponse:
        self.online = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "busy"):
            result["busy"] = int(self.busy)
        elif include_empty:
            result["busy"] = int()
        if hasattr(self, "data"):
            result["data"] = [i0.to_dict(include_empty=include_empty) for i0 in self.data]
        elif include_empty:
            result["data"] = []
        if hasattr(self, "invisible"):
            result["invisible"] = int(self.invisible)
        elif include_empty:
            result["invisible"] = int()
        if hasattr(self, "offline"):
            result["offline"] = int(self.offline)
        elif include_empty:
            result["offline"] = int()
        if hasattr(self, "online"):
            result["online"] = int(self.online)
        elif include_empty:
            result["online"] = int()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        busy: int,
        data: List[HandlersUserPresence],
        invisible: int,
        offline: int,
        online: int,
    ) -> HandlersGetUsersPresenceResponse:
        instance = cls()
        instance.busy = busy
        instance.data = data
        instance.invisible = invisible
        instance.offline = offline
        instance.online = online
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> HandlersGetUsersPresenceResponse:
        instance = cls()
        if not dict_:
            return instance
        if "busy" in dict_ and dict_["busy"] is not None:
            instance.busy = int(dict_["busy"])
        elif include_empty:
            instance.busy = int()
        if "data" in dict_ and dict_["data"] is not None:
            instance.data = [HandlersUserPresence.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["data"]]
        elif include_empty:
            instance.data = []
        if "invisible" in dict_ and dict_["invisible"] is not None:
            instance.invisible = int(dict_["invisible"])
        elif include_empty:
            instance.invisible = int()
        if "offline" in dict_ and dict_["offline"] is not None:
            instance.offline = int(dict_["offline"])
        elif include_empty:
            instance.offline = int()
        if "online" in dict_ and dict_["online"] is not None:
            instance.online = int(dict_["online"])
        elif include_empty:
            instance.online = int()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "busy": "busy",
            "data": "data",
            "invisible": "invisible",
            "offline": "offline",
            "online": "online",
        }

    # endregion static methods
