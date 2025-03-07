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
from .....core import StrEnum

from ...models import OauthmodelErrorResponse
from ...models import OauthmodelLoginQueueTicketResponse
from ...models import OauthmodelTokenWithDeviceCookieResponseV3


class GrantTypeEnum(StrEnum):
    AUTHORIZATION_CODE = "authorization_code"
    CLIENT_CREDENTIALS = "client_credentials"
    PASSWORD = "password"
    REFRESH_TOKEN = "refresh_token"
    URN_IETF_PARAMS_OAUTH_GRANT_TYPE_EXTEND_CLIENT_CREDENTIALS = (
        "urn:ietf:params:oauth:grant-type:extend_client_credentials"
    )
    URN_IETF_PARAMS_OAUTH_GRANT_TYPE_LOGIN_QUEUE_TICKET = (
        "urn:ietf:params:oauth:grant-type:login_queue_ticket"
    )


class CodeChallengeMethodEnum(StrEnum):
    S256 = "S256"
    PLAIN = "plain"


class TokenGrantV4(Operation):
    """OAuth2 access token generation endpoint V4 (TokenGrantV4)

    This endpoint supports grant type:
    1. Grant Type == `authorization_code`:
    It generates the user token by given the authorization
    code which generated in "/iam/v3/authenticate" API response. It should also pass
    in the redirect_uri, which should be the same as generating the
    authorization code request.
    2. Grant Type == `password`:
    The grant type to use for authenticating a user, whether it's by email / username and password combination
    or through platform.
    3. Grant Type == `refresh_token`:
    Used to get a new access token for a valid refresh token.
    4. Grant Type == `client_credentials`:
    It generates a token by checking the client credentials provided through Authorization header.
    5. Grant Type == `urn:ietf:params:oauth:grant-type:extend_client_credentials`:
    It generates a token by checking the client credentials provided through Authorization header.
    It only allows publisher/studio namespace client.
    In generated token:
    1. There wil be no roles, namespace_roles & permission.
    2. The scope will be fixed as 'extend'.
    3. There will have a new field 'extend_namespace', the value is from token request body.
    6. Grant Type == `urn:ietf:params:oauth:grant-type:login_queue_ticket`:
    It generates a token by validating the login queue ticket against login queue service.

    ## Access Token Content
    Following is the access tokenâs content:
    - **namespace**. It is the namespace the token was generated from.
    - **display_name**. The display name of the sub. It is empty if the token is generated from the client credential
    - **roles**. The subâs roles. It is empty if the token is generated from the client credential
    - **namespace_roles**. The subâs roles scoped to namespace. Improvement from roles, which make the role scoped to specific namespace instead of global to publisher namespace
    - **permissions**. The sub or audâ permissions
    - **bans**. The subâs list of bans. It is used by the IAM client for validating the token.
    - **jflgs**. It stands for Justice Flags. It is a special flag used for storing additional status information regarding the sub. It is implemented as a bit mask. Following explains what each bit represents:
    - 1: Email Address Verified
    - 2: Phone Number Verified
    - 4: Anonymous
    - 8: Suspicious Login
    - **aud**. The aud is the targeted resource server.
    - **iat**. The time the token issues at. It is in Epoch time format
    - **exp**. The time the token expires. It is in Epoch time format
    - **client_id**. The UserID. The sub is omitted if the token is generated from client credential
    - **scope**. The scope of the access request, expressed as a list of space-delimited, case-sensitive strings

    ## Bans
    The JWT contains user's active bans with its expiry date. List of ban types can be obtained from /bans.
    ## Device Cookie Validation
    _**For grant type "password" only**_
    Device Cookie is used to protect the user account from brute force login attack, [more detail from OWASP.
    This endpoint will read device cookie from request header **Auth-Trust-Id**. If device cookie not found, it will generate a new one and set it into response body **auth_trust_id** when successfully login.
    ## Track Login History
    This endpoint will track login history to detect suspicious login activity, please provide **Device-Id** (alphanumeric) in request header parameter otherwise it will set to "unknown".
    Align with General Data Protection Regulation in Europe, user login history will be kept within 28 days by default"
    ## 2FA remember device
    To remember device for 2FA, should provide cookie: device_token or header: Device-Token
    ## Response note
    If it is a user token request and user hasn't accepted required legal policy, the field `is_comply` will be false in response and responsed token will have no permission.
    action code: 10703

    Properties:
        url: /iam/v4/oauth/token

        method: POST

        tags: ["OAuth2.0 V4"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BASIC_AUTH]

        auth_trust_id: (Auth-Trust-Id) OPTIONAL Union[str, HeaderStr] in header

        device_id: (device_id) OPTIONAL Union[str, HeaderStr] in header

        additional_data: (additionalData) OPTIONAL str in form_data

        client_id: (client_id) OPTIONAL str in form_data

        client_secret: (client_secret) OPTIONAL str in form_data

        code: (code) OPTIONAL str in form_data

        code_verifier: (code_verifier) OPTIONAL str in form_data

        extend_namespace: (extendNamespace) OPTIONAL str in form_data

        extend_exp: (extend_exp) OPTIONAL bool in form_data

        login_queue_ticket: (login_queue_ticket) OPTIONAL str in form_data

        password: (password) OPTIONAL str in form_data

        redirect_uri: (redirect_uri) OPTIONAL str in form_data

        refresh_token: (refresh_token) OPTIONAL str in form_data

        scope: (scope) OPTIONAL str in form_data

        username: (username) OPTIONAL str in form_data

        grant_type: (grant_type) REQUIRED Union[str, GrantTypeEnum] in form_data

        code_challenge: (code_challenge) OPTIONAL str in query

        code_challenge_method: (code_challenge_method) OPTIONAL Union[str, CodeChallengeMethodEnum] in query

    Responses:
        200: OK - OauthmodelTokenWithDeviceCookieResponseV3 (Token returned)

        202: Accepted - OauthmodelLoginQueueTicketResponse (Login ticket returned)

        400: Bad Request - OauthmodelErrorResponse (InvalidRequest)

        401: Unauthorized - OauthmodelErrorResponse (Client authentication failed)

        403: Forbidden - OauthmodelErrorResponse (Unauthorized access)

        429: Too Many Requests - OauthmodelErrorResponse (Too many failed auth attempt)
    """

    # region fields

    _url: str = "/iam/v4/oauth/token"
    _method: str = "POST"
    _consumes: List[str] = ["application/x-www-form-urlencoded"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BASIC_AUTH"]]
    _location_query: str = None

    auth_trust_id: Union[str, HeaderStr]  # OPTIONAL in [header]
    device_id: Union[str, HeaderStr]  # OPTIONAL in [header]
    additional_data: str  # OPTIONAL in [form_data]
    client_id: str  # OPTIONAL in [form_data]
    client_secret: str  # OPTIONAL in [form_data]
    code: str  # OPTIONAL in [form_data]
    code_verifier: str  # OPTIONAL in [form_data]
    extend_namespace: str  # OPTIONAL in [form_data]
    extend_exp: bool  # OPTIONAL in [form_data]
    login_queue_ticket: str  # OPTIONAL in [form_data]
    password: str  # OPTIONAL in [form_data]
    redirect_uri: str  # OPTIONAL in [form_data]
    refresh_token: str  # OPTIONAL in [form_data]
    scope: str  # OPTIONAL in [form_data]
    username: str  # OPTIONAL in [form_data]
    grant_type: Union[str, GrantTypeEnum]  # REQUIRED in [form_data]
    code_challenge: str  # OPTIONAL in [query]
    code_challenge_method: Union[str, CodeChallengeMethodEnum]  # OPTIONAL in [query]

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
            "header": self.get_header_params(),
            "form_data": self.get_form_data_params(),
            "query": self.get_query_params(),
        }

    def get_header_params(self) -> dict:
        result = {}
        if hasattr(self, "auth_trust_id"):
            result["Auth-Trust-Id"] = self.auth_trust_id
        if hasattr(self, "device_id"):
            result["device_id"] = self.device_id
        return result

    def get_form_data_params(self) -> dict:
        result = {}
        if hasattr(self, "additional_data"):
            result["additionalData"] = self.additional_data
        if hasattr(self, "client_id"):
            result["client_id"] = self.client_id
        if hasattr(self, "client_secret"):
            result["client_secret"] = self.client_secret
        if hasattr(self, "code"):
            result["code"] = self.code
        if hasattr(self, "code_verifier"):
            result["code_verifier"] = self.code_verifier
        if hasattr(self, "extend_namespace"):
            result["extendNamespace"] = self.extend_namespace
        if hasattr(self, "extend_exp"):
            result["extend_exp"] = self.extend_exp
        if hasattr(self, "login_queue_ticket"):
            result["login_queue_ticket"] = self.login_queue_ticket
        if hasattr(self, "password"):
            result["password"] = self.password
        if hasattr(self, "redirect_uri"):
            result["redirect_uri"] = self.redirect_uri
        if hasattr(self, "refresh_token"):
            result["refresh_token"] = self.refresh_token
        if hasattr(self, "scope"):
            result["scope"] = self.scope
        if hasattr(self, "username"):
            result["username"] = self.username
        if hasattr(self, "grant_type"):
            result["grant_type"] = self.grant_type
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "code_challenge"):
            result["code_challenge"] = self.code_challenge
        if hasattr(self, "code_challenge_method"):
            result["code_challenge_method"] = self.code_challenge_method
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_auth_trust_id(self, value: Union[str, HeaderStr]) -> TokenGrantV4:
        self.auth_trust_id = value
        return self

    def with_device_id(self, value: Union[str, HeaderStr]) -> TokenGrantV4:
        self.device_id = value
        return self

    def with_additional_data(self, value: str) -> TokenGrantV4:
        self.additional_data = value
        return self

    def with_client_id(self, value: str) -> TokenGrantV4:
        self.client_id = value
        return self

    def with_client_secret(self, value: str) -> TokenGrantV4:
        self.client_secret = value
        return self

    def with_code(self, value: str) -> TokenGrantV4:
        self.code = value
        return self

    def with_code_verifier(self, value: str) -> TokenGrantV4:
        self.code_verifier = value
        return self

    def with_extend_namespace(self, value: str) -> TokenGrantV4:
        self.extend_namespace = value
        return self

    def with_extend_exp(self, value: bool) -> TokenGrantV4:
        self.extend_exp = value
        return self

    def with_login_queue_ticket(self, value: str) -> TokenGrantV4:
        self.login_queue_ticket = value
        return self

    def with_password(self, value: str) -> TokenGrantV4:
        self.password = value
        return self

    def with_redirect_uri(self, value: str) -> TokenGrantV4:
        self.redirect_uri = value
        return self

    def with_refresh_token(self, value: str) -> TokenGrantV4:
        self.refresh_token = value
        return self

    def with_scope(self, value: str) -> TokenGrantV4:
        self.scope = value
        return self

    def with_username(self, value: str) -> TokenGrantV4:
        self.username = value
        return self

    def with_grant_type(self, value: Union[str, GrantTypeEnum]) -> TokenGrantV4:
        self.grant_type = value
        return self

    def with_code_challenge(self, value: str) -> TokenGrantV4:
        self.code_challenge = value
        return self

    def with_code_challenge_method(
        self, value: Union[str, CodeChallengeMethodEnum]
    ) -> TokenGrantV4:
        self.code_challenge_method = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "auth_trust_id") and self.auth_trust_id:
            result["Auth-Trust-Id"] = str(self.auth_trust_id)
        elif include_empty:
            result["Auth-Trust-Id"] = ""
        if hasattr(self, "device_id") and self.device_id:
            result["device_id"] = str(self.device_id)
        elif include_empty:
            result["device_id"] = ""
        if hasattr(self, "additional_data") and self.additional_data:
            result["additionalData"] = str(self.additional_data)
        elif include_empty:
            result["additionalData"] = ""
        if hasattr(self, "client_id") and self.client_id:
            result["client_id"] = str(self.client_id)
        elif include_empty:
            result["client_id"] = ""
        if hasattr(self, "client_secret") and self.client_secret:
            result["client_secret"] = str(self.client_secret)
        elif include_empty:
            result["client_secret"] = ""
        if hasattr(self, "code") and self.code:
            result["code"] = str(self.code)
        elif include_empty:
            result["code"] = ""
        if hasattr(self, "code_verifier") and self.code_verifier:
            result["code_verifier"] = str(self.code_verifier)
        elif include_empty:
            result["code_verifier"] = ""
        if hasattr(self, "extend_namespace") and self.extend_namespace:
            result["extendNamespace"] = str(self.extend_namespace)
        elif include_empty:
            result["extendNamespace"] = ""
        if hasattr(self, "extend_exp") and self.extend_exp:
            result["extend_exp"] = bool(self.extend_exp)
        elif include_empty:
            result["extend_exp"] = False
        if hasattr(self, "login_queue_ticket") and self.login_queue_ticket:
            result["login_queue_ticket"] = str(self.login_queue_ticket)
        elif include_empty:
            result["login_queue_ticket"] = ""
        if hasattr(self, "password") and self.password:
            result["password"] = str(self.password)
        elif include_empty:
            result["password"] = ""
        if hasattr(self, "redirect_uri") and self.redirect_uri:
            result["redirect_uri"] = str(self.redirect_uri)
        elif include_empty:
            result["redirect_uri"] = ""
        if hasattr(self, "refresh_token") and self.refresh_token:
            result["refresh_token"] = str(self.refresh_token)
        elif include_empty:
            result["refresh_token"] = ""
        if hasattr(self, "scope") and self.scope:
            result["scope"] = str(self.scope)
        elif include_empty:
            result["scope"] = ""
        if hasattr(self, "username") and self.username:
            result["username"] = str(self.username)
        elif include_empty:
            result["username"] = ""
        if hasattr(self, "grant_type") and self.grant_type:
            result["grant_type"] = str(self.grant_type)
        elif include_empty:
            result["grant_type"] = Union[str, GrantTypeEnum]()
        if hasattr(self, "code_challenge") and self.code_challenge:
            result["code_challenge"] = str(self.code_challenge)
        elif include_empty:
            result["code_challenge"] = ""
        if hasattr(self, "code_challenge_method") and self.code_challenge_method:
            result["code_challenge_method"] = str(self.code_challenge_method)
        elif include_empty:
            result["code_challenge_method"] = Union[str, CodeChallengeMethodEnum]()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[
            None,
            OauthmodelLoginQueueTicketResponse,
            OauthmodelTokenWithDeviceCookieResponseV3,
        ],
        Union[None, HttpResponse, OauthmodelErrorResponse],
    ]:
        """Parse the given response.

        200: OK - OauthmodelTokenWithDeviceCookieResponseV3 (Token returned)

        202: Accepted - OauthmodelLoginQueueTicketResponse (Login ticket returned)

        400: Bad Request - OauthmodelErrorResponse (InvalidRequest)

        401: Unauthorized - OauthmodelErrorResponse (Client authentication failed)

        403: Forbidden - OauthmodelErrorResponse (Unauthorized access)

        429: Too Many Requests - OauthmodelErrorResponse (Too many failed auth attempt)

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
            return (
                OauthmodelTokenWithDeviceCookieResponseV3.create_from_dict(content),
                None,
            )
        if code == 202:
            return OauthmodelLoginQueueTicketResponse.create_from_dict(content), None
        if code == 400:
            return None, OauthmodelErrorResponse.create_from_dict(content)
        if code == 401:
            return None, OauthmodelErrorResponse.create_from_dict(content)
        if code == 403:
            return None, OauthmodelErrorResponse.create_from_dict(content)
        if code == 429:
            return None, OauthmodelErrorResponse.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        grant_type: Union[str, GrantTypeEnum],
        auth_trust_id: Optional[Union[str, HeaderStr]] = None,
        device_id: Optional[Union[str, HeaderStr]] = None,
        additional_data: Optional[str] = None,
        client_id: Optional[str] = None,
        client_secret: Optional[str] = None,
        code: Optional[str] = None,
        code_verifier: Optional[str] = None,
        extend_namespace: Optional[str] = None,
        extend_exp: Optional[bool] = None,
        login_queue_ticket: Optional[str] = None,
        password: Optional[str] = None,
        redirect_uri: Optional[str] = None,
        refresh_token: Optional[str] = None,
        scope: Optional[str] = None,
        username: Optional[str] = None,
        code_challenge: Optional[str] = None,
        code_challenge_method: Optional[Union[str, CodeChallengeMethodEnum]] = None,
        **kwargs,
    ) -> TokenGrantV4:
        instance = cls()
        instance.grant_type = grant_type
        if auth_trust_id is not None:
            instance.auth_trust_id = auth_trust_id
        if device_id is not None:
            instance.device_id = device_id
        if additional_data is not None:
            instance.additional_data = additional_data
        if client_id is not None:
            instance.client_id = client_id
        if client_secret is not None:
            instance.client_secret = client_secret
        if code is not None:
            instance.code = code
        if code_verifier is not None:
            instance.code_verifier = code_verifier
        if extend_namespace is not None:
            instance.extend_namespace = extend_namespace
        if extend_exp is not None:
            instance.extend_exp = extend_exp
        if login_queue_ticket is not None:
            instance.login_queue_ticket = login_queue_ticket
        if password is not None:
            instance.password = password
        if redirect_uri is not None:
            instance.redirect_uri = redirect_uri
        if refresh_token is not None:
            instance.refresh_token = refresh_token
        if scope is not None:
            instance.scope = scope
        if username is not None:
            instance.username = username
        if code_challenge is not None:
            instance.code_challenge = code_challenge
        if code_challenge_method is not None:
            instance.code_challenge_method = code_challenge_method
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> TokenGrantV4:
        instance = cls()
        if "Auth-Trust-Id" in dict_ and dict_["Auth-Trust-Id"] is not None:
            instance.auth_trust_id = str(dict_["Auth-Trust-Id"])
        elif include_empty:
            instance.auth_trust_id = ""
        if "device_id" in dict_ and dict_["device_id"] is not None:
            instance.device_id = str(dict_["device_id"])
        elif include_empty:
            instance.device_id = ""
        if "additionalData" in dict_ and dict_["additionalData"] is not None:
            instance.additional_data = str(dict_["additionalData"])
        elif include_empty:
            instance.additional_data = ""
        if "client_id" in dict_ and dict_["client_id"] is not None:
            instance.client_id = str(dict_["client_id"])
        elif include_empty:
            instance.client_id = ""
        if "client_secret" in dict_ and dict_["client_secret"] is not None:
            instance.client_secret = str(dict_["client_secret"])
        elif include_empty:
            instance.client_secret = ""
        if "code" in dict_ and dict_["code"] is not None:
            instance.code = str(dict_["code"])
        elif include_empty:
            instance.code = ""
        if "code_verifier" in dict_ and dict_["code_verifier"] is not None:
            instance.code_verifier = str(dict_["code_verifier"])
        elif include_empty:
            instance.code_verifier = ""
        if "extendNamespace" in dict_ and dict_["extendNamespace"] is not None:
            instance.extend_namespace = str(dict_["extendNamespace"])
        elif include_empty:
            instance.extend_namespace = ""
        if "extend_exp" in dict_ and dict_["extend_exp"] is not None:
            instance.extend_exp = bool(dict_["extend_exp"])
        elif include_empty:
            instance.extend_exp = False
        if "login_queue_ticket" in dict_ and dict_["login_queue_ticket"] is not None:
            instance.login_queue_ticket = str(dict_["login_queue_ticket"])
        elif include_empty:
            instance.login_queue_ticket = ""
        if "password" in dict_ and dict_["password"] is not None:
            instance.password = str(dict_["password"])
        elif include_empty:
            instance.password = ""
        if "redirect_uri" in dict_ and dict_["redirect_uri"] is not None:
            instance.redirect_uri = str(dict_["redirect_uri"])
        elif include_empty:
            instance.redirect_uri = ""
        if "refresh_token" in dict_ and dict_["refresh_token"] is not None:
            instance.refresh_token = str(dict_["refresh_token"])
        elif include_empty:
            instance.refresh_token = ""
        if "scope" in dict_ and dict_["scope"] is not None:
            instance.scope = str(dict_["scope"])
        elif include_empty:
            instance.scope = ""
        if "username" in dict_ and dict_["username"] is not None:
            instance.username = str(dict_["username"])
        elif include_empty:
            instance.username = ""
        if "grant_type" in dict_ and dict_["grant_type"] is not None:
            instance.grant_type = str(dict_["grant_type"])
        elif include_empty:
            instance.grant_type = Union[str, GrantTypeEnum]()
        if "code_challenge" in dict_ and dict_["code_challenge"] is not None:
            instance.code_challenge = str(dict_["code_challenge"])
        elif include_empty:
            instance.code_challenge = ""
        if (
            "code_challenge_method" in dict_
            and dict_["code_challenge_method"] is not None
        ):
            instance.code_challenge_method = str(dict_["code_challenge_method"])
        elif include_empty:
            instance.code_challenge_method = Union[str, CodeChallengeMethodEnum]()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "Auth-Trust-Id": "auth_trust_id",
            "device_id": "device_id",
            "additionalData": "additional_data",
            "client_id": "client_id",
            "client_secret": "client_secret",
            "code": "code",
            "code_verifier": "code_verifier",
            "extendNamespace": "extend_namespace",
            "extend_exp": "extend_exp",
            "login_queue_ticket": "login_queue_ticket",
            "password": "password",
            "redirect_uri": "redirect_uri",
            "refresh_token": "refresh_token",
            "scope": "scope",
            "username": "username",
            "grant_type": "grant_type",
            "code_challenge": "code_challenge",
            "code_challenge_method": "code_challenge_method",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "Auth-Trust-Id": False,
            "device_id": False,
            "additionalData": False,
            "client_id": False,
            "client_secret": False,
            "code": False,
            "code_verifier": False,
            "extendNamespace": False,
            "extend_exp": False,
            "login_queue_ticket": False,
            "password": False,
            "redirect_uri": False,
            "refresh_token": False,
            "scope": False,
            "username": False,
            "grant_type": True,
            "code_challenge": False,
            "code_challenge_method": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "grant_type": [
                "authorization_code",
                "client_credentials",
                "password",
                "refresh_token",
                "urn:ietf:params:oauth:grant-type:extend_client_credentials",
                "urn:ietf:params:oauth:grant-type:login_queue_ticket",
            ],  # in form_data
            "code_challenge_method": ["S256", "plain"],  # in query
        }

    # endregion static methods
