# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

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

# AccelByte Gaming Services Platform Service

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import PlatformOwnership
from ...models import XblEntitlementOwnershipRequest


class GetXboxEntitlementOwnership(Operation):
    """Get Xbox entitlement ownership by product sku. (getXboxEntitlementOwnership)

    Get Xbox entitlement ownership by product sku.

    Properties:
        url: /platform/admin/namespaces/{namespace}/platforms/xbl/entitlements/{productSku}/ownership

        method: POST

        tags: ["Platform"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED XblEntitlementOwnershipRequest in body

        namespace: (namespace) REQUIRED str in path

        product_sku: (productSku) REQUIRED str in path

    Responses:
        200: OK - PlatformOwnership (successful operation)
    """

    # region fields

    _url: str = "/platform/admin/namespaces/{namespace}/platforms/xbl/entitlements/{productSku}/ownership"
    _method: str = "POST"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    body: XblEntitlementOwnershipRequest  # REQUIRED in [body]
    namespace: str  # REQUIRED in [path]
    product_sku: str  # REQUIRED in [path]

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
        if hasattr(self, "product_sku"):
            result["productSku"] = self.product_sku
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_body(
        self, value: XblEntitlementOwnershipRequest
    ) -> GetXboxEntitlementOwnership:
        self.body = value
        return self

    def with_namespace(self, value: str) -> GetXboxEntitlementOwnership:
        self.namespace = value
        return self

    def with_product_sku(self, value: str) -> GetXboxEntitlementOwnership:
        self.product_sku = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = XblEntitlementOwnershipRequest()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "product_sku") and self.product_sku:
            result["productSku"] = str(self.product_sku)
        elif include_empty:
            result["productSku"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[Union[None, PlatformOwnership], Union[None, HttpResponse]]:
        """Parse the given response.

        200: OK - PlatformOwnership (successful operation)

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
            return PlatformOwnership.create_from_dict(content), None

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        body: XblEntitlementOwnershipRequest,
        namespace: str,
        product_sku: str,
        **kwargs,
    ) -> GetXboxEntitlementOwnership:
        instance = cls()
        instance.body = body
        instance.namespace = namespace
        instance.product_sku = product_sku
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> GetXboxEntitlementOwnership:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = XblEntitlementOwnershipRequest.create_from_dict(
                dict_["body"], include_empty=include_empty
            )
        elif include_empty:
            instance.body = XblEntitlementOwnershipRequest()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "productSku" in dict_ and dict_["productSku"] is not None:
            instance.product_sku = str(dict_["productSku"])
        elif include_empty:
            instance.product_sku = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "namespace": "namespace",
            "productSku": "product_sku",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "body": True,
            "namespace": True,
            "productSku": True,
        }

    # endregion static methods
