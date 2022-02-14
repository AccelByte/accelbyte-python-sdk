# justice-iam-service (5.2.0)

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


class AccountcommonUserLinkedPlatform(Model):
    """Accountcommon user linked platform (accountcommon.UserLinkedPlatform)

    Properties:
        linked_at: (LinkedAt) REQUIRED str

        namespace: (Namespace) REQUIRED str

        origin_namespace: (OriginNamespace) REQUIRED str

        user_id: (UserId) REQUIRED str

        display_name: (DisplayName) OPTIONAL str

        email_address: (EmailAddress) OPTIONAL str

        platform_id: (PlatformId) OPTIONAL str

        platform_user_id: (PlatformUserId) OPTIONAL str

        xuid: (XUID) OPTIONAL str
    """

    # region fields

    linked_at: str                                                                                 # REQUIRED
    namespace: str                                                                                 # REQUIRED
    origin_namespace: str                                                                          # REQUIRED
    user_id: str                                                                                   # REQUIRED
    display_name: str                                                                              # OPTIONAL
    email_address: str                                                                             # OPTIONAL
    platform_id: str                                                                               # OPTIONAL
    platform_user_id: str                                                                          # OPTIONAL
    xuid: str                                                                                      # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_linked_at(self, value: str) -> AccountcommonUserLinkedPlatform:
        self.linked_at = value
        return self

    def with_namespace(self, value: str) -> AccountcommonUserLinkedPlatform:
        self.namespace = value
        return self

    def with_origin_namespace(self, value: str) -> AccountcommonUserLinkedPlatform:
        self.origin_namespace = value
        return self

    def with_user_id(self, value: str) -> AccountcommonUserLinkedPlatform:
        self.user_id = value
        return self

    def with_display_name(self, value: str) -> AccountcommonUserLinkedPlatform:
        self.display_name = value
        return self

    def with_email_address(self, value: str) -> AccountcommonUserLinkedPlatform:
        self.email_address = value
        return self

    def with_platform_id(self, value: str) -> AccountcommonUserLinkedPlatform:
        self.platform_id = value
        return self

    def with_platform_user_id(self, value: str) -> AccountcommonUserLinkedPlatform:
        self.platform_user_id = value
        return self

    def with_xuid(self, value: str) -> AccountcommonUserLinkedPlatform:
        self.xuid = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "linked_at"):
            result["LinkedAt"] = str(self.linked_at)
        elif include_empty:
            result["LinkedAt"] = str()
        if hasattr(self, "namespace"):
            result["Namespace"] = str(self.namespace)
        elif include_empty:
            result["Namespace"] = str()
        if hasattr(self, "origin_namespace"):
            result["OriginNamespace"] = str(self.origin_namespace)
        elif include_empty:
            result["OriginNamespace"] = str()
        if hasattr(self, "user_id"):
            result["UserId"] = str(self.user_id)
        elif include_empty:
            result["UserId"] = str()
        if hasattr(self, "display_name"):
            result["DisplayName"] = str(self.display_name)
        elif include_empty:
            result["DisplayName"] = str()
        if hasattr(self, "email_address"):
            result["EmailAddress"] = str(self.email_address)
        elif include_empty:
            result["EmailAddress"] = str()
        if hasattr(self, "platform_id"):
            result["PlatformId"] = str(self.platform_id)
        elif include_empty:
            result["PlatformId"] = str()
        if hasattr(self, "platform_user_id"):
            result["PlatformUserId"] = str(self.platform_user_id)
        elif include_empty:
            result["PlatformUserId"] = str()
        if hasattr(self, "xuid"):
            result["XUID"] = str(self.xuid)
        elif include_empty:
            result["XUID"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        linked_at: str,
        namespace: str,
        origin_namespace: str,
        user_id: str,
        display_name: Optional[str] = None,
        email_address: Optional[str] = None,
        platform_id: Optional[str] = None,
        platform_user_id: Optional[str] = None,
        xuid: Optional[str] = None,
    ) -> AccountcommonUserLinkedPlatform:
        instance = cls()
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
        if xuid is not None:
            instance.xuid = xuid
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> AccountcommonUserLinkedPlatform:
        instance = cls()
        if not dict_:
            return instance
        if "LinkedAt" in dict_ and dict_["LinkedAt"] is not None:
            instance.linked_at = str(dict_["LinkedAt"])
        elif include_empty:
            instance.linked_at = str()
        if "Namespace" in dict_ and dict_["Namespace"] is not None:
            instance.namespace = str(dict_["Namespace"])
        elif include_empty:
            instance.namespace = str()
        if "OriginNamespace" in dict_ and dict_["OriginNamespace"] is not None:
            instance.origin_namespace = str(dict_["OriginNamespace"])
        elif include_empty:
            instance.origin_namespace = str()
        if "UserId" in dict_ and dict_["UserId"] is not None:
            instance.user_id = str(dict_["UserId"])
        elif include_empty:
            instance.user_id = str()
        if "DisplayName" in dict_ and dict_["DisplayName"] is not None:
            instance.display_name = str(dict_["DisplayName"])
        elif include_empty:
            instance.display_name = str()
        if "EmailAddress" in dict_ and dict_["EmailAddress"] is not None:
            instance.email_address = str(dict_["EmailAddress"])
        elif include_empty:
            instance.email_address = str()
        if "PlatformId" in dict_ and dict_["PlatformId"] is not None:
            instance.platform_id = str(dict_["PlatformId"])
        elif include_empty:
            instance.platform_id = str()
        if "PlatformUserId" in dict_ and dict_["PlatformUserId"] is not None:
            instance.platform_user_id = str(dict_["PlatformUserId"])
        elif include_empty:
            instance.platform_user_id = str()
        if "XUID" in dict_ and dict_["XUID"] is not None:
            instance.xuid = str(dict_["XUID"])
        elif include_empty:
            instance.xuid = str()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, AccountcommonUserLinkedPlatform]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[AccountcommonUserLinkedPlatform]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[AccountcommonUserLinkedPlatform, List[AccountcommonUserLinkedPlatform]]:
        if many:
            if isinstance(any_, dict):
                cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                cls.create_many_from_list(any_, include_empty=include_empty)
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "LinkedAt": "linked_at",
            "Namespace": "namespace",
            "OriginNamespace": "origin_namespace",
            "UserId": "user_id",
            "DisplayName": "display_name",
            "EmailAddress": "email_address",
            "PlatformId": "platform_id",
            "PlatformUserId": "platform_user_id",
            "XUID": "xuid",
        }

    # endregion static methods
