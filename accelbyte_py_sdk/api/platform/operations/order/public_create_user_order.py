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
from ...models import OrderCreate
from ...models import OrderInfo
from ...models import ValidationErrorEntity


class PublicCreateUserOrder(Operation):
    """Create an order (publicCreateUserOrder)

    Create an order. The result contains the checkout link and payment token. User
    with permission SANDBOX will create sandbox order that not real paid for
    xsolla/alipay and not validate price for wxpay.<br>Other detail info:
    <ul><li><i>Required permission</i>:
    resource="NAMESPACE:{namespace}:USER:{userId}:ORDER", action=1
    (CREATE)</li><li><i>Optional permission(user with this permission will create
    sandbox order)</i>: resource="SANDBOX", action=1 (CREATE)</li><li>It will be
    forbidden while the user is banned: ORDER_INITIATE or
    ORDER_AND_PAYMENT</li><li><i>Returns</i>: created order</li></ul>


    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/orders

        method: POST

        tags: ["Order"]

        consumes: ["application/json"]

        produces: ["application/json"]

        security_type: bearer

        body: (body) OPTIONAL OrderCreate in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - OrderInfo (successful operation)

        400: Bad Request - ErrorEntity (32121: Order price mismatch | 32122: Item type [{itemType}] does not support | 32123: Item is not purchasable | 35123: Wallet [{walletId}] is inactive | 35124: Wallet [{currencyCode}] has insufficient balance | 38121: Duplicate permanent item exists)

        403: Forbidden - ErrorEntity (20016: action is banned)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}] | 30141: Store [{storeId}] does not exist in namespace [{namespace}] | 36141: Currency [{currencyCode}] does not exist in namespace [{namespace}] | 49147: Published season does not exist)

        409: Conflict - ErrorEntity (32175: Exceed item [{itemId}] max count [{maxCount}] per user | 32176: Exceed item [{itemId}] max count [{maxCount}] | 31177: Permanent item already owned | 49183: Pass item does not match published season pass | 49184: Tier item does not match published season tier | 49185: Season has not started | 49186: Pass already owned | 49187: Exceed max tier count | 20006: optimistic lock)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """

    # region fields

    _url: str = "/platform/public/namespaces/{namespace}/users/{userId}/orders"
    _method: str = "POST"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _security_type: Optional[str] = "bearer"
    _location_query: str = None

    body: OrderCreate                                                                              # OPTIONAL in [body]
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

    def with_body(self, value: OrderCreate) -> PublicCreateUserOrder:
        self.body = value
        return self

    def with_namespace(self, value: str) -> PublicCreateUserOrder:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> PublicCreateUserOrder:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = OrderCreate()
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
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, OrderInfo], Union[None, ErrorEntity, ValidationErrorEntity]]:
        """Parse the given response.

        201: Created - OrderInfo (successful operation)

        400: Bad Request - ErrorEntity (32121: Order price mismatch | 32122: Item type [{itemType}] does not support | 32123: Item is not purchasable | 35123: Wallet [{walletId}] is inactive | 35124: Wallet [{currencyCode}] has insufficient balance | 38121: Duplicate permanent item exists)

        403: Forbidden - ErrorEntity (20016: action is banned)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}] | 30141: Store [{storeId}] does not exist in namespace [{namespace}] | 36141: Currency [{currencyCode}] does not exist in namespace [{namespace}] | 49147: Published season does not exist)

        409: Conflict - ErrorEntity (32175: Exceed item [{itemId}] max count [{maxCount}] per user | 32176: Exceed item [{itemId}] max count [{maxCount}] | 31177: Permanent item already owned | 49183: Pass item does not match published season pass | 49184: Tier item does not match published season tier | 49185: Season has not started | 49186: Pass already owned | 49187: Exceed max tier count | 20006: optimistic lock)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
        """
        if code == 201:
            return OrderInfo.create_from_dict(content), None
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
        body: Optional[OrderCreate] = None,
    ) -> PublicCreateUserOrder:
        instance = cls()
        instance.namespace = namespace
        instance.user_id = user_id
        if body is not None:
            instance.body = body
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PublicCreateUserOrder:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = OrderCreate.create_from_dict(dict_["body"], include_empty=include_empty)
        elif include_empty:
            instance.body = OrderCreate()
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
