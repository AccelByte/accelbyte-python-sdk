# Auto-generated at 2021-10-14T22:17:11.987668+08:00
# from: Justice Iam Service (4.1.0)

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


class UserAuthenticationV3(Operation):
    """Authentication API (UserAuthenticationV3)

    This endpoint is being used to authenticate a user account. It validates
    user's email / username and password. Deactivated or login-banned users are
    unable to login Redirect URI and Client ID must be specified as a pair and
    only used to redirect to the specified redirect URI in case the requestId is
    no longer valid.


    action code: 10801


    Properties:
        url: /iam/v3/authenticate

        method: POST

        tags: ["OAuth2.0 - Extension"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        security: None

        location query: code

        user_name: (user_name) REQUIRED str in form_data

        password: (password) REQUIRED str in form_data

        request_id: (request_id) REQUIRED str in form_data

        redirect_uri: (redirect_uri) OPTIONAL str in form_data

        client_id: (client_id) OPTIONAL str in form_data

        extend_exp: (extend_exp) OPTIONAL bool in form_data

    Responses:
        302: Found - (Found. Redirect successful requests to consent page with "list of consent" in query params.)
    """

    # region fields

    _url: str = "/iam/v3/authenticate"
    _method: str = "POST"
    _consumes: List[str] = ["application/x-www-form-urlencoded"]
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = None
    _location_query: str = "code"

    user_name: str                                                                                 # REQUIRED in [form_data]
    password: str                                                                                  # REQUIRED in [form_data]
    request_id: str                                                                                # REQUIRED in [form_data]
    redirect_uri: str                                                                              # OPTIONAL in [form_data]
    client_id: str                                                                                 # OPTIONAL in [form_data]
    extend_exp: bool                                                                               # OPTIONAL in [form_data]

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
        result = base_url if base_url is not None else ""

        result += self.url

        return result

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "user_name",
            "password",
            "request_id",
        ]

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "form_data": self.get_form_data_params(),
        }

    def get_form_data_params(self) -> dict:
        result = {}
        if hasattr(self, "user_name"):
            result["user_name"] = self.user_name
        if hasattr(self, "password"):
            result["password"] = self.password
        if hasattr(self, "request_id"):
            result["request_id"] = self.request_id
        if hasattr(self, "redirect_uri"):
            result["redirect_uri"] = self.redirect_uri
        if hasattr(self, "client_id"):
            result["client_id"] = self.client_id
        if hasattr(self, "extend_exp"):
            result["extend_exp"] = self.extend_exp
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "user_name") or self.user_name is None:
            return False
        if not hasattr(self, "password") or self.password is None:
            return False
        if not hasattr(self, "request_id") or self.request_id is None:
            return False
        return True

    # noinspection PyMethodMayBeStatic
    def has_redirects(self) -> bool:
        """Returns True if this operation has redirects, otherwise False.

        302: Found - (Found. Redirect successful requests to consent page with "list of consent" in query params.)
        """
        return True

    # endregion is/has methods

    # region with_x methods

    def with_user_name(self, value: str) -> UserAuthenticationV3:
        self.user_name = value
        return self

    def with_password(self, value: str) -> UserAuthenticationV3:
        self.password = value
        return self

    def with_request_id(self, value: str) -> UserAuthenticationV3:
        self.request_id = value
        return self

    def with_redirect_uri(self, value: str) -> UserAuthenticationV3:
        self.redirect_uri = value
        return self

    def with_client_id(self, value: str) -> UserAuthenticationV3:
        self.client_id = value
        return self

    def with_extend_exp(self, value: bool) -> UserAuthenticationV3:
        self.extend_exp = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "user_name") and self.user_name:
            result["user_name"] = str(self.user_name)
        elif include_empty:
            result["user_name"] = str()
        if hasattr(self, "password") and self.password:
            result["password"] = str(self.password)
        elif include_empty:
            result["password"] = str()
        if hasattr(self, "request_id") and self.request_id:
            result["request_id"] = str(self.request_id)
        elif include_empty:
            result["request_id"] = str()
        if hasattr(self, "redirect_uri") and self.redirect_uri:
            result["redirect_uri"] = str(self.redirect_uri)
        elif include_empty:
            result["redirect_uri"] = str()
        if hasattr(self, "client_id") and self.client_id:
            result["client_id"] = str(self.client_id)
        elif include_empty:
            result["client_id"] = str()
        if hasattr(self, "extend_exp") and self.extend_exp:
            result["extend_exp"] = bool(self.extend_exp)
        elif include_empty:
            result["extend_exp"] = bool()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, HttpResponse], Union[None, HttpResponse]]:
        """Parse the given response.

        302: Found - (Found. Redirect successful requests to consent page with "list of consent" in query params.)
        """
        if code == 302:
            return HttpResponse.create_redirect(code, content), None
        was_handled, undocumented_response = HttpResponse.try_create_undocumented_response(code, content)
        if was_handled:
            return None, undocumented_response
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        user_name: str,
        password: str,
        request_id: str,
        redirect_uri: Optional[str] = None,
        client_id: Optional[str] = None,
        extend_exp: Optional[bool] = None,
    ) -> UserAuthenticationV3:
        instance = cls()
        instance.user_name = user_name
        instance.password = password
        instance.request_id = request_id
        if redirect_uri is not None:
            instance.redirect_uri = redirect_uri
        if client_id is not None:
            instance.client_id = client_id
        if extend_exp is not None:
            instance.extend_exp = extend_exp
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> UserAuthenticationV3:
        instance = cls()
        if "user_name" in dict_ and dict_["user_name"] is not None:
            instance.user_name = str(dict_["user_name"])
        elif include_empty:
            instance.user_name = str()
        if "password" in dict_ and dict_["password"] is not None:
            instance.password = str(dict_["password"])
        elif include_empty:
            instance.password = str()
        if "request_id" in dict_ and dict_["request_id"] is not None:
            instance.request_id = str(dict_["request_id"])
        elif include_empty:
            instance.request_id = str()
        if "redirect_uri" in dict_ and dict_["redirect_uri"] is not None:
            instance.redirect_uri = str(dict_["redirect_uri"])
        elif include_empty:
            instance.redirect_uri = str()
        if "client_id" in dict_ and dict_["client_id"] is not None:
            instance.client_id = str(dict_["client_id"])
        elif include_empty:
            instance.client_id = str()
        if "extend_exp" in dict_ and dict_["extend_exp"] is not None:
            instance.extend_exp = bool(dict_["extend_exp"])
        elif include_empty:
            instance.extend_exp = bool()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "user_name": "user_name",
            "password": "password",
            "request_id": "request_id",
            "redirect_uri": "redirect_uri",
            "client_id": "client_id",
            "extend_exp": "extend_exp",
        }

    # endregion static methods
