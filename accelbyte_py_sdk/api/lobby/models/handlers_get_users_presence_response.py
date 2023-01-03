# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Lobby Server (staging)

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
        away: (away) REQUIRED int

        busy: (busy) REQUIRED int

        data: (data) REQUIRED List[HandlersUserPresence]

        invisible: (invisible) REQUIRED int

        offline: (offline) REQUIRED int

        online: (online) REQUIRED int
    """

    # region fields

    away: int  # REQUIRED
    busy: int  # REQUIRED
    data: List[HandlersUserPresence]  # REQUIRED
    invisible: int  # REQUIRED
    offline: int  # REQUIRED
    online: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_away(self, value: int) -> HandlersGetUsersPresenceResponse:
        self.away = value
        return self

    def with_busy(self, value: int) -> HandlersGetUsersPresenceResponse:
        self.busy = value
        return self

    def with_data(
        self, value: List[HandlersUserPresence]
    ) -> HandlersGetUsersPresenceResponse:
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
        if hasattr(self, "away"):
            result["away"] = int(self.away)
        elif include_empty:
            result["away"] = 0
        if hasattr(self, "busy"):
            result["busy"] = int(self.busy)
        elif include_empty:
            result["busy"] = 0
        if hasattr(self, "data"):
            result["data"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.data
            ]
        elif include_empty:
            result["data"] = []
        if hasattr(self, "invisible"):
            result["invisible"] = int(self.invisible)
        elif include_empty:
            result["invisible"] = 0
        if hasattr(self, "offline"):
            result["offline"] = int(self.offline)
        elif include_empty:
            result["offline"] = 0
        if hasattr(self, "online"):
            result["online"] = int(self.online)
        elif include_empty:
            result["online"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        away: int,
        busy: int,
        data: List[HandlersUserPresence],
        invisible: int,
        offline: int,
        online: int,
    ) -> HandlersGetUsersPresenceResponse:
        instance = cls()
        instance.away = away
        instance.busy = busy
        instance.data = data
        instance.invisible = invisible
        instance.offline = offline
        instance.online = online
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> HandlersGetUsersPresenceResponse:
        instance = cls()
        if not dict_:
            return instance
        if "away" in dict_ and dict_["away"] is not None:
            instance.away = int(dict_["away"])
        elif include_empty:
            instance.away = 0
        if "busy" in dict_ and dict_["busy"] is not None:
            instance.busy = int(dict_["busy"])
        elif include_empty:
            instance.busy = 0
        if "data" in dict_ and dict_["data"] is not None:
            instance.data = [
                HandlersUserPresence.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["data"]
            ]
        elif include_empty:
            instance.data = []
        if "invisible" in dict_ and dict_["invisible"] is not None:
            instance.invisible = int(dict_["invisible"])
        elif include_empty:
            instance.invisible = 0
        if "offline" in dict_ and dict_["offline"] is not None:
            instance.offline = int(dict_["offline"])
        elif include_empty:
            instance.offline = 0
        if "online" in dict_ and dict_["online"] is not None:
            instance.online = int(dict_["online"])
        elif include_empty:
            instance.online = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, HandlersGetUsersPresenceResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[HandlersGetUsersPresenceResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        HandlersGetUsersPresenceResponse,
        List[HandlersGetUsersPresenceResponse],
        Dict[Any, HandlersGetUsersPresenceResponse],
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
            "away": "away",
            "busy": "busy",
            "data": "data",
            "invisible": "invisible",
            "offline": "offline",
            "online": "online",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "away": True,
            "busy": True,
            "data": True,
            "invisible": True,
            "offline": True,
            "online": True,
        }

    # endregion static methods
