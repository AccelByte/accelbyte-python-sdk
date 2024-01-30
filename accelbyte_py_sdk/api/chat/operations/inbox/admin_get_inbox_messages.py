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

from ...models import ModelsGetInboxMessagesResponse
from ...models import RestapiErrorResponseBody


class ScopeEnum(StrEnum):
    NAMESPACE = "NAMESPACE"
    USER = "USER"


class StatusEnum(StrEnum):
    DRAFT = "DRAFT"
    SENT = "SENT"
    UNSENT = "UNSENT"


class AdminGetInboxMessages(Operation):
    """admin get inbox messages (adminGetInboxMessages)

    Get inbox messages

    Properties:
        url: /chat/v1/admin/inbox/namespaces/{namespace}/messages

        method: GET

        tags: ["inbox"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        end_created_at: (endCreatedAt) OPTIONAL int in query

        limit: (limit) OPTIONAL int in query

        message_id: (messageId) OPTIONAL List[str] in query

        offset: (offset) OPTIONAL int in query

        order: (order) OPTIONAL str in query

        scope: (scope) OPTIONAL Union[str, ScopeEnum] in query

        start_created_at: (startCreatedAt) OPTIONAL int in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

        transient: (transient) OPTIONAL bool in query

    Responses:
        200: OK - ModelsGetInboxMessagesResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """

    # region fields

    _url: str = "/chat/v1/admin/inbox/namespaces/{namespace}/messages"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    active_only: bool  # OPTIONAL in [query]
    end_created_at: int  # OPTIONAL in [query]
    limit: int  # OPTIONAL in [query]
    message_id: List[str]  # OPTIONAL in [query]
    offset: int  # OPTIONAL in [query]
    order: str  # OPTIONAL in [query]
    scope: Union[str, ScopeEnum]  # OPTIONAL in [query]
    start_created_at: int  # OPTIONAL in [query]
    status: Union[str, StatusEnum]  # OPTIONAL in [query]
    transient: bool  # OPTIONAL in [query]

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
        if hasattr(self, "active_only"):
            result["activeOnly"] = self.active_only
        if hasattr(self, "end_created_at"):
            result["endCreatedAt"] = self.end_created_at
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "message_id"):
            result["messageId"] = self.message_id
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "order"):
            result["order"] = self.order
        if hasattr(self, "scope"):
            result["scope"] = self.scope
        if hasattr(self, "start_created_at"):
            result["startCreatedAt"] = self.start_created_at
        if hasattr(self, "status"):
            result["status"] = self.status
        if hasattr(self, "transient"):
            result["transient"] = self.transient
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> AdminGetInboxMessages:
        self.namespace = value
        return self

    def with_active_only(self, value: bool) -> AdminGetInboxMessages:
        self.active_only = value
        return self

    def with_end_created_at(self, value: int) -> AdminGetInboxMessages:
        self.end_created_at = value
        return self

    def with_limit(self, value: int) -> AdminGetInboxMessages:
        self.limit = value
        return self

    def with_message_id(self, value: List[str]) -> AdminGetInboxMessages:
        self.message_id = value
        return self

    def with_offset(self, value: int) -> AdminGetInboxMessages:
        self.offset = value
        return self

    def with_order(self, value: str) -> AdminGetInboxMessages:
        self.order = value
        return self

    def with_scope(self, value: Union[str, ScopeEnum]) -> AdminGetInboxMessages:
        self.scope = value
        return self

    def with_start_created_at(self, value: int) -> AdminGetInboxMessages:
        self.start_created_at = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> AdminGetInboxMessages:
        self.status = value
        return self

    def with_transient(self, value: bool) -> AdminGetInboxMessages:
        self.transient = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "active_only") and self.active_only:
            result["activeOnly"] = bool(self.active_only)
        elif include_empty:
            result["activeOnly"] = False
        if hasattr(self, "end_created_at") and self.end_created_at:
            result["endCreatedAt"] = int(self.end_created_at)
        elif include_empty:
            result["endCreatedAt"] = 0
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = 0
        if hasattr(self, "message_id") and self.message_id:
            result["messageId"] = [str(i0) for i0 in self.message_id]
        elif include_empty:
            result["messageId"] = []
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = 0
        if hasattr(self, "order") and self.order:
            result["order"] = str(self.order)
        elif include_empty:
            result["order"] = ""
        if hasattr(self, "scope") and self.scope:
            result["scope"] = str(self.scope)
        elif include_empty:
            result["scope"] = Union[str, ScopeEnum]()
        if hasattr(self, "start_created_at") and self.start_created_at:
            result["startCreatedAt"] = int(self.start_created_at)
        elif include_empty:
            result["startCreatedAt"] = 0
        if hasattr(self, "status") and self.status:
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "transient") and self.transient:
            result["transient"] = bool(self.transient)
        elif include_empty:
            result["transient"] = False
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ModelsGetInboxMessagesResponse],
        Union[None, HttpResponse, RestapiErrorResponseBody],
    ]:
        """Parse the given response.

        200: OK - ModelsGetInboxMessagesResponse (OK)

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
            return ModelsGetInboxMessagesResponse.create_from_dict(content), None
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
        active_only: Optional[bool] = None,
        end_created_at: Optional[int] = None,
        limit: Optional[int] = None,
        message_id: Optional[List[str]] = None,
        offset: Optional[int] = None,
        order: Optional[str] = None,
        scope: Optional[Union[str, ScopeEnum]] = None,
        start_created_at: Optional[int] = None,
        status: Optional[Union[str, StatusEnum]] = None,
        transient: Optional[bool] = None,
        **kwargs,
    ) -> AdminGetInboxMessages:
        instance = cls()
        instance.namespace = namespace
        if active_only is not None:
            instance.active_only = active_only
        if end_created_at is not None:
            instance.end_created_at = end_created_at
        if limit is not None:
            instance.limit = limit
        if message_id is not None:
            instance.message_id = message_id
        if offset is not None:
            instance.offset = offset
        if order is not None:
            instance.order = order
        if scope is not None:
            instance.scope = scope
        if start_created_at is not None:
            instance.start_created_at = start_created_at
        if status is not None:
            instance.status = status
        if transient is not None:
            instance.transient = transient
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AdminGetInboxMessages:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "activeOnly" in dict_ and dict_["activeOnly"] is not None:
            instance.active_only = bool(dict_["activeOnly"])
        elif include_empty:
            instance.active_only = False
        if "endCreatedAt" in dict_ and dict_["endCreatedAt"] is not None:
            instance.end_created_at = int(dict_["endCreatedAt"])
        elif include_empty:
            instance.end_created_at = 0
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = 0
        if "messageId" in dict_ and dict_["messageId"] is not None:
            instance.message_id = [str(i0) for i0 in dict_["messageId"]]
        elif include_empty:
            instance.message_id = []
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = 0
        if "order" in dict_ and dict_["order"] is not None:
            instance.order = str(dict_["order"])
        elif include_empty:
            instance.order = ""
        if "scope" in dict_ and dict_["scope"] is not None:
            instance.scope = str(dict_["scope"])
        elif include_empty:
            instance.scope = Union[str, ScopeEnum]()
        if "startCreatedAt" in dict_ and dict_["startCreatedAt"] is not None:
            instance.start_created_at = int(dict_["startCreatedAt"])
        elif include_empty:
            instance.start_created_at = 0
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "transient" in dict_ and dict_["transient"] is not None:
            instance.transient = bool(dict_["transient"])
        elif include_empty:
            instance.transient = False
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "activeOnly": "active_only",
            "endCreatedAt": "end_created_at",
            "limit": "limit",
            "messageId": "message_id",
            "offset": "offset",
            "order": "order",
            "scope": "scope",
            "startCreatedAt": "start_created_at",
            "status": "status",
            "transient": "transient",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "activeOnly": False,
            "endCreatedAt": False,
            "limit": False,
            "messageId": False,
            "offset": False,
            "order": False,
            "scope": False,
            "startCreatedAt": False,
            "status": False,
            "transient": False,
        }

    @staticmethod
    def get_collection_format_map() -> Dict[str, Union[None, str]]:
        return {
            "messageId": "multi",  # in query
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "scope": ["NAMESPACE", "USER"],  # in query
            "status": ["DRAFT", "SENT", "UNSENT"],  # in query
        }

    # endregion static methods
