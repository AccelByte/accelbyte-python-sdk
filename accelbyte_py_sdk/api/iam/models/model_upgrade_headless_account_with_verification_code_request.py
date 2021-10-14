# Auto-generated at 2021-10-14T22:17:10.946375+08:00
# from: Justice Iam Service (4.1.0)

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


class ModelUpgradeHeadlessAccountWithVerificationCodeRequest(Model):
    """Model upgrade headless account with verification code request (model.UpgradeHeadlessAccountWithVerificationCodeRequest)

    Properties:
        code: (Code) REQUIRED str

        password: (Password) REQUIRED str

        login_id: (loginId) REQUIRED str
    """

    # region fields

    code: str                                                                                      # REQUIRED
    password: str                                                                                  # REQUIRED
    login_id: str                                                                                  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_code(self, value: str) -> ModelUpgradeHeadlessAccountWithVerificationCodeRequest:
        self.code = value
        return self

    def with_password(self, value: str) -> ModelUpgradeHeadlessAccountWithVerificationCodeRequest:
        self.password = value
        return self

    def with_login_id(self, value: str) -> ModelUpgradeHeadlessAccountWithVerificationCodeRequest:
        self.login_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "code") and self.code:
            result["Code"] = str(self.code)
        elif include_empty:
            result["Code"] = str()
        if hasattr(self, "password") and self.password:
            result["Password"] = str(self.password)
        elif include_empty:
            result["Password"] = str()
        if hasattr(self, "login_id") and self.login_id:
            result["loginId"] = str(self.login_id)
        elif include_empty:
            result["loginId"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        code: str,
        password: str,
        login_id: str,
    ) -> ModelUpgradeHeadlessAccountWithVerificationCodeRequest:
        instance = cls()
        instance.code = code
        instance.password = password
        instance.login_id = login_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelUpgradeHeadlessAccountWithVerificationCodeRequest:
        instance = cls()
        if not dict_:
            return instance
        if "Code" in dict_ and dict_["Code"] is not None:
            instance.code = str(dict_["Code"])
        elif include_empty:
            instance.code = str()
        if "Password" in dict_ and dict_["Password"] is not None:
            instance.password = str(dict_["Password"])
        elif include_empty:
            instance.password = str()
        if "loginId" in dict_ and dict_["loginId"] is not None:
            instance.login_id = str(dict_["loginId"])
        elif include_empty:
            instance.login_id = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "Code": "code",
            "Password": "password",
            "loginId": "login_id",
        }

    # endregion static methods
