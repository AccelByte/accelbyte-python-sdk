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


class ModelsPublicConfigResponse(Model):
    """Models public config response (models.PublicConfigResponse)

    Properties:
        chat_rate_limit_burst: (chatRateLimitBurst) REQUIRED int

        chat_rate_limit_duration: (chatRateLimitDuration) REQUIRED int

        general_rate_limit_burst: (generalRateLimitBurst) REQUIRED int

        general_rate_limit_duration: (generalRateLimitDuration) REQUIRED int

        max_chat_message_length: (maxChatMessageLength) REQUIRED int

        spam_chat_burst: (spamChatBurst) REQUIRED int

        spam_chat_duration: (spamChatDuration) REQUIRED int

        spam_mute_duration: (spamMuteDuration) REQUIRED int

        enable_pm_send_platform_id: (enablePmSendPlatformId) OPTIONAL bool
    """

    # region fields

    chat_rate_limit_burst: int  # REQUIRED
    chat_rate_limit_duration: int  # REQUIRED
    general_rate_limit_burst: int  # REQUIRED
    general_rate_limit_duration: int  # REQUIRED
    max_chat_message_length: int  # REQUIRED
    spam_chat_burst: int  # REQUIRED
    spam_chat_duration: int  # REQUIRED
    spam_mute_duration: int  # REQUIRED
    enable_pm_send_platform_id: bool  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_chat_rate_limit_burst(self, value: int) -> ModelsPublicConfigResponse:
        self.chat_rate_limit_burst = value
        return self

    def with_chat_rate_limit_duration(self, value: int) -> ModelsPublicConfigResponse:
        self.chat_rate_limit_duration = value
        return self

    def with_general_rate_limit_burst(self, value: int) -> ModelsPublicConfigResponse:
        self.general_rate_limit_burst = value
        return self

    def with_general_rate_limit_duration(
        self, value: int
    ) -> ModelsPublicConfigResponse:
        self.general_rate_limit_duration = value
        return self

    def with_max_chat_message_length(self, value: int) -> ModelsPublicConfigResponse:
        self.max_chat_message_length = value
        return self

    def with_spam_chat_burst(self, value: int) -> ModelsPublicConfigResponse:
        self.spam_chat_burst = value
        return self

    def with_spam_chat_duration(self, value: int) -> ModelsPublicConfigResponse:
        self.spam_chat_duration = value
        return self

    def with_spam_mute_duration(self, value: int) -> ModelsPublicConfigResponse:
        self.spam_mute_duration = value
        return self

    def with_enable_pm_send_platform_id(
        self, value: bool
    ) -> ModelsPublicConfigResponse:
        self.enable_pm_send_platform_id = value
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
        if hasattr(self, "general_rate_limit_burst"):
            result["generalRateLimitBurst"] = int(self.general_rate_limit_burst)
        elif include_empty:
            result["generalRateLimitBurst"] = 0
        if hasattr(self, "general_rate_limit_duration"):
            result["generalRateLimitDuration"] = int(self.general_rate_limit_duration)
        elif include_empty:
            result["generalRateLimitDuration"] = 0
        if hasattr(self, "max_chat_message_length"):
            result["maxChatMessageLength"] = int(self.max_chat_message_length)
        elif include_empty:
            result["maxChatMessageLength"] = 0
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
        if hasattr(self, "enable_pm_send_platform_id"):
            result["enablePmSendPlatformId"] = bool(self.enable_pm_send_platform_id)
        elif include_empty:
            result["enablePmSendPlatformId"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        chat_rate_limit_burst: int,
        chat_rate_limit_duration: int,
        general_rate_limit_burst: int,
        general_rate_limit_duration: int,
        max_chat_message_length: int,
        spam_chat_burst: int,
        spam_chat_duration: int,
        spam_mute_duration: int,
        enable_pm_send_platform_id: Optional[bool] = None,
        **kwargs,
    ) -> ModelsPublicConfigResponse:
        instance = cls()
        instance.chat_rate_limit_burst = chat_rate_limit_burst
        instance.chat_rate_limit_duration = chat_rate_limit_duration
        instance.general_rate_limit_burst = general_rate_limit_burst
        instance.general_rate_limit_duration = general_rate_limit_duration
        instance.max_chat_message_length = max_chat_message_length
        instance.spam_chat_burst = spam_chat_burst
        instance.spam_chat_duration = spam_chat_duration
        instance.spam_mute_duration = spam_mute_duration
        if enable_pm_send_platform_id is not None:
            instance.enable_pm_send_platform_id = enable_pm_send_platform_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsPublicConfigResponse:
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
            "maxChatMessageLength" in dict_
            and dict_["maxChatMessageLength"] is not None
        ):
            instance.max_chat_message_length = int(dict_["maxChatMessageLength"])
        elif include_empty:
            instance.max_chat_message_length = 0
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
        if (
            "enablePmSendPlatformId" in dict_
            and dict_["enablePmSendPlatformId"] is not None
        ):
            instance.enable_pm_send_platform_id = bool(dict_["enablePmSendPlatformId"])
        elif include_empty:
            instance.enable_pm_send_platform_id = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsPublicConfigResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsPublicConfigResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsPublicConfigResponse,
        List[ModelsPublicConfigResponse],
        Dict[Any, ModelsPublicConfigResponse],
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
            "generalRateLimitBurst": "general_rate_limit_burst",
            "generalRateLimitDuration": "general_rate_limit_duration",
            "maxChatMessageLength": "max_chat_message_length",
            "spamChatBurst": "spam_chat_burst",
            "spamChatDuration": "spam_chat_duration",
            "spamMuteDuration": "spam_mute_duration",
            "enablePmSendPlatformId": "enable_pm_send_platform_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "chatRateLimitBurst": True,
            "chatRateLimitDuration": True,
            "generalRateLimitBurst": True,
            "generalRateLimitDuration": True,
            "maxChatMessageLength": True,
            "spamChatBurst": True,
            "spamChatDuration": True,
            "spamMuteDuration": True,
            "enablePmSendPlatformId": False,
        }

    # endregion static methods
