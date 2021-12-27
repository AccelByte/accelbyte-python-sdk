# justice-iam-service (4.9.0)

# template file: justice_py_sdk_codegen/__main__.py

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

from ..models.accountcommon_user_with_linked_platform_accounts import AccountcommonUserWithLinkedPlatformAccounts


class AccountcommonConflictedUserPlatformAccounts(Model):
    """Accountcommon conflicted user platform accounts (accountcommon.ConflictedUserPlatformAccounts)

    Properties:
        platform_user_id: (platformUserID) REQUIRED str

        publisher_accounts: (publisherAccounts) REQUIRED List[AccountcommonUserWithLinkedPlatformAccounts]
    """

    # region fields

    platform_user_id: str                                                                          # REQUIRED
    publisher_accounts: List[AccountcommonUserWithLinkedPlatformAccounts]                          # REQUIRED

    # endregion fields

    # region with_x methods

    def with_platform_user_id(self, value: str) -> AccountcommonConflictedUserPlatformAccounts:
        self.platform_user_id = value
        return self

    def with_publisher_accounts(self, value: List[AccountcommonUserWithLinkedPlatformAccounts]) -> AccountcommonConflictedUserPlatformAccounts:
        self.publisher_accounts = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "platform_user_id"):
            result["platformUserID"] = str(self.platform_user_id)
        elif include_empty:
            result["platformUserID"] = str()
        if hasattr(self, "publisher_accounts"):
            result["publisherAccounts"] = [i0.to_dict(include_empty=include_empty) for i0 in self.publisher_accounts]
        elif include_empty:
            result["publisherAccounts"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        platform_user_id: str,
        publisher_accounts: List[AccountcommonUserWithLinkedPlatformAccounts],
    ) -> AccountcommonConflictedUserPlatformAccounts:
        instance = cls()
        instance.platform_user_id = platform_user_id
        instance.publisher_accounts = publisher_accounts
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> AccountcommonConflictedUserPlatformAccounts:
        instance = cls()
        if not dict_:
            return instance
        if "platformUserID" in dict_ and dict_["platformUserID"] is not None:
            instance.platform_user_id = str(dict_["platformUserID"])
        elif include_empty:
            instance.platform_user_id = str()
        if "publisherAccounts" in dict_ and dict_["publisherAccounts"] is not None:
            instance.publisher_accounts = [AccountcommonUserWithLinkedPlatformAccounts.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["publisherAccounts"]]
        elif include_empty:
            instance.publisher_accounts = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "platformUserID": "platform_user_id",
            "publisherAccounts": "publisher_accounts",
        }

    # endregion static methods
