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

from ..models.models_update_ruleset import ModelsUpdateRuleset


class ModelsUpdateChannelRequest(Model):
    """Models update channel request (models.UpdateChannelRequest)

    Properties:
        deployment: (deployment) REQUIRED str

        description: (description) REQUIRED str

        find_match_timeout_seconds: (findMatchTimeoutSeconds) REQUIRED int

        joinable: (joinable) REQUIRED bool

        max_delay_ms: (max_delay_ms) REQUIRED int

        rule_set: (ruleSet) REQUIRED ModelsUpdateRuleset

        session_queue_timeout_seconds: (sessionQueueTimeoutSeconds) REQUIRED int

        social_matchmaking: (socialMatchmaking) REQUIRED bool

        use_sub_gamemode: (use_sub_gamemode) REQUIRED bool
    """

    # region fields

    deployment: str  # REQUIRED
    description: str  # REQUIRED
    find_match_timeout_seconds: int  # REQUIRED
    joinable: bool  # REQUIRED
    max_delay_ms: int  # REQUIRED
    rule_set: ModelsUpdateRuleset  # REQUIRED
    session_queue_timeout_seconds: int  # REQUIRED
    social_matchmaking: bool  # REQUIRED
    use_sub_gamemode: bool  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_deployment(self, value: str) -> ModelsUpdateChannelRequest:
        self.deployment = value
        return self

    def with_description(self, value: str) -> ModelsUpdateChannelRequest:
        self.description = value
        return self

    def with_find_match_timeout_seconds(self, value: int) -> ModelsUpdateChannelRequest:
        self.find_match_timeout_seconds = value
        return self

    def with_joinable(self, value: bool) -> ModelsUpdateChannelRequest:
        self.joinable = value
        return self

    def with_max_delay_ms(self, value: int) -> ModelsUpdateChannelRequest:
        self.max_delay_ms = value
        return self

    def with_rule_set(self, value: ModelsUpdateRuleset) -> ModelsUpdateChannelRequest:
        self.rule_set = value
        return self

    def with_session_queue_timeout_seconds(
        self, value: int
    ) -> ModelsUpdateChannelRequest:
        self.session_queue_timeout_seconds = value
        return self

    def with_social_matchmaking(self, value: bool) -> ModelsUpdateChannelRequest:
        self.social_matchmaking = value
        return self

    def with_use_sub_gamemode(self, value: bool) -> ModelsUpdateChannelRequest:
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
        if hasattr(self, "joinable"):
            result["joinable"] = bool(self.joinable)
        elif include_empty:
            result["joinable"] = False
        if hasattr(self, "max_delay_ms"):
            result["max_delay_ms"] = int(self.max_delay_ms)
        elif include_empty:
            result["max_delay_ms"] = 0
        if hasattr(self, "rule_set"):
            result["ruleSet"] = self.rule_set.to_dict(include_empty=include_empty)
        elif include_empty:
            result["ruleSet"] = ModelsUpdateRuleset()
        if hasattr(self, "session_queue_timeout_seconds"):
            result["sessionQueueTimeoutSeconds"] = int(
                self.session_queue_timeout_seconds
            )
        elif include_empty:
            result["sessionQueueTimeoutSeconds"] = 0
        if hasattr(self, "social_matchmaking"):
            result["socialMatchmaking"] = bool(self.social_matchmaking)
        elif include_empty:
            result["socialMatchmaking"] = False
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
        joinable: bool,
        max_delay_ms: int,
        rule_set: ModelsUpdateRuleset,
        session_queue_timeout_seconds: int,
        social_matchmaking: bool,
        use_sub_gamemode: bool,
    ) -> ModelsUpdateChannelRequest:
        instance = cls()
        instance.deployment = deployment
        instance.description = description
        instance.find_match_timeout_seconds = find_match_timeout_seconds
        instance.joinable = joinable
        instance.max_delay_ms = max_delay_ms
        instance.rule_set = rule_set
        instance.session_queue_timeout_seconds = session_queue_timeout_seconds
        instance.social_matchmaking = social_matchmaking
        instance.use_sub_gamemode = use_sub_gamemode
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsUpdateChannelRequest:
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
        if "joinable" in dict_ and dict_["joinable"] is not None:
            instance.joinable = bool(dict_["joinable"])
        elif include_empty:
            instance.joinable = False
        if "max_delay_ms" in dict_ and dict_["max_delay_ms"] is not None:
            instance.max_delay_ms = int(dict_["max_delay_ms"])
        elif include_empty:
            instance.max_delay_ms = 0
        if "ruleSet" in dict_ and dict_["ruleSet"] is not None:
            instance.rule_set = ModelsUpdateRuleset.create_from_dict(
                dict_["ruleSet"], include_empty=include_empty
            )
        elif include_empty:
            instance.rule_set = ModelsUpdateRuleset()
        if (
            "sessionQueueTimeoutSeconds" in dict_
            and dict_["sessionQueueTimeoutSeconds"] is not None
        ):
            instance.session_queue_timeout_seconds = int(
                dict_["sessionQueueTimeoutSeconds"]
            )
        elif include_empty:
            instance.session_queue_timeout_seconds = 0
        if "socialMatchmaking" in dict_ and dict_["socialMatchmaking"] is not None:
            instance.social_matchmaking = bool(dict_["socialMatchmaking"])
        elif include_empty:
            instance.social_matchmaking = False
        if "use_sub_gamemode" in dict_ and dict_["use_sub_gamemode"] is not None:
            instance.use_sub_gamemode = bool(dict_["use_sub_gamemode"])
        elif include_empty:
            instance.use_sub_gamemode = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsUpdateChannelRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsUpdateChannelRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsUpdateChannelRequest,
        List[ModelsUpdateChannelRequest],
        Dict[Any, ModelsUpdateChannelRequest],
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
            "deployment": "deployment",
            "description": "description",
            "findMatchTimeoutSeconds": "find_match_timeout_seconds",
            "joinable": "joinable",
            "max_delay_ms": "max_delay_ms",
            "ruleSet": "rule_set",
            "sessionQueueTimeoutSeconds": "session_queue_timeout_seconds",
            "socialMatchmaking": "social_matchmaking",
            "use_sub_gamemode": "use_sub_gamemode",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "deployment": True,
            "description": True,
            "findMatchTimeoutSeconds": True,
            "joinable": True,
            "max_delay_ms": True,
            "ruleSet": True,
            "sessionQueueTimeoutSeconds": True,
            "socialMatchmaking": True,
            "use_sub_gamemode": True,
        }

    # endregion static methods
