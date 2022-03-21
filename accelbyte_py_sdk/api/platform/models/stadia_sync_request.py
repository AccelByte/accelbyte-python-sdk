# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-platform-service (4.4.2)

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


class StadiaSyncRequest(Model):
    """Stadia sync request (StadiaSyncRequest)

    Properties:
        app_id: (appId) REQUIRED str

        stadia_player_id: (stadiaPlayerId) REQUIRED str

        language: (language) OPTIONAL str

        region: (region) OPTIONAL str
    """

    # region fields

    app_id: str                                                                                    # REQUIRED
    stadia_player_id: str                                                                          # REQUIRED
    language: str                                                                                  # OPTIONAL
    region: str                                                                                    # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_app_id(self, value: str) -> StadiaSyncRequest:
        self.app_id = value
        return self

    def with_stadia_player_id(self, value: str) -> StadiaSyncRequest:
        self.stadia_player_id = value
        return self

    def with_language(self, value: str) -> StadiaSyncRequest:
        self.language = value
        return self

    def with_region(self, value: str) -> StadiaSyncRequest:
        self.region = value
        return self

    # endregion with_x methods

    # region is/has methods

    # noinspection PyMethodMayBeStatic
    def is_valid(self) -> bool:
        # pylint: disable=no-self-use
        # required checks
        if not hasattr(self, "app_id") or self.app_id is None:
            return False
        if not hasattr(self, "stadia_player_id") or self.stadia_player_id is None:
            return False
        # pattern checks
        if hasattr(self, "language") and not re.match(r"^[A-Za-z]{2,4}([_-][A-Za-z]{4})?([_-]([A-Za-z]{2}|[0-9]{3}))?$", self.language):
            return False
        return True

    # endregion is/has methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "app_id"):
            result["appId"] = str(self.app_id)
        elif include_empty:
            result["appId"] = str()
        if hasattr(self, "stadia_player_id"):
            result["stadiaPlayerId"] = str(self.stadia_player_id)
        elif include_empty:
            result["stadiaPlayerId"] = str()
        if hasattr(self, "language"):
            result["language"] = str(self.language)
        elif include_empty:
            result["language"] = str()
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        app_id: str,
        stadia_player_id: str,
        language: Optional[str] = None,
        region: Optional[str] = None,
    ) -> StadiaSyncRequest:
        instance = cls()
        instance.app_id = app_id
        instance.stadia_player_id = stadia_player_id
        if language is not None:
            instance.language = language
        if region is not None:
            instance.region = region
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> StadiaSyncRequest:
        instance = cls()
        if not dict_:
            return instance
        if "appId" in dict_ and dict_["appId"] is not None:
            instance.app_id = str(dict_["appId"])
        elif include_empty:
            instance.app_id = str()
        if "stadiaPlayerId" in dict_ and dict_["stadiaPlayerId"] is not None:
            instance.stadia_player_id = str(dict_["stadiaPlayerId"])
        elif include_empty:
            instance.stadia_player_id = str()
        if "language" in dict_ and dict_["language"] is not None:
            instance.language = str(dict_["language"])
        elif include_empty:
            instance.language = str()
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = str()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, StadiaSyncRequest]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[StadiaSyncRequest]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[StadiaSyncRequest, List[StadiaSyncRequest]]:
        if many:
            if isinstance(any_, dict):
                cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                cls.create_many_from_list(any_, include_empty=include_empty)
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "appId": "app_id",
            "stadiaPlayerId": "stadia_player_id",
            "language": "language",
            "region": "region",
        }

    # endregion static methods
