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


class ApimodelTopicSubscription(Model):
    """Apimodel topic subscription (apimodel.TopicSubscription)

    Properties:
        app_id: (appId) REQUIRED str

        app_name: (appName) REQUIRED str

        queue_id: (queueId) REQUIRED str

        subscription_arn: (subscriptionArn) REQUIRED str

        subscription_id: (subscriptionId) REQUIRED str

        subscription_time: (subscriptionTime) REQUIRED str
    """

    # region fields

    app_id: str  # REQUIRED
    app_name: str  # REQUIRED
    queue_id: str  # REQUIRED
    subscription_arn: str  # REQUIRED
    subscription_id: str  # REQUIRED
    subscription_time: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_app_id(self, value: str) -> ApimodelTopicSubscription:
        self.app_id = value
        return self

    def with_app_name(self, value: str) -> ApimodelTopicSubscription:
        self.app_name = value
        return self

    def with_queue_id(self, value: str) -> ApimodelTopicSubscription:
        self.queue_id = value
        return self

    def with_subscription_arn(self, value: str) -> ApimodelTopicSubscription:
        self.subscription_arn = value
        return self

    def with_subscription_id(self, value: str) -> ApimodelTopicSubscription:
        self.subscription_id = value
        return self

    def with_subscription_time(self, value: str) -> ApimodelTopicSubscription:
        self.subscription_time = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "app_id"):
            result["appId"] = str(self.app_id)
        elif include_empty:
            result["appId"] = ""
        if hasattr(self, "app_name"):
            result["appName"] = str(self.app_name)
        elif include_empty:
            result["appName"] = ""
        if hasattr(self, "queue_id"):
            result["queueId"] = str(self.queue_id)
        elif include_empty:
            result["queueId"] = ""
        if hasattr(self, "subscription_arn"):
            result["subscriptionArn"] = str(self.subscription_arn)
        elif include_empty:
            result["subscriptionArn"] = ""
        if hasattr(self, "subscription_id"):
            result["subscriptionId"] = str(self.subscription_id)
        elif include_empty:
            result["subscriptionId"] = ""
        if hasattr(self, "subscription_time"):
            result["subscriptionTime"] = str(self.subscription_time)
        elif include_empty:
            result["subscriptionTime"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        app_id: str,
        app_name: str,
        queue_id: str,
        subscription_arn: str,
        subscription_id: str,
        subscription_time: str,
        **kwargs,
    ) -> ApimodelTopicSubscription:
        instance = cls()
        instance.app_id = app_id
        instance.app_name = app_name
        instance.queue_id = queue_id
        instance.subscription_arn = subscription_arn
        instance.subscription_id = subscription_id
        instance.subscription_time = subscription_time
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelTopicSubscription:
        instance = cls()
        if not dict_:
            return instance
        if "appId" in dict_ and dict_["appId"] is not None:
            instance.app_id = str(dict_["appId"])
        elif include_empty:
            instance.app_id = ""
        if "appName" in dict_ and dict_["appName"] is not None:
            instance.app_name = str(dict_["appName"])
        elif include_empty:
            instance.app_name = ""
        if "queueId" in dict_ and dict_["queueId"] is not None:
            instance.queue_id = str(dict_["queueId"])
        elif include_empty:
            instance.queue_id = ""
        if "subscriptionArn" in dict_ and dict_["subscriptionArn"] is not None:
            instance.subscription_arn = str(dict_["subscriptionArn"])
        elif include_empty:
            instance.subscription_arn = ""
        if "subscriptionId" in dict_ and dict_["subscriptionId"] is not None:
            instance.subscription_id = str(dict_["subscriptionId"])
        elif include_empty:
            instance.subscription_id = ""
        if "subscriptionTime" in dict_ and dict_["subscriptionTime"] is not None:
            instance.subscription_time = str(dict_["subscriptionTime"])
        elif include_empty:
            instance.subscription_time = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelTopicSubscription]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelTopicSubscription]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelTopicSubscription,
        List[ApimodelTopicSubscription],
        Dict[Any, ApimodelTopicSubscription],
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
            "appId": "app_id",
            "appName": "app_name",
            "queueId": "queue_id",
            "subscriptionArn": "subscription_arn",
            "subscriptionId": "subscription_id",
            "subscriptionTime": "subscription_time",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "appId": True,
            "appName": True,
            "queueId": True,
            "subscriptionArn": True,
            "subscriptionId": True,
            "subscriptionTime": True,
        }

    # endregion static methods
