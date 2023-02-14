# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.27.2)

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

from ..models.model_platform_user_information import ModelPlatformUserInformation


class ModelUserInformation(Model):
    """Model user information (model.UserInformation)

    Properties:
        country: (Country) REQUIRED str

        display_name: (DisplayName) REQUIRED str

        email_addresses: (EmailAddresses) REQUIRED List[str]

        linked_platform_accounts: (LinkedPlatformAccounts) REQUIRED List[ModelPlatformUserInformation]

        phone_number: (PhoneNumber) REQUIRED str

        username: (Username) REQUIRED str

        xuid: (XUID) OPTIONAL str
    """

    # region fields

    country: str  # REQUIRED
    display_name: str  # REQUIRED
    email_addresses: List[str]  # REQUIRED
    linked_platform_accounts: List[ModelPlatformUserInformation]  # REQUIRED
    phone_number: str  # REQUIRED
    username: str  # REQUIRED
    xuid: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_country(self, value: str) -> ModelUserInformation:
        self.country = value
        return self

    def with_display_name(self, value: str) -> ModelUserInformation:
        self.display_name = value
        return self

    def with_email_addresses(self, value: List[str]) -> ModelUserInformation:
        self.email_addresses = value
        return self

    def with_linked_platform_accounts(
        self, value: List[ModelPlatformUserInformation]
    ) -> ModelUserInformation:
        self.linked_platform_accounts = value
        return self

    def with_phone_number(self, value: str) -> ModelUserInformation:
        self.phone_number = value
        return self

    def with_username(self, value: str) -> ModelUserInformation:
        self.username = value
        return self

    def with_xuid(self, value: str) -> ModelUserInformation:
        self.xuid = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "country"):
            result["Country"] = str(self.country)
        elif include_empty:
            result["Country"] = ""
        if hasattr(self, "display_name"):
            result["DisplayName"] = str(self.display_name)
        elif include_empty:
            result["DisplayName"] = ""
        if hasattr(self, "email_addresses"):
            result["EmailAddresses"] = [str(i0) for i0 in self.email_addresses]
        elif include_empty:
            result["EmailAddresses"] = []
        if hasattr(self, "linked_platform_accounts"):
            result["LinkedPlatformAccounts"] = [
                i0.to_dict(include_empty=include_empty)
                for i0 in self.linked_platform_accounts
            ]
        elif include_empty:
            result["LinkedPlatformAccounts"] = []
        if hasattr(self, "phone_number"):
            result["PhoneNumber"] = str(self.phone_number)
        elif include_empty:
            result["PhoneNumber"] = ""
        if hasattr(self, "username"):
            result["Username"] = str(self.username)
        elif include_empty:
            result["Username"] = ""
        if hasattr(self, "xuid"):
            result["XUID"] = str(self.xuid)
        elif include_empty:
            result["XUID"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        country: str,
        display_name: str,
        email_addresses: List[str],
        linked_platform_accounts: List[ModelPlatformUserInformation],
        phone_number: str,
        username: str,
        xuid: Optional[str] = None,
    ) -> ModelUserInformation:
        instance = cls()
        instance.country = country
        instance.display_name = display_name
        instance.email_addresses = email_addresses
        instance.linked_platform_accounts = linked_platform_accounts
        instance.phone_number = phone_number
        instance.username = username
        if xuid is not None:
            instance.xuid = xuid
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelUserInformation:
        instance = cls()
        if not dict_:
            return instance
        if "Country" in dict_ and dict_["Country"] is not None:
            instance.country = str(dict_["Country"])
        elif include_empty:
            instance.country = ""
        if "DisplayName" in dict_ and dict_["DisplayName"] is not None:
            instance.display_name = str(dict_["DisplayName"])
        elif include_empty:
            instance.display_name = ""
        if "EmailAddresses" in dict_ and dict_["EmailAddresses"] is not None:
            instance.email_addresses = [str(i0) for i0 in dict_["EmailAddresses"]]
        elif include_empty:
            instance.email_addresses = []
        if (
            "LinkedPlatformAccounts" in dict_
            and dict_["LinkedPlatformAccounts"] is not None
        ):
            instance.linked_platform_accounts = [
                ModelPlatformUserInformation.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["LinkedPlatformAccounts"]
            ]
        elif include_empty:
            instance.linked_platform_accounts = []
        if "PhoneNumber" in dict_ and dict_["PhoneNumber"] is not None:
            instance.phone_number = str(dict_["PhoneNumber"])
        elif include_empty:
            instance.phone_number = ""
        if "Username" in dict_ and dict_["Username"] is not None:
            instance.username = str(dict_["Username"])
        elif include_empty:
            instance.username = ""
        if "XUID" in dict_ and dict_["XUID"] is not None:
            instance.xuid = str(dict_["XUID"])
        elif include_empty:
            instance.xuid = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelUserInformation]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelUserInformation]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelUserInformation,
        List[ModelUserInformation],
        Dict[Any, ModelUserInformation],
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
            "Country": "country",
            "DisplayName": "display_name",
            "EmailAddresses": "email_addresses",
            "LinkedPlatformAccounts": "linked_platform_accounts",
            "PhoneNumber": "phone_number",
            "Username": "username",
            "XUID": "xuid",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "Country": True,
            "DisplayName": True,
            "EmailAddresses": True,
            "LinkedPlatformAccounts": True,
            "PhoneNumber": True,
            "Username": True,
            "XUID": False,
        }

    # endregion static methods
