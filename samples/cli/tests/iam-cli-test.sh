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
iam-admin-get-bans-type-v3 --login_with_auth "Bearer foo"
iam-admin-get-list-ban-reason-v3 --login_with_auth "Bearer foo"
iam-admin-get-input-validations --login_with_auth "Bearer foo"
iam-admin-update-input-validations '[{"field": "FtBxyZcD", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "blockedWord": ["Ju8vMf0I"], "description": [{"language": "sJkTrd8I", "message": ["DcV2zXnT"]}], "isCustomRegex": false, "letterCase": "XY1bPqam", "maxLength": 17, "maxRepeatingAlphaNum": 54, "maxRepeatingSpecialCharacter": 47, "minCharType": 46, "minLength": 57, "regex": "s18EY84e", "specialCharacterLocation": "kItqRzHU", "specialCharacters": ["1oh570KQ"]}}]' --login_with_auth "Bearer foo"
iam-admin-reset-input-validations 'BVaewc72' --login_with_auth "Bearer foo"
iam-list-admins-v3 --login_with_auth "Bearer foo"
iam-admin-get-age-restriction-status-v3 --login_with_auth "Bearer foo"
iam-admin-update-age-restriction-config-v3 '{"ageRestriction": 21, "enable": true}' --login_with_auth "Bearer foo"
iam-admin-get-list-country-age-restriction-v3 --login_with_auth "Bearer foo"
iam-admin-update-country-age-restriction-v3 '{"ageRestriction": 89}' 'ha68n3Yn' --login_with_auth "Bearer foo"
iam-admin-get-banned-users-v3 --login_with_auth "Bearer foo"
iam-admin-ban-user-bulk-v3 '{"ban": "ozp1C2Km", "comment": "IQTuBdNE", "endDate": "UsxFb8CJ", "reason": "17M7DJZa", "skipNotif": true, "userIds": ["ECbZbygy"]}' --login_with_auth "Bearer foo"
iam-admin-unban-user-bulk-v3 '{"bans": [{"banId": "oarORoeN", "userId": "HSb8Rh3k"}]}' --login_with_auth "Bearer foo"
iam-admin-get-bans-type-with-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-get-clients-by-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-create-client-v3 '{"audiences": ["gs9qqJbn"], "baseUri": "QsoBgiVp", "clientId": "P8Cm3yvA", "clientName": "SUoxdxxF", "clientPermissions": [{"action": 32, "resource": "mAGTJ8IE", "schedAction": 6, "schedCron": "agEtp4w2", "schedRange": ["9KOu9c19"]}], "clientPlatform": "R6XDqWHk", "deletable": false, "namespace": "P8npLEKM", "oauthAccessTokenExpiration": 11, "oauthClientType": "jiX7jpkV", "oauthRefreshTokenExpiration": 21, "redirectUri": "3IaQYEmq", "secret": "GodOEGt9", "twoFactorEnabled": false}' --login_with_auth "Bearer foo"
iam-admin-get-clientsby-namespaceby-idv3 'POj0c6i0' --login_with_auth "Bearer foo"
iam-admin-delete-client-v3 'JkvIas73' --login_with_auth "Bearer foo"
iam-admin-update-client-v3 '{"audiences": ["ucYnFAJ3"], "baseUri": "DK5T4Eog", "clientName": "g0Y39UoY", "clientPermissions": [{"action": 23, "resource": "pv5bVAgt", "schedAction": 36, "schedCron": "DhUTDUsc", "schedRange": ["bQDjbTQu"]}], "clientPlatform": "PMz2PTRl", "deletable": false, "namespace": "yU89ZPOw", "oauthAccessTokenExpiration": 50, "oauthRefreshTokenExpiration": 83, "redirectUri": "FJ42cwmz", "twoFactorEnabled": true}' 'BSMNcoAA' --login_with_auth "Bearer foo"
iam-admin-update-client-permission-v3 '{"permissions": [{"action": 81, "resource": "jKNjfcYH"}]}' 'm093aYgB' --login_with_auth "Bearer foo"
iam-admin-add-client-permissions-v3 '{"permissions": [{"action": 92, "resource": "1sqjyK0X"}]}' 'H45PaRSO' --login_with_auth "Bearer foo"
iam-admin-delete-client-permission-v3 '63' 'QBtu23RE' 'Z8hRVX7L' --login_with_auth "Bearer foo"
iam-retrieve-all-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-sso-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-third-party-login-platform-credential-v3 'GOvDdYiQ' --login_with_auth "Bearer foo"
iam-add-third-party-login-platform-credential-v3 '{"ACSURL": "S9i7mV1C", "AWSCognitoRegion": "91pjG9gp", "AWSCognitoUserPool": "xL6ycTQd", "AllowedClients": ["vln2LAuS"], "AppId": "QWEXL6LF", "AuthorizationEndpoint": "E1YHo9m1", "ClientId": "26ZWc8hH", "Environment": "tWvbNYqg", "FederationMetadataURL": "UqslArFP", "GenericOauthFlow": false, "IsActive": true, "Issuer": "aCv8kU9d", "JWKSEndpoint": "BBpdsJLh", "KeyID": "sVyExrkx", "NetflixCertificates": {"encryptedPrivateKey": "oot0B7WO", "encryptedPrivateKeyName": "fercZdpM", "publicCertificate": "ci37Ds7Y", "publicCertificateName": "SfExaI3u", "rootCertificate": "zLteMbFA", "rootCertificateName": "lt4hr7Hm"}, "OrganizationId": "OYiBA5lt", "PlatformName": "AOXmlG6e", "RedirectUri": "h1dTdoTF", "RegisteredDomains": [{"affectedClientIDs": ["pBIcuC1d"], "domain": "QY93OJnJ", "namespaces": ["6Te9vD8l"], "roleId": "dz7Hu8AD"}], "Secret": "79kdWunv", "TeamID": "izU0q1pH", "TokenAuthenticationType": "yhhERoGg", "TokenClaimsMapping": {"drysMizB": "GSRdP2l7"}, "TokenEndpoint": "DNSZ8Aq0"}' 'XiPLQXSe' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-credential-v3 '07ZddOGT' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-credential-v3 '{"ACSURL": "MlJjBwj9", "AWSCognitoRegion": "HJHQKseE", "AWSCognitoUserPool": "dSXRDSvg", "AllowedClients": ["uauw1xT7"], "AppId": "eMwSl9ML", "AuthorizationEndpoint": "H0NnTJ2u", "ClientId": "lNzBvwJa", "Environment": "Qa547Jll", "FederationMetadataURL": "vA8RWSpa", "GenericOauthFlow": false, "IsActive": true, "Issuer": "7xk6QxyW", "JWKSEndpoint": "hfqoWfJw", "KeyID": "2o8oWUqv", "NetflixCertificates": {"encryptedPrivateKey": "PCZ2HzT7", "encryptedPrivateKeyName": "NXmWDlXs", "publicCertificate": "uNIdQJR5", "publicCertificateName": "lsNOlvkf", "rootCertificate": "waSbnsuL", "rootCertificateName": "CgToxuVT"}, "OrganizationId": "ekJgvg6h", "PlatformName": "5HIpH0Dv", "RedirectUri": "iplEk4vj", "RegisteredDomains": [{"affectedClientIDs": ["3LDp4yqD"], "domain": "t8QUZDpx", "namespaces": ["lHasinGc"], "roleId": "jrkmRMtt"}], "Secret": "gjDSaIVB", "TeamID": "mft3Udg7", "TokenAuthenticationType": "p9PGmY2H", "TokenClaimsMapping": {"5kX4Msis": "SX28nARx"}, "TokenEndpoint": "WRpv5ou5"}' 'xtvd28OU' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-domain-v3 '{"affectedClientIDs": ["fCt8UJC5"], "assignedNamespaces": ["flNyj6Hs"], "domain": "TtX8P3ll", "roleId": "naaS9lqy"}' 'ygPcfkJI' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-domain-v3 '{"domain": "xfQZza8k"}' 'NVbDxVMq' --login_with_auth "Bearer foo"
iam-retrieve-sso-login-platform-credential '7HJk0F89' --login_with_auth "Bearer foo"
iam-add-sso-login-platform-credential '{"acsUrl": "xAc3YVfa", "apiKey": "ENtrl0pT", "appId": "KZTXqzHu", "federationMetadataUrl": "BMYQSA2j", "isActive": true, "redirectUri": "1ZOpdOjS", "secret": "yMddB41J", "ssoUrl": "uMf7RUyB"}' 'HRj8IiRi' --login_with_auth "Bearer foo"
iam-delete-sso-login-platform-credential-v3 'mRllHT6D' --login_with_auth "Bearer foo"
iam-update-sso-platform-credential '{"acsUrl": "c40vFFA6", "apiKey": "gpU7EW3x", "appId": "1dCpm55g", "federationMetadataUrl": "OeqQIqcJ", "isActive": false, "redirectUri": "BM1J1Ibu", "secret": "TrrkbmuT", "ssoUrl": "1whOqmEn"}' 'DXIWrBPl' --login_with_auth "Bearer foo"
iam-admin-get-user-by-platform-user-idv3 'Say46mv7' '1BAZAOjt' --login_with_auth "Bearer foo"
iam-get-admin-users-by-role-id-v3 'FJ2vmTj7' --login_with_auth "Bearer foo"
iam-admin-get-user-by-email-address-v3 --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-user-i-ds-v3 '{"userIds": ["tT7TZHWD"]}' --login_with_auth "Bearer foo"
iam-admin-invite-user-v3 '{"emailAddresses": ["dCkIsZoA"], "isAdmin": true, "roles": ["WwPHcyFA"]}' --login_with_auth "Bearer foo"
iam-admin-list-users-v3 --login_with_auth "Bearer foo"
iam-admin-search-user-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-by-email-address-v3 '{"listEmailAddressRequest": ["dAtYciLI"]}' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v3 'gRwFRr0g' --login_with_auth "Bearer foo"
iam-admin-update-user-v3 '{"avatarUrl": "wB9tz3vp", "country": "99XVlV8r", "dateOfBirth": "K3tE6n0s", "displayName": "mip1tw3L", "languageTag": "7cUd9pqt", "userName": "v6JfPZwc"}' 'CVOXcVa8' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v3 '0TmCwtD2' --login_with_auth "Bearer foo"
iam-admin-ban-user-v3 '{"ban": "lAH01o6N", "comment": "dcBIgzrD", "endDate": "yWpFBYGm", "reason": "mBawMyoK", "skipNotif": true}' 'NpdAasm8' --login_with_auth "Bearer foo"
iam-admin-update-user-ban-v3 '{"enabled": true, "skipNotif": true}' 'UfzOlQiZ' 'Y4NbOQXJ' --login_with_auth "Bearer foo"
iam-admin-send-verification-code-v3 '{"context": "7uOTzNMv", "emailAddress": "uq2tNl4C", "languageTag": "X4IjiK4D"}' 'EUJRVK3l' --login_with_auth "Bearer foo"
iam-admin-verify-account-v3 '{"Code": "9Eb0R1XR", "ContactType": "b0RH8vS1", "LanguageTag": "smeOlngr", "validateOnly": false}' 'TXCzaPBt' --login_with_auth "Bearer foo"
iam-get-user-verification-code 'kZMio4wc' --login_with_auth "Bearer foo"
iam-admin-get-user-deletion-status-v3 'yhloVS3r' --login_with_auth "Bearer foo"
iam-admin-update-user-deletion-status-v3 '{"enabled": false}' '8QtcEmCE' --login_with_auth "Bearer foo"
iam-admin-upgrade-headless-account-v3 '{"code": "Vc75Ufey", "country": "pWjDNhzC", "dateOfBirth": "L5sWS2qw", "displayName": "O763iEkl", "emailAddress": "kzLm88Lp", "password": "LuYRO3C5", "validateOnly": true}' 'HpwK2Jaq' --login_with_auth "Bearer foo"
iam-admin-delete-user-information-v3 'enDGn7a2' --login_with_auth "Bearer foo"
iam-admin-get-user-login-histories-v3 'NUplWiLj' --login_with_auth "Bearer foo"
iam-admin-reset-password-v3 '{"languageTag": "q06n6a0r", "newPassword": "W8EfkpaX", "oldPassword": "twYZJaQ4"}' 'WbwNmsFY' --login_with_auth "Bearer foo"
iam-admin-update-user-permission-v3 '{"Permissions": [{"Action": 8, "Resource": "tjEurH8e", "SchedAction": 22, "SchedCron": "oJzNKtRU", "SchedRange": ["aTz1ETds"]}]}' 'mwzjkkn9' --login_with_auth "Bearer foo"
iam-admin-add-user-permissions-v3 '{"Permissions": [{"Action": 29, "Resource": "iQl05g7c", "SchedAction": 80, "SchedCron": "3ZMb6Ojl", "SchedRange": ["o6DMNpP2"]}]}' 'qMrTQ1Up' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-bulk-v3 '[{"Action": 19, "Resource": "fU6wJhy1"}]' 'jOVkkUlS' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-v3 '60' 'Z25Ia8uC' 'eZFlLtEV' --login_with_auth "Bearer foo"
iam-admin-get-user-platform-accounts-v3 'pDAEbA82' --login_with_auth "Bearer foo"
iam-admin-get-list-justice-platform-accounts 'jy74lq0p' --login_with_auth "Bearer foo"
iam-admin-get-user-mapping 'DE5xRwh5' 'b45ebpcM' --login_with_auth "Bearer foo"
iam-admin-create-justice-user '7ScSs3UO' 'pAwIp9rR' --login_with_auth "Bearer foo"
iam-admin-link-platform-account '{"platformId": "tn1PcCxd", "platformUserId": "bumeYgOd"}' 'EBWRQiW3' --login_with_auth "Bearer foo"
iam-admin-platform-unlink-v3 '{"platformNamespace": "KFfU8icH"}' '4081gRB1' 'GyLfLg4R' --login_with_auth "Bearer foo"
iam-admin-platform-link-v3 'YuEbgUDE' 'cJyIvsPw' 'Or0BmV5i' --login_with_auth "Bearer foo"
iam-admin-delete-user-roles-v3 '["FvfwFjTS"]' 'mIEqoLyL' --login_with_auth "Bearer foo"
iam-admin-save-user-role-v3 '[{"namespace": "eUGmomGX", "roleId": "9sXTZ0v8"}]' 'pqLfc5Sw' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v3 'GnReUULD' 'X4QUIbb5' --login_with_auth "Bearer foo"
iam-admin-delete-user-role-v3 'nh68ZnyU' 'tRvW9hNB' --login_with_auth "Bearer foo"
iam-admin-update-user-status-v3 '{"enabled": true, "reason": "TtFrOmjk"}' 'FrFVA8t0' --login_with_auth "Bearer foo"
iam-admin-verify-user-without-verification-code-v3 'xF34Xpt6' --login_with_auth "Bearer foo"
iam-admin-update-client-secret-v3 '{"newSecret": "ZlTTic0k"}' 'r2a0nI2o' --login_with_auth "Bearer foo"
iam-admin-get-roles-v3 --login_with_auth "Bearer foo"
iam-admin-create-role-v3 '{"adminRole": false, "deletable": true, "isWildcard": true, "managers": [{"displayName": "p0aCvIq3", "namespace": "aHVYIlew", "userId": "LRuHY83b"}], "members": [{"displayName": "Gj0HTeeW", "namespace": "XlIcRidq", "userId": "ctDpygY0"}], "permissions": [{"action": 0, "resource": "x476ED4M", "schedAction": 76, "schedCron": "O9Tw2JH0", "schedRange": ["qhWIwHWT"]}], "roleName": "gzJFRYw6"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v3 't1IKZLO6' --login_with_auth "Bearer foo"
iam-admin-delete-role-v3 'V4Ode46Q' --login_with_auth "Bearer foo"
iam-admin-update-role-v3 '{"deletable": false, "isWildcard": true, "roleName": "idgdpP7R"}' 'TC587lmU' --login_with_auth "Bearer foo"
iam-admin-get-role-admin-status-v3 'mBziPZBn' --login_with_auth "Bearer foo"
iam-admin-update-admin-role-status-v3 'pOfkllxf' --login_with_auth "Bearer foo"
iam-admin-remove-role-admin-v3 'q0NsrSjw' --login_with_auth "Bearer foo"
iam-admin-get-role-managers-v3 '5Hog0blM' --login_with_auth "Bearer foo"
iam-admin-add-role-managers-v3 '{"managers": [{"displayName": "1d5MStYG", "namespace": "czLINlEC", "userId": "0OEsE3yz"}]}' 'IsUP0Njl' --login_with_auth "Bearer foo"
iam-admin-remove-role-managers-v3 '{"managers": [{"displayName": "uOrGZTzs", "namespace": "LW7Fjfs9", "userId": "nIkcZ38f"}]}' 'UEanjKHb' --login_with_auth "Bearer foo"
iam-admin-get-role-members-v3 'Xfk1zxdz' --login_with_auth "Bearer foo"
iam-admin-add-role-members-v3 '{"members": [{"displayName": "xg0UXcRy", "namespace": "Hi3u8BzV", "userId": "Wu1tOmhU"}]}' 'tCgcpvGr' --login_with_auth "Bearer foo"
iam-admin-remove-role-members-v3 '{"members": [{"displayName": "EbcZUDEx", "namespace": "H1tayOGX", "userId": "IHzMRjMC"}]}' 'tOJsEijl' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v3 '{"permissions": [{"action": 34, "resource": "bpyyEcQx", "schedAction": 95, "schedCron": "gJIjMZqc", "schedRange": ["WfMl6dqr"]}]}' 'pD4tnc3Z' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v3 '{"permissions": [{"action": 86, "resource": "B3IkdtPf", "schedAction": 52, "schedCron": "JEomwenJ", "schedRange": ["vQ8grtQS"]}]}' 'v6EcALcM' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v3 '["IPms5bT5"]' '1M4yko8S' --login_with_auth "Bearer foo"
iam-admin-delete-role-permission-v3 '60' 'nGLvGvfu' 'SyCTyjj4' --login_with_auth "Bearer foo"
iam-admin-get-my-user-v3 --login_with_auth "Bearer foo"
iam-user-authentication-v3 'mCaiuMGK' 'OF5GJJoo' 'SXUl3YU3' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-authentication-with-platform-link-v3 '5QHGpBAB' 'nOlxDznI' 'CQVyqBg3' '4WTtDkn0' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v3 'rtn6t0Yx' --login_with_auth "Bearer foo"
iam-get-country-location-v3 --login_with_auth "Bearer foo"
iam-logout --login_with_auth "Bearer foo"
iam-request-game-token-code-response-v3 '4z12EaQ1' --login_with_auth "Bearer foo"
iam-admin-retrieve-user-third-party-platform-token-v3 'rUQYCNTi' 'DX4jE3M2' --login_with_auth "Bearer foo"
iam-revoke-user-v3 'IsTHu8Qw' --login_with_auth "Bearer foo"
iam-authorize-v3 'NyOlXfIW' 'code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-introspection-v3 '0mcq5T4S' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-jwksv3 --login_with_auth "Bearer foo"
iam-change2fa-method 'Uc7cWfCK' 'K6Dij1gF' --login_with_auth "Bearer foo"
iam-verify2fa-code 'cenEMySP' 'fhxBenDi' 'TiAqFYmF' 'False' --login_with_auth "Bearer foo"
iam-retrieve-user-third-party-platform-token-v3 'aELmmll6' 'oexId1OK' --login_with_auth "Bearer foo"
iam-auth-code-request-v3 'GUN2Uznd' '7uVa7t14' --login_with_auth "Bearer foo"
iam-platform-token-grant-v3 'yvSYSV52' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-revocation-list-v3 --login_with_auth "Bearer foo"
iam-token-revocation-v3 'bHifCIf4' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-grant-v3 'password' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-verify-token-v3 'suu6Pkam' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-platform-authentication-v3 '6tFSYFt4' 'ZxA2PzZF' --login_with_auth "Bearer foo"
iam-public-get-input-validations --login_with_auth "Bearer foo"
iam-public-get-country-age-restriction-v3 'RkBNlg6h' --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-public-v3 --login_with_auth "Bearer foo"
iam-retrieve-active-oidc-clients-public-v3 'n5qusKyZ' --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["AuV6uUvq"]}' 'M0lV6UZM' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv3 'lEbxHNgJ' 'RiQExaun' --login_with_auth "Bearer foo"
iam-public-get-async-status 'jdAqnHUz' --login_with_auth "Bearer foo"
iam-public-search-user-v3 --login_with_auth "Bearer foo"
iam-public-create-user-v3 '{"PasswordMD5Sum": "44tx4O6h", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "mPwNoi07", "policyId": "1ezDK56J", "policyVersionId": "FIGe1IMU"}], "authType": "CLcN0Dsa", "code": "D5FyBsFe", "country": "9OYEJVsY", "dateOfBirth": "ffmhyx6J", "displayName": "25PrM4S3", "emailAddress": "cB8m17hE", "password": "eLLgoaYt", "reachMinimumAge": false}' --login_with_auth "Bearer foo"
iam-check-user-availability '6zcf8eA4' '5OMvObWe' --login_with_auth "Bearer foo"
iam-public-bulk-get-users '{"userIds": ["jo9LfGee"]}' --login_with_auth "Bearer foo"
iam-public-send-registration-code '{"emailAddress": "gJMaBGR6", "languageTag": "D1ZoZEZQ"}' --login_with_auth "Bearer foo"
iam-public-verify-registration-code '{"code": "kJ8DSqFn", "emailAddress": "hdKvjFCF"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v3 '{"emailAddress": "bSFlEWoM", "languageTag": "PdgK5zn6"}' --login_with_auth "Bearer foo"
iam-get-admin-invitation-v3 '2mhnFSpC' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v3 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "DNBOcygv", "policyId": "v2LAgfBG", "policyVersionId": "VzanbKYs"}], "authType": "EMAILPASSWD", "country": "0gqJ8VhY", "dateOfBirth": "SikJl2p9", "displayName": "rBx8N5eg", "password": "apqxDy4c", "reachMinimumAge": false}' 'NjzzEZYA' --login_with_auth "Bearer foo"
iam-update-user-v3 '{"avatarUrl": "8jIkMJb7", "country": "cZ2bPsaL", "dateOfBirth": "LpEBVEMk", "displayName": "5AsKaF2P", "languageTag": "44lXkI3z", "userName": "diRiC5Ib"}' --login_with_auth "Bearer foo"
iam-public-partial-update-user-v3 '{"avatarUrl": "Pit71JWl", "country": "YCoi4nDf", "dateOfBirth": "Pu5V6QSY", "displayName": "xEVOryVu", "languageTag": "ZYmgUeEP", "userName": "B5AGPgvk"}' --login_with_auth "Bearer foo"
iam-public-send-verification-code-v3 '{"context": "0Zthaj0E", "emailAddress": "BA4azRz0", "languageTag": "d56smobo"}' --login_with_auth "Bearer foo"
iam-public-user-verification-v3 '{"code": "r4p1PlgQ", "contactType": "B9EcNGOe", "languageTag": "BRY6G5ae", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v3 '{"code": "eDLaZ8JC", "country": "vbeTfW0h", "dateOfBirth": "gzrabLJx", "displayName": "EwJrEBmQ", "emailAddress": "64haNOzl", "password": "Gu68UYyu", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-verify-headless-account-v3 '{"emailAddress": "jdDetnoT", "password": "0rfWtVPw"}' --login_with_auth "Bearer foo"
iam-public-update-password-v3 '{"languageTag": "Qfq6V92g", "newPassword": "bfPouNdm", "oldPassword": "P7fckVnu"}' --login_with_auth "Bearer foo"
iam-public-create-justice-user 'DGvYIb1p' --login_with_auth "Bearer foo"
iam-public-platform-link-v3 '5tcR5z8Z' 'JLjSHcaR' --login_with_auth "Bearer foo"
iam-public-platform-unlink-v3 '{"platformNamespace": "3X4tZmwr"}' '0QmOnsEg' --login_with_auth "Bearer foo"
iam-public-platform-unlink-all-v3 '49eXp0xQ' --login_with_auth "Bearer foo"
iam-public-force-platform-link-v3 'kZ2JjuwW' 'Wy0tU11P' --login_with_auth "Bearer foo"
iam-public-web-link-platform 'CeSrvejU' --login_with_auth "Bearer foo"
iam-public-web-link-platform-establish 'KwVfF37V' 'r7mkDzFB' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"code": "I1VwhkVS", "emailAddress": "KDlNFOUH", "newPassword": "BJsvTsqk"}' --login_with_auth "Bearer foo"
iam-public-get-user-by-user-id-v3 '9hg4hj6n' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 'UdebW6Us' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 'kbPkkZAk' --login_with_auth "Bearer foo"
iam-public-get-user-information-v3 '01f1KxCt' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 'WADU2guN' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 '6U9w13W1' --login_with_auth "Bearer foo"
iam-public-list-justice-platform-accounts-v3 'K9TZQ4qR' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "LEi5wowE", "platformUserId": "36rfmM0C"}' 'Cs35TPUP' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["LmsY8Wgw"], "requestId": "Sx1DI5GH"}' '9bv9ZTo2' --login_with_auth "Bearer foo"
iam-public-get-publisher-user-v3 'HpA6pzjH' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 'pZO0E9iL' 'gRPJK3nB' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 'ae3GOgbQ' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-public-send-verification-link-v3 '{"languageTag": "rqra0Ptk"}' --login_with_auth "Bearer foo"
iam-public-verify-user-by-link-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler 'fvOpY2ra' 'mp5lnBn6' --login_with_auth "Bearer foo"
iam-login-sso-client 'xmBkfMtC' --login_with_auth "Bearer foo"
iam-logout-sso-client '66hFq0kP' --login_with_auth "Bearer foo"
iam-request-game-token-response-v3 'OkORm2Xj' --login_with_auth "Bearer foo"
iam-admin-get-devices-by-user-v4 --login_with_auth "Bearer foo"
iam-admin-get-banned-devices-v4 --login_with_auth "Bearer foo"
iam-admin-get-user-device-bans-v4 'lNEE5ecP' --login_with_auth "Bearer foo"
iam-admin-ban-device-v4 '{"comment": "zAmi0ySJ", "deviceId": "HfPloP1X", "deviceType": "kYK4MgIs", "enabled": true, "endDate": "SFMPyMhy", "ext": {"w1OLZPVw": {}}, "reason": "wxH4BIDJ"}' --login_with_auth "Bearer foo"
iam-admin-get-device-ban-v4 'uDoShMMf' --login_with_auth "Bearer foo"
iam-admin-update-device-ban-v4 '{"enabled": true}' 'll8N0VvC' --login_with_auth "Bearer foo"
iam-admin-generate-report-v4 'hHz9urmt' --login_with_auth "Bearer foo"
iam-admin-get-device-types-v4 --login_with_auth "Bearer foo"
iam-admin-get-device-bans-v4 '7QWvE8s6' --login_with_auth "Bearer foo"
iam-admin-decrypt-device-v4 'Uz8BRuYW' --login_with_auth "Bearer foo"
iam-admin-unban-device-v4 'DTtL6MTT' --login_with_auth "Bearer foo"
iam-admin-get-users-by-device-v4 'RkCbb9S5' --login_with_auth "Bearer foo"
iam-admin-create-test-users-v4 '{"count": 84}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["1IVHGT88"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "prREBgYO", "country": "WdHJ9Jum", "dateOfBirth": "ohtU13gf", "displayName": "7TRigNZj", "languageTag": "5w5y3HmK", "userName": "8QVOa62e"}' 'QZtbLLcF' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "671WLtv3", "emailAddress": "8Hecczop"}' 'FmeRwpcJ' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 'BZyi3mLC' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 '4KzekiSz' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["eyolnOQt"], "roleId": "0joVHgCy"}' 'tC6lRG98' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["YxnHbRdo"], "roleId": "TKKeuSjf"}' 'Ze9i1osg' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["hF1hzi1N"], "roleId": "l47syJ5i"}' 'bzSHZeCL' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "EqA61yTr"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 'MgsycTgm' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 'Pzc20EuO' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": false, "deletable": true, "isWildcard": true, "roleName": "lSZPY07r"}' 'EVSjzHjL' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 2, "resource": "XjG6DSmp", "schedAction": 31, "schedCron": "3op8htaR", "schedRange": ["LxtW4PvF"]}]}' 'kESTULat' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 62, "resource": "1Le7cR7q", "schedAction": 82, "schedCron": "WhZmmKz4", "schedRange": ["1i1Tp78F"]}]}' 'ipJHahVi' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["JvLYW0kd"]' 'mlk2luqS' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'OOA2VOZB' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["oNbB98Pu"], "namespace": "SGykqFzP", "userId": "wSMXT53b"}' 'BuL38beO' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "YDVuHZQ9", "userId": "LYt6w23W"}' 'f8iEQo72' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "sH0aRdcD", "country": "lDyGcsfI", "dateOfBirth": "uI4Dv5lE", "displayName": "JpK1AyRl", "languageTag": "zsrRXEFZ", "userName": "ivQOHG6w"}' --login_with_auth "Bearer foo"
iam-admin-disable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-admin-enable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-admin-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-admin-get-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-generate-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-download-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-enable-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 'VicNrats' --login_with_auth "Bearer foo"
iam-admin-invite-user-v4 '{"assignedNamespaces": ["vvHLmIoh"], "emailAddresses": ["fNISLXMD"], "isAdmin": true, "roleId": "dm5FE4ll"}' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "QMnutJbp", "policyId": "Eo4mUNHF", "policyVersionId": "tdml2xNv"}], "authType": "EMAILPASSWD", "country": "WacJc3Fm", "dateOfBirth": "7Z548uuK", "displayName": "goCBqS5u", "emailAddress": "IdCbwCee", "password": "q9ouEdDt", "passwordMD5Sum": "jOgsypLk", "username": "m2ZYew5H", "verified": false}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "nYyj6MXf", "policyId": "9G1ntyeb", "policyVersionId": "voeHenAA"}], "authType": "EMAILPASSWD", "code": "7EfxIH44", "country": "6oUnP2S7", "dateOfBirth": "4unXwg0J", "displayName": "KqVWW1rj", "emailAddress": "K1epwkAv", "password": "csYvbgfB", "passwordMD5Sum": "VPpTa8Yu", "reachMinimumAge": true, "username": "7TKiNXmz"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "MrMD5Tba", "policyId": "UxTCTng0", "policyVersionId": "xjtdBrjs"}], "authType": "EMAILPASSWD", "country": "ykt2Ck2g", "dateOfBirth": "OlSatECZ", "displayName": "2UgwQLqD", "password": "qYSxTPuV", "reachMinimumAge": false, "username": "Bqirdp3y"}' 'xnsETl1S' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "vhQudsjI", "country": "hXdxiSoW", "dateOfBirth": "pnnxgX7B", "displayName": "CPMqzQIx", "languageTag": "ibhpNYsH", "userName": "tdB3Ikju"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "aZqhJilr", "emailAddress": "ZkSSKgP5"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "rxCR77G9", "country": "d5CA1GOR", "dateOfBirth": "SbL9n0db", "displayName": "WDEupmdL", "emailAddress": "QzPnNfBA", "password": "cWArbkCf", "reachMinimumAge": false, "username": "HIZb03ot", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"emailAddress": "mBuS9V2p", "password": "CZ23UHmk", "username": "0lpJ4JLl"}' --login_with_auth "Bearer foo"
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
iam-public-make-factor-my-default-v4 '01qi7L2o' --login_with_auth "Bearer foo"
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
echo "1..333"

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
eval_tap 0 80 'AdminGetAgeRestrictionStatusV2 # SKIP deprecated' test.out

#- 81 AdminUpdateAgeRestrictionConfigV2
eval_tap 0 81 'AdminUpdateAgeRestrictionConfigV2 # SKIP deprecated' test.out

#- 82 GetListCountryAgeRestriction
eval_tap 0 82 'GetListCountryAgeRestriction # SKIP deprecated' test.out

#- 83 UpdateCountryAgeRestriction
eval_tap 0 83 'UpdateCountryAgeRestriction # SKIP deprecated' test.out

#- 84 AdminSearchUsersV2
eval_tap 0 84 'AdminSearchUsersV2 # SKIP deprecated' test.out

#- 85 AdminGetUserByUserIdV2
eval_tap 0 85 'AdminGetUserByUserIdV2 # SKIP deprecated' test.out

#- 86 AdminUpdateUserV2
eval_tap 0 86 'AdminUpdateUserV2 # SKIP deprecated' test.out

#- 87 AdminBanUserV2
eval_tap 0 87 'AdminBanUserV2 # SKIP deprecated' test.out

#- 88 AdminGetUserBanV2
eval_tap 0 88 'AdminGetUserBanV2 # SKIP deprecated' test.out

#- 89 AdminDisableUserV2
eval_tap 0 89 'AdminDisableUserV2 # SKIP deprecated' test.out

#- 90 AdminEnableUserV2
eval_tap 0 90 'AdminEnableUserV2 # SKIP deprecated' test.out

#- 91 AdminResetPasswordV2
eval_tap 0 91 'AdminResetPasswordV2 # SKIP deprecated' test.out

#- 92 AdminDeletePlatformLinkV2
eval_tap 0 92 'AdminDeletePlatformLinkV2 # SKIP deprecated' test.out

#- 93 AdminPutUserRolesV2
eval_tap 0 93 'AdminPutUserRolesV2 # SKIP deprecated' test.out

#- 94 AdminCreateUserRolesV2
eval_tap 0 94 'AdminCreateUserRolesV2 # SKIP deprecated' test.out

#- 95 PublicGetCountryAgeRestriction
eval_tap 0 95 'PublicGetCountryAgeRestriction # SKIP deprecated' test.out

#- 96 PublicCreateUserV2
eval_tap 0 96 'PublicCreateUserV2 # SKIP deprecated' test.out

#- 97 PublicForgotPasswordV2
eval_tap 0 97 'PublicForgotPasswordV2 # SKIP deprecated' test.out

#- 98 PublicResetPasswordV2
eval_tap 0 98 'PublicResetPasswordV2 # SKIP deprecated' test.out

#- 99 PublicGetUserByUserIDV2
eval_tap 0 99 'PublicGetUserByUserIDV2 # SKIP deprecated' test.out

#- 100 PublicUpdateUserV2
eval_tap 0 100 'PublicUpdateUserV2 # SKIP deprecated' test.out

#- 101 PublicGetUserBan
eval_tap 0 101 'PublicGetUserBan # SKIP deprecated' test.out

#- 102 PublicUpdatePasswordV2
eval_tap 0 102 'PublicUpdatePasswordV2 # SKIP deprecated' test.out

#- 103 GetListJusticePlatformAccounts
eval_tap 0 103 'GetListJusticePlatformAccounts # SKIP deprecated' test.out

#- 104 PublicPlatformLinkV2
eval_tap 0 104 'PublicPlatformLinkV2 # SKIP deprecated' test.out

#- 105 PublicDeletePlatformLinkV2
eval_tap 0 105 'PublicDeletePlatformLinkV2 # SKIP deprecated' test.out

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
    '[{"field": "DUoVRUb3", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "blockedWord": ["RUbZVBVS"], "description": [{"language": "7OK2Zrdc", "message": ["sckMekRO"]}], "isCustomRegex": true, "letterCase": "kK2eFaGL", "maxLength": 28, "maxRepeatingAlphaNum": 88, "maxRepeatingSpecialCharacter": 25, "minCharType": 61, "minLength": 60, "regex": "PbLywJsy", "specialCharacterLocation": "Uie6fZgL", "specialCharacters": ["llUPsO8l"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    'g46Si700' \
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
    '{"ageRestriction": 42, "enable": true}' \
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
    '{"ageRestriction": 0}' \
    'ajDAOx0i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
$PYTHON -m $MODULE 'iam-admin-get-banned-users-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-ban-user-bulk-v3' \
    '{"ban": "JjYleakt", "comment": "qv2WkljQ", "endDate": "uD5mnJON", "reason": "qHGq8mB7", "skipNotif": false, "userIds": ["F2lMFcag"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "hFXJIJfl", "userId": "RHFcsIqC"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'AdminUnbanUserBulkV3' test.out

#- 119 AdminGetBansTypeWithNamespaceV3
$PYTHON -m $MODULE 'iam-admin-get-bans-type-with-namespace-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'AdminGetBansTypeWithNamespaceV3' test.out

#- 120 AdminGetClientsByNamespaceV3
$PYTHON -m $MODULE 'iam-admin-get-clients-by-namespace-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
$PYTHON -m $MODULE 'iam-admin-create-client-v3' \
    '{"audiences": ["y4xDifSS"], "baseUri": "Q5On2ccE", "clientId": "cl3xeiO4", "clientName": "bwF5JOjG", "clientPermissions": [{"action": 29, "resource": "GxKM3qMc", "schedAction": 9, "schedCron": "5tfLcpjF", "schedRange": ["ZMKCbp0p"]}], "clientPlatform": "EbLCLFpH", "deletable": true, "namespace": "MYF83607", "oauthAccessTokenExpiration": 47, "oauthClientType": "EpzdnYtp", "oauthRefreshTokenExpiration": 19, "redirectUri": "a5ig2isQ", "secret": "Zga6Vy76", "twoFactorEnabled": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    'zPiQRjYa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    '8fv5fIt2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["2tIZhjhg"], "baseUri": "kigW22zX", "clientName": "MWXfbcM0", "clientPermissions": [{"action": 64, "resource": "IALIbFCQ", "schedAction": 12, "schedCron": "BcLNT6iO", "schedRange": ["QVYx5rW2"]}], "clientPlatform": "gMsI1aYB", "deletable": false, "namespace": "tSn3UDeK", "oauthAccessTokenExpiration": 19, "oauthRefreshTokenExpiration": 69, "redirectUri": "4WYXLqjN", "twoFactorEnabled": false}' \
    'tOBTraBx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 96, "resource": "RTVuYEqG"}]}' \
    'lKDwTKXB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 34, "resource": "XiQcd9IW"}]}' \
    '8kiCKeQJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '96' \
    'ZBvcq1ET' \
    'vWBxYZJh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteClientPermissionV3' test.out

#- 128 RetrieveAllThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-all-third-party-login-platform-credential-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'RetrieveAllThirdPartyLoginPlatformCredentialV3' test.out

#- 129 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3' test.out

#- 130 RetrieveAllSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-all-sso-login-platform-credential-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 131 RetrieveThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-third-party-login-platform-credential-v3' \
    '7B8gbnSu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "9M2OxD2u", "AWSCognitoRegion": "daeYpCXY", "AWSCognitoUserPool": "SMiy87CT", "AllowedClients": ["qEQBg36m"], "AppId": "y3sY2clr", "AuthorizationEndpoint": "Dcain0cO", "ClientId": "VF1zHwDT", "Environment": "I0sJ1Q0k", "FederationMetadataURL": "phMTggSP", "GenericOauthFlow": false, "IsActive": true, "Issuer": "AP7vU971", "JWKSEndpoint": "Czw2nbg8", "KeyID": "C7Mvywhu", "NetflixCertificates": {"encryptedPrivateKey": "6MjOjuGz", "encryptedPrivateKeyName": "o1Fz4tU0", "publicCertificate": "aSn98N8q", "publicCertificateName": "OUA0z92R", "rootCertificate": "aDe8ngT8", "rootCertificateName": "LRQkMnG1"}, "OrganizationId": "LZyF2mdY", "PlatformName": "Y6ZMfuTY", "RedirectUri": "TKsue48q", "RegisteredDomains": [{"affectedClientIDs": ["BEBNAV5B"], "domain": "Te6ec1zA", "namespaces": ["92URCLSG"], "roleId": "PmRBZWun"}], "Secret": "HW7MYvr6", "TeamID": "QA7Ppepc", "TokenAuthenticationType": "92HA94eA", "TokenClaimsMapping": {"CdeyfUpg": "iPpf8nxK"}, "TokenEndpoint": "J3dnmtPw"}' \
    'a64Y4gPE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    'KMhhu9a6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "f3xJNtUl", "AWSCognitoRegion": "KLlIIAeH", "AWSCognitoUserPool": "bm5M6LsY", "AllowedClients": ["1VMuIEcR"], "AppId": "ls68M3MP", "AuthorizationEndpoint": "MRPBepyy", "ClientId": "Mz6zfR1p", "Environment": "vTYYtDOi", "FederationMetadataURL": "Ei4RuEcH", "GenericOauthFlow": true, "IsActive": false, "Issuer": "pOZQFlwO", "JWKSEndpoint": "iuKGDFgK", "KeyID": "49YuKnXk", "NetflixCertificates": {"encryptedPrivateKey": "s0m8ANrc", "encryptedPrivateKeyName": "Ral7ta3f", "publicCertificate": "ojA3h4MM", "publicCertificateName": "W3AJ5zls", "rootCertificate": "FBwjvLYv", "rootCertificateName": "mg6avudQ"}, "OrganizationId": "FF1CPNY9", "PlatformName": "u2dVYdgl", "RedirectUri": "OOoCeK0k", "RegisteredDomains": [{"affectedClientIDs": ["PKmBqVux"], "domain": "3lXcD8ae", "namespaces": ["rtAVCqs8"], "roleId": "XT8xy3nJ"}], "Secret": "06KkseA0", "TeamID": "ARj9ricf", "TokenAuthenticationType": "ayvnhi8M", "TokenClaimsMapping": {"DdY4WLHo": "aUkYnQp5"}, "TokenEndpoint": "egdmVE8I"}' \
    'mivNtQxq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["WRKHohOD"], "assignedNamespaces": ["oWOr98kj"], "domain": "BUas9jjz", "roleId": "2FrgiaGr"}' \
    'cB7dIOVK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "IPSJJHo5"}' \
    'W8tKH8ou' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    '9SdbxSXc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "rEFCwqeG", "apiKey": "NLdIBRdl", "appId": "iFQVMKEz", "federationMetadataUrl": "VUWlUWDs", "isActive": true, "redirectUri": "1EQU0oep", "secret": "EvcjaSgE", "ssoUrl": "h6jJnFxi"}' \
    'nIHJ1o7a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'q5Zznd5e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "acobTsuR", "apiKey": "lhreQVFI", "appId": "D3o8hJWV", "federationMetadataUrl": "jKIOAw70", "isActive": true, "redirectUri": "vAHhSGWU", "secret": "vzq1Za3I", "ssoUrl": "BC4vQFsU"}' \
    'JPfiaJp1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'rt7OBgBC' \
    'e6N0eI65' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'Mn5tngEY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'GetAdminUsersByRoleIdV3' test.out

#- 143 AdminGetUserByEmailAddressV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-email-address-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'AdminGetUserByEmailAddressV3' test.out

#- 144 AdminListUserIDByUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-user-i-ds-v3' \
    '{"userIds": ["XgPVT5Cq"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["XDZBVMJy"], "isAdmin": false, "roles": ["KFO92YDt"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'AdminInviteUserV3' test.out

#- 146 AdminListUsersV3
$PYTHON -m $MODULE 'iam-admin-list-users-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'AdminListUsersV3' test.out

#- 147 AdminSearchUserV3
$PYTHON -m $MODULE 'iam-admin-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'AdminSearchUserV3' test.out

#- 148 AdminGetBulkUserByEmailAddressV3
$PYTHON -m $MODULE 'iam-admin-get-bulk-user-by-email-address-v3' \
    '{"listEmailAddressRequest": ["aZvJoKS0"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'AdminGetBulkUserByEmailAddressV3' test.out

#- 149 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'OxyipZuO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'AdminGetUserByUserIdV3' test.out

#- 150 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "4N9S2YCg", "country": "Ha6XBcvG", "dateOfBirth": "RYk5rUtW", "displayName": "HCnhmzzp", "languageTag": "pV7tKNKY", "userName": "UQVBXymW"}' \
    'cNlHaFxY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AdminUpdateUserV3' test.out

#- 151 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'aGHUpmBF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'AdminGetUserBanV3' test.out

#- 152 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "yOrFKtxG", "comment": "NAi0fq4x", "endDate": "ChPLd2lO", "reason": "opc7XoVp", "skipNotif": false}' \
    'd6rCpyMr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'AdminBanUserV3' test.out

#- 153 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": false, "skipNotif": false}' \
    '7KnCVOKY' \
    '2zsBRGtd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AdminUpdateUserBanV3' test.out

#- 154 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "8QY2OLbi", "emailAddress": "jrvfr8hk", "languageTag": "njWUWdMU"}' \
    'XHvw4pNl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'AdminSendVerificationCodeV3' test.out

#- 155 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "GLjdBxLM", "ContactType": "079pDAbT", "LanguageTag": "gmsEYEq2", "validateOnly": false}' \
    'YK1vYm9f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminVerifyAccountV3' test.out

#- 156 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'lXQ7CQoe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'GetUserVerificationCode' test.out

#- 157 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'mnQG0dH0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'AdminGetUserDeletionStatusV3' test.out

#- 158 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"enabled": true}' \
    'HTPqDhkc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminUpdateUserDeletionStatusV3' test.out

#- 159 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "u5vnz6Gi", "country": "NMboBJHm", "dateOfBirth": "l0LJmpPi", "displayName": "4mqhruiC", "emailAddress": "ZLGGP5UX", "password": "kHNTMapp", "validateOnly": false}' \
    'onsUJKAD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminUpgradeHeadlessAccountV3' test.out

#- 160 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'r60EkdFr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminDeleteUserInformationV3' test.out

#- 161 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'pLsGt9yT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminGetUserLoginHistoriesV3' test.out

#- 162 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "XWUSCQcM", "newPassword": "sHN7reI2", "oldPassword": "2ks7I12t"}' \
    'AZc8sxxL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminResetPasswordV3' test.out

#- 163 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 46, "Resource": "9XQeqNWL", "SchedAction": 24, "SchedCron": "8cNJbYH5", "SchedRange": ["J4WiJLv9"]}]}' \
    'NvHwtw2M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AdminUpdateUserPermissionV3' test.out

#- 164 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 18, "Resource": "cy9ZL6Zs", "SchedAction": 55, "SchedCron": "u2XYopLW", "SchedRange": ["ZeUKJJNf"]}]}' \
    'tRpGgk1i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminAddUserPermissionsV3' test.out

#- 165 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 36, "Resource": "eREzzRG6"}]' \
    'z9wmuHdd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminDeleteUserPermissionBulkV3' test.out

#- 166 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '48' \
    'OdibI1LV' \
    'yqbdY8DG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionV3' test.out

#- 167 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'ZKAuoIKz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminGetUserPlatformAccountsV3' test.out

#- 168 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    '3Pp3zLWU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminGetListJusticePlatformAccounts' test.out

#- 169 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    'xMzMtSmM' \
    'mZP8nG0F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminGetUserMapping' test.out

#- 170 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    'oQP8q7aS' \
    'sb85gAh9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminCreateJusticeUser' test.out

#- 171 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "RD3ZzN6N", "platformUserId": "1iJ8ltt9"}' \
    'IRqCflgl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminLinkPlatformAccount' test.out

#- 172 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "n6r5f0s5"}' \
    'H6lCf3QH' \
    'a11hLLCg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminPlatformUnlinkV3' test.out

#- 173 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'w5av4LEx' \
    'dabD8g2c' \
    'vHfMRupD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformLinkV3' test.out

#- 174 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["A5xbjs3X"]' \
    'RdHUJ0GC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminDeleteUserRolesV3' test.out

#- 175 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "mflIXkgJ", "roleId": "6zkTwoak"}]' \
    'q7sEejFZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminSaveUserRoleV3' test.out

#- 176 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    '1NtONXb9' \
    'w9hsQHsz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminAddUserRoleV3' test.out

#- 177 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'IsfrlzKp' \
    'Qdd58dZP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminDeleteUserRoleV3' test.out

#- 178 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": true, "reason": "rinNtvBt"}' \
    'qFSkA68m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminUpdateUserStatusV3' test.out

#- 179 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'IVYJ5pSV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 180 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "xBsLhty3"}' \
    'pecToXA4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateClientSecretV3' test.out

#- 181 AdminGetRolesV3
$PYTHON -m $MODULE 'iam-admin-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminGetRolesV3' test.out

#- 182 AdminCreateRoleV3
$PYTHON -m $MODULE 'iam-admin-create-role-v3' \
    '{"adminRole": false, "deletable": true, "isWildcard": false, "managers": [{"displayName": "go7Z6mwN", "namespace": "C4FY69mM", "userId": "87joJNOG"}], "members": [{"displayName": "B83Ns6Hl", "namespace": "5Poab6lK", "userId": "oVqNBUzI"}], "permissions": [{"action": 46, "resource": "OfglquS2", "schedAction": 33, "schedCron": "2DoWr9zv", "schedRange": ["FtKa2mOA"]}], "roleName": "qOokV1pl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminCreateRoleV3' test.out

#- 183 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'xQ2YriTP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminGetRoleV3' test.out

#- 184 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'fipD67jI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminDeleteRoleV3' test.out

#- 185 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": false, "isWildcard": false, "roleName": "ZkrtLnh2"}' \
    'U1RQlMxk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminUpdateRoleV3' test.out

#- 186 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    'fNMPNtqv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminGetRoleAdminStatusV3' test.out

#- 187 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    '2TMz1b7S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateAdminRoleStatusV3' test.out

#- 188 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'nzkXOek8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminRemoveRoleAdminV3' test.out

#- 189 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    '3Igm1wkS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminGetRoleManagersV3' test.out

#- 190 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "WsYvAsu1", "namespace": "8obUdc8m", "userId": "bvXcwcgM"}]}' \
    'qOXMziXr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminAddRoleManagersV3' test.out

#- 191 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "VdsEc3Cl", "namespace": "FP3mJwus", "userId": "CBTe4kLc"}]}' \
    'uqL40NYg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminRemoveRoleManagersV3' test.out

#- 192 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'ekRavpaG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminGetRoleMembersV3' test.out

#- 193 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "TA9BTyCC", "namespace": "yN4Fw9i6", "userId": "mI2W3tjj"}]}' \
    'CqPVyYs0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminAddRoleMembersV3' test.out

#- 194 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "1hEYzWw3", "namespace": "qrcxM0DP", "userId": "AXQBNMP7"}]}' \
    'j3xfPaoZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminRemoveRoleMembersV3' test.out

#- 195 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 1, "resource": "WFspkU5k", "schedAction": 26, "schedCron": "6PlPqD4A", "schedRange": ["gfasBfcl"]}]}' \
    'BhZjZbLn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminUpdateRolePermissionsV3' test.out

#- 196 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 24, "resource": "ghKwPyVI", "schedAction": 27, "schedCron": "3qaHP7KN", "schedRange": ["ulyfrENV"]}]}' \
    'QkpcaWHf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminAddRolePermissionsV3' test.out

#- 197 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["6T2xOOlj"]' \
    'n7c6c9ef' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminDeleteRolePermissionsV3' test.out

#- 198 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '71' \
    'I02TZxrg' \
    'LBFJEkph' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'AdminDeleteRolePermissionV3' test.out

#- 199 AdminGetMyUserV3
$PYTHON -m $MODULE 'iam-admin-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'AdminGetMyUserV3' test.out

#- 200 UserAuthenticationV3
$PYTHON -m $MODULE 'iam-user-authentication-v3' \
    'Fz0h6Wpo' \
    'VpVc2HBB' \
    'mj6cEi02' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 200 'UserAuthenticationV3' test.out

#- 201 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    'hXl42ubC' \
    'Rfy4GjKn' \
    '5ItHXLDZ' \
    'qpRhqnR7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'AuthenticationWithPlatformLinkV3' test.out

#- 202 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    '42GcbLuQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 203 GetCountryLocationV3
$PYTHON -m $MODULE 'iam-get-country-location-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'GetCountryLocationV3' test.out

#- 204 Logout
$PYTHON -m $MODULE 'iam-logout' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'Logout' test.out

#- 205 RequestGameTokenCodeResponseV3
$PYTHON -m $MODULE 'iam-request-game-token-code-response-v3' \
    'OGMOEzmd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'RequestGameTokenCodeResponseV3' test.out

#- 206 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'jNhT0S46' \
    'kqyfMBSa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 207 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    'Zc4SA16M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'RevokeUserV3' test.out

#- 208 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    '8gQCD7aB' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 208 'AuthorizeV3' test.out

#- 209 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'YevNkfcQ' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 209 'TokenIntrospectionV3' test.out

#- 210 GetJWKSV3
$PYTHON -m $MODULE 'iam-get-jwksv3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'GetJWKSV3' test.out

#- 211 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    'vl4Oso7t' \
    'x65zXCiT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'Change2faMethod' test.out

#- 212 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    'fjorLFqT' \
    'mIUFUoon' \
    'HBI13SZF' \
    'False' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'Verify2faCode' test.out

#- 213 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'm0F8vS2B' \
    'rZ3nq88Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 214 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'SSD7zV0C' \
    '8FvVU3kR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'AuthCodeRequestV3' test.out

#- 215 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'XBGPXIdf' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 215 'PlatformTokenGrantV3' test.out

#- 216 GetRevocationListV3
$PYTHON -m $MODULE 'iam-get-revocation-list-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'GetRevocationListV3' test.out

#- 217 TokenRevocationV3
$PYTHON -m $MODULE 'iam-token-revocation-v3' \
    't1biZHuh' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 217 'TokenRevocationV3' test.out

#- 218 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'refresh_token' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 218 'TokenGrantV3' test.out

#- 219 VerifyTokenV3
$PYTHON -m $MODULE 'iam-verify-token-v3' \
    'FPHdXcyv' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 219 'VerifyTokenV3' test.out

#- 220 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'ZEhYeUSy' \
    '5Ukc65na' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'PlatformAuthenticationV3' test.out

#- 221 PublicGetInputValidations
$PYTHON -m $MODULE 'iam-public-get-input-validations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'PublicGetInputValidations' test.out

#- 222 PublicGetCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction-v3' \
    'P11R8Xww' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'PublicGetCountryAgeRestrictionV3' test.out

#- 223 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-public-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 224 RetrieveActiveOIDCClientsPublicV3
$PYTHON -m $MODULE 'iam-retrieve-active-oidc-clients-public-v3' \
    '9vq9nMa2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 225 PublicListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["Btgwyuf2"]}' \
    'fjV30SLx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 226 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    'i7uyhaeF' \
    'tcO9XNy6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'PublicGetUserByPlatformUserIDV3' test.out

#- 227 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    '3QO9vW0c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'PublicGetAsyncStatus' test.out

#- 228 PublicSearchUserV3
$PYTHON -m $MODULE 'iam-public-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'PublicSearchUserV3' test.out

#- 229 PublicCreateUserV3
$PYTHON -m $MODULE 'iam-public-create-user-v3' \
    '{"PasswordMD5Sum": "k7TEDE8L", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "EQBeGPLi", "policyId": "E6tHCr0G", "policyVersionId": "PFvT0SAK"}], "authType": "91y5vCeB", "code": "IJq0B9Uc", "country": "I6c5cre9", "dateOfBirth": "ealHOZph", "displayName": "cLncnjnm", "emailAddress": "yU8FSxXd", "password": "CrskoFqn", "reachMinimumAge": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'PublicCreateUserV3' test.out

#- 230 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'wq9Laz1G' \
    'Lt5Mhf8Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'CheckUserAvailability' test.out

#- 231 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["7ahmbVPm"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'PublicBulkGetUsers' test.out

#- 232 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "2g7xAFfR", "languageTag": "RLUjfWS9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'PublicSendRegistrationCode' test.out

#- 233 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "sftIfHGe", "emailAddress": "5bUTSXOv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'PublicVerifyRegistrationCode' test.out

#- 234 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "12PMcRO6", "languageTag": "E2Mkre5q"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'PublicForgotPasswordV3' test.out

#- 235 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    '7FvaACp6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'GetAdminInvitationV3' test.out

#- 236 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "e0fzjkPN", "policyId": "NS0BfgF6", "policyVersionId": "inIRsZ5h"}], "authType": "EMAILPASSWD", "country": "qNzVszGV", "dateOfBirth": "P5P1iwhc", "displayName": "f30C1KHR", "password": "ZHMGy5vb", "reachMinimumAge": false}' \
    'ZvYIFFct' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'CreateUserFromInvitationV3' test.out

#- 237 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "EKOLxSRx", "country": "e0wmWBMc", "dateOfBirth": "NiWoobB6", "displayName": "o6alTQcP", "languageTag": "0EpE9wGN", "userName": "VwkgfJJ2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'UpdateUserV3' test.out

#- 238 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "HIalfzgR", "country": "pTf9lxF1", "dateOfBirth": "JPBizXZt", "displayName": "rGe8LyOH", "languageTag": "24nneZHF", "userName": "eRld0bGA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'PublicPartialUpdateUserV3' test.out

#- 239 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "7JxWYzaE", "emailAddress": "aimvokcW", "languageTag": "X59kwiYH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'PublicSendVerificationCodeV3' test.out

#- 240 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "gHT6Ivd0", "contactType": "fGpU209n", "languageTag": "VRclumQT", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'PublicUserVerificationV3' test.out

#- 241 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "vr5rRyYz", "country": "aNmz3PjM", "dateOfBirth": "x2T89NTr", "displayName": "FRUCXFkr", "emailAddress": "uxegpkcX", "password": "Cfzgcvv0", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'PublicUpgradeHeadlessAccountV3' test.out

#- 242 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "5EQhcomP", "password": "S1E7cpsL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'PublicVerifyHeadlessAccountV3' test.out

#- 243 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "gr2zEnjy", "newPassword": "RNjEC3FM", "oldPassword": "DcZvwwf8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'PublicUpdatePasswordV3' test.out

#- 244 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'aU98In31' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'PublicCreateJusticeUser' test.out

#- 245 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'mF4jlwKy' \
    'GxTF1l5q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'PublicPlatformLinkV3' test.out

#- 246 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "1Np0sT1X"}' \
    '8J2eAWOz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'PublicPlatformUnlinkV3' test.out

#- 247 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'jmh9UzIf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'PublicPlatformUnlinkAllV3' test.out

#- 248 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    'nhoo6xUm' \
    'TleUnJFM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'PublicForcePlatformLinkV3' test.out

#- 249 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    '7XhoDxGi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'PublicWebLinkPlatform' test.out

#- 250 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'k2JSfZ64' \
    'wWePq610' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'PublicWebLinkPlatformEstablish' test.out

#- 251 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "3PONKIS7", "emailAddress": "F9emW4R1", "newPassword": "5tAsiG31"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'ResetPasswordV3' test.out

#- 252 PublicGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-public-get-user-by-user-id-v3' \
    'CEyUOuOZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'PublicGetUserByUserIdV3' test.out

#- 253 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    'hmnHkvek' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'PublicGetUserBanHistoryV3' test.out

#- 254 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    '6Aa5kNno' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 255 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    'clxs9kxc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'PublicGetUserInformationV3' test.out

#- 256 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'vIpV7mCY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'PublicGetUserLoginHistoriesV3' test.out

#- 257 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'fWKjY9Cs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'PublicGetUserPlatformAccountsV3' test.out

#- 258 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    'QYsGyhEO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'PublicListJusticePlatformAccountsV3' test.out

#- 259 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "ntEkedM1", "platformUserId": "A0bFqvjx"}' \
    'bT3YuVda' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'PublicLinkPlatformAccount' test.out

#- 260 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["BN5RSjhc"], "requestId": "juDvNrXL"}' \
    '845jfh5t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'PublicForceLinkPlatformWithProgression' test.out

#- 261 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    'Z0hqJLjQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'PublicGetPublisherUserV3' test.out

#- 262 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'UmoYUnC8' \
    '49OBNuLZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 263 PublicGetRolesV3
$PYTHON -m $MODULE 'iam-public-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'PublicGetRolesV3' test.out

#- 264 PublicGetRoleV3
$PYTHON -m $MODULE 'iam-public-get-role-v3' \
    'tofGAAaM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'PublicGetRoleV3' test.out

#- 265 PublicGetMyUserV3
$PYTHON -m $MODULE 'iam-public-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'PublicGetMyUserV3' test.out

#- 266 PublicSendVerificationLinkV3
$PYTHON -m $MODULE 'iam-public-send-verification-link-v3' \
    '{"languageTag": "pBQArU4R"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'PublicSendVerificationLinkV3' test.out

#- 267 PublicVerifyUserByLinkV3
$PYTHON -m $MODULE 'iam-public-verify-user-by-link-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'PublicVerifyUserByLinkV3' test.out

#- 268 PlatformAuthenticateSAMLV3Handler
$PYTHON -m $MODULE 'iam-platform-authenticate-samlv3-handler' \
    'S0FQRy5Q' \
    'z5VcyfBp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'PlatformAuthenticateSAMLV3Handler' test.out

#- 269 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'HjtvFwKS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'LoginSSOClient' test.out

#- 270 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'JyZeqvpe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'LogoutSSOClient' test.out

#- 271 RequestGameTokenResponseV3
$PYTHON -m $MODULE 'iam-request-game-token-response-v3' \
    'vcVXTxs9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'RequestGameTokenResponseV3' test.out

#- 272 AdminGetDevicesByUserV4
$PYTHON -m $MODULE 'iam-admin-get-devices-by-user-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'AdminGetDevicesByUserV4' test.out

#- 273 AdminGetBannedDevicesV4
$PYTHON -m $MODULE 'iam-admin-get-banned-devices-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'AdminGetBannedDevicesV4' test.out

#- 274 AdminGetUserDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-user-device-bans-v4' \
    'LTorIyx2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'AdminGetUserDeviceBansV4' test.out

#- 275 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "3LhLy7ds", "deviceId": "3g3BuHTP", "deviceType": "F19dBYFw", "enabled": true, "endDate": "5Ya4eOwW", "ext": {"qW8HiLpT": {}}, "reason": "i1W63Hcc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'AdminBanDeviceV4' test.out

#- 276 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    'gM5kYu36' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'AdminGetDeviceBanV4' test.out

#- 277 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": false}' \
    'TL55W4ws' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'AdminUpdateDeviceBanV4' test.out

#- 278 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    '3KCyplY1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'AdminGenerateReportV4' test.out

#- 279 AdminGetDeviceTypesV4
$PYTHON -m $MODULE 'iam-admin-get-device-types-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'AdminGetDeviceTypesV4' test.out

#- 280 AdminGetDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-device-bans-v4' \
    'ocKDCVaq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'AdminGetDeviceBansV4' test.out

#- 281 AdminDecryptDeviceV4
$PYTHON -m $MODULE 'iam-admin-decrypt-device-v4' \
    'rVeegT3u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'AdminDecryptDeviceV4' test.out

#- 282 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    'GDIIcvuu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'AdminUnbanDeviceV4' test.out

#- 283 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    'okt8TC38' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'AdminGetUsersByDeviceV4' test.out

#- 284 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"count": 24}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'AdminCreateTestUsersV4' test.out

#- 285 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["YoUanQT4"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'AdminBulkCheckValidUserIDV4' test.out

#- 286 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "Mmznv7r2", "country": "jthibgeC", "dateOfBirth": "LX41qyOi", "displayName": "Lgd8Wy73", "languageTag": "9QHzw0TE", "userName": "zpd7TV5v"}' \
    'hMM2i3DM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'AdminUpdateUserV4' test.out

#- 287 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "6etfI7Tz", "emailAddress": "C3sKmtsy"}' \
    'EKdO6HNm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'AdminUpdateUserEmailAddressV4' test.out

#- 288 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    '3zGu71qT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'AdminDisableUserMFAV4' test.out

#- 289 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'SSJEbWlE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'AdminListUserRolesV4' test.out

#- 290 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["Tp9XOCA1"], "roleId": "X3HHMTla"}' \
    'kAWQfBuB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'AdminUpdateUserRoleV4' test.out

#- 291 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["AOCjBfYC"], "roleId": "cplye2Ga"}' \
    'PNzkrgBH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'AdminAddUserRoleV4' test.out

#- 292 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["4icml6L3"], "roleId": "6Vg2F2Q9"}' \
    'aZDJg1OT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'AdminRemoveUserRoleV4' test.out

#- 293 AdminGetRolesV4
$PYTHON -m $MODULE 'iam-admin-get-roles-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'AdminGetRolesV4' test.out

#- 294 AdminCreateRoleV4
$PYTHON -m $MODULE 'iam-admin-create-role-v4' \
    '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "vJgsb2Py"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'AdminCreateRoleV4' test.out

#- 295 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'FfJ6qcHA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'AdminGetRoleV4' test.out

#- 296 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'BdGtV9jA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'AdminDeleteRoleV4' test.out

#- 297 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "7UmLNy9P"}' \
    'kF9SnlbW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'AdminUpdateRoleV4' test.out

#- 298 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 78, "resource": "cAxv8uHD", "schedAction": 33, "schedCron": "JtYC7rzn", "schedRange": ["wNdLhqXv"]}]}' \
    'XVnjvc0B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateRolePermissionsV4' test.out

#- 299 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 77, "resource": "egJpW1Ze", "schedAction": 40, "schedCron": "hpLX1BHZ", "schedRange": ["4hnOmmyX"]}]}' \
    'u6XtjNCq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'AdminAddRolePermissionsV4' test.out

#- 300 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["Yk9TPUKc"]' \
    'DTfR7dpU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'AdminDeleteRolePermissionsV4' test.out

#- 301 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'Eo2Oe08H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'AdminListAssignedUsersV4' test.out

#- 302 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["peJBfG0n"], "namespace": "GZHe5lw2", "userId": "TlkPIxL9"}' \
    'v4fpCd0U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'AdminAssignUserToRoleV4' test.out

#- 303 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "k5h1kP1p", "userId": "kkT08Cs6"}' \
    'DdXZWowB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'AdminRevokeUserFromRoleV4' test.out

#- 304 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "gZizMvwH", "country": "szf84MAm", "dateOfBirth": "ayJJ6vzD", "displayName": "TXxsyIaT", "languageTag": "gp0pwnEJ", "userName": "L15kxO4o"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'AdminUpdateMyUserV4' test.out

#- 305 AdminDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'AdminDisableMyAuthenticatorV4' test.out

#- 306 AdminEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'AdminEnableMyAuthenticatorV4' test.out

#- 307 AdminGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-admin-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 308 AdminGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'AdminGetMyBackupCodesV4' test.out

#- 309 AdminGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'AdminGenerateMyBackupCodesV4' test.out

#- 310 AdminDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'AdminDisableMyBackupCodesV4' test.out

#- 311 AdminDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'AdminDownloadMyBackupCodesV4' test.out

#- 312 AdminEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'AdminEnableMyBackupCodesV4' test.out

#- 313 AdminGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-admin-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'AdminGetMyEnabledFactorsV4' test.out

#- 314 AdminMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-admin-make-factor-my-default-v4' \
    'VUPng5Js' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'AdminMakeFactorMyDefaultV4' test.out

#- 315 AdminInviteUserV4
$PYTHON -m $MODULE 'iam-admin-invite-user-v4' \
    '{"assignedNamespaces": ["HAkI47jO"], "emailAddresses": ["1wuAFuZc"], "isAdmin": true, "roleId": "PteKdQgU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'AdminInviteUserV4' test.out

#- 316 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "33fYWZfQ", "policyId": "MAnziTha", "policyVersionId": "E2btn0up"}], "authType": "EMAILPASSWD", "country": "TQ7XymDS", "dateOfBirth": "QNYXNEpZ", "displayName": "yFhIeqiN", "emailAddress": "HtVSnhxb", "password": "y8F6xF8M", "passwordMD5Sum": "hbJAYEDN", "username": "1xszppR6", "verified": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'PublicCreateTestUserV4' test.out

#- 317 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "KAS5zKsT", "policyId": "RXd7b3v2", "policyVersionId": "fkZIkr06"}], "authType": "EMAILPASSWD", "code": "jUtoVJLG", "country": "XekomvwD", "dateOfBirth": "849mo5vI", "displayName": "kDZYrYEf", "emailAddress": "1xYnlxHH", "password": "XjFoXtwK", "passwordMD5Sum": "W6AOnqnW", "reachMinimumAge": true, "username": "uXMWqG8f"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'PublicCreateUserV4' test.out

#- 318 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "rJx82nAF", "policyId": "exNou1Ai", "policyVersionId": "csQjKx5L"}], "authType": "EMAILPASSWD", "country": "etHEw0aC", "dateOfBirth": "QpU6EGOW", "displayName": "0VAI87DP", "password": "H0fLLiUq", "reachMinimumAge": true, "username": "ay0gET8T"}' \
    '53yEej7D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'CreateUserFromInvitationV4' test.out

#- 319 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "sqsTvNKA", "country": "XqfqMJHG", "dateOfBirth": "eHaN2k1E", "displayName": "utm9AAWD", "languageTag": "cDv3ISBg", "userName": "ZCAf2pWO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'PublicUpdateUserV4' test.out

#- 320 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "Ws4I2lOH", "emailAddress": "fiu4HraK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'PublicUpdateUserEmailAddressV4' test.out

#- 321 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "YMtgBmvC", "country": "HMtF15a7", "dateOfBirth": "T0Iheywi", "displayName": "PE1WUR1P", "emailAddress": "TFfJJ46k", "password": "zfqapbBy", "reachMinimumAge": false, "username": "YzYtTWJA", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 322 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "FCDgWOpz", "password": "3yPQfqbe", "username": "VG7i4VTA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'PublicUpgradeHeadlessAccountV4' test.out

#- 323 PublicDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'PublicDisableMyAuthenticatorV4' test.out

#- 324 PublicEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'PublicEnableMyAuthenticatorV4' test.out

#- 325 PublicGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-public-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 326 PublicGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'PublicGetMyBackupCodesV4' test.out

#- 327 PublicGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'PublicGenerateMyBackupCodesV4' test.out

#- 328 PublicDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'PublicDisableMyBackupCodesV4' test.out

#- 329 PublicDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'PublicDownloadMyBackupCodesV4' test.out

#- 330 PublicEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'PublicEnableMyBackupCodesV4' test.out

#- 331 PublicRemoveTrustedDeviceV4
$PYTHON -m $MODULE 'iam-public-remove-trusted-device-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'PublicRemoveTrustedDeviceV4' test.out

#- 332 PublicGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-public-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'PublicGetMyEnabledFactorsV4' test.out

#- 333 PublicMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-public-make-factor-my-default-v4' \
    'huFYhEgQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'PublicMakeFactorMyDefaultV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
