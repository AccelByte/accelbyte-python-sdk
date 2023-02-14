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


class ModelAgeRestrictionRequestV3(Model):
    """Model age restriction request V3 (model.AgeRestrictionRequestV3)

    Properties:
        age_restriction: (ageRestriction) REQUIRED int

        enable: (enable) REQUIRED bool
    """

    # region fields

    age_restriction: int  # REQUIRED
    enable: bool  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_age_restriction(self, value: int) -> ModelAgeRestrictionRequestV3:
        self.age_restriction = value
        return self

    def with_enable(self, value: bool) -> ModelAgeRestrictionRequestV3:
        self.enable = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "age_restriction"):
            result["ageRestriction"] = int(self.age_restriction)
        elif include_empty:
            result["ageRestriction"] = 0
        if hasattr(self, "enable"):
            result["enable"] = bool(self.enable)
        elif include_empty:
            result["enable"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        age_restriction: int,
        enable: bool,
    ) -> ModelAgeRestrictionRequestV3:
        instance = cls()
        instance.age_restriction = age_restriction
        instance.enable = enable
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelAgeRestrictionRequestV3:
        instance = cls()
        if not dict_:
            return instance
        if "ageRestriction" in dict_ and dict_["ageRestriction"] is not None:
            instance.age_restriction = int(dict_["ageRestriction"])
        elif include_empty:
            instance.age_restriction = 0
        if "enable" in dict_ and dict_["enable"] is not None:
            instance.enable = bool(dict_["enable"])
        elif include_empty:
            instance.enable = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelAgeRestrictionRequestV3]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelAgeRestrictionRequestV3]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelAgeRestrictionRequestV3,
        List[ModelAgeRestrictionRequestV3],
        Dict[Any, ModelAgeRestrictionRequestV3],
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
            "enable": "enable",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "ageRestriction": True,
            "enable": True,
        }

    # endregion static methods
