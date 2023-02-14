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

from ...models import ModelThirdPartyLoginPlatformCredentialRequest
from ...models import ModelThirdPartyLoginPlatformCredentialResponse
from ...models import RestErrorResponse


class UpdateThirdPartyLoginPlatformCredentialV3(Operation):
    """Update Third Party Platform Credential (UpdateThirdPartyLoginPlatformCredentialV3)

    This is the API to Add 3rd Platform Credential.




    It needs ADMIN:NAMESPACE:{namespace}:PLATFORM:{platformId}:CLIENT [CREATE] resource.




    The secret for apple is base64 encoded private key.




    No secret for awscognito , we only need to configure AWS Cognito Region and User Pool




    The secret for discord is client secret of the twitch client id.




    The secret for epicgames is client secret of the epicgames client id.




    The secret for facebook is client secret of the facebook client id.




    The secret for google is client secret of the google OAuth client.




    No secret for nintendo , we only need to configure app id of the game




    No secret for netflix , we configure the Root, Public, Private Key certificate pem file and target environment; value: [sandbox, production]




    The secret for oculus is app secret of the oculus app.




    The secret for ps4, ps5, and ps4web is client secret of the psn web server.




    The secret for steam is the Steam Web API Key.




    The secret for steamopenid is the Steam Web API Key.




    The secret for twitch is client secret of the twitch client.




    The secret for live is the Relying Party Private Key in base64 encode PEM format.




    The secret for xblwebapi is client secret of the xbl client.




    If generic oauth flow is set to true:






      * Current supported value for TokenAuthenticationType is idToken


      * `TokenClaimsMapping` is used to extract user info from idToken claims.
    Its a JSON format with key should be `name`, `email` and `avatarUrl`
    since IAM will look up for these key when extracting user info.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:PLATFORM:{platformId}:CLIENT [CREATE]

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients

        method: PATCH

        tags: ["Third Party Credential"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelThirdPartyLoginPlatformCredentialRequest in body

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

    Responses:
        200: OK - ModelThirdPartyLoginPlatformCredentialResponse (OK)

        400: Bad Request - RestErrorResponse (Bad Request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10175: third party credential not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """

    # region fields

    _url: str = "/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients"
    _method: str = "PATCH"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    body: ModelThirdPartyLoginPlatformCredentialRequest  # REQUIRED in [body]
    namespace: str  # REQUIRED in [path]
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
        if hasattr(self, "platform_id"):
            result["platformId"] = self.platform_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_body(
        self, value: ModelThirdPartyLoginPlatformCredentialRequest
    ) -> UpdateThirdPartyLoginPlatformCredentialV3:
        self.body = value
        return self

    def with_namespace(self, value: str) -> UpdateThirdPartyLoginPlatformCredentialV3:
        self.namespace = value
        return self

    def with_platform_id(self, value: str) -> UpdateThirdPartyLoginPlatformCredentialV3:
        self.platform_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = ModelThirdPartyLoginPlatformCredentialRequest()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
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
        Union[None, ModelThirdPartyLoginPlatformCredentialResponse],
        Union[None, HttpResponse, RestErrorResponse],
    ]:
        """Parse the given response.

        200: OK - ModelThirdPartyLoginPlatformCredentialResponse (OK)

        400: Bad Request - RestErrorResponse (Bad Request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10175: third party credential not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)

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
                ModelThirdPartyLoginPlatformCredentialResponse.create_from_dict(
                    content
                ),
                None,
            )
        if code == 400:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 401:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 403:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 404:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 500:
            return None, RestErrorResponse.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        body: ModelThirdPartyLoginPlatformCredentialRequest,
        namespace: str,
        platform_id: str,
    ) -> UpdateThirdPartyLoginPlatformCredentialV3:
        instance = cls()
        instance.body = body
        instance.namespace = namespace
        instance.platform_id = platform_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> UpdateThirdPartyLoginPlatformCredentialV3:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = (
                ModelThirdPartyLoginPlatformCredentialRequest.create_from_dict(
                    dict_["body"], include_empty=include_empty
                )
            )
        elif include_empty:
            instance.body = ModelThirdPartyLoginPlatformCredentialRequest()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "platformId" in dict_ and dict_["platformId"] is not None:
            instance.platform_id = str(dict_["platformId"])
        elif include_empty:
            instance.platform_id = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "namespace": "namespace",
            "platformId": "platform_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "body": True,
            "namespace": True,
            "platformId": True,
        }

    # endregion static methods
