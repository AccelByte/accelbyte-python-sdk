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

from ..models.accountcommon_platform_account import AccountcommonPlatformAccount


class AccountcommonUserWithLinkedPlatformAccounts(Model):
    """Accountcommon user with linked platform accounts (accountcommon.UserWithLinkedPlatformAccounts)

    Properties:
        display_name: (displayName) REQUIRED str

        email_address: (emailAddress) REQUIRED str

        linked_platforms: (linkedPlatforms) REQUIRED List[AccountcommonPlatformAccount]

        namespace: (namespace) REQUIRED str

        user_id: (userId) REQUIRED str
    """

    # region fields

    display_name: str  # REQUIRED
    email_address: str  # REQUIRED
    linked_platforms: List[AccountcommonPlatformAccount]  # REQUIRED
    namespace: str  # REQUIRED
    user_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_display_name(
        self, value: str
    ) -> AccountcommonUserWithLinkedPlatformAccounts:
        self.display_name = value
        return self

    def with_email_address(
        self, value: str
    ) -> AccountcommonUserWithLinkedPlatformAccounts:
        self.email_address = value
        return self

    def with_linked_platforms(
        self, value: List[AccountcommonPlatformAccount]
    ) -> AccountcommonUserWithLinkedPlatformAccounts:
        self.linked_platforms = value
        return self

    def with_namespace(self, value: str) -> AccountcommonUserWithLinkedPlatformAccounts:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> AccountcommonUserWithLinkedPlatformAccounts:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "display_name"):
            result["displayName"] = str(self.display_name)
        elif include_empty:
            result["displayName"] = ""
        if hasattr(self, "email_address"):
            result["emailAddress"] = str(self.email_address)
        elif include_empty:
            result["emailAddress"] = ""
        if hasattr(self, "linked_platforms"):
            result["linkedPlatforms"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.linked_platforms
            ]
        elif include_empty:
            result["linkedPlatforms"] = []
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        display_name: str,
        email_address: str,
        linked_platforms: List[AccountcommonPlatformAccount],
        namespace: str,
        user_id: str,
    ) -> AccountcommonUserWithLinkedPlatformAccounts:
        instance = cls()
        instance.display_name = display_name
        instance.email_address = email_address
        instance.linked_platforms = linked_platforms
        instance.namespace = namespace
        instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AccountcommonUserWithLinkedPlatformAccounts:
        instance = cls()
        if not dict_:
            return instance
        if "displayName" in dict_ and dict_["displayName"] is not None:
            instance.display_name = str(dict_["displayName"])
        elif include_empty:
            instance.display_name = ""
        if "emailAddress" in dict_ and dict_["emailAddress"] is not None:
            instance.email_address = str(dict_["emailAddress"])
        elif include_empty:
            instance.email_address = ""
        if "linkedPlatforms" in dict_ and dict_["linkedPlatforms"] is not None:
            instance.linked_platforms = [
                AccountcommonPlatformAccount.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["linkedPlatforms"]
            ]
        elif include_empty:
            instance.linked_platforms = []
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, AccountcommonUserWithLinkedPlatformAccounts]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[AccountcommonUserWithLinkedPlatformAccounts]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        AccountcommonUserWithLinkedPlatformAccounts,
        List[AccountcommonUserWithLinkedPlatformAccounts],
        Dict[Any, AccountcommonUserWithLinkedPlatformAccounts],
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
            "displayName": "display_name",
            "emailAddress": "email_address",
            "linkedPlatforms": "linked_platforms",
            "namespace": "namespace",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "displayName": True,
            "emailAddress": True,
            "linkedPlatforms": True,
            "namespace": True,
            "userId": True,
        }

    # endregion static methods
