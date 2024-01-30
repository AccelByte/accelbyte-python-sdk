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

from ..models.accountcommon_conflicted_user_platform_accounts import (
    AccountcommonConflictedUserPlatformAccounts,
)
from ..models.accountcommon_platform_linking_history import (
    AccountcommonPlatformLinkingHistory,
)


class RestErrorResponseWithConflictedUserPlatformAccounts(Model):
    """Rest error response with conflicted user platform accounts (rest.ErrorResponseWithConflictedUserPlatformAccounts)

    Properties:
        error_code: (errorCode) REQUIRED int

        error_message: (errorMessage) REQUIRED str

        message_variables: (messageVariables) OPTIONAL AccountcommonConflictedUserPlatformAccounts

        previous_linked_platform_account: (previousLinkedPlatformAccount) OPTIONAL AccountcommonPlatformLinkingHistory
    """

    # region fields

    error_code: int  # REQUIRED
    error_message: str  # REQUIRED
    message_variables: AccountcommonConflictedUserPlatformAccounts  # OPTIONAL
    previous_linked_platform_account: AccountcommonPlatformLinkingHistory  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_error_code(
        self, value: int
    ) -> RestErrorResponseWithConflictedUserPlatformAccounts:
        self.error_code = value
        return self

    def with_error_message(
        self, value: str
    ) -> RestErrorResponseWithConflictedUserPlatformAccounts:
        self.error_message = value
        return self

    def with_message_variables(
        self, value: AccountcommonConflictedUserPlatformAccounts
    ) -> RestErrorResponseWithConflictedUserPlatformAccounts:
        self.message_variables = value
        return self

    def with_previous_linked_platform_account(
        self, value: AccountcommonPlatformLinkingHistory
    ) -> RestErrorResponseWithConflictedUserPlatformAccounts:
        self.previous_linked_platform_account = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "error_code"):
            result["errorCode"] = int(self.error_code)
        elif include_empty:
            result["errorCode"] = 0
        if hasattr(self, "error_message"):
            result["errorMessage"] = str(self.error_message)
        elif include_empty:
            result["errorMessage"] = ""
        if hasattr(self, "message_variables"):
            result["messageVariables"] = self.message_variables.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["messageVariables"] = AccountcommonConflictedUserPlatformAccounts()
        if hasattr(self, "previous_linked_platform_account"):
            result[
                "previousLinkedPlatformAccount"
            ] = self.previous_linked_platform_account.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result[
                "previousLinkedPlatformAccount"
            ] = AccountcommonPlatformLinkingHistory()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        error_code: int,
        error_message: str,
        message_variables: Optional[AccountcommonConflictedUserPlatformAccounts] = None,
        previous_linked_platform_account: Optional[
            AccountcommonPlatformLinkingHistory
        ] = None,
        **kwargs,
    ) -> RestErrorResponseWithConflictedUserPlatformAccounts:
        instance = cls()
        instance.error_code = error_code
        instance.error_message = error_message
        if message_variables is not None:
            instance.message_variables = message_variables
        if previous_linked_platform_account is not None:
            instance.previous_linked_platform_account = previous_linked_platform_account
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RestErrorResponseWithConflictedUserPlatformAccounts:
        instance = cls()
        if not dict_:
            return instance
        if "errorCode" in dict_ and dict_["errorCode"] is not None:
            instance.error_code = int(dict_["errorCode"])
        elif include_empty:
            instance.error_code = 0
        if "errorMessage" in dict_ and dict_["errorMessage"] is not None:
            instance.error_message = str(dict_["errorMessage"])
        elif include_empty:
            instance.error_message = ""
        if "messageVariables" in dict_ and dict_["messageVariables"] is not None:
            instance.message_variables = (
                AccountcommonConflictedUserPlatformAccounts.create_from_dict(
                    dict_["messageVariables"], include_empty=include_empty
                )
            )
        elif include_empty:
            instance.message_variables = AccountcommonConflictedUserPlatformAccounts()
        if (
            "previousLinkedPlatformAccount" in dict_
            and dict_["previousLinkedPlatformAccount"] is not None
        ):
            instance.previous_linked_platform_account = (
                AccountcommonPlatformLinkingHistory.create_from_dict(
                    dict_["previousLinkedPlatformAccount"], include_empty=include_empty
                )
            )
        elif include_empty:
            instance.previous_linked_platform_account = (
                AccountcommonPlatformLinkingHistory()
            )
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RestErrorResponseWithConflictedUserPlatformAccounts]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RestErrorResponseWithConflictedUserPlatformAccounts]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        RestErrorResponseWithConflictedUserPlatformAccounts,
        List[RestErrorResponseWithConflictedUserPlatformAccounts],
        Dict[Any, RestErrorResponseWithConflictedUserPlatformAccounts],
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
            "errorCode": "error_code",
            "errorMessage": "error_message",
            "messageVariables": "message_variables",
            "previousLinkedPlatformAccount": "previous_linked_platform_account",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "errorCode": True,
            "errorMessage": True,
            "messageVariables": False,
            "previousLinkedPlatformAccount": False,
        }

    # endregion static methods
