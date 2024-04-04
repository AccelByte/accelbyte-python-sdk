# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Session History Service

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

from ..models.models_match import ModelsMatch


class ApimodelsEventMatchHistory(Model):
    """Apimodels event match history (apimodels.EventMatchHistory)

    Properties:
        action: (action) REQUIRED str

        match_id: (matchID) REQUIRED str

        matchpool: (matchpool) REQUIRED str

        namespace: (namespace) REQUIRED str

        pod_name: (podName) REQUIRED str

        timestamp: (timestamp) REQUIRED str

        match: (match) OPTIONAL ModelsMatch

        rule_set: (ruleSet) OPTIONAL str

        tick_id: (tickID) OPTIONAL str
    """

    # region fields

    action: str  # REQUIRED
    match_id: str  # REQUIRED
    matchpool: str  # REQUIRED
    namespace: str  # REQUIRED
    pod_name: str  # REQUIRED
    timestamp: str  # REQUIRED
    match: ModelsMatch  # OPTIONAL
    rule_set: str  # OPTIONAL
    tick_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_action(self, value: str) -> ApimodelsEventMatchHistory:
        self.action = value
        return self

    def with_match_id(self, value: str) -> ApimodelsEventMatchHistory:
        self.match_id = value
        return self

    def with_matchpool(self, value: str) -> ApimodelsEventMatchHistory:
        self.matchpool = value
        return self

    def with_namespace(self, value: str) -> ApimodelsEventMatchHistory:
        self.namespace = value
        return self

    def with_pod_name(self, value: str) -> ApimodelsEventMatchHistory:
        self.pod_name = value
        return self

    def with_timestamp(self, value: str) -> ApimodelsEventMatchHistory:
        self.timestamp = value
        return self

    def with_match(self, value: ModelsMatch) -> ApimodelsEventMatchHistory:
        self.match = value
        return self

    def with_rule_set(self, value: str) -> ApimodelsEventMatchHistory:
        self.rule_set = value
        return self

    def with_tick_id(self, value: str) -> ApimodelsEventMatchHistory:
        self.tick_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "action"):
            result["action"] = str(self.action)
        elif include_empty:
            result["action"] = ""
        if hasattr(self, "match_id"):
            result["matchID"] = str(self.match_id)
        elif include_empty:
            result["matchID"] = ""
        if hasattr(self, "matchpool"):
            result["matchpool"] = str(self.matchpool)
        elif include_empty:
            result["matchpool"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "pod_name"):
            result["podName"] = str(self.pod_name)
        elif include_empty:
            result["podName"] = ""
        if hasattr(self, "timestamp"):
            result["timestamp"] = str(self.timestamp)
        elif include_empty:
            result["timestamp"] = ""
        if hasattr(self, "match"):
            result["match"] = self.match.to_dict(include_empty=include_empty)
        elif include_empty:
            result["match"] = ModelsMatch()
        if hasattr(self, "rule_set"):
            result["ruleSet"] = str(self.rule_set)
        elif include_empty:
            result["ruleSet"] = ""
        if hasattr(self, "tick_id"):
            result["tickID"] = str(self.tick_id)
        elif include_empty:
            result["tickID"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        action: str,
        match_id: str,
        matchpool: str,
        namespace: str,
        pod_name: str,
        timestamp: str,
        match: Optional[ModelsMatch] = None,
        rule_set: Optional[str] = None,
        tick_id: Optional[str] = None,
        **kwargs,
    ) -> ApimodelsEventMatchHistory:
        instance = cls()
        instance.action = action
        instance.match_id = match_id
        instance.matchpool = matchpool
        instance.namespace = namespace
        instance.pod_name = pod_name
        instance.timestamp = timestamp
        if match is not None:
            instance.match = match
        if rule_set is not None:
            instance.rule_set = rule_set
        if tick_id is not None:
            instance.tick_id = tick_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsEventMatchHistory:
        instance = cls()
        if not dict_:
            return instance
        if "action" in dict_ and dict_["action"] is not None:
            instance.action = str(dict_["action"])
        elif include_empty:
            instance.action = ""
        if "matchID" in dict_ and dict_["matchID"] is not None:
            instance.match_id = str(dict_["matchID"])
        elif include_empty:
            instance.match_id = ""
        if "matchpool" in dict_ and dict_["matchpool"] is not None:
            instance.matchpool = str(dict_["matchpool"])
        elif include_empty:
            instance.matchpool = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "podName" in dict_ and dict_["podName"] is not None:
            instance.pod_name = str(dict_["podName"])
        elif include_empty:
            instance.pod_name = ""
        if "timestamp" in dict_ and dict_["timestamp"] is not None:
            instance.timestamp = str(dict_["timestamp"])
        elif include_empty:
            instance.timestamp = ""
        if "match" in dict_ and dict_["match"] is not None:
            instance.match = ModelsMatch.create_from_dict(
                dict_["match"], include_empty=include_empty
            )
        elif include_empty:
            instance.match = ModelsMatch()
        if "ruleSet" in dict_ and dict_["ruleSet"] is not None:
            instance.rule_set = str(dict_["ruleSet"])
        elif include_empty:
            instance.rule_set = ""
        if "tickID" in dict_ and dict_["tickID"] is not None:
            instance.tick_id = str(dict_["tickID"])
        elif include_empty:
            instance.tick_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsEventMatchHistory]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsEventMatchHistory]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsEventMatchHistory,
        List[ApimodelsEventMatchHistory],
        Dict[Any, ApimodelsEventMatchHistory],
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
            "action": "action",
            "matchID": "match_id",
            "matchpool": "matchpool",
            "namespace": "namespace",
            "podName": "pod_name",
            "timestamp": "timestamp",
            "match": "match",
            "ruleSet": "rule_set",
            "tickID": "tick_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "action": True,
            "matchID": True,
            "matchpool": True,
            "namespace": True,
            "podName": True,
            "timestamp": True,
            "match": False,
            "ruleSet": False,
            "tickID": False,
        }

    # endregion static methods
