# justice-lobby-server (1.33.0)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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


class ModelsConfig(Model):
    """Models config (models.Config)

    Properties:
        auto_kick_on_disconnect: (autoKickOnDisconnect) OPTIONAL bool

        chat_rate_limit_burst: (chatRateLimitBurst) OPTIONAL int

        chat_rate_limit_duration: (chatRateLimitDuration) OPTIONAL int

        concurrent_users_limit: (concurrentUsersLimit) OPTIONAL int

        enable_chat: (enableChat) OPTIONAL bool

        entitlement_check: (entitlementCheck) OPTIONAL bool

        entitlement_item_id: (entitlementItemID) OPTIONAL str

        general_rate_limit_burst: (generalRateLimitBurst) OPTIONAL int

        general_rate_limit_duration: (generalRateLimitDuration) OPTIONAL int

        max_party_member: (maxPartyMember) OPTIONAL int

        namespace: (namespace) OPTIONAL str

        profanity_filter: (profanityFilter) OPTIONAL bool
    """

    # region fields

    auto_kick_on_disconnect: bool                                                                  # OPTIONAL
    chat_rate_limit_burst: int                                                                     # OPTIONAL
    chat_rate_limit_duration: int                                                                  # OPTIONAL
    concurrent_users_limit: int                                                                    # OPTIONAL
    enable_chat: bool                                                                              # OPTIONAL
    entitlement_check: bool                                                                        # OPTIONAL
    entitlement_item_id: str                                                                       # OPTIONAL
    general_rate_limit_burst: int                                                                  # OPTIONAL
    general_rate_limit_duration: int                                                               # OPTIONAL
    max_party_member: int                                                                          # OPTIONAL
    namespace: str                                                                                 # OPTIONAL
    profanity_filter: bool                                                                         # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_auto_kick_on_disconnect(self, value: bool) -> ModelsConfig:
        self.auto_kick_on_disconnect = value
        return self

    def with_chat_rate_limit_burst(self, value: int) -> ModelsConfig:
        self.chat_rate_limit_burst = value
        return self

    def with_chat_rate_limit_duration(self, value: int) -> ModelsConfig:
        self.chat_rate_limit_duration = value
        return self

    def with_concurrent_users_limit(self, value: int) -> ModelsConfig:
        self.concurrent_users_limit = value
        return self

    def with_enable_chat(self, value: bool) -> ModelsConfig:
        self.enable_chat = value
        return self

    def with_entitlement_check(self, value: bool) -> ModelsConfig:
        self.entitlement_check = value
        return self

    def with_entitlement_item_id(self, value: str) -> ModelsConfig:
        self.entitlement_item_id = value
        return self

    def with_general_rate_limit_burst(self, value: int) -> ModelsConfig:
        self.general_rate_limit_burst = value
        return self

    def with_general_rate_limit_duration(self, value: int) -> ModelsConfig:
        self.general_rate_limit_duration = value
        return self

    def with_max_party_member(self, value: int) -> ModelsConfig:
        self.max_party_member = value
        return self

    def with_namespace(self, value: str) -> ModelsConfig:
        self.namespace = value
        return self

    def with_profanity_filter(self, value: bool) -> ModelsConfig:
        self.profanity_filter = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "auto_kick_on_disconnect"):
            result["autoKickOnDisconnect"] = bool(self.auto_kick_on_disconnect)
        elif include_empty:
            result["autoKickOnDisconnect"] = bool()
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
        if hasattr(self, "max_party_member"):
            result["maxPartyMember"] = int(self.max_party_member)
        elif include_empty:
            result["maxPartyMember"] = int()
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "profanity_filter"):
            result["profanityFilter"] = bool(self.profanity_filter)
        elif include_empty:
            result["profanityFilter"] = bool()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        auto_kick_on_disconnect: Optional[bool] = None,
        chat_rate_limit_burst: Optional[int] = None,
        chat_rate_limit_duration: Optional[int] = None,
        concurrent_users_limit: Optional[int] = None,
        enable_chat: Optional[bool] = None,
        entitlement_check: Optional[bool] = None,
        entitlement_item_id: Optional[str] = None,
        general_rate_limit_burst: Optional[int] = None,
        general_rate_limit_duration: Optional[int] = None,
        max_party_member: Optional[int] = None,
        namespace: Optional[str] = None,
        profanity_filter: Optional[bool] = None,
    ) -> ModelsConfig:
        instance = cls()
        if auto_kick_on_disconnect is not None:
            instance.auto_kick_on_disconnect = auto_kick_on_disconnect
        if chat_rate_limit_burst is not None:
            instance.chat_rate_limit_burst = chat_rate_limit_burst
        if chat_rate_limit_duration is not None:
            instance.chat_rate_limit_duration = chat_rate_limit_duration
        if concurrent_users_limit is not None:
            instance.concurrent_users_limit = concurrent_users_limit
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
        if max_party_member is not None:
            instance.max_party_member = max_party_member
        if namespace is not None:
            instance.namespace = namespace
        if profanity_filter is not None:
            instance.profanity_filter = profanity_filter
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsConfig:
        instance = cls()
        if not dict_:
            return instance
        if "autoKickOnDisconnect" in dict_ and dict_["autoKickOnDisconnect"] is not None:
            instance.auto_kick_on_disconnect = bool(dict_["autoKickOnDisconnect"])
        elif include_empty:
            instance.auto_kick_on_disconnect = bool()
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
        if "maxPartyMember" in dict_ and dict_["maxPartyMember"] is not None:
            instance.max_party_member = int(dict_["maxPartyMember"])
        elif include_empty:
            instance.max_party_member = int()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "profanityFilter" in dict_ and dict_["profanityFilter"] is not None:
            instance.profanity_filter = bool(dict_["profanityFilter"])
        elif include_empty:
            instance.profanity_filter = bool()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "autoKickOnDisconnect": "auto_kick_on_disconnect",
            "chatRateLimitBurst": "chat_rate_limit_burst",
            "chatRateLimitDuration": "chat_rate_limit_duration",
            "concurrentUsersLimit": "concurrent_users_limit",
            "enableChat": "enable_chat",
            "entitlementCheck": "entitlement_check",
            "entitlementItemID": "entitlement_item_id",
            "generalRateLimitBurst": "general_rate_limit_burst",
            "generalRateLimitDuration": "general_rate_limit_duration",
            "maxPartyMember": "max_party_member",
            "namespace": "namespace",
            "profanityFilter": "profanity_filter",
        }

    # endregion static methods
