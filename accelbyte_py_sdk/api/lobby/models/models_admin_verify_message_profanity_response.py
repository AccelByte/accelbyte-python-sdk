# justice-lobby-server (staging)

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


class ModelsAdminVerifyMessageProfanityResponse(Model):
    """Models admin verify message profanity response (models.AdminVerifyMessageProfanityResponse)

    Properties:
        filtered_message: (filteredMessage) REQUIRED str

        has_profanity: (hasProfanity) REQUIRED bool
    """

    # region fields

    filtered_message: str                                                                          # REQUIRED
    has_profanity: bool                                                                            # REQUIRED

    # endregion fields

    # region with_x methods

    def with_filtered_message(self, value: str) -> ModelsAdminVerifyMessageProfanityResponse:
        self.filtered_message = value
        return self

    def with_has_profanity(self, value: bool) -> ModelsAdminVerifyMessageProfanityResponse:
        self.has_profanity = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "filtered_message"):
            result["filteredMessage"] = str(self.filtered_message)
        elif include_empty:
            result["filteredMessage"] = str()
        if hasattr(self, "has_profanity"):
            result["hasProfanity"] = bool(self.has_profanity)
        elif include_empty:
            result["hasProfanity"] = bool()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        filtered_message: str,
        has_profanity: bool,
    ) -> ModelsAdminVerifyMessageProfanityResponse:
        instance = cls()
        instance.filtered_message = filtered_message
        instance.has_profanity = has_profanity
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsAdminVerifyMessageProfanityResponse:
        instance = cls()
        if not dict_:
            return instance
        if "filteredMessage" in dict_ and dict_["filteredMessage"] is not None:
            instance.filtered_message = str(dict_["filteredMessage"])
        elif include_empty:
            instance.filtered_message = str()
        if "hasProfanity" in dict_ and dict_["hasProfanity"] is not None:
            instance.has_profanity = bool(dict_["hasProfanity"])
        elif include_empty:
            instance.has_profanity = bool()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "filteredMessage": "filtered_message",
            "hasProfanity": "has_profanity",
        }

    # endregion static methods
