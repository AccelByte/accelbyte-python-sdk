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

from ...models import ApimodelsXRayMatchLengthDurationQueryResponse
from ...models import ResponseError


class QueryMatchLengthDurationp99(Operation):
    """Query match length duration p99 (queryMatchLengthDurationp99)

    Query match length duration p99. time in seconds

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/match-length-duration-p99

        method: GET

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        match_pool: (matchPool) OPTIONAL List[str] in query

        end_date: (endDate) REQUIRED str in query

        start_date: (startDate) REQUIRED str in query

    Responses:
        200: OK - ApimodelsXRayMatchLengthDurationQueryResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """

    # region fields

    _url: str = "/sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/match-length-duration-p99"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    match_pool: List[str]  # OPTIONAL in [query]
    end_date: str  # REQUIRED in [query]
    start_date: str  # REQUIRED in [query]

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
        if hasattr(self, "match_pool"):
            result["matchPool"] = self.match_pool
        if hasattr(self, "end_date"):
            result["endDate"] = self.end_date
        if hasattr(self, "start_date"):
            result["startDate"] = self.start_date
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> QueryMatchLengthDurationp99:
        self.namespace = value
        return self

    def with_match_pool(self, value: List[str]) -> QueryMatchLengthDurationp99:
        self.match_pool = value
        return self

    def with_end_date(self, value: str) -> QueryMatchLengthDurationp99:
        self.end_date = value
        return self

    def with_start_date(self, value: str) -> QueryMatchLengthDurationp99:
        self.start_date = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "match_pool") and self.match_pool:
            result["matchPool"] = [str(i0) for i0 in self.match_pool]
        elif include_empty:
            result["matchPool"] = []
        if hasattr(self, "end_date") and self.end_date:
            result["endDate"] = str(self.end_date)
        elif include_empty:
            result["endDate"] = ""
        if hasattr(self, "start_date") and self.start_date:
            result["startDate"] = str(self.start_date)
        elif include_empty:
            result["startDate"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ApimodelsXRayMatchLengthDurationQueryResponse],
        Union[None, HttpResponse, ResponseError],
    ]:
        """Parse the given response.

        200: OK - ApimodelsXRayMatchLengthDurationQueryResponse (OK)

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
            return (
                ApimodelsXRayMatchLengthDurationQueryResponse.create_from_dict(content),
                None,
            )
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
        end_date: str,
        start_date: str,
        match_pool: Optional[List[str]] = None,
        **kwargs,
    ) -> QueryMatchLengthDurationp99:
        instance = cls()
        instance.namespace = namespace
        instance.end_date = end_date
        instance.start_date = start_date
        if match_pool is not None:
            instance.match_pool = match_pool
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> QueryMatchLengthDurationp99:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "matchPool" in dict_ and dict_["matchPool"] is not None:
            instance.match_pool = [str(i0) for i0 in dict_["matchPool"]]
        elif include_empty:
            instance.match_pool = []
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = str(dict_["endDate"])
        elif include_empty:
            instance.end_date = ""
        if "startDate" in dict_ and dict_["startDate"] is not None:
            instance.start_date = str(dict_["startDate"])
        elif include_empty:
            instance.start_date = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "matchPool": "match_pool",
            "endDate": "end_date",
            "startDate": "start_date",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "matchPool": False,
            "endDate": True,
            "startDate": True,
        }

    @staticmethod
    def get_collection_format_map() -> Dict[str, Union[None, str]]:
        return {
            "matchPool": "csv",  # in query
        }

    # endregion static methods
