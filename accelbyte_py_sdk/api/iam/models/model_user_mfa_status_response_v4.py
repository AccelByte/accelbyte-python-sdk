# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Iam Service

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


class ModelUserMFAStatusResponseV4(Model):
    """Model user MFA status response V4 (model.UserMFAStatusResponseV4)

    Properties:
        enabled: (enabled) REQUIRED bool

        default_factor: (defaultFactor) OPTIONAL str

        enabled_factors: (enabledFactors) OPTIONAL List[str]
    """

    # region fields

    enabled: bool  # REQUIRED
    default_factor: str  # OPTIONAL
    enabled_factors: List[str]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_enabled(self, value: bool) -> ModelUserMFAStatusResponseV4:
        self.enabled = value
        return self

    def with_default_factor(self, value: str) -> ModelUserMFAStatusResponseV4:
        self.default_factor = value
        return self

    def with_enabled_factors(self, value: List[str]) -> ModelUserMFAStatusResponseV4:
        self.enabled_factors = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "enabled"):
            result["enabled"] = bool(self.enabled)
        elif include_empty:
            result["enabled"] = False
        if hasattr(self, "default_factor"):
            result["defaultFactor"] = str(self.default_factor)
        elif include_empty:
            result["defaultFactor"] = ""
        if hasattr(self, "enabled_factors"):
            result["enabledFactors"] = [str(i0) for i0 in self.enabled_factors]
        elif include_empty:
            result["enabledFactors"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        enabled: bool,
        default_factor: Optional[str] = None,
        enabled_factors: Optional[List[str]] = None,
        **kwargs,
    ) -> ModelUserMFAStatusResponseV4:
        instance = cls()
        instance.enabled = enabled
        if default_factor is not None:
            instance.default_factor = default_factor
        if enabled_factors is not None:
            instance.enabled_factors = enabled_factors
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelUserMFAStatusResponseV4:
        instance = cls()
        if not dict_:
            return instance
        if "enabled" in dict_ and dict_["enabled"] is not None:
            instance.enabled = bool(dict_["enabled"])
        elif include_empty:
            instance.enabled = False
        if "defaultFactor" in dict_ and dict_["defaultFactor"] is not None:
            instance.default_factor = str(dict_["defaultFactor"])
        elif include_empty:
            instance.default_factor = ""
        if "enabledFactors" in dict_ and dict_["enabledFactors"] is not None:
            instance.enabled_factors = [str(i0) for i0 in dict_["enabledFactors"]]
        elif include_empty:
            instance.enabled_factors = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelUserMFAStatusResponseV4]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelUserMFAStatusResponseV4]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelUserMFAStatusResponseV4,
        List[ModelUserMFAStatusResponseV4],
        Dict[Any, ModelUserMFAStatusResponseV4],
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
            "enabled": "enabled",
            "defaultFactor": "default_factor",
            "enabledFactors": "enabled_factors",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "enabled": True,
            "defaultFactor": False,
            "enabledFactors": False,
        }

    # endregion static methods
