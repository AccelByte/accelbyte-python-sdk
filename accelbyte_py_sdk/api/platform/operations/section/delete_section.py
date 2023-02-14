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


class DeleteSection(Operation):
    """Delete a section (deleteSection)

    This API is used to delete s section.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=8 (DELETE)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [DELETE]

    Properties:
        url: /platform/admin/namespaces/{namespace}/sections/{sectionId}

        method: DELETE

        tags: ["Section"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        section_id: (sectionId) REQUIRED str in path

        store_id: (storeId) REQUIRED str in query

    Responses:
        204: No Content - (Delete section successfully)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30741: Section [{sectionId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30173: Published store can't modify content)
    """

    # region fields

    _url: str = "/platform/admin/namespaces/{namespace}/sections/{sectionId}"
    _method: str = "DELETE"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    section_id: str  # REQUIRED in [path]
    store_id: str  # REQUIRED in [query]

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
            "query": self.get_query_params(),
        }

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "section_id"):
            result["sectionId"] = self.section_id
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

    def with_namespace(self, value: str) -> DeleteSection:
        self.namespace = value
        return self

    def with_section_id(self, value: str) -> DeleteSection:
        self.section_id = value
        return self

    def with_store_id(self, value: str) -> DeleteSection:
        self.store_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "section_id") and self.section_id:
            result["sectionId"] = str(self.section_id)
        elif include_empty:
            result["sectionId"] = ""
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

        204: No Content - (Delete section successfully)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30741: Section [{sectionId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (30173: Published store can't modify content)

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
        namespace: str,
        section_id: str,
        store_id: str,
    ) -> DeleteSection:
        instance = cls()
        instance.namespace = namespace
        instance.section_id = section_id
        instance.store_id = store_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> DeleteSection:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "sectionId" in dict_ and dict_["sectionId"] is not None:
            instance.section_id = str(dict_["sectionId"])
        elif include_empty:
            instance.section_id = ""
        if "storeId" in dict_ and dict_["storeId"] is not None:
            instance.store_id = str(dict_["storeId"])
        elif include_empty:
            instance.store_id = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "sectionId": "section_id",
            "storeId": "store_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "sectionId": True,
            "storeId": True,
        }

    # endregion static methods
