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

from ...models import OauthmodelErrorResponse
from ...models import OauthmodelPlatformTokenRefreshResponseV3


class PlatformTokenRefreshV3(Operation):
    """Platform Token Validation (PlatformTokenRefreshV3)

    This endpoint will validate the third party platform token, for some platforms will also refresh the token stored in IAM, it will not generate any event or AB access/refresh token.
    This endpoint can be used by game client to refresh third party token if game client got platform token not found error, for example got 404
    platform token not found from IAP/DLC.

    ## Platforms will refresh stored token:
    - **twitch**: The platform_tokenâs value is the authorization code returned by Twitch OAuth.
    - **epicgames**: The platform_tokenâs value is an access-token or authorization code obtained from Epicgames EOS Account Service.
    - **ps4**: The platform_tokenâs value is the authorization code returned by Sony OAuth.
    - **ps5**: The platform_tokenâs value is the authorization code returned by Sony OAuth.
    - **amazon**: The platform_tokenâs value is authorization code.
    - **awscognito**: The platform_tokenâs value is the aws cognito access token or id token (JWT).
    - **live**: The platform_tokenâs value is xbox XSTS token
    - **snapchat**: The platform_tokenâs value is the authorization code returned by Snapchat OAuth.
    - **for specific generic oauth (OIDC)**: The platform_tokenâs value should be the same type as created OIDC auth type whether it is auth code, idToken or bearerToken.

    Properties:
        url: /iam/v3/platforms/{platformId}/token/verify

        method: POST

        tags: ["OAuth2.0 - Extension"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        platform_token: (platform_token) REQUIRED str in form_data

        platform_id: (platformId) REQUIRED str in path

    Responses:
        200: OK - OauthmodelPlatformTokenRefreshResponseV3 (Token returned)

        400: Bad Request - OauthmodelErrorResponse (General request error)

        401: Unauthorized - OauthmodelErrorResponse (Client authentication failed)

        403: Forbidden - OauthmodelErrorResponse (Forbidden)

        503: Service Unavailable - OauthmodelErrorResponse (Third Party Server timeout or unavailable)
    """

    # region fields

    _url: str = "/iam/v3/platforms/{platformId}/token/verify"
    _method: str = "POST"
    _consumes: List[str] = ["application/x-www-form-urlencoded"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    platform_token: str  # REQUIRED in [form_data]
    platform_id: str  # REQUIRED in [path]

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
        }

    def get_form_data_params(self) -> dict:
        result = {}
        if hasattr(self, "platform_token"):
            result["platform_token"] = self.platform_token
        return result

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "platform_id"):
            result["platformId"] = self.platform_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_platform_token(self, value: str) -> PlatformTokenRefreshV3:
        self.platform_token = value
        return self

    def with_platform_id(self, value: str) -> PlatformTokenRefreshV3:
        self.platform_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "platform_token") and self.platform_token:
            result["platform_token"] = str(self.platform_token)
        elif include_empty:
            result["platform_token"] = ""
        if hasattr(self, "platform_id") and self.platform_id:
            result["platformId"] = str(self.platform_id)
        elif include_empty:
            result["platformId"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, OauthmodelPlatformTokenRefreshResponseV3],
        Union[None, HttpResponse, OauthmodelErrorResponse],
    ]:
        """Parse the given response.

        200: OK - OauthmodelPlatformTokenRefreshResponseV3 (Token returned)

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
            return (
                OauthmodelPlatformTokenRefreshResponseV3.create_from_dict(content),
                None,
            )
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
        cls, platform_token: str, platform_id: str, **kwargs
    ) -> PlatformTokenRefreshV3:
        instance = cls()
        instance.platform_token = platform_token
        instance.platform_id = platform_id
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PlatformTokenRefreshV3:
        instance = cls()
        if "platform_token" in dict_ and dict_["platform_token"] is not None:
            instance.platform_token = str(dict_["platform_token"])
        elif include_empty:
            instance.platform_token = ""
        if "platformId" in dict_ and dict_["platformId"] is not None:
            instance.platform_id = str(dict_["platformId"])
        elif include_empty:
            instance.platform_id = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "platform_token": "platform_token",
            "platformId": "platform_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "platform_token": True,
            "platformId": True,
        }

    # endregion static methods
