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


class ModelResetPasswordRequest(Model):
    """Model reset password request (model.ResetPasswordRequest)

    Properties:
        code: (Code) REQUIRED str

        login_id: (LoginID) REQUIRED str

        new_password: (NewPassword) REQUIRED str
    """

    # region fields

    code: str                                                                                      # REQUIRED
    login_id: str                                                                                  # REQUIRED
    new_password: str                                                                              # REQUIRED

    # endregion fields

    # region with_x methods

    def with_code(self, value: str) -> ModelResetPasswordRequest:
        self.code = value
        return self

    def with_login_id(self, value: str) -> ModelResetPasswordRequest:
        self.login_id = value
        return self

    def with_new_password(self, value: str) -> ModelResetPasswordRequest:
        self.new_password = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "code"):
            result["Code"] = str(self.code)
        elif include_empty:
            result["Code"] = str()
        if hasattr(self, "login_id"):
            result["LoginID"] = str(self.login_id)
        elif include_empty:
            result["LoginID"] = str()
        if hasattr(self, "new_password"):
            result["NewPassword"] = str(self.new_password)
        elif include_empty:
            result["NewPassword"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        code: str,
        login_id: str,
        new_password: str,
    ) -> ModelResetPasswordRequest:
        instance = cls()
        instance.code = code
        instance.login_id = login_id
        instance.new_password = new_password
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelResetPasswordRequest:
        instance = cls()
        if not dict_:
            return instance
        if "Code" in dict_ and dict_["Code"] is not None:
            instance.code = str(dict_["Code"])
        elif include_empty:
            instance.code = str()
        if "LoginID" in dict_ and dict_["LoginID"] is not None:
            instance.login_id = str(dict_["LoginID"])
        elif include_empty:
            instance.login_id = str()
        if "NewPassword" in dict_ and dict_["NewPassword"] is not None:
            instance.new_password = str(dict_["NewPassword"])
        elif include_empty:
            instance.new_password = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "Code": "code",
            "LoginID": "login_id",
            "NewPassword": "new_password",
        }

    # endregion static methods
