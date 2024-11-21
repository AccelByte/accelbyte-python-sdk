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

# Fleet Commander

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ApiImageList
from ...models import ResponseErrorResponse


class ImageList(Operation):
    """get a list of existing images (ImageList)

    Returns images which exist (uploaded, uploading, or building) in the linked account. This route fails if no account is linked

    Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:IMAGE [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/images

        method: GET

        tags: ["Images"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        count: (count) OPTIONAL int in query

        in_use: (inUse) OPTIONAL str in query

        is_protected: (isProtected) OPTIONAL bool in query

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

        sort_direction: (sortDirection) OPTIONAL str in query

        status: (status) OPTIONAL str in query

        tag: (tag) OPTIONAL str in query

    Responses:
        200: OK - ApiImageList (success)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (account not linked)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """

    # region fields

    _url: str = "/ams/v1/admin/namespaces/{namespace}/images"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    count: int  # OPTIONAL in [query]
    in_use: str  # OPTIONAL in [query]
    is_protected: bool  # OPTIONAL in [query]
    name: str  # OPTIONAL in [query]
    offset: int  # OPTIONAL in [query]
    sort_by: str  # OPTIONAL in [query]
    sort_direction: str  # OPTIONAL in [query]
    status: str  # OPTIONAL in [query]
    tag: str  # OPTIONAL in [query]

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
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "count"):
            result["count"] = self.count
        if hasattr(self, "in_use"):
            result["inUse"] = self.in_use
        if hasattr(self, "is_protected"):
            result["isProtected"] = self.is_protected
        if hasattr(self, "name"):
            result["name"] = self.name
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "sort_by"):
            result["sortBy"] = self.sort_by
        if hasattr(self, "sort_direction"):
            result["sortDirection"] = self.sort_direction
        if hasattr(self, "status"):
            result["status"] = self.status
        if hasattr(self, "tag"):
            result["tag"] = self.tag
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> ImageList:
        self.namespace = value
        return self

    def with_count(self, value: int) -> ImageList:
        self.count = value
        return self

    def with_in_use(self, value: str) -> ImageList:
        self.in_use = value
        return self

    def with_is_protected(self, value: bool) -> ImageList:
        self.is_protected = value
        return self

    def with_name(self, value: str) -> ImageList:
        self.name = value
        return self

    def with_offset(self, value: int) -> ImageList:
        self.offset = value
        return self

    def with_sort_by(self, value: str) -> ImageList:
        self.sort_by = value
        return self

    def with_sort_direction(self, value: str) -> ImageList:
        self.sort_direction = value
        return self

    def with_status(self, value: str) -> ImageList:
        self.status = value
        return self

    def with_tag(self, value: str) -> ImageList:
        self.tag = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "count") and self.count:
            result["count"] = int(self.count)
        elif include_empty:
            result["count"] = 0
        if hasattr(self, "in_use") and self.in_use:
            result["inUse"] = str(self.in_use)
        elif include_empty:
            result["inUse"] = ""
        if hasattr(self, "is_protected") and self.is_protected:
            result["isProtected"] = bool(self.is_protected)
        elif include_empty:
            result["isProtected"] = False
        if hasattr(self, "name") and self.name:
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = 0
        if hasattr(self, "sort_by") and self.sort_by:
            result["sortBy"] = str(self.sort_by)
        elif include_empty:
            result["sortBy"] = ""
        if hasattr(self, "sort_direction") and self.sort_direction:
            result["sortDirection"] = str(self.sort_direction)
        elif include_empty:
            result["sortDirection"] = ""
        if hasattr(self, "status") and self.status:
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = ""
        if hasattr(self, "tag") and self.tag:
            result["tag"] = str(self.tag)
        elif include_empty:
            result["tag"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ApiImageList], Union[None, HttpResponse, ResponseErrorResponse]
    ]:
        """Parse the given response.

        200: OK - ApiImageList (success)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (account not linked)

        500: Internal Server Error - ResponseErrorResponse (internal server error)

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
            return ApiImageList.create_from_dict(content), None
        if code == 401:
            return None, ResponseErrorResponse.create_from_dict(content)
        if code == 403:
            return None, ResponseErrorResponse.create_from_dict(content)
        if code == 404:
            return None, ResponseErrorResponse.create_from_dict(content)
        if code == 500:
            return None, ResponseErrorResponse.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        count: Optional[int] = None,
        in_use: Optional[str] = None,
        is_protected: Optional[bool] = None,
        name: Optional[str] = None,
        offset: Optional[int] = None,
        sort_by: Optional[str] = None,
        sort_direction: Optional[str] = None,
        status: Optional[str] = None,
        tag: Optional[str] = None,
        **kwargs,
    ) -> ImageList:
        instance = cls()
        instance.namespace = namespace
        if count is not None:
            instance.count = count
        if in_use is not None:
            instance.in_use = in_use
        if is_protected is not None:
            instance.is_protected = is_protected
        if name is not None:
            instance.name = name
        if offset is not None:
            instance.offset = offset
        if sort_by is not None:
            instance.sort_by = sort_by
        if sort_direction is not None:
            instance.sort_direction = sort_direction
        if status is not None:
            instance.status = status
        if tag is not None:
            instance.tag = tag
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ImageList:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "count" in dict_ and dict_["count"] is not None:
            instance.count = int(dict_["count"])
        elif include_empty:
            instance.count = 0
        if "inUse" in dict_ and dict_["inUse"] is not None:
            instance.in_use = str(dict_["inUse"])
        elif include_empty:
            instance.in_use = ""
        if "isProtected" in dict_ and dict_["isProtected"] is not None:
            instance.is_protected = bool(dict_["isProtected"])
        elif include_empty:
            instance.is_protected = False
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = 0
        if "sortBy" in dict_ and dict_["sortBy"] is not None:
            instance.sort_by = str(dict_["sortBy"])
        elif include_empty:
            instance.sort_by = ""
        if "sortDirection" in dict_ and dict_["sortDirection"] is not None:
            instance.sort_direction = str(dict_["sortDirection"])
        elif include_empty:
            instance.sort_direction = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = ""
        if "tag" in dict_ and dict_["tag"] is not None:
            instance.tag = str(dict_["tag"])
        elif include_empty:
            instance.tag = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "count": "count",
            "inUse": "in_use",
            "isProtected": "is_protected",
            "name": "name",
            "offset": "offset",
            "sortBy": "sort_by",
            "sortDirection": "sort_direction",
            "status": "status",
            "tag": "tag",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "count": False,
            "inUse": False,
            "isProtected": False,
            "name": False,
            "offset": False,
            "sortBy": False,
            "sortDirection": False,
            "status": False,
            "tag": False,
        }

    # endregion static methods
