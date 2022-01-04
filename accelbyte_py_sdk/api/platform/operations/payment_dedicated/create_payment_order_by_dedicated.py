# justice-platform-service (3.40.0)

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

from .....core import Operation
from .....core import HttpResponse

from ...models import ErrorEntity
from ...models import ExternalPaymentOrderCreate
from ...models import PaymentOrderCreateResult
from ...models import ValidationErrorEntity


class CreatePaymentOrderByDedicated(Operation):
    """Create payment order by dedicated server (createPaymentOrderByDedicated)

    <p>This API is used to create payment order from non justice service. e.g.
    from dedicated server, the result contains the payment station
    url.</p><p><strong>Path
    Parameter:</strong></p><pre><table><tr><td>Parameter</td><td>Type</td><td>Required</td><td>Description</td></tr><tr><td>namespace</td><td>String</td><td>Yes</td><td>Namespace
    that payment order resides in, should be publisher namespace if it's a Steam
    like platform that share <br>payment config cross namespaces, otherwise it's
    the game namespace</td></tr></table><p><strong>Request Body
    Parameters:</strong></p><pre><table><tr><td>Parameter</td><td>Type</td><td>Required</td><td>Description</td></tr><tr><td>extOrderNo</td><td>String</td><td>Yes</td><td>External
    order number, it should be unique in invoker order
    system</td></tr><tr><td>sku</td><td>String</td><td>No</td><td>Item
    identity</td></tr><tr><td>targetNamespace</td><td>String</td><td>Yes</td><td>The
    game
    namespace</td></tr><tr><td>targetUserId</td><td>String</td><td>Yes</td><td>User
    id for the order owner in game
    namespace</td></tr><tr><td>extUserId</td><td>String</td><td>No</td><td>External
    user id, can be user character id
    </td></tr><tr><td>price</td><td>int</td><td>Yes</td><td>price which should be
    greater than 0</td></tr><tr><td>title</td><td>String</td><td>Yes</td><td>Item
    title</td></tr><tr><td>description</td><td>String</td><td>Yes</td><td>Item
    description</td></tr><tr><td>currencyCode</td><td>String</td><td>No</td><td>Currency
    code, default is
    USD</td></tr><tr><td>currencyNamespace</td><td>String</td><td>No</td><td>Currency
    namespace, default is publisher
    namespace</td></tr><tr><td>region</td><td>String</td><td>No</td><td>Country of
    the user, will get from user info if not
    present</td></tr><tr><td>language</td><td>String</td><td>No</td><td>Language
    of the user</td></tr><tr><td>sandbox</td><td>Boolean</td><td>No</td><td>set to
    true will create sandbox order that not real paid for xsolla/alipay and will
    not validate <br>price for
    wxpay.</td></tr><tr><td>returnUrl</td><td>String</td><td>No</td><td>customized
    return url for redirect once payment finished, leave unset to use
    configuration in
    <br>namespace</td></tr><tr><td>notifyUrl</td><td>String</td><td>No</td><td>customized
    notify url for payment web hook, leave unset to use configuration in
    namespace</td></tr><tr><td>customParameters</td><td>String</td><td>No</td><td>Custom
    parameters</td></tr></table></pre><p><strong>Request Body
    Example:</strong></p><pre><code style='overflow: auto'>{ "extOrderNo":
    "123456789", "sku": "sku", "targetNamespace": "game1", "targetUserId":
    "94451623768940d58416ca33ca767ec3", "extUserId": "678", "title":
    "Frostmourne", "description": "Here was power. Here was despair", "price":
    100, "region": "CN", "language": "zh-CN", "currencyCode": "USD",
    "currencyNamespace": "accelbyte" }</pre></code><h4>Payment
    Notification:</h4><p>After user complete the payment, it will send
    notification to configured web hook, http status code should return 200 or 204
    once you resolve notification successfully, otherwise payment system will
    retry notification in interval</p><p><strong>Payment notification
    parameter:</strong></p><pre><table><tr><td>Parameter</td><td>Type</td><td>Required</td><td>Description</td></tr><tr><td>payload</td><td>String</td><td>Yes</td><td>Payment
    notification payload in json string
    </td></tr><tr><td>sign</td><td>String</td><td>Yes</td><td>sha1 hex signature
    for payload and private key</td></tr></table></pre><p><strong>Payment
    notification parameter Example:</strong></p><pre><code style='overflow:
    auto'>{ "payload": "{ "type": "payment", "nonceStr":
    "34c1dcf3eb58455eb161465bbfc0b590", "paymentOrderNo": "18081239088",
    "namespace": "accelbyte", "targetNamespace": "game1",
    "targetUserId": "94451623768940d58416ca33ca767ec3", "extOrderNo":
    "123456789", "sku": "sku", "extUserId": "678", "price": 100,
    "paymentProvider": "XSOLLA", "vat": 0, "salesTax": 0,
    "paymentProviderFee": 0, "paymentMethodFee": 0, "currency": {
    "currencyCode": "USD", "currencySymbol": "$", "currencyType":
    "REAL", "namespace": "accelbyte", "decimals": 2 }, "status":
    "CHARGED", "createdTime": "2018-07-28T00:39:16.274Z", "chargedTime":
    "2018-07-28T00:39:16.274Z" }",
    "sign":"e31fb92516cc9faaf50ad70343e1293acec6f3d5"
    }</pre></code><p><strong>Payment notification payload parameter
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
    provider, allowed values:
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
    order status
    reason</td></tr><tr><td>createdTime</td><td>Datetime</td><td>No</td><td>The
    time of the order
    created</td></tr><tr><td>chargedTime</td><td>Datetime</td><td>No</td><td>The
    time of the order
    charged</td></tr><tr><td>customParameters</td><td>Map</td><td>No</td><td>custom
    parameters, will return if pass it when create
    payment</td></tr><tr><td>nonceStr</td><td>String</td><td>Yes</td><td>Random
    string, max length is 32, can be timestamp or
    uuid</td></tr></table></pre><p><strong>Currency info parameter
    list:</strong></p><pre><table><tr><td>Parameter</td><td>Type</td><td>Required</td><td>Description</td></tr><tr><td>currencyCode</td><td>String</td><td>Yes</td><td>Currency
    Code</td></tr><tr><td>currencySymbol</td><td>String</td><td>Yes</td><td>Currency
    Symbol</td></tr><tr><td>currencyType</td><td>String</td><td>Yes</td><td>Currency
    type(REAL/VIRTUAL)</td></tr><tr><td>namespace</td><td>String</td><td>Yes</td><td>Currency
    namespace</td></tr><tr><td>decimals</td><td>int</td><td>Yes</td><td>Currency
    decimals</td></tr></table></pre><h4>Encryption Rule:</h4><p>Concat payload
    json string and private key and then do sha1Hex.</p><h4>Other detail
    info:</h4> <ul><li><i>Token type</i>: client token</li><li><i>Required
    permission</i>: resource="ADMIN:NAMESPACE:{namespace}:PAYMENT", action=1
    (CREATE)</li><li><i>Optional permission(user with this permission will create
    sandbox order)</i>: resource="SANDBOX", action=1 (CREATE)</li><li>It will be
    forbidden while the target user is banned: PAYMENT_INITIATE or
    ORDER_AND_PAYMENT</li><li><b>cross namespace
    allowed</b></li><li><i>Returns</i>: created payment order info</li></ul>


    Properties:
        url: /platform/admin/namespaces/{namespace}/payment/orders

        method: POST

        tags: ["Payment(Dedicated)"]

        consumes: ["application/json"]

        produces: ["application/json"]

        security_type: bearer

        body: (body) OPTIONAL ExternalPaymentOrderCreate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - PaymentOrderCreateResult (successful operation)

        400: Bad Request - ErrorEntity (33121: Recurring payment failed with code: [{errorCode}] and message: [{errorMessage}] by provider: [{provider}] | 33122: Subscription not match when create payment order)

        403: Forbidden - ErrorEntity (20016: action is banned)

        404: Not Found - ErrorEntity (36141: Currency [{currencyCode}] does not exist in namespace [{namespace}] | 33141: Payment Order [{paymentOrderNo}] does not exist | 33145: Recurring token not found | 20008: user [{userId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (20006: optimistic lock | 33173: ExtOrderNo [{extOrderNo}] already exists in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """

    # region fields

    _url: str = "/platform/admin/namespaces/{namespace}/payment/orders"
    _method: str = "POST"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _security_type: Optional[str] = "bearer"
    _location_query: str = None

    body: ExternalPaymentOrderCreate                                                               # OPTIONAL in [body]
    namespace: str                                                                                 # REQUIRED in [path]

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
        ]

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "body": self.get_body_params(),
            "path": self.get_path_params(),
        }

    def get_body_params(self) -> Any:
        if not hasattr(self, "body") or self.body is None:
            return None
        return self.body.to_dict()

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_body(self, value: ExternalPaymentOrderCreate) -> CreatePaymentOrderByDedicated:
        self.body = value
        return self

    def with_namespace(self, value: str) -> CreatePaymentOrderByDedicated:
        self.namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = ExternalPaymentOrderCreate()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, PaymentOrderCreateResult], Union[None, ErrorEntity, ValidationErrorEntity]]:
        """Parse the given response.

        201: Created - PaymentOrderCreateResult (successful operation)

        400: Bad Request - ErrorEntity (33121: Recurring payment failed with code: [{errorCode}] and message: [{errorMessage}] by provider: [{provider}] | 33122: Subscription not match when create payment order)

        403: Forbidden - ErrorEntity (20016: action is banned)

        404: Not Found - ErrorEntity (36141: Currency [{currencyCode}] does not exist in namespace [{namespace}] | 33141: Payment Order [{paymentOrderNo}] does not exist | 33145: Recurring token not found | 20008: user [{userId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (20006: optimistic lock | 33173: ExtOrderNo [{extOrderNo}] already exists in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
        """
        if code == 201:
            return PaymentOrderCreateResult.create_from_dict(content), None
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
            if undocumented_response.is_no_content():
                return None, None
            return None, undocumented_response
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        body: Optional[ExternalPaymentOrderCreate] = None,
    ) -> CreatePaymentOrderByDedicated:
        instance = cls()
        instance.namespace = namespace
        if body is not None:
            instance.body = body
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> CreatePaymentOrderByDedicated:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = ExternalPaymentOrderCreate.create_from_dict(dict_["body"], include_empty=include_empty)
        elif include_empty:
            instance.body = ExternalPaymentOrderCreate()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "namespace": "namespace",
        }

    # endregion static methods
