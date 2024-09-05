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

from ...models import ModelsListNodesIPAddress
from ...models import ResponseError


class ListNodesIPAddress(Operation):
    """Get IP Address of all nodes that all artifact in queue resides. This IP Address is the IP Address of nomad client (listNodesIPAddress)

    Required permission: ADMIN:DSAM:ARTIFACT:NODES [READ]

    Required scope: social

    This endpoint will list IP Address of all artifact queue

    Properties:
        url: /dsartifact/artifacts/nodes/ipaddresses

        method: GET

        tags: ["Artifact Upload Process Queue"]

        consumes: ["application/json"]

        produces: ["application/json", "text/x-log"]

        securities: [BEARER_AUTH]

        limit: (limit) OPTIONAL int in query

        next_: (next) OPTIONAL str in query

        node_ip: (nodeIP) OPTIONAL str in query

        previous: (previous) OPTIONAL str in query

    Responses:
        200: OK - ModelsListNodesIPAddress (get all active queue success.)

        400: Bad Request - ResponseError (Bad Request)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """

    # region fields

    _url: str = "/dsartifact/artifacts/nodes/ipaddresses"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json", "text/x-log"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    limit: int  # OPTIONAL in [query]
    next_: str  # OPTIONAL in [query]
    node_ip: str  # OPTIONAL in [query]
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
            "query": self.get_query_params(),
        }

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "next_"):
            result["next"] = self.next_
        if hasattr(self, "node_ip"):
            result["nodeIP"] = self.node_ip
        if hasattr(self, "previous"):
            result["previous"] = self.previous
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_limit(self, value: int) -> ListNodesIPAddress:
        self.limit = value
        return self

    def with_next(self, value: str) -> ListNodesIPAddress:
        self.next_ = value
        return self

    def with_node_ip(self, value: str) -> ListNodesIPAddress:
        self.node_ip = value
        return self

    def with_previous(self, value: str) -> ListNodesIPAddress:
        self.previous = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
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
        Union[None, ModelsListNodesIPAddress], Union[None, HttpResponse, ResponseError]
    ]:
        """Parse the given response.

        200: OK - ModelsListNodesIPAddress (get all active queue success.)

        400: Bad Request - ResponseError (Bad Request)

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
            return ModelsListNodesIPAddress.create_from_dict(content), None
        if code == 400:
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
        limit: Optional[int] = None,
        next_: Optional[str] = None,
        node_ip: Optional[str] = None,
        previous: Optional[str] = None,
        **kwargs,
    ) -> ListNodesIPAddress:
        instance = cls()
        if limit is not None:
            instance.limit = limit
        if next_ is not None:
            instance.next_ = next_
        if node_ip is not None:
            instance.node_ip = node_ip
        if previous is not None:
            instance.previous = previous
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ListNodesIPAddress:
        instance = cls()
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
        if "previous" in dict_ and dict_["previous"] is not None:
            instance.previous = str(dict_["previous"])
        elif include_empty:
            instance.previous = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "limit": "limit",
            "next": "next_",
            "nodeIP": "node_ip",
            "previous": "previous",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "limit": False,
            "next": False,
            "nodeIP": False,
            "previous": False,
        }

    # endregion static methods
