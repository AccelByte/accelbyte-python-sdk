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

from ...models import ClientmodelListClientPermissionSet
from ...models import RestErrorResponse


class AdminListClientAvailablePermissions(Operation):
    """List Client available permissions (AdminListClientAvailablePermissions)

    List Client available permissions

    Properties:
        url: /iam/v3/admin/clientConfig/permissions

        method: GET

        tags: ["Clients Config V3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        exclude_permissions: (excludePermissions) OPTIONAL bool in query

    Responses:
        200: OK - ClientmodelListClientPermissionSet (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)
    """

    # region fields

    _url: str = "/iam/v3/admin/clientConfig/permissions"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    exclude_permissions: bool  # OPTIONAL in [query]

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
        if hasattr(self, "exclude_permissions"):
            result["excludePermissions"] = self.exclude_permissions
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_exclude_permissions(
        self, value: bool
    ) -> AdminListClientAvailablePermissions:
        self.exclude_permissions = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "exclude_permissions") and self.exclude_permissions:
            result["excludePermissions"] = bool(self.exclude_permissions)
        elif include_empty:
            result["excludePermissions"] = False
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ClientmodelListClientPermissionSet],
        Union[None, HttpResponse, RestErrorResponse],
    ]:
        """Parse the given response.

        200: OK - ClientmodelListClientPermissionSet (OK)

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
            return ClientmodelListClientPermissionSet.create_from_dict(content), None
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
        cls, exclude_permissions: Optional[bool] = None, **kwargs
    ) -> AdminListClientAvailablePermissions:
        instance = cls()
        if exclude_permissions is not None:
            instance.exclude_permissions = exclude_permissions
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AdminListClientAvailablePermissions:
        instance = cls()
        if "excludePermissions" in dict_ and dict_["excludePermissions"] is not None:
            instance.exclude_permissions = bool(dict_["excludePermissions"])
        elif include_empty:
            instance.exclude_permissions = False
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "excludePermissions": "exclude_permissions",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "excludePermissions": False,
        }

    # endregion static methods
