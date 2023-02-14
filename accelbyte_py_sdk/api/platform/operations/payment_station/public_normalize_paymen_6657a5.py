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
from .....core import StrEnum


class PaymentProviderEnum(StrEnum):
    ADYEN = "ADYEN"
    ALIPAY = "ALIPAY"
    CHECKOUT = "CHECKOUT"
    PAYPAL = "PAYPAL"
    STRIPE = "STRIPE"
    WALLET = "WALLET"
    WXPAY = "WXPAY"
    XSOLLA = "XSOLLA"


class PublicNormalizePaymentReturnUrl(Operation):
    """Normalize payment return url (publicNormalizePaymentReturnUrl)

    Normalize payment return url for payment provider
    Field                                                                                                                                                        | Type   | Required | Description
    -------------------------------------------------------------------------------------------------------------------------------------------------------------|--------|----------|-----------------------
    orderNo                                                                                                                                                      | String | Yes      | order no
    paymentStatus                                                                                                                                                | String | Yes      |

      * DONE: The payment was successfully completed.
      * CANCELLED: The payment was cancelled by the shopper before completion, or the shopper returned to the merchant's site before completing the transaction.
      * PENDING: Inform the shopper that you've received their order, and are waiting for the payment to be completed.

    When the shopper has completed the payment you will receive a successful AUTHORISATION.
      * RECEIVED: Inform the shopper that you've received their order, and are waiting for the payment to clear.
      * UNKNOWN: An error occurred during the payment processing.
      * FAILED: Shopper paid failed because of various reasons.


    reason                                                                                                                                                       | String | No       | payment status reason

    Other detail info:

      * xsolla : parameters 'user_id', 'foreinginvoice', 'invoice_id' and 'status' will be automatically added to the link
      *  adyen : https://docs.adyen.com/developers/checkout/web-sdk

    Properties:
        url: /platform/public/namespaces/{namespace}/payment/returnurl

        method: GET

        tags: ["PaymentStation"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        payer_id: (PayerID) OPTIONAL str in query

        foreinginvoice: (foreinginvoice) OPTIONAL str in query

        invoice_id: (invoice_id) OPTIONAL str in query

        payload: (payload) OPTIONAL str in query

        redirect_result: (redirectResult) OPTIONAL str in query

        result_code: (resultCode) OPTIONAL str in query

        session_id: (sessionId) OPTIONAL str in query

        status: (status) OPTIONAL str in query

        token: (token) OPTIONAL str in query

        type_: (type) OPTIONAL str in query

        user_id: (user_id) OPTIONAL str in query

        order_no: (orderNo) REQUIRED str in query

        payment_order_no: (paymentOrderNo) REQUIRED str in query

        payment_provider: (paymentProvider) REQUIRED Union[str, PaymentProviderEnum] in query

        return_url: (returnUrl) REQUIRED str in query

    Responses:
        204: No Content - (no content.(if query param 'returnUrl' is empty))

        307: Temporary Redirect - (successful operation.(if query param 'returnUrl' is not empty))
    """

    # region fields

    _url: str = "/platform/public/namespaces/{namespace}/payment/returnurl"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = []
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    payer_id: str  # OPTIONAL in [query]
    foreinginvoice: str  # OPTIONAL in [query]
    invoice_id: str  # OPTIONAL in [query]
    payload: str  # OPTIONAL in [query]
    redirect_result: str  # OPTIONAL in [query]
    result_code: str  # OPTIONAL in [query]
    session_id: str  # OPTIONAL in [query]
    status: str  # OPTIONAL in [query]
    token: str  # OPTIONAL in [query]
    type_: str  # OPTIONAL in [query]
    user_id: str  # OPTIONAL in [query]
    order_no: str  # REQUIRED in [query]
    payment_order_no: str  # REQUIRED in [query]
    payment_provider: Union[str, PaymentProviderEnum]  # REQUIRED in [query]
    return_url: str  # REQUIRED in [query]

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
            "path": self.get_path_params(),
            "query": self.get_query_params(),
        }

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "payer_id"):
            result["PayerID"] = self.payer_id
        if hasattr(self, "foreinginvoice"):
            result["foreinginvoice"] = self.foreinginvoice
        if hasattr(self, "invoice_id"):
            result["invoice_id"] = self.invoice_id
        if hasattr(self, "payload"):
            result["payload"] = self.payload
        if hasattr(self, "redirect_result"):
            result["redirectResult"] = self.redirect_result
        if hasattr(self, "result_code"):
            result["resultCode"] = self.result_code
        if hasattr(self, "session_id"):
            result["sessionId"] = self.session_id
        if hasattr(self, "status"):
            result["status"] = self.status
        if hasattr(self, "token"):
            result["token"] = self.token
        if hasattr(self, "type_"):
            result["type"] = self.type_
        if hasattr(self, "user_id"):
            result["user_id"] = self.user_id
        if hasattr(self, "order_no"):
            result["orderNo"] = self.order_no
        if hasattr(self, "payment_order_no"):
            result["paymentOrderNo"] = self.payment_order_no
        if hasattr(self, "payment_provider"):
            result["paymentProvider"] = self.payment_provider
        if hasattr(self, "return_url"):
            result["returnUrl"] = self.return_url
        return result

    # endregion get_x_params methods

    # region is/has methods

    # noinspection PyMethodMayBeStatic
    def has_redirects(self) -> bool:
        """Returns True if this operation has redirects, otherwise False.

        307: Temporary Redirect - (successful operation.(if query param 'returnUrl' is not empty))
        """
        return True

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> PublicNormalizePaymentReturnUrl:
        self.namespace = value
        return self

    def with_payer_id(self, value: str) -> PublicNormalizePaymentReturnUrl:
        self.payer_id = value
        return self

    def with_foreinginvoice(self, value: str) -> PublicNormalizePaymentReturnUrl:
        self.foreinginvoice = value
        return self

    def with_invoice_id(self, value: str) -> PublicNormalizePaymentReturnUrl:
        self.invoice_id = value
        return self

    def with_payload(self, value: str) -> PublicNormalizePaymentReturnUrl:
        self.payload = value
        return self

    def with_redirect_result(self, value: str) -> PublicNormalizePaymentReturnUrl:
        self.redirect_result = value
        return self

    def with_result_code(self, value: str) -> PublicNormalizePaymentReturnUrl:
        self.result_code = value
        return self

    def with_session_id(self, value: str) -> PublicNormalizePaymentReturnUrl:
        self.session_id = value
        return self

    def with_status(self, value: str) -> PublicNormalizePaymentReturnUrl:
        self.status = value
        return self

    def with_token(self, value: str) -> PublicNormalizePaymentReturnUrl:
        self.token = value
        return self

    def with_type_(self, value: str) -> PublicNormalizePaymentReturnUrl:
        self.type_ = value
        return self

    def with_user_id(self, value: str) -> PublicNormalizePaymentReturnUrl:
        self.user_id = value
        return self

    def with_order_no(self, value: str) -> PublicNormalizePaymentReturnUrl:
        self.order_no = value
        return self

    def with_payment_order_no(self, value: str) -> PublicNormalizePaymentReturnUrl:
        self.payment_order_no = value
        return self

    def with_payment_provider(
        self, value: Union[str, PaymentProviderEnum]
    ) -> PublicNormalizePaymentReturnUrl:
        self.payment_provider = value
        return self

    def with_return_url(self, value: str) -> PublicNormalizePaymentReturnUrl:
        self.return_url = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "payer_id") and self.payer_id:
            result["PayerID"] = str(self.payer_id)
        elif include_empty:
            result["PayerID"] = ""
        if hasattr(self, "foreinginvoice") and self.foreinginvoice:
            result["foreinginvoice"] = str(self.foreinginvoice)
        elif include_empty:
            result["foreinginvoice"] = ""
        if hasattr(self, "invoice_id") and self.invoice_id:
            result["invoice_id"] = str(self.invoice_id)
        elif include_empty:
            result["invoice_id"] = ""
        if hasattr(self, "payload") and self.payload:
            result["payload"] = str(self.payload)
        elif include_empty:
            result["payload"] = ""
        if hasattr(self, "redirect_result") and self.redirect_result:
            result["redirectResult"] = str(self.redirect_result)
        elif include_empty:
            result["redirectResult"] = ""
        if hasattr(self, "result_code") and self.result_code:
            result["resultCode"] = str(self.result_code)
        elif include_empty:
            result["resultCode"] = ""
        if hasattr(self, "session_id") and self.session_id:
            result["sessionId"] = str(self.session_id)
        elif include_empty:
            result["sessionId"] = ""
        if hasattr(self, "status") and self.status:
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = ""
        if hasattr(self, "token") and self.token:
            result["token"] = str(self.token)
        elif include_empty:
            result["token"] = ""
        if hasattr(self, "type_") and self.type_:
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = ""
        if hasattr(self, "user_id") and self.user_id:
            result["user_id"] = str(self.user_id)
        elif include_empty:
            result["user_id"] = ""
        if hasattr(self, "order_no") and self.order_no:
            result["orderNo"] = str(self.order_no)
        elif include_empty:
            result["orderNo"] = ""
        if hasattr(self, "payment_order_no") and self.payment_order_no:
            result["paymentOrderNo"] = str(self.payment_order_no)
        elif include_empty:
            result["paymentOrderNo"] = ""
        if hasattr(self, "payment_provider") and self.payment_provider:
            result["paymentProvider"] = str(self.payment_provider)
        elif include_empty:
            result["paymentProvider"] = Union[str, PaymentProviderEnum]()
        if hasattr(self, "return_url") and self.return_url:
            result["returnUrl"] = str(self.return_url)
        elif include_empty:
            result["returnUrl"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[Union[None, HttpResponse], Union[None, HttpResponse]]:
        """Parse the given response.

        204: No Content - (no content.(if query param 'returnUrl' is empty))

        307: Temporary Redirect - (successful operation.(if query param 'returnUrl' is not empty))

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

        if code == 204:
            return None, None
        if code == 307:
            return HttpResponse.create_redirect(code, content), None

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        order_no: str,
        payment_order_no: str,
        payment_provider: Union[str, PaymentProviderEnum],
        return_url: str,
        payer_id: Optional[str] = None,
        foreinginvoice: Optional[str] = None,
        invoice_id: Optional[str] = None,
        payload: Optional[str] = None,
        redirect_result: Optional[str] = None,
        result_code: Optional[str] = None,
        session_id: Optional[str] = None,
        status: Optional[str] = None,
        token: Optional[str] = None,
        type_: Optional[str] = None,
        user_id: Optional[str] = None,
    ) -> PublicNormalizePaymentReturnUrl:
        instance = cls()
        instance.namespace = namespace
        instance.order_no = order_no
        instance.payment_order_no = payment_order_no
        instance.payment_provider = payment_provider
        instance.return_url = return_url
        if payer_id is not None:
            instance.payer_id = payer_id
        if foreinginvoice is not None:
            instance.foreinginvoice = foreinginvoice
        if invoice_id is not None:
            instance.invoice_id = invoice_id
        if payload is not None:
            instance.payload = payload
        if redirect_result is not None:
            instance.redirect_result = redirect_result
        if result_code is not None:
            instance.result_code = result_code
        if session_id is not None:
            instance.session_id = session_id
        if status is not None:
            instance.status = status
        if token is not None:
            instance.token = token
        if type_ is not None:
            instance.type_ = type_
        if user_id is not None:
            instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PublicNormalizePaymentReturnUrl:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "PayerID" in dict_ and dict_["PayerID"] is not None:
            instance.payer_id = str(dict_["PayerID"])
        elif include_empty:
            instance.payer_id = ""
        if "foreinginvoice" in dict_ and dict_["foreinginvoice"] is not None:
            instance.foreinginvoice = str(dict_["foreinginvoice"])
        elif include_empty:
            instance.foreinginvoice = ""
        if "invoice_id" in dict_ and dict_["invoice_id"] is not None:
            instance.invoice_id = str(dict_["invoice_id"])
        elif include_empty:
            instance.invoice_id = ""
        if "payload" in dict_ and dict_["payload"] is not None:
            instance.payload = str(dict_["payload"])
        elif include_empty:
            instance.payload = ""
        if "redirectResult" in dict_ and dict_["redirectResult"] is not None:
            instance.redirect_result = str(dict_["redirectResult"])
        elif include_empty:
            instance.redirect_result = ""
        if "resultCode" in dict_ and dict_["resultCode"] is not None:
            instance.result_code = str(dict_["resultCode"])
        elif include_empty:
            instance.result_code = ""
        if "sessionId" in dict_ and dict_["sessionId"] is not None:
            instance.session_id = str(dict_["sessionId"])
        elif include_empty:
            instance.session_id = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = ""
        if "token" in dict_ and dict_["token"] is not None:
            instance.token = str(dict_["token"])
        elif include_empty:
            instance.token = ""
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = ""
        if "user_id" in dict_ and dict_["user_id"] is not None:
            instance.user_id = str(dict_["user_id"])
        elif include_empty:
            instance.user_id = ""
        if "orderNo" in dict_ and dict_["orderNo"] is not None:
            instance.order_no = str(dict_["orderNo"])
        elif include_empty:
            instance.order_no = ""
        if "paymentOrderNo" in dict_ and dict_["paymentOrderNo"] is not None:
            instance.payment_order_no = str(dict_["paymentOrderNo"])
        elif include_empty:
            instance.payment_order_no = ""
        if "paymentProvider" in dict_ and dict_["paymentProvider"] is not None:
            instance.payment_provider = str(dict_["paymentProvider"])
        elif include_empty:
            instance.payment_provider = Union[str, PaymentProviderEnum]()
        if "returnUrl" in dict_ and dict_["returnUrl"] is not None:
            instance.return_url = str(dict_["returnUrl"])
        elif include_empty:
            instance.return_url = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "PayerID": "payer_id",
            "foreinginvoice": "foreinginvoice",
            "invoice_id": "invoice_id",
            "payload": "payload",
            "redirectResult": "redirect_result",
            "resultCode": "result_code",
            "sessionId": "session_id",
            "status": "status",
            "token": "token",
            "type": "type_",
            "user_id": "user_id",
            "orderNo": "order_no",
            "paymentOrderNo": "payment_order_no",
            "paymentProvider": "payment_provider",
            "returnUrl": "return_url",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "PayerID": False,
            "foreinginvoice": False,
            "invoice_id": False,
            "payload": False,
            "redirectResult": False,
            "resultCode": False,
            "sessionId": False,
            "status": False,
            "token": False,
            "type": False,
            "user_id": False,
            "orderNo": True,
            "paymentOrderNo": True,
            "paymentProvider": True,
            "returnUrl": True,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "paymentProvider": [
                "ADYEN",
                "ALIPAY",
                "CHECKOUT",
                "PAYPAL",
                "STRIPE",
                "WALLET",
                "WXPAY",
                "XSOLLA",
            ],  # in query
        }

    # endregion static methods
