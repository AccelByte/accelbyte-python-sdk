# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Fleet Commander (1.7.1)

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

from ..models.api_artifact_sampling_rule import ApiArtifactSamplingRule


class ApiArtifactTypeSamplingRules(Model):
    """Api artifact type sampling rules (api.ArtifactTypeSamplingRules)

    Properties:
        crashed: (crashed) REQUIRED ApiArtifactSamplingRule

        success: (success) REQUIRED ApiArtifactSamplingRule
    """

    # region fields

    crashed: ApiArtifactSamplingRule  # REQUIRED
    success: ApiArtifactSamplingRule  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_crashed(
        self, value: ApiArtifactSamplingRule
    ) -> ApiArtifactTypeSamplingRules:
        self.crashed = value
        return self

    def with_success(
        self, value: ApiArtifactSamplingRule
    ) -> ApiArtifactTypeSamplingRules:
        self.success = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "crashed"):
            result["crashed"] = self.crashed.to_dict(include_empty=include_empty)
        elif include_empty:
            result["crashed"] = ApiArtifactSamplingRule()
        if hasattr(self, "success"):
            result["success"] = self.success.to_dict(include_empty=include_empty)
        elif include_empty:
            result["success"] = ApiArtifactSamplingRule()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        crashed: ApiArtifactSamplingRule,
        success: ApiArtifactSamplingRule,
        **kwargs,
    ) -> ApiArtifactTypeSamplingRules:
        instance = cls()
        instance.crashed = crashed
        instance.success = success
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiArtifactTypeSamplingRules:
        instance = cls()
        if not dict_:
            return instance
        if "crashed" in dict_ and dict_["crashed"] is not None:
            instance.crashed = ApiArtifactSamplingRule.create_from_dict(
                dict_["crashed"], include_empty=include_empty
            )
        elif include_empty:
            instance.crashed = ApiArtifactSamplingRule()
        if "success" in dict_ and dict_["success"] is not None:
            instance.success = ApiArtifactSamplingRule.create_from_dict(
                dict_["success"], include_empty=include_empty
            )
        elif include_empty:
            instance.success = ApiArtifactSamplingRule()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiArtifactTypeSamplingRules]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiArtifactTypeSamplingRules]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiArtifactTypeSamplingRules,
        List[ApiArtifactTypeSamplingRules],
        Dict[Any, ApiArtifactTypeSamplingRules],
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
