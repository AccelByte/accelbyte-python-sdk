# justice-session-browser-service ()

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


class ModelsCreateSessionRequest(Model):
    """Models create session request (models.CreateSessionRequest)

    Properties:
        game_session_setting: (game_session_setting) REQUIRED ModelsGameSessionSetting

        game_version: (game_version) REQUIRED str

        namespace: (namespace) REQUIRED str

        session_type: (session_type) REQUIRED str

        username: (username) REQUIRED str
    """

    # region fields

    game_session_setting: ModelsGameSessionSetting                                                 # REQUIRED
    game_version: str                                                                              # REQUIRED
    namespace: str                                                                                 # REQUIRED
    session_type: str                                                                              # REQUIRED
    username: str                                                                                  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_game_session_setting(self, value: ModelsGameSessionSetting) -> ModelsCreateSessionRequest:
        self.game_session_setting = value
        return self

    def with_game_version(self, value: str) -> ModelsCreateSessionRequest:
        self.game_version = value
        return self

    def with_namespace(self, value: str) -> ModelsCreateSessionRequest:
        self.namespace = value
        return self

    def with_session_type(self, value: str) -> ModelsCreateSessionRequest:
        self.session_type = value
        return self

    def with_username(self, value: str) -> ModelsCreateSessionRequest:
        self.username = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "game_session_setting") and self.game_session_setting:
            result["game_session_setting"] = self.game_session_setting.to_dict(include_empty=include_empty)
        elif include_empty:
            result["game_session_setting"] = ModelsGameSessionSetting()
        if hasattr(self, "game_version") and self.game_version:
            result["game_version"] = str(self.game_version)
        elif include_empty:
            result["game_version"] = str()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "session_type") and self.session_type:
            result["session_type"] = str(self.session_type)
        elif include_empty:
            result["session_type"] = str()
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
        game_session_setting: ModelsGameSessionSetting,
        game_version: str,
        namespace: str,
        session_type: str,
        username: str,
    ) -> ModelsCreateSessionRequest:
        instance = cls()
        instance.game_session_setting = game_session_setting
        instance.game_version = game_version
        instance.namespace = namespace
        instance.session_type = session_type
        instance.username = username
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsCreateSessionRequest:
        instance = cls()
        if not dict_:
            return instance
        if "game_session_setting" in dict_ and dict_["game_session_setting"] is not None:
            instance.game_session_setting = ModelsGameSessionSetting.create_from_dict(dict_["game_session_setting"], include_empty=include_empty)
        elif include_empty:
            instance.game_session_setting = ModelsGameSessionSetting()
        if "game_version" in dict_ and dict_["game_version"] is not None:
            instance.game_version = str(dict_["game_version"])
        elif include_empty:
            instance.game_version = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "session_type" in dict_ and dict_["session_type"] is not None:
            instance.session_type = str(dict_["session_type"])
        elif include_empty:
            instance.session_type = str()
        if "username" in dict_ and dict_["username"] is not None:
            instance.username = str(dict_["username"])
        elif include_empty:
            instance.username = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "game_session_setting": "game_session_setting",
            "game_version": "game_version",
            "namespace": "namespace",
            "session_type": "session_type",
            "username": "username",
        }

    # endregion static methods