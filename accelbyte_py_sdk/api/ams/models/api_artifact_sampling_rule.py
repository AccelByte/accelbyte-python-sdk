# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Fleet Commander

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


class ApiArtifactSamplingRule(Model):
    """Api artifact sampling rule (api.ArtifactSamplingRule)

    Properties:
        collect: (collect) REQUIRED bool

        percentage: (percentage) REQUIRED int
    """

    # region fields

    collect: bool  # REQUIRED
    percentage: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_collect(self, value: bool) -> ApiArtifactSamplingRule:
        self.collect = value
        return self

    def with_percentage(self, value: int) -> ApiArtifactSamplingRule:
        self.percentage = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "collect"):
            result["collect"] = bool(self.collect)
        elif include_empty:
            result["collect"] = False
        if hasattr(self, "percentage"):
            result["percentage"] = int(self.percentage)
        elif include_empty:
            result["percentage"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, collect: bool, percentage: int, **kwargs
    ) -> ApiArtifactSamplingRule:
        instance = cls()
        instance.collect = collect
        instance.percentage = percentage
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiArtifactSamplingRule:
        instance = cls()
        if not dict_:
            return instance
        if "collect" in dict_ and dict_["collect"] is not None:
            instance.collect = bool(dict_["collect"])
        elif include_empty:
            instance.collect = False
        if "percentage" in dict_ and dict_["percentage"] is not None:
            instance.percentage = int(dict_["percentage"])
        elif include_empty:
            instance.percentage = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiArtifactSamplingRule]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiArtifactSamplingRule]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiArtifactSamplingRule,
        List[ApiArtifactSamplingRule],
        Dict[Any, ApiArtifactSamplingRule],
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
            "collect": "collect",
            "percentage": "percentage",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "collect": True,
            "percentage": True,
        }

    # endregion static methods
