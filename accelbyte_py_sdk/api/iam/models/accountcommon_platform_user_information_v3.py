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


class AccountcommonPlatformUserInformationV3(Model):
    """Accountcommon platform user information V3 (accountcommon.PlatformUserInformationV3)

    Properties:
        linked_at: (linkedAt) REQUIRED str

        namespace: (namespace) REQUIRED str

        platform_id: (platformId) REQUIRED str

        platform_user_id: (platformUserId) REQUIRED str

        display_name: (displayName) OPTIONAL str

        email_address: (emailAddress) OPTIONAL str

        xbox_user_id: (xboxUserId) OPTIONAL str
    """

    # region fields

    linked_at: str  # REQUIRED
    namespace: str  # REQUIRED
    platform_id: str  # REQUIRED
    platform_user_id: str  # REQUIRED
    display_name: str  # OPTIONAL
    email_address: str  # OPTIONAL
    xbox_user_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_linked_at(self, value: str) -> AccountcommonPlatformUserInformationV3:
        self.linked_at = value
        return self

    def with_namespace(self, value: str) -> AccountcommonPlatformUserInformationV3:
        self.namespace = value
        return self

    def with_platform_id(self, value: str) -> AccountcommonPlatformUserInformationV3:
        self.platform_id = value
        return self

    def with_platform_user_id(
        self, value: str
    ) -> AccountcommonPlatformUserInformationV3:
        self.platform_user_id = value
        return self

    def with_display_name(self, value: str) -> AccountcommonPlatformUserInformationV3:
        self.display_name = value
        return self

    def with_email_address(self, value: str) -> AccountcommonPlatformUserInformationV3:
        self.email_address = value
        return self

    def with_xbox_user_id(self, value: str) -> AccountcommonPlatformUserInformationV3:
        self.xbox_user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "linked_at"):
            result["linkedAt"] = str(self.linked_at)
        elif include_empty:
            result["linkedAt"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "platform_id"):
            result["platformId"] = str(self.platform_id)
        elif include_empty:
            result["platformId"] = ""
        if hasattr(self, "platform_user_id"):
            result["platformUserId"] = str(self.platform_user_id)
        elif include_empty:
            result["platformUserId"] = ""
        if hasattr(self, "display_name"):
            result["displayName"] = str(self.display_name)
        elif include_empty:
            result["displayName"] = ""
        if hasattr(self, "email_address"):
            result["emailAddress"] = str(self.email_address)
        elif include_empty:
            result["emailAddress"] = ""
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
        linked_at: str,
        namespace: str,
        platform_id: str,
        platform_user_id: str,
        display_name: Optional[str] = None,
        email_address: Optional[str] = None,
        xbox_user_id: Optional[str] = None,
    ) -> AccountcommonPlatformUserInformationV3:
        instance = cls()
        instance.linked_at = linked_at
        instance.namespace = namespace
        instance.platform_id = platform_id
        instance.platform_user_id = platform_user_id
        if display_name is not None:
            instance.display_name = display_name
        if email_address is not None:
            instance.email_address = email_address
        if xbox_user_id is not None:
            instance.xbox_user_id = xbox_user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AccountcommonPlatformUserInformationV3:
        instance = cls()
        if not dict_:
            return instance
        if "linkedAt" in dict_ and dict_["linkedAt"] is not None:
            instance.linked_at = str(dict_["linkedAt"])
        elif include_empty:
            instance.linked_at = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "platformId" in dict_ and dict_["platformId"] is not None:
            instance.platform_id = str(dict_["platformId"])
        elif include_empty:
            instance.platform_id = ""
        if "platformUserId" in dict_ and dict_["platformUserId"] is not None:
            instance.platform_user_id = str(dict_["platformUserId"])
        elif include_empty:
            instance.platform_user_id = ""
        if "displayName" in dict_ and dict_["displayName"] is not None:
            instance.display_name = str(dict_["displayName"])
        elif include_empty:
            instance.display_name = ""
        if "emailAddress" in dict_ and dict_["emailAddress"] is not None:
            instance.email_address = str(dict_["emailAddress"])
        elif include_empty:
            instance.email_address = ""
        if "xboxUserId" in dict_ and dict_["xboxUserId"] is not None:
            instance.xbox_user_id = str(dict_["xboxUserId"])
        elif include_empty:
            instance.xbox_user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, AccountcommonPlatformUserInformationV3]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[AccountcommonPlatformUserInformationV3]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        AccountcommonPlatformUserInformationV3,
        List[AccountcommonPlatformUserInformationV3],
        Dict[Any, AccountcommonPlatformUserInformationV3],
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
            "linkedAt": "linked_at",
            "namespace": "namespace",
            "platformId": "platform_id",
            "platformUserId": "platform_user_id",
            "displayName": "display_name",
            "emailAddress": "email_address",
            "xboxUserId": "xbox_user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "linkedAt": True,
            "namespace": True,
            "platformId": True,
            "platformUserId": True,
            "displayName": False,
            "emailAddress": False,
            "xboxUserId": False,
        }

    # endregion static methods
