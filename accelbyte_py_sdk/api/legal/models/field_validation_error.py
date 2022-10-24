# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Legal Service (1.24.1)

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


class FieldValidationError(Model):
    """Field validation error (FieldValidationError)

    Properties:
        error_code: (errorCode) OPTIONAL str

        error_field: (errorField) OPTIONAL str

        error_message: (errorMessage) OPTIONAL str

        error_value: (errorValue) OPTIONAL str

        message_variables: (messageVariables) OPTIONAL Dict[str, str]
    """

    # region fields

    error_code: str  # OPTIONAL
    error_field: str  # OPTIONAL
    error_message: str  # OPTIONAL
    error_value: str  # OPTIONAL
    message_variables: Dict[str, str]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_error_code(self, value: str) -> FieldValidationError:
        self.error_code = value
        return self

    def with_error_field(self, value: str) -> FieldValidationError:
        self.error_field = value
        return self

    def with_error_message(self, value: str) -> FieldValidationError:
        self.error_message = value
        return self

    def with_error_value(self, value: str) -> FieldValidationError:
        self.error_value = value
        return self

    def with_message_variables(self, value: Dict[str, str]) -> FieldValidationError:
        self.message_variables = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "error_code"):
            result["errorCode"] = str(self.error_code)
        elif include_empty:
            result["errorCode"] = ""
        if hasattr(self, "error_field"):
            result["errorField"] = str(self.error_field)
        elif include_empty:
            result["errorField"] = ""
        if hasattr(self, "error_message"):
            result["errorMessage"] = str(self.error_message)
        elif include_empty:
            result["errorMessage"] = ""
        if hasattr(self, "error_value"):
            result["errorValue"] = str(self.error_value)
        elif include_empty:
            result["errorValue"] = ""
        if hasattr(self, "message_variables"):
            result["messageVariables"] = {
                str(k0): str(v0) for k0, v0 in self.message_variables.items()
            }
        elif include_empty:
            result["messageVariables"] = {}
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        error_code: Optional[str] = None,
        error_field: Optional[str] = None,
        error_message: Optional[str] = None,
        error_value: Optional[str] = None,
        message_variables: Optional[Dict[str, str]] = None,
    ) -> FieldValidationError:
        instance = cls()
        if error_code is not None:
            instance.error_code = error_code
        if error_field is not None:
            instance.error_field = error_field
        if error_message is not None:
            instance.error_message = error_message
        if error_value is not None:
            instance.error_value = error_value
        if message_variables is not None:
            instance.message_variables = message_variables
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> FieldValidationError:
        instance = cls()
        if not dict_:
            return instance
        if "errorCode" in dict_ and dict_["errorCode"] is not None:
            instance.error_code = str(dict_["errorCode"])
        elif include_empty:
            instance.error_code = ""
        if "errorField" in dict_ and dict_["errorField"] is not None:
            instance.error_field = str(dict_["errorField"])
        elif include_empty:
            instance.error_field = ""
        if "errorMessage" in dict_ and dict_["errorMessage"] is not None:
            instance.error_message = str(dict_["errorMessage"])
        elif include_empty:
            instance.error_message = ""
        if "errorValue" in dict_ and dict_["errorValue"] is not None:
            instance.error_value = str(dict_["errorValue"])
        elif include_empty:
            instance.error_value = ""
        if "messageVariables" in dict_ and dict_["messageVariables"] is not None:
            instance.message_variables = {
                str(k0): str(v0) for k0, v0 in dict_["messageVariables"].items()
            }
        elif include_empty:
            instance.message_variables = {}
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, FieldValidationError]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[FieldValidationError]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        FieldValidationError,
        List[FieldValidationError],
        Dict[Any, FieldValidationError],
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
            "errorCode": "error_code",
            "errorField": "error_field",
            "errorMessage": "error_message",
            "errorValue": "error_value",
            "messageVariables": "message_variables",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "errorCode": False,
            "errorField": False,
            "errorMessage": False,
            "errorValue": False,
            "messageVariables": False,
        }

    # endregion static methods
