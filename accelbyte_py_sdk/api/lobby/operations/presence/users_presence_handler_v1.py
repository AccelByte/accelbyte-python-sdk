# Auto-generated at 2021-09-21T14:10:36.397734+08:00
# from: Justice Lobby Service (1.33.0)

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

from ...models import HandlersGetUsersPresenceResponse
from ...models import RestapiErrorResponseBody


class UsersPresenceHandlerV1(Operation):
    """Query users presence (UsersPresenceHandlerV1)

    Properties:
        url: /lobby/v1/public/presence/namespaces/{namespace}/users/presence

        method: GET

        tags: presence

        consumes: ["application/json"]

        produces: ["application/json"]

        security: bearer

        namespace: (namespace) REQUIRED str in path

        user_ids: (userIds) REQUIRED str in query

        count_only: (countOnly) OPTIONAL bool in query

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
    _security: Optional[str] = "bearer"
    _location_query: str = None

    namespace: str                                                                                 # REQUIRED in [path]
    user_ids: str                                                                                  # REQUIRED in [query]
    count_only: bool                                                                               # OPTIONAL in [query]

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
            "user_ids",
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
        if hasattr(self, "user_ids"):
            result["userIds"] = self.user_ids
        if hasattr(self, "count_only"):
            result["countOnly"] = self.count_only
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        if not hasattr(self, "user_ids") or self.user_ids is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> UsersPresenceHandlerV1:
        self.namespace = value
        return self

    def with_user_ids(self, value: str) -> UsersPresenceHandlerV1:
        self.user_ids = value
        return self

    def with_count_only(self, value: bool) -> UsersPresenceHandlerV1:
        self.count_only = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "user_ids") and self.user_ids:
            result["userIds"] = str(self.user_ids)
        elif include_empty:
            result["userIds"] = str()
        if hasattr(self, "count_only") and self.count_only:
            result["countOnly"] = bool(self.count_only)
        elif include_empty:
            result["countOnly"] = bool()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, HandlersGetUsersPresenceResponse], Union[None, RestapiErrorResponseBody]]:
        """Parse the given response.

        200: OK - HandlersGetUsersPresenceResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
        """
        if code == 200:
            return HandlersGetUsersPresenceResponse.create_from_dict(content), None
        if code == 400:
            return None, RestapiErrorResponseBody.create_from_dict(content)
        if code == 401:
            return None, RestapiErrorResponseBody.create_from_dict(content)
        if code == 500:
            return None, RestapiErrorResponseBody.create_from_dict(content)
        return None, HttpResponse.create_unhandled_error()

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
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> UsersPresenceHandlerV1:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "userIds" in dict_ and dict_["userIds"] is not None:
            instance.user_ids = str(dict_["userIds"])
        elif include_empty:
            instance.user_ids = str()
        if "countOnly" in dict_ and dict_["countOnly"] is not None:
            instance.count_only = bool(dict_["countOnly"])
        elif include_empty:
            instance.count_only = bool()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "userIds": "user_ids",
            "countOnly": "count_only",
        }

    # endregion static methods
