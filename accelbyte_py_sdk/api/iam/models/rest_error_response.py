# justice-iam-service (5.0.0)

# template file: justice_py_sdk_codegen/__main__.py

# Copyright (c) 2018 - 2022 AccelByte Inc. All Rights Reserved.
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

from ..models.accountcommon_conflicted_user_platform_accounts import AccountcommonConflictedUserPlatformAccounts


class RestErrorResponse(Model):
    """Rest error response (rest.ErrorResponse)

    Properties:
        error_code: (errorCode) REQUIRED int

        error_message: (errorMessage) REQUIRED str

        message_variables: (messageVariables) OPTIONAL AccountcommonConflictedUserPlatformAccounts
    """

    # region fields

    error_code: int                                                                                # REQUIRED
    error_message: str                                                                             # REQUIRED
    message_variables: AccountcommonConflictedUserPlatformAccounts                                 # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_error_code(self, value: int) -> RestErrorResponse:
        self.error_code = value
        return self

    def with_error_message(self, value: str) -> RestErrorResponse:
        self.error_message = value
        return self

    def with_message_variables(self, value: AccountcommonConflictedUserPlatformAccounts) -> RestErrorResponse:
        self.message_variables = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "error_code"):
            result["errorCode"] = int(self.error_code)
        elif include_empty:
            result["errorCode"] = int()
        if hasattr(self, "error_message"):
            result["errorMessage"] = str(self.error_message)
        elif include_empty:
            result["errorMessage"] = str()
        if hasattr(self, "message_variables"):
            result["messageVariables"] = self.message_variables.to_dict(include_empty=include_empty)
        elif include_empty:
            result["messageVariables"] = AccountcommonConflictedUserPlatformAccounts()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        error_code: int,
        error_message: str,
        message_variables: Optional[AccountcommonConflictedUserPlatformAccounts] = None,
    ) -> RestErrorResponse:
        instance = cls()
        instance.error_code = error_code
        instance.error_message = error_message
        if message_variables is not None:
            instance.message_variables = message_variables
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> RestErrorResponse:
        instance = cls()
        if not dict_:
            return instance
        if "errorCode" in dict_ and dict_["errorCode"] is not None:
            instance.error_code = int(dict_["errorCode"])
        elif include_empty:
            instance.error_code = int()
        if "errorMessage" in dict_ and dict_["errorMessage"] is not None:
            instance.error_message = str(dict_["errorMessage"])
        elif include_empty:
            instance.error_message = str()
        if "messageVariables" in dict_ and dict_["messageVariables"] is not None:
            instance.message_variables = AccountcommonConflictedUserPlatformAccounts.create_from_dict(dict_["messageVariables"], include_empty=include_empty)
        elif include_empty:
            instance.message_variables = AccountcommonConflictedUserPlatformAccounts()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "errorCode": "error_code",
            "errorMessage": "error_message",
            "messageVariables": "message_variables",
        }

    # endregion static methods
