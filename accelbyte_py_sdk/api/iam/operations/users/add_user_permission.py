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

from ...models import ModelUpdatePermissionScheduleRequest
from ...models import RestErrorResponse


class AddUserPermission(Operation):
    """Add User Permission (AddUserPermission)

    ## The endpoint is going to be deprecated


    Endpoint migration guide




      * Substitute endpoint: /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions [POST]







    Required permission 'ADMIN:NAMESPACE:{namespace}:PERMISSION:USER:{userId} [UPDATE]'




    This endpoint will update existing permission (bitwise OR the action) if found one with same resource, otherwise it will append a new permission




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
        - ADMIN:NAMESPACE:{namespace}:PERMISSION:USER:{userId} [UPDATE]

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action}

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUpdatePermissionScheduleRequest in body

        action: (action) REQUIRED int in path

        namespace: (namespace) REQUIRED str in path

        resource: (resource) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """

    # region fields

    _url: str = (
        "/iam/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action}"
    )
    _method: str = "POST"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    body: ModelUpdatePermissionScheduleRequest  # REQUIRED in [body]
    action: int  # REQUIRED in [path]
    namespace: str  # REQUIRED in [path]
    resource: str  # REQUIRED in [path]
    user_id: str  # REQUIRED in [path]

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
        if hasattr(self, "action"):
            result["action"] = self.action
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "resource"):
            result["resource"] = self.resource
        if hasattr(self, "user_id"):
            result["userId"] = self.user_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_body(
        self, value: ModelUpdatePermissionScheduleRequest
    ) -> AddUserPermission:
        self.body = value
        return self

    def with_action(self, value: int) -> AddUserPermission:
        self.action = value
        return self

    def with_namespace(self, value: str) -> AddUserPermission:
        self.namespace = value
        return self

    def with_resource(self, value: str) -> AddUserPermission:
        self.resource = value
        return self

    def with_user_id(self, value: str) -> AddUserPermission:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = ModelUpdatePermissionScheduleRequest()
        if hasattr(self, "action") and self.action:
            result["action"] = int(self.action)
        elif include_empty:
            result["action"] = 0
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "resource") and self.resource:
            result["resource"] = str(self.resource)
        elif include_empty:
            result["resource"] = ""
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[None, Union[None, HttpResponse, RestErrorResponse]]:
        """Parse the given response.

        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)

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
            return None, RestErrorResponse.create_from_dict(content)
        if code == 401:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 403:
            return None, RestErrorResponse.create_from_dict(content)
        if code == 404:
            return None, HttpResponse.create(code, "Not Found")

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        body: ModelUpdatePermissionScheduleRequest,
        action: int,
        namespace: str,
        resource: str,
        user_id: str,
    ) -> AddUserPermission:
        instance = cls()
        instance.body = body
        instance.action = action
        instance.namespace = namespace
        instance.resource = resource
        instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AddUserPermission:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = ModelUpdatePermissionScheduleRequest.create_from_dict(
                dict_["body"], include_empty=include_empty
            )
        elif include_empty:
            instance.body = ModelUpdatePermissionScheduleRequest()
        if "action" in dict_ and dict_["action"] is not None:
            instance.action = int(dict_["action"])
        elif include_empty:
            instance.action = 0
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "resource" in dict_ and dict_["resource"] is not None:
            instance.resource = str(dict_["resource"])
        elif include_empty:
            instance.resource = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "action": "action",
            "namespace": "namespace",
            "resource": "resource",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "body": True,
            "action": True,
            "namespace": True,
            "resource": True,
            "userId": True,
        }

    # endregion static methods
