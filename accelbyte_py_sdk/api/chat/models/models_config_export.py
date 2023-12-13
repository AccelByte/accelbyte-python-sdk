# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Chat Service (0.4.14)

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
        chat_rate_limit_burst: (chatRateLimitBurst) REQUIRED int

        chat_rate_limit_duration: (chatRateLimitDuration) REQUIRED int

        concurrent_users_limit: (concurrentUsersLimit) REQUIRED int

        general_rate_limit_burst: (generalRateLimitBurst) REQUIRED int

        general_rate_limit_duration: (generalRateLimitDuration) REQUIRED int

        namespace: (namespace) REQUIRED str

        enable_clan_chat: (enableClanChat) OPTIONAL bool

        enable_manual_topic_creation: (enableManualTopicCreation) OPTIONAL bool

        enable_profanity_filter: (enableProfanityFilter) OPTIONAL bool

        filter_app_name: (filterAppName) OPTIONAL str

        filter_param: (filterParam) OPTIONAL str

        filter_type: (filterType) OPTIONAL str

        shard_capacity_limit: (shardCapacityLimit) OPTIONAL int

        shard_default_limit: (shardDefaultLimit) OPTIONAL int

        shard_hard_limit: (shardHardLimit) OPTIONAL int

        spam_chat_burst: (spamChatBurst) OPTIONAL int

        spam_chat_duration: (spamChatDuration) OPTIONAL int

        spam_mute_duration: (spamMuteDuration) OPTIONAL int
    """

    # region fields

    chat_rate_limit_burst: int  # REQUIRED
    chat_rate_limit_duration: int  # REQUIRED
    concurrent_users_limit: int  # REQUIRED
    general_rate_limit_burst: int  # REQUIRED
    general_rate_limit_duration: int  # REQUIRED
    namespace: str  # REQUIRED
    enable_clan_chat: bool  # OPTIONAL
    enable_manual_topic_creation: bool  # OPTIONAL
    enable_profanity_filter: bool  # OPTIONAL
    filter_app_name: str  # OPTIONAL
    filter_param: str  # OPTIONAL
    filter_type: str  # OPTIONAL
    shard_capacity_limit: int  # OPTIONAL
    shard_default_limit: int  # OPTIONAL
    shard_hard_limit: int  # OPTIONAL
    spam_chat_burst: int  # OPTIONAL
    spam_chat_duration: int  # OPTIONAL
    spam_mute_duration: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_chat_rate_limit_burst(self, value: int) -> ModelsConfigExport:
        self.chat_rate_limit_burst = value
        return self

    def with_chat_rate_limit_duration(self, value: int) -> ModelsConfigExport:
        self.chat_rate_limit_duration = value
        return self

    def with_concurrent_users_limit(self, value: int) -> ModelsConfigExport:
        self.concurrent_users_limit = value
        return self

    def with_general_rate_limit_burst(self, value: int) -> ModelsConfigExport:
        self.general_rate_limit_burst = value
        return self

    def with_general_rate_limit_duration(self, value: int) -> ModelsConfigExport:
        self.general_rate_limit_duration = value
        return self

    def with_namespace(self, value: str) -> ModelsConfigExport:
        self.namespace = value
        return self

    def with_enable_clan_chat(self, value: bool) -> ModelsConfigExport:
        self.enable_clan_chat = value
        return self

    def with_enable_manual_topic_creation(self, value: bool) -> ModelsConfigExport:
        self.enable_manual_topic_creation = value
        return self

    def with_enable_profanity_filter(self, value: bool) -> ModelsConfigExport:
        self.enable_profanity_filter = value
        return self

    def with_filter_app_name(self, value: str) -> ModelsConfigExport:
        self.filter_app_name = value
        return self

    def with_filter_param(self, value: str) -> ModelsConfigExport:
        self.filter_param = value
        return self

    def with_filter_type(self, value: str) -> ModelsConfigExport:
        self.filter_type = value
        return self

    def with_shard_capacity_limit(self, value: int) -> ModelsConfigExport:
        self.shard_capacity_limit = value
        return self

    def with_shard_default_limit(self, value: int) -> ModelsConfigExport:
        self.shard_default_limit = value
        return self

    def with_shard_hard_limit(self, value: int) -> ModelsConfigExport:
        self.shard_hard_limit = value
        return self

    def with_spam_chat_burst(self, value: int) -> ModelsConfigExport:
        self.spam_chat_burst = value
        return self

    def with_spam_chat_duration(self, value: int) -> ModelsConfigExport:
        self.spam_chat_duration = value
        return self

    def with_spam_mute_duration(self, value: int) -> ModelsConfigExport:
        self.spam_mute_duration = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
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
        if hasattr(self, "general_rate_limit_burst"):
            result["generalRateLimitBurst"] = int(self.general_rate_limit_burst)
        elif include_empty:
            result["generalRateLimitBurst"] = 0
        if hasattr(self, "general_rate_limit_duration"):
            result["generalRateLimitDuration"] = int(self.general_rate_limit_duration)
        elif include_empty:
            result["generalRateLimitDuration"] = 0
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "enable_clan_chat"):
            result["enableClanChat"] = bool(self.enable_clan_chat)
        elif include_empty:
            result["enableClanChat"] = False
        if hasattr(self, "enable_manual_topic_creation"):
            result["enableManualTopicCreation"] = bool(
                self.enable_manual_topic_creation
            )
        elif include_empty:
            result["enableManualTopicCreation"] = False
        if hasattr(self, "enable_profanity_filter"):
            result["enableProfanityFilter"] = bool(self.enable_profanity_filter)
        elif include_empty:
            result["enableProfanityFilter"] = False
        if hasattr(self, "filter_app_name"):
            result["filterAppName"] = str(self.filter_app_name)
        elif include_empty:
            result["filterAppName"] = ""
        if hasattr(self, "filter_param"):
            result["filterParam"] = str(self.filter_param)
        elif include_empty:
            result["filterParam"] = ""
        if hasattr(self, "filter_type"):
            result["filterType"] = str(self.filter_type)
        elif include_empty:
            result["filterType"] = ""
        if hasattr(self, "shard_capacity_limit"):
            result["shardCapacityLimit"] = int(self.shard_capacity_limit)
        elif include_empty:
            result["shardCapacityLimit"] = 0
        if hasattr(self, "shard_default_limit"):
            result["shardDefaultLimit"] = int(self.shard_default_limit)
        elif include_empty:
            result["shardDefaultLimit"] = 0
        if hasattr(self, "shard_hard_limit"):
            result["shardHardLimit"] = int(self.shard_hard_limit)
        elif include_empty:
            result["shardHardLimit"] = 0
        if hasattr(self, "spam_chat_burst"):
            result["spamChatBurst"] = int(self.spam_chat_burst)
        elif include_empty:
            result["spamChatBurst"] = 0
        if hasattr(self, "spam_chat_duration"):
            result["spamChatDuration"] = int(self.spam_chat_duration)
        elif include_empty:
            result["spamChatDuration"] = 0
        if hasattr(self, "spam_mute_duration"):
            result["spamMuteDuration"] = int(self.spam_mute_duration)
        elif include_empty:
            result["spamMuteDuration"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        chat_rate_limit_burst: int,
        chat_rate_limit_duration: int,
        concurrent_users_limit: int,
        general_rate_limit_burst: int,
        general_rate_limit_duration: int,
        namespace: str,
        enable_clan_chat: Optional[bool] = None,
        enable_manual_topic_creation: Optional[bool] = None,
        enable_profanity_filter: Optional[bool] = None,
        filter_app_name: Optional[str] = None,
        filter_param: Optional[str] = None,
        filter_type: Optional[str] = None,
        shard_capacity_limit: Optional[int] = None,
        shard_default_limit: Optional[int] = None,
        shard_hard_limit: Optional[int] = None,
        spam_chat_burst: Optional[int] = None,
        spam_chat_duration: Optional[int] = None,
        spam_mute_duration: Optional[int] = None,
        **kwargs,
    ) -> ModelsConfigExport:
        instance = cls()
        instance.chat_rate_limit_burst = chat_rate_limit_burst
        instance.chat_rate_limit_duration = chat_rate_limit_duration
        instance.concurrent_users_limit = concurrent_users_limit
        instance.general_rate_limit_burst = general_rate_limit_burst
        instance.general_rate_limit_duration = general_rate_limit_duration
        instance.namespace = namespace
        if enable_clan_chat is not None:
            instance.enable_clan_chat = enable_clan_chat
        if enable_manual_topic_creation is not None:
            instance.enable_manual_topic_creation = enable_manual_topic_creation
        if enable_profanity_filter is not None:
            instance.enable_profanity_filter = enable_profanity_filter
        if filter_app_name is not None:
            instance.filter_app_name = filter_app_name
        if filter_param is not None:
            instance.filter_param = filter_param
        if filter_type is not None:
            instance.filter_type = filter_type
        if shard_capacity_limit is not None:
            instance.shard_capacity_limit = shard_capacity_limit
        if shard_default_limit is not None:
            instance.shard_default_limit = shard_default_limit
        if shard_hard_limit is not None:
            instance.shard_hard_limit = shard_hard_limit
        if spam_chat_burst is not None:
            instance.spam_chat_burst = spam_chat_burst
        if spam_chat_duration is not None:
            instance.spam_chat_duration = spam_chat_duration
        if spam_mute_duration is not None:
            instance.spam_mute_duration = spam_mute_duration
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsConfigExport:
        instance = cls()
        if not dict_:
            return instance
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
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "enableClanChat" in dict_ and dict_["enableClanChat"] is not None:
            instance.enable_clan_chat = bool(dict_["enableClanChat"])
        elif include_empty:
            instance.enable_clan_chat = False
        if (
            "enableManualTopicCreation" in dict_
            and dict_["enableManualTopicCreation"] is not None
        ):
            instance.enable_manual_topic_creation = bool(
                dict_["enableManualTopicCreation"]
            )
        elif include_empty:
            instance.enable_manual_topic_creation = False
        if (
            "enableProfanityFilter" in dict_
            and dict_["enableProfanityFilter"] is not None
        ):
            instance.enable_profanity_filter = bool(dict_["enableProfanityFilter"])
        elif include_empty:
            instance.enable_profanity_filter = False
        if "filterAppName" in dict_ and dict_["filterAppName"] is not None:
            instance.filter_app_name = str(dict_["filterAppName"])
        elif include_empty:
            instance.filter_app_name = ""
        if "filterParam" in dict_ and dict_["filterParam"] is not None:
            instance.filter_param = str(dict_["filterParam"])
        elif include_empty:
            instance.filter_param = ""
        if "filterType" in dict_ and dict_["filterType"] is not None:
            instance.filter_type = str(dict_["filterType"])
        elif include_empty:
            instance.filter_type = ""
        if "shardCapacityLimit" in dict_ and dict_["shardCapacityLimit"] is not None:
            instance.shard_capacity_limit = int(dict_["shardCapacityLimit"])
        elif include_empty:
            instance.shard_capacity_limit = 0
        if "shardDefaultLimit" in dict_ and dict_["shardDefaultLimit"] is not None:
            instance.shard_default_limit = int(dict_["shardDefaultLimit"])
        elif include_empty:
            instance.shard_default_limit = 0
        if "shardHardLimit" in dict_ and dict_["shardHardLimit"] is not None:
            instance.shard_hard_limit = int(dict_["shardHardLimit"])
        elif include_empty:
            instance.shard_hard_limit = 0
        if "spamChatBurst" in dict_ and dict_["spamChatBurst"] is not None:
            instance.spam_chat_burst = int(dict_["spamChatBurst"])
        elif include_empty:
            instance.spam_chat_burst = 0
        if "spamChatDuration" in dict_ and dict_["spamChatDuration"] is not None:
            instance.spam_chat_duration = int(dict_["spamChatDuration"])
        elif include_empty:
            instance.spam_chat_duration = 0
        if "spamMuteDuration" in dict_ and dict_["spamMuteDuration"] is not None:
            instance.spam_mute_duration = int(dict_["spamMuteDuration"])
        elif include_empty:
            instance.spam_mute_duration = 0
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
            "chatRateLimitBurst": "chat_rate_limit_burst",
            "chatRateLimitDuration": "chat_rate_limit_duration",
            "concurrentUsersLimit": "concurrent_users_limit",
            "generalRateLimitBurst": "general_rate_limit_burst",
            "generalRateLimitDuration": "general_rate_limit_duration",
            "namespace": "namespace",
            "enableClanChat": "enable_clan_chat",
            "enableManualTopicCreation": "enable_manual_topic_creation",
            "enableProfanityFilter": "enable_profanity_filter",
            "filterAppName": "filter_app_name",
            "filterParam": "filter_param",
            "filterType": "filter_type",
            "shardCapacityLimit": "shard_capacity_limit",
            "shardDefaultLimit": "shard_default_limit",
            "shardHardLimit": "shard_hard_limit",
            "spamChatBurst": "spam_chat_burst",
            "spamChatDuration": "spam_chat_duration",
            "spamMuteDuration": "spam_mute_duration",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "chatRateLimitBurst": True,
            "chatRateLimitDuration": True,
            "concurrentUsersLimit": True,
            "generalRateLimitBurst": True,
            "generalRateLimitDuration": True,
            "namespace": True,
            "enableClanChat": False,
            "enableManualTopicCreation": False,
            "enableProfanityFilter": False,
            "filterAppName": False,
            "filterParam": False,
            "filterType": False,
            "shardCapacityLimit": False,
            "shardDefaultLimit": False,
            "shardHardLimit": False,
            "spamChatBurst": False,
            "spamChatDuration": False,
            "spamMuteDuration": False,
        }

    # endregion static methods
