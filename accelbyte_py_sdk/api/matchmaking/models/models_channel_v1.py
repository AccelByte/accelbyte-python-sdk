# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Matchmaking Service (2.17.2)

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

from ..models.models_rule_set_v1 import ModelsRuleSetV1


class ModelsChannelV1(Model):
    """Models channel V1 (models.ChannelV1)

    Properties:
        deployment: (deployment) REQUIRED str

        description: (description) REQUIRED str

        find_match_timeout_seconds: (findMatchTimeoutSeconds) REQUIRED int

        game_mode: (gameMode) REQUIRED str

        joinable: (joinable) REQUIRED bool

        max_delay_ms: (max_delay_ms) REQUIRED int

        namespace: (namespace) REQUIRED str

        rule_set: (ruleSet) REQUIRED ModelsRuleSetV1

        session_queue_timeout_seconds: (sessionQueueTimeoutSeconds) REQUIRED int

        slug: (slug) REQUIRED str

        social_matchmaking: (socialMatchmaking) REQUIRED bool

        updated_at: (updatedAt) REQUIRED str

        use_sub_gamemode: (use_sub_gamemode) REQUIRED bool
    """

    # region fields

    deployment: str  # REQUIRED
    description: str  # REQUIRED
    find_match_timeout_seconds: int  # REQUIRED
    game_mode: str  # REQUIRED
    joinable: bool  # REQUIRED
    max_delay_ms: int  # REQUIRED
    namespace: str  # REQUIRED
    rule_set: ModelsRuleSetV1  # REQUIRED
    session_queue_timeout_seconds: int  # REQUIRED
    slug: str  # REQUIRED
    social_matchmaking: bool  # REQUIRED
    updated_at: str  # REQUIRED
    use_sub_gamemode: bool  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_deployment(self, value: str) -> ModelsChannelV1:
        self.deployment = value
        return self

    def with_description(self, value: str) -> ModelsChannelV1:
        self.description = value
        return self

    def with_find_match_timeout_seconds(self, value: int) -> ModelsChannelV1:
        self.find_match_timeout_seconds = value
        return self

    def with_game_mode(self, value: str) -> ModelsChannelV1:
        self.game_mode = value
        return self

    def with_joinable(self, value: bool) -> ModelsChannelV1:
        self.joinable = value
        return self

    def with_max_delay_ms(self, value: int) -> ModelsChannelV1:
        self.max_delay_ms = value
        return self

    def with_namespace(self, value: str) -> ModelsChannelV1:
        self.namespace = value
        return self

    def with_rule_set(self, value: ModelsRuleSetV1) -> ModelsChannelV1:
        self.rule_set = value
        return self

    def with_session_queue_timeout_seconds(self, value: int) -> ModelsChannelV1:
        self.session_queue_timeout_seconds = value
        return self

    def with_slug(self, value: str) -> ModelsChannelV1:
        self.slug = value
        return self

    def with_social_matchmaking(self, value: bool) -> ModelsChannelV1:
        self.social_matchmaking = value
        return self

    def with_updated_at(self, value: str) -> ModelsChannelV1:
        self.updated_at = value
        return self

    def with_use_sub_gamemode(self, value: bool) -> ModelsChannelV1:
        self.use_sub_gamemode = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "deployment"):
            result["deployment"] = str(self.deployment)
        elif include_empty:
            result["deployment"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "find_match_timeout_seconds"):
            result["findMatchTimeoutSeconds"] = int(self.find_match_timeout_seconds)
        elif include_empty:
            result["findMatchTimeoutSeconds"] = 0
        if hasattr(self, "game_mode"):
            result["gameMode"] = str(self.game_mode)
        elif include_empty:
            result["gameMode"] = ""
        if hasattr(self, "joinable"):
            result["joinable"] = bool(self.joinable)
        elif include_empty:
            result["joinable"] = False
        if hasattr(self, "max_delay_ms"):
            result["max_delay_ms"] = int(self.max_delay_ms)
        elif include_empty:
            result["max_delay_ms"] = 0
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "rule_set"):
            result["ruleSet"] = self.rule_set.to_dict(include_empty=include_empty)
        elif include_empty:
            result["ruleSet"] = ModelsRuleSetV1()
        if hasattr(self, "session_queue_timeout_seconds"):
            result["sessionQueueTimeoutSeconds"] = int(
                self.session_queue_timeout_seconds
            )
        elif include_empty:
            result["sessionQueueTimeoutSeconds"] = 0
        if hasattr(self, "slug"):
            result["slug"] = str(self.slug)
        elif include_empty:
            result["slug"] = ""
        if hasattr(self, "social_matchmaking"):
            result["socialMatchmaking"] = bool(self.social_matchmaking)
        elif include_empty:
            result["socialMatchmaking"] = False
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "use_sub_gamemode"):
            result["use_sub_gamemode"] = bool(self.use_sub_gamemode)
        elif include_empty:
            result["use_sub_gamemode"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        deployment: str,
        description: str,
        find_match_timeout_seconds: int,
        game_mode: str,
        joinable: bool,
        max_delay_ms: int,
        namespace: str,
        rule_set: ModelsRuleSetV1,
        session_queue_timeout_seconds: int,
        slug: str,
        social_matchmaking: bool,
        updated_at: str,
        use_sub_gamemode: bool,
    ) -> ModelsChannelV1:
        instance = cls()
        instance.deployment = deployment
        instance.description = description
        instance.find_match_timeout_seconds = find_match_timeout_seconds
        instance.game_mode = game_mode
        instance.joinable = joinable
        instance.max_delay_ms = max_delay_ms
        instance.namespace = namespace
        instance.rule_set = rule_set
        instance.session_queue_timeout_seconds = session_queue_timeout_seconds
        instance.slug = slug
        instance.social_matchmaking = social_matchmaking
        instance.updated_at = updated_at
        instance.use_sub_gamemode = use_sub_gamemode
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsChannelV1:
        instance = cls()
        if not dict_:
            return instance
        if "deployment" in dict_ and dict_["deployment"] is not None:
            instance.deployment = str(dict_["deployment"])
        elif include_empty:
            instance.deployment = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if (
            "findMatchTimeoutSeconds" in dict_
            and dict_["findMatchTimeoutSeconds"] is not None
        ):
            instance.find_match_timeout_seconds = int(dict_["findMatchTimeoutSeconds"])
        elif include_empty:
            instance.find_match_timeout_seconds = 0
        if "gameMode" in dict_ and dict_["gameMode"] is not None:
            instance.game_mode = str(dict_["gameMode"])
        elif include_empty:
            instance.game_mode = ""
        if "joinable" in dict_ and dict_["joinable"] is not None:
            instance.joinable = bool(dict_["joinable"])
        elif include_empty:
            instance.joinable = False
        if "max_delay_ms" in dict_ and dict_["max_delay_ms"] is not None:
            instance.max_delay_ms = int(dict_["max_delay_ms"])
        elif include_empty:
            instance.max_delay_ms = 0
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "ruleSet" in dict_ and dict_["ruleSet"] is not None:
            instance.rule_set = ModelsRuleSetV1.create_from_dict(
                dict_["ruleSet"], include_empty=include_empty
            )
        elif include_empty:
            instance.rule_set = ModelsRuleSetV1()
        if (
            "sessionQueueTimeoutSeconds" in dict_
            and dict_["sessionQueueTimeoutSeconds"] is not None
        ):
            instance.session_queue_timeout_seconds = int(
                dict_["sessionQueueTimeoutSeconds"]
            )
        elif include_empty:
            instance.session_queue_timeout_seconds = 0
        if "slug" in dict_ and dict_["slug"] is not None:
            instance.slug = str(dict_["slug"])
        elif include_empty:
            instance.slug = ""
        if "socialMatchmaking" in dict_ and dict_["socialMatchmaking"] is not None:
            instance.social_matchmaking = bool(dict_["socialMatchmaking"])
        elif include_empty:
            instance.social_matchmaking = False
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "use_sub_gamemode" in dict_ and dict_["use_sub_gamemode"] is not None:
            instance.use_sub_gamemode = bool(dict_["use_sub_gamemode"])
        elif include_empty:
            instance.use_sub_gamemode = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsChannelV1]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsChannelV1]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ModelsChannelV1, List[ModelsChannelV1], Dict[Any, ModelsChannelV1]]:
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
            "deployment": "deployment",
            "description": "description",
            "findMatchTimeoutSeconds": "find_match_timeout_seconds",
            "gameMode": "game_mode",
            "joinable": "joinable",
            "max_delay_ms": "max_delay_ms",
            "namespace": "namespace",
            "ruleSet": "rule_set",
            "sessionQueueTimeoutSeconds": "session_queue_timeout_seconds",
            "slug": "slug",
            "socialMatchmaking": "social_matchmaking",
            "updatedAt": "updated_at",
            "use_sub_gamemode": "use_sub_gamemode",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "deployment": True,
            "description": True,
            "findMatchTimeoutSeconds": True,
            "gameMode": True,
            "joinable": True,
            "max_delay_ms": True,
            "namespace": True,
            "ruleSet": True,
            "sessionQueueTimeoutSeconds": True,
            "slug": True,
            "socialMatchmaking": True,
            "updatedAt": True,
            "use_sub_gamemode": True,
        }

    # endregion static methods
