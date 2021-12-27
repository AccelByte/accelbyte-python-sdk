# justice-social-service (1.22.0)

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


class ErrorEntity(Model):
    """Error entity (ErrorEntity)

    Properties:
        error_code: (errorCode) REQUIRED int

        error_message: (errorMessage) REQUIRED str

        dev_stack_trace: (devStackTrace) OPTIONAL str

        message_variables: (messageVariables) OPTIONAL Dict[str, str]
    """

    # region fields

    error_code: int                                                                                # REQUIRED
    error_message: str                                                                             # REQUIRED
    dev_stack_trace: str                                                                           # OPTIONAL
    message_variables: Dict[str, str]                                                              # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_error_code(self, value: int) -> ErrorEntity:
        self.error_code = value
        return self

    def with_error_message(self, value: str) -> ErrorEntity:
        self.error_message = value
        return self

    def with_dev_stack_trace(self, value: str) -> ErrorEntity:
        self.dev_stack_trace = value
        return self

    def with_message_variables(self, value: Dict[str, str]) -> ErrorEntity:
        self.message_variables = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "error_code"):
            result["errorCode"] = int(self.error_code)
        elif include_empty:
            result["errorCode"] = int()
        if hasattr(self, "error_message"):
            result["errorMessage"] = str(self.error_message)
        elif include_empty:
            result["errorMessage"] = str()
        if hasattr(self, "dev_stack_trace"):
            result["devStackTrace"] = str(self.dev_stack_trace)
        elif include_empty:
            result["devStackTrace"] = str()
        if hasattr(self, "message_variables"):
            result["messageVariables"] = {str(k0): str(v0) for k0, v0 in self.message_variables.items()}
        elif include_empty:
            result["messageVariables"] = {}
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        error_code: int,
        error_message: str,
        dev_stack_trace: Optional[str] = None,
        message_variables: Optional[Dict[str, str]] = None,
    ) -> ErrorEntity:
        instance = cls()
        instance.error_code = error_code
        instance.error_message = error_message
        if dev_stack_trace is not None:
            instance.dev_stack_trace = dev_stack_trace
        if message_variables is not None:
            instance.message_variables = message_variables
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ErrorEntity:
        instance = cls()
        if not dict_:
            return instance
        if "errorCode" in dict_ and dict_["errorCode"] is not None:
            instance.error_code = int(dict_["errorCode"])
        elif include_empty:
            instance.error_code = int()
        if "errorMessage" in dict_ and dict_["errorMessage"] is not None:
            instance.error_message = str(dict_["errorMessage"])
        elif include_empty:
            instance.error_message = str()
        if "devStackTrace" in dict_ and dict_["devStackTrace"] is not None:
            instance.dev_stack_trace = str(dict_["devStackTrace"])
        elif include_empty:
            instance.dev_stack_trace = str()
        if "messageVariables" in dict_ and dict_["messageVariables"] is not None:
            instance.message_variables = {str(k0): str(v0) for k0, v0 in dict_["messageVariables"].items()}
        elif include_empty:
            instance.message_variables = {}
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "errorCode": "error_code",
            "errorMessage": "error_message",
            "devStackTrace": "dev_stack_trace",
            "messageVariables": "message_variables",
        }

    # endregion static methods
