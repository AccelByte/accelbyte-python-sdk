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

from ...models import ModelsActiveMatchmakingGameResponse
from ...models import RestapiErrorResponseV2


class GetActiveMatchmakingGameSessions(Operation):
    """Get all active session for matchmaking game, this return only dedicated session type (GetActiveMatchmakingGameSessions)

    Required permission: ADMIN:NAMESPACE:{namespace}:SESSIONBROWSER:SESSION [READ]

    Required scope: social

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:SESSIONBROWSER:SESSION [READ]

    Required Scope(s):
        - social

    Properties:
        url: /sessionbrowser/admin/namespaces/{namespace}/gamesession/active/matchmaking-game

        method: GET

        tags: ["Session"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        match_id: (match_id) OPTIONAL str in query

        server_region: (server_region) OPTIONAL str in query

        session_id: (session_id) OPTIONAL str in query

    Responses:
        200: OK - ModelsActiveMatchmakingGameResponse (matchmaking game session list)

        400: Bad Request - RestapiErrorResponseV2 (malformed request)

        500: Internal Server Error - RestapiErrorResponseV2 (Internal Server Error)
    """

    # region fields

    _url: str = "/sessionbrowser/admin/namespaces/{namespace}/gamesession/active/matchmaking-game"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    match_id: str  # OPTIONAL in [query]
    server_region: str  # OPTIONAL in [query]
    session_id: str  # OPTIONAL in [query]

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
        if hasattr(self, "match_id"):
            result["match_id"] = self.match_id
        if hasattr(self, "server_region"):
            result["server_region"] = self.server_region
        if hasattr(self, "session_id"):
            result["session_id"] = self.session_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> GetActiveMatchmakingGameSessions:
        self.namespace = value
        return self

    def with_match_id(self, value: str) -> GetActiveMatchmakingGameSessions:
        self.match_id = value
        return self

    def with_server_region(self, value: str) -> GetActiveMatchmakingGameSessions:
        self.server_region = value
        return self

    def with_session_id(self, value: str) -> GetActiveMatchmakingGameSessions:
        self.session_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "match_id") and self.match_id:
            result["match_id"] = str(self.match_id)
        elif include_empty:
            result["match_id"] = ""
        if hasattr(self, "server_region") and self.server_region:
            result["server_region"] = str(self.server_region)
        elif include_empty:
            result["server_region"] = ""
        if hasattr(self, "session_id") and self.session_id:
            result["session_id"] = str(self.session_id)
        elif include_empty:
            result["session_id"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ModelsActiveMatchmakingGameResponse],
        Union[None, HttpResponse, RestapiErrorResponseV2],
    ]:
        """Parse the given response.

        200: OK - ModelsActiveMatchmakingGameResponse (matchmaking game session list)

        400: Bad Request - RestapiErrorResponseV2 (malformed request)

        500: Internal Server Error - RestapiErrorResponseV2 (Internal Server Error)

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
            return ModelsActiveMatchmakingGameResponse.create_from_dict(content), None
        if code == 400:
            return None, RestapiErrorResponseV2.create_from_dict(content)
        if code == 500:
            return None, RestapiErrorResponseV2.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        match_id: Optional[str] = None,
        server_region: Optional[str] = None,
        session_id: Optional[str] = None,
    ) -> GetActiveMatchmakingGameSessions:
        instance = cls()
        instance.namespace = namespace
        if match_id is not None:
            instance.match_id = match_id
        if server_region is not None:
            instance.server_region = server_region
        if session_id is not None:
            instance.session_id = session_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> GetActiveMatchmakingGameSessions:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "match_id" in dict_ and dict_["match_id"] is not None:
            instance.match_id = str(dict_["match_id"])
        elif include_empty:
            instance.match_id = ""
        if "server_region" in dict_ and dict_["server_region"] is not None:
            instance.server_region = str(dict_["server_region"])
        elif include_empty:
            instance.server_region = ""
        if "session_id" in dict_ and dict_["session_id"] is not None:
            instance.session_id = str(dict_["session_id"])
        elif include_empty:
            instance.session_id = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "match_id": "match_id",
            "server_region": "server_region",
            "session_id": "session_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "match_id": False,
            "server_region": False,
            "session_id": False,
        }

    # endregion static methods
