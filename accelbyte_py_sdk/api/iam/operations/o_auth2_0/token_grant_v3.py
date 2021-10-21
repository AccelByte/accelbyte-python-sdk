# justice-iam-service (4.4.1)

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
from ...models import OauthmodelTokenResponseV3


class TokenGrantV3(Operation):
    """OAuth2 access token generation endpoint (TokenGrantV3)

    This endpoint supports grant type:

      1. Grant Type == `authorization_code`:  
        It generates the user token by given the authorization code which generated in "/v3/oauth/auth" API response. It should also pass in the redirect_uri, which should be the same as generating the authorization code request. 
      2. Grant Type == `refresh_token`:  
        Used to get a new access token for a valid refresh token. 
      3. Grant Type == `client_credentials`:  
        It generates a token by checking the client credentials provided through Authorization header. 

    ## Access Token Content

    Following is the access token’s content:

      * namespace. It is the namespace the token was generated from.

      * display_name. The display name of the sub. It is empty if the token is generated from the client credential

      * roles. The sub’s roles. It is empty if the token is generated from the client credential

      * namespace_roles. The sub’s roles scoped to namespace. Improvement from roles, which make the role scoped to specific namespace instead of global to publisher namespace

      * permissions. The sub or aud’ permissions

      * bans. The sub’s list of bans. It is used by the IAM client for validating the token.

      * jflgs. It stands for Justice Flags. It is a special flag used for storing additional status information regarding the sub. It is implemented as a bit mask. Following explains what each bit represents:

        * 1: Email Address Verified

        * 2: Phone Number Verified

        * 4: Anonymous

        * 8: Suspicious Login

      * aud. The aud is the targeted resource server.

      * iat. The time the token issues at. It is in Epoch time format

      * exp. The time the token expires. It is in Epoch time format

      * client_id. The UserID. The sub is omitted if the token is generated from client credential

      * scope. The scope of the access request, expressed as a list of space-delimited, case-sensitive strings

    ## Bans

    The JWT contains user's active bans with its expiry date. List of ban types
    can be obtained from /bans.

    ## Track Login History

    This endpoint will track login history to detect suspicious login activity,
    please provide "device_id" (alphanumeric) in request header parameter
    otherwise we will set to "unknown".

    Align with General Data Protection Regulation in Europe, user login history
    will be kept within 28 days by default"

    action code: 10703


    Properties:
        url: /iam/v3/oauth/token

        method: POST

        tags: ["OAuth2.0"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        security: basic

        device_id: (device_id) OPTIONAL str in header

        grant_type: (grant_type) REQUIRED str in form_data

        code: (code) OPTIONAL str in form_data

        code_verifier: (code_verifier) OPTIONAL str in form_data

        client_id: (client_id) OPTIONAL str in form_data

        redirect_uri: (redirect_uri) OPTIONAL str in form_data

        refresh_token: (refresh_token) OPTIONAL str in form_data

    Responses:
        200: OK - OauthmodelTokenResponseV3 (Token returned)

        400: Bad Request - OauthmodelErrorResponse (InvalidRequest)

        401: Unauthorized - OauthmodelErrorResponse (Client authentication failed)

        403: Forbidden - OauthmodelErrorResponse (Unauthorized access)
    """

    # region fields

    _url: str = "/iam/v3/oauth/token"
    _method: str = "POST"
    _consumes: List[str] = ["application/x-www-form-urlencoded"]
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "basic"
    _location_query: str = None

    device_id: str                                                                                 # OPTIONAL in [header]
    grant_type: str                                                                                # REQUIRED in [form_data]
    code: str                                                                                      # OPTIONAL in [form_data]
    code_verifier: str                                                                             # OPTIONAL in [form_data]
    client_id: str                                                                                 # OPTIONAL in [form_data]
    redirect_uri: str                                                                              # OPTIONAL in [form_data]
    refresh_token: str                                                                             # OPTIONAL in [form_data]

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
            result["device_id"] = self.device_id
        return result

    def get_form_data_params(self) -> dict:
        result = {}
        if hasattr(self, "grant_type"):
            result["grant_type"] = self.grant_type
        if hasattr(self, "code"):
            result["code"] = self.code
        if hasattr(self, "code_verifier"):
            result["code_verifier"] = self.code_verifier
        if hasattr(self, "client_id"):
            result["client_id"] = self.client_id
        if hasattr(self, "redirect_uri"):
            result["redirect_uri"] = self.redirect_uri
        if hasattr(self, "refresh_token"):
            result["refresh_token"] = self.refresh_token
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "grant_type") or self.grant_type is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_device_id(self, value: str) -> TokenGrantV3:
        self.device_id = value
        return self

    def with_grant_type(self, value: str) -> TokenGrantV3:
        self.grant_type = value
        return self

    def with_code(self, value: str) -> TokenGrantV3:
        self.code = value
        return self

    def with_code_verifier(self, value: str) -> TokenGrantV3:
        self.code_verifier = value
        return self

    def with_client_id(self, value: str) -> TokenGrantV3:
        self.client_id = value
        return self

    def with_redirect_uri(self, value: str) -> TokenGrantV3:
        self.redirect_uri = value
        return self

    def with_refresh_token(self, value: str) -> TokenGrantV3:
        self.refresh_token = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "device_id") and self.device_id:
            result["device_id"] = str(self.device_id)
        elif include_empty:
            result["device_id"] = str()
        if hasattr(self, "grant_type") and self.grant_type:
            result["grant_type"] = str(self.grant_type)
        elif include_empty:
            result["grant_type"] = str()
        if hasattr(self, "code") and self.code:
            result["code"] = str(self.code)
        elif include_empty:
            result["code"] = str()
        if hasattr(self, "code_verifier") and self.code_verifier:
            result["code_verifier"] = str(self.code_verifier)
        elif include_empty:
            result["code_verifier"] = str()
        if hasattr(self, "client_id") and self.client_id:
            result["client_id"] = str(self.client_id)
        elif include_empty:
            result["client_id"] = str()
        if hasattr(self, "redirect_uri") and self.redirect_uri:
            result["redirect_uri"] = str(self.redirect_uri)
        elif include_empty:
            result["redirect_uri"] = str()
        if hasattr(self, "refresh_token") and self.refresh_token:
            result["refresh_token"] = str(self.refresh_token)
        elif include_empty:
            result["refresh_token"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, OauthmodelTokenResponseV3], Union[None, OauthmodelErrorResponse]]:
        """Parse the given response.

        200: OK - OauthmodelTokenResponseV3 (Token returned)

        400: Bad Request - OauthmodelErrorResponse (InvalidRequest)

        401: Unauthorized - OauthmodelErrorResponse (Client authentication failed)

        403: Forbidden - OauthmodelErrorResponse (Unauthorized access)
        """
        if code == 200:
            return OauthmodelTokenResponseV3.create_from_dict(content), None
        if code == 400:
            return None, OauthmodelErrorResponse.create_from_dict(content)
        if code == 401:
            return None, OauthmodelErrorResponse.create_from_dict(content)
        if code == 403:
            return None, OauthmodelErrorResponse.create_from_dict(content)
        was_handled, undocumented_response = HttpResponse.try_create_undocumented_response(code, content)
        if was_handled:
            return None, undocumented_response
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        grant_type: str,
        device_id: Optional[str] = None,
        code: Optional[str] = None,
        code_verifier: Optional[str] = None,
        client_id: Optional[str] = None,
        redirect_uri: Optional[str] = None,
        refresh_token: Optional[str] = None,
    ) -> TokenGrantV3:
        instance = cls()
        instance.grant_type = grant_type
        if device_id is not None:
            instance.device_id = device_id
        if code is not None:
            instance.code = code
        if code_verifier is not None:
            instance.code_verifier = code_verifier
        if client_id is not None:
            instance.client_id = client_id
        if redirect_uri is not None:
            instance.redirect_uri = redirect_uri
        if refresh_token is not None:
            instance.refresh_token = refresh_token
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> TokenGrantV3:
        instance = cls()
        if "device_id" in dict_ and dict_["device_id"] is not None:
            instance.device_id = str(dict_["device_id"])
        elif include_empty:
            instance.device_id = str()
        if "grant_type" in dict_ and dict_["grant_type"] is not None:
            instance.grant_type = str(dict_["grant_type"])
        elif include_empty:
            instance.grant_type = str()
        if "code" in dict_ and dict_["code"] is not None:
            instance.code = str(dict_["code"])
        elif include_empty:
            instance.code = str()
        if "code_verifier" in dict_ and dict_["code_verifier"] is not None:
            instance.code_verifier = str(dict_["code_verifier"])
        elif include_empty:
            instance.code_verifier = str()
        if "client_id" in dict_ and dict_["client_id"] is not None:
            instance.client_id = str(dict_["client_id"])
        elif include_empty:
            instance.client_id = str()
        if "redirect_uri" in dict_ and dict_["redirect_uri"] is not None:
            instance.redirect_uri = str(dict_["redirect_uri"])
        elif include_empty:
            instance.redirect_uri = str()
        if "refresh_token" in dict_ and dict_["refresh_token"] is not None:
            instance.refresh_token = str(dict_["refresh_token"])
        elif include_empty:
            instance.refresh_token = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "device_id": "device_id",
            "grant_type": "grant_type",
            "code": "code",
            "code_verifier": "code_verifier",
            "client_id": "client_id",
            "redirect_uri": "redirect_uri",
            "refresh_token": "refresh_token",
        }

    # endregion static methods
