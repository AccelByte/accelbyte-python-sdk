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
from .....core import deprecated

from ...models import OauthapiRevocationList


class GetRevocationList(Operation):
    """OAuth2 revocation list API (GetRevocationList)

    ## The endpoint is going to be deprecated




    This endpoint will return a list of revoked users and revoked tokens. List of revoked tokens in bloom filter format. This endpoint requires all requests to have Authorization header set with Basic access authentication constructed from client id and client secret.




    The bloom filter uses MurmurHash3 algorithm for hashing the values


    Endpoint migration guide




      * Substitute endpoint: /iam/v3/oauth/revocationlist [GET]

    Properties:
        url: /iam/oauth/revocationlist

        method: GET

        tags: ["OAuth"]

        consumes: [""]

        produces: ["application/json"]

        securities: [BASIC_AUTH]

    Responses:
        200: OK - OauthapiRevocationList (revocation list returned)

        401: Unauthorized - (Invalid basic auth header)
    """

    # region fields

    _url: str = "/iam/oauth/revocationlist"
    _method: str = "GET"
    _consumes: List[str] = [""]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BASIC_AUTH"]]
    _location_query: str = None

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
        return {}

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[Union[None, OauthapiRevocationList], Union[None, HttpResponse]]:
        """Parse the given response.

        200: OK - OauthapiRevocationList (revocation list returned)

        401: Unauthorized - (Invalid basic auth header)

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
            return OauthapiRevocationList.create_from_dict(content), None
        if code == 401:
            return None, HttpResponse.create(code, "Unauthorized")

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
    ) -> GetRevocationList:
        instance = cls()
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> GetRevocationList:
        instance = cls()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {}

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {}

    # endregion static methods
