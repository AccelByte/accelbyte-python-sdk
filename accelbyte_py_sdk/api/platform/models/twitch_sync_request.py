# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.18.1)

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
import re
from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import Model


class TwitchSyncRequest(Model):
    """Twitch sync request (TwitchSyncRequest)

    Properties:
        game_id: (gameId) OPTIONAL str

        language: (language) OPTIONAL str

        region: (region) OPTIONAL str
    """

    # region fields

    game_id: str  # OPTIONAL
    language: str  # OPTIONAL
    region: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_game_id(self, value: str) -> TwitchSyncRequest:
        self.game_id = value
        return self

    def with_language(self, value: str) -> TwitchSyncRequest:
        self.language = value
        return self

    def with_region(self, value: str) -> TwitchSyncRequest:
        self.region = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "game_id"):
            result["gameId"] = str(self.game_id)
        elif include_empty:
            result["gameId"] = ""
        if hasattr(self, "language"):
            result["language"] = str(self.language)
        elif include_empty:
            result["language"] = ""
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        game_id: Optional[str] = None,
        language: Optional[str] = None,
        region: Optional[str] = None,
    ) -> TwitchSyncRequest:
        instance = cls()
        if game_id is not None:
            instance.game_id = game_id
        if language is not None:
            instance.language = language
        if region is not None:
            instance.region = region
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> TwitchSyncRequest:
        instance = cls()
        if not dict_:
            return instance
        if "gameId" in dict_ and dict_["gameId"] is not None:
            instance.game_id = str(dict_["gameId"])
        elif include_empty:
            instance.game_id = ""
        if "language" in dict_ and dict_["language"] is not None:
            instance.language = str(dict_["language"])
        elif include_empty:
            instance.language = ""
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, TwitchSyncRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[TwitchSyncRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        TwitchSyncRequest, List[TwitchSyncRequest], Dict[Any, TwitchSyncRequest]
    ]:
        if many:
            if isinstance(any_, dict):
                return cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                return cls.create_many_from_list(any_, include_empty=include_empty)
            else:
                raise ValueError()
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "gameId": "game_id",
            "language": "language",
            "region": "region",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "gameId": False,
            "language": False,
            "region": False,
        }

    @staticmethod
    def get_pattern_map() -> Dict[str, re.Pattern]:
        return {
            "language": re.compile(
                r"^[A-Za-z]{2,4}([_-][A-Za-z]{4})?([_-]([A-Za-z]{2}|[0-9]{3}))?$"
            ),
        }

    # endregion static methods
