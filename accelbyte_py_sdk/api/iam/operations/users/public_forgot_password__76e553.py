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

# AccelByte Gaming Services Iam Service

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ModelForgotPasswordResponseV3
from ...models import ModelForgotPasswordWithoutNamespaceRequestV3
from ...models import RestErrorResponse


class PublicForgotPasswordWithoutNamespaceV3(Operation):
    """Request Password Reset Code (PublicForgotPasswordWithoutNamespaceV3)

    This endpoint does not need a namespace in the path, we will find the namespace based on:

    - If this is premium environment, the namespace will be the publisher namespace.
    - If this is shared cloud:
    - If this is from Admin Portal, we will find the user by the email.
    - If this is not from Admin Portal, we will find the namespace based on the client id.

    **Note**:
    - The param **clientId** is required in Shared Cloud
    - The namespace in the response is publisher/studio namespace

    Properties:
        url: /iam/v3/public/users/forgot

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelForgotPasswordWithoutNamespaceRequestV3 in body

    Responses:
        200: OK - ModelForgotPasswordResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """

    # region fields

    _url: str = "/iam/v3/public/users/forgot"
    _method: str = "POST"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    body: ModelForgotPasswordWithoutNamespaceRequestV3  # REQUIRED in [body]

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
        }

    def get_body_params(self) -> Any:
        if not hasattr(self, "body") or self.body is None:
            return None
        return self.body.to_dict()

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_body(
        self, value: ModelForgotPasswordWithoutNamespaceRequestV3
    ) -> PublicForgotPasswordWithoutNamespaceV3:
        self.body = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = ModelForgotPasswordWithoutNamespaceRequestV3()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ModelForgotPasswordResponseV3],
        Union[None, HttpResponse, RestErrorResponse],
    ]:
        """Parse the given response.

        200: OK - ModelForgotPasswordResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)

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
            return ModelForgotPasswordResponseV3.create_from_dict(content), None
        if code == 400:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 500:
            return None, RestErrorResponse.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls, body: ModelForgotPasswordWithoutNamespaceRequestV3, **kwargs
    ) -> PublicForgotPasswordWithoutNamespaceV3:
        instance = cls()
        instance.body = body
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PublicForgotPasswordWithoutNamespaceV3:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = (
                ModelForgotPasswordWithoutNamespaceRequestV3.create_from_dict(
                    dict_["body"], include_empty=include_empty
                )
            )
        elif include_empty:
            instance.body = ModelForgotPasswordWithoutNamespaceRequestV3()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "body": True,
        }

    # endregion static methods
