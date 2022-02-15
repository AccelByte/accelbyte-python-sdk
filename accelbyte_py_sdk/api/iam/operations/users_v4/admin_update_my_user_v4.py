# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

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

# justice-iam-service (5.2.0)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HttpResponse

from ...models import ModelUserResponseV3
from ...models import ModelUserUpdateRequestV3
from ...models import RestErrorResponse


class AdminUpdateMyUserV4(Operation):
    """Admin Update My User (AdminUpdateMyUserV4)

    Requires valid user access token





    This Endpoint support update user based on given data. Single request can update single field or multi fields.




    Supported field {country, displayName, languageTag, dateOfBirth, userName}




    Country use ISO3166-1 alpha-2 two letter, e.g. US.




    Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.




    action code : 10103

    Properties:
        url: /iam/v4/admin/users/me

        method: PATCH

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        security_type: bearer

        body: (body) REQUIRED ModelUserUpdateRequestV3 in body

    Responses:
        200: OK - ModelUserResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body | 10154: country not found | 10130: user under age)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        409: Conflict - RestErrorResponse (10177: username already used)

        500: Internal Server Error - (Internal Server Error)
    """

    # region fields

    _url: str = "/iam/v4/admin/users/me"
    _method: str = "PATCH"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _security_type: Optional[str] = "bearer"
    _location_query: str = None

    body: ModelUserUpdateRequestV3                                                                 # REQUIRED in [body]

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
    def security_type(self) -> Optional[str]:
        return self._security_type

    @property
    def location_query(self) -> str:
        return self._location_query

    # endregion properties

    # region get methods

    def get_full_url(self, base_url: Union[None, str] = None, collection_format_map: Optional[Dict[str, Optional[str]]] = None) -> str:
        return self.create_full_url(
            url=self.url,
            base_url=base_url,
        )

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "body",
        ]

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

    def is_valid(self) -> bool:
        if not hasattr(self, "body") or self.body is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_body(self, value: ModelUserUpdateRequestV3) -> AdminUpdateMyUserV4:
        self.body = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = ModelUserUpdateRequestV3()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, ModelUserResponseV3], Union[None, HttpResponse, RestErrorResponse]]:
        """Parse the given response.

        200: OK - ModelUserResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body | 10154: country not found | 10130: user under age)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        409: Conflict - RestErrorResponse (10177: username already used)

        500: Internal Server Error - (Internal Server Error)
        """
        if code == 200:
            return ModelUserResponseV3.create_from_dict(content), None
        if code == 400:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 401:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 409:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 500:
            return None, HttpResponse.create(code, "Internal Server Error")
        was_handled, undocumented_response = HttpResponse.try_create_undocumented_response(code, content)
        if was_handled:
            if undocumented_response.is_no_content():
                return None, None
            return None, undocumented_response
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        body: ModelUserUpdateRequestV3,
    ) -> AdminUpdateMyUserV4:
        instance = cls()
        instance.body = body
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> AdminUpdateMyUserV4:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = ModelUserUpdateRequestV3.create_from_dict(dict_["body"], include_empty=include_empty)
        elif include_empty:
            instance.body = ModelUserUpdateRequestV3()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
        }

    # endregion static methods
