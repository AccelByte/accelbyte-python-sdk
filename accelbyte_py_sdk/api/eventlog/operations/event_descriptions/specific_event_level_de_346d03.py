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

from ...models import ModelsMultipleEventLevel


class SpecificEventLevelDescriptionHandler(Operation):
    """Get specific list of event level and the descriptions by comma separated value of event levels (SpecificEventLevelDescriptionHandler)

    Properties:
        url: /event/descriptions/eventLevel/listByEventLevels

        method: GET

        tags: ["Event Descriptions"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        event_levels: (eventLevels) OPTIONAL str in query

    Responses:
        200: OK - ModelsMultipleEventLevel (OK)

        400: Bad Request - (Bad Request)

        404: Not Found - (Not Found)
    """

    # region fields

    _url: str = "/event/descriptions/eventLevel/listByEventLevels"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    event_levels: str  # OPTIONAL in [query]

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
        if hasattr(self, "event_levels"):
            result["eventLevels"] = self.event_levels
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_event_levels(self, value: str) -> SpecificEventLevelDescriptionHandler:
        self.event_levels = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "event_levels") and self.event_levels:
            result["eventLevels"] = str(self.event_levels)
        elif include_empty:
            result["eventLevels"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[Union[None, ModelsMultipleEventLevel], Union[None, HttpResponse]]:
        """Parse the given response.

        200: OK - ModelsMultipleEventLevel (OK)

        400: Bad Request - (Bad Request)

        404: Not Found - (Not Found)

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
            return ModelsMultipleEventLevel.create_from_dict(content), None
        if code == 400:
            return None, HttpResponse.create(code, "Bad Request")
        if code == 404:
            return None, HttpResponse.create(code, "Not Found")

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        event_levels: Optional[str] = None,
    ) -> SpecificEventLevelDescriptionHandler:
        instance = cls()
        if event_levels is not None:
            instance.event_levels = event_levels
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> SpecificEventLevelDescriptionHandler:
        instance = cls()
        if "eventLevels" in dict_ and dict_["eventLevels"] is not None:
            instance.event_levels = str(dict_["eventLevels"])
        elif include_empty:
            instance.event_levels = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "eventLevels": "event_levels",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "eventLevels": False,
        }

    # endregion static methods
