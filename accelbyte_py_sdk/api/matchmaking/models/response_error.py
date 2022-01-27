# Justice Matchmaking Service (2.13.1)

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


class ResponseError(Model):
    """Response error (response.Error)

    Properties:
        error_code: (ErrorCode) REQUIRED int

        error_message: (ErrorMessage) REQUIRED str
    """

    # region fields

    error_code: int                                                                                # REQUIRED
    error_message: str                                                                             # REQUIRED

    # endregion fields

    # region with_x methods

    def with_error_code(self, value: int) -> ResponseError:
        self.error_code = value
        return self

    def with_error_message(self, value: str) -> ResponseError:
        self.error_message = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "error_code"):
            result["ErrorCode"] = int(self.error_code)
        elif include_empty:
            result["ErrorCode"] = int()
        if hasattr(self, "error_message"):
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
    ) -> ResponseError:
        instance = cls()
        instance.error_code = error_code
        instance.error_message = error_message
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ResponseError:
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

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, ResponseError]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[ResponseError]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[ResponseError, List[ResponseError]]:
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
            "ErrorCode": "error_code",
            "ErrorMessage": "error_message",
        }

    # endregion static methods
