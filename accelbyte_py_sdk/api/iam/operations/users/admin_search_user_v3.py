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

# AccelByte Cloud Iam Service (5.20.0)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ModelSearchUsersResponseWithPaginationV3
from ...models import RestErrorResponse


class AdminSearchUserV3(Operation):
    """Search User (AdminSearchUserV3)

    Required permission ADMIN:NAMESPACE:{namespace}:USER [READ]




    Endpoint behavior :


      * by default this endpoint searches all users on the specified namespace


      * if query parameter is defined, endpoint will search users whose email address, display name, username, or third party partially match with the query


      * if startDate and endDate parameters is defined, endpoint will search users which created on the certain date range


      * if query, startDate and endDate parameters are defined, endpoint will search users whose email address and display name match and created on the certain date range


      * if startDate parameter is defined, endpoint will search users that created start from the defined date


      * if endDate parameter is defined, endpoint will search users that created until the defined date


      * if platformId parameter is defined and by parameter is using thirdparty, endpoint will search users based on the platformId they have linked to


      * if platformBy parameter is defined and by parameter is using thirdparty, endpoint will search users based on the platformUserId or platformDisplayName they have linked to, example value: platformUserId or platformDisplayName


      * if limit is not defined, The default limit is 100






    action code : 10133

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER [READ]

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/search

        method: GET

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        by: (by) OPTIONAL str in query

        end_date: (endDate) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        platform_by: (platformBy) OPTIONAL str in query

        platform_id: (platformId) OPTIONAL str in query

        query: (query) OPTIONAL str in query

        start_date: (startDate) OPTIONAL str in query

    Responses:
        200: OK - ModelSearchUsersResponseWithPaginationV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """

    # region fields

    _url: str = "/iam/v3/admin/namespaces/{namespace}/users/search"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    by: str  # OPTIONAL in [query]
    end_date: str  # OPTIONAL in [query]
    limit: int  # OPTIONAL in [query]
    offset: int  # OPTIONAL in [query]
    platform_by: str  # OPTIONAL in [query]
    platform_id: str  # OPTIONAL in [query]
    query: str  # OPTIONAL in [query]
    start_date: str  # OPTIONAL in [query]

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
        if hasattr(self, "by"):
            result["by"] = self.by
        if hasattr(self, "end_date"):
            result["endDate"] = self.end_date
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "platform_by"):
            result["platformBy"] = self.platform_by
        if hasattr(self, "platform_id"):
            result["platformId"] = self.platform_id
        if hasattr(self, "query"):
            result["query"] = self.query
        if hasattr(self, "start_date"):
            result["startDate"] = self.start_date
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> AdminSearchUserV3:
        self.namespace = value
        return self

    def with_by(self, value: str) -> AdminSearchUserV3:
        self.by = value
        return self

    def with_end_date(self, value: str) -> AdminSearchUserV3:
        self.end_date = value
        return self

    def with_limit(self, value: int) -> AdminSearchUserV3:
        self.limit = value
        return self

    def with_offset(self, value: int) -> AdminSearchUserV3:
        self.offset = value
        return self

    def with_platform_by(self, value: str) -> AdminSearchUserV3:
        self.platform_by = value
        return self

    def with_platform_id(self, value: str) -> AdminSearchUserV3:
        self.platform_id = value
        return self

    def with_query(self, value: str) -> AdminSearchUserV3:
        self.query = value
        return self

    def with_start_date(self, value: str) -> AdminSearchUserV3:
        self.start_date = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "by") and self.by:
            result["by"] = str(self.by)
        elif include_empty:
            result["by"] = ""
        if hasattr(self, "end_date") and self.end_date:
            result["endDate"] = str(self.end_date)
        elif include_empty:
            result["endDate"] = ""
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = 0
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = 0
        if hasattr(self, "platform_by") and self.platform_by:
            result["platformBy"] = str(self.platform_by)
        elif include_empty:
            result["platformBy"] = ""
        if hasattr(self, "platform_id") and self.platform_id:
            result["platformId"] = str(self.platform_id)
        elif include_empty:
            result["platformId"] = ""
        if hasattr(self, "query") and self.query:
            result["query"] = str(self.query)
        elif include_empty:
            result["query"] = ""
        if hasattr(self, "start_date") and self.start_date:
            result["startDate"] = str(self.start_date)
        elif include_empty:
            result["startDate"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ModelSearchUsersResponseWithPaginationV3],
        Union[None, HttpResponse, RestErrorResponse],
    ]:
        """Parse the given response.

        200: OK - ModelSearchUsersResponseWithPaginationV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)

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
            return (
                ModelSearchUsersResponseWithPaginationV3.create_from_dict(content),
                None,
            )
        if code == 400:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 401:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 403:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 500:
            return None, RestErrorResponse.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        by: Optional[str] = None,
        end_date: Optional[str] = None,
        limit: Optional[int] = None,
        offset: Optional[int] = None,
        platform_by: Optional[str] = None,
        platform_id: Optional[str] = None,
        query: Optional[str] = None,
        start_date: Optional[str] = None,
    ) -> AdminSearchUserV3:
        instance = cls()
        instance.namespace = namespace
        if by is not None:
            instance.by = by
        if end_date is not None:
            instance.end_date = end_date
        if limit is not None:
            instance.limit = limit
        if offset is not None:
            instance.offset = offset
        if platform_by is not None:
            instance.platform_by = platform_by
        if platform_id is not None:
            instance.platform_id = platform_id
        if query is not None:
            instance.query = query
        if start_date is not None:
            instance.start_date = start_date
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AdminSearchUserV3:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "by" in dict_ and dict_["by"] is not None:
            instance.by = str(dict_["by"])
        elif include_empty:
            instance.by = ""
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = str(dict_["endDate"])
        elif include_empty:
            instance.end_date = ""
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = 0
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = 0
        if "platformBy" in dict_ and dict_["platformBy"] is not None:
            instance.platform_by = str(dict_["platformBy"])
        elif include_empty:
            instance.platform_by = ""
        if "platformId" in dict_ and dict_["platformId"] is not None:
            instance.platform_id = str(dict_["platformId"])
        elif include_empty:
            instance.platform_id = ""
        if "query" in dict_ and dict_["query"] is not None:
            instance.query = str(dict_["query"])
        elif include_empty:
            instance.query = ""
        if "startDate" in dict_ and dict_["startDate"] is not None:
            instance.start_date = str(dict_["startDate"])
        elif include_empty:
            instance.start_date = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "by": "by",
            "endDate": "end_date",
            "limit": "limit",
            "offset": "offset",
            "platformBy": "platform_by",
            "platformId": "platform_id",
            "query": "query",
            "startDate": "start_date",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "by": False,
            "endDate": False,
            "limit": False,
            "offset": False,
            "platformBy": False,
            "platformId": False,
            "query": False,
            "startDate": False,
        }

    # endregion static methods
