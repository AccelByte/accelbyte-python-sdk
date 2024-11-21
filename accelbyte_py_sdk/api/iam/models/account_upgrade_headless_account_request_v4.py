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


class AccountUpgradeHeadlessAccountRequestV4(Model):
    """Account upgrade headless account request V4 (account.upgradeHeadlessAccountRequestV4)

    Properties:
        email_address: (emailAddress) REQUIRED str

        password: (password) REQUIRED str

        username: (username) REQUIRED str

        date_of_birth: (dateOfBirth) OPTIONAL str

        display_name: (displayName) OPTIONAL str

        unique_display_name: (uniqueDisplayName) OPTIONAL str
    """

    # region fields

    email_address: str  # REQUIRED
    password: str  # REQUIRED
    username: str  # REQUIRED
    date_of_birth: str  # OPTIONAL
    display_name: str  # OPTIONAL
    unique_display_name: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_email_address(self, value: str) -> AccountUpgradeHeadlessAccountRequestV4:
        self.email_address = value
        return self

    def with_password(self, value: str) -> AccountUpgradeHeadlessAccountRequestV4:
        self.password = value
        return self

    def with_username(self, value: str) -> AccountUpgradeHeadlessAccountRequestV4:
        self.username = value
        return self

    def with_date_of_birth(self, value: str) -> AccountUpgradeHeadlessAccountRequestV4:
        self.date_of_birth = value
        return self

    def with_display_name(self, value: str) -> AccountUpgradeHeadlessAccountRequestV4:
        self.display_name = value
        return self

    def with_unique_display_name(
        self, value: str
    ) -> AccountUpgradeHeadlessAccountRequestV4:
        self.unique_display_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "email_address"):
            result["emailAddress"] = str(self.email_address)
        elif include_empty:
            result["emailAddress"] = ""
        if hasattr(self, "password"):
            result["password"] = str(self.password)
        elif include_empty:
            result["password"] = ""
        if hasattr(self, "username"):
            result["username"] = str(self.username)
        elif include_empty:
            result["username"] = ""
        if hasattr(self, "date_of_birth"):
            result["dateOfBirth"] = str(self.date_of_birth)
        elif include_empty:
            result["dateOfBirth"] = ""
        if hasattr(self, "display_name"):
            result["displayName"] = str(self.display_name)
        elif include_empty:
            result["displayName"] = ""
        if hasattr(self, "unique_display_name"):
            result["uniqueDisplayName"] = str(self.unique_display_name)
        elif include_empty:
            result["uniqueDisplayName"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        email_address: str,
        password: str,
        username: str,
        date_of_birth: Optional[str] = None,
        display_name: Optional[str] = None,
        unique_display_name: Optional[str] = None,
        **kwargs,
    ) -> AccountUpgradeHeadlessAccountRequestV4:
        instance = cls()
        instance.email_address = email_address
        instance.password = password
        instance.username = username
        if date_of_birth is not None:
            instance.date_of_birth = date_of_birth
        if display_name is not None:
            instance.display_name = display_name
        if unique_display_name is not None:
            instance.unique_display_name = unique_display_name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AccountUpgradeHeadlessAccountRequestV4:
        instance = cls()
        if not dict_:
            return instance
        if "emailAddress" in dict_ and dict_["emailAddress"] is not None:
            instance.email_address = str(dict_["emailAddress"])
        elif include_empty:
            instance.email_address = ""
        if "password" in dict_ and dict_["password"] is not None:
            instance.password = str(dict_["password"])
        elif include_empty:
            instance.password = ""
        if "username" in dict_ and dict_["username"] is not None:
            instance.username = str(dict_["username"])
        elif include_empty:
            instance.username = ""
        if "dateOfBirth" in dict_ and dict_["dateOfBirth"] is not None:
            instance.date_of_birth = str(dict_["dateOfBirth"])
        elif include_empty:
            instance.date_of_birth = ""
        if "displayName" in dict_ and dict_["displayName"] is not None:
            instance.display_name = str(dict_["displayName"])
        elif include_empty:
            instance.display_name = ""
        if "uniqueDisplayName" in dict_ and dict_["uniqueDisplayName"] is not None:
            instance.unique_display_name = str(dict_["uniqueDisplayName"])
        elif include_empty:
            instance.unique_display_name = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, AccountUpgradeHeadlessAccountRequestV4]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[AccountUpgradeHeadlessAccountRequestV4]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        AccountUpgradeHeadlessAccountRequestV4,
        List[AccountUpgradeHeadlessAccountRequestV4],
        Dict[Any, AccountUpgradeHeadlessAccountRequestV4],
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
            "emailAddress": "email_address",
            "password": "password",
            "username": "username",
            "dateOfBirth": "date_of_birth",
            "displayName": "display_name",
            "uniqueDisplayName": "unique_display_name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "emailAddress": True,
            "password": True,
            "username": True,
            "dateOfBirth": False,
            "displayName": False,
            "uniqueDisplayName": False,
        }

    # endregion static methods
