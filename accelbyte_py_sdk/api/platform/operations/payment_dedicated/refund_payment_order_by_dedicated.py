# justice-platform-service (3.39.0)

# template file: justice_py_sdk_codegen/__main__.py

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
from ...models import PaymentOrderRefund
from ...models import PaymentOrderRefundResult
from ...models import ValidationErrorEntity


class RefundPaymentOrderByDedicated(Operation):
    """Refund payment order by dedicated server (refundPaymentOrderByDedicated)

    <p>This API is used to refund payment order by paymentOrderNo from non justice
    service. e.g. dedicated server. <ul><li>if the status field of response json
    is "REFUNDED", usually wallet paid, it indicates payment order already
    refunded</li><li>if the status field of response json is "REFUNDING", usually
    real money paid, platform will send notification to registered notify url once
    refund successfully</li> </ul></p><p><strong>Path
    Parameter:</strong></p><pre><table><tr><td>Parameter</td><td>Type</td><td>Required</td><td>Description</td></tr><tr><td>namespace</td><td>String</td><td>Yes</td><td>Namespace
    that payment order resides
    in</td></tr><tr><td>paymentOrderNo</td><td>String</td><td>Yes</td><td>Payment
    order number</td></tr></table></pre><p><strong>Request Body
    Parameters:</strong></p><pre><table><tr><td>Parameter</td><td>Type</td><td>Required</td><td>Description</td></tr><tr><td>description</td><td>String</td><td>Yes</td><td>Refund
    description</td></tr></table></pre><p><strong>Request Body
    Example:</strong></p><pre><code style='overflow: auto'>{ "description":
    "Repeated item." }</pre></code><h4>Refund Notification:</h4><p>It will send
    notification to configured web hook after refund successfully, http status
    code should return 200 or 204 once you resolve notification successfully,
    otherwise payment system will retry notification in
    interval</p><p><strong>Refund notification
    parameter:</strong></p><pre><table><tr><td>Parameter</td><td>Type</td><td>Required</td><td>Description</td></tr><tr><td>payload</td><td>String</td><td>Yes</td><td>Refund
    notification payload in json string
    </td></tr><tr><td>sign</td><td>String</td><td>Yes</td><td>sha1 hex signature
    for payload and private key</td></tr></table></pre><p><strong>Refund
    notification Example:</strong></p><pre><code style='overflow: auto'>{
    "payload": "{ "type": "payment", "nonceStr":
    "34c1dcf3eb58455eb161465bbfc0b590", "paymentOrderNo": "18081239088",
    "namespace": "accelbyte", "targetNamespace": "game1",
    "targetUserId": "94451623768940d58416ca33ca767ec3", "extOrderNo":
    "123456789", "sku": "sku", "extUserId": "678", "price": 100,
    "paymentProvider": "XSOLLA", "vat": 0, "salesTax": 0,
    "paymentProviderFee": 0, "paymentMethodFee": 0, "currency": {
    "currencyCode": "USD", "currencySymbol": "$", "currencyType":
    "REAL", "namespace": "accelbyte", "decimals": 2 }, "status":
    "REFUNDED", "createdTime": "2018-07-28T00:39:16.274Z", "chargedTime":
    "2018-07-28T00:39:16.274Z", "refundedTime": "2018-07-28T00:39:16.274Z"
    }", "sign":"e31fb92516cc9faaf50ad70343e1293acec6f3d5"
    }</pre></code><p><strong>Refund notification payload parameter
    list:</strong></p><pre><table><tr><td>Parameter</td><td>Type</td><td>Required</td><td>Description</td></tr><tr><td>type</td><td>String</td><td>Yes</td><td>Notification
    type:
    'payment'</td></tr><tr><td>paymentOrderNo</td><td>String</td><td>Yes</td><td>Payment
    system generated order
    number</td></tr><tr><td>extOrderNo</td><td>String</td><td>No</td><td>External
    order number that passed by
    invoker</td></tr><tr><td>namespace</td><td>String</td><td>Yes</td><td>Namespace
    that related payment order resides
    in</td></tr><tr><td>targetNamespace</td><td>String</td><td>Yes</td><td>The
    game
    namespace</td></tr><tr><td>targetUserId</td><td>String</td><td>Yes</td><td>The
    user id in game
    namespace</td></tr><tr><td>sku</td><td>String</td><td>No</td><td>Item
    identify, it will return if pass it when create
    payment</td></tr><tr><td>extUserId</td><td>String</td><td>No</td><td>External
    user id, can be character id, it will return if pass it when create
    payment</td></tr><tr><td>price</td><td>int</td><td>Yes</td><td>Price of
    item</td></tr><tr><td>paymentProvider</td><td>String</td><td>Yes</td><td>Payment
    provider:
    xsolla/alipay/wxpay/wallet</td></tr><tr><td>vat</td><td>int</td><td>Yes</td><td>Payment
    order VAT</td></tr><tr><td>salesTax</td><td>int</td><td>Yes</td><td>Payment
    order sales
    tax</td></tr><tr><td>paymentProviderFee</td><td>int</td><td>Yes</td><td>Payment
    provider
    fee</td></tr><tr><td>paymentMethodFee</td><td>int</td><td>Yes</td><td>Payment
    method fee</td></tr><tr><td>currency</td><td>Map</td><td>Yes</td><td>Payment
    order currency
    info</td></tr><tr><td>status</td><td>String</td><td>Yes</td><td>Payment order
    status</td></tr><tr><td>statusReason</td><td>String</td><td>No</td><td>Payment
    order refund status
    reason</td></tr><tr><td>createdTime</td><td>Datetime</td><td>No</td><td>The
    time of the order
    created</td></tr><tr><td>chargedTime</td><td>Datetime</td><td>No</td><td>The
    time of the order
    charged</td></tr><tr><td>refundedTime</td><td>Datetime</td><td>No</td><td>The
    time of the order
    refunded</td></tr><tr><td>customParameters</td><td>Map</td><td>No</td><td>custom
    parameters, will return if pass it when create
    payment</td></tr><tr><td>nonceStr</td><td>String</td><td>Yes</td><td>Random
    string, max length is 32, </td></tr></table></pre><p><strong>Currency info
    parameter
    list:</strong></p><pre><table><tr><td>Parameter</td><td>Type</td><td>Required</td><td>Description</td></tr><tr><td>currencyCode</td><td>String</td><td>Yes</td><td>Currency
    Code</td></tr><tr><td>currencySymbol</td><td>String</td><td>Yes</td><td>Currency
    Symbol</td></tr><tr><td>currencyType</td><td>String</td><td>Yes</td><td>Currency
    type(REAL/VIRTUAL)</td></tr><tr><td>namespace</td><td>String</td><td>Yes</td><td>Currency
    namespace</td></tr><tr><td>decimals</td><td>int</td><td>Yes</td><td>Currency
    decimals</td></tr></table></pre><h4>Encryption Rule:</h4><p>Concat payload
    json string and private key and then do sha1Hex.</p><h4>Other detail
    info:</h4> <ul><li><i>Token type</i>: client token</li><li><i>Required
    permission</i>: resource="ADMIN:NAMESPACE:{namespace}:PAYMENT", action=4
    (UPDATE)</li><li><b>cross namespace allowed</b></li></ul>


    Properties:
        url: /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}/refund

        method: PUT

        tags: ["Payment(Dedicated)"]

        consumes: ["application/json"]

        produces: ["application/json"]

        security_type: bearer

        body: (body) OPTIONAL PaymentOrderRefund in body

        namespace: (namespace) REQUIRED str in path

        payment_order_no: (paymentOrderNo) REQUIRED str in path

    Responses:
        200: OK - PaymentOrderRefundResult (successful operation)

        204: No Content - (Refund successfully)

        404: Not Found - ErrorEntity (33141: Payment Order [{paymentOrderNo}] does not exist)

        409: Conflict - ErrorEntity (33172: Payment order [{paymentOrderNo}] is not refundable)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """

    # region fields

    _url: str = "/platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}/refund"
    _method: str = "PUT"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _security_type: Optional[str] = "bearer"
    _location_query: str = None

    body: PaymentOrderRefund                                                                       # OPTIONAL in [body]
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
    def security_type(self) -> Optional[str]:
        return self._security_type

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

    def with_body(self, value: PaymentOrderRefund) -> RefundPaymentOrderByDedicated:
        self.body = value
        return self

    def with_namespace(self, value: str) -> RefundPaymentOrderByDedicated:
        self.namespace = value
        return self

    def with_payment_order_no(self, value: str) -> RefundPaymentOrderByDedicated:
        self.payment_order_no = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = PaymentOrderRefund()
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
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, HttpResponse, PaymentOrderRefundResult], Union[None, ErrorEntity, ValidationErrorEntity]]:
        """Parse the given response.

        200: OK - PaymentOrderRefundResult (successful operation)

        204: No Content - (Refund successfully)

        404: Not Found - ErrorEntity (33141: Payment Order [{paymentOrderNo}] does not exist)

        409: Conflict - ErrorEntity (33172: Payment order [{paymentOrderNo}] is not refundable)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
        """
        if code == 200:
            return PaymentOrderRefundResult.create_from_dict(content), None
        if code == 204:
            return HttpResponse.create(code, "No Content"), None
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
        payment_order_no: str,
        body: Optional[PaymentOrderRefund] = None,
    ) -> RefundPaymentOrderByDedicated:
        instance = cls()
        instance.namespace = namespace
        instance.payment_order_no = payment_order_no
        if body is not None:
            instance.body = body
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> RefundPaymentOrderByDedicated:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = PaymentOrderRefund.create_from_dict(dict_["body"], include_empty=include_empty)
        elif include_empty:
            instance.body = PaymentOrderRefund()
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
