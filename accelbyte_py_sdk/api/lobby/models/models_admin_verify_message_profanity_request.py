# justice-lobby-server (1.33.0)

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


class ModelsAdminVerifyMessageProfanityRequest(Model):
    """Models admin verify message profanity request (models.AdminVerifyMessageProfanityRequest)

    Properties:
        message: (message) REQUIRED str

        profanity_level: (profanityLevel) REQUIRED str
    """

    # region fields

    message: str                                                                                   # REQUIRED
    profanity_level: str                                                                           # REQUIRED

    # endregion fields

    # region with_x methods

    def with_message(self, value: str) -> ModelsAdminVerifyMessageProfanityRequest:
        self.message = value
        return self

    def with_profanity_level(self, value: str) -> ModelsAdminVerifyMessageProfanityRequest:
        self.profanity_level = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "message") and self.message:
            result["message"] = str(self.message)
        elif include_empty:
            result["message"] = str()
        if hasattr(self, "profanity_level") and self.profanity_level:
            result["profanityLevel"] = str(self.profanity_level)
        elif include_empty:
            result["profanityLevel"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        message: str,
        profanity_level: str,
    ) -> ModelsAdminVerifyMessageProfanityRequest:
        instance = cls()
        instance.message = message
        instance.profanity_level = profanity_level
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsAdminVerifyMessageProfanityRequest:
        instance = cls()
        if not dict_:
            return instance
        if "message" in dict_ and dict_["message"] is not None:
            instance.message = str(dict_["message"])
        elif include_empty:
            instance.message = str()
        if "profanityLevel" in dict_ and dict_["profanityLevel"] is not None:
            instance.profanity_level = str(dict_["profanityLevel"])
        elif include_empty:
            instance.profanity_level = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "message": "message",
            "profanityLevel": "profanity_level",
        }

    # endregion static methods
