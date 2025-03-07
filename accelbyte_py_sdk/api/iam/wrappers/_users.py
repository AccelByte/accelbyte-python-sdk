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

from ..models import AccountcommonCountry
from ..models import AccountcommonCountryAgeRestriction
from ..models import AccountcommonDistinctPlatformResponseV3
from ..models import AccountcommonListUsersWithPlatformAccountsResponse
from ..models import AccountcommonPermissions
from ..models import AccountcommonUserInformationV3
from ..models import AccountcommonUserLinkedPlatform
from ..models import AccountcommonUserLinkedPlatformsResponseV3
from ..models import AccountcommonUserPlatforms
from ..models import ModelAgeRestrictionRequest
from ..models import ModelAgeRestrictionRequestV3
from ..models import ModelAgeRestrictionResponse
from ..models import ModelAgeRestrictionResponseV3
from ..models import ModelBanCreateRequest
from ..models import ModelBanUpdateRequest
from ..models import ModelCountry
from ..models import ModelCountryAgeRestrictionRequest
from ..models import ModelCountryAgeRestrictionV3Request
from ..models import ModelCountryV3Response
from ..models import ModelCreateJusticeUserResponse
from ..models import ModelDisableUserRequest
from ..models import ModelForgotPasswordRequestV3
from ..models import ModelGetAdminUsersResponse
from ..models import ModelGetBulkUserBansRequest
from ..models import ModelGetLinkHeadlessAccountConflictResponse
from ..models import ModelGetPublisherUserResponse
from ..models import ModelGetUserBanSummaryV3
from ..models import ModelGetUserBanV3Response
from ..models import ModelGetUserJusticePlatformAccountResponse
from ..models import ModelGetUserMapping
from ..models import ModelGetUserMappingV3
from ..models import ModelGetUsersResponseWithPaginationV3
from ..models import ModelInviteUserRequestV3
from ..models import ModelInviteUserResponseV3
from ..models import ModelLinkHeadlessAccountRequest
from ..models import ModelLinkPlatformAccountRequest
from ..models import ModelLinkPlatformAccountWithProgressionRequest
from ..models import ModelLinkRequest
from ..models import ModelLinkingHistoryResponseWithPaginationV3
from ..models import ModelListBulkUserPlatformsResponse
from ..models import ModelListBulkUserResponse
from ..models import ModelListEmailAddressRequest
from ..models import ModelListUserInformationResult
from ..models import ModelListUserResponseV3
from ..models import ModelLoginHistoriesResponse
from ..models import ModelNamespaceRoleRequest
from ..models import ModelOneTimeCodeLinkRedirectionResponse
from ..models import ModelPermissionDeleteRequest
from ..models import ModelPlatformUserIDRequest
from ..models import ModelPublicOpenIDUserInfoResponse
from ..models import ModelPublicUserInformationResponseV3
from ..models import ModelPublicUserResponse
from ..models import ModelPublicUserResponseV3
from ..models import ModelPublicUserUpdateRequestV3
from ..models import ModelPublicUsersResponse
from ..models import ModelResetPasswordRequest
from ..models import ModelResetPasswordRequestV3
from ..models import ModelSearchUsersByPlatformIDResponse
from ..models import ModelSearchUsersResponse
from ..models import ModelSearchUsersResponseWithPaginationV3
from ..models import ModelSendRegisterVerificationCodeRequest
from ..models import ModelSendVerificationCodeRequest
from ..models import ModelSendVerificationCodeRequestV3
from ..models import ModelSendVerificationLinkRequest
from ..models import ModelTokenThirdPartyLinkStatusResponse
from ..models import ModelUnlinkUserPlatformRequest
from ..models import ModelUpdatePermissionScheduleRequest
from ..models import ModelUpdateUserDeletionStatusRequest
from ..models import ModelUpdateUserStatusRequest
from ..models import ModelUpgradeHeadlessAccountRequest
from ..models import ModelUpgradeHeadlessAccountV3Request
from ..models import ModelUpgradeHeadlessAccountWithVerificationCodeRequest
from ..models import ModelUpgradeHeadlessAccountWithVerificationCodeRequestV3
from ..models import ModelUserBanResponse
from ..models import ModelUserBanResponseV3
from ..models import ModelUserCreateRequest
from ..models import ModelUserCreateRequestV3
from ..models import ModelUserCreateResponse
from ..models import ModelUserCreateResponseV3
from ..models import ModelUserDeletionStatusResponse
from ..models import ModelUserIDsRequest
from ..models import ModelUserIdentityUpdateRequestV3
from ..models import ModelUserInformation
from ..models import ModelUserInputValidationRequest
from ..models import ModelUserInputValidationResponse
from ..models import ModelUserInvitationV3
from ..models import ModelUserPasswordUpdateRequest
from ..models import ModelUserPasswordUpdateV3Request
from ..models import ModelUserPlatformLinkHistories
from ..models import ModelUserPlatformMetadata
from ..models import ModelUserProfileUpdateAllowStatus
from ..models import ModelUserResponse
from ..models import ModelUserResponseV3
from ..models import ModelUserStateResponseV3
from ..models import ModelUserUpdateRequest
from ..models import ModelUserUpdateRequestV3
from ..models import ModelUserVerificationRequest
from ..models import ModelUserVerificationRequestV3
from ..models import ModelUsersPlatformInfosRequestV3
from ..models import ModelUsersPlatformInfosResponse
from ..models import ModelUsersUpdateRequestV3
from ..models import ModelVerificationCodeResponse
from ..models import ModelVerifyRegistrationCode
from ..models import ModelWebLinkingResponse
from ..models import RestErrorResponse

from ..operations.users import AddUserPermission
from ..operations.users import AddUserRole
from ..operations.users import AdminAddUserPermissionsV3
from ..operations.users import AdminAddUserRoleV3
from ..operations.users import AdminBanUserV2
from ..operations.users import AdminBanUserV3
from ..operations.users import AdminBulkGetUsersPlatform
from ..operations.users import AdminBulkUpdateUsersV3
from ..operations.users import AdminCreateJusticeUser
from ..operations.users import AdminCreateUserRolesV2
from ..operations.users import AdminDeletePlatformLinkV2
from ..operations.users import AdminDeleteUserInformationV3
from ..operations.users import AdminDeleteUserLinkingHistoryByPlatformIDV3
from ..operations.users import AdminDeleteUserLinkingRestrictionByPlatformIDV3
from ..operations.users import AdminDeleteUserPermissionBulkV3
from ..operations.users import AdminDeleteUserPermissionV3
from ..operations.users import AdminDeleteUserRoleV3
from ..operations.users import AdminDeleteUserRolesV3
from ..operations.users import AdminDisableUserV2
from ..operations.users import AdminEnableUserV2
from ..operations.users import AdminGetAgeRestrictionStatusV2
from ..operations.users import AdminGetAgeRestrictionStatusV3
from ..operations.users import AdminGetBulkUserBanV3
from ..operations.users import AdminGetBulkUserByEmailAddressV3
from ..operations.users import AdminGetListCountryAgeRestrictionV3
from ..operations.users import AdminGetListJusticePlatformAccounts
from ..operations.users import AdminGetMyUserV3
from ..operations.users import AdminGetThirdPartyPlatformTokenLinkStatusV3
from ..operations.users import AdminGetUserBanSummaryV3
from ..operations.users import AdminGetUserBanV2
from ..operations.users import AdminGetUserBanV3
from ..operations.users import AdminGetUserByEmailAddressV3
from ..operations.users import AdminGetUserByPlatformUserIDV3
from ..operations.users import AdminGetUserByUserIdV2
from ..operations.users import AdminGetUserByUserIdV3
from ..operations.users import AdminGetUserDeletionStatusV3
from ..operations.users import AdminGetUserLinkHistoriesV3
from ..operations.users import AdminGetUserLoginHistoriesV3
from ..operations.users import AdminGetUserMapping
from ..operations.users import AdminGetUserPlatformAccountsV3
from ..operations.users import AdminGetUserSinglePlatformAccount
from ..operations.users import AdminGetUserStateByUserIdV3
from ..operations.users import AdminInviteUserV3
from ..operations.users import AdminLinkPlatformAccount
from ..operations.users import AdminListAllDistinctPlatformAccountsV3
from ..operations.users import AdminListUserAllPlatformAccountsDistinctV3
from ..operations.users import AdminListUserIDByPlatformUserIDsV3
from ..operations.users import AdminListUserIDByUserIDsV3
from ..operations.users import AdminListUsersV3
from ..operations.users import AdminPlatformLinkV3
from ..operations.users import AdminPlatformUnlinkAllV3
from ..operations.users import AdminPlatformUnlinkV3
from ..operations.users import AdminPutUserRolesV2
from ..operations.users import AdminQueryThirdPlatformLinkHistoryV3
from ..operations.users import AdminResetPasswordV2
from ..operations.users import AdminResetPasswordV3
from ..operations.users import AdminSaveUserRoleV3
from ..operations.users import AdminSearchUserV3
from ..operations.users import AdminSearchUsersV2
from ..operations.users import AdminSendVerificationCodeV3
from ..operations.users import AdminTrustlyUpdateUserIdentity
from ..operations.users import AdminUpdateAgeRestrictionConfigV2
from ..operations.users import AdminUpdateAgeRestrictionConfigV3
from ..operations.users import AdminUpdateCountryAgeRestrictionV3
from ..operations.users import AdminUpdateUserBanV3
from ..operations.users import AdminUpdateUserDeletionStatusV3
from ..operations.users import AdminUpdateUserPermissionV3
from ..operations.users import AdminUpdateUserStatusV3
from ..operations.users import AdminUpdateUserV2
from ..operations.users import AdminUpdateUserV3
from ..operations.users import AdminUpgradeHeadlessAccountV3
from ..operations.users import AdminVerifyAccountV3
from ..operations.users import AdminVerifyUserWithoutVerificationCodeV3
from ..operations.users import BanUser
from ..operations.users import CheckUserAvailability
from ..operations.users import CreateUser
from ..operations.users import CreateUserFromInvitationV3
from ..operations.users import DeleteUser
from ..operations.users import DeleteUserInformation
from ..operations.users import DeleteUserPermission
from ..operations.users import DeleteUserRole
from ..operations.users import DisableUser
from ..operations.users import DisableUserBan
from ..operations.users import EnableUser
from ..operations.users import EnableUserBan
from ..operations.users import ForgotPassword
from ..operations.users import GetAdminInvitationV3
from ..operations.users import GetAdminUsersByRoleID
from ..operations.users import GetAdminUsersByRoleIdV3
from ..operations.users import GetListCountryAgeRestriction
from ..operations.users import GetListJusticePlatformAccounts
from ..operations.users import GetPublisherUser
from ..operations.users import GetUserBanHistory
from ..operations.users import GetUserByLoginID
from ..operations.users import GetUserByPlatformUserID
from ..operations.users import GetUserByUserID
from ..operations.users import GetUserInformation
from ..operations.users import GetUserJusticePlatformAccount
from ..operations.users import GetUserLoginHistories
from ..operations.users import GetUserMapping
from ..operations.users import GetUserPlatformAccounts
from ..operations.users import GetUserVerificationCode
from ..operations.users import GetUsersByLoginIds
from ..operations.users import LinkHeadlessAccountToMyAccountV3
from ..operations.users import ListAdminsV3
from ..operations.users import ListCrossNamespaceAccountLink
from ..operations.users import PlatformLink
from ..operations.users import PlatformUnlink
from ..operations.users import PublicBulkGetUsers
from ..operations.users import PublicCreateJusticeUser
from ..operations.users import PublicCreateUserV2
from ..operations.users import PublicCreateUserV3
from ..operations.users import PublicDeletePlatformLinkV2
from ..operations.users import PublicForceLinkPlatformWithProgression
from ..operations.users import PublicForcePlatformLinkV3
from ..operations.users import PublicForgotPasswordV2
from ..operations.users import PublicForgotPasswordV3
from ..operations.users import PublicGetAsyncStatus
from ..operations.users import PublicGetCountryAgeRestriction
from ..operations.users import PublicGetCountryAgeRestrictionV3
from ..operations.users import PublicGetLinkHeadlessAccountToMyAccountConflictV3
from ..operations.users import PublicGetMyProfileAllowUpdateStatusV3
from ..operations.users import PublicGetMyRedirectionAfterLinkV3
from ..operations.users import PublicGetMyUserV3
from ..operations.users import PublicGetOpenidUserInfoV3
from ..operations.users import PublicGetPublisherUserV3
from ..operations.users import PublicGetUserBan
from ..operations.users import PublicGetUserBanHistoryV3
from ..operations.users import PublicGetUserByPlatformUserIDV3
from ..operations.users import PublicGetUserByUserIdV3
from ..operations.users import PublicGetUserByUserIDV2
from ..operations.users import PublicGetUserInformationV3
from ..operations.users import PublicGetUserLoginHistoriesV3
from ..operations.users import PublicGetUserPlatformAccountsV3
from ..operations.users import PublicGetUsersPlatformInfosV3
from ..operations.users import PublicLinkPlatformAccount
from ..operations.users import PublicListJusticePlatformAccountsV3
from ..operations.users import PublicListUserAllPlatformAccountsDistinctV3
from ..operations.users import PublicListUserIDByPlatformUserIDsV3
from ..operations.users import PublicPartialUpdateUserV3
from ..operations.users import PublicPlatformLinkV2
from ..operations.users import PublicPlatformLinkV3
from ..operations.users import PublicPlatformUnlinkAllV3
from ..operations.users import PublicPlatformUnlinkV3
from ..operations.users import PublicProcessWebLinkPlatformV3
from ..operations.users import PublicResetPasswordV2
from ..operations.users import PublicSearchUserV3
from ..operations.users import PublicSendCodeForwardV3
from ..operations.users import PublicSendRegistrationCode
from ..operations.users import PublicSendVerificationCodeV3
from ..operations.users import PublicSendVerificationLinkV3
from ..operations.users import PublicUpdatePasswordV2
from ..operations.users import PublicUpdatePasswordV3
from ..operations.users import PublicUpdateUserV2
from ..operations.users import PublicUpgradeHeadlessAccountV3
from ..operations.users import PublicUserVerificationV3
from ..operations.users import PublicValidateUserByUserIDAndPasswordV3
from ..operations.users import PublicValidateUserInput
from ..operations.users import PublicVerifyHeadlessAccountV3
from ..operations.users import PublicVerifyRegistrationCode
from ..operations.users import PublicVerifyUserByLinkV3
from ..operations.users import PublicWebLinkPlatform
from ..operations.users import PublicWebLinkPlatformEstablish
from ..operations.users import ResetPassword
from ..operations.users import ResetPasswordV3
from ..operations.users import SaveUserPermission
from ..operations.users import SaveUserRoles
from ..operations.users import SearchUser
from ..operations.users import SendVerificationCode
from ..operations.users import UpdateCountryAgeRestriction
from ..operations.users import UpdatePassword
from ..operations.users import UpdateUser
from ..operations.users import UpdateUserV3
from ..operations.users import UpgradeHeadlessAccount
from ..operations.users import UpgradeHeadlessAccountWithVerificationCode
from ..operations.users import UserVerification


@deprecated
@same_doc_as(AddUserPermission)
def add_user_permission(
    action: int,
    body: ModelUpdatePermissionScheduleRequest,
    resource: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add User Permission (AddUserPermission)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions [POST]_**

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
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AddUserPermission.create(
        action=action,
        body=body,
        resource=resource,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AddUserPermission)
async def add_user_permission_async(
    action: int,
    body: ModelUpdatePermissionScheduleRequest,
    resource: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add User Permission (AddUserPermission)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions [POST]_**

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
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AddUserPermission.create(
        action=action,
        body=body,
        resource=resource,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AddUserRole)
def add_user_role(
    role_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add User Role (AddUserRole)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/roles/{roleId} [POST]_**

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/roles/{roleId}

        method: POST

        tags: ["Users"]

        consumes: ["application/json", "text/plain"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        role_id: (roleId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - (10159: operator is not a role manager)

        404: Not Found - (10156: role not found | 20008: user not found)

        409: Conflict - (10160: user already has the role | 10161: user already the role member)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AddUserRole.create(
        role_id=role_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AddUserRole)
async def add_user_role_async(
    role_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add User Role (AddUserRole)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/roles/{roleId} [POST]_**

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/roles/{roleId}

        method: POST

        tags: ["Users"]

        consumes: ["application/json", "text/plain"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        role_id: (roleId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - (10159: operator is not a role manager)

        404: Not Found - (10156: role not found | 20008: user not found)

        409: Conflict - (10160: user already has the role | 10161: user already the role member)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AddUserRole.create(
        role_id=role_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminAddUserPermissionsV3)
def admin_add_user_permissions_v3(
    body: AccountcommonPermissions,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add User Permissions (AdminAddUserPermissionsV3)

    This endpoint will APPEND user's permissions with the ones defined in body
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
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AccountcommonPermissions in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminAddUserPermissionsV3.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminAddUserPermissionsV3)
async def admin_add_user_permissions_v3_async(
    body: AccountcommonPermissions,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add User Permissions (AdminAddUserPermissionsV3)

    This endpoint will APPEND user's permissions with the ones defined in body
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
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AccountcommonPermissions in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminAddUserPermissionsV3.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminAddUserRoleV3)
def admin_add_user_role_v3(
    role_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add User Role (AdminAddUserRoleV3)

    action code: 10109

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles/{roleId}

        method: POST

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        role_id: (roleId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions | 10159: operator is not a role manager)

        404: Not Found - RestErrorResponse (20008: user not found | 10156: role not found)

        409: Conflict - RestErrorResponse (10160: user already has the role | 10161: user already the role member)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminAddUserRoleV3.create(
        role_id=role_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminAddUserRoleV3)
async def admin_add_user_role_v3_async(
    role_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add User Role (AdminAddUserRoleV3)

    action code: 10109

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles/{roleId}

        method: POST

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        role_id: (roleId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions | 10159: operator is not a role manager)

        404: Not Found - RestErrorResponse (20008: user not found | 10156: role not found)

        409: Conflict - RestErrorResponse (10160: user already has the role | 10161: user already the role member)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminAddUserRoleV3.create(
        role_id=role_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminBanUserV2)
def admin_ban_user_v2(
    body: ModelBanCreateRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Ban a single user (AdminBanUserV2)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/bans [POST]_**

    Properties:
        url: /iam/v2/admin/namespaces/{namespace}/users/{userId}/ban

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelBanCreateRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelUserBanResponse (Created)

        400: Bad Request - (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (10139: platform account not found | 20008: user not found | 10158: ban not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminBanUserV2.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminBanUserV2)
async def admin_ban_user_v2_async(
    body: ModelBanCreateRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Ban a single user (AdminBanUserV2)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/bans [POST]_**

    Properties:
        url: /iam/v2/admin/namespaces/{namespace}/users/{userId}/ban

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelBanCreateRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelUserBanResponse (Created)

        400: Bad Request - (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (10139: platform account not found | 20008: user not found | 10158: ban not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminBanUserV2.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminBanUserV3)
def admin_ban_user_v3(
    body: ModelBanCreateRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Ban a single user (AdminBanUserV3)

    Bans a user with specific type of ban. Ban types and reason can be queried.
    action code : 10141

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/bans

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelBanCreateRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelUserBanResponseV3 (Created)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found | 10139: platform account not found | 10158: ban not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminBanUserV3.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminBanUserV3)
async def admin_ban_user_v3_async(
    body: ModelBanCreateRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Ban a single user (AdminBanUserV3)

    Bans a user with specific type of ban. Ban types and reason can be queried.
    action code : 10141

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/bans

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelBanCreateRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelUserBanResponseV3 (Created)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found | 10139: platform account not found | 10158: ban not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminBanUserV3.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminBulkGetUsersPlatform)
def admin_bulk_get_users_platform(
    body: ModelUserIDsRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin bulk get users' platform info by user Ids (AdminBulkGetUsersPlatform)

    Notes:
    - This endpoint bulk get users' basic info by userId, max allowed 100 at a time
    - If namespace is game, will search by game user Id, other wise will search by publisher namespace

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/bulk/platforms

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserIDsRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelListBulkUserPlatformsResponse (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 10185: publisher namespace not allowed)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminBulkGetUsersPlatform.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminBulkGetUsersPlatform)
async def admin_bulk_get_users_platform_async(
    body: ModelUserIDsRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin bulk get users' platform info by user Ids (AdminBulkGetUsersPlatform)

    Notes:
    - This endpoint bulk get users' basic info by userId, max allowed 100 at a time
    - If namespace is game, will search by game user Id, other wise will search by publisher namespace

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/bulk/platforms

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserIDsRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelListBulkUserPlatformsResponse (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 10185: publisher namespace not allowed)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminBulkGetUsersPlatform.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminBulkUpdateUsersV3)
def admin_bulk_update_users_v3(
    body: ModelUsersUpdateRequestV3,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Users (AdminBulkUpdateUsersV3)

    This endpoint support to bulk update users based on given data.
    ------
    Supported fields:
    * skipLoginQueue

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users

        method: PUT

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUsersUpdateRequestV3 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminBulkUpdateUsersV3.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminBulkUpdateUsersV3)
async def admin_bulk_update_users_v3_async(
    body: ModelUsersUpdateRequestV3,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Users (AdminBulkUpdateUsersV3)

    This endpoint support to bulk update users based on given data.
    ------
    Supported fields:
    * skipLoginQueue

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users

        method: PUT

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUsersUpdateRequestV3 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminBulkUpdateUsersV3.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminCreateJusticeUser)
def admin_create_justice_user(
    target_namespace: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create Justice User from Publisher User (AdminCreateJusticeUser)

    Create Justice User from Publisher User information. It will check first if Justice User on target namespace already exist.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}

        method: POST

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        target_namespace: (targetNamespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelCreateJusticeUserResponse (Created)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCreateJusticeUser.create(
        target_namespace=target_namespace,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminCreateJusticeUser)
async def admin_create_justice_user_async(
    target_namespace: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create Justice User from Publisher User (AdminCreateJusticeUser)

    Create Justice User from Publisher User information. It will check first if Justice User on target namespace already exist.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}

        method: POST

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        target_namespace: (targetNamespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelCreateJusticeUserResponse (Created)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCreateJusticeUser.create(
        target_namespace=target_namespace,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminCreateUserRolesV2)
def admin_create_user_roles_v2(
    body: List[str],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Save User Roles (AdminCreateUserRolesV2)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/roles [PATCH]_**

    Properties:
        url: /iam/v2/admin/namespaces/{namespace}/users/{userId}/roles

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[str] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)

        409: Conflict - (Conflict)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCreateUserRolesV2.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminCreateUserRolesV2)
async def admin_create_user_roles_v2_async(
    body: List[str],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Save User Roles (AdminCreateUserRolesV2)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/roles [PATCH]_**

    Properties:
        url: /iam/v2/admin/namespaces/{namespace}/users/{userId}/roles

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[str] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)

        409: Conflict - (Conflict)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCreateUserRolesV2.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminDeletePlatformLinkV2)
def admin_delete_platform_link_v2(
    platform_id: str,
    user_id: str,
    platform_namespace: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete the link of user's account with platform (AdminDeletePlatformLinkV2)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId} [DELETE]_**

    ## Supported platforms:
    - **steam**
    - **steamopenid**
    - **facebook**
    - **google**
    - **oculus**
    - **twitch**
    - **android**
    - **ios**
    - **device**
    - **discord**

    Delete link of user's account with platform. 'justice' platform might have multiple accounts from different namespaces linked. platform_namespace need to be specified when the platform ID is 'justice'.
    Delete link of justice platform will enable password token grant and password update.

    Properties:
        url: /iam/v2/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link

        method: DELETE

        tags: ["Users"]

        consumes: ["application/x-www-form-urlencoded", "text/plain"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        platform_namespace: (platform_namespace) OPTIONAL str in form_data

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - (20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (20008: user not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeletePlatformLinkV2.create(
        platform_id=platform_id,
        user_id=user_id,
        platform_namespace=platform_namespace,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminDeletePlatformLinkV2)
async def admin_delete_platform_link_v2_async(
    platform_id: str,
    user_id: str,
    platform_namespace: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete the link of user's account with platform (AdminDeletePlatformLinkV2)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId} [DELETE]_**

    ## Supported platforms:
    - **steam**
    - **steamopenid**
    - **facebook**
    - **google**
    - **oculus**
    - **twitch**
    - **android**
    - **ios**
    - **device**
    - **discord**

    Delete link of user's account with platform. 'justice' platform might have multiple accounts from different namespaces linked. platform_namespace need to be specified when the platform ID is 'justice'.
    Delete link of justice platform will enable password token grant and password update.

    Properties:
        url: /iam/v2/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link

        method: DELETE

        tags: ["Users"]

        consumes: ["application/x-www-form-urlencoded", "text/plain"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        platform_namespace: (platform_namespace) OPTIONAL str in form_data

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - (20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (20008: user not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeletePlatformLinkV2.create(
        platform_id=platform_id,
        user_id=user_id,
        platform_namespace=platform_namespace,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteUserInformationV3)
def admin_delete_user_information_v3(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete user's information (AdminDeleteUserInformationV3)

    [WARNING] This endpoint is deleting user data from database directly by skipping GDPR flow

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/information

        method: DELETE

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteUserInformationV3.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteUserInformationV3)
async def admin_delete_user_information_v3_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete user's information (AdminDeleteUserInformationV3)

    [WARNING] This endpoint is deleting user data from database directly by skipping GDPR flow

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/information

        method: DELETE

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteUserInformationV3.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminDeleteUserLinkingHistoryByPlatformIDV3)
def admin_delete_user_linking_history_by_platform_idv3(
    platform_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin remove user's platform linking history. (AdminDeleteUserLinkingHistoryByPlatformIDV3)

    This API is for admin to delete user's linking history with target platform id.

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

    ----
    **Substitute endpoint**: /v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link/restrictions

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link/histories

        method: DELETE

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteUserLinkingHistoryByPlatformIDV3.create(
        platform_id=platform_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminDeleteUserLinkingHistoryByPlatformIDV3)
async def admin_delete_user_linking_history_by_platform_idv3_async(
    platform_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin remove user's platform linking history. (AdminDeleteUserLinkingHistoryByPlatformIDV3)

    This API is for admin to delete user's linking history with target platform id.

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

    ----
    **Substitute endpoint**: /v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link/restrictions

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link/histories

        method: DELETE

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteUserLinkingHistoryByPlatformIDV3.create(
        platform_id=platform_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteUserLinkingRestrictionByPlatformIDV3)
def admin_delete_user_linking_restriction_by_platform_idv3(
    platform_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin remove user's platform linking restriction. (AdminDeleteUserLinkingRestrictionByPlatformIDV3)

    This API is for admin to delete user's linking restriction with target platform id.

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
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link/restrictions

        method: DELETE

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteUserLinkingRestrictionByPlatformIDV3.create(
        platform_id=platform_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteUserLinkingRestrictionByPlatformIDV3)
async def admin_delete_user_linking_restriction_by_platform_idv3_async(
    platform_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin remove user's platform linking restriction. (AdminDeleteUserLinkingRestrictionByPlatformIDV3)

    This API is for admin to delete user's linking restriction with target platform id.

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
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link/restrictions

        method: DELETE

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteUserLinkingRestrictionByPlatformIDV3.create(
        platform_id=platform_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteUserPermissionBulkV3)
def admin_delete_user_permission_bulk_v3(
    body: List[ModelPermissionDeleteRequest],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete User Permission (AdminDeleteUserPermissionBulkV3)

    Delete User Permission

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions

        method: DELETE

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[ModelPermissionDeleteRequest] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteUserPermissionBulkV3.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteUserPermissionBulkV3)
async def admin_delete_user_permission_bulk_v3_async(
    body: List[ModelPermissionDeleteRequest],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete User Permission (AdminDeleteUserPermissionBulkV3)

    Delete User Permission

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions

        method: DELETE

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[ModelPermissionDeleteRequest] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteUserPermissionBulkV3.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteUserPermissionV3)
def admin_delete_user_permission_v3(
    action: int,
    resource: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete User Permission (AdminDeleteUserPermissionV3)

    Delete User Permission

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action}

        method: DELETE

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

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
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteUserPermissionV3.create(
        action=action,
        resource=resource,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteUserPermissionV3)
async def admin_delete_user_permission_v3_async(
    action: int,
    resource: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete User Permission (AdminDeleteUserPermissionV3)

    Delete User Permission

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action}

        method: DELETE

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

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
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteUserPermissionV3.create(
        action=action,
        resource=resource,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteUserRoleV3)
def admin_delete_user_role_v3(
    role_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete User Role (AdminDeleteUserRoleV3)

    This endpoint removes role from user
    action code: 10110

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles/{roleId}

        method: DELETE

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        role_id: (roleId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions | 10159: operator is not a role manager)

        404: Not Found - RestErrorResponse (20008: user not found | 10156: role not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteUserRoleV3.create(
        role_id=role_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteUserRoleV3)
async def admin_delete_user_role_v3_async(
    role_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete User Role (AdminDeleteUserRoleV3)

    This endpoint removes role from user
    action code: 10110

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles/{roleId}

        method: DELETE

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        role_id: (roleId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions | 10159: operator is not a role manager)

        404: Not Found - RestErrorResponse (20008: user not found | 10156: role not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteUserRoleV3.create(
        role_id=role_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteUserRolesV3)
def admin_delete_user_roles_v3(
    body: List[str],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete User Roles (AdminDeleteUserRolesV3)

    Delete User Roles

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles

        method: DELETE

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[str] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteUserRolesV3.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteUserRolesV3)
async def admin_delete_user_roles_v3_async(
    body: List[str],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete User Roles (AdminDeleteUserRolesV3)

    Delete User Roles

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles

        method: DELETE

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[str] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteUserRolesV3.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminDisableUserV2)
def admin_disable_user_v2(
    body: ModelDisableUserRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Disable a user (AdminDisableUserV2)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/status [PATCH]_**

    For **Deletion Account** purpose fill the reason with:
    - **DeactivateAccount** : if your deletion request comes from user
    - **AdminDeactivateAccount** : if your deletion request comes from admin

    Properties:
        url: /iam/v2/admin/namespaces/{namespace}/users/{userId}/disable

        method: PUT

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelDisableUserRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - (20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (20008: user not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDisableUserV2.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminDisableUserV2)
async def admin_disable_user_v2_async(
    body: ModelDisableUserRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Disable a user (AdminDisableUserV2)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/status [PATCH]_**

    For **Deletion Account** purpose fill the reason with:
    - **DeactivateAccount** : if your deletion request comes from user
    - **AdminDeactivateAccount** : if your deletion request comes from admin

    Properties:
        url: /iam/v2/admin/namespaces/{namespace}/users/{userId}/disable

        method: PUT

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelDisableUserRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - (20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (20008: user not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDisableUserV2.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminEnableUserV2)
def admin_enable_user_v2(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Enable a user (AdminEnableUserV2)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/status [PATCH]_**

    Properties:
        url: /iam/v2/admin/namespaces/{namespace}/users/{userId}/enable

        method: PUT

        tags: ["Users"]

        consumes: ["*/*"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (20008: user not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminEnableUserV2.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminEnableUserV2)
async def admin_enable_user_v2_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Enable a user (AdminEnableUserV2)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/status [PATCH]_**

    Properties:
        url: /iam/v2/admin/namespaces/{namespace}/users/{userId}/enable

        method: PUT

        tags: ["Users"]

        consumes: ["*/*"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (20008: user not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminEnableUserV2.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminGetAgeRestrictionStatusV2)
def admin_get_age_restriction_status_v2(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get age restriction status (AdminGetAgeRestrictionStatusV2)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/agerestrictions [GET]_**
    - **Note:**
    difference in V3 response, format difference: Pascal case => Camel case

    Properties:
        url: /iam/v2/admin/namespaces/{namespace}/agerestrictions

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelAgeRestrictionResponse (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetAgeRestrictionStatusV2.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminGetAgeRestrictionStatusV2)
async def admin_get_age_restriction_status_v2_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get age restriction status (AdminGetAgeRestrictionStatusV2)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/agerestrictions [GET]_**
    - **Note:**
    difference in V3 response, format difference: Pascal case => Camel case

    Properties:
        url: /iam/v2/admin/namespaces/{namespace}/agerestrictions

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelAgeRestrictionResponse (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetAgeRestrictionStatusV2.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetAgeRestrictionStatusV3)
def admin_get_age_restriction_status_v3(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get age restriction status (AdminGetAgeRestrictionStatusV3)

    action code: 10138

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/agerestrictions

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelAgeRestrictionResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10169: age restriction not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetAgeRestrictionStatusV3.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetAgeRestrictionStatusV3)
async def admin_get_age_restriction_status_v3_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get age restriction status (AdminGetAgeRestrictionStatusV3)

    action code: 10138

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/agerestrictions

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelAgeRestrictionResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10169: age restriction not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetAgeRestrictionStatusV3.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetBulkUserBanV3)
def admin_get_bulk_user_ban_v3(
    body: ModelGetBulkUserBansRequest,
    active_only: Optional[bool] = None,
    ban_type: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get bulk user bans (AdminGetBulkUserBanV3)

    This endpoint returns user bans of userIDs specified in the payload
    action code : 10127

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/bans

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelGetBulkUserBansRequest in body

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        ban_type: (banType) OPTIONAL str in query

    Responses:
        200: OK - ModelGetUserBanV3Response (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found | 10139: platform account not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetBulkUserBanV3.create(
        body=body,
        active_only=active_only,
        ban_type=ban_type,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetBulkUserBanV3)
async def admin_get_bulk_user_ban_v3_async(
    body: ModelGetBulkUserBansRequest,
    active_only: Optional[bool] = None,
    ban_type: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get bulk user bans (AdminGetBulkUserBanV3)

    This endpoint returns user bans of userIDs specified in the payload
    action code : 10127

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/bans

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelGetBulkUserBansRequest in body

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        ban_type: (banType) OPTIONAL str in query

    Responses:
        200: OK - ModelGetUserBanV3Response (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found | 10139: platform account not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetBulkUserBanV3.create(
        body=body,
        active_only=active_only,
        ban_type=ban_type,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetBulkUserByEmailAddressV3)
def admin_get_bulk_user_by_email_address_v3(
    body: ModelListEmailAddressRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Bulk User By Email Address (AdminGetBulkUserByEmailAddressV3)

    This endpoint search user by the list of email addresses
    action code : 10132

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/search/bulk

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelListEmailAddressRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelListUserResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetBulkUserByEmailAddressV3.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetBulkUserByEmailAddressV3)
async def admin_get_bulk_user_by_email_address_v3_async(
    body: ModelListEmailAddressRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Bulk User By Email Address (AdminGetBulkUserByEmailAddressV3)

    This endpoint search user by the list of email addresses
    action code : 10132

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/search/bulk

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelListEmailAddressRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelListUserResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetBulkUserByEmailAddressV3.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetListCountryAgeRestrictionV3)
def admin_get_list_country_age_restriction_v3(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get List Country age restriction (AdminGetListCountryAgeRestrictionV3)

    action code : 10139

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/agerestrictions/countries

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelCountryV3Response] (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetListCountryAgeRestrictionV3.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetListCountryAgeRestrictionV3)
async def admin_get_list_country_age_restriction_v3_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get List Country age restriction (AdminGetListCountryAgeRestrictionV3)

    action code : 10139

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/agerestrictions/countries

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelCountryV3Response] (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetListCountryAgeRestrictionV3.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetListJusticePlatformAccounts)
def admin_get_list_justice_platform_accounts(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User Justice Platform Accounts (AdminGetListJusticePlatformAccounts)

    This endpoint gets list justice platform account by providing publisher namespace and publisher userID

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[ModelGetUserMapping] (OK)

        400: Bad Request - RestErrorResponse (20025: not a publisher user | 20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetListJusticePlatformAccounts.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetListJusticePlatformAccounts)
async def admin_get_list_justice_platform_accounts_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User Justice Platform Accounts (AdminGetListJusticePlatformAccounts)

    This endpoint gets list justice platform account by providing publisher namespace and publisher userID

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[ModelGetUserMapping] (OK)

        400: Bad Request - RestErrorResponse (20025: not a publisher user | 20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetListJusticePlatformAccounts.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetMyUserV3)
def admin_get_my_user_v3(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get My User (AdminGetMyUserV3)

    Get my user data
    action code : 10147

    Properties:
        url: /iam/v3/admin/users/me

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelUserResponseV3 (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminGetMyUserV3.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetMyUserV3)
async def admin_get_my_user_v3_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get My User (AdminGetMyUserV3)

    Get my user data
    action code : 10147

    Properties:
        url: /iam/v3/admin/users/me

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelUserResponseV3 (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = AdminGetMyUserV3.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetThirdPartyPlatformTokenLinkStatusV3)
def admin_get_third_party_platform_token_link_status_v3(
    platform_id: str,
    platform_token: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin get the link status of the third party platform token with user id. (AdminGetThirdPartyPlatformTokenLinkStatusV3)

    Admin get the link status of the third party platform token with user id.

    This endpoint is used for checking whether the third party user represented by third party token is
    linked with the corresponding user id.

    ## Supported platforms:
    - **steam**: The platform_tokenâs value is the authentication code returned by Steam.
    - **steamopenid**: Steam's user authentication method using OpenID 2.0. The platform_token's value is URL generated by Steam on web authentication
    - **facebook**: The platform_tokenâs value is the authorization code returned by Facebook OAuth
    - **google**: The platform_tokenâs value is the authorization code returned by Google OAuth
    - **googleplaygames**: The platform_tokenâs value is the authorization code returned by Google play games OAuth
    - **oculus**: The platform_tokenâs value is a string composed of Oculus's user ID and the nonce separated by a colon (:).
    - **twitch**: The platform_tokenâs value is the authorization code returned by Twitch OAuth.
    - **discord**: The platform_tokenâs value is the authorization code returned by Discord OAuth
    - **android**: The device_id is the Androidâs device ID
    - **ios**: The device_id is the iOSâs device ID.
    - **apple**: The platform_tokenâs value is the authorization code returned by Apple OAuth.(We will use this code to generate APP token)
    - **device**: Every device that doesânt run Android and iOS is categorized as a device. The device_id is the deviceâs ID.
    - **justice**: The platform_tokenâs value is the designated userâs access token.
    - **epicgames**: The platform_tokenâs value is an access-token obtained from Epicgames EOS Account Service.
    - **ps4**: The platform_tokenâs value is the authorization code returned by Sony OAuth.
    - **ps5**: The platform_tokenâs value is the authorization code returned by Sony OAuth.
    - **nintendo**: The platform_tokenâs value is the authorization code(id_token) returned by Nintendo OAuth.
    - **awscognito**: The platform_tokenâs value is the aws cognito access token or id token (JWT).
    - **live**: The platform_tokenâs value is xbox XSTS token
    - **xblweb**: The platform_tokenâs value is code returned by xbox after login
    - **netflix**: The platform_tokenâs value is GAT (Gamer Access Token) returned by Netflix backend
    - **snapchat**: The platform_tokenâs value is the authorization code returned by Snapchat OAuth.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/linkStatus

        method: POST

        tags: ["Users"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        platform_token: (platformToken) REQUIRED str in form_data

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelTokenThirdPartyLinkStatusResponse (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 10208: platform token expired)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20003: forbidden access)

        404: Not Found - RestErrorResponse (10139: platform account not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetThirdPartyPlatformTokenLinkStatusV3.create(
        platform_id=platform_id,
        platform_token=platform_token,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetThirdPartyPlatformTokenLinkStatusV3)
async def admin_get_third_party_platform_token_link_status_v3_async(
    platform_id: str,
    platform_token: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin get the link status of the third party platform token with user id. (AdminGetThirdPartyPlatformTokenLinkStatusV3)

    Admin get the link status of the third party platform token with user id.

    This endpoint is used for checking whether the third party user represented by third party token is
    linked with the corresponding user id.

    ## Supported platforms:
    - **steam**: The platform_tokenâs value is the authentication code returned by Steam.
    - **steamopenid**: Steam's user authentication method using OpenID 2.0. The platform_token's value is URL generated by Steam on web authentication
    - **facebook**: The platform_tokenâs value is the authorization code returned by Facebook OAuth
    - **google**: The platform_tokenâs value is the authorization code returned by Google OAuth
    - **googleplaygames**: The platform_tokenâs value is the authorization code returned by Google play games OAuth
    - **oculus**: The platform_tokenâs value is a string composed of Oculus's user ID and the nonce separated by a colon (:).
    - **twitch**: The platform_tokenâs value is the authorization code returned by Twitch OAuth.
    - **discord**: The platform_tokenâs value is the authorization code returned by Discord OAuth
    - **android**: The device_id is the Androidâs device ID
    - **ios**: The device_id is the iOSâs device ID.
    - **apple**: The platform_tokenâs value is the authorization code returned by Apple OAuth.(We will use this code to generate APP token)
    - **device**: Every device that doesânt run Android and iOS is categorized as a device. The device_id is the deviceâs ID.
    - **justice**: The platform_tokenâs value is the designated userâs access token.
    - **epicgames**: The platform_tokenâs value is an access-token obtained from Epicgames EOS Account Service.
    - **ps4**: The platform_tokenâs value is the authorization code returned by Sony OAuth.
    - **ps5**: The platform_tokenâs value is the authorization code returned by Sony OAuth.
    - **nintendo**: The platform_tokenâs value is the authorization code(id_token) returned by Nintendo OAuth.
    - **awscognito**: The platform_tokenâs value is the aws cognito access token or id token (JWT).
    - **live**: The platform_tokenâs value is xbox XSTS token
    - **xblweb**: The platform_tokenâs value is code returned by xbox after login
    - **netflix**: The platform_tokenâs value is GAT (Gamer Access Token) returned by Netflix backend
    - **snapchat**: The platform_tokenâs value is the authorization code returned by Snapchat OAuth.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/linkStatus

        method: POST

        tags: ["Users"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        platform_token: (platformToken) REQUIRED str in form_data

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelTokenThirdPartyLinkStatusResponse (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 10208: platform token expired)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20003: forbidden access)

        404: Not Found - RestErrorResponse (10139: platform account not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetThirdPartyPlatformTokenLinkStatusV3.create(
        platform_id=platform_id,
        platform_token=platform_token,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetUserBanSummaryV3)
def admin_get_user_ban_summary_v3(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user's bans summary (AdminGetUserBanSummaryV3)

    This endpoint get user's bans summary'

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/bans/summary

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelGetUserBanSummaryV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found | 10139: platform account not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserBanSummaryV3.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetUserBanSummaryV3)
async def admin_get_user_ban_summary_v3_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user's bans summary (AdminGetUserBanSummaryV3)

    This endpoint get user's bans summary'

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/bans/summary

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelGetUserBanSummaryV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found | 10139: platform account not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserBanSummaryV3.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminGetUserBanV2)
def admin_get_user_ban_v2(
    user_id: str,
    active_only: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user's bans (AdminGetUserBanV2)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/bans [GET]_**

    Properties:
        url: /iam/v2/admin/namespaces/{namespace}/users/{userId}/bans

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

    Responses:
        200: OK - List[ModelUserBanResponse] (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserBanV2.create(
        user_id=user_id,
        active_only=active_only,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminGetUserBanV2)
async def admin_get_user_ban_v2_async(
    user_id: str,
    active_only: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user's bans (AdminGetUserBanV2)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/bans [GET]_**

    Properties:
        url: /iam/v2/admin/namespaces/{namespace}/users/{userId}/bans

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

    Responses:
        200: OK - List[ModelUserBanResponse] (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserBanV2.create(
        user_id=user_id,
        active_only=active_only,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetUserBanV3)
def admin_get_user_ban_v3(
    user_id: str,
    active_only: Optional[bool] = None,
    after: Optional[str] = None,
    before: Optional[str] = None,
    limit: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user's bans (AdminGetUserBanV3)

    This endpoint retrieve the first page of the data if after and before parameters is empty
    action code : 10126

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/bans

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        after: (after) OPTIONAL str in query

        before: (before) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

    Responses:
        200: OK - ModelGetUserBanV3Response (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found | 10139: platform account not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserBanV3.create(
        user_id=user_id,
        active_only=active_only,
        after=after,
        before=before,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetUserBanV3)
async def admin_get_user_ban_v3_async(
    user_id: str,
    active_only: Optional[bool] = None,
    after: Optional[str] = None,
    before: Optional[str] = None,
    limit: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user's bans (AdminGetUserBanV3)

    This endpoint retrieve the first page of the data if after and before parameters is empty
    action code : 10126

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/bans

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        after: (after) OPTIONAL str in query

        before: (before) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

    Responses:
        200: OK - ModelGetUserBanV3Response (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found | 10139: platform account not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserBanV3.create(
        user_id=user_id,
        active_only=active_only,
        after=after,
        before=before,
        limit=limit,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetUserByEmailAddressV3)
def admin_get_user_by_email_address_v3(
    email_address: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User By Email Address (AdminGetUserByEmailAddressV3)

    This endpoint search user who owns the given email address
    action code : 10132

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        email_address: (emailAddress) OPTIONAL str in query

    Responses:
        200: OK - ModelUserResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserByEmailAddressV3.create(
        email_address=email_address,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetUserByEmailAddressV3)
async def admin_get_user_by_email_address_v3_async(
    email_address: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User By Email Address (AdminGetUserByEmailAddressV3)

    This endpoint search user who owns the given email address
    action code : 10132

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        email_address: (emailAddress) OPTIONAL str in query

    Responses:
        200: OK - ModelUserResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserByEmailAddressV3.create(
        email_address=email_address,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetUserByPlatformUserIDV3)
def admin_get_user_by_platform_user_idv3(
    platform_id: str,
    platform_user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Get User By Platform User ID (AdminGetUserByPlatformUserIDV3)

    Get User By Platform User ID
    This endpoint return user information by given platform ID and platform user ID.
    Several platforms are grouped under account groups, you can use either platform ID or platform group as platformId path parameter.
    example: for steam network platform, you can use steamnetwork / steam / steamopenid as platformId path parameter.


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
        url: /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/users/{platformUserId}

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        platform_user_id: (platformUserId) REQUIRED str in path

    Responses:
        200: OK - ModelUserResponseV3 (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found | 10139: platform account not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserByPlatformUserIDV3.create(
        platform_id=platform_id,
        platform_user_id=platform_user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetUserByPlatformUserIDV3)
async def admin_get_user_by_platform_user_idv3_async(
    platform_id: str,
    platform_user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Get User By Platform User ID (AdminGetUserByPlatformUserIDV3)

    Get User By Platform User ID
    This endpoint return user information by given platform ID and platform user ID.
    Several platforms are grouped under account groups, you can use either platform ID or platform group as platformId path parameter.
    example: for steam network platform, you can use steamnetwork / steam / steamopenid as platformId path parameter.


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
        url: /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/users/{platformUserId}

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        platform_user_id: (platformUserId) REQUIRED str in path

    Responses:
        200: OK - ModelUserResponseV3 (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found | 10139: platform account not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserByPlatformUserIDV3.create(
        platform_id=platform_id,
        platform_user_id=platform_user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminGetUserByUserIdV2)
def admin_get_user_by_user_id_v2(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User By User Id (AdminGetUserByUserIdV2)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId} [GET]_**

    Properties:
        url: /iam/v2/admin/namespaces/{namespace}/users/{userId}

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelUserResponse (OK)

        404: Not Found - (20008: user not found | 10139: platform account not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserByUserIdV2.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminGetUserByUserIdV2)
async def admin_get_user_by_user_id_v2_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User By User Id (AdminGetUserByUserIdV2)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId} [GET]_**

    Properties:
        url: /iam/v2/admin/namespaces/{namespace}/users/{userId}

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelUserResponse (OK)

        404: Not Found - (20008: user not found | 10139: platform account not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserByUserIdV2.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetUserByUserIdV3)
def admin_get_user_by_user_id_v3(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Get User By User Id (AdminGetUserByUserIdV3)

    Admin Get User By User Id

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}

        method: GET

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelUserResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found | 10139: platform account not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserByUserIdV3.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetUserByUserIdV3)
async def admin_get_user_by_user_id_v3_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Get User By User Id (AdminGetUserByUserIdV3)

    Admin Get User By User Id

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}

        method: GET

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelUserResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found | 10139: platform account not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserByUserIdV3.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetUserDeletionStatusV3)
def admin_get_user_deletion_status_v3(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User Deletion Status (AdminGetUserDeletionStatusV3)

    action code : 10145

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/deletion/status

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelUserDeletionStatusResponse (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserDeletionStatusV3.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetUserDeletionStatusV3)
async def admin_get_user_deletion_status_v3_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User Deletion Status (AdminGetUserDeletionStatusV3)

    action code : 10145

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/deletion/status

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelUserDeletionStatusResponse (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserDeletionStatusV3.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetUserLinkHistoriesV3)
def admin_get_user_link_histories_v3(
    platform_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin get user's platform link histories. (AdminGetUserLinkHistoriesV3)

    This API is for admin to get user's link history.

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
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/link/histories

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in query

    Responses:
        200: OK - ModelUserPlatformLinkHistories (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserLinkHistoriesV3.create(
        platform_id=platform_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetUserLinkHistoriesV3)
async def admin_get_user_link_histories_v3_async(
    platform_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin get user's platform link histories. (AdminGetUserLinkHistoriesV3)

    This API is for admin to get user's link history.

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
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/link/histories

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in query

    Responses:
        200: OK - ModelUserPlatformLinkHistories (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserLinkHistoriesV3.create(
        platform_id=platform_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetUserLoginHistoriesV3)
def admin_get_user_login_histories_v3(
    user_id: str,
    after: Optional[float] = None,
    before: Optional[float] = None,
    limit: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User's Login Histories (AdminGetUserLoginHistoriesV3)

    Notes for this endpoint:
    This endpoint retrieve the first page of the data if `after` and `before` parameters is empty.
    - The maximum value of the limit is 100 and the minimum value of the limit is 1.
    - This endpoint retrieve the next page of the data if we provide `after` parameters with valid Unix timestamp.
    - This endpoint retrieve the previous page of the data if we provide `before` parameter with valid data Unix timestamp."

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/logins/histories

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        after: (after) OPTIONAL float in query

        before: (before) OPTIONAL float in query

        limit: (limit) OPTIONAL int in query

    Responses:
        200: OK - ModelLoginHistoriesResponse (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserLoginHistoriesV3.create(
        user_id=user_id,
        after=after,
        before=before,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetUserLoginHistoriesV3)
async def admin_get_user_login_histories_v3_async(
    user_id: str,
    after: Optional[float] = None,
    before: Optional[float] = None,
    limit: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User's Login Histories (AdminGetUserLoginHistoriesV3)

    Notes for this endpoint:
    This endpoint retrieve the first page of the data if `after` and `before` parameters is empty.
    - The maximum value of the limit is 100 and the minimum value of the limit is 1.
    - This endpoint retrieve the next page of the data if we provide `after` parameters with valid Unix timestamp.
    - This endpoint retrieve the previous page of the data if we provide `before` parameter with valid data Unix timestamp."

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/logins/histories

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        after: (after) OPTIONAL float in query

        before: (before) OPTIONAL float in query

        limit: (limit) OPTIONAL int in query

    Responses:
        200: OK - ModelLoginHistoriesResponse (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserLoginHistoriesV3.create(
        user_id=user_id,
        after=after,
        before=before,
        limit=limit,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetUserMapping)
def admin_get_user_mapping(
    target_namespace: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user mapping (AdminGetUserMapping)

    This endpoint will support publisher access to game and game access to publisher
    If targetNamespace filled with publisher namespace then this endpoint will return its publisher user id and publisher namespace.
    If targetNamespace filled with game namespace then this endpoint will return its game user id and game namespace.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        target_namespace: (targetNamespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelGetUserMappingV3 (OK)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserMapping.create(
        target_namespace=target_namespace,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetUserMapping)
async def admin_get_user_mapping_async(
    target_namespace: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user mapping (AdminGetUserMapping)

    This endpoint will support publisher access to game and game access to publisher
    If targetNamespace filled with publisher namespace then this endpoint will return its publisher user id and publisher namespace.
    If targetNamespace filled with game namespace then this endpoint will return its game user id and game namespace.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        target_namespace: (targetNamespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelGetUserMappingV3 (OK)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserMapping.create(
        target_namespace=target_namespace,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetUserPlatformAccountsV3)
def admin_get_user_platform_accounts_v3(
    user_id: str,
    after: Optional[str] = None,
    before: Optional[str] = None,
    limit: Optional[int] = None,
    platform_id: Optional[str] = None,
    target_namespace: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get platform accounts linked to the user (AdminGetUserPlatformAccountsV3)

    Gets platform accounts that are already linked with user account.
    Action code : 10128


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

    ## Justice Platform Account
    The permission âADMIN:NAMESPACE:{namespace}:JUSTICE:USER:{userId}â [READ] is required in order to read the UserID who linked with the user.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        after: (after) OPTIONAL str in query

        before: (before) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        platform_id: (platformId) OPTIONAL str in query

        target_namespace: (targetNamespace) OPTIONAL str in query

    Responses:
        200: OK - AccountcommonUserLinkedPlatformsResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserPlatformAccountsV3.create(
        user_id=user_id,
        after=after,
        before=before,
        limit=limit,
        platform_id=platform_id,
        target_namespace=target_namespace,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetUserPlatformAccountsV3)
async def admin_get_user_platform_accounts_v3_async(
    user_id: str,
    after: Optional[str] = None,
    before: Optional[str] = None,
    limit: Optional[int] = None,
    platform_id: Optional[str] = None,
    target_namespace: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get platform accounts linked to the user (AdminGetUserPlatformAccountsV3)

    Gets platform accounts that are already linked with user account.
    Action code : 10128


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

    ## Justice Platform Account
    The permission âADMIN:NAMESPACE:{namespace}:JUSTICE:USER:{userId}â [READ] is required in order to read the UserID who linked with the user.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        after: (after) OPTIONAL str in query

        before: (before) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        platform_id: (platformId) OPTIONAL str in query

        target_namespace: (targetNamespace) OPTIONAL str in query

    Responses:
        200: OK - AccountcommonUserLinkedPlatformsResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserPlatformAccountsV3.create(
        user_id=user_id,
        after=after,
        before=before,
        limit=limit,
        platform_id=platform_id,
        target_namespace=target_namespace,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetUserSinglePlatformAccount)
def admin_get_user_single_platform_account(
    platform_id: str,
    user_id: str,
    cross_namespace: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin get user single platform account metadata (AdminGetUserSinglePlatformAccount)

    This endpoint gets user single platform account metadata.


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
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/metadata

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        cross_namespace: (crossNamespace) OPTIONAL bool in query

    Responses:
        200: OK - ModelUserPlatformMetadata (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found | 10139: platform account not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserSinglePlatformAccount.create(
        platform_id=platform_id,
        user_id=user_id,
        cross_namespace=cross_namespace,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetUserSinglePlatformAccount)
async def admin_get_user_single_platform_account_async(
    platform_id: str,
    user_id: str,
    cross_namespace: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin get user single platform account metadata (AdminGetUserSinglePlatformAccount)

    This endpoint gets user single platform account metadata.


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
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/metadata

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        cross_namespace: (crossNamespace) OPTIONAL bool in query

    Responses:
        200: OK - ModelUserPlatformMetadata (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found | 10139: platform account not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserSinglePlatformAccount.create(
        platform_id=platform_id,
        user_id=user_id,
        cross_namespace=cross_namespace,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetUserStateByUserIdV3)
def admin_get_user_state_by_user_id_v3(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Get User State By User Id (AdminGetUserStateByUserIdV3)

    Admin Get User State By User Id

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/state

        method: GET

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelUserStateResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found | 10139: platform account not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserStateByUserIdV3.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetUserStateByUserIdV3)
async def admin_get_user_state_by_user_id_v3_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Get User State By User Id (AdminGetUserStateByUserIdV3)

    Admin Get User State By User Id

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/state

        method: GET

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelUserStateResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found | 10139: platform account not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserStateByUserIdV3.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminInviteUserV3)
def admin_invite_user_v3(
    body: ModelInviteUserRequestV3,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Invite User (AdminInviteUserV3)

    Use this endpoint to invite admin or non-admin user and assign role to them.
    The role must be scoped to namespace based on the **{namespace}** value in path parameter.
    An admin user can only assign role to namespaces that the admin user has the required permission.
    Role is optional, if not specified then it will only assign User role

    The invited admin will also assigned with "User" role by default.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/invite

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelInviteUserRequestV3 in body

        namespace: (namespace) REQUIRED str in path

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
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminInviteUserV3.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminInviteUserV3)
async def admin_invite_user_v3_async(
    body: ModelInviteUserRequestV3,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Invite User (AdminInviteUserV3)

    Use this endpoint to invite admin or non-admin user and assign role to them.
    The role must be scoped to namespace based on the **{namespace}** value in path parameter.
    An admin user can only assign role to namespaces that the admin user has the required permission.
    Role is optional, if not specified then it will only assign User role

    The invited admin will also assigned with "User" role by default.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/invite

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelInviteUserRequestV3 in body

        namespace: (namespace) REQUIRED str in path

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
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminInviteUserV3.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminLinkPlatformAccount)
def admin_link_platform_account(
    body: ModelLinkPlatformAccountRequest,
    user_id: str,
    skip_conflict: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Link a Platform User Account to User Account (AdminLinkPlatformAccount)

    Force linking platform account to user User Account. This endpoint intended for admin to forcefully link account to user.
    By default, these cases are not allowed
    - The platform account current is linked by another account
    - The target account ever linked this platform's another account

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/link

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelLinkPlatformAccountRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        skip_conflict: (skipConflict) OPTIONAL bool in query

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        409: Conflict - RestErrorResponse (10163: platform is already linked with the user account | 10200: link to a different platform account is not allowed | 10173: platform is already linked with another user account)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminLinkPlatformAccount.create(
        body=body,
        user_id=user_id,
        skip_conflict=skip_conflict,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminLinkPlatformAccount)
async def admin_link_platform_account_async(
    body: ModelLinkPlatformAccountRequest,
    user_id: str,
    skip_conflict: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Link a Platform User Account to User Account (AdminLinkPlatformAccount)

    Force linking platform account to user User Account. This endpoint intended for admin to forcefully link account to user.
    By default, these cases are not allowed
    - The platform account current is linked by another account
    - The target account ever linked this platform's another account

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/link

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelLinkPlatformAccountRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        skip_conflict: (skipConflict) OPTIONAL bool in query

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        409: Conflict - RestErrorResponse (10163: platform is already linked with the user account | 10200: link to a different platform account is not allowed | 10173: platform is already linked with another user account)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminLinkPlatformAccount.create(
        body=body,
        user_id=user_id,
        skip_conflict=skip_conflict,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminListAllDistinctPlatformAccountsV3)
def admin_list_all_distinct_platform_accounts_v3(
    user_id: str,
    status: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin get distinct platforms linked to the user (AdminListAllDistinctPlatformAccountsV3)

    This endpoint only retrieves 3rd party platform accounts linked to user.
    It will query platform accounts and result will be distinct & grouped, same platform we will pick oldest linked one.
    ------
    Supported status:
    - LINKED
    - RESTRICTIVELY_UNLINKED
    - UNLINKED
    - ALL

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/distinct

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        status: (status) OPTIONAL str in query

    Responses:
        200: OK - AccountcommonDistinctPlatformResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListAllDistinctPlatformAccountsV3.create(
        user_id=user_id,
        status=status,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminListAllDistinctPlatformAccountsV3)
async def admin_list_all_distinct_platform_accounts_v3_async(
    user_id: str,
    status: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin get distinct platforms linked to the user (AdminListAllDistinctPlatformAccountsV3)

    This endpoint only retrieves 3rd party platform accounts linked to user.
    It will query platform accounts and result will be distinct & grouped, same platform we will pick oldest linked one.
    ------
    Supported status:
    - LINKED
    - RESTRICTIVELY_UNLINKED
    - UNLINKED
    - ALL

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/distinct

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        status: (status) OPTIONAL str in query

    Responses:
        200: OK - AccountcommonDistinctPlatformResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListAllDistinctPlatformAccountsV3.create(
        user_id=user_id,
        status=status,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminListUserAllPlatformAccountsDistinctV3)
def admin_list_user_all_platform_accounts_distinct_v3(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin get distinct platform accounts linked to the user (AdminListUserAllPlatformAccountsDistinctV3)

    This endpoint retrieves platform accounts linked to user.
    It will query all linked platform accounts and result will be distinct & grouped, same platform we will pick oldest linked one.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/distinctPlatforms

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - AccountcommonDistinctPlatformResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListUserAllPlatformAccountsDistinctV3.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminListUserAllPlatformAccountsDistinctV3)
async def admin_list_user_all_platform_accounts_distinct_v3_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin get distinct platform accounts linked to the user (AdminListUserAllPlatformAccountsDistinctV3)

    This endpoint retrieves platform accounts linked to user.
    It will query all linked platform accounts and result will be distinct & grouped, same platform we will pick oldest linked one.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/distinctPlatforms

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - AccountcommonDistinctPlatformResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListUserAllPlatformAccountsDistinctV3.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminListUserIDByPlatformUserIDsV3)
def admin_list_user_id_by_platform_user_i_ds_v3(
    body: ModelPlatformUserIDRequest,
    platform_id: str,
    raw_pid: Optional[bool] = None,
    raw_puid: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin List User ID By Platform User ID (AdminListUserIDByPlatformUserIDsV3)

    Admin List User ID By Platform User ID
    This endpoint intended to list game user ID from the given namespace
    This endpoint return list of user ID by given platform ID and list of platform user ID

    Supported platform:
    - steam
    - steamopenid
    - ps4web
    - ps4
    - ps5
    - live
    - xblweb
    - oculus
    - oculusweb
    - facebook
    - google
    - googleplaygames
    - twitch
    - discord
    - android
    - ios
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

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/users

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelPlatformUserIDRequest in body

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        raw_pid: (rawPID) OPTIONAL bool in query

        raw_puid: (rawPUID) OPTIONAL bool in query

    Responses:
        200: OK - AccountcommonUserPlatforms (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListUserIDByPlatformUserIDsV3.create(
        body=body,
        platform_id=platform_id,
        raw_pid=raw_pid,
        raw_puid=raw_puid,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminListUserIDByPlatformUserIDsV3)
async def admin_list_user_id_by_platform_user_i_ds_v3_async(
    body: ModelPlatformUserIDRequest,
    platform_id: str,
    raw_pid: Optional[bool] = None,
    raw_puid: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin List User ID By Platform User ID (AdminListUserIDByPlatformUserIDsV3)

    Admin List User ID By Platform User ID
    This endpoint intended to list game user ID from the given namespace
    This endpoint return list of user ID by given platform ID and list of platform user ID

    Supported platform:
    - steam
    - steamopenid
    - ps4web
    - ps4
    - ps5
    - live
    - xblweb
    - oculus
    - oculusweb
    - facebook
    - google
    - googleplaygames
    - twitch
    - discord
    - android
    - ios
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

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/users

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelPlatformUserIDRequest in body

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        raw_pid: (rawPID) OPTIONAL bool in query

        raw_puid: (rawPUID) OPTIONAL bool in query

    Responses:
        200: OK - AccountcommonUserPlatforms (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListUserIDByPlatformUserIDsV3.create(
        body=body,
        platform_id=platform_id,
        raw_pid=raw_pid,
        raw_puid=raw_puid,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminListUserIDByUserIDsV3)
def admin_list_user_id_by_user_i_ds_v3(
    body: ModelUserIDsRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List User By User ID (AdminListUserIDByUserIDsV3)

    List User By User ID
    This endpoint intended to list user information from the given list of userID and namespace

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/bulk

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserIDsRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelListUserInformationResult (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListUserIDByUserIDsV3.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminListUserIDByUserIDsV3)
async def admin_list_user_id_by_user_i_ds_v3_async(
    body: ModelUserIDsRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List User By User ID (AdminListUserIDByUserIDsV3)

    List User By User ID
    This endpoint intended to list user information from the given list of userID and namespace

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/bulk

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserIDsRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelListUserInformationResult (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListUserIDByUserIDsV3.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminListUsersV3)
def admin_list_users_v3(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin List Users V3 (AdminListUsersV3)

    **This endpoint requires publisher namespace.**
    Returns list of users ID and namespace with their Justice platform account, under a namespace. If user
    doesn't have Justice platform account, the linkedPlatforms will be empty array.'

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/platforms/justice

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - AccountcommonListUsersWithPlatformAccountsResponse (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListUsersV3.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminListUsersV3)
async def admin_list_users_v3_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin List Users V3 (AdminListUsersV3)

    **This endpoint requires publisher namespace.**
    Returns list of users ID and namespace with their Justice platform account, under a namespace. If user
    doesn't have Justice platform account, the linkedPlatforms will be empty array.'

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/platforms/justice

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - AccountcommonListUsersWithPlatformAccountsResponse (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListUsersV3.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminPlatformLinkV3)
def admin_platform_link_v3(
    platform_id: str,
    ticket: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Link user's account with platform (AdminPlatformLinkV3)

    **Prerequisite:** Platform client configuration need to be added to database for specific platformId. Namespace service URL need to be specified (refer to required environment variables).
    ## Supported platforms:
    - **steam**: The ticketâs value is the authentication code returned by Steam.
    - **steamopenid**: Steam's user authentication method using OpenID 2.0. The ticket's value is URL generated by Steam on web authentication
    - **facebook**: The ticketâs value is the authorization code returned by Facebook OAuth
    - **google**: The ticketâs value is the authorization code returned by Google OAuth
    - **googleplaygames**: The ticketâs value is the authorization code returned by Google play games OAuth
    - **oculus**: The ticketâs value is a string composed of Oculus's user ID and the nonce separated by a colon (:).
    - **twitch**: The ticketâs value is the authorization code returned by Twitch OAuth.
    - **android**: The ticket's value is the Androidâs device ID
    - **ios**: The ticket's value is the iOSâs device ID.
    - **apple**: The ticketâs value is the authorization code returned by Apple OAuth.
    - **device**: Every device that doesânt run Android and iOS is categorized as a device platform. The ticket's value is the deviceâs ID.
    - **discord**: The ticketâs value is the authorization code returned by Discord OAuth.
    - **awscognito**: The ticketâs value is the aws cognito access token (JWT).
    - **epicgames**: The ticketâs value is an access-token obtained from Epicgames EOS Account Service.
    - **nintendo**: The ticketâs value is the authorization code(id_token) returned by Nintendo OAuth.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link

        method: POST

        tags: ["Users"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        ticket: (ticket) REQUIRED str in form_data

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - (20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (20008: user not found)

        409: Conflict - (10163: platform is already linked with the user account)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminPlatformLinkV3.create(
        platform_id=platform_id,
        ticket=ticket,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminPlatformLinkV3)
async def admin_platform_link_v3_async(
    platform_id: str,
    ticket: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Link user's account with platform (AdminPlatformLinkV3)

    **Prerequisite:** Platform client configuration need to be added to database for specific platformId. Namespace service URL need to be specified (refer to required environment variables).
    ## Supported platforms:
    - **steam**: The ticketâs value is the authentication code returned by Steam.
    - **steamopenid**: Steam's user authentication method using OpenID 2.0. The ticket's value is URL generated by Steam on web authentication
    - **facebook**: The ticketâs value is the authorization code returned by Facebook OAuth
    - **google**: The ticketâs value is the authorization code returned by Google OAuth
    - **googleplaygames**: The ticketâs value is the authorization code returned by Google play games OAuth
    - **oculus**: The ticketâs value is a string composed of Oculus's user ID and the nonce separated by a colon (:).
    - **twitch**: The ticketâs value is the authorization code returned by Twitch OAuth.
    - **android**: The ticket's value is the Androidâs device ID
    - **ios**: The ticket's value is the iOSâs device ID.
    - **apple**: The ticketâs value is the authorization code returned by Apple OAuth.
    - **device**: Every device that doesânt run Android and iOS is categorized as a device platform. The ticket's value is the deviceâs ID.
    - **discord**: The ticketâs value is the authorization code returned by Discord OAuth.
    - **awscognito**: The ticketâs value is the aws cognito access token (JWT).
    - **epicgames**: The ticketâs value is an access-token obtained from Epicgames EOS Account Service.
    - **nintendo**: The ticketâs value is the authorization code(id_token) returned by Nintendo OAuth.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link

        method: POST

        tags: ["Users"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        ticket: (ticket) REQUIRED str in form_data

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - (20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (20008: user not found)

        409: Conflict - (10163: platform is already linked with the user account)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminPlatformLinkV3.create(
        platform_id=platform_id,
        ticket=ticket,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminPlatformUnlinkAllV3)
def admin_platform_unlink_all_v3(
    platform_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin unlink user's account from specific platform for all namespaces (AdminPlatformUnlinkAllV3)

    Unlink user's account from third platform in all namespaces.
    Several platforms are grouped under account groups, you can use either platform ID or platform group as platformId path parameter.
    example: to unlink steam third party account, you can use steamnetwork / steam / steamopenid as platformId path parameter.


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

    Unlink platform account associated with a group:
    If user unlink platform account associated with a group, the API logic will unlink all of platform account under that group as well.
    example: if user unlink from ps4, the API logic will unlink ps5 and ps4web as well

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/all

        method: DELETE

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminPlatformUnlinkAllV3.create(
        platform_id=platform_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminPlatformUnlinkAllV3)
async def admin_platform_unlink_all_v3_async(
    platform_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin unlink user's account from specific platform for all namespaces (AdminPlatformUnlinkAllV3)

    Unlink user's account from third platform in all namespaces.
    Several platforms are grouped under account groups, you can use either platform ID or platform group as platformId path parameter.
    example: to unlink steam third party account, you can use steamnetwork / steam / steamopenid as platformId path parameter.


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

    Unlink platform account associated with a group:
    If user unlink platform account associated with a group, the API logic will unlink all of platform account under that group as well.
    example: if user unlink from ps4, the API logic will unlink ps5 and ps4web as well

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/all

        method: DELETE

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminPlatformUnlinkAllV3.create(
        platform_id=platform_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminPlatformUnlinkV3)
def admin_platform_unlink_v3(
    body: ModelUnlinkUserPlatformRequest,
    platform_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin unlink user's account from specific platform (AdminPlatformUnlinkV3)

    ## Supported platforms:
    - **steam**
    - **steamopenid**
    - **facebook**
    - **google**
    - **googleplaygames**
    - **oculus**
    - **twitch**
    - **android**
    - **ios**
    - **apple**
    - **device**
    - **discord**
    - **awscognito**
    - **epicgames**
    - **nintendo**
    - **snapchat**

    Unlink user's account from a specific platform. 'justice' platform might have multiple accounts from different namespaces linked.
    _platformNamespace_ need to be specified when the platform ID is 'justice'.
    Unlink user's account from justice platform will enable password token grant and password update.
    If you want to unlink user's account in a game namespace, you have to specify _platformNamespace_ to that game namespace.
    action code : 10121

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}

        method: DELETE

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUnlinkUserPlatformRequest in body

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

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
    request = AdminPlatformUnlinkV3.create(
        body=body,
        platform_id=platform_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminPlatformUnlinkV3)
async def admin_platform_unlink_v3_async(
    body: ModelUnlinkUserPlatformRequest,
    platform_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin unlink user's account from specific platform (AdminPlatformUnlinkV3)

    ## Supported platforms:
    - **steam**
    - **steamopenid**
    - **facebook**
    - **google**
    - **googleplaygames**
    - **oculus**
    - **twitch**
    - **android**
    - **ios**
    - **apple**
    - **device**
    - **discord**
    - **awscognito**
    - **epicgames**
    - **nintendo**
    - **snapchat**

    Unlink user's account from a specific platform. 'justice' platform might have multiple accounts from different namespaces linked.
    _platformNamespace_ need to be specified when the platform ID is 'justice'.
    Unlink user's account from justice platform will enable password token grant and password update.
    If you want to unlink user's account in a game namespace, you have to specify _platformNamespace_ to that game namespace.
    action code : 10121

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}

        method: DELETE

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUnlinkUserPlatformRequest in body

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

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
    request = AdminPlatformUnlinkV3.create(
        body=body,
        platform_id=platform_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminPutUserRolesV2)
def admin_put_user_roles_v2(
    body: List[str],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update User Roles, will replace all the existing roles (AdminPutUserRolesV2)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/roles [PATCH]_**

    Properties:
        url: /iam/v2/admin/namespaces/{namespace}/users/{userId}/roles

        method: PUT

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[str] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminPutUserRolesV2.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminPutUserRolesV2)
async def admin_put_user_roles_v2_async(
    body: List[str],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update User Roles, will replace all the existing roles (AdminPutUserRolesV2)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/roles [PATCH]_**

    Properties:
        url: /iam/v2/admin/namespaces/{namespace}/users/{userId}/roles

        method: PUT

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[str] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminPutUserRolesV2.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminQueryThirdPlatformLinkHistoryV3)
def admin_query_third_platform_link_history_v3(
    platform_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    platform_user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Search linking history of the query platform with platform user id (AdminQueryThirdPlatformLinkHistoryV3)

    if limit is not defined, The default limit is 100

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/linkhistories

        method: GET

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        platform_user_id: (platformUserId) OPTIONAL str in query

        platform_id: (platformId) REQUIRED str in query

    Responses:
        200: OK - ModelLinkingHistoryResponseWithPaginationV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminQueryThirdPlatformLinkHistoryV3.create(
        platform_id=platform_id,
        limit=limit,
        offset=offset,
        platform_user_id=platform_user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminQueryThirdPlatformLinkHistoryV3)
async def admin_query_third_platform_link_history_v3_async(
    platform_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    platform_user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Search linking history of the query platform with platform user id (AdminQueryThirdPlatformLinkHistoryV3)

    if limit is not defined, The default limit is 100

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/linkhistories

        method: GET

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        platform_user_id: (platformUserId) OPTIONAL str in query

        platform_id: (platformId) REQUIRED str in query

    Responses:
        200: OK - ModelLinkingHistoryResponseWithPaginationV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminQueryThirdPlatformLinkHistoryV3.create(
        platform_id=platform_id,
        limit=limit,
        offset=offset,
        platform_user_id=platform_user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminResetPasswordV2)
def admin_reset_password_v2(
    body: ModelUserPasswordUpdateRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update User Password (AdminResetPasswordV2)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/password [PUT]_**

    Properties:
        url: /iam/v2/admin/namespaces/{namespace}/users/{userId}/password

        method: PUT

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserPasswordUpdateRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - (20019: unable to parse request body | 20002: validation error | 10142: new password cannot be same with original | 10143: password not match)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (20008: user not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminResetPasswordV2.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminResetPasswordV2)
async def admin_reset_password_v2_async(
    body: ModelUserPasswordUpdateRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update User Password (AdminResetPasswordV2)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/password [PUT]_**

    Properties:
        url: /iam/v2/admin/namespaces/{namespace}/users/{userId}/password

        method: PUT

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserPasswordUpdateRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - (20019: unable to parse request body | 20002: validation error | 10142: new password cannot be same with original | 10143: password not match)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (20008: user not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminResetPasswordV2.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminResetPasswordV3)
def admin_reset_password_v3(
    body: ModelUserPasswordUpdateV3Request,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update User Password (AdminResetPasswordV3)

    Update User Password

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/password

        method: PUT

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserPasswordUpdateV3Request in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - (20019: unable to parse request body | 20002: validation error | 10142: new password cannot be same with original | 10143: password not match)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminResetPasswordV3.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminResetPasswordV3)
async def admin_reset_password_v3_async(
    body: ModelUserPasswordUpdateV3Request,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update User Password (AdminResetPasswordV3)

    Update User Password

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/password

        method: PUT

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserPasswordUpdateV3Request in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - (20019: unable to parse request body | 20002: validation error | 10142: new password cannot be same with original | 10143: password not match)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminResetPasswordV3.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminSaveUserRoleV3)
def admin_save_user_role_v3(
    body: List[ModelNamespaceRoleRequest],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Save User Role V3 (AdminSaveUserRoleV3)

    User's roles will be replaced with roles from request body.
    An admin user can only assign role with **namespace** (in request body) if the admin user has required permission which is same as the required permission of endpoint: [AdminAddUserRoleV4].

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles

        method: PATCH

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[ModelNamespaceRoleRequest] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

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
    request = AdminSaveUserRoleV3.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminSaveUserRoleV3)
async def admin_save_user_role_v3_async(
    body: List[ModelNamespaceRoleRequest],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Save User Role V3 (AdminSaveUserRoleV3)

    User's roles will be replaced with roles from request body.
    An admin user can only assign role with **namespace** (in request body) if the admin user has required permission which is same as the required permission of endpoint: [AdminAddUserRoleV4].

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles

        method: PATCH

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[ModelNamespaceRoleRequest] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

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
    request = AdminSaveUserRoleV3.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminSearchUserV3)
def admin_search_user_v3(
    by: Optional[str] = None,
    end_date: Optional[str] = None,
    include_total: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    platform_by: Optional[str] = None,
    platform_id: Optional[str] = None,
    query: Optional[str] = None,
    role_ids: Optional[str] = None,
    skip_login_queue: Optional[bool] = None,
    start_date: Optional[str] = None,
    test_account: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Search User (AdminSearchUserV3)

    Endpoint behavior :
    - by default this endpoint searches all users on the specified namespace
    - if query parameter is defined, endpoint will search users whose email address, display name, username, or third party partially match with the query
    - if startDate and endDate parameters is defined, endpoint will search users which created on the certain date range
    - if query, startDate and endDate parameters are defined, endpoint will search users whose email address and display name match and created on the certain date range
    - if startDate parameter is defined, endpoint will search users that created start from the defined date
    - if endDate parameter is defined, endpoint will search users that created until the defined date
    - if platformId parameter is defined and by parameter is using thirdparty, endpoint will search users based on the platformId they have linked to
    - if platformBy parameter is defined and by parameter is using thirdparty, endpoint will search users based on the platformUserId or platformDisplayName they have linked to, example value: platformUserId or platformDisplayName
    - if limit is not defined, The default limit is 100

    In multi tenant mode :

    - if super admin search in super admin namespace, the result will be all game admin user
    - if super admin search in game studio namespace, the result will be all game admin user and players under the game studio namespace
    - if super admin search in game namespace, the result will be all game admin users and players under the game namespace
    - if game admin search in their game studio namespace, the result will be all game admin user in the studio namespace
    - if game admin search in their game namespace, the result will be all player in the game namespace

    action code : 10133

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/search

        method: GET

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        by: (by) OPTIONAL str in query

        end_date: (endDate) OPTIONAL str in query

        include_total: (includeTotal) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        platform_by: (platformBy) OPTIONAL str in query

        platform_id: (platformId) OPTIONAL str in query

        query: (query) OPTIONAL str in query

        role_ids: (roleIds) OPTIONAL str in query

        skip_login_queue: (skipLoginQueue) OPTIONAL bool in query

        start_date: (startDate) OPTIONAL str in query

        test_account: (testAccount) OPTIONAL bool in query

    Responses:
        200: OK - ModelSearchUsersResponseWithPaginationV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminSearchUserV3.create(
        by=by,
        end_date=end_date,
        include_total=include_total,
        limit=limit,
        offset=offset,
        platform_by=platform_by,
        platform_id=platform_id,
        query=query,
        role_ids=role_ids,
        skip_login_queue=skip_login_queue,
        start_date=start_date,
        test_account=test_account,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminSearchUserV3)
async def admin_search_user_v3_async(
    by: Optional[str] = None,
    end_date: Optional[str] = None,
    include_total: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    platform_by: Optional[str] = None,
    platform_id: Optional[str] = None,
    query: Optional[str] = None,
    role_ids: Optional[str] = None,
    skip_login_queue: Optional[bool] = None,
    start_date: Optional[str] = None,
    test_account: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Search User (AdminSearchUserV3)

    Endpoint behavior :
    - by default this endpoint searches all users on the specified namespace
    - if query parameter is defined, endpoint will search users whose email address, display name, username, or third party partially match with the query
    - if startDate and endDate parameters is defined, endpoint will search users which created on the certain date range
    - if query, startDate and endDate parameters are defined, endpoint will search users whose email address and display name match and created on the certain date range
    - if startDate parameter is defined, endpoint will search users that created start from the defined date
    - if endDate parameter is defined, endpoint will search users that created until the defined date
    - if platformId parameter is defined and by parameter is using thirdparty, endpoint will search users based on the platformId they have linked to
    - if platformBy parameter is defined and by parameter is using thirdparty, endpoint will search users based on the platformUserId or platformDisplayName they have linked to, example value: platformUserId or platformDisplayName
    - if limit is not defined, The default limit is 100

    In multi tenant mode :

    - if super admin search in super admin namespace, the result will be all game admin user
    - if super admin search in game studio namespace, the result will be all game admin user and players under the game studio namespace
    - if super admin search in game namespace, the result will be all game admin users and players under the game namespace
    - if game admin search in their game studio namespace, the result will be all game admin user in the studio namespace
    - if game admin search in their game namespace, the result will be all player in the game namespace

    action code : 10133

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/search

        method: GET

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        by: (by) OPTIONAL str in query

        end_date: (endDate) OPTIONAL str in query

        include_total: (includeTotal) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        platform_by: (platformBy) OPTIONAL str in query

        platform_id: (platformId) OPTIONAL str in query

        query: (query) OPTIONAL str in query

        role_ids: (roleIds) OPTIONAL str in query

        skip_login_queue: (skipLoginQueue) OPTIONAL bool in query

        start_date: (startDate) OPTIONAL str in query

        test_account: (testAccount) OPTIONAL bool in query

    Responses:
        200: OK - ModelSearchUsersResponseWithPaginationV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminSearchUserV3.create(
        by=by,
        end_date=end_date,
        include_total=include_total,
        limit=limit,
        offset=offset,
        platform_by=platform_by,
        platform_id=platform_id,
        query=query,
        role_ids=role_ids,
        skip_login_queue=skip_login_queue,
        start_date=start_date,
        test_account=test_account,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminSearchUsersV2)
def admin_search_users_v2(
    platform_id: str,
    after: Optional[str] = None,
    before: Optional[str] = None,
    display_name: Optional[str] = None,
    limit: Optional[int] = None,
    login_id: Optional[str] = None,
    platform_user_id: Optional[str] = None,
    role_id: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Search Users (AdminSearchUsersV2)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/search [GET]_**

    Properties:
        url: /iam/v2/admin/namespaces/{namespace}/users

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        after: (after) OPTIONAL str in query

        before: (before) OPTIONAL str in query

        display_name: (displayName) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        login_id: (loginId) OPTIONAL str in query

        platform_user_id: (platformUserId) OPTIONAL str in query

        role_id: (roleId) OPTIONAL str in query

        user_id: (userId) OPTIONAL str in query

        platform_id: (platformId) REQUIRED str in query

    Responses:
        200: OK - ModelSearchUsersByPlatformIDResponse (OK)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminSearchUsersV2.create(
        platform_id=platform_id,
        after=after,
        before=before,
        display_name=display_name,
        limit=limit,
        login_id=login_id,
        platform_user_id=platform_user_id,
        role_id=role_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminSearchUsersV2)
async def admin_search_users_v2_async(
    platform_id: str,
    after: Optional[str] = None,
    before: Optional[str] = None,
    display_name: Optional[str] = None,
    limit: Optional[int] = None,
    login_id: Optional[str] = None,
    platform_user_id: Optional[str] = None,
    role_id: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Search Users (AdminSearchUsersV2)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/search [GET]_**

    Properties:
        url: /iam/v2/admin/namespaces/{namespace}/users

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        after: (after) OPTIONAL str in query

        before: (before) OPTIONAL str in query

        display_name: (displayName) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        login_id: (loginId) OPTIONAL str in query

        platform_user_id: (platformUserId) OPTIONAL str in query

        role_id: (roleId) OPTIONAL str in query

        user_id: (userId) OPTIONAL str in query

        platform_id: (platformId) REQUIRED str in query

    Responses:
        200: OK - ModelSearchUsersByPlatformIDResponse (OK)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminSearchUsersV2.create(
        platform_id=platform_id,
        after=after,
        before=before,
        display_name=display_name,
        limit=limit,
        login_id=login_id,
        platform_user_id=platform_user_id,
        role_id=role_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminSendVerificationCodeV3)
def admin_send_verification_code_v3(
    body: ModelSendVerificationCodeRequestV3,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Send verification code to user (AdminSendVerificationCodeV3)

    The verification code is sent to email address.
    Available contexts for use :
    - **UserAccountRegistration**
    a context type used for verifying email address in user account registration. It returns 409 if the email address already verified.
    **_It is the default context if the Context field is empty_**

    - **UpdateEmailAddress**
    a context type used for verify user before updating email address.(Without email address verified checking)

    - **upgradeHeadlessAccount**
    The context is intended to be used whenever the email address wanted to be automatically verified on upgrading a headless account.
    If this context used, IAM rejects the request if the email address is already used by others by returning HTTP Status Code 409.

    action code: 10116

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/code/request

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelSendVerificationCodeRequestV3 in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (10146: userID not match)

        404: Not Found - RestErrorResponse (20008: user not found | 10171: email address not found | 10139: platform account not found)

        409: Conflict - RestErrorResponse (10140: user verified | 10133: email already used)

        429: Too Many Requests - RestErrorResponse (20007: too many requests)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminSendVerificationCodeV3.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminSendVerificationCodeV3)
async def admin_send_verification_code_v3_async(
    body: ModelSendVerificationCodeRequestV3,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Send verification code to user (AdminSendVerificationCodeV3)

    The verification code is sent to email address.
    Available contexts for use :
    - **UserAccountRegistration**
    a context type used for verifying email address in user account registration. It returns 409 if the email address already verified.
    **_It is the default context if the Context field is empty_**

    - **UpdateEmailAddress**
    a context type used for verify user before updating email address.(Without email address verified checking)

    - **upgradeHeadlessAccount**
    The context is intended to be used whenever the email address wanted to be automatically verified on upgrading a headless account.
    If this context used, IAM rejects the request if the email address is already used by others by returning HTTP Status Code 409.

    action code: 10116

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/code/request

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelSendVerificationCodeRequestV3 in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (10146: userID not match)

        404: Not Found - RestErrorResponse (20008: user not found | 10171: email address not found | 10139: platform account not found)

        409: Conflict - RestErrorResponse (10140: user verified | 10133: email already used)

        429: Too Many Requests - RestErrorResponse (20007: too many requests)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminSendVerificationCodeV3.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminTrustlyUpdateUserIdentity)
def admin_trustly_update_user_identity(
    body: ModelUserIdentityUpdateRequestV3,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update User Identity (AdminTrustlyUpdateUserIdentity)

    This endpoint ONLY accept **Client Token**
    This endpoint is utilized for specific scenarios where **email notifications are disabled**
    The user's email will be marked as verified

    Note:
    - emailAddress or password field are optional
    - request body can't be empty

    action code : 10103

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/trustly/identity

        method: PATCH

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserIdentityUpdateRequestV3 in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        409: Conflict - RestErrorResponse (10133: email already used)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminTrustlyUpdateUserIdentity.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminTrustlyUpdateUserIdentity)
async def admin_trustly_update_user_identity_async(
    body: ModelUserIdentityUpdateRequestV3,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update User Identity (AdminTrustlyUpdateUserIdentity)

    This endpoint ONLY accept **Client Token**
    This endpoint is utilized for specific scenarios where **email notifications are disabled**
    The user's email will be marked as verified

    Note:
    - emailAddress or password field are optional
    - request body can't be empty

    action code : 10103

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/trustly/identity

        method: PATCH

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserIdentityUpdateRequestV3 in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        409: Conflict - RestErrorResponse (10133: email already used)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminTrustlyUpdateUserIdentity.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminUpdateAgeRestrictionConfigV2)
def admin_update_age_restriction_config_v2(
    body: ModelAgeRestrictionRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update age restriction config value (AdminUpdateAgeRestrictionConfigV2)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/agerestrictions [PATCH]_**

    Properties:
        url: /iam/v2/admin/namespaces/{namespace}/agerestrictions

        method: PATCH

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelAgeRestrictionRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelAgeRestrictionResponse (OK)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateAgeRestrictionConfigV2.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminUpdateAgeRestrictionConfigV2)
async def admin_update_age_restriction_config_v2_async(
    body: ModelAgeRestrictionRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update age restriction config value (AdminUpdateAgeRestrictionConfigV2)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/agerestrictions [PATCH]_**

    Properties:
        url: /iam/v2/admin/namespaces/{namespace}/agerestrictions

        method: PATCH

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelAgeRestrictionRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelAgeRestrictionResponse (OK)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateAgeRestrictionConfigV2.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateAgeRestrictionConfigV3)
def admin_update_age_restriction_config_v3(
    body: ModelAgeRestrictionRequestV3,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update age restriction config value (AdminUpdateAgeRestrictionConfigV3)

    action code: 10122

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/agerestrictions

        method: PATCH

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelAgeRestrictionRequestV3 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelAgeRestrictionResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateAgeRestrictionConfigV3.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateAgeRestrictionConfigV3)
async def admin_update_age_restriction_config_v3_async(
    body: ModelAgeRestrictionRequestV3,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update age restriction config value (AdminUpdateAgeRestrictionConfigV3)

    action code: 10122

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/agerestrictions

        method: PATCH

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelAgeRestrictionRequestV3 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelAgeRestrictionResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateAgeRestrictionConfigV3.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateCountryAgeRestrictionV3)
def admin_update_country_age_restriction_v3(
    body: ModelCountryAgeRestrictionV3Request,
    country_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update country's age restriction (AdminUpdateCountryAgeRestrictionV3)

    action code: 10123

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/agerestrictions/countries/{countryCode}

        method: PATCH

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelCountryAgeRestrictionV3Request in body

        country_code: (countryCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelCountryV3Response (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10154: country not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateCountryAgeRestrictionV3.create(
        body=body,
        country_code=country_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateCountryAgeRestrictionV3)
async def admin_update_country_age_restriction_v3_async(
    body: ModelCountryAgeRestrictionV3Request,
    country_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update country's age restriction (AdminUpdateCountryAgeRestrictionV3)

    action code: 10123

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/agerestrictions/countries/{countryCode}

        method: PATCH

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelCountryAgeRestrictionV3Request in body

        country_code: (countryCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelCountryV3Response (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10154: country not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateCountryAgeRestrictionV3.create(
        body=body,
        country_code=country_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateUserBanV3)
def admin_update_user_ban_v3(
    ban_id: str,
    body: ModelBanUpdateRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Enable or disable ban for a single user (AdminUpdateUserBanV3)

    Set ban status for a single user for a specific ban. Retrieve
    user ban and choose the ban ID. Set the form parameter to true/false to enable
    or disable the ban.
    action code : 10142'

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/bans/{banId}

        method: PATCH

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelBanUpdateRequest in body

        ban_id: (banId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelUserBanResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (10145: disallow game access publisher user's ban)

        404: Not Found - RestErrorResponse (20008: user not found | 10139: platform account not found | 10158: ban not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateUserBanV3.create(
        ban_id=ban_id,
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateUserBanV3)
async def admin_update_user_ban_v3_async(
    ban_id: str,
    body: ModelBanUpdateRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Enable or disable ban for a single user (AdminUpdateUserBanV3)

    Set ban status for a single user for a specific ban. Retrieve
    user ban and choose the ban ID. Set the form parameter to true/false to enable
    or disable the ban.
    action code : 10142'

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/bans/{banId}

        method: PATCH

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelBanUpdateRequest in body

        ban_id: (banId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelUserBanResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (10145: disallow game access publisher user's ban)

        404: Not Found - RestErrorResponse (20008: user not found | 10139: platform account not found | 10158: ban not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateUserBanV3.create(
        ban_id=ban_id,
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateUserDeletionStatusV3)
def admin_update_user_deletion_status_v3(
    body: ModelUpdateUserDeletionStatusRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update User Deletion Status (AdminUpdateUserDeletionStatusV3)

    action code : 10144

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/deletion/status

        method: PATCH

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUpdateUserDeletionStatusRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

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
    request = AdminUpdateUserDeletionStatusV3.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateUserDeletionStatusV3)
async def admin_update_user_deletion_status_v3_async(
    body: ModelUpdateUserDeletionStatusRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update User Deletion Status (AdminUpdateUserDeletionStatusV3)

    action code : 10144

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/deletion/status

        method: PATCH

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUpdateUserDeletionStatusRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

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
    request = AdminUpdateUserDeletionStatusV3.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateUserPermissionV3)
def admin_update_user_permission_v3(
    body: AccountcommonPermissions,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update User Permissions (AdminUpdateUserPermissionV3)

    This endpoint will REPLACE user's permissions with the ones defined in body
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
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions

        method: PUT

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AccountcommonPermissions in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateUserPermissionV3.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateUserPermissionV3)
async def admin_update_user_permission_v3_async(
    body: AccountcommonPermissions,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update User Permissions (AdminUpdateUserPermissionV3)

    This endpoint will REPLACE user's permissions with the ones defined in body
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
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions

        method: PUT

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AccountcommonPermissions in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateUserPermissionV3.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateUserStatusV3)
def admin_update_user_status_v3(
    body: ModelUpdateUserStatusRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update user status (AdminUpdateUserStatusV3)

    This endpoint disable or enable user account. Set the enable status on the request body to true to enable user account or set to false to disable it.
    Disable user for **Account Disable** purpose fill the reason with:
    - **AdminDeactivateAccount** : if your disable account request comes from admin

    Enable user ignore field 'reason' in the request body.
    action code : 10143

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/status

        method: PATCH

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUpdateUserStatusRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

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
    request = AdminUpdateUserStatusV3.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateUserStatusV3)
async def admin_update_user_status_v3_async(
    body: ModelUpdateUserStatusRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update user status (AdminUpdateUserStatusV3)

    This endpoint disable or enable user account. Set the enable status on the request body to true to enable user account or set to false to disable it.
    Disable user for **Account Disable** purpose fill the reason with:
    - **AdminDeactivateAccount** : if your disable account request comes from admin

    Enable user ignore field 'reason' in the request body.
    action code : 10143

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/status

        method: PATCH

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUpdateUserStatusRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

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
    request = AdminUpdateUserStatusV3.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminUpdateUserV2)
def admin_update_user_v2(
    body: ModelUserUpdateRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update User (AdminUpdateUserV2)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId} [PATCH]_**

    This Endpoint support update user based on given data. **Single request can update single field or multi fields.**
    Supported field {Country, DisplayName, LanguageTag}
    Country use ISO3166-1 alpha-2 two letter, e.g. US.

    **Several case of updating email address**
    - User want to update email address of which have been verified, NewEmailAddress response field will be filled with new email address.
    - User want to update email address of which have not been verified, {LoginId, OldEmailAddress, EmailAddress} response field will be filled with new email address.
    - User want to update email address of which have been verified and updated before, {LoginId, OldEmailAddress, EmailAddress} response field will be filled with verified email before. NewEmailAddress response field will be filled with newest email address.

    Properties:
        url: /iam/v2/admin/namespaces/{namespace}/users/{userId}

        method: PATCH

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserUpdateRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelUserResponse (OK)

        400: Bad Request - (20019: unable to parse request body | 10131: invalid date of birth | 10155: country is not defined | 10154: country not found | 10130: user under age | 10132: invalid email address)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        404: Not Found - (10139: platform account not found | 20008: user not found)

        409: Conflict - (10133: email already used)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateUserV2.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminUpdateUserV2)
async def admin_update_user_v2_async(
    body: ModelUserUpdateRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update User (AdminUpdateUserV2)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId} [PATCH]_**

    This Endpoint support update user based on given data. **Single request can update single field or multi fields.**
    Supported field {Country, DisplayName, LanguageTag}
    Country use ISO3166-1 alpha-2 two letter, e.g. US.

    **Several case of updating email address**
    - User want to update email address of which have been verified, NewEmailAddress response field will be filled with new email address.
    - User want to update email address of which have not been verified, {LoginId, OldEmailAddress, EmailAddress} response field will be filled with new email address.
    - User want to update email address of which have been verified and updated before, {LoginId, OldEmailAddress, EmailAddress} response field will be filled with verified email before. NewEmailAddress response field will be filled with newest email address.

    Properties:
        url: /iam/v2/admin/namespaces/{namespace}/users/{userId}

        method: PATCH

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserUpdateRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelUserResponse (OK)

        400: Bad Request - (20019: unable to parse request body | 10131: invalid date of birth | 10155: country is not defined | 10154: country not found | 10130: user under age | 10132: invalid email address)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        404: Not Found - (10139: platform account not found | 20008: user not found)

        409: Conflict - (10133: email already used)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateUserV2.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateUserV3)
def admin_update_user_v3(
    body: ModelUserUpdateRequestV3,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update User (AdminUpdateUserV3)

    This Endpoint support update user based on given data. **Single request can update single field or multi fields.**
    Supported field {country, displayName, languageTag, dateOfBirth, avatarUrl, userName, tags}
    Country use ISO3166-1 alpha-2 two letter, e.g. US.
    Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.
    Admin can set Tags with array string data e.g. ["10e9a46ef6164b7e86d08e86605bd8cf"].
    Admin also can reset user tags by sending empty array string e.g. [ ].
    Users can have at most 5 tags. No duplicate tags allowed.

    **Response body logic when user updating email address:**
    - User want to update email address of which have been verified, NewEmailAddress response field will be filled with new email address.
    - User want to update email address of which have not been verified, {LoginId, OldEmailAddress, EmailAddress} response field will be filled with new email address.
    - User want to update email address of which have been verified and updated before, {LoginId, OldEmailAddress, EmailAddress} response field will be filled with verified email before. NewEmailAddress response field will be filled with newest email address.

    action code : 10103

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}

        method: PATCH

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserUpdateRequestV3 in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelUserResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body | 10154: country not found | 10130: user under age)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        409: Conflict - RestErrorResponse (10133: email already used | 10222: unique display name already exists)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateUserV3.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateUserV3)
async def admin_update_user_v3_async(
    body: ModelUserUpdateRequestV3,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update User (AdminUpdateUserV3)

    This Endpoint support update user based on given data. **Single request can update single field or multi fields.**
    Supported field {country, displayName, languageTag, dateOfBirth, avatarUrl, userName, tags}
    Country use ISO3166-1 alpha-2 two letter, e.g. US.
    Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.
    Admin can set Tags with array string data e.g. ["10e9a46ef6164b7e86d08e86605bd8cf"].
    Admin also can reset user tags by sending empty array string e.g. [ ].
    Users can have at most 5 tags. No duplicate tags allowed.

    **Response body logic when user updating email address:**
    - User want to update email address of which have been verified, NewEmailAddress response field will be filled with new email address.
    - User want to update email address of which have not been verified, {LoginId, OldEmailAddress, EmailAddress} response field will be filled with new email address.
    - User want to update email address of which have been verified and updated before, {LoginId, OldEmailAddress, EmailAddress} response field will be filled with verified email before. NewEmailAddress response field will be filled with newest email address.

    action code : 10103

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}

        method: PATCH

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserUpdateRequestV3 in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelUserResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body | 10154: country not found | 10130: user under age)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        409: Conflict - RestErrorResponse (10133: email already used | 10222: unique display name already exists)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateUserV3.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpgradeHeadlessAccountV3)
def admin_upgrade_headless_account_v3(
    body: ModelUpgradeHeadlessAccountWithVerificationCodeRequestV3,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Verify or consume verification code.  (AdminUpgradeHeadlessAccountV3)

    If validateOnly is set false, will upgrade headless account with verification code
    The endpoint upgrades a headless account by linking the headless account with the email address and the password.
    By upgrading the headless account into a full account, the user could use the email address and password for using Justice IAM.
    The endpoint is a shortcut for upgrading a headless account and verifying the email address in one call.
    In order to get a verification code for the endpoint, please check the send verification code endpoint.
    This endpoint also have an ability to update user data (if the user data field is specified) right after the upgrade account process is done.
    Supported user data fields :
    - displayName
    - dateOfBirth : format YYYY-MM-DD, e.g. 2019-04-29
    - country : format ISO3166-1 alpha-2 two letter, e.g. US

    action code : 10124

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/headless/code/verify

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUpgradeHeadlessAccountWithVerificationCodeRequestV3 in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelUserResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body | 10155: country is not defined | 10130: user under age)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions | 10152: verification code not found | 10137: code is expired | 10136: code is either been used or not valid anymore | 10138: code not match | 10149: verification contact type doesn't match | 10148: verification code context doesn't match the required context | 10213: country is blocked)

        404: Not Found - RestErrorResponse (20008: user not found | 10139: platform account not found | 10154: country not found)

        409: Conflict - RestErrorResponse (10153: user exist | 10170: account is already a full account | 10222: unique display name already exists)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpgradeHeadlessAccountV3.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpgradeHeadlessAccountV3)
async def admin_upgrade_headless_account_v3_async(
    body: ModelUpgradeHeadlessAccountWithVerificationCodeRequestV3,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Verify or consume verification code.  (AdminUpgradeHeadlessAccountV3)

    If validateOnly is set false, will upgrade headless account with verification code
    The endpoint upgrades a headless account by linking the headless account with the email address and the password.
    By upgrading the headless account into a full account, the user could use the email address and password for using Justice IAM.
    The endpoint is a shortcut for upgrading a headless account and verifying the email address in one call.
    In order to get a verification code for the endpoint, please check the send verification code endpoint.
    This endpoint also have an ability to update user data (if the user data field is specified) right after the upgrade account process is done.
    Supported user data fields :
    - displayName
    - dateOfBirth : format YYYY-MM-DD, e.g. 2019-04-29
    - country : format ISO3166-1 alpha-2 two letter, e.g. US

    action code : 10124

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/headless/code/verify

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUpgradeHeadlessAccountWithVerificationCodeRequestV3 in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelUserResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body | 10155: country is not defined | 10130: user under age)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions | 10152: verification code not found | 10137: code is expired | 10136: code is either been used or not valid anymore | 10138: code not match | 10149: verification contact type doesn't match | 10148: verification code context doesn't match the required context | 10213: country is blocked)

        404: Not Found - RestErrorResponse (20008: user not found | 10139: platform account not found | 10154: country not found)

        409: Conflict - RestErrorResponse (10153: user exist | 10170: account is already a full account | 10222: unique display name already exists)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpgradeHeadlessAccountV3.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminVerifyAccountV3)
def admin_verify_account_v3(
    body: ModelUserVerificationRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Verify or consume verification code sent to user (AdminVerifyAccountV3)

    Will verify account and consume code if validateOnly is set false in request body
    Redeems a verification code sent to a user to verify the user's contact address is correct
    Available ContactType : **email** or **phone**

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/code/verify

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserVerificationRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (10152: verification code not found | 10137: code is expired | 10136: code is either been used or not valid anymore | 10138: code not match | 10149: verification contact type doesn't match | 10148: verification code context doesn't match the required context | 10162: invalid verification)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminVerifyAccountV3.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminVerifyAccountV3)
async def admin_verify_account_v3_async(
    body: ModelUserVerificationRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Verify or consume verification code sent to user (AdminVerifyAccountV3)

    Will verify account and consume code if validateOnly is set false in request body
    Redeems a verification code sent to a user to verify the user's contact address is correct
    Available ContactType : **email** or **phone**

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/code/verify

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserVerificationRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (10152: verification code not found | 10137: code is expired | 10136: code is either been used or not valid anymore | 10138: code not match | 10149: verification contact type doesn't match | 10148: verification code context doesn't match the required context | 10162: invalid verification)

        404: Not Found - RestErrorResponse (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminVerifyAccountV3.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminVerifyUserWithoutVerificationCodeV3)
def admin_verify_user_without_verification_code_v3(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Verify user without verification code (AdminVerifyUserWithoutVerificationCodeV3)

    This endpoint force verify user
    Note:
    - namespace: only accept publisher/studio namespace
    - userId: only accept publisher/studio userId
    action code: 10118

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/verify

        method: PUT

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        409: Conflict - RestErrorResponse (10140: user verified)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminVerifyUserWithoutVerificationCodeV3.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminVerifyUserWithoutVerificationCodeV3)
async def admin_verify_user_without_verification_code_v3_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Verify user without verification code (AdminVerifyUserWithoutVerificationCodeV3)

    This endpoint force verify user
    Note:
    - namespace: only accept publisher/studio namespace
    - userId: only accept publisher/studio userId
    action code: 10118

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/verify

        method: PUT

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        409: Conflict - RestErrorResponse (10140: user verified)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminVerifyUserWithoutVerificationCodeV3.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(BanUser)
def ban_user(
    body: ModelBanCreateRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Ban a single user (BanUser)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/bans [POST]_**

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/ban

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelBanCreateRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelUserBanResponse (Created)

        400: Bad Request - (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (10139: platform account not found | 20008: user not found | 10158: ban not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BanUser.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(BanUser)
async def ban_user_async(
    body: ModelBanCreateRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Ban a single user (BanUser)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/bans [POST]_**

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/ban

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelBanCreateRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelUserBanResponse (Created)

        400: Bad Request - (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (10139: platform account not found | 20008: user not found | 10158: ban not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BanUser.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CheckUserAvailability)
def check_user_availability(
    field: str,
    query: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Check user's account availability (CheckUserAvailability)

    Check user's account availability.
    Available field :
    - displayName
    - uniqueDisplayName
    - username

    If request include access token with user ID data, that user ID will be excluded from availability check.
    For example, in case user update his emailAddress, he can use his own emailAddress to update his account.

    Response Code :
    - Account Available : 404 (not found)
    - Account Not Available : 204 (no content)

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/availability

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        field: (field) REQUIRED str in query

        query: (query) REQUIRED str in query

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestErrorResponse (20002: validation error)

        404: Not Found - (Not Found)

        422: Unprocessable Entity - RestErrorResponse (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CheckUserAvailability.create(
        field=field,
        query=query,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CheckUserAvailability)
async def check_user_availability_async(
    field: str,
    query: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Check user's account availability (CheckUserAvailability)

    Check user's account availability.
    Available field :
    - displayName
    - uniqueDisplayName
    - username

    If request include access token with user ID data, that user ID will be excluded from availability check.
    For example, in case user update his emailAddress, he can use his own emailAddress to update his account.

    Response Code :
    - Account Available : 404 (not found)
    - Account Not Available : 204 (no content)

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/availability

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        field: (field) REQUIRED str in query

        query: (query) REQUIRED str in query

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestErrorResponse (20002: validation error)

        404: Not Found - (Not Found)

        422: Unprocessable Entity - RestErrorResponse (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CheckUserAvailability.create(
        field=field,
        query=query,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(CreateUser)
def create_user(
    body: ModelUserCreateRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create User (CreateUser)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users [POST]_**
    - **Substitute endpoint: _/iam/v4/public/namespaces/{namespace}/users [POST]_**
    - **Note:**
    1. v3 & v4 introduce optional verification code
    2. format differenceï¼Pascal case => Camel case)

    Available Authentication Types:
    1. **EMAILPASSWD**: an authentication type used for new user registration through email.
    2. **PHONEPASSWD**: an authentication type used for new user registration through phone number.

    Country use ISO3166-1 alpha-2 two letter, e.g. US.

    Properties:
        url: /iam/namespaces/{namespace}/users

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserCreateRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelUserCreateResponse (Created)

        400: Bad Request - (1014001: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        409: Conflict - (1014002: user already exists)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateUser.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(CreateUser)
async def create_user_async(
    body: ModelUserCreateRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create User (CreateUser)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users [POST]_**
    - **Substitute endpoint: _/iam/v4/public/namespaces/{namespace}/users [POST]_**
    - **Note:**
    1. v3 & v4 introduce optional verification code
    2. format differenceï¼Pascal case => Camel case)

    Available Authentication Types:
    1. **EMAILPASSWD**: an authentication type used for new user registration through email.
    2. **PHONEPASSWD**: an authentication type used for new user registration through phone number.

    Country use ISO3166-1 alpha-2 two letter, e.g. US.

    Properties:
        url: /iam/namespaces/{namespace}/users

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserCreateRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelUserCreateResponse (Created)

        400: Bad Request - (1014001: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        409: Conflict - (1014002: user already exists)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateUser.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateUserFromInvitationV3)
def create_user_from_invitation_v3(
    body: ModelUserCreateRequestV3,
    invitation_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create User From Invitation (CreateUserFromInvitationV3)

    This endpoint create user from saved roles when creating invitation and submitted data.
    User will be able to login after completing submitting the data through this endpoint.
    Available Authentication Types:
    EMAILPASSWD: an authentication type used for new user registration through email.

    **Note**:
    * **uniqueDisplayName**: this is required when uniqueDisplayNameEnabled/UNIQUE_DISPLAY_NAME_ENABLED is true.

    Country use ISO3166-1 alpha-2 two letter, e.g. US.
    Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/invite/{invitationId}

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserCreateRequestV3 in body

        invitation_id: (invitationId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelUserCreateResponseV3 (Created)

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
    request = CreateUserFromInvitationV3.create(
        body=body,
        invitation_id=invitation_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateUserFromInvitationV3)
async def create_user_from_invitation_v3_async(
    body: ModelUserCreateRequestV3,
    invitation_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create User From Invitation (CreateUserFromInvitationV3)

    This endpoint create user from saved roles when creating invitation and submitted data.
    User will be able to login after completing submitting the data through this endpoint.
    Available Authentication Types:
    EMAILPASSWD: an authentication type used for new user registration through email.

    **Note**:
    * **uniqueDisplayName**: this is required when uniqueDisplayNameEnabled/UNIQUE_DISPLAY_NAME_ENABLED is true.

    Country use ISO3166-1 alpha-2 two letter, e.g. US.
    Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/invite/{invitationId}

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserCreateRequestV3 in body

        invitation_id: (invitationId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelUserCreateResponseV3 (Created)

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
    request = CreateUserFromInvitationV3.create(
        body=body,
        invitation_id=invitation_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(DeleteUser)
def delete_user(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete User (DeleteUser)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/information [DELETE]_**

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}

        method: DELETE

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteUser.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(DeleteUser)
async def delete_user_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete User (DeleteUser)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/information [DELETE]_**

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}

        method: DELETE

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteUser.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(DeleteUserInformation)
def delete_user_information(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete user's information (DeleteUserInformation)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/information [DELETE]_**

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/information

        method: DELETE

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteUserInformation.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(DeleteUserInformation)
async def delete_user_information_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete user's information (DeleteUserInformation)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/information [DELETE]_**

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/information

        method: DELETE

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteUserInformation.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(DeleteUserPermission)
def delete_user_permission(
    action: int,
    resource: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete User Permission (DeleteUserPermission)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action} [DELETE]_**

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action}

        method: DELETE

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

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
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteUserPermission.create(
        action=action,
        resource=resource,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(DeleteUserPermission)
async def delete_user_permission_async(
    action: int,
    resource: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete User Permission (DeleteUserPermission)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action} [DELETE]_**

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action}

        method: DELETE

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

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
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteUserPermission.create(
        action=action,
        resource=resource,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(DeleteUserRole)
def delete_user_role(
    role_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete User Role (DeleteUserRole)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/roles/{roleId} [DELETE]_**

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/roles/{roleId}

        method: DELETE

        tags: ["Users"]

        consumes: ["application/json", "text/plain"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        role_id: (roleId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - (10159: operator is not a role manager)

        404: Not Found - (10156: role not found | 20008: user not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteUserRole.create(
        role_id=role_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(DeleteUserRole)
async def delete_user_role_async(
    role_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete User Role (DeleteUserRole)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/roles/{roleId} [DELETE]_**

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/roles/{roleId}

        method: DELETE

        tags: ["Users"]

        consumes: ["application/json", "text/plain"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        role_id: (roleId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - (10159: operator is not a role manager)

        404: Not Found - (10156: role not found | 20008: user not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteUserRole.create(
        role_id=role_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(DisableUser)
def disable_user(
    body: ModelDisableUserRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Disable a user (DisableUser)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/status [PATCH]_**

    For **Deletion Account** purpose fill the reason with:
    - **DeactivateAccount** : if your deletion request comes from user
    - **AdminDeactivateAccount** : if your deletion request comes from admin

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/disable

        method: PUT

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelDisableUserRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - (20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DisableUser.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(DisableUser)
async def disable_user_async(
    body: ModelDisableUserRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Disable a user (DisableUser)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/status [PATCH]_**

    For **Deletion Account** purpose fill the reason with:
    - **DeactivateAccount** : if your deletion request comes from user
    - **AdminDeactivateAccount** : if your deletion request comes from admin

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/disable

        method: PUT

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelDisableUserRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - (20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DisableUser.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(DisableUserBan)
def disable_user_ban(
    ban_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Disable ban for a single user. (DisableUserBan)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/bans/{banId} [PATCH]_**

    **Notes for using IAM in publisher - game studio scenarios**
    The endpoint allows:
    - The admin user in publisher namespace disables userâs ban in publisher namespace.
    - The admin user in game namespace disables userâs ban in game namespace.
    - The admin user in publisher namespace disables userâs ban in publisher namespace.

    Other scenarios are not supported and will return 403: Forbidden.

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/bans/{banId}/disable

        method: PUT

        tags: ["Users"]

        consumes: ["*/*"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        ban_id: (banId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelUserBanResponse (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - (10145: disallow game access publisher user's ban)

        404: Not Found - (10139: platform account not found | 20008: user not found | 10158: ban not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DisableUserBan.create(
        ban_id=ban_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(DisableUserBan)
async def disable_user_ban_async(
    ban_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Disable ban for a single user. (DisableUserBan)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/bans/{banId} [PATCH]_**

    **Notes for using IAM in publisher - game studio scenarios**
    The endpoint allows:
    - The admin user in publisher namespace disables userâs ban in publisher namespace.
    - The admin user in game namespace disables userâs ban in game namespace.
    - The admin user in publisher namespace disables userâs ban in publisher namespace.

    Other scenarios are not supported and will return 403: Forbidden.

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/bans/{banId}/disable

        method: PUT

        tags: ["Users"]

        consumes: ["*/*"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        ban_id: (banId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelUserBanResponse (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - (10145: disallow game access publisher user's ban)

        404: Not Found - (10139: platform account not found | 20008: user not found | 10158: ban not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DisableUserBan.create(
        ban_id=ban_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(EnableUser)
def enable_user(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Enable a user (EnableUser)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/status [PATCH]_**

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/enable

        method: PUT

        tags: ["Users"]

        consumes: ["*/*"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (20008: user not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = EnableUser.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(EnableUser)
async def enable_user_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Enable a user (EnableUser)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/status [PATCH]_**

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/enable

        method: PUT

        tags: ["Users"]

        consumes: ["*/*"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (20008: user not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = EnableUser.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(EnableUserBan)
def enable_user_ban(
    ban_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Enable ban for a single user (EnableUserBan)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/bans/{banId} [PATCH]_**

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/bans/{banId}/enable

        method: PUT

        tags: ["Users"]

        consumes: ["*/*"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        ban_id: (banId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelUserBanResponse (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - (10145: disallow game access publisher user's ban)

        404: Not Found - (10139: platform account not found | 20008: user not found | 10158: ban not found | 10144: user has no bans)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = EnableUserBan.create(
        ban_id=ban_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(EnableUserBan)
async def enable_user_ban_async(
    ban_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Enable ban for a single user (EnableUserBan)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/bans/{banId} [PATCH]_**

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/bans/{banId}/enable

        method: PUT

        tags: ["Users"]

        consumes: ["*/*"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        ban_id: (banId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelUserBanResponse (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - (10145: disallow game access publisher user's ban)

        404: Not Found - (10139: platform account not found | 20008: user not found | 10158: ban not found | 10144: user has no bans)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = EnableUserBan.create(
        ban_id=ban_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(ForgotPassword)
def forgot_password(
    body: ModelSendVerificationCodeRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Request Password Reset Code (ForgotPassword)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/forgot [POST]_**

    **Special note for publisher-game scenario:** Game Client should provide game namespace path parameter and Publisher Client should provide publisher namespace path parameter.

    The password reset code will be sent to the publisher account's email address.

    Properties:
        url: /iam/namespaces/{namespace}/users/forgotPassword

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BASIC_AUTH and BEARER_AUTH]

        body: (body) REQUIRED ModelSendVerificationCodeRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ForgotPassword.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(ForgotPassword)
async def forgot_password_async(
    body: ModelSendVerificationCodeRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Request Password Reset Code (ForgotPassword)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/forgot [POST]_**

    **Special note for publisher-game scenario:** Game Client should provide game namespace path parameter and Publisher Client should provide publisher namespace path parameter.

    The password reset code will be sent to the publisher account's email address.

    Properties:
        url: /iam/namespaces/{namespace}/users/forgotPassword

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BASIC_AUTH and BEARER_AUTH]

        body: (body) REQUIRED ModelSendVerificationCodeRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ForgotPassword.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetAdminInvitationV3)
def get_admin_invitation_v3(
    invitation_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User Invitation (GetAdminInvitationV3)

    Endpoint to validate user invitation. When not found, it could also means the invitation has expired.

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/invite/{invitationId}

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        invitation_id: (invitationId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelUserInvitationV3 (OK)

        404: Not Found - RestErrorResponse (10180: admin invitation not found or expired)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAdminInvitationV3.create(
        invitation_id=invitation_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetAdminInvitationV3)
async def get_admin_invitation_v3_async(
    invitation_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User Invitation (GetAdminInvitationV3)

    Endpoint to validate user invitation. When not found, it could also means the invitation has expired.

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/invite/{invitationId}

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        invitation_id: (invitationId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelUserInvitationV3 (OK)

        404: Not Found - RestErrorResponse (10180: admin invitation not found or expired)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAdminInvitationV3.create(
        invitation_id=invitation_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetAdminUsersByRoleID)
def get_admin_users_by_role_id(
    after: Optional[int] = None,
    before: Optional[int] = None,
    limit: Optional[int] = None,
    role_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Admin Users By RoleId (GetAdminUsersByRoleID)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint(Public): _/iam/v3/admin/namespaces/{namespace}/roles/{roleId}/users [GET]_**
    - **Note:**
    difference in V3 response, format difference: Pascal case => Camel case

    This endpoint search admin users which have the roleId

    Notes : this endpoint only accept admin role. Admin Role is role which have admin status and members.
    Use endpoint [GET] /roles/{roleId}/admin to check the role status

    Properties:
        url: /iam/namespaces/{namespace}/users/admin

        method: GET

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        after: (after) OPTIONAL int in query

        before: (before) OPTIONAL int in query

        limit: (limit) OPTIONAL int in query

        role_id: (roleId) OPTIONAL str in query

    Responses:
        200: OK - ModelGetAdminUsersResponse (OK)

        400: Bad Request - RestErrorResponse (20021: invalid pagination parameter | 20002: validation error | 10157: specified role is not admin role)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAdminUsersByRoleID.create(
        after=after,
        before=before,
        limit=limit,
        role_id=role_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetAdminUsersByRoleID)
async def get_admin_users_by_role_id_async(
    after: Optional[int] = None,
    before: Optional[int] = None,
    limit: Optional[int] = None,
    role_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Admin Users By RoleId (GetAdminUsersByRoleID)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint(Public): _/iam/v3/admin/namespaces/{namespace}/roles/{roleId}/users [GET]_**
    - **Note:**
    difference in V3 response, format difference: Pascal case => Camel case

    This endpoint search admin users which have the roleId

    Notes : this endpoint only accept admin role. Admin Role is role which have admin status and members.
    Use endpoint [GET] /roles/{roleId}/admin to check the role status

    Properties:
        url: /iam/namespaces/{namespace}/users/admin

        method: GET

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        after: (after) OPTIONAL int in query

        before: (before) OPTIONAL int in query

        limit: (limit) OPTIONAL int in query

        role_id: (roleId) OPTIONAL str in query

    Responses:
        200: OK - ModelGetAdminUsersResponse (OK)

        400: Bad Request - RestErrorResponse (20021: invalid pagination parameter | 20002: validation error | 10157: specified role is not admin role)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAdminUsersByRoleID.create(
        after=after,
        before=before,
        limit=limit,
        role_id=role_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetAdminUsersByRoleIdV3)
def get_admin_users_by_role_id_v3(
    role_id: str,
    after: Optional[int] = None,
    before: Optional[int] = None,
    limit: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Admin Users By RoleId (GetAdminUsersByRoleIdV3)

    This endpoint search admin users which have the roleId

    Notes : this endpoint only accept admin role. Admin Role is role which have admin status and members.
    Use endpoint [GET] /roles/{roleId}/admin to check the role status
    action code : 10140

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/roles/{roleId}/users

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        role_id: (roleId) REQUIRED str in path

        after: (after) OPTIONAL int in query

        before: (before) OPTIONAL int in query

        limit: (limit) OPTIONAL int in query

    Responses:
        200: OK - ModelGetUsersResponseWithPaginationV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 10157: specified role is not admin role)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10156: role not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAdminUsersByRoleIdV3.create(
        role_id=role_id,
        after=after,
        before=before,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetAdminUsersByRoleIdV3)
async def get_admin_users_by_role_id_v3_async(
    role_id: str,
    after: Optional[int] = None,
    before: Optional[int] = None,
    limit: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Admin Users By RoleId (GetAdminUsersByRoleIdV3)

    This endpoint search admin users which have the roleId

    Notes : this endpoint only accept admin role. Admin Role is role which have admin status and members.
    Use endpoint [GET] /roles/{roleId}/admin to check the role status
    action code : 10140

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/roles/{roleId}/users

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        role_id: (roleId) REQUIRED str in path

        after: (after) OPTIONAL int in query

        before: (before) OPTIONAL int in query

        limit: (limit) OPTIONAL int in query

    Responses:
        200: OK - ModelGetUsersResponseWithPaginationV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 10157: specified role is not admin role)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10156: role not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAdminUsersByRoleIdV3.create(
        role_id=role_id,
        after=after,
        before=before,
        limit=limit,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetListCountryAgeRestriction)
def get_list_country_age_restriction(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get List Country age restriction (GetListCountryAgeRestriction)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/agerestrictions/countries [GET]_**

    Properties:
        url: /iam/v2/admin/namespaces/{namespace}/countries/agerestrictions

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[AccountcommonCountryAgeRestriction] (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetListCountryAgeRestriction.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetListCountryAgeRestriction)
async def get_list_country_age_restriction_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get List Country age restriction (GetListCountryAgeRestriction)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/agerestrictions/countries [GET]_**

    Properties:
        url: /iam/v2/admin/namespaces/{namespace}/countries/agerestrictions

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[AccountcommonCountryAgeRestriction] (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetListCountryAgeRestriction.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetListJusticePlatformAccounts)
def get_list_justice_platform_accounts(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User Justice Platform Accounts (GetListJusticePlatformAccounts)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/{userId}/platforms/justice [GET]_**

    This endpoint gets list justice platform account by providing publisher namespace and publisher userID.

    Properties:
        url: /iam/v2/public/namespaces/{namespace}/users/{userId}/platforms/justice

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[ModelGetUserMapping] (OK)

        400: Bad Request - RestErrorResponse (Invalid request)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetListJusticePlatformAccounts.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetListJusticePlatformAccounts)
async def get_list_justice_platform_accounts_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User Justice Platform Accounts (GetListJusticePlatformAccounts)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/{userId}/platforms/justice [GET]_**

    This endpoint gets list justice platform account by providing publisher namespace and publisher userID.

    Properties:
        url: /iam/v2/public/namespaces/{namespace}/users/{userId}/platforms/justice

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[ModelGetUserMapping] (OK)

        400: Bad Request - RestErrorResponse (Invalid request)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetListJusticePlatformAccounts.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetPublisherUser)
def get_publisher_user(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Publisher User (GetPublisherUser)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/{userId}/publisher [GET]_**

    **Restriction:**
    Path Parameter *namespace* can be provided only with game namespace

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/publisher

        method: GET

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelGetPublisherUserResponse (OK)

        400: Bad Request - RestErrorResponse (Error Code: 7239 - Error Message: wrong namespace: required game namespace)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetPublisherUser.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetPublisherUser)
async def get_publisher_user_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Publisher User (GetPublisherUser)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/{userId}/publisher [GET]_**

    **Restriction:**
    Path Parameter *namespace* can be provided only with game namespace

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/publisher

        method: GET

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelGetPublisherUserResponse (OK)

        400: Bad Request - RestErrorResponse (Error Code: 7239 - Error Message: wrong namespace: required game namespace)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetPublisherUser.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetUserBanHistory)
def get_user_ban_history(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user's bans history (GetUserBanHistory)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/bans [GET]_**

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/bans

        method: GET

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[ModelUserBanResponse] (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserBanHistory.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetUserBanHistory)
async def get_user_ban_history_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user's bans history (GetUserBanHistory)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/bans [GET]_**

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/bans

        method: GET

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[ModelUserBanResponse] (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserBanHistory.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetUserByLoginID)
def get_user_by_login_id(
    login_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User By Login Id (GetUserByLoginID)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users [GET]_**

    Properties:
        url: /iam/namespaces/{namespace}/users/byLoginId

        method: GET

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        login_id: (loginId) OPTIONAL str in query

    Responses:
        200: OK - ModelPublicUserResponse (OK)

        400: Bad Request - (20002: validation error)

        404: Not Found - (20008: user not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserByLoginID.create(
        login_id=login_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetUserByLoginID)
async def get_user_by_login_id_async(
    login_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User By Login Id (GetUserByLoginID)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users [GET]_**

    Properties:
        url: /iam/namespaces/{namespace}/users/byLoginId

        method: GET

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        login_id: (loginId) OPTIONAL str in query

    Responses:
        200: OK - ModelPublicUserResponse (OK)

        400: Bad Request - (20002: validation error)

        404: Not Found - (20008: user not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserByLoginID.create(
        login_id=login_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetUserByPlatformUserID)
def get_user_by_platform_user_id(
    platform_id: str,
    platform_user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User By Platform User ID (GetUserByPlatformUserID)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint(Public): _/iam/v3/public/namespaces/{namespace}/platforms/{platformId}/users/{platformUserId} [GET]_**
    - **Substitute endpoint(Admin): _/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/users/{platformUserId} [GET]_**
    - **Note:**
    1. difference in V3 response, format difference: Pascal case => Camel case

    Properties:
        url: /iam/namespaces/{namespace}/users/byPlatformUserID

        method: GET

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformID) REQUIRED str in query

        platform_user_id: (platformUserID) REQUIRED str in query

    Responses:
        200: OK - ModelPublicUserResponse (OK)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserByPlatformUserID.create(
        platform_id=platform_id,
        platform_user_id=platform_user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetUserByPlatformUserID)
async def get_user_by_platform_user_id_async(
    platform_id: str,
    platform_user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User By Platform User ID (GetUserByPlatformUserID)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint(Public): _/iam/v3/public/namespaces/{namespace}/platforms/{platformId}/users/{platformUserId} [GET]_**
    - **Substitute endpoint(Admin): _/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/users/{platformUserId} [GET]_**
    - **Note:**
    1. difference in V3 response, format difference: Pascal case => Camel case

    Properties:
        url: /iam/namespaces/{namespace}/users/byPlatformUserID

        method: GET

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformID) REQUIRED str in query

        platform_user_id: (platformUserID) REQUIRED str in query

    Responses:
        200: OK - ModelPublicUserResponse (OK)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserByPlatformUserID.create(
        platform_id=platform_id,
        platform_user_id=platform_user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetUserByUserID)
def get_user_by_user_id(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User By User Id (GetUserByUserID)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint(Public): _/iam/v3/public/namespaces/{namespace}/users/{userId} [GET]_**
    - **Substitute endpoint(Admin): _/iam/v3/admin/namespaces/{namespace}/users/{userId} [GET]_**
    - **Note:**
    format difference in response: Pascal case => Camel case

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}

        method: GET

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelUserResponse (OK)

        404: Not Found - (20008: user not found | 10139: platform account not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserByUserID.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetUserByUserID)
async def get_user_by_user_id_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User By User Id (GetUserByUserID)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint(Public): _/iam/v3/public/namespaces/{namespace}/users/{userId} [GET]_**
    - **Substitute endpoint(Admin): _/iam/v3/admin/namespaces/{namespace}/users/{userId} [GET]_**
    - **Note:**
    format difference in response: Pascal case => Camel case

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}

        method: GET

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelUserResponse (OK)

        404: Not Found - (20008: user not found | 10139: platform account not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserByUserID.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetUserInformation)
def get_user_information(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user's information (GetUserInformation)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/{userId}/information [GET]_**

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/information

        method: GET

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelUserInformation (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserInformation.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetUserInformation)
async def get_user_information_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user's information (GetUserInformation)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/{userId}/information [GET]_**

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/information

        method: GET

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelUserInformation (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserInformation.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetUserJusticePlatformAccount)
def get_user_justice_platform_account(
    target_namespace: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get the Justice linked accounts on the designated namespace (GetUserJusticePlatformAccount)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace} [GET]_**

    This endpoint requires the client access token as the bearer token

    The endpoint returns user Justice platform account linked with the given user. If the user Justice platform account doesn't exist in the designated namespace, the endpoint is going to *create and return the new Justice platform account.*
    The newly user Justice platform account is going to be forced to perform token grant through the given user and can't perform password update

    ### Read Justice Platform Account UserID
    Without permission the UserID is going to be censored and replaced with âRedactedâ text.

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        target_namespace: (targetNamespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelGetUserJusticePlatformAccountResponse (OK)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserJusticePlatformAccount.create(
        target_namespace=target_namespace,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetUserJusticePlatformAccount)
async def get_user_justice_platform_account_async(
    target_namespace: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get the Justice linked accounts on the designated namespace (GetUserJusticePlatformAccount)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace} [GET]_**

    This endpoint requires the client access token as the bearer token

    The endpoint returns user Justice platform account linked with the given user. If the user Justice platform account doesn't exist in the designated namespace, the endpoint is going to *create and return the new Justice platform account.*
    The newly user Justice platform account is going to be forced to perform token grant through the given user and can't perform password update

    ### Read Justice Platform Account UserID
    Without permission the UserID is going to be censored and replaced with âRedactedâ text.

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        target_namespace: (targetNamespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelGetUserJusticePlatformAccountResponse (OK)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserJusticePlatformAccount.create(
        target_namespace=target_namespace,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetUserLoginHistories)
def get_user_login_histories(
    user_id: str,
    after: Optional[float] = None,
    before: Optional[float] = None,
    limit: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User's Login Histories (GetUserLoginHistories)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/{userId}/logins/histories [GET]_**
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/logins/histories [GET]_**

    Notes for this endpoint:
    - This endpoint retrieve the first page of the data if 'after' and 'before' parameters is empty.
    - The maximum value of the limit is 100 and the minimum value of the limit is 1.
    - This endpoint retrieve the next page of the data if we provide 'after' parameters with valid Unix timestamp.
    - This endpoint retrieve the previous page of the data if we provide 'before' parameter with valid data Unix timestamp.

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/logins/histories

        method: GET

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        after: (after) OPTIONAL float in query

        before: (before) OPTIONAL float in query

        limit: (limit) OPTIONAL int in query

    Responses:
        200: OK - ModelLoginHistoriesResponse (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserLoginHistories.create(
        user_id=user_id,
        after=after,
        before=before,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetUserLoginHistories)
async def get_user_login_histories_async(
    user_id: str,
    after: Optional[float] = None,
    before: Optional[float] = None,
    limit: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User's Login Histories (GetUserLoginHistories)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/{userId}/logins/histories [GET]_**
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/logins/histories [GET]_**

    Notes for this endpoint:
    - This endpoint retrieve the first page of the data if 'after' and 'before' parameters is empty.
    - The maximum value of the limit is 100 and the minimum value of the limit is 1.
    - This endpoint retrieve the next page of the data if we provide 'after' parameters with valid Unix timestamp.
    - This endpoint retrieve the previous page of the data if we provide 'before' parameter with valid data Unix timestamp.

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/logins/histories

        method: GET

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        after: (after) OPTIONAL float in query

        before: (before) OPTIONAL float in query

        limit: (limit) OPTIONAL int in query

    Responses:
        200: OK - ModelLoginHistoriesResponse (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserLoginHistories.create(
        user_id=user_id,
        after=after,
        before=before,
        limit=limit,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetUserMapping)
def get_user_mapping(
    target_namespace: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user mapping (GetUserMapping)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace} [GET]_**

    This endpoint requires the client access token as the bearer token
    This endpoint will support publisher access to game and game access to publisher
    If targetNamespace filled with publisher namespace then this endpoint will return its publisher user id and publisher namespace.
    If targetNamespace filled with game namespace then this endpoint will return its game user id and game namespace. **Will create game user id if not exists.**

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}

        method: GET

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        target_namespace: (targetNamespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelGetUserMapping (OK)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserMapping.create(
        target_namespace=target_namespace,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetUserMapping)
async def get_user_mapping_async(
    target_namespace: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user mapping (GetUserMapping)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace} [GET]_**

    This endpoint requires the client access token as the bearer token
    This endpoint will support publisher access to game and game access to publisher
    If targetNamespace filled with publisher namespace then this endpoint will return its publisher user id and publisher namespace.
    If targetNamespace filled with game namespace then this endpoint will return its game user id and game namespace. **Will create game user id if not exists.**

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}

        method: GET

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        target_namespace: (targetNamespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelGetUserMapping (OK)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserMapping.create(
        target_namespace=target_namespace,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetUserPlatformAccounts)
def get_user_platform_accounts(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get platform accounts linked to the user (GetUserPlatformAccounts)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/{userId}/platforms [GET]_**
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms [GET]_**

    ## Justice Platform Account
    The permission âADMIN:NAMESPACE:{namespace}:JUSTICE:USER:{userId}â [READ] is required in order to read the UserID who linked with the user.

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/platforms

        method: GET

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[AccountcommonUserLinkedPlatform] (OK)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserPlatformAccounts.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetUserPlatformAccounts)
async def get_user_platform_accounts_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get platform accounts linked to the user (GetUserPlatformAccounts)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/{userId}/platforms [GET]_**
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms [GET]_**

    ## Justice Platform Account
    The permission âADMIN:NAMESPACE:{namespace}:JUSTICE:USER:{userId}â [READ] is required in order to read the UserID who linked with the user.

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/platforms

        method: GET

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[AccountcommonUserLinkedPlatform] (OK)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserPlatformAccounts.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserVerificationCode)
def get_user_verification_code(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get verification code sent to user (getUserVerificationCode)

    **[WARNING] This endpoint is only for testing purpose.**

    This endpoint get active user verification code.
    There are some scenarios of getting verification codes, all of them will be returned on this endpoint:
    - After account registration
    - After reset password request
    - After headless account upgrade
    - After update email request

    This API only accept publisher/studio namespace and userId.

    Action code: 10146

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/codes

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelVerificationCodeResponse (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserVerificationCode.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserVerificationCode)
async def get_user_verification_code_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get verification code sent to user (getUserVerificationCode)

    **[WARNING] This endpoint is only for testing purpose.**

    This endpoint get active user verification code.
    There are some scenarios of getting verification codes, all of them will be returned on this endpoint:
    - After account registration
    - After reset password request
    - After headless account upgrade
    - After update email request

    This API only accept publisher/studio namespace and userId.

    Action code: 10146

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/users/{userId}/codes

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelVerificationCodeResponse (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserVerificationCode.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetUsersByLoginIds)
def get_users_by_login_ids(
    login_ids: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a List of Users By Their Login Id (GetUsersByLoginIds)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint(query by email list): _/iam/v3/public/namespaces/{namespace}/users/bulk/basic [POST]_**
    - **Substitute endpoint(query by user id list): _/iam/v3/admin/namespaces/{namespace}/users/search/bulk [POST]_**

    Properties:
        url: /iam/namespaces/{namespace}/users/listByLoginIds

        method: GET

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        login_ids: (loginIds) OPTIONAL str in query

    Responses:
        200: OK - ModelPublicUsersResponse (OK)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUsersByLoginIds.create(
        login_ids=login_ids,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetUsersByLoginIds)
async def get_users_by_login_ids_async(
    login_ids: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a List of Users By Their Login Id (GetUsersByLoginIds)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint(query by email list): _/iam/v3/public/namespaces/{namespace}/users/bulk/basic [POST]_**
    - **Substitute endpoint(query by user id list): _/iam/v3/admin/namespaces/{namespace}/users/search/bulk [POST]_**

    Properties:
        url: /iam/namespaces/{namespace}/users/listByLoginIds

        method: GET

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        login_ids: (loginIds) OPTIONAL str in query

    Responses:
        200: OK - ModelPublicUsersResponse (OK)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUsersByLoginIds.create(
        login_ids=login_ids,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(LinkHeadlessAccountToMyAccountV3)
def link_headless_account_to_my_account_v3(
    body: ModelLinkHeadlessAccountRequest,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Link headless account to current full account (LinkHeadlessAccountToMyAccountV3)

    Note:
    1. My account should be full account
    2. My account not linked to headless account's third platform.

    Properties:
        url: /iam/v3/public/users/me/headless/linkWithProgression

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelLinkHeadlessAccountRequest in body

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestErrorResponse

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = LinkHeadlessAccountToMyAccountV3.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(LinkHeadlessAccountToMyAccountV3)
async def link_headless_account_to_my_account_v3_async(
    body: ModelLinkHeadlessAccountRequest,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Link headless account to current full account (LinkHeadlessAccountToMyAccountV3)

    Note:
    1. My account should be full account
    2. My account not linked to headless account's third platform.

    Properties:
        url: /iam/v3/public/users/me/headless/linkWithProgression

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelLinkHeadlessAccountRequest in body

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestErrorResponse

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = LinkHeadlessAccountToMyAccountV3.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListAdminsV3)
def list_admins_v3(
    after: Optional[str] = None,
    before: Optional[str] = None,
    end_date: Optional[str] = None,
    limit: Optional[int] = None,
    query: Optional[str] = None,
    role_id: Optional[str] = None,
    start_date: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List User Admins (ListAdminsV3)

    List all users that has admin role (role that has admin_role attribute set to true).
    Endpoint behavior :
    - if query parameter is defined, endpoint will search users whose email address and display name match with the query
    - if roleId parameter is defined, endpoint will search users that have the defined roleId
    - if startDate and endDate parameters is defined, endpoint will search users which created on the certain date range
    - if startDate parameter is defined, endpoint will search users that created start from the defined date
    - if endDate parameter is defined, endpoint will search users that created until the defined date

    In multi tenant mode :
    - if super admin search in super admin namespace, the result will be all admin users
    - if super admin search in game studio namespace, the result will be all admin users under the game studio namespace
    - if studio admin search in their studio namespace, the result will be all admin user in the game studio namespace

    The endpoint will return all admin from all namespace when called from publisher namespace.
    When not called from publisher namespace, the endpoint will return all admin from the path namespace.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/admins

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        after: (after) OPTIONAL str in query

        before: (before) OPTIONAL str in query

        end_date: (endDate) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        query: (query) OPTIONAL str in query

        role_id: (roleId) OPTIONAL str in query

        start_date: (startDate) OPTIONAL str in query

    Responses:
        200: OK - ModelGetUsersResponseWithPaginationV3 (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListAdminsV3.create(
        after=after,
        before=before,
        end_date=end_date,
        limit=limit,
        query=query,
        role_id=role_id,
        start_date=start_date,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListAdminsV3)
async def list_admins_v3_async(
    after: Optional[str] = None,
    before: Optional[str] = None,
    end_date: Optional[str] = None,
    limit: Optional[int] = None,
    query: Optional[str] = None,
    role_id: Optional[str] = None,
    start_date: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List User Admins (ListAdminsV3)

    List all users that has admin role (role that has admin_role attribute set to true).
    Endpoint behavior :
    - if query parameter is defined, endpoint will search users whose email address and display name match with the query
    - if roleId parameter is defined, endpoint will search users that have the defined roleId
    - if startDate and endDate parameters is defined, endpoint will search users which created on the certain date range
    - if startDate parameter is defined, endpoint will search users that created start from the defined date
    - if endDate parameter is defined, endpoint will search users that created until the defined date

    In multi tenant mode :
    - if super admin search in super admin namespace, the result will be all admin users
    - if super admin search in game studio namespace, the result will be all admin users under the game studio namespace
    - if studio admin search in their studio namespace, the result will be all admin user in the game studio namespace

    The endpoint will return all admin from all namespace when called from publisher namespace.
    When not called from publisher namespace, the endpoint will return all admin from the path namespace.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/admins

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        after: (after) OPTIONAL str in query

        before: (before) OPTIONAL str in query

        end_date: (endDate) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        query: (query) OPTIONAL str in query

        role_id: (roleId) OPTIONAL str in query

        start_date: (startDate) OPTIONAL str in query

    Responses:
        200: OK - ModelGetUsersResponseWithPaginationV3 (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListAdminsV3.create(
        after=after,
        before=before,
        end_date=end_date,
        limit=limit,
        query=query,
        role_id=role_id,
        start_date=start_date,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(ListCrossNamespaceAccountLink)
def list_cross_namespace_account_link(
    linking_token: str,
    user_id: str,
    platform_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Links existing account with another account in different namespace.  (ListCrossNamespaceAccountLink)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId} [POST]_**

    Access token from original namespace is needed as authorization header. Access token from designated account needed as form parameter to verify the ownership of that account.
    When platformID (device platfom ID) is specified, platform login method for that specific platform ID is removed.
    This means to protect account from second hand device usage.

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/crosslink

        method: POST

        tags: ["Users"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        platform_id: (platformId) OPTIONAL str in form_data

        linking_token: (linkingToken) REQUIRED str in form_data

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListCrossNamespaceAccountLink.create(
        linking_token=linking_token,
        user_id=user_id,
        platform_id=platform_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(ListCrossNamespaceAccountLink)
async def list_cross_namespace_account_link_async(
    linking_token: str,
    user_id: str,
    platform_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Links existing account with another account in different namespace.  (ListCrossNamespaceAccountLink)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId} [POST]_**

    Access token from original namespace is needed as authorization header. Access token from designated account needed as form parameter to verify the ownership of that account.
    When platformID (device platfom ID) is specified, platform login method for that specific platform ID is removed.
    This means to protect account from second hand device usage.

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/crosslink

        method: POST

        tags: ["Users"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        platform_id: (platformId) OPTIONAL str in form_data

        linking_token: (linkingToken) REQUIRED str in form_data

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListCrossNamespaceAccountLink.create(
        linking_token=linking_token,
        user_id=user_id,
        platform_id=platform_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(PlatformLink)
def platform_link(
    platform_id: str,
    ticket: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Link user's account with platform (PlatformLink)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId} [POST]_**

    **Prerequisite:** Platform client configuration need to be added to database for specific platformId. Namespace service URL need to be specified (refer to required environment variables).

    ## Supported platforms:
    - **steam**: The ticketâs value is the authentication code returned by Steam.
    - **steamopenid**: Steam's user authentication method using OpenID 2.0. The ticket's value is URL generated by Steam on web authentication
    - **facebook**: The ticketâs value is the authorization code returned by Facebook OAuth
    - **google**: The ticketâs value is the authorization code returned by Google OAuth
    - **oculus**: The ticketâs value is a string composed of Oculus's user ID and the nonce separated by a colon (:).
    - **twitch**: The ticketâs value is the authorization code returned by Twitch OAuth.
    - **android**: The ticket's value is the Androidâs device ID
    - **ios**: The ticket's value is the iOSâs device ID.
    - **apple**: The ticketâs value is the authorization code returned by Apple OAuth.
    - **device**: Every device that doesânt run Android and iOS is categorized as a device platform. The ticket's value is the deviceâs ID.
    - **discord**: The ticketâs value is the authorization code returned by Discord OAuth.

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link

        method: POST

        tags: ["Users"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        ticket: (ticket) REQUIRED str in form_data

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - (20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (20008: user not found)

        409: Conflict - (10163: platform is already linked with the user account)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PlatformLink.create(
        platform_id=platform_id,
        ticket=ticket,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PlatformLink)
async def platform_link_async(
    platform_id: str,
    ticket: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Link user's account with platform (PlatformLink)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId} [POST]_**

    **Prerequisite:** Platform client configuration need to be added to database for specific platformId. Namespace service URL need to be specified (refer to required environment variables).

    ## Supported platforms:
    - **steam**: The ticketâs value is the authentication code returned by Steam.
    - **steamopenid**: Steam's user authentication method using OpenID 2.0. The ticket's value is URL generated by Steam on web authentication
    - **facebook**: The ticketâs value is the authorization code returned by Facebook OAuth
    - **google**: The ticketâs value is the authorization code returned by Google OAuth
    - **oculus**: The ticketâs value is a string composed of Oculus's user ID and the nonce separated by a colon (:).
    - **twitch**: The ticketâs value is the authorization code returned by Twitch OAuth.
    - **android**: The ticket's value is the Androidâs device ID
    - **ios**: The ticket's value is the iOSâs device ID.
    - **apple**: The ticketâs value is the authorization code returned by Apple OAuth.
    - **device**: Every device that doesânt run Android and iOS is categorized as a device platform. The ticket's value is the deviceâs ID.
    - **discord**: The ticketâs value is the authorization code returned by Discord OAuth.

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link

        method: POST

        tags: ["Users"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        ticket: (ticket) REQUIRED str in form_data

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - (20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (20008: user not found)

        409: Conflict - (10163: platform is already linked with the user account)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PlatformLink.create(
        platform_id=platform_id,
        ticket=ticket,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(PlatformUnlink)
def platform_unlink(
    platform_id: str,
    user_id: str,
    platform_namespace: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Unlink user's account with platform (PlatformUnlink)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId} [DELETE]_**
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/all [DELETE]_**

    ## Supported platforms:
    - **steam**
    - **steamopenid**
    - **facebook**
    - **google**
    - **oculus**
    - **twitch**
    - **android**
    - **ios**
    - **device**
    - **justice**: A user might have several 'justiceâ platform on different namespaces. Thatâs why the platform_namespace need to be specified when the platform ID is âjusticeâ. The platform_namespace is the designated userâs namespace.
    Unlink user's account with platform. 'justice' platform might have multiple accounts from different namespaces linked. platform_namespace need to be specified when the platform ID is 'justice'.
    Unlinking justice platform will enable password token grant and password update.

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/platforms/{platformId}/unlink

        method: POST

        tags: ["Users"]

        consumes: ["application/x-www-form-urlencoded", "text/plain"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        platform_namespace: (platform_namespace) OPTIONAL str in form_data

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - (20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (20008: user not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PlatformUnlink.create(
        platform_id=platform_id,
        user_id=user_id,
        platform_namespace=platform_namespace,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PlatformUnlink)
async def platform_unlink_async(
    platform_id: str,
    user_id: str,
    platform_namespace: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Unlink user's account with platform (PlatformUnlink)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId} [DELETE]_**
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/all [DELETE]_**

    ## Supported platforms:
    - **steam**
    - **steamopenid**
    - **facebook**
    - **google**
    - **oculus**
    - **twitch**
    - **android**
    - **ios**
    - **device**
    - **justice**: A user might have several 'justiceâ platform on different namespaces. Thatâs why the platform_namespace need to be specified when the platform ID is âjusticeâ. The platform_namespace is the designated userâs namespace.
    Unlink user's account with platform. 'justice' platform might have multiple accounts from different namespaces linked. platform_namespace need to be specified when the platform ID is 'justice'.
    Unlinking justice platform will enable password token grant and password update.

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/platforms/{platformId}/unlink

        method: POST

        tags: ["Users"]

        consumes: ["application/x-www-form-urlencoded", "text/plain"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        platform_namespace: (platform_namespace) OPTIONAL str in form_data

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - (20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (20008: user not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PlatformUnlink.create(
        platform_id=platform_id,
        user_id=user_id,
        platform_namespace=platform_namespace,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(PublicBulkGetUsers)
def public_bulk_get_users(
    body: ModelUserIDsRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get users' basic info by user Id (PublicBulkGetUsers)

    Notes:
    - This endpoint bulk get users' basic info by userId, max allowed 100 at a time
    - If namespace is game, will search by game user Id, other wise will search by publisher namespace
    - **Result will include displayName(if it exists)**

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/bulk/basic

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserIDsRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelListBulkUserResponse (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 10185: publisher namespace not allowed)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicBulkGetUsers.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PublicBulkGetUsers)
async def public_bulk_get_users_async(
    body: ModelUserIDsRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get users' basic info by user Id (PublicBulkGetUsers)

    Notes:
    - This endpoint bulk get users' basic info by userId, max allowed 100 at a time
    - If namespace is game, will search by game user Id, other wise will search by publisher namespace
    - **Result will include displayName(if it exists)**

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/bulk/basic

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserIDsRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelListBulkUserResponse (OK)

        400: Bad Request - RestErrorResponse (20002: validation error | 10185: publisher namespace not allowed)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicBulkGetUsers.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicCreateJusticeUser)
def public_create_justice_user(
    target_namespace: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create Justice User from Publisher User (PublicCreateJusticeUser)

    Create Justice User from Publisher User information. It will check first if Justice User on target namespace already exist.

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/me/platforms/justice/{targetNamespace}

        method: POST

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        target_namespace: (targetNamespace) REQUIRED str in path

    Responses:
        201: Created - ModelCreateJusticeUserResponse (Created)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicCreateJusticeUser.create(
        target_namespace=target_namespace,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicCreateJusticeUser)
async def public_create_justice_user_async(
    target_namespace: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create Justice User from Publisher User (PublicCreateJusticeUser)

    Create Justice User from Publisher User information. It will check first if Justice User on target namespace already exist.

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/me/platforms/justice/{targetNamespace}

        method: POST

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        target_namespace: (targetNamespace) REQUIRED str in path

    Responses:
        201: Created - ModelCreateJusticeUserResponse (Created)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicCreateJusticeUser.create(
        target_namespace=target_namespace,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(PublicCreateUserV2)
def public_create_user_v2(
    body: ModelUserCreateRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create User (PublicCreateUserV2)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users [POST]_**
    - **Substitute endpoint: _/iam/v4/public/namespaces/{namespace}/users [POST]_**
    - **Note:**
    1. v3 & v4 introduce optional verification code
    2. format differenceï¼Pascal case => Camel case)

    Available Authentication Types:
    1. *EMAILPASSWD*: an authentication type used for new user registration through email.
    Country use ISO3166-1 alpha-2 two letter, e.g. US.

    Properties:
        url: /iam/v2/public/namespaces/{namespace}/users

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserCreateRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelUserCreateResponse (Created)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        409: Conflict - (Conflict)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicCreateUserV2.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PublicCreateUserV2)
async def public_create_user_v2_async(
    body: ModelUserCreateRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create User (PublicCreateUserV2)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users [POST]_**
    - **Substitute endpoint: _/iam/v4/public/namespaces/{namespace}/users [POST]_**
    - **Note:**
    1. v3 & v4 introduce optional verification code
    2. format differenceï¼Pascal case => Camel case)

    Available Authentication Types:
    1. *EMAILPASSWD*: an authentication type used for new user registration through email.
    Country use ISO3166-1 alpha-2 two letter, e.g. US.

    Properties:
        url: /iam/v2/public/namespaces/{namespace}/users

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserCreateRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelUserCreateResponse (Created)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        409: Conflict - (Conflict)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicCreateUserV2.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicCreateUserV3)
def public_create_user_v3(
    body: ModelUserCreateRequestV3,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create User (PublicCreateUserV3)

    Available Authentication Types:
    1. **EMAILPASSWD**: an authentication type used for new user registration through email.

    **Note**:
    * **uniqueDisplayName**: this is required when uniqueDisplayNameEnabled/UNIQUE_DISPLAY_NAME_ENABLED is true.
    * **code**: this is required when mandatoryEmailVerificationEnabled config is true. please refer to the config from /iam/v3/public/namespaces/{namespace}/config/{configKey} [GET] API.

    Country use ISO3166-1 alpha-2 two letter, e.g. US.
    Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.
    This endpoint support accepting agreements for the created user. Supply the accepted agreements in acceptedPolicies attribute.

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserCreateRequestV3 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelUserCreateResponseV3 (Created)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error | 10130: user under age | 10152: verification code not found)

        403: Forbidden - RestErrorResponse (20003: forbidden access | 10213: country is blocked)

        404: Not Found - RestErrorResponse (10154: country not found)

        409: Conflict - RestErrorResponse (10133: email already used | 10222: unique display name already exists)

        429: Too Many Requests - RestErrorResponse (20007: too many requests)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicCreateUserV3.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicCreateUserV3)
async def public_create_user_v3_async(
    body: ModelUserCreateRequestV3,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create User (PublicCreateUserV3)

    Available Authentication Types:
    1. **EMAILPASSWD**: an authentication type used for new user registration through email.

    **Note**:
    * **uniqueDisplayName**: this is required when uniqueDisplayNameEnabled/UNIQUE_DISPLAY_NAME_ENABLED is true.
    * **code**: this is required when mandatoryEmailVerificationEnabled config is true. please refer to the config from /iam/v3/public/namespaces/{namespace}/config/{configKey} [GET] API.

    Country use ISO3166-1 alpha-2 two letter, e.g. US.
    Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.
    This endpoint support accepting agreements for the created user. Supply the accepted agreements in acceptedPolicies attribute.

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserCreateRequestV3 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelUserCreateResponseV3 (Created)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error | 10130: user under age | 10152: verification code not found)

        403: Forbidden - RestErrorResponse (20003: forbidden access | 10213: country is blocked)

        404: Not Found - RestErrorResponse (10154: country not found)

        409: Conflict - RestErrorResponse (10133: email already used | 10222: unique display name already exists)

        429: Too Many Requests - RestErrorResponse (20007: too many requests)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicCreateUserV3.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(PublicDeletePlatformLinkV2)
def public_delete_platform_link_v2(
    platform_id: str,
    user_id: str,
    platform_namespace: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete the link of user's account with platform (PublicDeletePlatformLinkV2)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId} [DELETE]_**
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/all [DELETE]_**

    ## Supported platforms:
    - **steam**
    - **steamopenid**
    - **facebook**
    - **google**
    - **oculus**
    - **twitch**
    - **android**
    - **ios**
    - **device**
    - **discord**

    Delete link of user's account with platform. 'justice' platform might have multiple accounts from different namespaces linked. platform_namespace need to be specified when the platform ID is 'justice'.
    Delete link of justice platform will enable password token grant and password update.

    Properties:
        url: /iam/v2/public/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link

        method: DELETE

        tags: ["Users"]

        consumes: ["application/x-www-form-urlencoded", "text/plain"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        platform_namespace: (platform_namespace) OPTIONAL str in form_data

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - (20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (20008: user not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicDeletePlatformLinkV2.create(
        platform_id=platform_id,
        user_id=user_id,
        platform_namespace=platform_namespace,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PublicDeletePlatformLinkV2)
async def public_delete_platform_link_v2_async(
    platform_id: str,
    user_id: str,
    platform_namespace: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete the link of user's account with platform (PublicDeletePlatformLinkV2)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId} [DELETE]_**
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/all [DELETE]_**

    ## Supported platforms:
    - **steam**
    - **steamopenid**
    - **facebook**
    - **google**
    - **oculus**
    - **twitch**
    - **android**
    - **ios**
    - **device**
    - **discord**

    Delete link of user's account with platform. 'justice' platform might have multiple accounts from different namespaces linked. platform_namespace need to be specified when the platform ID is 'justice'.
    Delete link of justice platform will enable password token grant and password update.

    Properties:
        url: /iam/v2/public/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link

        method: DELETE

        tags: ["Users"]

        consumes: ["application/x-www-form-urlencoded", "text/plain"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        platform_namespace: (platform_namespace) OPTIONAL str in form_data

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - (20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (20008: user not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicDeletePlatformLinkV2.create(
        platform_id=platform_id,
        user_id=user_id,
        platform_namespace=platform_namespace,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicForceLinkPlatformWithProgression)
def public_force_link_platform_with_progression(
    body: ModelLinkPlatformAccountWithProgressionRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Force link 3rd platform account and transfer progression (PublicForceLinkPlatformWithProgression)

    Force update other account's Platform Account relation to current User Account.
    This endpoint can transfer progression from 3rd platform binding account's to current account.
    This endpoint need the same requestID which also used in [Get link status](#operations-Users-PublicGetAsyncStatus).


    **Authentication:**
    The _**userId**_ parameter should match the one in the access token.

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/{userId}/platforms/linkWithProgression

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelLinkPlatformAccountWithProgressionRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicForceLinkPlatformWithProgression.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicForceLinkPlatformWithProgression)
async def public_force_link_platform_with_progression_async(
    body: ModelLinkPlatformAccountWithProgressionRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Force link 3rd platform account and transfer progression (PublicForceLinkPlatformWithProgression)

    Force update other account's Platform Account relation to current User Account.
    This endpoint can transfer progression from 3rd platform binding account's to current account.
    This endpoint need the same requestID which also used in [Get link status](#operations-Users-PublicGetAsyncStatus).


    **Authentication:**
    The _**userId**_ parameter should match the one in the access token.

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/{userId}/platforms/linkWithProgression

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelLinkPlatformAccountWithProgressionRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicForceLinkPlatformWithProgression.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicForcePlatformLinkV3)
def public_force_platform_link_v3(
    platform_id: str,
    ticket: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Force linking user's account with platform (PublicForcePlatformLinkV3)

    Force linking user account with platform.
    If this platform account was already linked to another user account, this endpoint will perform force linking and remove platform from that conflict user, not only from the current request namespace but also include all the enrolled namespaces.
    If current user have linked to this platform with another platform account (include once linked but it is unlinked now), it will not allow user to perform linking.
    ## Supported platforms:
    - **steam**: The platform_tokenâs value is the binary ticket returned by Steam.
    - **steamopenid**: Steam's user authentication method using OpenID 2.0. The platform_token's value is URL generated by Steam on web authentication
    - **facebook**: The platform_tokenâs value is the authorization code returned by Facebook OAuth
    - **google**: The platform_tokenâs value is the authorization code returned by Google OAuth
    - **googleplaygames**: The platform_tokenâs value is the authorization code returned by Google play games OAuth
    - **oculus**: The platform_tokenâs value is a string composed of Oculus's user ID and the nonce separated by a colon (:).
    - **twitch**: The platform_tokenâs value is the authorization code returned by Twitch OAuth.
    - **discord**: The platform_tokenâs value is the authorization code returned by Discord OAuth
    - **android**: The device_id is the Androidâs device ID
    - **ios**: The device_id is the iOSâs device ID.
    - **apple**: The platform_tokenâs value is the authorization code returned by Apple OAuth.(We will use this code to generate APP token)
    - **device**: Every device that doesânt run Android and iOS is categorized as a device. The device_id is the deviceâs ID.
    - **justice**: The platform_tokenâs value is the designated userâs access token.
    - **epicgames**: The platform_tokenâs value is an access-token obtained from Epicgames EOS Account Service.
    - **ps4**: The platform_tokenâs value is the authorization code returned by Sony OAuth.
    - **ps5**: The platform_tokenâs value is the authorization code returned by Sony OAuth.
    - **nintendo**: The platform_tokenâs value is the id_token returned by Nintendo OAuth.
    - **awscognito**: The platform_tokenâs value is the aws cognito access token or id token (JWT).
    - **live**: The platform_tokenâs value is xbox XSTS token
    - **xblweb**: The platform_tokenâs value is code returned by xbox after login
    - **netflix**: The platform_tokenâs value is GAT (Gamer Access Token) returned by Netflix backend
    - **snapchat**: The platform_tokenâs value is the authorization code returned by Snapchat OAuth.
    - **for specific generic oauth (OIDC)**: The platform_tokenâs value should be the same type as created OIDC auth type whether it is auth code, idToken or bearerToken.

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/force

        method: POST

        tags: ["Users"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        ticket: (ticket) REQUIRED str in form_data

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        404: Not Found - RestErrorResponse (10174: platform client not found)

        409: Conflict - RestErrorResponse (10163: platform is already linked with the user account | 10172: platform user is already linked with the account)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicForcePlatformLinkV3.create(
        platform_id=platform_id,
        ticket=ticket,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicForcePlatformLinkV3)
async def public_force_platform_link_v3_async(
    platform_id: str,
    ticket: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Force linking user's account with platform (PublicForcePlatformLinkV3)

    Force linking user account with platform.
    If this platform account was already linked to another user account, this endpoint will perform force linking and remove platform from that conflict user, not only from the current request namespace but also include all the enrolled namespaces.
    If current user have linked to this platform with another platform account (include once linked but it is unlinked now), it will not allow user to perform linking.
    ## Supported platforms:
    - **steam**: The platform_tokenâs value is the binary ticket returned by Steam.
    - **steamopenid**: Steam's user authentication method using OpenID 2.0. The platform_token's value is URL generated by Steam on web authentication
    - **facebook**: The platform_tokenâs value is the authorization code returned by Facebook OAuth
    - **google**: The platform_tokenâs value is the authorization code returned by Google OAuth
    - **googleplaygames**: The platform_tokenâs value is the authorization code returned by Google play games OAuth
    - **oculus**: The platform_tokenâs value is a string composed of Oculus's user ID and the nonce separated by a colon (:).
    - **twitch**: The platform_tokenâs value is the authorization code returned by Twitch OAuth.
    - **discord**: The platform_tokenâs value is the authorization code returned by Discord OAuth
    - **android**: The device_id is the Androidâs device ID
    - **ios**: The device_id is the iOSâs device ID.
    - **apple**: The platform_tokenâs value is the authorization code returned by Apple OAuth.(We will use this code to generate APP token)
    - **device**: Every device that doesânt run Android and iOS is categorized as a device. The device_id is the deviceâs ID.
    - **justice**: The platform_tokenâs value is the designated userâs access token.
    - **epicgames**: The platform_tokenâs value is an access-token obtained from Epicgames EOS Account Service.
    - **ps4**: The platform_tokenâs value is the authorization code returned by Sony OAuth.
    - **ps5**: The platform_tokenâs value is the authorization code returned by Sony OAuth.
    - **nintendo**: The platform_tokenâs value is the id_token returned by Nintendo OAuth.
    - **awscognito**: The platform_tokenâs value is the aws cognito access token or id token (JWT).
    - **live**: The platform_tokenâs value is xbox XSTS token
    - **xblweb**: The platform_tokenâs value is code returned by xbox after login
    - **netflix**: The platform_tokenâs value is GAT (Gamer Access Token) returned by Netflix backend
    - **snapchat**: The platform_tokenâs value is the authorization code returned by Snapchat OAuth.
    - **for specific generic oauth (OIDC)**: The platform_tokenâs value should be the same type as created OIDC auth type whether it is auth code, idToken or bearerToken.

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/force

        method: POST

        tags: ["Users"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        ticket: (ticket) REQUIRED str in form_data

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        404: Not Found - RestErrorResponse (10174: platform client not found)

        409: Conflict - RestErrorResponse (10163: platform is already linked with the user account | 10172: platform user is already linked with the account)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicForcePlatformLinkV3.create(
        platform_id=platform_id,
        ticket=ticket,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(PublicForgotPasswordV2)
def public_forgot_password_v2(
    body: ModelSendVerificationCodeRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Request Password Reset Code (PublicForgotPasswordV2)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/forgot [POST]_**

    **Special note for publisher-game scenario:** Game Client should provide game namespace path parameter and Publisher Client should provide publisher namespace path parameter.
    The password reset code will be sent to the publisher account's email address.

    Properties:
        url: /iam/v2/public/namespaces/{namespace}/users/forgotPassword

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelSendVerificationCodeRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - (20019: unable to parse request body)

        404: Not Found - (20008: user not found)

        429: Too Many Requests - (20007: too many requests)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicForgotPasswordV2.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PublicForgotPasswordV2)
async def public_forgot_password_v2_async(
    body: ModelSendVerificationCodeRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Request Password Reset Code (PublicForgotPasswordV2)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/forgot [POST]_**

    **Special note for publisher-game scenario:** Game Client should provide game namespace path parameter and Publisher Client should provide publisher namespace path parameter.
    The password reset code will be sent to the publisher account's email address.

    Properties:
        url: /iam/v2/public/namespaces/{namespace}/users/forgotPassword

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelSendVerificationCodeRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - (20019: unable to parse request body)

        404: Not Found - (20008: user not found)

        429: Too Many Requests - (20007: too many requests)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicForgotPasswordV2.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicForgotPasswordV3)
def public_forgot_password_v3(
    body: ModelForgotPasswordRequestV3,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Request Password Reset Code (PublicForgotPasswordV3)

    **Special note for publisher-game scenario:**
    Game Client should provide game namespace path parameter and Publisher
    Client should provide publisher namespace path parameter.
    The password reset code will be sent to the publisher account's email address.
    action code : 10104

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/forgot

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelForgotPasswordRequestV3 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        404: Not Found - RestErrorResponse (20008: user not found)

        429: Too Many Requests - RestErrorResponse (20007: too many requests)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicForgotPasswordV3.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicForgotPasswordV3)
async def public_forgot_password_v3_async(
    body: ModelForgotPasswordRequestV3,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Request Password Reset Code (PublicForgotPasswordV3)

    **Special note for publisher-game scenario:**
    Game Client should provide game namespace path parameter and Publisher
    Client should provide publisher namespace path parameter.
    The password reset code will be sent to the publisher account's email address.
    action code : 10104

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/forgot

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelForgotPasswordRequestV3 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        404: Not Found - RestErrorResponse (20008: user not found)

        429: Too Many Requests - RestErrorResponse (20007: too many requests)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicForgotPasswordV3.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetAsyncStatus)
def public_get_async_status(
    request_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Linking Progress Status (PublicGetAsyncStatus)

    This endpoint is used to get linking status.
    This API need logged user and user can only request its own linking status.

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/requests/{requestId}/async/status

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        request_id: (requestId) REQUIRED str in path

    Responses:
        200: OK - ModelLinkRequest (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetAsyncStatus.create(
        request_id=request_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetAsyncStatus)
async def public_get_async_status_async(
    request_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Linking Progress Status (PublicGetAsyncStatus)

    This endpoint is used to get linking status.
    This API need logged user and user can only request its own linking status.

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/requests/{requestId}/async/status

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        request_id: (requestId) REQUIRED str in path

    Responses:
        200: OK - ModelLinkRequest (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetAsyncStatus.create(
        request_id=request_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(PublicGetCountryAgeRestriction)
def public_get_country_age_restriction(
    country_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public get age restriction by country code (PublicGetCountryAgeRestriction)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/agerestrictions/countries/{countryCode} [GET]_**

    Properties:
        url: /iam/v2/public/namespaces/{namespace}/countries/{countryCode}/agerestrictions

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        country_code: (countryCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - AccountcommonCountry (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetCountryAgeRestriction.create(
        country_code=country_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PublicGetCountryAgeRestriction)
async def public_get_country_age_restriction_async(
    country_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public get age restriction by country code (PublicGetCountryAgeRestriction)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/agerestrictions/countries/{countryCode} [GET]_**

    Properties:
        url: /iam/v2/public/namespaces/{namespace}/countries/{countryCode}/agerestrictions

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        country_code: (countryCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - AccountcommonCountry (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetCountryAgeRestriction.create(
        country_code=country_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetCountryAgeRestrictionV3)
def public_get_country_age_restriction_v3(
    country_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public get age restriction by country code (PublicGetCountryAgeRestrictionV3)

    Get age restriction by country code. It will always get by publisher namespace

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/agerestrictions/countries/{countryCode}

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        country_code: (countryCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelCountryV3Response (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetCountryAgeRestrictionV3.create(
        country_code=country_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetCountryAgeRestrictionV3)
async def public_get_country_age_restriction_v3_async(
    country_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public get age restriction by country code (PublicGetCountryAgeRestrictionV3)

    Get age restriction by country code. It will always get by publisher namespace

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/agerestrictions/countries/{countryCode}

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        country_code: (countryCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelCountryV3Response (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetCountryAgeRestrictionV3.create(
        country_code=country_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetLinkHeadlessAccountToMyAccountConflictV3)
def public_get_link_headless_account_to_my_account_conflict_v3(
    one_time_link_code: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get conflict result when link headless account to current full account by one time code (PublicGetLinkHeadlessAccountToMyAccountConflictV3)

    Note:
    1. My account should be full account
    2. My account not linked to request headless account's third platform.

    After client resolving the conflict, it will call endpoint `/iam/v3/public/users/me/headless/linkWithProgression [POST]`

    Properties:
        url: /iam/v3/public/users/me/headless/link/conflict

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        one_time_link_code: (oneTimeLinkCode) REQUIRED str in query

    Responses:
        200: OK - ModelGetLinkHeadlessAccountConflictResponse (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = PublicGetLinkHeadlessAccountToMyAccountConflictV3.create(
        one_time_link_code=one_time_link_code,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetLinkHeadlessAccountToMyAccountConflictV3)
async def public_get_link_headless_account_to_my_account_conflict_v3_async(
    one_time_link_code: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get conflict result when link headless account to current full account by one time code (PublicGetLinkHeadlessAccountToMyAccountConflictV3)

    Note:
    1. My account should be full account
    2. My account not linked to request headless account's third platform.

    After client resolving the conflict, it will call endpoint `/iam/v3/public/users/me/headless/linkWithProgression [POST]`

    Properties:
        url: /iam/v3/public/users/me/headless/link/conflict

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        one_time_link_code: (oneTimeLinkCode) REQUIRED str in query

    Responses:
        200: OK - ModelGetLinkHeadlessAccountConflictResponse (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = PublicGetLinkHeadlessAccountToMyAccountConflictV3.create(
        one_time_link_code=one_time_link_code,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetMyProfileAllowUpdateStatusV3)
def public_get_my_profile_allow_update_status_v3(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Public get my profile allowed update status. (PublicGetMyProfileAllowUpdateStatusV3)

    This API is for user to get self profile update allow status.
    Note: If the config is not found, this API will return a config with unlimited.

    Properties:
        url: /iam/v3/public/users/me/profileStatus

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelUserProfileUpdateAllowStatus (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = PublicGetMyProfileAllowUpdateStatusV3.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetMyProfileAllowUpdateStatusV3)
async def public_get_my_profile_allow_update_status_v3_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Public get my profile allowed update status. (PublicGetMyProfileAllowUpdateStatusV3)

    This API is for user to get self profile update allow status.
    Note: If the config is not found, this API will return a config with unlimited.

    Properties:
        url: /iam/v3/public/users/me/profileStatus

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelUserProfileUpdateAllowStatus (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = PublicGetMyProfileAllowUpdateStatusV3.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetMyRedirectionAfterLinkV3)
def public_get_my_redirection_after_link_v3(
    one_time_link_code: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get My Forward URI Link (PublicGetMyRedirectionAfterLinkV3)

    Get my redirect uri after link, this endpoint will return NotFound(404) if redirect uri is not found

    Properties:
        url: /iam/v3/public/users/me/link/redirection

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        one_time_link_code: (oneTimeLinkCode) REQUIRED str in query

    Responses:
        200: OK - ModelOneTimeCodeLinkRedirectionResponse (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        404: Not Found - (Not Found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = PublicGetMyRedirectionAfterLinkV3.create(
        one_time_link_code=one_time_link_code,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetMyRedirectionAfterLinkV3)
async def public_get_my_redirection_after_link_v3_async(
    one_time_link_code: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get My Forward URI Link (PublicGetMyRedirectionAfterLinkV3)

    Get my redirect uri after link, this endpoint will return NotFound(404) if redirect uri is not found

    Properties:
        url: /iam/v3/public/users/me/link/redirection

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        one_time_link_code: (oneTimeLinkCode) REQUIRED str in query

    Responses:
        200: OK - ModelOneTimeCodeLinkRedirectionResponse (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        404: Not Found - (Not Found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = PublicGetMyRedirectionAfterLinkV3.create(
        one_time_link_code=one_time_link_code,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetMyUserV3)
def public_get_my_user_v3(
    include_all_platforms: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get My User (PublicGetMyUserV3)

    Get my user data

    __Supported 3rd platforms:__

    * __PSN(ps4web, ps4, ps5)__
    * account id
    * display name
    * avatar
    * __Xbox(live, xblweb)__
    * xuid or pxuid
    * display name
    * __Steam(steam, steamopenid)__
    * steam id
    * display name
    * avatar
    * __EpicGames(epicgames)__
    * epic account id
    * display name

    action code : 10147

    Properties:
        url: /iam/v3/public/users/me

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        include_all_platforms: (includeAllPlatforms) OPTIONAL bool in query

    Responses:
        200: OK - ModelUserResponseV3 (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = PublicGetMyUserV3.create(
        include_all_platforms=include_all_platforms,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetMyUserV3)
async def public_get_my_user_v3_async(
    include_all_platforms: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get My User (PublicGetMyUserV3)

    Get my user data

    __Supported 3rd platforms:__

    * __PSN(ps4web, ps4, ps5)__
    * account id
    * display name
    * avatar
    * __Xbox(live, xblweb)__
    * xuid or pxuid
    * display name
    * __Steam(steam, steamopenid)__
    * steam id
    * display name
    * avatar
    * __EpicGames(epicgames)__
    * epic account id
    * display name

    action code : 10147

    Properties:
        url: /iam/v3/public/users/me

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        include_all_platforms: (includeAllPlatforms) OPTIONAL bool in query

    Responses:
        200: OK - ModelUserResponseV3 (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = PublicGetMyUserV3.create(
        include_all_platforms=include_all_platforms,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetOpenidUserInfoV3)
def public_get_openid_user_info_v3(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get my user info (PublicGetOpenidUserInfoV3)

    This API is created to match openid userinfo standard => https://openid.net/specs/openid-connect-core-1_0.html#UserInfo

    Properties:
        url: /iam/v3/public/users/userinfo

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelPublicOpenIDUserInfoResponse (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = PublicGetOpenidUserInfoV3.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetOpenidUserInfoV3)
async def public_get_openid_user_info_v3_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get my user info (PublicGetOpenidUserInfoV3)

    This API is created to match openid userinfo standard => https://openid.net/specs/openid-connect-core-1_0.html#UserInfo

    Properties:
        url: /iam/v3/public/users/userinfo

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelPublicOpenIDUserInfoResponse (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = PublicGetOpenidUserInfoV3.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetPublisherUserV3)
def public_get_publisher_user_v3(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Publisher User (PublicGetPublisherUserV3)

    **Restriction:**
    Path Parameter **namespace** can be provided only with game namespace

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/{userId}/publisher

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelGetPublisherUserResponse (OK)

        400: Bad Request - RestErrorResponse (Error Code: 7239 - Error Message: wrong namespace: required game namespace)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetPublisherUserV3.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetPublisherUserV3)
async def public_get_publisher_user_v3_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Publisher User (PublicGetPublisherUserV3)

    **Restriction:**
    Path Parameter **namespace** can be provided only with game namespace

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/{userId}/publisher

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelGetPublisherUserResponse (OK)

        400: Bad Request - RestErrorResponse (Error Code: 7239 - Error Message: wrong namespace: required game namespace)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetPublisherUserV3.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(PublicGetUserBan)
def public_get_user_ban(
    user_id: str,
    active_only: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user's bans (PublicGetUserBan)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/{userId}/bans [GET]_**

    Properties:
        url: /iam/v2/public/namespaces/{namespace}/users/{userId}/bans

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

    Responses:
        200: OK - List[ModelUserBanResponse] (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserBan.create(
        user_id=user_id,
        active_only=active_only,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PublicGetUserBan)
async def public_get_user_ban_async(
    user_id: str,
    active_only: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user's bans (PublicGetUserBan)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/{userId}/bans [GET]_**

    Properties:
        url: /iam/v2/public/namespaces/{namespace}/users/{userId}/bans

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

    Responses:
        200: OK - List[ModelUserBanResponse] (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserBan.create(
        user_id=user_id,
        active_only=active_only,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetUserBanHistoryV3)
def public_get_user_ban_history_v3(
    user_id: str,
    active_only: Optional[bool] = None,
    after: Optional[str] = None,
    before: Optional[str] = None,
    limit: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user's bans (PublicGetUserBanHistoryV3)

    Notes:
    - This endpoint retrieve the first page of the data if after and before parameters is empty
    - **The pagination is not working yet**


    **Authentication:**
    The _**userId**_ parameter should match the one in the access token.

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/{userId}/bans

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        after: (after) OPTIONAL str in query

        before: (before) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

    Responses:
        200: OK - ModelGetUserBanV3Response (OK)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found | 10139: platform account not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserBanHistoryV3.create(
        user_id=user_id,
        active_only=active_only,
        after=after,
        before=before,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetUserBanHistoryV3)
async def public_get_user_ban_history_v3_async(
    user_id: str,
    active_only: Optional[bool] = None,
    after: Optional[str] = None,
    before: Optional[str] = None,
    limit: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user's bans (PublicGetUserBanHistoryV3)

    Notes:
    - This endpoint retrieve the first page of the data if after and before parameters is empty
    - **The pagination is not working yet**


    **Authentication:**
    The _**userId**_ parameter should match the one in the access token.

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/{userId}/bans

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        after: (after) OPTIONAL str in query

        before: (before) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

    Responses:
        200: OK - ModelGetUserBanV3Response (OK)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found | 10139: platform account not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserBanHistoryV3.create(
        user_id=user_id,
        active_only=active_only,
        after=after,
        before=before,
        limit=limit,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(PublicGetUserByPlatformUserIDV3)
def public_get_user_by_platform_user_idv3(
    platform_id: str,
    platform_user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User By Platform User ID (PublicGetUserByPlatformUserIDV3)

    Get User By Platform User ID.
    This endpoint return user information by given platform ID and platform user ID.
    Several platforms are grouped under account groups, you can use either platform ID or platform group as platformId path parameter.
    example: for steam network platform, you can use steamnetwork / steam / steamopenid as platformId path parameter.
    **Note**: this is deprecated, substitute endpoint: /iam/v4/public/namespaces/{namespace}/platforms/{platformId}/users/{platformUserId} [GET]


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
        url: /iam/v3/public/namespaces/{namespace}/platforms/{platformId}/users/{platformUserId}

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        platform_user_id: (platformUserId) REQUIRED str in path

    Responses:
        200: OK - ModelUserResponseV3 (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found | 10139: platform account not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserByPlatformUserIDV3.create(
        platform_id=platform_id,
        platform_user_id=platform_user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PublicGetUserByPlatformUserIDV3)
async def public_get_user_by_platform_user_idv3_async(
    platform_id: str,
    platform_user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User By Platform User ID (PublicGetUserByPlatformUserIDV3)

    Get User By Platform User ID.
    This endpoint return user information by given platform ID and platform user ID.
    Several platforms are grouped under account groups, you can use either platform ID or platform group as platformId path parameter.
    example: for steam network platform, you can use steamnetwork / steam / steamopenid as platformId path parameter.
    **Note**: this is deprecated, substitute endpoint: /iam/v4/public/namespaces/{namespace}/platforms/{platformId}/users/{platformUserId} [GET]


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
        url: /iam/v3/public/namespaces/{namespace}/platforms/{platformId}/users/{platformUserId}

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        platform_user_id: (platformUserId) REQUIRED str in path

    Responses:
        200: OK - ModelUserResponseV3 (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found | 10139: platform account not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserByPlatformUserIDV3.create(
        platform_id=platform_id,
        platform_user_id=platform_user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(PublicGetUserByUserIdV3)
def public_get_user_by_user_id_v3(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User By User ID (PublicGetUserByUserIdV3)

    This endpoint retrieve user attributes. action code: 10129
    **Substitute endpoint:** /v4/public/namespaces/{namespace}/users/{userId} [READ]

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/{userId}

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelPublicUserResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        404: Not Found - RestErrorResponse (20008: user not found | 10139: platform account not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserByUserIdV3.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PublicGetUserByUserIdV3)
async def public_get_user_by_user_id_v3_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User By User ID (PublicGetUserByUserIdV3)

    This endpoint retrieve user attributes. action code: 10129
    **Substitute endpoint:** /v4/public/namespaces/{namespace}/users/{userId} [READ]

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/{userId}

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelPublicUserResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        404: Not Found - RestErrorResponse (20008: user not found | 10139: platform account not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserByUserIdV3.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(PublicGetUserByUserIDV2)
def public_get_user_by_user_idv2(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User By User ID (PublicGetUserByUserIDV2)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint(Public): _/iam/v3/public/namespaces/{namespace}/users/{userId} [GET]_**
    - **Substitute endpoint(Admin): _/iam/v3/admin/namespaces/{namespace}/users/{userId} [GET]_**
    - **Note:**
    format difference in response: Pascal case => Camel case

    Properties:
        url: /iam/v2/public/namespaces/{namespace}/users/{userId}

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelUserResponse (OK)

        404: Not Found - (20008: user not found | 10139: platform account not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserByUserIDV2.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PublicGetUserByUserIDV2)
async def public_get_user_by_user_idv2_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User By User ID (PublicGetUserByUserIDV2)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint(Public): _/iam/v3/public/namespaces/{namespace}/users/{userId} [GET]_**
    - **Substitute endpoint(Admin): _/iam/v3/admin/namespaces/{namespace}/users/{userId} [GET]_**
    - **Note:**
    format difference in response: Pascal case => Camel case

    Properties:
        url: /iam/v2/public/namespaces/{namespace}/users/{userId}

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelUserResponse (OK)

        404: Not Found - (20008: user not found | 10139: platform account not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserByUserIDV2.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetUserInformationV3)
def public_get_user_information_v3(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user's information v3 (PublicGetUserInformationV3)

    This endpoint retrieves user info and linked platform accounts.


    **Authentication:**
    The _**userId**_ parameter should match the one in the access token.

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/{userId}/information

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - AccountcommonUserInformationV3 (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserInformationV3.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetUserInformationV3)
async def public_get_user_information_v3_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user's information v3 (PublicGetUserInformationV3)

    This endpoint retrieves user info and linked platform accounts.


    **Authentication:**
    The _**userId**_ parameter should match the one in the access token.

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/{userId}/information

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - AccountcommonUserInformationV3 (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserInformationV3.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetUserLoginHistoriesV3)
def public_get_user_login_histories_v3(
    user_id: str,
    after: Optional[float] = None,
    before: Optional[float] = None,
    limit: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User's Login Histories (PublicGetUserLoginHistoriesV3)

    Notes for this endpoint:
    - This endpoint retrieve the first page of the data if `after` and `before` parameters is empty.
    - The maximum value of the limit is 100 and the minimum value of the limit is 1.
    - This endpoint retrieve the next page of the data if we provide `after` parameters with valid Unix timestamp.
    - This endpoint retrieve the previous page of the data if we provide `before` parameter with valid data Unix timestamp.


    **Authentication:**
    The _**userId**_ parameter should match the one in the access token.

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/{userId}/logins/histories

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        after: (after) OPTIONAL float in query

        before: (before) OPTIONAL float in query

        limit: (limit) OPTIONAL int in query

    Responses:
        200: OK - ModelLoginHistoriesResponse (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserLoginHistoriesV3.create(
        user_id=user_id,
        after=after,
        before=before,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetUserLoginHistoriesV3)
async def public_get_user_login_histories_v3_async(
    user_id: str,
    after: Optional[float] = None,
    before: Optional[float] = None,
    limit: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User's Login Histories (PublicGetUserLoginHistoriesV3)

    Notes for this endpoint:
    - This endpoint retrieve the first page of the data if `after` and `before` parameters is empty.
    - The maximum value of the limit is 100 and the minimum value of the limit is 1.
    - This endpoint retrieve the next page of the data if we provide `after` parameters with valid Unix timestamp.
    - This endpoint retrieve the previous page of the data if we provide `before` parameter with valid data Unix timestamp.


    **Authentication:**
    The _**userId**_ parameter should match the one in the access token.

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/{userId}/logins/histories

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        after: (after) OPTIONAL float in query

        before: (before) OPTIONAL float in query

        limit: (limit) OPTIONAL int in query

    Responses:
        200: OK - ModelLoginHistoriesResponse (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserLoginHistoriesV3.create(
        user_id=user_id,
        after=after,
        before=before,
        limit=limit,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetUserPlatformAccountsV3)
def public_get_user_platform_accounts_v3(
    user_id: str,
    after: Optional[str] = None,
    before: Optional[str] = None,
    limit: Optional[int] = None,
    platform_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get platform accounts linked to the user (PublicGetUserPlatformAccountsV3)

    This endpoint retrieves platform accounts linked to user.


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


    **Authentication:**
    The _**userId**_ parameter should match the one in the access token.

    action code: 10128

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/{userId}/platforms

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        after: (after) OPTIONAL str in query

        before: (before) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        platform_id: (platformId) OPTIONAL str in query

    Responses:
        200: OK - AccountcommonUserLinkedPlatformsResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserPlatformAccountsV3.create(
        user_id=user_id,
        after=after,
        before=before,
        limit=limit,
        platform_id=platform_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetUserPlatformAccountsV3)
async def public_get_user_platform_accounts_v3_async(
    user_id: str,
    after: Optional[str] = None,
    before: Optional[str] = None,
    limit: Optional[int] = None,
    platform_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get platform accounts linked to the user (PublicGetUserPlatformAccountsV3)

    This endpoint retrieves platform accounts linked to user.


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


    **Authentication:**
    The _**userId**_ parameter should match the one in the access token.

    action code: 10128

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/{userId}/platforms

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        after: (after) OPTIONAL str in query

        before: (before) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        platform_id: (platformId) OPTIONAL str in query

    Responses:
        200: OK - AccountcommonUserLinkedPlatformsResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserPlatformAccountsV3.create(
        user_id=user_id,
        after=after,
        before=before,
        limit=limit,
        platform_id=platform_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetUsersPlatformInfosV3)
def public_get_users_platform_infos_v3(
    body: ModelUsersPlatformInfosRequestV3,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user's basic info and public info of 3rd party account (PublicGetUsersPlatformInfosV3)

    Note:
    1. the max count of user ids in the request is 100
    2. if platform id is not empty, the result will only contain the corresponding platform infos
    3. if platform id is empty, the result will contain all the supported platform infos

    __Supported 3rd platforms:__

    * __PSN(ps4web, ps4, ps5)__
    * account id
    * display name
    * avatar
    * __Xbox(live, xblweb)__
    * xuid or pxuid
    * display name
    * __Steam(steam, steamopenid)__
    * steam id
    * display name
    * avatar
    * __EpicGames(epicgames)__
    * epic account id
    * display name

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/platforms

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUsersPlatformInfosRequestV3 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelUsersPlatformInfosResponse (OK)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUsersPlatformInfosV3.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetUsersPlatformInfosV3)
async def public_get_users_platform_infos_v3_async(
    body: ModelUsersPlatformInfosRequestV3,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user's basic info and public info of 3rd party account (PublicGetUsersPlatformInfosV3)

    Note:
    1. the max count of user ids in the request is 100
    2. if platform id is not empty, the result will only contain the corresponding platform infos
    3. if platform id is empty, the result will contain all the supported platform infos

    __Supported 3rd platforms:__

    * __PSN(ps4web, ps4, ps5)__
    * account id
    * display name
    * avatar
    * __Xbox(live, xblweb)__
    * xuid or pxuid
    * display name
    * __Steam(steam, steamopenid)__
    * steam id
    * display name
    * avatar
    * __EpicGames(epicgames)__
    * epic account id
    * display name

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/platforms

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUsersPlatformInfosRequestV3 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelUsersPlatformInfosResponse (OK)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUsersPlatformInfosV3.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicLinkPlatformAccount)
def public_link_platform_account(
    body: ModelLinkPlatformAccountRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Link a Platform User Account to User Account (PublicLinkPlatformAccount)

    It is going to be **DEPRECATED**.
    Update Platform Account relation to current User Account.

    Note: Game progression data (statistics, reward, etc) associated with previous User Account will not be
    transferred. If the data is tight to game user ID, the user will have the game progression data.


    **Authentication:**
    The _**userId**_ parameter should match the one in the access token.

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/{userId}/platforms/link

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelLinkPlatformAccountRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicLinkPlatformAccount.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicLinkPlatformAccount)
async def public_link_platform_account_async(
    body: ModelLinkPlatformAccountRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Link a Platform User Account to User Account (PublicLinkPlatformAccount)

    It is going to be **DEPRECATED**.
    Update Platform Account relation to current User Account.

    Note: Game progression data (statistics, reward, etc) associated with previous User Account will not be
    transferred. If the data is tight to game user ID, the user will have the game progression data.


    **Authentication:**
    The _**userId**_ parameter should match the one in the access token.

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/{userId}/platforms/link

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelLinkPlatformAccountRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicLinkPlatformAccount.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicListJusticePlatformAccountsV3)
def public_list_justice_platform_accounts_v3(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User Justice Platform Accounts (PublicListJusticePlatformAccountsV3)

    This endpoint gets list justice platform account by providing publisher namespace and publisher userID.


    **Authentication:**
    The _**userId**_ parameter should match the one in the access token.

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/{userId}/platforms/justice

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[ModelGetUserMappingV3] (OK)

        400: Bad Request - RestErrorResponse (20025: not a publisher user | 20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListJusticePlatformAccountsV3.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicListJusticePlatformAccountsV3)
async def public_list_justice_platform_accounts_v3_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User Justice Platform Accounts (PublicListJusticePlatformAccountsV3)

    This endpoint gets list justice platform account by providing publisher namespace and publisher userID.


    **Authentication:**
    The _**userId**_ parameter should match the one in the access token.

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/{userId}/platforms/justice

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[ModelGetUserMappingV3] (OK)

        400: Bad Request - RestErrorResponse (20025: not a publisher user | 20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListJusticePlatformAccountsV3.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicListUserAllPlatformAccountsDistinctV3)
def public_list_user_all_platform_accounts_distinct_v3(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get distinct platform accounts linked to the user (PublicListUserAllPlatformAccountsDistinctV3)

    This endpoint retrieves platform accounts linked to user.
    It will query all linked platform accounts. The results will be distinct and grouped by platform, and for each platform, we will select the oldest linked one.


    **Authentication:**
    The _**userId**_ parameter should match the one in the access token.

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/{userId}/distinctPlatforms

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - AccountcommonDistinctPlatformResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListUserAllPlatformAccountsDistinctV3.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicListUserAllPlatformAccountsDistinctV3)
async def public_list_user_all_platform_accounts_distinct_v3_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get distinct platform accounts linked to the user (PublicListUserAllPlatformAccountsDistinctV3)

    This endpoint retrieves platform accounts linked to user.
    It will query all linked platform accounts. The results will be distinct and grouped by platform, and for each platform, we will select the oldest linked one.


    **Authentication:**
    The _**userId**_ parameter should match the one in the access token.

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/{userId}/distinctPlatforms

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - AccountcommonDistinctPlatformResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListUserAllPlatformAccountsDistinctV3.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(PublicListUserIDByPlatformUserIDsV3)
def public_list_user_id_by_platform_user_i_ds_v3(
    body: ModelPlatformUserIDRequest,
    platform_id: str,
    raw_pid: Optional[bool] = None,
    raw_puid: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List User ID By Platform User ID (PublicListUserIDByPlatformUserIDsV3)

    List User ID By Platform User ID
    This endpoint intended to list game user ID from the given namespace
    This endpoint return list of user ID by given platform ID and list of platform user ID

    Supported platform:
    - steam
    - steamopenid
    - ps4web
    - ps4
    - ps5
    - live
    - xblweb
    - oculus
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

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/platforms/{platformId}/users

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelPlatformUserIDRequest in body

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        raw_pid: (rawPID) OPTIONAL bool in query

        raw_puid: (rawPUID) OPTIONAL bool in query

    Responses:
        200: OK - AccountcommonUserPlatforms (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListUserIDByPlatformUserIDsV3.create(
        body=body,
        platform_id=platform_id,
        raw_pid=raw_pid,
        raw_puid=raw_puid,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PublicListUserIDByPlatformUserIDsV3)
async def public_list_user_id_by_platform_user_i_ds_v3_async(
    body: ModelPlatformUserIDRequest,
    platform_id: str,
    raw_pid: Optional[bool] = None,
    raw_puid: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List User ID By Platform User ID (PublicListUserIDByPlatformUserIDsV3)

    List User ID By Platform User ID
    This endpoint intended to list game user ID from the given namespace
    This endpoint return list of user ID by given platform ID and list of platform user ID

    Supported platform:
    - steam
    - steamopenid
    - ps4web
    - ps4
    - ps5
    - live
    - xblweb
    - oculus
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

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/platforms/{platformId}/users

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelPlatformUserIDRequest in body

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        raw_pid: (rawPID) OPTIONAL bool in query

        raw_puid: (rawPUID) OPTIONAL bool in query

    Responses:
        200: OK - AccountcommonUserPlatforms (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListUserIDByPlatformUserIDsV3.create(
        body=body,
        platform_id=platform_id,
        raw_pid=raw_pid,
        raw_puid=raw_puid,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicPartialUpdateUserV3)
def public_partial_update_user_v3(
    body: ModelPublicUserUpdateRequestV3,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update User (PublicPartialUpdateUserV3)

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
        url: /iam/v3/public/namespaces/{namespace}/users/me

        method: PATCH

        tags: ["Users"]

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
    request = PublicPartialUpdateUserV3.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicPartialUpdateUserV3)
async def public_partial_update_user_v3_async(
    body: ModelPublicUserUpdateRequestV3,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update User (PublicPartialUpdateUserV3)

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
        url: /iam/v3/public/namespaces/{namespace}/users/me

        method: PATCH

        tags: ["Users"]

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
    request = PublicPartialUpdateUserV3.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(PublicPlatformLinkV2)
def public_platform_link_v2(
    platform_id: str,
    ticket: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Link user's account with platform (PublicPlatformLinkV2)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId} [POST]_**

    **Prerequisite:**
    Platform client configuration need to be added to database for specific platformId. Namespace service URL need to be specified (refer to required environment variables).

    ## Supported platforms:
    - **steam**: The ticketâs value is the authentication code returned by Steam.
    - **steamopenid**: Steam's user authentication method using OpenID 2.0. The ticket's value is URL generated by Steam on web authentication
    - **facebook**: The ticketâs value is the authorization code returned by Facebook OAuth
    - **google**: The ticketâs value is the authorization code returned by Google OAuth
    - **oculus**: The ticketâs value is a string composed of Oculus's user ID and the nonce separated by a colon (:).
    - **twitch**: The ticketâs value is the authorization code returned by Twitch OAuth.
    - **android**: The ticket's value is the Androidâs device ID
    - **ios**: The ticket's value is the iOSâs device ID.
    - **device**: Every device that doesn't run Android and iOS is categorized as a device platform. The ticket's value is the deviceâs ID.
    - **discord**: The ticketâs value is the authorization code returned by Discord OAuth.

    Properties:
        url: /iam/v2/public/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link

        method: POST

        tags: ["Users"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        ticket: (ticket) REQUIRED str in form_data

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - (20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (20008: user not found)

        409: Conflict - (10163: platform is already linked with the user account)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicPlatformLinkV2.create(
        platform_id=platform_id,
        ticket=ticket,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PublicPlatformLinkV2)
async def public_platform_link_v2_async(
    platform_id: str,
    ticket: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Link user's account with platform (PublicPlatformLinkV2)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId} [POST]_**

    **Prerequisite:**
    Platform client configuration need to be added to database for specific platformId. Namespace service URL need to be specified (refer to required environment variables).

    ## Supported platforms:
    - **steam**: The ticketâs value is the authentication code returned by Steam.
    - **steamopenid**: Steam's user authentication method using OpenID 2.0. The ticket's value is URL generated by Steam on web authentication
    - **facebook**: The ticketâs value is the authorization code returned by Facebook OAuth
    - **google**: The ticketâs value is the authorization code returned by Google OAuth
    - **oculus**: The ticketâs value is a string composed of Oculus's user ID and the nonce separated by a colon (:).
    - **twitch**: The ticketâs value is the authorization code returned by Twitch OAuth.
    - **android**: The ticket's value is the Androidâs device ID
    - **ios**: The ticket's value is the iOSâs device ID.
    - **device**: Every device that doesn't run Android and iOS is categorized as a device platform. The ticket's value is the deviceâs ID.
    - **discord**: The ticketâs value is the authorization code returned by Discord OAuth.

    Properties:
        url: /iam/v2/public/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link

        method: POST

        tags: ["Users"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        ticket: (ticket) REQUIRED str in form_data

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - (20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (20008: user not found)

        409: Conflict - (10163: platform is already linked with the user account)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicPlatformLinkV2.create(
        platform_id=platform_id,
        ticket=ticket,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicPlatformLinkV3)
def public_platform_link_v3(
    platform_id: str,
    ticket: str,
    redirect_uri: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Link user's account with platform (PublicPlatformLinkV3)

    **Prerequisite:**
    Platform client configuration need to be added to database for specific platformId. Namespace service URL need to be specified (refer to required environment variables).
    ## Supported platforms:
    - **steam**: The ticketâs value is the binary ticket returned by Steam.
    - **steamopenid**: Steam's user authentication method using OpenID 2.0. The ticket's value is URL generated by Steam on web authentication
    - **facebook**: The ticketâs value is the authorization code returned by Facebook OAuth
    - **google**: The ticketâs value is the authorization code returned by Google OAuth
    - **googleplaygames**: The ticketâs value is the authorization code returned by Google play games OAuth
    - **oculus**: The ticketâs value is a string composed of Oculus's user ID and the nonce separated by a colon (:).
    - **twitch**: The ticketâs value is the authorization code returned by Twitch OAuth.
    - **android**: The ticket's value is the Androidâs device ID
    - **ios**: The ticket's value is the iOSâs device ID.
    - **apple**: The ticketâs value is the authorization code returned by Apple OAuth.
    - **device**: Every device that doesn't run Android and iOS is categorized as a device platform. The ticket's value is the deviceâs ID.
    - **discord**: The ticketâs value is the authorization code returned by Discord OAuth.
    - **ps4web**: The ticketâs value is the authorization code returned by PSN OAuth.
    - **ps4**: The ticketâs value is the authorization code returned by PSN OAuth.
    - **ps5**: The ticketâs value is the authorization code returned by PSN OAuth.
    - **xblweb**: The ticketâs value is the authorization code returned by XBox Live OAuth.
    - **live**: The ticketâs value is the XSTS token.
    - **awscognito**: The ticketâs value is the aws cognito access token (JWT).
    - **epicgames**: The ticketâs value is an access-token or authorization code obtained from Epicgames EOS Account Service.
    - **nintendo**: The ticketâs value is the id_token returned by Nintendo OAuth.
    - **netflix**: The ticketâs value is GAT (Gamer Access Token) returned by Netflix backend.
    - **snapchat**: The ticketâs value is authorization code returned by Snapchat OAuth.
    - **for specific generic oauth (OIDC)**: The platform_tokenâs value should be the same type as created OIDC auth type whether it is auth code, idToken or bearerToken.
    action code : 10144

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}

        method: POST

        tags: ["Users"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        redirect_uri: (redirectUri) OPTIONAL str in form_data

        ticket: (ticket) REQUIRED str in form_data

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        404: Not Found - RestErrorResponse (20008: user not found | 10174: platform client not found)

        409: Conflict - RestErrorResponse (10163: platform is already linked with the user account | 10172: platform user is already linked with the account | 10173: platform is already linked with another user account)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicPlatformLinkV3.create(
        platform_id=platform_id,
        ticket=ticket,
        redirect_uri=redirect_uri,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicPlatformLinkV3)
async def public_platform_link_v3_async(
    platform_id: str,
    ticket: str,
    redirect_uri: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Link user's account with platform (PublicPlatformLinkV3)

    **Prerequisite:**
    Platform client configuration need to be added to database for specific platformId. Namespace service URL need to be specified (refer to required environment variables).
    ## Supported platforms:
    - **steam**: The ticketâs value is the binary ticket returned by Steam.
    - **steamopenid**: Steam's user authentication method using OpenID 2.0. The ticket's value is URL generated by Steam on web authentication
    - **facebook**: The ticketâs value is the authorization code returned by Facebook OAuth
    - **google**: The ticketâs value is the authorization code returned by Google OAuth
    - **googleplaygames**: The ticketâs value is the authorization code returned by Google play games OAuth
    - **oculus**: The ticketâs value is a string composed of Oculus's user ID and the nonce separated by a colon (:).
    - **twitch**: The ticketâs value is the authorization code returned by Twitch OAuth.
    - **android**: The ticket's value is the Androidâs device ID
    - **ios**: The ticket's value is the iOSâs device ID.
    - **apple**: The ticketâs value is the authorization code returned by Apple OAuth.
    - **device**: Every device that doesn't run Android and iOS is categorized as a device platform. The ticket's value is the deviceâs ID.
    - **discord**: The ticketâs value is the authorization code returned by Discord OAuth.
    - **ps4web**: The ticketâs value is the authorization code returned by PSN OAuth.
    - **ps4**: The ticketâs value is the authorization code returned by PSN OAuth.
    - **ps5**: The ticketâs value is the authorization code returned by PSN OAuth.
    - **xblweb**: The ticketâs value is the authorization code returned by XBox Live OAuth.
    - **live**: The ticketâs value is the XSTS token.
    - **awscognito**: The ticketâs value is the aws cognito access token (JWT).
    - **epicgames**: The ticketâs value is an access-token or authorization code obtained from Epicgames EOS Account Service.
    - **nintendo**: The ticketâs value is the id_token returned by Nintendo OAuth.
    - **netflix**: The ticketâs value is GAT (Gamer Access Token) returned by Netflix backend.
    - **snapchat**: The ticketâs value is authorization code returned by Snapchat OAuth.
    - **for specific generic oauth (OIDC)**: The platform_tokenâs value should be the same type as created OIDC auth type whether it is auth code, idToken or bearerToken.
    action code : 10144

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}

        method: POST

        tags: ["Users"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        redirect_uri: (redirectUri) OPTIONAL str in form_data

        ticket: (ticket) REQUIRED str in form_data

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        404: Not Found - RestErrorResponse (20008: user not found | 10174: platform client not found)

        409: Conflict - RestErrorResponse (10163: platform is already linked with the user account | 10172: platform user is already linked with the account | 10173: platform is already linked with another user account)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicPlatformLinkV3.create(
        platform_id=platform_id,
        ticket=ticket,
        redirect_uri=redirect_uri,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicPlatformUnlinkAllV3)
def public_platform_unlink_all_v3(
    platform_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public unlink user's account from specific platform for all namespaces (PublicPlatformUnlinkAllV3)

    Unlink user's account from third platform in all namespaces.
    Several platforms are grouped under account groups, you can use either platform ID or platform group as platformId path parameter.
    example: to unlink steam third party account, you can use steamnetwork / steam / steamopenid as platformId path parameter.


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

    Unlink platform account associated with a group:
    If user unlink platform account associated with a group, the API logic will unlink all of platform account under that group as well.
    example: if user unlink from ps4, the API logic will unlink ps5 and ps4web as well

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/all

        method: DELETE

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicPlatformUnlinkAllV3.create(
        platform_id=platform_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicPlatformUnlinkAllV3)
async def public_platform_unlink_all_v3_async(
    platform_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public unlink user's account from specific platform for all namespaces (PublicPlatformUnlinkAllV3)

    Unlink user's account from third platform in all namespaces.
    Several platforms are grouped under account groups, you can use either platform ID or platform group as platformId path parameter.
    example: to unlink steam third party account, you can use steamnetwork / steam / steamopenid as platformId path parameter.


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

    Unlink platform account associated with a group:
    If user unlink platform account associated with a group, the API logic will unlink all of platform account under that group as well.
    example: if user unlink from ps4, the API logic will unlink ps5 and ps4web as well

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/all

        method: DELETE

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicPlatformUnlinkAllV3.create(
        platform_id=platform_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(PublicPlatformUnlinkV3)
def public_platform_unlink_v3(
    body: ModelUnlinkUserPlatformRequest,
    platform_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public unlink user's account from specific platform (PublicPlatformUnlinkV3)

    ## Supported platforms:
    - **steam**
    - **steamopenid**
    - **facebook**
    - **google**
    - **googleplaygames**
    - **oculus**
    - **twitch**
    - **android**
    - **ios**
    - **apple**
    - **device**
    - **discord**
    - **awscognito**
    - **epicgames**
    - **nintendo**

    Unlink user's account from a specific platform. 'justice' platform might have multiple accounts from different namespaces linked.
    _platformNamespace_ need to be specified when the platform ID is 'justice'.
    Unlink user's account from justice platform will enable password token grant and password update.
    If you want to unlink user's account in a game namespace, you have to specify _platformNamespace_ to that game namespace.
    action code : 10121

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}

        method: DELETE

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUnlinkUserPlatformRequest in body

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicPlatformUnlinkV3.create(
        body=body,
        platform_id=platform_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PublicPlatformUnlinkV3)
async def public_platform_unlink_v3_async(
    body: ModelUnlinkUserPlatformRequest,
    platform_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public unlink user's account from specific platform (PublicPlatformUnlinkV3)

    ## Supported platforms:
    - **steam**
    - **steamopenid**
    - **facebook**
    - **google**
    - **googleplaygames**
    - **oculus**
    - **twitch**
    - **android**
    - **ios**
    - **apple**
    - **device**
    - **discord**
    - **awscognito**
    - **epicgames**
    - **nintendo**

    Unlink user's account from a specific platform. 'justice' platform might have multiple accounts from different namespaces linked.
    _platformNamespace_ need to be specified when the platform ID is 'justice'.
    Unlink user's account from justice platform will enable password token grant and password update.
    If you want to unlink user's account in a game namespace, you have to specify _platformNamespace_ to that game namespace.
    action code : 10121

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}

        method: DELETE

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUnlinkUserPlatformRequest in body

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicPlatformUnlinkV3.create(
        body=body,
        platform_id=platform_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicProcessWebLinkPlatformV3)
def public_process_web_link_platform_v3(
    platform_id: str,
    state: str,
    code: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Process Link Progress  (PublicProcessWebLinkPlatformV3)

    This endpoint is used to process third party account link, this endpoint will return the link status directly instead of redirecting to the original page.
    The param **state** comes from the response of `/users/me/platforms/{platformId}/web/link`
    Supported platforms:
    - ps4web
    - xblweb
    - steamopenid
    - epicgames
    - facebook
    - twitch
    - google
    - apple
    - snapchat
    - discord
    - amazon
    - oculusweb

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/web/link/process

        method: POST

        tags: ["Users"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        code: (code) OPTIONAL str in form_data

        state: (state) REQUIRED str in form_data

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

    Responses:
        200: OK - ModelLinkRequest (OK)

        400: Bad Request - RestErrorResponse (20000: internal server error | 20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicProcessWebLinkPlatformV3.create(
        platform_id=platform_id,
        state=state,
        code=code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicProcessWebLinkPlatformV3)
async def public_process_web_link_platform_v3_async(
    platform_id: str,
    state: str,
    code: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Process Link Progress  (PublicProcessWebLinkPlatformV3)

    This endpoint is used to process third party account link, this endpoint will return the link status directly instead of redirecting to the original page.
    The param **state** comes from the response of `/users/me/platforms/{platformId}/web/link`
    Supported platforms:
    - ps4web
    - xblweb
    - steamopenid
    - epicgames
    - facebook
    - twitch
    - google
    - apple
    - snapchat
    - discord
    - amazon
    - oculusweb

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/web/link/process

        method: POST

        tags: ["Users"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        code: (code) OPTIONAL str in form_data

        state: (state) REQUIRED str in form_data

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

    Responses:
        200: OK - ModelLinkRequest (OK)

        400: Bad Request - RestErrorResponse (20000: internal server error | 20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicProcessWebLinkPlatformV3.create(
        platform_id=platform_id,
        state=state,
        code=code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(PublicResetPasswordV2)
def public_reset_password_v2(
    body: ModelResetPasswordRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Reset User Password (PublicResetPasswordV2)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/reset [POST]_**

    Properties:
        url: /iam/v2/public/namespaces/{namespace}/users/resetPassword

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelResetPasswordRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - (20019: unable to parse request body | 10142: new password cannot be same with original)

        403: Forbidden - (10137: code is expired | 10136: code is either been used or not valid anymore | 10138: code not match | 10152: verification code not found)

        404: Not Found - (20008: user not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicResetPasswordV2.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PublicResetPasswordV2)
async def public_reset_password_v2_async(
    body: ModelResetPasswordRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Reset User Password (PublicResetPasswordV2)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/reset [POST]_**

    Properties:
        url: /iam/v2/public/namespaces/{namespace}/users/resetPassword

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelResetPasswordRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - (20019: unable to parse request body | 10142: new password cannot be same with original)

        403: Forbidden - (10137: code is expired | 10136: code is either been used or not valid anymore | 10138: code not match | 10152: verification code not found)

        404: Not Found - (20008: user not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicResetPasswordV2.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicSearchUserV3)
def public_search_user_v3(
    by: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    platform_by: Optional[str] = None,
    platform_id: Optional[str] = None,
    query: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Search User (PublicSearchUserV3)

    This endpoint search all users on the specified namespace that match the query on these fields: display name, unique display name, username or by 3rd party display name.
    The query length should between 3-20, otherwise will not query the database.
    The default limit value is 20.

    ## Searching by 3rd party platform

    **Note: searching by 3rd party platform display name will use exact query, not fuzzy query.**

    Step when searching by 3rd party platform display name:
    1. set __by__ to __thirdPartyPlatform__
    2. set __platformId__ to the _supported platform id_
    3. set __platformBy__ to __platformDisplayName__


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

    ## IP Rate Limit validation

    This API have IP Rate Limit validation, which activates when triggered excessively from the same IP address (throw 429 http error).
    The default rule: 10 max request per 30 seconds (per unique IP address).

    To mitigate potential unexpected issues in your implementation, consider adhering to these best practices as illustrated in the following examples:
    * Delay invoking the Search API if the player continues typing in the search box, and only utilize the latest input provided.
    * Prevent players from double-clicking or making multiple clicks within a short time frame.

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        by: (by) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        platform_by: (platformBy) OPTIONAL str in query

        platform_id: (platformId) OPTIONAL str in query

        query: (query) OPTIONAL str in query

    Responses:
        200: OK - ModelPublicUserInformationResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        404: Not Found - RestErrorResponse (20008: user not found)

        429: Too Many Requests - RestErrorResponse (20007: too many requests)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicSearchUserV3.create(
        by=by,
        limit=limit,
        offset=offset,
        platform_by=platform_by,
        platform_id=platform_id,
        query=query,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicSearchUserV3)
async def public_search_user_v3_async(
    by: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    platform_by: Optional[str] = None,
    platform_id: Optional[str] = None,
    query: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Search User (PublicSearchUserV3)

    This endpoint search all users on the specified namespace that match the query on these fields: display name, unique display name, username or by 3rd party display name.
    The query length should between 3-20, otherwise will not query the database.
    The default limit value is 20.

    ## Searching by 3rd party platform

    **Note: searching by 3rd party platform display name will use exact query, not fuzzy query.**

    Step when searching by 3rd party platform display name:
    1. set __by__ to __thirdPartyPlatform__
    2. set __platformId__ to the _supported platform id_
    3. set __platformBy__ to __platformDisplayName__


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

    ## IP Rate Limit validation

    This API have IP Rate Limit validation, which activates when triggered excessively from the same IP address (throw 429 http error).
    The default rule: 10 max request per 30 seconds (per unique IP address).

    To mitigate potential unexpected issues in your implementation, consider adhering to these best practices as illustrated in the following examples:
    * Delay invoking the Search API if the player continues typing in the search box, and only utilize the latest input provided.
    * Prevent players from double-clicking or making multiple clicks within a short time frame.

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        by: (by) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        platform_by: (platformBy) OPTIONAL str in query

        platform_id: (platformId) OPTIONAL str in query

        query: (query) OPTIONAL str in query

    Responses:
        200: OK - ModelPublicUserInformationResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        404: Not Found - RestErrorResponse (20008: user not found)

        429: Too Many Requests - RestErrorResponse (20007: too many requests)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicSearchUserV3.create(
        by=by,
        limit=limit,
        offset=offset,
        platform_by=platform_by,
        platform_id=platform_id,
        query=query,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicSendCodeForwardV3)
def public_send_code_forward_v3(
    body: ModelSendVerificationCodeRequestV3,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Send verification code to user (PublicSendCodeForwardV3)

    This API need the upgradeToken in request body.
    Available contexts for use :
    1. **upgradeHeadlessAccount**
    The context is intended to be used whenever the email address wanted to be automatically verified on upgrading a headless account.
    If this context used, IAM rejects the request if the email address is already used by others by returning HTTP Status Code 409.

    Properties:
        url: /iam/v3/public/users/me/code/request/forward

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelSendVerificationCodeRequestV3 in body

    Responses:
        302: Found - (Found. Redirected to login website if there is any error.)
    """
    request = PublicSendCodeForwardV3.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicSendCodeForwardV3)
async def public_send_code_forward_v3_async(
    body: ModelSendVerificationCodeRequestV3,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Send verification code to user (PublicSendCodeForwardV3)

    This API need the upgradeToken in request body.
    Available contexts for use :
    1. **upgradeHeadlessAccount**
    The context is intended to be used whenever the email address wanted to be automatically verified on upgrading a headless account.
    If this context used, IAM rejects the request if the email address is already used by others by returning HTTP Status Code 409.

    Properties:
        url: /iam/v3/public/users/me/code/request/forward

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelSendVerificationCodeRequestV3 in body

    Responses:
        302: Found - (Found. Redirected to login website if there is any error.)
    """
    request = PublicSendCodeForwardV3.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicSendRegistrationCode)
def public_send_registration_code(
    body: ModelSendRegisterVerificationCodeRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Send verification code to new unregistered account's email address (PublicSendRegistrationCode)

    This endpoint will validate the request's email address.
    If it already been used, will response 409.
    If it is available, we will send a verification code to this email address.
    This code can be verified by this [endpoint](#operations-Users-PublicVerifyRegistrationCode).

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/code/request

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelSendRegisterVerificationCodeRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        409: Conflict - RestErrorResponse (10133: email already used)

        429: Too Many Requests - RestErrorResponse (20007: too many requests)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicSendRegistrationCode.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicSendRegistrationCode)
async def public_send_registration_code_async(
    body: ModelSendRegisterVerificationCodeRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Send verification code to new unregistered account's email address (PublicSendRegistrationCode)

    This endpoint will validate the request's email address.
    If it already been used, will response 409.
    If it is available, we will send a verification code to this email address.
    This code can be verified by this [endpoint](#operations-Users-PublicVerifyRegistrationCode).

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/code/request

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelSendRegisterVerificationCodeRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        409: Conflict - RestErrorResponse (10133: email already used)

        429: Too Many Requests - RestErrorResponse (20007: too many requests)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicSendRegistrationCode.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicSendVerificationCodeV3)
def public_send_verification_code_v3(
    body: ModelSendVerificationCodeRequestV3,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Send verification code to user (PublicSendVerificationCodeV3)

    The verification code is sent to email address
    Available contexts for use :
    1. **UserAccountRegistration**
    a context type used for verifying email address in user account registration. It returns 409 if the email address already verified.
    **_It is the default context if the Context field is empty_**
    2. **UpdateEmailAddress**
    a context type used for verify user before updating email address.(Without email address verified checking)
    3. **upgradeHeadlessAccount**
    The context is intended to be used whenever the email address wanted to be automatically verified on upgrading a headless account.
    If this context used, IAM rejects the request if the email address is already used by others by returning HTTP Status Code 409.

    action code: 10116

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/me/code/request

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelSendVerificationCodeRequestV3 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (10146: userID not match)

        404: Not Found - RestErrorResponse (10171: email address not found | 10139: platform account not found)

        409: Conflict - RestErrorResponse (10140: user verified | 10133: email already used)

        429: Too Many Requests - RestErrorResponse (20007: too many requests)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicSendVerificationCodeV3.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicSendVerificationCodeV3)
async def public_send_verification_code_v3_async(
    body: ModelSendVerificationCodeRequestV3,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Send verification code to user (PublicSendVerificationCodeV3)

    The verification code is sent to email address
    Available contexts for use :
    1. **UserAccountRegistration**
    a context type used for verifying email address in user account registration. It returns 409 if the email address already verified.
    **_It is the default context if the Context field is empty_**
    2. **UpdateEmailAddress**
    a context type used for verify user before updating email address.(Without email address verified checking)
    3. **upgradeHeadlessAccount**
    The context is intended to be used whenever the email address wanted to be automatically verified on upgrading a headless account.
    If this context used, IAM rejects the request if the email address is already used by others by returning HTTP Status Code 409.

    action code: 10116

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/me/code/request

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelSendVerificationCodeRequestV3 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (10146: userID not match)

        404: Not Found - RestErrorResponse (10171: email address not found | 10139: platform account not found)

        409: Conflict - RestErrorResponse (10140: user verified | 10133: email already used)

        429: Too Many Requests - RestErrorResponse (20007: too many requests)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicSendVerificationCodeV3.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicSendVerificationLinkV3)
def public_send_verification_link_v3(
    body: ModelSendVerificationLinkRequest,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Send verification link to user, this link will point to '/iam/v3/public/users/verify_link/verify' (PublicSendVerificationLinkV3)

    The verification link is sent to email address
    It will not send request if user email is already verified

    Properties:
        url: /iam/v3/public/users/me/verify_link/request

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelSendVerificationLinkRequest in body

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        409: Conflict - RestErrorResponse (10140: user verified)

        429: Too Many Requests - RestErrorResponse (20007: too many requests)
    """
    request = PublicSendVerificationLinkV3.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicSendVerificationLinkV3)
async def public_send_verification_link_v3_async(
    body: ModelSendVerificationLinkRequest,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Send verification link to user, this link will point to '/iam/v3/public/users/verify_link/verify' (PublicSendVerificationLinkV3)

    The verification link is sent to email address
    It will not send request if user email is already verified

    Properties:
        url: /iam/v3/public/users/me/verify_link/request

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelSendVerificationLinkRequest in body

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        409: Conflict - RestErrorResponse (10140: user verified)

        429: Too Many Requests - RestErrorResponse (20007: too many requests)
    """
    request = PublicSendVerificationLinkV3.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(PublicUpdatePasswordV2)
def public_update_password_v2(
    body: ModelUserPasswordUpdateRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update User Password (PublicUpdatePasswordV2)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/me/password [PUT]_**

    Properties:
        url: /iam/v2/public/namespaces/{namespace}/users/{userId}/password

        method: PUT

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserPasswordUpdateRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - (20019: unable to parse request body | 20002: validation error | 10142: new password cannot be same with original | 10143: password not match)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (20008: user not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicUpdatePasswordV2.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PublicUpdatePasswordV2)
async def public_update_password_v2_async(
    body: ModelUserPasswordUpdateRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update User Password (PublicUpdatePasswordV2)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/me/password [PUT]_**

    Properties:
        url: /iam/v2/public/namespaces/{namespace}/users/{userId}/password

        method: PUT

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserPasswordUpdateRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - (20019: unable to parse request body | 20002: validation error | 10142: new password cannot be same with original | 10143: password not match)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (20008: user not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicUpdatePasswordV2.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicUpdatePasswordV3)
def public_update_password_v3(
    body: ModelUserPasswordUpdateV3Request,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update User Password (PublicUpdatePasswordV3)

    action code: 10107

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/me/password

        method: PUT

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserPasswordUpdateV3Request in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error | 10142: new password cannot be same with original | 10143: password not match | 10228: invalid mfa token)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        429: Too Many Requests - RestErrorResponse (20007: too many requests)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicUpdatePasswordV3.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicUpdatePasswordV3)
async def public_update_password_v3_async(
    body: ModelUserPasswordUpdateV3Request,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update User Password (PublicUpdatePasswordV3)

    action code: 10107

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/me/password

        method: PUT

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserPasswordUpdateV3Request in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error | 10142: new password cannot be same with original | 10143: password not match | 10228: invalid mfa token)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        429: Too Many Requests - RestErrorResponse (20007: too many requests)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicUpdatePasswordV3.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(PublicUpdateUserV2)
def public_update_user_v2(
    body: ModelUserUpdateRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update User (PublicUpdateUserV2)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint([PUT]): _/iam/v3/public/namespaces/{namespace}/users/me [PUT]_**
    - **Substitute endpoint([PATCH]): _/iam/v3/public/namespaces/{namespace}/users/me [PATCH]_**
    - **Substitute endpoint([PATCH]): _/iam/v4/public/namespaces/{namespace}/users/me [PATCH]_**
    - **Note:**
    1. Prefer [PATCH] if client support PATCH method
    2. Difference in V3/v4 request body, format difference: Pascal case => Camel case

    This Endpoint support update user based on given data. **Single request can update single field or multi fields.**
    Supported field {Country, DisplayName, LanguageTag}

    Properties:
        url: /iam/v2/public/namespaces/{namespace}/users/{userId}

        method: PATCH

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserUpdateRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[ModelUserResponse] (OK)

        400: Bad Request - (20019: unable to parse request body | 10131: invalid date of birth | 10155: country is not defined | 10154: country not found | 10130: user under age | 10132: invalid email address)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        404: Not Found - (10139: platform account not found | 20008: user not found)

        409: Conflict - (10133: email already used)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicUpdateUserV2.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PublicUpdateUserV2)
async def public_update_user_v2_async(
    body: ModelUserUpdateRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update User (PublicUpdateUserV2)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint([PUT]): _/iam/v3/public/namespaces/{namespace}/users/me [PUT]_**
    - **Substitute endpoint([PATCH]): _/iam/v3/public/namespaces/{namespace}/users/me [PATCH]_**
    - **Substitute endpoint([PATCH]): _/iam/v4/public/namespaces/{namespace}/users/me [PATCH]_**
    - **Note:**
    1. Prefer [PATCH] if client support PATCH method
    2. Difference in V3/v4 request body, format difference: Pascal case => Camel case

    This Endpoint support update user based on given data. **Single request can update single field or multi fields.**
    Supported field {Country, DisplayName, LanguageTag}

    Properties:
        url: /iam/v2/public/namespaces/{namespace}/users/{userId}

        method: PATCH

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserUpdateRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[ModelUserResponse] (OK)

        400: Bad Request - (20019: unable to parse request body | 10131: invalid date of birth | 10155: country is not defined | 10154: country not found | 10130: user under age | 10132: invalid email address)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        404: Not Found - (10139: platform account not found | 20008: user not found)

        409: Conflict - (10133: email already used)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicUpdateUserV2.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicUpgradeHeadlessAccountV3)
def public_upgrade_headless_account_v3(
    body: ModelUpgradeHeadlessAccountWithVerificationCodeRequestV3,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Verify or consume verification code. (PublicUpgradeHeadlessAccountV3)

    If validateOnly is set false, consume code and upgrade headless account and automatically verified the email address if it is succeeded
    The endpoint upgrades a headless account by linking the headless account with the email address and the password.
    By upgrading the headless account into a full account, the user could use the email address and password for using Justice IAM.
    The endpoint is a shortcut for upgrading a headless account and verifying the email address in one call.
    In order to get a verification code for the endpoint, please check the send verification code endpoint.
    This endpoint also have an ability to update user data (if the user data field is specified) right after the upgrade account process is done.
    Supported user data fields :
    - displayName
    - dateOfBirth : format YYYY-MM-DD, e.g. 2019-04-29
    - country : format ISO3166-1 alpha-2 two letter, e.g. US

    action code : 10124

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/me/headless/code/verify

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUpgradeHeadlessAccountWithVerificationCodeRequestV3 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelUserResponseV3 (OK)

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
    request = PublicUpgradeHeadlessAccountV3.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicUpgradeHeadlessAccountV3)
async def public_upgrade_headless_account_v3_async(
    body: ModelUpgradeHeadlessAccountWithVerificationCodeRequestV3,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Verify or consume verification code. (PublicUpgradeHeadlessAccountV3)

    If validateOnly is set false, consume code and upgrade headless account and automatically verified the email address if it is succeeded
    The endpoint upgrades a headless account by linking the headless account with the email address and the password.
    By upgrading the headless account into a full account, the user could use the email address and password for using Justice IAM.
    The endpoint is a shortcut for upgrading a headless account and verifying the email address in one call.
    In order to get a verification code for the endpoint, please check the send verification code endpoint.
    This endpoint also have an ability to update user data (if the user data field is specified) right after the upgrade account process is done.
    Supported user data fields :
    - displayName
    - dateOfBirth : format YYYY-MM-DD, e.g. 2019-04-29
    - country : format ISO3166-1 alpha-2 two letter, e.g. US

    action code : 10124

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/me/headless/code/verify

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUpgradeHeadlessAccountWithVerificationCodeRequestV3 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelUserResponseV3 (OK)

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
    request = PublicUpgradeHeadlessAccountV3.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicUserVerificationV3)
def public_user_verification_v3(
    body: ModelUserVerificationRequestV3,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Validate or consume verification code sent to user (PublicUserVerificationV3)

    Will consume code if validateOnly is set false
    Redeems a verification code sent to a user to verify the user's contact address is correct
    Available ContactType : **email**
    action code: 10107

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/me/code/verify

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserVerificationRequestV3 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (10152: verification code not found | 10137: code is expired | 10136: code is either been used or not valid anymore | 10138: code not match | 10149: verification contact type doesn't match | 10148: verification code context doesn't match the required context)

        409: Conflict - RestErrorResponse (10141: email verified)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicUserVerificationV3.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicUserVerificationV3)
async def public_user_verification_v3_async(
    body: ModelUserVerificationRequestV3,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Validate or consume verification code sent to user (PublicUserVerificationV3)

    Will consume code if validateOnly is set false
    Redeems a verification code sent to a user to verify the user's contact address is correct
    Available ContactType : **email**
    action code: 10107

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/me/code/verify

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserVerificationRequestV3 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        403: Forbidden - RestErrorResponse (10152: verification code not found | 10137: code is expired | 10136: code is either been used or not valid anymore | 10138: code not match | 10149: verification contact type doesn't match | 10148: verification code context doesn't match the required context)

        409: Conflict - RestErrorResponse (10141: email verified)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicUserVerificationV3.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicValidateUserByUserIDAndPasswordV3)
def public_validate_user_by_user_id_and_password_v3(
    password: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Validate user password by user ID and password (PublicValidateUserByUserIDAndPasswordV3)

    This endpoint is used to validate the user password.
    This endpoint validate the user password by specifying the userId and password.


    **Authentication:**
    The _**userId**_ parameter should match the one in the access token.

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/{userId}/validate

        method: POST

        tags: ["Users"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        password: (password) REQUIRED str in form_data

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestErrorResponse (10143: password not match | 20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicValidateUserByUserIDAndPasswordV3.create(
        password=password,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicValidateUserByUserIDAndPasswordV3)
async def public_validate_user_by_user_id_and_password_v3_async(
    password: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Validate user password by user ID and password (PublicValidateUserByUserIDAndPasswordV3)

    This endpoint is used to validate the user password.
    This endpoint validate the user password by specifying the userId and password.


    **Authentication:**
    The _**userId**_ parameter should match the one in the access token.

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/{userId}/validate

        method: POST

        tags: ["Users"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        password: (password) REQUIRED str in form_data

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestErrorResponse (10143: password not match | 20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (20008: user not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicValidateUserByUserIDAndPasswordV3.create(
        password=password,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicValidateUserInput)
def public_validate_user_input(
    body: ModelUserInputValidationRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Validate user's input. (PublicValidateUserInput)

    Validate user's input.
    --------
    **note:**
    - this endpoint will check the input validation and profanity filter service(if this is enabled)
    - the namespace should be publisher namespace

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/input/validation

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserInputValidationRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelUserInputValidationResponse (OK)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicValidateUserInput.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicValidateUserInput)
async def public_validate_user_input_async(
    body: ModelUserInputValidationRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Validate user's input. (PublicValidateUserInput)

    Validate user's input.
    --------
    **note:**
    - this endpoint will check the input validation and profanity filter service(if this is enabled)
    - the namespace should be publisher namespace

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/input/validation

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserInputValidationRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelUserInputValidationResponse (OK)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicValidateUserInput.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicVerifyHeadlessAccountV3)
def public_verify_headless_account_v3(
    body: ModelUpgradeHeadlessAccountV3Request,
    need_verification_code: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upgrade user headless account to full account (with email) (PublicVerifyHeadlessAccountV3)

    action code : 10124

    if set NeedVerificationCode = true, IAM will send verification code into email
    user can use that verification code to verify user through /iam/v3/public/namespaces/{namespace}/users/me/code/verify

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/me/headless/verify

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUpgradeHeadlessAccountV3Request in body

        namespace: (namespace) REQUIRED str in path

        need_verification_code: (needVerificationCode) OPTIONAL bool in query

    Responses:
        200: OK - ModelUserResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        404: Not Found - RestErrorResponse (10139: platform account not found)

        409: Conflict - RestErrorResponse (10153: user exist | 10170: account is already a full account)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicVerifyHeadlessAccountV3.create(
        body=body,
        need_verification_code=need_verification_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicVerifyHeadlessAccountV3)
async def public_verify_headless_account_v3_async(
    body: ModelUpgradeHeadlessAccountV3Request,
    need_verification_code: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upgrade user headless account to full account (with email) (PublicVerifyHeadlessAccountV3)

    action code : 10124

    if set NeedVerificationCode = true, IAM will send verification code into email
    user can use that verification code to verify user through /iam/v3/public/namespaces/{namespace}/users/me/code/verify

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/me/headless/verify

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUpgradeHeadlessAccountV3Request in body

        namespace: (namespace) REQUIRED str in path

        need_verification_code: (needVerificationCode) OPTIONAL bool in query

    Responses:
        200: OK - ModelUserResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        404: Not Found - RestErrorResponse (10139: platform account not found)

        409: Conflict - RestErrorResponse (10153: user exist | 10170: account is already a full account)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicVerifyHeadlessAccountV3.create(
        body=body,
        need_verification_code=need_verification_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicVerifyRegistrationCode)
def public_verify_registration_code(
    body: ModelVerifyRegistrationCode,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Verify the registration code (PublicVerifyRegistrationCode)

    Verify the registration code

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/code/verify

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelVerifyRegistrationCode in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Code is valid)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 10138: code not match)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicVerifyRegistrationCode.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicVerifyRegistrationCode)
async def public_verify_registration_code_async(
    body: ModelVerifyRegistrationCode,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Verify the registration code (PublicVerifyRegistrationCode)

    Verify the registration code

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/code/verify

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelVerifyRegistrationCode in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Code is valid)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 10138: code not match)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicVerifyRegistrationCode.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicVerifyUserByLinkV3)
def public_verify_user_by_link_v3(
    code: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Verify user email by the verification link code (PublicVerifyUserByLinkV3)

    Properties:
        url: /iam/v3/public/users/verify_link/verify

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        code: (code) OPTIONAL str in query

    Responses:
        302: Found - (Found. Redirected to verification finish page.)
    """
    request = PublicVerifyUserByLinkV3.create(
        code=code,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicVerifyUserByLinkV3)
async def public_verify_user_by_link_v3_async(
    code: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Verify user email by the verification link code (PublicVerifyUserByLinkV3)

    Properties:
        url: /iam/v3/public/users/verify_link/verify

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        code: (code) OPTIONAL str in query

    Responses:
        302: Found - (Found. Redirected to verification finish page.)
    """
    request = PublicVerifyUserByLinkV3.create(
        code=code,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicWebLinkPlatform)
def public_web_link_platform(
    platform_id: str,
    client_id: Optional[str] = None,
    redirect_uri: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create Public Web Linking (PublicWebLinkPlatform)

    This endpoint is used to generate third party login page which will redirected to establish endpoint.
    Supported platforms:
    - ps4web
    - xblweb
    - steamopenid
    - epicgames
    - facebook
    - twitch
    - google
    - apple
    - snapchat
    - discord
    - amazon
    - oculusweb

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/web/link

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        client_id: (clientId) OPTIONAL str in query

        redirect_uri: (redirectUri) OPTIONAL str in query

    Responses:
        200: OK - ModelWebLinkingResponse (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        404: Not Found - RestErrorResponse (10365: client not found | 20008: user not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicWebLinkPlatform.create(
        platform_id=platform_id,
        client_id=client_id,
        redirect_uri=redirect_uri,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicWebLinkPlatform)
async def public_web_link_platform_async(
    platform_id: str,
    client_id: Optional[str] = None,
    redirect_uri: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create Public Web Linking (PublicWebLinkPlatform)

    This endpoint is used to generate third party login page which will redirected to establish endpoint.
    Supported platforms:
    - ps4web
    - xblweb
    - steamopenid
    - epicgames
    - facebook
    - twitch
    - google
    - apple
    - snapchat
    - discord
    - amazon
    - oculusweb

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/web/link

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        client_id: (clientId) OPTIONAL str in query

        redirect_uri: (redirectUri) OPTIONAL str in query

    Responses:
        200: OK - ModelWebLinkingResponse (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access | 20022: token is not user token)

        404: Not Found - RestErrorResponse (10365: client not found | 20008: user not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicWebLinkPlatform.create(
        platform_id=platform_id,
        client_id=client_id,
        redirect_uri=redirect_uri,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicWebLinkPlatformEstablish)
def public_web_link_platform_establish(
    platform_id: str,
    state: str,
    code: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Establish Link Progress  (PublicWebLinkPlatformEstablish)

    This endpoint is used by third party to redirect the code for the purpose of linking the account third party to IAM account.
    Supported platforms:
    - ps4web
    - xblweb
    - steamopenid
    - epicgames
    - facebook
    - twitch
    - google
    - apple
    - snapchat
    - discord
    - amazon
    - oculusweb

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/web/link/establish

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        location query: PLACEHOLDER

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        code: (code) OPTIONAL str in query

        state: (state) REQUIRED str in query

    Responses:
        302: Found - (Handle Redirect from third party)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicWebLinkPlatformEstablish.create(
        platform_id=platform_id,
        state=state,
        code=code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicWebLinkPlatformEstablish)
async def public_web_link_platform_establish_async(
    platform_id: str,
    state: str,
    code: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Establish Link Progress  (PublicWebLinkPlatformEstablish)

    This endpoint is used by third party to redirect the code for the purpose of linking the account third party to IAM account.
    Supported platforms:
    - ps4web
    - xblweb
    - steamopenid
    - epicgames
    - facebook
    - twitch
    - google
    - apple
    - snapchat
    - discord
    - amazon
    - oculusweb

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/web/link/establish

        method: GET

        tags: ["Users"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        location query: PLACEHOLDER

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        code: (code) OPTIONAL str in query

        state: (state) REQUIRED str in query

    Responses:
        302: Found - (Handle Redirect from third party)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicWebLinkPlatformEstablish.create(
        platform_id=platform_id,
        state=state,
        code=code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(ResetPassword)
def reset_password(
    body: ModelResetPasswordRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Reset User Password (ResetPassword)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/reset [POST]_**

    Properties:
        url: /iam/namespaces/{namespace}/users/resetPassword

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BASIC_AUTH and BEARER_AUTH]

        body: (body) REQUIRED ModelResetPasswordRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - (1014016: unable to parse request body | 1015073: new password same as old password)

        403: Forbidden - (1014021: verification code expired | 1014019: verification code already used | 1014020: verification code invalid | 1014018: verification code not found)

        404: Not Found - (1014017: user not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ResetPassword.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(ResetPassword)
async def reset_password_async(
    body: ModelResetPasswordRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Reset User Password (ResetPassword)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/reset [POST]_**

    Properties:
        url: /iam/namespaces/{namespace}/users/resetPassword

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BASIC_AUTH and BEARER_AUTH]

        body: (body) REQUIRED ModelResetPasswordRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - (1014016: unable to parse request body | 1015073: new password same as old password)

        403: Forbidden - (1014021: verification code expired | 1014019: verification code already used | 1014020: verification code invalid | 1014018: verification code not found)

        404: Not Found - (1014017: user not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ResetPassword.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ResetPasswordV3)
def reset_password_v3(
    body: ModelResetPasswordRequestV3,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Reset User Password (ResetPasswordV3)

    action code: 10105

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/reset

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelResetPasswordRequestV3 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body | 10142: new password cannot be same with original)

        403: Forbidden - RestErrorResponse (10137: code is expired | 10136: code is either been used or not valid anymore | 10138: code not match | 10152: verification code not found)

        404: Not Found - RestErrorResponse (20008: user not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ResetPasswordV3.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ResetPasswordV3)
async def reset_password_v3_async(
    body: ModelResetPasswordRequestV3,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Reset User Password (ResetPasswordV3)

    action code: 10105

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/reset

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelResetPasswordRequestV3 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error | 20019: unable to parse request body | 10142: new password cannot be same with original)

        403: Forbidden - RestErrorResponse (10137: code is expired | 10136: code is either been used or not valid anymore | 10138: code not match | 10152: verification code not found)

        404: Not Found - RestErrorResponse (20008: user not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ResetPasswordV3.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(SaveUserPermission)
def save_user_permission(
    body: AccountcommonPermissions,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Save User Permissions (SaveUserPermission)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions [POST]_**

    This endpoint will REPLACE user's permissions with the ones defined in body
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
        url: /iam/namespaces/{namespace}/users/{userId}/permissions

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AccountcommonPermissions in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SaveUserPermission.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(SaveUserPermission)
async def save_user_permission_async(
    body: AccountcommonPermissions,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Save User Permissions (SaveUserPermission)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions [POST]_**

    This endpoint will REPLACE user's permissions with the ones defined in body
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
        url: /iam/namespaces/{namespace}/users/{userId}/permissions

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AccountcommonPermissions in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SaveUserPermission.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(SaveUserRoles)
def save_user_roles(
    body: List[str],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Save User Roles (SaveUserRoles)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/roles [PATCH]_**

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/roles

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[str] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)

        409: Conflict - (Conflict)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SaveUserRoles.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(SaveUserRoles)
async def save_user_roles_async(
    body: List[str],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Save User Roles (SaveUserRoles)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/roles [PATCH]_**

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/roles

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[str] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)

        409: Conflict - (Conflict)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SaveUserRoles.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(SearchUser)
def search_user(
    query: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Search users (SearchUser)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/search [GET]_**
    Search all users that match the query on these fields: all login IDs (email address, phone number, and platform user id),
    userID, display name, and on the specified namespace. If the query is not defined, then it searches all users on the specified namespace.

    Properties:
        url: /iam/namespaces/{namespace}/users/search

        method: GET

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        query: (query) OPTIONAL str in query

    Responses:
        200: OK - ModelSearchUsersResponse (OK)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SearchUser.create(
        query=query,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(SearchUser)
async def search_user_async(
    query: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Search users (SearchUser)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/search [GET]_**
    Search all users that match the query on these fields: all login IDs (email address, phone number, and platform user id),
    userID, display name, and on the specified namespace. If the query is not defined, then it searches all users on the specified namespace.

    Properties:
        url: /iam/namespaces/{namespace}/users/search

        method: GET

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        query: (query) OPTIONAL str in query

    Responses:
        200: OK - ModelSearchUsersResponse (OK)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SearchUser.create(
        query=query,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(SendVerificationCode)
def send_verification_code(
    body: ModelSendVerificationCodeRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Send verification code to user (SendVerificationCode)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/me/code/request [POST]_**

    The verification code is sent to either the phone number or email address. It depends on the LoginID's value.
    Available contexts for use :
    1. **UserAccountRegistration**
    a context type used for verifying email address in user account registration. It returns 409 if the email address already verified. **_It is the default context if the Context field is empty_**
    2. **UpdateEmailAddress**
    a context type used for verify user before updating email address.(Without email address verified checking)
    3. **upgradeHeadlessAccount**
    The context is intended to be used whenever the email address wanted to be automatically verified on upgrading a headless account. If this context used, IAM rejects the request if the loginId field's value is already used by others by returning HTTP Status Code 409.

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/verificationcode

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelSendVerificationCodeRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - (20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - (10146: userID not match)

        404: Not Found - (20008: user not found | 10171: email address not found | 10139: platform account not found)

        409: Conflict - (10140: user verified | 10133: email already used)

        429: Too Many Requests - (20007: too many requests)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SendVerificationCode.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(SendVerificationCode)
async def send_verification_code_async(
    body: ModelSendVerificationCodeRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Send verification code to user (SendVerificationCode)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/me/code/request [POST]_**

    The verification code is sent to either the phone number or email address. It depends on the LoginID's value.
    Available contexts for use :
    1. **UserAccountRegistration**
    a context type used for verifying email address in user account registration. It returns 409 if the email address already verified. **_It is the default context if the Context field is empty_**
    2. **UpdateEmailAddress**
    a context type used for verify user before updating email address.(Without email address verified checking)
    3. **upgradeHeadlessAccount**
    The context is intended to be used whenever the email address wanted to be automatically verified on upgrading a headless account. If this context used, IAM rejects the request if the loginId field's value is already used by others by returning HTTP Status Code 409.

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/verificationcode

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelSendVerificationCodeRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - (20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - (10146: userID not match)

        404: Not Found - (20008: user not found | 10171: email address not found | 10139: platform account not found)

        409: Conflict - (10140: user verified | 10133: email already used)

        429: Too Many Requests - (20007: too many requests)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SendVerificationCode.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(UpdateCountryAgeRestriction)
def update_country_age_restriction(
    body: ModelCountryAgeRestrictionRequest,
    country_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update country's age restriction (UpdateCountryAgeRestriction)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/agerestrictions/countries/{countryCode} [PATCH]_**

    Properties:
        url: /iam/v2/admin/namespaces/{namespace}/countries/{countryCode}

        method: PATCH

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelCountryAgeRestrictionRequest in body

        country_code: (countryCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelCountry (OK)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateCountryAgeRestriction.create(
        body=body,
        country_code=country_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(UpdateCountryAgeRestriction)
async def update_country_age_restriction_async(
    body: ModelCountryAgeRestrictionRequest,
    country_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update country's age restriction (UpdateCountryAgeRestriction)

    ## The endpoint is going to be deprecated
    **Endpoint migration guide**
    - **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/agerestrictions/countries/{countryCode} [PATCH]_**

    Properties:
        url: /iam/v2/admin/namespaces/{namespace}/countries/{countryCode}

        method: PATCH

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelCountryAgeRestrictionRequest in body

        country_code: (countryCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelCountry (OK)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (Data not found)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateCountryAgeRestriction.create(
        body=body,
        country_code=country_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(UpdatePassword)
def update_password(
    body: ModelUserPasswordUpdateRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update User Password (UpdatePassword)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/me/password [PUT]_**

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/password

        method: PUT

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserPasswordUpdateRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - (20019: unable to parse request body | 20002: validation error | 10142: new password cannot be same with original | 10143: password not match)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (20008: user not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdatePassword.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(UpdatePassword)
async def update_password_async(
    body: ModelUserPasswordUpdateRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update User Password (UpdatePassword)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/me/password [PUT]_**

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/password

        method: PUT

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserPasswordUpdateRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - (20019: unable to parse request body | 20002: validation error | 10142: new password cannot be same with original | 10143: password not match)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - (20008: user not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdatePassword.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(UpdateUser)
def update_user(
    body: ModelUserUpdateRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update User (UpdateUser)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint([PUT]): _/iam/v3/public/namespaces/{namespace}/users/me [PUT]_**
    - **Substitute endpoint([PATCH]): _/iam/v3/public/namespaces/{namespace}/users/me [PATCH]_**
    - **Substitute endpoint([PATCH]): _/iam/v4/public/namespaces/{namespace}/users/me [PATCH]_**
    - **Note:**
    1. Prefer [PATCH] if client support PATCH method
    2. Difference in V3/v4 request body, format difference: Pascal case => Camel case

    This Endpoint support update user based on given data. **Single request can update single field or multi fields.**
    Supported field {Country, DisplayName, LanguageTag}
    Country use ISO3166-1 alpha-2 two letter, e.g. US.

    **Several case of updating email address**
    - User want to update email address of which have been verified, NewEmailAddress response field will be filled with new email address
    - User want to update email address of which have not been verified, {LoginId, OldEmailAddress, EmailAddress} response field will be filled with new email address.
    - User want to update email address of which have been verified and updated before, {LoginId, OldEmailAddress, EmailAddress} response field will be filled with verified email before. NewEmailAddress response field will be filled with newest email address.

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}

        method: PUT

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserUpdateRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelUserResponse (OK)

        400: Bad Request - (20019: unable to parse request body | 10131: invalid date of birth | 10155: country is not defined | 10154: country not found | 10130: user under age | 10132: invalid email address)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        404: Not Found - (10139: platform account not found | 20008: user not found)

        409: Conflict - (10133: email already used)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateUser.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(UpdateUser)
async def update_user_async(
    body: ModelUserUpdateRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update User (UpdateUser)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint([PUT]): _/iam/v3/public/namespaces/{namespace}/users/me [PUT]_**
    - **Substitute endpoint([PATCH]): _/iam/v3/public/namespaces/{namespace}/users/me [PATCH]_**
    - **Substitute endpoint([PATCH]): _/iam/v4/public/namespaces/{namespace}/users/me [PATCH]_**
    - **Note:**
    1. Prefer [PATCH] if client support PATCH method
    2. Difference in V3/v4 request body, format difference: Pascal case => Camel case

    This Endpoint support update user based on given data. **Single request can update single field or multi fields.**
    Supported field {Country, DisplayName, LanguageTag}
    Country use ISO3166-1 alpha-2 two letter, e.g. US.

    **Several case of updating email address**
    - User want to update email address of which have been verified, NewEmailAddress response field will be filled with new email address
    - User want to update email address of which have not been verified, {LoginId, OldEmailAddress, EmailAddress} response field will be filled with new email address.
    - User want to update email address of which have been verified and updated before, {LoginId, OldEmailAddress, EmailAddress} response field will be filled with verified email before. NewEmailAddress response field will be filled with newest email address.

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}

        method: PUT

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserUpdateRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelUserResponse (OK)

        400: Bad Request - (20019: unable to parse request body | 10131: invalid date of birth | 10155: country is not defined | 10154: country not found | 10130: user under age | 10132: invalid email address)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        404: Not Found - (10139: platform account not found | 20008: user not found)

        409: Conflict - (10133: email already used)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateUser.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateUserV3)
def update_user_v3(
    body: ModelPublicUserUpdateRequestV3,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update User (UpdateUserV3)

    This Endpoint support update user based on given data. **Single request can update single field or multi fields.**
    Supported field {country, displayName, languageTag, dateOfBirth, avatarUrl, userName}
    Country use ISO3166-1 alpha-2 two letter, e.g. US.
    Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.
    **Response body logic when user updating email address:**
    - User want to update email address of which have been verified, newEmailAddress response field will be filled with new email address.
    - User want to update email address of which have not been verified, { oldEmailAddress, emailAddress} response field will be filled with new email address.
    - User want to update email address of which have been verified and updated before, { oldEmailAddress, emailAddress} response field will be filled with verified email before. newEmailAddress response field will be filled with newest email address.

    **Important notes:**
    This endpoint provides support for client that doesn't have PATCH support, i.e. UE4 before v4.23 released.
    If the client support PATCH method, use [PATCH] /iam/v3/public/namespaces/{namespace}/users/me instead

    action code : 10103

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/me

        method: PUT

        tags: ["Users"]

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
    request = UpdateUserV3.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateUserV3)
async def update_user_v3_async(
    body: ModelPublicUserUpdateRequestV3,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update User (UpdateUserV3)

    This Endpoint support update user based on given data. **Single request can update single field or multi fields.**
    Supported field {country, displayName, languageTag, dateOfBirth, avatarUrl, userName}
    Country use ISO3166-1 alpha-2 two letter, e.g. US.
    Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.
    **Response body logic when user updating email address:**
    - User want to update email address of which have been verified, newEmailAddress response field will be filled with new email address.
    - User want to update email address of which have not been verified, { oldEmailAddress, emailAddress} response field will be filled with new email address.
    - User want to update email address of which have been verified and updated before, { oldEmailAddress, emailAddress} response field will be filled with verified email before. newEmailAddress response field will be filled with newest email address.

    **Important notes:**
    This endpoint provides support for client that doesn't have PATCH support, i.e. UE4 before v4.23 released.
    If the client support PATCH method, use [PATCH] /iam/v3/public/namespaces/{namespace}/users/me instead

    action code : 10103

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/users/me

        method: PUT

        tags: ["Users"]

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
    request = UpdateUserV3.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(UpgradeHeadlessAccount)
def upgrade_headless_account(
    body: ModelUpgradeHeadlessAccountRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upgrade user account to full account (with email) (upgradeHeadlessAccount)

    ## The endpoint is going to be deprecated

    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/me/headless/verify [POST]_**

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/upgradeHeadlessAccount

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUpgradeHeadlessAccountRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelUserResponse (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        409: Conflict - (Conflict)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpgradeHeadlessAccount.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(UpgradeHeadlessAccount)
async def upgrade_headless_account_async(
    body: ModelUpgradeHeadlessAccountRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upgrade user account to full account (with email) (upgradeHeadlessAccount)

    ## The endpoint is going to be deprecated

    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/me/headless/verify [POST]_**

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/upgradeHeadlessAccount

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUpgradeHeadlessAccountRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelUserResponse (OK)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        409: Conflict - (Conflict)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpgradeHeadlessAccount.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(UpgradeHeadlessAccountWithVerificationCode)
def upgrade_headless_account_with_verification_code(
    body: ModelUpgradeHeadlessAccountWithVerificationCodeRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upgrade headless account and automatically verified the email address if it is succeeded (UpgradeHeadlessAccountWithVerificationCode)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/me/headless/code/verify [POST]_**

    The endpoint upgrades a headless account by linking the headless account with the email address and the password. By upgrading the headless account into a full account, the user could use the email address and password for using Justice IAM.
    The endpoint is a shortcut for upgrading a headless account and verifying the email address in one call. In order to get a verification code for the endpoint, please check the send verification code endpoint.

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/upgradeHeadlessAccountWithVerificationCode

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUpgradeHeadlessAccountWithVerificationCodeRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelUserResponse (OK)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        409: Conflict - (Conflict)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpgradeHeadlessAccountWithVerificationCode.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(UpgradeHeadlessAccountWithVerificationCode)
async def upgrade_headless_account_with_verification_code_async(
    body: ModelUpgradeHeadlessAccountWithVerificationCodeRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upgrade headless account and automatically verified the email address if it is succeeded (UpgradeHeadlessAccountWithVerificationCode)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/me/headless/code/verify [POST]_**

    The endpoint upgrades a headless account by linking the headless account with the email address and the password. By upgrading the headless account into a full account, the user could use the email address and password for using Justice IAM.
    The endpoint is a shortcut for upgrading a headless account and verifying the email address in one call. In order to get a verification code for the endpoint, please check the send verification code endpoint.

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/upgradeHeadlessAccountWithVerificationCode

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUpgradeHeadlessAccountWithVerificationCodeRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelUserResponse (OK)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        409: Conflict - (Conflict)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpgradeHeadlessAccountWithVerificationCode.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(UserVerification)
def user_verification(
    body: ModelUserVerificationRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Redeem verification code sent to user (UserVerification)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/me/code/verify [POST]_**

    Redeems a verification code sent to a user to verify the user's contact address is correct
    Available ContactType : *email* or *phone*

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/verification

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserVerificationRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - (20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - (10152: verification code not found | 10137: code is expired | 10136: code is either been used or not valid anymore | 10138: code not match | 10149: verification contact type doesn't match | 10148: verification code context doesn't match the required context | 10162: invalid verification)

        404: Not Found - (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UserVerification.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(UserVerification)
async def user_verification_async(
    body: ModelUserVerificationRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Redeem verification code sent to user (UserVerification)

    ## The endpoint is going to be deprecated
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/me/code/verify [POST]_**

    Redeems a verification code sent to a user to verify the user's contact address is correct
    Available ContactType : *email* or *phone*

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/verification

        method: POST

        tags: ["Users"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserVerificationRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - (20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - (10152: verification code not found | 10137: code is expired | 10136: code is either been used or not valid anymore | 10138: code not match | 10149: verification contact type doesn't match | 10148: verification code context doesn't match the required context | 10162: invalid verification)

        404: Not Found - (10139: platform account not found | 20008: user not found)

        500: Internal Server Error - (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UserVerification.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
