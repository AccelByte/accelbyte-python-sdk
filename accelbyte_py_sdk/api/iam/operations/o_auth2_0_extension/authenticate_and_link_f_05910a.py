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


class AuthenticateAndLinkForwardV3(Operation):
    """Authentication with platform link, the response will be a forward (AuthenticateAndLinkForwardV3)

    This endpoint is being used to authenticate a user account and perform platform link.
    It validates user's email / username and password.
    If user already enable 2FA, then invoke _/mfa/verify_ using **mfa_token** from this endpoint response.

    ## Device Cookie Validation

    Device Cookie is used to protect the user account from brute force login attack, [more detail from OWASP](https://owasp.org/www-community/Slow_Down_Online_Guessing_Attacks_with_Device_Cookies).
    This endpoint will read device cookie from cookie **auth-trust-id**. If device cookie not found, it will generate a new one and set it into cookie when successfully authenticate.

    Properties:
        url: /iam/v3/authenticateWithLink/forward

        method: POST

        tags: ["OAuth2.0 - Extension"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        extend_exp: (extend_exp) OPTIONAL bool in form_data

        client_id: (client_id) REQUIRED str in form_data

        linking_token: (linkingToken) REQUIRED str in form_data

        password: (password) REQUIRED str in form_data

        username: (username) REQUIRED str in form_data

    Responses:
        302: Found - (Found. Redirect to clients redirection URL with code or redirect to login web with error on the query parameter)
    """

    # region fields

    _url: str = "/iam/v3/authenticateWithLink/forward"
    _method: str = "POST"
    _consumes: List[str] = ["application/x-www-form-urlencoded"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    extend_exp: bool  # OPTIONAL in [form_data]
    client_id: str  # REQUIRED in [form_data]
    linking_token: str  # REQUIRED in [form_data]
    password: str  # REQUIRED in [form_data]
    username: str  # REQUIRED in [form_data]

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
            "form_data": self.get_form_data_params(),
        }

    def get_form_data_params(self) -> dict:
        result = {}
        if hasattr(self, "extend_exp"):
            result["extend_exp"] = self.extend_exp
        if hasattr(self, "client_id"):
            result["client_id"] = self.client_id
        if hasattr(self, "linking_token"):
            result["linkingToken"] = self.linking_token
        if hasattr(self, "password"):
            result["password"] = self.password
        if hasattr(self, "username"):
            result["username"] = self.username
        return result

    # endregion get_x_params methods

    # region is/has methods

    # noinspection PyMethodMayBeStatic
    def has_redirects(self) -> bool:
        """Returns True if this operation has redirects, otherwise False.

        302: Found - (Found. Redirect to clients redirection URL with code or redirect to login web with error on the query parameter)
        """
        return True

    # endregion is/has methods

    # region with_x methods

    def with_extend_exp(self, value: bool) -> AuthenticateAndLinkForwardV3:
        self.extend_exp = value
        return self

    def with_client_id(self, value: str) -> AuthenticateAndLinkForwardV3:
        self.client_id = value
        return self

    def with_linking_token(self, value: str) -> AuthenticateAndLinkForwardV3:
        self.linking_token = value
        return self

    def with_password(self, value: str) -> AuthenticateAndLinkForwardV3:
        self.password = value
        return self

    def with_username(self, value: str) -> AuthenticateAndLinkForwardV3:
        self.username = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "extend_exp") and self.extend_exp:
            result["extend_exp"] = bool(self.extend_exp)
        elif include_empty:
            result["extend_exp"] = False
        if hasattr(self, "client_id") and self.client_id:
            result["client_id"] = str(self.client_id)
        elif include_empty:
            result["client_id"] = ""
        if hasattr(self, "linking_token") and self.linking_token:
            result["linkingToken"] = str(self.linking_token)
        elif include_empty:
            result["linkingToken"] = ""
        if hasattr(self, "password") and self.password:
            result["password"] = str(self.password)
        elif include_empty:
            result["password"] = ""
        if hasattr(self, "username") and self.username:
            result["username"] = str(self.username)
        elif include_empty:
            result["username"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[Union[None, HttpResponse], Union[None, HttpResponse]]:
        """Parse the given response.

        302: Found - (Found. Redirect to clients redirection URL with code or redirect to login web with error on the query parameter)

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

        if code == 302:
            return HttpResponse.create_redirect(code, content), None

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        client_id: str,
        linking_token: str,
        password: str,
        username: str,
        extend_exp: Optional[bool] = None,
        **kwargs,
    ) -> AuthenticateAndLinkForwardV3:
        instance = cls()
        instance.client_id = client_id
        instance.linking_token = linking_token
        instance.password = password
        instance.username = username
        if extend_exp is not None:
            instance.extend_exp = extend_exp
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AuthenticateAndLinkForwardV3:
        instance = cls()
        if "extend_exp" in dict_ and dict_["extend_exp"] is not None:
            instance.extend_exp = bool(dict_["extend_exp"])
        elif include_empty:
            instance.extend_exp = False
        if "client_id" in dict_ and dict_["client_id"] is not None:
            instance.client_id = str(dict_["client_id"])
        elif include_empty:
            instance.client_id = ""
        if "linkingToken" in dict_ and dict_["linkingToken"] is not None:
            instance.linking_token = str(dict_["linkingToken"])
        elif include_empty:
            instance.linking_token = ""
        if "password" in dict_ and dict_["password"] is not None:
            instance.password = str(dict_["password"])
        elif include_empty:
            instance.password = ""
        if "username" in dict_ and dict_["username"] is not None:
            instance.username = str(dict_["username"])
        elif include_empty:
            instance.username = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "extend_exp": "extend_exp",
            "client_id": "client_id",
            "linkingToken": "linking_token",
            "password": "password",
            "username": "username",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "extend_exp": False,
            "client_id": True,
            "linkingToken": True,
            "password": True,
            "username": True,
        }

    # endregion static methods
