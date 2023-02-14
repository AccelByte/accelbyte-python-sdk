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


class ModelSendVerificationCodeRequestV3(Model):
    """Model send verification code request V3 (model.SendVerificationCodeRequestV3)

    Properties:
        email_address: (emailAddress) REQUIRED str

        context: (context) OPTIONAL str

        language_tag: (languageTag) OPTIONAL str
    """

    # region fields

    email_address: str  # REQUIRED
    context: str  # OPTIONAL
    language_tag: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_email_address(self, value: str) -> ModelSendVerificationCodeRequestV3:
        self.email_address = value
        return self

    def with_context(self, value: str) -> ModelSendVerificationCodeRequestV3:
        self.context = value
        return self

    def with_language_tag(self, value: str) -> ModelSendVerificationCodeRequestV3:
        self.language_tag = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "email_address"):
            result["emailAddress"] = str(self.email_address)
        elif include_empty:
            result["emailAddress"] = ""
        if hasattr(self, "context"):
            result["context"] = str(self.context)
        elif include_empty:
            result["context"] = ""
        if hasattr(self, "language_tag"):
            result["languageTag"] = str(self.language_tag)
        elif include_empty:
            result["languageTag"] = ""
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
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelSendVerificationCodeRequestV3:
        instance = cls()
        if not dict_:
            return instance
        if "emailAddress" in dict_ and dict_["emailAddress"] is not None:
            instance.email_address = str(dict_["emailAddress"])
        elif include_empty:
            instance.email_address = ""
        if "context" in dict_ and dict_["context"] is not None:
            instance.context = str(dict_["context"])
        elif include_empty:
            instance.context = ""
        if "languageTag" in dict_ and dict_["languageTag"] is not None:
            instance.language_tag = str(dict_["languageTag"])
        elif include_empty:
            instance.language_tag = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelSendVerificationCodeRequestV3]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelSendVerificationCodeRequestV3]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelSendVerificationCodeRequestV3,
        List[ModelSendVerificationCodeRequestV3],
        Dict[Any, ModelSendVerificationCodeRequestV3],
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
            "emailAddress": "email_address",
            "context": "context",
            "languageTag": "language_tag",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "emailAddress": True,
            "context": False,
            "languageTag": False,
        }

    # endregion static methods
