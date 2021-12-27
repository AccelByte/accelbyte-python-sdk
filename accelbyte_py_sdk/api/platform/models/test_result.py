# justice-platform-service (3.39.0)

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


class TestResult(Model):
    """Test result (TestResult)

    Properties:
        success: (success) REQUIRED bool

        msg: (msg) OPTIONAL str
    """

    # region fields

    success: bool                                                                                  # REQUIRED
    msg: str                                                                                       # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_success(self, value: bool) -> TestResult:
        self.success = value
        return self

    def with_msg(self, value: str) -> TestResult:
        self.msg = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "success"):
            result["success"] = bool(self.success)
        elif include_empty:
            result["success"] = bool()
        if hasattr(self, "msg"):
            result["msg"] = str(self.msg)
        elif include_empty:
            result["msg"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        success: bool,
        msg: Optional[str] = None,
    ) -> TestResult:
        instance = cls()
        instance.success = success
        if msg is not None:
            instance.msg = msg
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> TestResult:
        instance = cls()
        if not dict_:
            return instance
        if "success" in dict_ and dict_["success"] is not None:
            instance.success = bool(dict_["success"])
        elif include_empty:
            instance.success = bool()
        if "msg" in dict_ and dict_["msg"] is not None:
            instance.msg = str(dict_["msg"])
        elif include_empty:
            instance.msg = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "success": "success",
            "msg": "msg",
        }

    # endregion static methods
