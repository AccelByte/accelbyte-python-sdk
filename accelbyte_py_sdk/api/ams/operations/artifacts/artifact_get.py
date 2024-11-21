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

from ...models import ApiArtifactListResponse
from ...models import ResponseErrorResponse


class SortDirectionEnum(StrEnum):
    ASC = "asc"
    DESC = "desc"


class ArtifactGet(Operation):
    """get all artifacts matching the provided criteria (ArtifactGet)

    Get all artifacts matching the provided search criteria. When criteria is not specified the data returned won't have been filtered on those parameters

    Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:ARTIFACT [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/artifacts

        method: GET

        tags: ["Artifacts"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        artifact_type: (artifactType) OPTIONAL str in query

        count: (count) OPTIONAL int in query

        end_date: (endDate) OPTIONAL str in query

        fleet_id: (fleetID) OPTIONAL str in query

        image_id: (imageID) OPTIONAL str in query

        max_size: (maxSize) OPTIONAL int in query

        min_size: (minSize) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        region: (region) OPTIONAL str in query

        server_id: (serverId) OPTIONAL str in query

        sort_by: (sortBy) OPTIONAL str in query

        sort_direction: (sortDirection) OPTIONAL Union[str, SortDirectionEnum] in query

        start_date: (startDate) OPTIONAL str in query

        status: (status) OPTIONAL str in query

    Responses:
        200: OK - ApiArtifactListResponse (success)

        400: Bad Request - ResponseErrorResponse (invalid data in request)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """

    # region fields

    _url: str = "/ams/v1/admin/namespaces/{namespace}/artifacts"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    artifact_type: str  # OPTIONAL in [query]
    count: int  # OPTIONAL in [query]
    end_date: str  # OPTIONAL in [query]
    fleet_id: str  # OPTIONAL in [query]
    image_id: str  # OPTIONAL in [query]
    max_size: int  # OPTIONAL in [query]
    min_size: int  # OPTIONAL in [query]
    offset: int  # OPTIONAL in [query]
    region: str  # OPTIONAL in [query]
    server_id: str  # OPTIONAL in [query]
    sort_by: str  # OPTIONAL in [query]
    sort_direction: Union[str, SortDirectionEnum]  # OPTIONAL in [query]
    start_date: str  # OPTIONAL in [query]
    status: str  # OPTIONAL in [query]

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
        if hasattr(self, "artifact_type"):
            result["artifactType"] = self.artifact_type
        if hasattr(self, "count"):
            result["count"] = self.count
        if hasattr(self, "end_date"):
            result["endDate"] = self.end_date
        if hasattr(self, "fleet_id"):
            result["fleetID"] = self.fleet_id
        if hasattr(self, "image_id"):
            result["imageID"] = self.image_id
        if hasattr(self, "max_size"):
            result["maxSize"] = self.max_size
        if hasattr(self, "min_size"):
            result["minSize"] = self.min_size
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "region"):
            result["region"] = self.region
        if hasattr(self, "server_id"):
            result["serverId"] = self.server_id
        if hasattr(self, "sort_by"):
            result["sortBy"] = self.sort_by
        if hasattr(self, "sort_direction"):
            result["sortDirection"] = self.sort_direction
        if hasattr(self, "start_date"):
            result["startDate"] = self.start_date
        if hasattr(self, "status"):
            result["status"] = self.status
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> ArtifactGet:
        self.namespace = value
        return self

    def with_artifact_type(self, value: str) -> ArtifactGet:
        self.artifact_type = value
        return self

    def with_count(self, value: int) -> ArtifactGet:
        self.count = value
        return self

    def with_end_date(self, value: str) -> ArtifactGet:
        self.end_date = value
        return self

    def with_fleet_id(self, value: str) -> ArtifactGet:
        self.fleet_id = value
        return self

    def with_image_id(self, value: str) -> ArtifactGet:
        self.image_id = value
        return self

    def with_max_size(self, value: int) -> ArtifactGet:
        self.max_size = value
        return self

    def with_min_size(self, value: int) -> ArtifactGet:
        self.min_size = value
        return self

    def with_offset(self, value: int) -> ArtifactGet:
        self.offset = value
        return self

    def with_region(self, value: str) -> ArtifactGet:
        self.region = value
        return self

    def with_server_id(self, value: str) -> ArtifactGet:
        self.server_id = value
        return self

    def with_sort_by(self, value: str) -> ArtifactGet:
        self.sort_by = value
        return self

    def with_sort_direction(self, value: Union[str, SortDirectionEnum]) -> ArtifactGet:
        self.sort_direction = value
        return self

    def with_start_date(self, value: str) -> ArtifactGet:
        self.start_date = value
        return self

    def with_status(self, value: str) -> ArtifactGet:
        self.status = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "artifact_type") and self.artifact_type:
            result["artifactType"] = str(self.artifact_type)
        elif include_empty:
            result["artifactType"] = ""
        if hasattr(self, "count") and self.count:
            result["count"] = int(self.count)
        elif include_empty:
            result["count"] = 0
        if hasattr(self, "end_date") and self.end_date:
            result["endDate"] = str(self.end_date)
        elif include_empty:
            result["endDate"] = ""
        if hasattr(self, "fleet_id") and self.fleet_id:
            result["fleetID"] = str(self.fleet_id)
        elif include_empty:
            result["fleetID"] = ""
        if hasattr(self, "image_id") and self.image_id:
            result["imageID"] = str(self.image_id)
        elif include_empty:
            result["imageID"] = ""
        if hasattr(self, "max_size") and self.max_size:
            result["maxSize"] = int(self.max_size)
        elif include_empty:
            result["maxSize"] = 0
        if hasattr(self, "min_size") and self.min_size:
            result["minSize"] = int(self.min_size)
        elif include_empty:
            result["minSize"] = 0
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = 0
        if hasattr(self, "region") and self.region:
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = ""
        if hasattr(self, "server_id") and self.server_id:
            result["serverId"] = str(self.server_id)
        elif include_empty:
            result["serverId"] = ""
        if hasattr(self, "sort_by") and self.sort_by:
            result["sortBy"] = str(self.sort_by)
        elif include_empty:
            result["sortBy"] = ""
        if hasattr(self, "sort_direction") and self.sort_direction:
            result["sortDirection"] = str(self.sort_direction)
        elif include_empty:
            result["sortDirection"] = Union[str, SortDirectionEnum]()
        if hasattr(self, "start_date") and self.start_date:
            result["startDate"] = str(self.start_date)
        elif include_empty:
            result["startDate"] = ""
        if hasattr(self, "status") and self.status:
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ApiArtifactListResponse],
        Union[None, HttpResponse, ResponseErrorResponse],
    ]:
        """Parse the given response.

        200: OK - ApiArtifactListResponse (success)

        400: Bad Request - ResponseErrorResponse (invalid data in request)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

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
            return ApiArtifactListResponse.create_from_dict(content), None
        if code == 400:
            return None, ResponseErrorResponse.create_from_dict(content)
        if code == 401:
            return None, ResponseErrorResponse.create_from_dict(content)
        if code == 403:
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
        artifact_type: Optional[str] = None,
        count: Optional[int] = None,
        end_date: Optional[str] = None,
        fleet_id: Optional[str] = None,
        image_id: Optional[str] = None,
        max_size: Optional[int] = None,
        min_size: Optional[int] = None,
        offset: Optional[int] = None,
        region: Optional[str] = None,
        server_id: Optional[str] = None,
        sort_by: Optional[str] = None,
        sort_direction: Optional[Union[str, SortDirectionEnum]] = None,
        start_date: Optional[str] = None,
        status: Optional[str] = None,
        **kwargs,
    ) -> ArtifactGet:
        instance = cls()
        instance.namespace = namespace
        if artifact_type is not None:
            instance.artifact_type = artifact_type
        if count is not None:
            instance.count = count
        if end_date is not None:
            instance.end_date = end_date
        if fleet_id is not None:
            instance.fleet_id = fleet_id
        if image_id is not None:
            instance.image_id = image_id
        if max_size is not None:
            instance.max_size = max_size
        if min_size is not None:
            instance.min_size = min_size
        if offset is not None:
            instance.offset = offset
        if region is not None:
            instance.region = region
        if server_id is not None:
            instance.server_id = server_id
        if sort_by is not None:
            instance.sort_by = sort_by
        if sort_direction is not None:
            instance.sort_direction = sort_direction
        if start_date is not None:
            instance.start_date = start_date
        if status is not None:
            instance.status = status
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ArtifactGet:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "artifactType" in dict_ and dict_["artifactType"] is not None:
            instance.artifact_type = str(dict_["artifactType"])
        elif include_empty:
            instance.artifact_type = ""
        if "count" in dict_ and dict_["count"] is not None:
            instance.count = int(dict_["count"])
        elif include_empty:
            instance.count = 0
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = str(dict_["endDate"])
        elif include_empty:
            instance.end_date = ""
        if "fleetID" in dict_ and dict_["fleetID"] is not None:
            instance.fleet_id = str(dict_["fleetID"])
        elif include_empty:
            instance.fleet_id = ""
        if "imageID" in dict_ and dict_["imageID"] is not None:
            instance.image_id = str(dict_["imageID"])
        elif include_empty:
            instance.image_id = ""
        if "maxSize" in dict_ and dict_["maxSize"] is not None:
            instance.max_size = int(dict_["maxSize"])
        elif include_empty:
            instance.max_size = 0
        if "minSize" in dict_ and dict_["minSize"] is not None:
            instance.min_size = int(dict_["minSize"])
        elif include_empty:
            instance.min_size = 0
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = 0
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = ""
        if "serverId" in dict_ and dict_["serverId"] is not None:
            instance.server_id = str(dict_["serverId"])
        elif include_empty:
            instance.server_id = ""
        if "sortBy" in dict_ and dict_["sortBy"] is not None:
            instance.sort_by = str(dict_["sortBy"])
        elif include_empty:
            instance.sort_by = ""
        if "sortDirection" in dict_ and dict_["sortDirection"] is not None:
            instance.sort_direction = str(dict_["sortDirection"])
        elif include_empty:
            instance.sort_direction = Union[str, SortDirectionEnum]()
        if "startDate" in dict_ and dict_["startDate"] is not None:
            instance.start_date = str(dict_["startDate"])
        elif include_empty:
            instance.start_date = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "artifactType": "artifact_type",
            "count": "count",
            "endDate": "end_date",
            "fleetID": "fleet_id",
            "imageID": "image_id",
            "maxSize": "max_size",
            "minSize": "min_size",
            "offset": "offset",
            "region": "region",
            "serverId": "server_id",
            "sortBy": "sort_by",
            "sortDirection": "sort_direction",
            "startDate": "start_date",
            "status": "status",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "artifactType": False,
            "count": False,
            "endDate": False,
            "fleetID": False,
            "imageID": False,
            "maxSize": False,
            "minSize": False,
            "offset": False,
            "region": False,
            "serverId": False,
            "sortBy": False,
            "sortDirection": False,
            "startDate": False,
            "status": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "sortDirection": ["asc", "desc"],  # in query
        }

    # endregion static methods
