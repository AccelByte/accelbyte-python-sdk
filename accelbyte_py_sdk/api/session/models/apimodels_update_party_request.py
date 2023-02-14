# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Session Service (2.6.1)

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


class ApimodelsUpdatePartyRequest(Model):
    """Apimodels update party request (apimodels.UpdatePartyRequest)

    Properties:
        attributes: (attributes) REQUIRED Dict[str, Any]

        inactive_timeout: (inactiveTimeout) REQUIRED int

        invite_timeout: (inviteTimeout) REQUIRED int

        joinability: (joinability) REQUIRED str

        max_players: (maxPlayers) REQUIRED int

        min_players: (minPlayers) REQUIRED int

        type_: (type) REQUIRED str

        version: (version) REQUIRED int
    """

    # region fields

    attributes: Dict[str, Any]  # REQUIRED
    inactive_timeout: int  # REQUIRED
    invite_timeout: int  # REQUIRED
    joinability: str  # REQUIRED
    max_players: int  # REQUIRED
    min_players: int  # REQUIRED
    type_: str  # REQUIRED
    version: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_attributes(self, value: Dict[str, Any]) -> ApimodelsUpdatePartyRequest:
        self.attributes = value
        return self

    def with_inactive_timeout(self, value: int) -> ApimodelsUpdatePartyRequest:
        self.inactive_timeout = value
        return self

    def with_invite_timeout(self, value: int) -> ApimodelsUpdatePartyRequest:
        self.invite_timeout = value
        return self

    def with_joinability(self, value: str) -> ApimodelsUpdatePartyRequest:
        self.joinability = value
        return self

    def with_max_players(self, value: int) -> ApimodelsUpdatePartyRequest:
        self.max_players = value
        return self

    def with_min_players(self, value: int) -> ApimodelsUpdatePartyRequest:
        self.min_players = value
        return self

    def with_type(self, value: str) -> ApimodelsUpdatePartyRequest:
        self.type_ = value
        return self

    def with_version(self, value: int) -> ApimodelsUpdatePartyRequest:
        self.version = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "attributes"):
            result["attributes"] = {str(k0): v0 for k0, v0 in self.attributes.items()}
        elif include_empty:
            result["attributes"] = {}
        if hasattr(self, "inactive_timeout"):
            result["inactiveTimeout"] = int(self.inactive_timeout)
        elif include_empty:
            result["inactiveTimeout"] = 0
        if hasattr(self, "invite_timeout"):
            result["inviteTimeout"] = int(self.invite_timeout)
        elif include_empty:
            result["inviteTimeout"] = 0
        if hasattr(self, "joinability"):
            result["joinability"] = str(self.joinability)
        elif include_empty:
            result["joinability"] = ""
        if hasattr(self, "max_players"):
            result["maxPlayers"] = int(self.max_players)
        elif include_empty:
            result["maxPlayers"] = 0
        if hasattr(self, "min_players"):
            result["minPlayers"] = int(self.min_players)
        elif include_empty:
            result["minPlayers"] = 0
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = ""
        if hasattr(self, "version"):
            result["version"] = int(self.version)
        elif include_empty:
            result["version"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        attributes: Dict[str, Any],
        inactive_timeout: int,
        invite_timeout: int,
        joinability: str,
        max_players: int,
        min_players: int,
        type_: str,
        version: int,
    ) -> ApimodelsUpdatePartyRequest:
        instance = cls()
        instance.attributes = attributes
        instance.inactive_timeout = inactive_timeout
        instance.invite_timeout = invite_timeout
        instance.joinability = joinability
        instance.max_players = max_players
        instance.min_players = min_players
        instance.type_ = type_
        instance.version = version
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsUpdatePartyRequest:
        instance = cls()
        if not dict_:
            return instance
        if "attributes" in dict_ and dict_["attributes"] is not None:
            instance.attributes = {
                str(k0): v0 for k0, v0 in dict_["attributes"].items()
            }
        elif include_empty:
            instance.attributes = {}
        if "inactiveTimeout" in dict_ and dict_["inactiveTimeout"] is not None:
            instance.inactive_timeout = int(dict_["inactiveTimeout"])
        elif include_empty:
            instance.inactive_timeout = 0
        if "inviteTimeout" in dict_ and dict_["inviteTimeout"] is not None:
            instance.invite_timeout = int(dict_["inviteTimeout"])
        elif include_empty:
            instance.invite_timeout = 0
        if "joinability" in dict_ and dict_["joinability"] is not None:
            instance.joinability = str(dict_["joinability"])
        elif include_empty:
            instance.joinability = ""
        if "maxPlayers" in dict_ and dict_["maxPlayers"] is not None:
            instance.max_players = int(dict_["maxPlayers"])
        elif include_empty:
            instance.max_players = 0
        if "minPlayers" in dict_ and dict_["minPlayers"] is not None:
            instance.min_players = int(dict_["minPlayers"])
        elif include_empty:
            instance.min_players = 0
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = ""
        if "version" in dict_ and dict_["version"] is not None:
            instance.version = int(dict_["version"])
        elif include_empty:
            instance.version = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsUpdatePartyRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsUpdatePartyRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsUpdatePartyRequest,
        List[ApimodelsUpdatePartyRequest],
        Dict[Any, ApimodelsUpdatePartyRequest],
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
            "attributes": "attributes",
            "inactiveTimeout": "inactive_timeout",
            "inviteTimeout": "invite_timeout",
            "joinability": "joinability",
            "maxPlayers": "max_players",
            "minPlayers": "min_players",
            "type": "type_",
            "version": "version",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "attributes": True,
            "inactiveTimeout": True,
            "inviteTimeout": True,
            "joinability": True,
            "maxPlayers": True,
            "minPlayers": True,
            "type": True,
            "version": True,
        }

    # endregion static methods
