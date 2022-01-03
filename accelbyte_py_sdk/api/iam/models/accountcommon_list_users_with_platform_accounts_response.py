# justice-iam-service (4.10.0)

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

from ..models.accountcommon_pagination_v3 import AccountcommonPaginationV3
from ..models.accountcommon_user_with_platform_accounts import AccountcommonUserWithPlatformAccounts


class AccountcommonListUsersWithPlatformAccountsResponse(Model):
    """Accountcommon list users with platform accounts response (accountcommon.ListUsersWithPlatformAccountsResponse)

    Properties:
        data: (data) REQUIRED List[AccountcommonUserWithPlatformAccounts]

        paging: (paging) REQUIRED AccountcommonPaginationV3

        total_data: (totalData) REQUIRED int
    """

    # region fields

    data: List[AccountcommonUserWithPlatformAccounts]                                              # REQUIRED
    paging: AccountcommonPaginationV3                                                              # REQUIRED
    total_data: int                                                                                # REQUIRED

    # endregion fields

    # region with_x methods

    def with_data(self, value: List[AccountcommonUserWithPlatformAccounts]) -> AccountcommonListUsersWithPlatformAccountsResponse:
        self.data = value
        return self

    def with_paging(self, value: AccountcommonPaginationV3) -> AccountcommonListUsersWithPlatformAccountsResponse:
        self.paging = value
        return self

    def with_total_data(self, value: int) -> AccountcommonListUsersWithPlatformAccountsResponse:
        self.total_data = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "data"):
            result["data"] = [i0.to_dict(include_empty=include_empty) for i0 in self.data]
        elif include_empty:
            result["data"] = []
        if hasattr(self, "paging"):
            result["paging"] = self.paging.to_dict(include_empty=include_empty)
        elif include_empty:
            result["paging"] = AccountcommonPaginationV3()
        if hasattr(self, "total_data"):
            result["totalData"] = int(self.total_data)
        elif include_empty:
            result["totalData"] = int()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        data: List[AccountcommonUserWithPlatformAccounts],
        paging: AccountcommonPaginationV3,
        total_data: int,
    ) -> AccountcommonListUsersWithPlatformAccountsResponse:
        instance = cls()
        instance.data = data
        instance.paging = paging
        instance.total_data = total_data
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> AccountcommonListUsersWithPlatformAccountsResponse:
        instance = cls()
        if not dict_:
            return instance
        if "data" in dict_ and dict_["data"] is not None:
            instance.data = [AccountcommonUserWithPlatformAccounts.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["data"]]
        elif include_empty:
            instance.data = []
        if "paging" in dict_ and dict_["paging"] is not None:
            instance.paging = AccountcommonPaginationV3.create_from_dict(dict_["paging"], include_empty=include_empty)
        elif include_empty:
            instance.paging = AccountcommonPaginationV3()
        if "totalData" in dict_ and dict_["totalData"] is not None:
            instance.total_data = int(dict_["totalData"])
        elif include_empty:
            instance.total_data = int()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "data": "data",
            "paging": "paging",
            "totalData": "total_data",
        }

    # endregion static methods
