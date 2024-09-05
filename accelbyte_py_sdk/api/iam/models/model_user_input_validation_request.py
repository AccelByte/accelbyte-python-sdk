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


class ModelUserInputValidationRequest(Model):
    """Model user input validation request (model.UserInputValidationRequest)

    Properties:
        display_name: (displayName) OPTIONAL str

        password: (password) OPTIONAL str

        unique_display_name: (uniqueDisplayName) OPTIONAL str

        username: (username) OPTIONAL str
    """

    # region fields

    display_name: str  # OPTIONAL
    password: str  # OPTIONAL
    unique_display_name: str  # OPTIONAL
    username: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_display_name(self, value: str) -> ModelUserInputValidationRequest:
        self.display_name = value
        return self

    def with_password(self, value: str) -> ModelUserInputValidationRequest:
        self.password = value
        return self

    def with_unique_display_name(self, value: str) -> ModelUserInputValidationRequest:
        self.unique_display_name = value
        return self

    def with_username(self, value: str) -> ModelUserInputValidationRequest:
        self.username = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "display_name"):
            result["displayName"] = str(self.display_name)
        elif include_empty:
            result["displayName"] = ""
        if hasattr(self, "password"):
            result["password"] = str(self.password)
        elif include_empty:
            result["password"] = ""
        if hasattr(self, "unique_display_name"):
            result["uniqueDisplayName"] = str(self.unique_display_name)
        elif include_empty:
            result["uniqueDisplayName"] = ""
        if hasattr(self, "username"):
            result["username"] = str(self.username)
        elif include_empty:
            result["username"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        display_name: Optional[str] = None,
        password: Optional[str] = None,
        unique_display_name: Optional[str] = None,
        username: Optional[str] = None,
        **kwargs,
    ) -> ModelUserInputValidationRequest:
        instance = cls()
        if display_name is not None:
            instance.display_name = display_name
        if password is not None:
            instance.password = password
        if unique_display_name is not None:
            instance.unique_display_name = unique_display_name
        if username is not None:
            instance.username = username
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelUserInputValidationRequest:
        instance = cls()
        if not dict_:
            return instance
        if "displayName" in dict_ and dict_["displayName"] is not None:
            instance.display_name = str(dict_["displayName"])
        elif include_empty:
            instance.display_name = ""
        if "password" in dict_ and dict_["password"] is not None:
            instance.password = str(dict_["password"])
        elif include_empty:
            instance.password = ""
        if "uniqueDisplayName" in dict_ and dict_["uniqueDisplayName"] is not None:
            instance.unique_display_name = str(dict_["uniqueDisplayName"])
        elif include_empty:
            instance.unique_display_name = ""
        if "username" in dict_ and dict_["username"] is not None:
            instance.username = str(dict_["username"])
        elif include_empty:
            instance.username = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelUserInputValidationRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelUserInputValidationRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelUserInputValidationRequest,
        List[ModelUserInputValidationRequest],
        Dict[Any, ModelUserInputValidationRequest],
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
            "displayName": "display_name",
            "password": "password",
            "uniqueDisplayName": "unique_display_name",
            "username": "username",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "displayName": False,
            "password": False,
            "uniqueDisplayName": False,
            "username": False,
        }

    # endregion static methods
