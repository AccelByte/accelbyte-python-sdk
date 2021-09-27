# Auto-generated at 2021-09-27T17:12:29.769583+08:00
# from: Justice DsmController Service (2.4.0)

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

from ..models.models_request_match_party import ModelsRequestMatchParty


class ModelsRequestMatchingAlly(Model):
    """Models request matching ally

    Properties:
        matching_parties: (matching_parties) REQUIRED List[ModelsRequestMatchParty]
    """

    # region fields

    matching_parties: List[ModelsRequestMatchParty]                                                # REQUIRED

    # endregion fields

    # region with_x methods

    def with_matching_parties(self, value: List[ModelsRequestMatchParty]) -> ModelsRequestMatchingAlly:
        self.matching_parties = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "matching_parties") and self.matching_parties:
            result["matching_parties"] = [i0.to_dict(include_empty=include_empty) for i0 in self.matching_parties]
        elif include_empty:
            result["matching_parties"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        matching_parties: List[ModelsRequestMatchParty],
    ) -> ModelsRequestMatchingAlly:
        instance = cls()
        instance.matching_parties = matching_parties
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsRequestMatchingAlly:
        instance = cls()
        if not dict_:
            return instance
        if "matching_parties" in dict_ and dict_["matching_parties"] is not None:
            instance.matching_parties = [ModelsRequestMatchParty.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["matching_parties"]]
        elif include_empty:
            instance.matching_parties = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "matching_parties": "matching_parties",
        }

    # endregion static methods
