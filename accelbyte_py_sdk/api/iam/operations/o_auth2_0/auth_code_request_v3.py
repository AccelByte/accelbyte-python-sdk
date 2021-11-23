# justice-iam-service (4.7.0)

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


class AuthCodeRequestV3(Operation):
    """Generate url to request auth code from third party platform. (AuthCodeRequestV3)

    'Generate url to request auth code from third party platform <br>
    <h2>Supported platforms:</h2><ul> <li><strong>steamopenid</strong></li>This
    endpoint redirects to steam login page, then redirect back to platform
    authenticate endpoint after successfully authenticating user steam.
    <li><strong>xblweb</strong></li>This endpoint redirects to xbox login page,
    then redirect back to platform authenticate endpoint after successfully
    authenticating xbox user. <li><strong>ps4web</strong></li>This endpoint
    redirects to psn login page, then redirect back to platform authenticate
    endpoint after successfully authenticating psn user.
    <li><strong>epicgames</strong></li>This endpoint redirects to Epicgames OAuth
    login page. then redirect to platform authenticate endpoint after successfully
    authenticating an Epicgames credential <li><strong>twitch</strong></li>This
    endpoint redirects to twitch login page, then redirect back to platform
    authenticate endpoint after successfully authenticating twitch user. </ul>
    action code : 10702'


    Properties:
        url: /iam/v3/oauth/platforms/{platformId}/authorize

        method: GET

        tags: ["OAuth2.0"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        security: bearer

        location query: code

        platform_id: (platformId) REQUIRED str in path

        client_id: (client_id) OPTIONAL str in query

        redirect_uri: (redirect_uri) OPTIONAL str in query

        request_id: (request_id) REQUIRED str in query

    Responses:
        302: Found - (Found. Redirect to client’s redirect URI with either code or error on the query parameter)
    """

    # region fields

    _url: str = "/iam/v3/oauth/platforms/{platformId}/authorize"
    _method: str = "GET"
    _consumes: List[str] = ["application/x-www-form-urlencoded"]
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = "code"

    platform_id: str                                                                               # REQUIRED in [path]
    client_id: str                                                                                 # OPTIONAL in [query]
    redirect_uri: str                                                                              # OPTIONAL in [query]
    request_id: str                                                                                # REQUIRED in [query]

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
        return self.create_full_url(
            url=self.url,
            base_url=base_url,
            path_params=self.get_path_params(),
            query_params=self.get_query_params(),
        )

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "platform_id",
            "request_id",
        ]

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
        if hasattr(self, "client_id"):
            result["client_id"] = self.client_id
        if hasattr(self, "redirect_uri"):
            result["redirect_uri"] = self.redirect_uri
        if hasattr(self, "request_id"):
            result["request_id"] = self.request_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "platform_id") or self.platform_id is None:
            return False
        if not hasattr(self, "request_id") or self.request_id is None:
            return False
        return True

    # noinspection PyMethodMayBeStatic
    def has_redirects(self) -> bool:
        """Returns True if this operation has redirects, otherwise False.

        302: Found - (Found. Redirect to client’s redirect URI with either code or error on the query parameter)
        """
        return True

    # endregion is/has methods

    # region with_x methods

    def with_platform_id(self, value: str) -> AuthCodeRequestV3:
        self.platform_id = value
        return self

    def with_client_id(self, value: str) -> AuthCodeRequestV3:
        self.client_id = value
        return self

    def with_redirect_uri(self, value: str) -> AuthCodeRequestV3:
        self.redirect_uri = value
        return self

    def with_request_id(self, value: str) -> AuthCodeRequestV3:
        self.request_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "platform_id") and self.platform_id:
            result["platformId"] = str(self.platform_id)
        elif include_empty:
            result["platformId"] = str()
        if hasattr(self, "client_id") and self.client_id:
            result["client_id"] = str(self.client_id)
        elif include_empty:
            result["client_id"] = str()
        if hasattr(self, "redirect_uri") and self.redirect_uri:
            result["redirect_uri"] = str(self.redirect_uri)
        elif include_empty:
            result["redirect_uri"] = str()
        if hasattr(self, "request_id") and self.request_id:
            result["request_id"] = str(self.request_id)
        elif include_empty:
            result["request_id"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, HttpResponse], Union[None, HttpResponse]]:
        """Parse the given response.

        302: Found - (Found. Redirect to client’s redirect URI with either code or error on the query parameter)
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
        platform_id: str,
        request_id: str,
        client_id: Optional[str] = None,
        redirect_uri: Optional[str] = None,
    ) -> AuthCodeRequestV3:
        instance = cls()
        instance.platform_id = platform_id
        instance.request_id = request_id
        if client_id is not None:
            instance.client_id = client_id
        if redirect_uri is not None:
            instance.redirect_uri = redirect_uri
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> AuthCodeRequestV3:
        instance = cls()
        if "platformId" in dict_ and dict_["platformId"] is not None:
            instance.platform_id = str(dict_["platformId"])
        elif include_empty:
            instance.platform_id = str()
        if "client_id" in dict_ and dict_["client_id"] is not None:
            instance.client_id = str(dict_["client_id"])
        elif include_empty:
            instance.client_id = str()
        if "redirect_uri" in dict_ and dict_["redirect_uri"] is not None:
            instance.redirect_uri = str(dict_["redirect_uri"])
        elif include_empty:
            instance.redirect_uri = str()
        if "request_id" in dict_ and dict_["request_id"] is not None:
            instance.request_id = str(dict_["request_id"])
        elif include_empty:
            instance.request_id = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "platformId": "platform_id",
            "client_id": "client_id",
            "redirect_uri": "redirect_uri",
            "request_id": "request_id",
        }

    # endregion static methods
