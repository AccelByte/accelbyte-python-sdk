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


class PublicUpdateUserV3(Operation):
    """Update User (PublicUpdateUserV3)

    Requires valid user access token



    This Endpoint support update user based on given data. Single request can
    update single field or multi fields.

    Supported field {country, displayName, languageTag, dateOfBirth}

    Country use ISO3166-1 alpha-2 two letter, e.g. US.

    Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.


    Several case of updating email address

      * User want to update email address of which have been verified, newEmailAddress response field will be filled with new email address.
      * User want to update email address of which have not been verified, { oldEmailAddress, emailAddress} response field will be filled with new email address.
      * User want to update email address of which have been verified and updated before, { oldEmailAddress, emailAddress} response field will be filled with verified email before. newEmailAddress response field will be filled with newest email address.

    action code : 10103


    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/me

        method: PATCH

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        security_type: bearer

        body: (body) REQUIRED ModelUserUpdateRequestV3 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelUserResponseV3] (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body | 10154: country not found | 10130: user under age)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        409: Conflict - RestErrorResponse (10133: email already used)

        500: Internal Server Error - (Internal Server Error)
    """

    # region fields

    _url: str = "/iam/v3/public/namespaces/{namespace}/users/me"
    _method: str = "PATCH"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _security_type: Optional[str] = "bearer"
    _location_query: str = None

    body: ModelUserUpdateRequestV3                                                                 # REQUIRED in [body]
    namespace: str                                                                                 # REQUIRED in [path]

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
            path_params=self.get_path_params(),
        )

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "body",
            "namespace",
        ]

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

    def is_valid(self) -> bool:
        if not hasattr(self, "body") or self.body is None:
            return False
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_body(self, value: ModelUserUpdateRequestV3) -> PublicUpdateUserV3:
        self.body = value
        return self

    def with_namespace(self, value: str) -> PublicUpdateUserV3:
        self.namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = ModelUserUpdateRequestV3()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, List[ModelUserResponseV3]], Union[None, HttpResponse, RestErrorResponse]]:
        """Parse the given response.

        200: OK - List[ModelUserResponseV3] (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body | 10154: country not found | 10130: user under age)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        409: Conflict - RestErrorResponse (10133: email already used)

        500: Internal Server Error - (Internal Server Error)
        """
        if code == 200:
            return [ModelUserResponseV3.create_from_dict(i) for i in content], None
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
        namespace: str,
    ) -> PublicUpdateUserV3:
        instance = cls()
        instance.body = body
        instance.namespace = namespace
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PublicUpdateUserV3:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = ModelUserUpdateRequestV3.create_from_dict(dict_["body"], include_empty=include_empty)
        elif include_empty:
            instance.body = ModelUserUpdateRequestV3()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "namespace": "namespace",
        }

    # endregion static methods
