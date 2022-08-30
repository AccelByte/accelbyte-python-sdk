#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# Meta:
# - random seed: 256
# - template file: python-cli-unit-test.j2

# Instructions:
# - Run the Justice SDK Mock Server first before running this script.

EXIT_CODE=0
PYTHON='python3'
MODULE='accelbyte_py_sdk_cli'
MODULE_PATH='../samples/cli'

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"
export PYTHONPATH=$MODULE_PATH:$PYTHONPATH

touch "tmp.dat"

if [ "$BATCH" = true ] ; then

$PYTHON -m $MODULE 'start-interactive-session' --continue_on_error '--writer=tap' << END
iam-admin-get-age-restriction-status-v2 --login_with_auth "Bearer foo"
iam-admin-update-age-restriction-config-v2 '{"AgeRestriction": 62, "Enable": true}' --login_with_auth "Bearer foo"
iam-get-list-country-age-restriction --login_with_auth "Bearer foo"
iam-update-country-age-restriction '{"AgeRestriction": 55}' 'xyZcDXBp' --login_with_auth "Bearer foo"
iam-admin-search-users-v2 'GlsQuJu8' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v2 'vMf0IsJk' --login_with_auth "Bearer foo"
iam-admin-update-user-v2 '{"Country": "Trd8IDcV", "DateOfBirth": "2zXnTKjX", "DisplayName": "Y1bPqami", "LanguageTag": "Bxx9Cs18"}' 'EY84ekIt' --login_with_auth "Bearer foo"
iam-admin-ban-user-v2 '{"ban": "qRzHU1oh", "comment": "570KQBVa", "endDate": "ewc72krS", "reason": "ha68n3Yn", "skipNotif": false}' 'zp1C2KmI' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v2 'QTuBdNEU' --login_with_auth "Bearer foo"
iam-admin-disable-user-v2 '{"Reason": "sxFb8CJ1"}' '7M7DJZaM' --login_with_auth "Bearer foo"
iam-admin-enable-user-v2 'SxECbZby' --login_with_auth "Bearer foo"
iam-admin-reset-password-v2 '{"LanguageTag": "gyoarORo", "NewPassword": "eNHSb8Rh", "OldPassword": "3kgs9qqJ"}' 'bnQsoBgi' --login_with_auth "Bearer foo"
iam-admin-delete-platform-link-v2 'VpP8Cm3y' 'vASUoxdx' --login_with_auth "Bearer foo"
iam-admin-put-user-roles-v2 '["xFqmAGTJ"]' '8IEdagEt' --login_with_auth "Bearer foo"
iam-admin-create-user-roles-v2 '["p4w29KOu"]' '9c19R6XD' --login_with_auth "Bearer foo"
iam-public-get-country-age-restriction 'qWHkkP8n' --login_with_auth "Bearer foo"
iam-public-create-user-v2 '{"AuthType": "pLEKMfji", "Country": "X7jpkVZk", "DisplayName": "3IaQYEmq", "LoginId": "GodOEGt9", "Password": "gPOj0c6i", "PasswordMD5Sum": "0JkvIas7"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v2 '{"Context": "3ucYnFAJ", "LanguageTag": "3DK5T4Eo", "LoginID": "gg0Y39Uo"}' --login_with_auth "Bearer foo"
iam-public-reset-password-v2 '{"Code": "Ylpv5bVA", "LoginID": "gtsDhUTD", "NewPassword": "UscbQDjb"}' --login_with_auth "Bearer foo"
iam-public-get-user-by-user-idv2 'TQuPMz2P' --login_with_auth "Bearer foo"
iam-public-update-user-v2 '{"Country": "TRlkyU89", "DateOfBirth": "ZPOw6zPF", "DisplayName": "J42cwmzB", "LanguageTag": "BSMNcoAA"}' 'OjKNjfcY' --login_with_auth "Bearer foo"
iam-public-get-user-ban 'Hm093aYg' --login_with_auth "Bearer foo"
iam-public-update-password-v2 '{"LanguageTag": "BU1sqjyK", "NewPassword": "0XH45PaR", "OldPassword": "SOFQBtu2"}' '3REZ8hRV' --login_with_auth "Bearer foo"
iam-get-list-justice-platform-accounts 'X7LGOvDd' --login_with_auth "Bearer foo"
iam-public-platform-link-v2 'YiQS9i7m' 'V1C91pjG' '9gpxL6yc' --login_with_auth "Bearer foo"
iam-public-delete-platform-link-v2 'TQdvln2L' 'AuSQWEXL' --login_with_auth "Bearer foo"
iam-admin-get-bans-type-v3 --login_with_auth "Bearer foo"
iam-admin-get-list-ban-reason-v3 --login_with_auth "Bearer foo"
iam-admin-get-input-validations --login_with_auth "Bearer foo"
iam-admin-update-input-validations '[{"field": "6LFE1YHo", "validation": {"allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "description": [{"language": "WvbNYqgU", "message": ["qslArFPi"]}], "isCustomRegex": true, "letterCase": "aCv8kU9d", "maxLength": 55, "maxRepeatingAlphaNum": 55, "maxRepeatingSpecialCharacter": 30, "minCharType": 6, "minLength": 36, "regex": "JLhsVyEx", "specialCharacterLocation": "rkxoot0B", "specialCharacters": ["7WOfercZ"]}}]' --login_with_auth "Bearer foo"
iam-admin-reset-input-validations 'dpMci37D' --login_with_auth "Bearer foo"
iam-list-admins-v3 --login_with_auth "Bearer foo"
iam-admin-get-age-restriction-status-v3 --login_with_auth "Bearer foo"
iam-admin-update-age-restriction-config-v3 '{"ageRestriction": 36, "enable": false}' --login_with_auth "Bearer foo"
iam-admin-get-list-country-age-restriction-v3 --login_with_auth "Bearer foo"
iam-admin-update-country-age-restriction-v3 '{"ageRestriction": 61}' 'xaI3uzLt' --login_with_auth "Bearer foo"
iam-admin-get-banned-users-v3 --login_with_auth "Bearer foo"
iam-admin-get-bans-type-with-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-get-clients-by-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-create-client-v3 '{"audiences": ["eMbFAlt4"], "baseUri": "hr7HmOYi", "clientId": "BA5ltAOX", "clientName": "mlG6eh1d", "clientPermissions": [{"action": 90, "resource": "doTFpBIc", "schedAction": 40, "schedCron": "C1dQY93O", "schedRange": ["JnJ6Te9v"]}], "clientPlatform": "D8ldz7Hu", "deletable": true, "namespace": "D79kdWun", "oauthClientType": "vizU0q1p", "redirectUri": "HyhhERoG", "secret": "gdrysMiz"}' --login_with_auth "Bearer foo"
iam-admin-get-clientsby-namespaceby-idv3 'BGSRdP2l' --login_with_auth "Bearer foo"
iam-admin-delete-client-v3 '7DNSZ8Aq' --login_with_auth "Bearer foo"
iam-admin-update-client-v3 '{"audiences": ["0XiPLQXS"], "baseUri": "e07ZddOG", "clientName": "TMlJjBwj", "clientPermissions": [{"action": 66, "resource": "JHQKseEd", "schedAction": 88, "schedCron": "XRDSvgua", "schedRange": ["uw1xT7eM"]}], "clientPlatform": "wSl9MLH0", "deletable": false, "namespace": "TJ2ulNzB", "redirectUri": "vwJaQa54"}' '7JllvA8R' --login_with_auth "Bearer foo"
iam-admin-update-client-permission-v3 '{"permissions": [{"action": 97, "resource": "SpabUt7x"}]}' 'k6QxyWhf' --login_with_auth "Bearer foo"
iam-admin-add-client-permissions-v3 '{"permissions": [{"action": 33, "resource": "oWfJw2o8"}]}' 'oWUqvPCZ' --login_with_auth "Bearer foo"
iam-admin-delete-client-permission-v3 '66' 'zT7NXmWD' 'lXsuNIdQ' --login_with_auth "Bearer foo"
iam-retrieve-all-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-sso-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-third-party-login-platform-credential-v3 'JR5lsNOl' --login_with_auth "Bearer foo"
iam-add-third-party-login-platform-credential-v3 '{"ACSURL": "vkfwaSbn", "AWSCognitoRegion": "suLCgTox", "AWSCognitoUserPool": "uVTekJgv", "AllowedClients": ["g6h5HIpH"], "AppId": "0DviplEk", "AuthorizationEndpoint": "4vj3LDp4", "ClientId": "yqDt8QUZ", "Environment": "DpxlHasi", "FederationMetadataURL": "nGcjrkmR", "GenericOauthFlow": true, "IsActive": true, "Issuer": "gjDSaIVB", "JWKSEndpoint": "mft3Udg7", "KeyID": "p9PGmY2H", "NetflixCertificates": {"encryptedPrivateKey": "5kX4Msis", "encryptedPrivateKeyName": "SX28nARx", "publicCertificate": "WRpv5ou5", "publicCertificateName": "xtvd28OU", "rootCertificate": "fCt8UJC5", "rootCertificateName": "flNyj6Hs"}, "OrganizationId": "TtX8P3ll", "PlatformName": "naaS9lqy", "RedirectUri": "ygPcfkJI", "RegisteredDomains": [{"affectedClientIDs": ["xfQZza8k"], "domain": "NVbDxVMq", "namespaces": ["7HJk0F89"], "roleId": "xAc3YVfa"}], "Secret": "ENtrl0pT", "TeamID": "KZTXqzHu", "TokenAuthenticationType": "BMYQSA2j", "TokenClaimsMapping": {"z1ZOpdOj": "SyMddB41"}, "TokenEndpoint": "JuMf7RUy"}' 'BHRj8IiR' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-credential-v3 'imRllHT6' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-credential-v3 '{"ACSURL": "Dc40vFFA", "AWSCognitoRegion": "6gpU7EW3", "AWSCognitoUserPool": "x1dCpm55", "AllowedClients": ["gOeqQIqc"], "AppId": "JVKmBM1J", "AuthorizationEndpoint": "1IbuTrrk", "ClientId": "bmuT1whO", "Environment": "qmEnDXIW", "FederationMetadataURL": "rBPlSay4", "GenericOauthFlow": false, "IsActive": true, "Issuer": "71BAZAOj", "JWKSEndpoint": "tFJ2vmTj", "KeyID": "7tT7TZHW", "NetflixCertificates": {"encryptedPrivateKey": "DdCkIsZo", "encryptedPrivateKeyName": "ArWwPHcy", "publicCertificate": "FAdAtYci", "publicCertificateName": "LIgRwFRr", "rootCertificate": "0gwB9tz3", "rootCertificateName": "vp99XVlV"}, "OrganizationId": "8rK3tE6n", "PlatformName": "0smip1tw", "RedirectUri": "3L7cUd9p", "RegisteredDomains": [{"affectedClientIDs": ["qtv6JfPZ"], "domain": "wcCVOXcV", "namespaces": ["a80TmCwt"], "roleId": "D2lAH01o"}], "Secret": "6NdcBIgz", "TeamID": "rDyWpFBY", "TokenAuthenticationType": "GmmBawMy", "TokenClaimsMapping": {"oKyNpdAa": "sm8xwUfz"}, "TokenEndpoint": "OlQiZY4N"}' 'bOQXJ7uO' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-domain-v3 '{"affectedClientIDs": ["TzNMvuq2"], "assignedNamespaces": ["tNl4CX4I"], "domain": "jiK4DEUJ", "roleId": "RVK3l9Eb"}' '0R1XRb0R' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-domain-v3 '{"domain": "H8vS1sme"}' 'OlngrdTX' --login_with_auth "Bearer foo"
iam-retrieve-sso-login-platform-credential 'CzaPBtkZ' --login_with_auth "Bearer foo"
iam-add-sso-login-platform-credential '{"acsUrl": "Mio4wcyh", "apiKey": "loVS3rYp", "appId": "8QtcEmCE", "federationMetadataUrl": "Vc75Ufey", "isActive": false, "redirectUri": "WjDNhzCL", "secret": "5sWS2qwO", "ssoUrl": "763iEklk"}' 'zLm88LpL' --login_with_auth "Bearer foo"
iam-delete-sso-login-platform-credential-v3 'uYRO3C55' --login_with_auth "Bearer foo"
iam-update-sso-platform-credential '{"acsUrl": "yHpwK2Ja", "apiKey": "qenDGn7a", "appId": "2NUplWiL", "federationMetadataUrl": "jq06n6a0", "isActive": true, "redirectUri": "W8EfkpaX", "secret": "twYZJaQ4", "ssoUrl": "WbwNmsFY"}' 'etjEurH8' --login_with_auth "Bearer foo"
iam-admin-get-user-by-platform-user-idv3 'eloJzNKt' 'RUaTz1ET' --login_with_auth "Bearer foo"
iam-get-admin-users-by-role-id-v3 'dsmwzjkk' --login_with_auth "Bearer foo"
iam-admin-get-user-by-email-address-v3 --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-user-i-ds-v3 '{"userIds": ["n9oiQl05"]}' --login_with_auth "Bearer foo"
iam-admin-invite-user-v3 '{"emailAddresses": ["g7cO3ZMb"], "isAdmin": false, "roles": ["lo6DMNpP"]}' --login_with_auth "Bearer foo"
iam-admin-list-users-v3 --login_with_auth "Bearer foo"
iam-admin-search-user-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-by-email-address-v3 '{"listEmailAddressRequest": ["2qMrTQ1U"]}' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v3 'pjfU6wJh' --login_with_auth "Bearer foo"
iam-admin-update-user-v3 '{"avatarUrl": "y1jOVkkU", "country": "lS79527E", "dateOfBirth": "Z25Ia8uC", "displayName": "eZFlLtEV", "languageTag": "pDAEbA82", "userName": "jy74lq0p"}' 'DE5xRwh5' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v3 'b45ebpcM' --login_with_auth "Bearer foo"
iam-admin-ban-user-v3 '{"ban": "7ScSs3UO", "comment": "pAwIp9rR", "endDate": "tn1PcCxd", "reason": "bumeYgOd", "skipNotif": true}' 'BWRQiW3K' --login_with_auth "Bearer foo"
iam-admin-update-user-ban-v3 '{"enabled": true, "skipNotif": false}' 'U8icH408' '1gRB1GyL' --login_with_auth "Bearer foo"
iam-admin-send-verification-code-v3 '{"context": "fLg4RYuE", "emailAddress": "bgUDEcJy", "languageTag": "IvsPwOr0"}' 'BmV5iFvf' --login_with_auth "Bearer foo"
iam-admin-verify-account-v3 '{"Code": "wFjTSmIE", "ContactType": "qoLyLeUG", "LanguageTag": "momGX9sX", "validateOnly": true}' '8pqLfc5S' --login_with_auth "Bearer foo"
iam-get-user-verification-code 'wGnReUUL' --login_with_auth "Bearer foo"
iam-admin-get-user-deletion-status-v3 'DX4QUIbb' --login_with_auth "Bearer foo"
iam-admin-update-user-deletion-status-v3 '{"enabled": false}' 'h68ZnyUt' --login_with_auth "Bearer foo"
iam-admin-upgrade-headless-account-v3 '{"code": "RvW9hNBS", "country": "FTtFrOmj", "dateOfBirth": "kFrFVA8t", "displayName": "0xF34Xpt", "emailAddress": "6ZlTTic0", "password": "kr2a0nI2", "validateOnly": false}' 'o7UHCJK5' --login_with_auth "Bearer foo"
iam-admin-delete-user-information-v3 'sp0aCvIq' --login_with_auth "Bearer foo"
iam-admin-get-user-login-histories-v3 '3aHVYIle' --login_with_auth "Bearer foo"
iam-admin-update-user-permission-v3 '{"Permissions": [{"Action": 44, "Resource": "LRuHY83b", "SchedAction": 64, "SchedCron": "j0HTeeWX", "SchedRange": ["lIcRidqc"]}]}' 'tDpygY0a' --login_with_auth "Bearer foo"
iam-admin-add-user-permissions-v3 '{"Permissions": [{"Action": 46, "Resource": "476ED4MM", "SchedAction": 80, "SchedCron": "9Tw2JH0q", "SchedRange": ["hWIwHWTg"]}]}' 'zJFRYw6t' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-bulk-v3 '[{"Action": 68, "Resource": "KZLO6V4O"}]' 'de46QmCi' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-v3 '7' 'gdpP7RTC' '587lmUmB' --login_with_auth "Bearer foo"
iam-admin-get-user-platform-accounts-v3 'ziPZBnpO' --login_with_auth "Bearer foo"
iam-admin-get-list-justice-platform-accounts 'fkllxfq0' --login_with_auth "Bearer foo"
iam-admin-get-user-mapping 'NsrSjw5H' 'og0blM1d' --login_with_auth "Bearer foo"
iam-admin-create-justice-user '5MStYGcz' 'LINlEC0O' --login_with_auth "Bearer foo"
iam-admin-link-platform-account '{"platformId": "EsE3yzIs", "platformUserId": "UP0NjluO"}' 'rGZTzsLW' --login_with_auth "Bearer foo"
iam-admin-platform-unlink-v3 '{"platformNamespace": "7Fjfs9nI"}' 'kcZ38fUE' 'anjKHbXf' --login_with_auth "Bearer foo"
iam-admin-platform-link-v3 'k1zxdzxg' '0UXcRyHi' '3u8BzVWu' --login_with_auth "Bearer foo"
iam-admin-delete-user-roles-v3 '["1tOmhUtC"]' 'gcpvGrEb' --login_with_auth "Bearer foo"
iam-admin-save-user-role-v3 '[{"namespace": "cZUDExH1", "roleId": "tayOGXIH"}]' 'zMRjMCtO' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v3 'JsEijlrb' 'pyyEcQxV' --login_with_auth "Bearer foo"
iam-admin-delete-user-role-v3 'gJIjMZqc' 'WfMl6dqr' --login_with_auth "Bearer foo"
iam-admin-update-user-status-v3 '{"enabled": false, "reason": "D4tnc3ZR"}' 'B3IkdtPf' --login_with_auth "Bearer foo"
iam-admin-verify-user-without-verification-code-v3 'AJEomwen' --login_with_auth "Bearer foo"
iam-admin-update-client-secret-v3 '{"newSecret": "JvQ8grtQ"}' 'Sv6EcALc' --login_with_auth "Bearer foo"
iam-admin-get-roles-v3 --login_with_auth "Bearer foo"
iam-admin-create-role-v3 '{"adminRole": false, "deletable": true, "isWildcard": false, "managers": [{"displayName": "T51M4yko", "namespace": "8S0EnGLv", "userId": "GvfuSyCT"}], "members": [{"displayName": "yjj4mCai", "namespace": "uMGKOF5G", "userId": "JJooSXUl"}], "permissions": [{"action": 93, "resource": "35QHGpBA", "schedAction": 54, "schedCron": "nOlxDznI", "schedRange": ["CQVyqBg3"]}], "roleName": "4WTtDkn0"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v3 'rtn6t0Yx' --login_with_auth "Bearer foo"
iam-admin-delete-role-v3 '4z12EaQ1' --login_with_auth "Bearer foo"
iam-admin-update-role-v3 '{"deletable": true, "isWildcard": true, "roleName": "NTiDX4jE"}' '3M2IsTHu' --login_with_auth "Bearer foo"
iam-admin-get-role-admin-status-v3 '8QwNyOlX' --login_with_auth "Bearer foo"
iam-admin-update-admin-role-status-v3 'fIWd0mcq' --login_with_auth "Bearer foo"
iam-admin-remove-role-admin-v3 '5T4SUc7c' --login_with_auth "Bearer foo"
iam-admin-get-role-managers-v3 'WfCKK6Di' --login_with_auth "Bearer foo"
iam-admin-add-role-managers-v3 '{"managers": [{"displayName": "j1gFcenE", "namespace": "MySPfhxB", "userId": "enDiTiAq"}]}' 'FYmFKjaE' --login_with_auth "Bearer foo"
iam-admin-remove-role-managers-v3 '{"managers": [{"displayName": "Lmmll6oe", "namespace": "xId1OKGU", "userId": "N2Uznd7u"}]}' 'Va7t14yv' --login_with_auth "Bearer foo"
iam-admin-get-role-members-v3 'SYSV52bH' --login_with_auth "Bearer foo"
iam-admin-add-role-members-v3 '{"members": [{"displayName": "ifCIf4ts", "namespace": "uu6Pkam6", "userId": "tFSYFt4Z"}]}' 'xA2PzZFR' --login_with_auth "Bearer foo"
iam-admin-remove-role-members-v3 '{"members": [{"displayName": "kBNlg6hn", "namespace": "5qusKyZA", "userId": "uV6uUvqM"}]}' '0lV6UZMl' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v3 '{"permissions": [{"action": 61, "resource": "bxHNgJRi", "schedAction": 84, "schedCron": "ExaunjdA", "schedRange": ["qnHUz44t"]}]}' 'x4O6hamP' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v3 '{"permissions": [{"action": 45, "resource": "Noi071ez", "schedAction": 59, "schedCron": "K56JFIGe", "schedRange": ["1IMUCLcN"]}]}' '0DsaD5Fy' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v3 '["BsFe9OYE"]' 'JVsYffmh' --login_with_auth "Bearer foo"
iam-admin-delete-role-permission-v3 '48' 'x6J25PrM' '4S3cB8m1' --login_with_auth "Bearer foo"
iam-admin-get-my-user-v3 --login_with_auth "Bearer foo"
iam-user-authentication-v3 '7hEeLLgo' 'aYth6zcf' '8eA45OMv' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-authentication-with-platform-link-v3 'ObWejo9L' 'fGeegJMa' 'BGR6D1Zo' 'ZEZQkJ8D' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v3 'SqFnhdKv' --login_with_auth "Bearer foo"
iam-get-country-location-v3 --login_with_auth "Bearer foo"
iam-logout --login_with_auth "Bearer foo"
iam-admin-retrieve-user-third-party-platform-token-v3 'jFCFbSFl' 'EWoMPdgK' --login_with_auth "Bearer foo"
iam-revoke-user-v3 '5zn62mhn' --login_with_auth "Bearer foo"
iam-authorize-v3 'FSpCTlDN' 'code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-introspection-v3 'Ocygvv2L' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-jwksv3 --login_with_auth "Bearer foo"
iam-change2fa-method 'AgfBGVza' 'nbKYsB0g' --login_with_auth "Bearer foo"
iam-verify2fa-code 'qJ8VhYSi' 'kJl2p9rB' 'x8N5egap' 'True' --login_with_auth "Bearer foo"
iam-retrieve-user-third-party-platform-token-v3 'xDy4cLfN' 'jzzEZYA8' --login_with_auth "Bearer foo"
iam-auth-code-request-v3 'jIkMJb7c' 'Z2bPsaLL' --login_with_auth "Bearer foo"
iam-platform-token-grant-v3 'pEBVEMk5' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-revocation-list-v3 --login_with_auth "Bearer foo"
iam-token-revocation-v3 'AsKaF2P4' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-grant-v3 'client_credentials' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-verify-token-v3 'XkI3zdiR' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-platform-authentication-v3 'iC5IbPit' '71JWlYCo' --login_with_auth "Bearer foo"
iam-public-get-input-validations --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-public-v3 --login_with_auth "Bearer foo"
iam-retrieve-active-oidc-clients-public-v3 'i4nDfPu5' --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["V6QSYxEV"]}' 'OryVuZYm' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv3 'gUeEPB5A' 'GPgvk0Zt' --login_with_auth "Bearer foo"
iam-public-get-async-status 'haj0EBA4' --login_with_auth "Bearer foo"
iam-public-search-user-v3 --login_with_auth "Bearer foo"
iam-public-create-user-v3 '{"PasswordMD5Sum": "azRz0d56", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "mobor4p1", "policyId": "PlgQB9Ec", "policyVersionId": "NGOeBRY6"}], "authType": "G5ae07de", "code": "DLaZ8JCv", "country": "beTfW0hg", "dateOfBirth": "zrabLJxE", "displayName": "wJrEBmQ6", "emailAddress": "4haNOzlG", "password": "u68UYyup", "reachMinimumAge": false}' --login_with_auth "Bearer foo"
iam-check-user-availability 'dDetnoT0' 'rfWtVPwQ' --login_with_auth "Bearer foo"
iam-public-bulk-get-users '{"userIds": ["fq6V92gb"]}' --login_with_auth "Bearer foo"
iam-public-send-registration-code '{"emailAddress": "fPouNdmP", "languageTag": "7fckVnuD"}' --login_with_auth "Bearer foo"
iam-public-verify-registration-code '{"code": "GvYIb1p5", "emailAddress": "tcR5z8ZJ"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v3 '{"emailAddress": "LjSHcaR3", "languageTag": "X4tZmwr0"}' --login_with_auth "Bearer foo"
iam-get-admin-invitation-v3 'QmOnsEg4' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v3 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "Xp0xQkZ2", "policyId": "JjuwWWy0", "policyVersionId": "tU11PCeS"}], "authType": "EMAILPASSWD", "country": "vejUKwVf", "dateOfBirth": "F37Vr7mk", "displayName": "DzFBI1Vw", "password": "hkVSKDlN", "reachMinimumAge": true}' 'OUHBJsvT' --login_with_auth "Bearer foo"
iam-update-user-v3 '{"avatarUrl": "sqk9hg4h", "country": "j6nUdebW", "dateOfBirth": "6UskbPkk", "displayName": "ZAk01f1K", "languageTag": "xCtWADU2", "userName": "guN6U9w1"}' --login_with_auth "Bearer foo"
iam-public-partial-update-user-v3 '{"avatarUrl": "3W1K9TZQ", "country": "4qRLEi5w", "dateOfBirth": "owE36rfm", "displayName": "M0CCs35T", "languageTag": "PUPLmsY8", "userName": "WgwSx1DI"}' --login_with_auth "Bearer foo"
iam-public-send-verification-code-v3 '{"context": "5GH9bv9Z", "emailAddress": "To2HpA6p", "languageTag": "zjHpZO0E"}' --login_with_auth "Bearer foo"
iam-public-user-verification-v3 '{"code": "9iLgRPJK", "contactType": "3nBae3GO", "languageTag": "gbQrqra0", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v3 '{"code": "kfvOpY2r", "country": "amp5lnBn", "dateOfBirth": "6xmBkfMt", "displayName": "C66hFq0k", "emailAddress": "POkORm2X", "password": "jlNEE5ec", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-verify-headless-account-v3 '{"emailAddress": "Ami0ySJH", "password": "fPloP1Xk"}' --login_with_auth "Bearer foo"
iam-public-update-password-v3 '{"languageTag": "YK4MgIsD", "newPassword": "SFMPyMhy", "oldPassword": "w1OLZPVw"}' --login_with_auth "Bearer foo"
iam-public-create-justice-user 'wxH4BIDJ' --login_with_auth "Bearer foo"
iam-public-platform-link-v3 'uDoShMMf' 'tll8N0Vv' --login_with_auth "Bearer foo"
iam-public-platform-unlink-v3 '{"platformNamespace": "ChHz9urm"}' 't7QWvE8s' --login_with_auth "Bearer foo"
iam-public-platform-unlink-all-v3 '6Uz8BRuY' --login_with_auth "Bearer foo"
iam-public-force-platform-link-v3 'WDTtL6MT' 'TRkCbb9S' --login_with_auth "Bearer foo"
iam-public-web-link-platform '5Q1IVHGT' --login_with_auth "Bearer foo"
iam-public-web-link-platform-establish '88prREBg' 'YOWdHJ9J' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"code": "umohtU13", "emailAddress": "gf7TRigN", "newPassword": "Zj5w5y3H"}' --login_with_auth "Bearer foo"
iam-public-get-user-by-user-id-v3 'mK8QVOa6' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 '2eQZtbLL' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 'cF671WLt' --login_with_auth "Bearer foo"
iam-public-get-user-information-v3 'v38Heccz' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 'opFmeRwp' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 'cJBZyi3m' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "LC4Kzeki", "platformUserId": "SzeyolnO"}' 'Qt0joVHg' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["CytC6lRG"], "requestId": "98YxnHbR"}' 'doTKKeuS' --login_with_auth "Bearer foo"
iam-public-get-publisher-user-v3 'jfZe9i1o' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 'sghF1hzi' '1Nl47syJ' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 '5ibzSHZe' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-public-send-verification-link-v3 '{"languageTag": "CLIvWPVR"}' --login_with_auth "Bearer foo"
iam-public-verify-user-by-link-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler 'sdEqA61y' 'TrMgsycT' --login_with_auth "Bearer foo"
iam-login-sso-client 'gmPzc20E' --login_with_auth "Bearer foo"
iam-logout-sso-client 'uO5dMqGD' --login_with_auth "Bearer foo"
iam-admin-create-test-users-v4 '{"count": 22}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["SZPY07rE"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "VSjzHjL6", "country": "ZbXjG6DS", "dateOfBirth": "mpp3op8h", "displayName": "taRLxtW4", "languageTag": "PvFkESTU", "userName": "Lat5F1Le"}' '7cR7q6PW' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "hZmmKz41", "emailAddress": "i1Tp78Fi"}' 'pJHahViJ' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 'vLYW0kdm' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 'lk2luqSO' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["OA2VOZBo"], "roleId": "NbB98PuS"}' 'GykqFzPw' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["SMXT53bB"], "roleId": "uL38beOY"}' 'DVuHZQ9L' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["Yt6w23Wf"], "roleId": "8iEQo72s"}' 'H0aRdcDl' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "sfIuI4Dv"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 '5lEJpK1A' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 'yRlzsrRX' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "vQOHG6wV"}' 'icNratsv' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 43, "resource": "HLmIohfN", "schedAction": 69, "schedCron": "SLXMDWDd", "schedRange": ["m5FE4lli"]}]}' 'QMnutJbp' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 60, "resource": "o4mUNHFt", "schedAction": 6, "schedCron": "ml2xNviW", "schedRange": ["acJc3Fm7"]}]}' 'Z548uuKg' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["oCBqS5uI"]' 'dCbwCeeq' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 '9ouEdDtj' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["OgsypLkm"], "namespace": "2ZYew5H7", "userId": "Zm0gnYyj"}' '6MXf9G1n' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "tyebvoeH", "userId": "enAALKt7"}' 'EfxIH446' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "oUnP2S74", "country": "unXwg0JK", "dateOfBirth": "qVWW1rjK", "displayName": "1epwkAvc", "languageTag": "sYvbgfBV", "userName": "PpTa8Yuq"}' --login_with_auth "Bearer foo"
iam-admin-disable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-admin-enable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-admin-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-admin-get-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-generate-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-download-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-enable-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 '7TKiNXmz' --login_with_auth "Bearer foo"
iam-admin-invite-user-v4 '{"assignedNamespaces": ["7eMrMD5T"], "emailAddresses": ["baUxTCTn"], "isAdmin": false, "roleId": "0xjtdBrj"}' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "3Kiykt2C", "policyId": "k2gOlSat", "policyVersionId": "ECZ2UgwQ"}], "authType": "EMAILPASSWD", "country": "DqYSxTPu", "dateOfBirth": "VlBqirdp", "displayName": "3yxnsETl", "emailAddress": "1SvhQuds", "password": "jIhXdxiS", "passwordMD5Sum": "oWpnnxgX", "username": "7BCPMqzQ", "verified": true}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "bhpNYsHt", "policyId": "dB3Ikjua", "policyVersionId": "ZqhJilrZ"}], "authType": "EMAILPASSWD", "code": "SSKgP5rx", "country": "CR77G9d5", "dateOfBirth": "CA1GORSb", "displayName": "L9n0dbWD", "emailAddress": "EupmdLQz", "password": "PnNfBAcW", "passwordMD5Sum": "ArbkCfdH", "reachMinimumAge": false, "username": "03otqmBu"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "CZ23UHmk", "policyId": "0lpJ4JLl", "policyVersionId": "01qi7L2o"}], "authType": "EMAILPASSWD", "country": "UoVRUb39", "dateOfBirth": "j22P4Sp0", "displayName": "9cKmjRUb", "password": "ZVBVS7OK", "reachMinimumAge": true, "username": "dcsckMek"}' 'ROWZ2KUT' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "qkK2eFaG", "country": "LoSmEEPb", "dateOfBirth": "LywJsyUi", "displayName": "e6fZgLll", "languageTag": "UPsO8lg4", "userName": "6Si7006v"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "L2w4aajD", "emailAddress": "AOx0iJjY"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "leaktqv2", "country": "WkljQuD5", "dateOfBirth": "mnJONqHG", "displayName": "q8mB7mF2", "emailAddress": "lMFcaghF", "password": "XJIJflRH", "reachMinimumAge": true, "username": "csIqCy4x", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"emailAddress": "ifSSQ5On", "password": "2ccEcl3x", "username": "eiO4bwF5"}' --login_with_auth "Bearer foo"
iam-public-disable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-public-enable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-public-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-public-get-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-generate-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-disable-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-download-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-enable-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-remove-trusted-device-v4 --login_with_auth "Bearer foo"
iam-public-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-public-make-factor-my-default-v4 'JOjGoGxK' --login_with_auth "Bearer foo"
exit()
END

EXIT_CODE=$?

else

eval_tap() {
  if [ $1 -eq 0 ]; then
    echo "ok $2 - $3"
  else
    EXIT_CODE=1
    echo "not ok $2 - $3"
    sed 's/^/# /g' $4
  fi
  rm -f $4
}

echo "TAP version 13"
echo "1..314"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 GetBansType
eval_tap 0 2 'GetBansType # SKIP deprecated' test.out

#- 3 GetListBanReason
eval_tap 0 3 'GetListBanReason # SKIP deprecated' test.out

#- 4 GetClients
eval_tap 0 4 'GetClients # SKIP deprecated' test.out

#- 5 CreateClient
eval_tap 0 5 'CreateClient # SKIP deprecated' test.out

#- 6 GetClient
eval_tap 0 6 'GetClient # SKIP deprecated' test.out

#- 7 UpdateClient
eval_tap 0 7 'UpdateClient # SKIP deprecated' test.out

#- 8 DeleteClient
eval_tap 0 8 'DeleteClient # SKIP deprecated' test.out

#- 9 UpdateClientPermission
eval_tap 0 9 'UpdateClientPermission # SKIP deprecated' test.out

#- 10 AddClientPermission
eval_tap 0 10 'AddClientPermission # SKIP deprecated' test.out

#- 11 DeleteClientPermission
eval_tap 0 11 'DeleteClientPermission # SKIP deprecated' test.out

#- 12 UpdateClientSecret
eval_tap 0 12 'UpdateClientSecret # SKIP deprecated' test.out

#- 13 GetClientsbyNamespace
eval_tap 0 13 'GetClientsbyNamespace # SKIP deprecated' test.out

#- 14 CreateClientByNamespace
eval_tap 0 14 'CreateClientByNamespace # SKIP deprecated' test.out

#- 15 DeleteClientByNamespace
eval_tap 0 15 'DeleteClientByNamespace # SKIP deprecated' test.out

#- 16 CreateUser
eval_tap 0 16 'CreateUser # SKIP deprecated' test.out

#- 17 GetAdminUsersByRoleID
eval_tap 0 17 'GetAdminUsersByRoleID # SKIP deprecated' test.out

#- 18 GetUserByLoginID
eval_tap 0 18 'GetUserByLoginID # SKIP deprecated' test.out

#- 19 GetUserByPlatformUserID
eval_tap 0 19 'GetUserByPlatformUserID # SKIP deprecated' test.out

#- 20 ForgotPassword
eval_tap 0 20 'ForgotPassword # SKIP deprecated' test.out

#- 21 GetUsersByLoginIds
eval_tap 0 21 'GetUsersByLoginIds # SKIP deprecated' test.out

#- 22 ResetPassword
eval_tap 0 22 'ResetPassword # SKIP deprecated' test.out

#- 23 SearchUser
eval_tap 0 23 'SearchUser # SKIP deprecated' test.out

#- 24 GetUserByUserID
eval_tap 0 24 'GetUserByUserID # SKIP deprecated' test.out

#- 25 UpdateUser
eval_tap 0 25 'UpdateUser # SKIP deprecated' test.out

#- 26 DeleteUser
eval_tap 0 26 'DeleteUser # SKIP deprecated' test.out

#- 27 BanUser
eval_tap 0 27 'BanUser # SKIP deprecated' test.out

#- 28 GetUserBanHistory
eval_tap 0 28 'GetUserBanHistory # SKIP deprecated' test.out

#- 29 DisableUserBan
eval_tap 0 29 'DisableUserBan # SKIP deprecated' test.out

#- 30 EnableUserBan
eval_tap 0 30 'EnableUserBan # SKIP deprecated' test.out

#- 31 ListCrossNamespaceAccountLink
eval_tap 0 31 'ListCrossNamespaceAccountLink # SKIP deprecated' test.out

#- 32 DisableUser
eval_tap 0 32 'DisableUser # SKIP deprecated' test.out

#- 33 EnableUser
eval_tap 0 33 'EnableUser # SKIP deprecated' test.out

#- 34 GetUserInformation
eval_tap 0 34 'GetUserInformation # SKIP deprecated' test.out

#- 35 DeleteUserInformation
eval_tap 0 35 'DeleteUserInformation # SKIP deprecated' test.out

#- 36 GetUserLoginHistories
eval_tap 0 36 'GetUserLoginHistories # SKIP deprecated' test.out

#- 37 UpdatePassword
eval_tap 0 37 'UpdatePassword # SKIP deprecated' test.out

#- 38 SaveUserPermission
eval_tap 0 38 'SaveUserPermission # SKIP deprecated' test.out

#- 39 AddUserPermission
eval_tap 0 39 'AddUserPermission # SKIP deprecated' test.out

#- 40 DeleteUserPermission
eval_tap 0 40 'DeleteUserPermission # SKIP deprecated' test.out

#- 41 GetUserPlatformAccounts
eval_tap 0 41 'GetUserPlatformAccounts # SKIP deprecated' test.out

#- 42 GetUserMapping
eval_tap 0 42 'GetUserMapping # SKIP deprecated' test.out

#- 43 GetUserJusticePlatformAccount
eval_tap 0 43 'GetUserJusticePlatformAccount # SKIP deprecated' test.out

#- 44 PlatformLink
eval_tap 0 44 'PlatformLink # SKIP deprecated' test.out

#- 45 PlatformUnlink
eval_tap 0 45 'PlatformUnlink # SKIP deprecated' test.out

#- 46 GetPublisherUser
eval_tap 0 46 'GetPublisherUser # SKIP deprecated' test.out

#- 47 SaveUserRoles
eval_tap 0 47 'SaveUserRoles # SKIP deprecated' test.out

#- 48 AddUserRole
eval_tap 0 48 'AddUserRole # SKIP deprecated' test.out

#- 49 DeleteUserRole
eval_tap 0 49 'DeleteUserRole # SKIP deprecated' test.out

#- 50 UpgradeHeadlessAccount
eval_tap 0 50 'UpgradeHeadlessAccount # SKIP deprecated' test.out

#- 51 UpgradeHeadlessAccountWithVerificationCode
eval_tap 0 51 'UpgradeHeadlessAccountWithVerificationCode # SKIP deprecated' test.out

#- 52 UserVerification
eval_tap 0 52 'UserVerification # SKIP deprecated' test.out

#- 53 SendVerificationCode
eval_tap 0 53 'SendVerificationCode # SKIP deprecated' test.out

#- 54 Authorization
eval_tap 0 54 'Authorization # SKIP deprecated' test.out

#- 55 GetJWKS
eval_tap 0 55 'GetJWKS # SKIP deprecated' test.out

#- 56 PlatformTokenRequestHandler
eval_tap 0 56 'PlatformTokenRequestHandler # SKIP deprecated' test.out

#- 57 RevokeUser
eval_tap 0 57 'RevokeUser # SKIP deprecated' test.out

#- 58 GetRevocationList
eval_tap 0 58 'GetRevocationList # SKIP deprecated' test.out

#- 59 RevokeToken
eval_tap 0 59 'RevokeToken # SKIP deprecated' test.out

#- 60 RevokeAUser
eval_tap 0 60 'RevokeAUser # SKIP deprecated' test.out

#- 61 TokenGrant
eval_tap 0 61 'TokenGrant # SKIP deprecated' test.out

#- 62 VerifyToken
eval_tap 0 62 'VerifyToken # SKIP deprecated' test.out

#- 63 GetRoles
eval_tap 0 63 'GetRoles # SKIP deprecated' test.out

#- 64 CreateRole
eval_tap 0 64 'CreateRole # SKIP deprecated' test.out

#- 65 GetRole
eval_tap 0 65 'GetRole # SKIP deprecated' test.out

#- 66 UpdateRole
eval_tap 0 66 'UpdateRole # SKIP deprecated' test.out

#- 67 DeleteRole
eval_tap 0 67 'DeleteRole # SKIP deprecated' test.out

#- 68 GetRoleAdminStatus
eval_tap 0 68 'GetRoleAdminStatus # SKIP deprecated' test.out

#- 69 SetRoleAsAdmin
eval_tap 0 69 'SetRoleAsAdmin # SKIP deprecated' test.out

#- 70 RemoveRoleAdmin
eval_tap 0 70 'RemoveRoleAdmin # SKIP deprecated' test.out

#- 71 GetRoleManagers
eval_tap 0 71 'GetRoleManagers # SKIP deprecated' test.out

#- 72 AddRoleManagers
eval_tap 0 72 'AddRoleManagers # SKIP deprecated' test.out

#- 73 RemoveRoleManagers
eval_tap 0 73 'RemoveRoleManagers # SKIP deprecated' test.out

#- 74 GetRoleMembers
eval_tap 0 74 'GetRoleMembers # SKIP deprecated' test.out

#- 75 AddRoleMembers
eval_tap 0 75 'AddRoleMembers # SKIP deprecated' test.out

#- 76 RemoveRoleMembers
eval_tap 0 76 'RemoveRoleMembers # SKIP deprecated' test.out

#- 77 UpdateRolePermissions
eval_tap 0 77 'UpdateRolePermissions # SKIP deprecated' test.out

#- 78 AddRolePermission
eval_tap 0 78 'AddRolePermission # SKIP deprecated' test.out

#- 79 DeleteRolePermission
eval_tap 0 79 'DeleteRolePermission # SKIP deprecated' test.out

#- 80 AdminGetAgeRestrictionStatusV2
$PYTHON -m $MODULE 'iam-admin-get-age-restriction-status-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'AdminGetAgeRestrictionStatusV2' test.out

#- 81 AdminUpdateAgeRestrictionConfigV2
$PYTHON -m $MODULE 'iam-admin-update-age-restriction-config-v2' \
    '{"AgeRestriction": 76, "Enable": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'AdminUpdateAgeRestrictionConfigV2' test.out

#- 82 GetListCountryAgeRestriction
$PYTHON -m $MODULE 'iam-get-list-country-age-restriction' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'GetListCountryAgeRestriction' test.out

#- 83 UpdateCountryAgeRestriction
$PYTHON -m $MODULE 'iam-update-country-age-restriction' \
    '{"AgeRestriction": 76}' \
    'ce5tfLcp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'UpdateCountryAgeRestriction' test.out

#- 84 AdminSearchUsersV2
$PYTHON -m $MODULE 'iam-admin-search-users-v2' \
    'jFZMKCbp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'AdminSearchUsersV2' test.out

#- 85 AdminGetUserByUserIdV2
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v2' \
    '0pEbLCLF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'AdminGetUserByUserIdV2' test.out

#- 86 AdminUpdateUserV2
$PYTHON -m $MODULE 'iam-admin-update-user-v2' \
    '{"Country": "pHxMYF83", "DateOfBirth": "6075xEpz", "DisplayName": "dnYtpja5", "LanguageTag": "ig2isQZg"}' \
    'a6Vy76iz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'AdminUpdateUserV2' test.out

#- 87 AdminBanUserV2
$PYTHON -m $MODULE 'iam-admin-ban-user-v2' \
    '{"ban": "PiQRjYa8", "comment": "fv5fIt22", "endDate": "tIZhjhgk", "reason": "igW22zXM", "skipNotif": false}' \
    'bcM0GIAL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'AdminBanUserV2' test.out

#- 88 AdminGetUserBanV2
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v2' \
    'IbFCQgBc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'AdminGetUserBanV2' test.out

#- 89 AdminDisableUserV2
$PYTHON -m $MODULE 'iam-admin-disable-user-v2' \
    '{"Reason": "LNT6iOQV"}' \
    'Yx5rW2gM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'AdminDisableUserV2' test.out

#- 90 AdminEnableUserV2
$PYTHON -m $MODULE 'iam-admin-enable-user-v2' \
    'sI1aYBit' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'AdminEnableUserV2' test.out

#- 91 AdminResetPasswordV2
$PYTHON -m $MODULE 'iam-admin-reset-password-v2' \
    '{"LanguageTag": "Sn3UDeKj", "NewPassword": "97I4WYXL", "OldPassword": "qjN7ktOB"}' \
    'TraBxWRT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'AdminResetPasswordV2' test.out

#- 92 AdminDeletePlatformLinkV2
$PYTHON -m $MODULE 'iam-admin-delete-platform-link-v2' \
    'VuYEqGlK' \
    'DwTKXBrX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'AdminDeletePlatformLinkV2' test.out

#- 93 AdminPutUserRolesV2
$PYTHON -m $MODULE 'iam-admin-put-user-roles-v2' \
    '["iQcd9IW8"]' \
    'kiCKeQJW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'AdminPutUserRolesV2' test.out

#- 94 AdminCreateUserRolesV2
$PYTHON -m $MODULE 'iam-admin-create-user-roles-v2' \
    '["ZBvcq1ET"]' \
    'vWBxYZJh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'AdminCreateUserRolesV2' test.out

#- 95 PublicGetCountryAgeRestriction
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction' \
    '7B8gbnSu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'PublicGetCountryAgeRestriction' test.out

#- 96 PublicCreateUserV2
$PYTHON -m $MODULE 'iam-public-create-user-v2' \
    '{"AuthType": "9M2OxD2u", "Country": "daeYpCXY", "DisplayName": "SMiy87CT", "LoginId": "qEQBg36m", "Password": "y3sY2clr", "PasswordMD5Sum": "Dcain0cO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'PublicCreateUserV2' test.out

#- 97 PublicForgotPasswordV2
$PYTHON -m $MODULE 'iam-public-forgot-password-v2' \
    '{"Context": "VF1zHwDT", "LanguageTag": "I0sJ1Q0k", "LoginID": "phMTggSP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'PublicForgotPasswordV2' test.out

#- 98 PublicResetPasswordV2
$PYTHON -m $MODULE 'iam-public-reset-password-v2' \
    '{"Code": "2SLcuAP7", "LoginID": "vU971Czw", "NewPassword": "2nbg8C7M"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'PublicResetPasswordV2' test.out

#- 99 PublicGetUserByUserIDV2
$PYTHON -m $MODULE 'iam-public-get-user-by-user-idv2' \
    'vywhu6Mj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'PublicGetUserByUserIDV2' test.out

#- 100 PublicUpdateUserV2
$PYTHON -m $MODULE 'iam-public-update-user-v2' \
    '{"Country": "OjuGzo1F", "DateOfBirth": "z4tU0aSn", "DisplayName": "98N8qOUA", "LanguageTag": "0z92RaDe"}' \
    '8ngT8LRQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'PublicUpdateUserV2' test.out

#- 101 PublicGetUserBan
$PYTHON -m $MODULE 'iam-public-get-user-ban' \
    'kMnG1LZy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'PublicGetUserBan' test.out

#- 102 PublicUpdatePasswordV2
$PYTHON -m $MODULE 'iam-public-update-password-v2' \
    '{"LanguageTag": "F2mdYY6Z", "NewPassword": "MfuTYTKs", "OldPassword": "ue48qBEB"}' \
    'NAV5BTe6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'PublicUpdatePasswordV2' test.out

#- 103 GetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-get-list-justice-platform-accounts' \
    'ec1zA92U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'GetListJusticePlatformAccounts' test.out

#- 104 PublicPlatformLinkV2
$PYTHON -m $MODULE 'iam-public-platform-link-v2' \
    'RCLSGPmR' \
    'BZWunHW7' \
    'MYvr6QA7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'PublicPlatformLinkV2' test.out

#- 105 PublicDeletePlatformLinkV2
$PYTHON -m $MODULE 'iam-public-delete-platform-link-v2' \
    'Ppepc92H' \
    'A94eACde' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'PublicDeletePlatformLinkV2' test.out

#- 106 AdminGetBansTypeV3
$PYTHON -m $MODULE 'iam-admin-get-bans-type-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'AdminGetBansTypeV3' test.out

#- 107 AdminGetListBanReasonV3
$PYTHON -m $MODULE 'iam-admin-get-list-ban-reason-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'AdminGetListBanReasonV3' test.out

#- 108 AdminGetInputValidations
$PYTHON -m $MODULE 'iam-admin-get-input-validations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'AdminGetInputValidations' test.out

#- 109 AdminUpdateInputValidations
$PYTHON -m $MODULE 'iam-admin-update-input-validations' \
    '[{"field": "yfUpgiPp", "validation": {"allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "description": [{"language": "nmtPwa64", "message": ["Y4gPEKMh"]}], "isCustomRegex": false, "letterCase": "u9a6f3xJ", "maxLength": 78, "maxRepeatingAlphaNum": 38, "maxRepeatingSpecialCharacter": 92, "minCharType": 23, "minLength": 73, "regex": "LlIIAeHb", "specialCharacterLocation": "m5M6LsY1", "specialCharacters": ["VMuIEcRl"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    's68M3MPM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
$PYTHON -m $MODULE 'iam-list-admins-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'ListAdminsV3' test.out

#- 112 AdminGetAgeRestrictionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-age-restriction-status-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 112 'AdminGetAgeRestrictionStatusV3' test.out

#- 113 AdminUpdateAgeRestrictionConfigV3
$PYTHON -m $MODULE 'iam-admin-update-age-restriction-config-v3' \
    '{"ageRestriction": 86, "enable": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-admin-get-list-country-age-restriction-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-admin-update-country-age-restriction-v3' \
    '{"ageRestriction": 9}' \
    'pyyMz6zf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
$PYTHON -m $MODULE 'iam-admin-get-banned-users-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminGetBansTypeWithNamespaceV3
$PYTHON -m $MODULE 'iam-admin-get-bans-type-with-namespace-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'AdminGetBansTypeWithNamespaceV3' test.out

#- 118 AdminGetClientsByNamespaceV3
$PYTHON -m $MODULE 'iam-admin-get-clients-by-namespace-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'AdminGetClientsByNamespaceV3' test.out

#- 119 AdminCreateClientV3
$PYTHON -m $MODULE 'iam-admin-create-client-v3' \
    '{"audiences": ["R1pvTYYt"], "baseUri": "DOiEi4Ru", "clientId": "EcHCSGhp", "clientName": "OZQFlwOi", "clientPermissions": [{"action": 40, "resource": "KGDFgK49", "schedAction": 40, "schedCron": "KnXks0m8", "schedRange": ["ANrcRal7"]}], "clientPlatform": "ta3fojA3", "deletable": false, "namespace": "4MMW3AJ5", "oauthClientType": "zlsFBwjv", "redirectUri": "LYvmg6av", "secret": "udQFF1CP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'AdminCreateClientV3' test.out

#- 120 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    'NY9u2dVY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 121 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'dglOOoCe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminDeleteClientV3' test.out

#- 122 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["K0kPKmBq"], "baseUri": "Vux3lXcD", "clientName": "8aertAVC", "clientPermissions": [{"action": 32, "resource": "s8XT8xy3", "schedAction": 26, "schedCron": "J06KkseA", "schedRange": ["0ARj9ric"]}], "clientPlatform": "fayvnhi8", "deletable": true, "namespace": "dY4WLHoa", "redirectUri": "UkYnQp5e"}' \
    'gdmVE8Im' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AdminUpdateClientV3' test.out

#- 123 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 16, "resource": "vNtQxqWR"}]}' \
    'KHohODoW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminUpdateClientPermissionV3' test.out

#- 124 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 81, "resource": "r98kjBUa"}]}' \
    's9jjz2Fr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AdminAddClientPermissionsV3' test.out

#- 125 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '12' \
    'iaGrcB7d' \
    'IOVKIPSJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminDeleteClientPermissionV3' test.out

#- 126 RetrieveAllThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-all-third-party-login-platform-credential-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'RetrieveAllThirdPartyLoginPlatformCredentialV3' test.out

#- 127 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3' test.out

#- 128 RetrieveAllSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-all-sso-login-platform-credential-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 129 RetrieveThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-third-party-login-platform-credential-v3' \
    'JHo5W8tK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 130 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "H8ou9Sdb", "AWSCognitoRegion": "xSXcrEFC", "AWSCognitoUserPool": "wqeGNLdI", "AllowedClients": ["BRdliFQV"], "AppId": "MKEzVUWl", "AuthorizationEndpoint": "UWDs2x1E", "ClientId": "QU0oepEv", "Environment": "cjaSgEh6", "FederationMetadataURL": "jJnFxinI", "GenericOauthFlow": false, "IsActive": false, "Issuer": "q5Zznd5e", "JWKSEndpoint": "acobTsuR", "KeyID": "lhreQVFI", "NetflixCertificates": {"encryptedPrivateKey": "D3o8hJWV", "encryptedPrivateKeyName": "jKIOAw70", "publicCertificate": "DvAHhSGW", "publicCertificateName": "Uvzq1Za3", "rootCertificate": "IBC4vQFs", "rootCertificateName": "UJPfiaJp"}, "OrganizationId": "1rt7OBgB", "PlatformName": "Ce6N0eI6", "RedirectUri": "5Mn5tngE", "RegisteredDomains": [{"affectedClientIDs": ["YXgPVT5C"], "domain": "qXDZBVMJ", "namespaces": ["yJeKFO92"], "roleId": "YDtaZvJo"}], "Secret": "KS0Oxyip", "TeamID": "ZuO4N9S2", "TokenAuthenticationType": "YCgHa6XB", "TokenClaimsMapping": {"cvGRYk5r": "UtWHCnhm"}, "TokenEndpoint": "zzppV7tK"}' \
    'NKYUQVBX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 131 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    'ymWcNlHa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 132 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "FxYaGHUp", "AWSCognitoRegion": "mBFyOrFK", "AWSCognitoUserPool": "txGNAi0f", "AllowedClients": ["q4xChPLd"], "AppId": "2lOopc7X", "AuthorizationEndpoint": "oVpdd6rC", "ClientId": "pyMrnH9Y", "Environment": "HXh7KnCV", "FederationMetadataURL": "OKY2zsBR", "GenericOauthFlow": true, "IsActive": false, "Issuer": "8QY2OLbi", "JWKSEndpoint": "jrvfr8hk", "KeyID": "njWUWdMU", "NetflixCertificates": {"encryptedPrivateKey": "XHvw4pNl", "encryptedPrivateKeyName": "GLjdBxLM", "publicCertificate": "079pDAbT", "publicCertificateName": "gmsEYEq2", "rootCertificate": "GkYK1vYm", "rootCertificateName": "9flXQ7CQ"}, "OrganizationId": "oemnQG0d", "PlatformName": "H0NVM9VE", "RedirectUri": "HTPqDhkc", "RegisteredDomains": [{"affectedClientIDs": ["u5vnz6Gi"], "domain": "NMboBJHm", "namespaces": ["l0LJmpPi"], "roleId": "4mqhruiC"}], "Secret": "ZLGGP5UX", "TeamID": "kHNTMapp", "TokenAuthenticationType": "5SbonsUJ", "TokenClaimsMapping": {"KADr60Ek": "dFrpLsGt"}, "TokenEndpoint": "9yTXWUSC"}' \
    'QcMsHN7r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 133 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["eI22ks7I"], "assignedNamespaces": ["12tAZc8s"], "domain": "xxLx9XQe", "roleId": "qNWLm8cN"}' \
    'JbYH5J4W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 134 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "iJLv9NvH"}' \
    'wtw2Mjcy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 135 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    '9ZL6Zs5B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'RetrieveSSOLoginPlatformCredential' test.out

#- 136 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "u2XYopLW", "apiKey": "ZeUKJJNf", "appId": "tRpGgk1i", "federationMetadataUrl": "seREzzRG", "isActive": true, "redirectUri": "9wmuHddy", "secret": "OdibI1LV", "ssoUrl": "yqbdY8DG"}' \
    'ZKAuoIKz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'AddSSOLoginPlatformCredential' test.out

#- 137 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    '3Pp3zLWU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 138 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "xMzMtSmM", "apiKey": "mZP8nG0F", "appId": "oQP8q7aS", "federationMetadataUrl": "sb85gAh9", "isActive": true, "redirectUri": "3ZzN6N1i", "secret": "J8ltt9IR", "ssoUrl": "qCflgln6"}' \
    'r5f0s5H6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'UpdateSSOPlatformCredential' test.out

#- 139 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'lCf3QHa1' \
    '1hLLCgw5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'AdminGetUserByPlatformUserIDV3' test.out

#- 140 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'av4LExda' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'GetAdminUsersByRoleIdV3' test.out

#- 141 AdminGetUserByEmailAddressV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-email-address-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByEmailAddressV3' test.out

#- 142 AdminListUserIDByUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-user-i-ds-v3' \
    '{"userIds": ["bD8g2cvH"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'AdminListUserIDByUserIDsV3' test.out

#- 143 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["fMRupDA5"], "isAdmin": true, "roles": ["bjs3XRdH"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'AdminInviteUserV3' test.out

#- 144 AdminListUsersV3
$PYTHON -m $MODULE 'iam-admin-list-users-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'AdminListUsersV3' test.out

#- 145 AdminSearchUserV3
$PYTHON -m $MODULE 'iam-admin-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'AdminSearchUserV3' test.out

#- 146 AdminGetBulkUserByEmailAddressV3
$PYTHON -m $MODULE 'iam-admin-get-bulk-user-by-email-address-v3' \
    '{"listEmailAddressRequest": ["UJ0GCmfl"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'AdminGetBulkUserByEmailAddressV3' test.out

#- 147 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'IXkgJ6zk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'AdminGetUserByUserIdV3' test.out

#- 148 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "Twoakq7s", "country": "EejFZ1Nt", "dateOfBirth": "ONXb9w9h", "displayName": "sQHszIsf", "languageTag": "rlzKpQdd", "userName": "58dZP5Rv"}' \
    'rinNtvBt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'AdminUpdateUserV3' test.out

#- 149 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'qFSkA68m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'AdminGetUserBanV3' test.out

#- 150 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "IVYJ5pSV", "comment": "xBsLhty3", "endDate": "pecToXA4", "reason": "M1oUFPhg", "skipNotif": false}' \
    '7Z6mwNC4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AdminBanUserV3' test.out

#- 151 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": true, "skipNotif": false}' \
    'M87joJNO' \
    'GB83Ns6H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserBanV3' test.out

#- 152 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "l5Poab6l", "emailAddress": "KoVqNBUz", "languageTag": "IxOfglqu"}' \
    'S2q2DoWr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'AdminSendVerificationCodeV3' test.out

#- 153 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "9zvFtKa2", "ContactType": "mOAqOokV", "LanguageTag": "1plxQ2Yr", "validateOnly": false}' \
    'TPfipD67' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AdminVerifyAccountV3' test.out

#- 154 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'jI2hiZkr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'GetUserVerificationCode' test.out

#- 155 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'tLnh2U1R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminGetUserDeletionStatusV3' test.out

#- 156 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"enabled": false}' \
    'MxkfNMPN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'AdminUpdateUserDeletionStatusV3' test.out

#- 157 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "tqv2TMz1", "country": "b7SnzkXO", "dateOfBirth": "ek83Igm1", "displayName": "wkSWsYvA", "emailAddress": "su18obUd", "password": "c8mbvXcw", "validateOnly": false}' \
    'gMqOXMzi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'AdminUpgradeHeadlessAccountV3' test.out

#- 158 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'XrVdsEc3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminDeleteUserInformationV3' test.out

#- 159 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'ClFP3mJw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminGetUserLoginHistoriesV3' test.out

#- 160 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 40, "Resource": "sCBTe4kL", "SchedAction": 5, "SchedCron": "uqL40NYg", "SchedRange": ["ekRavpaG"]}]}' \
    'TA9BTyCC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserPermissionV3' test.out

#- 161 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 49, "Resource": "N4Fw9i6m", "SchedAction": 68, "SchedCron": "2W3tjjCq", "SchedRange": ["PVyYs01h"]}]}' \
    'EYzWw3qr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminAddUserPermissionsV3' test.out

#- 162 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 4, "Resource": "xM0DPAXQ"}]' \
    'BNMP7j3x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminDeleteUserPermissionBulkV3' test.out

#- 163 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '11' \
    'PaoZaWFs' \
    'pkU5kn6P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AdminDeleteUserPermissionV3' test.out

#- 164 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'lPqD4Agf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserPlatformAccountsV3' test.out

#- 165 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'asBfclBh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminGetListJusticePlatformAccounts' test.out

#- 166 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    'ZjZbLnmg' \
    'hKwPyVIn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminGetUserMapping' test.out

#- 167 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    '3qaHP7KN' \
    'ulyfrENV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminCreateJusticeUser' test.out

#- 168 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "QkpcaWHf", "platformUserId": "6T2xOOlj"}' \
    'n7c6c9ef' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminLinkPlatformAccount' test.out

#- 169 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "JI02TZxr"}' \
    'gLBFJEkp' \
    'hFz0h6Wp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminPlatformUnlinkV3' test.out

#- 170 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'oVpVc2HB' \
    'Bmj6cEi0' \
    '2hXl42ub' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminPlatformLinkV3' test.out

#- 171 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["CRfy4GjK"]' \
    'n5ItHXLD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminDeleteUserRolesV3' test.out

#- 172 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "ZqpRhqnR", "roleId": "742GcbLu"}]' \
    'QOGMOEzm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminSaveUserRoleV3' test.out

#- 173 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    'djNhT0S4' \
    '6kqyfMBS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminAddUserRoleV3' test.out

#- 174 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'aZc4SA16' \
    'M8gQCD7a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminDeleteUserRoleV3' test.out

#- 175 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": true, "reason": "HWCYevNk"}' \
    'fcQvl4Os' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminUpdateUserStatusV3' test.out

#- 176 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'o7tx65zX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 177 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "CiTfjorL"}' \
    'FqTmIUFU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminUpdateClientSecretV3' test.out

#- 178 AdminGetRolesV3
$PYTHON -m $MODULE 'iam-admin-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminGetRolesV3' test.out

#- 179 AdminCreateRoleV3
$PYTHON -m $MODULE 'iam-admin-create-role-v3' \
    '{"adminRole": false, "deletable": false, "isWildcard": false, "managers": [{"displayName": "HBI13SZF", "namespace": "Hfm0F8vS", "userId": "2BrZ3nq8"}], "members": [{"displayName": "8YSSD7zV", "namespace": "0C8FvVU3", "userId": "kRXBGPXI"}], "permissions": [{"action": 6, "resource": "ft1biZHu", "schedAction": 15, "schedCron": "WyFPHdXc", "schedRange": ["yvZEhYeU"]}], "roleName": "Sy5Ukc65"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminCreateRoleV3' test.out

#- 180 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'naP11R8X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AdminGetRoleV3' test.out

#- 181 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'ww9vq9nM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminDeleteRoleV3' test.out

#- 182 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": false, "isWildcard": true, "roleName": "tgwyuf2f"}' \
    'jV30SLxi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateRoleV3' test.out

#- 183 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    '7uyhaeFt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminGetRoleAdminStatusV3' test.out

#- 184 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'cO9XNy63' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminUpdateAdminRoleStatusV3' test.out

#- 185 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'QO9vW0ck' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminRemoveRoleAdminV3' test.out

#- 186 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    '7TEDE8Le' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminGetRoleManagersV3' test.out

#- 187 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "EQBeGPLi", "namespace": "E6tHCr0G", "userId": "PFvT0SAK"}]}' \
    '91y5vCeB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminAddRoleManagersV3' test.out

#- 188 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "IJq0B9Uc", "namespace": "I6c5cre9", "userId": "ealHOZph"}]}' \
    'cLncnjnm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminRemoveRoleManagersV3' test.out

#- 189 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'yU8FSxXd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminGetRoleMembersV3' test.out

#- 190 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "CrskoFqn", "namespace": "owq9Laz1", "userId": "GLt5Mhf8"}]}' \
    'Z7ahmbVP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminAddRoleMembersV3' test.out

#- 191 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "m2g7xAFf", "namespace": "RRLUjfWS", "userId": "9sftIfHG"}]}' \
    'e5bUTSXO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminRemoveRoleMembersV3' test.out

#- 192 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 42, "resource": "12PMcRO6", "schedAction": 60, "schedCron": "2Mkre5q7", "schedRange": ["FvaACp6h"]}]}' \
    'e0fzjkPN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminUpdateRolePermissionsV3' test.out

#- 193 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 79, "resource": "S0BfgF6i", "schedAction": 26, "schedCron": "IRsZ5hrq", "schedRange": ["NzVszGVP"]}]}' \
    '5P1iwhcf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminAddRolePermissionsV3' test.out

#- 194 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["30C1KHRZ"]' \
    'HMGy5vbf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminDeleteRolePermissionsV3' test.out

#- 195 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '43' \
    'YIFFctEK' \
    'OLxSRxe0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminDeleteRolePermissionV3' test.out

#- 196 AdminGetMyUserV3
$PYTHON -m $MODULE 'iam-admin-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminGetMyUserV3' test.out

#- 197 UserAuthenticationV3
$PYTHON -m $MODULE 'iam-user-authentication-v3' \
    'wmWBMcNi' \
    'WoobB6o6' \
    'alTQcP0E' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 197 'UserAuthenticationV3' test.out

#- 198 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    'pE9wGNVw' \
    'kgfJJ2HI' \
    'alfzgRpT' \
    'f9lxF1JP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'AuthenticationWithPlatformLinkV3' test.out

#- 199 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    'BizXZtrG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 200 GetCountryLocationV3
$PYTHON -m $MODULE 'iam-get-country-location-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'GetCountryLocationV3' test.out

#- 201 Logout
$PYTHON -m $MODULE 'iam-logout' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'Logout' test.out

#- 202 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'e8LyOH24' \
    'nneZHFeR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 203 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    'ld0bGA7J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'RevokeUserV3' test.out

#- 204 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    'xWYzaEai' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 204 'AuthorizeV3' test.out

#- 205 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'vokcWX59' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 205 'TokenIntrospectionV3' test.out

#- 206 GetJWKSV3
$PYTHON -m $MODULE 'iam-get-jwksv3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'GetJWKSV3' test.out

#- 207 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    'kwiYHgHT' \
    '6Ivd0fGp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'Change2faMethod' test.out

#- 208 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    'U209nVRc' \
    'lumQTFvr' \
    '5rRyYzaN' \
    'False' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'Verify2faCode' test.out

#- 209 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'z3PjMx2T' \
    '89NTrFRU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 210 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'CXFkruxe' \
    'gpkcXCfz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'AuthCodeRequestV3' test.out

#- 211 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'gcvv0WE5' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 211 'PlatformTokenGrantV3' test.out

#- 212 GetRevocationListV3
$PYTHON -m $MODULE 'iam-get-revocation-list-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'GetRevocationListV3' test.out

#- 213 TokenRevocationV3
$PYTHON -m $MODULE 'iam-token-revocation-v3' \
    'EQhcomPS' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 213 'TokenRevocationV3' test.out

#- 214 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'refresh_token' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 214 'TokenGrantV3' test.out

#- 215 VerifyTokenV3
$PYTHON -m $MODULE 'iam-verify-token-v3' \
    '7cpsLgr2' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 215 'VerifyTokenV3' test.out

#- 216 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'zEnjyRNj' \
    'EC3FMDcZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'PlatformAuthenticationV3' test.out

#- 217 PublicGetInputValidations
$PYTHON -m $MODULE 'iam-public-get-input-validations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'PublicGetInputValidations' test.out

#- 218 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-public-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 219 RetrieveActiveOIDCClientsPublicV3
$PYTHON -m $MODULE 'iam-retrieve-active-oidc-clients-public-v3' \
    'vwwf8aU9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 220 PublicListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["8In31mF4"]}' \
    'jlwKyGxT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 221 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    'F1l5q1Np' \
    '0sT1X8J2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'PublicGetUserByPlatformUserIDV3' test.out

#- 222 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    'eAWOzjmh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'PublicGetAsyncStatus' test.out

#- 223 PublicSearchUserV3
$PYTHON -m $MODULE 'iam-public-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'PublicSearchUserV3' test.out

#- 224 PublicCreateUserV3
$PYTHON -m $MODULE 'iam-public-create-user-v3' \
    '{"PasswordMD5Sum": "9UzIfnho", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "6xUmTleU", "policyId": "nJFM7Xho", "policyVersionId": "DxGik2JS"}], "authType": "fZ64wWeP", "code": "q6103PON", "country": "KIS7F9em", "dateOfBirth": "W4R15tAs", "displayName": "iG31CEyU", "emailAddress": "OuOZhmnH", "password": "kvek6Aa5", "reachMinimumAge": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'PublicCreateUserV3' test.out

#- 225 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'Nnoclxs9' \
    'kxcvIpV7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'CheckUserAvailability' test.out

#- 226 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["mCYfWKjY"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'PublicBulkGetUsers' test.out

#- 227 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "9CsQYsGy", "languageTag": "hEOntEke"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'PublicSendRegistrationCode' test.out

#- 228 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "dM1A0bFq", "emailAddress": "vjxbT3Yu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'PublicVerifyRegistrationCode' test.out

#- 229 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "VdaBN5RS", "languageTag": "jhcjuDvN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'PublicForgotPasswordV3' test.out

#- 230 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    'rXL845jf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'GetAdminInvitationV3' test.out

#- 231 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "5tZ0hqJL", "policyId": "jQUmoYUn", "policyVersionId": "C849OBNu"}], "authType": "EMAILPASSWD", "country": "ofGAAaMp", "dateOfBirth": "BQArU4RS", "displayName": "0FQRy5Qz", "password": "5VcyfBpH", "reachMinimumAge": false}' \
    'tvFwKSJy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'CreateUserFromInvitationV3' test.out

#- 232 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "Zeqvpevc", "country": "VXTxs9LT", "dateOfBirth": "orIyx23L", "displayName": "hLy7ds3g", "languageTag": "3BuHTPF1", "userName": "9dBYFws5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'UpdateUserV3' test.out

#- 233 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "Ya4eOwWq", "country": "W8HiLpTi", "dateOfBirth": "1W63Hccg", "displayName": "M5kYu36J", "languageTag": "pTL55W4w", "userName": "s3KCyplY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'PublicPartialUpdateUserV3' test.out

#- 234 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "1ocKDCVa", "emailAddress": "qrVeegT3", "languageTag": "uGDIIcvu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'PublicSendVerificationCodeV3' test.out

#- 235 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "uokt8TC3", "contactType": "8mYoUanQ", "languageTag": "T4Mmznv7", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'PublicUserVerificationV3' test.out

#- 236 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "2jthibge", "country": "CLX41qyO", "dateOfBirth": "iLgd8Wy7", "displayName": "39QHzw0T", "emailAddress": "Ezpd7TV5", "password": "vhMM2i3D", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'PublicUpgradeHeadlessAccountV3' test.out

#- 237 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "tfI7TzC3", "password": "sKmtsyEK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'PublicVerifyHeadlessAccountV3' test.out

#- 238 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "dO6HNm3z", "newPassword": "Gu71qTSS", "oldPassword": "JEbWlETp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'PublicUpdatePasswordV3' test.out

#- 239 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    '9XOCA1X3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'PublicCreateJusticeUser' test.out

#- 240 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'HHMTlakA' \
    'WQfBuBAO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'PublicPlatformLinkV3' test.out

#- 241 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "CjBfYCcp"}' \
    'lye2GaPN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'PublicPlatformUnlinkV3' test.out

#- 242 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'zkrgBH4i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'PublicPlatformUnlinkAllV3' test.out

#- 243 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    'cml6L36V' \
    'g2F2Q9aZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'PublicForcePlatformLinkV3' test.out

#- 244 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'DJg1OT81' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'PublicWebLinkPlatform' test.out

#- 245 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    '09ot70Te' \
    'vJgsb2Py' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'PublicWebLinkPlatformEstablish' test.out

#- 246 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "FfJ6qcHA", "emailAddress": "BdGtV9jA", "newPassword": "Pqon7UmL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'ResetPasswordV3' test.out

#- 247 PublicGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-public-get-user-by-user-id-v3' \
    'Ny9PkF9S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'PublicGetUserByUserIdV3' test.out

#- 248 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    'nlbWNcAx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'PublicGetUserBanHistoryV3' test.out

#- 249 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'v8uHDqJt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 250 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    'YC7rznwN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'PublicGetUserInformationV3' test.out

#- 251 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'dLhqXvXV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'PublicGetUserLoginHistoriesV3' test.out

#- 252 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'njvc0BMe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'PublicGetUserPlatformAccountsV3' test.out

#- 253 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "gJpW1Zeu", "platformUserId": "hpLX1BHZ"}' \
    '4hnOmmyX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'PublicLinkPlatformAccount' test.out

#- 254 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["u6XtjNCq"], "requestId": "Yk9TPUKc"}' \
    'DTfR7dpU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'PublicForceLinkPlatformWithProgression' test.out

#- 255 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    'Eo2Oe08H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'PublicGetPublisherUserV3' test.out

#- 256 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'peJBfG0n' \
    'GZHe5lw2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 257 PublicGetRolesV3
$PYTHON -m $MODULE 'iam-public-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'PublicGetRolesV3' test.out

#- 258 PublicGetRoleV3
$PYTHON -m $MODULE 'iam-public-get-role-v3' \
    'TlkPIxL9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'PublicGetRoleV3' test.out

#- 259 PublicGetMyUserV3
$PYTHON -m $MODULE 'iam-public-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'PublicGetMyUserV3' test.out

#- 260 PublicSendVerificationLinkV3
$PYTHON -m $MODULE 'iam-public-send-verification-link-v3' \
    '{"languageTag": "v4fpCd0U"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'PublicSendVerificationLinkV3' test.out

#- 261 PublicVerifyUserByLinkV3
$PYTHON -m $MODULE 'iam-public-verify-user-by-link-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'PublicVerifyUserByLinkV3' test.out

#- 262 PlatformAuthenticateSAMLV3Handler
$PYTHON -m $MODULE 'iam-platform-authenticate-samlv3-handler' \
    'k5h1kP1p' \
    'kkT08Cs6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'PlatformAuthenticateSAMLV3Handler' test.out

#- 263 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'DdXZWowB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'LoginSSOClient' test.out

#- 264 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'gZizMvwH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'LogoutSSOClient' test.out

#- 265 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"count": 37}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'AdminCreateTestUsersV4' test.out

#- 266 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["zf84MAma"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'AdminBulkCheckValidUserIDV4' test.out

#- 267 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "yJJ6vzDT", "country": "XxsyIaTg", "dateOfBirth": "p0pwnEJL", "displayName": "15kxO4oV", "languageTag": "UPng5JsH", "userName": "AkI47jO1"}' \
    'wuAFuZcU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'AdminUpdateUserV4' test.out

#- 268 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "wPteKdQg", "emailAddress": "UTF33fYW"}' \
    'ZfQMAnzi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'AdminUpdateUserEmailAddressV4' test.out

#- 269 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    'ThaE2btn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'AdminDisableUserMFAV4' test.out

#- 270 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    '0up9GeTQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'AdminListUserRolesV4' test.out

#- 271 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["7XymDSQN"], "roleId": "YXNEpZyF"}' \
    'hIeqiNHt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'AdminUpdateUserRoleV4' test.out

#- 272 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["VSnhxby8"], "roleId": "F6xF8Mhb"}' \
    'JAYEDN1x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'AdminAddUserRoleV4' test.out

#- 273 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["szppR69n"], "roleId": "sKAS5zKs"}' \
    'TRXd7b3v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'AdminRemoveUserRoleV4' test.out

#- 274 AdminGetRolesV4
$PYTHON -m $MODULE 'iam-admin-get-roles-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'AdminGetRolesV4' test.out

#- 275 AdminCreateRoleV4
$PYTHON -m $MODULE 'iam-admin-create-role-v4' \
    '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "r06ojUto"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'AdminCreateRoleV4' test.out

#- 276 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'VJLGXeko' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'AdminGetRoleV4' test.out

#- 277 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'mvwD849m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'AdminDeleteRoleV4' test.out

#- 278 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "DZYrYEf1"}' \
    'xYnlxHHX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'AdminUpdateRoleV4' test.out

#- 279 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 18, "resource": "FoXtwKW6", "schedAction": 52, "schedCron": "OnqnWCuX", "schedRange": ["MWqG8fNp"]}]}' \
    'rJx82nAF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'AdminUpdateRolePermissionsV4' test.out

#- 280 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 8, "resource": "xNou1Aic", "schedAction": 37, "schedCron": "QjKx5Lje", "schedRange": ["tHEw0aCQ"]}]}' \
    'pU6EGOW0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'AdminAddRolePermissionsV4' test.out

#- 281 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["VAI87DPH"]' \
    '0fLLiUqz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'AdminDeleteRolePermissionsV4' test.out

#- 282 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'ay0gET8T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'AdminListAssignedUsersV4' test.out

#- 283 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["53yEej7D"], "namespace": "sqsTvNKA", "userId": "XqfqMJHG"}' \
    'eHaN2k1E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'AdminAssignUserToRoleV4' test.out

#- 284 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "utm9AAWD", "userId": "cDv3ISBg"}' \
    'ZCAf2pWO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'AdminRevokeUserFromRoleV4' test.out

#- 285 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "Ws4I2lOH", "country": "fiu4HraK", "dateOfBirth": "YMtgBmvC", "displayName": "HMtF15a7", "languageTag": "T0Iheywi", "userName": "PE1WUR1P"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'AdminUpdateMyUserV4' test.out

#- 286 AdminDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'AdminDisableMyAuthenticatorV4' test.out

#- 287 AdminEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'AdminEnableMyAuthenticatorV4' test.out

#- 288 AdminGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-admin-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 289 AdminGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'AdminGetMyBackupCodesV4' test.out

#- 290 AdminGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'AdminGenerateMyBackupCodesV4' test.out

#- 291 AdminDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'AdminDisableMyBackupCodesV4' test.out

#- 292 AdminDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'AdminDownloadMyBackupCodesV4' test.out

#- 293 AdminEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'AdminEnableMyBackupCodesV4' test.out

#- 294 AdminGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-admin-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'AdminGetMyEnabledFactorsV4' test.out

#- 295 AdminMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-admin-make-factor-my-default-v4' \
    'TFfJJ46k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'AdminMakeFactorMyDefaultV4' test.out

#- 296 AdminInviteUserV4
$PYTHON -m $MODULE 'iam-admin-invite-user-v4' \
    '{"assignedNamespaces": ["zfqapbBy"], "emailAddresses": ["IKoYzYtT"], "isAdmin": true, "roleId": "3nFCDgWO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'AdminInviteUserV4' test.out

#- 297 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "z3yPQfqb", "policyId": "eVG7i4VT", "policyVersionId": "AhuFYhEg"}], "authType": "EMAILPASSWD", "country": "b9Hni6lD", "dateOfBirth": "Mj9gvkBc", "displayName": "QjQ56RuA", "emailAddress": "vUlMWp8W", "password": "GpZxCe0K", "passwordMD5Sum": "smXtGBbK", "username": "rV58TITh", "verified": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'PublicCreateTestUserV4' test.out

#- 298 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "BCjirw4h", "policyId": "mfMSl2bE", "policyVersionId": "TuFLFOfd"}], "authType": "EMAILPASSWD", "code": "0yRndbO7", "country": "8R8ybYsH", "dateOfBirth": "x3BIgGuo", "displayName": "817lZA58", "emailAddress": "OI2LMYRX", "password": "16nfCJ83", "passwordMD5Sum": "3JKRNcdp", "reachMinimumAge": true, "username": "CxSDFWMV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'PublicCreateUserV4' test.out

#- 299 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "sOZlS0ul", "policyId": "erU61drw", "policyVersionId": "LngbZxOG"}], "authType": "EMAILPASSWD", "country": "FwnmB60e", "dateOfBirth": "a7XItZS8", "displayName": "KIu9T604", "password": "oPajgySh", "reachMinimumAge": true, "username": "LB7pQLZi"}' \
    'WVmc8PVw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'CreateUserFromInvitationV4' test.out

#- 300 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "ShVQz7FY", "country": "3h2oVVSc", "dateOfBirth": "Vv3YTBM4", "displayName": "teOpqevs", "languageTag": "WvMhiheE", "userName": "2KM7Ctal"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'PublicUpdateUserV4' test.out

#- 301 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "5z7hLiOY", "emailAddress": "z1jFfu1y"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'PublicUpdateUserEmailAddressV4' test.out

#- 302 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "1d77D8ZN", "country": "OfHyenhb", "dateOfBirth": "RZ4a9Ujj", "displayName": "jU0EggYL", "emailAddress": "cGiEDZbD", "password": "l9ZeZH3M", "reachMinimumAge": true, "username": "0FhdKDEf", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 303 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "aO0AYSqv", "password": "cV2LqfgC", "username": "X28Je4ky"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'PublicUpgradeHeadlessAccountV4' test.out

#- 304 PublicDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'PublicDisableMyAuthenticatorV4' test.out

#- 305 PublicEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'PublicEnableMyAuthenticatorV4' test.out

#- 306 PublicGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-public-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 307 PublicGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'PublicGetMyBackupCodesV4' test.out

#- 308 PublicGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'PublicGenerateMyBackupCodesV4' test.out

#- 309 PublicDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'PublicDisableMyBackupCodesV4' test.out

#- 310 PublicDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'PublicDownloadMyBackupCodesV4' test.out

#- 311 PublicEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'PublicEnableMyBackupCodesV4' test.out

#- 312 PublicRemoveTrustedDeviceV4
$PYTHON -m $MODULE 'iam-public-remove-trusted-device-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'PublicRemoveTrustedDeviceV4' test.out

#- 313 PublicGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-public-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'PublicGetMyEnabledFactorsV4' test.out

#- 314 PublicMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-public-make-factor-my-default-v4' \
    'PQjgDJNO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'PublicMakeFactorMyDefaultV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
