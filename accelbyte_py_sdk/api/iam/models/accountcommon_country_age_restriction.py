# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-iam-service (5.4.0)

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
import re
from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import Model


class AccountcommonCountryAgeRestriction(Model):
    """Accountcommon country age restriction (accountcommon.CountryAgeRestriction)

    Properties:
        age_restriction: (AgeRestriction) REQUIRED int

        country_code: (CountryCode) REQUIRED str

        country_name: (CountryName) REQUIRED str

        enable: (Enable) REQUIRED bool
    """

    # region fields

    age_restriction: int                                                                           # REQUIRED
    country_code: str                                                                              # REQUIRED
    country_name: str                                                                              # REQUIRED
    enable: bool                                                                                   # REQUIRED

    # endregion fields

    # region with_x methods

    def with_age_restriction(self, value: int) -> AccountcommonCountryAgeRestriction:
        self.age_restriction = value
        return self

    def with_country_code(self, value: str) -> AccountcommonCountryAgeRestriction:
        self.country_code = value
        return self

    def with_country_name(self, value: str) -> AccountcommonCountryAgeRestriction:
        self.country_name = value
        return self

    def with_enable(self, value: bool) -> AccountcommonCountryAgeRestriction:
        self.enable = value
        return self

    # endregion with_x methods

    # region is/has methods

    # noinspection PyMethodMayBeStatic
    def is_valid(self) -> bool:
        # pylint: no-self-use
        # required checks
        if not hasattr(self, "age_restriction") or self.age_restriction is None:
            return False
        if not hasattr(self, "country_code") or self.country_code is None:
            return False
        if not hasattr(self, "country_name") or self.country_name is None:
            return False
        if not hasattr(self, "enable") or self.enable is None:
            return False
        # pattern checks
        return True

    # endregion is/has methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "age_restriction"):
            result["AgeRestriction"] = int(self.age_restriction)
        elif include_empty:
            result["AgeRestriction"] = int()
        if hasattr(self, "country_code"):
            result["CountryCode"] = str(self.country_code)
        elif include_empty:
            result["CountryCode"] = str()
        if hasattr(self, "country_name"):
            result["CountryName"] = str(self.country_name)
        elif include_empty:
            result["CountryName"] = str()
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
        country_code: str,
        country_name: str,
        enable: bool,
    ) -> AccountcommonCountryAgeRestriction:
        instance = cls()
        instance.age_restriction = age_restriction
        instance.country_code = country_code
        instance.country_name = country_name
        instance.enable = enable
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> AccountcommonCountryAgeRestriction:
        instance = cls()
        if not dict_:
            return instance
        if "AgeRestriction" in dict_ and dict_["AgeRestriction"] is not None:
            instance.age_restriction = int(dict_["AgeRestriction"])
        elif include_empty:
            instance.age_restriction = int()
        if "CountryCode" in dict_ and dict_["CountryCode"] is not None:
            instance.country_code = str(dict_["CountryCode"])
        elif include_empty:
            instance.country_code = str()
        if "CountryName" in dict_ and dict_["CountryName"] is not None:
            instance.country_name = str(dict_["CountryName"])
        elif include_empty:
            instance.country_name = str()
        if "Enable" in dict_ and dict_["Enable"] is not None:
            instance.enable = bool(dict_["Enable"])
        elif include_empty:
            instance.enable = bool()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, AccountcommonCountryAgeRestriction]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[AccountcommonCountryAgeRestriction]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[AccountcommonCountryAgeRestriction, List[AccountcommonCountryAgeRestriction]]:
        if many:
            if isinstance(any_, dict):
                cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                cls.create_many_from_list(any_, include_empty=include_empty)
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "AgeRestriction": "age_restriction",
            "CountryCode": "country_code",
            "CountryName": "country_name",
            "Enable": "enable",
        }

    # endregion static methods
