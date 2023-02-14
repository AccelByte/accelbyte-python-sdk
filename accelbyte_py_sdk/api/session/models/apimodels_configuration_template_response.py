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


class ApimodelsConfigurationTemplateResponse(Model):
    """Apimodels configuration template response (apimodels.ConfigurationTemplateResponse)

    Properties:
        client_version: (clientVersion) REQUIRED str

        created_at: (createdAt) REQUIRED str

        deployment: (deployment) REQUIRED str

        inactive_timeout: (inactiveTimeout) REQUIRED int

        invite_timeout: (inviteTimeout) REQUIRED int

        joinability: (joinability) REQUIRED str

        last: (last) REQUIRED str

        max_players: (maxPlayers) REQUIRED int

        min_players: (minPlayers) REQUIRED int

        name: (name) REQUIRED str

        namespace: (namespace) REQUIRED str

        requested_regions: (requestedRegions) REQUIRED List[str]

        text_chat: (textChat) REQUIRED bool

        type_: (type) REQUIRED str

        updated_at: (updatedAt) REQUIRED str
    """

    # region fields

    client_version: str  # REQUIRED
    created_at: str  # REQUIRED
    deployment: str  # REQUIRED
    inactive_timeout: int  # REQUIRED
    invite_timeout: int  # REQUIRED
    joinability: str  # REQUIRED
    last: str  # REQUIRED
    max_players: int  # REQUIRED
    min_players: int  # REQUIRED
    name: str  # REQUIRED
    namespace: str  # REQUIRED
    requested_regions: List[str]  # REQUIRED
    text_chat: bool  # REQUIRED
    type_: str  # REQUIRED
    updated_at: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_client_version(self, value: str) -> ApimodelsConfigurationTemplateResponse:
        self.client_version = value
        return self

    def with_created_at(self, value: str) -> ApimodelsConfigurationTemplateResponse:
        self.created_at = value
        return self

    def with_deployment(self, value: str) -> ApimodelsConfigurationTemplateResponse:
        self.deployment = value
        return self

    def with_inactive_timeout(
        self, value: int
    ) -> ApimodelsConfigurationTemplateResponse:
        self.inactive_timeout = value
        return self

    def with_invite_timeout(self, value: int) -> ApimodelsConfigurationTemplateResponse:
        self.invite_timeout = value
        return self

    def with_joinability(self, value: str) -> ApimodelsConfigurationTemplateResponse:
        self.joinability = value
        return self

    def with_last(self, value: str) -> ApimodelsConfigurationTemplateResponse:
        self.last = value
        return self

    def with_max_players(self, value: int) -> ApimodelsConfigurationTemplateResponse:
        self.max_players = value
        return self

    def with_min_players(self, value: int) -> ApimodelsConfigurationTemplateResponse:
        self.min_players = value
        return self

    def with_name(self, value: str) -> ApimodelsConfigurationTemplateResponse:
        self.name = value
        return self

    def with_namespace(self, value: str) -> ApimodelsConfigurationTemplateResponse:
        self.namespace = value
        return self

    def with_requested_regions(
        self, value: List[str]
    ) -> ApimodelsConfigurationTemplateResponse:
        self.requested_regions = value
        return self

    def with_text_chat(self, value: bool) -> ApimodelsConfigurationTemplateResponse:
        self.text_chat = value
        return self

    def with_type(self, value: str) -> ApimodelsConfigurationTemplateResponse:
        self.type_ = value
        return self

    def with_updated_at(self, value: str) -> ApimodelsConfigurationTemplateResponse:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "client_version"):
            result["clientVersion"] = str(self.client_version)
        elif include_empty:
            result["clientVersion"] = ""
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "deployment"):
            result["deployment"] = str(self.deployment)
        elif include_empty:
            result["deployment"] = ""
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
        if hasattr(self, "last"):
            result["last"] = str(self.last)
        elif include_empty:
            result["last"] = ""
        if hasattr(self, "max_players"):
            result["maxPlayers"] = int(self.max_players)
        elif include_empty:
            result["maxPlayers"] = 0
        if hasattr(self, "min_players"):
            result["minPlayers"] = int(self.min_players)
        elif include_empty:
            result["minPlayers"] = 0
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "requested_regions"):
            result["requestedRegions"] = [str(i0) for i0 in self.requested_regions]
        elif include_empty:
            result["requestedRegions"] = []
        if hasattr(self, "text_chat"):
            result["textChat"] = bool(self.text_chat)
        elif include_empty:
            result["textChat"] = False
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        client_version: str,
        created_at: str,
        deployment: str,
        inactive_timeout: int,
        invite_timeout: int,
        joinability: str,
        last: str,
        max_players: int,
        min_players: int,
        name: str,
        namespace: str,
        requested_regions: List[str],
        text_chat: bool,
        type_: str,
        updated_at: str,
    ) -> ApimodelsConfigurationTemplateResponse:
        instance = cls()
        instance.client_version = client_version
        instance.created_at = created_at
        instance.deployment = deployment
        instance.inactive_timeout = inactive_timeout
        instance.invite_timeout = invite_timeout
        instance.joinability = joinability
        instance.last = last
        instance.max_players = max_players
        instance.min_players = min_players
        instance.name = name
        instance.namespace = namespace
        instance.requested_regions = requested_regions
        instance.text_chat = text_chat
        instance.type_ = type_
        instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsConfigurationTemplateResponse:
        instance = cls()
        if not dict_:
            return instance
        if "clientVersion" in dict_ and dict_["clientVersion"] is not None:
            instance.client_version = str(dict_["clientVersion"])
        elif include_empty:
            instance.client_version = ""
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "deployment" in dict_ and dict_["deployment"] is not None:
            instance.deployment = str(dict_["deployment"])
        elif include_empty:
            instance.deployment = ""
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
        if "last" in dict_ and dict_["last"] is not None:
            instance.last = str(dict_["last"])
        elif include_empty:
            instance.last = ""
        if "maxPlayers" in dict_ and dict_["maxPlayers"] is not None:
            instance.max_players = int(dict_["maxPlayers"])
        elif include_empty:
            instance.max_players = 0
        if "minPlayers" in dict_ and dict_["minPlayers"] is not None:
            instance.min_players = int(dict_["minPlayers"])
        elif include_empty:
            instance.min_players = 0
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "requestedRegions" in dict_ and dict_["requestedRegions"] is not None:
            instance.requested_regions = [str(i0) for i0 in dict_["requestedRegions"]]
        elif include_empty:
            instance.requested_regions = []
        if "textChat" in dict_ and dict_["textChat"] is not None:
            instance.text_chat = bool(dict_["textChat"])
        elif include_empty:
            instance.text_chat = False
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsConfigurationTemplateResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsConfigurationTemplateResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsConfigurationTemplateResponse,
        List[ApimodelsConfigurationTemplateResponse],
        Dict[Any, ApimodelsConfigurationTemplateResponse],
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
            "clientVersion": "client_version",
            "createdAt": "created_at",
            "deployment": "deployment",
            "inactiveTimeout": "inactive_timeout",
            "inviteTimeout": "invite_timeout",
            "joinability": "joinability",
            "last": "last",
            "maxPlayers": "max_players",
            "minPlayers": "min_players",
            "name": "name",
            "namespace": "namespace",
            "requestedRegions": "requested_regions",
            "textChat": "text_chat",
            "type": "type_",
            "updatedAt": "updated_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "clientVersion": True,
            "createdAt": True,
            "deployment": True,
            "inactiveTimeout": True,
            "inviteTimeout": True,
            "joinability": True,
            "last": True,
            "maxPlayers": True,
            "minPlayers": True,
            "name": True,
            "namespace": True,
            "requestedRegions": True,
            "textChat": True,
            "type": True,
            "updatedAt": True,
        }

    # endregion static methods
