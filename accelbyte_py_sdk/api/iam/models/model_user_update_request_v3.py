# justice-iam-service (4.4.1)

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


class ModelUserUpdateRequestV3(Model):
    """Model user update request V3 (model.UserUpdateRequestV3)

    Properties:
        country: (country) OPTIONAL str

        date_of_birth: (dateOfBirth) OPTIONAL str

        display_name: (displayName) OPTIONAL str

        language_tag: (languageTag) OPTIONAL str

        user_name: (userName) OPTIONAL str
    """

    # region fields

    country: str                                                                                   # OPTIONAL
    date_of_birth: str                                                                             # OPTIONAL
    display_name: str                                                                              # OPTIONAL
    language_tag: str                                                                              # OPTIONAL
    user_name: str                                                                                 # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_country(self, value: str) -> ModelUserUpdateRequestV3:
        self.country = value
        return self

    def with_date_of_birth(self, value: str) -> ModelUserUpdateRequestV3:
        self.date_of_birth = value
        return self

    def with_display_name(self, value: str) -> ModelUserUpdateRequestV3:
        self.display_name = value
        return self

    def with_language_tag(self, value: str) -> ModelUserUpdateRequestV3:
        self.language_tag = value
        return self

    def with_user_name(self, value: str) -> ModelUserUpdateRequestV3:
        self.user_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "country") and self.country:
            result["country"] = str(self.country)
        elif include_empty:
            result["country"] = str()
        if hasattr(self, "date_of_birth") and self.date_of_birth:
            result["dateOfBirth"] = str(self.date_of_birth)
        elif include_empty:
            result["dateOfBirth"] = str()
        if hasattr(self, "display_name") and self.display_name:
            result["displayName"] = str(self.display_name)
        elif include_empty:
            result["displayName"] = str()
        if hasattr(self, "language_tag") and self.language_tag:
            result["languageTag"] = str(self.language_tag)
        elif include_empty:
            result["languageTag"] = str()
        if hasattr(self, "user_name") and self.user_name:
            result["userName"] = str(self.user_name)
        elif include_empty:
            result["userName"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        country: Optional[str] = None,
        date_of_birth: Optional[str] = None,
        display_name: Optional[str] = None,
        language_tag: Optional[str] = None,
        user_name: Optional[str] = None,
    ) -> ModelUserUpdateRequestV3:
        instance = cls()
        if country is not None:
            instance.country = country
        if date_of_birth is not None:
            instance.date_of_birth = date_of_birth
        if display_name is not None:
            instance.display_name = display_name
        if language_tag is not None:
            instance.language_tag = language_tag
        if user_name is not None:
            instance.user_name = user_name
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelUserUpdateRequestV3:
        instance = cls()
        if not dict_:
            return instance
        if "country" in dict_ and dict_["country"] is not None:
            instance.country = str(dict_["country"])
        elif include_empty:
            instance.country = str()
        if "dateOfBirth" in dict_ and dict_["dateOfBirth"] is not None:
            instance.date_of_birth = str(dict_["dateOfBirth"])
        elif include_empty:
            instance.date_of_birth = str()
        if "displayName" in dict_ and dict_["displayName"] is not None:
            instance.display_name = str(dict_["displayName"])
        elif include_empty:
            instance.display_name = str()
        if "languageTag" in dict_ and dict_["languageTag"] is not None:
            instance.language_tag = str(dict_["languageTag"])
        elif include_empty:
            instance.language_tag = str()
        if "userName" in dict_ and dict_["userName"] is not None:
            instance.user_name = str(dict_["userName"])
        elif include_empty:
            instance.user_name = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "country": "country",
            "dateOfBirth": "date_of_birth",
            "displayName": "display_name",
            "languageTag": "language_tag",
            "userName": "user_name",
        }

    # endregion static methods
