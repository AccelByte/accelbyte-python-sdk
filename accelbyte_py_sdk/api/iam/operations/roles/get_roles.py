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

# AccelByte Cloud Iam Service (5.22.0)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse
from .....core import deprecated

from ...models import ModelRoleResponseWithManagers
from ...models import RestErrorResponse


class GetRoles(Operation):
    """Get Roles (GetRoles)

    ## The endpoint is going to be deprecated


    Required permission 'ROLE [READ]'
    Endpoint migration guide




      * Substitute endpoint: /iam/v3/admin/roles [GET]

    Required Permission(s):
        - ROLE [READ]

    Properties:
        url: /iam/roles

        method: GET

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        is_wildcard: (isWildcard) OPTIONAL str in query

    Responses:
        200: OK - List[ModelRoleResponseWithManagers] (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)
    """

    # region fields

    _url: str = "/iam/roles"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    is_wildcard: str  # OPTIONAL in [query]

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
        if hasattr(self, "is_wildcard"):
            result["isWildcard"] = self.is_wildcard
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_is_wildcard(self, value: str) -> GetRoles:
        self.is_wildcard = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "is_wildcard") and self.is_wildcard:
            result["isWildcard"] = str(self.is_wildcard)
        elif include_empty:
            result["isWildcard"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, List[ModelRoleResponseWithManagers]],
        Union[None, HttpResponse, RestErrorResponse],
    ]:
        """Parse the given response.

        200: OK - List[ModelRoleResponseWithManagers] (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

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
            return [
                ModelRoleResponseWithManagers.create_from_dict(i) for i in content
            ], None
        if code == 401:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 403:
            return None, RestErrorResponse.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        is_wildcard: Optional[str] = None,
    ) -> GetRoles:
        instance = cls()
        if is_wildcard is not None:
            instance.is_wildcard = is_wildcard
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> GetRoles:
        instance = cls()
        if "isWildcard" in dict_ and dict_["isWildcard"] is not None:
            instance.is_wildcard = str(dict_["isWildcard"])
        elif include_empty:
            instance.is_wildcard = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "isWildcard": "is_wildcard",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "isWildcard": False,
        }

    # endregion static methods
