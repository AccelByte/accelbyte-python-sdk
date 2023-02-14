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
from ...models import OrderCreate
from ...models import OrderInfo
from ...models import ValidationErrorEntity


class PublicCreateUserOrder(Operation):
    """Create an order (publicCreateUserOrder)

    Create an order. The result contains the checkout link and payment token. User with permission SANDBOX will create sandbox order that not real paid for xsolla/alipay and not validate price for wxpay.
    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:ORDER", action=1 (CREATE)
      *  Optional permission(user with this permission will create sandbox order) : resource="SANDBOX", action=1 (CREATE)
      * It will be forbidden while the user is banned: ORDER_INITIATE or ORDER_AND_PAYMENT
      *  Returns : created order

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:ORDER [CREATE]

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/orders

        method: POST

        tags: ["Order"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL OrderCreate in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - OrderInfo (successful operation)

        400: Bad Request - ErrorEntity (32121: Order price mismatch | 32122: Item type [{itemType}] does not support | 32123: Item is not purchasable | 32125: The user does not meet the purchase conditions | 35123: Wallet [{walletId}] is inactive | 35124: Wallet [{currencyCode}] has insufficient balance | 38121: Duplicate permanent item exists)

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
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    body: OrderCreate  # OPTIONAL in [body]
    namespace: str  # REQUIRED in [path]
    user_id: str  # REQUIRED in [path]

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
        if hasattr(self, "user_id"):
            result["userId"] = self.user_id
        return result

    # endregion get_x_params methods

    # region is/has methods

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
            result["namespace"] = ""
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, OrderInfo],
        Union[None, ErrorEntity, HttpResponse, ValidationErrorEntity],
    ]:
        """Parse the given response.

        201: Created - OrderInfo (successful operation)

        400: Bad Request - ErrorEntity (32121: Order price mismatch | 32122: Item type [{itemType}] does not support | 32123: Item is not purchasable | 32125: The user does not meet the purchase conditions | 35123: Wallet [{walletId}] is inactive | 35124: Wallet [{currencyCode}] has insufficient balance | 38121: Duplicate permanent item exists)

        403: Forbidden - ErrorEntity (20016: action is banned)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}] | 30141: Store [{storeId}] does not exist in namespace [{namespace}] | 36141: Currency [{currencyCode}] does not exist in namespace [{namespace}] | 49147: Published season does not exist)

        409: Conflict - ErrorEntity (32175: Exceed item [{itemId}] max count [{maxCount}] per user | 32176: Exceed item [{itemId}] max count [{maxCount}] | 31177: Permanent item already owned | 49183: Pass item does not match published season pass | 49184: Tier item does not match published season tier | 49185: Season has not started | 49186: Pass already owned | 49187: Exceed max tier count | 20006: optimistic lock)

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

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

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
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PublicCreateUserOrder:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = OrderCreate.create_from_dict(
                dict_["body"], include_empty=include_empty
            )
        elif include_empty:
            instance.body = OrderCreate()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "namespace": "namespace",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "body": False,
            "namespace": True,
            "userId": True,
        }

    # endregion static methods
