# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-lobby-server (staging)

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


class ModelsConfigReq(Model):
    """Models config req (models.ConfigReq)

    Properties:
        allow_invite_non_connected_user: (allowInviteNonConnectedUser) OPTIONAL bool

        auto_kick_on_disconnect: (autoKickOnDisconnect) OPTIONAL bool

        auto_kick_on_disconnect_delay: (autoKickOnDisconnectDelay) OPTIONAL int

        cancel_ticket_on_disconnect: (cancelTicketOnDisconnect) OPTIONAL bool

        chat_rate_limit_burst: (chatRateLimitBurst) OPTIONAL int

        chat_rate_limit_duration: (chatRateLimitDuration) OPTIONAL int

        concurrent_users_limit: (concurrentUsersLimit) OPTIONAL int

        disable_party_invitation_token: (disablePartyInvitationToken) OPTIONAL bool

        enable_chat: (enableChat) OPTIONAL bool

        entitlement_check: (entitlementCheck) OPTIONAL bool

        entitlement_item_id: (entitlementItemID) OPTIONAL str

        general_rate_limit_burst: (generalRateLimitBurst) OPTIONAL int

        general_rate_limit_duration: (generalRateLimitDuration) OPTIONAL int

        keep_presence_activity_on_disconnect: (keepPresenceActivityOnDisconnect) OPTIONAL bool

        max_party_member: (maxPartyMember) OPTIONAL int

        profanity_filter: (profanityFilter) OPTIONAL bool

        ready_consent_timeout: (readyConsentTimeout) OPTIONAL int
    """

    # region fields

    allow_invite_non_connected_user: bool                                                          # OPTIONAL
    auto_kick_on_disconnect: bool                                                                  # OPTIONAL
    auto_kick_on_disconnect_delay: int                                                             # OPTIONAL
    cancel_ticket_on_disconnect: bool                                                              # OPTIONAL
    chat_rate_limit_burst: int                                                                     # OPTIONAL
    chat_rate_limit_duration: int                                                                  # OPTIONAL
    concurrent_users_limit: int                                                                    # OPTIONAL
    disable_party_invitation_token: bool                                                           # OPTIONAL
    enable_chat: bool                                                                              # OPTIONAL
    entitlement_check: bool                                                                        # OPTIONAL
    entitlement_item_id: str                                                                       # OPTIONAL
    general_rate_limit_burst: int                                                                  # OPTIONAL
    general_rate_limit_duration: int                                                               # OPTIONAL
    keep_presence_activity_on_disconnect: bool                                                     # OPTIONAL
    max_party_member: int                                                                          # OPTIONAL
    profanity_filter: bool                                                                         # OPTIONAL
    ready_consent_timeout: int                                                                     # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_allow_invite_non_connected_user(self, value: bool) -> ModelsConfigReq:
        self.allow_invite_non_connected_user = value
        return self

    def with_auto_kick_on_disconnect(self, value: bool) -> ModelsConfigReq:
        self.auto_kick_on_disconnect = value
        return self

    def with_auto_kick_on_disconnect_delay(self, value: int) -> ModelsConfigReq:
        self.auto_kick_on_disconnect_delay = value
        return self

    def with_cancel_ticket_on_disconnect(self, value: bool) -> ModelsConfigReq:
        self.cancel_ticket_on_disconnect = value
        return self

    def with_chat_rate_limit_burst(self, value: int) -> ModelsConfigReq:
        self.chat_rate_limit_burst = value
        return self

    def with_chat_rate_limit_duration(self, value: int) -> ModelsConfigReq:
        self.chat_rate_limit_duration = value
        return self

    def with_concurrent_users_limit(self, value: int) -> ModelsConfigReq:
        self.concurrent_users_limit = value
        return self

    def with_disable_party_invitation_token(self, value: bool) -> ModelsConfigReq:
        self.disable_party_invitation_token = value
        return self

    def with_enable_chat(self, value: bool) -> ModelsConfigReq:
        self.enable_chat = value
        return self

    def with_entitlement_check(self, value: bool) -> ModelsConfigReq:
        self.entitlement_check = value
        return self

    def with_entitlement_item_id(self, value: str) -> ModelsConfigReq:
        self.entitlement_item_id = value
        return self

    def with_general_rate_limit_burst(self, value: int) -> ModelsConfigReq:
        self.general_rate_limit_burst = value
        return self

    def with_general_rate_limit_duration(self, value: int) -> ModelsConfigReq:
        self.general_rate_limit_duration = value
        return self

    def with_keep_presence_activity_on_disconnect(self, value: bool) -> ModelsConfigReq:
        self.keep_presence_activity_on_disconnect = value
        return self

    def with_max_party_member(self, value: int) -> ModelsConfigReq:
        self.max_party_member = value
        return self

    def with_profanity_filter(self, value: bool) -> ModelsConfigReq:
        self.profanity_filter = value
        return self

    def with_ready_consent_timeout(self, value: int) -> ModelsConfigReq:
        self.ready_consent_timeout = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "allow_invite_non_connected_user"):
            result["allowInviteNonConnectedUser"] = bool(self.allow_invite_non_connected_user)
        elif include_empty:
            result["allowInviteNonConnectedUser"] = bool()
        if hasattr(self, "auto_kick_on_disconnect"):
            result["autoKickOnDisconnect"] = bool(self.auto_kick_on_disconnect)
        elif include_empty:
            result["autoKickOnDisconnect"] = bool()
        if hasattr(self, "auto_kick_on_disconnect_delay"):
            result["autoKickOnDisconnectDelay"] = int(self.auto_kick_on_disconnect_delay)
        elif include_empty:
            result["autoKickOnDisconnectDelay"] = int()
        if hasattr(self, "cancel_ticket_on_disconnect"):
            result["cancelTicketOnDisconnect"] = bool(self.cancel_ticket_on_disconnect)
        elif include_empty:
            result["cancelTicketOnDisconnect"] = bool()
        if hasattr(self, "chat_rate_limit_burst"):
            result["chatRateLimitBurst"] = int(self.chat_rate_limit_burst)
        elif include_empty:
            result["chatRateLimitBurst"] = int()
        if hasattr(self, "chat_rate_limit_duration"):
            result["chatRateLimitDuration"] = int(self.chat_rate_limit_duration)
        elif include_empty:
            result["chatRateLimitDuration"] = int()
        if hasattr(self, "concurrent_users_limit"):
            result["concurrentUsersLimit"] = int(self.concurrent_users_limit)
        elif include_empty:
            result["concurrentUsersLimit"] = int()
        if hasattr(self, "disable_party_invitation_token"):
            result["disablePartyInvitationToken"] = bool(self.disable_party_invitation_token)
        elif include_empty:
            result["disablePartyInvitationToken"] = bool()
        if hasattr(self, "enable_chat"):
            result["enableChat"] = bool(self.enable_chat)
        elif include_empty:
            result["enableChat"] = bool()
        if hasattr(self, "entitlement_check"):
            result["entitlementCheck"] = bool(self.entitlement_check)
        elif include_empty:
            result["entitlementCheck"] = bool()
        if hasattr(self, "entitlement_item_id"):
            result["entitlementItemID"] = str(self.entitlement_item_id)
        elif include_empty:
            result["entitlementItemID"] = str()
        if hasattr(self, "general_rate_limit_burst"):
            result["generalRateLimitBurst"] = int(self.general_rate_limit_burst)
        elif include_empty:
            result["generalRateLimitBurst"] = int()
        if hasattr(self, "general_rate_limit_duration"):
            result["generalRateLimitDuration"] = int(self.general_rate_limit_duration)
        elif include_empty:
            result["generalRateLimitDuration"] = int()
        if hasattr(self, "keep_presence_activity_on_disconnect"):
            result["keepPresenceActivityOnDisconnect"] = bool(self.keep_presence_activity_on_disconnect)
        elif include_empty:
            result["keepPresenceActivityOnDisconnect"] = bool()
        if hasattr(self, "max_party_member"):
            result["maxPartyMember"] = int(self.max_party_member)
        elif include_empty:
            result["maxPartyMember"] = int()
        if hasattr(self, "profanity_filter"):
            result["profanityFilter"] = bool(self.profanity_filter)
        elif include_empty:
            result["profanityFilter"] = bool()
        if hasattr(self, "ready_consent_timeout"):
            result["readyConsentTimeout"] = int(self.ready_consent_timeout)
        elif include_empty:
            result["readyConsentTimeout"] = int()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        allow_invite_non_connected_user: Optional[bool] = None,
        auto_kick_on_disconnect: Optional[bool] = None,
        auto_kick_on_disconnect_delay: Optional[int] = None,
        cancel_ticket_on_disconnect: Optional[bool] = None,
        chat_rate_limit_burst: Optional[int] = None,
        chat_rate_limit_duration: Optional[int] = None,
        concurrent_users_limit: Optional[int] = None,
        disable_party_invitation_token: Optional[bool] = None,
        enable_chat: Optional[bool] = None,
        entitlement_check: Optional[bool] = None,
        entitlement_item_id: Optional[str] = None,
        general_rate_limit_burst: Optional[int] = None,
        general_rate_limit_duration: Optional[int] = None,
        keep_presence_activity_on_disconnect: Optional[bool] = None,
        max_party_member: Optional[int] = None,
        profanity_filter: Optional[bool] = None,
        ready_consent_timeout: Optional[int] = None,
    ) -> ModelsConfigReq:
        instance = cls()
        if allow_invite_non_connected_user is not None:
            instance.allow_invite_non_connected_user = allow_invite_non_connected_user
        if auto_kick_on_disconnect is not None:
            instance.auto_kick_on_disconnect = auto_kick_on_disconnect
        if auto_kick_on_disconnect_delay is not None:
            instance.auto_kick_on_disconnect_delay = auto_kick_on_disconnect_delay
        if cancel_ticket_on_disconnect is not None:
            instance.cancel_ticket_on_disconnect = cancel_ticket_on_disconnect
        if chat_rate_limit_burst is not None:
            instance.chat_rate_limit_burst = chat_rate_limit_burst
        if chat_rate_limit_duration is not None:
            instance.chat_rate_limit_duration = chat_rate_limit_duration
        if concurrent_users_limit is not None:
            instance.concurrent_users_limit = concurrent_users_limit
        if disable_party_invitation_token is not None:
            instance.disable_party_invitation_token = disable_party_invitation_token
        if enable_chat is not None:
            instance.enable_chat = enable_chat
        if entitlement_check is not None:
            instance.entitlement_check = entitlement_check
        if entitlement_item_id is not None:
            instance.entitlement_item_id = entitlement_item_id
        if general_rate_limit_burst is not None:
            instance.general_rate_limit_burst = general_rate_limit_burst
        if general_rate_limit_duration is not None:
            instance.general_rate_limit_duration = general_rate_limit_duration
        if keep_presence_activity_on_disconnect is not None:
            instance.keep_presence_activity_on_disconnect = keep_presence_activity_on_disconnect
        if max_party_member is not None:
            instance.max_party_member = max_party_member
        if profanity_filter is not None:
            instance.profanity_filter = profanity_filter
        if ready_consent_timeout is not None:
            instance.ready_consent_timeout = ready_consent_timeout
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsConfigReq:
        instance = cls()
        if not dict_:
            return instance
        if "allowInviteNonConnectedUser" in dict_ and dict_["allowInviteNonConnectedUser"] is not None:
            instance.allow_invite_non_connected_user = bool(dict_["allowInviteNonConnectedUser"])
        elif include_empty:
            instance.allow_invite_non_connected_user = bool()
        if "autoKickOnDisconnect" in dict_ and dict_["autoKickOnDisconnect"] is not None:
            instance.auto_kick_on_disconnect = bool(dict_["autoKickOnDisconnect"])
        elif include_empty:
            instance.auto_kick_on_disconnect = bool()
        if "autoKickOnDisconnectDelay" in dict_ and dict_["autoKickOnDisconnectDelay"] is not None:
            instance.auto_kick_on_disconnect_delay = int(dict_["autoKickOnDisconnectDelay"])
        elif include_empty:
            instance.auto_kick_on_disconnect_delay = int()
        if "cancelTicketOnDisconnect" in dict_ and dict_["cancelTicketOnDisconnect"] is not None:
            instance.cancel_ticket_on_disconnect = bool(dict_["cancelTicketOnDisconnect"])
        elif include_empty:
            instance.cancel_ticket_on_disconnect = bool()
        if "chatRateLimitBurst" in dict_ and dict_["chatRateLimitBurst"] is not None:
            instance.chat_rate_limit_burst = int(dict_["chatRateLimitBurst"])
        elif include_empty:
            instance.chat_rate_limit_burst = int()
        if "chatRateLimitDuration" in dict_ and dict_["chatRateLimitDuration"] is not None:
            instance.chat_rate_limit_duration = int(dict_["chatRateLimitDuration"])
        elif include_empty:
            instance.chat_rate_limit_duration = int()
        if "concurrentUsersLimit" in dict_ and dict_["concurrentUsersLimit"] is not None:
            instance.concurrent_users_limit = int(dict_["concurrentUsersLimit"])
        elif include_empty:
            instance.concurrent_users_limit = int()
        if "disablePartyInvitationToken" in dict_ and dict_["disablePartyInvitationToken"] is not None:
            instance.disable_party_invitation_token = bool(dict_["disablePartyInvitationToken"])
        elif include_empty:
            instance.disable_party_invitation_token = bool()
        if "enableChat" in dict_ and dict_["enableChat"] is not None:
            instance.enable_chat = bool(dict_["enableChat"])
        elif include_empty:
            instance.enable_chat = bool()
        if "entitlementCheck" in dict_ and dict_["entitlementCheck"] is not None:
            instance.entitlement_check = bool(dict_["entitlementCheck"])
        elif include_empty:
            instance.entitlement_check = bool()
        if "entitlementItemID" in dict_ and dict_["entitlementItemID"] is not None:
            instance.entitlement_item_id = str(dict_["entitlementItemID"])
        elif include_empty:
            instance.entitlement_item_id = str()
        if "generalRateLimitBurst" in dict_ and dict_["generalRateLimitBurst"] is not None:
            instance.general_rate_limit_burst = int(dict_["generalRateLimitBurst"])
        elif include_empty:
            instance.general_rate_limit_burst = int()
        if "generalRateLimitDuration" in dict_ and dict_["generalRateLimitDuration"] is not None:
            instance.general_rate_limit_duration = int(dict_["generalRateLimitDuration"])
        elif include_empty:
            instance.general_rate_limit_duration = int()
        if "keepPresenceActivityOnDisconnect" in dict_ and dict_["keepPresenceActivityOnDisconnect"] is not None:
            instance.keep_presence_activity_on_disconnect = bool(dict_["keepPresenceActivityOnDisconnect"])
        elif include_empty:
            instance.keep_presence_activity_on_disconnect = bool()
        if "maxPartyMember" in dict_ and dict_["maxPartyMember"] is not None:
            instance.max_party_member = int(dict_["maxPartyMember"])
        elif include_empty:
            instance.max_party_member = int()
        if "profanityFilter" in dict_ and dict_["profanityFilter"] is not None:
            instance.profanity_filter = bool(dict_["profanityFilter"])
        elif include_empty:
            instance.profanity_filter = bool()
        if "readyConsentTimeout" in dict_ and dict_["readyConsentTimeout"] is not None:
            instance.ready_consent_timeout = int(dict_["readyConsentTimeout"])
        elif include_empty:
            instance.ready_consent_timeout = int()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, ModelsConfigReq]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[ModelsConfigReq]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[ModelsConfigReq, List[ModelsConfigReq], Dict[Any, ModelsConfigReq]]:
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
            "allowInviteNonConnectedUser": "allow_invite_non_connected_user",
            "autoKickOnDisconnect": "auto_kick_on_disconnect",
            "autoKickOnDisconnectDelay": "auto_kick_on_disconnect_delay",
            "cancelTicketOnDisconnect": "cancel_ticket_on_disconnect",
            "chatRateLimitBurst": "chat_rate_limit_burst",
            "chatRateLimitDuration": "chat_rate_limit_duration",
            "concurrentUsersLimit": "concurrent_users_limit",
            "disablePartyInvitationToken": "disable_party_invitation_token",
            "enableChat": "enable_chat",
            "entitlementCheck": "entitlement_check",
            "entitlementItemID": "entitlement_item_id",
            "generalRateLimitBurst": "general_rate_limit_burst",
            "generalRateLimitDuration": "general_rate_limit_duration",
            "keepPresenceActivityOnDisconnect": "keep_presence_activity_on_disconnect",
            "maxPartyMember": "max_party_member",
            "profanityFilter": "profanity_filter",
            "readyConsentTimeout": "ready_consent_timeout",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "allowInviteNonConnectedUser": False,
            "autoKickOnDisconnect": False,
            "autoKickOnDisconnectDelay": False,
            "cancelTicketOnDisconnect": False,
            "chatRateLimitBurst": False,
            "chatRateLimitDuration": False,
            "concurrentUsersLimit": False,
            "disablePartyInvitationToken": False,
            "enableChat": False,
            "entitlementCheck": False,
            "entitlementItemID": False,
            "generalRateLimitBurst": False,
            "generalRateLimitDuration": False,
            "keepPresenceActivityOnDisconnect": False,
            "maxPartyMember": False,
            "profanityFilter": False,
            "readyConsentTimeout": False,
        }

    # endregion static methods
