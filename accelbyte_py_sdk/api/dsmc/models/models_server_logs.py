# justice-dsm-controller-service (2.11.0)

# template file: justice_py_sdk_codegen/__main__.py

# Copyright (c) 2018 - 2022 AccelByte Inc. All Rights Reserved.
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


class ModelsServerLogs(Model):
    """Models server logs (models.ServerLogs)

    Properties:
        logs: (logs) REQUIRED str
    """

    # region fields

    logs: str                                                                                      # REQUIRED

    # endregion fields

    # region with_x methods

    def with_logs(self, value: str) -> ModelsServerLogs:
        self.logs = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "logs"):
            result["logs"] = str(self.logs)
        elif include_empty:
            result["logs"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        logs: str,
    ) -> ModelsServerLogs:
        instance = cls()
        instance.logs = logs
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsServerLogs:
        instance = cls()
        if not dict_:
            return instance
        if "logs" in dict_ and dict_["logs"] is not None:
            instance.logs = str(dict_["logs"])
        elif include_empty:
            instance.logs = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "logs": "logs",
        }

    # endregion static methods
