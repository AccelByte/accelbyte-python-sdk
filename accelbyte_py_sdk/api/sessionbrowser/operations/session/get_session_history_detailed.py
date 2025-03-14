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

from ...models import ModelsGetSessionHistoryDetailedResponseItem
from ...models import RestapiErrorV1


class GetSessionHistoryDetailed(Operation):
    """Get session history detailed (GetSessionHistoryDetailed)

    Get session history detailed.

    if party_id value empty/null, field will not show in response body.

    Properties:
        url: /sessionbrowser/admin/namespaces/{namespace}/sessions/{matchID}/history/detailed

        method: GET

        tags: ["Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        match_id: (matchID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelsGetSessionHistoryDetailedResponseItem] (Operation succeeded)

        400: Bad Request - RestapiErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestapiErrorV1 (20001: unauthorized access)

        403: Forbidden - RestapiErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        500: Internal Server Error - RestapiErrorV1 (20000: internal server error)
    """

    # region fields

    _url: str = "/sessionbrowser/admin/namespaces/{namespace}/sessions/{matchID}/history/detailed"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    match_id: str  # REQUIRED in [path]
    namespace: str  # REQUIRED in [path]

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
        }

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "match_id"):
            result["matchID"] = self.match_id
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_match_id(self, value: str) -> GetSessionHistoryDetailed:
        self.match_id = value
        return self

    def with_namespace(self, value: str) -> GetSessionHistoryDetailed:
        self.namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "match_id") and self.match_id:
            result["matchID"] = str(self.match_id)
        elif include_empty:
            result["matchID"] = ""
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, List[ModelsGetSessionHistoryDetailedResponseItem]],
        Union[None, HttpResponse, RestapiErrorV1],
    ]:
        """Parse the given response.

        200: OK - List[ModelsGetSessionHistoryDetailedResponseItem] (Operation succeeded)

        400: Bad Request - RestapiErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestapiErrorV1 (20001: unauthorized access)

        403: Forbidden - RestapiErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        500: Internal Server Error - RestapiErrorV1 (20000: internal server error)

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
                ModelsGetSessionHistoryDetailedResponseItem.create_from_dict(i)
                for i in content
            ], None
        if code == 400:
            return None, RestapiErrorV1.create_from_dict(content)
        if code == 401:
            return None, RestapiErrorV1.create_from_dict(content)
        if code == 403:
            return None, RestapiErrorV1.create_from_dict(content)
        if code == 500:
            return None, RestapiErrorV1.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls, match_id: str, namespace: str, **kwargs
    ) -> GetSessionHistoryDetailed:
        instance = cls()
        instance.match_id = match_id
        instance.namespace = namespace
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> GetSessionHistoryDetailed:
        instance = cls()
        if "matchID" in dict_ and dict_["matchID"] is not None:
            instance.match_id = str(dict_["matchID"])
        elif include_empty:
            instance.match_id = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "matchID": "match_id",
            "namespace": "namespace",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "matchID": True,
            "namespace": True,
        }

    # endregion static methods
