# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Match Service V2 (2.1.1)

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


class ApiPlayerData(Model):
    """Api player data (api.PlayerData)

    Properties:
        attributes: (attributes) OPTIONAL Dict[str, Any]

        party_id: (partyID) OPTIONAL str

        player_id: (playerID) OPTIONAL str
    """

    # region fields

    attributes: Dict[str, Any]  # OPTIONAL
    party_id: str  # OPTIONAL
    player_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_attributes(self, value: Dict[str, Any]) -> ApiPlayerData:
        self.attributes = value
        return self

    def with_party_id(self, value: str) -> ApiPlayerData:
        self.party_id = value
        return self

    def with_player_id(self, value: str) -> ApiPlayerData:
        self.player_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "attributes"):
            result["attributes"] = {str(k0): v0 for k0, v0 in self.attributes.items()}
        elif include_empty:
            result["attributes"] = {}
        if hasattr(self, "party_id"):
            result["partyID"] = str(self.party_id)
        elif include_empty:
            result["partyID"] = ""
        if hasattr(self, "player_id"):
            result["playerID"] = str(self.player_id)
        elif include_empty:
            result["playerID"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        attributes: Optional[Dict[str, Any]] = None,
        party_id: Optional[str] = None,
        player_id: Optional[str] = None,
    ) -> ApiPlayerData:
        instance = cls()
        if attributes is not None:
            instance.attributes = attributes
        if party_id is not None:
            instance.party_id = party_id
        if player_id is not None:
            instance.player_id = player_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiPlayerData:
        instance = cls()
        if not dict_:
            return instance
        if "attributes" in dict_ and dict_["attributes"] is not None:
            instance.attributes = {
                str(k0): v0 for k0, v0 in dict_["attributes"].items()
            }
        elif include_empty:
            instance.attributes = {}
        if "partyID" in dict_ and dict_["partyID"] is not None:
            instance.party_id = str(dict_["partyID"])
        elif include_empty:
            instance.party_id = ""
        if "playerID" in dict_ and dict_["playerID"] is not None:
            instance.player_id = str(dict_["playerID"])
        elif include_empty:
            instance.player_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiPlayerData]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiPlayerData]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ApiPlayerData, List[ApiPlayerData], Dict[Any, ApiPlayerData]]:
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
            "attributes": "attributes",
            "partyID": "party_id",
            "playerID": "player_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "attributes": False,
            "partyID": False,
            "playerID": False,
        }

    # endregion static methods
