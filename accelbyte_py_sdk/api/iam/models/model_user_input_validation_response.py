# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Iam Service

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


class ModelUserInputValidationResponse(Model):
    """Model user input validation response (model.UserInputValidationResponse)

    Properties:
        valid: (valid) REQUIRED bool

        message: (message) OPTIONAL str
    """

    # region fields

    valid: bool  # REQUIRED
    message: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_valid(self, value: bool) -> ModelUserInputValidationResponse:
        self.valid = value
        return self

    def with_message(self, value: str) -> ModelUserInputValidationResponse:
        self.message = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "valid"):
            result["valid"] = bool(self.valid)
        elif include_empty:
            result["valid"] = False
        if hasattr(self, "message"):
            result["message"] = str(self.message)
        elif include_empty:
            result["message"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, valid: bool, message: Optional[str] = None, **kwargs
    ) -> ModelUserInputValidationResponse:
        instance = cls()
        instance.valid = valid
        if message is not None:
            instance.message = message
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelUserInputValidationResponse:
        instance = cls()
        if not dict_:
            return instance
        if "valid" in dict_ and dict_["valid"] is not None:
            instance.valid = bool(dict_["valid"])
        elif include_empty:
            instance.valid = False
        if "message" in dict_ and dict_["message"] is not None:
            instance.message = str(dict_["message"])
        elif include_empty:
            instance.message = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelUserInputValidationResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelUserInputValidationResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelUserInputValidationResponse,
        List[ModelUserInputValidationResponse],
        Dict[Any, ModelUserInputValidationResponse],
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
            "valid": "valid",
            "message": "message",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "valid": True,
            "message": False,
        }

    # endregion static methods
