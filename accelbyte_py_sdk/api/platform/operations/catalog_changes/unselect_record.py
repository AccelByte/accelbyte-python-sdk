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


class UnselectRecord(Operation):
    """Unselect a change (unselectRecord)

    Unselect a change, it will not be included when partial publish.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=4 (UPDATE)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [UPDATE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/{changeId}/unselect

        method: PUT

        tags: ["CatalogChanges"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        change_id: (changeId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30041: Changelog [{changelogId}] doest not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30071: Can't unselect item [{itemId}] when the item which is bound to is already selected in namespace [{namespace}] | 30072: Can't unselect category [{categoryPath}] when item with this category is already selected in namespace [{namespace}] | 30073: Can't unselect store change | 30074: Can't unselect subscription's content [{itemId}] when subscription is already selected in namespace [{namespace}])
    """

    # region fields

    _url: str = "/platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/{changeId}/unselect"
    _method: str = "PUT"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    change_id: str  # REQUIRED in [path]
    namespace: str  # REQUIRED in [path]
    store_id: str  # REQUIRED in [path]

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
        if hasattr(self, "change_id"):
            result["changeId"] = self.change_id
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "store_id"):
            result["storeId"] = self.store_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_change_id(self, value: str) -> UnselectRecord:
        self.change_id = value
        return self

    def with_namespace(self, value: str) -> UnselectRecord:
        self.namespace = value
        return self

    def with_store_id(self, value: str) -> UnselectRecord:
        self.store_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "change_id") and self.change_id:
            result["changeId"] = str(self.change_id)
        elif include_empty:
            result["changeId"] = ""
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
    ) -> Tuple[None, Union[None, ErrorEntity, HttpResponse]]:
        """Parse the given response.

        204: No Content - (No Content)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30041: Changelog [{changelogId}] doest not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30071: Can't unselect item [{itemId}] when the item which is bound to is already selected in namespace [{namespace}] | 30072: Can't unselect category [{categoryPath}] when item with this category is already selected in namespace [{namespace}] | 30073: Can't unselect store change | 30074: Can't unselect subscription's content [{itemId}] when subscription is already selected in namespace [{namespace}])

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
            return None, ErrorEntity.create_from_dict(content)
        if code == 409:
            return None, ErrorEntity.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        change_id: str,
        namespace: str,
        store_id: str,
    ) -> UnselectRecord:
        instance = cls()
        instance.change_id = change_id
        instance.namespace = namespace
        instance.store_id = store_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> UnselectRecord:
        instance = cls()
        if "changeId" in dict_ and dict_["changeId"] is not None:
            instance.change_id = str(dict_["changeId"])
        elif include_empty:
            instance.change_id = ""
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
            "changeId": "change_id",
            "namespace": "namespace",
            "storeId": "store_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "changeId": True,
            "namespace": True,
            "storeId": True,
        }

    # endregion static methods
