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


class ModelsPSNEventResult(Model):
    """Models PSN event result (models.PSNEventResult)

    Properties:
        is_success: (isSuccess) REQUIRED bool

        third_party_user_id: (thirdPartyUserId) REQUIRED str

        error_detail: (errorDetail) OPTIONAL ModelsErrorDetails
    """

    # region fields

    is_success: bool  # REQUIRED
    third_party_user_id: str  # REQUIRED
    error_detail: ModelsErrorDetails  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_is_success(self, value: bool) -> ModelsPSNEventResult:
        self.is_success = value
        return self

    def with_third_party_user_id(self, value: str) -> ModelsPSNEventResult:
        self.third_party_user_id = value
        return self

    def with_error_detail(self, value: ModelsErrorDetails) -> ModelsPSNEventResult:
        self.error_detail = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "is_success"):
            result["isSuccess"] = bool(self.is_success)
        elif include_empty:
            result["isSuccess"] = False
        if hasattr(self, "third_party_user_id"):
            result["thirdPartyUserId"] = str(self.third_party_user_id)
        elif include_empty:
            result["thirdPartyUserId"] = ""
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
        is_success: bool,
        third_party_user_id: str,
        error_detail: Optional[ModelsErrorDetails] = None,
        **kwargs,
    ) -> ModelsPSNEventResult:
        instance = cls()
        instance.is_success = is_success
        instance.third_party_user_id = third_party_user_id
        if error_detail is not None:
            instance.error_detail = error_detail
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsPSNEventResult:
        instance = cls()
        if not dict_:
            return instance
        if "isSuccess" in dict_ and dict_["isSuccess"] is not None:
            instance.is_success = bool(dict_["isSuccess"])
        elif include_empty:
            instance.is_success = False
        if "thirdPartyUserId" in dict_ and dict_["thirdPartyUserId"] is not None:
            instance.third_party_user_id = str(dict_["thirdPartyUserId"])
        elif include_empty:
            instance.third_party_user_id = ""
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
    ) -> Dict[str, ModelsPSNEventResult]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsPSNEventResult]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsPSNEventResult,
        List[ModelsPSNEventResult],
        Dict[Any, ModelsPSNEventResult],
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
            "isSuccess": "is_success",
            "thirdPartyUserId": "third_party_user_id",
            "errorDetail": "error_detail",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "isSuccess": True,
            "thirdPartyUserId": True,
            "errorDetail": False,
        }

    # endregion static methods
