# justice-iam-service (5.0.0)

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


class ModelPlatformUserInformation(Model):
    """Model platform user information (model.PlatformUserInformation)

    Properties:
        display_name: (DisplayName) REQUIRED str

        linked_at: (LinkedAt) REQUIRED str

        namespace: (Namespace) REQUIRED str

        platform_id: (PlatformID) REQUIRED str

        platform_user_id: (PlatformUserID) REQUIRED str

        email_address: (EmailAddress) OPTIONAL str

        xuid: (XUID) OPTIONAL str
    """

    # region fields

    display_name: str                                                                              # REQUIRED
    linked_at: str                                                                                 # REQUIRED
    namespace: str                                                                                 # REQUIRED
    platform_id: str                                                                               # REQUIRED
    platform_user_id: str                                                                          # REQUIRED
    email_address: str                                                                             # OPTIONAL
    xuid: str                                                                                      # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_display_name(self, value: str) -> ModelPlatformUserInformation:
        self.display_name = value
        return self

    def with_linked_at(self, value: str) -> ModelPlatformUserInformation:
        self.linked_at = value
        return self

    def with_namespace(self, value: str) -> ModelPlatformUserInformation:
        self.namespace = value
        return self

    def with_platform_id(self, value: str) -> ModelPlatformUserInformation:
        self.platform_id = value
        return self

    def with_platform_user_id(self, value: str) -> ModelPlatformUserInformation:
        self.platform_user_id = value
        return self

    def with_email_address(self, value: str) -> ModelPlatformUserInformation:
        self.email_address = value
        return self

    def with_xuid(self, value: str) -> ModelPlatformUserInformation:
        self.xuid = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "display_name"):
            result["DisplayName"] = str(self.display_name)
        elif include_empty:
            result["DisplayName"] = str()
        if hasattr(self, "linked_at"):
            result["LinkedAt"] = str(self.linked_at)
        elif include_empty:
            result["LinkedAt"] = str()
        if hasattr(self, "namespace"):
            result["Namespace"] = str(self.namespace)
        elif include_empty:
            result["Namespace"] = str()
        if hasattr(self, "platform_id"):
            result["PlatformID"] = str(self.platform_id)
        elif include_empty:
            result["PlatformID"] = str()
        if hasattr(self, "platform_user_id"):
            result["PlatformUserID"] = str(self.platform_user_id)
        elif include_empty:
            result["PlatformUserID"] = str()
        if hasattr(self, "email_address"):
            result["EmailAddress"] = str(self.email_address)
        elif include_empty:
            result["EmailAddress"] = str()
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
        display_name: str,
        linked_at: str,
        namespace: str,
        platform_id: str,
        platform_user_id: str,
        email_address: Optional[str] = None,
        xuid: Optional[str] = None,
    ) -> ModelPlatformUserInformation:
        instance = cls()
        instance.display_name = display_name
        instance.linked_at = linked_at
        instance.namespace = namespace
        instance.platform_id = platform_id
        instance.platform_user_id = platform_user_id
        if email_address is not None:
            instance.email_address = email_address
        if xuid is not None:
            instance.xuid = xuid
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelPlatformUserInformation:
        instance = cls()
        if not dict_:
            return instance
        if "DisplayName" in dict_ and dict_["DisplayName"] is not None:
            instance.display_name = str(dict_["DisplayName"])
        elif include_empty:
            instance.display_name = str()
        if "LinkedAt" in dict_ and dict_["LinkedAt"] is not None:
            instance.linked_at = str(dict_["LinkedAt"])
        elif include_empty:
            instance.linked_at = str()
        if "Namespace" in dict_ and dict_["Namespace"] is not None:
            instance.namespace = str(dict_["Namespace"])
        elif include_empty:
            instance.namespace = str()
        if "PlatformID" in dict_ and dict_["PlatformID"] is not None:
            instance.platform_id = str(dict_["PlatformID"])
        elif include_empty:
            instance.platform_id = str()
        if "PlatformUserID" in dict_ and dict_["PlatformUserID"] is not None:
            instance.platform_user_id = str(dict_["PlatformUserID"])
        elif include_empty:
            instance.platform_user_id = str()
        if "EmailAddress" in dict_ and dict_["EmailAddress"] is not None:
            instance.email_address = str(dict_["EmailAddress"])
        elif include_empty:
            instance.email_address = str()
        if "XUID" in dict_ and dict_["XUID"] is not None:
            instance.xuid = str(dict_["XUID"])
        elif include_empty:
            instance.xuid = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "DisplayName": "display_name",
            "LinkedAt": "linked_at",
            "Namespace": "namespace",
            "PlatformID": "platform_id",
            "PlatformUserID": "platform_user_id",
            "EmailAddress": "email_address",
            "XUID": "xuid",
        }

    # endregion static methods
