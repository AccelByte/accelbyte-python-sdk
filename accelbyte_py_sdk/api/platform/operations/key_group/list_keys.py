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
from .....core import StrEnum

from ...models import KeyPagingSliceResult


class StatusEnum(StrEnum):
    ACQUIRED = "ACQUIRED"
    ACTIVE = "ACTIVE"


class ListKeys(Operation):
    """List keys of a key group (listKeys)

    This API is used to list keys of a key group.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:KEYGROUP", action=2 (READ)
      *  Returns : keys

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:KEYGROUP [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}/keys

        method: GET

        tags: ["KeyGroup"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        key_group_id: (keyGroupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

    Responses:
        200: OK - KeyPagingSliceResult (successful operation)
    """

    # region fields

    _url: str = "/platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}/keys"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    key_group_id: str  # REQUIRED in [path]
    namespace: str  # REQUIRED in [path]
    limit: int  # OPTIONAL in [query]
    offset: int  # OPTIONAL in [query]
    status: Union[str, StatusEnum]  # OPTIONAL in [query]

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
        if hasattr(self, "key_group_id"):
            result["keyGroupId"] = self.key_group_id
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "status"):
            result["status"] = self.status
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_key_group_id(self, value: str) -> ListKeys:
        self.key_group_id = value
        return self

    def with_namespace(self, value: str) -> ListKeys:
        self.namespace = value
        return self

    def with_limit(self, value: int) -> ListKeys:
        self.limit = value
        return self

    def with_offset(self, value: int) -> ListKeys:
        self.offset = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> ListKeys:
        self.status = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "key_group_id") and self.key_group_id:
            result["keyGroupId"] = str(self.key_group_id)
        elif include_empty:
            result["keyGroupId"] = ""
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = 0
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = 0
        if hasattr(self, "status") and self.status:
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[Union[None, KeyPagingSliceResult], Union[None, HttpResponse]]:
        """Parse the given response.

        200: OK - KeyPagingSliceResult (successful operation)

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
            return KeyPagingSliceResult.create_from_dict(content), None

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        key_group_id: str,
        namespace: str,
        limit: Optional[int] = None,
        offset: Optional[int] = None,
        status: Optional[Union[str, StatusEnum]] = None,
    ) -> ListKeys:
        instance = cls()
        instance.key_group_id = key_group_id
        instance.namespace = namespace
        if limit is not None:
            instance.limit = limit
        if offset is not None:
            instance.offset = offset
        if status is not None:
            instance.status = status
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ListKeys:
        instance = cls()
        if "keyGroupId" in dict_ and dict_["keyGroupId"] is not None:
            instance.key_group_id = str(dict_["keyGroupId"])
        elif include_empty:
            instance.key_group_id = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = 0
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = 0
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "keyGroupId": "key_group_id",
            "namespace": "namespace",
            "limit": "limit",
            "offset": "offset",
            "status": "status",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "keyGroupId": True,
            "namespace": True,
            "limit": False,
            "offset": False,
            "status": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "status": ["ACQUIRED", "ACTIVE"],  # in query
        }

    # endregion static methods
