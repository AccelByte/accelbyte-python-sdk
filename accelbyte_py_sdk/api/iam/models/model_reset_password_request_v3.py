# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Iam Service

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


class ModelResetPasswordRequestV3(Model):
    """Model reset password request V3 (model.ResetPasswordRequestV3)

    Properties:
        code: (code) REQUIRED str

        email_address: (emailAddress) REQUIRED str

        new_password: (newPassword) REQUIRED str

        client_id: (clientId) OPTIONAL str

        language_tag: (languageTag) OPTIONAL str
    """

    # region fields

    code: str  # REQUIRED
    email_address: str  # REQUIRED
    new_password: str  # REQUIRED
    client_id: str  # OPTIONAL
    language_tag: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_code(self, value: str) -> ModelResetPasswordRequestV3:
        self.code = value
        return self

    def with_email_address(self, value: str) -> ModelResetPasswordRequestV3:
        self.email_address = value
        return self

    def with_new_password(self, value: str) -> ModelResetPasswordRequestV3:
        self.new_password = value
        return self

    def with_client_id(self, value: str) -> ModelResetPasswordRequestV3:
        self.client_id = value
        return self

    def with_language_tag(self, value: str) -> ModelResetPasswordRequestV3:
        self.language_tag = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "code"):
            result["code"] = str(self.code)
        elif include_empty:
            result["code"] = ""
        if hasattr(self, "email_address"):
            result["emailAddress"] = str(self.email_address)
        elif include_empty:
            result["emailAddress"] = ""
        if hasattr(self, "new_password"):
            result["newPassword"] = str(self.new_password)
        elif include_empty:
            result["newPassword"] = ""
        if hasattr(self, "client_id"):
            result["clientId"] = str(self.client_id)
        elif include_empty:
            result["clientId"] = ""
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
        code: str,
        email_address: str,
        new_password: str,
        client_id: Optional[str] = None,
        language_tag: Optional[str] = None,
        **kwargs,
    ) -> ModelResetPasswordRequestV3:
        instance = cls()
        instance.code = code
        instance.email_address = email_address
        instance.new_password = new_password
        if client_id is not None:
            instance.client_id = client_id
        if language_tag is not None:
            instance.language_tag = language_tag
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelResetPasswordRequestV3:
        instance = cls()
        if not dict_:
            return instance
        if "code" in dict_ and dict_["code"] is not None:
            instance.code = str(dict_["code"])
        elif include_empty:
            instance.code = ""
        if "emailAddress" in dict_ and dict_["emailAddress"] is not None:
            instance.email_address = str(dict_["emailAddress"])
        elif include_empty:
            instance.email_address = ""
        if "newPassword" in dict_ and dict_["newPassword"] is not None:
            instance.new_password = str(dict_["newPassword"])
        elif include_empty:
            instance.new_password = ""
        if "clientId" in dict_ and dict_["clientId"] is not None:
            instance.client_id = str(dict_["clientId"])
        elif include_empty:
            instance.client_id = ""
        if "languageTag" in dict_ and dict_["languageTag"] is not None:
            instance.language_tag = str(dict_["languageTag"])
        elif include_empty:
            instance.language_tag = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelResetPasswordRequestV3]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelResetPasswordRequestV3]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelResetPasswordRequestV3,
        List[ModelResetPasswordRequestV3],
        Dict[Any, ModelResetPasswordRequestV3],
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
            "code": "code",
            "emailAddress": "email_address",
            "newPassword": "new_password",
            "clientId": "client_id",
            "languageTag": "language_tag",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "code": True,
            "emailAddress": True,
            "newPassword": True,
            "clientId": False,
            "languageTag": False,
        }

    # endregion static methods
