# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.27.2)

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


class AccountcommonInputValidationDescription(Model):
    """Accountcommon input validation description (accountcommon.InputValidationDescription)

    Properties:
        language: (language) REQUIRED str

        message: (message) REQUIRED List[str]
    """

    # region fields

    language: str  # REQUIRED
    message: List[str]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_language(self, value: str) -> AccountcommonInputValidationDescription:
        self.language = value
        return self

    def with_message(self, value: List[str]) -> AccountcommonInputValidationDescription:
        self.message = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "language"):
            result["language"] = str(self.language)
        elif include_empty:
            result["language"] = ""
        if hasattr(self, "message"):
            result["message"] = [str(i0) for i0 in self.message]
        elif include_empty:
            result["message"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        language: str,
        message: List[str],
    ) -> AccountcommonInputValidationDescription:
        instance = cls()
        instance.language = language
        instance.message = message
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AccountcommonInputValidationDescription:
        instance = cls()
        if not dict_:
            return instance
        if "language" in dict_ and dict_["language"] is not None:
            instance.language = str(dict_["language"])
        elif include_empty:
            instance.language = ""
        if "message" in dict_ and dict_["message"] is not None:
            instance.message = [str(i0) for i0 in dict_["message"]]
        elif include_empty:
            instance.message = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, AccountcommonInputValidationDescription]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[AccountcommonInputValidationDescription]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        AccountcommonInputValidationDescription,
        List[AccountcommonInputValidationDescription],
        Dict[Any, AccountcommonInputValidationDescription],
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
            "language": "language",
            "message": "message",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "language": True,
            "message": True,
        }

    # endregion static methods
