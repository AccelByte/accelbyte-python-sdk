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

from ...models import RestapiErrorResponse


class AdminDeleteRolePermissionV3(Operation):
    """Delete Role Permission (AdminDeleteRolePermissionV3)

    Required permission 'ADMIN:ROLE [UPDATE]'
    action code: 10406

    Required Permission(s):
        - ADMIN:ROLE [UPDATE]

    Properties:
        url: /iam/v3/admin/roles/{roleId}/permissions/{resource}/{action}

        method: DELETE

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        action: (action) REQUIRED int in path

        resource: (resource) REQUIRED str in path

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestapiErrorResponse (20002: validation error)

        401: Unauthorized - RestapiErrorResponse (20001: unauthorized access)

        403: Forbidden - RestapiErrorResponse (20013: insufficient permissions)

        404: Not Found - RestapiErrorResponse (10456: role not found)

        500: Internal Server Error - (Internal Server Error)
    """

    # region fields

    _url: str = "/iam/v3/admin/roles/{roleId}/permissions/{resource}/{action}"
    _method: str = "DELETE"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    action: int  # REQUIRED in [path]
    resource: str  # REQUIRED in [path]
    role_id: str  # REQUIRED in [path]

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
            "path": self.get_path_params(),
        }

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "action"):
            result["action"] = self.action
        if hasattr(self, "resource"):
            result["resource"] = self.resource
        if hasattr(self, "role_id"):
            result["roleId"] = self.role_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_action(self, value: int) -> AdminDeleteRolePermissionV3:
        self.action = value
        return self

    def with_resource(self, value: str) -> AdminDeleteRolePermissionV3:
        self.resource = value
        return self

    def with_role_id(self, value: str) -> AdminDeleteRolePermissionV3:
        self.role_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "action") and self.action:
            result["action"] = int(self.action)
        elif include_empty:
            result["action"] = 0
        if hasattr(self, "resource") and self.resource:
            result["resource"] = str(self.resource)
        elif include_empty:
            result["resource"] = ""
        if hasattr(self, "role_id") and self.role_id:
            result["roleId"] = str(self.role_id)
        elif include_empty:
            result["roleId"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[None, Union[None, HttpResponse, RestapiErrorResponse]]:
        """Parse the given response.

        204: No Content - (Operation succeeded)

        400: Bad Request - RestapiErrorResponse (20002: validation error)

        401: Unauthorized - RestapiErrorResponse (20001: unauthorized access)

        403: Forbidden - RestapiErrorResponse (20013: insufficient permissions)

        404: Not Found - RestapiErrorResponse (10456: role not found)

        500: Internal Server Error - (Internal Server Error)

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
            return None, RestapiErrorResponse.create_from_dict(content)
        if code == 401:
            return None, RestapiErrorResponse.create_from_dict(content)
        if code == 403:
            return None, RestapiErrorResponse.create_from_dict(content)
        if code == 404:
            return None, RestapiErrorResponse.create_from_dict(content)
        if code == 500:
            return None, HttpResponse.create(code, "Internal Server Error")

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        action: int,
        resource: str,
        role_id: str,
    ) -> AdminDeleteRolePermissionV3:
        instance = cls()
        instance.action = action
        instance.resource = resource
        instance.role_id = role_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AdminDeleteRolePermissionV3:
        instance = cls()
        if "action" in dict_ and dict_["action"] is not None:
            instance.action = int(dict_["action"])
        elif include_empty:
            instance.action = 0
        if "resource" in dict_ and dict_["resource"] is not None:
            instance.resource = str(dict_["resource"])
        elif include_empty:
            instance.resource = ""
        if "roleId" in dict_ and dict_["roleId"] is not None:
            instance.role_id = str(dict_["roleId"])
        elif include_empty:
            instance.role_id = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "action": "action",
            "resource": "resource",
            "roleId": "role_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "action": True,
            "resource": True,
            "roleId": True,
        }

    # endregion static methods
