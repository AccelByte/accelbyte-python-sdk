# justice-ds-log-manager-service (1.4.0)

# template file: justice_py_sdk_codegen/__main__.py

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

from ..models.models_match_result import ModelsMatchResult
from ..models.models_server import ModelsServer


class ModelsNotifPayloadServerStatusChange(Model):
    """Models notif payload server status change (models.NotifPayloadServerStatusChange)

    Properties:
        match: (match) REQUIRED ModelsMatchResult

        server: (server) REQUIRED ModelsServer
    """

    # region fields

    match: ModelsMatchResult                                                                       # REQUIRED
    server: ModelsServer                                                                           # REQUIRED

    # endregion fields

    # region with_x methods

    def with_match(self, value: ModelsMatchResult) -> ModelsNotifPayloadServerStatusChange:
        self.match = value
        return self

    def with_server(self, value: ModelsServer) -> ModelsNotifPayloadServerStatusChange:
        self.server = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "match"):
            result["match"] = self.match.to_dict(include_empty=include_empty)
        elif include_empty:
            result["match"] = ModelsMatchResult()
        if hasattr(self, "server"):
            result["server"] = self.server.to_dict(include_empty=include_empty)
        elif include_empty:
            result["server"] = ModelsServer()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        match: ModelsMatchResult,
        server: ModelsServer,
    ) -> ModelsNotifPayloadServerStatusChange:
        instance = cls()
        instance.match = match
        instance.server = server
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsNotifPayloadServerStatusChange:
        instance = cls()
        if not dict_:
            return instance
        if "match" in dict_ and dict_["match"] is not None:
            instance.match = ModelsMatchResult.create_from_dict(dict_["match"], include_empty=include_empty)
        elif include_empty:
            instance.match = ModelsMatchResult()
        if "server" in dict_ and dict_["server"] is not None:
            instance.server = ModelsServer.create_from_dict(dict_["server"], include_empty=include_empty)
        elif include_empty:
            instance.server = ModelsServer()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "match": "match",
            "server": "server",
        }

    # endregion static methods
