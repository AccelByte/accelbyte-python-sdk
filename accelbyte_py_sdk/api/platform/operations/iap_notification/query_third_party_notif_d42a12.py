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

# AccelByte Gaming Services Platform Service

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse
from .....core import StrEnum

from ...models import NotificationPagingSlicedResult


class SourceEnum(StrEnum):
    APPLE = "APPLE"
    EPICGAMES = "EPICGAMES"
    GOOGLE = "GOOGLE"
    OCULUS = "OCULUS"
    PLAYSTATION = "PLAYSTATION"
    STADIA = "STADIA"
    STEAM = "STEAM"
    TWITCH = "TWITCH"
    XBOX = "XBOX"


class StatusEnum(StrEnum):
    ERROR = "ERROR"
    IGNORED = "IGNORED"
    PROCESSED = "PROCESSED"
    WARN = "WARN"


class QueryThirdPartyNotifications(Operation):
    """Query third party notifications (queryThirdPartyNotifications)

    Query third party notifications.
    Other detail info:

      * Returns : Third Party Platform notifications

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/notifications

        method: GET

        tags: ["IAP(Notification)"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        end_date: (endDate) OPTIONAL str in query

        external_id: (externalId) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        source: (source) OPTIONAL Union[str, SourceEnum] in query

        start_date: (startDate) OPTIONAL str in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

        type_: (type) OPTIONAL str in query

    Responses:
        200: OK - NotificationPagingSlicedResult (successful operation)
    """

    # region fields

    _url: str = "/platform/admin/namespaces/{namespace}/iap/notifications"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    end_date: str  # OPTIONAL in [query]
    external_id: str  # OPTIONAL in [query]
    limit: int  # OPTIONAL in [query]
    offset: int  # OPTIONAL in [query]
    source: Union[str, SourceEnum]  # OPTIONAL in [query]
    start_date: str  # OPTIONAL in [query]
    status: Union[str, StatusEnum]  # OPTIONAL in [query]
    type_: str  # OPTIONAL in [query]

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
        if hasattr(self, "end_date"):
            result["endDate"] = self.end_date
        if hasattr(self, "external_id"):
            result["externalId"] = self.external_id
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "source"):
            result["source"] = self.source
        if hasattr(self, "start_date"):
            result["startDate"] = self.start_date
        if hasattr(self, "status"):
            result["status"] = self.status
        if hasattr(self, "type_"):
            result["type"] = self.type_
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> QueryThirdPartyNotifications:
        self.namespace = value
        return self

    def with_end_date(self, value: str) -> QueryThirdPartyNotifications:
        self.end_date = value
        return self

    def with_external_id(self, value: str) -> QueryThirdPartyNotifications:
        self.external_id = value
        return self

    def with_limit(self, value: int) -> QueryThirdPartyNotifications:
        self.limit = value
        return self

    def with_offset(self, value: int) -> QueryThirdPartyNotifications:
        self.offset = value
        return self

    def with_source(
        self, value: Union[str, SourceEnum]
    ) -> QueryThirdPartyNotifications:
        self.source = value
        return self

    def with_start_date(self, value: str) -> QueryThirdPartyNotifications:
        self.start_date = value
        return self

    def with_status(
        self, value: Union[str, StatusEnum]
    ) -> QueryThirdPartyNotifications:
        self.status = value
        return self

    def with_type(self, value: str) -> QueryThirdPartyNotifications:
        self.type_ = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "end_date") and self.end_date:
            result["endDate"] = str(self.end_date)
        elif include_empty:
            result["endDate"] = ""
        if hasattr(self, "external_id") and self.external_id:
            result["externalId"] = str(self.external_id)
        elif include_empty:
            result["externalId"] = ""
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = 0
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = 0
        if hasattr(self, "source") and self.source:
            result["source"] = str(self.source)
        elif include_empty:
            result["source"] = Union[str, SourceEnum]()
        if hasattr(self, "start_date") and self.start_date:
            result["startDate"] = str(self.start_date)
        elif include_empty:
            result["startDate"] = ""
        if hasattr(self, "status") and self.status:
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "type_") and self.type_:
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[Union[None, NotificationPagingSlicedResult], Union[None, HttpResponse]]:
        """Parse the given response.

        200: OK - NotificationPagingSlicedResult (successful operation)

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
            return NotificationPagingSlicedResult.create_from_dict(content), None

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        end_date: Optional[str] = None,
        external_id: Optional[str] = None,
        limit: Optional[int] = None,
        offset: Optional[int] = None,
        source: Optional[Union[str, SourceEnum]] = None,
        start_date: Optional[str] = None,
        status: Optional[Union[str, StatusEnum]] = None,
        type_: Optional[str] = None,
        **kwargs,
    ) -> QueryThirdPartyNotifications:
        instance = cls()
        instance.namespace = namespace
        if end_date is not None:
            instance.end_date = end_date
        if external_id is not None:
            instance.external_id = external_id
        if limit is not None:
            instance.limit = limit
        if offset is not None:
            instance.offset = offset
        if source is not None:
            instance.source = source
        if start_date is not None:
            instance.start_date = start_date
        if status is not None:
            instance.status = status
        if type_ is not None:
            instance.type_ = type_
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> QueryThirdPartyNotifications:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = str(dict_["endDate"])
        elif include_empty:
            instance.end_date = ""
        if "externalId" in dict_ and dict_["externalId"] is not None:
            instance.external_id = str(dict_["externalId"])
        elif include_empty:
            instance.external_id = ""
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = 0
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = 0
        if "source" in dict_ and dict_["source"] is not None:
            instance.source = str(dict_["source"])
        elif include_empty:
            instance.source = Union[str, SourceEnum]()
        if "startDate" in dict_ and dict_["startDate"] is not None:
            instance.start_date = str(dict_["startDate"])
        elif include_empty:
            instance.start_date = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "endDate": "end_date",
            "externalId": "external_id",
            "limit": "limit",
            "offset": "offset",
            "source": "source",
            "startDate": "start_date",
            "status": "status",
            "type": "type_",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "endDate": False,
            "externalId": False,
            "limit": False,
            "offset": False,
            "source": False,
            "startDate": False,
            "status": False,
            "type": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "source": [
                "APPLE",
                "EPICGAMES",
                "GOOGLE",
                "OCULUS",
                "PLAYSTATION",
                "STADIA",
                "STEAM",
                "TWITCH",
                "XBOX",
            ],  # in query
            "status": ["ERROR", "IGNORED", "PROCESSED", "WARN"],  # in query
        }

    # endregion static methods
