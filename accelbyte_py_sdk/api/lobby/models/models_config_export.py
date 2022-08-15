# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Lobby Server (staging)

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


class ModelsConfigExport(Model):
    """Models config export (models.ConfigExport)

    Properties:
        allow_invite_non_connected_user: (allowInviteNonConnectedUser) REQUIRED bool

        allow_join_party_during_matchmaking: (allowJoinPartyDuringMatchmaking) REQUIRED bool

        auto_kick_on_disconnect: (autoKickOnDisconnect) REQUIRED bool

        auto_kick_on_disconnect_delay: (autoKickOnDisconnectDelay) REQUIRED int

        cancel_ticket_on_disconnect: (cancelTicketOnDisconnect) REQUIRED bool

        chat_rate_limit_burst: (chatRateLimitBurst) REQUIRED int

        chat_rate_limit_duration: (chatRateLimitDuration) REQUIRED int

        concurrent_users_limit: (concurrentUsersLimit) REQUIRED int

        disable_invitation_on_join_party: (disableInvitationOnJoinParty) REQUIRED bool

        enable_chat: (enableChat) REQUIRED bool

        entitlement_check: (entitlementCheck) REQUIRED bool

        entitlement_item_id: (entitlementItemID) REQUIRED str

        general_rate_limit_burst: (generalRateLimitBurst) REQUIRED int

        general_rate_limit_duration: (generalRateLimitDuration) REQUIRED int

        keep_presence_activity_on_disconnect: (keepPresenceActivityOnDisconnect) REQUIRED bool

        max_ds_wait_time: (maxDSWaitTime) REQUIRED int

        max_party_member: (maxPartyMember) REQUIRED int

        namespace: (namespace) REQUIRED str

        profanity_filter: (profanityFilter) REQUIRED bool

        ready_consent_timeout: (readyConsentTimeout) REQUIRED int
    """

    # region fields

    allow_invite_non_connected_user: bool  # REQUIRED
    allow_join_party_during_matchmaking: bool  # REQUIRED
    auto_kick_on_disconnect: bool  # REQUIRED
    auto_kick_on_disconnect_delay: int  # REQUIRED
    cancel_ticket_on_disconnect: bool  # REQUIRED
    chat_rate_limit_burst: int  # REQUIRED
    chat_rate_limit_duration: int  # REQUIRED
    concurrent_users_limit: int  # REQUIRED
    disable_invitation_on_join_party: bool  # REQUIRED
    enable_chat: bool  # REQUIRED
    entitlement_check: bool  # REQUIRED
    entitlement_item_id: str  # REQUIRED
    general_rate_limit_burst: int  # REQUIRED
    general_rate_limit_duration: int  # REQUIRED
    keep_presence_activity_on_disconnect: bool  # REQUIRED
    max_ds_wait_time: int  # REQUIRED
    max_party_member: int  # REQUIRED
    namespace: str  # REQUIRED
    profanity_filter: bool  # REQUIRED
    ready_consent_timeout: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_allow_invite_non_connected_user(self, value: bool) -> ModelsConfigExport:
        self.allow_invite_non_connected_user = value
        return self

    def with_allow_join_party_during_matchmaking(
        self, value: bool
    ) -> ModelsConfigExport:
        self.allow_join_party_during_matchmaking = value
        return self

    def with_auto_kick_on_disconnect(self, value: bool) -> ModelsConfigExport:
        self.auto_kick_on_disconnect = value
        return self

    def with_auto_kick_on_disconnect_delay(self, value: int) -> ModelsConfigExport:
        self.auto_kick_on_disconnect_delay = value
        return self

    def with_cancel_ticket_on_disconnect(self, value: bool) -> ModelsConfigExport:
        self.cancel_ticket_on_disconnect = value
        return self

    def with_chat_rate_limit_burst(self, value: int) -> ModelsConfigExport:
        self.chat_rate_limit_burst = value
        return self

    def with_chat_rate_limit_duration(self, value: int) -> ModelsConfigExport:
        self.chat_rate_limit_duration = value
        return self

    def with_concurrent_users_limit(self, value: int) -> ModelsConfigExport:
        self.concurrent_users_limit = value
        return self

    def with_disable_invitation_on_join_party(self, value: bool) -> ModelsConfigExport:
        self.disable_invitation_on_join_party = value
        return self

    def with_enable_chat(self, value: bool) -> ModelsConfigExport:
        self.enable_chat = value
        return self

    def with_entitlement_check(self, value: bool) -> ModelsConfigExport:
        self.entitlement_check = value
        return self

    def with_entitlement_item_id(self, value: str) -> ModelsConfigExport:
        self.entitlement_item_id = value
        return self

    def with_general_rate_limit_burst(self, value: int) -> ModelsConfigExport:
        self.general_rate_limit_burst = value
        return self

    def with_general_rate_limit_duration(self, value: int) -> ModelsConfigExport:
        self.general_rate_limit_duration = value
        return self

    def with_keep_presence_activity_on_disconnect(
        self, value: bool
    ) -> ModelsConfigExport:
        self.keep_presence_activity_on_disconnect = value
        return self

    def with_max_ds_wait_time(self, value: int) -> ModelsConfigExport:
        self.max_ds_wait_time = value
        return self

    def with_max_party_member(self, value: int) -> ModelsConfigExport:
        self.max_party_member = value
        return self

    def with_namespace(self, value: str) -> ModelsConfigExport:
        self.namespace = value
        return self

    def with_profanity_filter(self, value: bool) -> ModelsConfigExport:
        self.profanity_filter = value
        return self

    def with_ready_consent_timeout(self, value: int) -> ModelsConfigExport:
        self.ready_consent_timeout = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "allow_invite_non_connected_user"):
            result["allowInviteNonConnectedUser"] = bool(
                self.allow_invite_non_connected_user
            )
        elif include_empty:
            result["allowInviteNonConnectedUser"] = False
        if hasattr(self, "allow_join_party_during_matchmaking"):
            result["allowJoinPartyDuringMatchmaking"] = bool(
                self.allow_join_party_during_matchmaking
            )
        elif include_empty:
            result["allowJoinPartyDuringMatchmaking"] = False
        if hasattr(self, "auto_kick_on_disconnect"):
            result["autoKickOnDisconnect"] = bool(self.auto_kick_on_disconnect)
        elif include_empty:
            result["autoKickOnDisconnect"] = False
        if hasattr(self, "auto_kick_on_disconnect_delay"):
            result["autoKickOnDisconnectDelay"] = int(
                self.auto_kick_on_disconnect_delay
            )
        elif include_empty:
            result["autoKickOnDisconnectDelay"] = 0
        if hasattr(self, "cancel_ticket_on_disconnect"):
            result["cancelTicketOnDisconnect"] = bool(self.cancel_ticket_on_disconnect)
        elif include_empty:
            result["cancelTicketOnDisconnect"] = False
        if hasattr(self, "chat_rate_limit_burst"):
            result["chatRateLimitBurst"] = int(self.chat_rate_limit_burst)
        elif include_empty:
            result["chatRateLimitBurst"] = 0
        if hasattr(self, "chat_rate_limit_duration"):
            result["chatRateLimitDuration"] = int(self.chat_rate_limit_duration)
        elif include_empty:
            result["chatRateLimitDuration"] = 0
        if hasattr(self, "concurrent_users_limit"):
            result["concurrentUsersLimit"] = int(self.concurrent_users_limit)
        elif include_empty:
            result["concurrentUsersLimit"] = 0
        if hasattr(self, "disable_invitation_on_join_party"):
            result["disableInvitationOnJoinParty"] = bool(
                self.disable_invitation_on_join_party
            )
        elif include_empty:
            result["disableInvitationOnJoinParty"] = False
        if hasattr(self, "enable_chat"):
            result["enableChat"] = bool(self.enable_chat)
        elif include_empty:
            result["enableChat"] = False
        if hasattr(self, "entitlement_check"):
            result["entitlementCheck"] = bool(self.entitlement_check)
        elif include_empty:
            result["entitlementCheck"] = False
        if hasattr(self, "entitlement_item_id"):
            result["entitlementItemID"] = str(self.entitlement_item_id)
        elif include_empty:
            result["entitlementItemID"] = ""
        if hasattr(self, "general_rate_limit_burst"):
            result["generalRateLimitBurst"] = int(self.general_rate_limit_burst)
        elif include_empty:
            result["generalRateLimitBurst"] = 0
        if hasattr(self, "general_rate_limit_duration"):
            result["generalRateLimitDuration"] = int(self.general_rate_limit_duration)
        elif include_empty:
            result["generalRateLimitDuration"] = 0
        if hasattr(self, "keep_presence_activity_on_disconnect"):
            result["keepPresenceActivityOnDisconnect"] = bool(
                self.keep_presence_activity_on_disconnect
            )
        elif include_empty:
            result["keepPresenceActivityOnDisconnect"] = False
        if hasattr(self, "max_ds_wait_time"):
            result["maxDSWaitTime"] = int(self.max_ds_wait_time)
        elif include_empty:
            result["maxDSWaitTime"] = 0
        if hasattr(self, "max_party_member"):
            result["maxPartyMember"] = int(self.max_party_member)
        elif include_empty:
            result["maxPartyMember"] = 0
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "profanity_filter"):
            result["profanityFilter"] = bool(self.profanity_filter)
        elif include_empty:
            result["profanityFilter"] = False
        if hasattr(self, "ready_consent_timeout"):
            result["readyConsentTimeout"] = int(self.ready_consent_timeout)
        elif include_empty:
            result["readyConsentTimeout"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        allow_invite_non_connected_user: bool,
        allow_join_party_during_matchmaking: bool,
        auto_kick_on_disconnect: bool,
        auto_kick_on_disconnect_delay: int,
        cancel_ticket_on_disconnect: bool,
        chat_rate_limit_burst: int,
        chat_rate_limit_duration: int,
        concurrent_users_limit: int,
        disable_invitation_on_join_party: bool,
        enable_chat: bool,
        entitlement_check: bool,
        entitlement_item_id: str,
        general_rate_limit_burst: int,
        general_rate_limit_duration: int,
        keep_presence_activity_on_disconnect: bool,
        max_ds_wait_time: int,
        max_party_member: int,
        namespace: str,
        profanity_filter: bool,
        ready_consent_timeout: int,
    ) -> ModelsConfigExport:
        instance = cls()
        instance.allow_invite_non_connected_user = allow_invite_non_connected_user
        instance.allow_join_party_during_matchmaking = (
            allow_join_party_during_matchmaking
        )
        instance.auto_kick_on_disconnect = auto_kick_on_disconnect
        instance.auto_kick_on_disconnect_delay = auto_kick_on_disconnect_delay
        instance.cancel_ticket_on_disconnect = cancel_ticket_on_disconnect
        instance.chat_rate_limit_burst = chat_rate_limit_burst
        instance.chat_rate_limit_duration = chat_rate_limit_duration
        instance.concurrent_users_limit = concurrent_users_limit
        instance.disable_invitation_on_join_party = disable_invitation_on_join_party
        instance.enable_chat = enable_chat
        instance.entitlement_check = entitlement_check
        instance.entitlement_item_id = entitlement_item_id
        instance.general_rate_limit_burst = general_rate_limit_burst
        instance.general_rate_limit_duration = general_rate_limit_duration
        instance.keep_presence_activity_on_disconnect = (
            keep_presence_activity_on_disconnect
        )
        instance.max_ds_wait_time = max_ds_wait_time
        instance.max_party_member = max_party_member
        instance.namespace = namespace
        instance.profanity_filter = profanity_filter
        instance.ready_consent_timeout = ready_consent_timeout
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsConfigExport:
        instance = cls()
        if not dict_:
            return instance
        if (
            "allowInviteNonConnectedUser" in dict_
            and dict_["allowInviteNonConnectedUser"] is not None
        ):
            instance.allow_invite_non_connected_user = bool(
                dict_["allowInviteNonConnectedUser"]
            )
        elif include_empty:
            instance.allow_invite_non_connected_user = False
        if (
            "allowJoinPartyDuringMatchmaking" in dict_
            and dict_["allowJoinPartyDuringMatchmaking"] is not None
        ):
            instance.allow_join_party_during_matchmaking = bool(
                dict_["allowJoinPartyDuringMatchmaking"]
            )
        elif include_empty:
            instance.allow_join_party_during_matchmaking = False
        if (
            "autoKickOnDisconnect" in dict_
            and dict_["autoKickOnDisconnect"] is not None
        ):
            instance.auto_kick_on_disconnect = bool(dict_["autoKickOnDisconnect"])
        elif include_empty:
            instance.auto_kick_on_disconnect = False
        if (
            "autoKickOnDisconnectDelay" in dict_
            and dict_["autoKickOnDisconnectDelay"] is not None
        ):
            instance.auto_kick_on_disconnect_delay = int(
                dict_["autoKickOnDisconnectDelay"]
            )
        elif include_empty:
            instance.auto_kick_on_disconnect_delay = 0
        if (
            "cancelTicketOnDisconnect" in dict_
            and dict_["cancelTicketOnDisconnect"] is not None
        ):
            instance.cancel_ticket_on_disconnect = bool(
                dict_["cancelTicketOnDisconnect"]
            )
        elif include_empty:
            instance.cancel_ticket_on_disconnect = False
        if "chatRateLimitBurst" in dict_ and dict_["chatRateLimitBurst"] is not None:
            instance.chat_rate_limit_burst = int(dict_["chatRateLimitBurst"])
        elif include_empty:
            instance.chat_rate_limit_burst = 0
        if (
            "chatRateLimitDuration" in dict_
            and dict_["chatRateLimitDuration"] is not None
        ):
            instance.chat_rate_limit_duration = int(dict_["chatRateLimitDuration"])
        elif include_empty:
            instance.chat_rate_limit_duration = 0
        if (
            "concurrentUsersLimit" in dict_
            and dict_["concurrentUsersLimit"] is not None
        ):
            instance.concurrent_users_limit = int(dict_["concurrentUsersLimit"])
        elif include_empty:
            instance.concurrent_users_limit = 0
        if (
            "disableInvitationOnJoinParty" in dict_
            and dict_["disableInvitationOnJoinParty"] is not None
        ):
            instance.disable_invitation_on_join_party = bool(
                dict_["disableInvitationOnJoinParty"]
            )
        elif include_empty:
            instance.disable_invitation_on_join_party = False
        if "enableChat" in dict_ and dict_["enableChat"] is not None:
            instance.enable_chat = bool(dict_["enableChat"])
        elif include_empty:
            instance.enable_chat = False
        if "entitlementCheck" in dict_ and dict_["entitlementCheck"] is not None:
            instance.entitlement_check = bool(dict_["entitlementCheck"])
        elif include_empty:
            instance.entitlement_check = False
        if "entitlementItemID" in dict_ and dict_["entitlementItemID"] is not None:
            instance.entitlement_item_id = str(dict_["entitlementItemID"])
        elif include_empty:
            instance.entitlement_item_id = ""
        if (
            "generalRateLimitBurst" in dict_
            and dict_["generalRateLimitBurst"] is not None
        ):
            instance.general_rate_limit_burst = int(dict_["generalRateLimitBurst"])
        elif include_empty:
            instance.general_rate_limit_burst = 0
        if (
            "generalRateLimitDuration" in dict_
            and dict_["generalRateLimitDuration"] is not None
        ):
            instance.general_rate_limit_duration = int(
                dict_["generalRateLimitDuration"]
            )
        elif include_empty:
            instance.general_rate_limit_duration = 0
        if (
            "keepPresenceActivityOnDisconnect" in dict_
            and dict_["keepPresenceActivityOnDisconnect"] is not None
        ):
            instance.keep_presence_activity_on_disconnect = bool(
                dict_["keepPresenceActivityOnDisconnect"]
            )
        elif include_empty:
            instance.keep_presence_activity_on_disconnect = False
        if "maxDSWaitTime" in dict_ and dict_["maxDSWaitTime"] is not None:
            instance.max_ds_wait_time = int(dict_["maxDSWaitTime"])
        elif include_empty:
            instance.max_ds_wait_time = 0
        if "maxPartyMember" in dict_ and dict_["maxPartyMember"] is not None:
            instance.max_party_member = int(dict_["maxPartyMember"])
        elif include_empty:
            instance.max_party_member = 0
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "profanityFilter" in dict_ and dict_["profanityFilter"] is not None:
            instance.profanity_filter = bool(dict_["profanityFilter"])
        elif include_empty:
            instance.profanity_filter = False
        if "readyConsentTimeout" in dict_ and dict_["readyConsentTimeout"] is not None:
            instance.ready_consent_timeout = int(dict_["readyConsentTimeout"])
        elif include_empty:
            instance.ready_consent_timeout = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsConfigExport]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsConfigExport]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsConfigExport, List[ModelsConfigExport], Dict[Any, ModelsConfigExport]
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
            "allowInviteNonConnectedUser": "allow_invite_non_connected_user",
            "allowJoinPartyDuringMatchmaking": "allow_join_party_during_matchmaking",
            "autoKickOnDisconnect": "auto_kick_on_disconnect",
            "autoKickOnDisconnectDelay": "auto_kick_on_disconnect_delay",
            "cancelTicketOnDisconnect": "cancel_ticket_on_disconnect",
            "chatRateLimitBurst": "chat_rate_limit_burst",
            "chatRateLimitDuration": "chat_rate_limit_duration",
            "concurrentUsersLimit": "concurrent_users_limit",
            "disableInvitationOnJoinParty": "disable_invitation_on_join_party",
            "enableChat": "enable_chat",
            "entitlementCheck": "entitlement_check",
            "entitlementItemID": "entitlement_item_id",
            "generalRateLimitBurst": "general_rate_limit_burst",
            "generalRateLimitDuration": "general_rate_limit_duration",
            "keepPresenceActivityOnDisconnect": "keep_presence_activity_on_disconnect",
            "maxDSWaitTime": "max_ds_wait_time",
            "maxPartyMember": "max_party_member",
            "namespace": "namespace",
            "profanityFilter": "profanity_filter",
            "readyConsentTimeout": "ready_consent_timeout",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "allowInviteNonConnectedUser": True,
            "allowJoinPartyDuringMatchmaking": True,
            "autoKickOnDisconnect": True,
            "autoKickOnDisconnectDelay": True,
            "cancelTicketOnDisconnect": True,
            "chatRateLimitBurst": True,
            "chatRateLimitDuration": True,
            "concurrentUsersLimit": True,
            "disableInvitationOnJoinParty": True,
            "enableChat": True,
            "entitlementCheck": True,
            "entitlementItemID": True,
            "generalRateLimitBurst": True,
            "generalRateLimitDuration": True,
            "keepPresenceActivityOnDisconnect": True,
            "maxDSWaitTime": True,
            "maxPartyMember": True,
            "namespace": True,
            "profanityFilter": True,
            "readyConsentTimeout": True,
        }

    # endregion static methods
