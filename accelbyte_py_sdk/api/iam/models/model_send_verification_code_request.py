# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.20.0)

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


class ModelSendVerificationCodeRequest(Model):
    """Model send verification code request (model.SendVerificationCodeRequest)

    Properties:
        language_tag: (LanguageTag) REQUIRED str

        login_id: (LoginID) REQUIRED str

        context: (Context) OPTIONAL str
    """

    # region fields

    language_tag: str  # REQUIRED
    login_id: str  # REQUIRED
    context: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_language_tag(self, value: str) -> ModelSendVerificationCodeRequest:
        self.language_tag = value
        return self

    def with_login_id(self, value: str) -> ModelSendVerificationCodeRequest:
        self.login_id = value
        return self

    def with_context(self, value: str) -> ModelSendVerificationCodeRequest:
        self.context = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "language_tag"):
            result["LanguageTag"] = str(self.language_tag)
        elif include_empty:
            result["LanguageTag"] = ""
        if hasattr(self, "login_id"):
            result["LoginID"] = str(self.login_id)
        elif include_empty:
            result["LoginID"] = ""
        if hasattr(self, "context"):
            result["Context"] = str(self.context)
        elif include_empty:
            result["Context"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        language_tag: str,
        login_id: str,
        context: Optional[str] = None,
    ) -> ModelSendVerificationCodeRequest:
        instance = cls()
        instance.language_tag = language_tag
        instance.login_id = login_id
        if context is not None:
            instance.context = context
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelSendVerificationCodeRequest:
        instance = cls()
        if not dict_:
            return instance
        if "LanguageTag" in dict_ and dict_["LanguageTag"] is not None:
            instance.language_tag = str(dict_["LanguageTag"])
        elif include_empty:
            instance.language_tag = ""
        if "LoginID" in dict_ and dict_["LoginID"] is not None:
            instance.login_id = str(dict_["LoginID"])
        elif include_empty:
            instance.login_id = ""
        if "Context" in dict_ and dict_["Context"] is not None:
            instance.context = str(dict_["Context"])
        elif include_empty:
            instance.context = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelSendVerificationCodeRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelSendVerificationCodeRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelSendVerificationCodeRequest,
        List[ModelSendVerificationCodeRequest],
        Dict[Any, ModelSendVerificationCodeRequest],
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
            "LanguageTag": "language_tag",
            "LoginID": "login_id",
            "Context": "context",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "LanguageTag": True,
            "LoginID": True,
            "Context": False,
        }

    # endregion static methods
