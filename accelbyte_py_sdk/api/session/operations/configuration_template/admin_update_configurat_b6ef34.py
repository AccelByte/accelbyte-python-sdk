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

# AccelByte Gaming Services Session Service (3.1.0)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ApimodelsConfigurationTemplateResponse
from ...models import ApimodelsUpdateConfigurationTemplateRequest
from ...models import ResponseError


class AdminUpdateConfigurationTemplateV1(Operation):
    """Update configuration template. Requires ADMIN:NAMESPACE:{namespace}:SESSION:CONFIGURATION [UPDATE] (adminUpdateConfigurationTemplateV1)

    Modify template configuration
    Session configuration mandatory :
    - name
    - joinability (example value : OPEN, CLOSED, INVITE_ONLY)
    - autoJoin: when enabled, players will automatically join the initial game session creation. Game session will not send any invite and players dont need to act upon it. default: false (disabled)
    - Type (example value : P2P, DS, NONE) if type empty, type will be assign to NONE
    - MinPlayers (must greater or equal 0)
    - MaxPlayers (must greater than 0)
    - InviteTimeout (must greater or equal 0) if InviteTimeout equal 0 will be use default DefaultTimeoutSecond (60s)
    - InactiveTimeout (must greater or equal 0) if InactiveTimeout equal 0 will be use default DefaultTimeoutSecond (60s)
    - Persistent Flag only can use with type DS (example value true or false)
    - If Persistent True the session always active even DS removing or terminate and Session will be request DS again until DS Ready or Busy.
    - To Stop Session Not request again to DS or want Delete Session can Delete Session using endpoint DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}
    - If Persistent False the session will be inactive if all member left and DS terminate or removing
    - nativeSessionSetting:
    - XboxSessionTemplateName: the XBox session template name that correspondent to the AB session template, and is needed to define XBox session's joinRestriction and maxMembersCount when doing the session sync.
    - XboxServiceConfigID: the XBox service configuration ID.
    - PSNServiceLabel: the PSN service label.
    - SessionTitle: the session title. In PSN, this will be used to define name of the session thats displayed on PlayStation system UI.
    - ShouldSync: to define whether the service needs to do session sync with native platform(s). Default: false (disabled).
    - PSNSupportedPlatforms: the PSN supported platforms. In PSN, if ShouldSync true and PSNSupportedPlatforms is empty, then PS5 will be set as default value.
    - PSNBaseUrl this is for base URL PSN if not set will be default value https://s2s.sp-int.playstation.net. In a single namespace only 1 PSN Env that can be used. Multiple session template should refers to the same PSN Env as we have in IAM Service.
    - https://s2s.sp-int.playstation.net (DEV, need IP Whitelist)
    - https://s2s.prod-qa.playstation.net (QA Environment/PSN Certification)
    - https://s2s.np.playstation.net (Production)
    - localizedSessionName : for localized name and default language
    example payload :
    "localizedSessionName":{
    "defaultLanguage" : "en-US"
    "localizedText" :{
    "en-US" : "title"
    }
    }
    - TieTeamsSessionLifetime: If it is set to true, the lifetime of any partyId session inside teams attribute will be tied to the game session. Only applies when the teams partyId is game session.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/configurations/{name}

        method: PUT

        tags: ["Configuration Template"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsUpdateConfigurationTemplateRequest in body

        name: (name) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsConfigurationTemplateResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """

    # region fields

    _url: str = "/session/v1/admin/namespaces/{namespace}/configurations/{name}"
    _method: str = "PUT"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    body: ApimodelsUpdateConfigurationTemplateRequest  # REQUIRED in [body]
    name: str  # REQUIRED in [path]
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
        if hasattr(self, "name"):
            result["name"] = self.name
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_body(
        self, value: ApimodelsUpdateConfigurationTemplateRequest
    ) -> AdminUpdateConfigurationTemplateV1:
        self.body = value
        return self

    def with_name(self, value: str) -> AdminUpdateConfigurationTemplateV1:
        self.name = value
        return self

    def with_namespace(self, value: str) -> AdminUpdateConfigurationTemplateV1:
        self.namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = ApimodelsUpdateConfigurationTemplateRequest()
        if hasattr(self, "name") and self.name:
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
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
    ) -> Tuple[
        Union[None, ApimodelsConfigurationTemplateResponse],
        Union[None, HttpResponse, ResponseError],
    ]:
        """Parse the given response.

        200: OK - ApimodelsConfigurationTemplateResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)

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
                ApimodelsConfigurationTemplateResponse.create_from_dict(content),
                None,
            )
        if code == 400:
            return None, ResponseError.create_from_dict(content)
        if code == 401:
            return None, ResponseError.create_from_dict(content)
        if code == 403:
            return None, ResponseError.create_from_dict(content)
        if code == 404:
            return None, ResponseError.create_from_dict(content)
        if code == 500:
            return None, ResponseError.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        body: ApimodelsUpdateConfigurationTemplateRequest,
        name: str,
        namespace: str,
        **kwargs,
    ) -> AdminUpdateConfigurationTemplateV1:
        instance = cls()
        instance.body = body
        instance.name = name
        instance.namespace = namespace
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AdminUpdateConfigurationTemplateV1:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = (
                ApimodelsUpdateConfigurationTemplateRequest.create_from_dict(
                    dict_["body"], include_empty=include_empty
                )
            )
        elif include_empty:
            instance.body = ApimodelsUpdateConfigurationTemplateRequest()
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "name": "name",
            "namespace": "namespace",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "body": True,
            "name": True,
            "namespace": True,
        }

    # endregion static methods
