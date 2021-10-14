# Auto-generated at 2021-10-14T22:17:16.458436+08:00
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


class StadiaSyncRequest(Model):
    """Stadia sync request (StadiaSyncRequest)

    Properties:
        stadia_player_id: (stadiaPlayerId) REQUIRED str

        app_id: (appId) REQUIRED str

        region: (region) OPTIONAL str

        language: (language) OPTIONAL str
    """

    # region fields

    stadia_player_id: str                                                                          # REQUIRED
    app_id: str                                                                                    # REQUIRED
    region: str                                                                                    # OPTIONAL
    language: str                                                                                  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_stadia_player_id(self, value: str) -> StadiaSyncRequest:
        self.stadia_player_id = value
        return self

    def with_app_id(self, value: str) -> StadiaSyncRequest:
        self.app_id = value
        return self

    def with_region(self, value: str) -> StadiaSyncRequest:
        self.region = value
        return self

    def with_language(self, value: str) -> StadiaSyncRequest:
        self.language = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "stadia_player_id") and self.stadia_player_id:
            result["stadiaPlayerId"] = str(self.stadia_player_id)
        elif include_empty:
            result["stadiaPlayerId"] = str()
        if hasattr(self, "app_id") and self.app_id:
            result["appId"] = str(self.app_id)
        elif include_empty:
            result["appId"] = str()
        if hasattr(self, "region") and self.region:
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = str()
        if hasattr(self, "language") and self.language:
            result["language"] = str(self.language)
        elif include_empty:
            result["language"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        stadia_player_id: str,
        app_id: str,
        region: Optional[str] = None,
        language: Optional[str] = None,
    ) -> StadiaSyncRequest:
        instance = cls()
        instance.stadia_player_id = stadia_player_id
        instance.app_id = app_id
        if region is not None:
            instance.region = region
        if language is not None:
            instance.language = language
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> StadiaSyncRequest:
        instance = cls()
        if not dict_:
            return instance
        if "stadiaPlayerId" in dict_ and dict_["stadiaPlayerId"] is not None:
            instance.stadia_player_id = str(dict_["stadiaPlayerId"])
        elif include_empty:
            instance.stadia_player_id = str()
        if "appId" in dict_ and dict_["appId"] is not None:
            instance.app_id = str(dict_["appId"])
        elif include_empty:
            instance.app_id = str()
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = str()
        if "language" in dict_ and dict_["language"] is not None:
            instance.language = str(dict_["language"])
        elif include_empty:
            instance.language = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "stadiaPlayerId": "stadia_player_id",
            "appId": "app_id",
            "region": "region",
            "language": "language",
        }

    # endregion static methods
