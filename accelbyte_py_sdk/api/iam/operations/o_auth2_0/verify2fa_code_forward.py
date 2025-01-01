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


class Verify2faCodeForward(Operation):
    """Verify 2FA code (Verify2FACodeForward)

    This is a forward version for '/mfa/verify'. If there is any error, it will redirect to login website with error details.
    If success, it will forward to auth request redirect url
    If got error, it will forward to login website
    Verify 2FA code
    This endpoint is used for verifying 2FA code.
    ## 2FA remember device
    To remember device for 2FA, should provide cookie: device_token or header: Device-Token

    Properties:
        url: /iam/v3/oauth/mfa/verify/forward

        method: POST

        tags: ["OAuth2.0"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        default_factor: (defaultFactor) OPTIONAL str in form_data

        factors: (factors) OPTIONAL str in form_data

        remember_device: (rememberDevice) OPTIONAL bool in form_data

        client_id: (clientId) REQUIRED str in form_data

        code: (code) REQUIRED str in form_data

        factor: (factor) REQUIRED str in form_data

        mfa_token: (mfaToken) REQUIRED str in form_data

    Responses:
        302: Found - (Found. Redirect to clients redirection URL with code or redirect to login web with error on the query parameter)
    """

    # region fields

    _url: str = "/iam/v3/oauth/mfa/verify/forward"
    _method: str = "POST"
    _consumes: List[str] = ["application/x-www-form-urlencoded"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    default_factor: str  # OPTIONAL in [form_data]
    factors: str  # OPTIONAL in [form_data]
    remember_device: bool  # OPTIONAL in [form_data]
    client_id: str  # REQUIRED in [form_data]
    code: str  # REQUIRED in [form_data]
    factor: str  # REQUIRED in [form_data]
    mfa_token: str  # REQUIRED in [form_data]

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
        if hasattr(self, "default_factor"):
            result["defaultFactor"] = self.default_factor
        if hasattr(self, "factors"):
            result["factors"] = self.factors
        if hasattr(self, "remember_device"):
            result["rememberDevice"] = self.remember_device
        if hasattr(self, "client_id"):
            result["clientId"] = self.client_id
        if hasattr(self, "code"):
            result["code"] = self.code
        if hasattr(self, "factor"):
            result["factor"] = self.factor
        if hasattr(self, "mfa_token"):
            result["mfaToken"] = self.mfa_token
        return result

    # endregion get_x_params methods

    # region is/has methods

    # noinspection PyMethodMayBeStatic
    def has_redirects(self) -> bool:
        """Returns True if this operation has redirects, otherwise False.

        302: Found - (Found. Redirect to clients redirection URL with code or redirect to login web with error on the query parameter)
        """
        return True

    # endregion is/has methods

    # region with_x methods

    def with_default_factor(self, value: str) -> Verify2faCodeForward:
        self.default_factor = value
        return self

    def with_factors(self, value: str) -> Verify2faCodeForward:
        self.factors = value
        return self

    def with_remember_device(self, value: bool) -> Verify2faCodeForward:
        self.remember_device = value
        return self

    def with_client_id(self, value: str) -> Verify2faCodeForward:
        self.client_id = value
        return self

    def with_code(self, value: str) -> Verify2faCodeForward:
        self.code = value
        return self

    def with_factor(self, value: str) -> Verify2faCodeForward:
        self.factor = value
        return self

    def with_mfa_token(self, value: str) -> Verify2faCodeForward:
        self.mfa_token = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "default_factor") and self.default_factor:
            result["defaultFactor"] = str(self.default_factor)
        elif include_empty:
            result["defaultFactor"] = ""
        if hasattr(self, "factors") and self.factors:
            result["factors"] = str(self.factors)
        elif include_empty:
            result["factors"] = ""
        if hasattr(self, "remember_device") and self.remember_device:
            result["rememberDevice"] = bool(self.remember_device)
        elif include_empty:
            result["rememberDevice"] = False
        if hasattr(self, "client_id") and self.client_id:
            result["clientId"] = str(self.client_id)
        elif include_empty:
            result["clientId"] = ""
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
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[Union[None, HttpResponse], Union[None, HttpResponse]]:
        """Parse the given response.

        302: Found - (Found. Redirect to clients redirection URL with code or redirect to login web with error on the query parameter)

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

        if code == 302:
            return HttpResponse.create_redirect(code, content), None

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        client_id: str,
        code: str,
        factor: str,
        mfa_token: str,
        default_factor: Optional[str] = None,
        factors: Optional[str] = None,
        remember_device: Optional[bool] = None,
        **kwargs,
    ) -> Verify2faCodeForward:
        instance = cls()
        instance.client_id = client_id
        instance.code = code
        instance.factor = factor
        instance.mfa_token = mfa_token
        if default_factor is not None:
            instance.default_factor = default_factor
        if factors is not None:
            instance.factors = factors
        if remember_device is not None:
            instance.remember_device = remember_device
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Verify2faCodeForward:
        instance = cls()
        if "defaultFactor" in dict_ and dict_["defaultFactor"] is not None:
            instance.default_factor = str(dict_["defaultFactor"])
        elif include_empty:
            instance.default_factor = ""
        if "factors" in dict_ and dict_["factors"] is not None:
            instance.factors = str(dict_["factors"])
        elif include_empty:
            instance.factors = ""
        if "rememberDevice" in dict_ and dict_["rememberDevice"] is not None:
            instance.remember_device = bool(dict_["rememberDevice"])
        elif include_empty:
            instance.remember_device = False
        if "clientId" in dict_ and dict_["clientId"] is not None:
            instance.client_id = str(dict_["clientId"])
        elif include_empty:
            instance.client_id = ""
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
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "defaultFactor": "default_factor",
            "factors": "factors",
            "rememberDevice": "remember_device",
            "clientId": "client_id",
            "code": "code",
            "factor": "factor",
            "mfaToken": "mfa_token",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "defaultFactor": False,
            "factors": False,
            "rememberDevice": False,
            "clientId": True,
            "code": True,
            "factor": True,
            "mfaToken": True,
        }

    # endregion static methods
