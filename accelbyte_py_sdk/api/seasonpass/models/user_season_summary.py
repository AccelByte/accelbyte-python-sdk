# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Seasonpass Service (1.18.0)

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


class UserSeasonSummary(Model):
    """A DTO object for user season summary. (UserSeasonSummary)

    Properties:
        namespace: (namespace) REQUIRED str

        user_id: (userId) REQUIRED str

        cleared: (cleared) OPTIONAL bool

        created_at: (createdAt) OPTIONAL str

        current_exp: (currentExp) OPTIONAL int

        current_tier_index: (currentTierIndex) OPTIONAL int

        enrolled_at: (enrolledAt) OPTIONAL str

        enrolled_passes: (enrolledPasses) OPTIONAL List[str]

        id_: (id) OPTIONAL str

        last_tier_index: (lastTierIndex) OPTIONAL int

        required_exp: (requiredExp) OPTIONAL int

        season_id: (seasonId) OPTIONAL str

        updated_at: (updatedAt) OPTIONAL str
    """

    # region fields

    namespace: str  # REQUIRED
    user_id: str  # REQUIRED
    cleared: bool  # OPTIONAL
    created_at: str  # OPTIONAL
    current_exp: int  # OPTIONAL
    current_tier_index: int  # OPTIONAL
    enrolled_at: str  # OPTIONAL
    enrolled_passes: List[str]  # OPTIONAL
    id_: str  # OPTIONAL
    last_tier_index: int  # OPTIONAL
    required_exp: int  # OPTIONAL
    season_id: str  # OPTIONAL
    updated_at: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_namespace(self, value: str) -> UserSeasonSummary:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> UserSeasonSummary:
        self.user_id = value
        return self

    def with_cleared(self, value: bool) -> UserSeasonSummary:
        self.cleared = value
        return self

    def with_created_at(self, value: str) -> UserSeasonSummary:
        self.created_at = value
        return self

    def with_current_exp(self, value: int) -> UserSeasonSummary:
        self.current_exp = value
        return self

    def with_current_tier_index(self, value: int) -> UserSeasonSummary:
        self.current_tier_index = value
        return self

    def with_enrolled_at(self, value: str) -> UserSeasonSummary:
        self.enrolled_at = value
        return self

    def with_enrolled_passes(self, value: List[str]) -> UserSeasonSummary:
        self.enrolled_passes = value
        return self

    def with_id(self, value: str) -> UserSeasonSummary:
        self.id_ = value
        return self

    def with_last_tier_index(self, value: int) -> UserSeasonSummary:
        self.last_tier_index = value
        return self

    def with_required_exp(self, value: int) -> UserSeasonSummary:
        self.required_exp = value
        return self

    def with_season_id(self, value: str) -> UserSeasonSummary:
        self.season_id = value
        return self

    def with_updated_at(self, value: str) -> UserSeasonSummary:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "cleared"):
            result["cleared"] = bool(self.cleared)
        elif include_empty:
            result["cleared"] = False
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "current_exp"):
            result["currentExp"] = int(self.current_exp)
        elif include_empty:
            result["currentExp"] = 0
        if hasattr(self, "current_tier_index"):
            result["currentTierIndex"] = int(self.current_tier_index)
        elif include_empty:
            result["currentTierIndex"] = 0
        if hasattr(self, "enrolled_at"):
            result["enrolledAt"] = str(self.enrolled_at)
        elif include_empty:
            result["enrolledAt"] = ""
        if hasattr(self, "enrolled_passes"):
            result["enrolledPasses"] = [str(i0) for i0 in self.enrolled_passes]
        elif include_empty:
            result["enrolledPasses"] = []
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "last_tier_index"):
            result["lastTierIndex"] = int(self.last_tier_index)
        elif include_empty:
            result["lastTierIndex"] = 0
        if hasattr(self, "required_exp"):
            result["requiredExp"] = int(self.required_exp)
        elif include_empty:
            result["requiredExp"] = 0
        if hasattr(self, "season_id"):
            result["seasonId"] = str(self.season_id)
        elif include_empty:
            result["seasonId"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        user_id: str,
        cleared: Optional[bool] = None,
        created_at: Optional[str] = None,
        current_exp: Optional[int] = None,
        current_tier_index: Optional[int] = None,
        enrolled_at: Optional[str] = None,
        enrolled_passes: Optional[List[str]] = None,
        id_: Optional[str] = None,
        last_tier_index: Optional[int] = None,
        required_exp: Optional[int] = None,
        season_id: Optional[str] = None,
        updated_at: Optional[str] = None,
    ) -> UserSeasonSummary:
        instance = cls()
        instance.namespace = namespace
        instance.user_id = user_id
        if cleared is not None:
            instance.cleared = cleared
        if created_at is not None:
            instance.created_at = created_at
        if current_exp is not None:
            instance.current_exp = current_exp
        if current_tier_index is not None:
            instance.current_tier_index = current_tier_index
        if enrolled_at is not None:
            instance.enrolled_at = enrolled_at
        if enrolled_passes is not None:
            instance.enrolled_passes = enrolled_passes
        if id_ is not None:
            instance.id_ = id_
        if last_tier_index is not None:
            instance.last_tier_index = last_tier_index
        if required_exp is not None:
            instance.required_exp = required_exp
        if season_id is not None:
            instance.season_id = season_id
        if updated_at is not None:
            instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> UserSeasonSummary:
        instance = cls()
        if not dict_:
            return instance
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "cleared" in dict_ and dict_["cleared"] is not None:
            instance.cleared = bool(dict_["cleared"])
        elif include_empty:
            instance.cleared = False
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "currentExp" in dict_ and dict_["currentExp"] is not None:
            instance.current_exp = int(dict_["currentExp"])
        elif include_empty:
            instance.current_exp = 0
        if "currentTierIndex" in dict_ and dict_["currentTierIndex"] is not None:
            instance.current_tier_index = int(dict_["currentTierIndex"])
        elif include_empty:
            instance.current_tier_index = 0
        if "enrolledAt" in dict_ and dict_["enrolledAt"] is not None:
            instance.enrolled_at = str(dict_["enrolledAt"])
        elif include_empty:
            instance.enrolled_at = ""
        if "enrolledPasses" in dict_ and dict_["enrolledPasses"] is not None:
            instance.enrolled_passes = [str(i0) for i0 in dict_["enrolledPasses"]]
        elif include_empty:
            instance.enrolled_passes = []
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "lastTierIndex" in dict_ and dict_["lastTierIndex"] is not None:
            instance.last_tier_index = int(dict_["lastTierIndex"])
        elif include_empty:
            instance.last_tier_index = 0
        if "requiredExp" in dict_ and dict_["requiredExp"] is not None:
            instance.required_exp = int(dict_["requiredExp"])
        elif include_empty:
            instance.required_exp = 0
        if "seasonId" in dict_ and dict_["seasonId"] is not None:
            instance.season_id = str(dict_["seasonId"])
        elif include_empty:
            instance.season_id = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, UserSeasonSummary]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[UserSeasonSummary]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        UserSeasonSummary, List[UserSeasonSummary], Dict[Any, UserSeasonSummary]
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
            "namespace": "namespace",
            "userId": "user_id",
            "cleared": "cleared",
            "createdAt": "created_at",
            "currentExp": "current_exp",
            "currentTierIndex": "current_tier_index",
            "enrolledAt": "enrolled_at",
            "enrolledPasses": "enrolled_passes",
            "id": "id_",
            "lastTierIndex": "last_tier_index",
            "requiredExp": "required_exp",
            "seasonId": "season_id",
            "updatedAt": "updated_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "userId": True,
            "cleared": False,
            "createdAt": False,
            "currentExp": False,
            "currentTierIndex": False,
            "enrolledAt": False,
            "enrolledPasses": False,
            "id": False,
            "lastTierIndex": False,
            "requiredExp": False,
            "seasonId": False,
            "updatedAt": False,
        }

    # endregion static methods
