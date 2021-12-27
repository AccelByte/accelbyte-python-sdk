# justice-iam-service (4.9.0)

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

from ...models import AccountCreateTestUserRequestV4
from ...models import AccountCreateUserResponseV4
from ...models import RestErrorResponse


class PublicCreateTestUserV4(Operation):
    """[TEST FACILITY ONLY]Create test User (PublicCreateTestUserV4)

    Create a test user and not send verification code email <p> <b>Required
    attributes:</b> - verified: this new user is verified or not - authType:
    possible value is EMAILPASSWD - emailAddress: 5 to 254 characters -
    username: 3 to 48 characters, case insensitive, alphanumeric with allowed
    symbols underscore (_) and dot (.) - password: 8 to 32 characters, satisfy at
    least 3 out of 4 conditions(uppercase, lowercase letters, numbers and special
    characters) and should not have more than 2 equal characters in a row. -
    country: ISO3166-1 alpha-2 two letter, e.g. US. - dateOfBirth: YYYY-MM-DD,
    e.g. 1990-01-01. valid values are between 1905-01-01 until current date. <br/>
    <b>Not required attributes:</b> - displayName: 1 to 48 characters </p>
    <p>This endpoint support accepting agreements for the created user. Supply the
    accepted agreements in acceptedPolicies attribute.</p>


    Properties:
        url: /iam/v4/public/namespaces/{namespace}/test_users

        method: POST

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        security_type: bearer

        body: (body) REQUIRED AccountCreateTestUserRequestV4 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - AccountCreateUserResponseV4 (Created)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error | 10130: user under age)

        404: Not Found - RestErrorResponse (10154: country not found)

        409: Conflict - RestErrorResponse (10133: email already used | 10177: username already used)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """

    # region fields

    _url: str = "/iam/v4/public/namespaces/{namespace}/test_users"
    _method: str = "POST"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _security_type: Optional[str] = "bearer"
    _location_query: str = None

    body: AccountCreateTestUserRequestV4                                                           # REQUIRED in [body]
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

    def get_full_url(self, base_url: Union[None, str] = None) -> str:
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

    def with_body(self, value: AccountCreateTestUserRequestV4) -> PublicCreateTestUserV4:
        self.body = value
        return self

    def with_namespace(self, value: str) -> PublicCreateTestUserV4:
        self.namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = AccountCreateTestUserRequestV4()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, AccountCreateUserResponseV4], Union[None, RestErrorResponse]]:
        """Parse the given response.

        201: Created - AccountCreateUserResponseV4 (Created)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error | 10130: user under age)

        404: Not Found - RestErrorResponse (10154: country not found)

        409: Conflict - RestErrorResponse (10133: email already used | 10177: username already used)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
        """
        if code == 201:
            return AccountCreateUserResponseV4.create_from_dict(content), None
        if code == 400:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 404:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 409:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 500:
            return None, RestErrorResponse.create_from_dict(content)
        was_handled, undocumented_response = HttpResponse.try_create_undocumented_response(code, content)
        if was_handled:
            return None, undocumented_response
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        body: AccountCreateTestUserRequestV4,
        namespace: str,
    ) -> PublicCreateTestUserV4:
        instance = cls()
        instance.body = body
        instance.namespace = namespace
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PublicCreateTestUserV4:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = AccountCreateTestUserRequestV4.create_from_dict(dict_["body"], include_empty=include_empty)
        elif include_empty:
            instance.body = AccountCreateTestUserRequestV4()
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