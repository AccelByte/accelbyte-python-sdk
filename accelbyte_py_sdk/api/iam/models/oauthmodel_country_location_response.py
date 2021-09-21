# Auto-generated at 2021-09-21T14:10:34.858582+08:00
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


class OauthmodelCountryLocationResponse(Model):
    """Oauthmodel country location response

    Properties:
        city: (city) REQUIRED str

        country_code: (countryCode) REQUIRED str

        country_name: (countryName) REQUIRED str

        state: (state) REQUIRED str
    """

    # region fields

    city: str                                                                                      # REQUIRED
    country_code: str                                                                              # REQUIRED
    country_name: str                                                                              # REQUIRED
    state: str                                                                                     # REQUIRED

    # endregion fields

    # region with_x methods

    def with_city(self, value: str) -> OauthmodelCountryLocationResponse:
        self.city = value
        return self

    def with_country_code(self, value: str) -> OauthmodelCountryLocationResponse:
        self.country_code = value
        return self

    def with_country_name(self, value: str) -> OauthmodelCountryLocationResponse:
        self.country_name = value
        return self

    def with_state(self, value: str) -> OauthmodelCountryLocationResponse:
        self.state = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "city") and self.city:
            result["city"] = str(self.city)
        elif include_empty:
            result["city"] = str()
        if hasattr(self, "country_code") and self.country_code:
            result["countryCode"] = str(self.country_code)
        elif include_empty:
            result["countryCode"] = str()
        if hasattr(self, "country_name") and self.country_name:
            result["countryName"] = str(self.country_name)
        elif include_empty:
            result["countryName"] = str()
        if hasattr(self, "state") and self.state:
            result["state"] = str(self.state)
        elif include_empty:
            result["state"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        city: str,
        country_code: str,
        country_name: str,
        state: str,
    ) -> OauthmodelCountryLocationResponse:
        instance = cls()
        instance.city = city
        instance.country_code = country_code
        instance.country_name = country_name
        instance.state = state
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> OauthmodelCountryLocationResponse:
        instance = cls()
        if "city" in dict_ and dict_["city"] is not None:
            instance.city = str(dict_["city"])
        elif include_empty:
            instance.city = str()
        if "countryCode" in dict_ and dict_["countryCode"] is not None:
            instance.country_code = str(dict_["countryCode"])
        elif include_empty:
            instance.country_code = str()
        if "countryName" in dict_ and dict_["countryName"] is not None:
            instance.country_name = str(dict_["countryName"])
        elif include_empty:
            instance.country_name = str()
        if "state" in dict_ and dict_["state"] is not None:
            instance.state = str(dict_["state"])
        elif include_empty:
            instance.state = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "city": "city",
            "countryCode": "country_code",
            "countryName": "country_name",
            "state": "state",
        }

    # endregion static methods
