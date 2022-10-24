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

from ...models import OauthmodelTokenResponseV3


class GenerateTokenByNewHeadlessAccountV3(Operation):
    """Create headless account and response token (GenerateTokenByNewHeadlessAccountV3)

    This endpoint is being used to create headless account after 3rd platform authenticated, and response token .
    The 'linkingToken' in request body is received from "/platforms/{platformId}/token"
    when 3rd platform account is not linked to justice account yet.'

    Properties:
        url: /iam/v3/headless/token

        method: POST

        tags: ["OAuth2.0 - Extension"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        extend_exp: (extend_exp) OPTIONAL bool in form_data

        linking_token: (linkingToken) REQUIRED str in form_data

    Responses:
        200: OK - OauthmodelTokenResponseV3 (Succeed to create headless account and response token info.)
    """

    # region fields

    _url: str = "/iam/v3/headless/token"
    _method: str = "POST"
    _consumes: List[str] = ["application/x-www-form-urlencoded"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    extend_exp: bool  # OPTIONAL in [form_data]
    linking_token: str  # REQUIRED in [form_data]

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
        if hasattr(self, "extend_exp"):
            result["extend_exp"] = self.extend_exp
        if hasattr(self, "linking_token"):
            result["linkingToken"] = self.linking_token
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_extend_exp(self, value: bool) -> GenerateTokenByNewHeadlessAccountV3:
        self.extend_exp = value
        return self

    def with_linking_token(self, value: str) -> GenerateTokenByNewHeadlessAccountV3:
        self.linking_token = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "extend_exp") and self.extend_exp:
            result["extend_exp"] = bool(self.extend_exp)
        elif include_empty:
            result["extend_exp"] = False
        if hasattr(self, "linking_token") and self.linking_token:
            result["linkingToken"] = str(self.linking_token)
        elif include_empty:
            result["linkingToken"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[Union[None, OauthmodelTokenResponseV3], Union[None, HttpResponse]]:
        """Parse the given response.

        200: OK - OauthmodelTokenResponseV3 (Succeed to create headless account and response token info.)

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

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        linking_token: str,
        extend_exp: Optional[bool] = None,
    ) -> GenerateTokenByNewHeadlessAccountV3:
        instance = cls()
        instance.linking_token = linking_token
        if extend_exp is not None:
            instance.extend_exp = extend_exp
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> GenerateTokenByNewHeadlessAccountV3:
        instance = cls()
        if "extend_exp" in dict_ and dict_["extend_exp"] is not None:
            instance.extend_exp = bool(dict_["extend_exp"])
        elif include_empty:
            instance.extend_exp = False
        if "linkingToken" in dict_ and dict_["linkingToken"] is not None:
            instance.linking_token = str(dict_["linkingToken"])
        elif include_empty:
            instance.linking_token = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "extend_exp": "extend_exp",
            "linkingToken": "linking_token",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "extend_exp": False,
            "linkingToken": True,
        }

    # endregion static methods
