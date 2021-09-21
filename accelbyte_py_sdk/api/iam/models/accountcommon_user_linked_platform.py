# Auto-generated at 2021-09-21T14:10:34.726601+08:00
# from: Justice Iam Service (4.1.0)

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


class AccountcommonUserLinkedPlatform(Model):
    """Accountcommon user linked platform

    Properties:
        display_name: (DisplayName) OPTIONAL str

        email_address: (EmailAddress) OPTIONAL str

        linked_at: (LinkedAt) REQUIRED str

        namespace: (Namespace) REQUIRED str

        origin_namespace: (OriginNamespace) REQUIRED str

        platform_id: (PlatformId) OPTIONAL str

        platform_user_id: (PlatformUserId) OPTIONAL str

        user_id: (UserId) REQUIRED str

        xuid: (XUID) OPTIONAL str
    """

    # region fields

    display_name: str                                                                              # OPTIONAL
    email_address: str                                                                             # OPTIONAL
    linked_at: str                                                                                 # REQUIRED
    namespace: str                                                                                 # REQUIRED
    origin_namespace: str                                                                          # REQUIRED
    platform_id: str                                                                               # OPTIONAL
    platform_user_id: str                                                                          # OPTIONAL
    user_id: str                                                                                   # REQUIRED
    xuid: str                                                                                      # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_display_name(self, value: str) -> AccountcommonUserLinkedPlatform:
        self.display_name = value
        return self

    def with_email_address(self, value: str) -> AccountcommonUserLinkedPlatform:
        self.email_address = value
        return self

    def with_linked_at(self, value: str) -> AccountcommonUserLinkedPlatform:
        self.linked_at = value
        return self

    def with_namespace(self, value: str) -> AccountcommonUserLinkedPlatform:
        self.namespace = value
        return self

    def with_origin_namespace(self, value: str) -> AccountcommonUserLinkedPlatform:
        self.origin_namespace = value
        return self

    def with_platform_id(self, value: str) -> AccountcommonUserLinkedPlatform:
        self.platform_id = value
        return self

    def with_platform_user_id(self, value: str) -> AccountcommonUserLinkedPlatform:
        self.platform_user_id = value
        return self

    def with_user_id(self, value: str) -> AccountcommonUserLinkedPlatform:
        self.user_id = value
        return self

    def with_xuid(self, value: str) -> AccountcommonUserLinkedPlatform:
        self.xuid = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "display_name") and self.display_name:
            result["DisplayName"] = str(self.display_name)
        elif include_empty:
            result["DisplayName"] = str()
        if hasattr(self, "email_address") and self.email_address:
            result["EmailAddress"] = str(self.email_address)
        elif include_empty:
            result["EmailAddress"] = str()
        if hasattr(self, "linked_at") and self.linked_at:
            result["LinkedAt"] = str(self.linked_at)
        elif include_empty:
            result["LinkedAt"] = str()
        if hasattr(self, "namespace") and self.namespace:
            result["Namespace"] = str(self.namespace)
        elif include_empty:
            result["Namespace"] = str()
        if hasattr(self, "origin_namespace") and self.origin_namespace:
            result["OriginNamespace"] = str(self.origin_namespace)
        elif include_empty:
            result["OriginNamespace"] = str()
        if hasattr(self, "platform_id") and self.platform_id:
            result["PlatformId"] = str(self.platform_id)
        elif include_empty:
            result["PlatformId"] = str()
        if hasattr(self, "platform_user_id") and self.platform_user_id:
            result["PlatformUserId"] = str(self.platform_user_id)
        elif include_empty:
            result["PlatformUserId"] = str()
        if hasattr(self, "user_id") and self.user_id:
            result["UserId"] = str(self.user_id)
        elif include_empty:
            result["UserId"] = str()
        if hasattr(self, "xuid") and self.xuid:
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
        if "DisplayName" in dict_ and dict_["DisplayName"] is not None:
            instance.display_name = str(dict_["DisplayName"])
        elif include_empty:
            instance.display_name = str()
        if "EmailAddress" in dict_ and dict_["EmailAddress"] is not None:
            instance.email_address = str(dict_["EmailAddress"])
        elif include_empty:
            instance.email_address = str()
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
        if "PlatformId" in dict_ and dict_["PlatformId"] is not None:
            instance.platform_id = str(dict_["PlatformId"])
        elif include_empty:
            instance.platform_id = str()
        if "PlatformUserId" in dict_ and dict_["PlatformUserId"] is not None:
            instance.platform_user_id = str(dict_["PlatformUserId"])
        elif include_empty:
            instance.platform_user_id = str()
        if "UserId" in dict_ and dict_["UserId"] is not None:
            instance.user_id = str(dict_["UserId"])
        elif include_empty:
            instance.user_id = str()
        if "XUID" in dict_ and dict_["XUID"] is not None:
            instance.xuid = str(dict_["XUID"])
        elif include_empty:
            instance.xuid = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "DisplayName": "display_name",
            "EmailAddress": "email_address",
            "LinkedAt": "linked_at",
            "Namespace": "namespace",
            "OriginNamespace": "origin_namespace",
            "PlatformId": "platform_id",
            "PlatformUserId": "platform_user_id",
            "UserId": "user_id",
            "XUID": "xuid",
        }

    # endregion static methods
