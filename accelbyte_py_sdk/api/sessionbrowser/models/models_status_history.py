# justice-session-browser-service ()

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


class ModelsStatusHistory(Model):
    """Models status history (models.StatusHistory)

    Properties:
        status: (status) REQUIRED str

        time_stamp: (time_stamp) REQUIRED str
    """

    # region fields

    status: str                                                                                    # REQUIRED
    time_stamp: str                                                                                # REQUIRED

    # endregion fields

    # region with_x methods

    def with_status(self, value: str) -> ModelsStatusHistory:
        self.status = value
        return self

    def with_time_stamp(self, value: str) -> ModelsStatusHistory:
        self.time_stamp = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = str()
        if hasattr(self, "time_stamp"):
            result["time_stamp"] = str(self.time_stamp)
        elif include_empty:
            result["time_stamp"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        status: str,
        time_stamp: str,
    ) -> ModelsStatusHistory:
        instance = cls()
        instance.status = status
        instance.time_stamp = time_stamp
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsStatusHistory:
        instance = cls()
        if not dict_:
            return instance
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = str()
        if "time_stamp" in dict_ and dict_["time_stamp"] is not None:
            instance.time_stamp = str(dict_["time_stamp"])
        elif include_empty:
            instance.time_stamp = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "status": "status",
            "time_stamp": "time_stamp",
        }

    # endregion static methods
