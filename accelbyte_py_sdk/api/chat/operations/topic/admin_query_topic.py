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
from .....core import StrEnum

from ...models import ModelsTopicInfo
from ...models import RestapiErrorResponseBody


class TopicSubTypeEnum(StrEnum):
    CLAN = "CLAN"
    NAMESPACE = "NAMESPACE"
    NORMAL = "NORMAL"
    PARTY = "PARTY"
    SESSION = "SESSION"


class TopicTypeEnum(StrEnum):
    GROUP = "GROUP"
    PERSONAL = "PERSONAL"


class AdminQueryTopic(Operation):
    """admin query topics (adminQueryTopic)

    Get topics in a namespace.

    Properties:
        url: /chat/admin/namespaces/{namespace}/topics

        method: GET

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        include_members: (includeMembers) OPTIONAL bool in query

        include_past_members: (includePastMembers) OPTIONAL bool in query

        include_past_topics: (includePastTopics) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        topic: (topic) OPTIONAL List[str] in query

        topic_sub_type: (topicSubType) OPTIONAL Union[str, TopicSubTypeEnum] in query

        topic_type: (topicType) OPTIONAL Union[str, TopicTypeEnum] in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - List[ModelsTopicInfo] (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """

    # region fields

    _url: str = "/chat/admin/namespaces/{namespace}/topics"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    include_members: bool  # OPTIONAL in [query]
    include_past_members: bool  # OPTIONAL in [query]
    include_past_topics: bool  # OPTIONAL in [query]
    limit: int  # OPTIONAL in [query]
    offset: int  # OPTIONAL in [query]
    topic: List[str]  # OPTIONAL in [query]
    topic_sub_type: Union[str, TopicSubTypeEnum]  # OPTIONAL in [query]
    topic_type: Union[str, TopicTypeEnum]  # OPTIONAL in [query]
    user_id: str  # OPTIONAL in [query]

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
        if hasattr(self, "include_members"):
            result["includeMembers"] = self.include_members
        if hasattr(self, "include_past_members"):
            result["includePastMembers"] = self.include_past_members
        if hasattr(self, "include_past_topics"):
            result["includePastTopics"] = self.include_past_topics
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "topic"):
            result["topic"] = self.topic
        if hasattr(self, "topic_sub_type"):
            result["topicSubType"] = self.topic_sub_type
        if hasattr(self, "topic_type"):
            result["topicType"] = self.topic_type
        if hasattr(self, "user_id"):
            result["userId"] = self.user_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> AdminQueryTopic:
        self.namespace = value
        return self

    def with_include_members(self, value: bool) -> AdminQueryTopic:
        self.include_members = value
        return self

    def with_include_past_members(self, value: bool) -> AdminQueryTopic:
        self.include_past_members = value
        return self

    def with_include_past_topics(self, value: bool) -> AdminQueryTopic:
        self.include_past_topics = value
        return self

    def with_limit(self, value: int) -> AdminQueryTopic:
        self.limit = value
        return self

    def with_offset(self, value: int) -> AdminQueryTopic:
        self.offset = value
        return self

    def with_topic(self, value: List[str]) -> AdminQueryTopic:
        self.topic = value
        return self

    def with_topic_sub_type(
        self, value: Union[str, TopicSubTypeEnum]
    ) -> AdminQueryTopic:
        self.topic_sub_type = value
        return self

    def with_topic_type(self, value: Union[str, TopicTypeEnum]) -> AdminQueryTopic:
        self.topic_type = value
        return self

    def with_user_id(self, value: str) -> AdminQueryTopic:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "include_members") and self.include_members:
            result["includeMembers"] = bool(self.include_members)
        elif include_empty:
            result["includeMembers"] = False
        if hasattr(self, "include_past_members") and self.include_past_members:
            result["includePastMembers"] = bool(self.include_past_members)
        elif include_empty:
            result["includePastMembers"] = False
        if hasattr(self, "include_past_topics") and self.include_past_topics:
            result["includePastTopics"] = bool(self.include_past_topics)
        elif include_empty:
            result["includePastTopics"] = False
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = 0
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = 0
        if hasattr(self, "topic") and self.topic:
            result["topic"] = [str(i0) for i0 in self.topic]
        elif include_empty:
            result["topic"] = []
        if hasattr(self, "topic_sub_type") and self.topic_sub_type:
            result["topicSubType"] = str(self.topic_sub_type)
        elif include_empty:
            result["topicSubType"] = Union[str, TopicSubTypeEnum]()
        if hasattr(self, "topic_type") and self.topic_type:
            result["topicType"] = str(self.topic_type)
        elif include_empty:
            result["topicType"] = Union[str, TopicTypeEnum]()
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, List[ModelsTopicInfo]],
        Union[None, HttpResponse, RestapiErrorResponseBody],
    ]:
        """Parse the given response.

        200: OK - List[ModelsTopicInfo] (OK)

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
            return [ModelsTopicInfo.create_from_dict(i) for i in content], None
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
        include_members: Optional[bool] = None,
        include_past_members: Optional[bool] = None,
        include_past_topics: Optional[bool] = None,
        limit: Optional[int] = None,
        offset: Optional[int] = None,
        topic: Optional[List[str]] = None,
        topic_sub_type: Optional[Union[str, TopicSubTypeEnum]] = None,
        topic_type: Optional[Union[str, TopicTypeEnum]] = None,
        user_id: Optional[str] = None,
        **kwargs,
    ) -> AdminQueryTopic:
        instance = cls()
        instance.namespace = namespace
        if include_members is not None:
            instance.include_members = include_members
        if include_past_members is not None:
            instance.include_past_members = include_past_members
        if include_past_topics is not None:
            instance.include_past_topics = include_past_topics
        if limit is not None:
            instance.limit = limit
        if offset is not None:
            instance.offset = offset
        if topic is not None:
            instance.topic = topic
        if topic_sub_type is not None:
            instance.topic_sub_type = topic_sub_type
        if topic_type is not None:
            instance.topic_type = topic_type
        if user_id is not None:
            instance.user_id = user_id
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AdminQueryTopic:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "includeMembers" in dict_ and dict_["includeMembers"] is not None:
            instance.include_members = bool(dict_["includeMembers"])
        elif include_empty:
            instance.include_members = False
        if "includePastMembers" in dict_ and dict_["includePastMembers"] is not None:
            instance.include_past_members = bool(dict_["includePastMembers"])
        elif include_empty:
            instance.include_past_members = False
        if "includePastTopics" in dict_ and dict_["includePastTopics"] is not None:
            instance.include_past_topics = bool(dict_["includePastTopics"])
        elif include_empty:
            instance.include_past_topics = False
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = 0
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = 0
        if "topic" in dict_ and dict_["topic"] is not None:
            instance.topic = [str(i0) for i0 in dict_["topic"]]
        elif include_empty:
            instance.topic = []
        if "topicSubType" in dict_ and dict_["topicSubType"] is not None:
            instance.topic_sub_type = str(dict_["topicSubType"])
        elif include_empty:
            instance.topic_sub_type = Union[str, TopicSubTypeEnum]()
        if "topicType" in dict_ and dict_["topicType"] is not None:
            instance.topic_type = str(dict_["topicType"])
        elif include_empty:
            instance.topic_type = Union[str, TopicTypeEnum]()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "includeMembers": "include_members",
            "includePastMembers": "include_past_members",
            "includePastTopics": "include_past_topics",
            "limit": "limit",
            "offset": "offset",
            "topic": "topic",
            "topicSubType": "topic_sub_type",
            "topicType": "topic_type",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "includeMembers": False,
            "includePastMembers": False,
            "includePastTopics": False,
            "limit": False,
            "offset": False,
            "topic": False,
            "topicSubType": False,
            "topicType": False,
            "userId": False,
        }

    @staticmethod
    def get_collection_format_map() -> Dict[str, Union[None, str]]:
        return {
            "topic": "multi",  # in query
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "topicSubType": [
                "CLAN",
                "NAMESPACE",
                "NORMAL",
                "PARTY",
                "SESSION",
            ],  # in query
            "topicType": ["GROUP", "PERSONAL"],  # in query
        }

    # endregion static methods
