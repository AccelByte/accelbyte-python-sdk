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
from .....core import deprecated

from ...models import ErrorEntity
from ...models import StoreInfo


class ImportStore(Operation):
    """Import a store (importStore)

    This API is used to import a store.

    This api has been deprecated, pls use /v2/admin/namespaces/{namespace}/stores/import to import store.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=4 (UPDATE)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [UPDATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/import

        method: PUT

        tags: ["Store"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        file: (file) OPTIONAL Any in form_data

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) OPTIONAL str in query

    Responses:
        200: OK - StoreInfo (successful operation)

        400: Bad Request - ErrorEntity (30121: Store data is invalid | 30122: Store's meta mismatch | 36141: Currency [{currencyCode}] does not exist in namespace [{namespace}] | 30122: Item [{itemId}] does not exist in namespace [{namespace}] | 30375: Item id [{itemId}] of sku [{sku}] is duplicate with un-published deleted item in namespace [{namespace}] | 37041: Ticket booth [{boothName}] does not exist in namespace [{namespace}])

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])
    """

    # region fields

    _url: str = "/platform/admin/namespaces/{namespace}/stores/import"
    _method: str = "PUT"
    _consumes: List[str] = ["multipart/form-data"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    file: Any  # OPTIONAL in [form_data]
    namespace: str  # REQUIRED in [path]
    store_id: str  # OPTIONAL in [query]

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
            "form_data": self.get_form_data_params(),
            "path": self.get_path_params(),
            "query": self.get_query_params(),
        }

    def get_form_data_params(self) -> dict:
        result = {}
        if hasattr(self, "file"):
            result["file"] = self.file
        return result

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "store_id"):
            result["storeId"] = self.store_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_file(self, value: Any) -> ImportStore:
        self.file = value
        return self

    def with_namespace(self, value: str) -> ImportStore:
        self.namespace = value
        return self

    def with_store_id(self, value: str) -> ImportStore:
        self.store_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "file") and self.file:
            result["file"] = Any(self.file)
        elif include_empty:
            result["file"] = Any()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "store_id") and self.store_id:
            result["storeId"] = str(self.store_id)
        elif include_empty:
            result["storeId"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[Union[None, StoreInfo], Union[None, ErrorEntity, HttpResponse]]:
        """Parse the given response.

        200: OK - StoreInfo (successful operation)

        400: Bad Request - ErrorEntity (30121: Store data is invalid | 30122: Store's meta mismatch | 36141: Currency [{currencyCode}] does not exist in namespace [{namespace}] | 30122: Item [{itemId}] does not exist in namespace [{namespace}] | 30375: Item id [{itemId}] of sku [{sku}] is duplicate with un-published deleted item in namespace [{namespace}] | 37041: Ticket booth [{boothName}] does not exist in namespace [{namespace}])

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}])

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
            return StoreInfo.create_from_dict(content), None
        if code == 400:
            return None, ErrorEntity.create_from_dict(content)
        if code == 404:
            return None, ErrorEntity.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        file: Optional[Any] = None,
        store_id: Optional[str] = None,
    ) -> ImportStore:
        instance = cls()
        instance.namespace = namespace
        if file is not None:
            instance.file = file
        if store_id is not None:
            instance.store_id = store_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ImportStore:
        instance = cls()
        if "file" in dict_ and dict_["file"] is not None:
            instance.file = Any(dict_["file"])
        elif include_empty:
            instance.file = Any()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "storeId" in dict_ and dict_["storeId"] is not None:
            instance.store_id = str(dict_["storeId"])
        elif include_empty:
            instance.store_id = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "file": "file",
            "namespace": "namespace",
            "storeId": "store_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "file": False,
            "namespace": True,
            "storeId": False,
        }

    # endregion static methods
