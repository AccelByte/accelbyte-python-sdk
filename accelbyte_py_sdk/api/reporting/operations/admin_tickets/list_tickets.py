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

# AccelByte Cloud Reporting Service (0.1.23)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import RestapiErrorResponse
from ...models import RestapiTicketListResponse


class ListTickets(Operation):
    """List report tickets (listTickets)

    Required permission: ADMIN:NAMESPACE:{namespace}:TICKET [READ]
    Tickets list can be ordered by:
    - createdAt
    - reportsCount
    - status (currently there are OPEN, AUTO_MODERATED and CLOSED statuses, desc order will put ticket with CLOSED status at the top)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:TICKET [READ]

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/tickets

        method: GET

        tags: ["Admin Tickets"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        category: (category) OPTIONAL str in query

        extension_category: (extensionCategory) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        order: (order) OPTIONAL str in query

        reported_user_id: (reportedUserId) OPTIONAL str in query

        sort_by: (sortBy) OPTIONAL str in query

        status: (status) OPTIONAL str in query

    Responses:
        200: OK - RestapiTicketListResponse

        500: Internal Server Error - RestapiErrorResponse
    """

    # region fields

    _url: str = "/reporting/v1/admin/namespaces/{namespace}/tickets"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    category: str  # OPTIONAL in [query]
    extension_category: str  # OPTIONAL in [query]
    limit: int  # OPTIONAL in [query]
    offset: int  # OPTIONAL in [query]
    order: str  # OPTIONAL in [query]
    reported_user_id: str  # OPTIONAL in [query]
    sort_by: str  # OPTIONAL in [query]
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
        if hasattr(self, "category"):
            result["category"] = self.category
        if hasattr(self, "extension_category"):
            result["extensionCategory"] = self.extension_category
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "order"):
            result["order"] = self.order
        if hasattr(self, "reported_user_id"):
            result["reportedUserId"] = self.reported_user_id
        if hasattr(self, "sort_by"):
            result["sortBy"] = self.sort_by
        if hasattr(self, "status"):
            result["status"] = self.status
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> ListTickets:
        self.namespace = value
        return self

    def with_category(self, value: str) -> ListTickets:
        self.category = value
        return self

    def with_extension_category(self, value: str) -> ListTickets:
        self.extension_category = value
        return self

    def with_limit(self, value: int) -> ListTickets:
        self.limit = value
        return self

    def with_offset(self, value: int) -> ListTickets:
        self.offset = value
        return self

    def with_order(self, value: str) -> ListTickets:
        self.order = value
        return self

    def with_reported_user_id(self, value: str) -> ListTickets:
        self.reported_user_id = value
        return self

    def with_sort_by(self, value: str) -> ListTickets:
        self.sort_by = value
        return self

    def with_status(self, value: str) -> ListTickets:
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
        if hasattr(self, "category") and self.category:
            result["category"] = str(self.category)
        elif include_empty:
            result["category"] = ""
        if hasattr(self, "extension_category") and self.extension_category:
            result["extensionCategory"] = str(self.extension_category)
        elif include_empty:
            result["extensionCategory"] = ""
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = 0
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = 0
        if hasattr(self, "order") and self.order:
            result["order"] = str(self.order)
        elif include_empty:
            result["order"] = ""
        if hasattr(self, "reported_user_id") and self.reported_user_id:
            result["reportedUserId"] = str(self.reported_user_id)
        elif include_empty:
            result["reportedUserId"] = ""
        if hasattr(self, "sort_by") and self.sort_by:
            result["sortBy"] = str(self.sort_by)
        elif include_empty:
            result["sortBy"] = ""
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
        Union[None, RestapiTicketListResponse],
        Union[None, HttpResponse, RestapiErrorResponse],
    ]:
        """Parse the given response.

        200: OK - RestapiTicketListResponse

        500: Internal Server Error - RestapiErrorResponse

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
            return RestapiTicketListResponse.create_from_dict(content), None
        if code == 500:
            return None, RestapiErrorResponse.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        category: Optional[str] = None,
        extension_category: Optional[str] = None,
        limit: Optional[int] = None,
        offset: Optional[int] = None,
        order: Optional[str] = None,
        reported_user_id: Optional[str] = None,
        sort_by: Optional[str] = None,
        status: Optional[str] = None,
    ) -> ListTickets:
        instance = cls()
        instance.namespace = namespace
        if category is not None:
            instance.category = category
        if extension_category is not None:
            instance.extension_category = extension_category
        if limit is not None:
            instance.limit = limit
        if offset is not None:
            instance.offset = offset
        if order is not None:
            instance.order = order
        if reported_user_id is not None:
            instance.reported_user_id = reported_user_id
        if sort_by is not None:
            instance.sort_by = sort_by
        if status is not None:
            instance.status = status
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ListTickets:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "category" in dict_ and dict_["category"] is not None:
            instance.category = str(dict_["category"])
        elif include_empty:
            instance.category = ""
        if "extensionCategory" in dict_ and dict_["extensionCategory"] is not None:
            instance.extension_category = str(dict_["extensionCategory"])
        elif include_empty:
            instance.extension_category = ""
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = 0
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = 0
        if "order" in dict_ and dict_["order"] is not None:
            instance.order = str(dict_["order"])
        elif include_empty:
            instance.order = ""
        if "reportedUserId" in dict_ and dict_["reportedUserId"] is not None:
            instance.reported_user_id = str(dict_["reportedUserId"])
        elif include_empty:
            instance.reported_user_id = ""
        if "sortBy" in dict_ and dict_["sortBy"] is not None:
            instance.sort_by = str(dict_["sortBy"])
        elif include_empty:
            instance.sort_by = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "category": "category",
            "extensionCategory": "extension_category",
            "limit": "limit",
            "offset": "offset",
            "order": "order",
            "reportedUserId": "reported_user_id",
            "sortBy": "sort_by",
            "status": "status",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "category": False,
            "extensionCategory": False,
            "limit": False,
            "offset": False,
            "order": False,
            "reportedUserId": False,
            "sortBy": False,
            "status": False,
        }

    # endregion static methods
