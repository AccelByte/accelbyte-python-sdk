# Auto-generated at 2021-10-21T08:52:24.251905+08:00
# from: Justice dsmc Service (2.6.0)

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


class ModelsCreatePortRequest(Model):
    """Models create port request (models.CreatePortRequest)

    Properties:
        port: (port) REQUIRED int
    """

    # region fields

    port: int                                                                                      # REQUIRED

    # endregion fields

    # region with_x methods

    def with_port(self, value: int) -> ModelsCreatePortRequest:
        self.port = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "port") and self.port:
            result["port"] = int(self.port)
        elif include_empty:
            result["port"] = int()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        port: int,
    ) -> ModelsCreatePortRequest:
        instance = cls()
        instance.port = port
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsCreatePortRequest:
        instance = cls()
        if not dict_:
            return instance
        if "port" in dict_ and dict_["port"] is not None:
            instance.port = int(dict_["port"])
        elif include_empty:
            instance.port = int()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "port": "port",
        }

    # endregion static methods
