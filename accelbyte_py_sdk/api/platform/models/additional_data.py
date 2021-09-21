# Auto-generated at 2021-09-21T14:10:38.759137+08:00
# from: Justice Platform Service (3.24.0)

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


class AdditionalData(Model):
    """Additional data

    Properties:
        card_summary: (cardSummary) OPTIONAL str
    """

    # region fields

    card_summary: str                                                                              # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_card_summary(self, value: str) -> AdditionalData:
        self.card_summary = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "card_summary") and self.card_summary:
            result["cardSummary"] = str(self.card_summary)
        elif include_empty:
            result["cardSummary"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        card_summary: Optional[str] = None,
    ) -> AdditionalData:
        instance = cls()
        if card_summary is not None:
            instance.card_summary = card_summary
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> AdditionalData:
        instance = cls()
        if "cardSummary" in dict_ and dict_["cardSummary"] is not None:
            instance.card_summary = str(dict_["cardSummary"])
        elif include_empty:
            instance.card_summary = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "cardSummary": "card_summary",
        }

    # endregion static methods
