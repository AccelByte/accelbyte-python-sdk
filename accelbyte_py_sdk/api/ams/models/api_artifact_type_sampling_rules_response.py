# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Fleet Commander (1.4.0)

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

from ..models.api_artifact_sampling_rule_response import ApiArtifactSamplingRuleResponse


class ApiArtifactTypeSamplingRulesResponse(Model):
    """Api artifact type sampling rules response (api.ArtifactTypeSamplingRulesResponse)

    Properties:
        crashed: (crashed) REQUIRED ApiArtifactSamplingRuleResponse

        success: (success) REQUIRED ApiArtifactSamplingRuleResponse
    """

    # region fields

    crashed: ApiArtifactSamplingRuleResponse  # REQUIRED
    success: ApiArtifactSamplingRuleResponse  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_crashed(
        self, value: ApiArtifactSamplingRuleResponse
    ) -> ApiArtifactTypeSamplingRulesResponse:
        self.crashed = value
        return self

    def with_success(
        self, value: ApiArtifactSamplingRuleResponse
    ) -> ApiArtifactTypeSamplingRulesResponse:
        self.success = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "crashed"):
            result["crashed"] = self.crashed.to_dict(include_empty=include_empty)
        elif include_empty:
            result["crashed"] = ApiArtifactSamplingRuleResponse()
        if hasattr(self, "success"):
            result["success"] = self.success.to_dict(include_empty=include_empty)
        elif include_empty:
            result["success"] = ApiArtifactSamplingRuleResponse()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        crashed: ApiArtifactSamplingRuleResponse,
        success: ApiArtifactSamplingRuleResponse,
        **kwargs,
    ) -> ApiArtifactTypeSamplingRulesResponse:
        instance = cls()
        instance.crashed = crashed
        instance.success = success
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiArtifactTypeSamplingRulesResponse:
        instance = cls()
        if not dict_:
            return instance
        if "crashed" in dict_ and dict_["crashed"] is not None:
            instance.crashed = ApiArtifactSamplingRuleResponse.create_from_dict(
                dict_["crashed"], include_empty=include_empty
            )
        elif include_empty:
            instance.crashed = ApiArtifactSamplingRuleResponse()
        if "success" in dict_ and dict_["success"] is not None:
            instance.success = ApiArtifactSamplingRuleResponse.create_from_dict(
                dict_["success"], include_empty=include_empty
            )
        elif include_empty:
            instance.success = ApiArtifactSamplingRuleResponse()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiArtifactTypeSamplingRulesResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiArtifactTypeSamplingRulesResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiArtifactTypeSamplingRulesResponse,
        List[ApiArtifactTypeSamplingRulesResponse],
        Dict[Any, ApiArtifactTypeSamplingRulesResponse],
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
            "crashed": "crashed",
            "success": "success",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "crashed": True,
            "success": True,
        }

    # endregion static methods
