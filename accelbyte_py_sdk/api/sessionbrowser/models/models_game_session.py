# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Session Browser Service ()

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
    """Models game session (models.GameSession)

    Properties:
        all_players: (all_players) REQUIRED List[str]

        created_at: (created_at) REQUIRED str

        game_session_setting: (game_session_setting) REQUIRED ModelsGameSessionSetting

        game_version: (game_version) REQUIRED str

        joinable: (joinable) REQUIRED bool

        match: (match) REQUIRED ModelsMatchMaking

        namespace: (namespace) REQUIRED str

        players: (players) REQUIRED List[str]

        server: (server) REQUIRED ModelsServer

        session_id: (session_id) REQUIRED str

        session_type: (session_type) REQUIRED str

        spectators: (spectators) REQUIRED List[str]

        user_id: (user_id) REQUIRED str

        username: (username) REQUIRED str
    """

    # region fields

    all_players: List[str]  # REQUIRED
    created_at: str  # REQUIRED
    game_session_setting: ModelsGameSessionSetting  # REQUIRED
    game_version: str  # REQUIRED
    joinable: bool  # REQUIRED
    match: ModelsMatchMaking  # REQUIRED
    namespace: str  # REQUIRED
    players: List[str]  # REQUIRED
    server: ModelsServer  # REQUIRED
    session_id: str  # REQUIRED
    session_type: str  # REQUIRED
    spectators: List[str]  # REQUIRED
    user_id: str  # REQUIRED
    username: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_all_players(self, value: List[str]) -> ModelsGameSession:
        self.all_players = value
        return self

    def with_created_at(self, value: str) -> ModelsGameSession:
        self.created_at = value
        return self

    def with_game_session_setting(
        self, value: ModelsGameSessionSetting
    ) -> ModelsGameSession:
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

    def with_players(self, value: List[str]) -> ModelsGameSession:
        self.players = value
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

    def with_spectators(self, value: List[str]) -> ModelsGameSession:
        self.spectators = value
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
        result: dict = {}
        if hasattr(self, "all_players"):
            result["all_players"] = [str(i0) for i0 in self.all_players]
        elif include_empty:
            result["all_players"] = []
        if hasattr(self, "created_at"):
            result["created_at"] = str(self.created_at)
        elif include_empty:
            result["created_at"] = ""
        if hasattr(self, "game_session_setting"):
            result["game_session_setting"] = self.game_session_setting.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["game_session_setting"] = ModelsGameSessionSetting()
        if hasattr(self, "game_version"):
            result["game_version"] = str(self.game_version)
        elif include_empty:
            result["game_version"] = ""
        if hasattr(self, "joinable"):
            result["joinable"] = bool(self.joinable)
        elif include_empty:
            result["joinable"] = False
        if hasattr(self, "match"):
            result["match"] = self.match.to_dict(include_empty=include_empty)
        elif include_empty:
            result["match"] = ModelsMatchMaking()
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "players"):
            result["players"] = [str(i0) for i0 in self.players]
        elif include_empty:
            result["players"] = []
        if hasattr(self, "server"):
            result["server"] = self.server.to_dict(include_empty=include_empty)
        elif include_empty:
            result["server"] = ModelsServer()
        if hasattr(self, "session_id"):
            result["session_id"] = str(self.session_id)
        elif include_empty:
            result["session_id"] = ""
        if hasattr(self, "session_type"):
            result["session_type"] = str(self.session_type)
        elif include_empty:
            result["session_type"] = ""
        if hasattr(self, "spectators"):
            result["spectators"] = [str(i0) for i0 in self.spectators]
        elif include_empty:
            result["spectators"] = []
        if hasattr(self, "user_id"):
            result["user_id"] = str(self.user_id)
        elif include_empty:
            result["user_id"] = ""
        if hasattr(self, "username"):
            result["username"] = str(self.username)
        elif include_empty:
            result["username"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        all_players: List[str],
        created_at: str,
        game_session_setting: ModelsGameSessionSetting,
        game_version: str,
        joinable: bool,
        match: ModelsMatchMaking,
        namespace: str,
        players: List[str],
        server: ModelsServer,
        session_id: str,
        session_type: str,
        spectators: List[str],
        user_id: str,
        username: str,
    ) -> ModelsGameSession:
        instance = cls()
        instance.all_players = all_players
        instance.created_at = created_at
        instance.game_session_setting = game_session_setting
        instance.game_version = game_version
        instance.joinable = joinable
        instance.match = match
        instance.namespace = namespace
        instance.players = players
        instance.server = server
        instance.session_id = session_id
        instance.session_type = session_type
        instance.spectators = spectators
        instance.user_id = user_id
        instance.username = username
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsGameSession:
        instance = cls()
        if not dict_:
            return instance
        if "all_players" in dict_ and dict_["all_players"] is not None:
            instance.all_players = [str(i0) for i0 in dict_["all_players"]]
        elif include_empty:
            instance.all_players = []
        if "created_at" in dict_ and dict_["created_at"] is not None:
            instance.created_at = str(dict_["created_at"])
        elif include_empty:
            instance.created_at = ""
        if (
            "game_session_setting" in dict_
            and dict_["game_session_setting"] is not None
        ):
            instance.game_session_setting = ModelsGameSessionSetting.create_from_dict(
                dict_["game_session_setting"], include_empty=include_empty
            )
        elif include_empty:
            instance.game_session_setting = ModelsGameSessionSetting()
        if "game_version" in dict_ and dict_["game_version"] is not None:
            instance.game_version = str(dict_["game_version"])
        elif include_empty:
            instance.game_version = ""
        if "joinable" in dict_ and dict_["joinable"] is not None:
            instance.joinable = bool(dict_["joinable"])
        elif include_empty:
            instance.joinable = False
        if "match" in dict_ and dict_["match"] is not None:
            instance.match = ModelsMatchMaking.create_from_dict(
                dict_["match"], include_empty=include_empty
            )
        elif include_empty:
            instance.match = ModelsMatchMaking()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "players" in dict_ and dict_["players"] is not None:
            instance.players = [str(i0) for i0 in dict_["players"]]
        elif include_empty:
            instance.players = []
        if "server" in dict_ and dict_["server"] is not None:
            instance.server = ModelsServer.create_from_dict(
                dict_["server"], include_empty=include_empty
            )
        elif include_empty:
            instance.server = ModelsServer()
        if "session_id" in dict_ and dict_["session_id"] is not None:
            instance.session_id = str(dict_["session_id"])
        elif include_empty:
            instance.session_id = ""
        if "session_type" in dict_ and dict_["session_type"] is not None:
            instance.session_type = str(dict_["session_type"])
        elif include_empty:
            instance.session_type = ""
        if "spectators" in dict_ and dict_["spectators"] is not None:
            instance.spectators = [str(i0) for i0 in dict_["spectators"]]
        elif include_empty:
            instance.spectators = []
        if "user_id" in dict_ and dict_["user_id"] is not None:
            instance.user_id = str(dict_["user_id"])
        elif include_empty:
            instance.user_id = ""
        if "username" in dict_ and dict_["username"] is not None:
            instance.username = str(dict_["username"])
        elif include_empty:
            instance.username = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsGameSession]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsGameSession]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsGameSession, List[ModelsGameSession], Dict[Any, ModelsGameSession]
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
            "all_players": "all_players",
            "created_at": "created_at",
            "game_session_setting": "game_session_setting",
            "game_version": "game_version",
            "joinable": "joinable",
            "match": "match",
            "namespace": "namespace",
            "players": "players",
            "server": "server",
            "session_id": "session_id",
            "session_type": "session_type",
            "spectators": "spectators",
            "user_id": "user_id",
            "username": "username",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "all_players": True,
            "created_at": True,
            "game_session_setting": True,
            "game_version": True,
            "joinable": True,
            "match": True,
            "namespace": True,
            "players": True,
            "server": True,
            "session_id": True,
            "session_type": True,
            "spectators": True,
            "user_id": True,
            "username": True,
        }

    # endregion static methods
