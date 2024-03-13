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

# AccelByte Gaming Services Iam Service

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ModelGetUsersResponseWithPaginationV3
from ...models import RestErrorResponse


class ListAdminsV3(Operation):
    """List User Admins (ListAdminsV3)

    List all users that has admin role (role that has admin_role attribute set to true).
    Endpoint behavior :
    - if query parameter is defined, endpoint will search users whose email address and display name match with the query
    - if roleId parameter is defined, endpoint will search users that have the defined roleId
    - if startDate and endDate parameters is defined, endpoint will search users which created on the certain date range
    - if startDate parameter is defined, endpoint will search users that created start from the defined date
    - if endDate parameter is defined, endpoint will search users that created until the defined date

    In multi tenant mode :
    - if super admin search in super admin namespace, the result will be all admin users
    - if super admin search in game studio namespace, the result will be all admin users under the game studio namespace
    - if studio admin search in their studio namespace, the result will be all admin user in the game studio namespace

    The endpoint will return all admin from all namespace when called from publisher namespace.
    When not called from publisher namespace, the endpoint will return all admin from the path namespace.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/admins

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        after: (after) OPTIONAL str in query

        before: (before) OPTIONAL str in query

        end_date: (endDate) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        query: (query) OPTIONAL str in query

        role_id: (roleId) OPTIONAL str in query

        start_date: (startDate) OPTIONAL str in query

    Responses:
        200: OK - ModelGetUsersResponseWithPaginationV3 (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """

    # region fields

    _url: str = "/iam/v3/admin/namespaces/{namespace}/admins"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    after: str  # OPTIONAL in [query]
    before: str  # OPTIONAL in [query]
    end_date: str  # OPTIONAL in [query]
    limit: int  # OPTIONAL in [query]
    query: str  # OPTIONAL in [query]
    role_id: str  # OPTIONAL in [query]
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
        if hasattr(self, "after"):
            result["after"] = self.after
        if hasattr(self, "before"):
            result["before"] = self.before
        if hasattr(self, "end_date"):
            result["endDate"] = self.end_date
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "query"):
            result["query"] = self.query
        if hasattr(self, "role_id"):
            result["roleId"] = self.role_id
        if hasattr(self, "start_date"):
            result["startDate"] = self.start_date
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> ListAdminsV3:
        self.namespace = value
        return self

    def with_after(self, value: str) -> ListAdminsV3:
        self.after = value
        return self

    def with_before(self, value: str) -> ListAdminsV3:
        self.before = value
        return self

    def with_end_date(self, value: str) -> ListAdminsV3:
        self.end_date = value
        return self

    def with_limit(self, value: int) -> ListAdminsV3:
        self.limit = value
        return self

    def with_query(self, value: str) -> ListAdminsV3:
        self.query = value
        return self

    def with_role_id(self, value: str) -> ListAdminsV3:
        self.role_id = value
        return self

    def with_start_date(self, value: str) -> ListAdminsV3:
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
        if hasattr(self, "after") and self.after:
            result["after"] = str(self.after)
        elif include_empty:
            result["after"] = ""
        if hasattr(self, "before") and self.before:
            result["before"] = str(self.before)
        elif include_empty:
            result["before"] = ""
        if hasattr(self, "end_date") and self.end_date:
            result["endDate"] = str(self.end_date)
        elif include_empty:
            result["endDate"] = ""
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = 0
        if hasattr(self, "query") and self.query:
            result["query"] = str(self.query)
        elif include_empty:
            result["query"] = ""
        if hasattr(self, "role_id") and self.role_id:
            result["roleId"] = str(self.role_id)
        elif include_empty:
            result["roleId"] = ""
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
        Union[None, ModelGetUsersResponseWithPaginationV3],
        Union[None, HttpResponse, RestErrorResponse],
    ]:
        """Parse the given response.

        200: OK - ModelGetUsersResponseWithPaginationV3 (Operation succeeded)

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
            return ModelGetUsersResponseWithPaginationV3.create_from_dict(content), None
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
        after: Optional[str] = None,
        before: Optional[str] = None,
        end_date: Optional[str] = None,
        limit: Optional[int] = None,
        query: Optional[str] = None,
        role_id: Optional[str] = None,
        start_date: Optional[str] = None,
        **kwargs,
    ) -> ListAdminsV3:
        instance = cls()
        instance.namespace = namespace
        if after is not None:
            instance.after = after
        if before is not None:
            instance.before = before
        if end_date is not None:
            instance.end_date = end_date
        if limit is not None:
            instance.limit = limit
        if query is not None:
            instance.query = query
        if role_id is not None:
            instance.role_id = role_id
        if start_date is not None:
            instance.start_date = start_date
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ListAdminsV3:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "after" in dict_ and dict_["after"] is not None:
            instance.after = str(dict_["after"])
        elif include_empty:
            instance.after = ""
        if "before" in dict_ and dict_["before"] is not None:
            instance.before = str(dict_["before"])
        elif include_empty:
            instance.before = ""
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = str(dict_["endDate"])
        elif include_empty:
            instance.end_date = ""
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = 0
        if "query" in dict_ and dict_["query"] is not None:
            instance.query = str(dict_["query"])
        elif include_empty:
            instance.query = ""
        if "roleId" in dict_ and dict_["roleId"] is not None:
            instance.role_id = str(dict_["roleId"])
        elif include_empty:
            instance.role_id = ""
        if "startDate" in dict_ and dict_["startDate"] is not None:
            instance.start_date = str(dict_["startDate"])
        elif include_empty:
            instance.start_date = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "after": "after",
            "before": "before",
            "endDate": "end_date",
            "limit": "limit",
            "query": "query",
            "roleId": "role_id",
            "startDate": "start_date",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "after": False,
            "before": False,
            "endDate": False,
            "limit": False,
            "query": False,
            "roleId": False,
            "startDate": False,
        }

    # endregion static methods
