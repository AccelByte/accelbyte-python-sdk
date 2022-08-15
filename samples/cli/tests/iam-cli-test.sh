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
iam-get-admin-users-by-role-id --login_with_auth "Bearer foo"
iam-get-user-information 'FtBxyZcD' --login_with_auth "Bearer foo"
iam-get-user-login-histories 'XBpGlsQu' --login_with_auth "Bearer foo"
iam-get-user-platform-accounts 'Ju8vMf0I' --login_with_auth "Bearer foo"
iam-get-user-mapping 'sJkTrd8I' 'DcV2zXnT' --login_with_auth "Bearer foo"
iam-platform-link 'KjXY1bPq' 'amiBxx9C' 's18EY84e' --login_with_auth "Bearer foo"
iam-platform-unlink 'kItqRzHU' '1oh570KQ' --login_with_auth "Bearer foo"
iam-upgrade-headless-account '{"LoginID": "BVaewc72", "Password": "krSha68n"}' '3Ynozp1C' --login_with_auth "Bearer foo"
iam-upgrade-headless-account-with-verification-code '{"Code": "2KmIQTuB", "Password": "dNEUsxFb", "loginId": "8CJ17M7D"}' 'JZaMSxEC' --login_with_auth "Bearer foo"
iam-admin-get-age-restriction-status-v2 --login_with_auth "Bearer foo"
iam-admin-update-age-restriction-config-v2 '{"AgeRestriction": 2, "Enable": false}' --login_with_auth "Bearer foo"
iam-get-list-country-age-restriction --login_with_auth "Bearer foo"
iam-update-country-age-restriction '{"AgeRestriction": 49}' 'gyoarORo' --login_with_auth "Bearer foo"
iam-admin-search-users-v2 'eNHSb8Rh' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v2 '3kgs9qqJ' --login_with_auth "Bearer foo"
iam-admin-update-user-v2 '{"Country": "bnQsoBgi", "DateOfBirth": "VpP8Cm3y", "DisplayName": "vASUoxdx", "LanguageTag": "xFqmAGTJ"}' '8IEdagEt' --login_with_auth "Bearer foo"
iam-admin-ban-user-v2 '{"ban": "p4w29KOu", "comment": "9c19R6XD", "endDate": "qWHkkP8n", "reason": "pLEKMfji", "skipNotif": false}' 'pkVZk3Ia' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v2 'QYEmqGod' --login_with_auth "Bearer foo"
iam-admin-disable-user-v2 '{"Reason": "OEGt9gPO"}' 'j0c6i0Jk' --login_with_auth "Bearer foo"
iam-admin-enable-user-v2 'vIas73uc' --login_with_auth "Bearer foo"
iam-admin-reset-password-v2 '{"LanguageTag": "YnFAJ3DK", "NewPassword": "5T4Eogg0", "OldPassword": "Y39UoYlp"}' 'v5bVAgts' --login_with_auth "Bearer foo"
iam-admin-delete-platform-link-v2 'DhUTDUsc' 'bQDjbTQu' --login_with_auth "Bearer foo"
iam-admin-put-user-roles-v2 '["PMz2PTRl"]' 'kyU89ZPO' --login_with_auth "Bearer foo"
iam-admin-create-user-roles-v2 '["w6zPFJ42"]' 'cwmzBBSM' --login_with_auth "Bearer foo"
iam-public-get-country-age-restriction 'NcoAAOjK' --login_with_auth "Bearer foo"
iam-public-create-user-v2 '{"AuthType": "NjfcYHm0", "Country": "93aYgBU1", "DisplayName": "sqjyK0XH", "LoginId": "45PaRSOF", "Password": "QBtu23RE", "PasswordMD5Sum": "Z8hRVX7L"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v2 '{"Context": "GOvDdYiQ", "LanguageTag": "S9i7mV1C", "LoginID": "91pjG9gp"}' --login_with_auth "Bearer foo"
iam-public-reset-password-v2 '{"Code": "xL6ycTQd", "LoginID": "vln2LAuS", "NewPassword": "QWEXL6LF"}' --login_with_auth "Bearer foo"
iam-public-get-user-by-user-idv2 'E1YHo9m1' --login_with_auth "Bearer foo"
iam-public-update-user-v2 '{"Country": "26ZWc8hH", "DateOfBirth": "tWvbNYqg", "DisplayName": "UqslArFP", "LanguageTag": "iHUIvaCv"}' '8kU9dBBp' --login_with_auth "Bearer foo"
iam-public-get-user-ban 'dsJLhsVy' --login_with_auth "Bearer foo"
iam-public-update-password-v2 '{"LanguageTag": "Exrkxoot", "NewPassword": "0B7WOfer", "OldPassword": "cZdpMci3"}' '7Ds7YSfE' --login_with_auth "Bearer foo"
iam-get-list-justice-platform-accounts 'xaI3uzLt' --login_with_auth "Bearer foo"
iam-public-platform-link-v2 'eMbFAlt4' 'hr7HmOYi' 'BA5ltAOX' --login_with_auth "Bearer foo"
iam-public-delete-platform-link-v2 'mlG6eh1d' 'TdoTFpBI' --login_with_auth "Bearer foo"
iam-admin-get-bans-type-v3 --login_with_auth "Bearer foo"
iam-admin-get-list-ban-reason-v3 --login_with_auth "Bearer foo"
iam-admin-get-input-validations --login_with_auth "Bearer foo"
iam-admin-update-input-validations '[{"field": "cuC1dQY9", "validation": {"allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "description": [{"language": "8ldz7Hu8", "message": ["AD79kdWu"]}], "isCustomRegex": false, "letterCase": "vizU0q1p", "maxLength": 66, "maxRepeatingAlphaNum": 49, "maxRepeatingSpecialCharacter": 15, "minCharType": 15, "minLength": 61, "regex": "RoGgdrys", "specialCharacterLocation": "MizBGSRd", "specialCharacters": ["P2l7DNSZ"]}}]' --login_with_auth "Bearer foo"
iam-admin-reset-input-validations '8Aq0XiPL' --login_with_auth "Bearer foo"
iam-list-admins-v3 --login_with_auth "Bearer foo"
iam-admin-get-age-restriction-status-v3 --login_with_auth "Bearer foo"
iam-admin-update-age-restriction-config-v3 '{"ageRestriction": 85, "enable": false}' --login_with_auth "Bearer foo"
iam-admin-get-list-country-age-restriction-v3 --login_with_auth "Bearer foo"
iam-admin-update-country-age-restriction-v3 '{"ageRestriction": 7}' 'dOGTMlJj' --login_with_auth "Bearer foo"
iam-admin-get-banned-users-v3 --login_with_auth "Bearer foo"
iam-admin-get-bans-type-with-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-get-clients-by-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-create-client-v3 '{"audiences": ["Bwj9HJHQ"], "baseUri": "KseEdSXR", "clientId": "DSvguauw", "clientName": "1xT7eMwS", "clientPermissions": [{"action": 22, "resource": "9MLH0NnT", "schedAction": 70, "schedCron": "2ulNzBvw", "schedRange": ["JaQa547J"]}], "clientPlatform": "llvA8RWS", "deletable": false, "namespace": "abUt7xk6", "oauthClientType": "QxyWhfqo", "redirectUri": "WfJw2o8o", "secret": "WUqvPCZ2"}' --login_with_auth "Bearer foo"
iam-admin-get-clientsby-namespaceby-idv3 'HzT7NXmW' --login_with_auth "Bearer foo"
iam-admin-delete-client-v3 'DlXsuNId' --login_with_auth "Bearer foo"
iam-admin-update-client-v3 '{"audiences": ["QJR5lsNO"], "baseUri": "lvkfwaSb", "clientName": "nsuLCgTo", "clientPermissions": [{"action": 47, "resource": "uVTekJgv", "schedAction": 13, "schedCron": "6h5HIpH0", "schedRange": ["DviplEk4"]}], "clientPlatform": "vj3LDp4y", "deletable": true, "namespace": "Dt8QUZDp", "redirectUri": "xlHasinG"}' 'cjrkmRMt' --login_with_auth "Bearer foo"
iam-admin-update-client-permission-v3 '{"permissions": [{"action": 39, "resource": "gjDSaIVB"}]}' 'mft3Udg7' --login_with_auth "Bearer foo"
iam-admin-add-client-permissions-v3 '{"permissions": [{"action": 30, "resource": "9PGmY2H5"}]}' 'kX4MsisS' --login_with_auth "Bearer foo"
iam-admin-delete-client-permission-v3 '98' '28nARxWR' 'pv5ou5xt' --login_with_auth "Bearer foo"
iam-retrieve-all-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-sso-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-third-party-login-platform-credential-v3 'vd28OUfC' --login_with_auth "Bearer foo"
iam-add-third-party-login-platform-credential-v3 '{"ACSURL": "t8UJC5fl", "AWSCognitoRegion": "Nyj6HsTt", "AWSCognitoUserPool": "X8P3llna", "AllowedClients": ["aS9lqyyg"], "AppId": "PcfkJIxf", "AuthorizationEndpoint": "QZza8kNV", "ClientId": "bDxVMq7H", "Environment": "Jk0F89xA", "FederationMetadataURL": "c3YVfaEN", "GenericOauthFlow": true, "IsActive": true, "Issuer": "l0pTKZTX", "JWKSEndpoint": "qzHuBMYQ", "KeyID": "SA2jz1ZO", "NetflixCertificates": {"encryptedPrivateKey": "pdOjSyMd", "encryptedPrivateKeyName": "dB41JuMf", "publicCertificate": "7RUyBHRj", "publicCertificateName": "8IiRimRl", "rootCertificate": "lHT6Dc40", "rootCertificateName": "vFFA6gpU"}, "OrganizationId": "7EW3x1dC", "PlatformName": "pm55gOeq", "RedirectUri": "QIqcJVKm", "RegisteredDomains": [{"affectedClientIDs": ["BM1J1Ibu"], "domain": "TrrkbmuT", "namespaces": ["1whOqmEn"], "roleId": "DXIWrBPl"}], "Secret": "Say46mv7", "TeamID": "1BAZAOjt", "TokenAuthenticationType": "FJ2vmTj7", "TokenClaimsMapping": {"tT7TZHWD": "dCkIsZoA"}, "TokenEndpoint": "rWwPHcyF"}' 'AdAtYciL' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-credential-v3 'IgRwFRr0' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-credential-v3 '{"ACSURL": "gwB9tz3v", "AWSCognitoRegion": "p99XVlV8", "AWSCognitoUserPool": "rK3tE6n0", "AllowedClients": ["smip1tw3"], "AppId": "L7cUd9pq", "AuthorizationEndpoint": "tv6JfPZw", "ClientId": "cCVOXcVa", "Environment": "80TmCwtD", "FederationMetadataURL": "2lAH01o6", "GenericOauthFlow": false, "IsActive": false, "Issuer": "BIgzrDyW", "JWKSEndpoint": "pFBYGmmB", "KeyID": "awMyoKyN", "NetflixCertificates": {"encryptedPrivateKey": "pdAasm8x", "encryptedPrivateKeyName": "wUfzOlQi", "publicCertificate": "ZY4NbOQX", "publicCertificateName": "J7uOTzNM", "rootCertificate": "vuq2tNl4", "rootCertificateName": "CX4IjiK4"}, "OrganizationId": "DEUJRVK3", "PlatformName": "l9Eb0R1X", "RedirectUri": "Rb0RH8vS", "RegisteredDomains": [{"affectedClientIDs": ["1smeOlng"], "domain": "rdTXCzaP", "namespaces": ["BtkZMio4"], "roleId": "wcyhloVS"}], "Secret": "3rYp8Qtc", "TeamID": "EmCEVc75", "TokenAuthenticationType": "UfeypWjD", "TokenClaimsMapping": {"NhzCL5sW": "S2qwO763"}, "TokenEndpoint": "iEklkzLm"}' '88LpLuYR' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-domain-v3 '{"affectedClientIDs": ["O3C55yHp"], "assignedNamespaces": ["wK2Jaqen"], "domain": "DGn7a2NU", "roleId": "plWiLjq0"}' '6n6a0rW8' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-domain-v3 '{"domain": "EfkpaXtw"}' 'YZJaQ4Wb' --login_with_auth "Bearer foo"
iam-retrieve-sso-login-platform-credential 'wNmsFYet' --login_with_auth "Bearer foo"
iam-add-sso-login-platform-credential '{"acsUrl": "jEurH8el", "apiKey": "oJzNKtRU", "appId": "aTz1ETds", "federationMetadataUrl": "mwzjkkn9", "isActive": false, "redirectUri": "iQl05g7c", "secret": "O3ZMb6Oj", "ssoUrl": "lo6DMNpP"}' '2qMrTQ1U' --login_with_auth "Bearer foo"
iam-delete-sso-login-platform-credential-v3 'pjfU6wJh' --login_with_auth "Bearer foo"
iam-update-sso-platform-credential '{"acsUrl": "y1jOVkkU", "apiKey": "lS79527E", "appId": "Z25Ia8uC", "federationMetadataUrl": "eZFlLtEV", "isActive": false, "redirectUri": "DAEbA82j", "secret": "y74lq0pD", "ssoUrl": "E5xRwh5b"}' '45ebpcM7' --login_with_auth "Bearer foo"
iam-admin-get-user-by-platform-user-idv3 'ScSs3UOp' 'AwIp9rRt' --login_with_auth "Bearer foo"
iam-get-admin-users-by-role-id-v3 'n1PcCxdb' --login_with_auth "Bearer foo"
iam-admin-get-user-by-email-address-v3 --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-user-i-ds-v3 '{"userIds": ["umeYgOdE"]}' --login_with_auth "Bearer foo"
iam-admin-invite-user-v3 '{"emailAddresses": ["BWRQiW3K"], "isAdmin": true, "roles": ["fU8icH40"]}' --login_with_auth "Bearer foo"
iam-admin-list-users-v3 --login_with_auth "Bearer foo"
iam-admin-search-user-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-by-email-address-v3 '{"listEmailAddressRequest": ["81gRB1Gy"]}' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v3 'LfLg4RYu' --login_with_auth "Bearer foo"
iam-admin-update-user-v3 '{"avatarUrl": "EbgUDEcJ", "country": "yIvsPwOr", "dateOfBirth": "0BmV5iFv", "displayName": "fwFjTSmI", "languageTag": "EqoLyLeU", "userName": "GmomGX9s"}' 'XTZ0v8pq' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v3 'Lfc5SwGn' --login_with_auth "Bearer foo"
iam-admin-ban-user-v3 '{"ban": "ReUULDX4", "comment": "QUIbb5nh", "endDate": "68ZnyUtR", "reason": "vW9hNBSF", "skipNotif": true}' 'FrOmjkFr' --login_with_auth "Bearer foo"
iam-admin-update-user-ban-v3 '{"enabled": true, "skipNotif": true}' '8t0xF34X' 'pt6ZlTTi' --login_with_auth "Bearer foo"
iam-admin-send-verification-code-v3 '{"context": "c0kr2a0n", "emailAddress": "I2oo7UHC", "languageTag": "JK5sp0aC"}' 'vIq3aHVY' --login_with_auth "Bearer foo"
iam-admin-verify-account-v3 '{"Code": "IlewLRuH", "ContactType": "Y83bGj0H", "LanguageTag": "TeeWXlIc", "validateOnly": false}' 'dqctDpyg' --login_with_auth "Bearer foo"
iam-get-user-verification-code 'Y0ax476E' --login_with_auth "Bearer foo"
iam-admin-get-user-deletion-status-v3 'D4MMO9Tw' --login_with_auth "Bearer foo"
iam-admin-update-user-deletion-status-v3 '{"enabled": true}' 'hWIwHWTg' --login_with_auth "Bearer foo"
iam-admin-upgrade-headless-account-v3 '{"code": "zJFRYw6t", "country": "1IKZLO6V", "dateOfBirth": "4Ode46Qm", "displayName": "CidgdpP7", "emailAddress": "RTC587lm", "password": "UmBziPZB", "validateOnly": false}' 'pOfkllxf' --login_with_auth "Bearer foo"
iam-admin-delete-user-information-v3 'q0NsrSjw' --login_with_auth "Bearer foo"
iam-admin-get-user-login-histories-v3 '5Hog0blM' --login_with_auth "Bearer foo"
iam-admin-update-user-permission-v3 '{"Permissions": [{"Action": 6, "Resource": "5MStYGcz", "SchedAction": 74, "SchedCron": "INlEC0OE", "SchedRange": ["sE3yzIsU"]}]}' 'P0NjluOr' --login_with_auth "Bearer foo"
iam-admin-add-user-permissions-v3 '{"Permissions": [{"Action": 64, "Resource": "ZTzsLW7F", "SchedAction": 18, "SchedCron": "fs9nIkcZ", "SchedRange": ["38fUEanj"]}]}' 'KHbXfk1z' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-bulk-v3 '[{"Action": 47, "Resource": "dzxg0UXc"}]' 'RyHi3u8B' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-v3 '50' 'VWu1tOmh' 'UtCgcpvG' --login_with_auth "Bearer foo"
iam-admin-get-user-platform-accounts-v3 'rEbcZUDE' --login_with_auth "Bearer foo"
iam-admin-get-list-justice-platform-accounts 'xH1tayOG' --login_with_auth "Bearer foo"
iam-admin-create-justice-user 'XIHzMRjM' 'CtOJsEij' --login_with_auth "Bearer foo"
iam-admin-link-platform-account '{"platformId": "lrbpyyEc", "platformUserId": "QxVgJIjM"}' 'ZqcWfMl6' --login_with_auth "Bearer foo"
iam-admin-platform-unlink-v3 '{"platformNamespace": "dqrpD4tn"}' 'c3ZRB3Ik' 'dtPfAJEo' --login_with_auth "Bearer foo"
iam-admin-platform-link-v3 'mwenJvQ8' 'grtQSv6E' 'cALcMIPm' --login_with_auth "Bearer foo"
iam-admin-delete-user-roles-v3 '["s5bT51M4"]' 'yko8S0En' --login_with_auth "Bearer foo"
iam-admin-save-user-role-v3 '[{"namespace": "GLvGvfuS", "roleId": "yCTyjj4m"}]' 'CaiuMGKO' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v3 'F5GJJooS' 'XUl3YU35' --login_with_auth "Bearer foo"
iam-admin-delete-user-role-v3 'QHGpBABn' 'OlxDznIC' --login_with_auth "Bearer foo"
iam-admin-update-user-status-v3 '{"enabled": true, "reason": "qBg34WTt"}' 'Dkn0rtn6' --login_with_auth "Bearer foo"
iam-admin-verify-user-without-verification-code-v3 't0Yx4z12' --login_with_auth "Bearer foo"
iam-admin-update-client-secret-v3 '{"newSecret": "EaQ1rUQY"}' 'CNTiDX4j' --login_with_auth "Bearer foo"
iam-admin-get-roles-v3 --login_with_auth "Bearer foo"
iam-admin-create-role-v3 '{"adminRole": true, "deletable": true, "isWildcard": true, "managers": [{"displayName": "8QwNyOlX", "namespace": "fIWd0mcq", "userId": "5T4SUc7c"}], "members": [{"displayName": "WfCKK6Di", "namespace": "j1gFcenE", "userId": "MySPfhxB"}], "permissions": [{"action": 8, "resource": "nDiTiAqF", "schedAction": 24, "schedCron": "FKjaELmm", "schedRange": ["ll6oexId"]}], "roleName": "1OKGUN2U"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v3 'znd7uVa7' --login_with_auth "Bearer foo"
iam-admin-delete-role-v3 't14yvSYS' --login_with_auth "Bearer foo"
iam-admin-update-role-v3 '{"deletable": false, "isWildcard": false, "roleName": "fCIf4tsu"}' 'u6Pkam6t' --login_with_auth "Bearer foo"
iam-admin-get-role-admin-status-v3 'FSYFt4Zx' --login_with_auth "Bearer foo"
iam-admin-update-admin-role-status-v3 'A2PzZFRk' --login_with_auth "Bearer foo"
iam-admin-remove-role-admin-v3 'BNlg6hn5' --login_with_auth "Bearer foo"
iam-admin-get-role-managers-v3 'qusKyZAu' --login_with_auth "Bearer foo"
iam-admin-add-role-managers-v3 '{"managers": [{"displayName": "V6uUvqM0", "namespace": "lV6UZMlE", "userId": "bxHNgJRi"}]}' 'QExaunjd' --login_with_auth "Bearer foo"
iam-admin-remove-role-managers-v3 '{"managers": [{"displayName": "AqnHUz44", "namespace": "tx4O6ham", "userId": "PwNoi071"}]}' 'ezDK56JF' --login_with_auth "Bearer foo"
iam-admin-get-role-members-v3 'IGe1IMUC' --login_with_auth "Bearer foo"
iam-admin-add-role-members-v3 '{"members": [{"displayName": "LcN0DsaD", "namespace": "5FyBsFe9", "userId": "OYEJVsYf"}]}' 'fmhyx6J2' --login_with_auth "Bearer foo"
iam-admin-remove-role-members-v3 '{"members": [{"displayName": "5PrM4S3c", "namespace": "B8m17hEe", "userId": "LLgoaYth"}]}' '6zcf8eA4' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v3 '{"permissions": [{"action": 80, "resource": "MvObWejo", "schedAction": 75, "schedCron": "fGeegJMa", "schedRange": ["BGR6D1Zo"]}]}' 'ZEZQkJ8D' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v3 '{"permissions": [{"action": 88, "resource": "qFnhdKvj", "schedAction": 62, "schedCron": "CFbSFlEW", "schedRange": ["oMPdgK5z"]}]}' 'n62mhnFS' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v3 '["pCTlDNBO"]' 'cygvv2LA' --login_with_auth "Bearer foo"
iam-admin-delete-role-permission-v3 '13' 'fBGVzanb' 'KYsB0gqJ' --login_with_auth "Bearer foo"
iam-admin-get-my-user-v3 --login_with_auth "Bearer foo"
iam-user-authentication-v3 '8VhYSikJ' 'l2p9rBx8' 'N5egapqx' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-authentication-with-platform-link-v3 'Dy4cLfNj' 'zzEZYA8j' 'IkMJb7cZ' '2bPsaLLp' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v3 'EBVEMk5A' --login_with_auth "Bearer foo"
iam-get-country-location-v3 --login_with_auth "Bearer foo"
iam-logout --login_with_auth "Bearer foo"
iam-admin-retrieve-user-third-party-platform-token-v3 'sKaF2P44' 'lXkI3zdi' --login_with_auth "Bearer foo"
iam-revoke-user-v3 'RiC5IbPi' --login_with_auth "Bearer foo"
iam-authorize-v3 't71JWlYC' 'code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-introspection-v3 'i4nDfPu5' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-jwksv3 --login_with_auth "Bearer foo"
iam-change2fa-method 'V6QSYxEV' 'OryVuZYm' --login_with_auth "Bearer foo"
iam-verify2fa-code 'gUeEPB5A' 'GPgvk0Zt' 'haj0EBA4' 'False' --login_with_auth "Bearer foo"
iam-retrieve-user-third-party-platform-token-v3 'zRz0d56s' 'mobor4p1' --login_with_auth "Bearer foo"
iam-auth-code-request-v3 'PlgQB9Ec' 'NGOeBRY6' --login_with_auth "Bearer foo"
iam-platform-token-grant-v3 'G5ae07de' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-revocation-list-v3 --login_with_auth "Bearer foo"
iam-token-revocation-v3 'DLaZ8JCv' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-grant-v3 'authorization_code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-verify-token-v3 'eTfW0hgz' --login_with_auth "Bearer foo"
iam-platform-authentication-v3 'rabLJxEw' 'JrEBmQ64' --login_with_auth "Bearer foo"
iam-public-get-input-validations --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-public-v3 --login_with_auth "Bearer foo"
iam-retrieve-active-oidc-clients-public-v3 'haNOzlGu' --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["68UYyupj"]}' 'dDetnoT0' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv3 'rfWtVPwQ' 'fq6V92gb' --login_with_auth "Bearer foo"
iam-public-get-async-status 'fPouNdmP' --login_with_auth "Bearer foo"
iam-public-search-user-v3 --login_with_auth "Bearer foo"
iam-public-create-user-v3 '{"PasswordMD5Sum": "7fckVnuD", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "YIb1p5tc", "policyId": "R5z8ZJLj", "policyVersionId": "SHcaR3X4"}], "authType": "tZmwr0Qm", "code": "OnsEg49e", "country": "Xp0xQkZ2", "dateOfBirth": "JjuwWWy0", "displayName": "tU11PCeS", "emailAddress": "rvejUKwV", "password": "fF37Vr7m", "reachMinimumAge": false}' --login_with_auth "Bearer foo"
iam-check-user-availability 'DzFBI1Vw' 'hkVSKDlN' --login_with_auth "Bearer foo"
iam-public-bulk-get-users '{"userIds": ["FOUHBJsv"]}' --login_with_auth "Bearer foo"
iam-public-send-registration-code '{"emailAddress": "Tsqk9hg4", "languageTag": "hj6nUdeb"}' --login_with_auth "Bearer foo"
iam-public-verify-registration-code '{"code": "W6UskbPk", "emailAddress": "kZAk01f1"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v3 '{"emailAddress": "KxCtWADU", "languageTag": "2guN6U9w"}' --login_with_auth "Bearer foo"
iam-get-admin-invitation-v3 '13W1K9TZ' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v3 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "RLEi5wow", "policyId": "E36rfmM0", "policyVersionId": "CCs35TPU"}], "authType": "EMAILPASSWD", "country": "sY8WgwSx", "dateOfBirth": "1DI5GH9b", "displayName": "v9ZTo2Hp", "password": "A6pzjHpZ", "reachMinimumAge": true}' '9iLgRPJK' --login_with_auth "Bearer foo"
iam-update-user-v3 '{"avatarUrl": "3nBae3GO", "country": "gbQrqra0", "dateOfBirth": "PtkfvOpY", "displayName": "2ramp5ln", "languageTag": "Bn6xmBkf", "userName": "MtC66hFq"}' --login_with_auth "Bearer foo"
iam-public-partial-update-user-v3 '{"avatarUrl": "0kPOkORm", "country": "2XjlNEE5", "dateOfBirth": "ecPzAmi0", "displayName": "ySJHfPlo", "languageTag": "P1XkYK4M", "userName": "gIsDSFMP"}' --login_with_auth "Bearer foo"
iam-public-send-verification-code-v3 '{"context": "yMhyw1OL", "emailAddress": "ZPVwwxH4", "languageTag": "BIDJuDoS"}' --login_with_auth "Bearer foo"
iam-public-user-verification-v3 '{"code": "hMMftll8", "contactType": "N0VvChHz", "languageTag": "9urmt7QW", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v3 '{"code": "E8s6Uz8B", "country": "RuYWDTtL", "dateOfBirth": "6MTTRkCb", "displayName": "b9S5Q1IV", "emailAddress": "HGT88prR", "password": "EBgYOWdH", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-verify-headless-account-v3 '{"emailAddress": "mohtU13g", "password": "f7TRigNZ"}' --login_with_auth "Bearer foo"
iam-public-update-password-v3 '{"languageTag": "j5w5y3Hm", "newPassword": "K8QVOa62", "oldPassword": "eQZtbLLc"}' --login_with_auth "Bearer foo"
iam-public-create-justice-user 'F671WLtv' --login_with_auth "Bearer foo"
iam-public-platform-link-v3 '38Hecczo' 'pFmeRwpc' --login_with_auth "Bearer foo"
iam-public-platform-unlink-v3 '{"platformNamespace": "JBZyi3mL"}' 'C4KzekiS' --login_with_auth "Bearer foo"
iam-public-platform-unlink-all-v3 'zeyolnOQ' --login_with_auth "Bearer foo"
iam-public-web-link-platform 't0joVHgC' --login_with_auth "Bearer foo"
iam-public-web-link-platform-establish 'ytC6lRG9' '8YxnHbRd' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"code": "oTKKeuSj", "emailAddress": "fZe9i1os", "newPassword": "ghF1hzi1"}' --login_with_auth "Bearer foo"
iam-public-get-user-by-user-id-v3 'Nl47syJ5' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 'ibzSHZeC' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 'LIvWPVRs' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 'dEqA61yT' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 'rMgsycTg' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "mPzc20Eu", "platformUserId": "O5dMqGDl"}' 'SZPY07rE' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["VSjzHjL6"], "requestId": "ZbXjG6DS"}' 'mpp3op8h' --login_with_auth "Bearer foo"
iam-public-get-publisher-user-v3 'taRLxtW4' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 'PvFkESTU' 'Lat5F1Le' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 '7cR7q6PW' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler 'hZmmKz41' 'i1Tp78Fi' --login_with_auth "Bearer foo"
iam-login-sso-client 'pJHahViJ' --login_with_auth "Bearer foo"
iam-logout-sso-client 'vLYW0kdm' --login_with_auth "Bearer foo"
iam-admin-create-test-users-v4 '{"count": 22}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["k2luqSOO"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "A2VOZBoN", "country": "bB98PuSG", "dateOfBirth": "ykqFzPwS", "displayName": "MXT53bBu", "languageTag": "L38beOYD", "userName": "VuHZQ9LY"}' 't6w23Wf8' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "iEQo72sH", "emailAddress": "0aRdcDlD"}' 'yGcsfIuI' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 '4Dv5lEJp' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 'K1AyRlzs' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["rRXEFZiv"], "roleId": "QOHG6wVi"}' 'cNratsvv' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["HLmIohfN"], "roleId": "ISLXMDWD"}' 'dm5FE4ll' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["iQMnutJb"], "roleId": "pEo4mUNH"}' 'Ftdml2xN' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "cJc3Fm7Z"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 '548uuKgo' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 'CBqS5uId' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "Ceeq9ouE"}' 'dDtjOgsy' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 30, "resource": "Lkm2ZYew", "schedAction": 67, "schedCron": "7Zm0gnYy", "schedRange": ["j6MXf9G1"]}]}' 'ntyebvoe' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 67, "resource": "enAALKt7", "schedAction": 60, "schedCron": "fxIH446o", "schedRange": ["UnP2S74u"]}]}' 'nXwg0JKq' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["VWW1rjK1"]' 'epwkAvcs' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'YvbgfBVP' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["pTa8Yuq7"], "namespace": "TKiNXmz7", "userId": "eMrMD5Tb"}' 'aUxTCTng' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "0xjtdBrj", "userId": "s3Kiykt2"}' 'Ck2gOlSa' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "tECZ2Ugw", "country": "QLqDqYSx", "dateOfBirth": "TPuVlBqi", "displayName": "rdp3yxns", "languageTag": "ETl1SvhQ", "userName": "udsjIhXd"}' --login_with_auth "Bearer foo"
iam-admin-disable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-admin-enable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-admin-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-admin-get-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-generate-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-download-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-enable-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 'xiSoWpnn' --login_with_auth "Bearer foo"
iam-admin-invite-user-v4 '{"assignedNamespaces": ["xgX7BCPM"], "emailAddresses": ["qzQIxibh"], "isAdmin": false, "roleId": "NYsHtdB3"}' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "juaZqhJi", "policyId": "lrZkSSKg", "policyVersionId": "P5rxCR77"}], "authType": "EMAILPASSWD", "country": "5CA1GORS", "dateOfBirth": "bL9n0dbW", "displayName": "DEupmdLQ", "emailAddress": "zPnNfBAc", "password": "WArbkCfd", "passwordMD5Sum": "HIZb03ot", "username": "qmBuS9V2", "verified": false}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "Z23UHmk0", "policyId": "lpJ4JLl0", "policyVersionId": "1qi7L2oD"}], "authType": "EMAILPASSWD", "code": "VRUb39j2", "country": "2P4Sp09c", "dateOfBirth": "KmjRUbZV", "displayName": "BVS7OK2Z", "emailAddress": "rdcsckMe", "password": "kROWZ2KU", "passwordMD5Sum": "TqkK2eFa", "reachMinimumAge": false, "username": "SmEEPbLy"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "JsyUie6f", "policyId": "ZgLllUPs", "policyVersionId": "O8lg46Si"}], "authType": "EMAILPASSWD", "country": "L2w4aajD", "dateOfBirth": "AOx0iJjY", "displayName": "leaktqv2", "password": "WkljQuD5", "reachMinimumAge": false, "username": "nJONqHGq"}' '8mB7mF2l' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "MFcaghFX", "country": "JIJflRHF", "dateOfBirth": "csIqCy4x", "displayName": "DifSSQ5O", "languageTag": "n2ccEcl3", "userName": "xeiO4bwF"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "5JOjGoGx", "emailAddress": "KM3qMce5"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "tfLcpjFZ", "country": "MKCbp0pE", "dateOfBirth": "bLCLFpHx", "displayName": "MYF83607", "emailAddress": "5xEpzdnY", "password": "tpja5ig2", "reachMinimumAge": false, "username": "sQZga6Vy", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"emailAddress": "zPiQRjYa", "password": "8fv5fIt2", "username": "2tIZhjhg"}' --login_with_auth "Bearer foo"
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
iam-public-make-factor-my-default-v4 'kigW22zX' --login_with_auth "Bearer foo"
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
echo "1..309"

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
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'GetAdminUsersByRoleID' test.out

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
$PYTHON -m $MODULE 'iam-get-user-information' \
    'MWXfbcM0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetUserInformation' test.out

#- 35 DeleteUserInformation
eval_tap 0 35 'DeleteUserInformation # SKIP deprecated' test.out

#- 36 GetUserLoginHistories
$PYTHON -m $MODULE 'iam-get-user-login-histories' \
    'GIALIbFC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GetUserLoginHistories' test.out

#- 37 UpdatePassword
eval_tap 0 37 'UpdatePassword # SKIP deprecated' test.out

#- 38 SaveUserPermission
eval_tap 0 38 'SaveUserPermission # SKIP deprecated' test.out

#- 39 AddUserPermission
eval_tap 0 39 'AddUserPermission # SKIP deprecated' test.out

#- 40 DeleteUserPermission
eval_tap 0 40 'DeleteUserPermission # SKIP deprecated' test.out

#- 41 GetUserPlatformAccounts
$PYTHON -m $MODULE 'iam-get-user-platform-accounts' \
    'QgBcLNT6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetUserPlatformAccounts' test.out

#- 42 GetUserMapping
$PYTHON -m $MODULE 'iam-get-user-mapping' \
    'iOQVYx5r' \
    'W2gMsI1a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetUserMapping' test.out

#- 43 GetUserJusticePlatformAccount
eval_tap 0 43 'GetUserJusticePlatformAccount # SKIP deprecated' test.out

#- 44 PlatformLink
$PYTHON -m $MODULE 'iam-platform-link' \
    'YBitSn3U' \
    'DeKj97I4' \
    'WYXLqjN7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PlatformLink' test.out

#- 45 PlatformUnlink
$PYTHON -m $MODULE 'iam-platform-unlink' \
    'ktOBTraB' \
    'xWRTVuYE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'PlatformUnlink' test.out

#- 46 GetPublisherUser
eval_tap 0 46 'GetPublisherUser # SKIP deprecated' test.out

#- 47 SaveUserRoles
eval_tap 0 47 'SaveUserRoles # SKIP deprecated' test.out

#- 48 AddUserRole
eval_tap 0 48 'AddUserRole # SKIP deprecated' test.out

#- 49 DeleteUserRole
eval_tap 0 49 'DeleteUserRole # SKIP deprecated' test.out

#- 50 UpgradeHeadlessAccount
$PYTHON -m $MODULE 'iam-upgrade-headless-account' \
    '{"LoginID": "qGlKDwTK", "Password": "XBrXiQcd"}' \
    '9IW8kiCK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'UpgradeHeadlessAccount' test.out

#- 51 UpgradeHeadlessAccountWithVerificationCode
$PYTHON -m $MODULE 'iam-upgrade-headless-account-with-verification-code' \
    '{"Code": "eQJWZBvc", "Password": "q1ETvWBx", "loginId": "YZJh7B8g"}' \
    'bnSu9M2O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'UpgradeHeadlessAccountWithVerificationCode' test.out

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
    '{"AgeRestriction": 46, "Enable": true}' \
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
    '{"AgeRestriction": 41}' \
    'daeYpCXY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'UpdateCountryAgeRestriction' test.out

#- 84 AdminSearchUsersV2
$PYTHON -m $MODULE 'iam-admin-search-users-v2' \
    'SMiy87CT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'AdminSearchUsersV2' test.out

#- 85 AdminGetUserByUserIdV2
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v2' \
    'qEQBg36m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'AdminGetUserByUserIdV2' test.out

#- 86 AdminUpdateUserV2
$PYTHON -m $MODULE 'iam-admin-update-user-v2' \
    '{"Country": "y3sY2clr", "DateOfBirth": "Dcain0cO", "DisplayName": "VF1zHwDT", "LanguageTag": "I0sJ1Q0k"}' \
    'phMTggSP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'AdminUpdateUserV2' test.out

#- 87 AdminBanUserV2
$PYTHON -m $MODULE 'iam-admin-ban-user-v2' \
    '{"ban": "2SLcuAP7", "comment": "vU971Czw", "endDate": "2nbg8C7M", "reason": "vywhu6Mj", "skipNotif": false}' \
    'uGzo1Fz4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'AdminBanUserV2' test.out

#- 88 AdminGetUserBanV2
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v2' \
    'tU0aSn98' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'AdminGetUserBanV2' test.out

#- 89 AdminDisableUserV2
$PYTHON -m $MODULE 'iam-admin-disable-user-v2' \
    '{"Reason": "N8qOUA0z"}' \
    '92RaDe8n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'AdminDisableUserV2' test.out

#- 90 AdminEnableUserV2
$PYTHON -m $MODULE 'iam-admin-enable-user-v2' \
    'gT8LRQkM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'AdminEnableUserV2' test.out

#- 91 AdminResetPasswordV2
$PYTHON -m $MODULE 'iam-admin-reset-password-v2' \
    '{"LanguageTag": "nG1LZyF2", "NewPassword": "mdYY6ZMf", "OldPassword": "uTYTKsue"}' \
    '48qBEBNA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'AdminResetPasswordV2' test.out

#- 92 AdminDeletePlatformLinkV2
$PYTHON -m $MODULE 'iam-admin-delete-platform-link-v2' \
    'V5BTe6ec' \
    '1zA92URC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'AdminDeletePlatformLinkV2' test.out

#- 93 AdminPutUserRolesV2
$PYTHON -m $MODULE 'iam-admin-put-user-roles-v2' \
    '["LSGPmRBZ"]' \
    'WunHW7MY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'AdminPutUserRolesV2' test.out

#- 94 AdminCreateUserRolesV2
$PYTHON -m $MODULE 'iam-admin-create-user-roles-v2' \
    '["vr6QA7Pp"]' \
    'epc92HA9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'AdminCreateUserRolesV2' test.out

#- 95 PublicGetCountryAgeRestriction
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction' \
    '4eACdeyf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'PublicGetCountryAgeRestriction' test.out

#- 96 PublicCreateUserV2
$PYTHON -m $MODULE 'iam-public-create-user-v2' \
    '{"AuthType": "UpgiPpf8", "Country": "nxKJ3dnm", "DisplayName": "tPwa64Y4", "LoginId": "gPEKMhhu", "Password": "9a6f3xJN", "PasswordMD5Sum": "tUlKLlII"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'PublicCreateUserV2' test.out

#- 97 PublicForgotPasswordV2
$PYTHON -m $MODULE 'iam-public-forgot-password-v2' \
    '{"Context": "AeHbm5M6", "LanguageTag": "LsY1VMuI", "LoginID": "EcRls68M"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'PublicForgotPasswordV2' test.out

#- 98 PublicResetPasswordV2
$PYTHON -m $MODULE 'iam-public-reset-password-v2' \
    '{"Code": "3MPMRPBe", "LoginID": "pyyMz6zf", "NewPassword": "R1pvTYYt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'PublicResetPasswordV2' test.out

#- 99 PublicGetUserByUserIDV2
$PYTHON -m $MODULE 'iam-public-get-user-by-user-idv2' \
    'DOiEi4Ru' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'PublicGetUserByUserIDV2' test.out

#- 100 PublicUpdateUserV2
$PYTHON -m $MODULE 'iam-public-update-user-v2' \
    '{"Country": "EcHCSGhp", "DateOfBirth": "OZQFlwOi", "DisplayName": "uKGDFgK4", "LanguageTag": "9YuKnXks"}' \
    '0m8ANrcR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'PublicUpdateUserV2' test.out

#- 101 PublicGetUserBan
$PYTHON -m $MODULE 'iam-public-get-user-ban' \
    'al7ta3fo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'PublicGetUserBan' test.out

#- 102 PublicUpdatePasswordV2
$PYTHON -m $MODULE 'iam-public-update-password-v2' \
    '{"LanguageTag": "jA3h4MMW", "NewPassword": "3AJ5zlsF", "OldPassword": "BwjvLYvm"}' \
    'g6avudQF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'PublicUpdatePasswordV2' test.out

#- 103 GetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-get-list-justice-platform-accounts' \
    'F1CPNY9u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'GetListJusticePlatformAccounts' test.out

#- 104 PublicPlatformLinkV2
$PYTHON -m $MODULE 'iam-public-platform-link-v2' \
    '2dVYdglO' \
    'OoCeK0kP' \
    'KmBqVux3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'PublicPlatformLinkV2' test.out

#- 105 PublicDeletePlatformLinkV2
$PYTHON -m $MODULE 'iam-public-delete-platform-link-v2' \
    'lXcD8aer' \
    'tAVCqs8X' \
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
    '[{"field": "T8xy3nJ0", "validation": {"allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "description": [{"language": "0ARj9ric", "message": ["fayvnhi8"]}], "isCustomRegex": true, "letterCase": "dY4WLHoa", "maxLength": 92, "maxRepeatingAlphaNum": 21, "maxRepeatingSpecialCharacter": 100, "minCharType": 27, "minLength": 84, "regex": "p5egdmVE", "specialCharacterLocation": "8ImivNtQ", "specialCharacters": ["xqWRKHoh"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    'ODoWOr98' \
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
    '{"ageRestriction": 21, "enable": false}' \
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
    '{"ageRestriction": 55}' \
    'Uas9jjz2' \
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
    '{"audiences": ["FrgiaGrc"], "baseUri": "B7dIOVKI", "clientId": "PSJJHo5W", "clientName": "8tKH8ou9", "clientPermissions": [{"action": 89, "resource": "dbxSXcrE", "schedAction": 62, "schedCron": "CwqeGNLd", "schedRange": ["IBRdliFQ"]}], "clientPlatform": "VMKEzVUW", "deletable": false, "namespace": "UWDs2x1E", "oauthClientType": "QU0oepEv", "redirectUri": "cjaSgEh6", "secret": "jJnFxinI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'AdminCreateClientV3' test.out

#- 120 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    'HJ1o7aq5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 121 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'Zznd5eac' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminDeleteClientV3' test.out

#- 122 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["obTsuRlh"], "baseUri": "reQVFID3", "clientName": "o8hJWVjK", "clientPermissions": [{"action": 69, "resource": "OAw70DvA", "schedAction": 67, "schedCron": "hSGWUvzq", "schedRange": ["1Za3IBC4"]}], "clientPlatform": "vQFsUJPf", "deletable": false, "namespace": "aJp1rt7O", "redirectUri": "BgBCe6N0"}' \
    'eI65Mn5t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AdminUpdateClientV3' test.out

#- 123 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 26, "resource": "gEYXgPVT"}]}' \
    '5CqXDZBV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminUpdateClientPermissionV3' test.out

#- 124 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 76, "resource": "JyJeKFO9"}]}' \
    '2YDtaZvJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AdminAddClientPermissionsV3' test.out

#- 125 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '28' \
    'KS0Oxyip' \
    'ZuO4N9S2' \
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
    'YCgHa6XB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 130 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "cvGRYk5r", "AWSCognitoRegion": "UtWHCnhm", "AWSCognitoUserPool": "zzppV7tK", "AllowedClients": ["NKYUQVBX"], "AppId": "ymWcNlHa", "AuthorizationEndpoint": "FxYaGHUp", "ClientId": "mBFyOrFK", "Environment": "txGNAi0f", "FederationMetadataURL": "q4xChPLd", "GenericOauthFlow": false, "IsActive": false, "Issuer": "pc7XoVpd", "JWKSEndpoint": "d6rCpyMr", "KeyID": "nH9YHXh7", "NetflixCertificates": {"encryptedPrivateKey": "KnCVOKY2", "encryptedPrivateKeyName": "zsBRGtd8", "publicCertificate": "QY2OLbij", "publicCertificateName": "rvfr8hkn", "rootCertificate": "jWUWdMUX", "rootCertificateName": "Hvw4pNlG"}, "OrganizationId": "LjdBxLM0", "PlatformName": "79pDAbTg", "RedirectUri": "msEYEq2G", "RegisteredDomains": [{"affectedClientIDs": ["kYK1vYm9"], "domain": "flXQ7CQo", "namespaces": ["emnQG0dH"], "roleId": "0NVM9VEH"}], "Secret": "TPqDhkcu", "TeamID": "5vnz6GiN", "TokenAuthenticationType": "MboBJHml", "TokenClaimsMapping": {"0LJmpPi4": "mqhruiCZ"}, "TokenEndpoint": "LGGP5UXk"}' \
    'HNTMapp5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 131 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    'SbonsUJK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 132 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "ADr60Ekd", "AWSCognitoRegion": "FrpLsGt9", "AWSCognitoUserPool": "yTXWUSCQ", "AllowedClients": ["cMsHN7re"], "AppId": "I22ks7I1", "AuthorizationEndpoint": "2tAZc8sx", "ClientId": "xLx9XQeq", "Environment": "NWLm8cNJ", "FederationMetadataURL": "bYH5J4Wi", "GenericOauthFlow": true, "IsActive": true, "Issuer": "Hwtw2Mjc", "JWKSEndpoint": "y9ZL6Zs5", "KeyID": "Bu2XYopL", "NetflixCertificates": {"encryptedPrivateKey": "WZeUKJJN", "encryptedPrivateKeyName": "ftRpGgk1", "publicCertificate": "iseREzzR", "publicCertificateName": "G6z9wmuH", "rootCertificate": "ddyOdibI", "rootCertificateName": "1LVyqbdY"}, "OrganizationId": "8DGZKAuo", "PlatformName": "IKz3Pp3z", "RedirectUri": "LWUxMzMt", "RegisteredDomains": [{"affectedClientIDs": ["SmMmZP8n"], "domain": "G0FoQP8q", "namespaces": ["7aSsb85g"], "roleId": "Ah9RD3Zz"}], "Secret": "N6N1iJ8l", "TeamID": "tt9IRqCf", "TokenAuthenticationType": "lgln6r5f", "TokenClaimsMapping": {"0s5H6lCf": "3QHa11hL"}, "TokenEndpoint": "LCgw5av4"}' \
    'LExdabD8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 133 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["g2cvHfMR"], "assignedNamespaces": ["upDA5xbj"], "domain": "s3XRdHUJ", "roleId": "0GCmflIX"}' \
    'kgJ6zkTw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 134 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "oakq7sEe"}' \
    'jFZ1NtON' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 135 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    'Xb9w9hsQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'RetrieveSSOLoginPlatformCredential' test.out

#- 136 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "HszIsfrl", "apiKey": "zKpQdd58", "appId": "dZP5Rvri", "federationMetadataUrl": "nNtvBtqF", "isActive": false, "redirectUri": "A68mIVYJ", "secret": "5pSVxBsL", "ssoUrl": "hty3pecT"}' \
    'oXA4M1oU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'AddSSOLoginPlatformCredential' test.out

#- 137 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'FPhgo7Z6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 138 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "mwNC4FY6", "apiKey": "9mM87joJ", "appId": "NOGB83Ns", "federationMetadataUrl": "6Hl5Poab", "isActive": false, "redirectUri": "KoVqNBUz", "secret": "IxOfglqu", "ssoUrl": "S2q2DoWr"}' \
    '9zvFtKa2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'UpdateSSOPlatformCredential' test.out

#- 139 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'mOAqOokV' \
    '1plxQ2Yr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'AdminGetUserByPlatformUserIDV3' test.out

#- 140 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'iTPfipD6' \
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
    '{"userIds": ["7jI2hiZk"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'AdminListUserIDByUserIDsV3' test.out

#- 143 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["rtLnh2U1"], "isAdmin": false, "roles": ["MxkfNMPN"]}' \
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
    '{"listEmailAddressRequest": ["tqv2TMz1"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'AdminGetBulkUserByEmailAddressV3' test.out

#- 147 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'b7SnzkXO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'AdminGetUserByUserIdV3' test.out

#- 148 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "ek83Igm1", "country": "wkSWsYvA", "dateOfBirth": "su18obUd", "displayName": "c8mbvXcw", "languageTag": "cgMqOXMz", "userName": "iXrVdsEc"}' \
    '3ClFP3mJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'AdminUpdateUserV3' test.out

#- 149 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'wusCBTe4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'AdminGetUserBanV3' test.out

#- 150 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "kLcuqL40", "comment": "NYgekRav", "endDate": "paGTA9BT", "reason": "yCCyN4Fw", "skipNotif": false}' \
    '6mI2W3tj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AdminBanUserV3' test.out

#- 151 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": false, "skipNotif": true}' \
    'qPVyYs01' \
    'hEYzWw3q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserBanV3' test.out

#- 152 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "rcxM0DPA", "emailAddress": "XQBNMP7j", "languageTag": "3xfPaoZa"}' \
    'WFspkU5k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'AdminSendVerificationCodeV3' test.out

#- 153 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "n6PlPqD4", "ContactType": "AgfasBfc", "LanguageTag": "lBhZjZbL", "validateOnly": false}' \
    'mghKwPyV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AdminVerifyAccountV3' test.out

#- 154 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'In3qaHP7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'GetUserVerificationCode' test.out

#- 155 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'KNulyfrE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminGetUserDeletionStatusV3' test.out

#- 156 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"enabled": false}' \
    'pcaWHf6T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'AdminUpdateUserDeletionStatusV3' test.out

#- 157 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "2xOOljn7", "country": "c6c9efJI", "dateOfBirth": "02TZxrgL", "displayName": "BFJEkphF", "emailAddress": "z0h6WpoV", "password": "pVc2HBBm", "validateOnly": false}' \
    '6cEi02hX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'AdminUpgradeHeadlessAccountV3' test.out

#- 158 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'l42ubCRf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminDeleteUserInformationV3' test.out

#- 159 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'y4GjKn5I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminGetUserLoginHistoriesV3' test.out

#- 160 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 39, "Resource": "HXLDZqpR", "SchedAction": 15, "SchedCron": "qnR742Gc", "SchedRange": ["bLuQOGMO"]}]}' \
    'EzmdjNhT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserPermissionV3' test.out

#- 161 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 88, "Resource": "46kqyfMB", "SchedAction": 89, "SchedCron": "aZc4SA16", "SchedRange": ["M8gQCD7a"]}]}' \
    'BHWCYevN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminAddUserPermissionsV3' test.out

#- 162 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 20, "Resource": "fcQvl4Os"}]' \
    'o7tx65zX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminDeleteUserPermissionBulkV3' test.out

#- 163 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '57' \
    'iTfjorLF' \
    'qTmIUFUo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AdminDeleteUserPermissionV3' test.out

#- 164 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'onHBI13S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserPlatformAccountsV3' test.out

#- 165 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'ZFHfm0F8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminGetListJusticePlatformAccounts' test.out

#- 166 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    'vS2BrZ3n' \
    'q88YSSD7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminCreateJusticeUser' test.out

#- 167 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "zV0C8FvV", "platformUserId": "U3kRXBGP"}' \
    'XIdft1bi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminLinkPlatformAccount' test.out

#- 168 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "ZHuhWyFP"}' \
    'HdXcyvZE' \
    'hYeUSy5U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminPlatformUnlinkV3' test.out

#- 169 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'kc65naP1' \
    '1R8Xww9v' \
    'q9nMa2Bt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminPlatformLinkV3' test.out

#- 170 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["gwyuf2fj"]' \
    'V30SLxi7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminDeleteUserRolesV3' test.out

#- 171 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "uyhaeFtc", "roleId": "O9XNy63Q"}]' \
    'O9vW0ck7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminSaveUserRoleV3' test.out

#- 172 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    'TEDE8LeE' \
    'QBeGPLiE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminAddUserRoleV3' test.out

#- 173 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    '6tHCr0GP' \
    'FvT0SAK9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserRoleV3' test.out

#- 174 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": true, "reason": "5vCeBIJq"}' \
    '0B9UcI6c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminUpdateUserStatusV3' test.out

#- 175 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    '5cre9eal' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 176 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "HOZphcLn"}' \
    'cnjnmyU8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminUpdateClientSecretV3' test.out

#- 177 AdminGetRolesV3
$PYTHON -m $MODULE 'iam-admin-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminGetRolesV3' test.out

#- 178 AdminCreateRoleV3
$PYTHON -m $MODULE 'iam-admin-create-role-v3' \
    '{"adminRole": true, "deletable": true, "isWildcard": false, "managers": [{"displayName": "CrskoFqn", "namespace": "owq9Laz1", "userId": "GLt5Mhf8"}], "members": [{"displayName": "Z7ahmbVP", "namespace": "m2g7xAFf", "userId": "RRLUjfWS"}], "permissions": [{"action": 36, "resource": "ftIfHGe5", "schedAction": 2, "schedCron": "UTSXOv12", "schedRange": ["PMcRO6E2"]}], "roleName": "Mkre5q7F"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminCreateRoleV3' test.out

#- 179 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'vaACp6he' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminGetRoleV3' test.out

#- 180 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    '0fzjkPNN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AdminDeleteRoleV3' test.out

#- 181 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": true, "isWildcard": false, "roleName": "gF6inIRs"}' \
    'Z5hrqNzV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminUpdateRoleV3' test.out

#- 182 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    'szGVP5P1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminGetRoleAdminStatusV3' test.out

#- 183 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'iwhcf30C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminUpdateAdminRoleStatusV3' test.out

#- 184 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    '1KHRZHMG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminRemoveRoleAdminV3' test.out

#- 185 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'y5vbfZvY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRoleManagersV3' test.out

#- 186 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "IFFctEKO", "namespace": "LxSRxe0w", "userId": "mWBMcNiW"}]}' \
    'oobB6o6a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminAddRoleManagersV3' test.out

#- 187 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "lTQcP0Ep", "namespace": "E9wGNVwk", "userId": "gfJJ2HIa"}]}' \
    'lfzgRpTf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminRemoveRoleManagersV3' test.out

#- 188 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    '9lxF1JPB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminGetRoleMembersV3' test.out

#- 189 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "izXZtrGe", "namespace": "8LyOH24n", "userId": "neZHFeRl"}]}' \
    'd0bGA7Jx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminAddRoleMembersV3' test.out

#- 190 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "WYzaEaim", "namespace": "vokcWX59", "userId": "kwiYHgHT"}]}' \
    '6Ivd0fGp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminRemoveRoleMembersV3' test.out

#- 191 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 92, "resource": "209nVRcl", "schedAction": 40, "schedCron": "mQTFvr5r", "schedRange": ["RyYzaNmz"]}]}' \
    '3PjMx2T8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminUpdateRolePermissionsV3' test.out

#- 192 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 79, "resource": "TrFRUCXF", "schedAction": 20, "schedCron": "ruxegpkc", "schedRange": ["XCfzgcvv"]}]}' \
    '0WE5EQhc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminAddRolePermissionsV3' test.out

#- 193 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["omPS1E7c"]' \
    'psLgr2zE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminDeleteRolePermissionsV3' test.out

#- 194 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '26' \
    'jyRNjEC3' \
    'FMDcZvww' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminDeleteRolePermissionV3' test.out

#- 195 AdminGetMyUserV3
$PYTHON -m $MODULE 'iam-admin-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminGetMyUserV3' test.out

#- 196 UserAuthenticationV3
$PYTHON -m $MODULE 'iam-user-authentication-v3' \
    'f8aU98In' \
    '31mF4jlw' \
    'KyGxTF1l' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 196 'UserAuthenticationV3' test.out

#- 197 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    '5q1Np0sT' \
    '1X8J2eAW' \
    'Ozjmh9Uz' \
    'Ifnhoo6x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AuthenticationWithPlatformLinkV3' test.out

#- 198 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    'UmTleUnJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 199 GetCountryLocationV3
$PYTHON -m $MODULE 'iam-get-country-location-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'GetCountryLocationV3' test.out

#- 200 Logout
$PYTHON -m $MODULE 'iam-logout' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'Logout' test.out

#- 201 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'FM7XhoDx' \
    'Gik2JSfZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 202 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    '64wWePq6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'RevokeUserV3' test.out

#- 203 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    '103PONKI' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 203 'AuthorizeV3' test.out

#- 204 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    '9emW4R15' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 204 'TokenIntrospectionV3' test.out

#- 205 GetJWKSV3
$PYTHON -m $MODULE 'iam-get-jwksv3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'GetJWKSV3' test.out

#- 206 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    'tAsiG31C' \
    'EyUOuOZh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'Change2faMethod' test.out

#- 207 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    'mnHkvek6' \
    'Aa5kNnoc' \
    'lxs9kxcv' \
    'False' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'Verify2faCode' test.out

#- 208 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'V7mCYfWK' \
    'jY9CsQYs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 209 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'GyhEOntE' \
    'kedM1A0b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'AuthCodeRequestV3' test.out

#- 210 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'FqvjxbT3' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 210 'PlatformTokenGrantV3' test.out

#- 211 GetRevocationListV3
$PYTHON -m $MODULE 'iam-get-revocation-list-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'GetRevocationListV3' test.out

#- 212 TokenRevocationV3
$PYTHON -m $MODULE 'iam-token-revocation-v3' \
    'YuVdaBN5' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 212 'TokenRevocationV3' test.out

#- 213 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'client_credentials' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 213 'TokenGrantV3' test.out

#- 214 VerifyTokenV3
$PYTHON -m $MODULE 'iam-verify-token-v3' \
    'hcjuDvNr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'VerifyTokenV3' test.out

#- 215 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'XL845jfh' \
    '5tZ0hqJL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'PlatformAuthenticationV3' test.out

#- 216 PublicGetInputValidations
$PYTHON -m $MODULE 'iam-public-get-input-validations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'PublicGetInputValidations' test.out

#- 217 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-public-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 218 RetrieveActiveOIDCClientsPublicV3
$PYTHON -m $MODULE 'iam-retrieve-active-oidc-clients-public-v3' \
    'jQUmoYUn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 219 PublicListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["C849OBNu"]}' \
    'LZtofGAA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 220 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    'aMpBQArU' \
    '4RS0FQRy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'PublicGetUserByPlatformUserIDV3' test.out

#- 221 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    '5Qz5Vcyf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'PublicGetAsyncStatus' test.out

#- 222 PublicSearchUserV3
$PYTHON -m $MODULE 'iam-public-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'PublicSearchUserV3' test.out

#- 223 PublicCreateUserV3
$PYTHON -m $MODULE 'iam-public-create-user-v3' \
    '{"PasswordMD5Sum": "BpHjtvFw", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "Zeqvpevc", "policyId": "VXTxs9LT", "policyVersionId": "orIyx23L"}], "authType": "hLy7ds3g", "code": "3BuHTPF1", "country": "9dBYFws5", "dateOfBirth": "Ya4eOwWq", "displayName": "W8HiLpTi", "emailAddress": "1W63Hccg", "password": "M5kYu36J", "reachMinimumAge": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'PublicCreateUserV3' test.out

#- 224 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'TL55W4ws' \
    '3KCyplY1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'CheckUserAvailability' test.out

#- 225 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["ocKDCVaq"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'PublicBulkGetUsers' test.out

#- 226 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "rVeegT3u", "languageTag": "GDIIcvuu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'PublicSendRegistrationCode' test.out

#- 227 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "okt8TC38", "emailAddress": "mYoUanQT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'PublicVerifyRegistrationCode' test.out

#- 228 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "4Mmznv7r", "languageTag": "2jthibge"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'PublicForgotPasswordV3' test.out

#- 229 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    'CLX41qyO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'GetAdminInvitationV3' test.out

#- 230 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "Lgd8Wy73", "policyId": "9QHzw0TE", "policyVersionId": "zpd7TV5v"}], "authType": "EMAILPASSWD", "country": "MM2i3DM6", "dateOfBirth": "etfI7TzC", "displayName": "3sKmtsyE", "password": "KdO6HNm3", "reachMinimumAge": true}' \
    'Gu71qTSS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'CreateUserFromInvitationV3' test.out

#- 231 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "JEbWlETp", "country": "9XOCA1X3", "dateOfBirth": "HHMTlakA", "displayName": "WQfBuBAO", "languageTag": "CjBfYCcp", "userName": "lye2GaPN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'UpdateUserV3' test.out

#- 232 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "zkrgBH4i", "country": "cml6L36V", "dateOfBirth": "g2F2Q9aZ", "displayName": "DJg1OT81", "languageTag": "09ot70Te", "userName": "vJgsb2Py"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'PublicPartialUpdateUserV3' test.out

#- 233 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "FfJ6qcHA", "emailAddress": "BdGtV9jA", "languageTag": "Pqon7UmL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'PublicSendVerificationCodeV3' test.out

#- 234 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "Ny9PkF9S", "contactType": "nlbWNcAx", "languageTag": "v8uHDqJt", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'PublicUserVerificationV3' test.out

#- 235 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "7rznwNdL", "country": "hqXvXVnj", "dateOfBirth": "vc0BMegJ", "displayName": "pW1Zeuhp", "emailAddress": "LX1BHZ4h", "password": "nOmmyXu6", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'PublicUpgradeHeadlessAccountV3' test.out

#- 236 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "jNCqYk9T", "password": "PUKcDTfR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'PublicVerifyHeadlessAccountV3' test.out

#- 237 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "7dpUEo2O", "newPassword": "e08HpeJB", "oldPassword": "fG0nGZHe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'PublicUpdatePasswordV3' test.out

#- 238 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    '5lw2TlkP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'PublicCreateJusticeUser' test.out

#- 239 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'IxL9v4fp' \
    'Cd0Uk5h1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'PublicPlatformLinkV3' test.out

#- 240 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "kP1pkkT0"}' \
    '8Cs6DdXZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'PublicPlatformUnlinkV3' test.out

#- 241 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'WowBgZiz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'PublicPlatformUnlinkAllV3' test.out

#- 242 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'MvwHszf8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'PublicWebLinkPlatform' test.out

#- 243 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    '4MAmayJJ' \
    '6vzDTXxs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'PublicWebLinkPlatformEstablish' test.out

#- 244 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "yIaTgp0p", "emailAddress": "wnEJL15k", "newPassword": "xO4oVUPn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'ResetPasswordV3' test.out

#- 245 PublicGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-public-get-user-by-user-id-v3' \
    'g5JsHAkI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'PublicGetUserByUserIdV3' test.out

#- 246 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    '47jO1wuA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'PublicGetUserBanHistoryV3' test.out

#- 247 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'FuZcUwPt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 248 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'eKdQgUTF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'PublicGetUserLoginHistoriesV3' test.out

#- 249 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    '33fYWZfQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'PublicGetUserPlatformAccountsV3' test.out

#- 250 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "MAnziTha", "platformUserId": "E2btn0up"}' \
    '9GeTQ7Xy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'PublicLinkPlatformAccount' test.out

#- 251 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["mDSQNYXN"], "requestId": "EpZyFhIe"}' \
    'qiNHtVSn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'PublicForceLinkPlatformWithProgression' test.out

#- 252 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    'hxby8F6x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'PublicGetPublisherUserV3' test.out

#- 253 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'F8MhbJAY' \
    'EDN1xszp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 254 PublicGetRolesV3
$PYTHON -m $MODULE 'iam-public-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'PublicGetRolesV3' test.out

#- 255 PublicGetRoleV3
$PYTHON -m $MODULE 'iam-public-get-role-v3' \
    'pR69nsKA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'PublicGetRoleV3' test.out

#- 256 PublicGetMyUserV3
$PYTHON -m $MODULE 'iam-public-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'PublicGetMyUserV3' test.out

#- 257 PlatformAuthenticateSAMLV3Handler
$PYTHON -m $MODULE 'iam-platform-authenticate-samlv3-handler' \
    'S5zKsTRX' \
    'd7b3v2fk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'PlatformAuthenticateSAMLV3Handler' test.out

#- 258 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'ZIkr06oj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'LoginSSOClient' test.out

#- 259 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'UtoVJLGX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'LogoutSSOClient' test.out

#- 260 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"count": 8}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'AdminCreateTestUsersV4' test.out

#- 261 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["komvwD84"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'AdminBulkCheckValidUserIDV4' test.out

#- 262 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "9mo5vIkD", "country": "ZYrYEf1x", "dateOfBirth": "YnlxHHXj", "displayName": "FoXtwKW6", "languageTag": "AOnqnWCu", "userName": "XMWqG8fN"}' \
    'prJx82nA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'AdminUpdateUserV4' test.out

#- 263 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "FexNou1A", "emailAddress": "icsQjKx5"}' \
    'LjetHEw0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'AdminUpdateUserEmailAddressV4' test.out

#- 264 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    'aCQpU6EG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'AdminDisableUserMFAV4' test.out

#- 265 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'OW0VAI87' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'AdminListUserRolesV4' test.out

#- 266 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["DPH0fLLi"], "roleId": "Uqzay0gE"}' \
    'T8T53yEe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'AdminUpdateUserRoleV4' test.out

#- 267 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["j7DsqsTv"], "roleId": "NKAXqfqM"}' \
    'JHGeHaN2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'AdminAddUserRoleV4' test.out

#- 268 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["k1Eutm9A"], "roleId": "AWDcDv3I"}' \
    'SBgZCAf2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'AdminRemoveUserRoleV4' test.out

#- 269 AdminGetRolesV4
$PYTHON -m $MODULE 'iam-admin-get-roles-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'AdminGetRolesV4' test.out

#- 270 AdminCreateRoleV4
$PYTHON -m $MODULE 'iam-admin-create-role-v4' \
    '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "OHfiu4Hr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'AdminCreateRoleV4' test.out

#- 271 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'aKYMtgBm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'AdminGetRoleV4' test.out

#- 272 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'vCHMtF15' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'AdminDeleteRoleV4' test.out

#- 273 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "ywiPE1WU"}' \
    'R1PTFfJJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'AdminUpdateRoleV4' test.out

#- 274 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 20, "resource": "zfqapbBy", "schedAction": 68, "schedCron": "KoYzYtTW", "schedRange": ["JA3nFCDg"]}]}' \
    'WOpz3yPQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'AdminUpdateRolePermissionsV4' test.out

#- 275 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 10, "resource": "qbeVG7i4", "schedAction": 95, "schedCron": "TAhuFYhE", "schedRange": ["gQBb9Hni"]}]}' \
    '6lDMj9gv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'AdminAddRolePermissionsV4' test.out

#- 276 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["kBcQjQ56"]' \
    'RuAvUlMW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'AdminDeleteRolePermissionsV4' test.out

#- 277 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'p8WGpZxC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'AdminListAssignedUsersV4' test.out

#- 278 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["e0KsmXtG"], "namespace": "BbKrV58T", "userId": "IThQ52PY"}' \
    'NknBCjir' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'AdminAssignUserToRoleV4' test.out

#- 279 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "w4hmfMSl", "userId": "2bETuFLF"}' \
    'Ofdl0yRn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'AdminRevokeUserFromRoleV4' test.out

#- 280 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "dbO78R8y", "country": "bYsHx3BI", "dateOfBirth": "gGuo817l", "displayName": "ZA58OI2L", "languageTag": "MYRX16nf", "userName": "CJ833JKR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'AdminUpdateMyUserV4' test.out

#- 281 AdminDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'AdminDisableMyAuthenticatorV4' test.out

#- 282 AdminEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'AdminEnableMyAuthenticatorV4' test.out

#- 283 AdminGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-admin-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 284 AdminGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'AdminGetMyBackupCodesV4' test.out

#- 285 AdminGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'AdminGenerateMyBackupCodesV4' test.out

#- 286 AdminDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'AdminDisableMyBackupCodesV4' test.out

#- 287 AdminDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'AdminDownloadMyBackupCodesV4' test.out

#- 288 AdminEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'AdminEnableMyBackupCodesV4' test.out

#- 289 AdminGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-admin-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'AdminGetMyEnabledFactorsV4' test.out

#- 290 AdminMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-admin-make-factor-my-default-v4' \
    'NcdpuCxS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'AdminMakeFactorMyDefaultV4' test.out

#- 291 AdminInviteUserV4
$PYTHON -m $MODULE 'iam-admin-invite-user-v4' \
    '{"assignedNamespaces": ["DFWMVcsO"], "emailAddresses": ["ZlS0uler"], "isAdmin": false, "roleId": "rwLngbZx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'AdminInviteUserV4' test.out

#- 292 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "FwnmB60e", "policyId": "a7XItZS8", "policyVersionId": "KIu9T604"}], "authType": "EMAILPASSWD", "country": "PajgyShK", "dateOfBirth": "uLB7pQLZ", "displayName": "iWVmc8PV", "emailAddress": "wShVQz7F", "password": "Y3h2oVVS", "passwordMD5Sum": "cVv3YTBM", "username": "4teOpqev", "verified": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'PublicCreateTestUserV4' test.out

#- 293 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "MhiheE2K", "policyId": "M7Ctal5z", "policyVersionId": "7hLiOYz1"}], "authType": "EMAILPASSWD", "code": "Ffu1y1d7", "country": "7D8ZNOfH", "dateOfBirth": "yenhbRZ4", "displayName": "a9UjjjU0", "emailAddress": "EggYLcGi", "password": "EDZbDl9Z", "passwordMD5Sum": "eZH3M87v", "reachMinimumAge": true, "username": "hdKDEfXR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'PublicCreateUserV4' test.out

#- 294 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "aO0AYSqv", "policyId": "cV2LqfgC", "policyVersionId": "X28Je4ky"}], "authType": "EMAILPASSWD", "country": "gDJNOEMt", "dateOfBirth": "dEtN4sEe", "displayName": "bnQucgao", "password": "p5NEdhur", "reachMinimumAge": false, "username": "NiUxnJUe"}' \
    'wUVhkGRR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'CreateUserFromInvitationV4' test.out

#- 295 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "TgLCb9ev", "country": "ywZywunL", "dateOfBirth": "ImNhyZsb", "displayName": "7YhhQbDx", "languageTag": "LRKxzUtp", "userName": "KDC8gl2o"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'PublicUpdateUserV4' test.out

#- 296 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "tjUWKxgW", "emailAddress": "6n8AJaeq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'PublicUpdateUserEmailAddressV4' test.out

#- 297 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "xTPgZKFi", "country": "3SBGlCD4", "dateOfBirth": "ig5ZRoJd", "displayName": "1as1Wkfh", "emailAddress": "3l8HyGWZ", "password": "TdpmTxPU", "reachMinimumAge": true, "username": "FjTIIKcX", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 298 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "xPfdDyjJ", "password": "0wwrYelj", "username": "Myoeb3gs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'PublicUpgradeHeadlessAccountV4' test.out

#- 299 PublicDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'PublicDisableMyAuthenticatorV4' test.out

#- 300 PublicEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'PublicEnableMyAuthenticatorV4' test.out

#- 301 PublicGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-public-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 302 PublicGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'PublicGetMyBackupCodesV4' test.out

#- 303 PublicGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'PublicGenerateMyBackupCodesV4' test.out

#- 304 PublicDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'PublicDisableMyBackupCodesV4' test.out

#- 305 PublicDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'PublicDownloadMyBackupCodesV4' test.out

#- 306 PublicEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'PublicEnableMyBackupCodesV4' test.out

#- 307 PublicRemoveTrustedDeviceV4
$PYTHON -m $MODULE 'iam-public-remove-trusted-device-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'PublicRemoveTrustedDeviceV4' test.out

#- 308 PublicGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-public-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'PublicGetMyEnabledFactorsV4' test.out

#- 309 PublicMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-public-make-factor-my-default-v4' \
    'MOMdqbt4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'PublicMakeFactorMyDefaultV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
