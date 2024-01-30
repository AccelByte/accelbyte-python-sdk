# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Achievement Service

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


class ModelsUserContributionResponse(Model):
    """Models user contribution response (models.UserContributionResponse)

    Properties:
        achievement_code: (achievementCode) REQUIRED str

        can_claim_reward: (canClaimReward) REQUIRED bool

        contributed_value: (contributedValue) REQUIRED float

        id_: (id) REQUIRED str

        name: (name) REQUIRED Dict[str, str]

        namespace: (namespace) REQUIRED str

        user_id: (userId) REQUIRED str
    """

    # region fields

    achievement_code: str  # REQUIRED
    can_claim_reward: bool  # REQUIRED
    contributed_value: float  # REQUIRED
    id_: str  # REQUIRED
    name: Dict[str, str]  # REQUIRED
    namespace: str  # REQUIRED
    user_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_achievement_code(self, value: str) -> ModelsUserContributionResponse:
        self.achievement_code = value
        return self

    def with_can_claim_reward(self, value: bool) -> ModelsUserContributionResponse:
        self.can_claim_reward = value
        return self

    def with_contributed_value(self, value: float) -> ModelsUserContributionResponse:
        self.contributed_value = value
        return self

    def with_id(self, value: str) -> ModelsUserContributionResponse:
        self.id_ = value
        return self

    def with_name(self, value: Dict[str, str]) -> ModelsUserContributionResponse:
        self.name = value
        return self

    def with_namespace(self, value: str) -> ModelsUserContributionResponse:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> ModelsUserContributionResponse:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "achievement_code"):
            result["achievementCode"] = str(self.achievement_code)
        elif include_empty:
            result["achievementCode"] = ""
        if hasattr(self, "can_claim_reward"):
            result["canClaimReward"] = bool(self.can_claim_reward)
        elif include_empty:
            result["canClaimReward"] = False
        if hasattr(self, "contributed_value"):
            result["contributedValue"] = float(self.contributed_value)
        elif include_empty:
            result["contributedValue"] = 0.0
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "name"):
            result["name"] = {str(k0): str(v0) for k0, v0 in self.name.items()}
        elif include_empty:
            result["name"] = {}
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        achievement_code: str,
        can_claim_reward: bool,
        contributed_value: float,
        id_: str,
        name: Dict[str, str],
        namespace: str,
        user_id: str,
        **kwargs,
    ) -> ModelsUserContributionResponse:
        instance = cls()
        instance.achievement_code = achievement_code
        instance.can_claim_reward = can_claim_reward
        instance.contributed_value = contributed_value
        instance.id_ = id_
        instance.name = name
        instance.namespace = namespace
        instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsUserContributionResponse:
        instance = cls()
        if not dict_:
            return instance
        if "achievementCode" in dict_ and dict_["achievementCode"] is not None:
            instance.achievement_code = str(dict_["achievementCode"])
        elif include_empty:
            instance.achievement_code = ""
        if "canClaimReward" in dict_ and dict_["canClaimReward"] is not None:
            instance.can_claim_reward = bool(dict_["canClaimReward"])
        elif include_empty:
            instance.can_claim_reward = False
        if "contributedValue" in dict_ and dict_["contributedValue"] is not None:
            instance.contributed_value = float(dict_["contributedValue"])
        elif include_empty:
            instance.contributed_value = 0.0
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = {str(k0): str(v0) for k0, v0 in dict_["name"].items()}
        elif include_empty:
            instance.name = {}
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsUserContributionResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsUserContributionResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsUserContributionResponse,
        List[ModelsUserContributionResponse],
        Dict[Any, ModelsUserContributionResponse],
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
            "achievementCode": "achievement_code",
            "canClaimReward": "can_claim_reward",
            "contributedValue": "contributed_value",
            "id": "id_",
            "name": "name",
            "namespace": "namespace",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "achievementCode": True,
            "canClaimReward": True,
            "contributedValue": True,
            "id": True,
            "name": True,
            "namespace": True,
            "userId": True,
        }

    # endregion static methods
