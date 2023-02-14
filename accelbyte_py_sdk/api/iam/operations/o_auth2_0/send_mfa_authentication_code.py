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

from ...models import RestErrorResponse


class SendMFAAuthenticationCode(Operation):
    """Send 2FA code (SendMFAAuthenticationCode)

    Send 2FA code



    This endpoint is used for sending 2FA code.

    Properties:
        url: /iam/v3/oauth/mfa/code

        method: POST

        tags: ["OAuth2.0"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        client_id: (clientId) REQUIRED str in form_data

        factor: (factor) REQUIRED str in form_data

        mfa_token: (mfaToken) REQUIRED str in form_data

    Responses:
        204: No Content - (Code sent)

        400: Bad Request - RestErrorResponse (20002: validation error | 10189: invalid factor)

        403: Forbidden - RestErrorResponse (20003: forbidden access)

        404: Not Found - RestErrorResponse (20008: user not found)

        429: Too Many Requests - RestErrorResponse (20007: too many requests)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """

    # region fields

    _url: str = "/iam/v3/oauth/mfa/code"
    _method: str = "POST"
    _consumes: List[str] = ["application/x-www-form-urlencoded"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    client_id: str  # REQUIRED in [form_data]
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
        if hasattr(self, "client_id"):
            result["clientId"] = self.client_id
        if hasattr(self, "factor"):
            result["factor"] = self.factor
        if hasattr(self, "mfa_token"):
            result["mfaToken"] = self.mfa_token
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_client_id(self, value: str) -> SendMFAAuthenticationCode:
        self.client_id = value
        return self

    def with_factor(self, value: str) -> SendMFAAuthenticationCode:
        self.factor = value
        return self

    def with_mfa_token(self, value: str) -> SendMFAAuthenticationCode:
        self.mfa_token = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "client_id") and self.client_id:
            result["clientId"] = str(self.client_id)
        elif include_empty:
            result["clientId"] = ""
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
    ) -> Tuple[None, Union[None, HttpResponse, RestErrorResponse]]:
        """Parse the given response.

        204: No Content - (Code sent)

        400: Bad Request - RestErrorResponse (20002: validation error | 10189: invalid factor)

        403: Forbidden - RestErrorResponse (20003: forbidden access)

        404: Not Found - RestErrorResponse (20008: user not found)

        429: Too Many Requests - RestErrorResponse (20007: too many requests)

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

        if code == 204:
            return None, None
        if code == 400:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 403:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 404:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 429:
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
        client_id: str,
        factor: str,
        mfa_token: str,
    ) -> SendMFAAuthenticationCode:
        instance = cls()
        instance.client_id = client_id
        instance.factor = factor
        instance.mfa_token = mfa_token
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> SendMFAAuthenticationCode:
        instance = cls()
        if "clientId" in dict_ and dict_["clientId"] is not None:
            instance.client_id = str(dict_["clientId"])
        elif include_empty:
            instance.client_id = ""
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
            "clientId": "client_id",
            "factor": "factor",
            "mfaToken": "mfa_token",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "clientId": True,
            "factor": True,
            "mfaToken": True,
        }

    # endregion static methods
