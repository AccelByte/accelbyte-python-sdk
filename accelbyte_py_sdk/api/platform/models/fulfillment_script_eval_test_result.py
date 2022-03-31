# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-platform-service (4.5.1)

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
import re
from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import Model


class FulfillmentScriptEvalTestResult(Model):
    """Fulfillment script eval test result (FulfillmentScriptEvalTestResult)

    Properties:
        error_stack_trace: (errorStackTrace) OPTIONAL str

        result: (result) OPTIONAL Dict[str, Any]
    """

    # region fields

    error_stack_trace: str                                                                         # OPTIONAL
    result: Dict[str, Any]                                                                         # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_error_stack_trace(self, value: str) -> FulfillmentScriptEvalTestResult:
        self.error_stack_trace = value
        return self

    def with_result(self, value: Dict[str, Any]) -> FulfillmentScriptEvalTestResult:
        self.result = value
        return self

    # endregion with_x methods

    # region is/has methods

    # noinspection PyMethodMayBeStatic
    def is_valid(self) -> bool:
        # pylint: disable=no-self-use
        # required checks
        # enum checks
        # pattern checks
        return True

    # endregion is/has methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "error_stack_trace"):
            result["errorStackTrace"] = str(self.error_stack_trace)
        elif include_empty:
            result["errorStackTrace"] = str()
        if hasattr(self, "result"):
            result["result"] = {str(k0): v0 for k0, v0 in self.result.items()}
        elif include_empty:
            result["result"] = {}
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        error_stack_trace: Optional[str] = None,
        result: Optional[Dict[str, Any]] = None,
    ) -> FulfillmentScriptEvalTestResult:
        instance = cls()
        if error_stack_trace is not None:
            instance.error_stack_trace = error_stack_trace
        if result is not None:
            instance.result = result
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> FulfillmentScriptEvalTestResult:
        instance = cls()
        if not dict_:
            return instance
        if "errorStackTrace" in dict_ and dict_["errorStackTrace"] is not None:
            instance.error_stack_trace = str(dict_["errorStackTrace"])
        elif include_empty:
            instance.error_stack_trace = str()
        if "result" in dict_ and dict_["result"] is not None:
            instance.result = {str(k0): v0 for k0, v0 in dict_["result"].items()}
        elif include_empty:
            instance.result = {}
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, FulfillmentScriptEvalTestResult]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[FulfillmentScriptEvalTestResult]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[FulfillmentScriptEvalTestResult, List[FulfillmentScriptEvalTestResult]]:
        if many:
            if isinstance(any_, dict):
                cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                cls.create_many_from_list(any_, include_empty=include_empty)
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "errorStackTrace": "error_stack_trace",
            "result": "result",
        }

    # endregion static methods
