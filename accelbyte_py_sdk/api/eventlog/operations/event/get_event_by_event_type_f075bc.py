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

# AccelByte Cloud Event Log Service ()

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse
from .....core import deprecated

from ...models import ModelsEventResponse


class GetEventByEventTypeHandler(Operation):
    """Get events from all users in a namespace with specific eventType (GetEventByEventTypeHandler)

    Required permission `NAMESPACE:{namespace}:EVENT [UPDATE]`and scope `analytics`

    Required Permission(s):
        - NAMESPACE:{namespace}:EVENT [UPDATE]

    Required Scope(s):
        - analytics

    Properties:
        url: /event/namespaces/{namespace}/eventType/{eventType}

        method: GET

        tags: ["Event"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        event_type: (eventType) REQUIRED float in path

        namespace: (namespace) REQUIRED str in path

        offset: (offset) OPTIONAL int in query

        end_date: (endDate) REQUIRED str in query

        page_size: (pageSize) REQUIRED int in query

        start_date: (startDate) REQUIRED str in query

    Responses:
        200: OK - ModelsEventResponse (OK)

        400: Bad Request - (Bad Request)

        401: Unauthorized - (Unauthorized)

        403: Forbidden - (Forbidden)

        404: Not Found - (Not Found)

        500: Internal Server Error - (Internal Server Error)
    """

    # region fields

    _url: str = "/event/namespaces/{namespace}/eventType/{eventType}"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    event_type: float  # REQUIRED in [path]
    namespace: str  # REQUIRED in [path]
    offset: int  # OPTIONAL in [query]
    end_date: str  # REQUIRED in [query]
    page_size: int  # REQUIRED in [query]
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
        if hasattr(self, "event_type"):
            result["eventType"] = self.event_type
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "end_date"):
            result["endDate"] = self.end_date
        if hasattr(self, "page_size"):
            result["pageSize"] = self.page_size
        if hasattr(self, "start_date"):
            result["startDate"] = self.start_date
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_event_type(self, value: float) -> GetEventByEventTypeHandler:
        self.event_type = value
        return self

    def with_namespace(self, value: str) -> GetEventByEventTypeHandler:
        self.namespace = value
        return self

    def with_offset(self, value: int) -> GetEventByEventTypeHandler:
        self.offset = value
        return self

    def with_end_date(self, value: str) -> GetEventByEventTypeHandler:
        self.end_date = value
        return self

    def with_page_size(self, value: int) -> GetEventByEventTypeHandler:
        self.page_size = value
        return self

    def with_start_date(self, value: str) -> GetEventByEventTypeHandler:
        self.start_date = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "event_type") and self.event_type:
            result["eventType"] = float(self.event_type)
        elif include_empty:
            result["eventType"] = 0.0
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = 0
        if hasattr(self, "end_date") and self.end_date:
            result["endDate"] = str(self.end_date)
        elif include_empty:
            result["endDate"] = ""
        if hasattr(self, "page_size") and self.page_size:
            result["pageSize"] = int(self.page_size)
        elif include_empty:
            result["pageSize"] = 0
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
    ) -> Tuple[Union[None, ModelsEventResponse], Union[None, HttpResponse]]:
        """Parse the given response.

        200: OK - ModelsEventResponse (OK)

        400: Bad Request - (Bad Request)

        401: Unauthorized - (Unauthorized)

        403: Forbidden - (Forbidden)

        404: Not Found - (Not Found)

        500: Internal Server Error - (Internal Server Error)

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
            return ModelsEventResponse.create_from_dict(content), None
        if code == 400:
            return None, HttpResponse.create(code, "Bad Request")
        if code == 401:
            return None, HttpResponse.create(code, "Unauthorized")
        if code == 403:
            return None, HttpResponse.create(code, "Forbidden")
        if code == 404:
            return None, HttpResponse.create(code, "Not Found")
        if code == 500:
            return None, HttpResponse.create(code, "Internal Server Error")

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        event_type: float,
        namespace: str,
        end_date: str,
        page_size: int,
        start_date: str,
        offset: Optional[int] = None,
    ) -> GetEventByEventTypeHandler:
        instance = cls()
        instance.event_type = event_type
        instance.namespace = namespace
        instance.end_date = end_date
        instance.page_size = page_size
        instance.start_date = start_date
        if offset is not None:
            instance.offset = offset
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> GetEventByEventTypeHandler:
        instance = cls()
        if "eventType" in dict_ and dict_["eventType"] is not None:
            instance.event_type = float(dict_["eventType"])
        elif include_empty:
            instance.event_type = 0.0
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = 0
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = str(dict_["endDate"])
        elif include_empty:
            instance.end_date = ""
        if "pageSize" in dict_ and dict_["pageSize"] is not None:
            instance.page_size = int(dict_["pageSize"])
        elif include_empty:
            instance.page_size = 0
        if "startDate" in dict_ and dict_["startDate"] is not None:
            instance.start_date = str(dict_["startDate"])
        elif include_empty:
            instance.start_date = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "eventType": "event_type",
            "namespace": "namespace",
            "offset": "offset",
            "endDate": "end_date",
            "pageSize": "page_size",
            "startDate": "start_date",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "eventType": True,
            "namespace": True,
            "offset": False,
            "endDate": True,
            "pageSize": True,
            "startDate": True,
        }

    # endregion static methods
