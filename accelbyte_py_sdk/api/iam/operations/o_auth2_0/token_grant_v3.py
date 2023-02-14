# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

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

# AccelByte Cloud Iam Service (5.27.2)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse
from .....core import StrEnum

from ...models import OauthmodelErrorResponse
from ...models import OauthmodelTokenWithDeviceCookieResponseV3


class GrantTypeEnum(StrEnum):
    AUTHORIZATION_CODE = "authorization_code"
    CLIENT_CREDENTIALS = "client_credentials"
    PASSWORD = "password"
    REFRESH_TOKEN = "refresh_token"


class TokenGrantV3(Operation):
    """OAuth2 access token generation endpoint (TokenGrantV3)

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





    ## Access Token Content




    Following is the access tokenâs content:






      *


    namespace. It is the namespace the token was generated from.





      *


    display_name. The display name of the sub. It is empty if the token is generated from the client credential





      *


    roles. The subâs roles. It is empty if the token is generated from the client credential





      *


    namespace_roles. The subâs roles scoped to namespace. Improvement from roles, which make the role scoped to specific namespace instead of global to publisher namespace





      *


    permissions. The sub or audâ permissions





      *


    bans. The subâs list of bans. It is used by the IAM client for validating the token.





      *


    jflgs. It stands for Justice Flags. It is a special flag used for storing additional status information regarding the sub. It is implemented as a bit mask. Following explains what each bit represents:




        * 1: Email Address Verified



        * 2: Phone Number Verified



        * 4: Anonymous



        * 8: Suspicious Login






      *


    aud. The aud is the targeted resource server.





      *


    iat. The time the token issues at. It is in Epoch time format





      *


    exp. The time the token expires. It is in Epoch time format





      *


    client_id. The UserID. The sub is omitted if the token is generated from client credential





      *


    scope. The scope of the access request, expressed as a list of space-delimited, case-sensitive strings








    ## Bans




    The JWT contains user's active bans with its expiry date. List of ban types can be obtained from /bans.




    ## Device Cookie Validation




    For grant type "password" only




    Device Cookie is used to protect the user account from brute force login attack, [more detail from OWASP.




    This endpoint will read device cookie from request header Auth-Trust-Id. If device cookie not found, it will generate a new one and set it into response body auth_trust_id when successfully login.




    ## Track Login History




    This endpoint will track login history to detect suspicious login activity, please provide Device-Id (alphanumeric) in request header parameter otherwise it will set to "unknown".




    Align with General Data Protection Regulation in Europe, user login history will be kept within 28 days by default"




    ## 2FA remember device




    To remember device for 2FA, should provide cookie: device_token or header: Device-Token




    action code: 10703

    Properties:
        url: /iam/v3/oauth/token

        method: POST

        tags: ["OAuth2.0"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BASIC_AUTH]

        auth_trust_id: (Auth-Trust-Id) OPTIONAL Union[str, HeaderStr] in header

        device_id: (device_id) OPTIONAL Union[str, HeaderStr] in header

        client_id: (client_id) OPTIONAL str in form_data

        code: (code) OPTIONAL str in form_data

        code_verifier: (code_verifier) OPTIONAL str in form_data

        extend_exp: (extend_exp) OPTIONAL bool in form_data

        password: (password) OPTIONAL str in form_data

        redirect_uri: (redirect_uri) OPTIONAL str in form_data

        refresh_token: (refresh_token) OPTIONAL str in form_data

        username: (username) OPTIONAL str in form_data

        grant_type: (grant_type) REQUIRED Union[str, GrantTypeEnum] in form_data

    Responses:
        200: OK - OauthmodelTokenWithDeviceCookieResponseV3 (Token returned)

        400: Bad Request - OauthmodelErrorResponse (InvalidRequest)

        401: Unauthorized - OauthmodelErrorResponse (Client authentication failed)

        403: Forbidden - OauthmodelErrorResponse (Unauthorized access)

        429: Too Many Requests - OauthmodelErrorResponse (Too many failed auth attempt)
    """

    # region fields

    _url: str = "/iam/v3/oauth/token"
    _method: str = "POST"
    _consumes: List[str] = ["application/x-www-form-urlencoded"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BASIC_AUTH"]]
    _location_query: str = None

    auth_trust_id: Union[str, HeaderStr]  # OPTIONAL in [header]
    device_id: Union[str, HeaderStr]  # OPTIONAL in [header]
    client_id: str  # OPTIONAL in [form_data]
    code: str  # OPTIONAL in [form_data]
    code_verifier: str  # OPTIONAL in [form_data]
    extend_exp: bool  # OPTIONAL in [form_data]
    password: str  # OPTIONAL in [form_data]
    redirect_uri: str  # OPTIONAL in [form_data]
    refresh_token: str  # OPTIONAL in [form_data]
    username: str  # OPTIONAL in [form_data]
    grant_type: Union[str, GrantTypeEnum]  # REQUIRED in [form_data]

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
        if hasattr(self, "client_id"):
            result["client_id"] = self.client_id
        if hasattr(self, "code"):
            result["code"] = self.code
        if hasattr(self, "code_verifier"):
            result["code_verifier"] = self.code_verifier
        if hasattr(self, "extend_exp"):
            result["extend_exp"] = self.extend_exp
        if hasattr(self, "password"):
            result["password"] = self.password
        if hasattr(self, "redirect_uri"):
            result["redirect_uri"] = self.redirect_uri
        if hasattr(self, "refresh_token"):
            result["refresh_token"] = self.refresh_token
        if hasattr(self, "username"):
            result["username"] = self.username
        if hasattr(self, "grant_type"):
            result["grant_type"] = self.grant_type
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_auth_trust_id(self, value: Union[str, HeaderStr]) -> TokenGrantV3:
        self.auth_trust_id = value
        return self

    def with_device_id(self, value: Union[str, HeaderStr]) -> TokenGrantV3:
        self.device_id = value
        return self

    def with_client_id(self, value: str) -> TokenGrantV3:
        self.client_id = value
        return self

    def with_code(self, value: str) -> TokenGrantV3:
        self.code = value
        return self

    def with_code_verifier(self, value: str) -> TokenGrantV3:
        self.code_verifier = value
        return self

    def with_extend_exp(self, value: bool) -> TokenGrantV3:
        self.extend_exp = value
        return self

    def with_password(self, value: str) -> TokenGrantV3:
        self.password = value
        return self

    def with_redirect_uri(self, value: str) -> TokenGrantV3:
        self.redirect_uri = value
        return self

    def with_refresh_token(self, value: str) -> TokenGrantV3:
        self.refresh_token = value
        return self

    def with_username(self, value: str) -> TokenGrantV3:
        self.username = value
        return self

    def with_grant_type(self, value: Union[str, GrantTypeEnum]) -> TokenGrantV3:
        self.grant_type = value
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
        if hasattr(self, "client_id") and self.client_id:
            result["client_id"] = str(self.client_id)
        elif include_empty:
            result["client_id"] = ""
        if hasattr(self, "code") and self.code:
            result["code"] = str(self.code)
        elif include_empty:
            result["code"] = ""
        if hasattr(self, "code_verifier") and self.code_verifier:
            result["code_verifier"] = str(self.code_verifier)
        elif include_empty:
            result["code_verifier"] = ""
        if hasattr(self, "extend_exp") and self.extend_exp:
            result["extend_exp"] = bool(self.extend_exp)
        elif include_empty:
            result["extend_exp"] = False
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
        if hasattr(self, "username") and self.username:
            result["username"] = str(self.username)
        elif include_empty:
            result["username"] = ""
        if hasattr(self, "grant_type") and self.grant_type:
            result["grant_type"] = str(self.grant_type)
        elif include_empty:
            result["grant_type"] = Union[str, GrantTypeEnum]()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, OauthmodelTokenWithDeviceCookieResponseV3],
        Union[None, HttpResponse, OauthmodelErrorResponse],
    ]:
        """Parse the given response.

        200: OK - OauthmodelTokenWithDeviceCookieResponseV3 (Token returned)

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
        client_id: Optional[str] = None,
        code: Optional[str] = None,
        code_verifier: Optional[str] = None,
        extend_exp: Optional[bool] = None,
        password: Optional[str] = None,
        redirect_uri: Optional[str] = None,
        refresh_token: Optional[str] = None,
        username: Optional[str] = None,
    ) -> TokenGrantV3:
        instance = cls()
        instance.grant_type = grant_type
        if auth_trust_id is not None:
            instance.auth_trust_id = auth_trust_id
        if device_id is not None:
            instance.device_id = device_id
        if client_id is not None:
            instance.client_id = client_id
        if code is not None:
            instance.code = code
        if code_verifier is not None:
            instance.code_verifier = code_verifier
        if extend_exp is not None:
            instance.extend_exp = extend_exp
        if password is not None:
            instance.password = password
        if redirect_uri is not None:
            instance.redirect_uri = redirect_uri
        if refresh_token is not None:
            instance.refresh_token = refresh_token
        if username is not None:
            instance.username = username
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> TokenGrantV3:
        instance = cls()
        if "Auth-Trust-Id" in dict_ and dict_["Auth-Trust-Id"] is not None:
            instance.auth_trust_id = str(dict_["Auth-Trust-Id"])
        elif include_empty:
            instance.auth_trust_id = ""
        if "device_id" in dict_ and dict_["device_id"] is not None:
            instance.device_id = str(dict_["device_id"])
        elif include_empty:
            instance.device_id = ""
        if "client_id" in dict_ and dict_["client_id"] is not None:
            instance.client_id = str(dict_["client_id"])
        elif include_empty:
            instance.client_id = ""
        if "code" in dict_ and dict_["code"] is not None:
            instance.code = str(dict_["code"])
        elif include_empty:
            instance.code = ""
        if "code_verifier" in dict_ and dict_["code_verifier"] is not None:
            instance.code_verifier = str(dict_["code_verifier"])
        elif include_empty:
            instance.code_verifier = ""
        if "extend_exp" in dict_ and dict_["extend_exp"] is not None:
            instance.extend_exp = bool(dict_["extend_exp"])
        elif include_empty:
            instance.extend_exp = False
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
        if "username" in dict_ and dict_["username"] is not None:
            instance.username = str(dict_["username"])
        elif include_empty:
            instance.username = ""
        if "grant_type" in dict_ and dict_["grant_type"] is not None:
            instance.grant_type = str(dict_["grant_type"])
        elif include_empty:
            instance.grant_type = Union[str, GrantTypeEnum]()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "Auth-Trust-Id": "auth_trust_id",
            "device_id": "device_id",
            "client_id": "client_id",
            "code": "code",
            "code_verifier": "code_verifier",
            "extend_exp": "extend_exp",
            "password": "password",
            "redirect_uri": "redirect_uri",
            "refresh_token": "refresh_token",
            "username": "username",
            "grant_type": "grant_type",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "Auth-Trust-Id": False,
            "device_id": False,
            "client_id": False,
            "code": False,
            "code_verifier": False,
            "extend_exp": False,
            "password": False,
            "redirect_uri": False,
            "refresh_token": False,
            "username": False,
            "grant_type": True,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "grant_type": [
                "authorization_code",
                "client_credentials",
                "password",
                "refresh_token",
            ],  # in form_data
        }

    # endregion static methods
