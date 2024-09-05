# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# pylint: disable=duplicate-code
# pylint: disable=line-too-long
# pylint: disable=missing-function-docstring
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

from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import HeaderStr
from ....core import get_namespace as get_services_namespace
from ....core import run_request
from ....core import run_request_async
from ....core import deprecated
from ....core import same_doc_as

from ..models import AccountcommonPermissions
from ..models import AccountcommonPermissionsV3
from ..models import AccountcommonRole
from ..models import AccountcommonRoleV3
from ..models import ModelAssignUserV4Request
from ..models import ModelAssignedUserV4Response
from ..models import ModelListAssignedUsersV4Response
from ..models import ModelListRoleV4Response
from ..models import ModelRevokeUserV4Request
from ..models import ModelRoleAdminStatusResponse
from ..models import ModelRoleAdminStatusResponseV3
from ..models import ModelRoleCreateRequest
from ..models import ModelRoleCreateV3Request
from ..models import ModelRoleManagersRequest
from ..models import ModelRoleManagersRequestV3
from ..models import ModelRoleManagersResponse
from ..models import ModelRoleManagersResponsesV3
from ..models import ModelRoleMembersRequest
from ..models import ModelRoleMembersRequestV3
from ..models import ModelRoleMembersResponse
from ..models import ModelRoleMembersResponseV3
from ..models import ModelRoleNamesResponseV3
from ..models import ModelRoleResponse
from ..models import ModelRoleResponseV3
from ..models import ModelRoleResponseWithManagers
from ..models import ModelRoleResponseWithManagersAndPaginationV3
from ..models import ModelRoleUpdateRequest
from ..models import ModelRoleUpdateRequestV3
from ..models import ModelRoleV4Request
from ..models import ModelRoleV4Response
from ..models import ModelUpdatePermissionScheduleRequest
from ..models import RestErrorResponse

from ..operations.roles import AddRoleManagers
from ..operations.roles import AddRoleMembers
from ..operations.roles import AddRolePermission
from ..operations.roles import AdminAddRoleManagersV3
from ..operations.roles import AdminAddRoleMembersV3
from ..operations.roles import AdminAddRolePermissionsV3
from ..operations.roles import AdminAddRolePermissionsV4
from ..operations.roles import AdminAssignUserToRoleV4
from ..operations.roles import AdminCreateRoleV3
from ..operations.roles import AdminCreateRoleV4
from ..operations.roles import AdminDeleteRolePermissionV3
from ..operations.roles import AdminDeleteRolePermissionsV3
from ..operations.roles import AdminDeleteRolePermissionsV4
from ..operations.roles import AdminDeleteRoleV3
from ..operations.roles import AdminDeleteRoleV4
from ..operations.roles import AdminGetRoleAdminStatusV3
from ..operations.roles import AdminGetRoleManagersV3
from ..operations.roles import AdminGetRoleMembersV3
from ..operations.roles import AdminGetRoleV3
from ..operations.roles import AdminGetRoleV4
from ..operations.roles import AdminGetRolesV3
from ..operations.roles import AdminGetRolesV4
from ..operations.roles import AdminListAssignedUsersV4
from ..operations.roles import AdminRemoveRoleAdminV3
from ..operations.roles import AdminRemoveRoleManagersV3
from ..operations.roles import AdminRemoveRoleMembersV3
from ..operations.roles import AdminRevokeUserFromRoleV4
from ..operations.roles import AdminUpdateAdminRoleStatusV3
from ..operations.roles import AdminUpdateRolePermissionsV3
from ..operations.roles import AdminUpdateRolePermissionsV4
from ..operations.roles import AdminUpdateRoleV3
from ..operations.roles import AdminUpdateRoleV4
from ..operations.roles import CreateRole
from ..operations.roles import DeleteRole
from ..operations.roles import DeleteRolePermission
from ..operations.roles import GetRole
from ..operations.roles import GetRoleAdminStatus
from ..operations.roles import GetRoleManagers
from ..operations.roles import GetRoleMembers
from ..operations.roles import GetRoles
from ..operations.roles import PublicGetRoleV3
from ..operations.roles import PublicGetRolesV3
from ..operations.roles import RemoveRoleAdmin
from ..operations.roles import RemoveRoleManagers
from ..operations.roles import RemoveRoleMembers
from ..operations.roles import SetRoleAsAdmin
from ..operations.roles import UpdateRole
from ..operations.roles import UpdateRolePermissions


@deprecated
@same_doc_as(AddRoleManagers)
def add_role_managers(
    body: ModelRoleManagersRequest,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add Role Managers (AddRoleManagers)

    ## The endpoint is going to be deprecated
    Role can only be assigned to other users by the role's manager.

    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/roles/{roleId}/managers [POST]_**

    Properties:
        url: /iam/roles/{roleId}/managers

        method: POST

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelRoleManagersRequest in body

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = AddRoleManagers.create(
        body=body,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AddRoleManagers)
async def add_role_managers_async(
    body: ModelRoleManagersRequest,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add Role Managers (AddRoleManagers)

    ## The endpoint is going to be deprecated
    Role can only be assigned to other users by the role's manager.

    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/roles/{roleId}/managers [POST]_**

    Properties:
        url: /iam/roles/{roleId}/managers

        method: POST

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelRoleManagersRequest in body

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = AddRoleManagers.create(
        body=body,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AddRoleMembers)
def add_role_members(
    body: ModelRoleMembersRequest,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add Role Members (AddRoleMembers)

    ## The endpoint is going to be deprecated
    Admin roles has its members listed in the role.

    Role can only be assigned to other users by the role's manager.

    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/roles/{roleId}/members [POST]_**

    Properties:
        url: /iam/roles/{roleId}/members

        method: POST

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelRoleMembersRequest in body

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = AddRoleMembers.create(
        body=body,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AddRoleMembers)
async def add_role_members_async(
    body: ModelRoleMembersRequest,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add Role Members (AddRoleMembers)

    ## The endpoint is going to be deprecated
    Admin roles has its members listed in the role.

    Role can only be assigned to other users by the role's manager.

    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/roles/{roleId}/members [POST]_**

    Properties:
        url: /iam/roles/{roleId}/members

        method: POST

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelRoleMembersRequest in body

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = AddRoleMembers.create(
        body=body,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AddRolePermission)
def add_role_permission(
    action: int,
    body: ModelUpdatePermissionScheduleRequest,
    resource: str,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add Role Permission (AddRolePermission)

    ## The endpoint is going to be deprecated
    This endpoint will update existing permission (bitwise OR the action) if found one with same resource, otherwise it will append a new permission

    Schedule contains cron string or date range (both are UTC, also in cron syntax) to indicate when a permission and action are in effect.
    Both schedule types accepts quartz compatible cron syntax e.g. * * * * * * *.
    In ranged schedule, first element will be start date, and second one will be end date
    If schedule is set, the scheduled action must be valid too, that is between 1 to 15, inclusive

    Syntax reference
    Fields:
    - Seconds: 0-59 * / , -
    - Minutes: 0-59 * / , -
    - Hours: 0-23 * / , -
    - Day of month: 1-31 * / , - L W
    - Month: 1-12 JAN-DEC * / , -
    - Day of week: 0-6 SUN-SAT * / , - L #
    - Year: 1970-2099 * / , -

    Special characters:
    - **: all values in the fields, e.g. * in seconds fields indicates every second
    - /: increments of ranges, e.g. 3-59/15 in the minute field indicate the third minute of the hour and every 15 minutes thereafter
    - ,: separate items of a list, e.g. MON,WED,FRI in day of week
    - -: range, e.g. 2010-2018 indicates every year between 2010 and 2018, inclusive
    - L: last, e.g. When used in the day-of-week field, it allows you to specify constructs such as "the last Friday" (5L) of a given month. In the day-of-month field, it specifies the last day of the month.
    - W: business day, e.g. if you were to specify 15W as the value for the day-of-month field, the meaning is: "the nearest business day to the 15th of the month."
    - #: must be followed by a number between one and five. It allows you to specify constructs such as "the second Friday" of a given month.

    ### Endpoint migration guide
    - **Substitute endpoint(update): _/iam/v3/admin/roles/{roleId}/permissions [PUT]_**
    - **Substitute endpoint(create): _/iam/v3/admin/roles/{roleId}/permissions [POST]_**

    Properties:
        url: /iam/roles/{roleId}/permissions/{resource}/{action}

        method: POST

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUpdatePermissionScheduleRequest in body

        action: (action) REQUIRED int in path

        resource: (resource) REQUIRED str in path

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = AddRolePermission.create(
        action=action,
        body=body,
        resource=resource,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AddRolePermission)
async def add_role_permission_async(
    action: int,
    body: ModelUpdatePermissionScheduleRequest,
    resource: str,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add Role Permission (AddRolePermission)

    ## The endpoint is going to be deprecated
    This endpoint will update existing permission (bitwise OR the action) if found one with same resource, otherwise it will append a new permission

    Schedule contains cron string or date range (both are UTC, also in cron syntax) to indicate when a permission and action are in effect.
    Both schedule types accepts quartz compatible cron syntax e.g. * * * * * * *.
    In ranged schedule, first element will be start date, and second one will be end date
    If schedule is set, the scheduled action must be valid too, that is between 1 to 15, inclusive

    Syntax reference
    Fields:
    - Seconds: 0-59 * / , -
    - Minutes: 0-59 * / , -
    - Hours: 0-23 * / , -
    - Day of month: 1-31 * / , - L W
    - Month: 1-12 JAN-DEC * / , -
    - Day of week: 0-6 SUN-SAT * / , - L #
    - Year: 1970-2099 * / , -

    Special characters:
    - **: all values in the fields, e.g. * in seconds fields indicates every second
    - /: increments of ranges, e.g. 3-59/15 in the minute field indicate the third minute of the hour and every 15 minutes thereafter
    - ,: separate items of a list, e.g. MON,WED,FRI in day of week
    - -: range, e.g. 2010-2018 indicates every year between 2010 and 2018, inclusive
    - L: last, e.g. When used in the day-of-week field, it allows you to specify constructs such as "the last Friday" (5L) of a given month. In the day-of-month field, it specifies the last day of the month.
    - W: business day, e.g. if you were to specify 15W as the value for the day-of-month field, the meaning is: "the nearest business day to the 15th of the month."
    - #: must be followed by a number between one and five. It allows you to specify constructs such as "the second Friday" of a given month.

    ### Endpoint migration guide
    - **Substitute endpoint(update): _/iam/v3/admin/roles/{roleId}/permissions [PUT]_**
    - **Substitute endpoint(create): _/iam/v3/admin/roles/{roleId}/permissions [POST]_**

    Properties:
        url: /iam/roles/{roleId}/permissions/{resource}/{action}

        method: POST

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUpdatePermissionScheduleRequest in body

        action: (action) REQUIRED int in path

        resource: (resource) REQUIRED str in path

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = AddRolePermission.create(
        action=action,
        body=body,
        resource=resource,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminAddRoleManagersV3)
def admin_add_role_managers_v3(
    body: ModelRoleManagersRequestV3,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add Role Managers (AdminAddRoleManagersV3)

    Role can only be assigned to other users by the role's manager.
    action code: 10408

    Properties:
        url: /iam/v3/admin/roles/{roleId}/managers

        method: POST

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelRoleManagersRequestV3 in body

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10456: role not found)

        409: Conflict - RestErrorResponse (10468: role manager exist)
    """
    request = AdminAddRoleManagersV3.create(
        body=body,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminAddRoleManagersV3)
async def admin_add_role_managers_v3_async(
    body: ModelRoleManagersRequestV3,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add Role Managers (AdminAddRoleManagersV3)

    Role can only be assigned to other users by the role's manager.
    action code: 10408

    Properties:
        url: /iam/v3/admin/roles/{roleId}/managers

        method: POST

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelRoleManagersRequestV3 in body

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10456: role not found)

        409: Conflict - RestErrorResponse (10468: role manager exist)
    """
    request = AdminAddRoleManagersV3.create(
        body=body,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminAddRoleMembersV3)
def admin_add_role_members_v3(
    body: ModelRoleMembersRequestV3,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add Role Members (AdminAddRoleMembersV3)

    Admin roles has its members listed in the role.
    Role can only be assigned to other users by the role's manager.
    action code: 10410

    Properties:
        url: /iam/v3/admin/roles/{roleId}/members

        method: POST

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelRoleMembersRequestV3 in body

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body | 10457: specified role is not admin role)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions | 10459: operator is not a role manager)

        404: Not Found - RestErrorResponse (10456: role not found | 20008: user not found)

        409: Conflict - RestErrorResponse (10469: role member exist)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminAddRoleMembersV3.create(
        body=body,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminAddRoleMembersV3)
async def admin_add_role_members_v3_async(
    body: ModelRoleMembersRequestV3,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add Role Members (AdminAddRoleMembersV3)

    Admin roles has its members listed in the role.
    Role can only be assigned to other users by the role's manager.
    action code: 10410

    Properties:
        url: /iam/v3/admin/roles/{roleId}/members

        method: POST

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelRoleMembersRequestV3 in body

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body | 10457: specified role is not admin role)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions | 10459: operator is not a role manager)

        404: Not Found - RestErrorResponse (10456: role not found | 20008: user not found)

        409: Conflict - RestErrorResponse (10469: role member exist)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminAddRoleMembersV3.create(
        body=body,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminAddRolePermissionsV3)
def admin_add_role_permissions_v3(
    body: AccountcommonPermissionsV3,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add Role Permissions (AdminAddRolePermissionsV3)

    This endpoint will ATTACH permission(s) into the role
    action code: 10404
    Schedule contains cron string or date range (both are UTC, also in cron syntax) to indicate when a permission and action are in effect.
    Both schedule types accepts quartz compatible cron syntax e.g. * * * * * * *.
    In ranged schedule, first element will be start date, and second one will be end date
    If schedule is set, the scheduled action must be valid too, that is between 1 to 15, inclusive
    Syntax reference
    Fields:
    1. Seconds: 0-59 * / , -
    1. Minutes: 0-59 * / , -
    1. Hours: 0-23 * / , -
    1. Day of month: 1-31 * / , - L W
    1. Month: 1-12 JAN-DEC * / , -
    1. Day of week: 0-6 SUN-SAT * / , - L #
    1. Year: 1970-2099 * / , -

    Special characters:
    1. *: all values in the fields, e.g. * in seconds fields indicates every second
    1. /: increments of ranges, e.g. 3-59/15 in the minute field indicate the third minute of the hour and every 15 minutes thereafter
    1. ,: separate items of a list, e.g. MON,WED,FRI in day of week
    1. -: range, e.g. 2010-2018 indicates every year between 2010 and 2018, inclusive
    1. L: last, e.g. When used in the day-of-week field, it allows you to specify constructs such as "the last Friday" (5L) of a given month. In the day-of-month field, it specifies the last day of the month.
    1. W: business day, e.g. if you were to specify 15W as the value for the day-of-month field, the meaning is: "the nearest business day to the 15th of the month."
    1. #: must be followed by a number between one and five. It allows you to specify constructs such as "the second Friday" of a given month.

    Properties:
        url: /iam/v3/admin/roles/{roleId}/permissions

        method: POST

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AccountcommonPermissionsV3 in body

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10456: role not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminAddRolePermissionsV3.create(
        body=body,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminAddRolePermissionsV3)
async def admin_add_role_permissions_v3_async(
    body: AccountcommonPermissionsV3,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add Role Permissions (AdminAddRolePermissionsV3)

    This endpoint will ATTACH permission(s) into the role
    action code: 10404
    Schedule contains cron string or date range (both are UTC, also in cron syntax) to indicate when a permission and action are in effect.
    Both schedule types accepts quartz compatible cron syntax e.g. * * * * * * *.
    In ranged schedule, first element will be start date, and second one will be end date
    If schedule is set, the scheduled action must be valid too, that is between 1 to 15, inclusive
    Syntax reference
    Fields:
    1. Seconds: 0-59 * / , -
    1. Minutes: 0-59 * / , -
    1. Hours: 0-23 * / , -
    1. Day of month: 1-31 * / , - L W
    1. Month: 1-12 JAN-DEC * / , -
    1. Day of week: 0-6 SUN-SAT * / , - L #
    1. Year: 1970-2099 * / , -

    Special characters:
    1. *: all values in the fields, e.g. * in seconds fields indicates every second
    1. /: increments of ranges, e.g. 3-59/15 in the minute field indicate the third minute of the hour and every 15 minutes thereafter
    1. ,: separate items of a list, e.g. MON,WED,FRI in day of week
    1. -: range, e.g. 2010-2018 indicates every year between 2010 and 2018, inclusive
    1. L: last, e.g. When used in the day-of-week field, it allows you to specify constructs such as "the last Friday" (5L) of a given month. In the day-of-month field, it specifies the last day of the month.
    1. W: business day, e.g. if you were to specify 15W as the value for the day-of-month field, the meaning is: "the nearest business day to the 15th of the month."
    1. #: must be followed by a number between one and five. It allows you to specify constructs such as "the second Friday" of a given month.

    Properties:
        url: /iam/v3/admin/roles/{roleId}/permissions

        method: POST

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AccountcommonPermissionsV3 in body

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10456: role not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminAddRolePermissionsV3.create(
        body=body,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminAddRolePermissionsV4)
def admin_add_role_permissions_v4(
    body: AccountcommonPermissionsV3,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add Role Permissions V4 (AdminAddRolePermissionsV4)

    This endpoint will ATTACH permission(s) into the role
    action code: 10404

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

    Properties:
        url: /iam/v4/admin/roles/{roleId}/permissions

        method: POST

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
    request = AdminAddRolePermissionsV4.create(
        body=body,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminAddRolePermissionsV4)
async def admin_add_role_permissions_v4_async(
    body: AccountcommonPermissionsV3,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add Role Permissions V4 (AdminAddRolePermissionsV4)

    This endpoint will ATTACH permission(s) into the role
    action code: 10404

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

    Properties:
        url: /iam/v4/admin/roles/{roleId}/permissions

        method: POST

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
    request = AdminAddRolePermissionsV4.create(
        body=body,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminAssignUserToRoleV4)
def admin_assign_user_to_role_v4(
    body: ModelAssignUserV4Request,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Assign User to Role (AdminAssignUserToRoleV4)

    Parameters:
    - **userId**: string (required)
    - **namespace**: string (userâs namespace) (required)
    - **assignedNamespaces**: array of string (namespaces to be assigned on role) (required)

    action code: 10410

    Properties:
        url: /iam/v4/admin/roles/{roleId}/users

        method: POST

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelAssignUserV4Request in body

        role_id: (roleId) REQUIRED str in path

    Responses:
        201: Created - ModelAssignedUserV4Response (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body | 10457: specified role is not admin role)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions | 10459: operator is not a role manager | 10182: given namespace cannot be assigned to the role)

        404: Not Found - RestErrorResponse (10456: role not found | 20008: user not found)

        409: Conflict - RestErrorResponse (10469: role member exist)

        422: Unprocessable Entity - RestErrorResponse (10183: unprocessable entity)
    """
    request = AdminAssignUserToRoleV4.create(
        body=body,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminAssignUserToRoleV4)
async def admin_assign_user_to_role_v4_async(
    body: ModelAssignUserV4Request,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Assign User to Role (AdminAssignUserToRoleV4)

    Parameters:
    - **userId**: string (required)
    - **namespace**: string (userâs namespace) (required)
    - **assignedNamespaces**: array of string (namespaces to be assigned on role) (required)

    action code: 10410

    Properties:
        url: /iam/v4/admin/roles/{roleId}/users

        method: POST

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelAssignUserV4Request in body

        role_id: (roleId) REQUIRED str in path

    Responses:
        201: Created - ModelAssignedUserV4Response (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body | 10457: specified role is not admin role)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions | 10459: operator is not a role manager | 10182: given namespace cannot be assigned to the role)

        404: Not Found - RestErrorResponse (10456: role not found | 20008: user not found)

        409: Conflict - RestErrorResponse (10469: role member exist)

        422: Unprocessable Entity - RestErrorResponse (10183: unprocessable entity)
    """
    request = AdminAssignUserToRoleV4.create(
        body=body,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminCreateRoleV3)
def admin_create_role_v3(
    body: ModelRoleCreateV3Request,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create Role (AdminCreateRoleV3)

    Create role request body:
    - roleName: specify role name, alphanumeric, cannot have special character (required)
    - permissions: specify the permission that this role have
    - managers: specify list of user that will act as the managers of this role
    - members: specify list of user that will act as the members of this role
    - adminRole: specify if role is for admin user (default false)
    - isWildcard: specify if role can be assigned to wildcard (*) namespace (default false)
    - deletable: specify if role can be deleted or not (default true)

    action code: 10401

    Properties:
        url: /iam/v3/admin/roles

        method: POST

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelRoleCreateV3Request in body

    Responses:
        201: Created - AccountcommonRoleV3 (Created)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body | 10466: invalid role members)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminCreateRoleV3.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminCreateRoleV3)
async def admin_create_role_v3_async(
    body: ModelRoleCreateV3Request,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create Role (AdminCreateRoleV3)

    Create role request body:
    - roleName: specify role name, alphanumeric, cannot have special character (required)
    - permissions: specify the permission that this role have
    - managers: specify list of user that will act as the managers of this role
    - members: specify list of user that will act as the members of this role
    - adminRole: specify if role is for admin user (default false)
    - isWildcard: specify if role can be assigned to wildcard (*) namespace (default false)
    - deletable: specify if role can be deleted or not (default true)

    action code: 10401

    Properties:
        url: /iam/v3/admin/roles

        method: POST

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelRoleCreateV3Request in body

    Responses:
        201: Created - AccountcommonRoleV3 (Created)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body | 10466: invalid role members)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminCreateRoleV3.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminCreateRoleV4)
def admin_create_role_v4(
    body: ModelRoleV4Request,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create Role (AdminCreateRoleV4)

    Create role request body:
    - roleName: specify role name, alphanumeric, cannot have special character (required)
    - adminRole: specify if role is for admin user (default false)
    - isWildcard: specify if role can be assigned to wildcard (*) namespace (default false)
    - deletable: specify if role can be deleted (default true)

    action code: 10401

    Properties:
        url: /iam/v4/admin/roles

        method: POST

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelRoleV4Request in body

    Responses:
        201: Created - ModelRoleV4Response (Created)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body | 10466: invalid role members)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminCreateRoleV4.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminCreateRoleV4)
async def admin_create_role_v4_async(
    body: ModelRoleV4Request,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create Role (AdminCreateRoleV4)

    Create role request body:
    - roleName: specify role name, alphanumeric, cannot have special character (required)
    - adminRole: specify if role is for admin user (default false)
    - isWildcard: specify if role can be assigned to wildcard (*) namespace (default false)
    - deletable: specify if role can be deleted (default true)

    action code: 10401

    Properties:
        url: /iam/v4/admin/roles

        method: POST

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelRoleV4Request in body

    Responses:
        201: Created - ModelRoleV4Response (Created)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body | 10466: invalid role members)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminCreateRoleV4.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteRolePermissionV3)
def admin_delete_role_permission_v3(
    action: int,
    resource: str,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Role Permission (AdminDeleteRolePermissionV3)

    action code: 10406

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

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10456: role not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminDeleteRolePermissionV3.create(
        action=action,
        resource=resource,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteRolePermissionV3)
async def admin_delete_role_permission_v3_async(
    action: int,
    resource: str,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Role Permission (AdminDeleteRolePermissionV3)

    action code: 10406

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

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10456: role not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminDeleteRolePermissionV3.create(
        action=action,
        resource=resource,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteRolePermissionsV3)
def admin_delete_role_permissions_v3(
    body: List[str],
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Role (AdminDeleteRolePermissionsV3)

    Properties:
        url: /iam/v3/admin/roles/{roleId}/permissions

        method: DELETE

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[str] in body

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = AdminDeleteRolePermissionsV3.create(
        body=body,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteRolePermissionsV3)
async def admin_delete_role_permissions_v3_async(
    body: List[str],
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Role (AdminDeleteRolePermissionsV3)

    Properties:
        url: /iam/v3/admin/roles/{roleId}/permissions

        method: DELETE

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[str] in body

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = AdminDeleteRolePermissionsV3.create(
        body=body,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteRolePermissionsV4)
def admin_delete_role_permissions_v4(
    body: List[str],
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Role Permission V4 (AdminDeleteRolePermissionsV4)

    Properties:
        url: /iam/v4/admin/roles/{roleId}/permissions

        method: DELETE

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[str] in body

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = AdminDeleteRolePermissionsV4.create(
        body=body,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteRolePermissionsV4)
async def admin_delete_role_permissions_v4_async(
    body: List[str],
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Role Permission V4 (AdminDeleteRolePermissionsV4)

    Properties:
        url: /iam/v4/admin/roles/{roleId}/permissions

        method: DELETE

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[str] in body

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = AdminDeleteRolePermissionsV4.create(
        body=body,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteRoleV3)
def admin_delete_role_v3(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Delete Role (AdminDeleteRoleV3)

    action code: 10403

    Properties:
        url: /iam/v3/admin/roles/{roleId}

        method: DELETE

        tags: ["Roles"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10456: role not found)

        409: Conflict - RestErrorResponse (20009: request_conflict)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminDeleteRoleV3.create(
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteRoleV3)
async def admin_delete_role_v3_async(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Delete Role (AdminDeleteRoleV3)

    action code: 10403

    Properties:
        url: /iam/v3/admin/roles/{roleId}

        method: DELETE

        tags: ["Roles"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10456: role not found)

        409: Conflict - RestErrorResponse (20009: request_conflict)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminDeleteRoleV3.create(
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteRoleV4)
def admin_delete_role_v4(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Delete Role (AdminDeleteRoleV4)

    Removes role ID from user's Roles and NamespaceRoles before deleting the role.
    action code: 10403

    Properties:
        url: /iam/v4/admin/roles/{roleId}

        method: DELETE

        tags: ["Roles"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10456: role not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminDeleteRoleV4.create(
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteRoleV4)
async def admin_delete_role_v4_async(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Delete Role (AdminDeleteRoleV4)

    Removes role ID from user's Roles and NamespaceRoles before deleting the role.
    action code: 10403

    Properties:
        url: /iam/v4/admin/roles/{roleId}

        method: DELETE

        tags: ["Roles"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10456: role not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminDeleteRoleV4.create(
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetRoleAdminStatusV3)
def admin_get_role_admin_status_v3(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get Role Admin Status (AdminGetRoleAdminStatusV3)

    Admin roles has its members listed in the role.
    action code: 10420

    Properties:
        url: /iam/v3/admin/roles/{roleId}/admin

        method: GET

        tags: ["Roles"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        role_id: (roleId) REQUIRED str in path

    Responses:
        200: OK - ModelRoleAdminStatusResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10456: role not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminGetRoleAdminStatusV3.create(
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetRoleAdminStatusV3)
async def admin_get_role_admin_status_v3_async(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get Role Admin Status (AdminGetRoleAdminStatusV3)

    Admin roles has its members listed in the role.
    action code: 10420

    Properties:
        url: /iam/v3/admin/roles/{roleId}/admin

        method: GET

        tags: ["Roles"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        role_id: (roleId) REQUIRED str in path

    Responses:
        200: OK - ModelRoleAdminStatusResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10456: role not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminGetRoleAdminStatusV3.create(
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetRoleManagersV3)
def admin_get_role_managers_v3(
    role_id: str,
    after: Optional[str] = None,
    before: Optional[str] = None,
    limit: Optional[int] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Role Managers (AdminGetRoleManagersV3)

    Role can only be assigned to other users by the role's manager.
    action code: 10415

    Properties:
        url: /iam/v3/admin/roles/{roleId}/managers

        method: GET

        tags: ["Roles"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        role_id: (roleId) REQUIRED str in path

        after: (after) OPTIONAL str in query

        before: (before) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

    Responses:
        200: OK - ModelRoleManagersResponsesV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10456: role not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminGetRoleManagersV3.create(
        role_id=role_id,
        after=after,
        before=before,
        limit=limit,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetRoleManagersV3)
async def admin_get_role_managers_v3_async(
    role_id: str,
    after: Optional[str] = None,
    before: Optional[str] = None,
    limit: Optional[int] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Role Managers (AdminGetRoleManagersV3)

    Role can only be assigned to other users by the role's manager.
    action code: 10415

    Properties:
        url: /iam/v3/admin/roles/{roleId}/managers

        method: GET

        tags: ["Roles"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        role_id: (roleId) REQUIRED str in path

        after: (after) OPTIONAL str in query

        before: (before) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

    Responses:
        200: OK - ModelRoleManagersResponsesV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10456: role not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminGetRoleManagersV3.create(
        role_id=role_id,
        after=after,
        before=before,
        limit=limit,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetRoleMembersV3)
def admin_get_role_members_v3(
    role_id: str,
    after: Optional[str] = None,
    before: Optional[str] = None,
    limit: Optional[int] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Role Members (AdminGetRoleMembersV3)

    Admin roles has its members listed in the role.
    action code: 10416

    Properties:
        url: /iam/v3/admin/roles/{roleId}/members

        method: GET

        tags: ["Roles"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        role_id: (roleId) REQUIRED str in path

        after: (after) OPTIONAL str in query

        before: (before) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

    Responses:
        200: OK - ModelRoleMembersResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10456: role not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminGetRoleMembersV3.create(
        role_id=role_id,
        after=after,
        before=before,
        limit=limit,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetRoleMembersV3)
async def admin_get_role_members_v3_async(
    role_id: str,
    after: Optional[str] = None,
    before: Optional[str] = None,
    limit: Optional[int] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Role Members (AdminGetRoleMembersV3)

    Admin roles has its members listed in the role.
    action code: 10416

    Properties:
        url: /iam/v3/admin/roles/{roleId}/members

        method: GET

        tags: ["Roles"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        role_id: (roleId) REQUIRED str in path

        after: (after) OPTIONAL str in query

        before: (before) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

    Responses:
        200: OK - ModelRoleMembersResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10456: role not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminGetRoleMembersV3.create(
        role_id=role_id,
        after=after,
        before=before,
        limit=limit,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetRoleV3)
def admin_get_role_v3(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get Role (AdminGetRoleV3)

    action code: 10419

    Properties:
        url: /iam/v3/admin/roles/{roleId}

        method: GET

        tags: ["Roles"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        role_id: (roleId) REQUIRED str in path

    Responses:
        200: OK - ModelRoleResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10456: role not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminGetRoleV3.create(
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetRoleV3)
async def admin_get_role_v3_async(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get Role (AdminGetRoleV3)

    action code: 10419

    Properties:
        url: /iam/v3/admin/roles/{roleId}

        method: GET

        tags: ["Roles"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        role_id: (roleId) REQUIRED str in path

    Responses:
        200: OK - ModelRoleResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10456: role not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminGetRoleV3.create(
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetRoleV4)
def admin_get_role_v4(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get Role (AdminGetRoleV4)

    action code: 10419

    Properties:
        url: /iam/v4/admin/roles/{roleId}

        method: GET

        tags: ["Roles"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        role_id: (roleId) REQUIRED str in path

    Responses:
        200: OK - ModelRoleV4Response (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10456: role not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminGetRoleV4.create(
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetRoleV4)
async def admin_get_role_v4_async(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get Role (AdminGetRoleV4)

    action code: 10419

    Properties:
        url: /iam/v4/admin/roles/{roleId}

        method: GET

        tags: ["Roles"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        role_id: (roleId) REQUIRED str in path

    Responses:
        200: OK - ModelRoleV4Response (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10456: role not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminGetRoleV4.create(
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetRolesV3)
def admin_get_roles_v3(
    after: Optional[str] = None,
    before: Optional[str] = None,
    is_wildcard: Optional[bool] = None,
    limit: Optional[int] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Roles (AdminGetRolesV3)

    action code: 10414

    Properties:
        url: /iam/v3/admin/roles

        method: GET

        tags: ["Roles"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        after: (after) OPTIONAL str in query

        before: (before) OPTIONAL str in query

        is_wildcard: (isWildcard) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

    Responses:
        200: OK - ModelRoleResponseWithManagersAndPaginationV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminGetRolesV3.create(
        after=after,
        before=before,
        is_wildcard=is_wildcard,
        limit=limit,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetRolesV3)
async def admin_get_roles_v3_async(
    after: Optional[str] = None,
    before: Optional[str] = None,
    is_wildcard: Optional[bool] = None,
    limit: Optional[int] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Roles (AdminGetRolesV3)

    action code: 10414

    Properties:
        url: /iam/v3/admin/roles

        method: GET

        tags: ["Roles"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        after: (after) OPTIONAL str in query

        before: (before) OPTIONAL str in query

        is_wildcard: (isWildcard) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

    Responses:
        200: OK - ModelRoleResponseWithManagersAndPaginationV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminGetRolesV3.create(
        after=after,
        before=before,
        is_wildcard=is_wildcard,
        limit=limit,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetRolesV4)
def admin_get_roles_v4(
    admin_role: Optional[bool] = None,
    is_wildcard: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Roles (AdminGetRolesV4)

    action code: 10414

    Properties:
        url: /iam/v4/admin/roles

        method: GET

        tags: ["Roles"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        admin_role: (adminRole) OPTIONAL bool in query

        is_wildcard: (isWildcard) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelListRoleV4Response (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminGetRolesV4.create(
        admin_role=admin_role,
        is_wildcard=is_wildcard,
        limit=limit,
        offset=offset,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetRolesV4)
async def admin_get_roles_v4_async(
    admin_role: Optional[bool] = None,
    is_wildcard: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Roles (AdminGetRolesV4)

    action code: 10414

    Properties:
        url: /iam/v4/admin/roles

        method: GET

        tags: ["Roles"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        admin_role: (adminRole) OPTIONAL bool in query

        is_wildcard: (isWildcard) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelListRoleV4Response (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminGetRolesV4.create(
        admin_role=admin_role,
        is_wildcard=is_wildcard,
        limit=limit,
        offset=offset,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminListAssignedUsersV4)
def admin_list_assigned_users_v4(
    role_id: str,
    after: Optional[str] = None,
    before: Optional[str] = None,
    limit: Optional[int] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Role's Assigned Users (AdminListAssignedUsersV4)

    Query all users that has the specified role.
    action code: 10416

    Properties:
        url: /iam/v4/admin/roles/{roleId}/users

        method: GET

        tags: ["Roles"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        role_id: (roleId) REQUIRED str in path

        after: (after) OPTIONAL str in query

        before: (before) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

    Responses:
        200: OK - ModelListAssignedUsersV4Response (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10456: role not found)
    """
    request = AdminListAssignedUsersV4.create(
        role_id=role_id,
        after=after,
        before=before,
        limit=limit,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminListAssignedUsersV4)
async def admin_list_assigned_users_v4_async(
    role_id: str,
    after: Optional[str] = None,
    before: Optional[str] = None,
    limit: Optional[int] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Role's Assigned Users (AdminListAssignedUsersV4)

    Query all users that has the specified role.
    action code: 10416

    Properties:
        url: /iam/v4/admin/roles/{roleId}/users

        method: GET

        tags: ["Roles"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        role_id: (roleId) REQUIRED str in path

        after: (after) OPTIONAL str in query

        before: (before) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

    Responses:
        200: OK - ModelListAssignedUsersV4Response (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10456: role not found)
    """
    request = AdminListAssignedUsersV4.create(
        role_id=role_id,
        after=after,
        before=before,
        limit=limit,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminRemoveRoleAdminV3)
def admin_remove_role_admin_v3(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Remove Role Admin Status (AdminRemoveRoleAdminV3)

    code: 10413

    Properties:
        url: /iam/v3/admin/roles/{roleId}/admin

        method: DELETE

        tags: ["Roles"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10456: role not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminRemoveRoleAdminV3.create(
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminRemoveRoleAdminV3)
async def admin_remove_role_admin_v3_async(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Remove Role Admin Status (AdminRemoveRoleAdminV3)

    code: 10413

    Properties:
        url: /iam/v3/admin/roles/{roleId}/admin

        method: DELETE

        tags: ["Roles"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10456: role not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminRemoveRoleAdminV3.create(
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminRemoveRoleManagersV3)
def admin_remove_role_managers_v3(
    body: ModelRoleManagersRequestV3,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Remove Role Managers (AdminRemoveRoleManagersV3)

    Role can only be assigned to other users by the role's manager.
    action code: 10409

    Properties:
        url: /iam/v3/admin/roles/{roleId}/managers

        method: DELETE

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelRoleManagersRequestV3 in body

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10456: role not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminRemoveRoleManagersV3.create(
        body=body,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminRemoveRoleManagersV3)
async def admin_remove_role_managers_v3_async(
    body: ModelRoleManagersRequestV3,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Remove Role Managers (AdminRemoveRoleManagersV3)

    Role can only be assigned to other users by the role's manager.
    action code: 10409

    Properties:
        url: /iam/v3/admin/roles/{roleId}/managers

        method: DELETE

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelRoleManagersRequestV3 in body

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10456: role not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminRemoveRoleManagersV3.create(
        body=body,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminRemoveRoleMembersV3)
def admin_remove_role_members_v3(
    body: ModelRoleMembersRequestV3,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Remove Role Members (AdminRemoveRoleMembersV3)

    Admin roles has its members listed in the role.
    Role can only be assigned to other users by the role's manager.
    action code: 10411
    Deprecate: Suggest to use this: AdminRevokeUserFromRoleV4

    Properties:
        url: /iam/v3/admin/roles/{roleId}/members

        method: DELETE

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelRoleMembersRequestV3 in body

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body | 10457: specified role is not admin role)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions | 10459: operator is not a role manager)

        404: Not Found - RestErrorResponse (10456: role not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminRemoveRoleMembersV3.create(
        body=body,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminRemoveRoleMembersV3)
async def admin_remove_role_members_v3_async(
    body: ModelRoleMembersRequestV3,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Remove Role Members (AdminRemoveRoleMembersV3)

    Admin roles has its members listed in the role.
    Role can only be assigned to other users by the role's manager.
    action code: 10411
    Deprecate: Suggest to use this: AdminRevokeUserFromRoleV4

    Properties:
        url: /iam/v3/admin/roles/{roleId}/members

        method: DELETE

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelRoleMembersRequestV3 in body

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body | 10457: specified role is not admin role)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions | 10459: operator is not a role manager)

        404: Not Found - RestErrorResponse (10456: role not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminRemoveRoleMembersV3.create(
        body=body,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminRevokeUserFromRoleV4)
def admin_revoke_user_from_role_v4(
    body: ModelRevokeUserV4Request,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Revoke User from Role (AdminRevokeUserFromRoleV4)

    Current implementation will revoke user from role in all assigned namespaces.

    Parameters:
    - userId: string (required)
    - namespace: string (userâs namespace) (required)

    action code: 10411

    Properties:
        url: /iam/v4/admin/roles/{roleId}/users

        method: DELETE

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelRevokeUserV4Request in body

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body | 10457: specified role is not admin role)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions | 10459: operator is not a role manager)

        404: Not Found - RestErrorResponse (10456: role not found)
    """
    request = AdminRevokeUserFromRoleV4.create(
        body=body,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminRevokeUserFromRoleV4)
async def admin_revoke_user_from_role_v4_async(
    body: ModelRevokeUserV4Request,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Revoke User from Role (AdminRevokeUserFromRoleV4)

    Current implementation will revoke user from role in all assigned namespaces.

    Parameters:
    - userId: string (required)
    - namespace: string (userâs namespace) (required)

    action code: 10411

    Properties:
        url: /iam/v4/admin/roles/{roleId}/users

        method: DELETE

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelRevokeUserV4Request in body

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body | 10457: specified role is not admin role)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions | 10459: operator is not a role manager)

        404: Not Found - RestErrorResponse (10456: role not found)
    """
    request = AdminRevokeUserFromRoleV4.create(
        body=body,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateAdminRoleStatusV3)
def admin_update_admin_role_status_v3(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Set Role as Admin Role (AdminUpdateAdminRoleStatusV3)

    Admin roles has its members listed in the role.
    Role can be set as admin role only when it has at least 1 manager.
    action code: 10412

    Properties:
        url: /iam/v3/admin/roles/{roleId}/admin

        method: POST

        tags: ["Roles"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions | 10467: role has no manager)

        404: Not Found - RestErrorResponse (10456: role not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminUpdateAdminRoleStatusV3.create(
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateAdminRoleStatusV3)
async def admin_update_admin_role_status_v3_async(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Set Role as Admin Role (AdminUpdateAdminRoleStatusV3)

    Admin roles has its members listed in the role.
    Role can be set as admin role only when it has at least 1 manager.
    action code: 10412

    Properties:
        url: /iam/v3/admin/roles/{roleId}/admin

        method: POST

        tags: ["Roles"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions | 10467: role has no manager)

        404: Not Found - RestErrorResponse (10456: role not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminUpdateAdminRoleStatusV3.create(
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateRolePermissionsV3)
def admin_update_role_permissions_v3(
    body: AccountcommonPermissionsV3,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Role Permissions (AdminUpdateRolePermissionsV3)

    This endpoint will REPLACE role's permissions with the ones defined in body
    action code: 10405
    Schedule contains cron string or date range (both are UTC, also in cron syntax) to indicate when a permission and action are in effect.
    Both schedule types accepts quartz compatible cron syntax e.g. * * * * * * *.
    In ranged schedule, first element will be start date, and second one will be end date
    If schedule is set, the scheduled action must be valid too, that is between 1 to 15, inclusive
    Syntax reference
    Fields:
    1. Seconds: 0-59 * / , -
    1. Minutes: 0-59 * / , -
    1. Hours: 0-23 * / , -
    1. Day of month: 1-31 * / , - L W
    1. Month: 1-12 JAN-DEC * / , -
    1. Day of week: 0-6 SUN-SAT * / , - L #
    1. Year: 1970-2099 * / , -

    Special characters:
    1. *: all values in the fields, e.g. * in seconds fields indicates every second
    1. /: increments of ranges, e.g. 3-59/15 in the minute field indicate the third minute of the hour and every 15 minutes thereafter
    1. ,: separate items of a list, e.g. MON,WED,FRI in day of week
    1. -: range, e.g. 2010-2018 indicates every year between 2010 and 2018, inclusive
    1. L: last, e.g. When used in the day-of-week field, it allows you to specify constructs such as "the last Friday" (5L) of a given month. In the day-of-month field, it specifies the last day of the month.
    1. W: business day, e.g. if you were to specify 15W as the value for the day-of-month field, the meaning is: "the nearest business day to the 15th of the month."
    1. #: must be followed by a number between one and five. It allows you to specify constructs such as "the second Friday" of a given month.

    Properties:
        url: /iam/v3/admin/roles/{roleId}/permissions

        method: PUT

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AccountcommonPermissionsV3 in body

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10456: role not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminUpdateRolePermissionsV3.create(
        body=body,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateRolePermissionsV3)
async def admin_update_role_permissions_v3_async(
    body: AccountcommonPermissionsV3,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Role Permissions (AdminUpdateRolePermissionsV3)

    This endpoint will REPLACE role's permissions with the ones defined in body
    action code: 10405
    Schedule contains cron string or date range (both are UTC, also in cron syntax) to indicate when a permission and action are in effect.
    Both schedule types accepts quartz compatible cron syntax e.g. * * * * * * *.
    In ranged schedule, first element will be start date, and second one will be end date
    If schedule is set, the scheduled action must be valid too, that is between 1 to 15, inclusive
    Syntax reference
    Fields:
    1. Seconds: 0-59 * / , -
    1. Minutes: 0-59 * / , -
    1. Hours: 0-23 * / , -
    1. Day of month: 1-31 * / , - L W
    1. Month: 1-12 JAN-DEC * / , -
    1. Day of week: 0-6 SUN-SAT * / , - L #
    1. Year: 1970-2099 * / , -

    Special characters:
    1. *: all values in the fields, e.g. * in seconds fields indicates every second
    1. /: increments of ranges, e.g. 3-59/15 in the minute field indicate the third minute of the hour and every 15 minutes thereafter
    1. ,: separate items of a list, e.g. MON,WED,FRI in day of week
    1. -: range, e.g. 2010-2018 indicates every year between 2010 and 2018, inclusive
    1. L: last, e.g. When used in the day-of-week field, it allows you to specify constructs such as "the last Friday" (5L) of a given month. In the day-of-month field, it specifies the last day of the month.
    1. W: business day, e.g. if you were to specify 15W as the value for the day-of-month field, the meaning is: "the nearest business day to the 15th of the month."
    1. #: must be followed by a number between one and five. It allows you to specify constructs such as "the second Friday" of a given month.

    Properties:
        url: /iam/v3/admin/roles/{roleId}/permissions

        method: PUT

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AccountcommonPermissionsV3 in body

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10456: role not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminUpdateRolePermissionsV3.create(
        body=body,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateRolePermissionsV4)
def admin_update_role_permissions_v4(
    body: AccountcommonPermissionsV3,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Role Permissions (AdminUpdateRolePermissionsV4)

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
    request = AdminUpdateRolePermissionsV4.create(
        body=body,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateRolePermissionsV4)
async def admin_update_role_permissions_v4_async(
    body: AccountcommonPermissionsV3,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Role Permissions (AdminUpdateRolePermissionsV4)

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
    request = AdminUpdateRolePermissionsV4.create(
        body=body,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateRoleV3)
def admin_update_role_v3(
    body: ModelRoleUpdateRequestV3,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Role (AdminUpdateRoleV3)

    Update role request body:
    - roleName: specify role name, alphanumeric, cannot have special character (required)
    - isWildcard: specify if role can be assigned to wildcard (*) namespace (default false)
    - deletable: specify if role can be deleted or not (optional)

    action code: 10402

    Properties:
        url: /iam/v3/admin/roles/{roleId}

        method: PATCH

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelRoleUpdateRequestV3 in body

        role_id: (roleId) REQUIRED str in path

    Responses:
        200: OK - ModelRoleResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10456: role not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminUpdateRoleV3.create(
        body=body,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateRoleV3)
async def admin_update_role_v3_async(
    body: ModelRoleUpdateRequestV3,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Role (AdminUpdateRoleV3)

    Update role request body:
    - roleName: specify role name, alphanumeric, cannot have special character (required)
    - isWildcard: specify if role can be assigned to wildcard (*) namespace (default false)
    - deletable: specify if role can be deleted or not (optional)

    action code: 10402

    Properties:
        url: /iam/v3/admin/roles/{roleId}

        method: PATCH

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelRoleUpdateRequestV3 in body

        role_id: (roleId) REQUIRED str in path

    Responses:
        200: OK - ModelRoleResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10456: role not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminUpdateRoleV3.create(
        body=body,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateRoleV4)
def admin_update_role_v4(
    body: ModelRoleV4Request,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Role (AdminUpdateRoleV4)

    Update role request body:
    - roleName: specify role name, alphanumeric, cannot have special character (required)
    - adminRole: specify if role is for admin user (default false)
    - isWildcard: specify if role can be assigned to wildcard (*) namespace (default false)
    - deletable: specify if role can be deleted (optional)

    action code: 10402

    Properties:
        url: /iam/v4/admin/roles/{roleId}

        method: PATCH

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelRoleV4Request in body

        role_id: (roleId) REQUIRED str in path

    Responses:
        200: OK - ModelRoleV4Response (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10456: role not found)
    """
    request = AdminUpdateRoleV4.create(
        body=body,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateRoleV4)
async def admin_update_role_v4_async(
    body: ModelRoleV4Request,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Role (AdminUpdateRoleV4)

    Update role request body:
    - roleName: specify role name, alphanumeric, cannot have special character (required)
    - adminRole: specify if role is for admin user (default false)
    - isWildcard: specify if role can be assigned to wildcard (*) namespace (default false)
    - deletable: specify if role can be deleted (optional)

    action code: 10402

    Properties:
        url: /iam/v4/admin/roles/{roleId}

        method: PATCH

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelRoleV4Request in body

        role_id: (roleId) REQUIRED str in path

    Responses:
        200: OK - ModelRoleV4Response (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10456: role not found)
    """
    request = AdminUpdateRoleV4.create(
        body=body,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(CreateRole)
def create_role(
    body: ModelRoleCreateRequest,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create Role (CreateRole)

    ## The endpoint is going to be deprecated
    Role can only be assigned to other users by the role's manager.

    If role is an administrator role (i.e. AdminRole == true), it will list out the role's members.

    Administrator role can be created only when at least 1 manager is specified.
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/roles [POST]_**

    Properties:
        url: /iam/roles

        method: POST

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelRoleCreateRequest in body

    Responses:
        201: Created - AccountcommonRole (Created)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)
    """
    request = CreateRole.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(CreateRole)
async def create_role_async(
    body: ModelRoleCreateRequest,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create Role (CreateRole)

    ## The endpoint is going to be deprecated
    Role can only be assigned to other users by the role's manager.

    If role is an administrator role (i.e. AdminRole == true), it will list out the role's members.

    Administrator role can be created only when at least 1 manager is specified.
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/roles [POST]_**

    Properties:
        url: /iam/roles

        method: POST

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelRoleCreateRequest in body

    Responses:
        201: Created - AccountcommonRole (Created)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)
    """
    request = CreateRole.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(DeleteRole)
def delete_role(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Delete Role (DeleteRole)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/roles/{roleId} [DELETE]_**

    Properties:
        url: /iam/roles/{roleId}

        method: DELETE

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = DeleteRole.create(
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(DeleteRole)
async def delete_role_async(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Delete Role (DeleteRole)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/roles/{roleId} [DELETE]_**

    Properties:
        url: /iam/roles/{roleId}

        method: DELETE

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = DeleteRole.create(
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(DeleteRolePermission)
def delete_role_permission(
    action: int,
    resource: str,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Role Permission (DeleteRolePermission)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/roles/{roleId}/permissions/{resource}/{action} [DELETE]_**
    - **Substitute endpoint: _/iam/v4/admin/roles/{roleId}/permissions [DELETE]_**

    Properties:
        url: /iam/roles/{roleId}/permissions/{resource}/{action}

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

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = DeleteRolePermission.create(
        action=action,
        resource=resource,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(DeleteRolePermission)
async def delete_role_permission_async(
    action: int,
    resource: str,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Role Permission (DeleteRolePermission)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/roles/{roleId}/permissions/{resource}/{action} [DELETE]_**
    - **Substitute endpoint: _/iam/v4/admin/roles/{roleId}/permissions [DELETE]_**

    Properties:
        url: /iam/roles/{roleId}/permissions/{resource}/{action}

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

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = DeleteRolePermission.create(
        action=action,
        resource=resource,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetRole)
def get_role(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get Role (GetRole)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/roles/{roleId} [GET]_**

    Properties:
        url: /iam/roles/{roleId}

        method: GET

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        role_id: (roleId) REQUIRED str in path

    Responses:
        200: OK - ModelRoleResponse (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = GetRole.create(
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetRole)
async def get_role_async(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get Role (GetRole)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/roles/{roleId} [GET]_**

    Properties:
        url: /iam/roles/{roleId}

        method: GET

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        role_id: (roleId) REQUIRED str in path

    Responses:
        200: OK - ModelRoleResponse (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = GetRole.create(
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetRoleAdminStatus)
def get_role_admin_status(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get Role Admin Status (GetRoleAdminStatus)

    ## The endpoint is going to be deprecated
    Admin roles has its members listed in the role.

    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/roles/{roleId}/admin [GET]_**

    Properties:
        url: /iam/roles/{roleId}/admin

        method: GET

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        role_id: (roleId) REQUIRED str in path

    Responses:
        200: OK - ModelRoleAdminStatusResponse (OK)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = GetRoleAdminStatus.create(
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetRoleAdminStatus)
async def get_role_admin_status_async(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get Role Admin Status (GetRoleAdminStatus)

    ## The endpoint is going to be deprecated
    Admin roles has its members listed in the role.

    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/roles/{roleId}/admin [GET]_**

    Properties:
        url: /iam/roles/{roleId}/admin

        method: GET

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        role_id: (roleId) REQUIRED str in path

    Responses:
        200: OK - ModelRoleAdminStatusResponse (OK)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = GetRoleAdminStatus.create(
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetRoleManagers)
def get_role_managers(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get Role Managers (GetRoleManagers)

    ## The endpoint is going to be deprecated
    Role can only be assigned to other users by the role's manager.

    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/roles/{roleId}/managers [GET]_**

    Properties:
        url: /iam/roles/{roleId}/managers

        method: GET

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        role_id: (roleId) REQUIRED str in path

    Responses:
        200: OK - ModelRoleManagersResponse (OK)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = GetRoleManagers.create(
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetRoleManagers)
async def get_role_managers_async(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get Role Managers (GetRoleManagers)

    ## The endpoint is going to be deprecated
    Role can only be assigned to other users by the role's manager.

    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/roles/{roleId}/managers [GET]_**

    Properties:
        url: /iam/roles/{roleId}/managers

        method: GET

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        role_id: (roleId) REQUIRED str in path

    Responses:
        200: OK - ModelRoleManagersResponse (OK)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = GetRoleManagers.create(
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetRoleMembers)
def get_role_members(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get Role Members (GetRoleMembers)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/roles/{roleId}/members [GET]_**

    Properties:
        url: /iam/roles/{roleId}/members

        method: GET

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        role_id: (roleId) REQUIRED str in path

    Responses:
        200: OK - ModelRoleMembersResponse (OK)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = GetRoleMembers.create(
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetRoleMembers)
async def get_role_members_async(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get Role Members (GetRoleMembers)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/roles/{roleId}/members [GET]_**

    Properties:
        url: /iam/roles/{roleId}/members

        method: GET

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        role_id: (roleId) REQUIRED str in path

    Responses:
        200: OK - ModelRoleMembersResponse (OK)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = GetRoleMembers.create(
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetRoles)
def get_roles(
    is_wildcard: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Roles (GetRoles)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/roles [GET]_**

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
    request = GetRoles.create(
        is_wildcard=is_wildcard,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetRoles)
async def get_roles_async(
    is_wildcard: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Roles (GetRoles)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/roles [GET]_**

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
    request = GetRoles.create(
        is_wildcard=is_wildcard,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetRoleV3)
def public_get_role_v3(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get Public Role (PublicGetRoleV3)

    This endpoint is used to get non-admin role based on specify roleId.
    action code : 10417

    Properties:
        url: /iam/v3/public/roles/{roleId}

        method: GET

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        role_id: (roleId) REQUIRED str in path

    Responses:
        200: OK - ModelRoleResponse (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        404: Not Found - RestErrorResponse (10456: role not found)
    """
    request = PublicGetRoleV3.create(
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetRoleV3)
async def public_get_role_v3_async(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get Public Role (PublicGetRoleV3)

    This endpoint is used to get non-admin role based on specify roleId.
    action code : 10417

    Properties:
        url: /iam/v3/public/roles/{roleId}

        method: GET

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        role_id: (roleId) REQUIRED str in path

    Responses:
        200: OK - ModelRoleResponse (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        404: Not Found - RestErrorResponse (10456: role not found)
    """
    request = PublicGetRoleV3.create(
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetRolesV3)
def public_get_roles_v3(
    after: Optional[str] = None,
    before: Optional[str] = None,
    is_wildcard: Optional[bool] = None,
    limit: Optional[int] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Roles (PublicGetRolesV3)

    This endpoint is used to get all non-admin role.
    action code: 10418

    Properties:
        url: /iam/v3/public/roles

        method: GET

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        after: (after) OPTIONAL str in query

        before: (before) OPTIONAL str in query

        is_wildcard: (isWildcard) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

    Responses:
        200: OK - ModelRoleNamesResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)
    """
    request = PublicGetRolesV3.create(
        after=after,
        before=before,
        is_wildcard=is_wildcard,
        limit=limit,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetRolesV3)
async def public_get_roles_v3_async(
    after: Optional[str] = None,
    before: Optional[str] = None,
    is_wildcard: Optional[bool] = None,
    limit: Optional[int] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Roles (PublicGetRolesV3)

    This endpoint is used to get all non-admin role.
    action code: 10418

    Properties:
        url: /iam/v3/public/roles

        method: GET

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        after: (after) OPTIONAL str in query

        before: (before) OPTIONAL str in query

        is_wildcard: (isWildcard) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

    Responses:
        200: OK - ModelRoleNamesResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)
    """
    request = PublicGetRolesV3.create(
        after=after,
        before=before,
        is_wildcard=is_wildcard,
        limit=limit,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(RemoveRoleAdmin)
def remove_role_admin(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Remove Role Admin Status (RemoveRoleAdmin)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/roles/{roleId}/admin [DELETE]_**

    Properties:
        url: /iam/roles/{roleId}/admin

        method: DELETE

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = RemoveRoleAdmin.create(
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(RemoveRoleAdmin)
async def remove_role_admin_async(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Remove Role Admin Status (RemoveRoleAdmin)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/roles/{roleId}/admin [DELETE]_**

    Properties:
        url: /iam/roles/{roleId}/admin

        method: DELETE

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = RemoveRoleAdmin.create(
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(RemoveRoleManagers)
def remove_role_managers(
    body: ModelRoleManagersRequest,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Remove Role Managers (RemoveRoleManagers)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/roles/{roleId}/managers [DELETE]_**

    Properties:
        url: /iam/roles/{roleId}/managers

        method: DELETE

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelRoleManagersRequest in body

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = RemoveRoleManagers.create(
        body=body,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(RemoveRoleManagers)
async def remove_role_managers_async(
    body: ModelRoleManagersRequest,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Remove Role Managers (RemoveRoleManagers)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/roles/{roleId}/managers [DELETE]_**

    Properties:
        url: /iam/roles/{roleId}/managers

        method: DELETE

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelRoleManagersRequest in body

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = RemoveRoleManagers.create(
        body=body,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(RemoveRoleMembers)
def remove_role_members(
    body: ModelRoleMembersRequest,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Remove Role Members (RemoveRoleMembers)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/roles/{roleId}/members [DELETE]_**

    Properties:
        url: /iam/roles/{roleId}/members

        method: DELETE

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelRoleMembersRequest in body

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = RemoveRoleMembers.create(
        body=body,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(RemoveRoleMembers)
async def remove_role_members_async(
    body: ModelRoleMembersRequest,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Remove Role Members (RemoveRoleMembers)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/roles/{roleId}/members [DELETE]_**

    Properties:
        url: /iam/roles/{roleId}/members

        method: DELETE

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelRoleMembersRequest in body

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = RemoveRoleMembers.create(
        body=body,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(SetRoleAsAdmin)
def set_role_as_admin(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Set Role as Admin Role (SetRoleAsAdmin)

    ## The endpoint is going to be deprecated
    Admin roles has its members listed in the role.

    Role can be set as admin role only when it has at least 1 manager.

    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/roles/{roleId}/admin [POST]_**

    Properties:
        url: /iam/roles/{roleId}/admin

        method: POST

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = SetRoleAsAdmin.create(
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(SetRoleAsAdmin)
async def set_role_as_admin_async(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Set Role as Admin Role (SetRoleAsAdmin)

    ## The endpoint is going to be deprecated
    Admin roles has its members listed in the role.

    Role can be set as admin role only when it has at least 1 manager.

    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/roles/{roleId}/admin [POST]_**

    Properties:
        url: /iam/roles/{roleId}/admin

        method: POST

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = SetRoleAsAdmin.create(
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(UpdateRole)
def update_role(
    body: ModelRoleUpdateRequest,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Role (UpdateRole)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/roles/{roleId} [PATCH]_**

    Properties:
        url: /iam/roles/{roleId}

        method: PUT

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelRoleUpdateRequest in body

        role_id: (roleId) REQUIRED str in path

    Responses:
        200: OK - ModelRoleResponse (OK)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = UpdateRole.create(
        body=body,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(UpdateRole)
async def update_role_async(
    body: ModelRoleUpdateRequest,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Role (UpdateRole)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/roles/{roleId} [PATCH]_**

    Properties:
        url: /iam/roles/{roleId}

        method: PUT

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelRoleUpdateRequest in body

        role_id: (roleId) REQUIRED str in path

    Responses:
        200: OK - ModelRoleResponse (OK)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = UpdateRole.create(
        body=body,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(UpdateRolePermissions)
def update_role_permissions(
    body: AccountcommonPermissions,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Role Permissions (UpdateRolePermissions)

    ## The endpoint is going to be deprecated
    This endpoint will REPLACE role's permissions with the ones defined in body

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

    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/roles/{roleId}/permissions [POST]_**

    Properties:
        url: /iam/roles/{roleId}/permissions

        method: POST

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AccountcommonPermissions in body

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = UpdateRolePermissions.create(
        body=body,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(UpdateRolePermissions)
async def update_role_permissions_async(
    body: AccountcommonPermissions,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Role Permissions (UpdateRolePermissions)

    ## The endpoint is going to be deprecated
    This endpoint will REPLACE role's permissions with the ones defined in body

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

    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/roles/{roleId}/permissions [POST]_**

    Properties:
        url: /iam/roles/{roleId}/permissions

        method: POST

        tags: ["Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AccountcommonPermissions in body

        role_id: (roleId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    request = UpdateRolePermissions.create(
        body=body,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
