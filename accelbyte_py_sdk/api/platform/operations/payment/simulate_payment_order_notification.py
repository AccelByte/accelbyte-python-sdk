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
from ...models import NotificationProcessResult
from ...models import PaymentOrderNotifySimulation


class SimulatePaymentOrderNotification(Operation):
    """Simulate payment notification (simulatePaymentOrderNotification)

    <b>[TEST FACILITY ONLY] Forbidden in live environment. </b> Simulate payment
    notification on sandbox payment order, usually for test usage to simulate real
    currency payment notification.<br>Other detail info: <ul><li><i>Required
    permission</i>: resource="ADMIN:NAMESPACE:{namespace}:PAYMENT", action=4
    (UPDATE)</li><li><i>Returns</i>: notification process result</li></ul>


    Properties:
        url: /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}/simulate-notification

        method: PUT

        tags: ["Payment"]

        consumes: []

        produces: ["application/json"]

        security: bearer

        body: (body) OPTIONAL PaymentOrderNotifySimulation in body

        namespace: (namespace) REQUIRED str in path

        payment_order_no: (paymentOrderNo) REQUIRED str in path

    Responses:
        200: OK - NotificationProcessResult (successful operation)

        400: Bad Request - ErrorEntity (33322: Payment provider [{paymentProvider}] not supported)

        404: Not Found - ErrorEntity (33141: Payment Order [{paymentOrderNo}] does not exist)
    """

    # region fields

    _url: str = "/platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}/simulate-notification"
    _method: str = "PUT"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    body: PaymentOrderNotifySimulation                                                             # OPTIONAL in [body]
    namespace: str                                                                                 # REQUIRED in [path]
    payment_order_no: str                                                                          # REQUIRED in [path]

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
        return self.create_full_url(
            url=self.url,
            base_url=base_url,
            path_params=self.get_path_params(),
            query_params=self.get_query_params(),
        )

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "namespace",
            "payment_order_no",
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
        if hasattr(self, "payment_order_no"):
            result["paymentOrderNo"] = self.payment_order_no
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        if not hasattr(self, "payment_order_no") or self.payment_order_no is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_body(self, value: PaymentOrderNotifySimulation) -> SimulatePaymentOrderNotification:
        self.body = value
        return self

    def with_namespace(self, value: str) -> SimulatePaymentOrderNotification:
        self.namespace = value
        return self

    def with_payment_order_no(self, value: str) -> SimulatePaymentOrderNotification:
        self.payment_order_no = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = PaymentOrderNotifySimulation()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "payment_order_no") and self.payment_order_no:
            result["paymentOrderNo"] = str(self.payment_order_no)
        elif include_empty:
            result["paymentOrderNo"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, NotificationProcessResult], Union[None, ErrorEntity]]:
        """Parse the given response.

        200: OK - NotificationProcessResult (successful operation)

        400: Bad Request - ErrorEntity (33322: Payment provider [{paymentProvider}] not supported)

        404: Not Found - ErrorEntity (33141: Payment Order [{paymentOrderNo}] does not exist)
        """
        if code == 200:
            return NotificationProcessResult.create_from_dict(content), None
        if code == 400:
            return None, ErrorEntity.create_from_dict(content)
        if code == 404:
            return None, ErrorEntity.create_from_dict(content)
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
        payment_order_no: str,
        body: Optional[PaymentOrderNotifySimulation] = None,
    ) -> SimulatePaymentOrderNotification:
        instance = cls()
        instance.namespace = namespace
        instance.payment_order_no = payment_order_no
        if body is not None:
            instance.body = body
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> SimulatePaymentOrderNotification:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = PaymentOrderNotifySimulation.create_from_dict(dict_["body"], include_empty=include_empty)
        elif include_empty:
            instance.body = PaymentOrderNotifySimulation()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "paymentOrderNo" in dict_ and dict_["paymentOrderNo"] is not None:
            instance.payment_order_no = str(dict_["paymentOrderNo"])
        elif include_empty:
            instance.payment_order_no = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "namespace": "namespace",
            "paymentOrderNo": "payment_order_no",
        }

    # endregion static methods
