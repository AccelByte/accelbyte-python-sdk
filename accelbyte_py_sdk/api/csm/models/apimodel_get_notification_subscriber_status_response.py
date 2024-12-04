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


class ApimodelGetNotificationSubscriberStatusResponse(Model):
    """Apimodel get notification subscriber status response (apimodel.GetNotificationSubscriberStatusResponse)

    Properties:
        max_subscription: (maxSubscription) REQUIRED int

        notification_type: (notificationType) REQUIRED str

        subscribed: (subscribed) REQUIRED bool

        subscriptions_count: (subscriptionsCount) REQUIRED int

        user_id: (userId) REQUIRED str

        display_name: (displayName) OPTIONAL str

        email_address: (emailAddress) OPTIONAL str
    """

    # region fields

    max_subscription: int  # REQUIRED
    notification_type: str  # REQUIRED
    subscribed: bool  # REQUIRED
    subscriptions_count: int  # REQUIRED
    user_id: str  # REQUIRED
    display_name: str  # OPTIONAL
    email_address: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_max_subscription(
        self, value: int
    ) -> ApimodelGetNotificationSubscriberStatusResponse:
        self.max_subscription = value
        return self

    def with_notification_type(
        self, value: str
    ) -> ApimodelGetNotificationSubscriberStatusResponse:
        self.notification_type = value
        return self

    def with_subscribed(
        self, value: bool
    ) -> ApimodelGetNotificationSubscriberStatusResponse:
        self.subscribed = value
        return self

    def with_subscriptions_count(
        self, value: int
    ) -> ApimodelGetNotificationSubscriberStatusResponse:
        self.subscriptions_count = value
        return self

    def with_user_id(
        self, value: str
    ) -> ApimodelGetNotificationSubscriberStatusResponse:
        self.user_id = value
        return self

    def with_display_name(
        self, value: str
    ) -> ApimodelGetNotificationSubscriberStatusResponse:
        self.display_name = value
        return self

    def with_email_address(
        self, value: str
    ) -> ApimodelGetNotificationSubscriberStatusResponse:
        self.email_address = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "max_subscription"):
            result["maxSubscription"] = int(self.max_subscription)
        elif include_empty:
            result["maxSubscription"] = 0
        if hasattr(self, "notification_type"):
            result["notificationType"] = str(self.notification_type)
        elif include_empty:
            result["notificationType"] = ""
        if hasattr(self, "subscribed"):
            result["subscribed"] = bool(self.subscribed)
        elif include_empty:
            result["subscribed"] = False
        if hasattr(self, "subscriptions_count"):
            result["subscriptionsCount"] = int(self.subscriptions_count)
        elif include_empty:
            result["subscriptionsCount"] = 0
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
        max_subscription: int,
        notification_type: str,
        subscribed: bool,
        subscriptions_count: int,
        user_id: str,
        display_name: Optional[str] = None,
        email_address: Optional[str] = None,
        **kwargs,
    ) -> ApimodelGetNotificationSubscriberStatusResponse:
        instance = cls()
        instance.max_subscription = max_subscription
        instance.notification_type = notification_type
        instance.subscribed = subscribed
        instance.subscriptions_count = subscriptions_count
        instance.user_id = user_id
        if display_name is not None:
            instance.display_name = display_name
        if email_address is not None:
            instance.email_address = email_address
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelGetNotificationSubscriberStatusResponse:
        instance = cls()
        if not dict_:
            return instance
        if "maxSubscription" in dict_ and dict_["maxSubscription"] is not None:
            instance.max_subscription = int(dict_["maxSubscription"])
        elif include_empty:
            instance.max_subscription = 0
        if "notificationType" in dict_ and dict_["notificationType"] is not None:
            instance.notification_type = str(dict_["notificationType"])
        elif include_empty:
            instance.notification_type = ""
        if "subscribed" in dict_ and dict_["subscribed"] is not None:
            instance.subscribed = bool(dict_["subscribed"])
        elif include_empty:
            instance.subscribed = False
        if "subscriptionsCount" in dict_ and dict_["subscriptionsCount"] is not None:
            instance.subscriptions_count = int(dict_["subscriptionsCount"])
        elif include_empty:
            instance.subscriptions_count = 0
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
    ) -> Dict[str, ApimodelGetNotificationSubscriberStatusResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelGetNotificationSubscriberStatusResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelGetNotificationSubscriberStatusResponse,
        List[ApimodelGetNotificationSubscriberStatusResponse],
        Dict[Any, ApimodelGetNotificationSubscriberStatusResponse],
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
            "maxSubscription": "max_subscription",
            "notificationType": "notification_type",
            "subscribed": "subscribed",
            "subscriptionsCount": "subscriptions_count",
            "userId": "user_id",
            "displayName": "display_name",
            "emailAddress": "email_address",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "maxSubscription": True,
            "notificationType": True,
            "subscribed": True,
            "subscriptionsCount": True,
            "userId": True,
            "displayName": False,
            "emailAddress": False,
        }

    # endregion static methods
