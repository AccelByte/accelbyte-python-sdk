# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.20.0)

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

from .utils import randomize

from ..api.iam.models import AccountCreateTestUserRequestV4
from ..api.iam.models import AccountCreateTestUserResponseV4
from ..api.iam.models import AccountCreateTestUsersRequestV4
from ..api.iam.models import AccountCreateTestUsersResponseV4
from ..api.iam.models import AccountCreateUserRequestV4
from ..api.iam.models import AccountCreateUserResponseV4
from ..api.iam.models import AccountUpgradeHeadlessAccountRequestV4
from ..api.iam.models import AccountUpgradeHeadlessAccountWithVerificationCodeRequestV4
from ..api.iam.models import AccountUserActiveBanResponseV4
from ..api.iam.models import AccountUserPermissionsResponseV4
from ..api.iam.models import AccountUserResponseV4
from ..api.iam.models import AccountcommonBan
from ..api.iam.models import AccountcommonBanReason
from ..api.iam.models import AccountcommonBanReasonV3
from ..api.iam.models import AccountcommonBanReasons
from ..api.iam.models import AccountcommonBanReasonsV3
from ..api.iam.models import AccountcommonBanV3
from ..api.iam.models import AccountcommonBannedByV3
from ..api.iam.models import AccountcommonBans
from ..api.iam.models import AccountcommonBansV3
from ..api.iam.models import AccountcommonClientPermission
from ..api.iam.models import AccountcommonClientPermissionV3
from ..api.iam.models import AccountcommonClientPermissions
from ..api.iam.models import AccountcommonClientPermissionsV3
from ..api.iam.models import AccountcommonConflictedUserPlatformAccounts
from ..api.iam.models import AccountcommonCountry
from ..api.iam.models import AccountcommonCountryAgeRestriction
from ..api.iam.models import AccountcommonDescription
from ..api.iam.models import AccountcommonDistinctLinkedPlatformV3
from ..api.iam.models import AccountcommonDistinctPlatformResponseV3
from ..api.iam.models import AccountcommonInputValidationDescription
from ..api.iam.models import AccountcommonJWTBanV3
from ..api.iam.models import AccountcommonListUsersWithPlatformAccountsResponse
from ..api.iam.models import AccountcommonNamespaceRole
from ..api.iam.models import AccountcommonNetflixCertificates
from ..api.iam.models import AccountcommonPagination
from ..api.iam.models import AccountcommonPaginationV3
from ..api.iam.models import AccountcommonPermission
from ..api.iam.models import AccountcommonPermissionV3
from ..api.iam.models import AccountcommonPermissions
from ..api.iam.models import AccountcommonPermissionsV3
from ..api.iam.models import AccountcommonPlatformAccount
from ..api.iam.models import AccountcommonPlatformUserInformationV3
from ..api.iam.models import AccountcommonRegisteredDomain
from ..api.iam.models import AccountcommonRole
from ..api.iam.models import AccountcommonRoleManager
from ..api.iam.models import AccountcommonRoleManagerV3
from ..api.iam.models import AccountcommonRoleMember
from ..api.iam.models import AccountcommonRoleMemberV3
from ..api.iam.models import AccountcommonRoleV3
from ..api.iam.models import AccountcommonSimpleUserPlatformInfoV3
from ..api.iam.models import AccountcommonUserInformationV3
from ..api.iam.models import AccountcommonUserLinkedPlatform
from ..api.iam.models import AccountcommonUserLinkedPlatformV3
from ..api.iam.models import AccountcommonUserLinkedPlatformsResponseV3
from ..api.iam.models import AccountcommonUserPlatformInfo
from ..api.iam.models import AccountcommonUserPlatforms
from ..api.iam.models import AccountcommonUserSearchByPlatformIDResult
from ..api.iam.models import AccountcommonUserSearchResult
from ..api.iam.models import AccountcommonUserWithLinkedPlatformAccounts
from ..api.iam.models import AccountcommonUserWithPlatformAccounts
from ..api.iam.models import BannedBy
from ..api.iam.models import BloomFilterJSON
from ..api.iam.models import ClientmodelClientCreateRequest
from ..api.iam.models import ClientmodelClientCreationResponse
from ..api.iam.models import ClientmodelClientCreationV3Request
from ..api.iam.models import ClientmodelClientResponse
from ..api.iam.models import ClientmodelClientUpdateRequest
from ..api.iam.models import ClientmodelClientUpdateSecretRequest
from ..api.iam.models import ClientmodelClientUpdateV3Request
from ..api.iam.models import ClientmodelClientV3Response
from ..api.iam.models import ClientmodelClientsV3Response
from ..api.iam.models import ClientmodelV3ClientUpdateSecretRequest
from ..api.iam.models import LegalAcceptedPoliciesRequest
from ..api.iam.models import ModelAddUserRoleV4Request
from ..api.iam.models import ModelAgeRestrictionRequest
from ..api.iam.models import ModelAgeRestrictionRequestV3
from ..api.iam.models import ModelAgeRestrictionResponse
from ..api.iam.models import ModelAgeRestrictionResponseV3
from ..api.iam.models import ModelAssignUserV4Request
from ..api.iam.models import ModelAssignedUserV4Response
from ..api.iam.models import ModelAuthenticatorKeyResponseV4
from ..api.iam.models import ModelBackupCodesResponseV4
from ..api.iam.models import ModelBanCreateRequest
from ..api.iam.models import ModelBanUpdateRequest
from ..api.iam.models import ModelBulkBanCreateRequestV3
from ..api.iam.models import ModelBulkUnbanCreateRequestV3
from ..api.iam.models import ModelCheckValidUserIDRequestV4
from ..api.iam.models import ModelCountry
from ..api.iam.models import ModelCountryAgeRestrictionRequest
from ..api.iam.models import ModelCountryAgeRestrictionV3Request
from ..api.iam.models import ModelCountryV3Response
from ..api.iam.models import ModelCreateJusticeUserResponse
from ..api.iam.models import ModelDeviceBanRequestV4
from ..api.iam.models import ModelDeviceBanResponseV4
from ..api.iam.models import ModelDeviceBanUpdateRequestV4
from ..api.iam.models import ModelDeviceBannedResponseV4
from ..api.iam.models import ModelDeviceBansResponseV4
from ..api.iam.models import ModelDeviceIDDecryptResponseV4
from ..api.iam.models import ModelDeviceResponseV4
from ..api.iam.models import ModelDeviceTypeResponseV4
from ..api.iam.models import ModelDeviceTypesResponseV4
from ..api.iam.models import ModelDeviceUserResponseV4
from ..api.iam.models import ModelDeviceUsersResponseV4
from ..api.iam.models import ModelDevicesResponseV4
from ..api.iam.models import ModelDisableUserRequest
from ..api.iam.models import ModelEmailUpdateRequestV4
from ..api.iam.models import ModelEnabledFactorsResponseV4
from ..api.iam.models import ModelFailedBanUnbanUserV3
from ..api.iam.models import ModelForgotPasswordRequestV3
from ..api.iam.models import ModelGetAdminUsersResponse
from ..api.iam.models import ModelGetPublisherUserResponse
from ..api.iam.models import ModelGetPublisherUserV3Response
from ..api.iam.models import ModelGetUserBanV3Response
from ..api.iam.models import ModelGetUserJusticePlatformAccountResponse
from ..api.iam.models import ModelGetUserMapping
from ..api.iam.models import ModelGetUserMappingV3
from ..api.iam.models import ModelGetUsersResponseWithPaginationV3
from ..api.iam.models import ModelInputValidationData
from ..api.iam.models import ModelInputValidationDataPublic
from ..api.iam.models import ModelInputValidationUpdatePayload
from ..api.iam.models import ModelInputValidationsPublicResponse
from ..api.iam.models import ModelInputValidationsResponse
from ..api.iam.models import ModelInviteUserRequestV3
from ..api.iam.models import ModelInviteUserRequestV4
from ..api.iam.models import ModelInviteUserResponseV3
from ..api.iam.models import ModelLinkPlatformAccountRequest
from ..api.iam.models import ModelLinkPlatformAccountWithProgressionRequest
from ..api.iam.models import ModelLinkRequest
from ..api.iam.models import ModelListAssignedUsersV4Response
from ..api.iam.models import ModelListBulkUserBanResponseV3
from ..api.iam.models import ModelListBulkUserResponse
from ..api.iam.models import ModelListEmailAddressRequest
from ..api.iam.models import ModelListRoleV4Response
from ..api.iam.models import ModelListUserInformationResult
from ..api.iam.models import ModelListUserResponseV3
from ..api.iam.models import ModelListUserRolesV4Response
from ..api.iam.models import ModelListValidUserIDResponseV4
from ..api.iam.models import ModelLoginHistoriesResponse
from ..api.iam.models import ModelNamespaceRoleRequest
from ..api.iam.models import ModelPermissionDeleteRequest
from ..api.iam.models import ModelPlatformDomainDeleteRequest
from ..api.iam.models import ModelPlatformDomainResponse
from ..api.iam.models import ModelPlatformDomainUpdateRequest
from ..api.iam.models import ModelPlatformUserIDRequest
from ..api.iam.models import ModelPlatformUserInformation
from ..api.iam.models import ModelPublicThirdPartyPlatformInfo
from ..api.iam.models import ModelPublicUserInformationResponseV3
from ..api.iam.models import ModelPublicUserInformationV3
from ..api.iam.models import ModelPublicUserResponse
from ..api.iam.models import ModelPublicUserResponseV3
from ..api.iam.models import ModelPublicUsersResponse
from ..api.iam.models import ModelRemoveUserRoleV4Request
from ..api.iam.models import ModelResetPasswordRequest
from ..api.iam.models import ModelResetPasswordRequestV3
from ..api.iam.models import ModelRevokeUserV4Request
from ..api.iam.models import ModelRoleAdminStatusResponse
from ..api.iam.models import ModelRoleAdminStatusResponseV3
from ..api.iam.models import ModelRoleCreateRequest
from ..api.iam.models import ModelRoleCreateV3Request
from ..api.iam.models import ModelRoleManagersRequest
from ..api.iam.models import ModelRoleManagersRequestV3
from ..api.iam.models import ModelRoleManagersResponse
from ..api.iam.models import ModelRoleManagersResponsesV3
from ..api.iam.models import ModelRoleMembersRequest
from ..api.iam.models import ModelRoleMembersRequestV3
from ..api.iam.models import ModelRoleMembersResponse
from ..api.iam.models import ModelRoleMembersResponseV3
from ..api.iam.models import ModelRoleNamesResponseV3
from ..api.iam.models import ModelRoleResponse
from ..api.iam.models import ModelRoleResponseV3
from ..api.iam.models import ModelRoleResponseWithManagers
from ..api.iam.models import ModelRoleResponseWithManagersAndPaginationV3
from ..api.iam.models import ModelRoleResponseWithManagersV3
from ..api.iam.models import ModelRoleUpdateRequest
from ..api.iam.models import ModelRoleUpdateRequestV3
from ..api.iam.models import ModelRoleV4Request
from ..api.iam.models import ModelRoleV4Response
from ..api.iam.models import ModelSSOPlatformCredentialRequest
from ..api.iam.models import ModelSSOPlatformCredentialResponse
from ..api.iam.models import ModelSearchUsersByPlatformIDResponse
from ..api.iam.models import ModelSearchUsersResponse
from ..api.iam.models import ModelSearchUsersResponseWithPaginationV3
from ..api.iam.models import ModelSendRegisterVerificationCodeRequest
from ..api.iam.models import ModelSendVerificationCodeRequest
from ..api.iam.models import ModelSendVerificationCodeRequestV3
from ..api.iam.models import ModelSendVerificationLinkRequest
from ..api.iam.models import ModelThirdPartyLoginPlatformCredentialRequest
from ..api.iam.models import ModelThirdPartyLoginPlatformCredentialResponse
from ..api.iam.models import ModelUnlinkUserPlatformRequest
from ..api.iam.models import ModelUpdatePermissionScheduleRequest
from ..api.iam.models import ModelUpdateUserDeletionStatusRequest
from ..api.iam.models import ModelUpdateUserStatusRequest
from ..api.iam.models import ModelUpgradeHeadlessAccountRequest
from ..api.iam.models import ModelUpgradeHeadlessAccountV3Request
from ..api.iam.models import ModelUpgradeHeadlessAccountWithVerificationCodeRequest
from ..api.iam.models import ModelUpgradeHeadlessAccountWithVerificationCodeRequestV3
from ..api.iam.models import ModelUserActiveBanResponse
from ..api.iam.models import ModelUserActiveBanResponseV3
from ..api.iam.models import ModelUserBanResponse
from ..api.iam.models import ModelUserBanResponseV3
from ..api.iam.models import ModelUserBaseInfo
from ..api.iam.models import ModelUserCreateFromInvitationRequestV3
from ..api.iam.models import ModelUserCreateFromInvitationRequestV4
from ..api.iam.models import ModelUserCreateRequest
from ..api.iam.models import ModelUserCreateRequestV3
from ..api.iam.models import ModelUserCreateResponse
from ..api.iam.models import ModelUserCreateResponseV3
from ..api.iam.models import ModelUserDeletionStatusResponse
from ..api.iam.models import ModelUserIDsRequest
from ..api.iam.models import ModelUserInfoResponse
from ..api.iam.models import ModelUserInformation
from ..api.iam.models import ModelUserInvitationV3
from ..api.iam.models import ModelUserLoginHistoryResponse
from ..api.iam.models import ModelUserPasswordUpdateRequest
from ..api.iam.models import ModelUserPasswordUpdateV3Request
from ..api.iam.models import ModelUserPermissionsResponseV3
from ..api.iam.models import ModelUserResponse
from ..api.iam.models import ModelUserResponseV3
from ..api.iam.models import ModelUserRolesV4Response
from ..api.iam.models import ModelUserUnbanCreateRequestV3
from ..api.iam.models import ModelUserUpdateRequest
from ..api.iam.models import ModelUserUpdateRequestV3
from ..api.iam.models import ModelUserVerificationRequest
from ..api.iam.models import ModelUserVerificationRequestV3
from ..api.iam.models import ModelValidUserIDResponseV4
from ..api.iam.models import ModelValidationDetail
from ..api.iam.models import ModelValidationDetailPublic
from ..api.iam.models import ModelVerificationCodeResponse
from ..api.iam.models import ModelVerifyRegistrationCode
from ..api.iam.models import ModelWebLinkingResponse
from ..api.iam.models import OauthapiRevocationList
from ..api.iam.models import OauthcommonJWKKey
from ..api.iam.models import OauthcommonJWKSet
from ..api.iam.models import OauthcommonUserRevocationListRecord
from ..api.iam.models import OauthmodelCountryLocationResponse
from ..api.iam.models import OauthmodelErrorResponse
from ..api.iam.models import OauthmodelGameTokenCodeResponse
from ..api.iam.models import OauthmodelTokenIntrospectResponse
from ..api.iam.models import OauthmodelTokenResponse
from ..api.iam.models import OauthmodelTokenResponseV3
from ..api.iam.models import OauthmodelTokenThirdPartyResponse
from ..api.iam.models import OauthmodelTokenWithDeviceCookieResponseV3
from ..api.iam.models import RestErrorResponse
from ..api.iam.models import RestErrorResponseWithConflictedUserPlatformAccounts
from ..api.iam.models import Validation
from ..api.iam.models import ValidationDescription


def create_account_create_test_user_request_v4_example() -> AccountCreateTestUserRequestV4:
    instance = AccountCreateTestUserRequestV4()
    instance.auth_type = randomize()
    instance.country = randomize("country")
    instance.date_of_birth = randomize()
    instance.display_name = randomize("slug")
    instance.email_address = randomize("email")
    instance.password = randomize("password")
    instance.password_md5_sum = randomize()
    instance.username = randomize("slug")
    instance.verified = randomize("bool")
    instance.accepted_policies = [create_legal_accepted_policies_request_example()]
    return instance


def create_account_create_test_user_response_v4_example() -> AccountCreateTestUserResponseV4:
    instance = AccountCreateTestUserResponseV4()
    instance.auth_type = randomize()
    instance.country = randomize("country")
    instance.date_of_birth = randomize("adult_birthdate")
    instance.display_name = randomize("slug")
    instance.email_address = randomize("email")
    instance.namespace = randomize("slug")
    instance.password = randomize("password")
    instance.user_id = randomize("uid")
    instance.username = randomize("slug")
    instance.verified = randomize("bool")
    return instance


def create_account_create_test_users_request_v4_example() -> AccountCreateTestUsersRequestV4:
    instance = AccountCreateTestUsersRequestV4()
    instance.count = randomize("int", min_val=1, max_val=1000)
    return instance


def create_account_create_test_users_response_v4_example() -> AccountCreateTestUsersResponseV4:
    instance = AccountCreateTestUsersResponseV4()
    instance.data = [create_account_create_test_user_response_v4_example()]
    return instance


def create_account_create_user_request_v4_example() -> AccountCreateUserRequestV4:
    instance = AccountCreateUserRequestV4()
    instance.auth_type = randomize()
    instance.country = randomize("country")
    instance.email_address = randomize("email")
    instance.username = randomize("slug")
    instance.accepted_policies = [create_legal_accepted_policies_request_example()]
    instance.code = randomize()
    instance.date_of_birth = randomize()
    instance.display_name = randomize("slug")
    instance.password = randomize("password")
    instance.password_md5_sum = randomize()
    instance.reach_minimum_age = randomize("bool")
    return instance


def create_account_create_user_response_v4_example() -> AccountCreateUserResponseV4:
    instance = AccountCreateUserResponseV4()
    instance.auth_type = randomize()
    instance.country = randomize("country")
    instance.date_of_birth = randomize("adult_birthdate")
    instance.display_name = randomize("slug")
    instance.email_address = randomize("email")
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    instance.username = randomize("slug")
    return instance


def create_account_upgrade_headless_account_request_v4_example() -> AccountUpgradeHeadlessAccountRequestV4:
    instance = AccountUpgradeHeadlessAccountRequestV4()
    instance.email_address = randomize("email")
    instance.password = randomize("password")
    instance.username = randomize("slug")
    return instance


def create_account_upgrade_headless_account_with_verification_code_request_v4_example() -> AccountUpgradeHeadlessAccountWithVerificationCodeRequestV4:
    instance = AccountUpgradeHeadlessAccountWithVerificationCodeRequestV4()
    instance.code = randomize()
    instance.email_address = randomize("email")
    instance.password = randomize("password")
    instance.username = randomize("slug")
    instance.country = randomize("country")
    instance.date_of_birth = randomize()
    instance.display_name = randomize("slug")
    instance.reach_minimum_age = randomize("bool")
    instance.validate_only = randomize("bool")
    return instance


def create_account_user_active_ban_response_v4_example() -> AccountUserActiveBanResponseV4:
    instance = AccountUserActiveBanResponseV4()
    instance.ban = randomize()
    instance.ban_id = randomize()
    instance.end_date = randomize("date")
    return instance


def create_account_user_permissions_response_v4_example() -> AccountUserPermissionsResponseV4:
    instance = AccountUserPermissionsResponseV4()
    instance.action = randomize("int", min_val=1, max_val=1000)
    instance.resource = randomize()
    instance.sched_action = randomize("int", min_val=1, max_val=1000)
    instance.sched_cron = randomize()
    instance.sched_range = [randomize()]
    return instance


def create_account_user_response_v4_example() -> AccountUserResponseV4:
    instance = AccountUserResponseV4()
    instance.auth_type = randomize()
    instance.bans = [create_account_user_active_ban_response_v4_example()]
    instance.country = randomize("country")
    instance.created_at = randomize("date")
    instance.date_of_birth = randomize("adult_birthdate")
    instance.deletion_status = randomize("bool")
    instance.display_name = randomize("slug")
    instance.email_address = randomize("email")
    instance.email_verified = randomize("bool")
    instance.enabled = randomize("bool")
    instance.last_date_of_birth_changed_time = randomize("date")
    instance.last_enabled_changed_time = randomize("date")
    instance.namespace = randomize("slug")
    instance.old_email_address = randomize()
    instance.permissions = [create_account_user_permissions_response_v4_example()]
    instance.phone_verified = randomize("bool")
    instance.roles = [randomize()]
    instance.user_id = randomize("uid")
    instance.new_email_address = randomize()
    instance.phone_number = randomize()
    instance.platform_id = randomize()
    instance.platform_user_id = randomize()
    instance.username = randomize("slug")
    return instance


def create_accountcommon_ban_example() -> AccountcommonBan:
    instance = AccountcommonBan()
    instance.ban = randomize()
    instance.description = randomize()
    return instance


def create_accountcommon_ban_reason_example() -> AccountcommonBanReason:
    instance = AccountcommonBanReason()
    instance.description = randomize()
    instance.reason = randomize()
    return instance


def create_accountcommon_ban_reason_v3_example() -> AccountcommonBanReasonV3:
    instance = AccountcommonBanReasonV3()
    instance.description = randomize()
    instance.reason = randomize()
    return instance


def create_accountcommon_ban_reasons_example() -> AccountcommonBanReasons:
    instance = AccountcommonBanReasons()
    instance.reasons = [create_accountcommon_ban_reason_example()]
    return instance


def create_accountcommon_ban_reasons_v3_example() -> AccountcommonBanReasonsV3:
    instance = AccountcommonBanReasonsV3()
    instance.reasons = [create_accountcommon_ban_reason_v3_example()]
    return instance


def create_accountcommon_ban_v3_example() -> AccountcommonBanV3:
    instance = AccountcommonBanV3()
    instance.ban = randomize()
    instance.type_ = randomize()
    instance.description = randomize()
    instance.descriptions = create_accountcommon_description_example()
    return instance


def create_accountcommon_banned_by_v3_example() -> AccountcommonBannedByV3:
    instance = AccountcommonBannedByV3()
    instance.display_name = randomize("slug")
    instance.user_id = randomize("uid")
    return instance


def create_accountcommon_bans_example() -> AccountcommonBans:
    instance = AccountcommonBans()
    instance.bans = [create_accountcommon_ban_example()]
    return instance


def create_accountcommon_bans_v3_example() -> AccountcommonBansV3:
    instance = AccountcommonBansV3()
    instance.bans = [create_accountcommon_ban_v3_example()]
    return instance


def create_accountcommon_client_permission_example() -> AccountcommonClientPermission:
    instance = AccountcommonClientPermission()
    instance.action = randomize("int", min_val=1, max_val=1000)
    instance.resource = randomize()
    return instance


def create_accountcommon_client_permission_v3_example() -> AccountcommonClientPermissionV3:
    instance = AccountcommonClientPermissionV3()
    instance.action = randomize("int", min_val=1, max_val=1000)
    instance.resource = randomize()
    return instance


def create_accountcommon_client_permissions_example() -> AccountcommonClientPermissions:
    instance = AccountcommonClientPermissions()
    instance.permissions = [create_accountcommon_client_permission_example()]
    return instance


def create_accountcommon_client_permissions_v3_example() -> AccountcommonClientPermissionsV3:
    instance = AccountcommonClientPermissionsV3()
    instance.permissions = [create_accountcommon_client_permission_v3_example()]
    return instance


def create_accountcommon_conflicted_user_platform_accounts_example() -> AccountcommonConflictedUserPlatformAccounts:
    instance = AccountcommonConflictedUserPlatformAccounts()
    instance.platform_user_id = randomize()
    instance.publisher_accounts = [
        create_accountcommon_user_with_linked_platform_accounts_example()
    ]
    return instance


def create_accountcommon_country_example() -> AccountcommonCountry:
    instance = AccountcommonCountry()
    instance.age_restriction = randomize("int", min_val=1, max_val=1000)
    instance.country_code = randomize()
    instance.country_name = randomize()
    instance.enable = randomize("bool")
    instance.namespace = randomize("slug")
    return instance


def create_accountcommon_country_age_restriction_example() -> AccountcommonCountryAgeRestriction:
    instance = AccountcommonCountryAgeRestriction()
    instance.age_restriction = randomize("int", min_val=1, max_val=1000)
    instance.country_code = randomize()
    instance.country_name = randomize()
    instance.enable = randomize("bool")
    return instance


def create_accountcommon_description_example() -> AccountcommonDescription:
    instance = AccountcommonDescription()
    instance.en_us = randomize()
    instance.zh_cn = randomize()
    return instance


def create_accountcommon_distinct_linked_platform_v3_example() -> AccountcommonDistinctLinkedPlatformV3:
    instance = AccountcommonDistinctLinkedPlatformV3()
    instance.details = [create_accountcommon_simple_user_platform_info_v3_example()]
    instance.linked_at = randomize()
    instance.platform_name = randomize()
    instance.platform_user_id = randomize()
    return instance


def create_accountcommon_distinct_platform_response_v3_example() -> AccountcommonDistinctPlatformResponseV3:
    instance = AccountcommonDistinctPlatformResponseV3()
    instance.platforms = [create_accountcommon_distinct_linked_platform_v3_example()]
    return instance


def create_accountcommon_input_validation_description_example() -> AccountcommonInputValidationDescription:
    instance = AccountcommonInputValidationDescription()
    instance.language = randomize()
    instance.message = [randomize()]
    return instance


def create_accountcommon_jwt_ban_v3_example() -> AccountcommonJWTBanV3:
    instance = AccountcommonJWTBanV3()
    instance.ban = randomize()
    instance.enabled = randomize("bool")
    instance.end_date = randomize("date")
    instance.targeted_namespace = randomize("slug")
    instance.disabled_date = randomize("date")
    return instance


def create_accountcommon_list_users_with_platform_accounts_response_example() -> AccountcommonListUsersWithPlatformAccountsResponse:
    instance = AccountcommonListUsersWithPlatformAccountsResponse()
    instance.data = [create_accountcommon_user_with_platform_accounts_example()]
    instance.paging = create_accountcommon_pagination_v3_example()
    instance.total_data = randomize("int", min_val=1, max_val=1000)
    return instance


def create_accountcommon_namespace_role_example() -> AccountcommonNamespaceRole:
    instance = AccountcommonNamespaceRole()
    instance.namespace = randomize("slug")
    instance.role_id = randomize("uid")
    return instance


def create_accountcommon_netflix_certificates_example() -> AccountcommonNetflixCertificates:
    instance = AccountcommonNetflixCertificates()
    instance.encrypted_private_key = randomize()
    instance.encrypted_private_key_name = randomize()
    instance.public_certificate = randomize()
    instance.public_certificate_name = randomize()
    instance.root_certificate = randomize()
    instance.root_certificate_name = randomize()
    return instance


def create_accountcommon_pagination_example() -> AccountcommonPagination:
    instance = AccountcommonPagination()
    instance.first = randomize()
    instance.last = randomize()
    instance.next_ = randomize()
    instance.previous = randomize()
    return instance


def create_accountcommon_pagination_v3_example() -> AccountcommonPaginationV3:
    instance = AccountcommonPaginationV3()
    instance.first = randomize()
    instance.last = randomize()
    instance.next_ = randomize()
    instance.previous = randomize()
    return instance


def create_accountcommon_permission_example() -> AccountcommonPermission:
    instance = AccountcommonPermission()
    instance.action = randomize("int", min_val=1, max_val=1000)
    instance.resource = randomize()
    instance.sched_action = randomize("int", min_val=1, max_val=1000)
    instance.sched_cron = randomize()
    instance.sched_range = [randomize()]
    return instance


def create_accountcommon_permission_v3_example() -> AccountcommonPermissionV3:
    instance = AccountcommonPermissionV3()
    instance.action = randomize("int", min_val=1, max_val=1000)
    instance.resource = randomize()
    instance.sched_action = randomize("int", min_val=1, max_val=1000)
    instance.sched_cron = randomize()
    instance.sched_range = [randomize()]
    return instance


def create_accountcommon_permissions_example() -> AccountcommonPermissions:
    instance = AccountcommonPermissions()
    instance.permissions = [create_accountcommon_permission_example()]
    return instance


def create_accountcommon_permissions_v3_example() -> AccountcommonPermissionsV3:
    instance = AccountcommonPermissionsV3()
    instance.permissions = [create_accountcommon_permission_v3_example()]
    return instance


def create_accountcommon_platform_account_example() -> AccountcommonPlatformAccount:
    instance = AccountcommonPlatformAccount()
    instance.namespace = randomize("slug")
    instance.platform_user_id = randomize()
    instance.platform_id = randomize()
    return instance


def create_accountcommon_platform_user_information_v3_example() -> AccountcommonPlatformUserInformationV3:
    instance = AccountcommonPlatformUserInformationV3()
    instance.linked_at = randomize("date")
    instance.namespace = randomize("slug")
    instance.platform_id = randomize()
    instance.platform_user_id = randomize()
    instance.display_name = randomize("slug")
    instance.email_address = randomize("email")
    instance.xbox_user_id = randomize()
    return instance


def create_accountcommon_registered_domain_example() -> AccountcommonRegisteredDomain:
    instance = AccountcommonRegisteredDomain()
    instance.affected_client_i_ds = [randomize()]
    instance.domain = randomize()
    instance.namespaces = [randomize()]
    instance.role_id = randomize("uid")
    return instance


def create_accountcommon_role_example() -> AccountcommonRole:
    instance = AccountcommonRole()
    instance.admin_role = randomize("bool")
    instance.deletable = randomize("bool")
    instance.is_wildcard = randomize("bool")
    instance.managers = [create_accountcommon_role_manager_example()]
    instance.members = [create_accountcommon_role_member_example()]
    instance.permissions = [create_accountcommon_permission_example()]
    instance.role_id = randomize("uid")
    instance.role_name = randomize()
    return instance


def create_accountcommon_role_manager_example() -> AccountcommonRoleManager:
    instance = AccountcommonRoleManager()
    instance.display_name = randomize("slug")
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    return instance


def create_accountcommon_role_manager_v3_example() -> AccountcommonRoleManagerV3:
    instance = AccountcommonRoleManagerV3()
    instance.display_name = randomize("slug")
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    return instance


def create_accountcommon_role_member_example() -> AccountcommonRoleMember:
    instance = AccountcommonRoleMember()
    instance.display_name = randomize("slug")
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    return instance


def create_accountcommon_role_member_v3_example() -> AccountcommonRoleMemberV3:
    instance = AccountcommonRoleMemberV3()
    instance.display_name = randomize("slug")
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    return instance


def create_accountcommon_role_v3_example() -> AccountcommonRoleV3:
    instance = AccountcommonRoleV3()
    instance.admin_role = randomize("bool")
    instance.is_wildcard = randomize("bool")
    instance.managers = [create_accountcommon_role_manager_v3_example()]
    instance.members = [create_accountcommon_role_member_v3_example()]
    instance.permissions = [create_accountcommon_permission_v3_example()]
    instance.role_id = randomize("uid")
    instance.role_name = randomize()
    return instance


def create_accountcommon_simple_user_platform_info_v3_example() -> AccountcommonSimpleUserPlatformInfoV3:
    instance = AccountcommonSimpleUserPlatformInfoV3()
    instance.linked_at = randomize()
    instance.namespace = randomize("slug")
    instance.origin_namespace = randomize("slug")
    instance.display_name = randomize("slug")
    instance.platform_id = randomize()
    return instance


def create_accountcommon_user_information_v3_example() -> AccountcommonUserInformationV3:
    instance = AccountcommonUserInformationV3()
    instance.email_addresses = [randomize()]
    instance.platform_users = [
        create_accountcommon_platform_user_information_v3_example()
    ]
    instance.country = randomize("country")
    instance.display_name = randomize("slug")
    instance.phone_number = randomize()
    instance.username = randomize("slug")
    instance.xbox_user_id = randomize()
    return instance


def create_accountcommon_user_linked_platform_example() -> AccountcommonUserLinkedPlatform:
    instance = AccountcommonUserLinkedPlatform()
    instance.linked_at = randomize()
    instance.namespace = randomize("slug")
    instance.origin_namespace = randomize("slug")
    instance.user_id = randomize("uid")
    instance.display_name = randomize("slug")
    instance.email_address = randomize("email")
    instance.platform_id = randomize()
    instance.platform_user_id = randomize()
    instance.xuid = randomize()
    return instance


def create_accountcommon_user_linked_platform_v3_example() -> AccountcommonUserLinkedPlatformV3:
    instance = AccountcommonUserLinkedPlatformV3()
    instance.account_group = randomize()
    instance.linked_at = randomize()
    instance.namespace = randomize("slug")
    instance.origin_namespace = randomize("slug")
    instance.user_id = randomize("uid")
    instance.display_name = randomize("slug")
    instance.email_address = randomize("email")
    instance.platform_id = randomize()
    instance.platform_user_id = randomize()
    return instance


def create_accountcommon_user_linked_platforms_response_v3_example() -> AccountcommonUserLinkedPlatformsResponseV3:
    instance = AccountcommonUserLinkedPlatformsResponseV3()
    instance.data = [create_accountcommon_user_linked_platform_v3_example()]
    instance.paging = create_accountcommon_pagination_v3_example()
    return instance


def create_accountcommon_user_platform_info_example() -> AccountcommonUserPlatformInfo:
    instance = AccountcommonUserPlatformInfo()
    instance.platform_id = randomize()
    instance.platform_user_id = randomize()
    instance.user_id = randomize("uid")
    return instance


def create_accountcommon_user_platforms_example() -> AccountcommonUserPlatforms:
    instance = AccountcommonUserPlatforms()
    instance.user_id_platforms = [create_accountcommon_user_platform_info_example()]
    return instance


def create_accountcommon_user_search_by_platform_id_result_example() -> AccountcommonUserSearchByPlatformIDResult:
    instance = AccountcommonUserSearchByPlatformIDResult()
    instance.display_name = randomize("slug")
    instance.email_address = randomize("email")
    instance.linked_platforms = [create_accountcommon_user_linked_platform_example()]
    instance.phone_number = randomize()
    instance.user_id = randomize("uid")
    return instance


def create_accountcommon_user_search_result_example() -> AccountcommonUserSearchResult:
    instance = AccountcommonUserSearchResult()
    instance.display_name = randomize("slug")
    instance.email_address = randomize("email")
    instance.linked_platforms = [create_accountcommon_user_linked_platform_example()]
    instance.phone_number = randomize()
    instance.user_id = randomize("uid")
    return instance


def create_accountcommon_user_with_linked_platform_accounts_example() -> AccountcommonUserWithLinkedPlatformAccounts:
    instance = AccountcommonUserWithLinkedPlatformAccounts()
    instance.display_name = randomize("slug")
    instance.email_address = randomize("email")
    instance.linked_platforms = [create_accountcommon_platform_account_example()]
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    return instance


def create_accountcommon_user_with_platform_accounts_example() -> AccountcommonUserWithPlatformAccounts:
    instance = AccountcommonUserWithPlatformAccounts()
    instance.linked_platforms = [create_accountcommon_platform_account_example()]
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    return instance


def create_banned_by_example() -> BannedBy:
    instance = BannedBy()
    instance.display_name = randomize("slug")
    instance.user_id = randomize("uid")
    return instance


def create_bloom_filter_json_example() -> BloomFilterJSON:
    instance = BloomFilterJSON()
    instance.bits = [randomize("int", min_val=1, max_val=1000)]
    instance.k = randomize("int", min_val=1, max_val=1000)
    instance.m = randomize("int", min_val=1, max_val=1000)
    return instance


def create_clientmodel_client_create_request_example() -> ClientmodelClientCreateRequest:
    instance = ClientmodelClientCreateRequest()
    instance.client_id = randomize("uid")
    instance.client_name = randomize()
    instance.client_permissions = [create_accountcommon_permission_example()]
    instance.namespace = randomize("slug")
    instance.redirect_uri = randomize()
    instance.secret = randomize()
    instance.two_factor_enabled = randomize("bool")
    return instance


def create_clientmodel_client_creation_response_example() -> ClientmodelClientCreationResponse:
    instance = ClientmodelClientCreationResponse()
    instance.client_id = randomize("uid")
    instance.client_name = randomize()
    instance.client_permissions = [create_accountcommon_permission_example()]
    instance.namespace = randomize("slug")
    instance.redirect_uri = randomize()
    instance.two_factor_enabled = randomize("bool")
    return instance


def create_clientmodel_client_creation_v3_request_example() -> ClientmodelClientCreationV3Request:
    instance = ClientmodelClientCreationV3Request()
    instance.audiences = [randomize()]
    instance.base_uri = randomize()
    instance.client_id = randomize("uid")
    instance.client_name = randomize()
    instance.client_permissions = [create_accountcommon_permission_v3_example()]
    instance.client_platform = randomize()
    instance.namespace = randomize("slug")
    instance.oauth_client_type = randomize()
    instance.redirect_uri = randomize()
    instance.secret = randomize()
    instance.deletable = randomize("bool")
    instance.oauth_access_token_expiration = randomize("int", min_val=1, max_val=1000)
    instance.oauth_refresh_token_expiration = randomize("int", min_val=1, max_val=1000)
    instance.two_factor_enabled = randomize("bool")
    return instance


def create_clientmodel_client_response_example() -> ClientmodelClientResponse:
    instance = ClientmodelClientResponse()
    instance.client_id = randomize("uid")
    instance.client_name = randomize()
    instance.client_permissions = [create_accountcommon_permission_example()]
    instance.created_at = randomize("date")
    instance.namespace = randomize("slug")
    instance.redirect_uri = randomize()
    instance.two_factor_enabled = randomize("bool")
    return instance


def create_clientmodel_client_update_request_example() -> ClientmodelClientUpdateRequest:
    instance = ClientmodelClientUpdateRequest()
    instance.client_name = randomize()
    instance.redirect_uri = randomize()
    instance.two_factor_enabled = randomize("bool")
    return instance


def create_clientmodel_client_update_secret_request_example() -> ClientmodelClientUpdateSecretRequest:
    instance = ClientmodelClientUpdateSecretRequest()
    instance.new_secret = randomize()
    return instance


def create_clientmodel_client_update_v3_request_example() -> ClientmodelClientUpdateV3Request:
    instance = ClientmodelClientUpdateV3Request()
    instance.client_platform = randomize()
    instance.audiences = [randomize()]
    instance.base_uri = randomize()
    instance.client_name = randomize()
    instance.client_permissions = [create_accountcommon_permission_v3_example()]
    instance.deletable = randomize("bool")
    instance.namespace = randomize("slug")
    instance.oauth_access_token_expiration = randomize("int", min_val=1, max_val=1000)
    instance.oauth_refresh_token_expiration = randomize("int", min_val=1, max_val=1000)
    instance.redirect_uri = randomize()
    instance.two_factor_enabled = randomize("bool")
    return instance


def create_clientmodel_client_v3_response_example() -> ClientmodelClientV3Response:
    instance = ClientmodelClientV3Response()
    instance.audiences = [randomize()]
    instance.base_uri = randomize()
    instance.client_id = randomize("uid")
    instance.client_name = randomize()
    instance.client_permissions = [create_accountcommon_permission_v3_example()]
    instance.client_platform = randomize()
    instance.created_at = randomize("date")
    instance.modified_at = randomize("date")
    instance.namespace = randomize("slug")
    instance.oauth_client_type = randomize()
    instance.redirect_uri = randomize()
    instance.scopes = [randomize()]
    instance.two_factor_enabled = randomize("bool")
    instance.oauth_access_token_expiration = randomize("int", min_val=1, max_val=1000)
    instance.oauth_refresh_token_expiration = randomize("int", min_val=1, max_val=1000)
    return instance


def create_clientmodel_clients_v3_response_example() -> ClientmodelClientsV3Response:
    instance = ClientmodelClientsV3Response()
    instance.data = [create_clientmodel_client_v3_response_example()]
    instance.paging = create_accountcommon_pagination_v3_example()
    return instance


def create_clientmodel_v3_client_update_secret_request_example() -> ClientmodelV3ClientUpdateSecretRequest:
    instance = ClientmodelV3ClientUpdateSecretRequest()
    instance.new_secret = randomize()
    return instance


def create_legal_accepted_policies_request_example() -> LegalAcceptedPoliciesRequest:
    instance = LegalAcceptedPoliciesRequest()
    instance.is_accepted = randomize("bool")
    instance.localized_policy_version_id = randomize()
    instance.policy_id = randomize()
    instance.policy_version_id = randomize()
    return instance


def create_model_add_user_role_v4_request_example() -> ModelAddUserRoleV4Request:
    instance = ModelAddUserRoleV4Request()
    instance.assigned_namespaces = [randomize()]
    instance.role_id = randomize("uid")
    return instance


def create_model_age_restriction_request_example() -> ModelAgeRestrictionRequest:
    instance = ModelAgeRestrictionRequest()
    instance.age_restriction = randomize("int", min_val=1, max_val=1000)
    instance.enable = randomize("bool")
    return instance


def create_model_age_restriction_request_v3_example() -> ModelAgeRestrictionRequestV3:
    instance = ModelAgeRestrictionRequestV3()
    instance.age_restriction = randomize("int", min_val=1, max_val=1000)
    instance.enable = randomize("bool")
    return instance


def create_model_age_restriction_response_example() -> ModelAgeRestrictionResponse:
    instance = ModelAgeRestrictionResponse()
    instance.age_restriction = randomize("int", min_val=1, max_val=1000)
    instance.enable = randomize("bool")
    return instance


def create_model_age_restriction_response_v3_example() -> ModelAgeRestrictionResponseV3:
    instance = ModelAgeRestrictionResponseV3()
    instance.age_restriction = randomize("int", min_val=1, max_val=1000)
    instance.enable = randomize("bool")
    return instance


def create_model_assign_user_v4_request_example() -> ModelAssignUserV4Request:
    instance = ModelAssignUserV4Request()
    instance.assigned_namespaces = [randomize()]
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    return instance


def create_model_assigned_user_v4_response_example() -> ModelAssignedUserV4Response:
    instance = ModelAssignedUserV4Response()
    instance.assigned_namespaces = [randomize()]
    instance.display_name = randomize("slug")
    instance.email = randomize("email")
    instance.role_id = randomize("uid")
    instance.user_id = randomize("uid")
    return instance


def create_model_authenticator_key_response_v4_example() -> ModelAuthenticatorKeyResponseV4:
    instance = ModelAuthenticatorKeyResponseV4()
    instance.secret_key = randomize()
    instance.uri = randomize()
    return instance


def create_model_backup_codes_response_v4_example() -> ModelBackupCodesResponseV4:
    instance = ModelBackupCodesResponseV4()
    instance.generated_at = randomize("int", min_val=1, max_val=1000)
    instance.valid_codes = [randomize()]
    instance.invalid_codes = [randomize()]
    return instance


def create_model_ban_create_request_example() -> ModelBanCreateRequest:
    instance = ModelBanCreateRequest()
    instance.ban = randomize()
    instance.comment = randomize()
    instance.end_date = randomize()
    instance.reason = randomize()
    instance.skip_notif = randomize("bool")
    return instance


def create_model_ban_update_request_example() -> ModelBanUpdateRequest:
    instance = ModelBanUpdateRequest()
    instance.enabled = randomize("bool")
    instance.skip_notif = randomize("bool")
    return instance


def create_model_bulk_ban_create_request_v3_example() -> ModelBulkBanCreateRequestV3:
    instance = ModelBulkBanCreateRequestV3()
    instance.ban = randomize()
    instance.comment = randomize()
    instance.end_date = randomize()
    instance.reason = randomize()
    instance.skip_notif = randomize("bool")
    instance.user_ids = [randomize()]
    return instance


def create_model_bulk_unban_create_request_v3_example() -> ModelBulkUnbanCreateRequestV3:
    instance = ModelBulkUnbanCreateRequestV3()
    instance.bans = [create_model_user_unban_create_request_v3_example()]
    return instance


def create_model_check_valid_user_id_request_v4_example() -> ModelCheckValidUserIDRequestV4:
    instance = ModelCheckValidUserIDRequestV4()
    instance.user_ids = [randomize()]
    return instance


def create_model_country_example() -> ModelCountry:
    instance = ModelCountry()
    instance.age_restriction = randomize("int", min_val=1, max_val=1000)
    instance.country_code = randomize()
    instance.country_name = randomize()
    instance.enable = randomize("bool")
    return instance


def create_model_country_age_restriction_request_example() -> ModelCountryAgeRestrictionRequest:
    instance = ModelCountryAgeRestrictionRequest()
    instance.age_restriction = randomize("int", min_val=1, max_val=1000)
    return instance


def create_model_country_age_restriction_v3_request_example() -> ModelCountryAgeRestrictionV3Request:
    instance = ModelCountryAgeRestrictionV3Request()
    instance.age_restriction = randomize("int", min_val=1, max_val=1000)
    return instance


def create_model_country_v3_response_example() -> ModelCountryV3Response:
    instance = ModelCountryV3Response()
    instance.age_restriction = randomize("int", min_val=1, max_val=1000)
    instance.country_code = randomize()
    instance.country_name = randomize()
    instance.enable = randomize("bool")
    return instance


def create_model_create_justice_user_response_example() -> ModelCreateJusticeUserResponse:
    instance = ModelCreateJusticeUserResponse()
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    return instance


def create_model_device_ban_request_v4_example() -> ModelDeviceBanRequestV4:
    instance = ModelDeviceBanRequestV4()
    instance.comment = randomize()
    instance.device_id = randomize()
    instance.device_type = randomize()
    instance.enabled = randomize("bool")
    instance.end_date = randomize()
    instance.ext = {randomize(): randomize()}
    instance.reason = randomize()
    return instance


def create_model_device_ban_response_v4_example() -> ModelDeviceBanResponseV4:
    instance = ModelDeviceBanResponseV4()
    instance.banned_at = randomize("int", min_val=1, max_val=1000)
    instance.banned_by = randomize()
    instance.comment = randomize()
    instance.device_id = randomize()
    instance.device_type = randomize()
    instance.disabled_at = randomize("int", min_val=1, max_val=1000)
    instance.enabled = randomize("bool")
    instance.end_date = randomize("int", min_val=1, max_val=1000)
    instance.id_ = randomize()
    instance.namespace = randomize("slug")
    instance.reason = randomize()
    instance.target_namespace = randomize("slug")
    return instance


def create_model_device_ban_update_request_v4_example() -> ModelDeviceBanUpdateRequestV4:
    instance = ModelDeviceBanUpdateRequestV4()
    instance.enabled = randomize("bool")
    return instance


def create_model_device_banned_response_v4_example() -> ModelDeviceBannedResponseV4:
    instance = ModelDeviceBannedResponseV4()
    instance.data = [create_model_device_ban_response_v4_example()]
    instance.paging = create_accountcommon_pagination_example()
    return instance


def create_model_device_bans_response_v4_example() -> ModelDeviceBansResponseV4:
    instance = ModelDeviceBansResponseV4()
    instance.data = [create_model_device_ban_response_v4_example()]
    return instance


def create_model_device_id_decrypt_response_v4_example() -> ModelDeviceIDDecryptResponseV4:
    instance = ModelDeviceIDDecryptResponseV4()
    instance.device_id = randomize()
    return instance


def create_model_device_response_v4_example() -> ModelDeviceResponseV4:
    instance = ModelDeviceResponseV4()
    instance.device_id = randomize()
    instance.device_type = randomize()
    instance.ip = randomize()
    instance.last_login_time = randomize("int", min_val=1, max_val=1000)
    instance.ban = create_model_device_ban_response_v4_example()
    instance.ext = {randomize(): randomize()}
    return instance


def create_model_device_type_response_v4_example() -> ModelDeviceTypeResponseV4:
    instance = ModelDeviceTypeResponseV4()
    instance.device_type = randomize()
    return instance


def create_model_device_types_response_v4_example() -> ModelDeviceTypesResponseV4:
    instance = ModelDeviceTypesResponseV4()
    instance.data = [create_model_device_type_response_v4_example()]
    return instance


def create_model_device_user_response_v4_example() -> ModelDeviceUserResponseV4:
    instance = ModelDeviceUserResponseV4()
    instance.ip = randomize()
    instance.last_login_time = randomize("int", min_val=1, max_val=1000)
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    instance.ext = {randomize(): randomize()}
    return instance


def create_model_device_users_response_v4_example() -> ModelDeviceUsersResponseV4:
    instance = ModelDeviceUsersResponseV4()
    instance.users = [create_model_device_user_response_v4_example()]
    return instance


def create_model_devices_response_v4_example() -> ModelDevicesResponseV4:
    instance = ModelDevicesResponseV4()
    instance.devices = [create_model_device_response_v4_example()]
    return instance


def create_model_disable_user_request_example() -> ModelDisableUserRequest:
    instance = ModelDisableUserRequest()
    instance.reason = randomize()
    return instance


def create_model_email_update_request_v4_example() -> ModelEmailUpdateRequestV4:
    instance = ModelEmailUpdateRequestV4()
    instance.code = randomize()
    instance.email_address = randomize("email")
    return instance


def create_model_enabled_factors_response_v4_example() -> ModelEnabledFactorsResponseV4:
    instance = ModelEnabledFactorsResponseV4()
    instance.default = randomize()
    instance.enabled = [randomize()]
    return instance


def create_model_failed_ban_unban_user_v3_example() -> ModelFailedBanUnbanUserV3:
    instance = ModelFailedBanUnbanUserV3()
    instance.reason = randomize()
    instance.user_id = randomize("uid")
    return instance


def create_model_forgot_password_request_v3_example() -> ModelForgotPasswordRequestV3:
    instance = ModelForgotPasswordRequestV3()
    instance.email_address = randomize("email")
    instance.language_tag = randomize()
    return instance


def create_model_get_admin_users_response_example() -> ModelGetAdminUsersResponse:
    instance = ModelGetAdminUsersResponse()
    instance.data = [create_model_user_response_example()]
    instance.paging = create_accountcommon_pagination_example()
    return instance


def create_model_get_publisher_user_response_example() -> ModelGetPublisherUserResponse:
    instance = ModelGetPublisherUserResponse()
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    return instance


def create_model_get_publisher_user_v3_response_example() -> ModelGetPublisherUserV3Response:
    instance = ModelGetPublisherUserV3Response()
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    return instance


def create_model_get_user_ban_v3_response_example() -> ModelGetUserBanV3Response:
    instance = ModelGetUserBanV3Response()
    instance.data = [create_model_user_ban_response_v3_example()]
    instance.paging = create_accountcommon_pagination_v3_example()
    return instance


def create_model_get_user_justice_platform_account_response_example() -> ModelGetUserJusticePlatformAccountResponse:
    instance = ModelGetUserJusticePlatformAccountResponse()
    instance.designated_namespace = randomize("slug")
    instance.user_id = randomize("uid")
    return instance


def create_model_get_user_mapping_example() -> ModelGetUserMapping:
    instance = ModelGetUserMapping()
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    return instance


def create_model_get_user_mapping_v3_example() -> ModelGetUserMappingV3:
    instance = ModelGetUserMappingV3()
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    return instance


def create_model_get_users_response_with_pagination_v3_example() -> ModelGetUsersResponseWithPaginationV3:
    instance = ModelGetUsersResponseWithPaginationV3()
    instance.data = [create_model_user_response_v3_example()]
    instance.paging = create_accountcommon_pagination_v3_example()
    return instance


def create_model_input_validation_data_example() -> ModelInputValidationData:
    instance = ModelInputValidationData()
    instance.field = randomize()
    instance.validation = create_model_validation_detail_example()
    return instance


def create_model_input_validation_data_public_example() -> ModelInputValidationDataPublic:
    instance = ModelInputValidationDataPublic()
    instance.field = randomize()
    instance.validation = create_model_validation_detail_public_example()
    return instance


def create_model_input_validation_update_payload_example() -> ModelInputValidationUpdatePayload:
    instance = ModelInputValidationUpdatePayload()
    instance.field = randomize()
    instance.validation = create_validation_example()
    return instance


def create_model_input_validations_public_response_example() -> ModelInputValidationsPublicResponse:
    instance = ModelInputValidationsPublicResponse()
    instance.data = [create_model_input_validation_data_public_example()]
    instance.version = randomize("int", min_val=1, max_val=1000)
    return instance


def create_model_input_validations_response_example() -> ModelInputValidationsResponse:
    instance = ModelInputValidationsResponse()
    instance.data = [create_model_input_validation_data_example()]
    instance.version = randomize("int", min_val=1, max_val=1000)
    return instance


def create_model_invite_user_request_v3_example() -> ModelInviteUserRequestV3:
    instance = ModelInviteUserRequestV3()
    instance.email_addresses = [randomize()]
    instance.is_admin = randomize("bool")
    instance.roles = [randomize()]
    return instance


def create_model_invite_user_request_v4_example() -> ModelInviteUserRequestV4:
    instance = ModelInviteUserRequestV4()
    instance.assigned_namespaces = [randomize()]
    instance.email_addresses = [randomize()]
    instance.is_admin = randomize("bool")
    instance.role_id = randomize("uid")
    return instance


def create_model_invite_user_response_v3_example() -> ModelInviteUserResponseV3:
    instance = ModelInviteUserResponseV3()
    instance.data = [create_model_user_invitation_v3_example()]
    return instance


def create_model_link_platform_account_request_example() -> ModelLinkPlatformAccountRequest:
    instance = ModelLinkPlatformAccountRequest()
    instance.platform_id = randomize()
    instance.platform_user_id = randomize()
    return instance


def create_model_link_platform_account_with_progression_request_example() -> ModelLinkPlatformAccountWithProgressionRequest:
    instance = ModelLinkPlatformAccountWithProgressionRequest()
    instance.chosen_namespaces = [randomize()]
    instance.request_id = randomize()
    return instance


def create_model_link_request_example() -> ModelLinkRequest:
    instance = ModelLinkRequest()
    instance.client_id = randomize("uid")
    instance.namespace = randomize("slug")
    instance.operation_name = randomize()
    instance.payload = {randomize(): randomize()}
    instance.redirect_uri = randomize()
    instance.request_id = randomize()
    instance.status = randomize()
    instance.conflict_publisher_user_id = randomize()
    instance.conflict_user_linked_games = [randomize()]
    instance.current_user_linked_games = [randomize()]
    instance.error = (
        create_rest_error_response_with_conflicted_user_platform_accounts_example()
    )
    instance.expiration = randomize("int", min_val=1, max_val=1000)
    instance.platform_display_name = randomize()
    instance.platform_id = randomize()
    instance.platform_user_id = randomize()
    instance.refresh_token = randomize()
    return instance


def create_model_list_assigned_users_v4_response_example() -> ModelListAssignedUsersV4Response:
    instance = ModelListAssignedUsersV4Response()
    instance.data = [create_model_assigned_user_v4_response_example()]
    instance.paging = create_accountcommon_pagination_v3_example()
    return instance


def create_model_list_bulk_user_ban_response_v3_example() -> ModelListBulkUserBanResponseV3:
    instance = ModelListBulkUserBanResponseV3()
    instance.failed_bans = [create_model_failed_ban_unban_user_v3_example()]
    instance.success_bans = [create_model_user_ban_response_v3_example()]
    return instance


def create_model_list_bulk_user_response_example() -> ModelListBulkUserResponse:
    instance = ModelListBulkUserResponse()
    instance.data = [create_model_user_base_info_example()]
    return instance


def create_model_list_email_address_request_example() -> ModelListEmailAddressRequest:
    instance = ModelListEmailAddressRequest()
    instance.list_email_address_request = [randomize()]
    return instance


def create_model_list_role_v4_response_example() -> ModelListRoleV4Response:
    instance = ModelListRoleV4Response()
    instance.data = [create_model_role_v4_response_example()]
    instance.paging = create_accountcommon_pagination_v3_example()
    return instance


def create_model_list_user_information_result_example() -> ModelListUserInformationResult:
    instance = ModelListUserInformationResult()
    instance.data = [create_model_user_info_response_example()]
    return instance


def create_model_list_user_response_v3_example() -> ModelListUserResponseV3:
    instance = ModelListUserResponseV3()
    instance.data = [create_model_user_response_v3_example()]
    return instance


def create_model_list_user_roles_v4_response_example() -> ModelListUserRolesV4Response:
    instance = ModelListUserRolesV4Response()
    instance.data = [create_model_user_roles_v4_response_example()]
    instance.paging = create_accountcommon_pagination_v3_example()
    return instance


def create_model_list_valid_user_id_response_v4_example() -> ModelListValidUserIDResponseV4:
    instance = ModelListValidUserIDResponseV4()
    instance.data = [create_model_valid_user_id_response_v4_example()]
    return instance


def create_model_login_histories_response_example() -> ModelLoginHistoriesResponse:
    instance = ModelLoginHistoriesResponse()
    instance.data = [create_model_user_login_history_response_example()]
    instance.paging = create_accountcommon_pagination_example()
    return instance


def create_model_namespace_role_request_example() -> ModelNamespaceRoleRequest:
    instance = ModelNamespaceRoleRequest()
    instance.namespace = randomize("slug")
    instance.role_id = randomize("uid")
    return instance


def create_model_permission_delete_request_example() -> ModelPermissionDeleteRequest:
    instance = ModelPermissionDeleteRequest()
    instance.action = randomize("int", min_val=1, max_val=1000)
    instance.resource = randomize()
    return instance


def create_model_platform_domain_delete_request_example() -> ModelPlatformDomainDeleteRequest:
    instance = ModelPlatformDomainDeleteRequest()
    instance.domain = randomize()
    return instance


def create_model_platform_domain_response_example() -> ModelPlatformDomainResponse:
    instance = ModelPlatformDomainResponse()
    instance.registered_domains = [create_accountcommon_registered_domain_example()]
    return instance


def create_model_platform_domain_update_request_example() -> ModelPlatformDomainUpdateRequest:
    instance = ModelPlatformDomainUpdateRequest()
    instance.affected_client_i_ds = [randomize()]
    instance.assigned_namespaces = [randomize()]
    instance.domain = randomize()
    instance.role_id = randomize("uid")
    return instance


def create_model_platform_user_id_request_example() -> ModelPlatformUserIDRequest:
    instance = ModelPlatformUserIDRequest()
    instance.platform_user_ids = [randomize()]
    return instance


def create_model_platform_user_information_example() -> ModelPlatformUserInformation:
    instance = ModelPlatformUserInformation()
    instance.display_name = randomize("slug")
    instance.linked_at = randomize("date")
    instance.namespace = randomize("slug")
    instance.platform_id = randomize()
    instance.platform_user_id = randomize()
    instance.email_address = randomize("email")
    instance.xuid = randomize()
    return instance


def create_model_public_third_party_platform_info_example() -> ModelPublicThirdPartyPlatformInfo:
    instance = ModelPublicThirdPartyPlatformInfo()
    instance.app_id = randomize("uid")
    instance.client_id = randomize("uid")
    instance.environment = randomize()
    instance.is_active = randomize("bool")
    instance.platform_id = randomize()
    instance.platform_name = randomize()
    return instance


def create_model_public_user_information_response_v3_example() -> ModelPublicUserInformationResponseV3:
    instance = ModelPublicUserInformationResponseV3()
    instance.data = [create_model_public_user_information_v3_example()]
    instance.paging = create_accountcommon_pagination_v3_example()
    return instance


def create_model_public_user_information_v3_example() -> ModelPublicUserInformationV3:
    instance = ModelPublicUserInformationV3()
    instance.created_at = randomize("date")
    instance.display_name = randomize("slug")
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    instance.user_name = randomize("slug")
    return instance


def create_model_public_user_response_example() -> ModelPublicUserResponse:
    instance = ModelPublicUserResponse()
    instance.auth_type = randomize()
    instance.bans = [create_model_user_active_ban_response_example()]
    instance.created_at = randomize("date")
    instance.deletion_status = randomize("bool")
    instance.display_name = randomize("slug")
    instance.email_verified = randomize("bool")
    instance.enabled = randomize("bool")
    instance.last_enabled_changed_time = randomize("date")
    instance.login_id = randomize()
    instance.namespace = randomize("slug")
    instance.namespace_roles = [create_accountcommon_namespace_role_example()]
    instance.permissions = [create_accountcommon_permission_example()]
    instance.phone_verified = randomize("bool")
    instance.roles = [randomize()]
    instance.user_id = randomize("uid")
    instance.platform_id = randomize()
    instance.platform_user_id = randomize()
    instance.username = randomize("slug")
    instance.xuid = randomize()
    return instance


def create_model_public_user_response_v3_example() -> ModelPublicUserResponseV3:
    instance = ModelPublicUserResponseV3()
    instance.auth_type = randomize()
    instance.bans = [create_model_user_active_ban_response_v3_example()]
    instance.created_at = randomize("date")
    instance.deletion_status = randomize("bool")
    instance.display_name = randomize("slug")
    instance.email_verified = randomize("bool")
    instance.enabled = randomize("bool")
    instance.last_date_of_birth_changed_time = randomize("date")
    instance.last_enabled_changed_time = randomize("date")
    instance.namespace = randomize("slug")
    instance.namespace_roles = [create_accountcommon_namespace_role_example()]
    instance.permissions = [create_model_user_permissions_response_v3_example()]
    instance.phone_verified = randomize("bool")
    instance.roles = [randomize()]
    instance.user_id = randomize("uid")
    instance.avatar_url = randomize("url")
    instance.platform_id = randomize()
    instance.platform_user_id = randomize()
    instance.user_name = randomize("slug")
    return instance


def create_model_public_users_response_example() -> ModelPublicUsersResponse:
    instance = ModelPublicUsersResponse()
    instance.users = [create_model_public_user_response_example()]
    return instance


def create_model_remove_user_role_v4_request_example() -> ModelRemoveUserRoleV4Request:
    instance = ModelRemoveUserRoleV4Request()
    instance.assigned_namespaces = [randomize()]
    instance.role_id = randomize("uid")
    return instance


def create_model_reset_password_request_example() -> ModelResetPasswordRequest:
    instance = ModelResetPasswordRequest()
    instance.code = randomize()
    instance.login_id = randomize()
    instance.new_password = randomize()
    return instance


def create_model_reset_password_request_v3_example() -> ModelResetPasswordRequestV3:
    instance = ModelResetPasswordRequestV3()
    instance.code = randomize()
    instance.email_address = randomize("email")
    instance.new_password = randomize()
    return instance


def create_model_revoke_user_v4_request_example() -> ModelRevokeUserV4Request:
    instance = ModelRevokeUserV4Request()
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    return instance


def create_model_role_admin_status_response_example() -> ModelRoleAdminStatusResponse:
    instance = ModelRoleAdminStatusResponse()
    instance.admin_role = randomize("bool")
    return instance


def create_model_role_admin_status_response_v3_example() -> ModelRoleAdminStatusResponseV3:
    instance = ModelRoleAdminStatusResponseV3()
    instance.admin_role = randomize("bool")
    return instance


def create_model_role_create_request_example() -> ModelRoleCreateRequest:
    instance = ModelRoleCreateRequest()
    instance.admin_role = randomize("bool")
    instance.managers = [create_accountcommon_role_manager_example()]
    instance.members = [create_accountcommon_role_member_example()]
    instance.permissions = [create_accountcommon_permission_example()]
    instance.role_name = randomize()
    return instance


def create_model_role_create_v3_request_example() -> ModelRoleCreateV3Request:
    instance = ModelRoleCreateV3Request()
    instance.admin_role = randomize("bool")
    instance.is_wildcard = randomize("bool")
    instance.managers = [create_accountcommon_role_manager_v3_example()]
    instance.members = [create_accountcommon_role_member_v3_example()]
    instance.permissions = [create_accountcommon_permission_v3_example()]
    instance.role_name = randomize()
    instance.deletable = randomize("bool")
    return instance


def create_model_role_managers_request_example() -> ModelRoleManagersRequest:
    instance = ModelRoleManagersRequest()
    instance.managers = [create_accountcommon_role_manager_example()]
    return instance


def create_model_role_managers_request_v3_example() -> ModelRoleManagersRequestV3:
    instance = ModelRoleManagersRequestV3()
    instance.managers = [create_accountcommon_role_manager_v3_example()]
    return instance


def create_model_role_managers_response_example() -> ModelRoleManagersResponse:
    instance = ModelRoleManagersResponse()
    instance.managers = [create_accountcommon_role_manager_example()]
    return instance


def create_model_role_managers_responses_v3_example() -> ModelRoleManagersResponsesV3:
    instance = ModelRoleManagersResponsesV3()
    instance.data = [create_accountcommon_role_manager_v3_example()]
    instance.paging = create_accountcommon_pagination_v3_example()
    return instance


def create_model_role_members_request_example() -> ModelRoleMembersRequest:
    instance = ModelRoleMembersRequest()
    instance.members = [create_accountcommon_role_member_example()]
    return instance


def create_model_role_members_request_v3_example() -> ModelRoleMembersRequestV3:
    instance = ModelRoleMembersRequestV3()
    instance.members = [create_accountcommon_role_member_v3_example()]
    return instance


def create_model_role_members_response_example() -> ModelRoleMembersResponse:
    instance = ModelRoleMembersResponse()
    instance.members = [create_accountcommon_role_member_example()]
    return instance


def create_model_role_members_response_v3_example() -> ModelRoleMembersResponseV3:
    instance = ModelRoleMembersResponseV3()
    instance.data = [create_accountcommon_role_member_v3_example()]
    instance.paging = create_accountcommon_pagination_v3_example()
    return instance


def create_model_role_names_response_v3_example() -> ModelRoleNamesResponseV3:
    instance = ModelRoleNamesResponseV3()
    instance.data = [randomize()]
    instance.paging = create_accountcommon_pagination_v3_example()
    return instance


def create_model_role_response_example() -> ModelRoleResponse:
    instance = ModelRoleResponse()
    instance.is_wildcard = randomize("bool")
    instance.permissions = [create_accountcommon_permission_example()]
    instance.role_id = randomize("uid")
    instance.role_name = randomize()
    return instance


def create_model_role_response_v3_example() -> ModelRoleResponseV3:
    instance = ModelRoleResponseV3()
    instance.admin_role = randomize("bool")
    instance.is_wildcard = randomize("bool")
    instance.permissions = [create_accountcommon_permission_v3_example()]
    instance.role_id = randomize("uid")
    instance.role_name = randomize()
    return instance


def create_model_role_response_with_managers_example() -> ModelRoleResponseWithManagers:
    instance = ModelRoleResponseWithManagers()
    instance.is_wildcard = randomize("bool")
    instance.managers = [create_accountcommon_role_manager_example()]
    instance.permissions = [create_accountcommon_permission_example()]
    instance.role_id = randomize("uid")
    instance.role_name = randomize()
    return instance


def create_model_role_response_with_managers_and_pagination_v3_example() -> ModelRoleResponseWithManagersAndPaginationV3:
    instance = ModelRoleResponseWithManagersAndPaginationV3()
    instance.data = [create_model_role_response_with_managers_v3_example()]
    instance.paging = create_accountcommon_pagination_v3_example()
    return instance


def create_model_role_response_with_managers_v3_example() -> ModelRoleResponseWithManagersV3:
    instance = ModelRoleResponseWithManagersV3()
    instance.admin_role = randomize("bool")
    instance.is_wildcard = randomize("bool")
    instance.managers = [create_accountcommon_role_manager_v3_example()]
    instance.permissions = [create_accountcommon_permission_v3_example()]
    instance.role_id = randomize("uid")
    instance.role_name = randomize()
    return instance


def create_model_role_update_request_example() -> ModelRoleUpdateRequest:
    instance = ModelRoleUpdateRequest()
    instance.role_name = randomize()
    return instance


def create_model_role_update_request_v3_example() -> ModelRoleUpdateRequestV3:
    instance = ModelRoleUpdateRequestV3()
    instance.is_wildcard = randomize("bool")
    instance.role_name = randomize()
    instance.deletable = randomize("bool")
    return instance


def create_model_role_v4_request_example() -> ModelRoleV4Request:
    instance = ModelRoleV4Request()
    instance.admin_role = randomize("bool")
    instance.is_wildcard = randomize("bool")
    instance.role_name = randomize()
    instance.deletable = randomize("bool")
    return instance


def create_model_role_v4_response_example() -> ModelRoleV4Response:
    instance = ModelRoleV4Response()
    instance.admin_role = randomize("bool")
    instance.is_wildcard = randomize("bool")
    instance.permissions = [create_accountcommon_permission_v3_example()]
    instance.role_id = randomize("uid")
    instance.role_name = randomize()
    return instance


def create_model_search_users_by_platform_id_response_example() -> ModelSearchUsersByPlatformIDResponse:
    instance = ModelSearchUsersByPlatformIDResponse()
    instance.data = [create_accountcommon_user_search_by_platform_id_result_example()]
    instance.paging = create_accountcommon_pagination_example()
    return instance


def create_model_search_users_response_example() -> ModelSearchUsersResponse:
    instance = ModelSearchUsersResponse()
    instance.data = [create_accountcommon_user_search_result_example()]
    return instance


def create_model_search_users_response_with_pagination_v3_example() -> ModelSearchUsersResponseWithPaginationV3:
    instance = ModelSearchUsersResponseWithPaginationV3()
    instance.data = [create_model_user_response_v3_example()]
    instance.paging = create_accountcommon_pagination_v3_example()
    instance.total_data = randomize("int", min_val=1, max_val=1000)
    return instance


def create_model_send_register_verification_code_request_example() -> ModelSendRegisterVerificationCodeRequest:
    instance = ModelSendRegisterVerificationCodeRequest()
    instance.email_address = randomize("email")
    instance.language_tag = randomize()
    return instance


def create_model_send_verification_code_request_example() -> ModelSendVerificationCodeRequest:
    instance = ModelSendVerificationCodeRequest()
    instance.language_tag = randomize()
    instance.login_id = randomize()
    instance.context = randomize()
    return instance


def create_model_send_verification_code_request_v3_example() -> ModelSendVerificationCodeRequestV3:
    instance = ModelSendVerificationCodeRequestV3()
    instance.email_address = randomize("email")
    instance.context = randomize()
    instance.language_tag = randomize()
    return instance


def create_model_send_verification_link_request_example() -> ModelSendVerificationLinkRequest:
    instance = ModelSendVerificationLinkRequest()
    instance.language_tag = randomize()
    return instance


def create_model_sso_platform_credential_request_example() -> ModelSSOPlatformCredentialRequest:
    instance = ModelSSOPlatformCredentialRequest()
    instance.acs_url = randomize("url")
    instance.api_key = randomize()
    instance.app_id = randomize("uid")
    instance.federation_metadata_url = randomize("url")
    instance.is_active = randomize("bool")
    instance.redirect_uri = randomize()
    instance.secret = randomize()
    instance.sso_url = randomize("url")
    return instance


def create_model_sso_platform_credential_response_example() -> ModelSSOPlatformCredentialResponse:
    instance = ModelSSOPlatformCredentialResponse()
    instance.acs_url = randomize("url")
    instance.app_id = randomize("uid")
    instance.federation_metadata_url = randomize("url")
    instance.is_active = randomize("bool")
    instance.namespace = randomize("slug")
    instance.platform_id = randomize()
    instance.redirect_uri = randomize()
    instance.secret = randomize()
    instance.sso_url = randomize("url")
    instance.truncated_api_key = randomize()
    return instance


def create_model_third_party_login_platform_credential_request_example() -> ModelThirdPartyLoginPlatformCredentialRequest:
    instance = ModelThirdPartyLoginPlatformCredentialRequest()
    instance.acsurl = randomize()
    instance.allowed_clients = [randomize()]
    instance.app_id = randomize("uid")
    instance.authorization_endpoint = randomize()
    instance.aws_cognito_region = randomize()
    instance.aws_cognito_user_pool = randomize()
    instance.client_id = randomize("uid")
    instance.environment = randomize()
    instance.federation_metadata_url = randomize("url")
    instance.generic_oauth_flow = randomize("bool")
    instance.is_active = randomize("bool")
    instance.issuer = randomize()
    instance.jwks_endpoint = randomize()
    instance.key_id = randomize()
    instance.netflix_certificates = create_accountcommon_netflix_certificates_example()
    instance.organization_id = randomize()
    instance.platform_name = randomize()
    instance.redirect_uri = randomize()
    instance.registered_domains = [create_accountcommon_registered_domain_example()]
    instance.scopes = [randomize()]
    instance.secret = randomize()
    instance.team_id = randomize()
    instance.token_authentication_type = randomize()
    instance.token_claims_mapping = {randomize(): randomize()}
    instance.token_endpoint = randomize()
    return instance


def create_model_third_party_login_platform_credential_response_example() -> ModelThirdPartyLoginPlatformCredentialResponse:
    instance = ModelThirdPartyLoginPlatformCredentialResponse()
    instance.acsurl = randomize()
    instance.allowed_clients = [randomize()]
    instance.app_id = randomize("uid")
    instance.aws_cognito_region = randomize()
    instance.aws_cognito_user_pool = randomize()
    instance.client_id = randomize("uid")
    instance.environment = randomize()
    instance.federation_metadata_url = randomize("url")
    instance.generic_oauth_flow = randomize("bool")
    instance.is_active = randomize("bool")
    instance.issuer = randomize()
    instance.jwks_endpoint = randomize()
    instance.key_id = randomize()
    instance.namespace = randomize("slug")
    instance.organization_id = randomize()
    instance.platform_id = randomize()
    instance.platform_name = randomize()
    instance.redirect_uri = randomize()
    instance.registered_domains = [create_accountcommon_registered_domain_example()]
    instance.secret = randomize()
    instance.team_id = randomize()
    instance.token_authentication_type = randomize()
    instance.token_claims_mapping = {randomize(): randomize()}
    instance.authorization_endpoint = randomize()
    instance.netflix_certificates = create_accountcommon_netflix_certificates_example()
    instance.scopes = [randomize()]
    instance.token_endpoint = randomize()
    return instance


def create_model_unlink_user_platform_request_example() -> ModelUnlinkUserPlatformRequest:
    instance = ModelUnlinkUserPlatformRequest()
    instance.platform_namespace = randomize("slug")
    return instance


def create_model_update_permission_schedule_request_example() -> ModelUpdatePermissionScheduleRequest:
    instance = ModelUpdatePermissionScheduleRequest()
    instance.sched_action = randomize("int", min_val=1, max_val=1000)
    instance.sched_cron = randomize()
    instance.sched_range = [randomize()]
    return instance


def create_model_update_user_deletion_status_request_example() -> ModelUpdateUserDeletionStatusRequest:
    instance = ModelUpdateUserDeletionStatusRequest()
    instance.enabled = randomize("bool")
    return instance


def create_model_update_user_status_request_example() -> ModelUpdateUserStatusRequest:
    instance = ModelUpdateUserStatusRequest()
    instance.enabled = randomize("bool")
    instance.reason = randomize()
    return instance


def create_model_upgrade_headless_account_request_example() -> ModelUpgradeHeadlessAccountRequest:
    instance = ModelUpgradeHeadlessAccountRequest()
    instance.login_id = randomize()
    instance.password = randomize("password")
    return instance


def create_model_upgrade_headless_account_v3_request_example() -> ModelUpgradeHeadlessAccountV3Request:
    instance = ModelUpgradeHeadlessAccountV3Request()
    instance.email_address = randomize("email")
    instance.password = randomize("password")
    return instance


def create_model_upgrade_headless_account_with_verification_code_request_example() -> ModelUpgradeHeadlessAccountWithVerificationCodeRequest:
    instance = ModelUpgradeHeadlessAccountWithVerificationCodeRequest()
    instance.code = randomize()
    instance.login_id = randomize()
    instance.password = randomize("password")
    return instance


def create_model_upgrade_headless_account_with_verification_code_request_v3_example() -> ModelUpgradeHeadlessAccountWithVerificationCodeRequestV3:
    instance = ModelUpgradeHeadlessAccountWithVerificationCodeRequestV3()
    instance.code = randomize()
    instance.email_address = randomize("email")
    instance.password = randomize("password")
    instance.country = randomize("country")
    instance.date_of_birth = randomize()
    instance.display_name = randomize("slug")
    instance.validate_only = randomize("bool")
    return instance


def create_model_user_active_ban_response_example() -> ModelUserActiveBanResponse:
    instance = ModelUserActiveBanResponse()
    instance.ban = randomize()
    instance.ban_id = randomize()
    instance.end_date = randomize("date")
    return instance


def create_model_user_active_ban_response_v3_example() -> ModelUserActiveBanResponseV3:
    instance = ModelUserActiveBanResponseV3()
    instance.ban = randomize()
    instance.ban_id = randomize()
    instance.end_date = randomize("date")
    return instance


def create_model_user_ban_response_example() -> ModelUserBanResponse:
    instance = ModelUserBanResponse()
    instance.ban = randomize()
    instance.ban_id = randomize()
    instance.banned_by = create_banned_by_example()
    instance.comment = randomize()
    instance.created_at = randomize("date")
    instance.enabled = randomize("bool")
    instance.end_date = randomize("date")
    instance.namespace = randomize("slug")
    instance.reason = randomize()
    instance.user_id = randomize("uid")
    instance.disabled_date = randomize("date")
    return instance


def create_model_user_ban_response_v3_example() -> ModelUserBanResponseV3:
    instance = ModelUserBanResponseV3()
    instance.ban = randomize()
    instance.ban_id = randomize()
    instance.banned_by = create_accountcommon_banned_by_v3_example()
    instance.comment = randomize()
    instance.created_at = randomize("date")
    instance.disabled_date = randomize("date")
    instance.enabled = randomize("bool")
    instance.end_date = randomize("date")
    instance.namespace = randomize("slug")
    instance.reason = randomize()
    instance.user_id = randomize("uid")
    return instance


def create_model_user_base_info_example() -> ModelUserBaseInfo:
    instance = ModelUserBaseInfo()
    instance.avatar_url = randomize("url")
    instance.display_name = randomize("slug")
    instance.platform_user_ids = {randomize(): randomize()}
    instance.user_id = randomize("uid")
    instance.username = randomize("slug")
    return instance


def create_model_user_create_from_invitation_request_v3_example() -> ModelUserCreateFromInvitationRequestV3:
    instance = ModelUserCreateFromInvitationRequestV3()
    instance.auth_type = randomize()
    instance.country = randomize("country")
    instance.display_name = randomize("slug")
    instance.password = randomize("password")
    instance.reach_minimum_age = randomize("bool")
    instance.accepted_policies = [create_legal_accepted_policies_request_example()]
    instance.date_of_birth = randomize()
    return instance


def create_model_user_create_from_invitation_request_v4_example() -> ModelUserCreateFromInvitationRequestV4:
    instance = ModelUserCreateFromInvitationRequestV4()
    instance.auth_type = randomize()
    instance.country = randomize("country")
    instance.display_name = randomize("slug")
    instance.password = randomize("password")
    instance.reach_minimum_age = randomize("bool")
    instance.username = randomize("slug")
    instance.accepted_policies = [create_legal_accepted_policies_request_example()]
    instance.date_of_birth = randomize()
    return instance


def create_model_user_create_request_example() -> ModelUserCreateRequest:
    instance = ModelUserCreateRequest()
    instance.auth_type = randomize()
    instance.country = randomize("country")
    instance.display_name = randomize("slug")
    instance.login_id = randomize()
    instance.password = randomize("password")
    instance.password_md5_sum = randomize()
    return instance


def create_model_user_create_request_v3_example() -> ModelUserCreateRequestV3:
    instance = ModelUserCreateRequestV3()
    instance.auth_type = randomize()
    instance.code = randomize()
    instance.country = randomize("country")
    instance.display_name = randomize("slug")
    instance.email_address = randomize("email")
    instance.password = randomize("password")
    instance.reach_minimum_age = randomize("bool")
    instance.accepted_policies = [create_legal_accepted_policies_request_example()]
    instance.date_of_birth = randomize()
    instance.password_md5_sum = randomize()
    return instance


def create_model_user_create_response_example() -> ModelUserCreateResponse:
    instance = ModelUserCreateResponse()
    instance.auth_type = randomize()
    instance.country = randomize("country")
    instance.date_of_birth = randomize("adult_birthdate")
    instance.display_name = randomize("slug")
    instance.login_id = randomize()
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    return instance


def create_model_user_create_response_v3_example() -> ModelUserCreateResponseV3:
    instance = ModelUserCreateResponseV3()
    instance.auth_type = randomize()
    instance.country = randomize("country")
    instance.date_of_birth = randomize("adult_birthdate")
    instance.display_name = randomize("slug")
    instance.email_address = randomize("email")
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    return instance


def create_model_user_deletion_status_response_example() -> ModelUserDeletionStatusResponse:
    instance = ModelUserDeletionStatusResponse()
    instance.deletion_status = randomize("bool")
    return instance


def create_model_user_i_ds_request_example() -> ModelUserIDsRequest:
    instance = ModelUserIDsRequest()
    instance.user_ids = [randomize()]
    return instance


def create_model_user_info_response_example() -> ModelUserInfoResponse:
    instance = ModelUserInfoResponse()
    instance.display_name = randomize("slug")
    instance.email_address = randomize("email")
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    return instance


def create_model_user_information_example() -> ModelUserInformation:
    instance = ModelUserInformation()
    instance.country = randomize("country")
    instance.display_name = randomize("slug")
    instance.email_addresses = [randomize()]
    instance.linked_platform_accounts = [
        create_model_platform_user_information_example()
    ]
    instance.phone_number = randomize()
    instance.username = randomize("slug")
    instance.xuid = randomize()
    return instance


def create_model_user_invitation_v3_example() -> ModelUserInvitationV3:
    instance = ModelUserInvitationV3()
    instance.email = randomize("email")
    instance.expired_at = randomize("date")
    instance.roles = [create_accountcommon_namespace_role_example()]
    instance.id_ = randomize()
    return instance


def create_model_user_login_history_response_example() -> ModelUserLoginHistoryResponse:
    instance = ModelUserLoginHistoryResponse()
    instance.application_name = randomize()
    instance.city = randomize()
    instance.country = randomize("country")
    instance.device_id = randomize()
    instance.device_name = randomize()
    instance.state = randomize()
    instance.timestamp = randomize("int", min_val=1, max_val=1000)
    return instance


def create_model_user_password_update_request_example() -> ModelUserPasswordUpdateRequest:
    instance = ModelUserPasswordUpdateRequest()
    instance.language_tag = randomize()
    instance.new_password = randomize()
    instance.old_password = randomize()
    return instance


def create_model_user_password_update_v3_request_example() -> ModelUserPasswordUpdateV3Request:
    instance = ModelUserPasswordUpdateV3Request()
    instance.language_tag = randomize()
    instance.new_password = randomize()
    instance.old_password = randomize()
    return instance


def create_model_user_permissions_response_v3_example() -> ModelUserPermissionsResponseV3:
    instance = ModelUserPermissionsResponseV3()
    instance.action = randomize("int", min_val=1, max_val=1000)
    instance.resource = randomize()
    instance.sched_action = randomize("int", min_val=1, max_val=1000)
    instance.sched_cron = randomize()
    instance.sched_range = [randomize()]
    return instance


def create_model_user_response_example() -> ModelUserResponse:
    instance = ModelUserResponse()
    instance.auth_type = randomize()
    instance.bans = [create_model_user_active_ban_response_example()]
    instance.country = randomize("country")
    instance.created_at = randomize("date")
    instance.date_of_birth = randomize("adult_birthdate")
    instance.deletion_status = randomize("bool")
    instance.display_name = randomize("slug")
    instance.email_verified = randomize("bool")
    instance.enabled = randomize("bool")
    instance.last_date_of_birth_changed_time = randomize("date")
    instance.last_enabled_changed_time = randomize("date")
    instance.login_id = randomize()
    instance.namespace = randomize("slug")
    instance.namespace_roles = [create_accountcommon_namespace_role_example()]
    instance.old_email_address = randomize()
    instance.permissions = [create_accountcommon_permission_example()]
    instance.phone_verified = randomize("bool")
    instance.roles = [randomize()]
    instance.user_id = randomize("uid")
    instance.avatar_url = randomize("url")
    instance.email_address = randomize("email")
    instance.new_email_address = randomize()
    instance.phone_number = randomize()
    instance.platform_id = randomize()
    instance.platform_user_id = randomize()
    instance.username = randomize("slug")
    instance.xuid = randomize()
    return instance


def create_model_user_response_v3_example() -> ModelUserResponseV3:
    instance = ModelUserResponseV3()
    instance.auth_type = randomize()
    instance.bans = [create_model_user_active_ban_response_v3_example()]
    instance.country = randomize("country")
    instance.created_at = randomize("date")
    instance.date_of_birth = randomize("adult_birthdate")
    instance.deletion_status = randomize("bool")
    instance.display_name = randomize("slug")
    instance.email_address = randomize("email")
    instance.email_verified = randomize("bool")
    instance.enabled = randomize("bool")
    instance.last_date_of_birth_changed_time = randomize("date")
    instance.last_enabled_changed_time = randomize("date")
    instance.namespace = randomize("slug")
    instance.namespace_roles = [create_accountcommon_namespace_role_example()]
    instance.old_email_address = randomize()
    instance.permissions = [create_model_user_permissions_response_v3_example()]
    instance.phone_verified = randomize("bool")
    instance.roles = [randomize()]
    instance.user_id = randomize("uid")
    instance.avatar_url = randomize("url")
    instance.new_email_address = randomize()
    instance.phone_number = randomize()
    instance.platform_avatar_url = randomize("url")
    instance.platform_display_name = randomize()
    instance.platform_id = randomize()
    instance.platform_user_id = randomize()
    instance.user_name = randomize("slug")
    return instance


def create_model_user_roles_v4_response_example() -> ModelUserRolesV4Response:
    instance = ModelUserRolesV4Response()
    instance.assigned_namespaces = [randomize()]
    instance.role_id = randomize("uid")
    instance.role_name = randomize()
    return instance


def create_model_user_unban_create_request_v3_example() -> ModelUserUnbanCreateRequestV3:
    instance = ModelUserUnbanCreateRequestV3()
    instance.ban_id = randomize()
    instance.user_id = randomize("uid")
    return instance


def create_model_user_update_request_example() -> ModelUserUpdateRequest:
    instance = ModelUserUpdateRequest()
    instance.country = randomize("country")
    instance.date_of_birth = randomize()
    instance.display_name = randomize("slug")
    instance.language_tag = randomize()
    return instance


def create_model_user_update_request_v3_example() -> ModelUserUpdateRequestV3:
    instance = ModelUserUpdateRequestV3()
    instance.avatar_url = randomize("url")
    instance.country = randomize("country")
    instance.date_of_birth = randomize()
    instance.display_name = randomize("slug")
    instance.language_tag = randomize()
    instance.user_name = randomize("slug")
    return instance


def create_model_user_verification_request_example() -> ModelUserVerificationRequest:
    instance = ModelUserVerificationRequest()
    instance.code = randomize()
    instance.contact_type = randomize()
    instance.language_tag = randomize()
    instance.validate_only = randomize("bool")
    return instance


def create_model_user_verification_request_v3_example() -> ModelUserVerificationRequestV3:
    instance = ModelUserVerificationRequestV3()
    instance.code = randomize()
    instance.contact_type = randomize()
    instance.language_tag = randomize()
    instance.validate_only = randomize("bool")
    return instance


def create_model_valid_user_id_response_v4_example() -> ModelValidUserIDResponseV4:
    instance = ModelValidUserIDResponseV4()
    instance.exists = randomize("bool")
    instance.user_id = randomize("uid")
    return instance


def create_model_validation_detail_example() -> ModelValidationDetail:
    instance = ModelValidationDetail()
    instance.allow_all_special_characters = randomize("bool")
    instance.allow_digit = randomize("bool")
    instance.allow_letter = randomize("bool")
    instance.allow_space = randomize("bool")
    instance.allow_unicode = randomize("bool")
    instance.blocked_word = [randomize()]
    instance.description = [create_accountcommon_input_validation_description_example()]
    instance.is_custom_regex = randomize("bool")
    instance.letter_case = randomize()
    instance.max_length = randomize("int", min_val=1, max_val=1000)
    instance.max_repeating_alpha_num = randomize("int", min_val=1, max_val=1000)
    instance.max_repeating_special_character = randomize("int", min_val=1, max_val=1000)
    instance.min_char_type = randomize("int", min_val=1, max_val=1000)
    instance.min_length = randomize("int", min_val=1, max_val=1000)
    instance.regex = randomize()
    instance.special_character_location = randomize()
    instance.special_characters = [randomize()]
    return instance


def create_model_validation_detail_public_example() -> ModelValidationDetailPublic:
    instance = ModelValidationDetailPublic()
    instance.allow_all_special_characters = randomize("bool")
    instance.allow_digit = randomize("bool")
    instance.allow_letter = randomize("bool")
    instance.allow_space = randomize("bool")
    instance.allow_unicode = randomize("bool")
    instance.blocked_word = [randomize()]
    instance.description = create_accountcommon_input_validation_description_example()
    instance.is_custom_regex = randomize("bool")
    instance.letter_case = randomize()
    instance.max_length = randomize("int", min_val=1, max_val=1000)
    instance.max_repeating_alpha_num = randomize("int", min_val=1, max_val=1000)
    instance.max_repeating_special_character = randomize("int", min_val=1, max_val=1000)
    instance.min_char_type = randomize("int", min_val=1, max_val=1000)
    instance.min_length = randomize("int", min_val=1, max_val=1000)
    instance.regex = randomize()
    instance.special_character_location = randomize()
    instance.special_characters = [randomize()]
    return instance


def create_model_verification_code_response_example() -> ModelVerificationCodeResponse:
    instance = ModelVerificationCodeResponse()
    instance.account_registration = randomize()
    instance.account_upgrade = randomize()
    instance.password_reset = randomize()
    instance.update_email = randomize()
    return instance


def create_model_verify_registration_code_example() -> ModelVerifyRegistrationCode:
    instance = ModelVerifyRegistrationCode()
    instance.code = randomize()
    instance.email_address = randomize("email")
    return instance


def create_model_web_linking_response_example() -> ModelWebLinkingResponse:
    instance = ModelWebLinkingResponse()
    instance.third_party_url = randomize("url")
    return instance


def create_oauthapi_revocation_list_example() -> OauthapiRevocationList:
    instance = OauthapiRevocationList()
    instance.revoked_tokens = create_bloom_filter_json_example()
    instance.revoked_users = [create_oauthcommon_user_revocation_list_record_example()]
    return instance


def create_oauthcommon_jwk_key_example() -> OauthcommonJWKKey:
    instance = OauthcommonJWKKey()
    instance.kty = randomize()
    instance.alg = randomize()
    instance.e = randomize()
    instance.kid = randomize()
    instance.n = randomize()
    instance.use = randomize()
    return instance


def create_oauthcommon_jwk_set_example() -> OauthcommonJWKSet:
    instance = OauthcommonJWKSet()
    instance.keys = [create_oauthcommon_jwk_key_example()]
    return instance


def create_oauthcommon_user_revocation_list_record_example() -> OauthcommonUserRevocationListRecord:
    instance = OauthcommonUserRevocationListRecord()
    instance.id_ = randomize()
    instance.revoked_at = randomize("date")
    return instance


def create_oauthmodel_country_location_response_example() -> OauthmodelCountryLocationResponse:
    instance = OauthmodelCountryLocationResponse()
    instance.city = randomize()
    instance.country_code = randomize()
    instance.country_name = randomize()
    instance.state = randomize()
    return instance


def create_oauthmodel_error_response_example() -> OauthmodelErrorResponse:
    instance = OauthmodelErrorResponse()
    instance.error = randomize()
    instance.client_id = randomize("uid")
    instance.default_factor = randomize()
    instance.error_description = randomize()
    instance.error_uri = randomize()
    instance.factors = [randomize()]
    instance.linking_token = randomize()
    instance.message_variables = {randomize(): randomize()}
    instance.mfa_token = randomize()
    instance.platform_id = randomize()
    return instance


def create_oauthmodel_game_token_code_response_example() -> OauthmodelGameTokenCodeResponse:
    instance = OauthmodelGameTokenCodeResponse()
    instance.code = randomize()
    return instance


def create_oauthmodel_token_introspect_response_example() -> OauthmodelTokenIntrospectResponse:
    instance = OauthmodelTokenIntrospectResponse()
    instance.active = randomize("bool")
    instance.aud = randomize()
    instance.client_id = randomize("uid")
    instance.exp = randomize("int", min_val=1, max_val=1000)
    instance.iat = randomize("int", min_val=1, max_val=1000)
    instance.scope = randomize()
    instance.sub = randomize()
    return instance


def create_oauthmodel_token_response_example() -> OauthmodelTokenResponse:
    instance = OauthmodelTokenResponse()
    instance.access_token = randomize()
    instance.bans = [create_accountcommon_jwt_ban_v3_example()]
    instance.display_name = randomize("slug")
    instance.expires_in = randomize("int", min_val=1, max_val=1000)
    instance.namespace = randomize("slug")
    instance.namespace_roles = [create_accountcommon_namespace_role_example()]
    instance.permissions = [create_accountcommon_permission_example()]
    instance.refresh_token = randomize()
    instance.roles = [randomize()]
    instance.token_type = randomize()
    instance.user_id = randomize("uid")
    instance.is_comply = randomize("bool")
    instance.jflgs = randomize("int", min_val=1, max_val=1000)
    instance.platform_id = randomize()
    instance.platform_user_id = randomize()
    instance.refresh_expires_in = randomize("int", min_val=1, max_val=1000)
    return instance


def create_oauthmodel_token_response_v3_example() -> OauthmodelTokenResponseV3:
    instance = OauthmodelTokenResponseV3()
    instance.access_token = randomize()
    instance.bans = [create_accountcommon_jwt_ban_v3_example()]
    instance.expires_in = randomize("int", min_val=1, max_val=1000)
    instance.namespace = randomize("slug")
    instance.namespace_roles = [create_accountcommon_namespace_role_example()]
    instance.permissions = [create_accountcommon_permission_v3_example()]
    instance.roles = [randomize()]
    instance.scope = randomize()
    instance.token_type = randomize()
    instance.display_name = randomize("slug")
    instance.is_comply = randomize("bool")
    instance.jflgs = randomize("int", min_val=1, max_val=1000)
    instance.platform_id = randomize()
    instance.platform_user_id = randomize()
    instance.refresh_expires_in = randomize("int", min_val=1, max_val=1000)
    instance.refresh_token = randomize()
    instance.user_id = randomize("uid")
    instance.xuid = randomize()
    return instance


def create_oauthmodel_token_third_party_response_example() -> OauthmodelTokenThirdPartyResponse:
    instance = OauthmodelTokenThirdPartyResponse()
    instance.platform_token = randomize()
    instance.sand_box_id = randomize()
    return instance


def create_oauthmodel_token_with_device_cookie_response_v3_example() -> OauthmodelTokenWithDeviceCookieResponseV3:
    instance = OauthmodelTokenWithDeviceCookieResponseV3()
    instance.access_token = randomize()
    instance.bans = [create_accountcommon_jwt_ban_v3_example()]
    instance.expires_in = randomize("int", min_val=1, max_val=1000)
    instance.namespace = randomize("slug")
    instance.namespace_roles = [create_accountcommon_namespace_role_example()]
    instance.permissions = [create_accountcommon_permission_v3_example()]
    instance.roles = [randomize()]
    instance.scope = randomize()
    instance.token_type = randomize()
    instance.auth_trust_id = randomize()
    instance.display_name = randomize("slug")
    instance.is_comply = randomize("bool")
    instance.jflgs = randomize("int", min_val=1, max_val=1000)
    instance.platform_id = randomize()
    instance.platform_user_id = randomize()
    instance.refresh_expires_in = randomize("int", min_val=1, max_val=1000)
    instance.refresh_token = randomize()
    instance.user_id = randomize("uid")
    instance.xuid = randomize()
    return instance


def create_rest_error_response_example() -> RestErrorResponse:
    instance = RestErrorResponse()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    instance.message_variables = {randomize(): randomize()}
    return instance


def create_rest_error_response_with_conflicted_user_platform_accounts_example() -> RestErrorResponseWithConflictedUserPlatformAccounts:
    instance = RestErrorResponseWithConflictedUserPlatformAccounts()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    instance.message_variables = (
        create_accountcommon_conflicted_user_platform_accounts_example()
    )
    return instance


def create_validation_example() -> Validation:
    instance = Validation()
    instance.allow_all_special_characters = randomize("bool")
    instance.allow_digit = randomize("bool")
    instance.allow_letter = randomize("bool")
    instance.allow_space = randomize("bool")
    instance.allow_unicode = randomize("bool")
    instance.blocked_word = [randomize()]
    instance.description = [create_validation_description_example()]
    instance.is_custom_regex = randomize("bool")
    instance.letter_case = randomize()
    instance.max_length = randomize("int", min_val=1, max_val=1000)
    instance.max_repeating_alpha_num = randomize("int", min_val=1, max_val=1000)
    instance.max_repeating_special_character = randomize("int", min_val=1, max_val=1000)
    instance.min_char_type = randomize("int", min_val=1, max_val=1000)
    instance.min_length = randomize("int", min_val=1, max_val=1000)
    instance.regex = randomize()
    instance.special_character_location = randomize()
    instance.special_characters = [randomize()]
    return instance


def create_validation_description_example() -> ValidationDescription:
    instance = ValidationDescription()
    instance.language = randomize()
    instance.message = [randomize()]
    return instance
