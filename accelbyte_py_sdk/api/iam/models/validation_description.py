# justice-iam-service (5.0.0)

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


class ValidationDescription(Model):
    """Validation description (.validation.description)

    Properties:
        language: (language) REQUIRED str

        message: (message) REQUIRED List[str]
    """

    # region fields

    language: str                                                                                  # REQUIRED
    message: List[str]                                                                             # REQUIRED

    # endregion fields

    # region with_x methods

    def with_language(self, value: str) -> ValidationDescription:
        self.language = value
        return self

    def with_message(self, value: List[str]) -> ValidationDescription:
        self.message = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "language"):
            result["language"] = str(self.language)
        elif include_empty:
            result["language"] = str()
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
    ) -> ValidationDescription:
        instance = cls()
        instance.language = language
        instance.message = message
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ValidationDescription:
        instance = cls()
        if not dict_:
            return instance
        if "language" in dict_ and dict_["language"] is not None:
            instance.language = str(dict_["language"])
        elif include_empty:
            instance.language = str()
        if "message" in dict_ and dict_["message"] is not None:
            instance.message = [str(i0) for i0 in dict_["message"]]
        elif include_empty:
            instance.message = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "language": "language",
            "message": "message",
        }

    # endregion static methods
