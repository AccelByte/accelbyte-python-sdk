# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

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
from ..operations.users_v4 import AdminDisableUserMFAV4
from ..operations.users_v4 import AdminDownloadMyBackupCodesV4
from ..operations.users_v4 import AdminEnableMyAuthenticatorV4
from ..operations.users_v4 import AdminEnableMyBackupCodesV4
from ..operations.users_v4 import AdminGenerateMyAuthenticatorKeyV4
from ..operations.users_v4 import AdminGenerateMyBackupCodesV4
from ..operations.users_v4 import AdminGetMyBackupCodesV4
from ..operations.users_v4 import AdminGetMyEnabledFactorsV4
from ..operations.users_v4 import AdminInviteUserV4
from ..operations.users_v4 import AdminListUserRolesV4
from ..operations.users_v4 import AdminMakeFactorMyDefaultV4
from ..operations.users_v4 import AdminRemoveUserRoleV4
from ..operations.users_v4 import AdminUpdateMyUserV4
from ..operations.users_v4 import AdminUpdateUserEmailAddressV4
from ..operations.users_v4 import AdminUpdateUserRoleV4
from ..operations.users_v4 import AdminUpdateUserV4
from ..operations.users_v4 import CreateUserFromInvitationV4
from ..operations.users_v4 import PublicCreateTestUserV4
from ..operations.users_v4 import PublicCreateUserV4
from ..operations.users_v4 import PublicDisableMyAuthenticatorV4
from ..operations.users_v4 import PublicDisableMyBackupCodesV4
from ..operations.users_v4 import PublicDownloadMyBackupCodesV4
from ..operations.users_v4 import PublicEnableMyAuthenticatorV4
from ..operations.users_v4 import PublicEnableMyBackupCodesV4
from ..operations.users_v4 import PublicGenerateMyAuthenticatorKeyV4
from ..operations.users_v4 import PublicGenerateMyBackupCodesV4
from ..operations.users_v4 import PublicGetMyBackupCodesV4
from ..operations.users_v4 import PublicGetMyEnabledFactorsV4
from ..operations.users_v4 import PublicMakeFactorMyDefaultV4
from ..operations.users_v4 import PublicRemoveTrustedDeviceV4
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
    request = AdminDisableMyAuthenticatorV4.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDisableMyAuthenticatorV4)
async def admin_disable_my_authenticator_v4_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = AdminDisableMyAuthenticatorV4.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDisableMyBackupCodesV4)
def admin_disable_my_backup_codes_v4(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = AdminDisableMyBackupCodesV4.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDisableMyBackupCodesV4)
async def admin_disable_my_backup_codes_v4_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = AdminDisableMyBackupCodesV4.create()
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
    request = AdminDownloadMyBackupCodesV4.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDownloadMyBackupCodesV4)
async def admin_download_my_backup_codes_v4_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
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
    request = AdminEnableMyBackupCodesV4.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminEnableMyBackupCodesV4)
async def admin_enable_my_backup_codes_v4_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = AdminEnableMyBackupCodesV4.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGenerateMyAuthenticatorKeyV4)
def admin_generate_my_authenticator_key_v4(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = AdminGenerateMyAuthenticatorKeyV4.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGenerateMyAuthenticatorKeyV4)
async def admin_generate_my_authenticator_key_v4_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = AdminGenerateMyAuthenticatorKeyV4.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGenerateMyBackupCodesV4)
def admin_generate_my_backup_codes_v4(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = AdminGenerateMyBackupCodesV4.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGenerateMyBackupCodesV4)
async def admin_generate_my_backup_codes_v4_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = AdminGenerateMyBackupCodesV4.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetMyBackupCodesV4)
def admin_get_my_backup_codes_v4(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = AdminGetMyBackupCodesV4.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetMyBackupCodesV4)
async def admin_get_my_backup_codes_v4_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = AdminGetMyBackupCodesV4.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetMyEnabledFactorsV4)
def admin_get_my_enabled_factors_v4(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = AdminGetMyEnabledFactorsV4.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetMyEnabledFactorsV4)
async def admin_get_my_enabled_factors_v4_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
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
    request = AdminMakeFactorMyDefaultV4.create(
        factor=factor,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminMakeFactorMyDefaultV4)
async def admin_make_factor_my_default_v4_async(
    factor: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
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


@same_doc_as(AdminUpdateMyUserV4)
def admin_update_my_user_v4(
    body: ModelUserUpdateRequestV3,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
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


@same_doc_as(PublicDownloadMyBackupCodesV4)
def public_download_my_backup_codes_v4(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
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


@same_doc_as(PublicGenerateMyAuthenticatorKeyV4)
def public_generate_my_authenticator_key_v4(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
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


@same_doc_as(PublicMakeFactorMyDefaultV4)
def public_make_factor_my_default_v4(
    factor: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
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


@same_doc_as(PublicUpdateUserEmailAddressV4)
def public_update_user_email_address_v4(
    body: ModelEmailUpdateRequestV4,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
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
