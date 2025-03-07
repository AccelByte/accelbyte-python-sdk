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

# AccelByte Gaming Services Session History Service

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ApimodelsGameSessionDetailQueryResponse
from ...models import ResponseError


class AdminQueryGameSessionDetail(Operation):
    """Get all game sessions history. (adminQueryGameSessionDetail)

    Get all game sessions.

    Properties:
        url: /sessionhistory/v1/admin/namespaces/{namespace}/gamesessions

        method: GET

        tags: ["Game Session Detail"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        completed_only: (completedOnly) OPTIONAL str in query

        configuration_name: (configurationName) OPTIONAL str in query

        ds_pod_name: (dsPodName) OPTIONAL str in query

        end_date: (endDate) OPTIONAL str in query

        game_session_id: (gameSessionID) OPTIONAL str in query

        is_persistent: (isPersistent) OPTIONAL str in query

        joinability: (joinability) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        match_pool: (matchPool) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        order: (order) OPTIONAL str in query

        order_by: (orderBy) OPTIONAL str in query

        start_date: (startDate) OPTIONAL str in query

        status_v2: (statusV2) OPTIONAL str in query

        user_id: (userID) OPTIONAL str in query

    Responses:
        200: OK - ApimodelsGameSessionDetailQueryResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """

    # region fields

    _url: str = "/sessionhistory/v1/admin/namespaces/{namespace}/gamesessions"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    completed_only: str  # OPTIONAL in [query]
    configuration_name: str  # OPTIONAL in [query]
    ds_pod_name: str  # OPTIONAL in [query]
    end_date: str  # OPTIONAL in [query]
    game_session_id: str  # OPTIONAL in [query]
    is_persistent: str  # OPTIONAL in [query]
    joinability: str  # OPTIONAL in [query]
    limit: int  # OPTIONAL in [query]
    match_pool: str  # OPTIONAL in [query]
    offset: int  # OPTIONAL in [query]
    order: str  # OPTIONAL in [query]
    order_by: str  # OPTIONAL in [query]
    start_date: str  # OPTIONAL in [query]
    status_v2: str  # OPTIONAL in [query]
    user_id: str  # OPTIONAL in [query]

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
        if hasattr(self, "completed_only"):
            result["completedOnly"] = self.completed_only
        if hasattr(self, "configuration_name"):
            result["configurationName"] = self.configuration_name
        if hasattr(self, "ds_pod_name"):
            result["dsPodName"] = self.ds_pod_name
        if hasattr(self, "end_date"):
            result["endDate"] = self.end_date
        if hasattr(self, "game_session_id"):
            result["gameSessionID"] = self.game_session_id
        if hasattr(self, "is_persistent"):
            result["isPersistent"] = self.is_persistent
        if hasattr(self, "joinability"):
            result["joinability"] = self.joinability
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "match_pool"):
            result["matchPool"] = self.match_pool
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "order"):
            result["order"] = self.order
        if hasattr(self, "order_by"):
            result["orderBy"] = self.order_by
        if hasattr(self, "start_date"):
            result["startDate"] = self.start_date
        if hasattr(self, "status_v2"):
            result["statusV2"] = self.status_v2
        if hasattr(self, "user_id"):
            result["userID"] = self.user_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> AdminQueryGameSessionDetail:
        self.namespace = value
        return self

    def with_completed_only(self, value: str) -> AdminQueryGameSessionDetail:
        self.completed_only = value
        return self

    def with_configuration_name(self, value: str) -> AdminQueryGameSessionDetail:
        self.configuration_name = value
        return self

    def with_ds_pod_name(self, value: str) -> AdminQueryGameSessionDetail:
        self.ds_pod_name = value
        return self

    def with_end_date(self, value: str) -> AdminQueryGameSessionDetail:
        self.end_date = value
        return self

    def with_game_session_id(self, value: str) -> AdminQueryGameSessionDetail:
        self.game_session_id = value
        return self

    def with_is_persistent(self, value: str) -> AdminQueryGameSessionDetail:
        self.is_persistent = value
        return self

    def with_joinability(self, value: str) -> AdminQueryGameSessionDetail:
        self.joinability = value
        return self

    def with_limit(self, value: int) -> AdminQueryGameSessionDetail:
        self.limit = value
        return self

    def with_match_pool(self, value: str) -> AdminQueryGameSessionDetail:
        self.match_pool = value
        return self

    def with_offset(self, value: int) -> AdminQueryGameSessionDetail:
        self.offset = value
        return self

    def with_order(self, value: str) -> AdminQueryGameSessionDetail:
        self.order = value
        return self

    def with_order_by(self, value: str) -> AdminQueryGameSessionDetail:
        self.order_by = value
        return self

    def with_start_date(self, value: str) -> AdminQueryGameSessionDetail:
        self.start_date = value
        return self

    def with_status_v2(self, value: str) -> AdminQueryGameSessionDetail:
        self.status_v2 = value
        return self

    def with_user_id(self, value: str) -> AdminQueryGameSessionDetail:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "completed_only") and self.completed_only:
            result["completedOnly"] = str(self.completed_only)
        elif include_empty:
            result["completedOnly"] = ""
        if hasattr(self, "configuration_name") and self.configuration_name:
            result["configurationName"] = str(self.configuration_name)
        elif include_empty:
            result["configurationName"] = ""
        if hasattr(self, "ds_pod_name") and self.ds_pod_name:
            result["dsPodName"] = str(self.ds_pod_name)
        elif include_empty:
            result["dsPodName"] = ""
        if hasattr(self, "end_date") and self.end_date:
            result["endDate"] = str(self.end_date)
        elif include_empty:
            result["endDate"] = ""
        if hasattr(self, "game_session_id") and self.game_session_id:
            result["gameSessionID"] = str(self.game_session_id)
        elif include_empty:
            result["gameSessionID"] = ""
        if hasattr(self, "is_persistent") and self.is_persistent:
            result["isPersistent"] = str(self.is_persistent)
        elif include_empty:
            result["isPersistent"] = ""
        if hasattr(self, "joinability") and self.joinability:
            result["joinability"] = str(self.joinability)
        elif include_empty:
            result["joinability"] = ""
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
        if hasattr(self, "order") and self.order:
            result["order"] = str(self.order)
        elif include_empty:
            result["order"] = ""
        if hasattr(self, "order_by") and self.order_by:
            result["orderBy"] = str(self.order_by)
        elif include_empty:
            result["orderBy"] = ""
        if hasattr(self, "start_date") and self.start_date:
            result["startDate"] = str(self.start_date)
        elif include_empty:
            result["startDate"] = ""
        if hasattr(self, "status_v2") and self.status_v2:
            result["statusV2"] = str(self.status_v2)
        elif include_empty:
            result["statusV2"] = ""
        if hasattr(self, "user_id") and self.user_id:
            result["userID"] = str(self.user_id)
        elif include_empty:
            result["userID"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ApimodelsGameSessionDetailQueryResponse],
        Union[None, HttpResponse, ResponseError],
    ]:
        """Parse the given response.

        200: OK - ApimodelsGameSessionDetailQueryResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

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
            return (
                ApimodelsGameSessionDetailQueryResponse.create_from_dict(content),
                None,
            )
        if code == 400:
            return None, ResponseError.create_from_dict(content)
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
        completed_only: Optional[str] = None,
        configuration_name: Optional[str] = None,
        ds_pod_name: Optional[str] = None,
        end_date: Optional[str] = None,
        game_session_id: Optional[str] = None,
        is_persistent: Optional[str] = None,
        joinability: Optional[str] = None,
        limit: Optional[int] = None,
        match_pool: Optional[str] = None,
        offset: Optional[int] = None,
        order: Optional[str] = None,
        order_by: Optional[str] = None,
        start_date: Optional[str] = None,
        status_v2: Optional[str] = None,
        user_id: Optional[str] = None,
        **kwargs,
    ) -> AdminQueryGameSessionDetail:
        instance = cls()
        instance.namespace = namespace
        if completed_only is not None:
            instance.completed_only = completed_only
        if configuration_name is not None:
            instance.configuration_name = configuration_name
        if ds_pod_name is not None:
            instance.ds_pod_name = ds_pod_name
        if end_date is not None:
            instance.end_date = end_date
        if game_session_id is not None:
            instance.game_session_id = game_session_id
        if is_persistent is not None:
            instance.is_persistent = is_persistent
        if joinability is not None:
            instance.joinability = joinability
        if limit is not None:
            instance.limit = limit
        if match_pool is not None:
            instance.match_pool = match_pool
        if offset is not None:
            instance.offset = offset
        if order is not None:
            instance.order = order
        if order_by is not None:
            instance.order_by = order_by
        if start_date is not None:
            instance.start_date = start_date
        if status_v2 is not None:
            instance.status_v2 = status_v2
        if user_id is not None:
            instance.user_id = user_id
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AdminQueryGameSessionDetail:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "completedOnly" in dict_ and dict_["completedOnly"] is not None:
            instance.completed_only = str(dict_["completedOnly"])
        elif include_empty:
            instance.completed_only = ""
        if "configurationName" in dict_ and dict_["configurationName"] is not None:
            instance.configuration_name = str(dict_["configurationName"])
        elif include_empty:
            instance.configuration_name = ""
        if "dsPodName" in dict_ and dict_["dsPodName"] is not None:
            instance.ds_pod_name = str(dict_["dsPodName"])
        elif include_empty:
            instance.ds_pod_name = ""
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = str(dict_["endDate"])
        elif include_empty:
            instance.end_date = ""
        if "gameSessionID" in dict_ and dict_["gameSessionID"] is not None:
            instance.game_session_id = str(dict_["gameSessionID"])
        elif include_empty:
            instance.game_session_id = ""
        if "isPersistent" in dict_ and dict_["isPersistent"] is not None:
            instance.is_persistent = str(dict_["isPersistent"])
        elif include_empty:
            instance.is_persistent = ""
        if "joinability" in dict_ and dict_["joinability"] is not None:
            instance.joinability = str(dict_["joinability"])
        elif include_empty:
            instance.joinability = ""
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
        if "order" in dict_ and dict_["order"] is not None:
            instance.order = str(dict_["order"])
        elif include_empty:
            instance.order = ""
        if "orderBy" in dict_ and dict_["orderBy"] is not None:
            instance.order_by = str(dict_["orderBy"])
        elif include_empty:
            instance.order_by = ""
        if "startDate" in dict_ and dict_["startDate"] is not None:
            instance.start_date = str(dict_["startDate"])
        elif include_empty:
            instance.start_date = ""
        if "statusV2" in dict_ and dict_["statusV2"] is not None:
            instance.status_v2 = str(dict_["statusV2"])
        elif include_empty:
            instance.status_v2 = ""
        if "userID" in dict_ and dict_["userID"] is not None:
            instance.user_id = str(dict_["userID"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "completedOnly": "completed_only",
            "configurationName": "configuration_name",
            "dsPodName": "ds_pod_name",
            "endDate": "end_date",
            "gameSessionID": "game_session_id",
            "isPersistent": "is_persistent",
            "joinability": "joinability",
            "limit": "limit",
            "matchPool": "match_pool",
            "offset": "offset",
            "order": "order",
            "orderBy": "order_by",
            "startDate": "start_date",
            "statusV2": "status_v2",
            "userID": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "completedOnly": False,
            "configurationName": False,
            "dsPodName": False,
            "endDate": False,
            "gameSessionID": False,
            "isPersistent": False,
            "joinability": False,
            "limit": False,
            "matchPool": False,
            "offset": False,
            "order": False,
            "orderBy": False,
            "startDate": False,
            "statusV2": False,
            "userID": False,
        }

    # endregion static methods
