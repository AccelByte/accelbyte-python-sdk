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


class OauthmodelCountryLocationResponse(Model):
    """Oauthmodel country location response (oauthmodel.CountryLocationResponse)

    Properties:
        city: (city) REQUIRED str

        country_code: (countryCode) REQUIRED str

        country_name: (countryName) REQUIRED str

        state: (state) REQUIRED str
    """

    # region fields

    city: str  # REQUIRED
    country_code: str  # REQUIRED
    country_name: str  # REQUIRED
    state: str  # REQUIRED

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
        result: dict = {}
        if hasattr(self, "city"):
            result["city"] = str(self.city)
        elif include_empty:
            result["city"] = ""
        if hasattr(self, "country_code"):
            result["countryCode"] = str(self.country_code)
        elif include_empty:
            result["countryCode"] = ""
        if hasattr(self, "country_name"):
            result["countryName"] = str(self.country_name)
        elif include_empty:
            result["countryName"] = ""
        if hasattr(self, "state"):
            result["state"] = str(self.state)
        elif include_empty:
            result["state"] = ""
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
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> OauthmodelCountryLocationResponse:
        instance = cls()
        if not dict_:
            return instance
        if "city" in dict_ and dict_["city"] is not None:
            instance.city = str(dict_["city"])
        elif include_empty:
            instance.city = ""
        if "countryCode" in dict_ and dict_["countryCode"] is not None:
            instance.country_code = str(dict_["countryCode"])
        elif include_empty:
            instance.country_code = ""
        if "countryName" in dict_ and dict_["countryName"] is not None:
            instance.country_name = str(dict_["countryName"])
        elif include_empty:
            instance.country_name = ""
        if "state" in dict_ and dict_["state"] is not None:
            instance.state = str(dict_["state"])
        elif include_empty:
            instance.state = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, OauthmodelCountryLocationResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[OauthmodelCountryLocationResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        OauthmodelCountryLocationResponse,
        List[OauthmodelCountryLocationResponse],
        Dict[Any, OauthmodelCountryLocationResponse],
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
            "city": "city",
            "countryCode": "country_code",
            "countryName": "country_name",
            "state": "state",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "city": True,
            "countryCode": True,
            "countryName": True,
            "state": True,
        }

    # endregion static methods
