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

from ...models import ModelUserResponseV3
from ...models import RestErrorResponse


class PublicGetMyUserV3(Operation):
    """Get My User (PublicGetMyUserV3)

    Get my user data

    __Supported 3rd platforms:__

    * __PSN(ps4web, ps4, ps5)__
    * account id
    * display name
    * avatar
    * __Xbox(live, xblweb)__
    * xuid or pxuid
    * display name
    * __Steam(steam, steamopenid)__
    * steam id
    * display name
    * avatar
    * __EpicGames(epicgames)__
    * epic account id
    * display name

    action code : 10147

    Properties:
        url: /iam/v3/public/users/me

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        include_all_platforms: (includeAllPlatforms) OPTIONAL bool in query

    Responses:
        200: OK - ModelUserResponseV3 (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """

    # region fields

    _url: str = "/iam/v3/public/users/me"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    include_all_platforms: bool  # OPTIONAL in [query]

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
            "query": self.get_query_params(),
        }

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "include_all_platforms"):
            result["includeAllPlatforms"] = self.include_all_platforms
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_include_all_platforms(self, value: bool) -> PublicGetMyUserV3:
        self.include_all_platforms = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "include_all_platforms") and self.include_all_platforms:
            result["includeAllPlatforms"] = bool(self.include_all_platforms)
        elif include_empty:
            result["includeAllPlatforms"] = False
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ModelUserResponseV3], Union[None, HttpResponse, RestErrorResponse]
    ]:
        """Parse the given response.

        200: OK - ModelUserResponseV3 (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

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
            return ModelUserResponseV3.create_from_dict(content), None
        if code == 401:
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
        cls, include_all_platforms: Optional[bool] = None, **kwargs
    ) -> PublicGetMyUserV3:
        instance = cls()
        if include_all_platforms is not None:
            instance.include_all_platforms = include_all_platforms
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PublicGetMyUserV3:
        instance = cls()
        if "includeAllPlatforms" in dict_ and dict_["includeAllPlatforms"] is not None:
            instance.include_all_platforms = bool(dict_["includeAllPlatforms"])
        elif include_empty:
            instance.include_all_platforms = False
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "includeAllPlatforms": "include_all_platforms",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "includeAllPlatforms": False,
        }

    # endregion static methods
