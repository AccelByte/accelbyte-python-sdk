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

from ....core import get_namespace as get_services_namespace
from ....core import run_request
from ....core import deprecated
from ....core import same_doc_as

from ..models import AccountcommonCountryAgeRestriction
from ..models import AccountcommonListUsersWithPlatformAccountsResponse
from ..models import AccountcommonPermissions
from ..models import AccountcommonUserLinkedPlatform
from ..models import AccountcommonUserLinkedPlatformsResponseV3
from ..models import AccountcommonUserPlatforms
from ..models import ModelAdminInvitationV3
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
from ..models import ModelGetPublisherUserResponse
from ..models import ModelGetUserBanV3Response
from ..models import ModelGetUserJusticePlatformAccountResponse
from ..models import ModelGetUserMapping
from ..models import ModelGetUsersResponseWithPaginationV3
from ..models import ModelInviteAdminRequestV3
from ..models import ModelInviteAdminResponseV3
from ..models import ModelLinkPlatformAccountRequest
from ..models import ModelLinkRequest
from ..models import ModelListEmailAddressRequest
from ..models import ModelListUserResponseV3
from ..models import ModelLoginHistoriesResponse
from ..models import ModelNamespaceRoleRequest
from ..models import ModelPermissionDeleteRequest
from ..models import ModelPlatformUserIDRequest
from ..models import ModelPublicUserInformationResponseV3
from ..models import ModelPublicUserResponse
from ..models import ModelPublicUserResponseV3
from ..models import ModelPublicUsersResponse
from ..models import ModelResetPasswordRequest
from ..models import ModelResetPasswordRequestV3
from ..models import ModelSearchUsersByPlatformIDResponse
from ..models import ModelSearchUsersResponse
from ..models import ModelSearchUsersResponseWithPaginationV3
from ..models import ModelSendVerificationCodeRequest
from ..models import ModelSendVerificationCodeRequestV3
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
from ..models import ModelUserCreateFromInvitationRequestV3
from ..models import ModelUserCreateRequest
from ..models import ModelUserCreateRequestV3
from ..models import ModelUserCreateResponse
from ..models import ModelUserCreateResponseV3
from ..models import ModelUserDeletionStatusResponse
from ..models import ModelUserInformation
from ..models import ModelUserPasswordUpdateRequest
from ..models import ModelUserPasswordUpdateV3Request
from ..models import ModelUserResponse
from ..models import ModelUserResponseV3
from ..models import ModelUserUpdateRequest
from ..models import ModelUserUpdateRequestV3
from ..models import ModelUserVerificationRequest
from ..models import ModelUserVerificationRequestV3
from ..models import ModelVerificationCodeResponse
from ..models import ModelWebLinkingResponse
from ..models import RestErrorResponse
from ..models import RestapiErrorResponse

from ..operations.users import AddUserPermission
from ..operations.users import AddUserRole
from ..operations.users import AdminAddUserPermissionsV3
from ..operations.users import AdminAddUserRoleV3
from ..operations.users import AdminBanUserV2
from ..operations.users import AdminBanUserV3
from ..operations.users import AdminCreateJusticeUser
from ..operations.users import AdminCreateUserRolesV2
from ..operations.users import AdminDeletePlatformLinkV2
from ..operations.users import AdminDeleteUserInformationV3
from ..operations.users import AdminDeleteUserPermissionBulkV3
from ..operations.users import AdminDeleteUserPermissionV3
from ..operations.users import AdminDeleteUserRoleV3
from ..operations.users import AdminDeleteUserRolesV3
from ..operations.users import AdminDisableUserV2
from ..operations.users import AdminEnableUserV2
from ..operations.users import AdminGetAgeRestrictionStatusV2
from ..operations.users import AdminGetAgeRestrictionStatusV3
from ..operations.users import AdminGetBulkUserByEmailAddressV3
from ..operations.users import AdminGetListCountryAgeRestrictionV3
from ..operations.users import AdminGetMyUserV3
from ..operations.users import AdminGetUserBanV2
from ..operations.users import AdminGetUserBanV3
from ..operations.users import AdminGetUserByEmailAddressV3
from ..operations.users import AdminGetUserByUserIdV2
from ..operations.users import AdminGetUserByUserIdV3
from ..operations.users import AdminGetUserDeletionStatusV3
from ..operations.users import AdminGetUserLoginHistoriesV3
from ..operations.users import AdminGetUserPlatformAccountsV3
from ..operations.users import AdminInviteUserV3
from ..operations.users import AdminLinkPlatformAccount
from ..operations.users import AdminListUsersV3
from ..operations.users import AdminPlatformLinkV3
from ..operations.users import AdminPlatformUnlinkV3
from ..operations.users import AdminPutUserRolesV2
from ..operations.users import AdminResetPasswordV2
from ..operations.users import AdminSaveUserRoleV3
from ..operations.users import AdminSearchUserV3
from ..operations.users import AdminSearchUsersV2
from ..operations.users import AdminSendVerificationCodeV3
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
from ..operations.users import ListAdminsV3
from ..operations.users import ListCrossNamespaceAccountLink
from ..operations.users import PlatformLink
from ..operations.users import PlatformUnlink
from ..operations.users import PublicCreateJusticeUser
from ..operations.users import PublicCreateUserV2
from ..operations.users import PublicCreateUserV3
from ..operations.users import PublicDeletePlatformLinkV2
from ..operations.users import PublicForgotPasswordV2
from ..operations.users import PublicForgotPasswordV3
from ..operations.users import PublicGetAsyncStatus
from ..operations.users import PublicGetMyUserV3
from ..operations.users import PublicGetUserBan
from ..operations.users import PublicGetUserBanHistoryV3
from ..operations.users import PublicGetUserByPlatformUserIDV3
from ..operations.users import PublicGetUserByUserIdV3
from ..operations.users import PublicGetUserByUserIDV2
from ..operations.users import PublicGetUserLoginHistoriesV3
from ..operations.users import PublicGetUserPlatformAccountsV3
from ..operations.users import PublicLinkPlatformAccount
from ..operations.users import PublicListUserIDByPlatformUserIDsV3
from ..operations.users import PublicPlatformLinkV2
from ..operations.users import PublicPlatformLinkV3
from ..operations.users import PublicPlatformUnlinkV3
from ..operations.users import PublicResetPasswordV2
from ..operations.users import PublicSearchUserV3
from ..operations.users import PublicSendVerificationCodeV3
from ..operations.users import PublicUpdatePasswordV2
from ..operations.users import PublicUpdatePasswordV3
from ..operations.users import PublicUpdateUserV2
from ..operations.users import PublicUpdateUserV3
from ..operations.users import PublicUpgradeHeadlessAccountV3
from ..operations.users import PublicUserVerificationV3
from ..operations.users import PublicValidateUserByUserIDAndPasswordV3
from ..operations.users import PublicVerifyHeadlessAccountV3
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


@same_doc_as(AddUserPermission)
def add_user_permission(action: int, body: ModelUpdatePermissionScheduleRequest, resource: str, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AddUserPermission.create(
        action=action,
        body=body,
        resource=resource,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AddUserRole)
def add_user_role(role_id: str, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AddUserRole.create(
        role_id=role_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminAddUserPermissionsV3)
def admin_add_user_permissions_v3(body: AccountcommonPermissions, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminAddUserPermissionsV3.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminAddUserRoleV3)
def admin_add_user_role_v3(role_id: str, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminAddUserRoleV3.create(
        role_id=role_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminBanUserV2)
def admin_ban_user_v2(body: ModelBanCreateRequest, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminBanUserV2.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminBanUserV3)
def admin_ban_user_v3(body: ModelBanCreateRequest, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminBanUserV3.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminCreateJusticeUser)
def admin_create_justice_user(target_namespace: str, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminCreateJusticeUser.create(
        target_namespace=target_namespace,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminCreateUserRolesV2)
def admin_create_user_roles_v2(body: List[str], user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminCreateUserRolesV2.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminDeletePlatformLinkV2)
def admin_delete_platform_link_v2(platform_id: str, user_id: str, platform_namespace: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminDeletePlatformLinkV2.create(
        platform_id=platform_id,
        user_id=user_id,
        platform_namespace=platform_namespace,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminDeleteUserInformationV3)
def admin_delete_user_information_v3(user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminDeleteUserInformationV3.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminDeleteUserPermissionBulkV3)
def admin_delete_user_permission_bulk_v3(body: List[ModelPermissionDeleteRequest], user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminDeleteUserPermissionBulkV3.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminDeleteUserPermissionV3)
def admin_delete_user_permission_v3(action: int, resource: str, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminDeleteUserPermissionV3.create(
        action=action,
        resource=resource,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminDeleteUserRoleV3)
def admin_delete_user_role_v3(role_id: str, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminDeleteUserRoleV3.create(
        role_id=role_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminDeleteUserRolesV3)
def admin_delete_user_roles_v3(body: List[str], user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminDeleteUserRolesV3.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminDisableUserV2)
def admin_disable_user_v2(body: ModelDisableUserRequest, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminDisableUserV2.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminEnableUserV2)
def admin_enable_user_v2(user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminEnableUserV2.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminGetAgeRestrictionStatusV2)
def admin_get_age_restriction_status_v2(namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetAgeRestrictionStatusV2.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminGetAgeRestrictionStatusV3)
def admin_get_age_restriction_status_v3(namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetAgeRestrictionStatusV3.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminGetBulkUserByEmailAddressV3)
def admin_get_bulk_user_by_email_address_v3(body: ModelListEmailAddressRequest, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetBulkUserByEmailAddressV3.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminGetListCountryAgeRestrictionV3)
def admin_get_list_country_age_restriction_v3(namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetListCountryAgeRestrictionV3.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminGetMyUserV3)
def admin_get_my_user_v3(x_additional_headers: Optional[Dict[str, str]] = None):
    request = AdminGetMyUserV3.create()
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminGetUserBanV2)
def admin_get_user_ban_v2(user_id: str, active_only: Optional[bool] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetUserBanV2.create(
        user_id=user_id,
        active_only=active_only,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminGetUserBanV3)
def admin_get_user_ban_v3(user_id: str, active_only: Optional[bool] = None, after: Optional[str] = None, before: Optional[str] = None, limit: Optional[int] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
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
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminGetUserByEmailAddressV3)
def admin_get_user_by_email_address_v3(email_address: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetUserByEmailAddressV3.create(
        email_address=email_address,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminGetUserByUserIdV2)
def admin_get_user_by_user_id_v2(user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetUserByUserIdV2.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminGetUserByUserIdV3)
def admin_get_user_by_user_id_v3(user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetUserByUserIdV3.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminGetUserDeletionStatusV3)
def admin_get_user_deletion_status_v3(user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetUserDeletionStatusV3.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminGetUserLoginHistoriesV3)
def admin_get_user_login_histories_v3(user_id: str, after: Optional[float] = None, before: Optional[float] = None, limit: Optional[float] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetUserLoginHistoriesV3.create(
        user_id=user_id,
        after=after,
        before=before,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminGetUserPlatformAccountsV3)
def admin_get_user_platform_accounts_v3(user_id: str, after: Optional[str] = None, before: Optional[str] = None, limit: Optional[int] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetUserPlatformAccountsV3.create(
        user_id=user_id,
        after=after,
        before=before,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminInviteUserV3)
def admin_invite_user_v3(body: ModelInviteAdminRequestV3, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminInviteUserV3.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminLinkPlatformAccount)
def admin_link_platform_account(body: ModelLinkPlatformAccountRequest, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminLinkPlatformAccount.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminListUsersV3)
def admin_list_users_v3(limit: Optional[int] = None, offset: Optional[int] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminListUsersV3.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminPlatformLinkV3)
def admin_platform_link_v3(platform_id: str, ticket: str, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminPlatformLinkV3.create(
        platform_id=platform_id,
        ticket=ticket,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminPlatformUnlinkV3)
def admin_platform_unlink_v3(body: ModelUnlinkUserPlatformRequest, platform_id: str, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminPlatformUnlinkV3.create(
        body=body,
        platform_id=platform_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminPutUserRolesV2)
def admin_put_user_roles_v2(body: List[str], user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminPutUserRolesV2.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminResetPasswordV2)
def admin_reset_password_v2(body: ModelUserPasswordUpdateRequest, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminResetPasswordV2.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminSaveUserRoleV3)
def admin_save_user_role_v3(body: List[ModelNamespaceRoleRequest], user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminSaveUserRoleV3.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminSearchUserV3)
def admin_search_user_v3(by: Optional[str] = None, end_date: Optional[str] = None, limit: Optional[int] = None, offset: Optional[str] = None, query: Optional[str] = None, start_date: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminSearchUserV3.create(
        by=by,
        end_date=end_date,
        limit=limit,
        offset=offset,
        query=query,
        start_date=start_date,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminSearchUsersV2)
def admin_search_users_v2(platform_id: str, after: Optional[str] = None, before: Optional[str] = None, display_name: Optional[str] = None, limit: Optional[str] = None, login_id: Optional[str] = None, platform_user_id: Optional[str] = None, role_id: Optional[str] = None, user_id: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
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
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminSendVerificationCodeV3)
def admin_send_verification_code_v3(body: ModelSendVerificationCodeRequestV3, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminSendVerificationCodeV3.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminUpdateAgeRestrictionConfigV2)
def admin_update_age_restriction_config_v2(body: ModelAgeRestrictionRequest, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminUpdateAgeRestrictionConfigV2.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminUpdateAgeRestrictionConfigV3)
def admin_update_age_restriction_config_v3(body: ModelAgeRestrictionRequestV3, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminUpdateAgeRestrictionConfigV3.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminUpdateCountryAgeRestrictionV3)
def admin_update_country_age_restriction_v3(body: ModelCountryAgeRestrictionV3Request, country_code: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminUpdateCountryAgeRestrictionV3.create(
        body=body,
        country_code=country_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminUpdateUserBanV3)
def admin_update_user_ban_v3(ban_id: str, body: ModelBanUpdateRequest, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminUpdateUserBanV3.create(
        ban_id=ban_id,
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminUpdateUserDeletionStatusV3)
def admin_update_user_deletion_status_v3(body: ModelUpdateUserDeletionStatusRequest, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminUpdateUserDeletionStatusV3.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminUpdateUserPermissionV3)
def admin_update_user_permission_v3(body: AccountcommonPermissions, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminUpdateUserPermissionV3.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminUpdateUserStatusV3)
def admin_update_user_status_v3(body: ModelUpdateUserStatusRequest, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminUpdateUserStatusV3.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminUpdateUserV2)
def admin_update_user_v2(body: ModelUserUpdateRequest, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminUpdateUserV2.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminUpdateUserV3)
def admin_update_user_v3(body: ModelUserUpdateRequestV3, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminUpdateUserV3.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminUpgradeHeadlessAccountV3)
def admin_upgrade_headless_account_v3(body: ModelUpgradeHeadlessAccountWithVerificationCodeRequestV3, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminUpgradeHeadlessAccountV3.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminVerifyAccountV3)
def admin_verify_account_v3(body: ModelUserVerificationRequest, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminVerifyAccountV3.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminVerifyUserWithoutVerificationCodeV3)
def admin_verify_user_without_verification_code_v3(user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminVerifyUserWithoutVerificationCodeV3.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(BanUser)
def ban_user(body: ModelBanCreateRequest, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = BanUser.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(CreateUser)
def create_user(body: ModelUserCreateRequest, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateUser.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(CreateUserFromInvitationV3)
def create_user_from_invitation_v3(body: ModelUserCreateFromInvitationRequestV3, invitation_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateUserFromInvitationV3.create(
        body=body,
        invitation_id=invitation_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(DeleteUser)
def delete_user(user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteUser.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(DeleteUserInformation)
def delete_user_information(user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteUserInformation.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(DeleteUserPermission)
def delete_user_permission(action: int, resource: str, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteUserPermission.create(
        action=action,
        resource=resource,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(DeleteUserRole)
def delete_user_role(role_id: str, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteUserRole.create(
        role_id=role_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@deprecated
@same_doc_as(DisableUser)
def disable_user(body: ModelDisableUserRequest, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DisableUser.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(DisableUserBan)
def disable_user_ban(ban_id: str, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DisableUserBan.create(
        ban_id=ban_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@deprecated
@same_doc_as(EnableUser)
def enable_user(user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = EnableUser.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(EnableUserBan)
def enable_user_ban(ban_id: str, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = EnableUserBan.create(
        ban_id=ban_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(ForgotPassword)
def forgot_password(body: ModelSendVerificationCodeRequest, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ForgotPassword.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetAdminInvitationV3)
def get_admin_invitation_v3(invitation_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetAdminInvitationV3.create(
        invitation_id=invitation_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetAdminUsersByRoleID)
def get_admin_users_by_role_id(after: Optional[int] = None, before: Optional[int] = None, limit: Optional[int] = None, role_id: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetAdminUsersByRoleID.create(
        after=after,
        before=before,
        limit=limit,
        role_id=role_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetAdminUsersByRoleIdV3)
def get_admin_users_by_role_id_v3(role_id: str, after: Optional[int] = None, before: Optional[int] = None, limit: Optional[int] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetAdminUsersByRoleIdV3.create(
        role_id=role_id,
        after=after,
        before=before,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetListCountryAgeRestriction)
def get_list_country_age_restriction(namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetListCountryAgeRestriction.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetListJusticePlatformAccounts)
def get_list_justice_platform_accounts(user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetListJusticePlatformAccounts.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetPublisherUser)
def get_publisher_user(user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetPublisherUser.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetUserBanHistory)
def get_user_ban_history(user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserBanHistory.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetUserByLoginID)
def get_user_by_login_id(login_id: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserByLoginID.create(
        login_id=login_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetUserByPlatformUserID)
def get_user_by_platform_user_id(platform_id: str, platform_user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserByPlatformUserID.create(
        platform_id=platform_id,
        platform_user_id=platform_user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetUserByUserID)
def get_user_by_user_id(user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserByUserID.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetUserInformation)
def get_user_information(user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserInformation.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@deprecated
@same_doc_as(GetUserJusticePlatformAccount)
def get_user_justice_platform_account(target_namespace: str, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserJusticePlatformAccount.create(
        target_namespace=target_namespace,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetUserLoginHistories)
def get_user_login_histories(user_id: str, after: Optional[float] = None, before: Optional[float] = None, limit: Optional[float] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserLoginHistories.create(
        user_id=user_id,
        after=after,
        before=before,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetUserMapping)
def get_user_mapping(target_namespace: str, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserMapping.create(
        target_namespace=target_namespace,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetUserPlatformAccounts)
def get_user_platform_accounts(user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserPlatformAccounts.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetUserVerificationCode)
def get_user_verification_code(user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserVerificationCode.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetUsersByLoginIds)
def get_users_by_login_ids(login_ids: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUsersByLoginIds.create(
        login_ids=login_ids,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(ListAdminsV3)
def list_admins_v3(after: Optional[str] = None, before: Optional[str] = None, limit: Optional[int] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ListAdminsV3.create(
        after=after,
        before=before,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@deprecated
@same_doc_as(ListCrossNamespaceAccountLink)
def list_cross_namespace_account_link(linking_token: str, user_id: str, platform_id: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ListCrossNamespaceAccountLink.create(
        linking_token=linking_token,
        user_id=user_id,
        platform_id=platform_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PlatformLink)
def platform_link(platform_id: str, ticket: str, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PlatformLink.create(
        platform_id=platform_id,
        ticket=ticket,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PlatformUnlink)
def platform_unlink(platform_id: str, user_id: str, platform_namespace: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PlatformUnlink.create(
        platform_id=platform_id,
        user_id=user_id,
        platform_namespace=platform_namespace,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicCreateJusticeUser)
def public_create_justice_user(target_namespace: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicCreateJusticeUser.create(
        target_namespace=target_namespace,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicCreateUserV2)
def public_create_user_v2(body: ModelUserCreateRequest, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicCreateUserV2.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicCreateUserV3)
def public_create_user_v3(body: ModelUserCreateRequestV3, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicCreateUserV3.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicDeletePlatformLinkV2)
def public_delete_platform_link_v2(platform_id: str, user_id: str, platform_namespace: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicDeletePlatformLinkV2.create(
        platform_id=platform_id,
        user_id=user_id,
        platform_namespace=platform_namespace,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicForgotPasswordV2)
def public_forgot_password_v2(body: ModelSendVerificationCodeRequest, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicForgotPasswordV2.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicForgotPasswordV3)
def public_forgot_password_v3(body: ModelForgotPasswordRequestV3, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicForgotPasswordV3.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicGetAsyncStatus)
def public_get_async_status(request_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetAsyncStatus.create(
        request_id=request_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicGetMyUserV3)
def public_get_my_user_v3(x_additional_headers: Optional[Dict[str, str]] = None):
    request = PublicGetMyUserV3.create()
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicGetUserBan)
def public_get_user_ban(user_id: str, active_only: Optional[bool] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUserBan.create(
        user_id=user_id,
        active_only=active_only,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicGetUserBanHistoryV3)
def public_get_user_ban_history_v3(user_id: str, active_only: Optional[bool] = None, after: Optional[str] = None, before: Optional[str] = None, limit: Optional[int] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
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
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicGetUserByPlatformUserIDV3)
def public_get_user_by_platform_user_idv3(platform_id: str, platform_user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUserByPlatformUserIDV3.create(
        platform_id=platform_id,
        platform_user_id=platform_user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicGetUserByUserIdV3)
def public_get_user_by_user_id_v3(user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUserByUserIdV3.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicGetUserByUserIDV2)
def public_get_user_by_user_idv2(user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUserByUserIDV2.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicGetUserLoginHistoriesV3)
def public_get_user_login_histories_v3(user_id: str, after: Optional[float] = None, before: Optional[float] = None, limit: Optional[float] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUserLoginHistoriesV3.create(
        user_id=user_id,
        after=after,
        before=before,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicGetUserPlatformAccountsV3)
def public_get_user_platform_accounts_v3(user_id: str, after: Optional[str] = None, before: Optional[str] = None, limit: Optional[int] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUserPlatformAccountsV3.create(
        user_id=user_id,
        after=after,
        before=before,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicLinkPlatformAccount)
def public_link_platform_account(body: ModelLinkPlatformAccountRequest, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicLinkPlatformAccount.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicListUserIDByPlatformUserIDsV3)
def public_list_user_id_by_platform_user_i_ds_v3(body: ModelPlatformUserIDRequest, platform_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicListUserIDByPlatformUserIDsV3.create(
        body=body,
        platform_id=platform_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicPlatformLinkV2)
def public_platform_link_v2(platform_id: str, ticket: str, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicPlatformLinkV2.create(
        platform_id=platform_id,
        ticket=ticket,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicPlatformLinkV3)
def public_platform_link_v3(platform_id: str, ticket: str, redirect_uri: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicPlatformLinkV3.create(
        platform_id=platform_id,
        ticket=ticket,
        redirect_uri=redirect_uri,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicPlatformUnlinkV3)
def public_platform_unlink_v3(body: ModelUnlinkUserPlatformRequest, platform_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicPlatformUnlinkV3.create(
        body=body,
        platform_id=platform_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicResetPasswordV2)
def public_reset_password_v2(body: ModelResetPasswordRequest, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicResetPasswordV2.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicSearchUserV3)
def public_search_user_v3(by: Optional[str] = None, query: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicSearchUserV3.create(
        by=by,
        query=query,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicSendVerificationCodeV3)
def public_send_verification_code_v3(body: ModelSendVerificationCodeRequestV3, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicSendVerificationCodeV3.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicUpdatePasswordV2)
def public_update_password_v2(body: ModelUserPasswordUpdateRequest, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicUpdatePasswordV2.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicUpdatePasswordV3)
def public_update_password_v3(body: ModelUserPasswordUpdateV3Request, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicUpdatePasswordV3.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicUpdateUserV2)
def public_update_user_v2(body: ModelUserUpdateRequest, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicUpdateUserV2.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicUpdateUserV3)
def public_update_user_v3(body: ModelUserUpdateRequestV3, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicUpdateUserV3.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicUpgradeHeadlessAccountV3)
def public_upgrade_headless_account_v3(body: ModelUpgradeHeadlessAccountWithVerificationCodeRequestV3, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicUpgradeHeadlessAccountV3.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicUserVerificationV3)
def public_user_verification_v3(body: ModelUserVerificationRequestV3, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicUserVerificationV3.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicValidateUserByUserIDAndPasswordV3)
def public_validate_user_by_user_id_and_password_v3(password: str, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicValidateUserByUserIDAndPasswordV3.create(
        password=password,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicVerifyHeadlessAccountV3)
def public_verify_headless_account_v3(body: ModelUpgradeHeadlessAccountV3Request, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicVerifyHeadlessAccountV3.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicWebLinkPlatform)
def public_web_link_platform(platform_id: str, client_id: Optional[str] = None, redirect_uri: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicWebLinkPlatform.create(
        platform_id=platform_id,
        client_id=client_id,
        redirect_uri=redirect_uri,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicWebLinkPlatformEstablish)
def public_web_link_platform_establish(platform_id: str, state: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicWebLinkPlatformEstablish.create(
        platform_id=platform_id,
        state=state,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(ResetPassword)
def reset_password(body: ModelResetPasswordRequest, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ResetPassword.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(ResetPasswordV3)
def reset_password_v3(body: ModelResetPasswordRequestV3, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ResetPasswordV3.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(SaveUserPermission)
def save_user_permission(body: AccountcommonPermissions, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = SaveUserPermission.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(SaveUserRoles)
def save_user_roles(body: List[str], user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = SaveUserRoles.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@deprecated
@same_doc_as(SearchUser)
def search_user(query: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = SearchUser.create(
        query=query,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(SendVerificationCode)
def send_verification_code(body: ModelSendVerificationCodeRequest, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = SendVerificationCode.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UpdateCountryAgeRestriction)
def update_country_age_restriction(body: ModelCountryAgeRestrictionRequest, country_code: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateCountryAgeRestriction.create(
        body=body,
        country_code=country_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@deprecated
@same_doc_as(UpdatePassword)
def update_password(body: ModelUserPasswordUpdateRequest, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdatePassword.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UpdateUser)
def update_user(body: ModelUserUpdateRequest, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateUser.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UpdateUserV3)
def update_user_v3(body: ModelUserUpdateRequestV3, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateUserV3.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UpgradeHeadlessAccount)
def upgrade_headless_account(body: ModelUpgradeHeadlessAccountRequest, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpgradeHeadlessAccount.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UpgradeHeadlessAccountWithVerificationCode)
def upgrade_headless_account_with_verification_code(body: ModelUpgradeHeadlessAccountWithVerificationCodeRequest, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpgradeHeadlessAccountWithVerificationCode.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UserVerification)
def user_verification(body: ModelUserVerificationRequest, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UserVerification.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)
