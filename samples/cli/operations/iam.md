## Python Extend SDK CLI Sample App Operation Index for Iam service.

### Operation `admin_get_bans_type_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-bans-type-v3' \
    > result.txt
```

### Operation `admin_get_list_ban_reason_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-list-ban-reason-v3' \
    > result.txt
```

### Operation `admin_list_client_available_permissions`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-list-client-available-permissions' \
    --exclude_permissions false \
    > result.txt
```

### Operation `admin_update_available_permissions_by_module`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-update-available-permissions-by-module' \
    '{"modules": [{}]}' \
    --force_delete false \
    > result.txt
```

### Operation `admin_delete_config_permissions_by_group`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-delete-config-permissions-by-group' \
    '{"groupId": "string", "moduleId": "string"}' \
    --force_delete false \
    > result.txt
```

### Operation `admin_list_client_templates`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-list-client-templates' \
    > result.txt
```

### Operation `admin_get_input_validations`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-input-validations' \
    > result.txt
```

### Operation `admin_update_input_validations`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-update-input-validations' \
    '[{"field": "string", "validation": {}}]' \
    > result.txt
```

### Operation `admin_reset_input_validations`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-reset-input-validations' \
    'string' \
    > result.txt
```

### Operation `list_admins_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-list-admins-v3' \
    'string' \
    --after 'string' \
    --before 'string' \
    --end_date 'string' \
    --limit 1 \
    --query 'string' \
    --role_id 'string' \
    --start_date 'string' \
    > result.txt
```

### Operation `admin_get_age_restriction_status_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-age-restriction-status-v3' \
    'string' \
    > result.txt
```

### Operation `admin_update_age_restriction_config_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-update-age-restriction-config-v3' \
    '{"ageRestriction": 1, "enable": false}' \
    'string' \
    > result.txt
```

### Operation `admin_get_list_country_age_restriction_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-list-country-age-restriction-v3' \
    'string' \
    > result.txt
```

### Operation `admin_update_country_age_restriction_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-update-country-age-restriction-v3' \
    '{"ageRestriction": 1}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_banned_users_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-banned-users-v3' \
    'string' \
    --active_only false \
    --ban_type 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_ban_user_bulk_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-ban-user-bulk-v3' \
    '{"ban": "string", "comment": "string", "endDate": "string", "reason": "string", "skipNotif": false, "userIds": ["string"]}' \
    'string' \
    > result.txt
```

### Operation `admin_unban_user_bulk_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{}]}' \
    'string' \
    > result.txt
```

### Operation `admin_get_bans_type_with_namespace_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-bans-type-with-namespace-v3' \
    'string' \
    > result.txt
```

### Operation `admin_get_clients_by_namespace_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-clients-by-namespace-v3' \
    'string' \
    --client_id 'string' \
    --client_name 'string' \
    --client_type 'string' \
    --limit 1 \
    --offset 1 \
    --skip_login_queue false \
    > result.txt
```

### Operation `admin_bulk_update_clients_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-bulk-update-clients-v3' \
    '{"clientIds": ["string"], "clientUpdateRequest": {}}' \
    'string' \
    > result.txt
```

### Operation `admin_create_client_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-create-client-v3' \
    '{"audiences": ["string"], "baseUri": "string", "clientId": "string", "clientName": "string", "clientPermissions": [{}], "clientPlatform": "string", "deletable": false, "description": "string", "modulePermissions": [{}], "namespace": "string", "oauthAccessTokenExpiration": 1, "oauthAccessTokenExpirationTimeUnit": "string", "oauthClientType": "string", "oauthRefreshTokenExpiration": 1, "oauthRefreshTokenExpirationTimeUnit": "string", "parentNamespace": "string", "redirectUri": "string", "scopes": ["string"], "secret": "string", "skipLoginQueue": false, "twoFactorEnabled": false}' \
    'string' \
    > result.txt
```

### Operation `admin_get_clientsby_namespaceby_idv3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-clientsby-namespaceby-idv3' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_delete_client_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-delete-client-v3' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_update_client_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-update-client-v3' \
    '{"audiences": ["string"], "baseUri": "string", "clientName": "string", "clientPermissions": [{}], "clientPlatform": "string", "deletable": false, "description": "string", "modulePermissions": [{}], "namespace": "string", "oauthAccessTokenExpiration": 1, "oauthAccessTokenExpirationTimeUnit": "string", "oauthRefreshTokenExpiration": 1, "oauthRefreshTokenExpirationTimeUnit": "string", "redirectUri": "string", "scopes": ["string"], "skipLoginQueue": false, "twoFactorEnabled": false}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_update_client_permission_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{}]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_add_client_permissions_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{}]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_delete_client_permission_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-delete-client-permission-v3' \
    1 \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_config_value_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-config-value-v3' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_country_list_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-country-list-v3' \
    'string' \
    --filter_blacklist false \
    > result.txt
```

### Operation `admin_get_country_blacklist_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-country-blacklist-v3' \
    'string' \
    > result.txt
```

### Operation `admin_add_country_blacklist_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-add-country-blacklist-v3' \
    '{"blacklist": ["string"]}' \
    'string' \
    > result.txt
```

### Operation `admin_get_login_allowlist_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-login-allowlist-v3' \
    'string' \
    > result.txt
```

### Operation `admin_update_login_allowlist_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-update-login-allowlist-v3' \
    '{"active": false, "roleIds": ["string"]}' \
    'string' \
    > result.txt
```

### Operation `retrieve_all_third_party_login_platform_credential_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-retrieve-all-third-party-login-platform-credential-v3' \
    'string' \
    > result.txt
```

### Operation `retrieve_all_active_third_party_login_platform_credential_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-retrieve-all-active-third-party-login-platform-credential-v3' \
    'string' \
    > result.txt
```

### Operation `retrieve_all_sso_login_platform_credential_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-retrieve-all-sso-login-platform-credential-v3' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `retrieve_third_party_login_platform_credential_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-retrieve-third-party-login-platform-credential-v3' \
    'string' \
    'string' \
    > result.txt
```

### Operation `add_third_party_login_platform_credential_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "string", "AWSCognitoRegion": "string", "AWSCognitoUserPool": "string", "AllowedClients": ["string"], "AppId": "string", "AuthorizationEndpoint": "string", "ClientId": "string", "EmptyStrFieldList": ["string"], "EnableServerLicenseValidation": false, "Environment": "string", "FederationMetadataURL": "string", "GenericOauthFlow": false, "IncludePUID": false, "IsActive": false, "Issuer": "string", "JWKSEndpoint": "string", "KeyID": "string", "LogoURL": "string", "NetflixCertificates": {}, "OrganizationId": "string", "PlatformName": "string", "RedirectUri": "string", "RegisteredDomains": [{}], "Secret": "string", "TeamID": "string", "TokenAuthenticationType": "string", "TokenClaimsMapping": {"string": "string"}, "TokenEndpoint": "string", "UserInfoEndpoint": "string", "UserInfoHTTPMethod": "string", "googleAdminConsoleKey": "string", "scopes": ["string"]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_third_party_login_platform_credential_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-delete-third-party-login-platform-credential-v3' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_third_party_login_platform_credential_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "string", "AWSCognitoRegion": "string", "AWSCognitoUserPool": "string", "AllowedClients": ["string"], "AppId": "string", "AuthorizationEndpoint": "string", "ClientId": "string", "EmptyStrFieldList": ["string"], "EnableServerLicenseValidation": false, "Environment": "string", "FederationMetadataURL": "string", "GenericOauthFlow": false, "IncludePUID": false, "IsActive": false, "Issuer": "string", "JWKSEndpoint": "string", "KeyID": "string", "LogoURL": "string", "NetflixCertificates": {}, "OrganizationId": "string", "PlatformName": "string", "RedirectUri": "string", "RegisteredDomains": [{}], "Secret": "string", "TeamID": "string", "TokenAuthenticationType": "string", "TokenClaimsMapping": {"string": "string"}, "TokenEndpoint": "string", "UserInfoEndpoint": "string", "UserInfoHTTPMethod": "string", "googleAdminConsoleKey": "string", "scopes": ["string"]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_third_party_login_platform_domain_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["string"], "assignedNamespaces": ["string"], "domain": "string", "roleId": "string", "ssoCfg": {}}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_third_party_login_platform_domain_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "string", "ssoGroups": ["string"]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `partial_update_third_party_login_platform_domain_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-partial-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["string"], "assignedNamespaces": ["string"], "domain": "string", "roleId": "string", "ssoCfg": {}}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `retrieve_sso_login_platform_credential`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-retrieve-sso-login-platform-credential' \
    'string' \
    'string' \
    > result.txt
```

### Operation `add_sso_login_platform_credential`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "string", "apiKey": "string", "appId": "string", "federationMetadataUrl": "string", "isActive": false, "redirectUri": "string", "secret": "string", "ssoUrl": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_sso_login_platform_credential_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-delete-sso-login-platform-credential-v3' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_sso_platform_credential`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-update-sso-platform-credential' \
    '{"acsUrl": "string", "apiKey": "string", "appId": "string", "federationMetadataUrl": "string", "isActive": false, "redirectUri": "string", "secret": "string", "ssoUrl": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_list_user_id_by_platform_user_i_ds_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["string"]}' \
    'string' \
    'string' \
    --raw_pid false \
    --raw_puid false \
    > result.txt
```

### Operation `admin_get_user_by_platform_user_idv3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-user-by-platform-user-idv3' \
    'string' \
    'string' \
    'string' \
    --pid_type 'string' \
    > result.txt
```

### Operation `admin_get_profile_update_strategy_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-profile-update-strategy-v3' \
    'string' \
    --field 'country' \
    > result.txt
```

### Operation `admin_update_profile_update_strategy_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-update-profile-update-strategy-v3' \
    '{"config": {}, "type": "string"}' \
    'string' \
    'country' \
    > result.txt
```

### Operation `admin_get_role_override_config_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-role-override-config-v3' \
    'string' \
    'GAME_ADMIN' \
    > result.txt
```

### Operation `admin_update_role_override_config_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-update-role-override-config-v3' \
    '{"additions": [{}], "exclusions": [{}], "overrides": [{}], "replacements": [{}]}' \
    'string' \
    'GAME_ADMIN' \
    > result.txt
```

### Operation `admin_get_role_source_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-role-source-v3' \
    'string' \
    'GAME_ADMIN' \
    > result.txt
```

### Operation `admin_change_role_override_config_status_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-change-role-override-config-status-v3' \
    '{"active": false}' \
    'string' \
    'GAME_ADMIN' \
    > result.txt
```

### Operation `admin_get_role_namespace_permission_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-role-namespace-permission-v3' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_admin_users_by_role_id_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-get-admin-users-by-role-id-v3' \
    'string' \
    'string' \
    --after 1 \
    --before 1 \
    --limit 1 \
    > result.txt
```

### Operation `admin_query_tag_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-query-tag-v3' \
    'string' \
    --limit 1 \
    --offset 1 \
    --tag_name 'string' \
    > result.txt
```

### Operation `admin_create_tag_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-create-tag-v3' \
    '{"tagName": "string"}' \
    'string' \
    > result.txt
```

### Operation `admin_update_tag_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-update-tag-v3' \
    '{"tagName": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_delete_tag_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-delete-tag-v3' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_user_by_email_address_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-user-by-email-address-v3' \
    'string' \
    --email_address 'string' \
    > result.txt
```

### Operation `admin_bulk_update_users_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-bulk-update-users-v3' \
    '{"updateRequest": {}, "userIds": ["string"]}' \
    'string' \
    > result.txt
```

### Operation `admin_get_bulk_user_ban_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-bulk-user-ban-v3' \
    '{"bulkUserId": ["string"]}' \
    'string' \
    --active_only false \
    --ban_type 'string' \
    > result.txt
```

### Operation `admin_list_user_id_by_user_i_ds_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-list-user-id-by-user-i-ds-v3' \
    '{"findByPublisherNamespace": false, "userIds": ["string"]}' \
    'string' \
    > result.txt
```

### Operation `admin_bulk_get_users_platform`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-bulk-get-users-platform' \
    '{"userIds": ["string"]}' \
    'string' \
    > result.txt
```

### Operation `admin_cursor_get_user_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-cursor-get-user-v3' \
    '{"cursor": {}, "fields": ["string"], "limit": 1}' \
    'string' \
    > result.txt
```

### Operation `admin_invite_user_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["string"], "isAdmin": false, "languageTag": "string", "namespace": "string", "roles": ["string"]}' \
    'string' \
    > result.txt
```

### Operation `admin_query_third_platform_link_history_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-query-third-platform-link-history-v3' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    --platform_user_id 'string' \
    > result.txt
```

### Operation `admin_list_users_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-list-users-v3' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_search_user_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-search-user-v3' \
    'string' \
    --by 'string' \
    --end_date 'string' \
    --include_total false \
    --limit 1 \
    --offset 1 \
    --platform_by 'string' \
    --platform_id 'string' \
    --query 'string' \
    --role_ids 'string' \
    --skip_login_queue false \
    --start_date 'string' \
    --tag_ids 'string' \
    --test_account false \
    > result.txt
```

### Operation `admin_get_bulk_user_by_email_address_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-bulk-user-by-email-address-v3' \
    '{"listEmailAddressRequest": ["string"]}' \
    'string' \
    > result.txt
```

### Operation `admin_get_user_by_user_id_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-user-by-user-id-v3' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_update_user_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-update-user-v3' \
    '{"avatarUrl": "string", "country": "string", "dateOfBirth": "string", "displayName": "string", "languageTag": "string", "skipLoginQueue": false, "tags": ["string"], "uniqueDisplayName": "string", "userName": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_user_ban_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-user-ban-v3' \
    'string' \
    'string' \
    --active_only false \
    --after 'string' \
    --before 'string' \
    --limit 1 \
    > result.txt
```

### Operation `admin_ban_user_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-ban-user-v3' \
    '{"ban": "string", "comment": "string", "endDate": "string", "reason": "string", "skipNotif": false}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_user_ban_summary_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-user-ban-summary-v3' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_update_user_ban_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-update-user-ban-v3' \
    '{"enabled": false, "skipNotif": false}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_send_verification_code_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-send-verification-code-v3' \
    '{"context": "string", "emailAddress": "string", "languageTag": "string", "upgradeToken": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_verify_account_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-verify-account-v3' \
    '{"Code": "string", "ContactType": "string", "LanguageTag": "string", "validateOnly": false}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_user_verification_code`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-get-user-verification-code' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_user_deletion_status_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-user-deletion-status-v3' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_update_user_deletion_status_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-update-user-deletion-status-v3' \
    '{"deletionDate": 1, "enabled": false}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_list_user_all_platform_accounts_distinct_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-list-user-all-platform-accounts-distinct-v3' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_upgrade_headless_account_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "string", "country": "string", "dateOfBirth": "string", "displayName": "string", "emailAddress": "string", "password": "string", "uniqueDisplayName": "string", "validateOnly": false}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_delete_user_information_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-delete-user-information-v3' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_user_login_histories_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-user-login-histories-v3' \
    'string' \
    'string' \
    --after 3.14 \
    --before 3.14 \
    --limit 1 \
    > result.txt
```

### Operation `admin_reset_password_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-reset-password-v3' \
    '{"languageTag": "string", "mfaToken": "string", "newPassword": "string", "oldPassword": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_update_user_permission_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{}]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_add_user_permissions_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{}]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_delete_user_permission_bulk_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 1, "Resource": "string"}]' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_delete_user_permission_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-delete-user-permission-v3' \
    1 \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_user_platform_accounts_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-user-platform-accounts-v3' \
    'string' \
    'string' \
    --after 'string' \
    --before 'string' \
    --limit 1 \
    --platform_id 'string' \
    --target_namespace 'string' \
    > result.txt
```

### Operation `admin_list_all_distinct_platform_accounts_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-list-all-distinct-platform-accounts-v3' \
    'string' \
    'string' \
    --status 'string' \
    > result.txt
```

### Operation `admin_get_list_justice_platform_accounts`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-list-justice-platform-accounts' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_user_mapping`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-user-mapping' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_create_justice_user`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-create-justice-user' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_link_platform_account`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-link-platform-account' \
    '{"platformId": "string", "platformUserId": "string"}' \
    'string' \
    'string' \
    --skip_conflict false \
    > result.txt
```

### Operation `admin_get_user_link_histories_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-user-link-histories-v3' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_platform_unlink_all_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-platform-unlink-all-v3' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_platform_link_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-platform-link-v3' \
    'string' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_delete_user_linking_restriction_by_platform_idv3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-delete-user-linking-restriction-by-platform-idv3' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_third_party_platform_token_link_status_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-third-party-platform-token-link-status-v3' \
    'string' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_user_single_platform_account`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-user-single-platform-account' \
    'string' \
    'string' \
    'string' \
    --cross_namespace false \
    > result.txt
```

### Operation `admin_delete_user_roles_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-delete-user-roles-v3' \
    '["string"]' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_save_user_role_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-save-user-role-v3' \
    '[{"namespace": "string", "roleId": "string"}]' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_add_user_role_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-add-user-role-v3' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_delete_user_role_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-delete-user-role-v3' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_user_state_by_user_id_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-user-state-by-user-id-v3' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_update_user_status_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-update-user-status-v3' \
    '{"enabled": false, "reason": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_trustly_update_user_identity`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-trustly-update-user-identity' \
    '{"emailAddress": "string", "password": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_verify_user_without_verification_code_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-verify-user-without-verification-code-v3' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_update_client_secret_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_check_third_party_login_platform_availability_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-check-third-party-login-platform-availability-v3' \
    'string' \
    > result.txt
```

### Operation `admin_get_roles_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-roles-v3' \
    --after 'string' \
    --before 'string' \
    --is_wildcard false \
    --limit 1 \
    > result.txt
```

### Operation `admin_create_role_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-create-role-v3' \
    '{"adminRole": false, "deletable": false, "isWildcard": false, "managers": [{}], "members": [{}], "permissions": [{}], "roleName": "string"}' \
    > result.txt
```

### Operation `admin_get_role_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-role-v3' \
    'string' \
    > result.txt
```

### Operation `admin_delete_role_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-delete-role-v3' \
    'string' \
    > result.txt
```

### Operation `admin_update_role_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-update-role-v3' \
    '{"deletable": false, "isWildcard": false, "roleName": "string"}' \
    'string' \
    > result.txt
```

### Operation `admin_get_role_admin_status_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-role-admin-status-v3' \
    'string' \
    > result.txt
```

### Operation `admin_update_admin_role_status_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-update-admin-role-status-v3' \
    'string' \
    > result.txt
```

### Operation `admin_remove_role_admin_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-remove-role-admin-v3' \
    'string' \
    > result.txt
```

### Operation `admin_get_role_managers_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-role-managers-v3' \
    'string' \
    --after 'string' \
    --before 'string' \
    --limit 1 \
    > result.txt
```

### Operation `admin_add_role_managers_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-add-role-managers-v3' \
    '{"managers": [{}]}' \
    'string' \
    > result.txt
```

### Operation `admin_remove_role_managers_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{}]}' \
    'string' \
    > result.txt
```

### Operation `admin_get_role_members_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-role-members-v3' \
    'string' \
    --after 'string' \
    --before 'string' \
    --limit 1 \
    > result.txt
```

### Operation `admin_add_role_members_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-add-role-members-v3' \
    '{"members": [{}]}' \
    'string' \
    > result.txt
```

### Operation `admin_update_role_permissions_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{}]}' \
    'string' \
    > result.txt
```

### Operation `admin_add_role_permissions_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{}]}' \
    'string' \
    > result.txt
```

### Operation `admin_delete_role_permissions_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-delete-role-permissions-v3' \
    '["string"]' \
    'string' \
    > result.txt
```

### Operation `admin_delete_role_permission_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-delete-role-permission-v3' \
    1 \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_my_user_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-my-user-v3' \
    > result.txt
```

### Operation `user_authentication_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-user-authentication-v3' \
    'string' \
    'string' \
    'string' \
    --client_id 'string' \
    --extend_exp false \
    --redirect_uri 'string' \
    > result.txt
```

### Operation `authentication_with_platform_link_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-authentication-with-platform-link-v3' \
    'string' \
    'string' \
    'string' \
    'string' \
    --extend_exp false \
    > result.txt
```

### Operation `authenticate_and_link_forward_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-authenticate-and-link-forward-v3' \
    'string' \
    'string' \
    'string' \
    'string' \
    --extend_exp false \
    > result.txt
```

### Operation `public_get_system_config_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-get-system-config-v3' \
    > result.txt
```

### Operation `generate_token_by_new_headless_account_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-generate-token-by-new-headless-account-v3' \
    'string' \
    --additional_data 'string' \
    --extend_exp false \
    > result.txt
```

### Operation `request_one_time_linking_code_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-request-one-time-linking-code-v3' \
    'string' \
    --redirect_uri 'string' \
    --state 'string' \
    > result.txt
```

### Operation `validate_one_time_linking_code_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-validate-one-time-linking-code-v3' \
    'string' \
    > result.txt
```

### Operation `request_token_by_one_time_link_code_response_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-request-token-by-one-time-link-code-response-v3' \
    'string' \
    'string' \
    --additional_data 'string' \
    --is_transient false \
    > result.txt
```

### Operation `get_country_location_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-get-country-location-v3' \
    > result.txt
```

### Operation `logout`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-logout' \
    > result.txt
```

### Operation `request_token_exchange_code_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-request-token-exchange-code-v3' \
    'string' \
    'string' \
    --code_challenge 'string' \
    --code_challenge_method 'S256' \
    > result.txt
```

### Operation `admin_retrieve_user_third_party_platform_token_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'string' \
    'string' \
    'string' \
    --platform_user_id 'string' \
    > result.txt
```

### Operation `revoke_user_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-revoke-user-v3' \
    'string' \
    'string' \
    --include_game_namespace false \
    > result.txt
```

### Operation `authorize_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-authorize-v3' \
    'string' \
    'code' \
    --blocked_platform_id 'string' \
    --code_challenge 'string' \
    --code_challenge_method 'S256' \
    --create_headless false \
    --login_web_based false \
    --nonce 'string' \
    --one_time_link_code 'string' \
    --redirect_uri 'string' \
    --scope 'string' \
    --state 'string' \
    --target_auth_page 'string' \
    --use_redirect_uri_as_login_url_when_locked false \
    > result.txt
```

### Operation `token_introspection_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-token-introspection-v3' \
    'string' \
    > result.txt
```

### Operation `get_jwksv3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-get-jwksv3' \
    > result.txt
```

### Operation `send_mfa_authentication_code`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-send-mfa-authentication-code' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `change2fa_method`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-change2fa-method' \
    'string' \
    'string' \
    > result.txt
```

### Operation `verify2fa_code`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-verify2fa-code' \
    'string' \
    'string' \
    'string' \
    false \
    > result.txt
```

### Operation `verify2fa_code_forward`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-verify2fa-code-forward' \
    'string' \
    'string' \
    'string' \
    'string' \
    --default_factor 'string' \
    --factors 'string' \
    --remember_device false \
    > result.txt
```

### Operation `retrieve_user_third_party_platform_token_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-retrieve-user-third-party-platform-token-v3' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `auth_code_request_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-auth-code-request-v3' \
    'string' \
    'string' \
    --client_id 'string' \
    --redirect_uri 'string' \
    > result.txt
```

### Operation `platform_token_grant_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-platform-token-grant-v3' \
    'string' \
    --additional_data 'string' \
    --client_id 'string' \
    --create_headless false \
    --device_id 'string' \
    --mac_address 'string' \
    --platform_token 'string' \
    --service_label 3.14 \
    --skip_set_cookie false \
    > result.txt
```

### Operation `get_revocation_list_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-get-revocation-list-v3' \
    > result.txt
```

### Operation `token_revocation_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-token-revocation-v3' \
    'string' \
    > result.txt
```

### Operation `simultaneous_login_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-simultaneous-login-v3' \
    'epicgames' \
    'string' \
    --simultaneous_platform 'string' \
    --simultaneous_ticket 'string' \
    > result.txt
```

### Operation `token_grant_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-token-grant-v3' \
    'authorization_code' \
    --auth_trust_id 'string' \
    --device_id 'string' \
    --additional_data 'string' \
    --client_id 'string' \
    --client_secret 'string' \
    --code 'string' \
    --code_verifier 'string' \
    --extend_namespace 'string' \
    --extend_exp false \
    --password 'string' \
    --redirect_uri 'string' \
    --refresh_token 'string' \
    --scope 'string' \
    --username 'string' \
    > result.txt
```

### Operation `verify_token_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-verify-token-v3' \
    'string' \
    > result.txt
```

### Operation `platform_authentication_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-platform-authentication-v3' \
    'string' \
    'string' \
    --code 'string' \
    --error 'string' \
    --openid_assoc_handle 'string' \
    --openid_claimed_id 'string' \
    --openid_identity 'string' \
    --openid_mode 'string' \
    --openid_ns 'string' \
    --openid_op_endpoint 'string' \
    --openid_response_nonce 'string' \
    --openid_return_to 'string' \
    --openid_sig 'string' \
    --openid_signed 'string' \
    > result.txt
```

### Operation `platform_token_refresh_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-platform-token-refresh-v3' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_get_input_validations`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-get-input-validations' \
    --default_on_empty false \
    --language_code 'string' \
    > result.txt
```

### Operation `public_get_input_validation_by_field`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-get-input-validation-by-field' \
    'string' \
    > result.txt
```

### Operation `public_get_country_age_restriction_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-get-country-age-restriction-v3' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_get_config_value_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-get-config-value-v3' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_get_country_list_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-get-country-list-v3' \
    'string' \
    > result.txt
```

### Operation `retrieve_all_active_third_party_login_platform_credential_public_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-retrieve-all-active-third-party-login-platform-credential-public-v3' \
    'string' \
    > result.txt
```

### Operation `retrieve_active_oidc_clients_public_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-retrieve-active-oidc-clients-public-v3' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_get_profile_update_strategy_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-get-profile-update-strategy-v3' \
    'string' \
    --field 'country' \
    > result.txt
```

### Operation `public_get_async_status`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-get-async-status' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_search_user_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-search-user-v3' \
    'string' \
    --by 'string' \
    --limit 1 \
    --offset 1 \
    --platform_by 'string' \
    --platform_id 'string' \
    --query 'string' \
    > result.txt
```

### Operation `public_create_user_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-create-user-v3' \
    '{"PasswordMD5Sum": "string", "acceptedPolicies": [{}], "authType": "string", "code": "string", "country": "string", "dateOfBirth": "string", "displayName": "string", "emailAddress": "string", "password": "string", "reachMinimumAge": false, "uniqueDisplayName": "string"}' \
    'string' \
    > result.txt
```

### Operation `check_user_availability`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-check-user-availability' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_send_registration_code`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-send-registration-code' \
    '{"emailAddress": "string", "languageTag": "string"}' \
    'string' \
    > result.txt
```

### Operation `public_verify_registration_code`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-verify-registration-code' \
    '{"code": "string", "emailAddress": "string"}' \
    'string' \
    > result.txt
```

### Operation `public_forgot_password_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-forgot-password-v3' \
    '{"emailAddress": "string", "languageTag": "string"}' \
    'string' \
    > result.txt
```

### Operation `public_validate_user_input`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-validate-user-input' \
    '{"displayName": "string", "password": "string", "uniqueDisplayName": "string", "username": "string"}' \
    'string' \
    > result.txt
```

### Operation `get_admin_invitation_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-get-admin-invitation-v3' \
    'string' \
    'string' \
    > result.txt
```

### Operation `create_user_from_invitation_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-create-user-from-invitation-v3' \
    '{"PasswordMD5Sum": "string", "acceptedPolicies": [{}], "authType": "string", "code": "string", "country": "string", "dateOfBirth": "string", "displayName": "string", "emailAddress": "string", "password": "string", "reachMinimumAge": false, "uniqueDisplayName": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_user_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-update-user-v3' \
    '{"avatarUrl": "string", "country": "string", "dateOfBirth": "string", "displayName": "string", "languageTag": "string", "uniqueDisplayName": "string", "userName": "string"}' \
    'string' \
    > result.txt
```

### Operation `public_partial_update_user_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "string", "country": "string", "dateOfBirth": "string", "displayName": "string", "languageTag": "string", "uniqueDisplayName": "string", "userName": "string"}' \
    'string' \
    > result.txt
```

### Operation `public_send_verification_code_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-send-verification-code-v3' \
    '{"context": "string", "emailAddress": "string", "languageTag": "string", "upgradeToken": "string"}' \
    'string' \
    > result.txt
```

### Operation `public_user_verification_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-user-verification-v3' \
    '{"code": "string", "contactType": "string", "languageTag": "string", "validateOnly": false}' \
    'string' \
    > result.txt
```

### Operation `public_upgrade_headless_account_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-upgrade-headless-account-v3' \
    '{"code": "string", "country": "string", "dateOfBirth": "string", "displayName": "string", "emailAddress": "string", "password": "string", "uniqueDisplayName": "string", "validateOnly": false}' \
    'string' \
    > result.txt
```

### Operation `public_verify_headless_account_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "string", "password": "string"}' \
    'string' \
    --need_verification_code false \
    > result.txt
```

### Operation `public_update_password_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-update-password-v3' \
    '{"languageTag": "string", "mfaToken": "string", "newPassword": "string", "oldPassword": "string"}' \
    'string' \
    > result.txt
```

### Operation `public_create_justice_user`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-create-justice-user' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_platform_link_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-platform-link-v3' \
    'string' \
    'string' \
    'string' \
    --redirect_uri 'string' \
    > result.txt
```

### Operation `public_platform_unlink_all_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-platform-unlink-all-v3' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_force_platform_link_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-force-platform-link-v3' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_web_link_platform`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-web-link-platform' \
    'string' \
    'string' \
    --client_id 'string' \
    --redirect_uri 'string' \
    > result.txt
```

### Operation `public_web_link_platform_establish`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-web-link-platform-establish' \
    'string' \
    'string' \
    'string' \
    --code 'string' \
    > result.txt
```

### Operation `public_process_web_link_platform_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-process-web-link-platform-v3' \
    'string' \
    'string' \
    'string' \
    --code 'string' \
    > result.txt
```

### Operation `public_get_users_platform_infos_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-get-users-platform-infos-v3' \
    '{"platformId": "string", "userIds": ["string"]}' \
    'string' \
    > result.txt
```

### Operation `reset_password_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-reset-password-v3' \
    '{"clientId": "string", "code": "string", "emailAddress": "string", "languageTag": "string", "newPassword": "string"}' \
    'string' \
    > result.txt
```

### Operation `public_get_user_ban_history_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-get-user-ban-history-v3' \
    'string' \
    'string' \
    --active_only false \
    --after 'string' \
    --before 'string' \
    --limit 1 \
    > result.txt
```

### Operation `public_list_user_all_platform_accounts_distinct_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_get_user_information_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-get-user-information-v3' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_get_user_login_histories_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-get-user-login-histories-v3' \
    'string' \
    'string' \
    --after 3.14 \
    --before 3.14 \
    --limit 1 \
    > result.txt
```

### Operation `public_get_user_platform_accounts_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-get-user-platform-accounts-v3' \
    'string' \
    'string' \
    --after 'string' \
    --before 'string' \
    --limit 1 \
    --platform_id 'string' \
    > result.txt
```

### Operation `public_list_justice_platform_accounts_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-list-justice-platform-accounts-v3' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_link_platform_account`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-link-platform-account' \
    '{"platformId": "string", "platformUserId": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_force_link_platform_with_progression`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["string"], "requestId": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_get_publisher_user_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-get-publisher-user-v3' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_validate_user_by_user_id_and_password_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-validate-user-by-user-id-and-password-v3' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_get_roles_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-get-roles-v3' \
    --after 'string' \
    --before 'string' \
    --is_wildcard false \
    --limit 1 \
    > result.txt
```

### Operation `public_get_role_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-get-role-v3' \
    'string' \
    > result.txt
```

### Operation `public_forgot_password_without_namespace_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-forgot-password-without-namespace-v3' \
    '{"clientId": "string", "emailAddress": "string", "languageTag": "string"}' \
    > result.txt
```

### Operation `public_get_my_user_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-get-my-user-v3' \
    --include_all_platforms false \
    > result.txt
```

### Operation `public_send_code_forward_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-send-code-forward-v3' \
    '{"context": "string", "emailAddress": "string", "languageTag": "string", "upgradeToken": "string"}' \
    > result.txt
```

### Operation `public_get_link_headless_account_to_my_account_conflict_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-get-link-headless-account-to-my-account-conflict-v3' \
    'string' \
    > result.txt
```

### Operation `link_headless_account_to_my_account_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-link-headless-account-to-my-account-v3' \
    '{"chosenNamespaces": ["string"], "oneTimeLinkCode": "string"}' \
    > result.txt
```

### Operation `public_get_my_redirection_after_link_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-get-my-redirection-after-link-v3' \
    'string' \
    > result.txt
```

### Operation `public_get_my_profile_allow_update_status_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-get-my-profile-allow-update-status-v3' \
    > result.txt
```

### Operation `public_send_verification_link_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-send-verification-link-v3' \
    '{"languageTag": "string"}' \
    > result.txt
```

### Operation `public_get_openid_user_info_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-get-openid-user-info-v3' \
    > result.txt
```

### Operation `public_verify_user_by_link_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-verify-user-by-link-v3' \
    --code 'string' \
    > result.txt
```

### Operation `platform_authenticate_samlv3_handler`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-platform-authenticate-samlv3-handler' \
    'string' \
    'string' \
    --code 'string' \
    --error 'string' \
    > result.txt
```

### Operation `login_sso_client`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-login-sso-client' \
    'string' \
    --payload 'string' \
    > result.txt
```

### Operation `logout_sso_client`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-logout-sso-client' \
    'string' \
    > result.txt
```

### Operation `request_target_token_response_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-request-target-token-response-v3' \
    'string' \
    --additional_data 'string' \
    > result.txt
```

### Operation `upgrade_and_authenticate_forward_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-upgrade-and-authenticate-forward-v3' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_list_invitation_histories_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-list-invitation-histories-v4' \
    --limit 1 \
    --namespace 'string' \
    --offset 1 \
    > result.txt
```

### Operation `admin_get_devices_by_user_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-devices-by-user-v4' \
    'string' \
    --user_id 'string' \
    > result.txt
```

### Operation `admin_get_banned_devices_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-banned-devices-v4' \
    'string' \
    --device_type 'string' \
    --end_date 'string' \
    --limit 1 \
    --offset 1 \
    --start_date 'string' \
    > result.txt
```

### Operation `admin_get_user_device_bans_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-user-device-bans-v4' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_ban_device_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-ban-device-v4' \
    '{"comment": "string", "deviceId": "string", "deviceType": "string", "enabled": false, "endDate": "string", "ext": {"string": {}}, "reason": "string"}' \
    'string' \
    > result.txt
```

### Operation `admin_get_device_ban_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-device-ban-v4' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_update_device_ban_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-update-device-ban-v4' \
    '{"enabled": false}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_generate_report_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-generate-report-v4' \
    'string' \
    'string' \
    --end_date 'string' \
    --start_date 'string' \
    > result.txt
```

### Operation `admin_get_device_types_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-device-types-v4' \
    'string' \
    > result.txt
```

### Operation `admin_get_device_bans_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-device-bans-v4' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_unban_device_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-unban-device-v4' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_users_by_device_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-users-by-device-v4' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_namespace_invitation_history_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-namespace-invitation-history-v4' \
    'string' \
    > result.txt
```

### Operation `admin_get_namespace_user_invitation_history_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-namespace-user-invitation-history-v4' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_create_test_users_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-create-test-users-v4' \
    '{"count": 1, "userInfo": {}}' \
    'string' \
    > result.txt
```

### Operation `admin_create_user_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-create-user-v4' \
    '{"acceptedPolicies": [{}], "authType": "EMAILPASSWD", "code": "string", "country": "string", "dateOfBirth": "string", "displayName": "string", "emailAddress": "string", "password": "string", "passwordMD5Sum": "string", "reachMinimumAge": false, "uniqueDisplayName": "string", "username": "string"}' \
    'string' \
    > result.txt
```

### Operation `admin_bulk_update_user_account_type_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-bulk-update-user-account-type-v4' \
    '{"testAccount": false, "userIds": ["string"]}' \
    'string' \
    > result.txt
```

### Operation `admin_bulk_check_valid_user_idv4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["string"]}' \
    'string' \
    > result.txt
```

### Operation `admin_update_user_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-update-user-v4' \
    '{"avatarUrl": "string", "country": "string", "dateOfBirth": "string", "displayName": "string", "languageTag": "string", "skipLoginQueue": false, "tags": ["string"], "uniqueDisplayName": "string", "userName": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_update_user_email_address_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-update-user-email-address-v4' \
    '{"code": "string", "emailAddress": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_disable_user_mfav4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-disable-user-mfav4' \
    '{"factor": "string", "mfaToken": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_user_mfa_status_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-user-mfa-status-v4' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_list_user_roles_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-list-user-roles-v4' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_update_user_role_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["string"], "roleId": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_add_user_role_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["string"], "roleId": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_remove_user_role_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["string"], "roleId": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_roles_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-roles-v4' \
    --admin_role false \
    --is_wildcard false \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_create_role_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-create-role-v4' \
    '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "string"}' \
    > result.txt
```

### Operation `admin_get_role_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-role-v4' \
    'string' \
    > result.txt
```

### Operation `admin_delete_role_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-delete-role-v4' \
    'string' \
    > result.txt
```

### Operation `admin_update_role_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-update-role-v4' \
    '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "string"}' \
    'string' \
    > result.txt
```

### Operation `admin_update_role_permissions_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{}]}' \
    'string' \
    > result.txt
```

### Operation `admin_add_role_permissions_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{}]}' \
    'string' \
    > result.txt
```

### Operation `admin_delete_role_permissions_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-delete-role-permissions-v4' \
    '["string"]' \
    'string' \
    > result.txt
```

### Operation `admin_list_assigned_users_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-list-assigned-users-v4' \
    'string' \
    --after 'string' \
    --before 'string' \
    --limit 1 \
    > result.txt
```

### Operation `admin_assign_user_to_role_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["string"], "namespace": "string", "userId": "string"}' \
    'string' \
    > result.txt
```

### Operation `admin_revoke_user_from_role_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "string", "userId": "string"}' \
    'string' \
    > result.txt
```

### Operation `admin_invite_user_new_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-invite-user-new-v4' \
    '{"assignedNamespaces": ["string"], "emailAddresses": ["string"], "isAdmin": false, "isNewStudio": false, "languageTag": "string", "namespace": "string", "roleId": "string"}' \
    > result.txt
```

### Operation `admin_update_my_user_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "string", "country": "string", "dateOfBirth": "string", "displayName": "string", "languageTag": "string", "skipLoginQueue": false, "tags": ["string"], "uniqueDisplayName": "string", "userName": "string"}' \
    > result.txt
```

### Operation `admin_disable_my_authenticator_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-disable-my-authenticator-v4' \
    '{"factor": "string", "mfaToken": "string"}' \
    > result.txt
```

### Operation `admin_enable_my_authenticator_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-enable-my-authenticator-v4' \
    'string' \
    > result.txt
```

### Operation `admin_generate_my_authenticator_key_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-generate-my-authenticator-key-v4' \
    > result.txt
```

### Operation `admin_disable_my_backup_codes_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-disable-my-backup-codes-v4' \
    '{"factor": "string", "mfaToken": "string"}' \
    > result.txt
```

### Operation `admin_get_backup_codes_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-backup-codes-v4' \
    --language_tag 'string' \
    > result.txt
```

### Operation `admin_generate_backup_codes_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-generate-backup-codes-v4' \
    --language_tag 'string' \
    > result.txt
```

### Operation `admin_enable_backup_codes_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-enable-backup-codes-v4' \
    --language_tag 'string' \
    > result.txt
```

### Operation `admin_challenge_my_mfav4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-challenge-my-mfav4' \
    --code 'string' \
    --factor 'string' \
    > result.txt
```

### Operation `admin_send_my_mfa_email_code_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-send-my-mfa-email-code-v4' \
    --action 'string' \
    --language_tag 'string' \
    > result.txt
```

### Operation `admin_disable_my_email_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-disable-my-email-v4' \
    '{"factor": "string", "mfaToken": "string"}' \
    > result.txt
```

### Operation `admin_enable_my_email_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-enable-my-email-v4' \
    'string' \
    > result.txt
```

### Operation `admin_get_my_enabled_factors_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-my-enabled-factors-v4' \
    > result.txt
```

### Operation `admin_make_factor_my_default_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-make-factor-my-default-v4' \
    'string' \
    > result.txt
```

### Operation `admin_get_my_own_mfa_status_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-admin-get-my-own-mfa-status-v4' \
    > result.txt
```

### Operation `authentication_with_platform_link_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-authentication-with-platform-link-v4' \
    'string' \
    'string' \
    'string' \
    'string' \
    --extend_exp false \
    > result.txt
```

### Operation `generate_token_by_new_headless_account_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-generate-token-by-new-headless-account-v4' \
    'string' \
    --additional_data 'string' \
    --extend_exp false \
    > result.txt
```

### Operation `verify2fa_code_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-verify2fa-code-v4' \
    'string' \
    'string' \
    'string' \
    false \
    > result.txt
```

### Operation `platform_token_grant_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-platform-token-grant-v4' \
    'string' \
    --additional_data 'string' \
    --client_id 'string' \
    --create_headless false \
    --device_id 'string' \
    --mac_address 'string' \
    --platform_token 'string' \
    --service_label 3.14 \
    --skip_set_cookie false \
    --code_challenge 'string' \
    --code_challenge_method 'S256' \
    > result.txt
```

### Operation `simultaneous_login_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-simultaneous-login-v4' \
    'epicgames' \
    'string' \
    --simultaneous_platform 'string' \
    --simultaneous_ticket 'string' \
    --code_challenge 'string' \
    --code_challenge_method 'S256' \
    > result.txt
```

### Operation `token_grant_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-token-grant-v4' \
    'authorization_code' \
    --auth_trust_id 'string' \
    --device_id 'string' \
    --additional_data 'string' \
    --client_id 'string' \
    --client_secret 'string' \
    --code 'string' \
    --code_verifier 'string' \
    --extend_namespace 'string' \
    --extend_exp false \
    --login_queue_ticket 'string' \
    --password 'string' \
    --redirect_uri 'string' \
    --refresh_token 'string' \
    --scope 'string' \
    --username 'string' \
    --code_challenge 'string' \
    --code_challenge_method 'S256' \
    > result.txt
```

### Operation `request_target_token_response_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-request-target-token-response-v4' \
    'string' \
    --additional_data 'string' \
    > result.txt
```

### Operation `public_list_user_id_by_platform_user_i_ds_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-list-user-id-by-platform-user-i-ds-v4' \
    '{"pidType": "string", "platformUserIds": ["string"]}' \
    'string' \
    'string' \
    --raw_puid false \
    > result.txt
```

### Operation `public_get_user_by_platform_user_idv4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-get-user-by-platform-user-idv4' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_create_test_user_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{}], "authType": "EMAILPASSWD", "country": "string", "dateOfBirth": "string", "displayName": "string", "emailAddress": "string", "password": "string", "passwordMD5Sum": "string", "uniqueDisplayName": "string", "username": "string", "verified": false}' \
    'string' \
    > result.txt
```

### Operation `public_create_user_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{}], "authType": "EMAILPASSWD", "code": "string", "country": "string", "dateOfBirth": "string", "displayName": "string", "emailAddress": "string", "password": "string", "passwordMD5Sum": "string", "reachMinimumAge": false, "uniqueDisplayName": "string", "username": "string"}' \
    'string' \
    > result.txt
```

### Operation `create_user_from_invitation_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{}], "authType": "EMAILPASSWD", "code": "string", "country": "string", "dateOfBirth": "string", "displayName": "string", "emailAddress": "string", "password": "string", "passwordMD5Sum": "string", "reachMinimumAge": false, "uniqueDisplayName": "string", "username": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_update_user_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-update-user-v4' \
    '{"avatarUrl": "string", "country": "string", "dateOfBirth": "string", "displayName": "string", "languageTag": "string", "uniqueDisplayName": "string", "userName": "string"}' \
    'string' \
    > result.txt
```

### Operation `public_update_user_email_address_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-update-user-email-address-v4' \
    '{"code": "string", "emailAddress": "string"}' \
    'string' \
    > result.txt
```

### Operation `public_upgrade_headless_account_with_verification_code_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "string", "country": "string", "dateOfBirth": "string", "displayName": "string", "emailAddress": "string", "password": "string", "reachMinimumAge": false, "uniqueDisplayName": "string", "username": "string", "validateOnly": false}' \
    'string' \
    > result.txt
```

### Operation `public_upgrade_headless_account_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-upgrade-headless-account-v4' \
    '{"dateOfBirth": "string", "displayName": "string", "emailAddress": "string", "password": "string", "uniqueDisplayName": "string", "username": "string"}' \
    'string' \
    > result.txt
```

### Operation `public_disable_my_authenticator_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-disable-my-authenticator-v4' \
    '{"factor": "string", "mfaToken": "string"}' \
    'string' \
    > result.txt
```

### Operation `public_enable_my_authenticator_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-enable-my-authenticator-v4' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_generate_my_authenticator_key_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-generate-my-authenticator-key-v4' \
    'string' \
    > result.txt
```

### Operation `public_disable_my_backup_codes_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-disable-my-backup-codes-v4' \
    '{"factor": "string", "mfaToken": "string"}' \
    'string' \
    > result.txt
```

### Operation `public_get_backup_codes_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-get-backup-codes-v4' \
    'string' \
    --language_tag 'string' \
    > result.txt
```

### Operation `public_generate_backup_codes_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-generate-backup-codes-v4' \
    'string' \
    --language_tag 'string' \
    > result.txt
```

### Operation `public_enable_backup_codes_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-enable-backup-codes-v4' \
    'string' \
    --language_tag 'string' \
    > result.txt
```

### Operation `public_challenge_my_mfav4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-challenge-my-mfav4' \
    'string' \
    --code 'string' \
    --factor 'string' \
    > result.txt
```

### Operation `public_remove_trusted_device_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-remove-trusted-device-v4' \
    'string' \
    --cookie 'string' \
    > result.txt
```

### Operation `public_send_my_mfa_email_code_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-send-my-mfa-email-code-v4' \
    'string' \
    --action 'string' \
    --language_tag 'string' \
    > result.txt
```

### Operation `public_disable_my_email_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-disable-my-email-v4' \
    '{"factor": "string", "mfaToken": "string"}' \
    'string' \
    > result.txt
```

### Operation `public_enable_my_email_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-enable-my-email-v4' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_get_my_enabled_factors_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-get-my-enabled-factors-v4' \
    'string' \
    > result.txt
```

### Operation `public_make_factor_my_default_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-make-factor-my-default-v4' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_get_my_own_mfa_status_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-get-my-own-mfa-status-v4' \
    'string' \
    > result.txt
```

### Operation `public_get_user_public_info_by_user_id_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-get-user-public-info-by-user-id-v4' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_invite_user_v4`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-invite-user-v4' \
    '{"additionalData": "string", "emailAddress": "string", "languageTag": "string", "namespace": "string", "namespaceDisplayName": "string"}' \
    > result.txt
```

### Operation `public_upgrade_headless_with_code_v4_forward`
```sh
$ python -m accelbyte_py_sdk_cli 'iam-public-upgrade-headless-with-code-v4-forward' \
    '{"acceptedPolicies": [{}], "code": "string", "country": "string", "dateOfBirth": "string", "displayName": "string", "emailAddress": "string", "password": "string", "reachMinimumAge": false, "uniqueDisplayName": "string", "username": "string", "validateOnly": false}' \
    > result.txt
```

