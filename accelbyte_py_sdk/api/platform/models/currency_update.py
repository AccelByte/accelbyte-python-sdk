# justice-platform-service (3.34.0)

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


class CurrencyUpdate(Model):
    """A DTO for update currency (CurrencyUpdate)

    Properties:
        localization_descriptions: (localizationDescriptions) OPTIONAL Dict[str, str]
    """

    # region fields

    localization_descriptions: Dict[str, str]                                                      # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_localization_descriptions(self, value: Dict[str, str]) -> CurrencyUpdate:
        self.localization_descriptions = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "localization_descriptions"):
            result["localizationDescriptions"] = {str(k0): str(v0) for k0, v0 in self.localization_descriptions.items()}
        elif include_empty:
            result["localizationDescriptions"] = {}
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        localization_descriptions: Optional[Dict[str, str]] = None,
    ) -> CurrencyUpdate:
        instance = cls()
        if localization_descriptions is not None:
            instance.localization_descriptions = localization_descriptions
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> CurrencyUpdate:
        instance = cls()
        if not dict_:
            return instance
        if "localizationDescriptions" in dict_ and dict_["localizationDescriptions"] is not None:
            instance.localization_descriptions = {str(k0): str(v0) for k0, v0 in dict_["localizationDescriptions"].items()}
        elif include_empty:
            instance.localization_descriptions = {}
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "localizationDescriptions": "localization_descriptions",
        }

    # endregion static methods
