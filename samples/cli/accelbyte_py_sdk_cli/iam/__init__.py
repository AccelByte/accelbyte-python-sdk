# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-init.j2

# justice-iam-service

from ._get_bans_type import get_bans_type
from ._get_list_ban_reason import get_list_ban_reason
from ._get_clients import get_clients
from ._create_client import create_client
from ._get_client import get_client
from ._update_client import update_client
from ._delete_client import delete_client
from ._update_client_permission import update_client_permission
from ._add_client_permission import add_client_permission
from ._delete_client_permission import delete_client_permission
from ._update_client_secret import update_client_secret
from ._get_clientsby_namespace import get_clientsby_namespace
from ._create_client_by_namespace import create_client_by_namespace
from ._delete_client_by_namespace import delete_client_by_namespace
from ._create_user import create_user
from ._get_admin_users_by_role_id import get_admin_users_by_role_id
from ._get_user_by_login_id import get_user_by_login_id
from ._get_user_by_platform_user_id import get_user_by_platform_user_id
from ._forgot_password import forgot_password
from ._get_users_by_login_ids import get_users_by_login_ids
from ._reset_password import reset_password
from ._search_user import search_user
from ._get_user_by_user_id import get_user_by_user_id
from ._update_user import update_user
from ._delete_user import delete_user
from ._ban_user import ban_user
from ._get_user_ban_history import get_user_ban_history
from ._disable_user_ban import disable_user_ban
from ._enable_user_ban import enable_user_ban
from ._list_cross_namespace_account_link import list_cross_namespace_account_link
from ._disable_user import disable_user
from ._enable_user import enable_user
from ._get_user_information import get_user_information
from ._delete_user_information import delete_user_information
from ._get_user_login_histories import get_user_login_histories
from ._update_password import update_password
from ._save_user_permission import save_user_permission
from ._add_user_permission import add_user_permission
from ._delete_user_permission import delete_user_permission
from ._get_user_platform_accounts import get_user_platform_accounts
from ._get_user_mapping import get_user_mapping
from ._get_user_justice_platform_account import get_user_justice_platform_account
from ._platform_link import platform_link
from ._platform_unlink import platform_unlink
from ._get_publisher_user import get_publisher_user
from ._save_user_roles import save_user_roles
from ._add_user_role import add_user_role
from ._delete_user_role import delete_user_role
from ._upgrade_headless_account import upgrade_headless_account
from ._upgrade_headless_account_with_verification_code import (
    upgrade_headless_account_with_verification_code,
)
from ._user_verification import user_verification
from ._send_verification_code import send_verification_code
from ._authorization import authorization
from ._get_jwks import get_jwks
from ._platform_token_request_handler import platform_token_request_handler
from ._revoke_user import revoke_user
from ._get_revocation_list import get_revocation_list
from ._revoke_token import revoke_token
from ._revoke_a_user import revoke_a_user
from ._token_grant import token_grant
from ._verify_token import verify_token
from ._get_roles import get_roles
from ._create_role import create_role
from ._get_role import get_role
from ._update_role import update_role
from ._delete_role import delete_role
from ._get_role_admin_status import get_role_admin_status
from ._set_role_as_admin import set_role_as_admin
from ._remove_role_admin import remove_role_admin
from ._get_role_managers import get_role_managers
from ._add_role_managers import add_role_managers
from ._remove_role_managers import remove_role_managers
from ._get_role_members import get_role_members
from ._add_role_members import add_role_members
from ._remove_role_members import remove_role_members
from ._update_role_permissions import update_role_permissions
from ._add_role_permission import add_role_permission
from ._delete_role_permission import delete_role_permission
from ._admin_get_age_restriction_status_v2 import admin_get_age_restriction_status_v2
from ._admin_update_age_restriction_config_v2 import (
    admin_update_age_restriction_config_v2,
)
from ._get_list_country_age_restriction import get_list_country_age_restriction
from ._update_country_age_restriction import update_country_age_restriction
from ._admin_search_users_v2 import admin_search_users_v2
from ._admin_get_user_by_user_id_v2 import admin_get_user_by_user_id_v2
from ._admin_update_user_v2 import admin_update_user_v2
from ._admin_ban_user_v2 import admin_ban_user_v2
from ._admin_get_user_ban_v2 import admin_get_user_ban_v2
from ._admin_disable_user_v2 import admin_disable_user_v2
from ._admin_enable_user_v2 import admin_enable_user_v2
from ._admin_reset_password_v2 import admin_reset_password_v2
from ._admin_delete_platform_link_v2 import admin_delete_platform_link_v2
from ._admin_put_user_roles_v2 import admin_put_user_roles_v2
from ._admin_create_user_roles_v2 import admin_create_user_roles_v2
from ._public_get_country_age_restriction import public_get_country_age_restriction
from ._public_create_user_v2 import public_create_user_v2
from ._public_forgot_password_v2 import public_forgot_password_v2
from ._public_reset_password_v2 import public_reset_password_v2
from ._public_get_user_by_user_idv2 import public_get_user_by_user_idv2
from ._public_update_user_v2 import public_update_user_v2
from ._public_get_user_ban import public_get_user_ban
from ._public_update_password_v2 import public_update_password_v2
from ._get_list_justice_platform_accounts import get_list_justice_platform_accounts
from ._public_platform_link_v2 import public_platform_link_v2
from ._public_delete_platform_link_v2 import public_delete_platform_link_v2
from ._admin_get_bans_type_v3 import admin_get_bans_type_v3
from ._admin_get_list_ban_reason_v3 import admin_get_list_ban_reason_v3
from ._admin_list_client_available_permissions import (
    admin_list_client_available_permissions,
)
from ._admin_update_available_permissions_by_module import (
    admin_update_available_permissions_by_module,
)
from ._admin_delete_config_permissions_by_group import (
    admin_delete_config_permissions_by_group,
)
from ._admin_list_client_templates import admin_list_client_templates
from ._admin_get_input_validations import admin_get_input_validations
from ._admin_update_input_validations import admin_update_input_validations
from ._admin_reset_input_validations import admin_reset_input_validations
from ._list_admins_v3 import list_admins_v3
from ._admin_get_age_restriction_status_v3 import admin_get_age_restriction_status_v3
from ._admin_update_age_restriction_config_v3 import (
    admin_update_age_restriction_config_v3,
)
from ._admin_get_list_country_age_restriction_v3 import (
    admin_get_list_country_age_restriction_v3,
)
from ._admin_update_country_age_restriction_v3 import (
    admin_update_country_age_restriction_v3,
)
from ._admin_get_banned_users_v3 import admin_get_banned_users_v3
from ._admin_ban_user_bulk_v3 import admin_ban_user_bulk_v3
from ._admin_unban_user_bulk_v3 import admin_unban_user_bulk_v3
from ._admin_get_bans_type_with_namespace_v3 import (
    admin_get_bans_type_with_namespace_v3,
)
from ._admin_get_clients_by_namespace_v3 import admin_get_clients_by_namespace_v3
from ._admin_bulk_update_clients_v3 import admin_bulk_update_clients_v3
from ._admin_create_client_v3 import admin_create_client_v3
from ._admin_get_clientsby_namespaceby_idv3 import admin_get_clientsby_namespaceby_idv3
from ._admin_delete_client_v3 import admin_delete_client_v3
from ._admin_update_client_v3 import admin_update_client_v3
from ._admin_update_client_permission_v3 import admin_update_client_permission_v3
from ._admin_add_client_permissions_v3 import admin_add_client_permissions_v3
from ._admin_delete_client_permission_v3 import admin_delete_client_permission_v3
from ._admin_get_config_value_v3 import admin_get_config_value_v3
from ._admin_get_country_list_v3 import admin_get_country_list_v3
from ._admin_get_country_blacklist_v3 import admin_get_country_blacklist_v3
from ._admin_add_country_blacklist_v3 import admin_add_country_blacklist_v3
from ._admin_get_login_allowlist_v3 import admin_get_login_allowlist_v3
from ._admin_update_login_allowlist_v3 import admin_update_login_allowlist_v3
from ._retrieve_all_third_party_login_platform_credential_v3 import (
    retrieve_all_third_party_login_platform_credential_v3,
)
from ._retrieve_all_active_third_party_login_platform_credential_v3 import (
    retrieve_all_active_third_party_login_platform_credential_v3,
)
from ._retrieve_all_sso_login_platform_credential_v3 import (
    retrieve_all_sso_login_platform_credential_v3,
)
from ._retrieve_third_party_login_platform_credential_v3 import (
    retrieve_third_party_login_platform_credential_v3,
)
from ._add_third_party_login_platform_credential_v3 import (
    add_third_party_login_platform_credential_v3,
)
from ._delete_third_party_login_platform_credential_v3 import (
    delete_third_party_login_platform_credential_v3,
)
from ._update_third_party_login_platform_credential_v3 import (
    update_third_party_login_platform_credential_v3,
)
from ._update_third_party_login_platform_domain_v3 import (
    update_third_party_login_platform_domain_v3,
)
from ._delete_third_party_login_platform_domain_v3 import (
    delete_third_party_login_platform_domain_v3,
)
from ._retrieve_sso_login_platform_credential import (
    retrieve_sso_login_platform_credential,
)
from ._add_sso_login_platform_credential import add_sso_login_platform_credential
from ._delete_sso_login_platform_credential_v3 import (
    delete_sso_login_platform_credential_v3,
)
from ._update_sso_platform_credential import update_sso_platform_credential
from ._admin_list_user_id_by_platform_user_i_ds_v3 import (
    admin_list_user_id_by_platform_user_i_ds_v3,
)
from ._admin_get_user_by_platform_user_idv3 import admin_get_user_by_platform_user_idv3
from ._admin_get_profile_update_strategy_v3 import admin_get_profile_update_strategy_v3
from ._admin_update_profile_update_strategy_v3 import (
    admin_update_profile_update_strategy_v3,
)
from ._admin_get_role_override_config_v3 import admin_get_role_override_config_v3
from ._admin_update_role_override_config_v3 import admin_update_role_override_config_v3
from ._admin_get_role_source_v3 import admin_get_role_source_v3
from ._admin_change_role_override_config_status_v3 import (
    admin_change_role_override_config_status_v3,
)
from ._admin_get_role_namespace_permission_v3 import (
    admin_get_role_namespace_permission_v3,
)
from ._get_admin_users_by_role_id_v3 import get_admin_users_by_role_id_v3
from ._admin_get_user_by_email_address_v3 import admin_get_user_by_email_address_v3
from ._admin_bulk_update_users_v3 import admin_bulk_update_users_v3
from ._admin_get_bulk_user_ban_v3 import admin_get_bulk_user_ban_v3
from ._admin_list_user_id_by_user_i_ds_v3 import admin_list_user_id_by_user_i_ds_v3
from ._admin_bulk_get_users_platform import admin_bulk_get_users_platform
from ._admin_invite_user_v3 import admin_invite_user_v3
from ._admin_query_third_platform_link_history_v3 import (
    admin_query_third_platform_link_history_v3,
)
from ._admin_list_users_v3 import admin_list_users_v3
from ._admin_search_user_v3 import admin_search_user_v3
from ._admin_get_bulk_user_by_email_address_v3 import (
    admin_get_bulk_user_by_email_address_v3,
)
from ._admin_get_user_by_user_id_v3 import admin_get_user_by_user_id_v3
from ._admin_update_user_v3 import admin_update_user_v3
from ._admin_get_user_ban_v3 import admin_get_user_ban_v3
from ._admin_ban_user_v3 import admin_ban_user_v3
from ._admin_get_user_ban_summary_v3 import admin_get_user_ban_summary_v3
from ._admin_update_user_ban_v3 import admin_update_user_ban_v3
from ._admin_send_verification_code_v3 import admin_send_verification_code_v3
from ._admin_verify_account_v3 import admin_verify_account_v3
from ._get_user_verification_code import get_user_verification_code
from ._admin_get_user_deletion_status_v3 import admin_get_user_deletion_status_v3
from ._admin_update_user_deletion_status_v3 import admin_update_user_deletion_status_v3
from ._admin_list_user_all_platform_accounts_distinct_v3 import (
    admin_list_user_all_platform_accounts_distinct_v3,
)
from ._admin_upgrade_headless_account_v3 import admin_upgrade_headless_account_v3
from ._admin_delete_user_information_v3 import admin_delete_user_information_v3
from ._admin_get_user_login_histories_v3 import admin_get_user_login_histories_v3
from ._admin_reset_password_v3 import admin_reset_password_v3
from ._admin_update_user_permission_v3 import admin_update_user_permission_v3
from ._admin_add_user_permissions_v3 import admin_add_user_permissions_v3
from ._admin_delete_user_permission_bulk_v3 import admin_delete_user_permission_bulk_v3
from ._admin_delete_user_permission_v3 import admin_delete_user_permission_v3
from ._admin_get_user_platform_accounts_v3 import admin_get_user_platform_accounts_v3
from ._admin_list_all_distinct_platform_accounts_v3 import (
    admin_list_all_distinct_platform_accounts_v3,
)
from ._admin_get_list_justice_platform_accounts import (
    admin_get_list_justice_platform_accounts,
)
from ._admin_get_user_mapping import admin_get_user_mapping
from ._admin_create_justice_user import admin_create_justice_user
from ._admin_link_platform_account import admin_link_platform_account
from ._admin_get_user_link_histories_v3 import admin_get_user_link_histories_v3
from ._admin_platform_unlink_v3 import admin_platform_unlink_v3
from ._admin_platform_unlink_all_v3 import admin_platform_unlink_all_v3
from ._admin_platform_link_v3 import admin_platform_link_v3
from ._admin_delete_user_linking_history_by_platform_idv3 import (
    admin_delete_user_linking_history_by_platform_idv3,
)
from ._admin_delete_user_linking_restriction_by_platform_idv3 import (
    admin_delete_user_linking_restriction_by_platform_idv3,
)
from ._admin_get_third_party_platform_token_link_status_v3 import (
    admin_get_third_party_platform_token_link_status_v3,
)
from ._admin_get_user_single_platform_account import (
    admin_get_user_single_platform_account,
)
from ._admin_delete_user_roles_v3 import admin_delete_user_roles_v3
from ._admin_save_user_role_v3 import admin_save_user_role_v3
from ._admin_add_user_role_v3 import admin_add_user_role_v3
from ._admin_delete_user_role_v3 import admin_delete_user_role_v3
from ._admin_update_user_status_v3 import admin_update_user_status_v3
from ._admin_trustly_update_user_identity import admin_trustly_update_user_identity
from ._admin_verify_user_without_verification_code_v3 import (
    admin_verify_user_without_verification_code_v3,
)
from ._admin_update_client_secret_v3 import admin_update_client_secret_v3
from ._admin_check_third_party_login_platform_availability_v3 import (
    admin_check_third_party_login_platform_availability_v3,
)
from ._admin_get_roles_v3 import admin_get_roles_v3
from ._admin_create_role_v3 import admin_create_role_v3
from ._admin_get_role_v3 import admin_get_role_v3
from ._admin_delete_role_v3 import admin_delete_role_v3
from ._admin_update_role_v3 import admin_update_role_v3
from ._admin_get_role_admin_status_v3 import admin_get_role_admin_status_v3
from ._admin_update_admin_role_status_v3 import admin_update_admin_role_status_v3
from ._admin_remove_role_admin_v3 import admin_remove_role_admin_v3
from ._admin_get_role_managers_v3 import admin_get_role_managers_v3
from ._admin_add_role_managers_v3 import admin_add_role_managers_v3
from ._admin_remove_role_managers_v3 import admin_remove_role_managers_v3
from ._admin_get_role_members_v3 import admin_get_role_members_v3
from ._admin_add_role_members_v3 import admin_add_role_members_v3
from ._admin_remove_role_members_v3 import admin_remove_role_members_v3
from ._admin_update_role_permissions_v3 import admin_update_role_permissions_v3
from ._admin_add_role_permissions_v3 import admin_add_role_permissions_v3
from ._admin_delete_role_permissions_v3 import admin_delete_role_permissions_v3
from ._admin_delete_role_permission_v3 import admin_delete_role_permission_v3
from ._admin_get_my_user_v3 import admin_get_my_user_v3
from ._user_authentication_v3 import user_authentication_v3
from ._authentication_with_platform_link_v3 import authentication_with_platform_link_v3
from ._authenticate_and_link_forward_v3 import authenticate_and_link_forward_v3
from ._generate_token_by_new_headless_account_v3 import (
    generate_token_by_new_headless_account_v3,
)
from ._request_one_time_linking_code_v3 import request_one_time_linking_code_v3
from ._validate_one_time_linking_code_v3 import validate_one_time_linking_code_v3
from ._request_token_by_one_time_link_code_response_v3 import (
    request_token_by_one_time_link_code_response_v3,
)
from ._get_country_location_v3 import get_country_location_v3
from ._logout import logout
from ._request_token_exchange_code_v3 import request_token_exchange_code_v3
from ._admin_retrieve_user_third_party_platform_token_v3 import (
    admin_retrieve_user_third_party_platform_token_v3,
)
from ._revoke_user_v3 import revoke_user_v3
from ._authorize_v3 import authorize_v3
from ._token_introspection_v3 import token_introspection_v3
from ._get_jwksv3 import get_jwksv3
from ._send_mfa_authentication_code import send_mfa_authentication_code
from ._change2fa_method import change2fa_method
from ._verify2fa_code import verify2fa_code
from ._verify2fa_code_forward import verify2fa_code_forward
from ._retrieve_user_third_party_platform_token_v3 import (
    retrieve_user_third_party_platform_token_v3,
)
from ._auth_code_request_v3 import auth_code_request_v3
from ._platform_token_grant_v3 import platform_token_grant_v3
from ._get_revocation_list_v3 import get_revocation_list_v3
from ._token_revocation_v3 import token_revocation_v3
from ._simultaneous_login_v3 import simultaneous_login_v3
from ._token_grant_v3 import token_grant_v3
from ._verify_token_v3 import verify_token_v3
from ._platform_authentication_v3 import platform_authentication_v3
from ._platform_token_refresh_v3 import platform_token_refresh_v3
from ._public_get_input_validations import public_get_input_validations
from ._public_get_input_validation_by_field import public_get_input_validation_by_field
from ._public_get_country_age_restriction_v3 import (
    public_get_country_age_restriction_v3,
)
from ._public_get_config_value_v3 import public_get_config_value_v3
from ._public_get_country_list_v3 import public_get_country_list_v3
from ._retrieve_all_active_third_party_login_platform_credential_public_v3 import (
    retrieve_all_active_third_party_login_platform_credential_public_v3,
)
from ._retrieve_active_oidc_clients_public_v3 import (
    retrieve_active_oidc_clients_public_v3,
)
from ._public_list_user_id_by_platform_user_i_ds_v3 import (
    public_list_user_id_by_platform_user_i_ds_v3,
)
from ._public_get_user_by_platform_user_idv3 import (
    public_get_user_by_platform_user_idv3,
)
from ._public_get_profile_update_strategy_v3 import (
    public_get_profile_update_strategy_v3,
)
from ._public_get_async_status import public_get_async_status
from ._public_search_user_v3 import public_search_user_v3
from ._public_create_user_v3 import public_create_user_v3
from ._check_user_availability import check_user_availability
from ._public_bulk_get_users import public_bulk_get_users
from ._public_send_registration_code import public_send_registration_code
from ._public_verify_registration_code import public_verify_registration_code
from ._public_forgot_password_v3 import public_forgot_password_v3
from ._public_validate_user_input import public_validate_user_input
from ._get_admin_invitation_v3 import get_admin_invitation_v3
from ._create_user_from_invitation_v3 import create_user_from_invitation_v3
from ._update_user_v3 import update_user_v3
from ._public_partial_update_user_v3 import public_partial_update_user_v3
from ._public_send_verification_code_v3 import public_send_verification_code_v3
from ._public_user_verification_v3 import public_user_verification_v3
from ._public_upgrade_headless_account_v3 import public_upgrade_headless_account_v3
from ._public_verify_headless_account_v3 import public_verify_headless_account_v3
from ._public_update_password_v3 import public_update_password_v3
from ._public_create_justice_user import public_create_justice_user
from ._public_platform_link_v3 import public_platform_link_v3
from ._public_platform_unlink_v3 import public_platform_unlink_v3
from ._public_platform_unlink_all_v3 import public_platform_unlink_all_v3
from ._public_force_platform_link_v3 import public_force_platform_link_v3
from ._public_web_link_platform import public_web_link_platform
from ._public_web_link_platform_establish import public_web_link_platform_establish
from ._public_process_web_link_platform_v3 import public_process_web_link_platform_v3
from ._public_get_users_platform_infos_v3 import public_get_users_platform_infos_v3
from ._reset_password_v3 import reset_password_v3
from ._public_get_user_by_user_id_v3 import public_get_user_by_user_id_v3
from ._public_get_user_ban_history_v3 import public_get_user_ban_history_v3
from ._public_list_user_all_platform_accounts_distinct_v3 import (
    public_list_user_all_platform_accounts_distinct_v3,
)
from ._public_get_user_information_v3 import public_get_user_information_v3
from ._public_get_user_login_histories_v3 import public_get_user_login_histories_v3
from ._public_get_user_platform_accounts_v3 import public_get_user_platform_accounts_v3
from ._public_list_justice_platform_accounts_v3 import (
    public_list_justice_platform_accounts_v3,
)
from ._public_link_platform_account import public_link_platform_account
from ._public_force_link_platform_with_progression import (
    public_force_link_platform_with_progression,
)
from ._public_get_publisher_user_v3 import public_get_publisher_user_v3
from ._public_validate_user_by_user_id_and_password_v3 import (
    public_validate_user_by_user_id_and_password_v3,
)
from ._public_get_roles_v3 import public_get_roles_v3
from ._public_get_role_v3 import public_get_role_v3
from ._public_get_my_user_v3 import public_get_my_user_v3
from ._public_send_code_forward_v3 import public_send_code_forward_v3
from ._public_get_link_headless_account_to_my_account_conflict_v3 import (
    public_get_link_headless_account_to_my_account_conflict_v3,
)
from ._link_headless_account_to_my_account_v3 import (
    link_headless_account_to_my_account_v3,
)
from ._public_get_my_redirection_after_link_v3 import (
    public_get_my_redirection_after_link_v3,
)
from ._public_get_my_profile_allow_update_status_v3 import (
    public_get_my_profile_allow_update_status_v3,
)
from ._public_send_verification_link_v3 import public_send_verification_link_v3
from ._public_get_openid_user_info_v3 import public_get_openid_user_info_v3
from ._public_verify_user_by_link_v3 import public_verify_user_by_link_v3
from ._platform_authenticate_samlv3_handler import platform_authenticate_samlv3_handler
from ._login_sso_client import login_sso_client
from ._logout_sso_client import logout_sso_client
from ._request_target_token_response_v3 import request_target_token_response_v3
from ._upgrade_and_authenticate_forward_v3 import upgrade_and_authenticate_forward_v3
from ._admin_list_invitation_histories_v4 import admin_list_invitation_histories_v4
from ._admin_get_devices_by_user_v4 import admin_get_devices_by_user_v4
from ._admin_get_banned_devices_v4 import admin_get_banned_devices_v4
from ._admin_get_user_device_bans_v4 import admin_get_user_device_bans_v4
from ._admin_ban_device_v4 import admin_ban_device_v4
from ._admin_get_device_ban_v4 import admin_get_device_ban_v4
from ._admin_update_device_ban_v4 import admin_update_device_ban_v4
from ._admin_generate_report_v4 import admin_generate_report_v4
from ._admin_get_device_types_v4 import admin_get_device_types_v4
from ._admin_get_device_bans_v4 import admin_get_device_bans_v4
from ._admin_decrypt_device_v4 import admin_decrypt_device_v4
from ._admin_unban_device_v4 import admin_unban_device_v4
from ._admin_get_users_by_device_v4 import admin_get_users_by_device_v4
from ._admin_get_namespace_invitation_history_v4 import (
    admin_get_namespace_invitation_history_v4,
)
from ._admin_get_namespace_user_invitation_history_v4 import (
    admin_get_namespace_user_invitation_history_v4,
)
from ._admin_create_test_users_v4 import admin_create_test_users_v4
from ._admin_create_user_v4 import admin_create_user_v4
from ._admin_bulk_update_user_account_type_v4 import (
    admin_bulk_update_user_account_type_v4,
)
from ._admin_bulk_check_valid_user_idv4 import admin_bulk_check_valid_user_idv4
from ._admin_update_user_v4 import admin_update_user_v4
from ._admin_update_user_email_address_v4 import admin_update_user_email_address_v4
from ._admin_disable_user_mfav4 import admin_disable_user_mfav4
from ._admin_get_user_mfa_status_v4 import admin_get_user_mfa_status_v4
from ._admin_list_user_roles_v4 import admin_list_user_roles_v4
from ._admin_update_user_role_v4 import admin_update_user_role_v4
from ._admin_add_user_role_v4 import admin_add_user_role_v4
from ._admin_remove_user_role_v4 import admin_remove_user_role_v4
from ._admin_get_roles_v4 import admin_get_roles_v4
from ._admin_create_role_v4 import admin_create_role_v4
from ._admin_get_role_v4 import admin_get_role_v4
from ._admin_delete_role_v4 import admin_delete_role_v4
from ._admin_update_role_v4 import admin_update_role_v4
from ._admin_update_role_permissions_v4 import admin_update_role_permissions_v4
from ._admin_add_role_permissions_v4 import admin_add_role_permissions_v4
from ._admin_delete_role_permissions_v4 import admin_delete_role_permissions_v4
from ._admin_list_assigned_users_v4 import admin_list_assigned_users_v4
from ._admin_assign_user_to_role_v4 import admin_assign_user_to_role_v4
from ._admin_revoke_user_from_role_v4 import admin_revoke_user_from_role_v4
from ._admin_invite_user_new_v4 import admin_invite_user_new_v4
from ._admin_update_my_user_v4 import admin_update_my_user_v4
from ._admin_disable_my_authenticator_v4 import admin_disable_my_authenticator_v4
from ._admin_enable_my_authenticator_v4 import admin_enable_my_authenticator_v4
from ._admin_generate_my_authenticator_key_v4 import (
    admin_generate_my_authenticator_key_v4,
)
from ._admin_get_my_backup_codes_v4 import admin_get_my_backup_codes_v4
from ._admin_generate_my_backup_codes_v4 import admin_generate_my_backup_codes_v4
from ._admin_disable_my_backup_codes_v4 import admin_disable_my_backup_codes_v4
from ._admin_download_my_backup_codes_v4 import admin_download_my_backup_codes_v4
from ._admin_enable_my_backup_codes_v4 import admin_enable_my_backup_codes_v4
from ._admin_get_backup_codes_v4 import admin_get_backup_codes_v4
from ._admin_generate_backup_codes_v4 import admin_generate_backup_codes_v4
from ._admin_enable_backup_codes_v4 import admin_enable_backup_codes_v4
from ._admin_challenge_my_mfav4 import admin_challenge_my_mfav4
from ._admin_send_my_mfa_email_code_v4 import admin_send_my_mfa_email_code_v4
from ._admin_disable_my_email_v4 import admin_disable_my_email_v4
from ._admin_enable_my_email_v4 import admin_enable_my_email_v4
from ._admin_get_my_enabled_factors_v4 import admin_get_my_enabled_factors_v4
from ._admin_make_factor_my_default_v4 import admin_make_factor_my_default_v4
from ._admin_get_my_own_mfa_status_v4 import admin_get_my_own_mfa_status_v4
from ._admin_get_my_mfa_status_v4 import admin_get_my_mfa_status_v4
from ._admin_invite_user_v4 import admin_invite_user_v4
from ._authentication_with_platform_link_v4 import authentication_with_platform_link_v4
from ._generate_token_by_new_headless_account_v4 import (
    generate_token_by_new_headless_account_v4,
)
from ._verify2fa_code_v4 import verify2fa_code_v4
from ._platform_token_grant_v4 import platform_token_grant_v4
from ._simultaneous_login_v4 import simultaneous_login_v4
from ._token_grant_v4 import token_grant_v4
from ._request_target_token_response_v4 import request_target_token_response_v4
from ._public_list_user_id_by_platform_user_i_ds_v4 import (
    public_list_user_id_by_platform_user_i_ds_v4,
)
from ._public_create_test_user_v4 import public_create_test_user_v4
from ._public_create_user_v4 import public_create_user_v4
from ._create_user_from_invitation_v4 import create_user_from_invitation_v4
from ._public_update_user_v4 import public_update_user_v4
from ._public_update_user_email_address_v4 import public_update_user_email_address_v4
from ._public_upgrade_headless_account_with_verification_code_v4 import (
    public_upgrade_headless_account_with_verification_code_v4,
)
from ._public_upgrade_headless_account_v4 import public_upgrade_headless_account_v4
from ._public_disable_my_authenticator_v4 import public_disable_my_authenticator_v4
from ._public_enable_my_authenticator_v4 import public_enable_my_authenticator_v4
from ._public_generate_my_authenticator_key_v4 import (
    public_generate_my_authenticator_key_v4,
)
from ._public_get_my_backup_codes_v4 import public_get_my_backup_codes_v4
from ._public_generate_my_backup_codes_v4 import public_generate_my_backup_codes_v4
from ._public_disable_my_backup_codes_v4 import public_disable_my_backup_codes_v4
from ._public_download_my_backup_codes_v4 import public_download_my_backup_codes_v4
from ._public_enable_my_backup_codes_v4 import public_enable_my_backup_codes_v4
from ._public_get_backup_codes_v4 import public_get_backup_codes_v4
from ._public_generate_backup_codes_v4 import public_generate_backup_codes_v4
from ._public_enable_backup_codes_v4 import public_enable_backup_codes_v4
from ._public_challenge_my_mfav4 import public_challenge_my_mfav4
from ._public_remove_trusted_device_v4 import public_remove_trusted_device_v4
from ._public_send_my_mfa_email_code_v4 import public_send_my_mfa_email_code_v4
from ._public_disable_my_email_v4 import public_disable_my_email_v4
from ._public_enable_my_email_v4 import public_enable_my_email_v4
from ._public_get_my_enabled_factors_v4 import public_get_my_enabled_factors_v4
from ._public_make_factor_my_default_v4 import public_make_factor_my_default_v4
from ._public_get_my_own_mfa_status_v4 import public_get_my_own_mfa_status_v4
from ._public_get_my_mfa_status_v4 import public_get_my_mfa_status_v4
from ._public_get_user_public_info_by_user_id_v4 import (
    public_get_user_public_info_by_user_id_v4,
)
from ._public_invite_user_v4 import public_invite_user_v4
from ._public_upgrade_headless_with_code_v4_forward import (
    public_upgrade_headless_with_code_v4_forward,
)


commands = [
    get_bans_type,
    get_list_ban_reason,
    get_clients,
    create_client,
    get_client,
    update_client,
    delete_client,
    update_client_permission,
    add_client_permission,
    delete_client_permission,
    update_client_secret,
    get_clientsby_namespace,
    create_client_by_namespace,
    delete_client_by_namespace,
    create_user,
    get_admin_users_by_role_id,
    get_user_by_login_id,
    get_user_by_platform_user_id,
    forgot_password,
    get_users_by_login_ids,
    reset_password,
    search_user,
    get_user_by_user_id,
    update_user,
    delete_user,
    ban_user,
    get_user_ban_history,
    disable_user_ban,
    enable_user_ban,
    list_cross_namespace_account_link,
    disable_user,
    enable_user,
    get_user_information,
    delete_user_information,
    get_user_login_histories,
    update_password,
    save_user_permission,
    add_user_permission,
    delete_user_permission,
    get_user_platform_accounts,
    get_user_mapping,
    get_user_justice_platform_account,
    platform_link,
    platform_unlink,
    get_publisher_user,
    save_user_roles,
    add_user_role,
    delete_user_role,
    upgrade_headless_account,
    upgrade_headless_account_with_verification_code,
    user_verification,
    send_verification_code,
    authorization,
    get_jwks,
    platform_token_request_handler,
    revoke_user,
    get_revocation_list,
    revoke_token,
    revoke_a_user,
    token_grant,
    verify_token,
    get_roles,
    create_role,
    get_role,
    update_role,
    delete_role,
    get_role_admin_status,
    set_role_as_admin,
    remove_role_admin,
    get_role_managers,
    add_role_managers,
    remove_role_managers,
    get_role_members,
    add_role_members,
    remove_role_members,
    update_role_permissions,
    add_role_permission,
    delete_role_permission,
    admin_get_age_restriction_status_v2,
    admin_update_age_restriction_config_v2,
    get_list_country_age_restriction,
    update_country_age_restriction,
    admin_search_users_v2,
    admin_get_user_by_user_id_v2,
    admin_update_user_v2,
    admin_ban_user_v2,
    admin_get_user_ban_v2,
    admin_disable_user_v2,
    admin_enable_user_v2,
    admin_reset_password_v2,
    admin_delete_platform_link_v2,
    admin_put_user_roles_v2,
    admin_create_user_roles_v2,
    public_get_country_age_restriction,
    public_create_user_v2,
    public_forgot_password_v2,
    public_reset_password_v2,
    public_get_user_by_user_idv2,
    public_update_user_v2,
    public_get_user_ban,
    public_update_password_v2,
    get_list_justice_platform_accounts,
    public_platform_link_v2,
    public_delete_platform_link_v2,
    admin_get_bans_type_v3,
    admin_get_list_ban_reason_v3,
    admin_list_client_available_permissions,
    admin_update_available_permissions_by_module,
    admin_delete_config_permissions_by_group,
    admin_list_client_templates,
    admin_get_input_validations,
    admin_update_input_validations,
    admin_reset_input_validations,
    list_admins_v3,
    admin_get_age_restriction_status_v3,
    admin_update_age_restriction_config_v3,
    admin_get_list_country_age_restriction_v3,
    admin_update_country_age_restriction_v3,
    admin_get_banned_users_v3,
    admin_ban_user_bulk_v3,
    admin_unban_user_bulk_v3,
    admin_get_bans_type_with_namespace_v3,
    admin_get_clients_by_namespace_v3,
    admin_bulk_update_clients_v3,
    admin_create_client_v3,
    admin_get_clientsby_namespaceby_idv3,
    admin_delete_client_v3,
    admin_update_client_v3,
    admin_update_client_permission_v3,
    admin_add_client_permissions_v3,
    admin_delete_client_permission_v3,
    admin_get_config_value_v3,
    admin_get_country_list_v3,
    admin_get_country_blacklist_v3,
    admin_add_country_blacklist_v3,
    admin_get_login_allowlist_v3,
    admin_update_login_allowlist_v3,
    retrieve_all_third_party_login_platform_credential_v3,
    retrieve_all_active_third_party_login_platform_credential_v3,
    retrieve_all_sso_login_platform_credential_v3,
    retrieve_third_party_login_platform_credential_v3,
    add_third_party_login_platform_credential_v3,
    delete_third_party_login_platform_credential_v3,
    update_third_party_login_platform_credential_v3,
    update_third_party_login_platform_domain_v3,
    delete_third_party_login_platform_domain_v3,
    retrieve_sso_login_platform_credential,
    add_sso_login_platform_credential,
    delete_sso_login_platform_credential_v3,
    update_sso_platform_credential,
    admin_list_user_id_by_platform_user_i_ds_v3,
    admin_get_user_by_platform_user_idv3,
    admin_get_profile_update_strategy_v3,
    admin_update_profile_update_strategy_v3,
    admin_get_role_override_config_v3,
    admin_update_role_override_config_v3,
    admin_get_role_source_v3,
    admin_change_role_override_config_status_v3,
    admin_get_role_namespace_permission_v3,
    get_admin_users_by_role_id_v3,
    admin_get_user_by_email_address_v3,
    admin_bulk_update_users_v3,
    admin_get_bulk_user_ban_v3,
    admin_list_user_id_by_user_i_ds_v3,
    admin_bulk_get_users_platform,
    admin_invite_user_v3,
    admin_query_third_platform_link_history_v3,
    admin_list_users_v3,
    admin_search_user_v3,
    admin_get_bulk_user_by_email_address_v3,
    admin_get_user_by_user_id_v3,
    admin_update_user_v3,
    admin_get_user_ban_v3,
    admin_ban_user_v3,
    admin_get_user_ban_summary_v3,
    admin_update_user_ban_v3,
    admin_send_verification_code_v3,
    admin_verify_account_v3,
    get_user_verification_code,
    admin_get_user_deletion_status_v3,
    admin_update_user_deletion_status_v3,
    admin_list_user_all_platform_accounts_distinct_v3,
    admin_upgrade_headless_account_v3,
    admin_delete_user_information_v3,
    admin_get_user_login_histories_v3,
    admin_reset_password_v3,
    admin_update_user_permission_v3,
    admin_add_user_permissions_v3,
    admin_delete_user_permission_bulk_v3,
    admin_delete_user_permission_v3,
    admin_get_user_platform_accounts_v3,
    admin_list_all_distinct_platform_accounts_v3,
    admin_get_list_justice_platform_accounts,
    admin_get_user_mapping,
    admin_create_justice_user,
    admin_link_platform_account,
    admin_get_user_link_histories_v3,
    admin_platform_unlink_v3,
    admin_platform_unlink_all_v3,
    admin_platform_link_v3,
    admin_delete_user_linking_history_by_platform_idv3,
    admin_delete_user_linking_restriction_by_platform_idv3,
    admin_get_third_party_platform_token_link_status_v3,
    admin_get_user_single_platform_account,
    admin_delete_user_roles_v3,
    admin_save_user_role_v3,
    admin_add_user_role_v3,
    admin_delete_user_role_v3,
    admin_update_user_status_v3,
    admin_trustly_update_user_identity,
    admin_verify_user_without_verification_code_v3,
    admin_update_client_secret_v3,
    admin_check_third_party_login_platform_availability_v3,
    admin_get_roles_v3,
    admin_create_role_v3,
    admin_get_role_v3,
    admin_delete_role_v3,
    admin_update_role_v3,
    admin_get_role_admin_status_v3,
    admin_update_admin_role_status_v3,
    admin_remove_role_admin_v3,
    admin_get_role_managers_v3,
    admin_add_role_managers_v3,
    admin_remove_role_managers_v3,
    admin_get_role_members_v3,
    admin_add_role_members_v3,
    admin_remove_role_members_v3,
    admin_update_role_permissions_v3,
    admin_add_role_permissions_v3,
    admin_delete_role_permissions_v3,
    admin_delete_role_permission_v3,
    admin_get_my_user_v3,
    user_authentication_v3,
    authentication_with_platform_link_v3,
    authenticate_and_link_forward_v3,
    generate_token_by_new_headless_account_v3,
    request_one_time_linking_code_v3,
    validate_one_time_linking_code_v3,
    request_token_by_one_time_link_code_response_v3,
    get_country_location_v3,
    logout,
    request_token_exchange_code_v3,
    admin_retrieve_user_third_party_platform_token_v3,
    revoke_user_v3,
    authorize_v3,
    token_introspection_v3,
    get_jwksv3,
    send_mfa_authentication_code,
    change2fa_method,
    verify2fa_code,
    verify2fa_code_forward,
    retrieve_user_third_party_platform_token_v3,
    auth_code_request_v3,
    platform_token_grant_v3,
    get_revocation_list_v3,
    token_revocation_v3,
    simultaneous_login_v3,
    token_grant_v3,
    verify_token_v3,
    platform_authentication_v3,
    platform_token_refresh_v3,
    public_get_input_validations,
    public_get_input_validation_by_field,
    public_get_country_age_restriction_v3,
    public_get_config_value_v3,
    public_get_country_list_v3,
    retrieve_all_active_third_party_login_platform_credential_public_v3,
    retrieve_active_oidc_clients_public_v3,
    public_list_user_id_by_platform_user_i_ds_v3,
    public_get_user_by_platform_user_idv3,
    public_get_profile_update_strategy_v3,
    public_get_async_status,
    public_search_user_v3,
    public_create_user_v3,
    check_user_availability,
    public_bulk_get_users,
    public_send_registration_code,
    public_verify_registration_code,
    public_forgot_password_v3,
    public_validate_user_input,
    get_admin_invitation_v3,
    create_user_from_invitation_v3,
    update_user_v3,
    public_partial_update_user_v3,
    public_send_verification_code_v3,
    public_user_verification_v3,
    public_upgrade_headless_account_v3,
    public_verify_headless_account_v3,
    public_update_password_v3,
    public_create_justice_user,
    public_platform_link_v3,
    public_platform_unlink_v3,
    public_platform_unlink_all_v3,
    public_force_platform_link_v3,
    public_web_link_platform,
    public_web_link_platform_establish,
    public_process_web_link_platform_v3,
    public_get_users_platform_infos_v3,
    reset_password_v3,
    public_get_user_by_user_id_v3,
    public_get_user_ban_history_v3,
    public_list_user_all_platform_accounts_distinct_v3,
    public_get_user_information_v3,
    public_get_user_login_histories_v3,
    public_get_user_platform_accounts_v3,
    public_list_justice_platform_accounts_v3,
    public_link_platform_account,
    public_force_link_platform_with_progression,
    public_get_publisher_user_v3,
    public_validate_user_by_user_id_and_password_v3,
    public_get_roles_v3,
    public_get_role_v3,
    public_get_my_user_v3,
    public_send_code_forward_v3,
    public_get_link_headless_account_to_my_account_conflict_v3,
    link_headless_account_to_my_account_v3,
    public_get_my_redirection_after_link_v3,
    public_get_my_profile_allow_update_status_v3,
    public_send_verification_link_v3,
    public_get_openid_user_info_v3,
    public_verify_user_by_link_v3,
    platform_authenticate_samlv3_handler,
    login_sso_client,
    logout_sso_client,
    request_target_token_response_v3,
    upgrade_and_authenticate_forward_v3,
    admin_list_invitation_histories_v4,
    admin_get_devices_by_user_v4,
    admin_get_banned_devices_v4,
    admin_get_user_device_bans_v4,
    admin_ban_device_v4,
    admin_get_device_ban_v4,
    admin_update_device_ban_v4,
    admin_generate_report_v4,
    admin_get_device_types_v4,
    admin_get_device_bans_v4,
    admin_decrypt_device_v4,
    admin_unban_device_v4,
    admin_get_users_by_device_v4,
    admin_get_namespace_invitation_history_v4,
    admin_get_namespace_user_invitation_history_v4,
    admin_create_test_users_v4,
    admin_create_user_v4,
    admin_bulk_update_user_account_type_v4,
    admin_bulk_check_valid_user_idv4,
    admin_update_user_v4,
    admin_update_user_email_address_v4,
    admin_disable_user_mfav4,
    admin_get_user_mfa_status_v4,
    admin_list_user_roles_v4,
    admin_update_user_role_v4,
    admin_add_user_role_v4,
    admin_remove_user_role_v4,
    admin_get_roles_v4,
    admin_create_role_v4,
    admin_get_role_v4,
    admin_delete_role_v4,
    admin_update_role_v4,
    admin_update_role_permissions_v4,
    admin_add_role_permissions_v4,
    admin_delete_role_permissions_v4,
    admin_list_assigned_users_v4,
    admin_assign_user_to_role_v4,
    admin_revoke_user_from_role_v4,
    admin_invite_user_new_v4,
    admin_update_my_user_v4,
    admin_disable_my_authenticator_v4,
    admin_enable_my_authenticator_v4,
    admin_generate_my_authenticator_key_v4,
    admin_get_my_backup_codes_v4,
    admin_generate_my_backup_codes_v4,
    admin_disable_my_backup_codes_v4,
    admin_download_my_backup_codes_v4,
    admin_enable_my_backup_codes_v4,
    admin_get_backup_codes_v4,
    admin_generate_backup_codes_v4,
    admin_enable_backup_codes_v4,
    admin_challenge_my_mfav4,
    admin_send_my_mfa_email_code_v4,
    admin_disable_my_email_v4,
    admin_enable_my_email_v4,
    admin_get_my_enabled_factors_v4,
    admin_make_factor_my_default_v4,
    admin_get_my_own_mfa_status_v4,
    admin_get_my_mfa_status_v4,
    admin_invite_user_v4,
    authentication_with_platform_link_v4,
    generate_token_by_new_headless_account_v4,
    verify2fa_code_v4,
    platform_token_grant_v4,
    simultaneous_login_v4,
    token_grant_v4,
    request_target_token_response_v4,
    public_list_user_id_by_platform_user_i_ds_v4,
    public_create_test_user_v4,
    public_create_user_v4,
    create_user_from_invitation_v4,
    public_update_user_v4,
    public_update_user_email_address_v4,
    public_upgrade_headless_account_with_verification_code_v4,
    public_upgrade_headless_account_v4,
    public_disable_my_authenticator_v4,
    public_enable_my_authenticator_v4,
    public_generate_my_authenticator_key_v4,
    public_get_my_backup_codes_v4,
    public_generate_my_backup_codes_v4,
    public_disable_my_backup_codes_v4,
    public_download_my_backup_codes_v4,
    public_enable_my_backup_codes_v4,
    public_get_backup_codes_v4,
    public_generate_backup_codes_v4,
    public_enable_backup_codes_v4,
    public_challenge_my_mfav4,
    public_remove_trusted_device_v4,
    public_send_my_mfa_email_code_v4,
    public_disable_my_email_v4,
    public_enable_my_email_v4,
    public_get_my_enabled_factors_v4,
    public_make_factor_my_default_v4,
    public_get_my_own_mfa_status_v4,
    public_get_my_mfa_status_v4,
    public_get_user_public_info_by_user_id_v4,
    public_invite_user_v4,
    public_upgrade_headless_with_code_v4_forward,
]
