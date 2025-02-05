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

from ...models import AccountUpgradeHeadlessAccountWithVerificationCodeForwardRequestV4


class PublicUpgradeHeadlessWithCodeV4Forward(Operation):
    """Upgrade the headless account and automatically verify the email address if the upgrade succeeds. (PublicUpgradeHeadlessWithCodeV4Forward)

    This is a forward version for code verify.
    The endpoint upgrades a headless account by linking the headless account with the email address, username, and password.
    By upgrading the headless account into a full account, the user could use the email address, username, and password for using Justice IAM.

    The endpoint is a shortcut for upgrading a headless account and verifying the email address in one call.
    In order to get a verification code for the endpoint, please check the [send verification code endpoint](#operations-Users-PublicSendCodeForwardV3).

    This endpoint also have an ability to update user data (if the user data field is specified) right after the upgrade account process is done.

    Properties:
        url: /iam/v4/public/users/me/headless/code/verify/forward

        method: POST

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AccountUpgradeHeadlessAccountWithVerificationCodeForwardRequestV4 in body

    Responses:
        302: Found - (Found. Redirected to login website with result. If validateOnly=true, then the redirection with contain validate result;If validateOnly=false, then the redirection will contain the upgrade result. If upgrade succeed, then the response will contain upgrade_success_token)
    """

    # region fields

    _url: str = "/iam/v4/public/users/me/headless/code/verify/forward"
    _method: str = "POST"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    body: AccountUpgradeHeadlessAccountWithVerificationCodeForwardRequestV4  # REQUIRED in [body]

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
        }

    def get_body_params(self) -> Any:
        if not hasattr(self, "body") or self.body is None:
            return None
        return self.body.to_dict()

    # endregion get_x_params methods

    # region is/has methods

    # noinspection PyMethodMayBeStatic
    def has_redirects(self) -> bool:
        """Returns True if this operation has redirects, otherwise False.

        302: Found - (Found. Redirected to login website with result. If validateOnly=true, then the redirection with contain validate result;If validateOnly=false, then the redirection will contain the upgrade result. If upgrade succeed, then the response will contain upgrade_success_token)
        """
        return True

    # endregion is/has methods

    # region with_x methods

    def with_body(
        self, value: AccountUpgradeHeadlessAccountWithVerificationCodeForwardRequestV4
    ) -> PublicUpgradeHeadlessWithCodeV4Forward:
        self.body = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result[
                "body"
            ] = AccountUpgradeHeadlessAccountWithVerificationCodeForwardRequestV4()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[Union[None, HttpResponse], Union[None, HttpResponse]]:
        """Parse the given response.

        302: Found - (Found. Redirected to login website with result. If validateOnly=true, then the redirection with contain validate result;If validateOnly=false, then the redirection will contain the upgrade result. If upgrade succeed, then the response will contain upgrade_success_token)

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
        body: AccountUpgradeHeadlessAccountWithVerificationCodeForwardRequestV4,
        **kwargs,
    ) -> PublicUpgradeHeadlessWithCodeV4Forward:
        instance = cls()
        instance.body = body
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PublicUpgradeHeadlessWithCodeV4Forward:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = AccountUpgradeHeadlessAccountWithVerificationCodeForwardRequestV4.create_from_dict(
                dict_["body"], include_empty=include_empty
            )
        elif include_empty:
            instance.body = (
                AccountUpgradeHeadlessAccountWithVerificationCodeForwardRequestV4()
            )
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "body": True,
        }

    # endregion static methods
