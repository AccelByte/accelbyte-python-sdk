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

# AccelByte Gaming Services Session Browser Service

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse
from .....core import deprecated

from ...models import ModelsJoinGameSessionRequest
from ...models import ModelsSessionResponse
from ...models import RestapiErrorResponseV2


class JoinSession(Operation):
    """Join specified session by session ID (JoinSession)

    Join the specified session by session ID. Possible the game required a password to join

    Properties:
        url: /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/join

        method: POST

        tags: ["Session", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsJoinGameSessionRequest in body

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionID) REQUIRED str in path

    Responses:
        200: OK - ModelsSessionResponse (session get)

        400: Bad Request - RestapiErrorResponseV2 (malformed request)

        403: Forbidden - RestapiErrorResponseV2 (user is banned from joining session)

        404: Not Found - RestapiErrorResponseV2 (session not found)

        500: Internal Server Error - RestapiErrorResponseV2 (Internal Server Error)
    """

    # region fields

    _url: str = "/sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/join"
    _method: str = "POST"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    body: ModelsJoinGameSessionRequest  # REQUIRED in [body]
    namespace: str  # REQUIRED in [path]
    session_id: str  # REQUIRED in [path]

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
            "body": self.get_body_params(),
            "path": self.get_path_params(),
        }

    def get_body_params(self) -> Any:
        if not hasattr(self, "body") or self.body is None:
            return None
        return self.body.to_dict()

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "session_id"):
            result["sessionID"] = self.session_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_body(self, value: ModelsJoinGameSessionRequest) -> JoinSession:
        self.body = value
        return self

    def with_namespace(self, value: str) -> JoinSession:
        self.namespace = value
        return self

    def with_session_id(self, value: str) -> JoinSession:
        self.session_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = ModelsJoinGameSessionRequest()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "session_id") and self.session_id:
            result["sessionID"] = str(self.session_id)
        elif include_empty:
            result["sessionID"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ModelsSessionResponse],
        Union[None, HttpResponse, RestapiErrorResponseV2],
    ]:
        """Parse the given response.

        200: OK - ModelsSessionResponse (session get)

        400: Bad Request - RestapiErrorResponseV2 (malformed request)

        403: Forbidden - RestapiErrorResponseV2 (user is banned from joining session)

        404: Not Found - RestapiErrorResponseV2 (session not found)

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
            return ModelsSessionResponse.create_from_dict(content), None
        if code == 400:
            return None, RestapiErrorResponseV2.create_from_dict(content)
        if code == 403:
            return None, RestapiErrorResponseV2.create_from_dict(content)
        if code == 404:
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
        body: ModelsJoinGameSessionRequest,
        namespace: str,
        session_id: str,
        **kwargs,
    ) -> JoinSession:
        instance = cls()
        instance.body = body
        instance.namespace = namespace
        instance.session_id = session_id
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> JoinSession:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = ModelsJoinGameSessionRequest.create_from_dict(
                dict_["body"], include_empty=include_empty
            )
        elif include_empty:
            instance.body = ModelsJoinGameSessionRequest()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "sessionID" in dict_ and dict_["sessionID"] is not None:
            instance.session_id = str(dict_["sessionID"])
        elif include_empty:
            instance.session_id = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "namespace": "namespace",
            "sessionID": "session_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "body": True,
            "namespace": True,
            "sessionID": True,
        }

    # endregion static methods
