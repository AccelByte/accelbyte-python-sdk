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
from ....core import same_doc_as

from ..models import ADTOForUnbanUserAPICall
from ..models import ADTOObjectForEqu8UserBanStatus
from ..models import ADTOObjectForEqu8UserStatus
from ..models import Action
from ..models import ErrorEntity
from ..models import UserBanRequest
from ..models import UserReportRequest
from ..models import ValidationErrorEntity

from ..operations.user_action import BanUsers
from ..operations.user_action import GetActions
from ..operations.user_action import GetBannedUsers
from ..operations.user_action import GetUserStatus
from ..operations.user_action import PublicReportUser
from ..operations.user_action import ReportUser
from ..operations.user_action import UnBanUsers


@same_doc_as(BanUsers)
def ban_users(
    body: Optional[UserBanRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Ban user(temporarily or permanently) (banUsers)

    Ban user.
    actionId: 1 means permanent ban, actionId: 10 means Temporary ban.Other detail info:

      * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:ACTION" , action=4 (UPDATE)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ACTION [UPDATE]

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/actions/ban

        method: POST

        tags: ["UserAction"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL UserBanRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - (successful operation)

        400: Bad Request - ErrorEntity (11621: Invalid EQU8 api key in namespace [{namespace}])

        404: Not Found - ErrorEntity (11041: Equ8 config not found in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = BanUsers.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BanUsers)
async def ban_users_async(
    body: Optional[UserBanRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Ban user(temporarily or permanently) (banUsers)

    Ban user.
    actionId: 1 means permanent ban, actionId: 10 means Temporary ban.Other detail info:

      * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:ACTION" , action=4 (UPDATE)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ACTION [UPDATE]

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/actions/ban

        method: POST

        tags: ["UserAction"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL UserBanRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - (successful operation)

        400: Bad Request - ErrorEntity (11621: Invalid EQU8 api key in namespace [{namespace}])

        404: Not Found - ErrorEntity (11041: Equ8 config not found in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = BanUsers.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetActions)
def get_actions(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get configured actions (getActions)

    Get configured actions.
    Other detail info:

      * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:ACTION" , action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ACTION [READ]

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/actions

        method: GET

        tags: ["UserAction"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[Action] (successful operation)

        400: Bad Request - ErrorEntity (11621: Invalid EQU8 api key in namespace [{namespace}])

        404: Not Found - ErrorEntity (11041: Equ8 config not found in namespace [{namespace}])

        500: Internal Server Error - ErrorEntity (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetActions.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetActions)
async def get_actions_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get configured actions (getActions)

    Get configured actions.
    Other detail info:

      * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:ACTION" , action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ACTION [READ]

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/actions

        method: GET

        tags: ["UserAction"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[Action] (successful operation)

        400: Bad Request - ErrorEntity (11621: Invalid EQU8 api key in namespace [{namespace}])

        404: Not Found - ErrorEntity (11041: Equ8 config not found in namespace [{namespace}])

        500: Internal Server Error - ErrorEntity (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetActions.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetBannedUsers)
def get_banned_users(
    user_ids: List[str],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get banned user (getBannedUsers)

    Get banned status.
    Unbanned users will not return, for example: request has 8 userIds, only 5 of then were banned, then the api will these 5 user status.Other detail info:

      * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:ACTION" , action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ACTION [READ]

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/actions/banned

        method: GET

        tags: ["UserAction"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_ids: (userIds) REQUIRED List[str] in query

    Responses:
        200: OK - List[ADTOObjectForEqu8UserBanStatus] (successful operation)

        400: Bad Request - ErrorEntity (11621: Invalid EQU8 api key in namespace [{namespace}])

        404: Not Found - ErrorEntity (11641: Equ8 config not found in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetBannedUsers.create(
        user_ids=user_ids,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetBannedUsers)
async def get_banned_users_async(
    user_ids: List[str],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get banned user (getBannedUsers)

    Get banned status.
    Unbanned users will not return, for example: request has 8 userIds, only 5 of then were banned, then the api will these 5 user status.Other detail info:

      * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:ACTION" , action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ACTION [READ]

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/actions/banned

        method: GET

        tags: ["UserAction"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_ids: (userIds) REQUIRED List[str] in query

    Responses:
        200: OK - List[ADTOObjectForEqu8UserBanStatus] (successful operation)

        400: Bad Request - ErrorEntity (11621: Invalid EQU8 api key in namespace [{namespace}])

        404: Not Found - ErrorEntity (11641: Equ8 config not found in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetBannedUsers.create(
        user_ids=user_ids,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserStatus)
def get_user_status(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user status (getUserStatus)

    Get user status.
    If actionId does not exist, then the user is not banned.If actionId and expires exist, then the user is temporarily banned, if expires does not exist, then the user is permanently banned.Other detail info:

      * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:ACTION" , action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ACTION [READ]

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/actions/status

        method: GET

        tags: ["UserAction"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in query

    Responses:
        200: OK - ADTOObjectForEqu8UserStatus (successful operation)

        400: Bad Request - ErrorEntity (11621: Invalid EQU8 api key in namespace [{namespace}])

        404: Not Found - ErrorEntity (11641: Equ8 config not found in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserStatus.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserStatus)
async def get_user_status_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user status (getUserStatus)

    Get user status.
    If actionId does not exist, then the user is not banned.If actionId and expires exist, then the user is temporarily banned, if expires does not exist, then the user is permanently banned.Other detail info:

      * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:ACTION" , action=2 (READ)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ACTION [READ]

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/actions/status

        method: GET

        tags: ["UserAction"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in query

    Responses:
        200: OK - ADTOObjectForEqu8UserStatus (successful operation)

        400: Bad Request - ErrorEntity (11621: Invalid EQU8 api key in namespace [{namespace}])

        404: Not Found - ErrorEntity (11641: Equ8 config not found in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserStatus.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicReportUser)
def public_report_user(
    user_id: str,
    body: Optional[UserReportRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Report a game user (publicReportUser)

    This API is used to report a game user.

    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:ACTION", action=1 (CREATE)

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:ACTION [CREATE]

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/users/{userId}/actions/report

        method: POST

        tags: ["UserAction"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL UserReportRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicReportUser.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicReportUser)
async def public_report_user_async(
    user_id: str,
    body: Optional[UserReportRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Report a game user (publicReportUser)

    This API is used to report a game user.

    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:ACTION", action=1 (CREATE)

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:ACTION [CREATE]

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/users/{userId}/actions/report

        method: POST

        tags: ["UserAction"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL UserReportRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicReportUser.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ReportUser)
def report_user(
    body: Optional[UserReportRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Report a game player(for game service) (reportUser)

    This API is for game service to report a game player.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ACTION", action=1 (CREATE)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ACTION [CREATE]

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/actions/report

        method: POST

        tags: ["UserAction"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL UserReportRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ReportUser.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ReportUser)
async def report_user_async(
    body: Optional[UserReportRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Report a game player(for game service) (reportUser)

    This API is for game service to report a game player.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ACTION", action=1 (CREATE)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ACTION [CREATE]

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/actions/report

        method: POST

        tags: ["UserAction"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL UserReportRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ReportUser.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UnBanUsers)
def un_ban_users(
    body: Optional[ADTOForUnbanUserAPICall] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Unban user (unBanUsers)

    Unban user.
    Other detail info:

      * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:ACTION" , action=4 (UPDATE)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ACTION [UPDATE]

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/actions/unban

        method: POST

        tags: ["UserAction"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL ADTOForUnbanUserAPICall in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - (successful operation)

        400: Bad Request - ErrorEntity (11621: Invalid EQU8 api key in namespace [{namespace}])

        404: Not Found - ErrorEntity (11041: Equ8 config not found in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UnBanUsers.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UnBanUsers)
async def un_ban_users_async(
    body: Optional[ADTOForUnbanUserAPICall] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Unban user (unBanUsers)

    Unban user.
    Other detail info:

      * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:ACTION" , action=4 (UPDATE)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ACTION [UPDATE]

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/actions/unban

        method: POST

        tags: ["UserAction"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL ADTOForUnbanUserAPICall in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - (successful operation)

        400: Bad Request - ErrorEntity (11621: Invalid EQU8 api key in namespace [{namespace}])

        404: Not Found - ErrorEntity (11041: Equ8 config not found in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UnBanUsers.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
