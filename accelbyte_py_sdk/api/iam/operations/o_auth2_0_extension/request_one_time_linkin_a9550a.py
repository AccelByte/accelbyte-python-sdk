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

from ...models import OauthmodelOneTimeLinkingCodeResponse


class RequestOneTimeLinkingCodeV3(Operation):
    """Generate one time linking code (RequestOneTimeLinkingCodeV3)

    This endpoint is being used to request the one time code [8 length] for headless account to link or upgrade to a full account.
    Should specify the target platform id and current user should already linked to this platform.
    Current user should be a headless account.
    ## Supported platforms:
    - **steam**
    - **steamopenid**
    - **facebook**
    - **google**
    - **googleplaygames**
    - **oculus**
    - **twitch**
    - **discord**
    - **android**
    - **ios**
    - **apple**
    - **device**
    - **justice**
    - **epicgames**
    - **ps4**
    - **ps5**
    - **nintendo**
    - **awscognito**
    - **live**
    - **xblweb**
    - **netflix**
    - **snapchat**

    Properties:
        url: /iam/v3/link/code/request

        method: POST

        tags: ["OAuth2.0 - Extension"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        redirect_uri: (redirectUri) OPTIONAL str in form_data

        state: (state) OPTIONAL str in form_data

        platform_id: (platformId) REQUIRED str in form_data

    Responses:
        200: OK - OauthmodelOneTimeLinkingCodeResponse (Succeed to one time code.)
    """

    # region fields

    _url: str = "/iam/v3/link/code/request"
    _method: str = "POST"
    _consumes: List[str] = ["application/x-www-form-urlencoded"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    redirect_uri: str  # OPTIONAL in [form_data]
    state: str  # OPTIONAL in [form_data]
    platform_id: str  # REQUIRED in [form_data]

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
            "form_data": self.get_form_data_params(),
        }

    def get_form_data_params(self) -> dict:
        result = {}
        if hasattr(self, "redirect_uri"):
            result["redirectUri"] = self.redirect_uri
        if hasattr(self, "state"):
            result["state"] = self.state
        if hasattr(self, "platform_id"):
            result["platformId"] = self.platform_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_redirect_uri(self, value: str) -> RequestOneTimeLinkingCodeV3:
        self.redirect_uri = value
        return self

    def with_state(self, value: str) -> RequestOneTimeLinkingCodeV3:
        self.state = value
        return self

    def with_platform_id(self, value: str) -> RequestOneTimeLinkingCodeV3:
        self.platform_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "redirect_uri") and self.redirect_uri:
            result["redirectUri"] = str(self.redirect_uri)
        elif include_empty:
            result["redirectUri"] = ""
        if hasattr(self, "state") and self.state:
            result["state"] = str(self.state)
        elif include_empty:
            result["state"] = ""
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
        Union[None, OauthmodelOneTimeLinkingCodeResponse], Union[None, HttpResponse]
    ]:
        """Parse the given response.

        200: OK - OauthmodelOneTimeLinkingCodeResponse (Succeed to one time code.)

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
            return OauthmodelOneTimeLinkingCodeResponse.create_from_dict(content), None

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        platform_id: str,
        redirect_uri: Optional[str] = None,
        state: Optional[str] = None,
        **kwargs,
    ) -> RequestOneTimeLinkingCodeV3:
        instance = cls()
        instance.platform_id = platform_id
        if redirect_uri is not None:
            instance.redirect_uri = redirect_uri
        if state is not None:
            instance.state = state
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RequestOneTimeLinkingCodeV3:
        instance = cls()
        if "redirectUri" in dict_ and dict_["redirectUri"] is not None:
            instance.redirect_uri = str(dict_["redirectUri"])
        elif include_empty:
            instance.redirect_uri = ""
        if "state" in dict_ and dict_["state"] is not None:
            instance.state = str(dict_["state"])
        elif include_empty:
            instance.state = ""
        if "platformId" in dict_ and dict_["platformId"] is not None:
            instance.platform_id = str(dict_["platformId"])
        elif include_empty:
            instance.platform_id = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "redirectUri": "redirect_uri",
            "state": "state",
            "platformId": "platform_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "redirectUri": False,
            "state": False,
            "platformId": True,
        }

    # endregion static methods
