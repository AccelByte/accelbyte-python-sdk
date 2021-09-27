# Auto-generated at 2021-09-27T17:01:30.346078+08:00
# from: Justice SessionBrowser Service ()

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

from ...models import ModelsSessionQueryResponse
from ...models import ResponseError


class QuerySession(Operation):
    """Query to available game session (QuerySession)

    Properties:
        url: /sessionbrowser/namespaces/{namespace}/gamesession

        method: GET

        tags: Session

        consumes: ["application/json"]

        produces: ["application/json"]

        security: bearer

        namespace: (namespace) REQUIRED str in path

        session_type: (session_type) REQUIRED str in query

        user_id: (user_id) OPTIONAL str in query

        game_mode: (game_mode) OPTIONAL str in query

        game_version: (game_version) OPTIONAL str in query

        joinable: (joinable) OPTIONAL str in query

        match_id: (match_id) OPTIONAL str in query

        server_status: (server_status) OPTIONAL str in query

        offset: (offset) OPTIONAL str in query

        limit: (limit) OPTIONAL str in query

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
    _security: Optional[str] = "bearer"
    _location_query: str = None

    namespace: str                                                                                 # REQUIRED in [path]
    session_type: str                                                                              # REQUIRED in [query]
    user_id: str                                                                                   # OPTIONAL in [query]
    game_mode: str                                                                                 # OPTIONAL in [query]
    game_version: str                                                                              # OPTIONAL in [query]
    joinable: str                                                                                  # OPTIONAL in [query]
    match_id: str                                                                                  # OPTIONAL in [query]
    server_status: str                                                                             # OPTIONAL in [query]
    offset: str                                                                                    # OPTIONAL in [query]
    limit: str                                                                                     # OPTIONAL in [query]

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
            "session_type",
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
        if hasattr(self, "session_type"):
            result["session_type"] = self.session_type
        if hasattr(self, "user_id"):
            result["user_id"] = self.user_id
        if hasattr(self, "game_mode"):
            result["game_mode"] = self.game_mode
        if hasattr(self, "game_version"):
            result["game_version"] = self.game_version
        if hasattr(self, "joinable"):
            result["joinable"] = self.joinable
        if hasattr(self, "match_id"):
            result["match_id"] = self.match_id
        if hasattr(self, "server_status"):
            result["server_status"] = self.server_status
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        if not hasattr(self, "session_type") or self.session_type is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> QuerySession:
        self.namespace = value
        return self

    def with_session_type(self, value: str) -> QuerySession:
        self.session_type = value
        return self

    def with_user_id(self, value: str) -> QuerySession:
        self.user_id = value
        return self

    def with_game_mode(self, value: str) -> QuerySession:
        self.game_mode = value
        return self

    def with_game_version(self, value: str) -> QuerySession:
        self.game_version = value
        return self

    def with_joinable(self, value: str) -> QuerySession:
        self.joinable = value
        return self

    def with_match_id(self, value: str) -> QuerySession:
        self.match_id = value
        return self

    def with_server_status(self, value: str) -> QuerySession:
        self.server_status = value
        return self

    def with_offset(self, value: str) -> QuerySession:
        self.offset = value
        return self

    def with_limit(self, value: str) -> QuerySession:
        self.limit = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "session_type") and self.session_type:
            result["session_type"] = str(self.session_type)
        elif include_empty:
            result["session_type"] = str()
        if hasattr(self, "user_id") and self.user_id:
            result["user_id"] = str(self.user_id)
        elif include_empty:
            result["user_id"] = str()
        if hasattr(self, "game_mode") and self.game_mode:
            result["game_mode"] = str(self.game_mode)
        elif include_empty:
            result["game_mode"] = str()
        if hasattr(self, "game_version") and self.game_version:
            result["game_version"] = str(self.game_version)
        elif include_empty:
            result["game_version"] = str()
        if hasattr(self, "joinable") and self.joinable:
            result["joinable"] = str(self.joinable)
        elif include_empty:
            result["joinable"] = str()
        if hasattr(self, "match_id") and self.match_id:
            result["match_id"] = str(self.match_id)
        elif include_empty:
            result["match_id"] = str()
        if hasattr(self, "server_status") and self.server_status:
            result["server_status"] = str(self.server_status)
        elif include_empty:
            result["server_status"] = str()
        if hasattr(self, "offset") and self.offset:
            result["offset"] = str(self.offset)
        elif include_empty:
            result["offset"] = str()
        if hasattr(self, "limit") and self.limit:
            result["limit"] = str(self.limit)
        elif include_empty:
            result["limit"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, ModelsSessionQueryResponse], Union[None, ResponseError]]:
        """Parse the given response.

        200: OK - ModelsSessionQueryResponse (session get)

        400: Bad Request - ResponseError (malformed request)

        500: Internal Server Error - ResponseError (Internal Server Error)
        """
        if code == 200:
            return ModelsSessionQueryResponse.create_from_dict(content), None
        if code == 400:
            return None, ResponseError.create_from_dict(content)
        if code == 500:
            return None, ResponseError.create_from_dict(content)
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
        session_type: str,
        user_id: Optional[str] = None,
        game_mode: Optional[str] = None,
        game_version: Optional[str] = None,
        joinable: Optional[str] = None,
        match_id: Optional[str] = None,
        server_status: Optional[str] = None,
        offset: Optional[str] = None,
        limit: Optional[str] = None,
    ) -> QuerySession:
        instance = cls()
        instance.namespace = namespace
        instance.session_type = session_type
        if user_id is not None:
            instance.user_id = user_id
        if game_mode is not None:
            instance.game_mode = game_mode
        if game_version is not None:
            instance.game_version = game_version
        if joinable is not None:
            instance.joinable = joinable
        if match_id is not None:
            instance.match_id = match_id
        if server_status is not None:
            instance.server_status = server_status
        if offset is not None:
            instance.offset = offset
        if limit is not None:
            instance.limit = limit
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> QuerySession:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "session_type" in dict_ and dict_["session_type"] is not None:
            instance.session_type = str(dict_["session_type"])
        elif include_empty:
            instance.session_type = str()
        if "user_id" in dict_ and dict_["user_id"] is not None:
            instance.user_id = str(dict_["user_id"])
        elif include_empty:
            instance.user_id = str()
        if "game_mode" in dict_ and dict_["game_mode"] is not None:
            instance.game_mode = str(dict_["game_mode"])
        elif include_empty:
            instance.game_mode = str()
        if "game_version" in dict_ and dict_["game_version"] is not None:
            instance.game_version = str(dict_["game_version"])
        elif include_empty:
            instance.game_version = str()
        if "joinable" in dict_ and dict_["joinable"] is not None:
            instance.joinable = str(dict_["joinable"])
        elif include_empty:
            instance.joinable = str()
        if "match_id" in dict_ and dict_["match_id"] is not None:
            instance.match_id = str(dict_["match_id"])
        elif include_empty:
            instance.match_id = str()
        if "server_status" in dict_ and dict_["server_status"] is not None:
            instance.server_status = str(dict_["server_status"])
        elif include_empty:
            instance.server_status = str()
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = str(dict_["offset"])
        elif include_empty:
            instance.offset = str()
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = str(dict_["limit"])
        elif include_empty:
            instance.limit = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "session_type": "session_type",
            "user_id": "user_id",
            "game_mode": "game_mode",
            "game_version": "game_version",
            "joinable": "joinable",
            "match_id": "match_id",
            "server_status": "server_status",
            "offset": "offset",
            "limit": "limit",
        }

    # endregion static methods
