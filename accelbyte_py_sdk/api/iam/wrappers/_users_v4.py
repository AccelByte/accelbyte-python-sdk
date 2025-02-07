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

from ..models import AccountCreateTestUserRequestV4
from ..models import AccountCreateTestUsersRequestV4
from ..models import AccountCreateTestUsersResponseV4
from ..models import AccountCreateUserRequestV4
from ..models import AccountCreateUserResponseV4
from ..models import AccountUpgradeHeadlessAccountRequestV4
from ..models import AccountUpgradeHeadlessAccountWithVerificationCodeForwardRequestV4
from ..models import AccountUpgradeHeadlessAccountWithVerificationCodeRequestV4
from ..models import AccountUserResponseV4
from ..models import AccountcommonUserPlatforms
from ..models import ModelAddUserRoleV4Request
from ..models import ModelAuthenticatorKeyResponseV4
from ..models import ModelBackupCodesResponseV4
from ..models import ModelBulkAccountTypeUpdateRequestV4
from ..models import ModelCheckValidUserIDRequestV4
from ..models import ModelDisableMFARequest
from ..models import ModelEmailUpdateRequestV4
from ..models import ModelEnabledFactorsResponseV4
from ..models import ModelInvitationHistoryResponse
from ..models import ModelInviteUserRequestV4
from ..models import ModelInviteUserResponseV3
from ..models import ModelListInvitationHistoriesV4Response
from ..models import ModelListUserRolesV4Response
from ..models import ModelListValidUserIDResponseV4
from ..models import ModelNamespaceInvitationHistoryUserV4Response
from ..models import ModelPlatformUserIDRequestV4
from ..models import ModelPublicInviteUserRequestV4
from ..models import ModelPublicUserUpdateRequestV3
from ..models import ModelRemoveUserRoleV4Request
from ..models import ModelUserMFAStatusResponseV4
from ..models import ModelUserMFATokenResponseV4
from ..models import ModelUserPublicInfoResponseV4
from ..models import ModelUserResponseV3
from ..models import ModelUserUpdateRequestV3
from ..models import RestErrorResponse

from ..operations.users_v4 import AdminAddUserRoleV4
from ..operations.users_v4 import AdminBulkCheckValidUserIDV4
from ..operations.users_v4 import AdminBulkUpdateUserAccountTypeV4
from ..operations.users_v4 import AdminChallengeMyMFAV4
from ..operations.users_v4 import AdminCreateTestUsersV4
from ..operations.users_v4 import AdminCreateUserV4
from ..operations.users_v4 import AdminDisableMyAuthenticatorV4
from ..operations.users_v4 import AdminDisableMyBackupCodesV4
from ..operations.users_v4 import AdminDisableMyEmailV4
from ..operations.users_v4 import AdminDisableUserMFAV4
from ..operations.users_v4 import AdminDownloadMyBackupCodesV4
from ..operations.users_v4 import AdminEnableBackupCodesV4
from ..operations.users_v4 import AdminEnableMyAuthenticatorV4
from ..operations.users_v4 import AdminEnableMyBackupCodesV4
from ..operations.users_v4 import AdminEnableMyEmailV4
from ..operations.users_v4 import AdminGenerateBackupCodesV4
from ..operations.users_v4 import AdminGenerateMyAuthenticatorKeyV4
from ..operations.users_v4 import AdminGenerateMyBackupCodesV4
from ..operations.users_v4 import AdminGetBackupCodesV4
from ..operations.users_v4 import AdminGetMyBackupCodesV4
from ..operations.users_v4 import AdminGetMyEnabledFactorsV4
from ..operations.users_v4 import AdminGetMyMFAStatusV4
from ..operations.users_v4 import AdminGetMyOwnMFAStatusV4
from ..operations.users_v4 import AdminGetNamespaceInvitationHistoryV4
from ..operations.users_v4 import AdminGetNamespaceUserInvitationHistoryV4
from ..operations.users_v4 import AdminGetUserMFAStatusV4
from ..operations.users_v4 import AdminInviteUserNewV4
from ..operations.users_v4 import AdminInviteUserV4
from ..operations.users_v4 import AdminListInvitationHistoriesV4
from ..operations.users_v4 import AdminListUserRolesV4
from ..operations.users_v4 import AdminMakeFactorMyDefaultV4
from ..operations.users_v4 import AdminRemoveUserRoleV4
from ..operations.users_v4 import AdminSendMyMFAEmailCodeV4
from ..operations.users_v4 import AdminUpdateMyUserV4
from ..operations.users_v4 import AdminUpdateUserEmailAddressV4
from ..operations.users_v4 import AdminUpdateUserRoleV4
from ..operations.users_v4 import AdminUpdateUserV4
from ..operations.users_v4 import CreateUserFromInvitationV4
from ..operations.users_v4 import PublicChallengeMyMFAV4
from ..operations.users_v4 import PublicCreateTestUserV4
from ..operations.users_v4 import PublicCreateUserV4
from ..operations.users_v4 import PublicDisableMyAuthenticatorV4
from ..operations.users_v4 import PublicDisableMyBackupCodesV4
from ..operations.users_v4 import PublicDisableMyEmailV4
from ..operations.users_v4 import PublicDownloadMyBackupCodesV4
from ..operations.users_v4 import PublicEnableBackupCodesV4
from ..operations.users_v4 import PublicEnableMyAuthenticatorV4
from ..operations.users_v4 import PublicEnableMyBackupCodesV4
from ..operations.users_v4 import PublicEnableMyEmailV4
from ..operations.users_v4 import PublicGenerateBackupCodesV4
from ..operations.users_v4 import PublicGenerateMyAuthenticatorKeyV4
from ..operations.users_v4 import PublicGenerateMyBackupCodesV4
from ..operations.users_v4 import PublicGetBackupCodesV4
from ..operations.users_v4 import PublicGetMyBackupCodesV4
from ..operations.users_v4 import PublicGetMyEnabledFactorsV4
from ..operations.users_v4 import PublicGetMyMFAStatusV4
from ..operations.users_v4 import PublicGetMyOwnMFAStatusV4
from ..operations.users_v4 import PublicGetUserByPlatformUserIDV4
from ..operations.users_v4 import PublicGetUserPublicInfoByUserIdV4
from ..operations.users_v4 import PublicInviteUserV4
from ..operations.users_v4 import PublicListUserIDByPlatformUserIDsV4
from ..operations.users_v4 import PublicMakeFactorMyDefaultV4
from ..operations.users_v4 import PublicRemoveTrustedDeviceV4
from ..operations.users_v4 import PublicSendMyMFAEmailCodeV4
from ..operations.users_v4 import PublicUpdateUserEmailAddressV4
from ..operations.users_v4 import PublicUpdateUserV4
from ..operations.users_v4 import PublicUpgradeHeadlessAccountV4
from ..operations.users_v4 import PublicUpgradeHeadlessAccountWithVerificationCodeV4
from ..operations.users_v4 import PublicUpgradeHeadlessWithCodeV4Forward
from ..models import AccountCreateTestUserRequestV4AuthTypeEnum
from ..models import AccountCreateUserRequestV4AuthTypeEnum


@same_doc_as(AdminAddUserRoleV4)
def admin_add_user_role_v4(
    body: ModelAddUserRoleV4Request,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Add User's Role V4 (AdminAddUserRoleV4)

    New role will be appended to user's current roles.
    An admin user can only assign role with **assignedNamespaces** if the admin user has required permission which is same as the required permission of this endpoint.

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

        404: Not Found - RestErrorResponse (20008: user not found | 10156: role not found)

        422: Unprocessable Entity - RestErrorResponse (422: request is unprocessable)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    New role will be appended to user's current roles.
    An admin user can only assign role with **assignedNamespaces** if the admin user has required permission which is same as the required permission of this endpoint.

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

        404: Not Found - RestErrorResponse (20008: user not found | 10156: role not found)

        422: Unprocessable Entity - RestErrorResponse (422: request is unprocessable)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    Maximum number of userID to be checked is 50

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    Maximum number of userID to be checked is 50

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminBulkCheckValidUserIDV4.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminBulkUpdateUserAccountTypeV4)
def admin_bulk_update_user_account_type_v4(
    body: ModelBulkAccountTypeUpdateRequestV4,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Bulk Update User Account Type V4 (AdminBulkUpdateUserAccountTypeV4)

    This endpoint is used to change users account type
    - set **testAccount** to `true` to mark user as test account type
    - set **testAccount** to `false` to mark user as default account type

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/users/bulk/accountType

        method: PATCH

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelBulkAccountTypeUpdateRequestV4 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Account type updated to test)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminBulkUpdateUserAccountTypeV4.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminBulkUpdateUserAccountTypeV4)
async def admin_bulk_update_user_account_type_v4_async(
    body: ModelBulkAccountTypeUpdateRequestV4,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Bulk Update User Account Type V4 (AdminBulkUpdateUserAccountTypeV4)

    This endpoint is used to change users account type
    - set **testAccount** to `true` to mark user as test account type
    - set **testAccount** to `false` to mark user as default account type

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/users/bulk/accountType

        method: PATCH

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelBulkAccountTypeUpdateRequestV4 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Account type updated to test)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminBulkUpdateUserAccountTypeV4.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminChallengeMyMFAV4)
def admin_challenge_my_mfav4(
    code: Optional[str] = None,
    factor: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Challenge User MFA (AdminChallengeMyMFAV4)

    This endpoint will verify user's' MFA code and generate a MFA token.

    Properties:
        url: /iam/v4/admin/users/me/mfa/challenge/verify

        method: POST

        tags: ["Users V4"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        code: (code) OPTIONAL str in form_data

        factor: (factor) OPTIONAL str in form_data

    Responses:
        200: OK - ModelUserMFATokenResponseV4 (MFA token generated)

        204: No Content - (No MFA token generated)

        400: Bad Request - RestErrorResponse (10138: code not match | 10137: code is expired)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20003: forbidden access)

        404: Not Found - RestErrorResponse (10365: client not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminChallengeMyMFAV4.create(
        code=code,
        factor=factor,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminChallengeMyMFAV4)
async def admin_challenge_my_mfav4_async(
    code: Optional[str] = None,
    factor: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Challenge User MFA (AdminChallengeMyMFAV4)

    This endpoint will verify user's' MFA code and generate a MFA token.

    Properties:
        url: /iam/v4/admin/users/me/mfa/challenge/verify

        method: POST

        tags: ["Users V4"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        code: (code) OPTIONAL str in form_data

        factor: (factor) OPTIONAL str in form_data

    Responses:
        200: OK - ModelUserMFATokenResponseV4 (MFA token generated)

        204: No Content - (No MFA token generated)

        400: Bad Request - RestErrorResponse (10138: code not match | 10137: code is expired)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20003: forbidden access)

        404: Not Found - RestErrorResponse (10365: client not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminChallengeMyMFAV4.create(
        code=code,
        factor=factor,
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
    Note:
    - count : Enter the number of test users you want to create in the count field. The maximum value of the user count is 100.
    - userInfo(optional) :
    - country: you can specify country for the test user. Country use ISO3166-1 alpha-2 two letter, e.g. US

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

        501: Not Implemented - RestErrorResponse (20024: not implemented)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    Note:
    - count : Enter the number of test users you want to create in the count field. The maximum value of the user count is 100.
    - userInfo(optional) :
    - country: you can specify country for the test user. Country use ISO3166-1 alpha-2 two letter, e.g. US

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

        501: Not Implemented - RestErrorResponse (20024: not implemented)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCreateTestUsersV4.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminCreateUserV4)
def admin_create_user_v4(
    body: AccountCreateUserRequestV4,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Create User (AdminCreateUserV4)

    Create a new user with unique email address and username.
    **Required attributes:**
    - authType: possible value is EMAILPASSWD
    - emailAddress: Please refer to the rule from /v3/public/inputValidations API.
    - username: Please refer to the rule from /v3/public/inputValidations API.
    - password: Please refer to the rule from /v3/public/inputValidations API.
    - country: ISO3166-1 alpha-2 two letter, e.g. US.
    - dateOfBirth: YYYY-MM-DD, e.g. 1990-01-01. valid values are between 1905-01-01 until current date.
    - uniqueDisplayName: required when uniqueDisplayNameEnabled/UNIQUE_DISPLAY_NAME_ENABLED is true, please refer to the rule from /v3/public/inputValidations API.

    **Not required attributes:**
    - displayName: Please refer to the rule from /v3/public/inputValidations API.
    This endpoint support accepting agreements for the created user. Supply the accepted agreements in acceptedPolicies attribute.

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/users

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

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions | 20003: forbidden access | 10213: country is blocked)

        404: Not Found - RestErrorResponse (10154: country not found)

        409: Conflict - RestErrorResponse (10133: email already used | 10177: username already used)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCreateUserV4.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminCreateUserV4)
async def admin_create_user_v4_async(
    body: AccountCreateUserRequestV4,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Create User (AdminCreateUserV4)

    Create a new user with unique email address and username.
    **Required attributes:**
    - authType: possible value is EMAILPASSWD
    - emailAddress: Please refer to the rule from /v3/public/inputValidations API.
    - username: Please refer to the rule from /v3/public/inputValidations API.
    - password: Please refer to the rule from /v3/public/inputValidations API.
    - country: ISO3166-1 alpha-2 two letter, e.g. US.
    - dateOfBirth: YYYY-MM-DD, e.g. 1990-01-01. valid values are between 1905-01-01 until current date.
    - uniqueDisplayName: required when uniqueDisplayNameEnabled/UNIQUE_DISPLAY_NAME_ENABLED is true, please refer to the rule from /v3/public/inputValidations API.

    **Not required attributes:**
    - displayName: Please refer to the rule from /v3/public/inputValidations API.
    This endpoint support accepting agreements for the created user. Supply the accepted agreements in acceptedPolicies attribute.

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/users

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

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions | 20003: forbidden access | 10213: country is blocked)

        404: Not Found - RestErrorResponse (10154: country not found)

        409: Conflict - RestErrorResponse (10133: email already used | 10177: username already used)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCreateUserV4.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDisableMyAuthenticatorV4)
def admin_disable_my_authenticator_v4(
    body: ModelDisableMFARequest,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Disable 2FA authenticator (AdminDisableMyAuthenticatorV4)

    This endpoint is used to disable 2FA authenticator.
    ------
    **Note**: **mfaToken** is required when all the following are enabled:
    - The environment variable **SENSITIVE_MFA_AUTH_ENABLED** is true
    - The **Two-Factor Authentication** is enabled in the IAM client where user logs in
    - Users already enabled the MFA

    Properties:
        url: /iam/v4/admin/users/me/mfa/authenticator/disable

        method: DELETE

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelDisableMFARequest in body

    Responses:
        204: No Content - (Authenticator disabled)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10171: email address not found | 10228: invalid mfa token)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminDisableMyAuthenticatorV4.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDisableMyAuthenticatorV4)
async def admin_disable_my_authenticator_v4_async(
    body: ModelDisableMFARequest,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Disable 2FA authenticator (AdminDisableMyAuthenticatorV4)

    This endpoint is used to disable 2FA authenticator.
    ------
    **Note**: **mfaToken** is required when all the following are enabled:
    - The environment variable **SENSITIVE_MFA_AUTH_ENABLED** is true
    - The **Two-Factor Authentication** is enabled in the IAM client where user logs in
    - Users already enabled the MFA

    Properties:
        url: /iam/v4/admin/users/me/mfa/authenticator/disable

        method: DELETE

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelDisableMFARequest in body

    Responses:
        204: No Content - (Authenticator disabled)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10171: email address not found | 10228: invalid mfa token)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminDisableMyAuthenticatorV4.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDisableMyBackupCodesV4)
def admin_disable_my_backup_codes_v4(
    body: ModelDisableMFARequest,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Disable 2FA backup codes (AdminDisableMyBackupCodesV4)

    This endpoint is used to disable 2FA backup codes.
    ------
    **Note**: **mfaToken** is required when all the following are enabled:
    - The environment variable **SENSITIVE_MFA_AUTH_ENABLED** is true
    - The **Two-Factor Authentication** is enabled in the IAM client where user logs in
    - Users already enabled the MFA

    Properties:
        url: /iam/v4/admin/users/me/mfa/backupCode/disable

        method: DELETE

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelDisableMFARequest in body

    Responses:
        204: No Content - (Backup codes disabled)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10171: email address not found | 10228: invalid mfa token)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminDisableMyBackupCodesV4.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDisableMyBackupCodesV4)
async def admin_disable_my_backup_codes_v4_async(
    body: ModelDisableMFARequest,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Disable 2FA backup codes (AdminDisableMyBackupCodesV4)

    This endpoint is used to disable 2FA backup codes.
    ------
    **Note**: **mfaToken** is required when all the following are enabled:
    - The environment variable **SENSITIVE_MFA_AUTH_ENABLED** is true
    - The **Two-Factor Authentication** is enabled in the IAM client where user logs in
    - Users already enabled the MFA

    Properties:
        url: /iam/v4/admin/users/me/mfa/backupCode/disable

        method: DELETE

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelDisableMFARequest in body

    Responses:
        204: No Content - (Backup codes disabled)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10171: email address not found | 10228: invalid mfa token)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminDisableMyBackupCodesV4.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDisableMyEmailV4)
def admin_disable_my_email_v4(
    body: ModelDisableMFARequest,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Disable 2FA email (AdminDisableMyEmailV4)

    This endpoint is used to disable 2FA email.
    ------
    **Note**: **mfaToken** is required when all the following are enabled:
    - The environment variable **SENSITIVE_MFA_AUTH_ENABLED** is true
    - The **Two-Factor Authentication** is enabled in the IAM client where user logs in
    - Users already enabled the MFA

    Properties:
        url: /iam/v4/admin/users/me/mfa/email/disable

        method: POST

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelDisableMFARequest in body

    Responses:
        204: No Content - (email disabled)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10171: email address not found | 10228: invalid mfa token)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20003: forbidden access)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminDisableMyEmailV4.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDisableMyEmailV4)
async def admin_disable_my_email_v4_async(
    body: ModelDisableMFARequest,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Disable 2FA email (AdminDisableMyEmailV4)

    This endpoint is used to disable 2FA email.
    ------
    **Note**: **mfaToken** is required when all the following are enabled:
    - The environment variable **SENSITIVE_MFA_AUTH_ENABLED** is true
    - The **Two-Factor Authentication** is enabled in the IAM client where user logs in
    - Users already enabled the MFA

    Properties:
        url: /iam/v4/admin/users/me/mfa/email/disable

        method: POST

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelDisableMFARequest in body

    Responses:
        204: No Content - (email disabled)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10171: email address not found | 10228: invalid mfa token)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20003: forbidden access)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminDisableMyEmailV4.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDisableUserMFAV4)
def admin_disable_user_mfav4(
    body: ModelDisableMFARequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Disable User 2FA (AdminDisableUserMFAV4)

    This endpoint is used to disable user 2FA.
    -----------
    **Note**: if the factor is not specified, will disable all 2FA methods.

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/users/{userId}/mfa/disable

        method: DELETE

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelDisableMFARequest in body

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDisableUserMFAV4.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDisableUserMFAV4)
async def admin_disable_user_mfav4_async(
    body: ModelDisableMFARequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Disable User 2FA (AdminDisableUserMFAV4)

    This endpoint is used to disable user 2FA.
    -----------
    **Note**: if the factor is not specified, will disable all 2FA methods.

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/users/{userId}/mfa/disable

        method: DELETE

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelDisableMFARequest in body

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDisableUserMFAV4.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminDownloadMyBackupCodesV4)
def admin_download_my_backup_codes_v4(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Download user backup codes (AdminDownloadMyBackupCodesV4)

    This endpoint is used to download backup codes.

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


@deprecated
@same_doc_as(AdminDownloadMyBackupCodesV4)
async def admin_download_my_backup_codes_v4_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Download user backup codes (AdminDownloadMyBackupCodesV4)

    This endpoint is used to download backup codes.

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


@same_doc_as(AdminEnableBackupCodesV4)
def admin_enable_backup_codes_v4(
    language_tag: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Enable 2FA backup codes (AdminEnableBackupCodesV4)

    This endpoint is used to enable 2FA backup codes.

    Properties:
        url: /iam/v4/admin/users/me/mfa/backupCodes/enable

        method: POST

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        language_tag: (languageTag) OPTIONAL str in query

    Responses:
        200: OK - (Backup codes enabled)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10194: factor already enabled | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        409: Conflict - RestErrorResponse (10194: factor already enabled)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminEnableBackupCodesV4.create(
        language_tag=language_tag,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminEnableBackupCodesV4)
async def admin_enable_backup_codes_v4_async(
    language_tag: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Enable 2FA backup codes (AdminEnableBackupCodesV4)

    This endpoint is used to enable 2FA backup codes.

    Properties:
        url: /iam/v4/admin/users/me/mfa/backupCodes/enable

        method: POST

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        language_tag: (languageTag) OPTIONAL str in query

    Responses:
        200: OK - (Backup codes enabled)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10194: factor already enabled | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        409: Conflict - RestErrorResponse (10194: factor already enabled)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminEnableBackupCodesV4.create(
        language_tag=language_tag,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminEnableMyAuthenticatorV4)
def admin_enable_my_authenticator_v4(
    code: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Enable 2FA authenticator (AdminEnableMyAuthenticatorV4)

    This endpoint is used to enable 2FA authenticator.
    ----------
    Prerequisites:
    - Generate the secret key/QR code uri by **_/iam/v4/admin/users/me/mfa/authenticator/key_**
    - Consume the secret key/QR code by an authenticator app
    - Get the code from the authenticator app

    Properties:
        url: /iam/v4/admin/users/me/mfa/authenticator/enable

        method: POST

        tags: ["Users V4"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        code: (code) REQUIRED str in form_data

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
    code: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Enable 2FA authenticator (AdminEnableMyAuthenticatorV4)

    This endpoint is used to enable 2FA authenticator.
    ----------
    Prerequisites:
    - Generate the secret key/QR code uri by **_/iam/v4/admin/users/me/mfa/authenticator/key_**
    - Consume the secret key/QR code by an authenticator app
    - Get the code from the authenticator app

    Properties:
        url: /iam/v4/admin/users/me/mfa/authenticator/enable

        method: POST

        tags: ["Users V4"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        code: (code) REQUIRED str in form_data

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


@deprecated
@same_doc_as(AdminEnableMyBackupCodesV4)
def admin_enable_my_backup_codes_v4(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Enable 2FA backup codes (AdminEnableMyBackupCodesV4)

    This endpoint is used to enable 2FA backup codes.

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


@deprecated
@same_doc_as(AdminEnableMyBackupCodesV4)
async def admin_enable_my_backup_codes_v4_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Enable 2FA backup codes (AdminEnableMyBackupCodesV4)

    This endpoint is used to enable 2FA backup codes.

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


@same_doc_as(AdminGenerateBackupCodesV4)
def admin_generate_backup_codes_v4(
    language_tag: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate backup codes (AdminGenerateBackupCodesV4)

    This endpoint is used to generate 8-digits backup codes.
    Each code is a one-time code and will be deleted once used.

    Properties:
        url: /iam/v4/admin/users/me/mfa/backupCodes

        method: POST

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        language_tag: (languageTag) OPTIONAL str in query

    Responses:
        200: OK - (Backup codes generated)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10192: factor not enabled | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminGenerateBackupCodesV4.create(
        language_tag=language_tag,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGenerateBackupCodesV4)
async def admin_generate_backup_codes_v4_async(
    language_tag: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate backup codes (AdminGenerateBackupCodesV4)

    This endpoint is used to generate 8-digits backup codes.
    Each code is a one-time code and will be deleted once used.

    Properties:
        url: /iam/v4/admin/users/me/mfa/backupCodes

        method: POST

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        language_tag: (languageTag) OPTIONAL str in query

    Responses:
        200: OK - (Backup codes generated)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10192: factor not enabled | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminGenerateBackupCodesV4.create(
        language_tag=language_tag,
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


@deprecated
@same_doc_as(AdminGenerateMyBackupCodesV4)
def admin_generate_my_backup_codes_v4(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Generate backup codes (AdminGenerateMyBackupCodesV4)

    This endpoint is used to generate 8-digits backup codes.
    Each code is a one-time code and will be deleted once used.

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


@deprecated
@same_doc_as(AdminGenerateMyBackupCodesV4)
async def admin_generate_my_backup_codes_v4_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Generate backup codes (AdminGenerateMyBackupCodesV4)

    This endpoint is used to generate 8-digits backup codes.
    Each code is a one-time code and will be deleted once used.

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


@same_doc_as(AdminGetBackupCodesV4)
def admin_get_backup_codes_v4(
    language_tag: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get backup codes and send to email (AdminGetBackupCodesV4)

    This endpoint is used to get 8-digits backup codes.
    Each code is a one-time code and will be deleted once used.

    Properties:
        url: /iam/v4/admin/users/me/mfa/backupCodes

        method: GET

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        language_tag: (languageTag) OPTIONAL str in query

    Responses:
        204: No Content - (Get backup codes)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10192: factor not enabled | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminGetBackupCodesV4.create(
        language_tag=language_tag,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetBackupCodesV4)
async def admin_get_backup_codes_v4_async(
    language_tag: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get backup codes and send to email (AdminGetBackupCodesV4)

    This endpoint is used to get 8-digits backup codes.
    Each code is a one-time code and will be deleted once used.

    Properties:
        url: /iam/v4/admin/users/me/mfa/backupCodes

        method: GET

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        language_tag: (languageTag) OPTIONAL str in query

    Responses:
        204: No Content - (Get backup codes)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10192: factor not enabled | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminGetBackupCodesV4.create(
        language_tag=language_tag,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminGetMyBackupCodesV4)
def admin_get_my_backup_codes_v4(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get backup codes (AdminGetMyBackupCodesV4)

    This endpoint is used to get 8-digits backup codes.
    Each code is a one-time code and will be deleted once used.

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


@deprecated
@same_doc_as(AdminGetMyBackupCodesV4)
async def admin_get_my_backup_codes_v4_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get backup codes (AdminGetMyBackupCodesV4)

    This endpoint is used to get 8-digits backup codes.
    Each code is a one-time code and will be deleted once used.

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


@deprecated
@same_doc_as(AdminGetMyMFAStatusV4)
def admin_get_my_mfa_status_v4(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get User MFA Status (AdminGetMyMFAStatusV4)

    This endpoint will get user's' MFA status.
    ------------
    **Substitute endpoint**: /iam/v4/admin/users/me/mfa/status [GET]

    Properties:
        url: /iam/v4/admin/users/me/mfa/status

        method: POST

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelUserMFAStatusResponseV4 (MFA status returned)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20003: forbidden access)

        404: Not Found - RestErrorResponse (10365: client not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminGetMyMFAStatusV4.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminGetMyMFAStatusV4)
async def admin_get_my_mfa_status_v4_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get User MFA Status (AdminGetMyMFAStatusV4)

    This endpoint will get user's' MFA status.
    ------------
    **Substitute endpoint**: /iam/v4/admin/users/me/mfa/status [GET]

    Properties:
        url: /iam/v4/admin/users/me/mfa/status

        method: POST

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelUserMFAStatusResponseV4 (MFA status returned)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20003: forbidden access)

        404: Not Found - RestErrorResponse (10365: client not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminGetMyMFAStatusV4.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetMyOwnMFAStatusV4)
def admin_get_my_own_mfa_status_v4(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get Admin Own MFA Status (AdminGetMyOwnMFAStatusV4)

    This endpoint will get user's' MFA status.

    Properties:
        url: /iam/v4/admin/users/me/mfa/status

        method: GET

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelUserMFAStatusResponseV4 (MFA status returned)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20003: forbidden access)

        404: Not Found - RestErrorResponse (10365: client not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminGetMyOwnMFAStatusV4.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetMyOwnMFAStatusV4)
async def admin_get_my_own_mfa_status_v4_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get Admin Own MFA Status (AdminGetMyOwnMFAStatusV4)

    This endpoint will get user's' MFA status.

    Properties:
        url: /iam/v4/admin/users/me/mfa/status

        method: GET

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelUserMFAStatusResponseV4 (MFA status returned)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20003: forbidden access)

        404: Not Found - RestErrorResponse (10365: client not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminGetMyOwnMFAStatusV4.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetNamespaceInvitationHistoryV4)
def admin_get_namespace_invitation_history_v4(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Get Invitation History for specific namespace V4 (AdminGetNamespaceInvitationHistoryV4)

    This endpoint is to Invitation Historiy for specific new studio namespace in multi tenant mode.
    It will return error if the service multi tenant mode is set to false.

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/invitationHistories

        method: GET

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelInvitationHistoryResponse (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse

        500: Internal Server Error - RestErrorResponse (20000: internal server error)

        501: Not Implemented - RestErrorResponse (20024: not implemented)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetNamespaceInvitationHistoryV4.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetNamespaceInvitationHistoryV4)
async def admin_get_namespace_invitation_history_v4_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Get Invitation History for specific namespace V4 (AdminGetNamespaceInvitationHistoryV4)

    This endpoint is to Invitation Historiy for specific new studio namespace in multi tenant mode.
    It will return error if the service multi tenant mode is set to false.

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/invitationHistories

        method: GET

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelInvitationHistoryResponse (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse

        500: Internal Server Error - RestErrorResponse (20000: internal server error)

        501: Not Implemented - RestErrorResponse (20024: not implemented)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetNamespaceInvitationHistoryV4.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetNamespaceUserInvitationHistoryV4)
def admin_get_namespace_user_invitation_history_v4(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Get Users Invitation History for specific namespace V4 (AdminGetNamespaceUserInvitationHistoryV4)

    This endpoint is to Get list of users Invitation History for specific new studio namespace in multi tenant mode.
    It will return error if the service multi tenant mode is set to false.
    Accepted Query:
    - offset
    - limit

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/invitationHistories/users

        method: GET

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelNamespaceInvitationHistoryUserV4Response (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)

        501: Not Implemented - RestErrorResponse (20024: not implemented)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetNamespaceUserInvitationHistoryV4.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetNamespaceUserInvitationHistoryV4)
async def admin_get_namespace_user_invitation_history_v4_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Get Users Invitation History for specific namespace V4 (AdminGetNamespaceUserInvitationHistoryV4)

    This endpoint is to Get list of users Invitation History for specific new studio namespace in multi tenant mode.
    It will return error if the service multi tenant mode is set to false.
    Accepted Query:
    - offset
    - limit

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/invitationHistories/users

        method: GET

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelNamespaceInvitationHistoryUserV4Response (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)

        501: Not Implemented - RestErrorResponse (20024: not implemented)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetNamespaceUserInvitationHistoryV4.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetUserMFAStatusV4)
def admin_get_user_mfa_status_v4(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User 2FA Status (AdminGetUserMFAStatusV4)

    **This endpoint is used to get user's 2FA status.**

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/users/{userId}/mfa/status

        method: GET

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelUserMFAStatusResponseV4 (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserMFAStatusV4.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetUserMFAStatusV4)
async def admin_get_user_mfa_status_v4_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User 2FA Status (AdminGetUserMFAStatusV4)

    **This endpoint is used to get user's 2FA status.**

    Properties:
        url: /iam/v4/admin/namespaces/{namespace}/users/{userId}/mfa/status

        method: GET

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelUserMFAStatusResponseV4 (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserMFAStatusV4.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminInviteUserNewV4)
def admin_invite_user_new_v4(
    body: ModelInviteUserRequestV4,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin invite User v4 (AdminInviteUserNewV4)

    Use this endpoint to invite admin or non-admin user and assign role to them. The role must be scoped to namespace. An admin user can only
    assign role with **assignedNamespaces** if the admin user has required permission which is same as the required permission of endpoint: [AdminAddUserRoleV4].

    Detail request body :
    - **emailAddresses** is required, List of email addresses that will be invited
    - **isAdmin** is required, true if user is admin, false if user is not admin
    - **namespace** is optional. Only works on multi tenant mode,
    if not specified then it will be assigned Publisher namespace,
    if specified, it will become that studio/publisher where user is invited to.
    - **roleId** is optional, if not specified then it will only assign User role.
    - **assignedNamespaces** is optional, List of namespaces which the Role will be assigned to the user, only works when Role is not empty.

    The invited admin will also assigned with "User" role by default.

    Properties:
        url: /iam/v4/admin/users/invite

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
    request = AdminInviteUserNewV4.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminInviteUserNewV4)
async def admin_invite_user_new_v4_async(
    body: ModelInviteUserRequestV4,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin invite User v4 (AdminInviteUserNewV4)

    Use this endpoint to invite admin or non-admin user and assign role to them. The role must be scoped to namespace. An admin user can only
    assign role with **assignedNamespaces** if the admin user has required permission which is same as the required permission of endpoint: [AdminAddUserRoleV4].

    Detail request body :
    - **emailAddresses** is required, List of email addresses that will be invited
    - **isAdmin** is required, true if user is admin, false if user is not admin
    - **namespace** is optional. Only works on multi tenant mode,
    if not specified then it will be assigned Publisher namespace,
    if specified, it will become that studio/publisher where user is invited to.
    - **roleId** is optional, if not specified then it will only assign User role.
    - **assignedNamespaces** is optional, List of namespaces which the Role will be assigned to the user, only works when Role is not empty.

    The invited admin will also assigned with "User" role by default.

    Properties:
        url: /iam/v4/admin/users/invite

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
    request = AdminInviteUserNewV4.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminInviteUserV4)
def admin_invite_user_v4(
    body: ModelInviteUserRequestV4,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin invite User v4 (AdminInviteUserV4)

    Use this endpoint to invite admin or non-admin user and assign role to them. The role must be scoped to namespace. An admin user can only
    assign role with **assignedNamespaces** if the admin user has required permission which is same as the required permission of endpoint: [AdminAddUserRoleV4].

    Detail request body :
    - Email Address is required, List of email addresses that will be invited
    - isAdmin is required, true if user is admin, false if user is not admin
    - Namespace is optional. Only works on multi tenant mode,
    if not specified then it will be assigned Publisher namespace,
    if specified, it will become that studio/publisher where user is invited to.
    - Role is optional, if not specified then it will only assign User role.
    - Assigned Namespaces is optional, List of namespaces which the Role will be assigned to the user, only works when Role is not empty.

    The invited admin will also assigned with "User" role by default.

    Substitute endpoint: /iam/v4/admin/users/invite

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


@deprecated
@same_doc_as(AdminInviteUserV4)
async def admin_invite_user_v4_async(
    body: ModelInviteUserRequestV4,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin invite User v4 (AdminInviteUserV4)

    Use this endpoint to invite admin or non-admin user and assign role to them. The role must be scoped to namespace. An admin user can only
    assign role with **assignedNamespaces** if the admin user has required permission which is same as the required permission of endpoint: [AdminAddUserRoleV4].

    Detail request body :
    - Email Address is required, List of email addresses that will be invited
    - isAdmin is required, true if user is admin, false if user is not admin
    - Namespace is optional. Only works on multi tenant mode,
    if not specified then it will be assigned Publisher namespace,
    if specified, it will become that studio/publisher where user is invited to.
    - Role is optional, if not specified then it will only assign User role.
    - Assigned Namespaces is optional, List of namespaces which the Role will be assigned to the user, only works when Role is not empty.

    The invited admin will also assigned with "User" role by default.

    Substitute endpoint: /iam/v4/admin/users/invite

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


@same_doc_as(AdminListInvitationHistoriesV4)
def admin_list_invitation_histories_v4(
    limit: Optional[int] = None,
    namespace: Optional[str] = None,
    offset: Optional[int] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin List Invitation Histories V4 (AdminListInvitationHistoriesV4)

    This endpoint is to list all Invitation Histories for new studio namespace in multi tenant mode.
    It will return error if the service multi tenant mode is set to false.
    Accepted Query:
    - namespace
    - offset
    - limit

    Properties:
        url: /iam/v4/admin/invitationHistories

        method: GET

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        limit: (limit) OPTIONAL int in query

        namespace: (namespace) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelListInvitationHistoriesV4Response (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)

        501: Not Implemented - RestErrorResponse (20024: not implemented)
    """
    request = AdminListInvitationHistoriesV4.create(
        limit=limit,
        namespace=namespace,
        offset=offset,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminListInvitationHistoriesV4)
async def admin_list_invitation_histories_v4_async(
    limit: Optional[int] = None,
    namespace: Optional[str] = None,
    offset: Optional[int] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin List Invitation Histories V4 (AdminListInvitationHistoriesV4)

    This endpoint is to list all Invitation Histories for new studio namespace in multi tenant mode.
    It will return error if the service multi tenant mode is set to false.
    Accepted Query:
    - namespace
    - offset
    - limit

    Properties:
        url: /iam/v4/admin/invitationHistories

        method: GET

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        limit: (limit) OPTIONAL int in query

        namespace: (namespace) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelListInvitationHistoriesV4Response (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)

        501: Not Implemented - RestErrorResponse (20024: not implemented)
    """
    request = AdminListInvitationHistoriesV4.create(
        limit=limit,
        namespace=namespace,
        offset=offset,
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

    List roles assigned to a user

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    List roles assigned to a user

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    Remove a role from user's roles.

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    Remove a role from user's roles.

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    action: Optional[str] = None,
    language_tag: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Send code for MFA email (AdminSendMyMFAEmailCodeV4)

    This endpoint is used to send email code.
    --------------
    Supported actions:
    * ChangePassword
    * DisableMFAEmail

    Properties:
        url: /iam/v4/admin/users/me/mfa/email/code

        method: POST

        tags: ["Users V4"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        action: (action) OPTIONAL str in form_data

        language_tag: (languageTag) OPTIONAL str in form_data

    Responses:
        204: No Content - (code sent)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20003: forbidden access)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        429: Too Many Requests - RestErrorResponse (20007: too many requests)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminSendMyMFAEmailCodeV4.create(
        action=action,
        language_tag=language_tag,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminSendMyMFAEmailCodeV4)
async def admin_send_my_mfa_email_code_v4_async(
    action: Optional[str] = None,
    language_tag: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Send code for MFA email (AdminSendMyMFAEmailCodeV4)

    This endpoint is used to send email code.
    --------------
    Supported actions:
    * ChangePassword
    * DisableMFAEmail

    Properties:
        url: /iam/v4/admin/users/me/mfa/email/code

        method: POST

        tags: ["Users V4"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        action: (action) OPTIONAL str in form_data

        language_tag: (languageTag) OPTIONAL str in form_data

    Responses:
        204: No Content - (code sent)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20003: forbidden access)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        429: Too Many Requests - RestErrorResponse (20007: too many requests)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminSendMyMFAEmailCodeV4.create(
        action=action,
        language_tag=language_tag,
    )
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

    This Endpoint support update user based on given data. **Single request can update single field or multi fields.**
    Supported field {country, displayName, languageTag, dateOfBirth, avatarUrl, userName}
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

        409: Conflict - RestErrorResponse (10177: username already used | 10222: unique display name already exists)

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

    This Endpoint support update user based on given data. **Single request can update single field or multi fields.**
    Supported field {country, displayName, languageTag, dateOfBirth, avatarUrl, userName}
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

        409: Conflict - RestErrorResponse (10177: username already used | 10222: unique display name already exists)

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

    This is the endpoint for an admin to update a user email address.
    This endpoint need a valid user token from an admin to verify its identity (email) before updating a user.

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    This is the endpoint for an admin to update a user email address.
    This endpoint need a valid user token from an admin to verify its identity (email) before updating a user.

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    User's roles will be replaced with roles from request body.
    An admin user can only assign role with **assignedNamespaces** if the admin user has required permission which is same as the required permission of this endpoint.

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

        404: Not Found - RestErrorResponse (20008: user not found | 10156: role not found)

        422: Unprocessable Entity - RestErrorResponse (10183: unprocessable entity)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    User's roles will be replaced with roles from request body.
    An admin user can only assign role with **assignedNamespaces** if the admin user has required permission which is same as the required permission of this endpoint.

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

        404: Not Found - RestErrorResponse (20008: user not found | 10156: role not found)

        422: Unprocessable Entity - RestErrorResponse (10183: unprocessable entity)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    This Endpoint support update user based on given data. **Single request can update single field or multi fields.**
    Supported field {country, displayName, languageTag, dateOfBirth, avatarUrl, userName}
    Country use ISO3166-1 alpha-2 two letter, e.g. US.
    Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.

    **Response body logic when user updating email address:**
    - User want to update email address of which have been verified, newEmailAddress response field will be filled with new email address.
    - User want to update email address of which have not been verified, { oldEmailAddress, emailAddress} response field will be filled with new email address.
    - User want to update email address of which have been verified and updated before, { oldEmailAddress, emailAddress} response field will be filled with verified email before. newEmailAddress response field will be filled with newest email address.

    action code : 10103

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

        409: Conflict - RestErrorResponse (10133: email already used | 10222: unique display name already exists)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    This Endpoint support update user based on given data. **Single request can update single field or multi fields.**
    Supported field {country, displayName, languageTag, dateOfBirth, avatarUrl, userName}
    Country use ISO3166-1 alpha-2 two letter, e.g. US.
    Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.

    **Response body logic when user updating email address:**
    - User want to update email address of which have been verified, newEmailAddress response field will be filled with new email address.
    - User want to update email address of which have not been verified, { oldEmailAddress, emailAddress} response field will be filled with new email address.
    - User want to update email address of which have been verified and updated before, { oldEmailAddress, emailAddress} response field will be filled with verified email before. newEmailAddress response field will be filled with newest email address.

    action code : 10103

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

        409: Conflict - RestErrorResponse (10133: email already used | 10222: unique display name already exists)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    body: AccountCreateUserRequestV4,
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

    **Note**:
    * **uniqueDisplayName**: this is required when uniqueDisplayNameEnabled/UNIQUE_DISPLAY_NAME_ENABLED is true.

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

        body: (body) REQUIRED AccountCreateUserRequestV4 in body

        invitation_id: (invitationId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - AccountCreateUserResponseV4 (Created)

        400: Bad Request - RestErrorResponse (20002: validation error | 10130: user under age)

        403: Forbidden - RestErrorResponse (20003: forbidden access | 10213: country is blocked)

        404: Not Found - RestErrorResponse (10180: admin invitation not found or expired | 10154: country not found)

        409: Conflict - RestErrorResponse (10222: unique display name already exists)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    body: AccountCreateUserRequestV4,
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

    **Note**:
    * **uniqueDisplayName**: this is required when uniqueDisplayNameEnabled/UNIQUE_DISPLAY_NAME_ENABLED is true.

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

        body: (body) REQUIRED AccountCreateUserRequestV4 in body

        invitation_id: (invitationId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - AccountCreateUserResponseV4 (Created)

        400: Bad Request - RestErrorResponse (20002: validation error | 10130: user under age)

        403: Forbidden - RestErrorResponse (20003: forbidden access | 10213: country is blocked)

        404: Not Found - RestErrorResponse (10180: admin invitation not found or expired | 10154: country not found)

        409: Conflict - RestErrorResponse (10222: unique display name already exists)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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


@same_doc_as(PublicChallengeMyMFAV4)
def public_challenge_my_mfav4(
    code: Optional[str] = None,
    factor: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Challenge User MFA (PublicChallengeMyMFAV4)

    This endpoint will verify user's' MFA code and generate a MFA token for the action.

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/challenge/verify

        method: POST

        tags: ["Users V4"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        code: (code) OPTIONAL str in form_data

        factor: (factor) OPTIONAL str in form_data

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelUserMFATokenResponseV4 (MFA token generated)

        204: No Content - (No MFA token generated)

        400: Bad Request - RestErrorResponse (10138: code not match | 10137: code is expired)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20003: forbidden access)

        404: Not Found - RestErrorResponse (10365: client not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicChallengeMyMFAV4.create(
        code=code,
        factor=factor,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicChallengeMyMFAV4)
async def public_challenge_my_mfav4_async(
    code: Optional[str] = None,
    factor: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Challenge User MFA (PublicChallengeMyMFAV4)

    This endpoint will verify user's' MFA code and generate a MFA token for the action.

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/challenge/verify

        method: POST

        tags: ["Users V4"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        code: (code) OPTIONAL str in form_data

        factor: (factor) OPTIONAL str in form_data

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelUserMFATokenResponseV4 (MFA token generated)

        204: No Content - (No MFA token generated)

        400: Bad Request - RestErrorResponse (10138: code not match | 10137: code is expired)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20003: forbidden access)

        404: Not Found - RestErrorResponse (10365: client not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicChallengeMyMFAV4.create(
        code=code,
        factor=factor,
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
    **Required attributes:**
    - verified: this new user is verified or not
    - authType: possible value is EMAILPASSWD
    - emailAddress: Please refer to the rule from /v3/public/inputValidations API.
    - username: Please refer to the rule from /v3/public/inputValidations API.
    - password: Please refer to the rule from /v3/public/inputValidations API.
    - country: ISO3166-1 alpha-2 two letter, e.g. US.
    - dateOfBirth: YYYY-MM-DD, e.g. 1990-01-01. valid values are between 1905-01-01 until current date.

    **Not required attributes:**
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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    **Required attributes:**
    - verified: this new user is verified or not
    - authType: possible value is EMAILPASSWD
    - emailAddress: Please refer to the rule from /v3/public/inputValidations API.
    - username: Please refer to the rule from /v3/public/inputValidations API.
    - password: Please refer to the rule from /v3/public/inputValidations API.
    - country: ISO3166-1 alpha-2 two letter, e.g. US.
    - dateOfBirth: YYYY-MM-DD, e.g. 1990-01-01. valid values are between 1905-01-01 until current date.

    **Not required attributes:**
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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    **Required attributes:**
    - authType: possible value is EMAILPASSWD
    - emailAddress: Please refer to the rule from /v3/public/inputValidations API.
    - username: Please refer to the rule from /v3/public/inputValidations API.
    - password: Please refer to the rule from /v3/public/inputValidations API.
    - country: ISO3166-1 alpha-2 two letter, e.g. US.
    - dateOfBirth: YYYY-MM-DD, e.g. 1990-01-01. valid values are between 1905-01-01 until current date.
    - uniqueDisplayName: required when uniqueDisplayNameEnabled/UNIQUE_DISPLAY_NAME_ENABLED is true, please refer to the rule from /v3/public/inputValidations API.
    - code: required when mandatoryEmailVerificationEnabled config is true, please refer to the config from /iam/v3/public/namespaces/{namespace}/config/{configKey} [GET] API.

    **Not required attributes:**
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

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error | 10130: user under age | 10152: verification code not found)

        403: Forbidden - RestErrorResponse (20003: forbidden access | 10213: country is blocked)

        404: Not Found - RestErrorResponse (10154: country not found)

        409: Conflict - RestErrorResponse (10133: email already used | 10177: username already used | 10222: unique display name already exists)

        429: Too Many Requests - RestErrorResponse (20007: too many requests)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    **Required attributes:**
    - authType: possible value is EMAILPASSWD
    - emailAddress: Please refer to the rule from /v3/public/inputValidations API.
    - username: Please refer to the rule from /v3/public/inputValidations API.
    - password: Please refer to the rule from /v3/public/inputValidations API.
    - country: ISO3166-1 alpha-2 two letter, e.g. US.
    - dateOfBirth: YYYY-MM-DD, e.g. 1990-01-01. valid values are between 1905-01-01 until current date.
    - uniqueDisplayName: required when uniqueDisplayNameEnabled/UNIQUE_DISPLAY_NAME_ENABLED is true, please refer to the rule from /v3/public/inputValidations API.
    - code: required when mandatoryEmailVerificationEnabled config is true, please refer to the config from /iam/v3/public/namespaces/{namespace}/config/{configKey} [GET] API.

    **Not required attributes:**
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

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error | 10130: user under age | 10152: verification code not found)

        403: Forbidden - RestErrorResponse (20003: forbidden access | 10213: country is blocked)

        404: Not Found - RestErrorResponse (10154: country not found)

        409: Conflict - RestErrorResponse (10133: email already used | 10177: username already used | 10222: unique display name already exists)

        429: Too Many Requests - RestErrorResponse (20007: too many requests)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    body: ModelDisableMFARequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Disable 2FA authenticator (PublicDisableMyAuthenticatorV4)

    This endpoint is used to disable 2FA authenticator.
    ------
    **Note**: **mfaToken** is required when all the following are enabled:
    - The environment variable **SENSITIVE_MFA_AUTH_ENABLED** is true
    - The **Two-Factor Authentication** is enabled in the IAM client where user logs in
    - Users already enabled the MFA

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/disable

        method: DELETE

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelDisableMFARequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Authenticator disabled)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10171: email address not found | 10228: invalid mfa token)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicDisableMyAuthenticatorV4.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicDisableMyAuthenticatorV4)
async def public_disable_my_authenticator_v4_async(
    body: ModelDisableMFARequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Disable 2FA authenticator (PublicDisableMyAuthenticatorV4)

    This endpoint is used to disable 2FA authenticator.
    ------
    **Note**: **mfaToken** is required when all the following are enabled:
    - The environment variable **SENSITIVE_MFA_AUTH_ENABLED** is true
    - The **Two-Factor Authentication** is enabled in the IAM client where user logs in
    - Users already enabled the MFA

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/disable

        method: DELETE

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelDisableMFARequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Authenticator disabled)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10171: email address not found | 10228: invalid mfa token)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicDisableMyAuthenticatorV4.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicDisableMyBackupCodesV4)
def public_disable_my_backup_codes_v4(
    body: ModelDisableMFARequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Disable 2FA backup codes (PublicDisableMyBackupCodesV4)

    This endpoint is used to disable 2FA backup codes.
    ------
    **Note**: **mfaToken** is required when all the following are enabled:
    - The environment variable **SENSITIVE_MFA_AUTH_ENABLED** is true
    - The **Two-Factor Authentication** is enabled in the IAM client where user logs in
    - Users already enabled the MFA

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode/disable

        method: DELETE

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelDisableMFARequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Backup codes disabled)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10171: email address not found | 10228: invalid mfa token)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicDisableMyBackupCodesV4.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicDisableMyBackupCodesV4)
async def public_disable_my_backup_codes_v4_async(
    body: ModelDisableMFARequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Disable 2FA backup codes (PublicDisableMyBackupCodesV4)

    This endpoint is used to disable 2FA backup codes.
    ------
    **Note**: **mfaToken** is required when all the following are enabled:
    - The environment variable **SENSITIVE_MFA_AUTH_ENABLED** is true
    - The **Two-Factor Authentication** is enabled in the IAM client where user logs in
    - Users already enabled the MFA

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode/disable

        method: DELETE

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelDisableMFARequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Backup codes disabled)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10171: email address not found | 10228: invalid mfa token)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicDisableMyBackupCodesV4.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicDisableMyEmailV4)
def public_disable_my_email_v4(
    body: ModelDisableMFARequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Disable 2FA email (PublicDisableMyEmailV4)

    This endpoint is used to disable 2FA email.
    ------
    **Note**: **mfaToken** is required when all the following are enabled:
    - The environment variable **SENSITIVE_MFA_AUTH_ENABLED** is true
    - The **Two-Factor Authentication** is enabled in the IAM client where user logs in
    - Users already enabled the MFA

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/email/disable

        method: POST

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelDisableMFARequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (email disabled)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10171: email address not found | 10228: invalid mfa token)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20003: forbidden access)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicDisableMyEmailV4.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicDisableMyEmailV4)
async def public_disable_my_email_v4_async(
    body: ModelDisableMFARequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Disable 2FA email (PublicDisableMyEmailV4)

    This endpoint is used to disable 2FA email.
    ------
    **Note**: **mfaToken** is required when all the following are enabled:
    - The environment variable **SENSITIVE_MFA_AUTH_ENABLED** is true
    - The **Two-Factor Authentication** is enabled in the IAM client where user logs in
    - Users already enabled the MFA

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/email/disable

        method: POST

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelDisableMFARequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (email disabled)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10171: email address not found | 10228: invalid mfa token)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20003: forbidden access)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicDisableMyEmailV4.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(PublicDownloadMyBackupCodesV4)
def public_download_my_backup_codes_v4(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Download user backup codes (PublicDownloadMyBackupCodesV4)

    This endpoint is used to download backup codes.

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicDownloadMyBackupCodesV4.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PublicDownloadMyBackupCodesV4)
async def public_download_my_backup_codes_v4_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Download user backup codes (PublicDownloadMyBackupCodesV4)

    This endpoint is used to download backup codes.

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicDownloadMyBackupCodesV4.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicEnableBackupCodesV4)
def public_enable_backup_codes_v4(
    language_tag: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Enable 2FA backup codes (PublicEnableBackupCodesV4)

    This endpoint is used to enable 2FA backup codes.

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCodes/enable

        method: POST

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        language_tag: (languageTag) OPTIONAL str in query

    Responses:
        204: No Content - (Backup codes enabled and codes sent to email)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        409: Conflict - RestErrorResponse (10194: factor already enabled)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicEnableBackupCodesV4.create(
        language_tag=language_tag,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicEnableBackupCodesV4)
async def public_enable_backup_codes_v4_async(
    language_tag: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Enable 2FA backup codes (PublicEnableBackupCodesV4)

    This endpoint is used to enable 2FA backup codes.

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCodes/enable

        method: POST

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        language_tag: (languageTag) OPTIONAL str in query

    Responses:
        204: No Content - (Backup codes enabled and codes sent to email)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        409: Conflict - RestErrorResponse (10194: factor already enabled)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicEnableBackupCodesV4.create(
        language_tag=language_tag,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicEnableMyAuthenticatorV4)
def public_enable_my_authenticator_v4(
    code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Enable 2FA authenticator (PublicEnableMyAuthenticatorV4)

    This endpoint is used to enable 2FA authenticator.
    ----------
    Prerequisites:
    - Generate the secret key/QR code uri by **_/iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/key_**
    - Consume the secret key/QR code by an authenticator app
    - Get the code from the authenticator app

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/enable

        method: POST

        tags: ["Users V4"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        code: (code) REQUIRED str in form_data

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicEnableMyAuthenticatorV4.create(
        code=code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicEnableMyAuthenticatorV4)
async def public_enable_my_authenticator_v4_async(
    code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Enable 2FA authenticator (PublicEnableMyAuthenticatorV4)

    This endpoint is used to enable 2FA authenticator.
    ----------
    Prerequisites:
    - Generate the secret key/QR code uri by **_/iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/key_**
    - Consume the secret key/QR code by an authenticator app
    - Get the code from the authenticator app

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/enable

        method: POST

        tags: ["Users V4"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        code: (code) REQUIRED str in form_data

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicEnableMyAuthenticatorV4.create(
        code=code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(PublicEnableMyBackupCodesV4)
def public_enable_my_backup_codes_v4(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Enable 2FA backup codes (PublicEnableMyBackupCodesV4)

    This endpoint is used to enable 2FA backup codes.

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicEnableMyBackupCodesV4.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PublicEnableMyBackupCodesV4)
async def public_enable_my_backup_codes_v4_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Enable 2FA backup codes (PublicEnableMyBackupCodesV4)

    This endpoint is used to enable 2FA backup codes.

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicEnableMyEmailV4.create(
        code=code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGenerateBackupCodesV4)
def public_generate_backup_codes_v4(
    language_tag: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate backup codes (PublicGenerateBackupCodesV4)

    This endpoint is used to generate 8-digits backup codes.
    Each codes is a one-time code and will be deleted once used.
    The codes will be sent through linked email.

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCodes

        method: POST

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        language_tag: (languageTag) OPTIONAL str in query

    Responses:
        204: No Content - (Backup codes sent to email)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10192: factor not enabled | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGenerateBackupCodesV4.create(
        language_tag=language_tag,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGenerateBackupCodesV4)
async def public_generate_backup_codes_v4_async(
    language_tag: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate backup codes (PublicGenerateBackupCodesV4)

    This endpoint is used to generate 8-digits backup codes.
    Each codes is a one-time code and will be deleted once used.
    The codes will be sent through linked email.

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCodes

        method: POST

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        language_tag: (languageTag) OPTIONAL str in query

    Responses:
        204: No Content - (Backup codes sent to email)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10192: factor not enabled | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGenerateBackupCodesV4.create(
        language_tag=language_tag,
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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGenerateMyAuthenticatorKeyV4.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(PublicGenerateMyBackupCodesV4)
def public_generate_my_backup_codes_v4(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate backup codes (PublicGenerateMyBackupCodesV4)

    This endpoint is used to generate 8-digits backup codes.
    Each code is a one-time code and will be deleted once used.

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGenerateMyBackupCodesV4.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PublicGenerateMyBackupCodesV4)
async def public_generate_my_backup_codes_v4_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate backup codes (PublicGenerateMyBackupCodesV4)

    This endpoint is used to generate 8-digits backup codes.
    Each code is a one-time code and will be deleted once used.

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGenerateMyBackupCodesV4.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetBackupCodesV4)
def public_get_backup_codes_v4(
    language_tag: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get backup codes and send to email (PublicGetBackupCodesV4)

    This endpoint is used to get existing 8-digits backup codes.
    Each codes is a one-time code and will be deleted once used.
    The codes will be sent through linked email.

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCodes

        method: GET

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        language_tag: (languageTag) OPTIONAL str in query

    Responses:
        204: No Content - (Backup codes sent to email)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10192: factor not enabled | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetBackupCodesV4.create(
        language_tag=language_tag,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetBackupCodesV4)
async def public_get_backup_codes_v4_async(
    language_tag: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get backup codes and send to email (PublicGetBackupCodesV4)

    This endpoint is used to get existing 8-digits backup codes.
    Each codes is a one-time code and will be deleted once used.
    The codes will be sent through linked email.

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCodes

        method: GET

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        language_tag: (languageTag) OPTIONAL str in query

    Responses:
        204: No Content - (Backup codes sent to email)

        400: Bad Request - RestErrorResponse (10191: email address not verified | 10192: factor not enabled | 10171: email address not found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetBackupCodesV4.create(
        language_tag=language_tag,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(PublicGetMyBackupCodesV4)
def public_get_my_backup_codes_v4(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get backup codes (PublicGetMyBackupCodesV4)

    This endpoint is used to get 8-digits backup codes.
    Each code is a one-time code and will be deleted once used.

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetMyBackupCodesV4.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PublicGetMyBackupCodesV4)
async def public_get_my_backup_codes_v4_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get backup codes (PublicGetMyBackupCodesV4)

    This endpoint is used to get 8-digits backup codes.
    Each code is a one-time code and will be deleted once used.

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetMyEnabledFactorsV4.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(PublicGetMyMFAStatusV4)
def public_get_my_mfa_status_v4(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User MFA Status (PublicGetMyMFAStatusV4)

    This endpoint will get user's' MFA status.
    ---------
    **Substitute endpoint**: /iam/v4/public/namespaces/{namespace}/users/me/mfa/status [GET]

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/status

        method: POST

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelUserMFAStatusResponseV4 (MFA status returned)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20003: forbidden access)

        404: Not Found - RestErrorResponse (10365: client not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetMyMFAStatusV4.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PublicGetMyMFAStatusV4)
async def public_get_my_mfa_status_v4_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User MFA Status (PublicGetMyMFAStatusV4)

    This endpoint will get user's' MFA status.
    ---------
    **Substitute endpoint**: /iam/v4/public/namespaces/{namespace}/users/me/mfa/status [GET]

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/status

        method: POST

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelUserMFAStatusResponseV4 (MFA status returned)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20003: forbidden access)

        404: Not Found - RestErrorResponse (10365: client not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetMyMFAStatusV4.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetMyOwnMFAStatusV4)
def public_get_my_own_mfa_status_v4(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get My Own MFA Status (PublicGetMyOwnMFAStatusV4)

    This endpoint will get user's' MFA status.

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/status

        method: GET

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelUserMFAStatusResponseV4 (MFA status returned)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20003: forbidden access)

        404: Not Found - RestErrorResponse (10365: client not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetMyOwnMFAStatusV4.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetMyOwnMFAStatusV4)
async def public_get_my_own_mfa_status_v4_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get My Own MFA Status (PublicGetMyOwnMFAStatusV4)

    This endpoint will get user's' MFA status.

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/status

        method: GET

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelUserMFAStatusResponseV4 (MFA status returned)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20003: forbidden access)

        404: Not Found - RestErrorResponse (10365: client not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetMyOwnMFAStatusV4.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetUserByPlatformUserIDV4)
def public_get_user_by_platform_user_idv4(
    platform_id: str,
    platform_user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User By Platform User ID (PublicGetUserByPlatformUserIDV4)

    Get User By Platform User ID.
    This endpoint return user information by given platform ID and platform user ID.
    Several platforms are grouped under account groups, you can use either platform ID or platform group as platformId path parameter.
    example: for steam network platform, you can use steamnetwork / steam / steamopenid as platformId path parameter.
    If the target platform is not linked to the current user, will only return public information.
    ----------

    **Supported Platforms:**
    - Steam group (steamnetwork):
    - steam
    - steamopenid
    - PSN group (psn):
    - ps4web
    - ps4
    - ps5
    - XBOX group(xbox):
    - live
    - xblweb
    - Oculus group (oculusgroup):
    - oculus
    - oculusweb
    - Google group (google):
    - google
    - googleplaygames:
    - epicgames
    - facebook
    - twitch
    - discord
    - android
    - ios
    - apple
    - device
    - nintendo
    - awscognito
    - amazon
    - netflix
    - snapchat
    - _oidc platform id_

    Note:
    - You can use either platform id or platform group as **platformId** parameter.
    - **Nintendo platform user id**: NSA ID need to be appended with Environment ID using colon as separator. e.g kmzwa8awaa:dd1

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/platforms/{platformId}/users/{platformUserId}

        method: GET

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        platform_user_id: (platformUserId) REQUIRED str in path

    Responses:
        200: OK - ModelUserResponseV3 (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20003: forbidden access)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserByPlatformUserIDV4.create(
        platform_id=platform_id,
        platform_user_id=platform_user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetUserByPlatformUserIDV4)
async def public_get_user_by_platform_user_idv4_async(
    platform_id: str,
    platform_user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User By Platform User ID (PublicGetUserByPlatformUserIDV4)

    Get User By Platform User ID.
    This endpoint return user information by given platform ID and platform user ID.
    Several platforms are grouped under account groups, you can use either platform ID or platform group as platformId path parameter.
    example: for steam network platform, you can use steamnetwork / steam / steamopenid as platformId path parameter.
    If the target platform is not linked to the current user, will only return public information.
    ----------

    **Supported Platforms:**
    - Steam group (steamnetwork):
    - steam
    - steamopenid
    - PSN group (psn):
    - ps4web
    - ps4
    - ps5
    - XBOX group(xbox):
    - live
    - xblweb
    - Oculus group (oculusgroup):
    - oculus
    - oculusweb
    - Google group (google):
    - google
    - googleplaygames:
    - epicgames
    - facebook
    - twitch
    - discord
    - android
    - ios
    - apple
    - device
    - nintendo
    - awscognito
    - amazon
    - netflix
    - snapchat
    - _oidc platform id_

    Note:
    - You can use either platform id or platform group as **platformId** parameter.
    - **Nintendo platform user id**: NSA ID need to be appended with Environment ID using colon as separator. e.g kmzwa8awaa:dd1

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/platforms/{platformId}/users/{platformUserId}

        method: GET

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        platform_user_id: (platformUserId) REQUIRED str in path

    Responses:
        200: OK - ModelUserResponseV3 (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20003: forbidden access)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserByPlatformUserIDV4.create(
        platform_id=platform_id,
        platform_user_id=platform_user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetUserPublicInfoByUserIdV4)
def public_get_user_public_info_by_user_id_v4(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User Public Info By User ID (PublicGetUserPublicInfoByUserIdV4)

    This endpoint only returns user's public information.
    action code: 10129

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/{userId}

        method: GET

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelUserPublicInfoResponseV4 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        404: Not Found - RestErrorResponse (20008: user not found | 10139: platform account not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserPublicInfoByUserIdV4.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetUserPublicInfoByUserIdV4)
async def public_get_user_public_info_by_user_id_v4_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User Public Info By User ID (PublicGetUserPublicInfoByUserIdV4)

    This endpoint only returns user's public information.
    action code: 10129

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/{userId}

        method: GET

        tags: ["Users V4"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelUserPublicInfoResponseV4 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        404: Not Found - RestErrorResponse (20008: user not found | 10139: platform account not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserPublicInfoByUserIdV4.create(
        user_id=user_id,
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
    - additionalData(optional): for utm parameter data

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

        409: Conflict - RestErrorResponse (10133: email already used | 10207: user namespace is not available)

        422: Unprocessable Entity - RestErrorResponse (10183: unprocessable entity)

        429: Too Many Requests - RestErrorResponse (20007: too many requests)

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
    - additionalData(optional): for utm parameter data

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

        409: Conflict - RestErrorResponse (10133: email already used | 10207: user namespace is not available)

        422: Unprocessable Entity - RestErrorResponse (10183: unprocessable entity)

        429: Too Many Requests - RestErrorResponse (20007: too many requests)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = PublicInviteUserV4.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicListUserIDByPlatformUserIDsV4)
def public_list_user_id_by_platform_user_i_ds_v4(
    body: ModelPlatformUserIDRequestV4,
    platform_id: str,
    raw_puid: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List User ID By Platform User ID (PublicListUserIDByPlatformUserIDsV4)

    List User ID By Platform User ID
    This endpoint intended to list game user ID from the given namespace
    This endpoint return list of user ID by given platform ID and list of platform user ID, the max count is 100.

    Supported platform:
    - steam
    - steamopenid
    - ps4web
    - ps4
    - ps5
    - live
    - xblweb
    - oculus
    - if query by app user id, please set the param **pidType** to **OCULUS_APP_USER_ID**
    - oculusweb
    - facebook
    - google
    - googleplaygames
    - twitch
    - discord
    - apple
    - device
    - justice
    - epicgames
    - nintendo
    - awscognito
    - netflix
    - snapchat
    - oidc platform id

    Note:
    **nintendo platform user ID**: NSA ID need to be appended with Environment ID using colon as separator. e.g kmzwa8awaa:dd1

    If the request body exceed the max limitation, the max count will be in response body's messageVariables: "messageVariables": {"maxCount": "100"}

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/platforms/{platformId}/users

        method: POST

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelPlatformUserIDRequestV4 in body

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        raw_puid: (rawPUID) OPTIONAL bool in query

    Responses:
        200: OK - AccountcommonUserPlatforms (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 10229: request body exceed max limitation)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListUserIDByPlatformUserIDsV4.create(
        body=body,
        platform_id=platform_id,
        raw_puid=raw_puid,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicListUserIDByPlatformUserIDsV4)
async def public_list_user_id_by_platform_user_i_ds_v4_async(
    body: ModelPlatformUserIDRequestV4,
    platform_id: str,
    raw_puid: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List User ID By Platform User ID (PublicListUserIDByPlatformUserIDsV4)

    List User ID By Platform User ID
    This endpoint intended to list game user ID from the given namespace
    This endpoint return list of user ID by given platform ID and list of platform user ID, the max count is 100.

    Supported platform:
    - steam
    - steamopenid
    - ps4web
    - ps4
    - ps5
    - live
    - xblweb
    - oculus
    - if query by app user id, please set the param **pidType** to **OCULUS_APP_USER_ID**
    - oculusweb
    - facebook
    - google
    - googleplaygames
    - twitch
    - discord
    - apple
    - device
    - justice
    - epicgames
    - nintendo
    - awscognito
    - netflix
    - snapchat
    - oidc platform id

    Note:
    **nintendo platform user ID**: NSA ID need to be appended with Environment ID using colon as separator. e.g kmzwa8awaa:dd1

    If the request body exceed the max limitation, the max count will be in response body's messageVariables: "messageVariables": {"maxCount": "100"}

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/platforms/{platformId}/users

        method: POST

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelPlatformUserIDRequestV4 in body

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        raw_puid: (rawPUID) OPTIONAL bool in query

    Responses:
        200: OK - AccountcommonUserPlatforms (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 10229: request body exceed max limitation)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListUserIDByPlatformUserIDsV4.create(
        body=body,
        platform_id=platform_id,
        raw_puid=raw_puid,
        namespace=namespace,
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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    action: Optional[str] = None,
    language_tag: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Send code for MFA email (PublicSendMyMFAEmailCodeV4)

    This endpoint is used to send email code.
    ----------------
    Supported values of action:
    * ChangePassword
    * DisableMFAEmail

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/email/code

        method: POST

        tags: ["Users V4"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        action: (action) OPTIONAL str in form_data

        language_tag: (languageTag) OPTIONAL str in form_data

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicSendMyMFAEmailCodeV4.create(
        action=action,
        language_tag=language_tag,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicSendMyMFAEmailCodeV4)
async def public_send_my_mfa_email_code_v4_async(
    action: Optional[str] = None,
    language_tag: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Send code for MFA email (PublicSendMyMFAEmailCodeV4)

    This endpoint is used to send email code.
    ----------------
    Supported values of action:
    * ChangePassword
    * DisableMFAEmail

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me/mfa/email/code

        method: POST

        tags: ["Users V4"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        action: (action) OPTIONAL str in form_data

        language_tag: (languageTag) OPTIONAL str in form_data

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicSendMyMFAEmailCodeV4.create(
        action=action,
        language_tag=language_tag,
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
    It requires a verification code from `/users/me/code/request` with **UpdateEmailAddress** context.

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    It requires a verification code from `/users/me/code/request` with **UpdateEmailAddress** context.

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    body: ModelPublicUserUpdateRequestV3,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update User (PublicUpdateUserV4)

    This Endpoint support update user based on given data. **Single request can update single field or multi fields.**
    Supported field {country, displayName, languageTag, dateOfBirth, avatarUrl, userName}
    Country use ISO3166-1 alpha-2 two letter, e.g. US.
    Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.

    **Response body logic when user updating email address:**
    - User want to update email address of which have been verified, newEmailAddress response field will be filled with new email address.
    - User want to update email address of which have not been verified, { oldEmailAddress, emailAddress} response field will be filled with new email address.
    - User want to update email address of which have been verified and updated before, { oldEmailAddress, emailAddress} response field will be filled with verified email before. newEmailAddress response field will be filled with newest email address.

    action code : 10103

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me

        method: PATCH

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelPublicUserUpdateRequestV3 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelUserResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body | 10154: country not found | 10130: user under age)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (10213: country is blocked | 10235: date of birth not allowed to update | 10236: username not allowed to update | 10237: display name not allowed to update | 10238: country not allowed to update)

        409: Conflict - RestErrorResponse (10133: email already used | 10222: unique display name already exists)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicUpdateUserV4.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicUpdateUserV4)
async def public_update_user_v4_async(
    body: ModelPublicUserUpdateRequestV3,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update User (PublicUpdateUserV4)

    This Endpoint support update user based on given data. **Single request can update single field or multi fields.**
    Supported field {country, displayName, languageTag, dateOfBirth, avatarUrl, userName}
    Country use ISO3166-1 alpha-2 two letter, e.g. US.
    Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.

    **Response body logic when user updating email address:**
    - User want to update email address of which have been verified, newEmailAddress response field will be filled with new email address.
    - User want to update email address of which have not been verified, { oldEmailAddress, emailAddress} response field will be filled with new email address.
    - User want to update email address of which have been verified and updated before, { oldEmailAddress, emailAddress} response field will be filled with verified email before. newEmailAddress response field will be filled with newest email address.

    action code : 10103

    Properties:
        url: /iam/v4/public/namespaces/{namespace}/users/me

        method: PATCH

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelPublicUserUpdateRequestV3 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelUserResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body | 10154: country not found | 10130: user under age)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (10213: country is blocked | 10235: date of birth not allowed to update | 10236: username not allowed to update | 10237: display name not allowed to update | 10238: country not allowed to update)

        409: Conflict - RestErrorResponse (10133: email already used | 10222: unique display name already exists)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    The endpoint upgrades a headless account by linking the headless account with the email address, username, and password.
    By upgrading the headless account into a full account, the user could use the email address, username, and password for using Justice IAM.

    The endpoint is a shortcut for upgrading a headless account and verifying the email address in one call.
    In order to get a verification code for the endpoint, please check the [send verification code endpoint](#operations-Users-PublicSendVerificationCodeV3).

    This endpoint also have an ability to update user data (if the user data field is specified) right after the upgrade account process is done.
    Supported user data fields:
    - displayName
    - dateOfBirth : format YYYY-MM-DD, e.g. 2019-04-29
    - country : format ISO3166-1 alpha-2 two letter, e.g. US

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

        403: Forbidden - RestErrorResponse (10152: verification code not found | 10137: code is expired | 10136: code is either been used or not valid anymore | 10138: code not match | 10149: verification contact type doesn't match | 10148: verification code context doesn't match the required context | 10213: country is blocked)

        404: Not Found - RestErrorResponse (10139: platform account not found | 10154: country not found)

        409: Conflict - RestErrorResponse (10153: user exist | 10170: account is already a full account | 10222: unique display name already exists)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    The endpoint upgrades a headless account by linking the headless account with the email address, username, and password.
    By upgrading the headless account into a full account, the user could use the email address, username, and password for using Justice IAM.

    The endpoint is a shortcut for upgrading a headless account and verifying the email address in one call.
    In order to get a verification code for the endpoint, please check the [send verification code endpoint](#operations-Users-PublicSendVerificationCodeV3).

    This endpoint also have an ability to update user data (if the user data field is specified) right after the upgrade account process is done.
    Supported user data fields:
    - displayName
    - dateOfBirth : format YYYY-MM-DD, e.g. 2019-04-29
    - country : format ISO3166-1 alpha-2 two letter, e.g. US

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

        403: Forbidden - RestErrorResponse (10152: verification code not found | 10137: code is expired | 10136: code is either been used or not valid anymore | 10138: code not match | 10149: verification contact type doesn't match | 10148: verification code context doesn't match the required context | 10213: country is blocked)

        404: Not Found - RestErrorResponse (10139: platform account not found | 10154: country not found)

        409: Conflict - RestErrorResponse (10153: user exist | 10170: account is already a full account | 10222: unique display name already exists)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicUpgradeHeadlessAccountWithVerificationCodeV4.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicUpgradeHeadlessWithCodeV4Forward)
def public_upgrade_headless_with_code_v4_forward(
    body: AccountUpgradeHeadlessAccountWithVerificationCodeForwardRequestV4,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upgrade the headless account and automatically verify the email address if the upgrade succeeds. (PublicUpgradeHeadlessWithCodeV4Forward)

    This is a forward version for code verify.
    The endpoint upgrades a headless account by linking the headless account with the email address, username, and password.
    By upgrading the headless account into a full account, the user could use the email address, username, and password for using Justice IAM.

    The endpoint is a shortcut for upgrading a headless account and verifying the email address in one call.
    In order to get a verification code for the endpoint, please check the [send verification code endpoint](#operations-Users-PublicSendCodeForwardV3).

    This endpoint also have an ability to update user data (if the user data field is specified) right after the upgrade account process is done.

    Properties:
        url: /iam/v4/public/users/me/headless/code/verify/forward

        method: POST

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AccountUpgradeHeadlessAccountWithVerificationCodeForwardRequestV4 in body

    Responses:
        302: Found - (Found. Redirected to login website with result. If validateOnly=true, then the redirection with contain validate result;If validateOnly=false, then the redirection will contain the upgrade result. If upgrade succeed, then the response will contain upgrade_success_token)
    """
    request = PublicUpgradeHeadlessWithCodeV4Forward.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicUpgradeHeadlessWithCodeV4Forward)
async def public_upgrade_headless_with_code_v4_forward_async(
    body: AccountUpgradeHeadlessAccountWithVerificationCodeForwardRequestV4,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upgrade the headless account and automatically verify the email address if the upgrade succeeds. (PublicUpgradeHeadlessWithCodeV4Forward)

    This is a forward version for code verify.
    The endpoint upgrades a headless account by linking the headless account with the email address, username, and password.
    By upgrading the headless account into a full account, the user could use the email address, username, and password for using Justice IAM.

    The endpoint is a shortcut for upgrading a headless account and verifying the email address in one call.
    In order to get a verification code for the endpoint, please check the [send verification code endpoint](#operations-Users-PublicSendCodeForwardV3).

    This endpoint also have an ability to update user data (if the user data field is specified) right after the upgrade account process is done.

    Properties:
        url: /iam/v4/public/users/me/headless/code/verify/forward

        method: POST

        tags: ["Users V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AccountUpgradeHeadlessAccountWithVerificationCodeForwardRequestV4 in body

    Responses:
        302: Found - (Found. Redirected to login website with result. If validateOnly=true, then the redirection with contain validate result;If validateOnly=false, then the redirection will contain the upgrade result. If upgrade succeed, then the response will contain upgrade_success_token)
    """
    request = PublicUpgradeHeadlessWithCodeV4Forward.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
