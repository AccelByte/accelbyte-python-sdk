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
from .....core import StrEnum

from ...models import OauthmodelTokenResponseV3
from ...models import RestErrorResponse


class NativePlatformEnum(StrEnum):
    EPICGAMES = "epicgames"
    STEAM = "steam"


class SimultaneousLoginV3(Operation):
    """Simultaneous login (SimultaneousLoginV3)

    # This endpoint is in ALPHA, avoid using this endpoint fow now, reach out to AB support for inquiries

    Simultaneous login flow.

    The primary goals of this project are to entitle players to authenticate on a native PC platform(Steam/Epic) and the PlayStation platform,
    link their accounts, and provide support for platform sync with a valid 3rd platform access token.

    ## Given a valid native ticket and empty simultaneous ticket, these cases will be failed
    - Native ticket's account is not linked AGS account yet
    - Native ticket's account is linked AGS account, but AGS account is not linked simultaneous platform yet
    - Native ticket's account is linked AGS account, AGS account is linked simultaneous platform but there is no available simultaneous token.(only if this platform is expected to store the platform token)

    ## Given a valid native ticket and empty simultaneous ticket, this case will be success
    - Native ticket's account already linked AGS account, this AGS account already linked simultaneous platform. There is valid simultaneous token.(this is required only when this simultaneous is expected to cache platform token)

    ## Given a valid native ticket token and valid simultaneous ticket, these cases will be failed
    #### Native ticket's account is already linked with AGS account
    - Native linked AGS account is linked this simultaneous platform but is different with simultaneous ticket's account
    - Native linked AGS account is not linked with simultaneous but has a linking history with simultaneous platform and it is different with simultaneous ticket's account
    #### Native ticket's account is not linked with AGS account and Simultaneous ticket's account is already linked wth AGS account
    - Simultaneous linked AGS account is linked this native platform but is different with native ticket's account
    - Simultaneous linked AGS account is not linked with native but has a linking history with native platform and it is different with native ticket's account

    ## Given a valid native ticket and valid simultaneous ticket, these cases will be success
    - Native ticket's account & Simultaneous ticket's account are both not linked to AGS account yet
    - Native ticket's account & Simultaneous ticket's account are already linked to same AGS account

    Properties:
        url: /iam/v3/oauth/simultaneousLogin

        method: POST

        tags: ["OAuth2.0"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        simultaneous_platform: (simultaneousPlatform) OPTIONAL str in form_data

        simultaneous_ticket: (simultaneousTicket) OPTIONAL str in form_data

        native_platform: (nativePlatform) REQUIRED Union[str, NativePlatformEnum] in form_data

        native_platform_ticket: (nativePlatformTicket) REQUIRED str in form_data

    Responses:
        200: OK - OauthmodelTokenResponseV3 (Token returned.)

        400: Bad Request - RestErrorResponse (10216: Native ticket is required)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        409: Conflict - RestErrorResponse (10215: Simultaneous ticket is required | 10220: Native ticket's account linked AGS account is different with the one which simultaneous ticket's linked to | 10219: Native ticket's account linked AGS is already linked simultaneous but different with the input simultaneous ticket's | 10217: Native ticket's account linked AGS account has different linking history with input simultaneous ticket's | 10221: Simultaneous ticket's account linked AGS is already linked native but different with the input native ticket's | 10218: Simultaneous ticket's account linked AGS account has different linking history with input native ticket's)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """

    # region fields

    _url: str = "/iam/v3/oauth/simultaneousLogin"
    _method: str = "POST"
    _consumes: List[str] = ["application/x-www-form-urlencoded"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    simultaneous_platform: str  # OPTIONAL in [form_data]
    simultaneous_ticket: str  # OPTIONAL in [form_data]
    native_platform: Union[str, NativePlatformEnum]  # REQUIRED in [form_data]
    native_platform_ticket: str  # REQUIRED in [form_data]

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
        if hasattr(self, "simultaneous_platform"):
            result["simultaneousPlatform"] = self.simultaneous_platform
        if hasattr(self, "simultaneous_ticket"):
            result["simultaneousTicket"] = self.simultaneous_ticket
        if hasattr(self, "native_platform"):
            result["nativePlatform"] = self.native_platform
        if hasattr(self, "native_platform_ticket"):
            result["nativePlatformTicket"] = self.native_platform_ticket
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_simultaneous_platform(self, value: str) -> SimultaneousLoginV3:
        self.simultaneous_platform = value
        return self

    def with_simultaneous_ticket(self, value: str) -> SimultaneousLoginV3:
        self.simultaneous_ticket = value
        return self

    def with_native_platform(
        self, value: Union[str, NativePlatformEnum]
    ) -> SimultaneousLoginV3:
        self.native_platform = value
        return self

    def with_native_platform_ticket(self, value: str) -> SimultaneousLoginV3:
        self.native_platform_ticket = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "simultaneous_platform") and self.simultaneous_platform:
            result["simultaneousPlatform"] = str(self.simultaneous_platform)
        elif include_empty:
            result["simultaneousPlatform"] = ""
        if hasattr(self, "simultaneous_ticket") and self.simultaneous_ticket:
            result["simultaneousTicket"] = str(self.simultaneous_ticket)
        elif include_empty:
            result["simultaneousTicket"] = ""
        if hasattr(self, "native_platform") and self.native_platform:
            result["nativePlatform"] = str(self.native_platform)
        elif include_empty:
            result["nativePlatform"] = Union[str, NativePlatformEnum]()
        if hasattr(self, "native_platform_ticket") and self.native_platform_ticket:
            result["nativePlatformTicket"] = str(self.native_platform_ticket)
        elif include_empty:
            result["nativePlatformTicket"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, OauthmodelTokenResponseV3],
        Union[None, HttpResponse, RestErrorResponse],
    ]:
        """Parse the given response.

        200: OK - OauthmodelTokenResponseV3 (Token returned.)

        400: Bad Request - RestErrorResponse (10216: Native ticket is required)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        409: Conflict - RestErrorResponse (10215: Simultaneous ticket is required | 10220: Native ticket's account linked AGS account is different with the one which simultaneous ticket's linked to | 10219: Native ticket's account linked AGS is already linked simultaneous but different with the input simultaneous ticket's | 10217: Native ticket's account linked AGS account has different linking history with input simultaneous ticket's | 10221: Simultaneous ticket's account linked AGS is already linked native but different with the input native ticket's | 10218: Simultaneous ticket's account linked AGS account has different linking history with input native ticket's)

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
            return OauthmodelTokenResponseV3.create_from_dict(content), None
        if code == 400:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 401:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 409:
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
        native_platform: Union[str, NativePlatformEnum],
        native_platform_ticket: str,
        simultaneous_platform: Optional[str] = None,
        simultaneous_ticket: Optional[str] = None,
        **kwargs,
    ) -> SimultaneousLoginV3:
        instance = cls()
        instance.native_platform = native_platform
        instance.native_platform_ticket = native_platform_ticket
        if simultaneous_platform is not None:
            instance.simultaneous_platform = simultaneous_platform
        if simultaneous_ticket is not None:
            instance.simultaneous_ticket = simultaneous_ticket
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> SimultaneousLoginV3:
        instance = cls()
        if (
            "simultaneousPlatform" in dict_
            and dict_["simultaneousPlatform"] is not None
        ):
            instance.simultaneous_platform = str(dict_["simultaneousPlatform"])
        elif include_empty:
            instance.simultaneous_platform = ""
        if "simultaneousTicket" in dict_ and dict_["simultaneousTicket"] is not None:
            instance.simultaneous_ticket = str(dict_["simultaneousTicket"])
        elif include_empty:
            instance.simultaneous_ticket = ""
        if "nativePlatform" in dict_ and dict_["nativePlatform"] is not None:
            instance.native_platform = str(dict_["nativePlatform"])
        elif include_empty:
            instance.native_platform = Union[str, NativePlatformEnum]()
        if (
            "nativePlatformTicket" in dict_
            and dict_["nativePlatformTicket"] is not None
        ):
            instance.native_platform_ticket = str(dict_["nativePlatformTicket"])
        elif include_empty:
            instance.native_platform_ticket = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "simultaneousPlatform": "simultaneous_platform",
            "simultaneousTicket": "simultaneous_ticket",
            "nativePlatform": "native_platform",
            "nativePlatformTicket": "native_platform_ticket",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "simultaneousPlatform": False,
            "simultaneousTicket": False,
            "nativePlatform": True,
            "nativePlatformTicket": True,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "nativePlatform": ["epicgames", "steam"],  # in form_data
        }

    # endregion static methods
