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


class ModelsContributorResponse(Model):
    """Models contributor response (models.ContributorResponse)

    Properties:
        achievement_code: (achievementCode) REQUIRED str

        contributed_value: (contributedValue) REQUIRED float

        created_at: (createdAt) REQUIRED str

        id_: (id) REQUIRED str

        namespace: (namespace) REQUIRED str

        user_id: (userId) REQUIRED str

        updated_at: (updatedAt) OPTIONAL str
    """

    # region fields

    achievement_code: str  # REQUIRED
    contributed_value: float  # REQUIRED
    created_at: str  # REQUIRED
    id_: str  # REQUIRED
    namespace: str  # REQUIRED
    user_id: str  # REQUIRED
    updated_at: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_achievement_code(self, value: str) -> ModelsContributorResponse:
        self.achievement_code = value
        return self

    def with_contributed_value(self, value: float) -> ModelsContributorResponse:
        self.contributed_value = value
        return self

    def with_created_at(self, value: str) -> ModelsContributorResponse:
        self.created_at = value
        return self

    def with_id(self, value: str) -> ModelsContributorResponse:
        self.id_ = value
        return self

    def with_namespace(self, value: str) -> ModelsContributorResponse:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> ModelsContributorResponse:
        self.user_id = value
        return self

    def with_updated_at(self, value: str) -> ModelsContributorResponse:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "achievement_code"):
            result["achievementCode"] = str(self.achievement_code)
        elif include_empty:
            result["achievementCode"] = ""
        if hasattr(self, "contributed_value"):
            result["contributedValue"] = float(self.contributed_value)
        elif include_empty:
            result["contributedValue"] = 0.0
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
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
        achievement_code: str,
        contributed_value: float,
        created_at: str,
        id_: str,
        namespace: str,
        user_id: str,
        updated_at: Optional[str] = None,
        **kwargs,
    ) -> ModelsContributorResponse:
        instance = cls()
        instance.achievement_code = achievement_code
        instance.contributed_value = contributed_value
        instance.created_at = created_at
        instance.id_ = id_
        instance.namespace = namespace
        instance.user_id = user_id
        if updated_at is not None:
            instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsContributorResponse:
        instance = cls()
        if not dict_:
            return instance
        if "achievementCode" in dict_ and dict_["achievementCode"] is not None:
            instance.achievement_code = str(dict_["achievementCode"])
        elif include_empty:
            instance.achievement_code = ""
        if "contributedValue" in dict_ and dict_["contributedValue"] is not None:
            instance.contributed_value = float(dict_["contributedValue"])
        elif include_empty:
            instance.contributed_value = 0.0
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsContributorResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsContributorResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsContributorResponse,
        List[ModelsContributorResponse],
        Dict[Any, ModelsContributorResponse],
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
            "contributedValue": "contributed_value",
            "createdAt": "created_at",
            "id": "id_",
            "namespace": "namespace",
            "userId": "user_id",
            "updatedAt": "updated_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "achievementCode": True,
            "contributedValue": True,
            "createdAt": True,
            "id": True,
            "namespace": True,
            "userId": True,
            "updatedAt": False,
        }

    # endregion static methods
