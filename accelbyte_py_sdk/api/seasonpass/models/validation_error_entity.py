# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-seasonpass-service (1.10.0)

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

from ..models.field_validation_error import FieldValidationError


class ValidationErrorEntity(Model):
    """Validation error entity (ValidationErrorEntity)

    Properties:
        error_code: (errorCode) REQUIRED int

        error_message: (errorMessage) REQUIRED str

        errors: (errors) OPTIONAL List[FieldValidationError]
    """

    # region fields

    error_code: int                                                                                # REQUIRED
    error_message: str                                                                             # REQUIRED
    errors: List[FieldValidationError]                                                             # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_error_code(self, value: int) -> ValidationErrorEntity:
        self.error_code = value
        return self

    def with_error_message(self, value: str) -> ValidationErrorEntity:
        self.error_message = value
        return self

    def with_errors(self, value: List[FieldValidationError]) -> ValidationErrorEntity:
        self.errors = value
        return self

    # endregion with_x methods

    # region is/has methods

    # noinspection PyMethodMayBeStatic
    def is_valid(self) -> bool:
        # pylint: no-self-use
        # required checks
        if not hasattr(self, "error_code") or self.error_code is None:
            return False
        if not hasattr(self, "error_message") or self.error_message is None:
            return False
        # pattern checks
        return True

    # endregion is/has methods

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
        if hasattr(self, "errors"):
            result["errors"] = [i0.to_dict(include_empty=include_empty) for i0 in self.errors]
        elif include_empty:
            result["errors"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        error_code: int,
        error_message: str,
        errors: Optional[List[FieldValidationError]] = None,
    ) -> ValidationErrorEntity:
        instance = cls()
        instance.error_code = error_code
        instance.error_message = error_message
        if errors is not None:
            instance.errors = errors
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ValidationErrorEntity:
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
        if "errors" in dict_ and dict_["errors"] is not None:
            instance.errors = [FieldValidationError.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["errors"]]
        elif include_empty:
            instance.errors = []
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, ValidationErrorEntity]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[ValidationErrorEntity]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[ValidationErrorEntity, List[ValidationErrorEntity]]:
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
            "errorCode": "error_code",
            "errorMessage": "error_message",
            "errors": "errors",
        }

    # endregion static methods
