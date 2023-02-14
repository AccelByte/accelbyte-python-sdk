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


class AdminMakeFactorMyDefaultV4(Operation):
    """Make 2FA factor default (AdminMakeFactorMyDefaultV4)

    This endpoint is used to make 2FA factor default.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/admin/users/me/mfa/factor

        method: POST

        tags: ["Users V4"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        factor: (factor) REQUIRED str in form_data

    Responses:
        204: No Content - (Default method changed)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10189: invalid factor | 10192: factor not enabled | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """

    # region fields

    _url: str = "/iam/v4/admin/users/me/mfa/factor"
    _method: str = "POST"
    _consumes: List[str] = ["application/x-www-form-urlencoded"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    factor: str  # REQUIRED in [form_data]

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
        if hasattr(self, "factor"):
            result["factor"] = self.factor
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_factor(self, value: str) -> AdminMakeFactorMyDefaultV4:
        self.factor = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "factor") and self.factor:
            result["factor"] = str(self.factor)
        elif include_empty:
            result["factor"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[None, Union[None, HttpResponse, RestErrorResponse]]:
        """Parse the given response.

        204: No Content - (Default method changed)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10189: invalid factor | 10192: factor not enabled | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

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
        factor: str,
    ) -> AdminMakeFactorMyDefaultV4:
        instance = cls()
        instance.factor = factor
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AdminMakeFactorMyDefaultV4:
        instance = cls()
        if "factor" in dict_ and dict_["factor"] is not None:
            instance.factor = str(dict_["factor"])
        elif include_empty:
            instance.factor = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "factor": "factor",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "factor": True,
        }

    # endregion static methods
