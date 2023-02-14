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

from ...models import AccountcommonPermissionsV3
from ...models import ModelRoleV4Response
from ...models import RestErrorResponse


class AdminUpdateRolePermissionsV4(Operation):
    """Update Role Permissions (AdminUpdateRolePermissionsV4)

    Required permission 'ADMIN:ROLE [UPDATE]'




    This endpoint will REPLACE role's permissions with the ones defined in body



    action code: 10405



    Schedule contains cron string or date range (both are UTC, also in cron syntax) to indicate when a permission and action are in effect.




    Both schedule types accepts quartz compatible cron syntax e.g. * * * * * * *.




    In ranged schedule, first element will be start date, and second one will be end date




    If schedule is set, the scheduled action must be valid too, that is between 1 to 15, inclusive




    Syntax reference




    Fields:






      1. Seconds: 0-59 * / , -


      2. Minutes: 0-59 * / , -


      3. Hours: 0-23 * / , -


      4. Day of month: 1-31 * / , - L W


      5. Month: 1-12 JAN-DEC * / , -


      6. Day of week: 0-6 SUN-SAT * / , - L #


      7. Year: 1970-2099 * / , -





    Special characters:






      1. *: all values in the fields, e.g. * in seconds fields indicates every second


      2. /: increments of ranges, e.g. 3-59/15 in the minute field indicate the third minute of the hour and every 15 minutes thereafter


      3. ,: separate items of a list, e.g. MON,WED,FRI in day of week


      4. -: range, e.g. 2010-2018 indicates every year between 2010 and 2018, inclusive


      5. L: last, e.g. When used in the day-of-week field, it allows you to specify constructs such as "the last Friday" (5L) of a given month. In the day-of-month field, it specifies the last day of the month.


      6. W: business day, e.g. if you were to specify 15W as the value for the day-of-month field, the meaning is: "the nearest business day to the 15th of the month."


      7. #: must be followed by a number between one and five. It allows you to specify constructs such as "the second Friday" of a given month.

    Required Permission(s):
        - ADMIN:ROLE [UPDATE]

    Properties:
        url: /iam/v4/admin/roles/{roleId}/permissions

        method: PUT

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

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
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    body: AccountcommonPermissionsV3  # REQUIRED in [body]
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

    # endregion is/has methods

    # region with_x methods

    def with_body(
        self, value: AccountcommonPermissionsV3
    ) -> AdminUpdateRolePermissionsV4:
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
            result["roleId"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ModelRoleV4Response], Union[None, HttpResponse, RestErrorResponse]
    ]:
        """Parse the given response.

        200: OK - ModelRoleV4Response (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10456: role not found)

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
            return ModelRoleV4Response.create_from_dict(content), None
        if code == 400:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 401:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 403:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 404:
            return None, RestErrorResponse.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

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
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AdminUpdateRolePermissionsV4:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = AccountcommonPermissionsV3.create_from_dict(
                dict_["body"], include_empty=include_empty
            )
        elif include_empty:
            instance.body = AccountcommonPermissionsV3()
        if "roleId" in dict_ and dict_["roleId"] is not None:
            instance.role_id = str(dict_["roleId"])
        elif include_empty:
            instance.role_id = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "roleId": "role_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "body": True,
            "roleId": True,
        }

    # endregion static methods
