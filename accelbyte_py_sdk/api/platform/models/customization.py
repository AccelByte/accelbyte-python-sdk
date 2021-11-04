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


class Customization(Model):
    """Customization (Customization)

    Properties:
        settings: (settings) OPTIONAL str
    """

    # region fields

    settings: str                                                                                  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_settings(self, value: str) -> Customization:
        self.settings = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "settings"):
            result["settings"] = str(self.settings)
        elif include_empty:
            result["settings"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        settings: Optional[str] = None,
    ) -> Customization:
        instance = cls()
        if settings is not None:
            instance.settings = settings
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> Customization:
        instance = cls()
        if not dict_:
            return instance
        if "settings" in dict_ and dict_["settings"] is not None:
            instance.settings = str(dict_["settings"])
        elif include_empty:
            instance.settings = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "settings": "settings",
        }

    # endregion static methods
