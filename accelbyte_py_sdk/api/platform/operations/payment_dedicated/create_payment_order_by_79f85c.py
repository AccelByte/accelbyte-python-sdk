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

# AccelByte Cloud Platform Service (4.17.0)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ErrorEntity
from ...models import ExternalPaymentOrderCreate
from ...models import PaymentOrderCreateResult
from ...models import ValidationErrorEntity


class CreatePaymentOrderByDedicated(Operation):
    """Create payment order by dedicated server (createPaymentOrderByDedicated)

    This API is used to create payment order from non justice service. e.g. from dedicated server, the result contains the payment station url.

     Path Parameter:


         Parameter                                                         | Type   | Required | Description
        -------------------------------------------------------------------|--------|----------|-----------------------------------------------------------------------------------------------------------------
        namespace                                                          | String | Yes      | Namespace that payment order resides in, should be publisher namespace if it's a Steam like platform that share
        payment config cross namespaces, otherwise it's the game namespace



         Request Body Parameters:


         Parameter        | Type    | Required | Description
        ------------------|---------|----------|--------------------------------------------------------------------------------------------------
        extOrderNo        | String  | Yes      | External order number, it should be unique in invoker order system
        sku               | String  | No       | Item identity
        targetNamespace   | String  | Yes      | The game namespace
        targetUserId      | String  | Yes      | User id for the order owner in game namespace
        extUserId         | String  | No       | External user id, can be user character id
        price             | int     | Yes      | price which should be greater than 0
        title             | String  | Yes      | Item title
        description       | String  | Yes      | Item description
        currencyCode      | String  | No       | Currency code, default is USD
        currencyNamespace | String  | No       | Currency namespace, default is publisher namespace
        region            | String  | No       | Country of the user, will get from user info if not present
        language          | String  | No       | Language of the user
        sandbox           | Boolean | No       | set to true will create sandbox order that not real paid for xsolla/alipay and will not validate
        price for wxpay.
        returnUrl         | String  | No       | customized return url for redirect once payment finished, leave unset to use configuration in
        namespace
        notifyUrl         | String  | No       | customized notify url for payment web hook, leave unset to use configuration in namespace
        customParameters  | String  | No       | Custom parameters



     Request Body Example:


        {

                   "extOrderNo": "123456789",
                   "sku": "sku",
                   "targetNamespace": "game1",
                   "targetUserId": "94451623768940d58416ca33ca767ec3",
                   "extUserId": "678",
                   "title": "Frostmourne",
                   "description": "Here was power. Here was despair",
                   "price": 100,
                   "region": "CN",
                   "language": "zh-CN",
                   "currencyCode": "USD",
                   "currencyNamespace": "accelbyte"

        }

    `

    #### Payment Notification:

    After user complete the payment, it will send notification to configured web hook, http status code should return 200 or 204 once you resolve notification successfully, otherwise payment system will retry notification in interval

     Payment notification parameter:


         Parameter | Type   | Required | Description
        -----------|--------|----------|------------------------------------------------
        payload    | String | Yes      | Payment notification payload in json string
        sign       | String | Yes      | sha1 hex signature for payload and private key



     Payment notification parameter Example:


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
                   "status": "CHARGED",
                   "createdTime": "2018-07-28T00:39:16.274Z",
                   "chargedTime": "2018-07-28T00:39:16.274Z"
               }",

               "sign":"e31fb92516cc9faaf50ad70343e1293acec6f3d5"

        }

    `

     Payment notification payload parameter list:


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
        paymentProvider    | String   | Yes      | Payment provider, allowed values: xsolla/alipay/wxpay/wallet
        vat                | int      | Yes      | Payment order VAT
        salesTax           | int      | Yes      | Payment order sales tax
        paymentProviderFee | int      | Yes      | Payment provider fee
        paymentMethodFee   | int      | Yes      | Payment method fee
        currency           | Map      | Yes      | Payment order currency info
        status             | String   | Yes      | Payment order status
        statusReason       | String   | No       | Payment order status reason
        createdTime        | Datetime | No       | The time of the order created
        chargedTime        | Datetime | No       | The time of the order charged
        customParameters   | Map      | No       | custom parameters, will return if pass it when create payment
        nonceStr           | String   | Yes      | Random string, max length is 32, can be timestamp or uuid



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
      *  Required permission : resource="ADMIN:NAMESPACE:{namespace}:PAYMENT", action=1 (CREATE)
      *  Optional permission(user with this permission will create sandbox order) : resource="SANDBOX", action=1 (CREATE)
      * It will be forbidden while the target user is banned: PAYMENT_INITIATE or ORDER_AND_PAYMENT
      *  cross namespace allowed
      *  Returns : created payment order info

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:PAYMENT [CREATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/payment/orders

        method: POST

        tags: ["Payment(Dedicated)"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

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
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    body: ExternalPaymentOrderCreate  # OPTIONAL in [body]
    namespace: str  # REQUIRED in [path]

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
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_body(
        self, value: ExternalPaymentOrderCreate
    ) -> CreatePaymentOrderByDedicated:
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
            result["namespace"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, PaymentOrderCreateResult],
        Union[None, ErrorEntity, HttpResponse, ValidationErrorEntity],
    ]:
        """Parse the given response.

        201: Created - PaymentOrderCreateResult (successful operation)

        400: Bad Request - ErrorEntity (33121: Recurring payment failed with code: [{errorCode}] and message: [{errorMessage}] by provider: [{provider}] | 33122: Subscription not match when create payment order)

        403: Forbidden - ErrorEntity (20016: action is banned)

        404: Not Found - ErrorEntity (36141: Currency [{currencyCode}] does not exist in namespace [{namespace}] | 33141: Payment Order [{paymentOrderNo}] does not exist | 33145: Recurring token not found | 20008: user [{userId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (20006: optimistic lock | 33173: ExtOrderNo [{extOrderNo}] already exists in namespace [{namespace}])

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

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

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
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> CreatePaymentOrderByDedicated:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = ExternalPaymentOrderCreate.create_from_dict(
                dict_["body"], include_empty=include_empty
            )
        elif include_empty:
            instance.body = ExternalPaymentOrderCreate()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "namespace": "namespace",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "body": False,
            "namespace": True,
        }

    # endregion static methods
