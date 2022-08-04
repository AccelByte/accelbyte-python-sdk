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

# AccelByte Cloud Qo S Manager Service ()

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ModelsListServerResponse
from ...models import ResponseError


class ListServer(Operation):
    """Get list of QoS services (ListServer)

    ```
    This endpoint lists all QoS services available in all regions.

    This endpoint is intended to be called by game client to find out all available regions.
    After getting a list of QoS on each region, game client is expected to ping each one with UDP
    connection as described below:

    1. Make UDP connection to each QoS's IP:Port
    2. Send string "PING" after connection established
    3. Wait for string "PONG" response
    4. Note the request-response latency for each QoS in each region

    The game then can use ping latency information to either:
    1. Inform the player on these latencies and let player choose preferred region
    2. Send the latency list to Matchmaking Service so that player can be matched with other players
    in nearby regions
    ```

    Properties:
        url: /qosm/public/qos

        method: GET

        tags: ["Public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelsListServerResponse (list of QoS services returned)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """

    # region fields

    _url: str = "/qosm/public/qos"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

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
        return {}

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ModelsListServerResponse], Union[None, HttpResponse, ResponseError]
    ]:
        """Parse the given response.

        200: OK - ModelsListServerResponse (list of QoS services returned)

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
            return ModelsListServerResponse.create_from_dict(content), None
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
    ) -> ListServer:
        instance = cls()
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ListServer:
        instance = cls()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {}

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {}

    # endregion static methods
