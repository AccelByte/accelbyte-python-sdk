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

# AccelByte Cloud Session Service (2.6.1)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ApimodelsGameSessionQueryResponse
from ...models import ResponseError


class AdminQueryGameSessions(Operation):
    """Get all game sessions. (adminQueryGameSessions)

    Get all game sessions. Requires ADMIN:NAMESPACE:{namespace}:SESSION:GAME [READ]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:SESSION:GAME [READ]

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/gamesessions

        method: GET

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        configuration_name: (configurationName) OPTIONAL str in query

        ds_pod_name: (dsPodName) OPTIONAL str in query

        from_time: (fromTime) OPTIONAL str in query

        game_mode: (gameMode) OPTIONAL str in query

        is_soft_deleted: (isSoftDeleted) OPTIONAL str in query

        joinability: (joinability) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        match_pool: (matchPool) OPTIONAL str in query

        member_id: (memberID) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        order: (order) OPTIONAL str in query

        order_by: (orderBy) OPTIONAL str in query

        session_id: (sessionID) OPTIONAL str in query

        status: (status) OPTIONAL str in query

        status_v2: (statusV2) OPTIONAL str in query

        to_time: (toTime) OPTIONAL str in query

    Responses:
        200: OK - ApimodelsGameSessionQueryResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """

    # region fields

    _url: str = "/session/v1/admin/namespaces/{namespace}/gamesessions"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    configuration_name: str  # OPTIONAL in [query]
    ds_pod_name: str  # OPTIONAL in [query]
    from_time: str  # OPTIONAL in [query]
    game_mode: str  # OPTIONAL in [query]
    is_soft_deleted: str  # OPTIONAL in [query]
    joinability: str  # OPTIONAL in [query]
    limit: int  # OPTIONAL in [query]
    match_pool: str  # OPTIONAL in [query]
    member_id: str  # OPTIONAL in [query]
    offset: int  # OPTIONAL in [query]
    order: str  # OPTIONAL in [query]
    order_by: str  # OPTIONAL in [query]
    session_id: str  # OPTIONAL in [query]
    status: str  # OPTIONAL in [query]
    status_v2: str  # OPTIONAL in [query]
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
        if hasattr(self, "configuration_name"):
            result["configurationName"] = self.configuration_name
        if hasattr(self, "ds_pod_name"):
            result["dsPodName"] = self.ds_pod_name
        if hasattr(self, "from_time"):
            result["fromTime"] = self.from_time
        if hasattr(self, "game_mode"):
            result["gameMode"] = self.game_mode
        if hasattr(self, "is_soft_deleted"):
            result["isSoftDeleted"] = self.is_soft_deleted
        if hasattr(self, "joinability"):
            result["joinability"] = self.joinability
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "match_pool"):
            result["matchPool"] = self.match_pool
        if hasattr(self, "member_id"):
            result["memberID"] = self.member_id
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "order"):
            result["order"] = self.order
        if hasattr(self, "order_by"):
            result["orderBy"] = self.order_by
        if hasattr(self, "session_id"):
            result["sessionID"] = self.session_id
        if hasattr(self, "status"):
            result["status"] = self.status
        if hasattr(self, "status_v2"):
            result["statusV2"] = self.status_v2
        if hasattr(self, "to_time"):
            result["toTime"] = self.to_time
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> AdminQueryGameSessions:
        self.namespace = value
        return self

    def with_configuration_name(self, value: str) -> AdminQueryGameSessions:
        self.configuration_name = value
        return self

    def with_ds_pod_name(self, value: str) -> AdminQueryGameSessions:
        self.ds_pod_name = value
        return self

    def with_from_time(self, value: str) -> AdminQueryGameSessions:
        self.from_time = value
        return self

    def with_game_mode(self, value: str) -> AdminQueryGameSessions:
        self.game_mode = value
        return self

    def with_is_soft_deleted(self, value: str) -> AdminQueryGameSessions:
        self.is_soft_deleted = value
        return self

    def with_joinability(self, value: str) -> AdminQueryGameSessions:
        self.joinability = value
        return self

    def with_limit(self, value: int) -> AdminQueryGameSessions:
        self.limit = value
        return self

    def with_match_pool(self, value: str) -> AdminQueryGameSessions:
        self.match_pool = value
        return self

    def with_member_id(self, value: str) -> AdminQueryGameSessions:
        self.member_id = value
        return self

    def with_offset(self, value: int) -> AdminQueryGameSessions:
        self.offset = value
        return self

    def with_order(self, value: str) -> AdminQueryGameSessions:
        self.order = value
        return self

    def with_order_by(self, value: str) -> AdminQueryGameSessions:
        self.order_by = value
        return self

    def with_session_id(self, value: str) -> AdminQueryGameSessions:
        self.session_id = value
        return self

    def with_status(self, value: str) -> AdminQueryGameSessions:
        self.status = value
        return self

    def with_status_v2(self, value: str) -> AdminQueryGameSessions:
        self.status_v2 = value
        return self

    def with_to_time(self, value: str) -> AdminQueryGameSessions:
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
        if hasattr(self, "configuration_name") and self.configuration_name:
            result["configurationName"] = str(self.configuration_name)
        elif include_empty:
            result["configurationName"] = ""
        if hasattr(self, "ds_pod_name") and self.ds_pod_name:
            result["dsPodName"] = str(self.ds_pod_name)
        elif include_empty:
            result["dsPodName"] = ""
        if hasattr(self, "from_time") and self.from_time:
            result["fromTime"] = str(self.from_time)
        elif include_empty:
            result["fromTime"] = ""
        if hasattr(self, "game_mode") and self.game_mode:
            result["gameMode"] = str(self.game_mode)
        elif include_empty:
            result["gameMode"] = ""
        if hasattr(self, "is_soft_deleted") and self.is_soft_deleted:
            result["isSoftDeleted"] = str(self.is_soft_deleted)
        elif include_empty:
            result["isSoftDeleted"] = ""
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
        if hasattr(self, "member_id") and self.member_id:
            result["memberID"] = str(self.member_id)
        elif include_empty:
            result["memberID"] = ""
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
        if hasattr(self, "session_id") and self.session_id:
            result["sessionID"] = str(self.session_id)
        elif include_empty:
            result["sessionID"] = ""
        if hasattr(self, "status") and self.status:
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = ""
        if hasattr(self, "status_v2") and self.status_v2:
            result["statusV2"] = str(self.status_v2)
        elif include_empty:
            result["statusV2"] = ""
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
        Union[None, ApimodelsGameSessionQueryResponse],
        Union[None, HttpResponse, ResponseError],
    ]:
        """Parse the given response.

        200: OK - ApimodelsGameSessionQueryResponse (OK)

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
            return ApimodelsGameSessionQueryResponse.create_from_dict(content), None
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
        configuration_name: Optional[str] = None,
        ds_pod_name: Optional[str] = None,
        from_time: Optional[str] = None,
        game_mode: Optional[str] = None,
        is_soft_deleted: Optional[str] = None,
        joinability: Optional[str] = None,
        limit: Optional[int] = None,
        match_pool: Optional[str] = None,
        member_id: Optional[str] = None,
        offset: Optional[int] = None,
        order: Optional[str] = None,
        order_by: Optional[str] = None,
        session_id: Optional[str] = None,
        status: Optional[str] = None,
        status_v2: Optional[str] = None,
        to_time: Optional[str] = None,
    ) -> AdminQueryGameSessions:
        instance = cls()
        instance.namespace = namespace
        if configuration_name is not None:
            instance.configuration_name = configuration_name
        if ds_pod_name is not None:
            instance.ds_pod_name = ds_pod_name
        if from_time is not None:
            instance.from_time = from_time
        if game_mode is not None:
            instance.game_mode = game_mode
        if is_soft_deleted is not None:
            instance.is_soft_deleted = is_soft_deleted
        if joinability is not None:
            instance.joinability = joinability
        if limit is not None:
            instance.limit = limit
        if match_pool is not None:
            instance.match_pool = match_pool
        if member_id is not None:
            instance.member_id = member_id
        if offset is not None:
            instance.offset = offset
        if order is not None:
            instance.order = order
        if order_by is not None:
            instance.order_by = order_by
        if session_id is not None:
            instance.session_id = session_id
        if status is not None:
            instance.status = status
        if status_v2 is not None:
            instance.status_v2 = status_v2
        if to_time is not None:
            instance.to_time = to_time
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AdminQueryGameSessions:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "configurationName" in dict_ and dict_["configurationName"] is not None:
            instance.configuration_name = str(dict_["configurationName"])
        elif include_empty:
            instance.configuration_name = ""
        if "dsPodName" in dict_ and dict_["dsPodName"] is not None:
            instance.ds_pod_name = str(dict_["dsPodName"])
        elif include_empty:
            instance.ds_pod_name = ""
        if "fromTime" in dict_ and dict_["fromTime"] is not None:
            instance.from_time = str(dict_["fromTime"])
        elif include_empty:
            instance.from_time = ""
        if "gameMode" in dict_ and dict_["gameMode"] is not None:
            instance.game_mode = str(dict_["gameMode"])
        elif include_empty:
            instance.game_mode = ""
        if "isSoftDeleted" in dict_ and dict_["isSoftDeleted"] is not None:
            instance.is_soft_deleted = str(dict_["isSoftDeleted"])
        elif include_empty:
            instance.is_soft_deleted = ""
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
        if "memberID" in dict_ and dict_["memberID"] is not None:
            instance.member_id = str(dict_["memberID"])
        elif include_empty:
            instance.member_id = ""
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
        if "sessionID" in dict_ and dict_["sessionID"] is not None:
            instance.session_id = str(dict_["sessionID"])
        elif include_empty:
            instance.session_id = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = ""
        if "statusV2" in dict_ and dict_["statusV2"] is not None:
            instance.status_v2 = str(dict_["statusV2"])
        elif include_empty:
            instance.status_v2 = ""
        if "toTime" in dict_ and dict_["toTime"] is not None:
            instance.to_time = str(dict_["toTime"])
        elif include_empty:
            instance.to_time = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "configurationName": "configuration_name",
            "dsPodName": "ds_pod_name",
            "fromTime": "from_time",
            "gameMode": "game_mode",
            "isSoftDeleted": "is_soft_deleted",
            "joinability": "joinability",
            "limit": "limit",
            "matchPool": "match_pool",
            "memberID": "member_id",
            "offset": "offset",
            "order": "order",
            "orderBy": "order_by",
            "sessionID": "session_id",
            "status": "status",
            "statusV2": "status_v2",
            "toTime": "to_time",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "configurationName": False,
            "dsPodName": False,
            "fromTime": False,
            "gameMode": False,
            "isSoftDeleted": False,
            "joinability": False,
            "limit": False,
            "matchPool": False,
            "memberID": False,
            "offset": False,
            "order": False,
            "orderBy": False,
            "sessionID": False,
            "status": False,
            "statusV2": False,
            "toTime": False,
        }

    # endregion static methods
