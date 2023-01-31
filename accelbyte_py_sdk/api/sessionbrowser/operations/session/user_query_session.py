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

# AccelByte Cloud Session Browser Service ()

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ModelsSessionQueryResponse
from ...models import ResponseError


class UserQuerySession(Operation):
    """Query to available game session (UserQuerySession)

    Required permission: NAMESPACE:{namespace}:SESSIONBROWSER:SESSION [READ]

    Required scope: social

    Query available game session

    Required Permission(s):
        - NAMESPACE:{namespace}:SESSIONBROWSER:SESSION [READ]

    Required Scope(s):
        - social

    Properties:
        url: /sessionbrowser/namespaces/{namespace}/gamesession

        method: GET

        tags: ["Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        game_mode: (game_mode) OPTIONAL str in query

        game_version: (game_version) OPTIONAL str in query

        joinable: (joinable) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        match_exist: (match_exist) OPTIONAL str in query

        match_id: (match_id) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        server_status: (server_status) OPTIONAL str in query

        user_id: (user_id) OPTIONAL str in query

        session_type: (session_type) REQUIRED str in query

    Responses:
        200: OK - ModelsSessionQueryResponse (session get)

        400: Bad Request - ResponseError (malformed request)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """

    # region fields

    _url: str = "/sessionbrowser/namespaces/{namespace}/gamesession"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    game_mode: str  # OPTIONAL in [query]
    game_version: str  # OPTIONAL in [query]
    joinable: str  # OPTIONAL in [query]
    limit: int  # OPTIONAL in [query]
    match_exist: str  # OPTIONAL in [query]
    match_id: str  # OPTIONAL in [query]
    offset: int  # OPTIONAL in [query]
    server_status: str  # OPTIONAL in [query]
    user_id: str  # OPTIONAL in [query]
    session_type: str  # REQUIRED in [query]

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
        if hasattr(self, "game_mode"):
            result["game_mode"] = self.game_mode
        if hasattr(self, "game_version"):
            result["game_version"] = self.game_version
        if hasattr(self, "joinable"):
            result["joinable"] = self.joinable
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "match_exist"):
            result["match_exist"] = self.match_exist
        if hasattr(self, "match_id"):
            result["match_id"] = self.match_id
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "server_status"):
            result["server_status"] = self.server_status
        if hasattr(self, "user_id"):
            result["user_id"] = self.user_id
        if hasattr(self, "session_type"):
            result["session_type"] = self.session_type
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> UserQuerySession:
        self.namespace = value
        return self

    def with_game_mode(self, value: str) -> UserQuerySession:
        self.game_mode = value
        return self

    def with_game_version(self, value: str) -> UserQuerySession:
        self.game_version = value
        return self

    def with_joinable(self, value: str) -> UserQuerySession:
        self.joinable = value
        return self

    def with_limit(self, value: int) -> UserQuerySession:
        self.limit = value
        return self

    def with_match_exist(self, value: str) -> UserQuerySession:
        self.match_exist = value
        return self

    def with_match_id(self, value: str) -> UserQuerySession:
        self.match_id = value
        return self

    def with_offset(self, value: int) -> UserQuerySession:
        self.offset = value
        return self

    def with_server_status(self, value: str) -> UserQuerySession:
        self.server_status = value
        return self

    def with_user_id(self, value: str) -> UserQuerySession:
        self.user_id = value
        return self

    def with_session_type(self, value: str) -> UserQuerySession:
        self.session_type = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "game_mode") and self.game_mode:
            result["game_mode"] = str(self.game_mode)
        elif include_empty:
            result["game_mode"] = ""
        if hasattr(self, "game_version") and self.game_version:
            result["game_version"] = str(self.game_version)
        elif include_empty:
            result["game_version"] = ""
        if hasattr(self, "joinable") and self.joinable:
            result["joinable"] = str(self.joinable)
        elif include_empty:
            result["joinable"] = ""
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = 0
        if hasattr(self, "match_exist") and self.match_exist:
            result["match_exist"] = str(self.match_exist)
        elif include_empty:
            result["match_exist"] = ""
        if hasattr(self, "match_id") and self.match_id:
            result["match_id"] = str(self.match_id)
        elif include_empty:
            result["match_id"] = ""
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = 0
        if hasattr(self, "server_status") and self.server_status:
            result["server_status"] = str(self.server_status)
        elif include_empty:
            result["server_status"] = ""
        if hasattr(self, "user_id") and self.user_id:
            result["user_id"] = str(self.user_id)
        elif include_empty:
            result["user_id"] = ""
        if hasattr(self, "session_type") and self.session_type:
            result["session_type"] = str(self.session_type)
        elif include_empty:
            result["session_type"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ModelsSessionQueryResponse],
        Union[None, HttpResponse, ResponseError],
    ]:
        """Parse the given response.

        200: OK - ModelsSessionQueryResponse (session get)

        400: Bad Request - ResponseError (malformed request)

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
            return ModelsSessionQueryResponse.create_from_dict(content), None
        if code == 400:
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
        session_type: str,
        game_mode: Optional[str] = None,
        game_version: Optional[str] = None,
        joinable: Optional[str] = None,
        limit: Optional[int] = None,
        match_exist: Optional[str] = None,
        match_id: Optional[str] = None,
        offset: Optional[int] = None,
        server_status: Optional[str] = None,
        user_id: Optional[str] = None,
    ) -> UserQuerySession:
        instance = cls()
        instance.namespace = namespace
        instance.session_type = session_type
        if game_mode is not None:
            instance.game_mode = game_mode
        if game_version is not None:
            instance.game_version = game_version
        if joinable is not None:
            instance.joinable = joinable
        if limit is not None:
            instance.limit = limit
        if match_exist is not None:
            instance.match_exist = match_exist
        if match_id is not None:
            instance.match_id = match_id
        if offset is not None:
            instance.offset = offset
        if server_status is not None:
            instance.server_status = server_status
        if user_id is not None:
            instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> UserQuerySession:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "game_mode" in dict_ and dict_["game_mode"] is not None:
            instance.game_mode = str(dict_["game_mode"])
        elif include_empty:
            instance.game_mode = ""
        if "game_version" in dict_ and dict_["game_version"] is not None:
            instance.game_version = str(dict_["game_version"])
        elif include_empty:
            instance.game_version = ""
        if "joinable" in dict_ and dict_["joinable"] is not None:
            instance.joinable = str(dict_["joinable"])
        elif include_empty:
            instance.joinable = ""
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = 0
        if "match_exist" in dict_ and dict_["match_exist"] is not None:
            instance.match_exist = str(dict_["match_exist"])
        elif include_empty:
            instance.match_exist = ""
        if "match_id" in dict_ and dict_["match_id"] is not None:
            instance.match_id = str(dict_["match_id"])
        elif include_empty:
            instance.match_id = ""
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = 0
        if "server_status" in dict_ and dict_["server_status"] is not None:
            instance.server_status = str(dict_["server_status"])
        elif include_empty:
            instance.server_status = ""
        if "user_id" in dict_ and dict_["user_id"] is not None:
            instance.user_id = str(dict_["user_id"])
        elif include_empty:
            instance.user_id = ""
        if "session_type" in dict_ and dict_["session_type"] is not None:
            instance.session_type = str(dict_["session_type"])
        elif include_empty:
            instance.session_type = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "game_mode": "game_mode",
            "game_version": "game_version",
            "joinable": "joinable",
            "limit": "limit",
            "match_exist": "match_exist",
            "match_id": "match_id",
            "offset": "offset",
            "server_status": "server_status",
            "user_id": "user_id",
            "session_type": "session_type",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "game_mode": False,
            "game_version": False,
            "joinable": False,
            "limit": False,
            "match_exist": False,
            "match_id": False,
            "offset": False,
            "server_status": False,
            "user_id": False,
            "session_type": True,
        }

    # endregion static methods
