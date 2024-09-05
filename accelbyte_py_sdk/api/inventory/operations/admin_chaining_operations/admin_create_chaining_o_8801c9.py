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

from ...models import ApimodelsChainingOperationReq
from ...models import ApimodelsChainingOperationResp


class AdminCreateChainingOperations(Operation):
    """To Create Chaining Operation (AdminCreateChainingOperations)


    Create chaining Operations.
    This process will run sequentially
    1. remove item process
    2. consume item process
    3. update item process
    4. create item process
    if toSpecificInventory set as true, then inventoryId field will be mandatory, vice versa

    The behavior of each process is same with current admin level endpoint

    requestId: Request id(Optional), client should provide a unique request id to perform at most once execution, When a request id is resubmitted,
    it will return original successful response
    replayed : replayed, if true,the response is original successful response. This will not be included in response if client have not pass request id.

    Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [CREATE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/chainingOperations

        method: POST

        tags: ["Admin Chaining Operations"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsChainingOperationReq in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsChainingOperationResp (OK)

        400: Bad Request - ApimodelsChainingOperationResp (Bad Request)

        401: Unauthorized - ApimodelsChainingOperationResp (Unauthorized)

        403: Forbidden - ApimodelsChainingOperationResp (Forbidden)

        404: Not Found - ApimodelsChainingOperationResp (Not Found)

        500: Internal Server Error - ApimodelsChainingOperationResp (Internal Server Error)
    """

    # region fields

    _url: str = "/inventory/v1/admin/namespaces/{namespace}/chainingOperations"
    _method: str = "POST"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    body: ApimodelsChainingOperationReq  # REQUIRED in [body]
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
        self, value: ApimodelsChainingOperationReq
    ) -> AdminCreateChainingOperations:
        self.body = value
        return self

    def with_namespace(self, value: str) -> AdminCreateChainingOperations:
        self.namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = ApimodelsChainingOperationReq()
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
        Union[None, ApimodelsChainingOperationResp],
        Union[None, ApimodelsChainingOperationResp, HttpResponse],
    ]:
        """Parse the given response.

        200: OK - ApimodelsChainingOperationResp (OK)

        400: Bad Request - ApimodelsChainingOperationResp (Bad Request)

        401: Unauthorized - ApimodelsChainingOperationResp (Unauthorized)

        403: Forbidden - ApimodelsChainingOperationResp (Forbidden)

        404: Not Found - ApimodelsChainingOperationResp (Not Found)

        500: Internal Server Error - ApimodelsChainingOperationResp (Internal Server Error)

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
            return ApimodelsChainingOperationResp.create_from_dict(content), None
        if code == 400:
            return None, ApimodelsChainingOperationResp.create_from_dict(content)
        if code == 401:
            return None, ApimodelsChainingOperationResp.create_from_dict(content)
        if code == 403:
            return None, ApimodelsChainingOperationResp.create_from_dict(content)
        if code == 404:
            return None, ApimodelsChainingOperationResp.create_from_dict(content)
        if code == 500:
            return None, ApimodelsChainingOperationResp.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls, body: ApimodelsChainingOperationReq, namespace: str, **kwargs
    ) -> AdminCreateChainingOperations:
        instance = cls()
        instance.body = body
        instance.namespace = namespace
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AdminCreateChainingOperations:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = ApimodelsChainingOperationReq.create_from_dict(
                dict_["body"], include_empty=include_empty
            )
        elif include_empty:
            instance.body = ApimodelsChainingOperationReq()
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
            "body": True,
            "namespace": True,
        }

    # endregion static methods
