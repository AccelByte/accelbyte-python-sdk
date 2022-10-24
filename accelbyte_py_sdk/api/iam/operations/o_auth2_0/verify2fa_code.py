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

# AccelByte Cloud Iam Service (5.20.0)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import OauthmodelErrorResponse
from ...models import OauthmodelTokenResponseV3


class Verify2faCode(Operation):
    """Verify 2FA code (Verify2FACode)

    Verify 2FA code



    This endpoint is used for verifying 2FA code.




    ## 2FA remember device




    To remember device for 2FA, should provide cookie: device_token or header: Device-Token

    Properties:
        url: /iam/v3/oauth/mfa/verify

        method: POST

        tags: ["OAuth2.0"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        code: (code) REQUIRED str in form_data

        factor: (factor) REQUIRED str in form_data

        mfa_token: (mfaToken) REQUIRED str in form_data

        remember_device: (rememberDevice) REQUIRED bool in form_data

    Responses:
        200: OK - OauthmodelTokenResponseV3 (Token returned)

        401: Unauthorized - OauthmodelErrorResponse (Unauthorized)
    """

    # region fields

    _url: str = "/iam/v3/oauth/mfa/verify"
    _method: str = "POST"
    _consumes: List[str] = ["application/x-www-form-urlencoded"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    code: str  # REQUIRED in [form_data]
    factor: str  # REQUIRED in [form_data]
    mfa_token: str  # REQUIRED in [form_data]
    remember_device: bool  # REQUIRED in [form_data]

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
        if hasattr(self, "code"):
            result["code"] = self.code
        if hasattr(self, "factor"):
            result["factor"] = self.factor
        if hasattr(self, "mfa_token"):
            result["mfaToken"] = self.mfa_token
        if hasattr(self, "remember_device"):
            result["rememberDevice"] = self.remember_device
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_code(self, value: str) -> Verify2faCode:
        self.code = value
        return self

    def with_factor(self, value: str) -> Verify2faCode:
        self.factor = value
        return self

    def with_mfa_token(self, value: str) -> Verify2faCode:
        self.mfa_token = value
        return self

    def with_remember_device(self, value: bool) -> Verify2faCode:
        self.remember_device = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "code") and self.code:
            result["code"] = str(self.code)
        elif include_empty:
            result["code"] = ""
        if hasattr(self, "factor") and self.factor:
            result["factor"] = str(self.factor)
        elif include_empty:
            result["factor"] = ""
        if hasattr(self, "mfa_token") and self.mfa_token:
            result["mfaToken"] = str(self.mfa_token)
        elif include_empty:
            result["mfaToken"] = ""
        if hasattr(self, "remember_device") and self.remember_device:
            result["rememberDevice"] = bool(self.remember_device)
        elif include_empty:
            result["rememberDevice"] = False
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, OauthmodelTokenResponseV3],
        Union[None, HttpResponse, OauthmodelErrorResponse],
    ]:
        """Parse the given response.

        200: OK - OauthmodelTokenResponseV3 (Token returned)

        401: Unauthorized - OauthmodelErrorResponse (Unauthorized)

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
            return OauthmodelTokenResponseV3.create_from_dict(content), None
        if code == 401:
            return None, OauthmodelErrorResponse.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        code: str,
        factor: str,
        mfa_token: str,
        remember_device: bool,
    ) -> Verify2faCode:
        instance = cls()
        instance.code = code
        instance.factor = factor
        instance.mfa_token = mfa_token
        instance.remember_device = remember_device
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Verify2faCode:
        instance = cls()
        if "code" in dict_ and dict_["code"] is not None:
            instance.code = str(dict_["code"])
        elif include_empty:
            instance.code = ""
        if "factor" in dict_ and dict_["factor"] is not None:
            instance.factor = str(dict_["factor"])
        elif include_empty:
            instance.factor = ""
        if "mfaToken" in dict_ and dict_["mfaToken"] is not None:
            instance.mfa_token = str(dict_["mfaToken"])
        elif include_empty:
            instance.mfa_token = ""
        if "rememberDevice" in dict_ and dict_["rememberDevice"] is not None:
            instance.remember_device = bool(dict_["rememberDevice"])
        elif include_empty:
            instance.remember_device = False
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "code": "code",
            "factor": "factor",
            "mfaToken": "mfa_token",
            "rememberDevice": "remember_device",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "code": True,
            "factor": True,
            "mfaToken": True,
            "rememberDevice": True,
        }

    # endregion static methods
