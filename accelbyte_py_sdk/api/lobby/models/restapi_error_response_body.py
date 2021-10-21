# justice-lobby-server (1.33.0)

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


class RestapiErrorResponseBody(Model):
    """Restapi error response body (restapi.ErrorResponseBody)

    Properties:
        error_code: (ErrorCode) REQUIRED int

        error_message: (ErrorMessage) REQUIRED str
    """

    # region fields

    error_code: int                                                                                # REQUIRED
    error_message: str                                                                             # REQUIRED

    # endregion fields

    # region with_x methods

    def with_error_code(self, value: int) -> RestapiErrorResponseBody:
        self.error_code = value
        return self

    def with_error_message(self, value: str) -> RestapiErrorResponseBody:
        self.error_message = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "error_code") and self.error_code:
            result["ErrorCode"] = int(self.error_code)
        elif include_empty:
            result["ErrorCode"] = int()
        if hasattr(self, "error_message") and self.error_message:
            result["ErrorMessage"] = str(self.error_message)
        elif include_empty:
            result["ErrorMessage"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        error_code: int,
        error_message: str,
    ) -> RestapiErrorResponseBody:
        instance = cls()
        instance.error_code = error_code
        instance.error_message = error_message
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> RestapiErrorResponseBody:
        instance = cls()
        if not dict_:
            return instance
        if "ErrorCode" in dict_ and dict_["ErrorCode"] is not None:
            instance.error_code = int(dict_["ErrorCode"])
        elif include_empty:
            instance.error_code = int()
        if "ErrorMessage" in dict_ and dict_["ErrorMessage"] is not None:
            instance.error_message = str(dict_["ErrorMessage"])
        elif include_empty:
            instance.error_message = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "ErrorCode": "error_code",
            "ErrorMessage": "error_message",
        }

    # endregion static methods
