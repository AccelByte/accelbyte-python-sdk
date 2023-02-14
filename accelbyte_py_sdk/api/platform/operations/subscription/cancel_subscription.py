# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

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

# AccelByte Cloud Platform Service (4.23.0)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import CancelRequest
from ...models import ErrorEntity
from ...models import SubscriptionInfo


class CancelSubscription(Operation):
    """Cancel a subscription (cancelSubscription)

    Cancel a subscription, only ACTIVE subscription can be cancelled. Ensure successfully cancel, recommend at least 1 day before current period ends, otherwise it may be charging or charged.
    Set immediate true, the subscription will be terminated immediately, otherwise till the end of current billing cycle.
    Set force true, will ignore the error if subscription is during recurring charging.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:SUBSCRIPTION", action=4 (UPDATE)
      *  Returns : cancelled subscription

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:SUBSCRIPTION [UPDATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/cancel

        method: PUT

        tags: ["Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL CancelRequest in body

        namespace: (namespace) REQUIRED str in path

        subscription_id: (subscriptionId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        force: (force) OPTIONAL bool in query

    Responses:
        200: OK - SubscriptionInfo (successful operation)

        404: Not Found - ErrorEntity (40141: Subscription [{subscriptionId}] does not exist)

        409: Conflict - ErrorEntity (40171: Subscription [{subscriptionId}] is not active | 40172: Subscription [{subscriptionId}] is charging, waiting for payment notification)
    """

    # region fields

    _url: str = "/platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/cancel"
    _method: str = "PUT"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    body: CancelRequest  # OPTIONAL in [body]
    namespace: str  # REQUIRED in [path]
    subscription_id: str  # REQUIRED in [path]
    user_id: str  # REQUIRED in [path]
    force: bool  # OPTIONAL in [query]

    # endregion fields

    # region properties

    @property
    def url(self) -> str:
        return self._url

    @property
    def method(self) -> str:
        return self._method

    @property
    def consumes(self) -> List[str]:
        return self._consumes

    @property
    def produces(self) -> List[str]:
        return self._produces

    @property
    def securities(self) -> List[List[str]]:
        return self._securities

    @property
    def location_query(self) -> str:
        return self._location_query

    # endregion properties

    # region get methods

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "body": self.get_body_params(),
            "path": self.get_path_params(),
            "query": self.get_query_params(),
        }

    def get_body_params(self) -> Any:
        if not hasattr(self, "body") or self.body is None:
            return None
        return self.body.to_dict()

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "subscription_id"):
            result["subscriptionId"] = self.subscription_id
        if hasattr(self, "user_id"):
            result["userId"] = self.user_id
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "force"):
            result["force"] = self.force
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_body(self, value: CancelRequest) -> CancelSubscription:
        self.body = value
        return self

    def with_namespace(self, value: str) -> CancelSubscription:
        self.namespace = value
        return self

    def with_subscription_id(self, value: str) -> CancelSubscription:
        self.subscription_id = value
        return self

    def with_user_id(self, value: str) -> CancelSubscription:
        self.user_id = value
        return self

    def with_force(self, value: bool) -> CancelSubscription:
        self.force = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = CancelRequest()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "subscription_id") and self.subscription_id:
            result["subscriptionId"] = str(self.subscription_id)
        elif include_empty:
            result["subscriptionId"] = ""
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "force") and self.force:
            result["force"] = bool(self.force)
        elif include_empty:
            result["force"] = False
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[Union[None, SubscriptionInfo], Union[None, ErrorEntity, HttpResponse]]:
        """Parse the given response.

        200: OK - SubscriptionInfo (successful operation)

        404: Not Found - ErrorEntity (40141: Subscription [{subscriptionId}] does not exist)

        409: Conflict - ErrorEntity (40171: Subscription [{subscriptionId}] is not active | 40172: Subscription [{subscriptionId}] is charging, waiting for payment notification)

        ---: HttpResponse (Undocumented Response)

        ---: HttpResponse (Unexpected Content-Type Error)

        ---: HttpResponse (Unhandled Error)
        """
        pre_processed_response, error = self.pre_process_response(
            code=code, content_type=content_type, content=content
        )
        if error is not None:
            return None, None if error.is_no_content() else error
        code, content_type, content = pre_processed_response

        if code == 200:
            return SubscriptionInfo.create_from_dict(content), None
        if code == 404:
            return None, ErrorEntity.create_from_dict(content)
        if code == 409:
            return None, ErrorEntity.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        subscription_id: str,
        user_id: str,
        body: Optional[CancelRequest] = None,
        force: Optional[bool] = None,
    ) -> CancelSubscription:
        instance = cls()
        instance.namespace = namespace
        instance.subscription_id = subscription_id
        instance.user_id = user_id
        if body is not None:
            instance.body = body
        if force is not None:
            instance.force = force
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> CancelSubscription:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = CancelRequest.create_from_dict(
                dict_["body"], include_empty=include_empty
            )
        elif include_empty:
            instance.body = CancelRequest()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "subscriptionId" in dict_ and dict_["subscriptionId"] is not None:
            instance.subscription_id = str(dict_["subscriptionId"])
        elif include_empty:
            instance.subscription_id = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "force" in dict_ and dict_["force"] is not None:
            instance.force = bool(dict_["force"])
        elif include_empty:
            instance.force = False
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "namespace": "namespace",
            "subscriptionId": "subscription_id",
            "userId": "user_id",
            "force": "force",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "body": False,
            "namespace": True,
            "subscriptionId": True,
            "userId": True,
            "force": False,
        }

    # endregion static methods
