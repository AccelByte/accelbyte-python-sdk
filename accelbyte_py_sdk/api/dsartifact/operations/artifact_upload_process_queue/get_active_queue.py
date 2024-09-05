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

from ...models import ModelsQueue
from ...models import ResponseError


class GetActiveQueue(Operation):
    """Get active queue process on a node (getActiveQueue)

    ```
    Required permission: ADMIN:DSAM:ARTIFACT:QUEUE [READ]

    This endpoint is used to get an active queue process on a node
    ```

    Properties:
        url: /dsartifact/artifacts/queues/active

        method: GET

        tags: ["Artifact Upload Process Queue"]

        consumes: ["application/json"]

        produces: ["application/json", "text/x-log"]

        securities: [BEARER_AUTH]

        node_ip: (nodeIP) REQUIRED str in query

    Responses:
        200: OK - ModelsQueue (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """

    # region fields

    _url: str = "/dsartifact/artifacts/queues/active"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json", "text/x-log"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    node_ip: str  # REQUIRED in [query]

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
        if hasattr(self, "node_ip"):
            result["nodeIP"] = self.node_ip
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_node_ip(self, value: str) -> GetActiveQueue:
        self.node_ip = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "node_ip") and self.node_ip:
            result["nodeIP"] = str(self.node_ip)
        elif include_empty:
            result["nodeIP"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[Union[None, ModelsQueue], Union[None, HttpResponse, ResponseError]]:
        """Parse the given response.

        200: OK - ModelsQueue (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

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
            return ModelsQueue.create_from_dict(content), None
        if code == 400:
            return None, ResponseError.create_from_dict(content)
        if code == 401:
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
    def create(cls, node_ip: str, **kwargs) -> GetActiveQueue:
        instance = cls()
        instance.node_ip = node_ip
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> GetActiveQueue:
        instance = cls()
        if "nodeIP" in dict_ and dict_["nodeIP"] is not None:
            instance.node_ip = str(dict_["nodeIP"])
        elif include_empty:
            instance.node_ip = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "nodeIP": "node_ip",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "nodeIP": True,
        }

    # endregion static methods
