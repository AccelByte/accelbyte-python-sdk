# Auto-generated at 2021-10-21T08:52:24.405691+08:00
# from: Justice dsmc Service (2.6.0)

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

from ...models import ModelsListSessionResponse
from ...models import ResponseError


class ListSession(Operation):
    """List all managed sessions in a region (ListSession)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SESSION [READ] Required
    scope: social This endpoint lists all of sessions in a namespace managed by
    this service.


    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/sessions

        method: GET

        tags: ["Admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        security: bearer

        namespace: (namespace) REQUIRED str in path

        region: (region) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        count: (count) OPTIONAL int in query

        with_server: (withServer) OPTIONAL bool in query

    Responses:
        200: OK - ModelsListSessionResponse (sessions listed)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """

    # region fields

    _url: str = "/dsmcontroller/admin/namespaces/{namespace}/sessions"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    namespace: str                                                                                 # REQUIRED in [path]
    region: str                                                                                    # OPTIONAL in [query]
    offset: int                                                                                    # OPTIONAL in [query]
    count: int                                                                                     # OPTIONAL in [query]
    with_server: bool                                                                              # OPTIONAL in [query]

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
        if hasattr(self, "region"):
            result["region"] = self.region
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "count"):
            result["count"] = self.count
        if hasattr(self, "with_server"):
            result["withServer"] = self.with_server
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> ListSession:
        self.namespace = value
        return self

    def with_region(self, value: str) -> ListSession:
        self.region = value
        return self

    def with_offset(self, value: int) -> ListSession:
        self.offset = value
        return self

    def with_count(self, value: int) -> ListSession:
        self.count = value
        return self

    def with_with_server(self, value: bool) -> ListSession:
        self.with_server = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "region") and self.region:
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = str()
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = int()
        if hasattr(self, "count") and self.count:
            result["count"] = int(self.count)
        elif include_empty:
            result["count"] = int()
        if hasattr(self, "with_server") and self.with_server:
            result["withServer"] = bool(self.with_server)
        elif include_empty:
            result["withServer"] = bool()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, ModelsListSessionResponse], Union[None, ResponseError]]:
        """Parse the given response.

        200: OK - ModelsListSessionResponse (sessions listed)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
        """
        if code == 200:
            return ModelsListSessionResponse.create_from_dict(content), None
        if code == 401:
            return None, ResponseError.create_from_dict(content)
        if code == 500:
            return None, ResponseError.create_from_dict(content)
        was_handled, undocumented_response = HttpResponse.try_create_undocumented_response(code, content)
        if was_handled:
            return None, undocumented_response
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        region: Optional[str] = None,
        offset: Optional[int] = None,
        count: Optional[int] = None,
        with_server: Optional[bool] = None,
    ) -> ListSession:
        instance = cls()
        instance.namespace = namespace
        if region is not None:
            instance.region = region
        if offset is not None:
            instance.offset = offset
        if count is not None:
            instance.count = count
        if with_server is not None:
            instance.with_server = with_server
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ListSession:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = str()
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = int()
        if "count" in dict_ and dict_["count"] is not None:
            instance.count = int(dict_["count"])
        elif include_empty:
            instance.count = int()
        if "withServer" in dict_ and dict_["withServer"] is not None:
            instance.with_server = bool(dict_["withServer"])
        elif include_empty:
            instance.with_server = bool()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "region": "region",
            "offset": "offset",
            "count": "count",
            "withServer": "with_server",
        }

    # endregion static methods
