# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Match Service V2

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


class PlayerPlayerData(Model):
    """Player player data (player.PlayerData)

    Properties:
        attributes: (Attributes) REQUIRED Dict[str, Any]

        party_id: (PartyID) REQUIRED str

        platform_id: (PlatformID) REQUIRED str

        player_id: (PlayerID) REQUIRED str
    """

    # region fields

    attributes: Dict[str, Any]  # REQUIRED
    party_id: str  # REQUIRED
    platform_id: str  # REQUIRED
    player_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_attributes(self, value: Dict[str, Any]) -> PlayerPlayerData:
        self.attributes = value
        return self

    def with_party_id(self, value: str) -> PlayerPlayerData:
        self.party_id = value
        return self

    def with_platform_id(self, value: str) -> PlayerPlayerData:
        self.platform_id = value
        return self

    def with_player_id(self, value: str) -> PlayerPlayerData:
        self.player_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "attributes"):
            result["Attributes"] = {str(k0): v0 for k0, v0 in self.attributes.items()}
        elif include_empty:
            result["Attributes"] = {}
        if hasattr(self, "party_id"):
            result["PartyID"] = str(self.party_id)
        elif include_empty:
            result["PartyID"] = ""
        if hasattr(self, "platform_id"):
            result["PlatformID"] = str(self.platform_id)
        elif include_empty:
            result["PlatformID"] = ""
        if hasattr(self, "player_id"):
            result["PlayerID"] = str(self.player_id)
        elif include_empty:
            result["PlayerID"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        attributes: Dict[str, Any],
        party_id: str,
        platform_id: str,
        player_id: str,
        **kwargs,
    ) -> PlayerPlayerData:
        instance = cls()
        instance.attributes = attributes
        instance.party_id = party_id
        instance.platform_id = platform_id
        instance.player_id = player_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PlayerPlayerData:
        instance = cls()
        if not dict_:
            return instance
        if "Attributes" in dict_ and dict_["Attributes"] is not None:
            instance.attributes = {
                str(k0): v0 for k0, v0 in dict_["Attributes"].items()
            }
        elif include_empty:
            instance.attributes = {}
        if "PartyID" in dict_ and dict_["PartyID"] is not None:
            instance.party_id = str(dict_["PartyID"])
        elif include_empty:
            instance.party_id = ""
        if "PlatformID" in dict_ and dict_["PlatformID"] is not None:
            instance.platform_id = str(dict_["PlatformID"])
        elif include_empty:
            instance.platform_id = ""
        if "PlayerID" in dict_ and dict_["PlayerID"] is not None:
            instance.player_id = str(dict_["PlayerID"])
        elif include_empty:
            instance.player_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, PlayerPlayerData]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[PlayerPlayerData]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[PlayerPlayerData, List[PlayerPlayerData], Dict[Any, PlayerPlayerData]]:
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
            "Attributes": "attributes",
            "PartyID": "party_id",
            "PlatformID": "platform_id",
            "PlayerID": "player_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "Attributes": True,
            "PartyID": True,
            "PlatformID": True,
            "PlayerID": True,
        }

    # endregion static methods
