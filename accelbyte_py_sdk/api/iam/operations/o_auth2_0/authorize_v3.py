# Auto-generated at 2021-09-21T14:10:35.387291+08:00
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


class AuthorizeV3(Operation):
    """OAuth2 authorize API (AuthorizeV3)

    Properties:
        url: /iam/v3/oauth/authorize

        method: GET

        tags: OAuth2.0

        consumes: ["application/json"]

        produces: ["application/json"]

        security: None

        location query: request_id

        response_type: (response_type) REQUIRED str in query

        client_id: (client_id) REQUIRED str in query

        redirect_uri: (redirect_uri) OPTIONAL str in query

        state: (state) OPTIONAL str in query

        scope: (scope) OPTIONAL str in query

        code_challenge: (code_challenge) OPTIONAL str in query

        code_challenge_method: (code_challenge_method) OPTIONAL str in query

        target_auth_page: (target_auth_page) OPTIONAL str in query

    Responses:
        302: Found - (Found. Redirected to login page with either request_id or error.)
    """

    # region fields

    _url: str = "/iam/v3/oauth/authorize"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = None
    _location_query: str = "request_id"

    response_type: str                                                                             # REQUIRED in [query]
    client_id: str                                                                                 # REQUIRED in [query]
    redirect_uri: str                                                                              # OPTIONAL in [query]
    state: str                                                                                     # OPTIONAL in [query]
    scope: str                                                                                     # OPTIONAL in [query]
    code_challenge: str                                                                            # OPTIONAL in [query]
    code_challenge_method: str                                                                     # OPTIONAL in [query]
    target_auth_page: str                                                                          # OPTIONAL in [query]

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

        # query params
        result += "?" + "&".join([f"{k}={v}" for k, v in self.get_query_params().items()])

        return result

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "response_type",
            "client_id",
        ]

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "query": self.get_query_params(),
        }

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "response_type"):
            result["response_type"] = self.response_type
        if hasattr(self, "client_id"):
            result["client_id"] = self.client_id
        if hasattr(self, "redirect_uri"):
            result["redirect_uri"] = self.redirect_uri
        if hasattr(self, "state"):
            result["state"] = self.state
        if hasattr(self, "scope"):
            result["scope"] = self.scope
        if hasattr(self, "code_challenge"):
            result["code_challenge"] = self.code_challenge
        if hasattr(self, "code_challenge_method"):
            result["code_challenge_method"] = self.code_challenge_method
        if hasattr(self, "target_auth_page"):
            result["target_auth_page"] = self.target_auth_page
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "response_type") or self.response_type is None:
            return False
        if not hasattr(self, "client_id") or self.client_id is None:
            return False
        return True

    # noinspection PyMethodMayBeStatic
    def has_redirects(self) -> bool:
        """Returns True if this operation has redirects, otherwise False.

        302: Found - (Found. Redirected to login page with either request_id or error.)
        """
        return True

    # endregion is/has methods

    # region with_x methods

    def with_response_type(self, value: str) -> AuthorizeV3:
        self.response_type = value
        return self

    def with_client_id(self, value: str) -> AuthorizeV3:
        self.client_id = value
        return self

    def with_redirect_uri(self, value: str) -> AuthorizeV3:
        self.redirect_uri = value
        return self

    def with_state(self, value: str) -> AuthorizeV3:
        self.state = value
        return self

    def with_scope(self, value: str) -> AuthorizeV3:
        self.scope = value
        return self

    def with_code_challenge(self, value: str) -> AuthorizeV3:
        self.code_challenge = value
        return self

    def with_code_challenge_method(self, value: str) -> AuthorizeV3:
        self.code_challenge_method = value
        return self

    def with_target_auth_page(self, value: str) -> AuthorizeV3:
        self.target_auth_page = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "response_type") and self.response_type:
            result["response_type"] = str(self.response_type)
        elif include_empty:
            result["response_type"] = str()
        if hasattr(self, "client_id") and self.client_id:
            result["client_id"] = str(self.client_id)
        elif include_empty:
            result["client_id"] = str()
        if hasattr(self, "redirect_uri") and self.redirect_uri:
            result["redirect_uri"] = str(self.redirect_uri)
        elif include_empty:
            result["redirect_uri"] = str()
        if hasattr(self, "state") and self.state:
            result["state"] = str(self.state)
        elif include_empty:
            result["state"] = str()
        if hasattr(self, "scope") and self.scope:
            result["scope"] = str(self.scope)
        elif include_empty:
            result["scope"] = str()
        if hasattr(self, "code_challenge") and self.code_challenge:
            result["code_challenge"] = str(self.code_challenge)
        elif include_empty:
            result["code_challenge"] = str()
        if hasattr(self, "code_challenge_method") and self.code_challenge_method:
            result["code_challenge_method"] = str(self.code_challenge_method)
        elif include_empty:
            result["code_challenge_method"] = str()
        if hasattr(self, "target_auth_page") and self.target_auth_page:
            result["target_auth_page"] = str(self.target_auth_page)
        elif include_empty:
            result["target_auth_page"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, HttpResponse], Union[None, HttpResponse]]:
        """Parse the given response.

        302: Found - (Found. Redirected to login page with either request_id or error.)
        """
        if code == 302:
            return HttpResponse.create_redirect(code, content), None
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        response_type: str,
        client_id: str,
        redirect_uri: Optional[str] = None,
        state: Optional[str] = None,
        scope: Optional[str] = None,
        code_challenge: Optional[str] = None,
        code_challenge_method: Optional[str] = None,
        target_auth_page: Optional[str] = None,
    ) -> AuthorizeV3:
        instance = cls()
        instance.response_type = response_type
        instance.client_id = client_id
        if redirect_uri is not None:
            instance.redirect_uri = redirect_uri
        if state is not None:
            instance.state = state
        if scope is not None:
            instance.scope = scope
        if code_challenge is not None:
            instance.code_challenge = code_challenge
        if code_challenge_method is not None:
            instance.code_challenge_method = code_challenge_method
        if target_auth_page is not None:
            instance.target_auth_page = target_auth_page
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> AuthorizeV3:
        instance = cls()
        if "response_type" in dict_ and dict_["response_type"] is not None:
            instance.response_type = str(dict_["response_type"])
        elif include_empty:
            instance.response_type = str()
        if "client_id" in dict_ and dict_["client_id"] is not None:
            instance.client_id = str(dict_["client_id"])
        elif include_empty:
            instance.client_id = str()
        if "redirect_uri" in dict_ and dict_["redirect_uri"] is not None:
            instance.redirect_uri = str(dict_["redirect_uri"])
        elif include_empty:
            instance.redirect_uri = str()
        if "state" in dict_ and dict_["state"] is not None:
            instance.state = str(dict_["state"])
        elif include_empty:
            instance.state = str()
        if "scope" in dict_ and dict_["scope"] is not None:
            instance.scope = str(dict_["scope"])
        elif include_empty:
            instance.scope = str()
        if "code_challenge" in dict_ and dict_["code_challenge"] is not None:
            instance.code_challenge = str(dict_["code_challenge"])
        elif include_empty:
            instance.code_challenge = str()
        if "code_challenge_method" in dict_ and dict_["code_challenge_method"] is not None:
            instance.code_challenge_method = str(dict_["code_challenge_method"])
        elif include_empty:
            instance.code_challenge_method = str()
        if "target_auth_page" in dict_ and dict_["target_auth_page"] is not None:
            instance.target_auth_page = str(dict_["target_auth_page"])
        elif include_empty:
            instance.target_auth_page = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "response_type": "response_type",
            "client_id": "client_id",
            "redirect_uri": "redirect_uri",
            "state": "state",
            "scope": "scope",
            "code_challenge": "code_challenge",
            "code_challenge_method": "code_challenge_method",
            "target_auth_page": "target_auth_page",
        }

    # endregion static methods
