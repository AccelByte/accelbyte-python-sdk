# justice-iam-service (5.0.0)

# template file: justice_py_sdk_codegen/__main__.py

# Copyright (c) 2018 - 2022 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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


class ModelAgeRestrictionResponse(Model):
    """Model age restriction response (model.AgeRestrictionResponse)

    Properties:
        age_restriction: (AgeRestriction) REQUIRED int

        enable: (Enable) REQUIRED bool
    """

    # region fields

    age_restriction: int                                                                           # REQUIRED
    enable: bool                                                                                   # REQUIRED

    # endregion fields

    # region with_x methods

    def with_age_restriction(self, value: int) -> ModelAgeRestrictionResponse:
        self.age_restriction = value
        return self

    def with_enable(self, value: bool) -> ModelAgeRestrictionResponse:
        self.enable = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "age_restriction"):
            result["AgeRestriction"] = int(self.age_restriction)
        elif include_empty:
            result["AgeRestriction"] = int()
        if hasattr(self, "enable"):
            result["Enable"] = bool(self.enable)
        elif include_empty:
            result["Enable"] = bool()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        age_restriction: int,
        enable: bool,
    ) -> ModelAgeRestrictionResponse:
        instance = cls()
        instance.age_restriction = age_restriction
        instance.enable = enable
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelAgeRestrictionResponse:
        instance = cls()
        if not dict_:
            return instance
        if "AgeRestriction" in dict_ and dict_["AgeRestriction"] is not None:
            instance.age_restriction = int(dict_["AgeRestriction"])
        elif include_empty:
            instance.age_restriction = int()
        if "Enable" in dict_ and dict_["Enable"] is not None:
            instance.enable = bool(dict_["Enable"])
        elif include_empty:
            instance.enable = bool()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "AgeRestriction": "age_restriction",
            "Enable": "enable",
        }

    # endregion static methods
