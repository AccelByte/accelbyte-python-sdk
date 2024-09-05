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

# AccelByte Gaming Services Inventory Service

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ApimodelsErrorResponse
from ...models import ApimodelsInventoryConfigurationReq
from ...models import ApimodelsInventoryConfigurationResp


class AdminUpdateInventoryConfiguration(Operation):
    """To update inventory configuration (AdminUpdateInventoryConfiguration)


    Updating inventory configuration.
    There cannot be duplicate code per namespace.

    Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:CONFIGURATION [UPDATE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations/{inventoryConfigurationId}

        method: PUT

        tags: ["Admin Inventory Configurations"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsInventoryConfigurationReq in body

        inventory_configuration_id: (inventoryConfigurationId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsInventoryConfigurationResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        409: Conflict - ApimodelsErrorResponse (Conflict)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """

    # region fields

    _url: str = "/inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations/{inventoryConfigurationId}"
    _method: str = "PUT"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    body: ApimodelsInventoryConfigurationReq  # REQUIRED in [body]
    inventory_configuration_id: str  # REQUIRED in [path]
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
        if hasattr(self, "inventory_configuration_id"):
            result["inventoryConfigurationId"] = self.inventory_configuration_id
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_body(
        self, value: ApimodelsInventoryConfigurationReq
    ) -> AdminUpdateInventoryConfiguration:
        self.body = value
        return self

    def with_inventory_configuration_id(
        self, value: str
    ) -> AdminUpdateInventoryConfiguration:
        self.inventory_configuration_id = value
        return self

    def with_namespace(self, value: str) -> AdminUpdateInventoryConfiguration:
        self.namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = ApimodelsInventoryConfigurationReq()
        if (
            hasattr(self, "inventory_configuration_id")
            and self.inventory_configuration_id
        ):
            result["inventoryConfigurationId"] = str(self.inventory_configuration_id)
        elif include_empty:
            result["inventoryConfigurationId"] = ""
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
        Union[None, ApimodelsInventoryConfigurationResp],
        Union[None, ApimodelsErrorResponse, HttpResponse],
    ]:
        """Parse the given response.

        200: OK - ApimodelsInventoryConfigurationResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        409: Conflict - ApimodelsErrorResponse (Conflict)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)

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
            return ApimodelsInventoryConfigurationResp.create_from_dict(content), None
        if code == 400:
            return None, ApimodelsErrorResponse.create_from_dict(content)
        if code == 404:
            return None, ApimodelsErrorResponse.create_from_dict(content)
        if code == 409:
            return None, ApimodelsErrorResponse.create_from_dict(content)
        if code == 500:
            return None, ApimodelsErrorResponse.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        body: ApimodelsInventoryConfigurationReq,
        inventory_configuration_id: str,
        namespace: str,
        **kwargs,
    ) -> AdminUpdateInventoryConfiguration:
        instance = cls()
        instance.body = body
        instance.inventory_configuration_id = inventory_configuration_id
        instance.namespace = namespace
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AdminUpdateInventoryConfiguration:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = ApimodelsInventoryConfigurationReq.create_from_dict(
                dict_["body"], include_empty=include_empty
            )
        elif include_empty:
            instance.body = ApimodelsInventoryConfigurationReq()
        if (
            "inventoryConfigurationId" in dict_
            and dict_["inventoryConfigurationId"] is not None
        ):
            instance.inventory_configuration_id = str(dict_["inventoryConfigurationId"])
        elif include_empty:
            instance.inventory_configuration_id = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "inventoryConfigurationId": "inventory_configuration_id",
            "namespace": "namespace",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "body": True,
            "inventoryConfigurationId": True,
            "namespace": True,
        }

    # endregion static methods
