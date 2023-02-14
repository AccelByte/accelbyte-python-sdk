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

from ..models.apimodels_request_member import ApimodelsRequestMember


class ApimodelsCreatePartyRequest(Model):
    """Apimodels create party request (apimodels.CreatePartyRequest)

    Properties:
        attributes: (attributes) REQUIRED Dict[str, Any]

        configuration_name: (configurationName) REQUIRED str

        inactive_timeout: (inactiveTimeout) REQUIRED int

        invite_timeout: (inviteTimeout) REQUIRED int

        joinability: (joinability) REQUIRED str

        max_players: (maxPlayers) REQUIRED int

        members: (members) REQUIRED List[ApimodelsRequestMember]

        min_players: (minPlayers) REQUIRED int

        text_chat: (textChat) REQUIRED bool

        type_: (type) REQUIRED str
    """

    # region fields

    attributes: Dict[str, Any]  # REQUIRED
    configuration_name: str  # REQUIRED
    inactive_timeout: int  # REQUIRED
    invite_timeout: int  # REQUIRED
    joinability: str  # REQUIRED
    max_players: int  # REQUIRED
    members: List[ApimodelsRequestMember]  # REQUIRED
    min_players: int  # REQUIRED
    text_chat: bool  # REQUIRED
    type_: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_attributes(self, value: Dict[str, Any]) -> ApimodelsCreatePartyRequest:
        self.attributes = value
        return self

    def with_configuration_name(self, value: str) -> ApimodelsCreatePartyRequest:
        self.configuration_name = value
        return self

    def with_inactive_timeout(self, value: int) -> ApimodelsCreatePartyRequest:
        self.inactive_timeout = value
        return self

    def with_invite_timeout(self, value: int) -> ApimodelsCreatePartyRequest:
        self.invite_timeout = value
        return self

    def with_joinability(self, value: str) -> ApimodelsCreatePartyRequest:
        self.joinability = value
        return self

    def with_max_players(self, value: int) -> ApimodelsCreatePartyRequest:
        self.max_players = value
        return self

    def with_members(
        self, value: List[ApimodelsRequestMember]
    ) -> ApimodelsCreatePartyRequest:
        self.members = value
        return self

    def with_min_players(self, value: int) -> ApimodelsCreatePartyRequest:
        self.min_players = value
        return self

    def with_text_chat(self, value: bool) -> ApimodelsCreatePartyRequest:
        self.text_chat = value
        return self

    def with_type(self, value: str) -> ApimodelsCreatePartyRequest:
        self.type_ = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "attributes"):
            result["attributes"] = {str(k0): v0 for k0, v0 in self.attributes.items()}
        elif include_empty:
            result["attributes"] = {}
        if hasattr(self, "configuration_name"):
            result["configurationName"] = str(self.configuration_name)
        elif include_empty:
            result["configurationName"] = ""
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
        if hasattr(self, "members"):
            result["members"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.members
            ]
        elif include_empty:
            result["members"] = []
        if hasattr(self, "min_players"):
            result["minPlayers"] = int(self.min_players)
        elif include_empty:
            result["minPlayers"] = 0
        if hasattr(self, "text_chat"):
            result["textChat"] = bool(self.text_chat)
        elif include_empty:
            result["textChat"] = False
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        attributes: Dict[str, Any],
        configuration_name: str,
        inactive_timeout: int,
        invite_timeout: int,
        joinability: str,
        max_players: int,
        members: List[ApimodelsRequestMember],
        min_players: int,
        text_chat: bool,
        type_: str,
    ) -> ApimodelsCreatePartyRequest:
        instance = cls()
        instance.attributes = attributes
        instance.configuration_name = configuration_name
        instance.inactive_timeout = inactive_timeout
        instance.invite_timeout = invite_timeout
        instance.joinability = joinability
        instance.max_players = max_players
        instance.members = members
        instance.min_players = min_players
        instance.text_chat = text_chat
        instance.type_ = type_
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsCreatePartyRequest:
        instance = cls()
        if not dict_:
            return instance
        if "attributes" in dict_ and dict_["attributes"] is not None:
            instance.attributes = {
                str(k0): v0 for k0, v0 in dict_["attributes"].items()
            }
        elif include_empty:
            instance.attributes = {}
        if "configurationName" in dict_ and dict_["configurationName"] is not None:
            instance.configuration_name = str(dict_["configurationName"])
        elif include_empty:
            instance.configuration_name = ""
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
        if "members" in dict_ and dict_["members"] is not None:
            instance.members = [
                ApimodelsRequestMember.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["members"]
            ]
        elif include_empty:
            instance.members = []
        if "minPlayers" in dict_ and dict_["minPlayers"] is not None:
            instance.min_players = int(dict_["minPlayers"])
        elif include_empty:
            instance.min_players = 0
        if "textChat" in dict_ and dict_["textChat"] is not None:
            instance.text_chat = bool(dict_["textChat"])
        elif include_empty:
            instance.text_chat = False
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsCreatePartyRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsCreatePartyRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsCreatePartyRequest,
        List[ApimodelsCreatePartyRequest],
        Dict[Any, ApimodelsCreatePartyRequest],
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
            "configurationName": "configuration_name",
            "inactiveTimeout": "inactive_timeout",
            "inviteTimeout": "invite_timeout",
            "joinability": "joinability",
            "maxPlayers": "max_players",
            "members": "members",
            "minPlayers": "min_players",
            "textChat": "text_chat",
            "type": "type_",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "attributes": True,
            "configurationName": True,
            "inactiveTimeout": True,
            "inviteTimeout": True,
            "joinability": True,
            "maxPlayers": True,
            "members": True,
            "minPlayers": True,
            "textChat": True,
            "type": True,
        }

    # endregion static methods
