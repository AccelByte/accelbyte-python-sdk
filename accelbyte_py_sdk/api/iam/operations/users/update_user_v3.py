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

from ...models import ModelPublicUserUpdateRequestV3
from ...models import ModelUserResponseV3
from ...models import RestErrorResponse


class UpdateUserV3(Operation):
    """Update User (UpdateUserV3)

    This Endpoint support update user based on given data. **Single request can update single field or multi fields.**
    Supported field {country, displayName, languageTag, dateOfBirth, avatarUrl, userName}
    Country use ISO3166-1 alpha-2 two letter, e.g. US.
    Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.
    **Response body logic when user updating email address:**
    - User want to update email address of which have been verified, newEmailAddress response field will be filled with new email address.
    - User want to update email address of which have not been verified, { oldEmailAddress, emailAddress} response field will be filled with new email address.
    - User want to update email address of which have been verified and updated before, { oldEmailAddress, emailAddress} response field will be filled with verified email before. newEmailAddress response field will be filled with newest email address.

    **Important notes:**
    This endpoint provides support for client that doesn't have PATCH support, i.e. UE4 before v4.23 released.
    If the client support PATCH method, use [PATCH] /iam/v3/public/namespaces/{namespace}/users/me instead

    action code : 10103

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/me

        method: PUT

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelPublicUserUpdateRequestV3 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelUserResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body | 10154: country not found | 10130: user under age)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (10213: country is blocked | 10235: date of birth not allowed to update | 10236: username not allowed to update | 10237: display name not allowed to update | 10238: country not allowed to update)

        409: Conflict - RestErrorResponse (10133: email already used | 10222: unique display name already exists)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """

    # region fields

    _url: str = "/iam/v3/public/namespaces/{namespace}/users/me"
    _method: str = "PUT"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    body: ModelPublicUserUpdateRequestV3  # REQUIRED in [body]
    namespace: str  # REQUIRED in [path]

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
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_body(self, value: ModelPublicUserUpdateRequestV3) -> UpdateUserV3:
        self.body = value
        return self

    def with_namespace(self, value: str) -> UpdateUserV3:
        self.namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = ModelPublicUserUpdateRequestV3()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ModelUserResponseV3], Union[None, HttpResponse, RestErrorResponse]
    ]:
        """Parse the given response.

        200: OK - ModelUserResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body | 10154: country not found | 10130: user under age)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (10213: country is blocked | 10235: date of birth not allowed to update | 10236: username not allowed to update | 10237: display name not allowed to update | 10238: country not allowed to update)

        409: Conflict - RestErrorResponse (10133: email already used | 10222: unique display name already exists)

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
            return ModelUserResponseV3.create_from_dict(content), None
        if code == 400:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 401:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 403:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 409:
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
        cls, body: ModelPublicUserUpdateRequestV3, namespace: str, **kwargs
    ) -> UpdateUserV3:
        instance = cls()
        instance.body = body
        instance.namespace = namespace
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> UpdateUserV3:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = ModelPublicUserUpdateRequestV3.create_from_dict(
                dict_["body"], include_empty=include_empty
            )
        elif include_empty:
            instance.body = ModelPublicUserUpdateRequestV3()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "namespace": "namespace",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "body": True,
            "namespace": True,
        }

    # endregion static methods
