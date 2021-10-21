# Auto-generated at 2021-10-21T08:52:26.087865+08:00
# from: Justice iam Service (4.4.1)

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


class ModelResetPasswordRequestV3(Model):
    """Model reset password request V3 (model.ResetPasswordRequestV3)

    Properties:
        code: (code) REQUIRED str

        email_address: (emailAddress) REQUIRED str

        new_password: (newPassword) REQUIRED str
    """

    # region fields

    code: str                                                                                      # REQUIRED
    email_address: str                                                                             # REQUIRED
    new_password: str                                                                              # REQUIRED

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

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "code") and self.code:
            result["code"] = str(self.code)
        elif include_empty:
            result["code"] = str()
        if hasattr(self, "email_address") and self.email_address:
            result["emailAddress"] = str(self.email_address)
        elif include_empty:
            result["emailAddress"] = str()
        if hasattr(self, "new_password") and self.new_password:
            result["newPassword"] = str(self.new_password)
        elif include_empty:
            result["newPassword"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        code: str,
        email_address: str,
        new_password: str,
    ) -> ModelResetPasswordRequestV3:
        instance = cls()
        instance.code = code
        instance.email_address = email_address
        instance.new_password = new_password
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelResetPasswordRequestV3:
        instance = cls()
        if not dict_:
            return instance
        if "code" in dict_ and dict_["code"] is not None:
            instance.code = str(dict_["code"])
        elif include_empty:
            instance.code = str()
        if "emailAddress" in dict_ and dict_["emailAddress"] is not None:
            instance.email_address = str(dict_["emailAddress"])
        elif include_empty:
            instance.email_address = str()
        if "newPassword" in dict_ and dict_["newPassword"] is not None:
            instance.new_password = str(dict_["newPassword"])
        elif include_empty:
            instance.new_password = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "code": "code",
            "emailAddress": "email_address",
            "newPassword": "new_password",
        }

    # endregion static methods
