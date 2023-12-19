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

# AccelByte Gaming Services Reporting Service (0.1.30)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import RestapiErrorResponse
from ...models import RestapiTicketResponse
from ...models import RestapiUpdateTicketResolutionsRequest


class UpdateTicketResolutions(Operation):
    """Update ticket resolution to a given status (updateTicketResolutions)

    Update ticket resolution status to either OPEN or CLOSED. It is mandatory to provide notes

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId}/resolutions

        method: POST

        tags: ["Admin Tickets"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED RestapiUpdateTicketResolutionsRequest in body

        namespace: (namespace) REQUIRED str in path

        ticket_id: (ticketId) REQUIRED str in path

    Responses:
        200: OK - RestapiTicketResponse

        500: Internal Server Error - RestapiErrorResponse
    """

    # region fields

    _url: str = (
        "/reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId}/resolutions"
    )
    _method: str = "POST"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    body: RestapiUpdateTicketResolutionsRequest  # REQUIRED in [body]
    namespace: str  # REQUIRED in [path]
    ticket_id: str  # REQUIRED in [path]

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
            "body": self.get_body_params(),
            "path": self.get_path_params(),
        }

    def get_body_params(self) -> Any:
        if not hasattr(self, "body") or self.body is None:
            return None
        return self.body.to_dict()

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "ticket_id"):
            result["ticketId"] = self.ticket_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_body(
        self, value: RestapiUpdateTicketResolutionsRequest
    ) -> UpdateTicketResolutions:
        self.body = value
        return self

    def with_namespace(self, value: str) -> UpdateTicketResolutions:
        self.namespace = value
        return self

    def with_ticket_id(self, value: str) -> UpdateTicketResolutions:
        self.ticket_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = RestapiUpdateTicketResolutionsRequest()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "ticket_id") and self.ticket_id:
            result["ticketId"] = str(self.ticket_id)
        elif include_empty:
            result["ticketId"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, RestapiTicketResponse],
        Union[None, HttpResponse, RestapiErrorResponse],
    ]:
        """Parse the given response.

        200: OK - RestapiTicketResponse

        500: Internal Server Error - RestapiErrorResponse

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
            return RestapiTicketResponse.create_from_dict(content), None
        if code == 500:
            return None, RestapiErrorResponse.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        body: RestapiUpdateTicketResolutionsRequest,
        namespace: str,
        ticket_id: str,
        **kwargs,
    ) -> UpdateTicketResolutions:
        instance = cls()
        instance.body = body
        instance.namespace = namespace
        instance.ticket_id = ticket_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> UpdateTicketResolutions:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = RestapiUpdateTicketResolutionsRequest.create_from_dict(
                dict_["body"], include_empty=include_empty
            )
        elif include_empty:
            instance.body = RestapiUpdateTicketResolutionsRequest()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "ticketId" in dict_ and dict_["ticketId"] is not None:
            instance.ticket_id = str(dict_["ticketId"])
        elif include_empty:
            instance.ticket_id = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "namespace": "namespace",
            "ticketId": "ticket_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "body": True,
            "namespace": True,
            "ticketId": True,
        }

    # endregion static methods
