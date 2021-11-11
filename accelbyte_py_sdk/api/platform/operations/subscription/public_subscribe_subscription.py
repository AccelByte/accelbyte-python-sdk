# justice-platform-service (3.37.1)

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

from .....core import Operation
from .....core import HttpResponse

from ...models import ErrorEntity
from ...models import SubscribeRequest
from ...models import ValidationErrorEntity


class PublicSubscribeSubscription(Operation):
    """Subscribe a subscription (publicSubscribeSubscription)

    Subscribe a subscription. Support both real and virtual payment. Need go
    through payment flow using the paymentOrderNo if paymentFlowRequired
    true.<br><b>ACTIVE USER subscription can't do subscribe again.</b><br><b>The
    next billing date will be X(default 4) hours before the current period ends if
    correctly subscribed.</b><br>User with permission SANDBOX will create sandbox
    subscription that not real paid.<br>Other detail info: <ul><li><i>Required
    permission</i>: resource="NAMESPACE:{namespace}:USER:{userId}:SUBSCRIPTION",
    action=1 (CREATE)</li><li><i>Optional permission(user with this permission
    will create sandbox subscription)</i>: resource="SANDBOX", action=1
    (CREATE)</li><li>It will be forbidden while the user is banned: ORDER_INITIATE
    or ORDER_AND_PAYMENT</li><li><i>Returns</i>: created subscription</li></ul>


    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/subscriptions

        method: POST

        tags: ["Subscription"]

        consumes: ["application/json"]

        produces: ["application/json"]

        security: bearer

        body: (body) OPTIONAL SubscribeRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - (subscribe request processed)

        400: Bad Request - ErrorEntity (40121: Item type [{itemType}] does not support | 40122: Subscription already been subscribed by user | 40123: Currency [{currencyCode}] does not support | 35123: Wallet [{walletId}] is inactive | 35124: Wallet [{currencyCode}] has insufficient balance)

        403: Forbidden - ErrorEntity (20016: action is banned)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}] | 36141: Currency [{currencyCode}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (20006: optimistic lock | 40172: Subscription [{subscriptionId}] is charging, waiting for payment notification | 40173: Subscription [{subscriptionId}] current currency [{currentCurrency}] not match request currency [{requestCurrency}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """

    # region fields

    _url: str = "/platform/public/namespaces/{namespace}/users/{userId}/subscriptions"
    _method: str = "POST"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    body: SubscribeRequest                                                                         # OPTIONAL in [body]
    namespace: str                                                                                 # REQUIRED in [path]
    user_id: str                                                                                   # REQUIRED in [path]

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
    def security(self) -> Optional[str]:
        return self._security

    @property
    def location_query(self) -> str:
        return self._location_query

    # endregion properties

    # region get methods

    def get_full_url(self, base_url: Union[None, str] = None) -> str:
        result = base_url if base_url is not None else ""

        # path params
        url = self.url
        for k, v in self.get_path_params().items():
            url = url.replace(f"{{{k}}}", str(v))
        result += url

        return result

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "namespace",
            "user_id",
        ]

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "body": self.get_body_params(),
            "path": self.get_path_params(),
        }

    def get_body_params(self) -> Any:
        return self.body.to_dict()

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "user_id"):
            result["userId"] = self.user_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        if not hasattr(self, "user_id") or self.user_id is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_body(self, value: SubscribeRequest) -> PublicSubscribeSubscription:
        self.body = value
        return self

    def with_namespace(self, value: str) -> PublicSubscribeSubscription:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> PublicSubscribeSubscription:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = SubscribeRequest()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, HttpResponse], Union[None, ErrorEntity, ValidationErrorEntity]]:
        """Parse the given response.

        201: Created - (subscribe request processed)

        400: Bad Request - ErrorEntity (40121: Item type [{itemType}] does not support | 40122: Subscription already been subscribed by user | 40123: Currency [{currencyCode}] does not support | 35123: Wallet [{walletId}] is inactive | 35124: Wallet [{currencyCode}] has insufficient balance)

        403: Forbidden - ErrorEntity (20016: action is banned)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}] | 36141: Currency [{currencyCode}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (20006: optimistic lock | 40172: Subscription [{subscriptionId}] is charging, waiting for payment notification | 40173: Subscription [{subscriptionId}] current currency [{currentCurrency}] not match request currency [{requestCurrency}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
        """
        if code == 201:
            return HttpResponse.create(code, "Created"), None
        if code == 400:
            return None, ErrorEntity.create_from_dict(content)
        if code == 403:
            return None, ErrorEntity.create_from_dict(content)
        if code == 404:
            return None, ErrorEntity.create_from_dict(content)
        if code == 409:
            return None, ErrorEntity.create_from_dict(content)
        if code == 422:
            return None, ValidationErrorEntity.create_from_dict(content)
        was_handled, undocumented_response = HttpResponse.try_create_undocumented_response(code, content)
        if was_handled:
            return None, undocumented_response
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        user_id: str,
        body: Optional[SubscribeRequest] = None,
    ) -> PublicSubscribeSubscription:
        instance = cls()
        instance.namespace = namespace
        instance.user_id = user_id
        if body is not None:
            instance.body = body
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PublicSubscribeSubscription:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = SubscribeRequest.create_from_dict(dict_["body"], include_empty=include_empty)
        elif include_empty:
            instance.body = SubscribeRequest()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "namespace": "namespace",
            "userId": "user_id",
        }

    # endregion static methods
