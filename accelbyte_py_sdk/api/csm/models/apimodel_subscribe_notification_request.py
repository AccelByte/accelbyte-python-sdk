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

from ..models.apimodel_subscriber_item_request import ApimodelSubscriberItemRequest


class ApimodelSubscribeNotificationRequest(Model):
    """Apimodel subscribe notification request (apimodel.SubscribeNotificationRequest)

    Properties:
        notification_type: (notificationType) REQUIRED str

        subscribers: (subscribers) REQUIRED List[ApimodelSubscriberItemRequest]
    """

    # region fields

    notification_type: str  # REQUIRED
    subscribers: List[ApimodelSubscriberItemRequest]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_notification_type(
        self, value: str
    ) -> ApimodelSubscribeNotificationRequest:
        self.notification_type = value
        return self

    def with_subscribers(
        self, value: List[ApimodelSubscriberItemRequest]
    ) -> ApimodelSubscribeNotificationRequest:
        self.subscribers = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "notification_type"):
            result["notificationType"] = str(self.notification_type)
        elif include_empty:
            result["notificationType"] = ""
        if hasattr(self, "subscribers"):
            result["subscribers"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.subscribers
            ]
        elif include_empty:
            result["subscribers"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        notification_type: str,
        subscribers: List[ApimodelSubscriberItemRequest],
        **kwargs,
    ) -> ApimodelSubscribeNotificationRequest:
        instance = cls()
        instance.notification_type = notification_type
        instance.subscribers = subscribers
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelSubscribeNotificationRequest:
        instance = cls()
        if not dict_:
            return instance
        if "notificationType" in dict_ and dict_["notificationType"] is not None:
            instance.notification_type = str(dict_["notificationType"])
        elif include_empty:
            instance.notification_type = ""
        if "subscribers" in dict_ and dict_["subscribers"] is not None:
            instance.subscribers = [
                ApimodelSubscriberItemRequest.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["subscribers"]
            ]
        elif include_empty:
            instance.subscribers = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelSubscribeNotificationRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelSubscribeNotificationRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelSubscribeNotificationRequest,
        List[ApimodelSubscribeNotificationRequest],
        Dict[Any, ApimodelSubscribeNotificationRequest],
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
            "subscribers": "subscribers",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "notificationType": True,
            "subscribers": True,
        }

    # endregion static methods