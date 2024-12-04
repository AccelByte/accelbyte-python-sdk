# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Custom Service Manager

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


class ApimodelGetNotificationSubscriberItem(Model):
    """Apimodel get notification subscriber item (apimodel.GetNotificationSubscriberItem)

    Properties:
        notification_type: (notificationType) REQUIRED Dict[str, bool]

        subscription_id: (subscriptionId) REQUIRED str

        user_id: (userId) REQUIRED str

        display_name: (displayName) OPTIONAL str

        email_address: (emailAddress) OPTIONAL str
    """

    # region fields

    notification_type: Dict[str, bool]  # REQUIRED
    subscription_id: str  # REQUIRED
    user_id: str  # REQUIRED
    display_name: str  # OPTIONAL
    email_address: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_notification_type(
        self, value: Dict[str, bool]
    ) -> ApimodelGetNotificationSubscriberItem:
        self.notification_type = value
        return self

    def with_subscription_id(self, value: str) -> ApimodelGetNotificationSubscriberItem:
        self.subscription_id = value
        return self

    def with_user_id(self, value: str) -> ApimodelGetNotificationSubscriberItem:
        self.user_id = value
        return self

    def with_display_name(self, value: str) -> ApimodelGetNotificationSubscriberItem:
        self.display_name = value
        return self

    def with_email_address(self, value: str) -> ApimodelGetNotificationSubscriberItem:
        self.email_address = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "notification_type"):
            result["notificationType"] = {
                str(k0): bool(v0) for k0, v0 in self.notification_type.items()
            }
        elif include_empty:
            result["notificationType"] = {}
        if hasattr(self, "subscription_id"):
            result["subscriptionId"] = str(self.subscription_id)
        elif include_empty:
            result["subscriptionId"] = ""
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
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        notification_type: Dict[str, bool],
        subscription_id: str,
        user_id: str,
        display_name: Optional[str] = None,
        email_address: Optional[str] = None,
        **kwargs,
    ) -> ApimodelGetNotificationSubscriberItem:
        instance = cls()
        instance.notification_type = notification_type
        instance.subscription_id = subscription_id
        instance.user_id = user_id
        if display_name is not None:
            instance.display_name = display_name
        if email_address is not None:
            instance.email_address = email_address
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelGetNotificationSubscriberItem:
        instance = cls()
        if not dict_:
            return instance
        if "notificationType" in dict_ and dict_["notificationType"] is not None:
            instance.notification_type = {
                str(k0): bool(v0) for k0, v0 in dict_["notificationType"].items()
            }
        elif include_empty:
            instance.notification_type = {}
        if "subscriptionId" in dict_ and dict_["subscriptionId"] is not None:
            instance.subscription_id = str(dict_["subscriptionId"])
        elif include_empty:
            instance.subscription_id = ""
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
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelGetNotificationSubscriberItem]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelGetNotificationSubscriberItem]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelGetNotificationSubscriberItem,
        List[ApimodelGetNotificationSubscriberItem],
        Dict[Any, ApimodelGetNotificationSubscriberItem],
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
            "notificationType": "notification_type",
            "subscriptionId": "subscription_id",
            "userId": "user_id",
            "displayName": "display_name",
            "emailAddress": "email_address",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "notificationType": True,
            "subscriptionId": True,
            "userId": True,
            "displayName": False,
            "emailAddress": False,
        }

    # endregion static methods
