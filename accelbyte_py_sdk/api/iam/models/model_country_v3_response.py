# Auto-generated at 2021-10-21T08:52:26.056635+08:00
# from: Justice iam Service (4.4.1)

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


class ModelCountryV3Response(Model):
    """Model country V3 response (model.CountryV3Response)

    Properties:
        age_restriction: (ageRestriction) REQUIRED int

        country_code: (countryCode) REQUIRED str

        country_name: (countryName) REQUIRED str

        enable: (enable) REQUIRED bool
    """

    # region fields

    age_restriction: int                                                                           # REQUIRED
    country_code: str                                                                              # REQUIRED
    country_name: str                                                                              # REQUIRED
    enable: bool                                                                                   # REQUIRED

    # endregion fields

    # region with_x methods

    def with_age_restriction(self, value: int) -> ModelCountryV3Response:
        self.age_restriction = value
        return self

    def with_country_code(self, value: str) -> ModelCountryV3Response:
        self.country_code = value
        return self

    def with_country_name(self, value: str) -> ModelCountryV3Response:
        self.country_name = value
        return self

    def with_enable(self, value: bool) -> ModelCountryV3Response:
        self.enable = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "age_restriction") and self.age_restriction:
            result["ageRestriction"] = int(self.age_restriction)
        elif include_empty:
            result["ageRestriction"] = int()
        if hasattr(self, "country_code") and self.country_code:
            result["countryCode"] = str(self.country_code)
        elif include_empty:
            result["countryCode"] = str()
        if hasattr(self, "country_name") and self.country_name:
            result["countryName"] = str(self.country_name)
        elif include_empty:
            result["countryName"] = str()
        if hasattr(self, "enable") and self.enable:
            result["enable"] = bool(self.enable)
        elif include_empty:
            result["enable"] = bool()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        age_restriction: int,
        country_code: str,
        country_name: str,
        enable: bool,
    ) -> ModelCountryV3Response:
        instance = cls()
        instance.age_restriction = age_restriction
        instance.country_code = country_code
        instance.country_name = country_name
        instance.enable = enable
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelCountryV3Response:
        instance = cls()
        if not dict_:
            return instance
        if "ageRestriction" in dict_ and dict_["ageRestriction"] is not None:
            instance.age_restriction = int(dict_["ageRestriction"])
        elif include_empty:
            instance.age_restriction = int()
        if "countryCode" in dict_ and dict_["countryCode"] is not None:
            instance.country_code = str(dict_["countryCode"])
        elif include_empty:
            instance.country_code = str()
        if "countryName" in dict_ and dict_["countryName"] is not None:
            instance.country_name = str(dict_["countryName"])
        elif include_empty:
            instance.country_name = str()
        if "enable" in dict_ and dict_["enable"] is not None:
            instance.enable = bool(dict_["enable"])
        elif include_empty:
            instance.enable = bool()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "ageRestriction": "age_restriction",
            "countryCode": "country_code",
            "countryName": "country_name",
            "enable": "enable",
        }

    # endregion static methods
