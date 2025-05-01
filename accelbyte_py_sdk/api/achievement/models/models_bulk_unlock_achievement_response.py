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

from ..models.models_error_details import ModelsErrorDetails


class ModelsBulkUnlockAchievementResponse(Model):
    """Models bulk unlock achievement response (models.BulkUnlockAchievementResponse)

    Properties:
        achievement_code: (achievementCode) REQUIRED str

        success: (success) REQUIRED bool

        error_detail: (errorDetail) OPTIONAL ModelsErrorDetails
    """

    # region fields

    achievement_code: str  # REQUIRED
    success: bool  # REQUIRED
    error_detail: ModelsErrorDetails  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_achievement_code(self, value: str) -> ModelsBulkUnlockAchievementResponse:
        self.achievement_code = value
        return self

    def with_success(self, value: bool) -> ModelsBulkUnlockAchievementResponse:
        self.success = value
        return self

    def with_error_detail(
        self, value: ModelsErrorDetails
    ) -> ModelsBulkUnlockAchievementResponse:
        self.error_detail = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "achievement_code"):
            result["achievementCode"] = str(self.achievement_code)
        elif include_empty:
            result["achievementCode"] = ""
        if hasattr(self, "success"):
            result["success"] = bool(self.success)
        elif include_empty:
            result["success"] = False
        if hasattr(self, "error_detail"):
            result["errorDetail"] = self.error_detail.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["errorDetail"] = ModelsErrorDetails()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        achievement_code: str,
        success: bool,
        error_detail: Optional[ModelsErrorDetails] = None,
        **kwargs,
    ) -> ModelsBulkUnlockAchievementResponse:
        instance = cls()
        instance.achievement_code = achievement_code
        instance.success = success
        if error_detail is not None:
            instance.error_detail = error_detail
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsBulkUnlockAchievementResponse:
        instance = cls()
        if not dict_:
            return instance
        if "achievementCode" in dict_ and dict_["achievementCode"] is not None:
            instance.achievement_code = str(dict_["achievementCode"])
        elif include_empty:
            instance.achievement_code = ""
        if "success" in dict_ and dict_["success"] is not None:
            instance.success = bool(dict_["success"])
        elif include_empty:
            instance.success = False
        if "errorDetail" in dict_ and dict_["errorDetail"] is not None:
            instance.error_detail = ModelsErrorDetails.create_from_dict(
                dict_["errorDetail"], include_empty=include_empty
            )
        elif include_empty:
            instance.error_detail = ModelsErrorDetails()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsBulkUnlockAchievementResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsBulkUnlockAchievementResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsBulkUnlockAchievementResponse,
        List[ModelsBulkUnlockAchievementResponse],
        Dict[Any, ModelsBulkUnlockAchievementResponse],
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
            "success": "success",
            "errorDetail": "error_detail",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "achievementCode": True,
            "success": True,
            "errorDetail": False,
        }

    # endregion static methods
