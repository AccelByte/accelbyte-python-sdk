# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-basic-service (1.35.0)

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

from ..models.country_object import CountryObject


class CountryGroupObject(Model):
    """Country group object (CountryGroupObject)

    Properties:
        countries: (countries) OPTIONAL List[CountryObject]

        country_group_code: (countryGroupCode) OPTIONAL str

        country_group_name: (countryGroupName) OPTIONAL str
    """

    # region fields

    countries: List[CountryObject]                                                                 # OPTIONAL
    country_group_code: str                                                                        # OPTIONAL
    country_group_name: str                                                                        # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_countries(self, value: List[CountryObject]) -> CountryGroupObject:
        self.countries = value
        return self

    def with_country_group_code(self, value: str) -> CountryGroupObject:
        self.country_group_code = value
        return self

    def with_country_group_name(self, value: str) -> CountryGroupObject:
        self.country_group_name = value
        return self

    # endregion with_x methods

    # region is/has methods

    # noinspection PyMethodMayBeStatic
    def is_valid(self) -> bool:
        # pylint: disable=no-self-use
        # required checks
        # enum checks
        # pattern checks
        return True

    # endregion is/has methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "countries"):
            result["countries"] = [i0.to_dict(include_empty=include_empty) for i0 in self.countries]
        elif include_empty:
            result["countries"] = []
        if hasattr(self, "country_group_code"):
            result["countryGroupCode"] = str(self.country_group_code)
        elif include_empty:
            result["countryGroupCode"] = str()
        if hasattr(self, "country_group_name"):
            result["countryGroupName"] = str(self.country_group_name)
        elif include_empty:
            result["countryGroupName"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        countries: Optional[List[CountryObject]] = None,
        country_group_code: Optional[str] = None,
        country_group_name: Optional[str] = None,
    ) -> CountryGroupObject:
        instance = cls()
        if countries is not None:
            instance.countries = countries
        if country_group_code is not None:
            instance.country_group_code = country_group_code
        if country_group_name is not None:
            instance.country_group_name = country_group_name
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> CountryGroupObject:
        instance = cls()
        if not dict_:
            return instance
        if "countries" in dict_ and dict_["countries"] is not None:
            instance.countries = [CountryObject.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["countries"]]
        elif include_empty:
            instance.countries = []
        if "countryGroupCode" in dict_ and dict_["countryGroupCode"] is not None:
            instance.country_group_code = str(dict_["countryGroupCode"])
        elif include_empty:
            instance.country_group_code = str()
        if "countryGroupName" in dict_ and dict_["countryGroupName"] is not None:
            instance.country_group_name = str(dict_["countryGroupName"])
        elif include_empty:
            instance.country_group_name = str()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, CountryGroupObject]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[CountryGroupObject]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[CountryGroupObject, List[CountryGroupObject]]:
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
            "countries": "countries",
            "countryGroupCode": "country_group_code",
            "countryGroupName": "country_group_name",
        }

    # endregion static methods
