# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Chat Service

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
        chat_rate_limit_burst: (ChatRateLimitBurst) REQUIRED int

        chat_rate_limit_duration: (ChatRateLimitDuration) REQUIRED int

        concurrent_users_limit: (ConcurrentUsersLimit) REQUIRED int

        enable_profanity_filter: (EnableProfanityFilter) REQUIRED bool

        filter_app_name: (FilterAppName) REQUIRED str

        filter_param: (FilterParam) REQUIRED str

        filter_type: (FilterType) REQUIRED str

        general_rate_limit_burst: (GeneralRateLimitBurst) REQUIRED int

        general_rate_limit_duration: (GeneralRateLimitDuration) REQUIRED int

        namespace: (Namespace) REQUIRED str

        shard_capacity_limit: (ShardCapacityLimit) REQUIRED int

        shard_default_limit: (ShardDefaultLimit) REQUIRED int

        shard_hard_limit: (ShardHardLimit) REQUIRED int

        spam_chat_burst: (SpamChatBurst) REQUIRED int

        spam_chat_duration: (SpamChatDuration) REQUIRED int

        spam_mute_duration: (SpamMuteDuration) REQUIRED int

        default_dictionary_loaded: (defaultDictionaryLoaded) OPTIONAL bool

        enable_clan_chat: (enableClanChat) OPTIONAL bool

        enable_manual_topic_creation: (EnableManualTopicCreation) OPTIONAL bool

        enable_pm_send_platform_id: (enablePmSendPlatformId) OPTIONAL bool

        max_chat_message_length: (maxChatMessageLength) OPTIONAL int

        use_default_dictionary: (useDefaultDictionary) OPTIONAL bool
    """

    # region fields

    chat_rate_limit_burst: int  # REQUIRED
    chat_rate_limit_duration: int  # REQUIRED
    concurrent_users_limit: int  # REQUIRED
    enable_profanity_filter: bool  # REQUIRED
    filter_app_name: str  # REQUIRED
    filter_param: str  # REQUIRED
    filter_type: str  # REQUIRED
    general_rate_limit_burst: int  # REQUIRED
    general_rate_limit_duration: int  # REQUIRED
    namespace: str  # REQUIRED
    shard_capacity_limit: int  # REQUIRED
    shard_default_limit: int  # REQUIRED
    shard_hard_limit: int  # REQUIRED
    spam_chat_burst: int  # REQUIRED
    spam_chat_duration: int  # REQUIRED
    spam_mute_duration: int  # REQUIRED
    default_dictionary_loaded: bool  # OPTIONAL
    enable_clan_chat: bool  # OPTIONAL
    enable_manual_topic_creation: bool  # OPTIONAL
    enable_pm_send_platform_id: bool  # OPTIONAL
    max_chat_message_length: int  # OPTIONAL
    use_default_dictionary: bool  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_chat_rate_limit_burst(self, value: int) -> ModelsConfig:
        self.chat_rate_limit_burst = value
        return self

    def with_chat_rate_limit_duration(self, value: int) -> ModelsConfig:
        self.chat_rate_limit_duration = value
        return self

    def with_concurrent_users_limit(self, value: int) -> ModelsConfig:
        self.concurrent_users_limit = value
        return self

    def with_enable_profanity_filter(self, value: bool) -> ModelsConfig:
        self.enable_profanity_filter = value
        return self

    def with_filter_app_name(self, value: str) -> ModelsConfig:
        self.filter_app_name = value
        return self

    def with_filter_param(self, value: str) -> ModelsConfig:
        self.filter_param = value
        return self

    def with_filter_type(self, value: str) -> ModelsConfig:
        self.filter_type = value
        return self

    def with_general_rate_limit_burst(self, value: int) -> ModelsConfig:
        self.general_rate_limit_burst = value
        return self

    def with_general_rate_limit_duration(self, value: int) -> ModelsConfig:
        self.general_rate_limit_duration = value
        return self

    def with_namespace(self, value: str) -> ModelsConfig:
        self.namespace = value
        return self

    def with_shard_capacity_limit(self, value: int) -> ModelsConfig:
        self.shard_capacity_limit = value
        return self

    def with_shard_default_limit(self, value: int) -> ModelsConfig:
        self.shard_default_limit = value
        return self

    def with_shard_hard_limit(self, value: int) -> ModelsConfig:
        self.shard_hard_limit = value
        return self

    def with_spam_chat_burst(self, value: int) -> ModelsConfig:
        self.spam_chat_burst = value
        return self

    def with_spam_chat_duration(self, value: int) -> ModelsConfig:
        self.spam_chat_duration = value
        return self

    def with_spam_mute_duration(self, value: int) -> ModelsConfig:
        self.spam_mute_duration = value
        return self

    def with_default_dictionary_loaded(self, value: bool) -> ModelsConfig:
        self.default_dictionary_loaded = value
        return self

    def with_enable_clan_chat(self, value: bool) -> ModelsConfig:
        self.enable_clan_chat = value
        return self

    def with_enable_manual_topic_creation(self, value: bool) -> ModelsConfig:
        self.enable_manual_topic_creation = value
        return self

    def with_enable_pm_send_platform_id(self, value: bool) -> ModelsConfig:
        self.enable_pm_send_platform_id = value
        return self

    def with_max_chat_message_length(self, value: int) -> ModelsConfig:
        self.max_chat_message_length = value
        return self

    def with_use_default_dictionary(self, value: bool) -> ModelsConfig:
        self.use_default_dictionary = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "chat_rate_limit_burst"):
            result["ChatRateLimitBurst"] = int(self.chat_rate_limit_burst)
        elif include_empty:
            result["ChatRateLimitBurst"] = 0
        if hasattr(self, "chat_rate_limit_duration"):
            result["ChatRateLimitDuration"] = int(self.chat_rate_limit_duration)
        elif include_empty:
            result["ChatRateLimitDuration"] = 0
        if hasattr(self, "concurrent_users_limit"):
            result["ConcurrentUsersLimit"] = int(self.concurrent_users_limit)
        elif include_empty:
            result["ConcurrentUsersLimit"] = 0
        if hasattr(self, "enable_profanity_filter"):
            result["EnableProfanityFilter"] = bool(self.enable_profanity_filter)
        elif include_empty:
            result["EnableProfanityFilter"] = False
        if hasattr(self, "filter_app_name"):
            result["FilterAppName"] = str(self.filter_app_name)
        elif include_empty:
            result["FilterAppName"] = ""
        if hasattr(self, "filter_param"):
            result["FilterParam"] = str(self.filter_param)
        elif include_empty:
            result["FilterParam"] = ""
        if hasattr(self, "filter_type"):
            result["FilterType"] = str(self.filter_type)
        elif include_empty:
            result["FilterType"] = ""
        if hasattr(self, "general_rate_limit_burst"):
            result["GeneralRateLimitBurst"] = int(self.general_rate_limit_burst)
        elif include_empty:
            result["GeneralRateLimitBurst"] = 0
        if hasattr(self, "general_rate_limit_duration"):
            result["GeneralRateLimitDuration"] = int(self.general_rate_limit_duration)
        elif include_empty:
            result["GeneralRateLimitDuration"] = 0
        if hasattr(self, "namespace"):
            result["Namespace"] = str(self.namespace)
        elif include_empty:
            result["Namespace"] = ""
        if hasattr(self, "shard_capacity_limit"):
            result["ShardCapacityLimit"] = int(self.shard_capacity_limit)
        elif include_empty:
            result["ShardCapacityLimit"] = 0
        if hasattr(self, "shard_default_limit"):
            result["ShardDefaultLimit"] = int(self.shard_default_limit)
        elif include_empty:
            result["ShardDefaultLimit"] = 0
        if hasattr(self, "shard_hard_limit"):
            result["ShardHardLimit"] = int(self.shard_hard_limit)
        elif include_empty:
            result["ShardHardLimit"] = 0
        if hasattr(self, "spam_chat_burst"):
            result["SpamChatBurst"] = int(self.spam_chat_burst)
        elif include_empty:
            result["SpamChatBurst"] = 0
        if hasattr(self, "spam_chat_duration"):
            result["SpamChatDuration"] = int(self.spam_chat_duration)
        elif include_empty:
            result["SpamChatDuration"] = 0
        if hasattr(self, "spam_mute_duration"):
            result["SpamMuteDuration"] = int(self.spam_mute_duration)
        elif include_empty:
            result["SpamMuteDuration"] = 0
        if hasattr(self, "default_dictionary_loaded"):
            result["defaultDictionaryLoaded"] = bool(self.default_dictionary_loaded)
        elif include_empty:
            result["defaultDictionaryLoaded"] = False
        if hasattr(self, "enable_clan_chat"):
            result["enableClanChat"] = bool(self.enable_clan_chat)
        elif include_empty:
            result["enableClanChat"] = False
        if hasattr(self, "enable_manual_topic_creation"):
            result["EnableManualTopicCreation"] = bool(
                self.enable_manual_topic_creation
            )
        elif include_empty:
            result["EnableManualTopicCreation"] = False
        if hasattr(self, "enable_pm_send_platform_id"):
            result["enablePmSendPlatformId"] = bool(self.enable_pm_send_platform_id)
        elif include_empty:
            result["enablePmSendPlatformId"] = False
        if hasattr(self, "max_chat_message_length"):
            result["maxChatMessageLength"] = int(self.max_chat_message_length)
        elif include_empty:
            result["maxChatMessageLength"] = 0
        if hasattr(self, "use_default_dictionary"):
            result["useDefaultDictionary"] = bool(self.use_default_dictionary)
        elif include_empty:
            result["useDefaultDictionary"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        chat_rate_limit_burst: int,
        chat_rate_limit_duration: int,
        concurrent_users_limit: int,
        enable_profanity_filter: bool,
        filter_app_name: str,
        filter_param: str,
        filter_type: str,
        general_rate_limit_burst: int,
        general_rate_limit_duration: int,
        namespace: str,
        shard_capacity_limit: int,
        shard_default_limit: int,
        shard_hard_limit: int,
        spam_chat_burst: int,
        spam_chat_duration: int,
        spam_mute_duration: int,
        default_dictionary_loaded: Optional[bool] = None,
        enable_clan_chat: Optional[bool] = None,
        enable_manual_topic_creation: Optional[bool] = None,
        enable_pm_send_platform_id: Optional[bool] = None,
        max_chat_message_length: Optional[int] = None,
        use_default_dictionary: Optional[bool] = None,
        **kwargs,
    ) -> ModelsConfig:
        instance = cls()
        instance.chat_rate_limit_burst = chat_rate_limit_burst
        instance.chat_rate_limit_duration = chat_rate_limit_duration
        instance.concurrent_users_limit = concurrent_users_limit
        instance.enable_profanity_filter = enable_profanity_filter
        instance.filter_app_name = filter_app_name
        instance.filter_param = filter_param
        instance.filter_type = filter_type
        instance.general_rate_limit_burst = general_rate_limit_burst
        instance.general_rate_limit_duration = general_rate_limit_duration
        instance.namespace = namespace
        instance.shard_capacity_limit = shard_capacity_limit
        instance.shard_default_limit = shard_default_limit
        instance.shard_hard_limit = shard_hard_limit
        instance.spam_chat_burst = spam_chat_burst
        instance.spam_chat_duration = spam_chat_duration
        instance.spam_mute_duration = spam_mute_duration
        if default_dictionary_loaded is not None:
            instance.default_dictionary_loaded = default_dictionary_loaded
        if enable_clan_chat is not None:
            instance.enable_clan_chat = enable_clan_chat
        if enable_manual_topic_creation is not None:
            instance.enable_manual_topic_creation = enable_manual_topic_creation
        if enable_pm_send_platform_id is not None:
            instance.enable_pm_send_platform_id = enable_pm_send_platform_id
        if max_chat_message_length is not None:
            instance.max_chat_message_length = max_chat_message_length
        if use_default_dictionary is not None:
            instance.use_default_dictionary = use_default_dictionary
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsConfig:
        instance = cls()
        if not dict_:
            return instance
        if "ChatRateLimitBurst" in dict_ and dict_["ChatRateLimitBurst"] is not None:
            instance.chat_rate_limit_burst = int(dict_["ChatRateLimitBurst"])
        elif include_empty:
            instance.chat_rate_limit_burst = 0
        if (
            "ChatRateLimitDuration" in dict_
            and dict_["ChatRateLimitDuration"] is not None
        ):
            instance.chat_rate_limit_duration = int(dict_["ChatRateLimitDuration"])
        elif include_empty:
            instance.chat_rate_limit_duration = 0
        if (
            "ConcurrentUsersLimit" in dict_
            and dict_["ConcurrentUsersLimit"] is not None
        ):
            instance.concurrent_users_limit = int(dict_["ConcurrentUsersLimit"])
        elif include_empty:
            instance.concurrent_users_limit = 0
        if (
            "EnableProfanityFilter" in dict_
            and dict_["EnableProfanityFilter"] is not None
        ):
            instance.enable_profanity_filter = bool(dict_["EnableProfanityFilter"])
        elif include_empty:
            instance.enable_profanity_filter = False
        if "FilterAppName" in dict_ and dict_["FilterAppName"] is not None:
            instance.filter_app_name = str(dict_["FilterAppName"])
        elif include_empty:
            instance.filter_app_name = ""
        if "FilterParam" in dict_ and dict_["FilterParam"] is not None:
            instance.filter_param = str(dict_["FilterParam"])
        elif include_empty:
            instance.filter_param = ""
        if "FilterType" in dict_ and dict_["FilterType"] is not None:
            instance.filter_type = str(dict_["FilterType"])
        elif include_empty:
            instance.filter_type = ""
        if (
            "GeneralRateLimitBurst" in dict_
            and dict_["GeneralRateLimitBurst"] is not None
        ):
            instance.general_rate_limit_burst = int(dict_["GeneralRateLimitBurst"])
        elif include_empty:
            instance.general_rate_limit_burst = 0
        if (
            "GeneralRateLimitDuration" in dict_
            and dict_["GeneralRateLimitDuration"] is not None
        ):
            instance.general_rate_limit_duration = int(
                dict_["GeneralRateLimitDuration"]
            )
        elif include_empty:
            instance.general_rate_limit_duration = 0
        if "Namespace" in dict_ and dict_["Namespace"] is not None:
            instance.namespace = str(dict_["Namespace"])
        elif include_empty:
            instance.namespace = ""
        if "ShardCapacityLimit" in dict_ and dict_["ShardCapacityLimit"] is not None:
            instance.shard_capacity_limit = int(dict_["ShardCapacityLimit"])
        elif include_empty:
            instance.shard_capacity_limit = 0
        if "ShardDefaultLimit" in dict_ and dict_["ShardDefaultLimit"] is not None:
            instance.shard_default_limit = int(dict_["ShardDefaultLimit"])
        elif include_empty:
            instance.shard_default_limit = 0
        if "ShardHardLimit" in dict_ and dict_["ShardHardLimit"] is not None:
            instance.shard_hard_limit = int(dict_["ShardHardLimit"])
        elif include_empty:
            instance.shard_hard_limit = 0
        if "SpamChatBurst" in dict_ and dict_["SpamChatBurst"] is not None:
            instance.spam_chat_burst = int(dict_["SpamChatBurst"])
        elif include_empty:
            instance.spam_chat_burst = 0
        if "SpamChatDuration" in dict_ and dict_["SpamChatDuration"] is not None:
            instance.spam_chat_duration = int(dict_["SpamChatDuration"])
        elif include_empty:
            instance.spam_chat_duration = 0
        if "SpamMuteDuration" in dict_ and dict_["SpamMuteDuration"] is not None:
            instance.spam_mute_duration = int(dict_["SpamMuteDuration"])
        elif include_empty:
            instance.spam_mute_duration = 0
        if (
            "defaultDictionaryLoaded" in dict_
            and dict_["defaultDictionaryLoaded"] is not None
        ):
            instance.default_dictionary_loaded = bool(dict_["defaultDictionaryLoaded"])
        elif include_empty:
            instance.default_dictionary_loaded = False
        if "enableClanChat" in dict_ and dict_["enableClanChat"] is not None:
            instance.enable_clan_chat = bool(dict_["enableClanChat"])
        elif include_empty:
            instance.enable_clan_chat = False
        if (
            "EnableManualTopicCreation" in dict_
            and dict_["EnableManualTopicCreation"] is not None
        ):
            instance.enable_manual_topic_creation = bool(
                dict_["EnableManualTopicCreation"]
            )
        elif include_empty:
            instance.enable_manual_topic_creation = False
        if (
            "enablePmSendPlatformId" in dict_
            and dict_["enablePmSendPlatformId"] is not None
        ):
            instance.enable_pm_send_platform_id = bool(dict_["enablePmSendPlatformId"])
        elif include_empty:
            instance.enable_pm_send_platform_id = False
        if (
            "maxChatMessageLength" in dict_
            and dict_["maxChatMessageLength"] is not None
        ):
            instance.max_chat_message_length = int(dict_["maxChatMessageLength"])
        elif include_empty:
            instance.max_chat_message_length = 0
        if (
            "useDefaultDictionary" in dict_
            and dict_["useDefaultDictionary"] is not None
        ):
            instance.use_default_dictionary = bool(dict_["useDefaultDictionary"])
        elif include_empty:
            instance.use_default_dictionary = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsConfig]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsConfig]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ModelsConfig, List[ModelsConfig], Dict[Any, ModelsConfig]]:
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
            "ChatRateLimitBurst": "chat_rate_limit_burst",
            "ChatRateLimitDuration": "chat_rate_limit_duration",
            "ConcurrentUsersLimit": "concurrent_users_limit",
            "EnableProfanityFilter": "enable_profanity_filter",
            "FilterAppName": "filter_app_name",
            "FilterParam": "filter_param",
            "FilterType": "filter_type",
            "GeneralRateLimitBurst": "general_rate_limit_burst",
            "GeneralRateLimitDuration": "general_rate_limit_duration",
            "Namespace": "namespace",
            "ShardCapacityLimit": "shard_capacity_limit",
            "ShardDefaultLimit": "shard_default_limit",
            "ShardHardLimit": "shard_hard_limit",
            "SpamChatBurst": "spam_chat_burst",
            "SpamChatDuration": "spam_chat_duration",
            "SpamMuteDuration": "spam_mute_duration",
            "defaultDictionaryLoaded": "default_dictionary_loaded",
            "enableClanChat": "enable_clan_chat",
            "EnableManualTopicCreation": "enable_manual_topic_creation",
            "enablePmSendPlatformId": "enable_pm_send_platform_id",
            "maxChatMessageLength": "max_chat_message_length",
            "useDefaultDictionary": "use_default_dictionary",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "ChatRateLimitBurst": True,
            "ChatRateLimitDuration": True,
            "ConcurrentUsersLimit": True,
            "EnableProfanityFilter": True,
            "FilterAppName": True,
            "FilterParam": True,
            "FilterType": True,
            "GeneralRateLimitBurst": True,
            "GeneralRateLimitDuration": True,
            "Namespace": True,
            "ShardCapacityLimit": True,
            "ShardDefaultLimit": True,
            "ShardHardLimit": True,
            "SpamChatBurst": True,
            "SpamChatDuration": True,
            "SpamMuteDuration": True,
            "defaultDictionaryLoaded": False,
            "enableClanChat": False,
            "EnableManualTopicCreation": False,
            "enablePmSendPlatformId": False,
            "maxChatMessageLength": False,
            "useDefaultDictionary": False,
        }

    # endregion static methods
