# Justice QoS Manager Service ()

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

from ..models.models_server import ModelsServer


class ModelsListServerResponse(Model):
    """Models list server response (models.ListServerResponse)

    Properties:
        servers: (servers) REQUIRED List[ModelsServer]
    """

    # region fields

    servers: List[ModelsServer]                                                                    # REQUIRED

    # endregion fields

    # region with_x methods

    def with_servers(self, value: List[ModelsServer]) -> ModelsListServerResponse:
        self.servers = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "servers"):
            result["servers"] = [i0.to_dict(include_empty=include_empty) for i0 in self.servers]
        elif include_empty:
            result["servers"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        servers: List[ModelsServer],
    ) -> ModelsListServerResponse:
        instance = cls()
        instance.servers = servers
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsListServerResponse:
        instance = cls()
        if not dict_:
            return instance
        if "servers" in dict_ and dict_["servers"] is not None:
            instance.servers = [ModelsServer.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["servers"]]
        elif include_empty:
            instance.servers = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "servers": "servers",
        }

    # endregion static methods