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

from ...models import ApimodelsGameSessionResponse
from ...models import ResponseError


class PublicQueryMyGameSessions(Operation):
    """Query user's game sessions (publicQueryMyGameSessions)

    Query user's game sessions.
    By default, API will return a list of user's active game sessions (INVITED,JOINED,CONNECTED).

    Session service has several DSInformation status to track DS request to DSMC:
    - NEED_TO_REQUEST: number of active players hasn't reached session's minPlayers therefore DS has not yet requested.
    - REQUESTED: DS is being requested to DSMC.
    - AVAILABLE: DS is ready to use. The DSMC status for this DS is either READY/BUSY.
    - FAILED_TO_REQUEST: DSMC fails to create the DS.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/users/me/gamesessions

        method: GET

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        order: (order) OPTIONAL str in query

        order_by: (orderBy) OPTIONAL str in query

        status: (status) OPTIONAL str in query

    Responses:
        200: OK - List[ApimodelsGameSessionResponse] (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """

    # region fields

    _url: str = "/session/v1/public/namespaces/{namespace}/users/me/gamesessions"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    order: str  # OPTIONAL in [query]
    order_by: str  # OPTIONAL in [query]
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
        if hasattr(self, "order"):
            result["order"] = self.order
        if hasattr(self, "order_by"):
            result["orderBy"] = self.order_by
        if hasattr(self, "status"):
            result["status"] = self.status
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> PublicQueryMyGameSessions:
        self.namespace = value
        return self

    def with_order(self, value: str) -> PublicQueryMyGameSessions:
        self.order = value
        return self

    def with_order_by(self, value: str) -> PublicQueryMyGameSessions:
        self.order_by = value
        return self

    def with_status(self, value: str) -> PublicQueryMyGameSessions:
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
        if hasattr(self, "order") and self.order:
            result["order"] = str(self.order)
        elif include_empty:
            result["order"] = ""
        if hasattr(self, "order_by") and self.order_by:
            result["orderBy"] = str(self.order_by)
        elif include_empty:
            result["orderBy"] = ""
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
        Union[None, List[ApimodelsGameSessionResponse]],
        Union[None, HttpResponse, ResponseError],
    ]:
        """Parse the given response.

        200: OK - List[ApimodelsGameSessionResponse] (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

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
            return [
                ApimodelsGameSessionResponse.create_from_dict(i) for i in content
            ], None
        if code == 400:
            return None, ResponseError.create_from_dict(content)
        if code == 401:
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
        order: Optional[str] = None,
        order_by: Optional[str] = None,
        status: Optional[str] = None,
    ) -> PublicQueryMyGameSessions:
        instance = cls()
        instance.namespace = namespace
        if order is not None:
            instance.order = order
        if order_by is not None:
            instance.order_by = order_by
        if status is not None:
            instance.status = status
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PublicQueryMyGameSessions:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "order" in dict_ and dict_["order"] is not None:
            instance.order = str(dict_["order"])
        elif include_empty:
            instance.order = ""
        if "orderBy" in dict_ and dict_["orderBy"] is not None:
            instance.order_by = str(dict_["orderBy"])
        elif include_empty:
            instance.order_by = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "order": "order",
            "orderBy": "order_by",
            "status": "status",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "order": False,
            "orderBy": False,
            "status": False,
        }

    # endregion static methods
