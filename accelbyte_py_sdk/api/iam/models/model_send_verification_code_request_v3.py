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


class ModelSendVerificationCodeRequestV3(Model):
    """Model send verification code request V3 (model.SendVerificationCodeRequestV3)

    Properties:
        context: (context) OPTIONAL str

        email_address: (emailAddress) REQUIRED str

        language_tag: (languageTag) OPTIONAL str
    """

    # region fields

    context: str                                                                                   # OPTIONAL
    email_address: str                                                                             # REQUIRED
    language_tag: str                                                                              # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_context(self, value: str) -> ModelSendVerificationCodeRequestV3:
        self.context = value
        return self

    def with_email_address(self, value: str) -> ModelSendVerificationCodeRequestV3:
        self.email_address = value
        return self

    def with_language_tag(self, value: str) -> ModelSendVerificationCodeRequestV3:
        self.language_tag = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "context"):
            result["context"] = str(self.context)
        elif include_empty:
            result["context"] = str()
        if hasattr(self, "email_address"):
            result["emailAddress"] = str(self.email_address)
        elif include_empty:
            result["emailAddress"] = str()
        if hasattr(self, "language_tag"):
            result["languageTag"] = str(self.language_tag)
        elif include_empty:
            result["languageTag"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        email_address: str,
        context: Optional[str] = None,
        language_tag: Optional[str] = None,
    ) -> ModelSendVerificationCodeRequestV3:
        instance = cls()
        instance.email_address = email_address
        if context is not None:
            instance.context = context
        if language_tag is not None:
            instance.language_tag = language_tag
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelSendVerificationCodeRequestV3:
        instance = cls()
        if not dict_:
            return instance
        if "context" in dict_ and dict_["context"] is not None:
            instance.context = str(dict_["context"])
        elif include_empty:
            instance.context = str()
        if "emailAddress" in dict_ and dict_["emailAddress"] is not None:
            instance.email_address = str(dict_["emailAddress"])
        elif include_empty:
            instance.email_address = str()
        if "languageTag" in dict_ and dict_["languageTag"] is not None:
            instance.language_tag = str(dict_["languageTag"])
        elif include_empty:
            instance.language_tag = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "context": "context",
            "emailAddress": "email_address",
            "languageTag": "language_tag",
        }

    # endregion static methods
