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

# AccelByte Gaming Services Challenge Service

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import IamErrorResponse
from ...models import ModelUserProgressionResponse
from ...models import ResponseError


class PublicGetPastUserProgression(Operation):
    """List User's Progressions in the previous rotation. (publicGetPastUserProgression)

    - Required permission: NAMESPACE:{namespace}:CHALLENGE:PROGRESSION [READ]

    Properties:
        url: /challenge/v1/public/namespaces/{namespace}/users/me/progress/{challengeCode}/index/{index}

        method: GET

        tags: ["Challenge Progression"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        challenge_code: (challengeCode) REQUIRED str in path

        index: (index) REQUIRED int in path

        namespace: (namespace) REQUIRED str in path

        goal_code: (goalCode) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - ModelUserProgressionResponse (OK)

        400: Bad Request - IamErrorResponse (20018: bad request: {{message}})

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - IamErrorResponse (20029: not found)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """

    # region fields

    _url: str = "/challenge/v1/public/namespaces/{namespace}/users/me/progress/{challengeCode}/index/{index}"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    challenge_code: str  # REQUIRED in [path]
    index: int  # REQUIRED in [path]
    namespace: str  # REQUIRED in [path]
    goal_code: str  # OPTIONAL in [query]
    limit: int  # OPTIONAL in [query]
    offset: int  # OPTIONAL in [query]
    tags: List[str]  # OPTIONAL in [query]

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
        if hasattr(self, "challenge_code"):
            result["challengeCode"] = self.challenge_code
        if hasattr(self, "index"):
            result["index"] = self.index
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "goal_code"):
            result["goalCode"] = self.goal_code
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "tags"):
            result["tags"] = self.tags
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_challenge_code(self, value: str) -> PublicGetPastUserProgression:
        self.challenge_code = value
        return self

    def with_index(self, value: int) -> PublicGetPastUserProgression:
        self.index = value
        return self

    def with_namespace(self, value: str) -> PublicGetPastUserProgression:
        self.namespace = value
        return self

    def with_goal_code(self, value: str) -> PublicGetPastUserProgression:
        self.goal_code = value
        return self

    def with_limit(self, value: int) -> PublicGetPastUserProgression:
        self.limit = value
        return self

    def with_offset(self, value: int) -> PublicGetPastUserProgression:
        self.offset = value
        return self

    def with_tags(self, value: List[str]) -> PublicGetPastUserProgression:
        self.tags = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "challenge_code") and self.challenge_code:
            result["challengeCode"] = str(self.challenge_code)
        elif include_empty:
            result["challengeCode"] = ""
        if hasattr(self, "index") and self.index:
            result["index"] = int(self.index)
        elif include_empty:
            result["index"] = 0
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "goal_code") and self.goal_code:
            result["goalCode"] = str(self.goal_code)
        elif include_empty:
            result["goalCode"] = ""
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = 0
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = 0
        if hasattr(self, "tags") and self.tags:
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ModelUserProgressionResponse],
        Union[None, HttpResponse, IamErrorResponse, ResponseError],
    ]:
        """Parse the given response.

        200: OK - ModelUserProgressionResponse (OK)

        400: Bad Request - IamErrorResponse (20018: bad request: {{message}})

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - IamErrorResponse (20029: not found)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})

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
            return ModelUserProgressionResponse.create_from_dict(content), None
        if code == 400:
            return None, IamErrorResponse.create_from_dict(content)
        if code == 401:
            return None, IamErrorResponse.create_from_dict(content)
        if code == 403:
            return None, IamErrorResponse.create_from_dict(content)
        if code == 404:
            return None, IamErrorResponse.create_from_dict(content)
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
        challenge_code: str,
        index: int,
        namespace: str,
        goal_code: Optional[str] = None,
        limit: Optional[int] = None,
        offset: Optional[int] = None,
        tags: Optional[List[str]] = None,
        **kwargs,
    ) -> PublicGetPastUserProgression:
        instance = cls()
        instance.challenge_code = challenge_code
        instance.index = index
        instance.namespace = namespace
        if goal_code is not None:
            instance.goal_code = goal_code
        if limit is not None:
            instance.limit = limit
        if offset is not None:
            instance.offset = offset
        if tags is not None:
            instance.tags = tags
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PublicGetPastUserProgression:
        instance = cls()
        if "challengeCode" in dict_ and dict_["challengeCode"] is not None:
            instance.challenge_code = str(dict_["challengeCode"])
        elif include_empty:
            instance.challenge_code = ""
        if "index" in dict_ and dict_["index"] is not None:
            instance.index = int(dict_["index"])
        elif include_empty:
            instance.index = 0
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "goalCode" in dict_ and dict_["goalCode"] is not None:
            instance.goal_code = str(dict_["goalCode"])
        elif include_empty:
            instance.goal_code = ""
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = 0
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = 0
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "challengeCode": "challenge_code",
            "index": "index",
            "namespace": "namespace",
            "goalCode": "goal_code",
            "limit": "limit",
            "offset": "offset",
            "tags": "tags",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "challengeCode": True,
            "index": True,
            "namespace": True,
            "goalCode": False,
            "limit": False,
            "offset": False,
            "tags": False,
        }

    @staticmethod
    def get_collection_format_map() -> Dict[str, Union[None, str]]:
        return {
            "tags": "csv",  # in query
        }

    # endregion static methods
