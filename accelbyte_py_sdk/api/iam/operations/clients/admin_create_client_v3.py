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

from ...models import ClientmodelClientCreationV3Request
from ...models import ClientmodelClientV3Response
from ...models import RestErrorResponse


class AdminCreateClientV3(Operation):
    """Create Client (AdminCreateClientV3)

    Add a new OAuth 2.0 client. Protected by the permission:
    ADMIN:NAMESPACE:{namespace}:CLIENT [CREATE]<br> A new client automatically
    granted with these scopes: commerce, account, analytics, publishing,
    social.<br> action code: 10301<br> <p><strong>Fields Description:</strong>
    <ul> <li><strong>clientId</strong> : The client ID. e.g
    f815e5c44f364993961be3b3f26a7bf4</li> <li><strong>clientName</strong> : The
    client name. e.g E-commerce</li> <li><strong>secret</strong> : The client's
    secret. It's empty if the client's type is a public client. Otherwise, the
    client secret is required</li> <li><strong>namespace</strong> : The namespace
    where the client lives. e.g sample-game</li> <li><strong>redirectUri</strong>
    : Contains the redirect URI used in OAuth callback. e.g
    https://example.net/platform</li> <li><strong>oauthClientType</strong> : The
    OAuth 2.0 client type. The client type determines whether the authorization
    needs Proof Of Key Exchange or not. A public client type doesn't have a client
    secret and should use PKCE flow. A confidential client type has a client
    secret and don't use PKCE flow <ul>Supported oAuthClientType :
    <li><strong>Public</strong></li>
    <li><strong>Confidential</strong></li></ul></li>
    <li><strong>audiences</strong> : List of target client IDs who is intended to
    receive the token. e.g ["eaaa65618fe24293b00a61454182b435",
    "40073ee9bc3446d3a051a71b48509a5d"]</li> <li><strong>baseUri</strong> : A base
    URI of the application. It is used for making sure the token is intended to be
    used by the client. e.g https://example.net/platform</li>
    <li><strong>clientPermissions</strong> : Contains the client's
    permissions</li> </ul> </p>


    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/clients

        method: POST

        tags: ["Clients"]

        consumes: ["application/json"]

        produces: ["application/json"]

        security: bearer

        body: (body) REQUIRED ClientmodelClientCreationV3Request in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ClientmodelClientV3Response (Created)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        409: Conflict - RestErrorResponse (10364: client exists)
    """

    # region fields

    _url: str = "/iam/v3/admin/namespaces/{namespace}/clients"
    _method: str = "POST"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    body: ClientmodelClientCreationV3Request                                                       # REQUIRED in [body]
    namespace: str                                                                                 # REQUIRED in [path]

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
        )

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "body",
            "namespace",
        ]

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "body": self.get_body_params(),
            "path": self.get_path_params(),
        }

    def get_body_params(self) -> Any:
        return self.body.to_dict()

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "body") or self.body is None:
            return False
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_body(self, value: ClientmodelClientCreationV3Request) -> AdminCreateClientV3:
        self.body = value
        return self

    def with_namespace(self, value: str) -> AdminCreateClientV3:
        self.namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = ClientmodelClientCreationV3Request()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, ClientmodelClientV3Response], Union[None, RestErrorResponse]]:
        """Parse the given response.

        201: Created - ClientmodelClientV3Response (Created)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        409: Conflict - RestErrorResponse (10364: client exists)
        """
        if code == 201:
            return ClientmodelClientV3Response.create_from_dict(content), None
        if code == 400:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 401:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 403:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 409:
            return None, RestErrorResponse.create_from_dict(content)
        was_handled, undocumented_response = HttpResponse.try_create_undocumented_response(code, content)
        if was_handled:
            return None, undocumented_response
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        body: ClientmodelClientCreationV3Request,
        namespace: str,
    ) -> AdminCreateClientV3:
        instance = cls()
        instance.body = body
        instance.namespace = namespace
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> AdminCreateClientV3:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = ClientmodelClientCreationV3Request.create_from_dict(dict_["body"], include_empty=include_empty)
        elif include_empty:
            instance.body = ClientmodelClientCreationV3Request()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "namespace": "namespace",
        }

    # endregion static methods
