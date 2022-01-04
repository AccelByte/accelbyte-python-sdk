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
from ...models import PaymentProcessResult
from ...models import PaymentToken


class Pay(Operation):
    """Do payment (pay)

    Do payment(For now, this only support checkout.com).<br>Other detail info:
    <ul><li><i>Returns</i>: Payment process result</li></ul>


    Properties:
        url: /platform/public/namespaces/{namespace}/payment/orders/{paymentOrderNo}/pay

        method: POST

        tags: ["PaymentStation"]

        consumes: ["application/json"]

        produces: ["application/json"]

        security_type: bearer

        body: (body) OPTIONAL PaymentToken in body

        namespace: (namespace) REQUIRED str in path

        payment_order_no: (paymentOrderNo) REQUIRED str in path

        payment_provider: (paymentProvider) OPTIONAL str in query

        zip_code: (zipCode) OPTIONAL str in query

    Responses:
        200: OK - PaymentProcessResult (successful operation)

        400: Bad Request - ErrorEntity (33322: Payment provider [{paymentProvider}] not supported)

        404: Not Found - ErrorEntity (33141: Payment Order [{paymentOrderNo}] does not exist)

        409: Conflict - ErrorEntity (33171: Invalid payment order status [{status}] for payment order [{paymentOrderNo}])
    """

    # region fields

    _url: str = "/platform/public/namespaces/{namespace}/payment/orders/{paymentOrderNo}/pay"
    _method: str = "POST"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _security_type: Optional[str] = "bearer"
    _location_query: str = None

    body: PaymentToken                                                                             # OPTIONAL in [body]
    namespace: str                                                                                 # REQUIRED in [path]
    payment_order_no: str                                                                          # REQUIRED in [path]
    payment_provider: str                                                                          # OPTIONAL in [query]
    zip_code: str                                                                                  # OPTIONAL in [query]

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
        if hasattr(self, "payment_order_no"):
            result["paymentOrderNo"] = self.payment_order_no
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "payment_provider"):
            result["paymentProvider"] = self.payment_provider
        if hasattr(self, "zip_code"):
            result["zipCode"] = self.zip_code
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

    def with_body(self, value: PaymentToken) -> Pay:
        self.body = value
        return self

    def with_namespace(self, value: str) -> Pay:
        self.namespace = value
        return self

    def with_payment_order_no(self, value: str) -> Pay:
        self.payment_order_no = value
        return self

    def with_payment_provider(self, value: str) -> Pay:
        self.payment_provider = value
        return self

    def with_zip_code(self, value: str) -> Pay:
        self.zip_code = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = PaymentToken()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "payment_order_no") and self.payment_order_no:
            result["paymentOrderNo"] = str(self.payment_order_no)
        elif include_empty:
            result["paymentOrderNo"] = str()
        if hasattr(self, "payment_provider") and self.payment_provider:
            result["paymentProvider"] = str(self.payment_provider)
        elif include_empty:
            result["paymentProvider"] = str()
        if hasattr(self, "zip_code") and self.zip_code:
            result["zipCode"] = str(self.zip_code)
        elif include_empty:
            result["zipCode"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, PaymentProcessResult], Union[None, ErrorEntity]]:
        """Parse the given response.

        200: OK - PaymentProcessResult (successful operation)

        400: Bad Request - ErrorEntity (33322: Payment provider [{paymentProvider}] not supported)

        404: Not Found - ErrorEntity (33141: Payment Order [{paymentOrderNo}] does not exist)

        409: Conflict - ErrorEntity (33171: Invalid payment order status [{status}] for payment order [{paymentOrderNo}])
        """
        if code == 200:
            return PaymentProcessResult.create_from_dict(content), None
        if code == 400:
            return None, ErrorEntity.create_from_dict(content)
        if code == 404:
            return None, ErrorEntity.create_from_dict(content)
        if code == 409:
            return None, ErrorEntity.create_from_dict(content)
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
        payment_order_no: str,
        body: Optional[PaymentToken] = None,
        payment_provider: Optional[str] = None,
        zip_code: Optional[str] = None,
    ) -> Pay:
        instance = cls()
        instance.namespace = namespace
        instance.payment_order_no = payment_order_no
        if body is not None:
            instance.body = body
        if payment_provider is not None:
            instance.payment_provider = payment_provider
        if zip_code is not None:
            instance.zip_code = zip_code
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> Pay:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = PaymentToken.create_from_dict(dict_["body"], include_empty=include_empty)
        elif include_empty:
            instance.body = PaymentToken()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "paymentOrderNo" in dict_ and dict_["paymentOrderNo"] is not None:
            instance.payment_order_no = str(dict_["paymentOrderNo"])
        elif include_empty:
            instance.payment_order_no = str()
        if "paymentProvider" in dict_ and dict_["paymentProvider"] is not None:
            instance.payment_provider = str(dict_["paymentProvider"])
        elif include_empty:
            instance.payment_provider = str()
        if "zipCode" in dict_ and dict_["zipCode"] is not None:
            instance.zip_code = str(dict_["zipCode"])
        elif include_empty:
            instance.zip_code = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "namespace": "namespace",
            "paymentOrderNo": "payment_order_no",
            "paymentProvider": "payment_provider",
            "zipCode": "zip_code",
        }

    # endregion static methods
