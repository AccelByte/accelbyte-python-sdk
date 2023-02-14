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


class AccountcommonUserLinkedPlatformV3(Model):
    """Accountcommon user linked platform V3 (accountcommon.UserLinkedPlatformV3)

    Properties:
        account_group: (accountGroup) REQUIRED str

        linked_at: (linkedAt) REQUIRED str

        namespace: (namespace) REQUIRED str

        origin_namespace: (originNamespace) REQUIRED str

        user_id: (userId) REQUIRED str

        display_name: (displayName) OPTIONAL str

        email_address: (emailAddress) OPTIONAL str

        platform_id: (platformId) OPTIONAL str

        platform_user_id: (platformUserId) OPTIONAL str
    """

    # region fields

    account_group: str  # REQUIRED
    linked_at: str  # REQUIRED
    namespace: str  # REQUIRED
    origin_namespace: str  # REQUIRED
    user_id: str  # REQUIRED
    display_name: str  # OPTIONAL
    email_address: str  # OPTIONAL
    platform_id: str  # OPTIONAL
    platform_user_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_account_group(self, value: str) -> AccountcommonUserLinkedPlatformV3:
        self.account_group = value
        return self

    def with_linked_at(self, value: str) -> AccountcommonUserLinkedPlatformV3:
        self.linked_at = value
        return self

    def with_namespace(self, value: str) -> AccountcommonUserLinkedPlatformV3:
        self.namespace = value
        return self

    def with_origin_namespace(self, value: str) -> AccountcommonUserLinkedPlatformV3:
        self.origin_namespace = value
        return self

    def with_user_id(self, value: str) -> AccountcommonUserLinkedPlatformV3:
        self.user_id = value
        return self

    def with_display_name(self, value: str) -> AccountcommonUserLinkedPlatformV3:
        self.display_name = value
        return self

    def with_email_address(self, value: str) -> AccountcommonUserLinkedPlatformV3:
        self.email_address = value
        return self

    def with_platform_id(self, value: str) -> AccountcommonUserLinkedPlatformV3:
        self.platform_id = value
        return self

    def with_platform_user_id(self, value: str) -> AccountcommonUserLinkedPlatformV3:
        self.platform_user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "account_group"):
            result["accountGroup"] = str(self.account_group)
        elif include_empty:
            result["accountGroup"] = ""
        if hasattr(self, "linked_at"):
            result["linkedAt"] = str(self.linked_at)
        elif include_empty:
            result["linkedAt"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "origin_namespace"):
            result["originNamespace"] = str(self.origin_namespace)
        elif include_empty:
            result["originNamespace"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "display_name"):
            result["displayName"] = str(self.display_name)
        elif include_empty:
            result["displayName"] = ""
        if hasattr(self, "email_address"):
            result["emailAddress"] = str(self.email_address)
        elif include_empty:
            result["emailAddress"] = ""
        if hasattr(self, "platform_id"):
            result["platformId"] = str(self.platform_id)
        elif include_empty:
            result["platformId"] = ""
        if hasattr(self, "platform_user_id"):
            result["platformUserId"] = str(self.platform_user_id)
        elif include_empty:
            result["platformUserId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        account_group: str,
        linked_at: str,
        namespace: str,
        origin_namespace: str,
        user_id: str,
        display_name: Optional[str] = None,
        email_address: Optional[str] = None,
        platform_id: Optional[str] = None,
        platform_user_id: Optional[str] = None,
    ) -> AccountcommonUserLinkedPlatformV3:
        instance = cls()
        instance.account_group = account_group
        instance.linked_at = linked_at
        instance.namespace = namespace
        instance.origin_namespace = origin_namespace
        instance.user_id = user_id
        if display_name is not None:
            instance.display_name = display_name
        if email_address is not None:
            instance.email_address = email_address
        if platform_id is not None:
            instance.platform_id = platform_id
        if platform_user_id is not None:
            instance.platform_user_id = platform_user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AccountcommonUserLinkedPlatformV3:
        instance = cls()
        if not dict_:
            return instance
        if "accountGroup" in dict_ and dict_["accountGroup"] is not None:
            instance.account_group = str(dict_["accountGroup"])
        elif include_empty:
            instance.account_group = ""
        if "linkedAt" in dict_ and dict_["linkedAt"] is not None:
            instance.linked_at = str(dict_["linkedAt"])
        elif include_empty:
            instance.linked_at = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "originNamespace" in dict_ and dict_["originNamespace"] is not None:
            instance.origin_namespace = str(dict_["originNamespace"])
        elif include_empty:
            instance.origin_namespace = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "displayName" in dict_ and dict_["displayName"] is not None:
            instance.display_name = str(dict_["displayName"])
        elif include_empty:
            instance.display_name = ""
        if "emailAddress" in dict_ and dict_["emailAddress"] is not None:
            instance.email_address = str(dict_["emailAddress"])
        elif include_empty:
            instance.email_address = ""
        if "platformId" in dict_ and dict_["platformId"] is not None:
            instance.platform_id = str(dict_["platformId"])
        elif include_empty:
            instance.platform_id = ""
        if "platformUserId" in dict_ and dict_["platformUserId"] is not None:
            instance.platform_user_id = str(dict_["platformUserId"])
        elif include_empty:
            instance.platform_user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, AccountcommonUserLinkedPlatformV3]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[AccountcommonUserLinkedPlatformV3]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        AccountcommonUserLinkedPlatformV3,
        List[AccountcommonUserLinkedPlatformV3],
        Dict[Any, AccountcommonUserLinkedPlatformV3],
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
            "accountGroup": "account_group",
            "linkedAt": "linked_at",
            "namespace": "namespace",
            "originNamespace": "origin_namespace",
            "userId": "user_id",
            "displayName": "display_name",
            "emailAddress": "email_address",
            "platformId": "platform_id",
            "platformUserId": "platform_user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "accountGroup": True,
            "linkedAt": True,
            "namespace": True,
            "originNamespace": True,
            "userId": True,
            "displayName": False,
            "emailAddress": False,
            "platformId": False,
            "platformUserId": False,
        }

    # endregion static methods
