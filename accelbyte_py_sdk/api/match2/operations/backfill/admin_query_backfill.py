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

# AccelByte Gaming Services Match Service V2

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ApiListBackfillQueryResponse
from ...models import ResponseError


class AdminQueryBackfill(Operation):
    """Admin Query backfill ticket  (AdminQueryBackfill)

    Admin Query backfill ticket

    Properties:
        url: /match2/v1/namespaces/{namespace}/backfill

        method: GET

        tags: ["Backfill", "admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        from_time: (fromTime) OPTIONAL str in query

        is_active: (isActive) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        match_pool: (matchPool) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        player_id: (playerID) OPTIONAL str in query

        region: (region) OPTIONAL str in query

        session_id: (sessionID) OPTIONAL str in query

        to_time: (toTime) OPTIONAL str in query

    Responses:
        200: OK - ApiListBackfillQueryResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """

    # region fields

    _url: str = "/match2/v1/namespaces/{namespace}/backfill"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    from_time: str  # OPTIONAL in [query]
    is_active: bool  # OPTIONAL in [query]
    limit: int  # OPTIONAL in [query]
    match_pool: str  # OPTIONAL in [query]
    offset: int  # OPTIONAL in [query]
    player_id: str  # OPTIONAL in [query]
    region: str  # OPTIONAL in [query]
    session_id: str  # OPTIONAL in [query]
    to_time: str  # OPTIONAL in [query]

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
        if hasattr(self, "from_time"):
            result["fromTime"] = self.from_time
        if hasattr(self, "is_active"):
            result["isActive"] = self.is_active
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "match_pool"):
            result["matchPool"] = self.match_pool
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "player_id"):
            result["playerID"] = self.player_id
        if hasattr(self, "region"):
            result["region"] = self.region
        if hasattr(self, "session_id"):
            result["sessionID"] = self.session_id
        if hasattr(self, "to_time"):
            result["toTime"] = self.to_time
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> AdminQueryBackfill:
        self.namespace = value
        return self

    def with_from_time(self, value: str) -> AdminQueryBackfill:
        self.from_time = value
        return self

    def with_is_active(self, value: bool) -> AdminQueryBackfill:
        self.is_active = value
        return self

    def with_limit(self, value: int) -> AdminQueryBackfill:
        self.limit = value
        return self

    def with_match_pool(self, value: str) -> AdminQueryBackfill:
        self.match_pool = value
        return self

    def with_offset(self, value: int) -> AdminQueryBackfill:
        self.offset = value
        return self

    def with_player_id(self, value: str) -> AdminQueryBackfill:
        self.player_id = value
        return self

    def with_region(self, value: str) -> AdminQueryBackfill:
        self.region = value
        return self

    def with_session_id(self, value: str) -> AdminQueryBackfill:
        self.session_id = value
        return self

    def with_to_time(self, value: str) -> AdminQueryBackfill:
        self.to_time = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "from_time") and self.from_time:
            result["fromTime"] = str(self.from_time)
        elif include_empty:
            result["fromTime"] = ""
        if hasattr(self, "is_active") and self.is_active:
            result["isActive"] = bool(self.is_active)
        elif include_empty:
            result["isActive"] = False
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
        if hasattr(self, "player_id") and self.player_id:
            result["playerID"] = str(self.player_id)
        elif include_empty:
            result["playerID"] = ""
        if hasattr(self, "region") and self.region:
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = ""
        if hasattr(self, "session_id") and self.session_id:
            result["sessionID"] = str(self.session_id)
        elif include_empty:
            result["sessionID"] = ""
        if hasattr(self, "to_time") and self.to_time:
            result["toTime"] = str(self.to_time)
        elif include_empty:
            result["toTime"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ApiListBackfillQueryResponse],
        Union[None, HttpResponse, ResponseError],
    ]:
        """Parse the given response.

        200: OK - ApiListBackfillQueryResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

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
            return ApiListBackfillQueryResponse.create_from_dict(content), None
        if code == 400:
            return None, ResponseError.create_from_dict(content)
        if code == 401:
            return None, ResponseError.create_from_dict(content)
        if code == 403:
            return None, ResponseError.create_from_dict(content)
        if code == 404:
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
        from_time: Optional[str] = None,
        is_active: Optional[bool] = None,
        limit: Optional[int] = None,
        match_pool: Optional[str] = None,
        offset: Optional[int] = None,
        player_id: Optional[str] = None,
        region: Optional[str] = None,
        session_id: Optional[str] = None,
        to_time: Optional[str] = None,
        **kwargs,
    ) -> AdminQueryBackfill:
        instance = cls()
        instance.namespace = namespace
        if from_time is not None:
            instance.from_time = from_time
        if is_active is not None:
            instance.is_active = is_active
        if limit is not None:
            instance.limit = limit
        if match_pool is not None:
            instance.match_pool = match_pool
        if offset is not None:
            instance.offset = offset
        if player_id is not None:
            instance.player_id = player_id
        if region is not None:
            instance.region = region
        if session_id is not None:
            instance.session_id = session_id
        if to_time is not None:
            instance.to_time = to_time
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AdminQueryBackfill:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "fromTime" in dict_ and dict_["fromTime"] is not None:
            instance.from_time = str(dict_["fromTime"])
        elif include_empty:
            instance.from_time = ""
        if "isActive" in dict_ and dict_["isActive"] is not None:
            instance.is_active = bool(dict_["isActive"])
        elif include_empty:
            instance.is_active = False
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
        if "playerID" in dict_ and dict_["playerID"] is not None:
            instance.player_id = str(dict_["playerID"])
        elif include_empty:
            instance.player_id = ""
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = ""
        if "sessionID" in dict_ and dict_["sessionID"] is not None:
            instance.session_id = str(dict_["sessionID"])
        elif include_empty:
            instance.session_id = ""
        if "toTime" in dict_ and dict_["toTime"] is not None:
            instance.to_time = str(dict_["toTime"])
        elif include_empty:
            instance.to_time = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "fromTime": "from_time",
            "isActive": "is_active",
            "limit": "limit",
            "matchPool": "match_pool",
            "offset": "offset",
            "playerID": "player_id",
            "region": "region",
            "sessionID": "session_id",
            "toTime": "to_time",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "fromTime": False,
            "isActive": False,
            "limit": False,
            "matchPool": False,
            "offset": False,
            "playerID": False,
            "region": False,
            "sessionID": False,
            "toTime": False,
        }

    # endregion static methods
