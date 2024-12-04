# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Custom Service Manager

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


class ResponseErrorResponse(Model):
    """Response error response (response.ErrorResponse)

    Properties:
        error: (error) REQUIRED str

        error_code: (errorCode) REQUIRED int

        error_message: (errorMessage) REQUIRED str

        errors: (errors) REQUIRED str

        message_variables: (messageVariables) REQUIRED Dict[str, str]

        name: (name) REQUIRED str

        reason: (reason) REQUIRED str
    """

    # region fields

    error: str  # REQUIRED
    error_code: int  # REQUIRED
    error_message: str  # REQUIRED
    errors: str  # REQUIRED
    message_variables: Dict[str, str]  # REQUIRED
    name: str  # REQUIRED
    reason: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_error(self, value: str) -> ResponseErrorResponse:
        self.error = value
        return self

    def with_error_code(self, value: int) -> ResponseErrorResponse:
        self.error_code = value
        return self

    def with_error_message(self, value: str) -> ResponseErrorResponse:
        self.error_message = value
        return self

    def with_errors(self, value: str) -> ResponseErrorResponse:
        self.errors = value
        return self

    def with_message_variables(self, value: Dict[str, str]) -> ResponseErrorResponse:
        self.message_variables = value
        return self

    def with_name(self, value: str) -> ResponseErrorResponse:
        self.name = value
        return self

    def with_reason(self, value: str) -> ResponseErrorResponse:
        self.reason = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "error"):
            result["error"] = str(self.error)
        elif include_empty:
            result["error"] = ""
        if hasattr(self, "error_code"):
            result["errorCode"] = int(self.error_code)
        elif include_empty:
            result["errorCode"] = 0
        if hasattr(self, "error_message"):
            result["errorMessage"] = str(self.error_message)
        elif include_empty:
            result["errorMessage"] = ""
        if hasattr(self, "errors"):
            result["errors"] = str(self.errors)
        elif include_empty:
            result["errors"] = ""
        if hasattr(self, "message_variables"):
            result["messageVariables"] = {
                str(k0): str(v0) for k0, v0 in self.message_variables.items()
            }
        elif include_empty:
            result["messageVariables"] = {}
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "reason"):
            result["reason"] = str(self.reason)
        elif include_empty:
            result["reason"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        error: str,
        error_code: int,
        error_message: str,
        errors: str,
        message_variables: Dict[str, str],
        name: str,
        reason: str,
        **kwargs,
    ) -> ResponseErrorResponse:
        instance = cls()
        instance.error = error
        instance.error_code = error_code
        instance.error_message = error_message
        instance.errors = errors
        instance.message_variables = message_variables
        instance.name = name
        instance.reason = reason
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ResponseErrorResponse:
        instance = cls()
        if not dict_:
            return instance
        if "error" in dict_ and dict_["error"] is not None:
            instance.error = str(dict_["error"])
        elif include_empty:
            instance.error = ""
        if "errorCode" in dict_ and dict_["errorCode"] is not None:
            instance.error_code = int(dict_["errorCode"])
        elif include_empty:
            instance.error_code = 0
        if "errorMessage" in dict_ and dict_["errorMessage"] is not None:
            instance.error_message = str(dict_["errorMessage"])
        elif include_empty:
            instance.error_message = ""
        if "errors" in dict_ and dict_["errors"] is not None:
            instance.errors = str(dict_["errors"])
        elif include_empty:
            instance.errors = ""
        if "messageVariables" in dict_ and dict_["messageVariables"] is not None:
            instance.message_variables = {
                str(k0): str(v0) for k0, v0 in dict_["messageVariables"].items()
            }
        elif include_empty:
            instance.message_variables = {}
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "reason" in dict_ and dict_["reason"] is not None:
            instance.reason = str(dict_["reason"])
        elif include_empty:
            instance.reason = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ResponseErrorResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ResponseErrorResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ResponseErrorResponse,
        List[ResponseErrorResponse],
        Dict[Any, ResponseErrorResponse],
    ]:
        if many:
            if isinstance(any_, dict):
                return cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                return cls.create_many_from_list(any_, include_empty=include_empty)
            else:
                raise ValueError()
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "error": "error",
            "errorCode": "error_code",
            "errorMessage": "error_message",
            "errors": "errors",
            "messageVariables": "message_variables",
            "name": "name",
            "reason": "reason",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "error": True,
            "errorCode": True,
            "errorMessage": True,
            "errors": True,
            "messageVariables": True,
            "name": True,
            "reason": True,
        }

    # endregion static methods
