# Auto-generated at 2021-09-21T14:10:39.490816+08:00
# from: Justice SessionBrowser Service ()

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

from ..models.models_game_session_setting import ModelsGameSessionSetting
from ..models.models_match_making import ModelsMatchMaking
from ..models.models_server import ModelsServer


class ModelsGameSession(Model):
    """Models game session

    Properties:
        created_at: (created_at) REQUIRED str

        game_session_setting: (game_session_setting) REQUIRED ModelsGameSessionSetting

        game_version: (game_version) REQUIRED str

        joinable: (joinable) REQUIRED bool

        match: (match) REQUIRED ModelsMatchMaking

        namespace: (namespace) REQUIRED str

        server: (server) REQUIRED ModelsServer

        session_id: (session_id) REQUIRED str

        session_type: (session_type) REQUIRED str

        user_id: (user_id) REQUIRED str

        username: (username) REQUIRED str
    """

    # region fields

    created_at: str                                                                                # REQUIRED
    game_session_setting: ModelsGameSessionSetting                                                 # REQUIRED
    game_version: str                                                                              # REQUIRED
    joinable: bool                                                                                 # REQUIRED
    match: ModelsMatchMaking                                                                       # REQUIRED
    namespace: str                                                                                 # REQUIRED
    server: ModelsServer                                                                           # REQUIRED
    session_id: str                                                                                # REQUIRED
    session_type: str                                                                              # REQUIRED
    user_id: str                                                                                   # REQUIRED
    username: str                                                                                  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> ModelsGameSession:
        self.created_at = value
        return self

    def with_game_session_setting(self, value: ModelsGameSessionSetting) -> ModelsGameSession:
        self.game_session_setting = value
        return self

    def with_game_version(self, value: str) -> ModelsGameSession:
        self.game_version = value
        return self

    def with_joinable(self, value: bool) -> ModelsGameSession:
        self.joinable = value
        return self

    def with_match(self, value: ModelsMatchMaking) -> ModelsGameSession:
        self.match = value
        return self

    def with_namespace(self, value: str) -> ModelsGameSession:
        self.namespace = value
        return self

    def with_server(self, value: ModelsServer) -> ModelsGameSession:
        self.server = value
        return self

    def with_session_id(self, value: str) -> ModelsGameSession:
        self.session_id = value
        return self

    def with_session_type(self, value: str) -> ModelsGameSession:
        self.session_type = value
        return self

    def with_user_id(self, value: str) -> ModelsGameSession:
        self.user_id = value
        return self

    def with_username(self, value: str) -> ModelsGameSession:
        self.username = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "created_at") and self.created_at:
            result["created_at"] = str(self.created_at)
        elif include_empty:
            result["created_at"] = str()
        if hasattr(self, "game_session_setting") and self.game_session_setting:
            result["game_session_setting"] = self.game_session_setting.to_dict(include_empty=include_empty)
        elif include_empty:
            result["game_session_setting"] = ModelsGameSessionSetting()
        if hasattr(self, "game_version") and self.game_version:
            result["game_version"] = str(self.game_version)
        elif include_empty:
            result["game_version"] = str()
        if hasattr(self, "joinable") and self.joinable:
            result["joinable"] = bool(self.joinable)
        elif include_empty:
            result["joinable"] = bool()
        if hasattr(self, "match") and self.match:
            result["match"] = self.match.to_dict(include_empty=include_empty)
        elif include_empty:
            result["match"] = ModelsMatchMaking()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "server") and self.server:
            result["server"] = self.server.to_dict(include_empty=include_empty)
        elif include_empty:
            result["server"] = ModelsServer()
        if hasattr(self, "session_id") and self.session_id:
            result["session_id"] = str(self.session_id)
        elif include_empty:
            result["session_id"] = str()
        if hasattr(self, "session_type") and self.session_type:
            result["session_type"] = str(self.session_type)
        elif include_empty:
            result["session_type"] = str()
        if hasattr(self, "user_id") and self.user_id:
            result["user_id"] = str(self.user_id)
        elif include_empty:
            result["user_id"] = str()
        if hasattr(self, "username") and self.username:
            result["username"] = str(self.username)
        elif include_empty:
            result["username"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: str,
        game_session_setting: ModelsGameSessionSetting,
        game_version: str,
        joinable: bool,
        match: ModelsMatchMaking,
        namespace: str,
        server: ModelsServer,
        session_id: str,
        session_type: str,
        user_id: str,
        username: str,
    ) -> ModelsGameSession:
        instance = cls()
        instance.created_at = created_at
        instance.game_session_setting = game_session_setting
        instance.game_version = game_version
        instance.joinable = joinable
        instance.match = match
        instance.namespace = namespace
        instance.server = server
        instance.session_id = session_id
        instance.session_type = session_type
        instance.user_id = user_id
        instance.username = username
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsGameSession:
        instance = cls()
        if "created_at" in dict_ and dict_["created_at"] is not None:
            instance.created_at = str(dict_["created_at"])
        elif include_empty:
            instance.created_at = str()
        if "game_session_setting" in dict_ and dict_["game_session_setting"] is not None:
            instance.game_session_setting = ModelsGameSessionSetting.create_from_dict(dict_["game_session_setting"], include_empty=include_empty)
        elif include_empty:
            instance.game_session_setting = ModelsGameSessionSetting()
        if "game_version" in dict_ and dict_["game_version"] is not None:
            instance.game_version = str(dict_["game_version"])
        elif include_empty:
            instance.game_version = str()
        if "joinable" in dict_ and dict_["joinable"] is not None:
            instance.joinable = bool(dict_["joinable"])
        elif include_empty:
            instance.joinable = bool()
        if "match" in dict_ and dict_["match"] is not None:
            instance.match = ModelsMatchMaking.create_from_dict(dict_["match"], include_empty=include_empty)
        elif include_empty:
            instance.match = ModelsMatchMaking()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "server" in dict_ and dict_["server"] is not None:
            instance.server = ModelsServer.create_from_dict(dict_["server"], include_empty=include_empty)
        elif include_empty:
            instance.server = ModelsServer()
        if "session_id" in dict_ and dict_["session_id"] is not None:
            instance.session_id = str(dict_["session_id"])
        elif include_empty:
            instance.session_id = str()
        if "session_type" in dict_ and dict_["session_type"] is not None:
            instance.session_type = str(dict_["session_type"])
        elif include_empty:
            instance.session_type = str()
        if "user_id" in dict_ and dict_["user_id"] is not None:
            instance.user_id = str(dict_["user_id"])
        elif include_empty:
            instance.user_id = str()
        if "username" in dict_ and dict_["username"] is not None:
            instance.username = str(dict_["username"])
        elif include_empty:
            instance.username = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "created_at": "created_at",
            "game_session_setting": "game_session_setting",
            "game_version": "game_version",
            "joinable": "joinable",
            "match": "match",
            "namespace": "namespace",
            "server": "server",
            "session_id": "session_id",
            "session_type": "session_type",
            "user_id": "user_id",
            "username": "username",
        }

    # endregion static methods
