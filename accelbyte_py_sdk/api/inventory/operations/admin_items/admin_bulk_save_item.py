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

from ...models import ApimodelsBulkSaveItemResp
from ...models import ApimodelsErrorResponse
from ...models import ApimodelsSaveItemReq


class AdminBulkSaveItem(Operation):
    """Bulk save items to inventory (AdminBulkSaveItem)

    **This endpoint is used used for bulk saving purchased items to the playerâs inventory based on the inventoryConfigurationCode with the following conditions:**
    - If the player doesn't have the inventory for the specified inventoryConfigurationCode, a new inventory will be created for the player.
    - If the player already has one, it will be added to the existing inventory.
    >- If the same item exists within the inventory, the quantity (qty) will be increased.
    >- If the inventory is full, the item cannot be added and the request will return the âFailedâ response.
    >- If a player has more than one inventory and the initial inventory is full, the service will check the available slot in the other inventory following the order of their creation date and time (createdAt).

    - For E-commerce items:
    >- Attributes such as slotUsed, serverCustomAttributes, customAttributes, and type will be overridden by the attributes configured in the AccelByte Gaming Services (AGS) Store.
    >- Storing E-commerce items in a particular slot will follow its entitlement and item configuration, such as durable, consumable, stackable and non-stackable.
    >- The quantity is dynamically set based on an itemâs useCount configured in Store. When saving an item, the specified quantity will be multiplied by configured useCount for that particular item. For example, if an Item is configured with a useCount of 5 in the AGS Store and it is saved with a qty of 2, the itemâs quantity will be stored as 10 in the playerâs inventory.

    **When configuring your request, note the following:**
    - The source field is mandatory for determining the source of the item. The supported values are OTHER (for items coming from other sources) and E-commerce for items coming from the E-commerce integration.
    - For other-sourced items, the type can be manually defined when saving the item.
    - A maximum of 10 items can be saved in a single bulk call.

    You must have this permission to access this endpoint:
    **Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [CREATE]**

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/users/{userId}/items/bulk

        method: POST

        tags: ["Admin Items"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[ApimodelsSaveItemReq] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[ApimodelsBulkSaveItemResp] (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        401: Unauthorized - ApimodelsErrorResponse (Unauthorized)

        403: Forbidden - ApimodelsErrorResponse (Forbidden)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        422: Unprocessable Entity - ApimodelsErrorResponse (Unprocessable Entity)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """

    # region fields

    _url: str = "/inventory/v1/admin/namespaces/{namespace}/users/{userId}/items/bulk"
    _method: str = "POST"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    body: List[ApimodelsSaveItemReq]  # REQUIRED in [body]
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
        return [i.to_dict() for i in self.body]

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

    def with_body(self, value: List[ApimodelsSaveItemReq]) -> AdminBulkSaveItem:
        self.body = value
        return self

    def with_namespace(self, value: str) -> AdminBulkSaveItem:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> AdminBulkSaveItem:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.body
            ]
        elif include_empty:
            result["body"] = []
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
        Union[None, List[ApimodelsBulkSaveItemResp]],
        Union[None, ApimodelsErrorResponse, HttpResponse],
    ]:
        """Parse the given response.

        200: OK - List[ApimodelsBulkSaveItemResp] (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        401: Unauthorized - ApimodelsErrorResponse (Unauthorized)

        403: Forbidden - ApimodelsErrorResponse (Forbidden)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        422: Unprocessable Entity - ApimodelsErrorResponse (Unprocessable Entity)

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
            return [
                ApimodelsBulkSaveItemResp.create_from_dict(i) for i in content
            ], None
        if code == 400:
            return None, ApimodelsErrorResponse.create_from_dict(content)
        if code == 401:
            return None, ApimodelsErrorResponse.create_from_dict(content)
        if code == 403:
            return None, ApimodelsErrorResponse.create_from_dict(content)
        if code == 404:
            return None, ApimodelsErrorResponse.create_from_dict(content)
        if code == 422:
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
        cls, body: List[ApimodelsSaveItemReq], namespace: str, user_id: str, **kwargs
    ) -> AdminBulkSaveItem:
        instance = cls()
        instance.body = body
        instance.namespace = namespace
        instance.user_id = user_id
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AdminBulkSaveItem:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = [
                ApimodelsSaveItemReq.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["body"]
            ]
        elif include_empty:
            instance.body = []
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
            "body": True,
            "namespace": True,
            "userId": True,
        }

    # endregion static methods
