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


class RevokeUserV3(Operation):
    """Revokes user's tokens' (RevokeUserV3)

    This endpoint revokes all access tokens and refresh tokens a user has prior the revocation time.
    This endpoint requires authorized requests header with valid access token.
    It is a convenient feature for the developer (or admin) who wanted to revokes all user's access tokens and refresh tokens generated before some period of time.
    action code : 10707

    Properties:
        url: /iam/v3/oauth/admin/namespaces/{namespace}/users/{userId}/revoke

        method: POST

        tags: ["OAuth2.0"]

        consumes: ["*/*"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        include_game_namespace: (includeGameNamespace) OPTIONAL bool in query

    Responses:
        204: No Content - (user revoked)

        400: Bad Request - OauthmodelErrorResponse (invalid input)

        401: Unauthorized - OauthmodelErrorResponse (Token is not exist, expired, or invalid)

        403: Forbidden - OauthmodelErrorResponse (insufficient permission)
    """

    # region fields

    _url: str = "/iam/v3/oauth/admin/namespaces/{namespace}/users/{userId}/revoke"
    _method: str = "POST"
    _consumes: List[str] = ["*/*"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    user_id: str  # REQUIRED in [path]
    include_game_namespace: bool  # OPTIONAL in [query]

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
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "user_id"):
            result["userId"] = self.user_id
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "include_game_namespace"):
            result["includeGameNamespace"] = self.include_game_namespace
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> RevokeUserV3:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> RevokeUserV3:
        self.user_id = value
        return self

    def with_include_game_namespace(self, value: bool) -> RevokeUserV3:
        self.include_game_namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "include_game_namespace") and self.include_game_namespace:
            result["includeGameNamespace"] = bool(self.include_game_namespace)
        elif include_empty:
            result["includeGameNamespace"] = False
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[None, Union[None, HttpResponse, OauthmodelErrorResponse]]:
        """Parse the given response.

        204: No Content - (user revoked)

        400: Bad Request - OauthmodelErrorResponse (invalid input)

        401: Unauthorized - OauthmodelErrorResponse (Token is not exist, expired, or invalid)

        403: Forbidden - OauthmodelErrorResponse (insufficient permission)

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

        if code == 204:
            return None, None
        if code == 400:
            return None, OauthmodelErrorResponse.create_from_dict(content)
        if code == 401:
            return None, OauthmodelErrorResponse.create_from_dict(content)
        if code == 403:
            return None, OauthmodelErrorResponse.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        user_id: str,
        include_game_namespace: Optional[bool] = None,
        **kwargs,
    ) -> RevokeUserV3:
        instance = cls()
        instance.namespace = namespace
        instance.user_id = user_id
        if include_game_namespace is not None:
            instance.include_game_namespace = include_game_namespace
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> RevokeUserV3:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if (
            "includeGameNamespace" in dict_
            and dict_["includeGameNamespace"] is not None
        ):
            instance.include_game_namespace = bool(dict_["includeGameNamespace"])
        elif include_empty:
            instance.include_game_namespace = False
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "userId": "user_id",
            "includeGameNamespace": "include_game_namespace",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "userId": True,
            "includeGameNamespace": False,
        }

    # endregion static methods
