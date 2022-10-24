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

from ..models.accountcommon_platform_user_information_v3 import (
    AccountcommonPlatformUserInformationV3,
)


class AccountcommonUserInformationV3(Model):
    """Accountcommon user information V3 (accountcommon.UserInformationV3)

    Properties:
        email_addresses: (emailAddresses) REQUIRED List[str]

        platform_users: (platformUsers) REQUIRED List[AccountcommonPlatformUserInformationV3]

        country: (country) OPTIONAL str

        display_name: (displayName) OPTIONAL str

        phone_number: (phoneNumber) OPTIONAL str

        username: (username) OPTIONAL str

        xbox_user_id: (xboxUserId) OPTIONAL str
    """

    # region fields

    email_addresses: List[str]  # REQUIRED
    platform_users: List[AccountcommonPlatformUserInformationV3]  # REQUIRED
    country: str  # OPTIONAL
    display_name: str  # OPTIONAL
    phone_number: str  # OPTIONAL
    username: str  # OPTIONAL
    xbox_user_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_email_addresses(self, value: List[str]) -> AccountcommonUserInformationV3:
        self.email_addresses = value
        return self

    def with_platform_users(
        self, value: List[AccountcommonPlatformUserInformationV3]
    ) -> AccountcommonUserInformationV3:
        self.platform_users = value
        return self

    def with_country(self, value: str) -> AccountcommonUserInformationV3:
        self.country = value
        return self

    def with_display_name(self, value: str) -> AccountcommonUserInformationV3:
        self.display_name = value
        return self

    def with_phone_number(self, value: str) -> AccountcommonUserInformationV3:
        self.phone_number = value
        return self

    def with_username(self, value: str) -> AccountcommonUserInformationV3:
        self.username = value
        return self

    def with_xbox_user_id(self, value: str) -> AccountcommonUserInformationV3:
        self.xbox_user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "email_addresses"):
            result["emailAddresses"] = [str(i0) for i0 in self.email_addresses]
        elif include_empty:
            result["emailAddresses"] = []
        if hasattr(self, "platform_users"):
            result["platformUsers"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.platform_users
            ]
        elif include_empty:
            result["platformUsers"] = []
        if hasattr(self, "country"):
            result["country"] = str(self.country)
        elif include_empty:
            result["country"] = ""
        if hasattr(self, "display_name"):
            result["displayName"] = str(self.display_name)
        elif include_empty:
            result["displayName"] = ""
        if hasattr(self, "phone_number"):
            result["phoneNumber"] = str(self.phone_number)
        elif include_empty:
            result["phoneNumber"] = ""
        if hasattr(self, "username"):
            result["username"] = str(self.username)
        elif include_empty:
            result["username"] = ""
        if hasattr(self, "xbox_user_id"):
            result["xboxUserId"] = str(self.xbox_user_id)
        elif include_empty:
            result["xboxUserId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        email_addresses: List[str],
        platform_users: List[AccountcommonPlatformUserInformationV3],
        country: Optional[str] = None,
        display_name: Optional[str] = None,
        phone_number: Optional[str] = None,
        username: Optional[str] = None,
        xbox_user_id: Optional[str] = None,
    ) -> AccountcommonUserInformationV3:
        instance = cls()
        instance.email_addresses = email_addresses
        instance.platform_users = platform_users
        if country is not None:
            instance.country = country
        if display_name is not None:
            instance.display_name = display_name
        if phone_number is not None:
            instance.phone_number = phone_number
        if username is not None:
            instance.username = username
        if xbox_user_id is not None:
            instance.xbox_user_id = xbox_user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AccountcommonUserInformationV3:
        instance = cls()
        if not dict_:
            return instance
        if "emailAddresses" in dict_ and dict_["emailAddresses"] is not None:
            instance.email_addresses = [str(i0) for i0 in dict_["emailAddresses"]]
        elif include_empty:
            instance.email_addresses = []
        if "platformUsers" in dict_ and dict_["platformUsers"] is not None:
            instance.platform_users = [
                AccountcommonPlatformUserInformationV3.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["platformUsers"]
            ]
        elif include_empty:
            instance.platform_users = []
        if "country" in dict_ and dict_["country"] is not None:
            instance.country = str(dict_["country"])
        elif include_empty:
            instance.country = ""
        if "displayName" in dict_ and dict_["displayName"] is not None:
            instance.display_name = str(dict_["displayName"])
        elif include_empty:
            instance.display_name = ""
        if "phoneNumber" in dict_ and dict_["phoneNumber"] is not None:
            instance.phone_number = str(dict_["phoneNumber"])
        elif include_empty:
            instance.phone_number = ""
        if "username" in dict_ and dict_["username"] is not None:
            instance.username = str(dict_["username"])
        elif include_empty:
            instance.username = ""
        if "xboxUserId" in dict_ and dict_["xboxUserId"] is not None:
            instance.xbox_user_id = str(dict_["xboxUserId"])
        elif include_empty:
            instance.xbox_user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, AccountcommonUserInformationV3]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[AccountcommonUserInformationV3]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        AccountcommonUserInformationV3,
        List[AccountcommonUserInformationV3],
        Dict[Any, AccountcommonUserInformationV3],
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
            "emailAddresses": "email_addresses",
            "platformUsers": "platform_users",
            "country": "country",
            "displayName": "display_name",
            "phoneNumber": "phone_number",
            "username": "username",
            "xboxUserId": "xbox_user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "emailAddresses": True,
            "platformUsers": True,
            "country": False,
            "displayName": False,
            "phoneNumber": False,
            "username": False,
            "xboxUserId": False,
        }

    # endregion static methods
