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

from ...models import ErrorEntity
from ...models import PaymentOrderRefund
from ...models import PaymentOrderRefundResult
from ...models import ValidationErrorEntity


class RefundPaymentOrderByDedicated(Operation):
    """Refund payment order by dedicated server (refundPaymentOrderByDedicated)

    This API is used to refund payment order by paymentOrderNo from non justice service. e.g. dedicated server.

      * if the status field of response json is "REFUNDED", usually wallet paid, it indicates payment order already refunded
      * if the status field of response json is "REFUNDING", usually real money paid, platform will send notification to registered notify url once refund successfully



    Path Parameter:


         Parameter     | Type   | Required | Description
        ---------------|--------|----------|-----------------------------------------
        namespace      | String | Yes      | Namespace that payment order resides in
        paymentOrderNo | String | Yes      | Payment order number



     Request Body Parameters:


         Parameter  | Type   | Required | Description
        ------------|--------|----------|--------------------
        description | String | Yes      | Refund description



     Request Body Example:


        {

                   "description": "Repeated item."

        }

    `

    #### Refund Notification:

    It will send notification to configured web hook after refund successfully, http status code should return 200 or 204 once you resolve notification successfully, otherwise payment system will retry notification in interval

     Refund notification parameter:


         Parameter | Type   | Required | Description
        -----------|--------|----------|------------------------------------------------
        payload    | String | Yes      | Refund notification payload in json string
        sign       | String | Yes      | sha1 hex signature for payload and private key



     Refund notification Example:


        {

               "payload": "{
                   "type": "payment",
                   "nonceStr": "34c1dcf3eb58455eb161465bbfc0b590",
                   "paymentOrderNo": "18081239088",
                   "namespace": "accelbyte",
                   "targetNamespace": "game1",
                   "targetUserId": "94451623768940d58416ca33ca767ec3",
                   "extOrderNo": "123456789",
                   "sku": "sku",
                   "extUserId": "678",
                   "price": 100,
                   "paymentProvider": "XSOLLA",
                   "vat": 0,
                   "salesTax": 0,
                   "paymentProviderFee": 0,
                   "paymentMethodFee": 0,
                   "currency": {
                           "currencyCode": "USD",
                           "currencySymbol": "$",
                           "currencyType": "REAL",
                           "namespace": "accelbyte",
                           "decimals": 2
                       },
                   "status": "REFUNDED",
                   "createdTime": "2018-07-28T00:39:16.274Z",
                   "chargedTime": "2018-07-28T00:39:16.274Z",
                   "refundedTime": "2018-07-28T00:39:16.274Z"
               }",

               "sign":"e31fb92516cc9faaf50ad70343e1293acec6f3d5"

        }

    `

     Refund notification payload parameter list:


         Parameter         | Type     | Required | Description
        -------------------|----------|----------|--------------------------------------------------------------------------------------
        type               | String   | Yes      | Notification type: 'payment'
        paymentOrderNo     | String   | Yes      | Payment system generated order number
        extOrderNo         | String   | No       | External order number that passed by invoker
        namespace          | String   | Yes      | Namespace that related payment order resides in
        targetNamespace    | String   | Yes      | The game namespace
        targetUserId       | String   | Yes      | The user id in game namespace
        sku                | String   | No       | Item identify, it will return if pass it when create payment
        extUserId          | String   | No       | External user id, can be character id, it will return if pass it when create payment
        price              | int      | Yes      | Price of item
        paymentProvider    | String   | Yes      | Payment provider: xsolla/alipay/wxpay/wallet
        vat                | int      | Yes      | Payment order VAT
        salesTax           | int      | Yes      | Payment order sales tax
        paymentProviderFee | int      | Yes      | Payment provider fee
        paymentMethodFee   | int      | Yes      | Payment method fee
        currency           | Map      | Yes      | Payment order currency info
        status             | String   | Yes      | Payment order status
        statusReason       | String   | No       | Payment order refund status reason
        createdTime        | Datetime | No       | The time of the order created
        chargedTime        | Datetime | No       | The time of the order charged
        refundedTime       | Datetime | No       | The time of the order refunded
        customParameters   | Map      | No       | custom parameters, will return if pass it when create payment
        nonceStr           | String   | Yes      | Random string, max length is 32,



    Currency info parameter list:


         Parameter     | Type   | Required | Description
        ---------------|--------|----------|-----------------------------
        currencyCode   | String | Yes      | Currency Code
        currencySymbol | String | Yes      | Currency Symbol
        currencyType   | String | Yes      | Currency type(REAL/VIRTUAL)
        namespace      | String | Yes      | Currency namespace
        decimals       | int    | Yes      | Currency decimals



    #### Encryption Rule:

    Concat payload json string and private key and then do sha1Hex.

    #### Other detail info:

      * Token type : client token
      *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:PAYMENT", action=4 (UPDATE)
      *  cross namespace allowed

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:PAYMENT [UPDATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}/refund

        method: PUT

        tags: ["Payment(Dedicated)"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

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

    _url: str = (
        "/platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}/refund"
    )
    _method: str = "PUT"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    body: PaymentOrderRefund  # OPTIONAL in [body]
    namespace: str  # REQUIRED in [path]
    payment_order_no: str  # REQUIRED in [path]

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
        }

    def get_body_params(self) -> Any:
        if not hasattr(self, "body") or self.body is None:
            return None
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
            result["namespace"] = ""
        if hasattr(self, "payment_order_no") and self.payment_order_no:
            result["paymentOrderNo"] = str(self.payment_order_no)
        elif include_empty:
            result["paymentOrderNo"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, PaymentOrderRefundResult],
        Union[None, ErrorEntity, HttpResponse, ValidationErrorEntity],
    ]:
        """Parse the given response.

        200: OK - PaymentOrderRefundResult (successful operation)

        204: No Content - (Refund successfully)

        404: Not Found - ErrorEntity (33141: Payment Order [{paymentOrderNo}] does not exist)

        409: Conflict - ErrorEntity (33172: Payment order [{paymentOrderNo}] is not refundable)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

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
            return PaymentOrderRefundResult.create_from_dict(content), None
        if code == 204:
            return None, None
        if code == 404:
            return None, ErrorEntity.create_from_dict(content)
        if code == 409:
            return None, ErrorEntity.create_from_dict(content)
        if code == 422:
            return None, ValidationErrorEntity.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

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
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RefundPaymentOrderByDedicated:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = PaymentOrderRefund.create_from_dict(
                dict_["body"], include_empty=include_empty
            )
        elif include_empty:
            instance.body = PaymentOrderRefund()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "paymentOrderNo" in dict_ and dict_["paymentOrderNo"] is not None:
            instance.payment_order_no = str(dict_["paymentOrderNo"])
        elif include_empty:
            instance.payment_order_no = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "namespace": "namespace",
            "paymentOrderNo": "payment_order_no",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "body": False,
            "namespace": True,
            "paymentOrderNo": True,
        }

    # endregion static methods
