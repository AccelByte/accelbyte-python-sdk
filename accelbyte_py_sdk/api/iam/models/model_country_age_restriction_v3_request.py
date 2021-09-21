# Auto-generated at 2021-09-21T14:10:34.758530+08:00
# from: Justice Iam Service (4.1.0)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
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


class ModelCountryAgeRestrictionV3Request(Model):
    """Model country age restriction V3 request

    Properties:
        age_restriction: (ageRestriction) REQUIRED int
    """

    # region fields

    age_restriction: int                                                                           # REQUIRED

    # endregion fields

    # region with_x methods

    def with_age_restriction(self, value: int) -> ModelCountryAgeRestrictionV3Request:
        self.age_restriction = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "age_restriction") and self.age_restriction:
            result["ageRestriction"] = int(self.age_restriction)
        elif include_empty:
            result["ageRestriction"] = int()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        age_restriction: int,
    ) -> ModelCountryAgeRestrictionV3Request:
        instance = cls()
        instance.age_restriction = age_restriction
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelCountryAgeRestrictionV3Request:
        instance = cls()
        if "ageRestriction" in dict_ and dict_["ageRestriction"] is not None:
            instance.age_restriction = int(dict_["ageRestriction"])
        elif include_empty:
            instance.age_restriction = int()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "ageRestriction": "age_restriction",
        }

    # endregion static methods
