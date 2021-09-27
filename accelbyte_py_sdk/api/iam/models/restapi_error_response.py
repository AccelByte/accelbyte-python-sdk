# Auto-generated at 2021-09-27T17:12:31.712498+08:00
# from: Justice Iam Service (4.1.0)

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


class RestapiErrorResponse(Model):
    """Restapi error response

    Properties:
        code: (Code) OPTIONAL int

        message: (Message) REQUIRED str
    """

    # region fields

    code: int                                                                                      # OPTIONAL
    message: str                                                                                   # REQUIRED

    # endregion fields

    # region with_x methods

    def with_code(self, value: int) -> RestapiErrorResponse:
        self.code = value
        return self

    def with_message(self, value: str) -> RestapiErrorResponse:
        self.message = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "code") and self.code:
            result["Code"] = int(self.code)
        elif include_empty:
            result["Code"] = int()
        if hasattr(self, "message") and self.message:
            result["Message"] = str(self.message)
        elif include_empty:
            result["Message"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        message: str,
        code: Optional[int] = None,
    ) -> RestapiErrorResponse:
        instance = cls()
        instance.message = message
        if code is not None:
            instance.code = code
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> RestapiErrorResponse:
        instance = cls()
        if not dict_:
            return instance
        if "Code" in dict_ and dict_["Code"] is not None:
            instance.code = int(dict_["Code"])
        elif include_empty:
            instance.code = int()
        if "Message" in dict_ and dict_["Message"] is not None:
            instance.message = str(dict_["Message"])
        elif include_empty:
            instance.message = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "Code": "code",
            "Message": "message",
        }

    # endregion static methods
