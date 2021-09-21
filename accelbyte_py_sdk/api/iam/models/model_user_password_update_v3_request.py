# Auto-generated at 2021-09-21T14:10:34.842405+08:00
# from: Justice Iam Service (4.1.0)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
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


class ModelUserPasswordUpdateV3Request(Model):
    """Model user password update V3 request

    Properties:
        language_tag: (languageTag) REQUIRED str

        new_password: (newPassword) REQUIRED str

        old_password: (oldPassword) REQUIRED str
    """

    # region fields

    language_tag: str                                                                              # REQUIRED
    new_password: str                                                                              # REQUIRED
    old_password: str                                                                              # REQUIRED

    # endregion fields

    # region with_x methods

    def with_language_tag(self, value: str) -> ModelUserPasswordUpdateV3Request:
        self.language_tag = value
        return self

    def with_new_password(self, value: str) -> ModelUserPasswordUpdateV3Request:
        self.new_password = value
        return self

    def with_old_password(self, value: str) -> ModelUserPasswordUpdateV3Request:
        self.old_password = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "language_tag") and self.language_tag:
            result["languageTag"] = str(self.language_tag)
        elif include_empty:
            result["languageTag"] = str()
        if hasattr(self, "new_password") and self.new_password:
            result["newPassword"] = str(self.new_password)
        elif include_empty:
            result["newPassword"] = str()
        if hasattr(self, "old_password") and self.old_password:
            result["oldPassword"] = str(self.old_password)
        elif include_empty:
            result["oldPassword"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        language_tag: str,
        new_password: str,
        old_password: str,
    ) -> ModelUserPasswordUpdateV3Request:
        instance = cls()
        instance.language_tag = language_tag
        instance.new_password = new_password
        instance.old_password = old_password
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelUserPasswordUpdateV3Request:
        instance = cls()
        if "languageTag" in dict_ and dict_["languageTag"] is not None:
            instance.language_tag = str(dict_["languageTag"])
        elif include_empty:
            instance.language_tag = str()
        if "newPassword" in dict_ and dict_["newPassword"] is not None:
            instance.new_password = str(dict_["newPassword"])
        elif include_empty:
            instance.new_password = str()
        if "oldPassword" in dict_ and dict_["oldPassword"] is not None:
            instance.old_password = str(dict_["oldPassword"])
        elif include_empty:
            instance.old_password = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "languageTag": "language_tag",
            "newPassword": "new_password",
            "oldPassword": "old_password",
        }

    # endregion static methods
