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

# AccelByte Gaming Services Match Service V2 (2.11.2)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ApiMatchTicketStatuses
from ...models import ResponseError


class GetMyMatchTickets(Operation):
    """Get my match tickets (GetMyMatchTickets)

    Required Permission: NAMESPACE:{namespace}:MATCHMAKING:TICKET [READ]

    Required Scope: social

    Get my match tickets.

    Required Permission(s):
        - NAMESPACE:{namespace}:MATCHMAKING:TICKET [READ]

    Required Scope(s):
        - social

    Properties:
        url: /match2/v1/namespaces/{namespace}/match-tickets/me

        method: GET

        tags: ["Match-Tickets", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        match_pool: (matchPool) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ApiMatchTicketStatuses (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """

    # region fields

    _url: str = "/match2/v1/namespaces/{namespace}/match-tickets/me"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    limit: int  # OPTIONAL in [query]
    match_pool: str  # OPTIONAL in [query]
    offset: int  # OPTIONAL in [query]

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
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "match_pool"):
            result["matchPool"] = self.match_pool
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> GetMyMatchTickets:
        self.namespace = value
        return self

    def with_limit(self, value: int) -> GetMyMatchTickets:
        self.limit = value
        return self

    def with_match_pool(self, value: str) -> GetMyMatchTickets:
        self.match_pool = value
        return self

    def with_offset(self, value: int) -> GetMyMatchTickets:
        self.offset = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = 0
        if hasattr(self, "match_pool") and self.match_pool:
            result["matchPool"] = str(self.match_pool)
        elif include_empty:
            result["matchPool"] = ""
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = 0
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ApiMatchTicketStatuses], Union[None, HttpResponse, ResponseError]
    ]:
        """Parse the given response.

        200: OK - ApiMatchTicketStatuses (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)

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
            return ApiMatchTicketStatuses.create_from_dict(content), None
        if code == 401:
            return None, ResponseError.create_from_dict(content)
        if code == 403:
            return None, ResponseError.create_from_dict(content)
        if code == 500:
            return None, ResponseError.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        limit: Optional[int] = None,
        match_pool: Optional[str] = None,
        offset: Optional[int] = None,
        **kwargs,
    ) -> GetMyMatchTickets:
        instance = cls()
        instance.namespace = namespace
        if limit is not None:
            instance.limit = limit
        if match_pool is not None:
            instance.match_pool = match_pool
        if offset is not None:
            instance.offset = offset
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> GetMyMatchTickets:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = 0
        if "matchPool" in dict_ and dict_["matchPool"] is not None:
            instance.match_pool = str(dict_["matchPool"])
        elif include_empty:
            instance.match_pool = ""
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = 0
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "limit": "limit",
            "matchPool": "match_pool",
            "offset": "offset",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "limit": False,
            "matchPool": False,
            "offset": False,
        }

    # endregion static methods