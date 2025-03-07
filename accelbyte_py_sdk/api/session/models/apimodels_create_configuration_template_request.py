# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Session Service

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
from ....core import StrEnum

from ..models.models_async_process_ds_request import ModelsAsyncProcessDSRequest
from ..models.models_extend_configuration import ModelsExtendConfiguration
from ..models.models_native_session_setting import ModelsNativeSessionSetting


class TextChatModeEnum(StrEnum):
    GAME = "GAME"
    NONE = "NONE"
    TEAM = "TEAM"


class ApimodelsCreateConfigurationTemplateRequest(Model):
    """Apimodels create configuration template request (apimodels.CreateConfigurationTemplateRequest)

    Properties:
        client_version: (clientVersion) REQUIRED str

        deployment: (deployment) REQUIRED str

        inactive_timeout: (inactiveTimeout) REQUIRED int

        invite_timeout: (inviteTimeout) REQUIRED int

        joinability: (joinability) REQUIRED str

        max_players: (maxPlayers) REQUIRED int

        min_players: (minPlayers) REQUIRED int

        name: (name) REQUIRED str

        persistent: (persistent) REQUIRED bool

        requested_regions: (requestedRegions) REQUIRED List[str]

        text_chat: (textChat) REQUIRED bool

        type_: (type) REQUIRED str

        app_name: (appName) OPTIONAL str

        async_process_ds_request: (asyncProcessDSRequest) OPTIONAL ModelsAsyncProcessDSRequest

        attributes: (attributes) OPTIONAL Dict[str, Any]

        auto_join: (autoJoin) OPTIONAL bool

        auto_leave_session: (autoLeaveSession) OPTIONAL bool

        custom_urlgrpc: (customURLGRPC) OPTIONAL str

        disable_code_generation: (disableCodeGeneration) OPTIONAL bool

        disable_resend_invite: (disableResendInvite) OPTIONAL bool

        ds_manual_set_ready: (dsManualSetReady) OPTIONAL bool

        ds_source: (dsSource) OPTIONAL str

        enable_secret: (enableSecret) OPTIONAL bool

        fallback_claim_keys: (fallbackClaimKeys) OPTIONAL List[str]

        grpc_session_config: (grpcSessionConfig) OPTIONAL ModelsExtendConfiguration

        immutable_storage: (immutableStorage) OPTIONAL bool

        leader_election_grace_period: (leaderElectionGracePeriod) OPTIONAL int

        manual_rejoin: (manualRejoin) OPTIONAL bool

        max_active_sessions: (maxActiveSessions) OPTIONAL int

        native_session_setting: (NativeSessionSetting) OPTIONAL ModelsNativeSessionSetting

        preferred_claim_keys: (preferredClaimKeys) OPTIONAL List[str]

        psn_base_url: (PSNBaseUrl) OPTIONAL str

        text_chat_mode: (textChatMode) OPTIONAL Union[str, TextChatModeEnum]

        tie_teams_session_lifetime: (tieTeamsSessionLifetime) OPTIONAL bool

        ttl_hours: (ttlHours) OPTIONAL int
    """

    # region fields

    client_version: str  # REQUIRED
    deployment: str  # REQUIRED
    inactive_timeout: int  # REQUIRED
    invite_timeout: int  # REQUIRED
    joinability: str  # REQUIRED
    max_players: int  # REQUIRED
    min_players: int  # REQUIRED
    name: str  # REQUIRED
    persistent: bool  # REQUIRED
    requested_regions: List[str]  # REQUIRED
    text_chat: bool  # REQUIRED
    type_: str  # REQUIRED
    app_name: str  # OPTIONAL
    async_process_ds_request: ModelsAsyncProcessDSRequest  # OPTIONAL
    attributes: Dict[str, Any]  # OPTIONAL
    auto_join: bool  # OPTIONAL
    auto_leave_session: bool  # OPTIONAL
    custom_urlgrpc: str  # OPTIONAL
    disable_code_generation: bool  # OPTIONAL
    disable_resend_invite: bool  # OPTIONAL
    ds_manual_set_ready: bool  # OPTIONAL
    ds_source: str  # OPTIONAL
    enable_secret: bool  # OPTIONAL
    fallback_claim_keys: List[str]  # OPTIONAL
    grpc_session_config: ModelsExtendConfiguration  # OPTIONAL
    immutable_storage: bool  # OPTIONAL
    leader_election_grace_period: int  # OPTIONAL
    manual_rejoin: bool  # OPTIONAL
    max_active_sessions: int  # OPTIONAL
    native_session_setting: ModelsNativeSessionSetting  # OPTIONAL
    preferred_claim_keys: List[str]  # OPTIONAL
    psn_base_url: str  # OPTIONAL
    text_chat_mode: Union[str, TextChatModeEnum]  # OPTIONAL
    tie_teams_session_lifetime: bool  # OPTIONAL
    ttl_hours: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_client_version(
        self, value: str
    ) -> ApimodelsCreateConfigurationTemplateRequest:
        self.client_version = value
        return self

    def with_deployment(
        self, value: str
    ) -> ApimodelsCreateConfigurationTemplateRequest:
        self.deployment = value
        return self

    def with_inactive_timeout(
        self, value: int
    ) -> ApimodelsCreateConfigurationTemplateRequest:
        self.inactive_timeout = value
        return self

    def with_invite_timeout(
        self, value: int
    ) -> ApimodelsCreateConfigurationTemplateRequest:
        self.invite_timeout = value
        return self

    def with_joinability(
        self, value: str
    ) -> ApimodelsCreateConfigurationTemplateRequest:
        self.joinability = value
        return self

    def with_max_players(
        self, value: int
    ) -> ApimodelsCreateConfigurationTemplateRequest:
        self.max_players = value
        return self

    def with_min_players(
        self, value: int
    ) -> ApimodelsCreateConfigurationTemplateRequest:
        self.min_players = value
        return self

    def with_name(self, value: str) -> ApimodelsCreateConfigurationTemplateRequest:
        self.name = value
        return self

    def with_persistent(
        self, value: bool
    ) -> ApimodelsCreateConfigurationTemplateRequest:
        self.persistent = value
        return self

    def with_requested_regions(
        self, value: List[str]
    ) -> ApimodelsCreateConfigurationTemplateRequest:
        self.requested_regions = value
        return self

    def with_text_chat(
        self, value: bool
    ) -> ApimodelsCreateConfigurationTemplateRequest:
        self.text_chat = value
        return self

    def with_type(self, value: str) -> ApimodelsCreateConfigurationTemplateRequest:
        self.type_ = value
        return self

    def with_app_name(self, value: str) -> ApimodelsCreateConfigurationTemplateRequest:
        self.app_name = value
        return self

    def with_async_process_ds_request(
        self, value: ModelsAsyncProcessDSRequest
    ) -> ApimodelsCreateConfigurationTemplateRequest:
        self.async_process_ds_request = value
        return self

    def with_attributes(
        self, value: Dict[str, Any]
    ) -> ApimodelsCreateConfigurationTemplateRequest:
        self.attributes = value
        return self

    def with_auto_join(
        self, value: bool
    ) -> ApimodelsCreateConfigurationTemplateRequest:
        self.auto_join = value
        return self

    def with_auto_leave_session(
        self, value: bool
    ) -> ApimodelsCreateConfigurationTemplateRequest:
        self.auto_leave_session = value
        return self

    def with_custom_urlgrpc(
        self, value: str
    ) -> ApimodelsCreateConfigurationTemplateRequest:
        self.custom_urlgrpc = value
        return self

    def with_disable_code_generation(
        self, value: bool
    ) -> ApimodelsCreateConfigurationTemplateRequest:
        self.disable_code_generation = value
        return self

    def with_disable_resend_invite(
        self, value: bool
    ) -> ApimodelsCreateConfigurationTemplateRequest:
        self.disable_resend_invite = value
        return self

    def with_ds_manual_set_ready(
        self, value: bool
    ) -> ApimodelsCreateConfigurationTemplateRequest:
        self.ds_manual_set_ready = value
        return self

    def with_ds_source(self, value: str) -> ApimodelsCreateConfigurationTemplateRequest:
        self.ds_source = value
        return self

    def with_enable_secret(
        self, value: bool
    ) -> ApimodelsCreateConfigurationTemplateRequest:
        self.enable_secret = value
        return self

    def with_fallback_claim_keys(
        self, value: List[str]
    ) -> ApimodelsCreateConfigurationTemplateRequest:
        self.fallback_claim_keys = value
        return self

    def with_grpc_session_config(
        self, value: ModelsExtendConfiguration
    ) -> ApimodelsCreateConfigurationTemplateRequest:
        self.grpc_session_config = value
        return self

    def with_immutable_storage(
        self, value: bool
    ) -> ApimodelsCreateConfigurationTemplateRequest:
        self.immutable_storage = value
        return self

    def with_leader_election_grace_period(
        self, value: int
    ) -> ApimodelsCreateConfigurationTemplateRequest:
        self.leader_election_grace_period = value
        return self

    def with_manual_rejoin(
        self, value: bool
    ) -> ApimodelsCreateConfigurationTemplateRequest:
        self.manual_rejoin = value
        return self

    def with_max_active_sessions(
        self, value: int
    ) -> ApimodelsCreateConfigurationTemplateRequest:
        self.max_active_sessions = value
        return self

    def with_native_session_setting(
        self, value: ModelsNativeSessionSetting
    ) -> ApimodelsCreateConfigurationTemplateRequest:
        self.native_session_setting = value
        return self

    def with_preferred_claim_keys(
        self, value: List[str]
    ) -> ApimodelsCreateConfigurationTemplateRequest:
        self.preferred_claim_keys = value
        return self

    def with_psn_base_url(
        self, value: str
    ) -> ApimodelsCreateConfigurationTemplateRequest:
        self.psn_base_url = value
        return self

    def with_text_chat_mode(
        self, value: Union[str, TextChatModeEnum]
    ) -> ApimodelsCreateConfigurationTemplateRequest:
        self.text_chat_mode = value
        return self

    def with_tie_teams_session_lifetime(
        self, value: bool
    ) -> ApimodelsCreateConfigurationTemplateRequest:
        self.tie_teams_session_lifetime = value
        return self

    def with_ttl_hours(self, value: int) -> ApimodelsCreateConfigurationTemplateRequest:
        self.ttl_hours = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "client_version"):
            result["clientVersion"] = str(self.client_version)
        elif include_empty:
            result["clientVersion"] = ""
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
        if hasattr(self, "persistent"):
            result["persistent"] = bool(self.persistent)
        elif include_empty:
            result["persistent"] = False
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
        if hasattr(self, "app_name"):
            result["appName"] = str(self.app_name)
        elif include_empty:
            result["appName"] = ""
        if hasattr(self, "async_process_ds_request"):
            result["asyncProcessDSRequest"] = self.async_process_ds_request.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["asyncProcessDSRequest"] = ModelsAsyncProcessDSRequest()
        if hasattr(self, "attributes"):
            result["attributes"] = {str(k0): v0 for k0, v0 in self.attributes.items()}
        elif include_empty:
            result["attributes"] = {}
        if hasattr(self, "auto_join"):
            result["autoJoin"] = bool(self.auto_join)
        elif include_empty:
            result["autoJoin"] = False
        if hasattr(self, "auto_leave_session"):
            result["autoLeaveSession"] = bool(self.auto_leave_session)
        elif include_empty:
            result["autoLeaveSession"] = False
        if hasattr(self, "custom_urlgrpc"):
            result["customURLGRPC"] = str(self.custom_urlgrpc)
        elif include_empty:
            result["customURLGRPC"] = ""
        if hasattr(self, "disable_code_generation"):
            result["disableCodeGeneration"] = bool(self.disable_code_generation)
        elif include_empty:
            result["disableCodeGeneration"] = False
        if hasattr(self, "disable_resend_invite"):
            result["disableResendInvite"] = bool(self.disable_resend_invite)
        elif include_empty:
            result["disableResendInvite"] = False
        if hasattr(self, "ds_manual_set_ready"):
            result["dsManualSetReady"] = bool(self.ds_manual_set_ready)
        elif include_empty:
            result["dsManualSetReady"] = False
        if hasattr(self, "ds_source"):
            result["dsSource"] = str(self.ds_source)
        elif include_empty:
            result["dsSource"] = ""
        if hasattr(self, "enable_secret"):
            result["enableSecret"] = bool(self.enable_secret)
        elif include_empty:
            result["enableSecret"] = False
        if hasattr(self, "fallback_claim_keys"):
            result["fallbackClaimKeys"] = [str(i0) for i0 in self.fallback_claim_keys]
        elif include_empty:
            result["fallbackClaimKeys"] = []
        if hasattr(self, "grpc_session_config"):
            result["grpcSessionConfig"] = self.grpc_session_config.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["grpcSessionConfig"] = ModelsExtendConfiguration()
        if hasattr(self, "immutable_storage"):
            result["immutableStorage"] = bool(self.immutable_storage)
        elif include_empty:
            result["immutableStorage"] = False
        if hasattr(self, "leader_election_grace_period"):
            result["leaderElectionGracePeriod"] = int(self.leader_election_grace_period)
        elif include_empty:
            result["leaderElectionGracePeriod"] = 0
        if hasattr(self, "manual_rejoin"):
            result["manualRejoin"] = bool(self.manual_rejoin)
        elif include_empty:
            result["manualRejoin"] = False
        if hasattr(self, "max_active_sessions"):
            result["maxActiveSessions"] = int(self.max_active_sessions)
        elif include_empty:
            result["maxActiveSessions"] = 0
        if hasattr(self, "native_session_setting"):
            result["NativeSessionSetting"] = self.native_session_setting.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["NativeSessionSetting"] = ModelsNativeSessionSetting()
        if hasattr(self, "preferred_claim_keys"):
            result["preferredClaimKeys"] = [str(i0) for i0 in self.preferred_claim_keys]
        elif include_empty:
            result["preferredClaimKeys"] = []
        if hasattr(self, "psn_base_url"):
            result["PSNBaseUrl"] = str(self.psn_base_url)
        elif include_empty:
            result["PSNBaseUrl"] = ""
        if hasattr(self, "text_chat_mode"):
            result["textChatMode"] = str(self.text_chat_mode)
        elif include_empty:
            result["textChatMode"] = Union[str, TextChatModeEnum]()
        if hasattr(self, "tie_teams_session_lifetime"):
            result["tieTeamsSessionLifetime"] = bool(self.tie_teams_session_lifetime)
        elif include_empty:
            result["tieTeamsSessionLifetime"] = False
        if hasattr(self, "ttl_hours"):
            result["ttlHours"] = int(self.ttl_hours)
        elif include_empty:
            result["ttlHours"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        client_version: str,
        deployment: str,
        inactive_timeout: int,
        invite_timeout: int,
        joinability: str,
        max_players: int,
        min_players: int,
        name: str,
        persistent: bool,
        requested_regions: List[str],
        text_chat: bool,
        type_: str,
        app_name: Optional[str] = None,
        async_process_ds_request: Optional[ModelsAsyncProcessDSRequest] = None,
        attributes: Optional[Dict[str, Any]] = None,
        auto_join: Optional[bool] = None,
        auto_leave_session: Optional[bool] = None,
        custom_urlgrpc: Optional[str] = None,
        disable_code_generation: Optional[bool] = None,
        disable_resend_invite: Optional[bool] = None,
        ds_manual_set_ready: Optional[bool] = None,
        ds_source: Optional[str] = None,
        enable_secret: Optional[bool] = None,
        fallback_claim_keys: Optional[List[str]] = None,
        grpc_session_config: Optional[ModelsExtendConfiguration] = None,
        immutable_storage: Optional[bool] = None,
        leader_election_grace_period: Optional[int] = None,
        manual_rejoin: Optional[bool] = None,
        max_active_sessions: Optional[int] = None,
        native_session_setting: Optional[ModelsNativeSessionSetting] = None,
        preferred_claim_keys: Optional[List[str]] = None,
        psn_base_url: Optional[str] = None,
        text_chat_mode: Optional[Union[str, TextChatModeEnum]] = None,
        tie_teams_session_lifetime: Optional[bool] = None,
        ttl_hours: Optional[int] = None,
        **kwargs,
    ) -> ApimodelsCreateConfigurationTemplateRequest:
        instance = cls()
        instance.client_version = client_version
        instance.deployment = deployment
        instance.inactive_timeout = inactive_timeout
        instance.invite_timeout = invite_timeout
        instance.joinability = joinability
        instance.max_players = max_players
        instance.min_players = min_players
        instance.name = name
        instance.persistent = persistent
        instance.requested_regions = requested_regions
        instance.text_chat = text_chat
        instance.type_ = type_
        if app_name is not None:
            instance.app_name = app_name
        if async_process_ds_request is not None:
            instance.async_process_ds_request = async_process_ds_request
        if attributes is not None:
            instance.attributes = attributes
        if auto_join is not None:
            instance.auto_join = auto_join
        if auto_leave_session is not None:
            instance.auto_leave_session = auto_leave_session
        if custom_urlgrpc is not None:
            instance.custom_urlgrpc = custom_urlgrpc
        if disable_code_generation is not None:
            instance.disable_code_generation = disable_code_generation
        if disable_resend_invite is not None:
            instance.disable_resend_invite = disable_resend_invite
        if ds_manual_set_ready is not None:
            instance.ds_manual_set_ready = ds_manual_set_ready
        if ds_source is not None:
            instance.ds_source = ds_source
        if enable_secret is not None:
            instance.enable_secret = enable_secret
        if fallback_claim_keys is not None:
            instance.fallback_claim_keys = fallback_claim_keys
        if grpc_session_config is not None:
            instance.grpc_session_config = grpc_session_config
        if immutable_storage is not None:
            instance.immutable_storage = immutable_storage
        if leader_election_grace_period is not None:
            instance.leader_election_grace_period = leader_election_grace_period
        if manual_rejoin is not None:
            instance.manual_rejoin = manual_rejoin
        if max_active_sessions is not None:
            instance.max_active_sessions = max_active_sessions
        if native_session_setting is not None:
            instance.native_session_setting = native_session_setting
        if preferred_claim_keys is not None:
            instance.preferred_claim_keys = preferred_claim_keys
        if psn_base_url is not None:
            instance.psn_base_url = psn_base_url
        if text_chat_mode is not None:
            instance.text_chat_mode = text_chat_mode
        if tie_teams_session_lifetime is not None:
            instance.tie_teams_session_lifetime = tie_teams_session_lifetime
        if ttl_hours is not None:
            instance.ttl_hours = ttl_hours
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsCreateConfigurationTemplateRequest:
        instance = cls()
        if not dict_:
            return instance
        if "clientVersion" in dict_ and dict_["clientVersion"] is not None:
            instance.client_version = str(dict_["clientVersion"])
        elif include_empty:
            instance.client_version = ""
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
        if "persistent" in dict_ and dict_["persistent"] is not None:
            instance.persistent = bool(dict_["persistent"])
        elif include_empty:
            instance.persistent = False
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
        if "appName" in dict_ and dict_["appName"] is not None:
            instance.app_name = str(dict_["appName"])
        elif include_empty:
            instance.app_name = ""
        if (
            "asyncProcessDSRequest" in dict_
            and dict_["asyncProcessDSRequest"] is not None
        ):
            instance.async_process_ds_request = (
                ModelsAsyncProcessDSRequest.create_from_dict(
                    dict_["asyncProcessDSRequest"], include_empty=include_empty
                )
            )
        elif include_empty:
            instance.async_process_ds_request = ModelsAsyncProcessDSRequest()
        if "attributes" in dict_ and dict_["attributes"] is not None:
            instance.attributes = {
                str(k0): v0 for k0, v0 in dict_["attributes"].items()
            }
        elif include_empty:
            instance.attributes = {}
        if "autoJoin" in dict_ and dict_["autoJoin"] is not None:
            instance.auto_join = bool(dict_["autoJoin"])
        elif include_empty:
            instance.auto_join = False
        if "autoLeaveSession" in dict_ and dict_["autoLeaveSession"] is not None:
            instance.auto_leave_session = bool(dict_["autoLeaveSession"])
        elif include_empty:
            instance.auto_leave_session = False
        if "customURLGRPC" in dict_ and dict_["customURLGRPC"] is not None:
            instance.custom_urlgrpc = str(dict_["customURLGRPC"])
        elif include_empty:
            instance.custom_urlgrpc = ""
        if (
            "disableCodeGeneration" in dict_
            and dict_["disableCodeGeneration"] is not None
        ):
            instance.disable_code_generation = bool(dict_["disableCodeGeneration"])
        elif include_empty:
            instance.disable_code_generation = False
        if "disableResendInvite" in dict_ and dict_["disableResendInvite"] is not None:
            instance.disable_resend_invite = bool(dict_["disableResendInvite"])
        elif include_empty:
            instance.disable_resend_invite = False
        if "dsManualSetReady" in dict_ and dict_["dsManualSetReady"] is not None:
            instance.ds_manual_set_ready = bool(dict_["dsManualSetReady"])
        elif include_empty:
            instance.ds_manual_set_ready = False
        if "dsSource" in dict_ and dict_["dsSource"] is not None:
            instance.ds_source = str(dict_["dsSource"])
        elif include_empty:
            instance.ds_source = ""
        if "enableSecret" in dict_ and dict_["enableSecret"] is not None:
            instance.enable_secret = bool(dict_["enableSecret"])
        elif include_empty:
            instance.enable_secret = False
        if "fallbackClaimKeys" in dict_ and dict_["fallbackClaimKeys"] is not None:
            instance.fallback_claim_keys = [
                str(i0) for i0 in dict_["fallbackClaimKeys"]
            ]
        elif include_empty:
            instance.fallback_claim_keys = []
        if "grpcSessionConfig" in dict_ and dict_["grpcSessionConfig"] is not None:
            instance.grpc_session_config = ModelsExtendConfiguration.create_from_dict(
                dict_["grpcSessionConfig"], include_empty=include_empty
            )
        elif include_empty:
            instance.grpc_session_config = ModelsExtendConfiguration()
        if "immutableStorage" in dict_ and dict_["immutableStorage"] is not None:
            instance.immutable_storage = bool(dict_["immutableStorage"])
        elif include_empty:
            instance.immutable_storage = False
        if (
            "leaderElectionGracePeriod" in dict_
            and dict_["leaderElectionGracePeriod"] is not None
        ):
            instance.leader_election_grace_period = int(
                dict_["leaderElectionGracePeriod"]
            )
        elif include_empty:
            instance.leader_election_grace_period = 0
        if "manualRejoin" in dict_ and dict_["manualRejoin"] is not None:
            instance.manual_rejoin = bool(dict_["manualRejoin"])
        elif include_empty:
            instance.manual_rejoin = False
        if "maxActiveSessions" in dict_ and dict_["maxActiveSessions"] is not None:
            instance.max_active_sessions = int(dict_["maxActiveSessions"])
        elif include_empty:
            instance.max_active_sessions = 0
        if (
            "NativeSessionSetting" in dict_
            and dict_["NativeSessionSetting"] is not None
        ):
            instance.native_session_setting = (
                ModelsNativeSessionSetting.create_from_dict(
                    dict_["NativeSessionSetting"], include_empty=include_empty
                )
            )
        elif include_empty:
            instance.native_session_setting = ModelsNativeSessionSetting()
        if "preferredClaimKeys" in dict_ and dict_["preferredClaimKeys"] is not None:
            instance.preferred_claim_keys = [
                str(i0) for i0 in dict_["preferredClaimKeys"]
            ]
        elif include_empty:
            instance.preferred_claim_keys = []
        if "PSNBaseUrl" in dict_ and dict_["PSNBaseUrl"] is not None:
            instance.psn_base_url = str(dict_["PSNBaseUrl"])
        elif include_empty:
            instance.psn_base_url = ""
        if "textChatMode" in dict_ and dict_["textChatMode"] is not None:
            instance.text_chat_mode = str(dict_["textChatMode"])
        elif include_empty:
            instance.text_chat_mode = Union[str, TextChatModeEnum]()
        if (
            "tieTeamsSessionLifetime" in dict_
            and dict_["tieTeamsSessionLifetime"] is not None
        ):
            instance.tie_teams_session_lifetime = bool(dict_["tieTeamsSessionLifetime"])
        elif include_empty:
            instance.tie_teams_session_lifetime = False
        if "ttlHours" in dict_ and dict_["ttlHours"] is not None:
            instance.ttl_hours = int(dict_["ttlHours"])
        elif include_empty:
            instance.ttl_hours = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsCreateConfigurationTemplateRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsCreateConfigurationTemplateRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsCreateConfigurationTemplateRequest,
        List[ApimodelsCreateConfigurationTemplateRequest],
        Dict[Any, ApimodelsCreateConfigurationTemplateRequest],
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
            "deployment": "deployment",
            "inactiveTimeout": "inactive_timeout",
            "inviteTimeout": "invite_timeout",
            "joinability": "joinability",
            "maxPlayers": "max_players",
            "minPlayers": "min_players",
            "name": "name",
            "persistent": "persistent",
            "requestedRegions": "requested_regions",
            "textChat": "text_chat",
            "type": "type_",
            "appName": "app_name",
            "asyncProcessDSRequest": "async_process_ds_request",
            "attributes": "attributes",
            "autoJoin": "auto_join",
            "autoLeaveSession": "auto_leave_session",
            "customURLGRPC": "custom_urlgrpc",
            "disableCodeGeneration": "disable_code_generation",
            "disableResendInvite": "disable_resend_invite",
            "dsManualSetReady": "ds_manual_set_ready",
            "dsSource": "ds_source",
            "enableSecret": "enable_secret",
            "fallbackClaimKeys": "fallback_claim_keys",
            "grpcSessionConfig": "grpc_session_config",
            "immutableStorage": "immutable_storage",
            "leaderElectionGracePeriod": "leader_election_grace_period",
            "manualRejoin": "manual_rejoin",
            "maxActiveSessions": "max_active_sessions",
            "NativeSessionSetting": "native_session_setting",
            "preferredClaimKeys": "preferred_claim_keys",
            "PSNBaseUrl": "psn_base_url",
            "textChatMode": "text_chat_mode",
            "tieTeamsSessionLifetime": "tie_teams_session_lifetime",
            "ttlHours": "ttl_hours",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "clientVersion": True,
            "deployment": True,
            "inactiveTimeout": True,
            "inviteTimeout": True,
            "joinability": True,
            "maxPlayers": True,
            "minPlayers": True,
            "name": True,
            "persistent": True,
            "requestedRegions": True,
            "textChat": True,
            "type": True,
            "appName": False,
            "asyncProcessDSRequest": False,
            "attributes": False,
            "autoJoin": False,
            "autoLeaveSession": False,
            "customURLGRPC": False,
            "disableCodeGeneration": False,
            "disableResendInvite": False,
            "dsManualSetReady": False,
            "dsSource": False,
            "enableSecret": False,
            "fallbackClaimKeys": False,
            "grpcSessionConfig": False,
            "immutableStorage": False,
            "leaderElectionGracePeriod": False,
            "manualRejoin": False,
            "maxActiveSessions": False,
            "NativeSessionSetting": False,
            "preferredClaimKeys": False,
            "PSNBaseUrl": False,
            "textChatMode": False,
            "tieTeamsSessionLifetime": False,
            "ttlHours": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "textChatMode": ["GAME", "NONE", "TEAM"],
        }

    # endregion static methods
