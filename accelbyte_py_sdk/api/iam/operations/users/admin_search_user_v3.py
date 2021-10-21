# Auto-generated at 2021-10-21T08:52:26.537399+08:00
# from: Justice iam Service (4.4.1)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HttpResponse

from ...models import ModelSearchUsersResponseWithPaginationV3
from ...models import RestErrorResponse


class AdminSearchUserV3(Operation):
    """Search User (AdminSearchUserV3)

    Required permission ADMIN:NAMESPACE:{namespace}:USER [READ]

    Endpoint behavior :

      * by default this endpoint searches all users on the specified namespace
      * if query parameter is defined, endpoint will search users whose email address, display name, or username partially match with the query
      * if startDate and endDate parameters is defined, endpoint will search users which created on the certain date range
      * if query, startDate and endDate parameters are defined, endpoint will search users whose email address and display name match and created on the certain date range
      * if startDate parameter is defined, endpoint will search users that created start from the defined date
      * if endDate parameter is defined, endpoint will search users that created until the defined date


    action code : 10133


    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/search

        method: GET

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        security: bearer

        namespace: (namespace) REQUIRED str in path

        query: (query) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL str in query

        start_date: (startDate) OPTIONAL str in query

        end_date: (endDate) OPTIONAL str in query

        by: (by) OPTIONAL str in query

    Responses:
        200: OK - ModelSearchUsersResponseWithPaginationV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - (Internal Server Error)
    """

    # region fields

    _url: str = "/iam/v3/admin/namespaces/{namespace}/users/search"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    namespace: str                                                                                 # REQUIRED in [path]
    query: str                                                                                     # OPTIONAL in [query]
    limit: int                                                                                     # OPTIONAL in [query]
    offset: str                                                                                    # OPTIONAL in [query]
    start_date: str                                                                                # OPTIONAL in [query]
    end_date: str                                                                                  # OPTIONAL in [query]
    by: str                                                                                        # OPTIONAL in [query]

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
    def security(self) -> Optional[str]:
        return self._security

    @property
    def location_query(self) -> str:
        return self._location_query

    # endregion properties

    # region get methods

    def get_full_url(self, base_url: Union[None, str] = None) -> str:
        result = base_url if base_url is not None else ""

        # path params
        url = self.url
        for k, v in self.get_path_params().items():
            url = url.replace(f"{{{k}}}", v)
        result += url

        # query params
        result += "?" + "&".join([f"{k}={v}" for k, v in self.get_query_params().items()])

        return result

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "namespace",
        ]

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
        if hasattr(self, "query"):
            result["query"] = self.query
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "start_date"):
            result["startDate"] = self.start_date
        if hasattr(self, "end_date"):
            result["endDate"] = self.end_date
        if hasattr(self, "by"):
            result["by"] = self.by
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> AdminSearchUserV3:
        self.namespace = value
        return self

    def with_query(self, value: str) -> AdminSearchUserV3:
        self.query = value
        return self

    def with_limit(self, value: int) -> AdminSearchUserV3:
        self.limit = value
        return self

    def with_offset(self, value: str) -> AdminSearchUserV3:
        self.offset = value
        return self

    def with_start_date(self, value: str) -> AdminSearchUserV3:
        self.start_date = value
        return self

    def with_end_date(self, value: str) -> AdminSearchUserV3:
        self.end_date = value
        return self

    def with_by(self, value: str) -> AdminSearchUserV3:
        self.by = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "query") and self.query:
            result["query"] = str(self.query)
        elif include_empty:
            result["query"] = str()
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = int()
        if hasattr(self, "offset") and self.offset:
            result["offset"] = str(self.offset)
        elif include_empty:
            result["offset"] = str()
        if hasattr(self, "start_date") and self.start_date:
            result["startDate"] = str(self.start_date)
        elif include_empty:
            result["startDate"] = str()
        if hasattr(self, "end_date") and self.end_date:
            result["endDate"] = str(self.end_date)
        elif include_empty:
            result["endDate"] = str()
        if hasattr(self, "by") and self.by:
            result["by"] = str(self.by)
        elif include_empty:
            result["by"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, ModelSearchUsersResponseWithPaginationV3], Union[None, HttpResponse, RestErrorResponse]]:
        """Parse the given response.

        200: OK - ModelSearchUsersResponseWithPaginationV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - (Internal Server Error)
        """
        if code == 200:
            return ModelSearchUsersResponseWithPaginationV3.create_from_dict(content), None
        if code == 400:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 401:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 403:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 500:
            return None, HttpResponse.create(code, "Internal Server Error")
        was_handled, undocumented_response = HttpResponse.try_create_undocumented_response(code, content)
        if was_handled:
            return None, undocumented_response
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        query: Optional[str] = None,
        limit: Optional[int] = None,
        offset: Optional[str] = None,
        start_date: Optional[str] = None,
        end_date: Optional[str] = None,
        by: Optional[str] = None,
    ) -> AdminSearchUserV3:
        instance = cls()
        instance.namespace = namespace
        if query is not None:
            instance.query = query
        if limit is not None:
            instance.limit = limit
        if offset is not None:
            instance.offset = offset
        if start_date is not None:
            instance.start_date = start_date
        if end_date is not None:
            instance.end_date = end_date
        if by is not None:
            instance.by = by
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> AdminSearchUserV3:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "query" in dict_ and dict_["query"] is not None:
            instance.query = str(dict_["query"])
        elif include_empty:
            instance.query = str()
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = int()
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = str(dict_["offset"])
        elif include_empty:
            instance.offset = str()
        if "startDate" in dict_ and dict_["startDate"] is not None:
            instance.start_date = str(dict_["startDate"])
        elif include_empty:
            instance.start_date = str()
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = str(dict_["endDate"])
        elif include_empty:
            instance.end_date = str()
        if "by" in dict_ and dict_["by"] is not None:
            instance.by = str(dict_["by"])
        elif include_empty:
            instance.by = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "query": "query",
            "limit": "limit",
            "offset": "offset",
            "startDate": "start_date",
            "endDate": "end_date",
            "by": "by",
        }

    # endregion static methods
