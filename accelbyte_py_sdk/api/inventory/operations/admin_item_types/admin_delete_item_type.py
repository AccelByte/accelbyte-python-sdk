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


class AdminDeleteItemType(Operation):
    """To delete an item type (AdminDeleteItemType)


    This endpoint will delete a item type by itemtypeName in a specified namespace.
    If the itemtypeName doesn't exist in a namespace, it'll return not found.

    Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:ITEMTYPE [DELETE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/itemtypes/{itemTypeName}

        method: DELETE

        tags: ["Admin Item Types"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        item_type_name: (itemTypeName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """

    # region fields

    _url: str = "/inventory/v1/admin/namespaces/{namespace}/itemtypes/{itemTypeName}"
    _method: str = "DELETE"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    item_type_name: str  # REQUIRED in [path]
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
            "path": self.get_path_params(),
        }

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "item_type_name"):
            result["itemTypeName"] = self.item_type_name
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_item_type_name(self, value: str) -> AdminDeleteItemType:
        self.item_type_name = value
        return self

    def with_namespace(self, value: str) -> AdminDeleteItemType:
        self.namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "item_type_name") and self.item_type_name:
            result["itemTypeName"] = str(self.item_type_name)
        elif include_empty:
            result["itemTypeName"] = ""
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
    ) -> Tuple[None, Union[None, ApimodelsErrorResponse, HttpResponse]]:
        """Parse the given response.

        204: No Content - (No Content)

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

        if code == 204:
            return None, None
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
        cls, item_type_name: str, namespace: str, **kwargs
    ) -> AdminDeleteItemType:
        instance = cls()
        instance.item_type_name = item_type_name
        instance.namespace = namespace
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AdminDeleteItemType:
        instance = cls()
        if "itemTypeName" in dict_ and dict_["itemTypeName"] is not None:
            instance.item_type_name = str(dict_["itemTypeName"])
        elif include_empty:
            instance.item_type_name = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "itemTypeName": "item_type_name",
            "namespace": "namespace",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "itemTypeName": True,
            "namespace": True,
        }

    # endregion static methods
