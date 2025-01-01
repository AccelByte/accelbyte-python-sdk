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


class UpgradeAndAuthenticateForwardV3(Operation):
    """Handle the forward for account upgrade (UpgradeAndAuthenticateForwardV3)

    In login website based flow, after account upgraded, we need this API to handle the forward

    Properties:
        url: /iam/v3/upgrade/forward

        method: POST

        tags: ["OAuth2.0 - Extension"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        client_id: (client_id) REQUIRED str in form_data

        upgrade_success_token: (upgrade_success_token) REQUIRED str in form_data

    Responses:
        302: Found - (Found. Redirect to clients redirection URL with code)
    """

    # region fields

    _url: str = "/iam/v3/upgrade/forward"
    _method: str = "POST"
    _consumes: List[str] = ["application/x-www-form-urlencoded"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    client_id: str  # REQUIRED in [form_data]
    upgrade_success_token: str  # REQUIRED in [form_data]

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
            result["client_id"] = self.client_id
        if hasattr(self, "upgrade_success_token"):
            result["upgrade_success_token"] = self.upgrade_success_token
        return result

    # endregion get_x_params methods

    # region is/has methods

    # noinspection PyMethodMayBeStatic
    def has_redirects(self) -> bool:
        """Returns True if this operation has redirects, otherwise False.

        302: Found - (Found. Redirect to clients redirection URL with code)
        """
        return True

    # endregion is/has methods

    # region with_x methods

    def with_client_id(self, value: str) -> UpgradeAndAuthenticateForwardV3:
        self.client_id = value
        return self

    def with_upgrade_success_token(self, value: str) -> UpgradeAndAuthenticateForwardV3:
        self.upgrade_success_token = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "client_id") and self.client_id:
            result["client_id"] = str(self.client_id)
        elif include_empty:
            result["client_id"] = ""
        if hasattr(self, "upgrade_success_token") and self.upgrade_success_token:
            result["upgrade_success_token"] = str(self.upgrade_success_token)
        elif include_empty:
            result["upgrade_success_token"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[Union[None, HttpResponse], Union[None, HttpResponse]]:
        """Parse the given response.

        302: Found - (Found. Redirect to clients redirection URL with code)

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
        cls, client_id: str, upgrade_success_token: str, **kwargs
    ) -> UpgradeAndAuthenticateForwardV3:
        instance = cls()
        instance.client_id = client_id
        instance.upgrade_success_token = upgrade_success_token
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> UpgradeAndAuthenticateForwardV3:
        instance = cls()
        if "client_id" in dict_ and dict_["client_id"] is not None:
            instance.client_id = str(dict_["client_id"])
        elif include_empty:
            instance.client_id = ""
        if (
            "upgrade_success_token" in dict_
            and dict_["upgrade_success_token"] is not None
        ):
            instance.upgrade_success_token = str(dict_["upgrade_success_token"])
        elif include_empty:
            instance.upgrade_success_token = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "client_id": "client_id",
            "upgrade_success_token": "upgrade_success_token",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "client_id": True,
            "upgrade_success_token": True,
        }

    # endregion static methods
