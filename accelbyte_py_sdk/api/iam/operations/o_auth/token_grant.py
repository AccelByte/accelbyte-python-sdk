# Auto-generated at 2021-09-21T14:10:35.001474+08:00
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

from ...models import OauthmodelErrorResponse
from ...models import OauthmodelTokenResponse


class TokenGrant(Operation):
    """OAuth2 access token generation endpoint (TokenGrant)

    Properties:
        url: /iam/oauth/token

        method: POST

        tags: OAuth

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        security: bearer

        device_id: (Device-Id) OPTIONAL str in header

        grant_type: (grant_type) REQUIRED str in form_data

        username: (username) OPTIONAL str in form_data

        password: (password) OPTIONAL str in form_data

        refresh_token: (refresh_token) OPTIONAL str in form_data

        code: (code) OPTIONAL str in form_data

        redirect_uri: (redirect_uri) OPTIONAL str in form_data

        namespace: (namespace) OPTIONAL str in form_data

        extend_exp: (extend_exp) OPTIONAL bool in form_data

    Responses:
        200: OK - OauthmodelTokenResponse (Token returned)

        400: Bad Request - OauthmodelErrorResponse (General request error)

        401: Unauthorized - OauthmodelErrorResponse (Client authentication failed)
    """

    # region fields

    _url: str = "/iam/oauth/token"
    _method: str = "POST"
    _consumes: List[str] = ["application/x-www-form-urlencoded"]
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    device_id: str                                                                                 # OPTIONAL in [header]
    grant_type: str                                                                                # REQUIRED in [form_data]
    username: str                                                                                  # OPTIONAL in [form_data]
    password: str                                                                                  # OPTIONAL in [form_data]
    refresh_token: str                                                                             # OPTIONAL in [form_data]
    code: str                                                                                      # OPTIONAL in [form_data]
    redirect_uri: str                                                                              # OPTIONAL in [form_data]
    namespace: str                                                                                 # OPTIONAL in [form_data]
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
            "grant_type",
        ]

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "header": self.get_header_params(),
            "form_data": self.get_form_data_params(),
        }

    def get_header_params(self) -> dict:
        result = {}
        if hasattr(self, "device_id"):
            result["Device-Id"] = self.device_id
        return result

    def get_form_data_params(self) -> dict:
        result = {}
        if hasattr(self, "grant_type"):
            result["grant_type"] = self.grant_type
        if hasattr(self, "username"):
            result["username"] = self.username
        if hasattr(self, "password"):
            result["password"] = self.password
        if hasattr(self, "refresh_token"):
            result["refresh_token"] = self.refresh_token
        if hasattr(self, "code"):
            result["code"] = self.code
        if hasattr(self, "redirect_uri"):
            result["redirect_uri"] = self.redirect_uri
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "extend_exp"):
            result["extend_exp"] = self.extend_exp
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "grant_type") or self.grant_type is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_device_id(self, value: str) -> TokenGrant:
        self.device_id = value
        return self

    def with_grant_type(self, value: str) -> TokenGrant:
        self.grant_type = value
        return self

    def with_username(self, value: str) -> TokenGrant:
        self.username = value
        return self

    def with_password(self, value: str) -> TokenGrant:
        self.password = value
        return self

    def with_refresh_token(self, value: str) -> TokenGrant:
        self.refresh_token = value
        return self

    def with_code(self, value: str) -> TokenGrant:
        self.code = value
        return self

    def with_redirect_uri(self, value: str) -> TokenGrant:
        self.redirect_uri = value
        return self

    def with_namespace(self, value: str) -> TokenGrant:
        self.namespace = value
        return self

    def with_extend_exp(self, value: bool) -> TokenGrant:
        self.extend_exp = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "device_id") and self.device_id:
            result["Device-Id"] = str(self.device_id)
        elif include_empty:
            result["Device-Id"] = str()
        if hasattr(self, "grant_type") and self.grant_type:
            result["grant_type"] = str(self.grant_type)
        elif include_empty:
            result["grant_type"] = str()
        if hasattr(self, "username") and self.username:
            result["username"] = str(self.username)
        elif include_empty:
            result["username"] = str()
        if hasattr(self, "password") and self.password:
            result["password"] = str(self.password)
        elif include_empty:
            result["password"] = str()
        if hasattr(self, "refresh_token") and self.refresh_token:
            result["refresh_token"] = str(self.refresh_token)
        elif include_empty:
            result["refresh_token"] = str()
        if hasattr(self, "code") and self.code:
            result["code"] = str(self.code)
        elif include_empty:
            result["code"] = str()
        if hasattr(self, "redirect_uri") and self.redirect_uri:
            result["redirect_uri"] = str(self.redirect_uri)
        elif include_empty:
            result["redirect_uri"] = str()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "extend_exp") and self.extend_exp:
            result["extend_exp"] = bool(self.extend_exp)
        elif include_empty:
            result["extend_exp"] = bool()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, OauthmodelTokenResponse], Union[None, OauthmodelErrorResponse]]:
        """Parse the given response.

        200: OK - OauthmodelTokenResponse (Token returned)

        400: Bad Request - OauthmodelErrorResponse (General request error)

        401: Unauthorized - OauthmodelErrorResponse (Client authentication failed)
        """
        if code == 200:
            return OauthmodelTokenResponse.create_from_dict(content), None
        if code == 400:
            return None, OauthmodelErrorResponse.create_from_dict(content)
        if code == 401:
            return None, OauthmodelErrorResponse.create_from_dict(content)
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        grant_type: str,
        device_id: Optional[str] = None,
        username: Optional[str] = None,
        password: Optional[str] = None,
        refresh_token: Optional[str] = None,
        code: Optional[str] = None,
        redirect_uri: Optional[str] = None,
        namespace: Optional[str] = None,
        extend_exp: Optional[bool] = None,
    ) -> TokenGrant:
        instance = cls()
        instance.grant_type = grant_type
        if device_id is not None:
            instance.device_id = device_id
        if username is not None:
            instance.username = username
        if password is not None:
            instance.password = password
        if refresh_token is not None:
            instance.refresh_token = refresh_token
        if code is not None:
            instance.code = code
        if redirect_uri is not None:
            instance.redirect_uri = redirect_uri
        if namespace is not None:
            instance.namespace = namespace
        if extend_exp is not None:
            instance.extend_exp = extend_exp
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> TokenGrant:
        instance = cls()
        if "Device-Id" in dict_ and dict_["Device-Id"] is not None:
            instance.device_id = str(dict_["Device-Id"])
        elif include_empty:
            instance.device_id = str()
        if "grant_type" in dict_ and dict_["grant_type"] is not None:
            instance.grant_type = str(dict_["grant_type"])
        elif include_empty:
            instance.grant_type = str()
        if "username" in dict_ and dict_["username"] is not None:
            instance.username = str(dict_["username"])
        elif include_empty:
            instance.username = str()
        if "password" in dict_ and dict_["password"] is not None:
            instance.password = str(dict_["password"])
        elif include_empty:
            instance.password = str()
        if "refresh_token" in dict_ and dict_["refresh_token"] is not None:
            instance.refresh_token = str(dict_["refresh_token"])
        elif include_empty:
            instance.refresh_token = str()
        if "code" in dict_ and dict_["code"] is not None:
            instance.code = str(dict_["code"])
        elif include_empty:
            instance.code = str()
        if "redirect_uri" in dict_ and dict_["redirect_uri"] is not None:
            instance.redirect_uri = str(dict_["redirect_uri"])
        elif include_empty:
            instance.redirect_uri = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "extend_exp" in dict_ and dict_["extend_exp"] is not None:
            instance.extend_exp = bool(dict_["extend_exp"])
        elif include_empty:
            instance.extend_exp = bool()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "Device-Id": "device_id",
            "grant_type": "grant_type",
            "username": "username",
            "password": "password",
            "refresh_token": "refresh_token",
            "code": "code",
            "redirect_uri": "redirect_uri",
            "namespace": "namespace",
            "extend_exp": "extend_exp",
        }

    # endregion static methods
