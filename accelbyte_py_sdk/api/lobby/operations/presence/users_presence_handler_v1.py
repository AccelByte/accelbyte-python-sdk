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

# AccelByte Cloud Lobby Server (staging)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import HandlersGetUsersPresenceResponse
from ...models import RestapiErrorResponseBody


class UsersPresenceHandlerV1(Operation):
    """Query users presence (UsersPresenceHandlerV1)

    Query users presence with given namespace and userIds.

    Properties:
        url: /lobby/v1/public/presence/namespaces/{namespace}/users/presence

        method: GET

        tags: ["presence"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        count_only: (countOnly) OPTIONAL bool in query

        user_ids: (userIds) REQUIRED str in query

    Responses:
        200: OK - HandlersGetUsersPresenceResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """

    # region fields

    _url: str = "/lobby/v1/public/presence/namespaces/{namespace}/users/presence"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    count_only: bool  # OPTIONAL in [query]
    user_ids: str  # REQUIRED in [query]

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
        if hasattr(self, "count_only"):
            result["countOnly"] = self.count_only
        if hasattr(self, "user_ids"):
            result["userIds"] = self.user_ids
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> UsersPresenceHandlerV1:
        self.namespace = value
        return self

    def with_count_only(self, value: bool) -> UsersPresenceHandlerV1:
        self.count_only = value
        return self

    def with_user_ids(self, value: str) -> UsersPresenceHandlerV1:
        self.user_ids = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "count_only") and self.count_only:
            result["countOnly"] = bool(self.count_only)
        elif include_empty:
            result["countOnly"] = False
        if hasattr(self, "user_ids") and self.user_ids:
            result["userIds"] = str(self.user_ids)
        elif include_empty:
            result["userIds"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, HandlersGetUsersPresenceResponse],
        Union[None, HttpResponse, RestapiErrorResponseBody],
    ]:
        """Parse the given response.

        200: OK - HandlersGetUsersPresenceResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)

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
            return HandlersGetUsersPresenceResponse.create_from_dict(content), None
        if code == 400:
            return None, RestapiErrorResponseBody.create_from_dict(content)
        if code == 401:
            return None, RestapiErrorResponseBody.create_from_dict(content)
        if code == 500:
            return None, RestapiErrorResponseBody.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        user_ids: str,
        count_only: Optional[bool] = None,
    ) -> UsersPresenceHandlerV1:
        instance = cls()
        instance.namespace = namespace
        instance.user_ids = user_ids
        if count_only is not None:
            instance.count_only = count_only
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> UsersPresenceHandlerV1:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "countOnly" in dict_ and dict_["countOnly"] is not None:
            instance.count_only = bool(dict_["countOnly"])
        elif include_empty:
            instance.count_only = False
        if "userIds" in dict_ and dict_["userIds"] is not None:
            instance.user_ids = str(dict_["userIds"])
        elif include_empty:
            instance.user_ids = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "countOnly": "count_only",
            "userIds": "user_ids",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "countOnly": False,
            "userIds": True,
        }

    # endregion static methods
