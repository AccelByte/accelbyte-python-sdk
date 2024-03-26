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

from ...models import ClientmodelClientsUpdateRequestV3
from ...models import RestErrorResponse


class AdminBulkUpdateClientsV3(Operation):
    """Bulk Update Clients (AdminBulkUpdateClientsV3)

    Updates multiple OAuth 2.0 clients.
    Specify only the fields you want to update in the request payload, e.g. {"ClientName":"E-commerce", "BaseUri":"https://example.net"}

    **Note for Multi Tenant Mode (Confidential Client):**
    Only Super admin can set permission with resource & action.
    Studio admin & game admin need set permission with permission module.

    action code: 10302

    **Fields Description:**
    - **clientName** : The client name. It should not be empty if the field exists in the body. e.g E-commerce
    - **namespace** : The namespace where the client lives. e.g sample-game
    - **redirectUri** : Contains the redirect URI used in OAuth callback. It should not be empty if the field exists in the body. e.g https://example.net/platform
    - **audiences** : List of target client IDs who is intended to receive the token. e.g ["eaaa65618fe24293b00a61454182b435", "40073ee9bc3446d3a051a71b48509a5d"]
    - **baseUri** : A base URI of the application. It is used in the audience checking for making sure the token is used by the right resource server. Required if the application type is a server. e.g https://example.net/platform
    - **clientPermissions** : Contains the client's permissions
    - **deletable** : The flag to identify whether client is deletable (optional). e.g. true
    - **clientPlatform** : available client platform (optional). default value: "".
    - Playstation
    - Xbox
    - Steam
    - Epic
    - IOS
    - GooglePlay
    - Nintendo
    - Oculus
    - **twoFactorEnabled**: The flag to indicate whether 2FA validation is enable for this client. default value: false
    - **oauthAccessTokenExpiration**: a configurable expiration time for **access_token**, default value: 0 (mean fetch value from environment variable)
    - **oauthRefreshTokenExpiration**: a configurable expiration time for **refresh_token**, default value: 0 (mean fetch value from environment variable)
    - **oauthAccessTokenExpirationTimeUnit**: a configurable expiration time unit for **access_token**, will use previous value if not specified
    - **oauthRefreshTokenExpirationTimeUnit**: a configurable expiration time unit for **refresh_token**, will use previous value if not specified
    - **skipLoginQueue**: a flag to indicate whether this client should be exempted from login queue or not

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/clients

        method: PUT

        tags: ["Clients"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ClientmodelClientsUpdateRequestV3 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10365: client not found)
    """

    # region fields

    _url: str = "/iam/v3/admin/namespaces/{namespace}/clients"
    _method: str = "PUT"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    body: ClientmodelClientsUpdateRequestV3  # REQUIRED in [body]
    namespace: str  # REQUIRED in [path]

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
            "body": self.get_body_params(),
            "path": self.get_path_params(),
        }

    def get_body_params(self) -> Any:
        if not hasattr(self, "body") or self.body is None:
            return None
        return self.body.to_dict()

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_body(
        self, value: ClientmodelClientsUpdateRequestV3
    ) -> AdminBulkUpdateClientsV3:
        self.body = value
        return self

    def with_namespace(self, value: str) -> AdminBulkUpdateClientsV3:
        self.namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = ClientmodelClientsUpdateRequestV3()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[None, Union[None, HttpResponse, RestErrorResponse]]:
        """Parse the given response.

        204: No Content - (No Content)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10365: client not found)

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
            return None, RestErrorResponse.create_from_dict(content)
        if code == 401:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 403:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 404:
            return None, RestErrorResponse.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls, body: ClientmodelClientsUpdateRequestV3, namespace: str, **kwargs
    ) -> AdminBulkUpdateClientsV3:
        instance = cls()
        instance.body = body
        instance.namespace = namespace
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AdminBulkUpdateClientsV3:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = ClientmodelClientsUpdateRequestV3.create_from_dict(
                dict_["body"], include_empty=include_empty
            )
        elif include_empty:
            instance.body = ClientmodelClientsUpdateRequestV3()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "namespace": "namespace",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "body": True,
            "namespace": True,
        }

    # endregion static methods
