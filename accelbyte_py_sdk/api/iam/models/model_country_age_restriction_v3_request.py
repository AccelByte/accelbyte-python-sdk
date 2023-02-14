# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.27.2)

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
    """Model country age restriction V3 request (model.CountryAgeRestrictionV3Request)

    Properties:
        age_restriction: (ageRestriction) REQUIRED int
    """

    # region fields

    age_restriction: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_age_restriction(self, value: int) -> ModelCountryAgeRestrictionV3Request:
        self.age_restriction = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "age_restriction"):
            result["ageRestriction"] = int(self.age_restriction)
        elif include_empty:
            result["ageRestriction"] = 0
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
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelCountryAgeRestrictionV3Request:
        instance = cls()
        if not dict_:
            return instance
        if "ageRestriction" in dict_ and dict_["ageRestriction"] is not None:
            instance.age_restriction = int(dict_["ageRestriction"])
        elif include_empty:
            instance.age_restriction = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelCountryAgeRestrictionV3Request]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelCountryAgeRestrictionV3Request]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelCountryAgeRestrictionV3Request,
        List[ModelCountryAgeRestrictionV3Request],
        Dict[Any, ModelCountryAgeRestrictionV3Request],
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
            "ageRestriction": "age_restriction",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "ageRestriction": True,
        }

    # endregion static methods
