# justice-event-log-service ()

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

from ...models import ModelsEventResponseV2
from ...models import ModelsGenericQueryPayload


class QueryEventStreamHandler(Operation):
    """A generic query to get a set of events based on the provided filters (QueryEventStreamHandler)

    <p>This endpoint is using POST which is somewhat unfamiliar, but it's logical
    that we have to send/post a filter (search term) in order to get the data.</p>
    <p>This endpoint will not return anything if you give it an empty filters in
    the request body. </p> <p>Required permission
    <code>ADMIN:NAMESPACE:{namespace}:EVENT [READ]</code> and scope
    <code>"+scope+"</code></p>


    Properties:
        url: /event/v2/admin/namespaces/{namespace}/query

        method: POST

        tags: ["Event V2"]

        consumes: []

        produces: ["application/json"]

        security_type: bearer

        body: (body) REQUIRED ModelsGenericQueryPayload in body

        namespace: (namespace) REQUIRED str in path

        end_date: (endDate) OPTIONAL str in query

        offset: (offset) OPTIONAL float in query

        page_size: (pageSize) OPTIONAL float in query

        start_date: (startDate) OPTIONAL str in query

    Responses:
        200: OK - ModelsEventResponseV2 (OK)

        400: Bad Request - (Bad Request)

        401: Unauthorized - (Unauthorized)

        403: Forbidden - (Forbidden)

        404: Not Found - (Not Found)

        500: Internal Server Error - (Internal Server Error)

        501: Not Implemented - (Internal Server Error)
    """

    # region fields

    _url: str = "/event/v2/admin/namespaces/{namespace}/query"
    _method: str = "POST"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _security_type: Optional[str] = "bearer"
    _location_query: str = None

    body: ModelsGenericQueryPayload                                                                # REQUIRED in [body]
    namespace: str                                                                                 # REQUIRED in [path]
    end_date: str                                                                                  # OPTIONAL in [query]
    offset: float                                                                                  # OPTIONAL in [query]
    page_size: float                                                                               # OPTIONAL in [query]
    start_date: str                                                                                # OPTIONAL in [query]

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
    def security_type(self) -> Optional[str]:
        return self._security_type

    @property
    def location_query(self) -> str:
        return self._location_query

    # endregion properties

    # region get methods

    def get_full_url(self, base_url: Union[None, str] = None) -> str:
        return self.create_full_url(
            url=self.url,
            base_url=base_url,
            path_params=self.get_path_params(),
            query_params=self.get_query_params(),
        )

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "body",
            "namespace",
        ]

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "body": self.get_body_params(),
            "path": self.get_path_params(),
            "query": self.get_query_params(),
        }

    def get_body_params(self) -> Any:
        return self.body.to_dict()

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "end_date"):
            result["endDate"] = self.end_date
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "page_size"):
            result["pageSize"] = self.page_size
        if hasattr(self, "start_date"):
            result["startDate"] = self.start_date
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "body") or self.body is None:
            return False
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_body(self, value: ModelsGenericQueryPayload) -> QueryEventStreamHandler:
        self.body = value
        return self

    def with_namespace(self, value: str) -> QueryEventStreamHandler:
        self.namespace = value
        return self

    def with_end_date(self, value: str) -> QueryEventStreamHandler:
        self.end_date = value
        return self

    def with_offset(self, value: float) -> QueryEventStreamHandler:
        self.offset = value
        return self

    def with_page_size(self, value: float) -> QueryEventStreamHandler:
        self.page_size = value
        return self

    def with_start_date(self, value: str) -> QueryEventStreamHandler:
        self.start_date = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = ModelsGenericQueryPayload()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "end_date") and self.end_date:
            result["endDate"] = str(self.end_date)
        elif include_empty:
            result["endDate"] = str()
        if hasattr(self, "offset") and self.offset:
            result["offset"] = float(self.offset)
        elif include_empty:
            result["offset"] = float()
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
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, ModelsEventResponseV2], Union[None, HttpResponse]]:
        """Parse the given response.

        200: OK - ModelsEventResponseV2 (OK)

        400: Bad Request - (Bad Request)

        401: Unauthorized - (Unauthorized)

        403: Forbidden - (Forbidden)

        404: Not Found - (Not Found)

        500: Internal Server Error - (Internal Server Error)

        501: Not Implemented - (Internal Server Error)
        """
        if code == 200:
            return ModelsEventResponseV2.create_from_dict(content), None
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
        if code == 501:
            return None, HttpResponse.create(code, "Not Implemented")
        was_handled, undocumented_response = HttpResponse.try_create_undocumented_response(code, content)
        if was_handled:
            return None, undocumented_response
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        body: ModelsGenericQueryPayload,
        namespace: str,
        end_date: Optional[str] = None,
        offset: Optional[float] = None,
        page_size: Optional[float] = None,
        start_date: Optional[str] = None,
    ) -> QueryEventStreamHandler:
        instance = cls()
        instance.body = body
        instance.namespace = namespace
        if end_date is not None:
            instance.end_date = end_date
        if offset is not None:
            instance.offset = offset
        if page_size is not None:
            instance.page_size = page_size
        if start_date is not None:
            instance.start_date = start_date
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> QueryEventStreamHandler:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = ModelsGenericQueryPayload.create_from_dict(dict_["body"], include_empty=include_empty)
        elif include_empty:
            instance.body = ModelsGenericQueryPayload()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = str(dict_["endDate"])
        elif include_empty:
            instance.end_date = str()
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = float(dict_["offset"])
        elif include_empty:
            instance.offset = float()
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
            "body": "body",
            "namespace": "namespace",
            "endDate": "end_date",
            "offset": "offset",
            "pageSize": "page_size",
            "startDate": "start_date",
        }

    # endregion static methods
