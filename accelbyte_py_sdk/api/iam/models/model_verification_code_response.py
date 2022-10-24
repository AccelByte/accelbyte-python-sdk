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


class ModelVerificationCodeResponse(Model):
    """Model verification code response (model.VerificationCodeResponse)

    Properties:
        account_registration: (accountRegistration) REQUIRED str

        account_upgrade: (accountUpgrade) REQUIRED str

        password_reset: (passwordReset) REQUIRED str

        update_email: (updateEmail) REQUIRED str
    """

    # region fields

    account_registration: str  # REQUIRED
    account_upgrade: str  # REQUIRED
    password_reset: str  # REQUIRED
    update_email: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_account_registration(self, value: str) -> ModelVerificationCodeResponse:
        self.account_registration = value
        return self

    def with_account_upgrade(self, value: str) -> ModelVerificationCodeResponse:
        self.account_upgrade = value
        return self

    def with_password_reset(self, value: str) -> ModelVerificationCodeResponse:
        self.password_reset = value
        return self

    def with_update_email(self, value: str) -> ModelVerificationCodeResponse:
        self.update_email = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "account_registration"):
            result["accountRegistration"] = str(self.account_registration)
        elif include_empty:
            result["accountRegistration"] = ""
        if hasattr(self, "account_upgrade"):
            result["accountUpgrade"] = str(self.account_upgrade)
        elif include_empty:
            result["accountUpgrade"] = ""
        if hasattr(self, "password_reset"):
            result["passwordReset"] = str(self.password_reset)
        elif include_empty:
            result["passwordReset"] = ""
        if hasattr(self, "update_email"):
            result["updateEmail"] = str(self.update_email)
        elif include_empty:
            result["updateEmail"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        account_registration: str,
        account_upgrade: str,
        password_reset: str,
        update_email: str,
    ) -> ModelVerificationCodeResponse:
        instance = cls()
        instance.account_registration = account_registration
        instance.account_upgrade = account_upgrade
        instance.password_reset = password_reset
        instance.update_email = update_email
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelVerificationCodeResponse:
        instance = cls()
        if not dict_:
            return instance
        if "accountRegistration" in dict_ and dict_["accountRegistration"] is not None:
            instance.account_registration = str(dict_["accountRegistration"])
        elif include_empty:
            instance.account_registration = ""
        if "accountUpgrade" in dict_ and dict_["accountUpgrade"] is not None:
            instance.account_upgrade = str(dict_["accountUpgrade"])
        elif include_empty:
            instance.account_upgrade = ""
        if "passwordReset" in dict_ and dict_["passwordReset"] is not None:
            instance.password_reset = str(dict_["passwordReset"])
        elif include_empty:
            instance.password_reset = ""
        if "updateEmail" in dict_ and dict_["updateEmail"] is not None:
            instance.update_email = str(dict_["updateEmail"])
        elif include_empty:
            instance.update_email = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelVerificationCodeResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelVerificationCodeResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelVerificationCodeResponse,
        List[ModelVerificationCodeResponse],
        Dict[Any, ModelVerificationCodeResponse],
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
            "accountRegistration": "account_registration",
            "accountUpgrade": "account_upgrade",
            "passwordReset": "password_reset",
            "updateEmail": "update_email",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "accountRegistration": True,
            "accountUpgrade": True,
            "passwordReset": True,
            "updateEmail": True,
        }

    # endregion static methods
