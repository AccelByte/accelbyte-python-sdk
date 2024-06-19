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
from ...models import OauthmodelTokenResponseV3


class CodeChallengeMethodEnum(StrEnum):
    S256 = "S256"
    PLAIN = "plain"


class PlatformTokenGrantV4(Operation):
    """OAuth2 access token generation specific to platform (PlatformTokenGrantV4)

    Platform token grant specifically used for performing token grant using platform, e.g. Steam, Justice, etc. The endpoint automatically create an account if the account associated with the platform is not exists yet.
    This endpoint requires all requests to have Authorization header set with Basic access authentication
    constructed from client id and client secret. For publisher-game namespace schema : Specify only either platform_token or device_id. Device token grant
    should be requested along with device_id parameter against game namespace. Another 3rd party platform token grant should be requested
    along with platform_token parameter against publisher namespace.
    ## 2FA remember device
    To remember device for 2FA, should provide cookie: device_token or header: Device-Token
    ## Supported platforms:
    - **steam**: The platform_tokenâs value is the binary ticket returned by Steam.
    If this ticket was generated by Steam GetAuthTicketForWebApi with version >= 1.57, then platform token should use this style: `{identity}:{ticket}`, the `{identity}` was the parameter to call GetAuthTicketForWebApi when the ticket was created. Note: Do not contain `:` in this `{identity}`.
    - **steamopenid**: Steam's user authentication method using OpenID 2.0. The platform_token's value is URL generated by Steam on web authentication
    - **facebook**: The platform_tokenâs value is the authorization code returned by Facebook OAuth
    - **google**: The platform_tokenâs value is the authorization code or idToken returned by Google OAuth
    - **googleplaygames**: The platform_tokenâs value is the authorization code or idToken returned by Google play games OAuth
    - **oculus**: The platform_tokenâs value is a string composed of Oculus's user ID and the nonce separated by a colon (:).
    - **twitch**: The platform_tokenâs value is the authorization code returned by Twitch OAuth.
    - **discord**: The platform_tokenâs value is the authorization code returned by Discord OAuth
    - **android**: The device_id is the Androidâs device ID
    - **ios**: The device_id is the iOSâs device ID.
    - **apple**: The platform_tokenâs value is the authorization code or idToken returned by Apple OAuth.(We will use this code to generate APP token)
    - **device**: Every device that doesânt run Android and iOS is categorized as a device. The device_id is the deviceâs ID.
    - **justice**: The platform_tokenâs value is the designated userâs access token.
    - **epicgames**: The platform_tokenâs value is an access-token or authorization code obtained from Epicgames EOS Account Service.
    - **ps4**: The platform_tokenâs value is the authorization code returned by Sony OAuth.
    - **ps5**: The platform_tokenâs value is the authorization code returned by Sony OAuth.
    - **nintendo**: The platform_tokenâs value is the id_token returned by Nintendo OAuth.
    - **awscognito**: The platform_tokenâs value is the aws cognito access token or id token (JWT).
    - **live**: The platform_tokenâs value is xbox XSTS token
    - **xblweb**: The platform_tokenâs value is code returned by xbox after login
    - **netflix**: The platform_tokenâs value is GAT (Gamer Access Token) returned by Netflix backend
    - **snapchat**: The platform_tokenâs value is the authorization code returned by Snapchat OAuth.
    - **for specific generic oauth (OIDC)**: The platform_tokenâs value should be the same type as created OIDC auth type whether it is auth code, idToken or bearerToken.

    ## Account Group
    Several platforms are grouped under account groups. The accounts on these platforms have the same platform user id.
    Login using one of these platform will returns the same IAM user.
    Following is the current registered account grouping:
    - Steam group(steamnetwork):
    - steam
    - steamopenid
    - PSN group(psn)
    - ps4web
    - ps4
    - ps5
    - XBOX group(xbox)
    - live
    - xblweb
    - Oculus group(oculusgroup)
    - oculus
    - oculusweb

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
    - **aud**. The aud is the client ID.
    - **iat**. The time the token issues at. It is in Epoch time format
    - **exp**. The time the token expires. It is in Epoch time format
    - **sub**. The UserID. The sub is omitted if the token is generated from client credential

    ## Bans
    The JWT contains user's active bans with its expiry date. List of ban types can be obtained from /bans.

    action code : 10704

    Properties:
        url: /iam/v4/oauth/platforms/{platformId}/token

        method: POST

        tags: ["OAuth2.0 V4"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BASIC_AUTH]

        additional_data: (additionalData) OPTIONAL str in form_data

        client_id: (client_id) OPTIONAL str in form_data

        create_headless: (createHeadless) OPTIONAL bool in form_data

        device_id: (device_id) OPTIONAL str in form_data

        mac_address: (macAddress) OPTIONAL str in form_data

        platform_token: (platform_token) OPTIONAL str in form_data

        service_label: (serviceLabel) OPTIONAL float in form_data

        skip_set_cookie: (skipSetCookie) OPTIONAL bool in form_data

        platform_id: (platformId) REQUIRED str in path

        code_challenge: (code_challenge) OPTIONAL str in query

        code_challenge_method: (code_challenge_method) OPTIONAL Union[str, CodeChallengeMethodEnum] in query

    Responses:
        200: OK - OauthmodelTokenResponseV3 (Token returned)

        202: Accepted - OauthmodelLoginQueueTicketResponse (Login ticket returned)

        400: Bad Request - OauthmodelErrorResponse (General request error)

        401: Unauthorized - OauthmodelErrorResponse (Client authentication failed)

        403: Forbidden - OauthmodelErrorResponse (Forbidden)

        503: Service Unavailable - OauthmodelErrorResponse (Third Party Server timeout or unavailable)
    """

    # region fields

    _url: str = "/iam/v4/oauth/platforms/{platformId}/token"
    _method: str = "POST"
    _consumes: List[str] = ["application/x-www-form-urlencoded"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BASIC_AUTH"]]
    _location_query: str = None

    additional_data: str  # OPTIONAL in [form_data]
    client_id: str  # OPTIONAL in [form_data]
    create_headless: bool  # OPTIONAL in [form_data]
    device_id: str  # OPTIONAL in [form_data]
    mac_address: str  # OPTIONAL in [form_data]
    platform_token: str  # OPTIONAL in [form_data]
    service_label: float  # OPTIONAL in [form_data]
    skip_set_cookie: bool  # OPTIONAL in [form_data]
    platform_id: str  # REQUIRED in [path]
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
            "form_data": self.get_form_data_params(),
            "path": self.get_path_params(),
            "query": self.get_query_params(),
        }

    def get_form_data_params(self) -> dict:
        result = {}
        if hasattr(self, "additional_data"):
            result["additionalData"] = self.additional_data
        if hasattr(self, "client_id"):
            result["client_id"] = self.client_id
        if hasattr(self, "create_headless"):
            result["createHeadless"] = self.create_headless
        if hasattr(self, "device_id"):
            result["device_id"] = self.device_id
        if hasattr(self, "mac_address"):
            result["macAddress"] = self.mac_address
        if hasattr(self, "platform_token"):
            result["platform_token"] = self.platform_token
        if hasattr(self, "service_label"):
            result["serviceLabel"] = self.service_label
        if hasattr(self, "skip_set_cookie"):
            result["skipSetCookie"] = self.skip_set_cookie
        return result

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "platform_id"):
            result["platformId"] = self.platform_id
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

    def with_additional_data(self, value: str) -> PlatformTokenGrantV4:
        self.additional_data = value
        return self

    def with_client_id(self, value: str) -> PlatformTokenGrantV4:
        self.client_id = value
        return self

    def with_create_headless(self, value: bool) -> PlatformTokenGrantV4:
        self.create_headless = value
        return self

    def with_device_id(self, value: str) -> PlatformTokenGrantV4:
        self.device_id = value
        return self

    def with_mac_address(self, value: str) -> PlatformTokenGrantV4:
        self.mac_address = value
        return self

    def with_platform_token(self, value: str) -> PlatformTokenGrantV4:
        self.platform_token = value
        return self

    def with_service_label(self, value: float) -> PlatformTokenGrantV4:
        self.service_label = value
        return self

    def with_skip_set_cookie(self, value: bool) -> PlatformTokenGrantV4:
        self.skip_set_cookie = value
        return self

    def with_platform_id(self, value: str) -> PlatformTokenGrantV4:
        self.platform_id = value
        return self

    def with_code_challenge(self, value: str) -> PlatformTokenGrantV4:
        self.code_challenge = value
        return self

    def with_code_challenge_method(
        self, value: Union[str, CodeChallengeMethodEnum]
    ) -> PlatformTokenGrantV4:
        self.code_challenge_method = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "additional_data") and self.additional_data:
            result["additionalData"] = str(self.additional_data)
        elif include_empty:
            result["additionalData"] = ""
        if hasattr(self, "client_id") and self.client_id:
            result["client_id"] = str(self.client_id)
        elif include_empty:
            result["client_id"] = ""
        if hasattr(self, "create_headless") and self.create_headless:
            result["createHeadless"] = bool(self.create_headless)
        elif include_empty:
            result["createHeadless"] = False
        if hasattr(self, "device_id") and self.device_id:
            result["device_id"] = str(self.device_id)
        elif include_empty:
            result["device_id"] = ""
        if hasattr(self, "mac_address") and self.mac_address:
            result["macAddress"] = str(self.mac_address)
        elif include_empty:
            result["macAddress"] = ""
        if hasattr(self, "platform_token") and self.platform_token:
            result["platform_token"] = str(self.platform_token)
        elif include_empty:
            result["platform_token"] = ""
        if hasattr(self, "service_label") and self.service_label:
            result["serviceLabel"] = float(self.service_label)
        elif include_empty:
            result["serviceLabel"] = 0.0
        if hasattr(self, "skip_set_cookie") and self.skip_set_cookie:
            result["skipSetCookie"] = bool(self.skip_set_cookie)
        elif include_empty:
            result["skipSetCookie"] = False
        if hasattr(self, "platform_id") and self.platform_id:
            result["platformId"] = str(self.platform_id)
        elif include_empty:
            result["platformId"] = ""
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
        Union[None, OauthmodelLoginQueueTicketResponse, OauthmodelTokenResponseV3],
        Union[None, HttpResponse, OauthmodelErrorResponse],
    ]:
        """Parse the given response.

        200: OK - OauthmodelTokenResponseV3 (Token returned)

        202: Accepted - OauthmodelLoginQueueTicketResponse (Login ticket returned)

        400: Bad Request - OauthmodelErrorResponse (General request error)

        401: Unauthorized - OauthmodelErrorResponse (Client authentication failed)

        403: Forbidden - OauthmodelErrorResponse (Forbidden)

        503: Service Unavailable - OauthmodelErrorResponse (Third Party Server timeout or unavailable)

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
            return OauthmodelTokenResponseV3.create_from_dict(content), None
        if code == 202:
            return OauthmodelLoginQueueTicketResponse.create_from_dict(content), None
        if code == 400:
            return None, OauthmodelErrorResponse.create_from_dict(content)
        if code == 401:
            return None, OauthmodelErrorResponse.create_from_dict(content)
        if code == 403:
            return None, OauthmodelErrorResponse.create_from_dict(content)
        if code == 503:
            return None, OauthmodelErrorResponse.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        platform_id: str,
        additional_data: Optional[str] = None,
        client_id: Optional[str] = None,
        create_headless: Optional[bool] = None,
        device_id: Optional[str] = None,
        mac_address: Optional[str] = None,
        platform_token: Optional[str] = None,
        service_label: Optional[float] = None,
        skip_set_cookie: Optional[bool] = None,
        code_challenge: Optional[str] = None,
        code_challenge_method: Optional[Union[str, CodeChallengeMethodEnum]] = None,
        **kwargs,
    ) -> PlatformTokenGrantV4:
        instance = cls()
        instance.platform_id = platform_id
        if additional_data is not None:
            instance.additional_data = additional_data
        if client_id is not None:
            instance.client_id = client_id
        if create_headless is not None:
            instance.create_headless = create_headless
        if device_id is not None:
            instance.device_id = device_id
        if mac_address is not None:
            instance.mac_address = mac_address
        if platform_token is not None:
            instance.platform_token = platform_token
        if service_label is not None:
            instance.service_label = service_label
        if skip_set_cookie is not None:
            instance.skip_set_cookie = skip_set_cookie
        if code_challenge is not None:
            instance.code_challenge = code_challenge
        if code_challenge_method is not None:
            instance.code_challenge_method = code_challenge_method
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PlatformTokenGrantV4:
        instance = cls()
        if "additionalData" in dict_ and dict_["additionalData"] is not None:
            instance.additional_data = str(dict_["additionalData"])
        elif include_empty:
            instance.additional_data = ""
        if "client_id" in dict_ and dict_["client_id"] is not None:
            instance.client_id = str(dict_["client_id"])
        elif include_empty:
            instance.client_id = ""
        if "createHeadless" in dict_ and dict_["createHeadless"] is not None:
            instance.create_headless = bool(dict_["createHeadless"])
        elif include_empty:
            instance.create_headless = False
        if "device_id" in dict_ and dict_["device_id"] is not None:
            instance.device_id = str(dict_["device_id"])
        elif include_empty:
            instance.device_id = ""
        if "macAddress" in dict_ and dict_["macAddress"] is not None:
            instance.mac_address = str(dict_["macAddress"])
        elif include_empty:
            instance.mac_address = ""
        if "platform_token" in dict_ and dict_["platform_token"] is not None:
            instance.platform_token = str(dict_["platform_token"])
        elif include_empty:
            instance.platform_token = ""
        if "serviceLabel" in dict_ and dict_["serviceLabel"] is not None:
            instance.service_label = float(dict_["serviceLabel"])
        elif include_empty:
            instance.service_label = 0.0
        if "skipSetCookie" in dict_ and dict_["skipSetCookie"] is not None:
            instance.skip_set_cookie = bool(dict_["skipSetCookie"])
        elif include_empty:
            instance.skip_set_cookie = False
        if "platformId" in dict_ and dict_["platformId"] is not None:
            instance.platform_id = str(dict_["platformId"])
        elif include_empty:
            instance.platform_id = ""
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
            "additionalData": "additional_data",
            "client_id": "client_id",
            "createHeadless": "create_headless",
            "device_id": "device_id",
            "macAddress": "mac_address",
            "platform_token": "platform_token",
            "serviceLabel": "service_label",
            "skipSetCookie": "skip_set_cookie",
            "platformId": "platform_id",
            "code_challenge": "code_challenge",
            "code_challenge_method": "code_challenge_method",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "additionalData": False,
            "client_id": False,
            "createHeadless": False,
            "device_id": False,
            "macAddress": False,
            "platform_token": False,
            "serviceLabel": False,
            "skipSetCookie": False,
            "platformId": True,
            "code_challenge": False,
            "code_challenge_method": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "code_challenge_method": ["S256", "plain"],  # in query
        }

    # endregion static methods
