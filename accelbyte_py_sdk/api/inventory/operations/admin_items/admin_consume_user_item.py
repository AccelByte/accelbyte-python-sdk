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

from ...models import ApimodelsConsumeItemReq
from ...models import ApimodelsErrorResponse
from ...models import ApimodelsItemResp


class AdminConsumeUserItem(Operation):
    """To consume item (AdminConsumeUserItem)


    Consume user's own item
    Client should pass item ID in options if item type is OPTIONBOX
    Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [UPDATE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/consume

        method: POST

        tags: ["Admin Items"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsConsumeItemReq in body

        inventory_id: (inventoryId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        date_range_validation: (dateRangeValidation) OPTIONAL str in query

    Responses:
        200: OK - ApimodelsItemResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """

    # region fields

    _url: str = "/inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/consume"
    _method: str = "POST"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    body: ApimodelsConsumeItemReq  # REQUIRED in [body]
    inventory_id: str  # REQUIRED in [path]
    namespace: str  # REQUIRED in [path]
    user_id: str  # REQUIRED in [path]
    date_range_validation: str  # OPTIONAL in [query]

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
            "query": self.get_query_params(),
        }

    def get_body_params(self) -> Any:
        if not hasattr(self, "body") or self.body is None:
            return None
        return self.body.to_dict()

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "inventory_id"):
            result["inventoryId"] = self.inventory_id
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "user_id"):
            result["userId"] = self.user_id
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "date_range_validation"):
            result["dateRangeValidation"] = self.date_range_validation
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_body(self, value: ApimodelsConsumeItemReq) -> AdminConsumeUserItem:
        self.body = value
        return self

    def with_inventory_id(self, value: str) -> AdminConsumeUserItem:
        self.inventory_id = value
        return self

    def with_namespace(self, value: str) -> AdminConsumeUserItem:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> AdminConsumeUserItem:
        self.user_id = value
        return self

    def with_date_range_validation(self, value: str) -> AdminConsumeUserItem:
        self.date_range_validation = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = ApimodelsConsumeItemReq()
        if hasattr(self, "inventory_id") and self.inventory_id:
            result["inventoryId"] = str(self.inventory_id)
        elif include_empty:
            result["inventoryId"] = ""
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "date_range_validation") and self.date_range_validation:
            result["dateRangeValidation"] = str(self.date_range_validation)
        elif include_empty:
            result["dateRangeValidation"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ApimodelsItemResp],
        Union[None, ApimodelsErrorResponse, HttpResponse],
    ]:
        """Parse the given response.

        200: OK - ApimodelsItemResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        404: Not Found - ApimodelsErrorResponse (Not Found)

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
            return ApimodelsItemResp.create_from_dict(content), None
        if code == 400:
            return None, ApimodelsErrorResponse.create_from_dict(content)
        if code == 404:
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
        body: ApimodelsConsumeItemReq,
        inventory_id: str,
        namespace: str,
        user_id: str,
        date_range_validation: Optional[str] = None,
        **kwargs,
    ) -> AdminConsumeUserItem:
        instance = cls()
        instance.body = body
        instance.inventory_id = inventory_id
        instance.namespace = namespace
        instance.user_id = user_id
        if date_range_validation is not None:
            instance.date_range_validation = date_range_validation
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AdminConsumeUserItem:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = ApimodelsConsumeItemReq.create_from_dict(
                dict_["body"], include_empty=include_empty
            )
        elif include_empty:
            instance.body = ApimodelsConsumeItemReq()
        if "inventoryId" in dict_ and dict_["inventoryId"] is not None:
            instance.inventory_id = str(dict_["inventoryId"])
        elif include_empty:
            instance.inventory_id = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "dateRangeValidation" in dict_ and dict_["dateRangeValidation"] is not None:
            instance.date_range_validation = str(dict_["dateRangeValidation"])
        elif include_empty:
            instance.date_range_validation = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "inventoryId": "inventory_id",
            "namespace": "namespace",
            "userId": "user_id",
            "dateRangeValidation": "date_range_validation",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "body": True,
            "inventoryId": True,
            "namespace": True,
            "userId": True,
            "dateRangeValidation": False,
        }

    # endregion static methods
