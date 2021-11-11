# justice-basic-service (1.23.0)

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

from ..models.country_object import CountryObject


class UpdateCountryGroupRequest(Model):
    """Update country group request (UpdateCountryGroupRequest)

    Properties:
        countries: (countries) OPTIONAL List[CountryObject]

        country_group_name: (countryGroupName) OPTIONAL str
    """

    # region fields

    countries: List[CountryObject]                                                                 # OPTIONAL
    country_group_name: str                                                                        # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_countries(self, value: List[CountryObject]) -> UpdateCountryGroupRequest:
        self.countries = value
        return self

    def with_country_group_name(self, value: str) -> UpdateCountryGroupRequest:
        self.country_group_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "countries"):
            result["countries"] = [i0.to_dict(include_empty=include_empty) for i0 in self.countries]
        elif include_empty:
            result["countries"] = []
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
        country_group_name: Optional[str] = None,
        countries: Optional[List[CountryObject]] = None,
    ) -> UpdateCountryGroupRequest:
        instance = cls()
        if country_group_name is not None:
            instance.country_group_name = country_group_name
        if countries is not None:
            instance.countries = countries
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> UpdateCountryGroupRequest:
        instance = cls()
        if not dict_:
            return instance
        if "countries" in dict_ and dict_["countries"] is not None:
            instance.countries = [CountryObject.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["countries"]]
        elif include_empty:
            instance.countries = []
        if "countryGroupName" in dict_ and dict_["countryGroupName"] is not None:
            instance.country_group_name = str(dict_["countryGroupName"])
        elif include_empty:
            instance.country_group_name = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "countries": "countries",
            "countryGroupName": "country_group_name",
        }

    # endregion static methods
