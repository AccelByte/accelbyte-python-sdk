# justice-iam-service (5.0.0)

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

from ...models import AccountcommonPermissionsV3
from ...models import ModelRoleV4Response
from ...models import RestErrorResponse


class AdminUpdateRolePermissionsV4(Operation):
    """Update Role Permissions (AdminUpdateRolePermissionsV4)

    <p>Required permission 'ADMIN:ROLE [UPDATE]'</p> <p>This endpoint will REPLACE
    role's permissions with the ones defined in body</p> <br>action code:
    10405<br> <p>Schedule contains cron string or date range (both are UTC, also
    in cron syntax) to indicate when a permission and action are in effect.</p>
    <p>Both schedule types accepts quartz compatible cron syntax e.g. * * * * * *
    *.</p> <p>In ranged schedule, first element will be start date, and second one
    will be end date</p> <p>If schedule is set, the scheduled action must be valid
    too, that is between 1 to 15, inclusive</p> <p>Syntax reference</p>
    <p>Fields:</p> <ol> <li>Seconds: 0-59 * / , -</li> <li>Minutes: 0-59 * / ,
    -</li> <li>Hours: 0-23 * / , -</li> <li>Day of month: 1-31 * / , - L W</li>
    <li>Month: 1-12 JAN-DEC * / , -</li> <li>Day of week: 0-6 SUN-SAT * / , - L
    #</li> <li>Year: 1970-2099 * / , -</li> </ol> <p>Special characters:</p> <ol>
    <li>*: all values in the fields, e.g. * in seconds fields indicates every
    second</li> <li>/: increments of ranges, e.g. 3-59/15 in the minute field
    indicate the third minute of the hour and every 15 minutes thereafter</li>
    <li>,: separate items of a list, e.g. MON,WED,FRI in day of week</li> <li>-:
    range, e.g. 2010-2018 indicates every year between 2010 and 2018,
    inclusive</li> <li>L: last, e.g. When used in the day-of-week field, it allows
    you to specify constructs such as "the last Friday" (5L) of a given month. In
    the day-of-month field, it specifies the last day of the month.</li> <li>W:
    business day, e.g. if you were to specify 15W as the value for the day-of-
    month field, the meaning is: "the nearest business day to the 15th of the
    month."</li> <li>#: must be followed by a number between one and five. It
    allows you to specify constructs such as "the second Friday" of a given
    month.</li> </ol>


    Properties:
        url: /iam/v4/admin/roles/{roleId}/permissions

        method: PUT

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        security_type: bearer

        body: (body) REQUIRED AccountcommonPermissionsV3 in body

        role_id: (roleId) REQUIRED str in path

    Responses:
        200: OK - ModelRoleV4Response (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10456: role not found)
    """

    # region fields

    _url: str = "/iam/v4/admin/roles/{roleId}/permissions"
    _method: str = "PUT"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _security_type: Optional[str] = "bearer"
    _location_query: str = None

    body: AccountcommonPermissionsV3                                                               # REQUIRED in [body]
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
            "body",
            "role_id",
        ]

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "body": self.get_body_params(),
            "path": self.get_path_params(),
        }

    def get_body_params(self) -> Any:
        if not hasattr(self, "body") or self.body is None:
            return None
        return self.body.to_dict()

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "role_id"):
            result["roleId"] = self.role_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "body") or self.body is None:
            return False
        if not hasattr(self, "role_id") or self.role_id is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_body(self, value: AccountcommonPermissionsV3) -> AdminUpdateRolePermissionsV4:
        self.body = value
        return self

    def with_role_id(self, value: str) -> AdminUpdateRolePermissionsV4:
        self.role_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = AccountcommonPermissionsV3()
        if hasattr(self, "role_id") and self.role_id:
            result["roleId"] = str(self.role_id)
        elif include_empty:
            result["roleId"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, ModelRoleV4Response], Union[None, RestErrorResponse]]:
        """Parse the given response.

        200: OK - ModelRoleV4Response (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10456: role not found)
        """
        if code == 200:
            return ModelRoleV4Response.create_from_dict(content), None
        if code == 400:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 401:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 403:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 404:
            return None, RestErrorResponse.create_from_dict(content)
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
        body: AccountcommonPermissionsV3,
        role_id: str,
    ) -> AdminUpdateRolePermissionsV4:
        instance = cls()
        instance.body = body
        instance.role_id = role_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> AdminUpdateRolePermissionsV4:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = AccountcommonPermissionsV3.create_from_dict(dict_["body"], include_empty=include_empty)
        elif include_empty:
            instance.body = AccountcommonPermissionsV3()
        if "roleId" in dict_ and dict_["roleId"] is not None:
            instance.role_id = str(dict_["roleId"])
        elif include_empty:
            instance.role_id = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "roleId": "role_id",
        }

    # endregion static methods
