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


class CodeChallengeMethodEnum(StrEnum):
    S256 = "S256"
    PLAIN = "plain"


class ResponseTypeEnum(StrEnum):
    CODE = "code"


class AuthorizeV3(Operation):
    """OAuth2 authorize API (AuthorizeV3)

    Initializes OAuth2.0 authorization code flow



    The endpoint stores authorization request and redirects to login page with the authorization request id.
    The user can then do the authentication on the login page.
    The user will be redirected back to the requesting client with authorization code if successfully authenticated.





    Only authorization code flow supported by this endpoint, implicit flow is not supported.






      * Authorize success :
    redirects to login page with the following information: ?request_id={authorization_request_id}





      * Authorize failure :
    redirects to the given redirect uri with the following information:
    ?error={error_code}&error;_description={error description}








    Following are the error code based on the specification:






      * invalid_request: The request is missing a required parameter,
    includes an invalid parameter value, includes a parameter more than once, or is otherwise malformed.





      * server_error:
    The authorization server encountered an unexpected condition that prevented it from fulfilling the request.





      * unauthorized_client: The client is not authorized to request a token using this method.



      * access_denied: The resource owner or authorization server denied the request.



      * invalid_scope: The requested scope is invalid, unknown, or malformed.



      * unsupported_response_type: The authorization server does not support obtaining a token using this method.



      * temporarily_unavailable: The authorization server is currently unable to handle the request
    due to a temporary overloading or maintenance of the server.








    Please refer to the RFC for more information about authorization code flow: https://tools.ietf.org/html/rfc6749#section-4.1



    action code: 10701

    Properties:
        url: /iam/v3/oauth/authorize

        method: GET

        tags: ["OAuth2.0"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BASIC_AUTH]

        location query: request_id

        code_challenge: (code_challenge) OPTIONAL str in query

        code_challenge_method: (code_challenge_method) OPTIONAL Union[str, CodeChallengeMethodEnum] in query

        create_headless: (createHeadless) OPTIONAL bool in query

        one_time_link_code: (oneTimeLinkCode) OPTIONAL str in query

        redirect_uri: (redirect_uri) OPTIONAL str in query

        scope: (scope) OPTIONAL str in query

        state: (state) OPTIONAL str in query

        target_auth_page: (target_auth_page) OPTIONAL str in query

        use_redirect_uri_as_login_url_when_locked: (useRedirectUriAsLoginUrlWhenLocked) OPTIONAL bool in query

        client_id: (client_id) REQUIRED str in query

        response_type: (response_type) REQUIRED Union[str, ResponseTypeEnum] in query

    Responses:
        302: Found - (Found. Redirected to login page with either request_id or error.)
    """

    # region fields

    _url: str = "/iam/v3/oauth/authorize"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BASIC_AUTH"]]
    _location_query: str = "request_id"

    code_challenge: str  # OPTIONAL in [query]
    code_challenge_method: Union[str, CodeChallengeMethodEnum]  # OPTIONAL in [query]
    create_headless: bool  # OPTIONAL in [query]
    one_time_link_code: str  # OPTIONAL in [query]
    redirect_uri: str  # OPTIONAL in [query]
    scope: str  # OPTIONAL in [query]
    state: str  # OPTIONAL in [query]
    target_auth_page: str  # OPTIONAL in [query]
    use_redirect_uri_as_login_url_when_locked: bool  # OPTIONAL in [query]
    client_id: str  # REQUIRED in [query]
    response_type: Union[str, ResponseTypeEnum]  # REQUIRED in [query]

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
            "query": self.get_query_params(),
        }

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "code_challenge"):
            result["code_challenge"] = self.code_challenge
        if hasattr(self, "code_challenge_method"):
            result["code_challenge_method"] = self.code_challenge_method
        if hasattr(self, "create_headless"):
            result["createHeadless"] = self.create_headless
        if hasattr(self, "one_time_link_code"):
            result["oneTimeLinkCode"] = self.one_time_link_code
        if hasattr(self, "redirect_uri"):
            result["redirect_uri"] = self.redirect_uri
        if hasattr(self, "scope"):
            result["scope"] = self.scope
        if hasattr(self, "state"):
            result["state"] = self.state
        if hasattr(self, "target_auth_page"):
            result["target_auth_page"] = self.target_auth_page
        if hasattr(self, "use_redirect_uri_as_login_url_when_locked"):
            result[
                "useRedirectUriAsLoginUrlWhenLocked"
            ] = self.use_redirect_uri_as_login_url_when_locked
        if hasattr(self, "client_id"):
            result["client_id"] = self.client_id
        if hasattr(self, "response_type"):
            result["response_type"] = self.response_type
        return result

    # endregion get_x_params methods

    # region is/has methods

    # noinspection PyMethodMayBeStatic
    def has_redirects(self) -> bool:
        """Returns True if this operation has redirects, otherwise False.

        302: Found - (Found. Redirected to login page with either request_id or error.)
        """
        return True

    # endregion is/has methods

    # region with_x methods

    def with_code_challenge(self, value: str) -> AuthorizeV3:
        self.code_challenge = value
        return self

    def with_code_challenge_method(
        self, value: Union[str, CodeChallengeMethodEnum]
    ) -> AuthorizeV3:
        self.code_challenge_method = value
        return self

    def with_create_headless(self, value: bool) -> AuthorizeV3:
        self.create_headless = value
        return self

    def with_one_time_link_code(self, value: str) -> AuthorizeV3:
        self.one_time_link_code = value
        return self

    def with_redirect_uri(self, value: str) -> AuthorizeV3:
        self.redirect_uri = value
        return self

    def with_scope(self, value: str) -> AuthorizeV3:
        self.scope = value
        return self

    def with_state(self, value: str) -> AuthorizeV3:
        self.state = value
        return self

    def with_target_auth_page(self, value: str) -> AuthorizeV3:
        self.target_auth_page = value
        return self

    def with_use_redirect_uri_as_login_url_when_locked(
        self, value: bool
    ) -> AuthorizeV3:
        self.use_redirect_uri_as_login_url_when_locked = value
        return self

    def with_client_id(self, value: str) -> AuthorizeV3:
        self.client_id = value
        return self

    def with_response_type(self, value: Union[str, ResponseTypeEnum]) -> AuthorizeV3:
        self.response_type = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "code_challenge") and self.code_challenge:
            result["code_challenge"] = str(self.code_challenge)
        elif include_empty:
            result["code_challenge"] = ""
        if hasattr(self, "code_challenge_method") and self.code_challenge_method:
            result["code_challenge_method"] = str(self.code_challenge_method)
        elif include_empty:
            result["code_challenge_method"] = Union[str, CodeChallengeMethodEnum]()
        if hasattr(self, "create_headless") and self.create_headless:
            result["createHeadless"] = bool(self.create_headless)
        elif include_empty:
            result["createHeadless"] = False
        if hasattr(self, "one_time_link_code") and self.one_time_link_code:
            result["oneTimeLinkCode"] = str(self.one_time_link_code)
        elif include_empty:
            result["oneTimeLinkCode"] = ""
        if hasattr(self, "redirect_uri") and self.redirect_uri:
            result["redirect_uri"] = str(self.redirect_uri)
        elif include_empty:
            result["redirect_uri"] = ""
        if hasattr(self, "scope") and self.scope:
            result["scope"] = str(self.scope)
        elif include_empty:
            result["scope"] = ""
        if hasattr(self, "state") and self.state:
            result["state"] = str(self.state)
        elif include_empty:
            result["state"] = ""
        if hasattr(self, "target_auth_page") and self.target_auth_page:
            result["target_auth_page"] = str(self.target_auth_page)
        elif include_empty:
            result["target_auth_page"] = ""
        if (
            hasattr(self, "use_redirect_uri_as_login_url_when_locked")
            and self.use_redirect_uri_as_login_url_when_locked
        ):
            result["useRedirectUriAsLoginUrlWhenLocked"] = bool(
                self.use_redirect_uri_as_login_url_when_locked
            )
        elif include_empty:
            result["useRedirectUriAsLoginUrlWhenLocked"] = False
        if hasattr(self, "client_id") and self.client_id:
            result["client_id"] = str(self.client_id)
        elif include_empty:
            result["client_id"] = ""
        if hasattr(self, "response_type") and self.response_type:
            result["response_type"] = str(self.response_type)
        elif include_empty:
            result["response_type"] = Union[str, ResponseTypeEnum]()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[Union[None, HttpResponse], Union[None, HttpResponse]]:
        """Parse the given response.

        302: Found - (Found. Redirected to login page with either request_id or error.)

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
        response_type: Union[str, ResponseTypeEnum],
        code_challenge: Optional[str] = None,
        code_challenge_method: Optional[Union[str, CodeChallengeMethodEnum]] = None,
        create_headless: Optional[bool] = None,
        one_time_link_code: Optional[str] = None,
        redirect_uri: Optional[str] = None,
        scope: Optional[str] = None,
        state: Optional[str] = None,
        target_auth_page: Optional[str] = None,
        use_redirect_uri_as_login_url_when_locked: Optional[bool] = None,
    ) -> AuthorizeV3:
        instance = cls()
        instance.client_id = client_id
        instance.response_type = response_type
        if code_challenge is not None:
            instance.code_challenge = code_challenge
        if code_challenge_method is not None:
            instance.code_challenge_method = code_challenge_method
        if create_headless is not None:
            instance.create_headless = create_headless
        if one_time_link_code is not None:
            instance.one_time_link_code = one_time_link_code
        if redirect_uri is not None:
            instance.redirect_uri = redirect_uri
        if scope is not None:
            instance.scope = scope
        if state is not None:
            instance.state = state
        if target_auth_page is not None:
            instance.target_auth_page = target_auth_page
        if use_redirect_uri_as_login_url_when_locked is not None:
            instance.use_redirect_uri_as_login_url_when_locked = (
                use_redirect_uri_as_login_url_when_locked
            )
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> AuthorizeV3:
        instance = cls()
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
        if "createHeadless" in dict_ and dict_["createHeadless"] is not None:
            instance.create_headless = bool(dict_["createHeadless"])
        elif include_empty:
            instance.create_headless = False
        if "oneTimeLinkCode" in dict_ and dict_["oneTimeLinkCode"] is not None:
            instance.one_time_link_code = str(dict_["oneTimeLinkCode"])
        elif include_empty:
            instance.one_time_link_code = ""
        if "redirect_uri" in dict_ and dict_["redirect_uri"] is not None:
            instance.redirect_uri = str(dict_["redirect_uri"])
        elif include_empty:
            instance.redirect_uri = ""
        if "scope" in dict_ and dict_["scope"] is not None:
            instance.scope = str(dict_["scope"])
        elif include_empty:
            instance.scope = ""
        if "state" in dict_ and dict_["state"] is not None:
            instance.state = str(dict_["state"])
        elif include_empty:
            instance.state = ""
        if "target_auth_page" in dict_ and dict_["target_auth_page"] is not None:
            instance.target_auth_page = str(dict_["target_auth_page"])
        elif include_empty:
            instance.target_auth_page = ""
        if (
            "useRedirectUriAsLoginUrlWhenLocked" in dict_
            and dict_["useRedirectUriAsLoginUrlWhenLocked"] is not None
        ):
            instance.use_redirect_uri_as_login_url_when_locked = bool(
                dict_["useRedirectUriAsLoginUrlWhenLocked"]
            )
        elif include_empty:
            instance.use_redirect_uri_as_login_url_when_locked = False
        if "client_id" in dict_ and dict_["client_id"] is not None:
            instance.client_id = str(dict_["client_id"])
        elif include_empty:
            instance.client_id = ""
        if "response_type" in dict_ and dict_["response_type"] is not None:
            instance.response_type = str(dict_["response_type"])
        elif include_empty:
            instance.response_type = Union[str, ResponseTypeEnum]()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "code_challenge": "code_challenge",
            "code_challenge_method": "code_challenge_method",
            "createHeadless": "create_headless",
            "oneTimeLinkCode": "one_time_link_code",
            "redirect_uri": "redirect_uri",
            "scope": "scope",
            "state": "state",
            "target_auth_page": "target_auth_page",
            "useRedirectUriAsLoginUrlWhenLocked": "use_redirect_uri_as_login_url_when_locked",
            "client_id": "client_id",
            "response_type": "response_type",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "code_challenge": False,
            "code_challenge_method": False,
            "createHeadless": False,
            "oneTimeLinkCode": False,
            "redirect_uri": False,
            "scope": False,
            "state": False,
            "target_auth_page": False,
            "useRedirectUriAsLoginUrlWhenLocked": False,
            "client_id": True,
            "response_type": True,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "code_challenge_method": ["S256", "plain"],  # in query
            "response_type": ["code"],  # in query
        }

    # endregion static methods
