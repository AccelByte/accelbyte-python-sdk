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

# AccelByte Gaming Services Ds Artifact Manager

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ModelsListAllQueueResponse
from ...models import ResponseError


class ListAllQueue(Operation):
    """Get all artifact upload process queues (listAllQueue)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSAM:ARTIFACT:QUEUE [READ]

    Required scope: social

    This endpoint will list all DSes which has artifact in upload queue.

    Properties:
        url: /dsartifact/namespaces/{namespace}/artifacts/queues/all

        method: GET

        tags: ["Artifact Upload Process Queue"]

        consumes: ["application/json"]

        produces: ["application/json", "text/x-log"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        exclude_uploading: (exclude_uploading) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        next_: (next) OPTIONAL str in query

        node_ip: (nodeIP) OPTIONAL str in query

        order: (order) OPTIONAL str in query

        pod_name: (pod_name) OPTIONAL str in query

        previous: (previous) OPTIONAL str in query

    Responses:
        200: OK - ModelsListAllQueueResponse (get all queue success.)

        400: Bad Request - ResponseError (Bad Request)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """

    # region fields

    _url: str = "/dsartifact/namespaces/{namespace}/artifacts/queues/all"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json", "text/x-log"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    exclude_uploading: bool  # OPTIONAL in [query]
    limit: int  # OPTIONAL in [query]
    next_: str  # OPTIONAL in [query]
    node_ip: str  # OPTIONAL in [query]
    order: str  # OPTIONAL in [query]
    pod_name: str  # OPTIONAL in [query]
    previous: str  # OPTIONAL in [query]

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
        if hasattr(self, "exclude_uploading"):
            result["exclude_uploading"] = self.exclude_uploading
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "next_"):
            result["next"] = self.next_
        if hasattr(self, "node_ip"):
            result["nodeIP"] = self.node_ip
        if hasattr(self, "order"):
            result["order"] = self.order
        if hasattr(self, "pod_name"):
            result["pod_name"] = self.pod_name
        if hasattr(self, "previous"):
            result["previous"] = self.previous
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> ListAllQueue:
        self.namespace = value
        return self

    def with_exclude_uploading(self, value: bool) -> ListAllQueue:
        self.exclude_uploading = value
        return self

    def with_limit(self, value: int) -> ListAllQueue:
        self.limit = value
        return self

    def with_next(self, value: str) -> ListAllQueue:
        self.next_ = value
        return self

    def with_node_ip(self, value: str) -> ListAllQueue:
        self.node_ip = value
        return self

    def with_order(self, value: str) -> ListAllQueue:
        self.order = value
        return self

    def with_pod_name(self, value: str) -> ListAllQueue:
        self.pod_name = value
        return self

    def with_previous(self, value: str) -> ListAllQueue:
        self.previous = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "exclude_uploading") and self.exclude_uploading:
            result["exclude_uploading"] = bool(self.exclude_uploading)
        elif include_empty:
            result["exclude_uploading"] = False
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = 0
        if hasattr(self, "next_") and self.next_:
            result["next"] = str(self.next_)
        elif include_empty:
            result["next"] = ""
        if hasattr(self, "node_ip") and self.node_ip:
            result["nodeIP"] = str(self.node_ip)
        elif include_empty:
            result["nodeIP"] = ""
        if hasattr(self, "order") and self.order:
            result["order"] = str(self.order)
        elif include_empty:
            result["order"] = ""
        if hasattr(self, "pod_name") and self.pod_name:
            result["pod_name"] = str(self.pod_name)
        elif include_empty:
            result["pod_name"] = ""
        if hasattr(self, "previous") and self.previous:
            result["previous"] = str(self.previous)
        elif include_empty:
            result["previous"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ModelsListAllQueueResponse],
        Union[None, HttpResponse, ResponseError],
    ]:
        """Parse the given response.

        200: OK - ModelsListAllQueueResponse (get all queue success.)

        400: Bad Request - ResponseError (Bad Request)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)

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
            return ModelsListAllQueueResponse.create_from_dict(content), None
        if code == 400:
            return None, ResponseError.create_from_dict(content)
        if code == 404:
            return None, ResponseError.create_from_dict(content)
        if code == 500:
            return None, ResponseError.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        exclude_uploading: Optional[bool] = None,
        limit: Optional[int] = None,
        next_: Optional[str] = None,
        node_ip: Optional[str] = None,
        order: Optional[str] = None,
        pod_name: Optional[str] = None,
        previous: Optional[str] = None,
        **kwargs,
    ) -> ListAllQueue:
        instance = cls()
        instance.namespace = namespace
        if exclude_uploading is not None:
            instance.exclude_uploading = exclude_uploading
        if limit is not None:
            instance.limit = limit
        if next_ is not None:
            instance.next_ = next_
        if node_ip is not None:
            instance.node_ip = node_ip
        if order is not None:
            instance.order = order
        if pod_name is not None:
            instance.pod_name = pod_name
        if previous is not None:
            instance.previous = previous
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ListAllQueue:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "exclude_uploading" in dict_ and dict_["exclude_uploading"] is not None:
            instance.exclude_uploading = bool(dict_["exclude_uploading"])
        elif include_empty:
            instance.exclude_uploading = False
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = 0
        if "next" in dict_ and dict_["next"] is not None:
            instance.next_ = str(dict_["next"])
        elif include_empty:
            instance.next_ = ""
        if "nodeIP" in dict_ and dict_["nodeIP"] is not None:
            instance.node_ip = str(dict_["nodeIP"])
        elif include_empty:
            instance.node_ip = ""
        if "order" in dict_ and dict_["order"] is not None:
            instance.order = str(dict_["order"])
        elif include_empty:
            instance.order = ""
        if "pod_name" in dict_ and dict_["pod_name"] is not None:
            instance.pod_name = str(dict_["pod_name"])
        elif include_empty:
            instance.pod_name = ""
        if "previous" in dict_ and dict_["previous"] is not None:
            instance.previous = str(dict_["previous"])
        elif include_empty:
            instance.previous = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "exclude_uploading": "exclude_uploading",
            "limit": "limit",
            "next": "next_",
            "nodeIP": "node_ip",
            "order": "order",
            "pod_name": "pod_name",
            "previous": "previous",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "exclude_uploading": False,
            "limit": False,
            "next": False,
            "nodeIP": False,
            "order": False,
            "pod_name": False,
            "previous": False,
        }

    # endregion static methods
