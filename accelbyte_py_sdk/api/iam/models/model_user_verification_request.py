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


class ModelUserVerificationRequest(Model):
    """Model user verification request (model.UserVerificationRequest)

    Properties:
        code: (Code) REQUIRED str

        contact_type: (ContactType) REQUIRED str

        language_tag: (LanguageTag) REQUIRED str
    """

    # region fields

    code: str                                                                                      # REQUIRED
    contact_type: str                                                                              # REQUIRED
    language_tag: str                                                                              # REQUIRED

    # endregion fields

    # region with_x methods

    def with_code(self, value: str) -> ModelUserVerificationRequest:
        self.code = value
        return self

    def with_contact_type(self, value: str) -> ModelUserVerificationRequest:
        self.contact_type = value
        return self

    def with_language_tag(self, value: str) -> ModelUserVerificationRequest:
        self.language_tag = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "code"):
            result["Code"] = str(self.code)
        elif include_empty:
            result["Code"] = str()
        if hasattr(self, "contact_type"):
            result["ContactType"] = str(self.contact_type)
        elif include_empty:
            result["ContactType"] = str()
        if hasattr(self, "language_tag"):
            result["LanguageTag"] = str(self.language_tag)
        elif include_empty:
            result["LanguageTag"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        code: str,
        contact_type: str,
        language_tag: str,
    ) -> ModelUserVerificationRequest:
        instance = cls()
        instance.code = code
        instance.contact_type = contact_type
        instance.language_tag = language_tag
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelUserVerificationRequest:
        instance = cls()
        if not dict_:
            return instance
        if "Code" in dict_ and dict_["Code"] is not None:
            instance.code = str(dict_["Code"])
        elif include_empty:
            instance.code = str()
        if "ContactType" in dict_ and dict_["ContactType"] is not None:
            instance.contact_type = str(dict_["ContactType"])
        elif include_empty:
            instance.contact_type = str()
        if "LanguageTag" in dict_ and dict_["LanguageTag"] is not None:
            instance.language_tag = str(dict_["LanguageTag"])
        elif include_empty:
            instance.language_tag = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "Code": "code",
            "ContactType": "contact_type",
            "LanguageTag": "language_tag",
        }

    # endregion static methods
