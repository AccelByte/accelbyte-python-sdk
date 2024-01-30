# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Fleet Commander

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
        error_message: (errorMessage) REQUIRED str

        error_type: (errorType) REQUIRED str

        trace_id: (traceId) REQUIRED str
    """

    # region fields

    error_message: str  # REQUIRED
    error_type: str  # REQUIRED
    trace_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_error_message(self, value: str) -> ResponseErrorResponse:
        self.error_message = value
        return self

    def with_error_type(self, value: str) -> ResponseErrorResponse:
        self.error_type = value
        return self

    def with_trace_id(self, value: str) -> ResponseErrorResponse:
        self.trace_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "error_message"):
            result["errorMessage"] = str(self.error_message)
        elif include_empty:
            result["errorMessage"] = ""
        if hasattr(self, "error_type"):
            result["errorType"] = str(self.error_type)
        elif include_empty:
            result["errorType"] = ""
        if hasattr(self, "trace_id"):
            result["traceId"] = str(self.trace_id)
        elif include_empty:
            result["traceId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, error_message: str, error_type: str, trace_id: str, **kwargs
    ) -> ResponseErrorResponse:
        instance = cls()
        instance.error_message = error_message
        instance.error_type = error_type
        instance.trace_id = trace_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ResponseErrorResponse:
        instance = cls()
        if not dict_:
            return instance
        if "errorMessage" in dict_ and dict_["errorMessage"] is not None:
            instance.error_message = str(dict_["errorMessage"])
        elif include_empty:
            instance.error_message = ""
        if "errorType" in dict_ and dict_["errorType"] is not None:
            instance.error_type = str(dict_["errorType"])
        elif include_empty:
            instance.error_type = ""
        if "traceId" in dict_ and dict_["traceId"] is not None:
            instance.trace_id = str(dict_["traceId"])
        elif include_empty:
            instance.trace_id = ""
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
            "errorMessage": "error_message",
            "errorType": "error_type",
            "traceId": "trace_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "errorMessage": True,
            "errorType": True,
            "traceId": True,
        }

    # endregion static methods
