# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Custom Service Manager

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

from ..models.model_app_redeployment_detail import ModelAppRedeploymentDetail


class ModelAppRedeploymentInfo(Model):
    """Model app redeployment info (model.AppRedeploymentInfo)

    Properties:
        should_redeploy: (shouldRedeploy) REQUIRED bool

        details: (details) OPTIONAL List[ModelAppRedeploymentDetail]
    """

    # region fields

    should_redeploy: bool  # REQUIRED
    details: List[ModelAppRedeploymentDetail]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_should_redeploy(self, value: bool) -> ModelAppRedeploymentInfo:
        self.should_redeploy = value
        return self

    def with_details(
        self, value: List[ModelAppRedeploymentDetail]
    ) -> ModelAppRedeploymentInfo:
        self.details = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "should_redeploy"):
            result["shouldRedeploy"] = bool(self.should_redeploy)
        elif include_empty:
            result["shouldRedeploy"] = False
        if hasattr(self, "details"):
            result["details"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.details
            ]
        elif include_empty:
            result["details"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        should_redeploy: bool,
        details: Optional[List[ModelAppRedeploymentDetail]] = None,
        **kwargs,
    ) -> ModelAppRedeploymentInfo:
        instance = cls()
        instance.should_redeploy = should_redeploy
        if details is not None:
            instance.details = details
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelAppRedeploymentInfo:
        instance = cls()
        if not dict_:
            return instance
        if "shouldRedeploy" in dict_ and dict_["shouldRedeploy"] is not None:
            instance.should_redeploy = bool(dict_["shouldRedeploy"])
        elif include_empty:
            instance.should_redeploy = False
        if "details" in dict_ and dict_["details"] is not None:
            instance.details = [
                ModelAppRedeploymentDetail.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["details"]
            ]
        elif include_empty:
            instance.details = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelAppRedeploymentInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelAppRedeploymentInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelAppRedeploymentInfo,
        List[ModelAppRedeploymentInfo],
        Dict[Any, ModelAppRedeploymentInfo],
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
            "shouldRedeploy": "should_redeploy",
            "details": "details",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "shouldRedeploy": True,
            "details": False,
        }

    # endregion static methods
