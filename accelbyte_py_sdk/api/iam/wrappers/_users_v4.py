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

from ..models import AccountCreateTestUserRequestV4
from ..models import AccountCreateTestUsersRequestV4
from ..models import AccountCreateTestUsersResponseV4
from ..models import AccountCreateUserRequestV4
from ..models import AccountCreateUserResponseV4
from ..models import AccountUpgradeHeadlessAccountRequestV4
from ..models import AccountUpgradeHeadlessAccountWithVerificationCodeRequestV4
from ..models import AccountUserResponseV4
from ..models import ModelAddUserRoleV4Request
from ..models import ModelAuthenticatorKeyResponseV4
from ..models import ModelBackupCodesResponseV4
from ..models import ModelCheckValidUserIDRequestV4
from ..models import ModelEmailUpdateRequestV4
from ..models import ModelEnabledFactorsResponseV4
from ..models import ModelInviteUserRequestV4
from ..models import ModelInviteUserResponseV3
from ..models import ModelListUserRolesV4Response
from ..models import ModelListValidUserIDResponseV4
from ..models import ModelPublicInviteUserRequestV4
from ..models import ModelRemoveUserRoleV4Request
from ..models import ModelUserCreateFromInvitationRequestV4
from ..models import ModelUserResponseV3
from ..models import ModelUserUpdateRequestV3
from ..models import RestErrorResponse

from ..operations.users_v4 import AdminAddUserRoleV4
from ..operations.users_v4 import AdminBulkCheckValidUserIDV4
from ..operations.users_v4 import AdminCreateTestUsersV4
from ..operations.users_v4 import AdminDisableMyAuthenticatorV4
from ..operations.users_v4 import AdminDisableMyBackupCodesV4
from ..operations.users_v4 import AdminDisableMyEmailV4
from ..operations.users_v4 import AdminDisableUserMFAV4
from ..operations.users_v4 import AdminDownloadMyBackupCodesV4
from ..operations.users_v4 import AdminEnableMyAuthenticatorV4
from ..operations.users_v4 import AdminEnableMyBackupCodesV4
from ..operations.users_v4 import AdminEnableMyEmailV4
from ..operations.users_v4 import AdminGenerateMyAuthenticatorKeyV4
from ..operations.users_v4 import AdminGenerateMyBackupCodesV4
from ..operations.users_v4 import AdminGetMyBackupCodesV4
from ..operations.users_v4 import AdminGetMyEnabledFactorsV4
from ..operations.users_v4 import AdminInviteUserV4
from ..operations.users_v4 import AdminListUserRolesV4
from ..operations.users_v4 import AdminMakeFactorMyDefaultV4
from ..operations.users_v4 import AdminRemoveUserRoleV4
from ..operations.users_v4 import AdminSendMyMFAEmailCodeV4
from ..operations.users_v4 import AdminUpdateMyUserV4
from ..operations.users_v4 import AdminUpdateUserEmailAddressV4
from ..operations.users_v4 import AdminUpdateUserRoleV4
from ..operations.users_v4 import AdminUpdateUserV4
from ..operations.users_v4 import CreateUserFromInvitationV4
from ..operations.users_v4 import PublicCreateTestUserV4
from ..operations.users_v4 import PublicCreateUserV4
from ..operations.users_v4 import PublicDisableMyAuthenticatorV4
from ..operations.users_v4 import PublicDisableMyBackupCodesV4
from ..operations.users_v4 import PublicDisableMyEmailV4
from ..operations.users_v4 import PublicDownloadMyBackupCodesV4
from ..operations.users_v4 import PublicEnableMyAuthenticatorV4
from ..operations.users_v4 import PublicEnableMyBackupCodesV4
from ..operations.users_v4 import PublicEnableMyEmailV4
from ..operations.users_v4 import PublicGenerateMyAuthenticatorKeyV4
from ..operations.users_v4 import PublicGenerateMyBackupCodesV4
from ..operations.users_v4 import PublicGetMyBackupCodesV4
from ..operations.users_v4 import PublicGetMyEnabledFactorsV4
from ..operations.users_v4 import PublicInviteUserV4
from ..operations.users_v4 import PublicMakeFactorMyDefaultV4
from ..operations.users_v4 import PublicRemoveTrustedDeviceV4
from ..operations.users_v4 import PublicSendMyMFAEmailCodeV4
from ..operations.users_v4 import PublicUpdateUserEmailAddressV4
from ..operations.users_v4 import PublicUpdateUserV4
from ..operations.users_v4 import PublicUpgradeHeadlessAccountV4
from ..operations.users_v4 import PublicUpgradeHeadlessAccountWithVerificationCodeV4
from ..models import AccountCreateTestUserRequestV4AuthTypeEnum
from ..models import AccountCreateUserRequestV4AuthTypeEnum
from ..models import ModelUserCreateFromInvitationRequestV4AuthTypeEnum


@same_doc_as(AdminAddUserRoleV4)
def admin_add_user_role_v4(
    body: ModelAddUserRoleV4Request,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Add User's Role V4 (AdminAddUserRoleV4)

    This endpoint requires ADMIN:NAMESPACE:{namespace}:ROLE:USER:* [UPDATE] permission.

    New role will be appended to user's current roles. Request body need to specify allowed namespace for given role to support new role restriction.
    Skipped the check whether the user performing the request is a role manager / assigner since there is a plan to discard the role manager / assigner.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ROLE:USER:* [UPDATE]

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/users/{userId}/roles

        method: POST

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelAddUserRoleV4Request in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelListUserRolesV4Response (Operation succeeded)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        422: Unprocessable Entity - RestErrorResponse

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminAddUserRoleV4.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminAddUserRoleV4)
async def admin_add_user_role_v4_async(
    body: ModelAddUserRoleV4Request,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Add User's Role V4 (AdminAddUserRoleV4)

    This endpoint requires ADMIN:NAMESPACE:{namespace}:ROLE:USER:* [UPDATE] permission.

    New role will be appended to user's current roles. Request body need to specify allowed namespace for given role to support new role restriction.
    Skipped the check whether the user performing the request is a role manager / assigner since there is a plan to discard the role manager / assigner.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ROLE:USER:* [UPDATE]

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/users/{userId}/roles

        method: POST

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelAddUserRoleV4Request in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelListUserRolesV4Response (Operation succeeded)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        422: Unprocessable Entity - RestErrorResponse

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminAddUserRoleV4.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminBulkCheckValidUserIDV4)
def admin_bulk_check_valid_user_idv4(
    body: ModelCheckValidUserIDRequestV4,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Check Valid User ID (AdminBulkCheckValidUserIDV4)

    Use this endpoint to check if userID exists or not

    Required permission ' ADMIN:NAMESPACE:{namespace}:USER [READ]'

    Maximum number of userID to be checked is 50

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER [READ]

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/users/bulk/validate

        method: POST

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelCheckValidUserIDRequestV4 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelListValidUserIDResponseV4 (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminBulkCheckValidUserIDV4.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminBulkCheckValidUserIDV4)
async def admin_bulk_check_valid_user_idv4_async(
    body: ModelCheckValidUserIDRequestV4,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Check Valid User ID (AdminBulkCheckValidUserIDV4)

    Use this endpoint to check if userID exists or not

    Required permission ' ADMIN:NAMESPACE:{namespace}:USER [READ]'

    Maximum number of userID to be checked is 50

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER [READ]

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/users/bulk/validate

        method: POST

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelCheckValidUserIDRequestV4 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelListValidUserIDResponseV4 (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminBulkCheckValidUserIDV4.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminCreateTestUsersV4)
def admin_create_test_users_v4(
    body: AccountCreateTestUsersRequestV4,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """[TEST FACILITY ONLY]Create test Users (AdminCreateTestUsersV4)

    Create test users and not send verification code email.


    Required Permission: ADMIN:NAMESPACE:{namespace}:USER

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER []

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/test_users

        method: POST

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AccountCreateTestUsersRequestV4 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - AccountCreateTestUsersResponseV4 (Created)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)

        501: Not Implemented - RestErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminCreateTestUsersV4.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminCreateTestUsersV4)
async def admin_create_test_users_v4_async(
    body: AccountCreateTestUsersRequestV4,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """[TEST FACILITY ONLY]Create test Users (AdminCreateTestUsersV4)

    Create test users and not send verification code email.


    Required Permission: ADMIN:NAMESPACE:{namespace}:USER

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER []

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/test_users

        method: POST

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AccountCreateTestUsersRequestV4 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - AccountCreateTestUsersResponseV4 (Created)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)

        501: Not Implemented - RestErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminCreateTestUsersV4.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDisableMyAuthenticatorV4)
def admin_disable_my_authenticator_v4(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Disable 2FA authenticator (AdminDisableMyAuthenticatorV4)

    This endpoint is used to disable 2FA authenticator.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/admin/users/me/mfa/authenticator/disable

        method: DELETE

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        204: No Content - (Authenticator disabled)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminDisableMyAuthenticatorV4.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDisableMyAuthenticatorV4)
async def admin_disable_my_authenticator_v4_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Disable 2FA authenticator (AdminDisableMyAuthenticatorV4)

    This endpoint is used to disable 2FA authenticator.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/admin/users/me/mfa/authenticator/disable

        method: DELETE

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        204: No Content - (Authenticator disabled)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminDisableMyAuthenticatorV4.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDisableMyBackupCodesV4)
def admin_disable_my_backup_codes_v4(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Disable 2FA backup codes (AdminDisableMyBackupCodesV4)

    This endpoint is used to enable 2FA backup codes.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/admin/users/me/mfa/backupCode/disable

        method: DELETE

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        204: No Content - (Backup codes disabled)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminDisableMyBackupCodesV4.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDisableMyBackupCodesV4)
async def admin_disable_my_backup_codes_v4_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Disable 2FA backup codes (AdminDisableMyBackupCodesV4)

    This endpoint is used to enable 2FA backup codes.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/admin/users/me/mfa/backupCode/disable

        method: DELETE

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        204: No Content - (Backup codes disabled)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminDisableMyBackupCodesV4.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDisableMyEmailV4)
def admin_disable_my_email_v4(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Disable 2FA email (AdminDisableMyEmailV4)

    This endpoint is used to disable 2FA email.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/admin/users/me/mfa/email/disable

        method: POST

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        204: No Content - (email disabled)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20003: forbidden access)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminDisableMyEmailV4.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDisableMyEmailV4)
async def admin_disable_my_email_v4_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Disable 2FA email (AdminDisableMyEmailV4)

    This endpoint is used to disable 2FA email.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/admin/users/me/mfa/email/disable

        method: POST

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        204: No Content - (email disabled)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20003: forbidden access)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminDisableMyEmailV4.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDisableUserMFAV4)
def admin_disable_user_mfav4(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Disable User 2FA (AdminDisableUserMFAV4)

    This endpoint requires ADMIN:NAMESPACE:{namespace}:USER:{userId} [DELETE] permission





    This endpoint is used to disable user 2FA.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId} [DELETE]

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/users/{userId}/mfa/disable

        method: DELETE

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 10191: email address not verified | 10171: email address not found | 10193: mfa not enabled)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminDisableUserMFAV4.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDisableUserMFAV4)
async def admin_disable_user_mfav4_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Disable User 2FA (AdminDisableUserMFAV4)

    This endpoint requires ADMIN:NAMESPACE:{namespace}:USER:{userId} [DELETE] permission





    This endpoint is used to disable user 2FA.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId} [DELETE]

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/users/{userId}/mfa/disable

        method: DELETE

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 10191: email address not verified | 10171: email address not found | 10193: mfa not enabled)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminDisableUserMFAV4.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDownloadMyBackupCodesV4)
def admin_download_my_backup_codes_v4(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Download user backup codes (AdminDownloadMyBackupCodesV4)

    This endpoint is used to download backup codes.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/admin/users/me/mfa/backupCode/download

        method: GET

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - Any (Backup codes downloaded)

        400: Bad Request - RestErrorResponse (10192: factor not enabled | 10191: email address not verified | 10195: no valid backup code found | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminDownloadMyBackupCodesV4.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDownloadMyBackupCodesV4)
async def admin_download_my_backup_codes_v4_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Download user backup codes (AdminDownloadMyBackupCodesV4)

    This endpoint is used to download backup codes.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/admin/users/me/mfa/backupCode/download

        method: GET

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - Any (Backup codes downloaded)

        400: Bad Request - RestErrorResponse (10192: factor not enabled | 10191: email address not verified | 10195: no valid backup code found | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminDownloadMyBackupCodesV4.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminEnableMyAuthenticatorV4)
def admin_enable_my_authenticator_v4(
    code: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Enable 2FA authenticator (AdminEnableMyAuthenticatorV4)

    This endpoint is used to enable 2FA authenticator.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/admin/users/me/mfa/authenticator/enable

        method: POST

        tags: ["Users V4"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        code: (code) OPTIONAL str in form_data

    Responses:
        204: No Content - (Authenticator enabled)

        400: Bad Request - RestErrorResponse (10138: code not match | 10191: email address not verified | 10190: auth secret key expired | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        409: Conflict - RestErrorResponse (10194: factor already enabled)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminEnableMyAuthenticatorV4.create(
        code=code,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminEnableMyAuthenticatorV4)
async def admin_enable_my_authenticator_v4_async(
    code: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Enable 2FA authenticator (AdminEnableMyAuthenticatorV4)

    This endpoint is used to enable 2FA authenticator.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/admin/users/me/mfa/authenticator/enable

        method: POST

        tags: ["Users V4"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        code: (code) OPTIONAL str in form_data

    Responses:
        204: No Content - (Authenticator enabled)

        400: Bad Request - RestErrorResponse (10138: code not match | 10191: email address not verified | 10190: auth secret key expired | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        409: Conflict - RestErrorResponse (10194: factor already enabled)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminEnableMyAuthenticatorV4.create(
        code=code,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminEnableMyBackupCodesV4)
def admin_enable_my_backup_codes_v4(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Enable 2FA backup codes (AdminEnableMyBackupCodesV4)

    This endpoint is used to enable 2FA backup codes.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/admin/users/me/mfa/backupCode/enable

        method: POST

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelBackupCodesResponseV4 (Backup codes enabled)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10194: factor already enabled | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        409: Conflict - RestErrorResponse (10194: factor already enabled)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminEnableMyBackupCodesV4.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminEnableMyBackupCodesV4)
async def admin_enable_my_backup_codes_v4_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Enable 2FA backup codes (AdminEnableMyBackupCodesV4)

    This endpoint is used to enable 2FA backup codes.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/admin/users/me/mfa/backupCode/enable

        method: POST

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelBackupCodesResponseV4 (Backup codes enabled)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10194: factor already enabled | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        409: Conflict - RestErrorResponse (10194: factor already enabled)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminEnableMyBackupCodesV4.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminEnableMyEmailV4)
def admin_enable_my_email_v4(
    code: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Enable 2FA email (AdminEnableMyEmailV4)

    This endpoint is used to enable 2FA email.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/admin/users/me/mfa/email/enable

        method: POST

        tags: ["Users V4"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        code: (code) REQUIRED str in form_data

    Responses:
        204: No Content - (email enabled)

        400: Bad Request - RestErrorResponse (10138: code not match | 10191: email address not verified | 10137: code is expired | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20003: forbidden access)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        409: Conflict - RestErrorResponse (10194: factor already enabled)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminEnableMyEmailV4.create(
        code=code,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminEnableMyEmailV4)
async def admin_enable_my_email_v4_async(
    code: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Enable 2FA email (AdminEnableMyEmailV4)

    This endpoint is used to enable 2FA email.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/admin/users/me/mfa/email/enable

        method: POST

        tags: ["Users V4"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        code: (code) REQUIRED str in form_data

    Responses:
        204: No Content - (email enabled)

        400: Bad Request - RestErrorResponse (10138: code not match | 10191: email address not verified | 10137: code is expired | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20003: forbidden access)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        409: Conflict - RestErrorResponse (10194: factor already enabled)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminEnableMyEmailV4.create(
        code=code,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGenerateMyAuthenticatorKeyV4)
def admin_generate_my_authenticator_key_v4(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Generate secret key for 3rd-party authenticate app (AdminGenerateMyAuthenticatorKeyV4)

    This endpoint is used to generate a secret key for 3rd-party authenticator app.
    A QR code URI is also returned so that frontend can generate QR code image.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/admin/users/me/mfa/authenticator/key

        method: POST

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelAuthenticatorKeyResponseV4 (Key generated)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminGenerateMyAuthenticatorKeyV4.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGenerateMyAuthenticatorKeyV4)
async def admin_generate_my_authenticator_key_v4_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Generate secret key for 3rd-party authenticate app (AdminGenerateMyAuthenticatorKeyV4)

    This endpoint is used to generate a secret key for 3rd-party authenticator app.
    A QR code URI is also returned so that frontend can generate QR code image.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/admin/users/me/mfa/authenticator/key

        method: POST

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelAuthenticatorKeyResponseV4 (Key generated)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminGenerateMyAuthenticatorKeyV4.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGenerateMyBackupCodesV4)
def admin_generate_my_backup_codes_v4(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Generate backup codes (AdminGenerateMyBackupCodesV4)

    This endpoint is used to generate 8-digits backup codes.
    Each code is a one-time code and will be deleted once used.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/admin/users/me/mfa/backupCode

        method: POST

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelBackupCodesResponseV4 (Backup codes generated)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10192: factor not enabled | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminGenerateMyBackupCodesV4.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGenerateMyBackupCodesV4)
async def admin_generate_my_backup_codes_v4_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Generate backup codes (AdminGenerateMyBackupCodesV4)

    This endpoint is used to generate 8-digits backup codes.
    Each code is a one-time code and will be deleted once used.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/admin/users/me/mfa/backupCode

        method: POST

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelBackupCodesResponseV4 (Backup codes generated)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10192: factor not enabled | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminGenerateMyBackupCodesV4.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetMyBackupCodesV4)
def admin_get_my_backup_codes_v4(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get backup codes (AdminGetMyBackupCodesV4)

    This endpoint is used to get 8-digits backup codes.
    Each code is a one-time code and will be deleted once used.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/admin/users/me/mfa/backupCode

        method: GET

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelBackupCodesResponseV4 (Get backup codes)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10192: factor not enabled | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminGetMyBackupCodesV4.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetMyBackupCodesV4)
async def admin_get_my_backup_codes_v4_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get backup codes (AdminGetMyBackupCodesV4)

    This endpoint is used to get 8-digits backup codes.
    Each code is a one-time code and will be deleted once used.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/admin/users/me/mfa/backupCode

        method: GET

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelBackupCodesResponseV4 (Get backup codes)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10192: factor not enabled | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminGetMyBackupCodesV4.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetMyEnabledFactorsV4)
def admin_get_my_enabled_factors_v4(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get user enabled factors (AdminGetMyEnabledFactorsV4)

    This endpoint is used to get user enabled factors.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/admin/users/me/mfa/factor

        method: GET

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelEnabledFactorsResponseV4 (Methods returned)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10193: mfa not enabled | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminGetMyEnabledFactorsV4.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetMyEnabledFactorsV4)
async def admin_get_my_enabled_factors_v4_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get user enabled factors (AdminGetMyEnabledFactorsV4)

    This endpoint is used to get user enabled factors.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/admin/users/me/mfa/factor

        method: GET

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelEnabledFactorsResponseV4 (Methods returned)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10193: mfa not enabled | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminGetMyEnabledFactorsV4.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminInviteUserV4)
def admin_invite_user_v4(
    body: ModelInviteUserRequestV4,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin invite User v4 (AdminInviteUserV4)

    Required permission 'ADMIN:USER:INVITE [CREATE]

    Use this endpoint to invite admin or non-admin user and assign role to them. The role must be scoped to namespace. An admin user can only
    assign role with namespaces that the admin user has required permission which is same as the required permission of endpoint: [AdminAddUserRoleV4].

    Detail request body :
    - Assigned Namespaces is required, List of namespaces that will be assigned to the user.
    - Email Address is required, List of email addresses that will be invited
    - isAdmin is required, true if user is admin, false if user is not admin
    - Namespace is optional. Only works on multi tenant mode,
    if not specified then it will be assigned Publisher namespace,
    if specified, it will become that studio/publisher where user is invited to.
    - Role is optional, if not specified then it will only assign User role.

    The invited admin will also assigned with "User" role by default.

    Required Permission(s):
        - ADMIN:USER:INVITE [CREATE]

    Properties:
        url: /iam/v4/admin/users/users/invite

        method: POST

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelInviteUserRequestV4 in body

    Responses:
        201: Created - ModelInviteUserResponseV3 (Created)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10154: country not found)

        409: Conflict - RestErrorResponse (10133: email already used)

        422: Unprocessable Entity - RestErrorResponse (20002: validation error)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminInviteUserV4.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminInviteUserV4)
async def admin_invite_user_v4_async(
    body: ModelInviteUserRequestV4,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin invite User v4 (AdminInviteUserV4)

    Required permission 'ADMIN:USER:INVITE [CREATE]

    Use this endpoint to invite admin or non-admin user and assign role to them. The role must be scoped to namespace. An admin user can only
    assign role with namespaces that the admin user has required permission which is same as the required permission of endpoint: [AdminAddUserRoleV4].

    Detail request body :
    - Assigned Namespaces is required, List of namespaces that will be assigned to the user.
    - Email Address is required, List of email addresses that will be invited
    - isAdmin is required, true if user is admin, false if user is not admin
    - Namespace is optional. Only works on multi tenant mode,
    if not specified then it will be assigned Publisher namespace,
    if specified, it will become that studio/publisher where user is invited to.
    - Role is optional, if not specified then it will only assign User role.

    The invited admin will also assigned with "User" role by default.

    Required Permission(s):
        - ADMIN:USER:INVITE [CREATE]

    Properties:
        url: /iam/v4/admin/users/users/invite

        method: POST

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelInviteUserRequestV4 in body

    Responses:
        201: Created - ModelInviteUserResponseV3 (Created)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10154: country not found)

        409: Conflict - RestErrorResponse (10133: email already used)

        422: Unprocessable Entity - RestErrorResponse (20002: validation error)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminInviteUserV4.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminListUserRolesV4)
def admin_list_user_roles_v4(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin List User's Roles V4 (AdminListUserRolesV4)

    This endpoint requires ADMIN:NAMESPACE:{namespace}:ROLE:USER:* [READ] permission.

    List roles assigned to a user

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ROLE:USER:* [READ]

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/users/{userId}/roles

        method: GET

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelListUserRolesV4Response (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminListUserRolesV4.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminListUserRolesV4)
async def admin_list_user_roles_v4_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin List User's Roles V4 (AdminListUserRolesV4)

    This endpoint requires ADMIN:NAMESPACE:{namespace}:ROLE:USER:* [READ] permission.

    List roles assigned to a user

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ROLE:USER:* [READ]

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/users/{userId}/roles

        method: GET

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelListUserRolesV4Response (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminListUserRolesV4.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminMakeFactorMyDefaultV4)
def admin_make_factor_my_default_v4(
    factor: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Make 2FA factor default (AdminMakeFactorMyDefaultV4)

    This endpoint is used to make 2FA factor default.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/admin/users/me/mfa/factor

        method: POST

        tags: ["Users V4"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        factor: (factor) REQUIRED str in form_data

    Responses:
        204: No Content - (Default method changed)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10189: invalid factor | 10192: factor not enabled | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminMakeFactorMyDefaultV4.create(
        factor=factor,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminMakeFactorMyDefaultV4)
async def admin_make_factor_my_default_v4_async(
    factor: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Make 2FA factor default (AdminMakeFactorMyDefaultV4)

    This endpoint is used to make 2FA factor default.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/admin/users/me/mfa/factor

        method: POST

        tags: ["Users V4"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        factor: (factor) REQUIRED str in form_data

    Responses:
        204: No Content - (Default method changed)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10189: invalid factor | 10192: factor not enabled | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminMakeFactorMyDefaultV4.create(
        factor=factor,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminRemoveUserRoleV4)
def admin_remove_user_role_v4(
    body: ModelRemoveUserRoleV4Request,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Remove User Role v4 (AdminRemoveUserRoleV4)

    This endpoint requires ADMIN:NAMESPACE:{namespace}:ROLE:USER:* [Delete] permission.

    Remove a role from user's roles.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ROLE:USER:* [Delete]

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/users/{userId}/roles

        method: DELETE

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelRemoveUserRoleV4Request in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        422: Unprocessable Entity - RestErrorResponse (10183: unprocessable entity)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminRemoveUserRoleV4.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminRemoveUserRoleV4)
async def admin_remove_user_role_v4_async(
    body: ModelRemoveUserRoleV4Request,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Remove User Role v4 (AdminRemoveUserRoleV4)

    This endpoint requires ADMIN:NAMESPACE:{namespace}:ROLE:USER:* [Delete] permission.

    Remove a role from user's roles.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ROLE:USER:* [Delete]

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/users/{userId}/roles

        method: DELETE

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelRemoveUserRoleV4Request in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        422: Unprocessable Entity - RestErrorResponse (10183: unprocessable entity)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminRemoveUserRoleV4.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminSendMyMFAEmailCodeV4)
def admin_send_my_mfa_email_code_v4(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Send code for enabling email (AdminSendMyMFAEmailCodeV4)

    This endpoint is used to send email code.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/admin/users/me/mfa/email/code

        method: POST

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        204: No Content - (code sent)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20003: forbidden access)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        429: Too Many Requests - RestErrorResponse (20007: too many requests)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminSendMyMFAEmailCodeV4.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminSendMyMFAEmailCodeV4)
async def admin_send_my_mfa_email_code_v4_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Send code for enabling email (AdminSendMyMFAEmailCodeV4)

    This endpoint is used to send email code.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/admin/users/me/mfa/email/code

        method: POST

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        204: No Content - (code sent)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20003: forbidden access)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        429: Too Many Requests - RestErrorResponse (20007: too many requests)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminSendMyMFAEmailCodeV4.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateMyUserV4)
def admin_update_my_user_v4(
    body: ModelUserUpdateRequestV3,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Update My User (AdminUpdateMyUserV4)

    Requires valid user access token





    This Endpoint support update user based on given data. Single request can update single field or multi fields.




    Supported field {country, displayName, languageTag, dateOfBirth, userName}




    Country use ISO3166-1 alpha-2 two letter, e.g. US.




    Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.




    action code : 10103

    Properties:
        url: /iam/v4/admin/users/me

        method: PATCH

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserUpdateRequestV3 in body

    Responses:
        200: OK - ModelUserResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body | 10154: country not found | 10130: user under age)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        409: Conflict - RestErrorResponse (10177: username already used)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminUpdateMyUserV4.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateMyUserV4)
async def admin_update_my_user_v4_async(
    body: ModelUserUpdateRequestV3,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Update My User (AdminUpdateMyUserV4)

    Requires valid user access token





    This Endpoint support update user based on given data. Single request can update single field or multi fields.




    Supported field {country, displayName, languageTag, dateOfBirth, userName}




    Country use ISO3166-1 alpha-2 two letter, e.g. US.




    Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.




    action code : 10103

    Properties:
        url: /iam/v4/admin/users/me

        method: PATCH

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserUpdateRequestV3 in body

    Responses:
        200: OK - ModelUserResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body | 10154: country not found | 10130: user under age)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        409: Conflict - RestErrorResponse (10177: username already used)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminUpdateMyUserV4.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateUserEmailAddressV4)
def admin_update_user_email_address_v4(
    body: ModelEmailUpdateRequestV4,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a User Email Address (AdminUpdateUserEmailAddressV4)

    Required permission


        'ADMIN:NAMESPACE:{namespace}:USER:{userId} [UPDATE]'






    This is the endpoint for an admin to update a user email address.
    This endpoint need a valid user token from an admin to verify its identity (email) before updating a user.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId} [UPDATE]

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/users/{userId}/email

        method: PUT

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelEmailUpdateRequestV4 in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        404: Not Found - RestErrorResponse (20008: user not found)

        409: Conflict - RestErrorResponse (10133: email already used)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminUpdateUserEmailAddressV4.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateUserEmailAddressV4)
async def admin_update_user_email_address_v4_async(
    body: ModelEmailUpdateRequestV4,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a User Email Address (AdminUpdateUserEmailAddressV4)

    Required permission


        'ADMIN:NAMESPACE:{namespace}:USER:{userId} [UPDATE]'






    This is the endpoint for an admin to update a user email address.
    This endpoint need a valid user token from an admin to verify its identity (email) before updating a user.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId} [UPDATE]

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/users/{userId}/email

        method: PUT

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelEmailUpdateRequestV4 in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        404: Not Found - RestErrorResponse (20008: user not found)

        409: Conflict - RestErrorResponse (10133: email already used)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminUpdateUserEmailAddressV4.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateUserRoleV4)
def admin_update_user_role_v4(
    body: ModelAddUserRoleV4Request,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Update User's Role V4 (AdminUpdateUserRoleV4)

    This endpoint requires ADMIN:NAMESPACE:{namespace}:ROLE:USER:* [UPDATE] permission.

    User's roles will be replaced with roles from request body.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ROLE:USER:* [UPDATE]

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/users/{userId}/roles

        method: PUT

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelAddUserRoleV4Request in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelListUserRolesV4Response (Operation succeeded)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        422: Unprocessable Entity - RestErrorResponse (10183: unprocessable entity)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminUpdateUserRoleV4.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateUserRoleV4)
async def admin_update_user_role_v4_async(
    body: ModelAddUserRoleV4Request,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Update User's Role V4 (AdminUpdateUserRoleV4)

    This endpoint requires ADMIN:NAMESPACE:{namespace}:ROLE:USER:* [UPDATE] permission.

    User's roles will be replaced with roles from request body.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ROLE:USER:* [UPDATE]

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/users/{userId}/roles

        method: PUT

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelAddUserRoleV4Request in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelListUserRolesV4Response (Operation succeeded)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        422: Unprocessable Entity - RestErrorResponse (10183: unprocessable entity)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminUpdateUserRoleV4.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateUserV4)
def admin_update_user_v4(
    body: ModelUserUpdateRequestV3,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update User (AdminUpdateUserV4)

    This endpoint requires ADMIN:NAMESPACE:{namespace}:USER:{userId} [UPDATE] permission





    This Endpoint support update user based on given data. Single request can update single field or multi fields.




    Supported field {country, displayName, languageTag, dateOfBirth}




    Country use ISO3166-1 alpha-2 two letter, e.g. US.




    Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.



     Several case of updating email address


    action code : 10103

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId} [UPDATE]

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/users/{userId}

        method: PUT

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserUpdateRequestV3 in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelUserResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body | 10154: country not found | 10130: user under age)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        409: Conflict - RestErrorResponse (10133: email already used)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminUpdateUserV4.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateUserV4)
async def admin_update_user_v4_async(
    body: ModelUserUpdateRequestV3,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update User (AdminUpdateUserV4)

    This endpoint requires ADMIN:NAMESPACE:{namespace}:USER:{userId} [UPDATE] permission





    This Endpoint support update user based on given data. Single request can update single field or multi fields.




    Supported field {country, displayName, languageTag, dateOfBirth}




    Country use ISO3166-1 alpha-2 two letter, e.g. US.




    Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.



     Several case of updating email address


    action code : 10103

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId} [UPDATE]

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/users/{userId}

        method: PUT

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserUpdateRequestV3 in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelUserResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body | 10154: country not found | 10130: user under age)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        409: Conflict - RestErrorResponse (10133: email already used)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminUpdateUserV4.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateUserFromInvitationV4)
def create_user_from_invitation_v4(
    body: ModelUserCreateFromInvitationRequestV4,
    invitation_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create User From Invitation (CreateUserFromInvitationV4)

    This endpoint create user from saved roles when creating invitation and submitted data.
    User will be able to login after completing submitting the data through this endpoint.
    Available Authentication Types:

    EMAILPASSWD: an authentication type used for new user registration through email.

    Country use ISO3166-1 alpha-2 two letter, e.g. US.

    Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.

    Required attributes:
    - authType: possible value is EMAILPASSWD (see above)
    - country: ISO3166-1 alpha-2 two letter, e.g. US.
    - dateOfBirth: YYYY-MM-DD, e.g. 1990-01-01. valid values are between 1905-01-01 until current date.
    - displayName: Please refer to the rule from /v3/public/inputValidations API.
    - password: Please refer to the rule from /v3/public/inputValidations API.
    - username: Please refer to the rule from /v3/public/inputValidations API.

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/invite/{invitationId}

        method: POST

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserCreateFromInvitationRequestV4 in body

        invitation_id: (invitationId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - AccountCreateUserResponseV4 (Created)

        400: Bad Request - RestErrorResponse (20002: validation error | 10130: user under age)

        404: Not Found - RestErrorResponse (10180: admin invitation not found or expired | 10154: country not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateUserFromInvitationV4.create(
        body=body,
        invitation_id=invitation_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateUserFromInvitationV4)
async def create_user_from_invitation_v4_async(
    body: ModelUserCreateFromInvitationRequestV4,
    invitation_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create User From Invitation (CreateUserFromInvitationV4)

    This endpoint create user from saved roles when creating invitation and submitted data.
    User will be able to login after completing submitting the data through this endpoint.
    Available Authentication Types:

    EMAILPASSWD: an authentication type used for new user registration through email.

    Country use ISO3166-1 alpha-2 two letter, e.g. US.

    Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.

    Required attributes:
    - authType: possible value is EMAILPASSWD (see above)
    - country: ISO3166-1 alpha-2 two letter, e.g. US.
    - dateOfBirth: YYYY-MM-DD, e.g. 1990-01-01. valid values are between 1905-01-01 until current date.
    - displayName: Please refer to the rule from /v3/public/inputValidations API.
    - password: Please refer to the rule from /v3/public/inputValidations API.
    - username: Please refer to the rule from /v3/public/inputValidations API.

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/invite/{invitationId}

        method: POST

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserCreateFromInvitationRequestV4 in body

        invitation_id: (invitationId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - AccountCreateUserResponseV4 (Created)

        400: Bad Request - RestErrorResponse (20002: validation error | 10130: user under age)

        404: Not Found - RestErrorResponse (10180: admin invitation not found or expired | 10154: country not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateUserFromInvitationV4.create(
        body=body,
        invitation_id=invitation_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicCreateTestUserV4)
def public_create_test_user_v4(
    body: AccountCreateTestUserRequestV4,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """[TEST FACILITY ONLY]Create test User (PublicCreateTestUserV4)

    Create a test user and not send verification code email



    Required attributes:
    - verified: this new user is verified or not
    - authType: possible value is EMAILPASSWD
    - emailAddress: Please refer to the rule from /v3/public/inputValidations API.
    - username: Please refer to the rule from /v3/public/inputValidations API.
    - password: Please refer to the rule from /v3/public/inputValidations API.
    - country: ISO3166-1 alpha-2 two letter, e.g. US.
    - dateOfBirth: YYYY-MM-DD, e.g. 1990-01-01. valid values are between 1905-01-01 until current date.


    Not required attributes:
    - displayName: Please refer to the rule from /v3/public/inputValidations API.





    This endpoint support accepting agreements for the created user. Supply the accepted agreements in acceptedPolicies attribute.

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/test_users

        method: POST

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AccountCreateTestUserRequestV4 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - AccountCreateUserResponseV4 (Created)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error | 10130: user under age)

        404: Not Found - RestErrorResponse (10154: country not found)

        409: Conflict - RestErrorResponse (10133: email already used | 10177: username already used)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicCreateTestUserV4.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicCreateTestUserV4)
async def public_create_test_user_v4_async(
    body: AccountCreateTestUserRequestV4,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """[TEST FACILITY ONLY]Create test User (PublicCreateTestUserV4)

    Create a test user and not send verification code email



    Required attributes:
    - verified: this new user is verified or not
    - authType: possible value is EMAILPASSWD
    - emailAddress: Please refer to the rule from /v3/public/inputValidations API.
    - username: Please refer to the rule from /v3/public/inputValidations API.
    - password: Please refer to the rule from /v3/public/inputValidations API.
    - country: ISO3166-1 alpha-2 two letter, e.g. US.
    - dateOfBirth: YYYY-MM-DD, e.g. 1990-01-01. valid values are between 1905-01-01 until current date.


    Not required attributes:
    - displayName: Please refer to the rule from /v3/public/inputValidations API.





    This endpoint support accepting agreements for the created user. Supply the accepted agreements in acceptedPolicies attribute.

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/test_users

        method: POST

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AccountCreateTestUserRequestV4 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - AccountCreateUserResponseV4 (Created)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error | 10130: user under age)

        404: Not Found - RestErrorResponse (10154: country not found)

        409: Conflict - RestErrorResponse (10133: email already used | 10177: username already used)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicCreateTestUserV4.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicCreateUserV4)
def public_create_user_v4(
    body: AccountCreateUserRequestV4,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create User (PublicCreateUserV4)

    Create a new user with unique email address and username.



    Required attributes:
    - authType: possible value is EMAILPASSWD
    - emailAddress: Please refer to the rule from /v3/public/inputValidations API.
    - username: Please refer to the rule from /v3/public/inputValidations API.
    - password: Please refer to the rule from /v3/public/inputValidations API.
    - country: ISO3166-1 alpha-2 two letter, e.g. US.
    - dateOfBirth: YYYY-MM-DD, e.g. 1990-01-01. valid values are between 1905-01-01 until current date.


    Not required attributes:
    - displayName: Please refer to the rule from /v3/public/inputValidations API.





    This endpoint support accepting agreements for the created user. Supply the accepted agreements in acceptedPolicies attribute.

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users

        method: POST

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AccountCreateUserRequestV4 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - AccountCreateUserResponseV4 (Created)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error | 10130: user under age)

        404: Not Found - RestErrorResponse (10154: country not found)

        409: Conflict - RestErrorResponse (10133: email already used | 10177: username already used)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicCreateUserV4.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicCreateUserV4)
async def public_create_user_v4_async(
    body: AccountCreateUserRequestV4,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create User (PublicCreateUserV4)

    Create a new user with unique email address and username.



    Required attributes:
    - authType: possible value is EMAILPASSWD
    - emailAddress: Please refer to the rule from /v3/public/inputValidations API.
    - username: Please refer to the rule from /v3/public/inputValidations API.
    - password: Please refer to the rule from /v3/public/inputValidations API.
    - country: ISO3166-1 alpha-2 two letter, e.g. US.
    - dateOfBirth: YYYY-MM-DD, e.g. 1990-01-01. valid values are between 1905-01-01 until current date.


    Not required attributes:
    - displayName: Please refer to the rule from /v3/public/inputValidations API.





    This endpoint support accepting agreements for the created user. Supply the accepted agreements in acceptedPolicies attribute.

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users

        method: POST

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AccountCreateUserRequestV4 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - AccountCreateUserResponseV4 (Created)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error | 10130: user under age)

        404: Not Found - RestErrorResponse (10154: country not found)

        409: Conflict - RestErrorResponse (10133: email already used | 10177: username already used)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicCreateUserV4.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicDisableMyAuthenticatorV4)
def public_disable_my_authenticator_v4(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Disable 2FA authenticator (PublicDisableMyAuthenticatorV4)

    This endpoint is used to disable 2FA authenticator.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/disable

        method: DELETE

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Authenticator disabled)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicDisableMyAuthenticatorV4.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicDisableMyAuthenticatorV4)
async def public_disable_my_authenticator_v4_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Disable 2FA authenticator (PublicDisableMyAuthenticatorV4)

    This endpoint is used to disable 2FA authenticator.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/disable

        method: DELETE

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Authenticator disabled)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicDisableMyAuthenticatorV4.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicDisableMyBackupCodesV4)
def public_disable_my_backup_codes_v4(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Disable 2FA backup codes (PublicDisableMyBackupCodesV4)

    This endpoint is used to enable 2FA backup codes.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode/disable

        method: DELETE

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Backup codes disabled)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicDisableMyBackupCodesV4.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicDisableMyBackupCodesV4)
async def public_disable_my_backup_codes_v4_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Disable 2FA backup codes (PublicDisableMyBackupCodesV4)

    This endpoint is used to enable 2FA backup codes.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode/disable

        method: DELETE

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Backup codes disabled)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicDisableMyBackupCodesV4.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicDisableMyEmailV4)
def public_disable_my_email_v4(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Disable 2FA email (PublicDisableMyEmailV4)

    This endpoint is used to disable 2FA email.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/email/disable

        method: POST

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (email disabled)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20003: forbidden access)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicDisableMyEmailV4.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicDisableMyEmailV4)
async def public_disable_my_email_v4_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Disable 2FA email (PublicDisableMyEmailV4)

    This endpoint is used to disable 2FA email.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/email/disable

        method: POST

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (email disabled)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20003: forbidden access)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicDisableMyEmailV4.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicDownloadMyBackupCodesV4)
def public_download_my_backup_codes_v4(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Download user backup codes (PublicDownloadMyBackupCodesV4)

    This endpoint is used to download backup codes.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode/download

        method: GET

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - Any (Backup codes downloaded)

        400: Bad Request - RestErrorResponse (10192: factor not enabled | 10191: email address not verified | 10195: no valid backup code found | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicDownloadMyBackupCodesV4.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicDownloadMyBackupCodesV4)
async def public_download_my_backup_codes_v4_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Download user backup codes (PublicDownloadMyBackupCodesV4)

    This endpoint is used to download backup codes.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode/download

        method: GET

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - Any (Backup codes downloaded)

        400: Bad Request - RestErrorResponse (10192: factor not enabled | 10191: email address not verified | 10195: no valid backup code found | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicDownloadMyBackupCodesV4.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicEnableMyAuthenticatorV4)
def public_enable_my_authenticator_v4(
    code: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Enable 2FA authenticator (PublicEnableMyAuthenticatorV4)

    This endpoint is used to enable 2FA authenticator.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/enable

        method: POST

        tags: ["Users V4"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        code: (code) OPTIONAL str in form_data

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Authenticator enabled)

        400: Bad Request - RestErrorResponse (10138: code not match | 10191: email address not verified | 10190: auth secret key expired | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        409: Conflict - RestErrorResponse (10194: factor already enabled)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicEnableMyAuthenticatorV4.create(
        code=code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicEnableMyAuthenticatorV4)
async def public_enable_my_authenticator_v4_async(
    code: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Enable 2FA authenticator (PublicEnableMyAuthenticatorV4)

    This endpoint is used to enable 2FA authenticator.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/enable

        method: POST

        tags: ["Users V4"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        code: (code) OPTIONAL str in form_data

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Authenticator enabled)

        400: Bad Request - RestErrorResponse (10138: code not match | 10191: email address not verified | 10190: auth secret key expired | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        409: Conflict - RestErrorResponse (10194: factor already enabled)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicEnableMyAuthenticatorV4.create(
        code=code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicEnableMyBackupCodesV4)
def public_enable_my_backup_codes_v4(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Enable 2FA backup codes (PublicEnableMyBackupCodesV4)

    This endpoint is used to enable 2FA backup codes.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode/enable

        method: POST

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelBackupCodesResponseV4 (Backup codes enabled)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        409: Conflict - RestErrorResponse (10194: factor already enabled)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicEnableMyBackupCodesV4.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicEnableMyBackupCodesV4)
async def public_enable_my_backup_codes_v4_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Enable 2FA backup codes (PublicEnableMyBackupCodesV4)

    This endpoint is used to enable 2FA backup codes.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode/enable

        method: POST

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelBackupCodesResponseV4 (Backup codes enabled)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        409: Conflict - RestErrorResponse (10194: factor already enabled)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicEnableMyBackupCodesV4.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicEnableMyEmailV4)
def public_enable_my_email_v4(
    code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Enable 2FA email (PublicEnableMyEmailV4)

    This endpoint is used to enable 2FA email.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/email/enable

        method: POST

        tags: ["Users V4"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        code: (code) REQUIRED str in form_data

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (email enabled)

        400: Bad Request - RestErrorResponse (10138: code not match | 10191: email address not verified | 10137: code is expired | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20003: forbidden access)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        409: Conflict - RestErrorResponse (10194: factor already enabled)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicEnableMyEmailV4.create(
        code=code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicEnableMyEmailV4)
async def public_enable_my_email_v4_async(
    code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Enable 2FA email (PublicEnableMyEmailV4)

    This endpoint is used to enable 2FA email.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/email/enable

        method: POST

        tags: ["Users V4"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        code: (code) REQUIRED str in form_data

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (email enabled)

        400: Bad Request - RestErrorResponse (10138: code not match | 10191: email address not verified | 10137: code is expired | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20003: forbidden access)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        409: Conflict - RestErrorResponse (10194: factor already enabled)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicEnableMyEmailV4.create(
        code=code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGenerateMyAuthenticatorKeyV4)
def public_generate_my_authenticator_key_v4(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate secret key for 3rd-party authenticate app (PublicGenerateMyAuthenticatorKeyV4)

    This endpoint is used to generate a secret key for 3rd-party authenticator app.
    A QR code URI is also returned so that frontend can generate QR code image.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/key

        method: POST

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelAuthenticatorKeyResponseV4 (Key generated)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGenerateMyAuthenticatorKeyV4.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGenerateMyAuthenticatorKeyV4)
async def public_generate_my_authenticator_key_v4_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate secret key for 3rd-party authenticate app (PublicGenerateMyAuthenticatorKeyV4)

    This endpoint is used to generate a secret key for 3rd-party authenticator app.
    A QR code URI is also returned so that frontend can generate QR code image.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/key

        method: POST

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelAuthenticatorKeyResponseV4 (Key generated)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGenerateMyAuthenticatorKeyV4.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGenerateMyBackupCodesV4)
def public_generate_my_backup_codes_v4(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate backup codes (PublicGenerateMyBackupCodesV4)

    This endpoint is used to generate 8-digits backup codes.
    Each code is a one-time code and will be deleted once used.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode

        method: POST

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelBackupCodesResponseV4 (Backup codes generated)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10192: factor not enabled | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGenerateMyBackupCodesV4.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGenerateMyBackupCodesV4)
async def public_generate_my_backup_codes_v4_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate backup codes (PublicGenerateMyBackupCodesV4)

    This endpoint is used to generate 8-digits backup codes.
    Each code is a one-time code and will be deleted once used.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode

        method: POST

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelBackupCodesResponseV4 (Backup codes generated)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10192: factor not enabled | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGenerateMyBackupCodesV4.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetMyBackupCodesV4)
def public_get_my_backup_codes_v4(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get backup codes (PublicGetMyBackupCodesV4)

    This endpoint is used to get 8-digits backup codes.
    Each code is a one-time code and will be deleted once used.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode

        method: GET

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelBackupCodesResponseV4 (Get backup codes)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10192: factor not enabled | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetMyBackupCodesV4.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetMyBackupCodesV4)
async def public_get_my_backup_codes_v4_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get backup codes (PublicGetMyBackupCodesV4)

    This endpoint is used to get 8-digits backup codes.
    Each code is a one-time code and will be deleted once used.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode

        method: GET

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelBackupCodesResponseV4 (Get backup codes)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10192: factor not enabled | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetMyBackupCodesV4.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetMyEnabledFactorsV4)
def public_get_my_enabled_factors_v4(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user enabled factors (PublicGetMyEnabledFactorsV4)

    This endpoint is used to get user enabled factors.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/factor

        method: GET

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelEnabledFactorsResponseV4 (Methods returned)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10193: mfa not enabled | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetMyEnabledFactorsV4.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetMyEnabledFactorsV4)
async def public_get_my_enabled_factors_v4_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user enabled factors (PublicGetMyEnabledFactorsV4)

    This endpoint is used to get user enabled factors.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/factor

        method: GET

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelEnabledFactorsResponseV4 (Methods returned)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10193: mfa not enabled | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetMyEnabledFactorsV4.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicInviteUserV4)
def public_invite_user_v4(
    body: ModelPublicInviteUserRequestV4,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public invite admin user v4 (PublicInviteUserV4)

    This endpoint is used to invite a game studio admin user with new namespace in multi tenant mode.
    It will return error if the service multi tenant mode is set to false.

    Request body details:
    - emailAddress: email address of the user to be invited
    - namespace: new namespace of the user to be created
    - namespaceDisplayName: display name of the new namespace

    The invited users will also be assigned with "User" role by default.

    Properties:
        url: /iam/v4/public/users/invite

        method: POST

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelPublicInviteUserRequestV4 in body

    Responses:
        201: Created - ModelInviteUserResponseV3 (Created)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        409: Conflict - RestErrorResponse

        422: Unprocessable Entity - RestErrorResponse (10183: unprocessable entity)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = PublicInviteUserV4.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicInviteUserV4)
async def public_invite_user_v4_async(
    body: ModelPublicInviteUserRequestV4,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public invite admin user v4 (PublicInviteUserV4)

    This endpoint is used to invite a game studio admin user with new namespace in multi tenant mode.
    It will return error if the service multi tenant mode is set to false.

    Request body details:
    - emailAddress: email address of the user to be invited
    - namespace: new namespace of the user to be created
    - namespaceDisplayName: display name of the new namespace

    The invited users will also be assigned with "User" role by default.

    Properties:
        url: /iam/v4/public/users/invite

        method: POST

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelPublicInviteUserRequestV4 in body

    Responses:
        201: Created - ModelInviteUserResponseV3 (Created)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        409: Conflict - RestErrorResponse

        422: Unprocessable Entity - RestErrorResponse (10183: unprocessable entity)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = PublicInviteUserV4.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicMakeFactorMyDefaultV4)
def public_make_factor_my_default_v4(
    factor: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Make 2FA factor default (PublicMakeFactorMyDefaultV4)

    This endpoint is used to make 2FA factor default.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/factor

        method: POST

        tags: ["Users V4"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        factor: (factor) REQUIRED str in form_data

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Default method changed)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10189: invalid factor | 10192: factor not enabled | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicMakeFactorMyDefaultV4.create(
        factor=factor,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicMakeFactorMyDefaultV4)
async def public_make_factor_my_default_v4_async(
    factor: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Make 2FA factor default (PublicMakeFactorMyDefaultV4)

    This endpoint is used to make 2FA factor default.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/factor

        method: POST

        tags: ["Users V4"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        factor: (factor) REQUIRED str in form_data

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Default method changed)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10189: invalid factor | 10192: factor not enabled | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicMakeFactorMyDefaultV4.create(
        factor=factor,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicRemoveTrustedDeviceV4)
def public_remove_trusted_device_v4(
    cookie: Optional[Union[str, HeaderStr]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Remove Trusted Device (PublicRemoveTrustedDeviceV4)

    (Only for test)This endpoint is used to remove trusted device.




    This endpoint Requires valid user access token





    This endpoint Requires device_token in cookie

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/device

        method: DELETE

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        cookie: (Cookie) OPTIONAL Union[str, HeaderStr] in header

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Device removed)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicRemoveTrustedDeviceV4.create(
        cookie=cookie,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicRemoveTrustedDeviceV4)
async def public_remove_trusted_device_v4_async(
    cookie: Optional[Union[str, HeaderStr]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Remove Trusted Device (PublicRemoveTrustedDeviceV4)

    (Only for test)This endpoint is used to remove trusted device.




    This endpoint Requires valid user access token





    This endpoint Requires device_token in cookie

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/device

        method: DELETE

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        cookie: (Cookie) OPTIONAL Union[str, HeaderStr] in header

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Device removed)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicRemoveTrustedDeviceV4.create(
        cookie=cookie,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicSendMyMFAEmailCodeV4)
def public_send_my_mfa_email_code_v4(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Send code for enabling email (PublicSendMyMFAEmailCodeV4)

    This endpoint is used to send email code.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/email/code

        method: POST

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (code sent)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20003: forbidden access)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        429: Too Many Requests - RestErrorResponse (20007: too many requests)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicSendMyMFAEmailCodeV4.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicSendMyMFAEmailCodeV4)
async def public_send_my_mfa_email_code_v4_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Send code for enabling email (PublicSendMyMFAEmailCodeV4)

    This endpoint is used to send email code.




    This endpoint Requires valid user access token

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/email/code

        method: POST

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (code sent)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20003: forbidden access)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        429: Too Many Requests - RestErrorResponse (20007: too many requests)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicSendMyMFAEmailCodeV4.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicUpdateUserEmailAddressV4)
def public_update_user_email_address_v4(
    body: ModelEmailUpdateRequestV4,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update My Email Address (PublicUpdateUserEmailAddressV4)

    The endpoint to update my email address.




    It requires a verification code from


        /users/me/code/request

    with UpdateEmailAddress context.

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/email

        method: PUT

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelEmailUpdateRequestV4 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        404: Not Found - RestErrorResponse (20008: user not found)

        409: Conflict - RestErrorResponse (10133: email already used)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicUpdateUserEmailAddressV4.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicUpdateUserEmailAddressV4)
async def public_update_user_email_address_v4_async(
    body: ModelEmailUpdateRequestV4,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update My Email Address (PublicUpdateUserEmailAddressV4)

    The endpoint to update my email address.




    It requires a verification code from


        /users/me/code/request

    with UpdateEmailAddress context.

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/email

        method: PUT

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelEmailUpdateRequestV4 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        404: Not Found - RestErrorResponse (20008: user not found)

        409: Conflict - RestErrorResponse (10133: email already used)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicUpdateUserEmailAddressV4.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicUpdateUserV4)
def public_update_user_v4(
    body: ModelUserUpdateRequestV3,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update User (PublicUpdateUserV4)

    Requires valid user access token





    This Endpoint support update user based on given data. Single request can update single field or multi fields.




    Supported field {country, displayName, languageTag, dateOfBirth}




    Country use ISO3166-1 alpha-2 two letter, e.g. US.




    Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.



     Several case of updating email address


    action code : 10103

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me

        method: PATCH

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserUpdateRequestV3 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelUserResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body | 10154: country not found | 10130: user under age)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        409: Conflict - RestErrorResponse (10133: email already used)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicUpdateUserV4.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicUpdateUserV4)
async def public_update_user_v4_async(
    body: ModelUserUpdateRequestV3,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update User (PublicUpdateUserV4)

    Requires valid user access token





    This Endpoint support update user based on given data. Single request can update single field or multi fields.




    Supported field {country, displayName, languageTag, dateOfBirth}




    Country use ISO3166-1 alpha-2 two letter, e.g. US.




    Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.



     Several case of updating email address


    action code : 10103

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me

        method: PATCH

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserUpdateRequestV3 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelUserResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body | 10154: country not found | 10130: user under age)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        409: Conflict - RestErrorResponse (10133: email already used)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicUpdateUserV4.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicUpgradeHeadlessAccountV4)
def public_upgrade_headless_account_v4(
    body: AccountUpgradeHeadlessAccountRequestV4,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upgrade user account to full account (PublicUpgradeHeadlessAccountV4)

    Require valid user authorization
    Upgrade headless account to full account without verifying email address. Client does not need to provide verification code which sent to email address.

    action code : 10124

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/headless/verify

        method: POST

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AccountUpgradeHeadlessAccountRequestV4 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - AccountUserResponseV4 (OK)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        404: Not Found - RestErrorResponse (10139: platform account not found)

        409: Conflict - RestErrorResponse (10153: user exist | 10170: account is already a full account | 10133: email already used | 10177: username already used)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicUpgradeHeadlessAccountV4.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicUpgradeHeadlessAccountV4)
async def public_upgrade_headless_account_v4_async(
    body: AccountUpgradeHeadlessAccountRequestV4,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upgrade user account to full account (PublicUpgradeHeadlessAccountV4)

    Require valid user authorization
    Upgrade headless account to full account without verifying email address. Client does not need to provide verification code which sent to email address.

    action code : 10124

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/headless/verify

        method: POST

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AccountUpgradeHeadlessAccountRequestV4 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - AccountUserResponseV4 (OK)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        404: Not Found - RestErrorResponse (10139: platform account not found)

        409: Conflict - RestErrorResponse (10153: user exist | 10170: account is already a full account | 10133: email already used | 10177: username already used)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicUpgradeHeadlessAccountV4.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicUpgradeHeadlessAccountWithVerificationCodeV4)
def public_upgrade_headless_account_with_verification_code_v4(
    body: AccountUpgradeHeadlessAccountWithVerificationCodeRequestV4,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upgrade headless account and automatically verified the email address if it is succeeded (PublicUpgradeHeadlessAccountWithVerificationCodeV4)

    Require valid user access token.
    The endpoint upgrades a headless account by linking the headless account with the email address, username, and password.
    By upgrading the headless account into a full account, the user could use the email address, username, and password for using Justice IAM.


    The endpoint is a shortcut for upgrading a headless account and verifying the email address in one call.
    In order to get a verification code for the endpoint, please check the send verification code endpoint.


    This endpoint also have an ability to update user data (if the user data field is specified) right after the upgrade account process is done.
    Supported user data fields:




      * displayName


      * dateOfBirth : format YYYY-MM-DD, e.g. 2019-04-29


      * country : format ISO3166-1 alpha-2 two letter, e.g. US



    action code : 10124

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/headless/code/verify

        method: POST

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AccountUpgradeHeadlessAccountWithVerificationCodeRequestV4 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - AccountUserResponseV4 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body | 10155: country is not defined | 10130: user under age)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (10152: verification code not found | 10137: code is expired | 10136: code is either been used or not valid anymore | 10138: code not match | 10149: verification contact type doesn't match | 10148: verification code context doesn't match the required context)

        404: Not Found - RestErrorResponse (10139: platform account not found | 10154: country not found)

        409: Conflict - RestErrorResponse (10153: user exist | 10170: account is already a full account)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicUpgradeHeadlessAccountWithVerificationCodeV4.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicUpgradeHeadlessAccountWithVerificationCodeV4)
async def public_upgrade_headless_account_with_verification_code_v4_async(
    body: AccountUpgradeHeadlessAccountWithVerificationCodeRequestV4,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upgrade headless account and automatically verified the email address if it is succeeded (PublicUpgradeHeadlessAccountWithVerificationCodeV4)

    Require valid user access token.
    The endpoint upgrades a headless account by linking the headless account with the email address, username, and password.
    By upgrading the headless account into a full account, the user could use the email address, username, and password for using Justice IAM.


    The endpoint is a shortcut for upgrading a headless account and verifying the email address in one call.
    In order to get a verification code for the endpoint, please check the send verification code endpoint.


    This endpoint also have an ability to update user data (if the user data field is specified) right after the upgrade account process is done.
    Supported user data fields:




      * displayName


      * dateOfBirth : format YYYY-MM-DD, e.g. 2019-04-29


      * country : format ISO3166-1 alpha-2 two letter, e.g. US



    action code : 10124

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/headless/code/verify

        method: POST

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AccountUpgradeHeadlessAccountWithVerificationCodeRequestV4 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - AccountUserResponseV4 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body | 10155: country is not defined | 10130: user under age)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (10152: verification code not found | 10137: code is expired | 10136: code is either been used or not valid anymore | 10138: code not match | 10149: verification contact type doesn't match | 10148: verification code context doesn't match the required context)

        404: Not Found - RestErrorResponse (10139: platform account not found | 10154: country not found)

        409: Conflict - RestErrorResponse (10153: user exist | 10170: account is already a full account)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicUpgradeHeadlessAccountWithVerificationCodeV4.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
