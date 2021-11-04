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


class ModelsUpdateConfigRequest(Model):
    """Models update config request (models.UpdateConfigRequest)

    Properties:
        api_key: (apiKey) REQUIRED str
    """

    # region fields

    api_key: str                                                                                   # REQUIRED

    # endregion fields

    # region with_x methods

    def with_api_key(self, value: str) -> ModelsUpdateConfigRequest:
        self.api_key = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "api_key"):
            result["apiKey"] = str(self.api_key)
        elif include_empty:
            result["apiKey"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        api_key: str,
    ) -> ModelsUpdateConfigRequest:
        instance = cls()
        instance.api_key = api_key
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsUpdateConfigRequest:
        instance = cls()
        if not dict_:
            return instance
        if "apiKey" in dict_ and dict_["apiKey"] is not None:
            instance.api_key = str(dict_["apiKey"])
        elif include_empty:
            instance.api_key = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "apiKey": "api_key",
        }

    # endregion static methods
