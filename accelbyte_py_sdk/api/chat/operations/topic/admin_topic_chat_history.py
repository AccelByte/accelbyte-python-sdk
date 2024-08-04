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
from .....core import deprecated

from ...models import ModelsChatMessageWithPaginationResponse
from ...models import RestapiErrorResponseBody


class AdminTopicChatHistory(Operation):
    """admin get chat history (adminTopicChatHistory)

    Get chat history in a namespace.

    Properties:
        url: /chat/admin/namespaces/{namespace}/topic/{topic}/chats

        method: GET

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

        end_created_at: (endCreatedAt) OPTIONAL int in query

        keyword: (keyword) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        order: (order) OPTIONAL str in query

        sender_user_id: (senderUserId) OPTIONAL str in query

        shard_id: (shardId) OPTIONAL str in query

        start_created_at: (startCreatedAt) OPTIONAL int in query

        unfiltered: (unfiltered) OPTIONAL bool in query

    Responses:
        200: OK - ModelsChatMessageWithPaginationResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """

    # region fields

    _url: str = "/chat/admin/namespaces/{namespace}/topic/{topic}/chats"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    topic: str  # REQUIRED in [path]
    end_created_at: int  # OPTIONAL in [query]
    keyword: str  # OPTIONAL in [query]
    limit: int  # OPTIONAL in [query]
    offset: int  # OPTIONAL in [query]
    order: str  # OPTIONAL in [query]
    sender_user_id: str  # OPTIONAL in [query]
    shard_id: str  # OPTIONAL in [query]
    start_created_at: int  # OPTIONAL in [query]
    unfiltered: bool  # OPTIONAL in [query]

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
        if hasattr(self, "end_created_at"):
            result["endCreatedAt"] = self.end_created_at
        if hasattr(self, "keyword"):
            result["keyword"] = self.keyword
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "order"):
            result["order"] = self.order
        if hasattr(self, "sender_user_id"):
            result["senderUserId"] = self.sender_user_id
        if hasattr(self, "shard_id"):
            result["shardId"] = self.shard_id
        if hasattr(self, "start_created_at"):
            result["startCreatedAt"] = self.start_created_at
        if hasattr(self, "unfiltered"):
            result["unfiltered"] = self.unfiltered
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> AdminTopicChatHistory:
        self.namespace = value
        return self

    def with_topic(self, value: str) -> AdminTopicChatHistory:
        self.topic = value
        return self

    def with_end_created_at(self, value: int) -> AdminTopicChatHistory:
        self.end_created_at = value
        return self

    def with_keyword(self, value: str) -> AdminTopicChatHistory:
        self.keyword = value
        return self

    def with_limit(self, value: int) -> AdminTopicChatHistory:
        self.limit = value
        return self

    def with_offset(self, value: int) -> AdminTopicChatHistory:
        self.offset = value
        return self

    def with_order(self, value: str) -> AdminTopicChatHistory:
        self.order = value
        return self

    def with_sender_user_id(self, value: str) -> AdminTopicChatHistory:
        self.sender_user_id = value
        return self

    def with_shard_id(self, value: str) -> AdminTopicChatHistory:
        self.shard_id = value
        return self

    def with_start_created_at(self, value: int) -> AdminTopicChatHistory:
        self.start_created_at = value
        return self

    def with_unfiltered(self, value: bool) -> AdminTopicChatHistory:
        self.unfiltered = value
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
        if hasattr(self, "end_created_at") and self.end_created_at:
            result["endCreatedAt"] = int(self.end_created_at)
        elif include_empty:
            result["endCreatedAt"] = 0
        if hasattr(self, "keyword") and self.keyword:
            result["keyword"] = str(self.keyword)
        elif include_empty:
            result["keyword"] = ""
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = 0
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = 0
        if hasattr(self, "order") and self.order:
            result["order"] = str(self.order)
        elif include_empty:
            result["order"] = ""
        if hasattr(self, "sender_user_id") and self.sender_user_id:
            result["senderUserId"] = str(self.sender_user_id)
        elif include_empty:
            result["senderUserId"] = ""
        if hasattr(self, "shard_id") and self.shard_id:
            result["shardId"] = str(self.shard_id)
        elif include_empty:
            result["shardId"] = ""
        if hasattr(self, "start_created_at") and self.start_created_at:
            result["startCreatedAt"] = int(self.start_created_at)
        elif include_empty:
            result["startCreatedAt"] = 0
        if hasattr(self, "unfiltered") and self.unfiltered:
            result["unfiltered"] = bool(self.unfiltered)
        elif include_empty:
            result["unfiltered"] = False
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ModelsChatMessageWithPaginationResponse],
        Union[None, HttpResponse, RestapiErrorResponseBody],
    ]:
        """Parse the given response.

        200: OK - ModelsChatMessageWithPaginationResponse (OK)

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
                ModelsChatMessageWithPaginationResponse.create_from_dict(content),
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
        end_created_at: Optional[int] = None,
        keyword: Optional[str] = None,
        limit: Optional[int] = None,
        offset: Optional[int] = None,
        order: Optional[str] = None,
        sender_user_id: Optional[str] = None,
        shard_id: Optional[str] = None,
        start_created_at: Optional[int] = None,
        unfiltered: Optional[bool] = None,
        **kwargs,
    ) -> AdminTopicChatHistory:
        instance = cls()
        instance.namespace = namespace
        instance.topic = topic
        if end_created_at is not None:
            instance.end_created_at = end_created_at
        if keyword is not None:
            instance.keyword = keyword
        if limit is not None:
            instance.limit = limit
        if offset is not None:
            instance.offset = offset
        if order is not None:
            instance.order = order
        if sender_user_id is not None:
            instance.sender_user_id = sender_user_id
        if shard_id is not None:
            instance.shard_id = shard_id
        if start_created_at is not None:
            instance.start_created_at = start_created_at
        if unfiltered is not None:
            instance.unfiltered = unfiltered
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AdminTopicChatHistory:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "topic" in dict_ and dict_["topic"] is not None:
            instance.topic = str(dict_["topic"])
        elif include_empty:
            instance.topic = ""
        if "endCreatedAt" in dict_ and dict_["endCreatedAt"] is not None:
            instance.end_created_at = int(dict_["endCreatedAt"])
        elif include_empty:
            instance.end_created_at = 0
        if "keyword" in dict_ and dict_["keyword"] is not None:
            instance.keyword = str(dict_["keyword"])
        elif include_empty:
            instance.keyword = ""
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = 0
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = 0
        if "order" in dict_ and dict_["order"] is not None:
            instance.order = str(dict_["order"])
        elif include_empty:
            instance.order = ""
        if "senderUserId" in dict_ and dict_["senderUserId"] is not None:
            instance.sender_user_id = str(dict_["senderUserId"])
        elif include_empty:
            instance.sender_user_id = ""
        if "shardId" in dict_ and dict_["shardId"] is not None:
            instance.shard_id = str(dict_["shardId"])
        elif include_empty:
            instance.shard_id = ""
        if "startCreatedAt" in dict_ and dict_["startCreatedAt"] is not None:
            instance.start_created_at = int(dict_["startCreatedAt"])
        elif include_empty:
            instance.start_created_at = 0
        if "unfiltered" in dict_ and dict_["unfiltered"] is not None:
            instance.unfiltered = bool(dict_["unfiltered"])
        elif include_empty:
            instance.unfiltered = False
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "topic": "topic",
            "endCreatedAt": "end_created_at",
            "keyword": "keyword",
            "limit": "limit",
            "offset": "offset",
            "order": "order",
            "senderUserId": "sender_user_id",
            "shardId": "shard_id",
            "startCreatedAt": "start_created_at",
            "unfiltered": "unfiltered",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "topic": True,
            "endCreatedAt": False,
            "keyword": False,
            "limit": False,
            "offset": False,
            "order": False,
            "senderUserId": False,
            "shardId": False,
            "startCreatedAt": False,
            "unfiltered": False,
        }

    # endregion static methods
