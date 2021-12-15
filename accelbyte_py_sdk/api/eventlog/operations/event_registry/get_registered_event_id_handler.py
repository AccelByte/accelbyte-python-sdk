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
from .....core import deprecated

from ...models import ModelsEventRegistry


@deprecated
class GetRegisteredEventIDHandler(Operation):
    """Get registered eventID data from the Event Registry (GetRegisteredEventIDHandler)

    Required permission <code>ADMIN:NAMESPACE:{namespace}:EVENT [READ]</code>and
    scope <code>analytics</code>


    Properties:
        url: /event/registry/eventIds/{eventId}

        method: GET

        tags: ["Event Registry"]

        consumes: []

        produces: ["application/json"]

        security: bearer

        event_id: (eventId) REQUIRED str in path

    Responses:
        200: OK - ModelsEventRegistry (OK)

        400: Bad Request - (Bad Request)

        401: Unauthorized - (Unauthorized)

        403: Forbidden - (Forbidden)

        404: Not Found - (Not Found)

        500: Internal Server Error - (Internal Server Error)
    """

    # region fields

    _url: str = "/event/registry/eventIds/{eventId}"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    event_id: str                                                                                  # REQUIRED in [path]

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
        return self.create_full_url(
            url=self.url,
            base_url=base_url,
            path_params=self.get_path_params(),
        )

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "event_id",
        ]

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "path": self.get_path_params(),
        }

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "event_id"):
            result["eventId"] = self.event_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "event_id") or self.event_id is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_event_id(self, value: str) -> GetRegisteredEventIDHandler:
        self.event_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "event_id") and self.event_id:
            result["eventId"] = str(self.event_id)
        elif include_empty:
            result["eventId"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, ModelsEventRegistry], Union[None, HttpResponse]]:
        """Parse the given response.

        200: OK - ModelsEventRegistry (OK)

        400: Bad Request - (Bad Request)

        401: Unauthorized - (Unauthorized)

        403: Forbidden - (Forbidden)

        404: Not Found - (Not Found)

        500: Internal Server Error - (Internal Server Error)
        """
        if code == 200:
            return ModelsEventRegistry.create_from_dict(content), None
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
        event_id: str,
    ) -> GetRegisteredEventIDHandler:
        instance = cls()
        instance.event_id = event_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> GetRegisteredEventIDHandler:
        instance = cls()
        if "eventId" in dict_ and dict_["eventId"] is not None:
            instance.event_id = str(dict_["eventId"])
        elif include_empty:
            instance.event_id = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "eventId": "event_id",
        }

    # endregion static methods
