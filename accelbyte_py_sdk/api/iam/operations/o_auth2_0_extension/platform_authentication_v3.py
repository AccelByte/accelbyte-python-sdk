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


class PlatformAuthenticationV3(Operation):
    """Platform Authentication API (PlatformAuthenticationV3)

    This endpoint authenticates user platform. It validates user to its
    respective platforms. Deactivated or login-banned users are unable to login.



    If already linked with justice account or match SSO condition, will redirect to client's redirect url with code. then invoke '/iam/v3/oauth/token' with grant_type=authorization_code




    If already not linked with justice account and not match SSO condition, will redirect to client's account linking page




    ## Supported platforms:



      * steamopenid
    Steam login page will redirects to this endpoint after login success
    as previously defined on openID request parameter `openid.return_to` when request login to steam
    https://openid.net/specs/openid-authentication-2_0.html#anchor27

      * ps4web
    PS4 login page will redirects to this endpoint after login success
    as previously defined on authorize request parameter `redirect_uri`
    https://ps4.siedev.net/resources/documents/WebAPI/1/Auth_WebAPI-Reference/0002.html#0GetAccessTokenUsingAuthorizationCode

      * xblweb
    XBL login page will redirects to this endpoint after login success
    as previously defined on authorize request parameter `redirect_uri`

      * epicgames
    Epicgames login page will redirects to this endpoint after login success
    or an error occurred. If error, it redirects to the login page.

      * twitch
    Twitch login page will redirects to this endpoint after login success
    as previously defined on authorize request parameter `redirect_uri`

      * facebook
    Facebook login page will redirects to this endpoint after login success
    as previously defined on authorize request parameter `redirect_uri`

      * google
    Google login page will redirects to this endpoint after login success
    as previously defined on authorize request parameter `redirect_uri`

      * snapchat
    Snapchat login page will redirects to this endpoint after login success
    as previously defined on authorize request parameter `redirect_uri`

      * discord
    Discord login page will redirects to this endpoint after login success
    as previously defined on authorize request parameter `redirect_uri`

    action code : 10709

    Properties:
        url: /iam/v3/platforms/{platformId}/authenticate

        method: GET

        tags: ["OAuth2.0 - Extension"]

        consumes: ["*/*"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        location query: PLACEHOLDER

        platform_id: (platformId) REQUIRED str in path

        code: (code) OPTIONAL str in query

        error: (error) OPTIONAL str in query

        openid_assoc_handle: (openid.assoc_handle) OPTIONAL str in query

        openid_claimed_id: (openid.claimed_id) OPTIONAL str in query

        openid_identity: (openid.identity) OPTIONAL str in query

        openid_mode: (openid.mode) OPTIONAL str in query

        openid_ns: (openid.ns) OPTIONAL str in query

        openid_op_endpoint: (openid.op_endpoint) OPTIONAL str in query

        openid_response_nonce: (openid.response_nonce) OPTIONAL str in query

        openid_return_to: (openid.return_to) OPTIONAL str in query

        openid_sig: (openid.sig) OPTIONAL str in query

        openid_signed: (openid.signed) OPTIONAL str in query

        state: (state) REQUIRED str in query

    Responses:
        302: Found - (Found. Redirect to clients redirection URL with either code or error on the query parameter)
    """

    # region fields

    _url: str = "/iam/v3/platforms/{platformId}/authenticate"
    _method: str = "GET"
    _consumes: List[str] = ["*/*"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = "PLACEHOLDER"

    platform_id: str  # REQUIRED in [path]
    code: str  # OPTIONAL in [query]
    error: str  # OPTIONAL in [query]
    openid_assoc_handle: str  # OPTIONAL in [query]
    openid_claimed_id: str  # OPTIONAL in [query]
    openid_identity: str  # OPTIONAL in [query]
    openid_mode: str  # OPTIONAL in [query]
    openid_ns: str  # OPTIONAL in [query]
    openid_op_endpoint: str  # OPTIONAL in [query]
    openid_response_nonce: str  # OPTIONAL in [query]
    openid_return_to: str  # OPTIONAL in [query]
    openid_sig: str  # OPTIONAL in [query]
    openid_signed: str  # OPTIONAL in [query]
    state: str  # REQUIRED in [query]

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
            "path": self.get_path_params(),
            "query": self.get_query_params(),
        }

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "platform_id"):
            result["platformId"] = self.platform_id
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "code"):
            result["code"] = self.code
        if hasattr(self, "error"):
            result["error"] = self.error
        if hasattr(self, "openid_assoc_handle"):
            result["openid.assoc_handle"] = self.openid_assoc_handle
        if hasattr(self, "openid_claimed_id"):
            result["openid.claimed_id"] = self.openid_claimed_id
        if hasattr(self, "openid_identity"):
            result["openid.identity"] = self.openid_identity
        if hasattr(self, "openid_mode"):
            result["openid.mode"] = self.openid_mode
        if hasattr(self, "openid_ns"):
            result["openid.ns"] = self.openid_ns
        if hasattr(self, "openid_op_endpoint"):
            result["openid.op_endpoint"] = self.openid_op_endpoint
        if hasattr(self, "openid_response_nonce"):
            result["openid.response_nonce"] = self.openid_response_nonce
        if hasattr(self, "openid_return_to"):
            result["openid.return_to"] = self.openid_return_to
        if hasattr(self, "openid_sig"):
            result["openid.sig"] = self.openid_sig
        if hasattr(self, "openid_signed"):
            result["openid.signed"] = self.openid_signed
        if hasattr(self, "state"):
            result["state"] = self.state
        return result

    # endregion get_x_params methods

    # region is/has methods

    # noinspection PyMethodMayBeStatic
    def has_redirects(self) -> bool:
        """Returns True if this operation has redirects, otherwise False.

        302: Found - (Found. Redirect to clients redirection URL with either code or error on the query parameter)
        """
        return True

    # endregion is/has methods

    # region with_x methods

    def with_platform_id(self, value: str) -> PlatformAuthenticationV3:
        self.platform_id = value
        return self

    def with_code(self, value: str) -> PlatformAuthenticationV3:
        self.code = value
        return self

    def with_error(self, value: str) -> PlatformAuthenticationV3:
        self.error = value
        return self

    def with_openid_assoc_handle(self, value: str) -> PlatformAuthenticationV3:
        self.openid_assoc_handle = value
        return self

    def with_openid_claimed_id(self, value: str) -> PlatformAuthenticationV3:
        self.openid_claimed_id = value
        return self

    def with_openid_identity(self, value: str) -> PlatformAuthenticationV3:
        self.openid_identity = value
        return self

    def with_openid_mode(self, value: str) -> PlatformAuthenticationV3:
        self.openid_mode = value
        return self

    def with_openid_ns(self, value: str) -> PlatformAuthenticationV3:
        self.openid_ns = value
        return self

    def with_openid_op_endpoint(self, value: str) -> PlatformAuthenticationV3:
        self.openid_op_endpoint = value
        return self

    def with_openid_response_nonce(self, value: str) -> PlatformAuthenticationV3:
        self.openid_response_nonce = value
        return self

    def with_openid_return_to(self, value: str) -> PlatformAuthenticationV3:
        self.openid_return_to = value
        return self

    def with_openid_sig(self, value: str) -> PlatformAuthenticationV3:
        self.openid_sig = value
        return self

    def with_openid_signed(self, value: str) -> PlatformAuthenticationV3:
        self.openid_signed = value
        return self

    def with_state(self, value: str) -> PlatformAuthenticationV3:
        self.state = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "platform_id") and self.platform_id:
            result["platformId"] = str(self.platform_id)
        elif include_empty:
            result["platformId"] = ""
        if hasattr(self, "code") and self.code:
            result["code"] = str(self.code)
        elif include_empty:
            result["code"] = ""
        if hasattr(self, "error") and self.error:
            result["error"] = str(self.error)
        elif include_empty:
            result["error"] = ""
        if hasattr(self, "openid_assoc_handle") and self.openid_assoc_handle:
            result["openid.assoc_handle"] = str(self.openid_assoc_handle)
        elif include_empty:
            result["openid.assoc_handle"] = ""
        if hasattr(self, "openid_claimed_id") and self.openid_claimed_id:
            result["openid.claimed_id"] = str(self.openid_claimed_id)
        elif include_empty:
            result["openid.claimed_id"] = ""
        if hasattr(self, "openid_identity") and self.openid_identity:
            result["openid.identity"] = str(self.openid_identity)
        elif include_empty:
            result["openid.identity"] = ""
        if hasattr(self, "openid_mode") and self.openid_mode:
            result["openid.mode"] = str(self.openid_mode)
        elif include_empty:
            result["openid.mode"] = ""
        if hasattr(self, "openid_ns") and self.openid_ns:
            result["openid.ns"] = str(self.openid_ns)
        elif include_empty:
            result["openid.ns"] = ""
        if hasattr(self, "openid_op_endpoint") and self.openid_op_endpoint:
            result["openid.op_endpoint"] = str(self.openid_op_endpoint)
        elif include_empty:
            result["openid.op_endpoint"] = ""
        if hasattr(self, "openid_response_nonce") and self.openid_response_nonce:
            result["openid.response_nonce"] = str(self.openid_response_nonce)
        elif include_empty:
            result["openid.response_nonce"] = ""
        if hasattr(self, "openid_return_to") and self.openid_return_to:
            result["openid.return_to"] = str(self.openid_return_to)
        elif include_empty:
            result["openid.return_to"] = ""
        if hasattr(self, "openid_sig") and self.openid_sig:
            result["openid.sig"] = str(self.openid_sig)
        elif include_empty:
            result["openid.sig"] = ""
        if hasattr(self, "openid_signed") and self.openid_signed:
            result["openid.signed"] = str(self.openid_signed)
        elif include_empty:
            result["openid.signed"] = ""
        if hasattr(self, "state") and self.state:
            result["state"] = str(self.state)
        elif include_empty:
            result["state"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[Union[None, HttpResponse], Union[None, HttpResponse]]:
        """Parse the given response.

        302: Found - (Found. Redirect to clients redirection URL with either code or error on the query parameter)

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
        platform_id: str,
        state: str,
        code: Optional[str] = None,
        error: Optional[str] = None,
        openid_assoc_handle: Optional[str] = None,
        openid_claimed_id: Optional[str] = None,
        openid_identity: Optional[str] = None,
        openid_mode: Optional[str] = None,
        openid_ns: Optional[str] = None,
        openid_op_endpoint: Optional[str] = None,
        openid_response_nonce: Optional[str] = None,
        openid_return_to: Optional[str] = None,
        openid_sig: Optional[str] = None,
        openid_signed: Optional[str] = None,
    ) -> PlatformAuthenticationV3:
        instance = cls()
        instance.platform_id = platform_id
        instance.state = state
        if code is not None:
            instance.code = code
        if error is not None:
            instance.error = error
        if openid_assoc_handle is not None:
            instance.openid_assoc_handle = openid_assoc_handle
        if openid_claimed_id is not None:
            instance.openid_claimed_id = openid_claimed_id
        if openid_identity is not None:
            instance.openid_identity = openid_identity
        if openid_mode is not None:
            instance.openid_mode = openid_mode
        if openid_ns is not None:
            instance.openid_ns = openid_ns
        if openid_op_endpoint is not None:
            instance.openid_op_endpoint = openid_op_endpoint
        if openid_response_nonce is not None:
            instance.openid_response_nonce = openid_response_nonce
        if openid_return_to is not None:
            instance.openid_return_to = openid_return_to
        if openid_sig is not None:
            instance.openid_sig = openid_sig
        if openid_signed is not None:
            instance.openid_signed = openid_signed
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PlatformAuthenticationV3:
        instance = cls()
        if "platformId" in dict_ and dict_["platformId"] is not None:
            instance.platform_id = str(dict_["platformId"])
        elif include_empty:
            instance.platform_id = ""
        if "code" in dict_ and dict_["code"] is not None:
            instance.code = str(dict_["code"])
        elif include_empty:
            instance.code = ""
        if "error" in dict_ and dict_["error"] is not None:
            instance.error = str(dict_["error"])
        elif include_empty:
            instance.error = ""
        if "openid.assoc_handle" in dict_ and dict_["openid.assoc_handle"] is not None:
            instance.openid_assoc_handle = str(dict_["openid.assoc_handle"])
        elif include_empty:
            instance.openid_assoc_handle = ""
        if "openid.claimed_id" in dict_ and dict_["openid.claimed_id"] is not None:
            instance.openid_claimed_id = str(dict_["openid.claimed_id"])
        elif include_empty:
            instance.openid_claimed_id = ""
        if "openid.identity" in dict_ and dict_["openid.identity"] is not None:
            instance.openid_identity = str(dict_["openid.identity"])
        elif include_empty:
            instance.openid_identity = ""
        if "openid.mode" in dict_ and dict_["openid.mode"] is not None:
            instance.openid_mode = str(dict_["openid.mode"])
        elif include_empty:
            instance.openid_mode = ""
        if "openid.ns" in dict_ and dict_["openid.ns"] is not None:
            instance.openid_ns = str(dict_["openid.ns"])
        elif include_empty:
            instance.openid_ns = ""
        if "openid.op_endpoint" in dict_ and dict_["openid.op_endpoint"] is not None:
            instance.openid_op_endpoint = str(dict_["openid.op_endpoint"])
        elif include_empty:
            instance.openid_op_endpoint = ""
        if (
            "openid.response_nonce" in dict_
            and dict_["openid.response_nonce"] is not None
        ):
            instance.openid_response_nonce = str(dict_["openid.response_nonce"])
        elif include_empty:
            instance.openid_response_nonce = ""
        if "openid.return_to" in dict_ and dict_["openid.return_to"] is not None:
            instance.openid_return_to = str(dict_["openid.return_to"])
        elif include_empty:
            instance.openid_return_to = ""
        if "openid.sig" in dict_ and dict_["openid.sig"] is not None:
            instance.openid_sig = str(dict_["openid.sig"])
        elif include_empty:
            instance.openid_sig = ""
        if "openid.signed" in dict_ and dict_["openid.signed"] is not None:
            instance.openid_signed = str(dict_["openid.signed"])
        elif include_empty:
            instance.openid_signed = ""
        if "state" in dict_ and dict_["state"] is not None:
            instance.state = str(dict_["state"])
        elif include_empty:
            instance.state = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "platformId": "platform_id",
            "code": "code",
            "error": "error",
            "openid.assoc_handle": "openid_assoc_handle",
            "openid.claimed_id": "openid_claimed_id",
            "openid.identity": "openid_identity",
            "openid.mode": "openid_mode",
            "openid.ns": "openid_ns",
            "openid.op_endpoint": "openid_op_endpoint",
            "openid.response_nonce": "openid_response_nonce",
            "openid.return_to": "openid_return_to",
            "openid.sig": "openid_sig",
            "openid.signed": "openid_signed",
            "state": "state",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "platformId": True,
            "code": False,
            "error": False,
            "openid.assoc_handle": False,
            "openid.claimed_id": False,
            "openid.identity": False,
            "openid.mode": False,
            "openid.ns": False,
            "openid.op_endpoint": False,
            "openid.response_nonce": False,
            "openid.return_to": False,
            "openid.sig": False,
            "openid.signed": False,
            "state": True,
        }

    # endregion static methods
