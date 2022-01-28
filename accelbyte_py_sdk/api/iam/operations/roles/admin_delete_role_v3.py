# justice-iam-service (5.1.1)

# template file: justice_py_sdk_codegen/__main__.py

# Copyright (c) 2018 - 2022 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HttpResponse

from ...models import RestapiErrorResponse


class AdminDeleteRoleV3(Operation):
    """Delete Role (AdminDeleteRoleV3)

    Required permission ''ADMIN:ROLE [DELETE]'' <br>action code: 10403


    Properties:
        url: /iam/v3/admin/roles/{roleId}

        method: DELETE

        tags: ["Roles"]

        consumes: []

        produces: ["application/json"]

        security_type: bearer

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

    _url: str = "/iam/v3/admin/roles/{roleId}"
    _method: str = "DELETE"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _security_type: Optional[str] = "bearer"
    _location_query: str = None

    role_id: str                                                                                   # REQUIRED in [path]

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
    def security_type(self) -> Optional[str]:
        return self._security_type

    @property
    def location_query(self) -> str:
        return self._location_query

    # endregion properties

    # region get methods

    def get_full_url(self, base_url: Union[None, str] = None, collection_format_map: Optional[Dict[str, Optional[str]]] = None) -> str:
        return self.create_full_url(
            url=self.url,
            base_url=base_url,
            path_params=self.get_path_params(),
        )

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "role_id",
        ]

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "path": self.get_path_params(),
        }

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "role_id"):
            result["roleId"] = self.role_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "role_id") or self.role_id is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_role_id(self, value: str) -> AdminDeleteRoleV3:
        self.role_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "role_id") and self.role_id:
            result["roleId"] = str(self.role_id)
        elif include_empty:
            result["roleId"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[None, Union[None, HttpResponse, RestapiErrorResponse]]:
        """Parse the given response.

        204: No Content - (Operation succeeded)

        400: Bad Request - RestapiErrorResponse (20002: validation error)

        401: Unauthorized - RestapiErrorResponse (20001: unauthorized access)

        403: Forbidden - RestapiErrorResponse (20013: insufficient permissions)

        404: Not Found - RestapiErrorResponse (10456: role not found)

        500: Internal Server Error - (Internal Server Error)
        """
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
        was_handled, undocumented_response = HttpResponse.try_create_undocumented_response(code, content)
        if was_handled:
            if undocumented_response.is_no_content():
                return None, None
            return None, undocumented_response
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        role_id: str,
    ) -> AdminDeleteRoleV3:
        instance = cls()
        instance.role_id = role_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> AdminDeleteRoleV3:
        instance = cls()
        if "roleId" in dict_ and dict_["roleId"] is not None:
            instance.role_id = str(dict_["roleId"])
        elif include_empty:
            instance.role_id = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "roleId": "role_id",
        }

    # endregion static methods
