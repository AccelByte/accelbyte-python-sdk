# Auto-generated at 2021-10-14T22:17:13.254530+08:00
# from: Justice Lobby Service (1.33.0)

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


class ModelsDebugProfanityFilterRequest(Model):
    """Models debug profanity filter request (models.DebugProfanityFilterRequest)

    Properties:
        text: (text) REQUIRED str
    """

    # region fields

    text: str                                                                                      # REQUIRED

    # endregion fields

    # region with_x methods

    def with_text(self, value: str) -> ModelsDebugProfanityFilterRequest:
        self.text = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "text") and self.text:
            result["text"] = str(self.text)
        elif include_empty:
            result["text"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        text: str,
    ) -> ModelsDebugProfanityFilterRequest:
        instance = cls()
        instance.text = text
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsDebugProfanityFilterRequest:
        instance = cls()
        if not dict_:
            return instance
        if "text" in dict_ and dict_["text"] is not None:
            instance.text = str(dict_["text"])
        elif include_empty:
            instance.text = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "text": "text",
        }

    # endregion static methods
