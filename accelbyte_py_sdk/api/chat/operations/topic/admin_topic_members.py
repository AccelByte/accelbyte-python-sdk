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

# AccelByte Gaming Services Chat Service

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ModelsTopicMemberWithPaginationResponse
from ...models import RestapiErrorResponseBody


class AdminTopicMembers(Operation):
    """admin get topic member (adminTopicMembers)

    Get topic members.

    Properties:
        url: /chat/admin/namespaces/{namespace}/topic/{topic}/members

        method: GET

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

        is_banned: (isBanned) OPTIONAL bool in query

        is_moderator: (isModerator) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        shard_id: (shardId) OPTIONAL str in query

    Responses:
        200: OK - ModelsTopicMemberWithPaginationResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """

    # region fields

    _url: str = "/chat/admin/namespaces/{namespace}/topic/{topic}/members"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    topic: str  # REQUIRED in [path]
    is_banned: bool  # OPTIONAL in [query]
    is_moderator: bool  # OPTIONAL in [query]
    limit: int  # OPTIONAL in [query]
    offset: int  # OPTIONAL in [query]
    shard_id: str  # OPTIONAL in [query]

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
        if hasattr(self, "topic"):
            result["topic"] = self.topic
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "is_banned"):
            result["isBanned"] = self.is_banned
        if hasattr(self, "is_moderator"):
            result["isModerator"] = self.is_moderator
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "shard_id"):
            result["shardId"] = self.shard_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> AdminTopicMembers:
        self.namespace = value
        return self

    def with_topic(self, value: str) -> AdminTopicMembers:
        self.topic = value
        return self

    def with_is_banned(self, value: bool) -> AdminTopicMembers:
        self.is_banned = value
        return self

    def with_is_moderator(self, value: bool) -> AdminTopicMembers:
        self.is_moderator = value
        return self

    def with_limit(self, value: int) -> AdminTopicMembers:
        self.limit = value
        return self

    def with_offset(self, value: int) -> AdminTopicMembers:
        self.offset = value
        return self

    def with_shard_id(self, value: str) -> AdminTopicMembers:
        self.shard_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "topic") and self.topic:
            result["topic"] = str(self.topic)
        elif include_empty:
            result["topic"] = ""
        if hasattr(self, "is_banned") and self.is_banned:
            result["isBanned"] = bool(self.is_banned)
        elif include_empty:
            result["isBanned"] = False
        if hasattr(self, "is_moderator") and self.is_moderator:
            result["isModerator"] = bool(self.is_moderator)
        elif include_empty:
            result["isModerator"] = False
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = 0
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = 0
        if hasattr(self, "shard_id") and self.shard_id:
            result["shardId"] = str(self.shard_id)
        elif include_empty:
            result["shardId"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ModelsTopicMemberWithPaginationResponse],
        Union[None, HttpResponse, RestapiErrorResponseBody],
    ]:
        """Parse the given response.

        200: OK - ModelsTopicMemberWithPaginationResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

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
            return (
                ModelsTopicMemberWithPaginationResponse.create_from_dict(content),
                None,
            )
        if code == 400:
            return None, RestapiErrorResponseBody.create_from_dict(content)
        if code == 401:
            return None, RestapiErrorResponseBody.create_from_dict(content)
        if code == 403:
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
        topic: str,
        is_banned: Optional[bool] = None,
        is_moderator: Optional[bool] = None,
        limit: Optional[int] = None,
        offset: Optional[int] = None,
        shard_id: Optional[str] = None,
        **kwargs,
    ) -> AdminTopicMembers:
        instance = cls()
        instance.namespace = namespace
        instance.topic = topic
        if is_banned is not None:
            instance.is_banned = is_banned
        if is_moderator is not None:
            instance.is_moderator = is_moderator
        if limit is not None:
            instance.limit = limit
        if offset is not None:
            instance.offset = offset
        if shard_id is not None:
            instance.shard_id = shard_id
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AdminTopicMembers:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "topic" in dict_ and dict_["topic"] is not None:
            instance.topic = str(dict_["topic"])
        elif include_empty:
            instance.topic = ""
        if "isBanned" in dict_ and dict_["isBanned"] is not None:
            instance.is_banned = bool(dict_["isBanned"])
        elif include_empty:
            instance.is_banned = False
        if "isModerator" in dict_ and dict_["isModerator"] is not None:
            instance.is_moderator = bool(dict_["isModerator"])
        elif include_empty:
            instance.is_moderator = False
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = 0
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = 0
        if "shardId" in dict_ and dict_["shardId"] is not None:
            instance.shard_id = str(dict_["shardId"])
        elif include_empty:
            instance.shard_id = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "topic": "topic",
            "isBanned": "is_banned",
            "isModerator": "is_moderator",
            "limit": "limit",
            "offset": "offset",
            "shardId": "shard_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "topic": True,
            "isBanned": False,
            "isModerator": False,
            "limit": False,
            "offset": False,
            "shardId": False,
        }

    # endregion static methods
