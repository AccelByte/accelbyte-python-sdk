# justice-event-log-service (1.18.3)

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
from .....core import deprecated

from ...models import ModelsEventResponse


@deprecated
class GetEventByUserIDAndEventIDHandler(Operation):
    """Get events from specific user with specific eventID (GetEventByUserIDAndEventIDHandler)

    Required permission <code>NAMESPACE:{namespace}:EVENT [UPDATE]</code> and
    scope <code>analytics</code>


    Properties:
        url: /event/namespaces/{namespace}/users/{userId}/eventId/{eventId}

        method: GET

        tags: ["Event"]

        consumes: []

        produces: ["application/json"]

        security: bearer

        event_id: (eventId) REQUIRED float in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        offset: (offset) OPTIONAL float in query

        end_date: (endDate) REQUIRED str in query

        page_size: (pageSize) REQUIRED float in query

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

    _url: str = "/event/namespaces/{namespace}/users/{userId}/eventId/{eventId}"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    event_id: float                                                                                # REQUIRED in [path]
    namespace: str                                                                                 # REQUIRED in [path]
    user_id: str                                                                                   # REQUIRED in [path]
    offset: float                                                                                  # OPTIONAL in [query]
    end_date: str                                                                                  # REQUIRED in [query]
    page_size: float                                                                               # REQUIRED in [query]
    start_date: str                                                                                # REQUIRED in [query]

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
            url = url.replace(f"{{{k}}}", str(v))
        result += url

        # query params
        result += "?" + "&".join([f"{k}={v}" for k, v in self.get_query_params().items()])

        return result

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "event_id",
            "namespace",
            "user_id",
            "end_date",
            "page_size",
            "start_date",
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
        if hasattr(self, "event_id"):
            result["eventId"] = self.event_id
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "user_id"):
            result["userId"] = self.user_id
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

    def is_valid(self) -> bool:
        if not hasattr(self, "event_id") or self.event_id is None:
            return False
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        if not hasattr(self, "user_id") or self.user_id is None:
            return False
        if not hasattr(self, "end_date") or self.end_date is None:
            return False
        if not hasattr(self, "page_size") or self.page_size is None:
            return False
        if not hasattr(self, "start_date") or self.start_date is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_event_id(self, value: float) -> GetEventByUserIDAndEventIDHandler:
        self.event_id = value
        return self

    def with_namespace(self, value: str) -> GetEventByUserIDAndEventIDHandler:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> GetEventByUserIDAndEventIDHandler:
        self.user_id = value
        return self

    def with_offset(self, value: float) -> GetEventByUserIDAndEventIDHandler:
        self.offset = value
        return self

    def with_end_date(self, value: str) -> GetEventByUserIDAndEventIDHandler:
        self.end_date = value
        return self

    def with_page_size(self, value: float) -> GetEventByUserIDAndEventIDHandler:
        self.page_size = value
        return self

    def with_start_date(self, value: str) -> GetEventByUserIDAndEventIDHandler:
        self.start_date = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "event_id") and self.event_id:
            result["eventId"] = float(self.event_id)
        elif include_empty:
            result["eventId"] = float()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = str()
        if hasattr(self, "offset") and self.offset:
            result["offset"] = float(self.offset)
        elif include_empty:
            result["offset"] = float()
        if hasattr(self, "end_date") and self.end_date:
            result["endDate"] = str(self.end_date)
        elif include_empty:
            result["endDate"] = str()
        if hasattr(self, "page_size") and self.page_size:
            result["pageSize"] = float(self.page_size)
        elif include_empty:
            result["pageSize"] = float()
        if hasattr(self, "start_date") and self.start_date:
            result["startDate"] = str(self.start_date)
        elif include_empty:
            result["startDate"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, ModelsEventResponse], Union[None, HttpResponse]]:
        """Parse the given response.

        200: OK - ModelsEventResponse (OK)

        400: Bad Request - (Bad Request)

        401: Unauthorized - (Unauthorized)

        403: Forbidden - (Forbidden)

        404: Not Found - (Not Found)

        500: Internal Server Error - (Internal Server Error)
        """
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
        was_handled, undocumented_response = HttpResponse.try_create_undocumented_response(code, content)
        if was_handled:
            return None, undocumented_response
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        event_id: float,
        namespace: str,
        user_id: str,
        end_date: str,
        page_size: float,
        start_date: str,
        offset: Optional[float] = None,
    ) -> GetEventByUserIDAndEventIDHandler:
        instance = cls()
        instance.event_id = event_id
        instance.namespace = namespace
        instance.user_id = user_id
        instance.end_date = end_date
        instance.page_size = page_size
        instance.start_date = start_date
        if offset is not None:
            instance.offset = offset
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> GetEventByUserIDAndEventIDHandler:
        instance = cls()
        if "eventId" in dict_ and dict_["eventId"] is not None:
            instance.event_id = float(dict_["eventId"])
        elif include_empty:
            instance.event_id = float()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = str()
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = float(dict_["offset"])
        elif include_empty:
            instance.offset = float()
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = str(dict_["endDate"])
        elif include_empty:
            instance.end_date = str()
        if "pageSize" in dict_ and dict_["pageSize"] is not None:
            instance.page_size = float(dict_["pageSize"])
        elif include_empty:
            instance.page_size = float()
        if "startDate" in dict_ and dict_["startDate"] is not None:
            instance.start_date = str(dict_["startDate"])
        elif include_empty:
            instance.start_date = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "eventId": "event_id",
            "namespace": "namespace",
            "userId": "user_id",
            "offset": "offset",
            "endDate": "end_date",
            "pageSize": "page_size",
            "startDate": "start_date",
        }

    # endregion static methods