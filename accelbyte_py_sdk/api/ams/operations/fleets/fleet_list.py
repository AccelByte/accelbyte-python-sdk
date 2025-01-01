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
from .....core import StrEnum

from ...models import ApiFleetListResponse
from ...models import ResponseErrorResponse


class DescEnum(StrEnum):
    ASC = "asc"
    DESC = "desc"


class SortByEnum(StrEnum):
    ACTIVE = "active"
    NAME = "name"


class FleetList(Operation):
    """list all fleets in a namespace (FleetList)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/fleets

        method: GET

        tags: ["Fleets"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        active: (active) OPTIONAL bool in query

        count: (count) OPTIONAL int in query

        desc: (desc) OPTIONAL Union[str, DescEnum] in query

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        region: (region) OPTIONAL str in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

    Responses:
        200: OK - ApiFleetListResponse (success)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """

    # region fields

    _url: str = "/ams/v1/admin/namespaces/{namespace}/fleets"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    active: bool  # OPTIONAL in [query]
    count: int  # OPTIONAL in [query]
    desc: Union[str, DescEnum]  # OPTIONAL in [query]
    name: str  # OPTIONAL in [query]
    offset: int  # OPTIONAL in [query]
    region: str  # OPTIONAL in [query]
    sort_by: Union[str, SortByEnum]  # OPTIONAL in [query]

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
        if hasattr(self, "active"):
            result["active"] = self.active
        if hasattr(self, "count"):
            result["count"] = self.count
        if hasattr(self, "desc"):
            result["desc"] = self.desc
        if hasattr(self, "name"):
            result["name"] = self.name
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "region"):
            result["region"] = self.region
        if hasattr(self, "sort_by"):
            result["sortBy"] = self.sort_by
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> FleetList:
        self.namespace = value
        return self

    def with_active(self, value: bool) -> FleetList:
        self.active = value
        return self

    def with_count(self, value: int) -> FleetList:
        self.count = value
        return self

    def with_desc(self, value: Union[str, DescEnum]) -> FleetList:
        self.desc = value
        return self

    def with_name(self, value: str) -> FleetList:
        self.name = value
        return self

    def with_offset(self, value: int) -> FleetList:
        self.offset = value
        return self

    def with_region(self, value: str) -> FleetList:
        self.region = value
        return self

    def with_sort_by(self, value: Union[str, SortByEnum]) -> FleetList:
        self.sort_by = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "active") and self.active:
            result["active"] = bool(self.active)
        elif include_empty:
            result["active"] = False
        if hasattr(self, "count") and self.count:
            result["count"] = int(self.count)
        elif include_empty:
            result["count"] = 0
        if hasattr(self, "desc") and self.desc:
            result["desc"] = str(self.desc)
        elif include_empty:
            result["desc"] = Union[str, DescEnum]()
        if hasattr(self, "name") and self.name:
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = 0
        if hasattr(self, "region") and self.region:
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = ""
        if hasattr(self, "sort_by") and self.sort_by:
            result["sortBy"] = str(self.sort_by)
        elif include_empty:
            result["sortBy"] = Union[str, SortByEnum]()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ApiFleetListResponse],
        Union[None, HttpResponse, ResponseErrorResponse],
    ]:
        """Parse the given response.

        200: OK - ApiFleetListResponse (success)

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
            return ApiFleetListResponse.create_from_dict(content), None
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
        active: Optional[bool] = None,
        count: Optional[int] = None,
        desc: Optional[Union[str, DescEnum]] = None,
        name: Optional[str] = None,
        offset: Optional[int] = None,
        region: Optional[str] = None,
        sort_by: Optional[Union[str, SortByEnum]] = None,
        **kwargs,
    ) -> FleetList:
        instance = cls()
        instance.namespace = namespace
        if active is not None:
            instance.active = active
        if count is not None:
            instance.count = count
        if desc is not None:
            instance.desc = desc
        if name is not None:
            instance.name = name
        if offset is not None:
            instance.offset = offset
        if region is not None:
            instance.region = region
        if sort_by is not None:
            instance.sort_by = sort_by
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> FleetList:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "active" in dict_ and dict_["active"] is not None:
            instance.active = bool(dict_["active"])
        elif include_empty:
            instance.active = False
        if "count" in dict_ and dict_["count"] is not None:
            instance.count = int(dict_["count"])
        elif include_empty:
            instance.count = 0
        if "desc" in dict_ and dict_["desc"] is not None:
            instance.desc = str(dict_["desc"])
        elif include_empty:
            instance.desc = Union[str, DescEnum]()
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = 0
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = ""
        if "sortBy" in dict_ and dict_["sortBy"] is not None:
            instance.sort_by = str(dict_["sortBy"])
        elif include_empty:
            instance.sort_by = Union[str, SortByEnum]()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "active": "active",
            "count": "count",
            "desc": "desc",
            "name": "name",
            "offset": "offset",
            "region": "region",
            "sortBy": "sort_by",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "active": False,
            "count": False,
            "desc": False,
            "name": False,
            "offset": False,
            "region": False,
            "sortBy": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "desc": ["asc", "desc"],  # in query
            "sortBy": ["active", "name"],  # in query
        }

    # endregion static methods
