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
from .....core import deprecated


@deprecated
class RevokeToken(Operation):
    """OAuth2 token revocation API (RevokeToken)

    <h1>Deprecated at August 30, 2019. Please use the /v3/oauth/revoke endpoint
    instead</h1> <p>Revokes a token.</p> <p>This endpoint requires all requests to
    have Authorization header set with Basic access authentication constructed
    from client id and client secret or Bearer access authentication with valid
    access token.</p>


    Properties:
        url: /iam/oauth/revoke/token

        method: POST

        tags: ["OAuth"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        security: bearer

        token: (token) REQUIRED str in form_data

    Responses:
        200: OK - (Token revoked or does not exist)

        400: Bad Request - (Invalid input)

        401: Unauthorized - (Invalid basic auth header)
    """

    # region fields

    _url: str = "/iam/oauth/revoke/token"
    _method: str = "POST"
    _consumes: List[str] = ["application/x-www-form-urlencoded"]
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    token: str                                                                                     # REQUIRED in [form_data]

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
        )

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "token",
        ]

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "form_data": self.get_form_data_params(),
        }

    def get_form_data_params(self) -> dict:
        result = {}
        if hasattr(self, "token"):
            result["token"] = self.token
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "token") or self.token is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_token(self, value: str) -> RevokeToken:
        self.token = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "token") and self.token:
            result["token"] = str(self.token)
        elif include_empty:
            result["token"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, HttpResponse], Union[None, HttpResponse]]:
        """Parse the given response.

        200: OK - (Token revoked or does not exist)

        400: Bad Request - (Invalid input)

        401: Unauthorized - (Invalid basic auth header)
        """
        if code == 200:
            return HttpResponse.create(code, "OK"), None
        if code == 400:
            return None, HttpResponse.create(code, "Bad Request")
        if code == 401:
            return None, HttpResponse.create(code, "Unauthorized")
        was_handled, undocumented_response = HttpResponse.try_create_undocumented_response(code, content)
        if was_handled:
            return None, undocumented_response
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        token: str,
    ) -> RevokeToken:
        instance = cls()
        instance.token = token
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> RevokeToken:
        instance = cls()
        if "token" in dict_ and dict_["token"] is not None:
            instance.token = str(dict_["token"])
        elif include_empty:
            instance.token = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "token": "token",
        }

    # endregion static methods
