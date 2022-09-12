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
iam-admin-update-input-validations '[{"field": "FtBxyZcD", "validation": {"allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "blockedWord": ["QuJu8vMf"], "description": [{"language": "0IsJkTrd", "message": ["8IDcV2zX"]}], "isCustomRegex": false, "letterCase": "TKjXY1bP", "maxLength": 33, "maxRepeatingAlphaNum": 1, "maxRepeatingSpecialCharacter": 24, "minCharType": 17, "minLength": 54, "regex": "xx9Cs18E", "specialCharacterLocation": "Y84ekItq", "specialCharacters": ["RzHU1oh5"]}}]' --login_with_auth "Bearer foo"
iam-admin-reset-input-validations '70KQBVae' --login_with_auth "Bearer foo"
iam-list-admins-v3 --login_with_auth "Bearer foo"
iam-admin-get-age-restriction-status-v3 --login_with_auth "Bearer foo"
iam-admin-update-age-restriction-config-v3 '{"ageRestriction": 44, "enable": false}' --login_with_auth "Bearer foo"
iam-admin-get-list-country-age-restriction-v3 --login_with_auth "Bearer foo"
iam-admin-update-country-age-restriction-v3 '{"ageRestriction": 21}' 'rSha68n3' --login_with_auth "Bearer foo"
iam-admin-get-banned-users-v3 --login_with_auth "Bearer foo"
iam-admin-ban-user-bulk-v3 '{"ban": "Ynozp1C2", "comment": "KmIQTuBd", "endDate": "NEUsxFb8", "reason": "CJ17M7DJ", "skipNotif": false, "userIds": ["MSxECbZb"]}' --login_with_auth "Bearer foo"
iam-admin-unban-user-bulk-v3 '{"bans": [{"banId": "ygyoarOR", "userId": "oeNHSb8R"}]}' --login_with_auth "Bearer foo"
iam-admin-get-bans-type-with-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-get-clients-by-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-create-client-v3 '{"audiences": ["h3kgs9qq"], "baseUri": "JbnQsoBg", "clientId": "iVpP8Cm3", "clientName": "yvASUoxd", "clientPermissions": [{"action": 46, "resource": "xFqmAGTJ", "schedAction": 68, "schedCron": "EdagEtp4", "schedRange": ["w29KOu9c"]}], "clientPlatform": "19R6XDqW", "deletable": false, "namespace": "kP8npLEK", "oauthClientType": "MfjiX7jp", "redirectUri": "kVZk3IaQ", "secret": "YEmqGodO"}' --login_with_auth "Bearer foo"
iam-admin-get-clientsby-namespaceby-idv3 'EGt9gPOj' --login_with_auth "Bearer foo"
iam-admin-delete-client-v3 '0c6i0Jkv' --login_with_auth "Bearer foo"
iam-admin-update-client-v3 '{"audiences": ["Ias73ucY"], "baseUri": "nFAJ3DK5", "clientName": "T4Eogg0Y", "clientPermissions": [{"action": 93, "resource": "oYlpv5bV", "schedAction": 53, "schedCron": "gtsDhUTD", "schedRange": ["UscbQDjb"]}], "clientPlatform": "TQuPMz2P", "deletable": false, "namespace": "kyU89ZPO", "redirectUri": "w6zPFJ42"}' 'cwmzBBSM' --login_with_auth "Bearer foo"
iam-admin-update-client-permission-v3 '{"permissions": [{"action": 78, "resource": "coAAOjKN"}]}' 'jfcYHm09' --login_with_auth "Bearer foo"
iam-admin-add-client-permissions-v3 '{"permissions": [{"action": 0, "resource": "YgBU1sqj"}]}' 'yK0XH45P' --login_with_auth "Bearer foo"
iam-admin-delete-client-permission-v3 '0' 'RSOFQBtu' '23REZ8hR' --login_with_auth "Bearer foo"
iam-retrieve-all-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-sso-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-third-party-login-platform-credential-v3 'VX7LGOvD' --login_with_auth "Bearer foo"
iam-add-third-party-login-platform-credential-v3 '{"ACSURL": "dYiQS9i7", "AWSCognitoRegion": "mV1C91pj", "AWSCognitoUserPool": "G9gpxL6y", "AllowedClients": ["cTQdvln2"], "AppId": "LAuSQWEX", "AuthorizationEndpoint": "L6LFE1YH", "ClientId": "o9m126ZW", "Environment": "c8hHtWvb", "FederationMetadataURL": "NYqgUqsl", "GenericOauthFlow": true, "IsActive": true, "Issuer": "FPiHUIva", "JWKSEndpoint": "Cv8kU9dB", "KeyID": "BpdsJLhs", "NetflixCertificates": {"encryptedPrivateKey": "VyExrkxo", "encryptedPrivateKeyName": "ot0B7WOf", "publicCertificate": "ercZdpMc", "publicCertificateName": "i37Ds7YS", "rootCertificate": "fExaI3uz", "rootCertificateName": "LteMbFAl"}, "OrganizationId": "t4hr7HmO", "PlatformName": "YiBA5ltA", "RedirectUri": "OXmlG6eh", "RegisteredDomains": [{"affectedClientIDs": ["1dTdoTFp"], "domain": "BIcuC1dQ", "namespaces": ["Y93OJnJ6"], "roleId": "Te9vD8ld"}], "Secret": "z7Hu8AD7", "TeamID": "9kdWunvi", "TokenAuthenticationType": "zU0q1pHy", "TokenClaimsMapping": {"hhERoGgd": "rysMizBG"}, "TokenEndpoint": "SRdP2l7D"}' 'NSZ8Aq0X' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-credential-v3 'iPLQXSe0' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-credential-v3 '{"ACSURL": "7ZddOGTM", "AWSCognitoRegion": "lJjBwj9H", "AWSCognitoUserPool": "JHQKseEd", "AllowedClients": ["SXRDSvgu"], "AppId": "auw1xT7e", "AuthorizationEndpoint": "MwSl9MLH", "ClientId": "0NnTJ2ul", "Environment": "NzBvwJaQ", "FederationMetadataURL": "a547Jllv", "GenericOauthFlow": true, "IsActive": false, "Issuer": "abUt7xk6", "JWKSEndpoint": "QxyWhfqo", "KeyID": "WfJw2o8o", "NetflixCertificates": {"encryptedPrivateKey": "WUqvPCZ2", "encryptedPrivateKeyName": "HzT7NXmW", "publicCertificate": "DlXsuNId", "publicCertificateName": "QJR5lsNO", "rootCertificate": "lvkfwaSb", "rootCertificateName": "nsuLCgTo"}, "OrganizationId": "xuVTekJg", "PlatformName": "vg6h5HIp", "RedirectUri": "H0DviplE", "RegisteredDomains": [{"affectedClientIDs": ["k4vj3LDp"], "domain": "4yqDt8QU", "namespaces": ["ZDpxlHas"], "roleId": "inGcjrkm"}], "Secret": "RMttgjDS", "TeamID": "aIVBmft3", "TokenAuthenticationType": "Udg7p9PG", "TokenClaimsMapping": {"mY2H5kX4": "MsisSX28"}, "TokenEndpoint": "nARxWRpv"}' '5ou5xtvd' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-domain-v3 '{"affectedClientIDs": ["28OUfCt8"], "assignedNamespaces": ["UJC5flNy"], "domain": "j6HsTtX8", "roleId": "P3llnaaS"}' '9lqyygPc' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-domain-v3 '{"domain": "fkJIxfQZ"}' 'za8kNVbD' --login_with_auth "Bearer foo"
iam-retrieve-sso-login-platform-credential 'xVMq7HJk' --login_with_auth "Bearer foo"
iam-add-sso-login-platform-credential '{"acsUrl": "0F89xAc3", "apiKey": "YVfaENtr", "appId": "l0pTKZTX", "federationMetadataUrl": "qzHuBMYQ", "isActive": true, "redirectUri": "2jz1ZOpd", "secret": "OjSyMddB", "ssoUrl": "41JuMf7R"}' 'UyBHRj8I' --login_with_auth "Bearer foo"
iam-delete-sso-login-platform-credential-v3 'iRimRllH' --login_with_auth "Bearer foo"
iam-update-sso-platform-credential '{"acsUrl": "T6Dc40vF", "apiKey": "FA6gpU7E", "appId": "W3x1dCpm", "federationMetadataUrl": "55gOeqQI", "isActive": true, "redirectUri": "cJVKmBM1", "secret": "J1IbuTrr", "ssoUrl": "kbmuT1wh"}' 'OqmEnDXI' --login_with_auth "Bearer foo"
iam-admin-get-user-by-platform-user-idv3 'WrBPlSay' '46mv71BA' --login_with_auth "Bearer foo"
iam-get-admin-users-by-role-id-v3 'ZAOjtFJ2' --login_with_auth "Bearer foo"
iam-admin-get-user-by-email-address-v3 --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-user-i-ds-v3 '{"userIds": ["vmTj7tT7"]}' --login_with_auth "Bearer foo"
iam-admin-invite-user-v3 '{"emailAddresses": ["TZHWDdCk"], "isAdmin": true, "roles": ["ZoArWwPH"]}' --login_with_auth "Bearer foo"
iam-admin-list-users-v3 --login_with_auth "Bearer foo"
iam-admin-search-user-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-by-email-address-v3 '{"listEmailAddressRequest": ["cyFAdAtY"]}' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v3 'ciLIgRwF' --login_with_auth "Bearer foo"
iam-admin-update-user-v3 '{"avatarUrl": "Rr0gwB9t", "country": "z3vp99XV", "dateOfBirth": "lV8rK3tE", "displayName": "6n0smip1", "languageTag": "tw3L7cUd", "userName": "9pqtv6Jf"}' 'PZwcCVOX' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v3 'cVa80TmC' --login_with_auth "Bearer foo"
iam-admin-ban-user-v3 '{"ban": "wtD2lAH0", "comment": "1o6NdcBI", "endDate": "gzrDyWpF", "reason": "BYGmmBaw", "skipNotif": true}' 'oKyNpdAa' --login_with_auth "Bearer foo"
iam-admin-update-user-ban-v3 '{"enabled": true, "skipNotif": false}' '8xwUfzOl' 'QiZY4NbO' --login_with_auth "Bearer foo"
iam-admin-send-verification-code-v3 '{"context": "QXJ7uOTz", "emailAddress": "NMvuq2tN", "languageTag": "l4CX4Iji"}' 'K4DEUJRV' --login_with_auth "Bearer foo"
iam-admin-verify-account-v3 '{"Code": "K3l9Eb0R", "ContactType": "1XRb0RH8", "LanguageTag": "vS1smeOl", "validateOnly": false}' 'grdTXCza' --login_with_auth "Bearer foo"
iam-get-user-verification-code 'PBtkZMio' --login_with_auth "Bearer foo"
iam-admin-get-user-deletion-status-v3 '4wcyhloV' --login_with_auth "Bearer foo"
iam-admin-update-user-deletion-status-v3 '{"enabled": true}' 'Yp8QtcEm' --login_with_auth "Bearer foo"
iam-admin-upgrade-headless-account-v3 '{"code": "CEVc75Uf", "country": "eypWjDNh", "dateOfBirth": "zCL5sWS2", "displayName": "qwO763iE", "emailAddress": "klkzLm88", "password": "LpLuYRO3", "validateOnly": true}' '55yHpwK2' --login_with_auth "Bearer foo"
iam-admin-delete-user-information-v3 'JaqenDGn' --login_with_auth "Bearer foo"
iam-admin-get-user-login-histories-v3 '7a2NUplW' --login_with_auth "Bearer foo"
iam-admin-reset-password-v3 '{"languageTag": "iLjq06n6", "newPassword": "a0rW8Efk", "oldPassword": "paXtwYZJ"}' 'aQ4WbwNm' --login_with_auth "Bearer foo"
iam-admin-update-user-permission-v3 '{"Permissions": [{"Action": 37, "Resource": "FYetjEur", "SchedAction": 66, "SchedCron": "8eloJzNK", "SchedRange": ["tRUaTz1E"]}]}' 'Tdsmwzjk' --login_with_auth "Bearer foo"
iam-admin-add-user-permissions-v3 '{"Permissions": [{"Action": 20, "Resource": "n9oiQl05", "SchedAction": 13, "SchedCron": "7cO3ZMb6", "SchedRange": ["Ojlo6DMN"]}]}' 'pP2qMrTQ' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-bulk-v3 '[{"Action": 92, "Resource": "pjfU6wJh"}]' 'y1jOVkkU' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-v3 '23' 'S79527EZ' '25Ia8uCe' --login_with_auth "Bearer foo"
iam-admin-get-user-platform-accounts-v3 'ZFlLtEVp' --login_with_auth "Bearer foo"
iam-admin-get-list-justice-platform-accounts 'DAEbA82j' --login_with_auth "Bearer foo"
iam-admin-get-user-mapping 'y74lq0pD' 'E5xRwh5b' --login_with_auth "Bearer foo"
iam-admin-create-justice-user '45ebpcM7' 'ScSs3UOp' --login_with_auth "Bearer foo"
iam-admin-link-platform-account '{"platformId": "AwIp9rRt", "platformUserId": "n1PcCxdb"}' 'umeYgOdE' --login_with_auth "Bearer foo"
iam-admin-platform-unlink-v3 '{"platformNamespace": "BWRQiW3K"}' 'FfU8icH4' '081gRB1G' --login_with_auth "Bearer foo"
iam-admin-platform-link-v3 'yLfLg4RY' 'uEbgUDEc' 'JyIvsPwO' --login_with_auth "Bearer foo"
iam-admin-delete-user-roles-v3 '["r0BmV5iF"]' 'vfwFjTSm' --login_with_auth "Bearer foo"
iam-admin-save-user-role-v3 '[{"namespace": "IEqoLyLe", "roleId": "UGmomGX9"}]' 'sXTZ0v8p' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v3 'qLfc5SwG' 'nReUULDX' --login_with_auth "Bearer foo"
iam-admin-delete-user-role-v3 '4QUIbb5n' 'h68ZnyUt' --login_with_auth "Bearer foo"
iam-admin-update-user-status-v3 '{"enabled": true, "reason": "W9hNBSFT"}' 'tFrOmjkF' --login_with_auth "Bearer foo"
iam-admin-verify-user-without-verification-code-v3 'rFVA8t0x' --login_with_auth "Bearer foo"
iam-admin-update-client-secret-v3 '{"newSecret": "F34Xpt6Z"}' 'lTTic0kr' --login_with_auth "Bearer foo"
iam-admin-get-roles-v3 --login_with_auth "Bearer foo"
iam-admin-create-role-v3 '{"adminRole": false, "deletable": false, "isWildcard": false, "managers": [{"displayName": "o7UHCJK5", "namespace": "sp0aCvIq", "userId": "3aHVYIle"}], "members": [{"displayName": "wLRuHY83", "namespace": "bGj0HTee", "userId": "WXlIcRid"}], "permissions": [{"action": 32, "resource": "ctDpygY0", "schedAction": 0, "schedCron": "x476ED4M", "schedRange": ["MO9Tw2JH"]}], "roleName": "0qhWIwHW"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v3 'TgzJFRYw' --login_with_auth "Bearer foo"
iam-admin-delete-role-v3 '6t1IKZLO' --login_with_auth "Bearer foo"
iam-admin-update-role-v3 '{"deletable": false, "isWildcard": false, "roleName": "46QmCidg"}' 'dpP7RTC5' --login_with_auth "Bearer foo"
iam-admin-get-role-admin-status-v3 '87lmUmBz' --login_with_auth "Bearer foo"
iam-admin-update-admin-role-status-v3 'iPZBnpOf' --login_with_auth "Bearer foo"
iam-admin-remove-role-admin-v3 'kllxfq0N' --login_with_auth "Bearer foo"
iam-admin-get-role-managers-v3 'srSjw5Ho' --login_with_auth "Bearer foo"
iam-admin-add-role-managers-v3 '{"managers": [{"displayName": "g0blM1d5", "namespace": "MStYGczL", "userId": "INlEC0OE"}]}' 'sE3yzIsU' --login_with_auth "Bearer foo"
iam-admin-remove-role-managers-v3 '{"managers": [{"displayName": "P0NjluOr", "namespace": "GZTzsLW7", "userId": "Fjfs9nIk"}]}' 'cZ38fUEa' --login_with_auth "Bearer foo"
iam-admin-get-role-members-v3 'njKHbXfk' --login_with_auth "Bearer foo"
iam-admin-add-role-members-v3 '{"members": [{"displayName": "1zxdzxg0", "namespace": "UXcRyHi3", "userId": "u8BzVWu1"}]}' 'tOmhUtCg' --login_with_auth "Bearer foo"
iam-admin-remove-role-members-v3 '{"members": [{"displayName": "cpvGrEbc", "namespace": "ZUDExH1t", "userId": "ayOGXIHz"}]}' 'MRjMCtOJ' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v3 '{"permissions": [{"action": 36, "resource": "Eijlrbpy", "schedAction": 49, "schedCron": "EcQxVgJI", "schedRange": ["jMZqcWfM"]}]}' 'l6dqrpD4' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v3 '{"permissions": [{"action": 39, "resource": "nc3ZRB3I", "schedAction": 21, "schedCron": "dtPfAJEo", "schedRange": ["mwenJvQ8"]}]}' 'grtQSv6E' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v3 '["cALcMIPm"]' 's5bT51M4' --login_with_auth "Bearer foo"
iam-admin-delete-role-permission-v3 '49' 'ko8S0EnG' 'LvGvfuSy' --login_with_auth "Bearer foo"
iam-admin-get-my-user-v3 --login_with_auth "Bearer foo"
iam-user-authentication-v3 'CTyjj4mC' 'aiuMGKOF' '5GJJooSX' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-authentication-with-platform-link-v3 'Ul3YU35Q' 'HGpBABnO' 'lxDznICQ' 'VyqBg34W' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v3 'TtDkn0rt' --login_with_auth "Bearer foo"
iam-get-country-location-v3 --login_with_auth "Bearer foo"
iam-logout --login_with_auth "Bearer foo"
iam-request-game-token-code-response-v3 'n6t0Yx4z' --login_with_auth "Bearer foo"
iam-admin-retrieve-user-third-party-platform-token-v3 '12EaQ1rU' 'QYCNTiDX' --login_with_auth "Bearer foo"
iam-revoke-user-v3 '4jE3M2Is' --login_with_auth "Bearer foo"
iam-authorize-v3 'THu8QwNy' 'code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-introspection-v3 'XfIWd0mc' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-jwksv3 --login_with_auth "Bearer foo"
iam-change2fa-method 'q5T4SUc7' 'cWfCKK6D' --login_with_auth "Bearer foo"
iam-verify2fa-code 'ij1gFcen' 'EMySPfhx' 'BenDiTiA' 'True' --login_with_auth "Bearer foo"
iam-retrieve-user-third-party-platform-token-v3 'FYmFKjaE' 'Lmmll6oe' --login_with_auth "Bearer foo"
iam-auth-code-request-v3 'xId1OKGU' 'N2Uznd7u' --login_with_auth "Bearer foo"
iam-platform-token-grant-v3 'Va7t14yv' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-revocation-list-v3 --login_with_auth "Bearer foo"
iam-token-revocation-v3 'SYSV52bH' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-grant-v3 'client_credentials' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-verify-token-v3 'fCIf4tsu' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-platform-authentication-v3 'u6Pkam6t' 'FSYFt4Zx' --login_with_auth "Bearer foo"
iam-public-get-input-validations --login_with_auth "Bearer foo"
iam-public-get-country-age-restriction-v3 'A2PzZFRk' --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-public-v3 --login_with_auth "Bearer foo"
iam-retrieve-active-oidc-clients-public-v3 'BNlg6hn5' --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["qusKyZAu"]}' 'V6uUvqM0' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv3 'lV6UZMlE' 'bxHNgJRi' --login_with_auth "Bearer foo"
iam-public-get-async-status 'QExaunjd' --login_with_auth "Bearer foo"
iam-public-search-user-v3 --login_with_auth "Bearer foo"
iam-public-create-user-v3 '{"PasswordMD5Sum": "AqnHUz44", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "x4O6hamP", "policyId": "wNoi071e", "policyVersionId": "zDK56JFI"}], "authType": "Ge1IMUCL", "code": "cN0DsaD5", "country": "FyBsFe9O", "dateOfBirth": "YEJVsYff", "displayName": "mhyx6J25", "emailAddress": "PrM4S3cB", "password": "8m17hEeL", "reachMinimumAge": false}' --login_with_auth "Bearer foo"
iam-check-user-availability 'oaYth6zc' 'f8eA45OM' --login_with_auth "Bearer foo"
iam-public-bulk-get-users '{"userIds": ["vObWejo9"]}' --login_with_auth "Bearer foo"
iam-public-send-registration-code '{"emailAddress": "LfGeegJM", "languageTag": "aBGR6D1Z"}' --login_with_auth "Bearer foo"
iam-public-verify-registration-code '{"code": "oZEZQkJ8", "emailAddress": "DSqFnhdK"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v3 '{"emailAddress": "vjFCFbSF", "languageTag": "lEWoMPdg"}' --login_with_auth "Bearer foo"
iam-get-admin-invitation-v3 'K5zn62mh' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v3 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "FSpCTlDN", "policyId": "BOcygvv2", "policyVersionId": "LAgfBGVz"}], "authType": "EMAILPASSWD", "country": "nbKYsB0g", "dateOfBirth": "qJ8VhYSi", "displayName": "kJl2p9rB", "password": "x8N5egap", "reachMinimumAge": true}' 'xDy4cLfN' --login_with_auth "Bearer foo"
iam-update-user-v3 '{"avatarUrl": "jzzEZYA8", "country": "jIkMJb7c", "dateOfBirth": "Z2bPsaLL", "displayName": "pEBVEMk5", "languageTag": "AsKaF2P4", "userName": "4lXkI3zd"}' --login_with_auth "Bearer foo"
iam-public-partial-update-user-v3 '{"avatarUrl": "iRiC5IbP", "country": "it71JWlY", "dateOfBirth": "Coi4nDfP", "displayName": "u5V6QSYx", "languageTag": "EVOryVuZ", "userName": "YmgUeEPB"}' --login_with_auth "Bearer foo"
iam-public-send-verification-code-v3 '{"context": "5AGPgvk0", "emailAddress": "Zthaj0EB", "languageTag": "A4azRz0d"}' --login_with_auth "Bearer foo"
iam-public-user-verification-v3 '{"code": "56smobor", "contactType": "4p1PlgQB", "languageTag": "9EcNGOeB", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v3 '{"code": "e07deDLa", "country": "Z8JCvbeT", "dateOfBirth": "fW0hgzra", "displayName": "bLJxEwJr", "emailAddress": "EBmQ64ha", "password": "NOzlGu68", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-verify-headless-account-v3 '{"emailAddress": "upjdDetn", "password": "oT0rfWtV"}' --login_with_auth "Bearer foo"
iam-public-update-password-v3 '{"languageTag": "PwQfq6V9", "newPassword": "2gbfPouN", "oldPassword": "dmP7fckV"}' --login_with_auth "Bearer foo"
iam-public-create-justice-user 'nuDGvYIb' --login_with_auth "Bearer foo"
iam-public-platform-link-v3 '1p5tcR5z' '8ZJLjSHc' --login_with_auth "Bearer foo"
iam-public-platform-unlink-v3 '{"platformNamespace": "aR3X4tZm"}' 'wr0QmOns' --login_with_auth "Bearer foo"
iam-public-platform-unlink-all-v3 'Eg49eXp0' --login_with_auth "Bearer foo"
iam-public-force-platform-link-v3 'xQkZ2Jju' 'wWWy0tU1' --login_with_auth "Bearer foo"
iam-public-web-link-platform '1PCeSrve' --login_with_auth "Bearer foo"
iam-public-web-link-platform-establish 'jUKwVfF3' '7Vr7mkDz' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"code": "FBI1Vwhk", "emailAddress": "VSKDlNFO", "newPassword": "UHBJsvTs"}' --login_with_auth "Bearer foo"
iam-public-get-user-by-user-id-v3 'qk9hg4hj' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 '6nUdebW6' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 'UskbPkkZ' --login_with_auth "Bearer foo"
iam-public-get-user-information-v3 'Ak01f1Kx' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 'CtWADU2g' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 'uN6U9w13' --login_with_auth "Bearer foo"
iam-public-list-justice-platform-accounts-v3 'W1K9TZQ4' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "qRLEi5wo", "platformUserId": "wE36rfmM"}' '0CCs35TP' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["UPLmsY8W"], "requestId": "gwSx1DI5"}' 'GH9bv9ZT' --login_with_auth "Bearer foo"
iam-public-get-publisher-user-v3 'o2HpA6pz' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 'jHpZO0E9' 'iLgRPJK3' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 'nBae3GOg' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-public-send-verification-link-v3 '{"languageTag": "bQrqra0P"}' --login_with_auth "Bearer foo"
iam-public-verify-user-by-link-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler 'tkfvOpY2' 'ramp5lnB' --login_with_auth "Bearer foo"
iam-login-sso-client 'n6xmBkfM' --login_with_auth "Bearer foo"
iam-logout-sso-client 'tC66hFq0' --login_with_auth "Bearer foo"
iam-request-game-token-response-v3 'kPOkORm2' --login_with_auth "Bearer foo"
iam-admin-create-test-users-v4 '{"count": 99}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["jlNEE5ec"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "PzAmi0yS", "country": "JHfPloP1", "dateOfBirth": "XkYK4MgI", "displayName": "sDSFMPyM", "languageTag": "hyw1OLZP", "userName": "VwwxH4BI"}' 'DJuDoShM' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "Mftll8N0", "emailAddress": "VvChHz9u"}' 'rmt7QWvE' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 '8s6Uz8BR' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 'uYWDTtL6' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["MTTRkCbb"], "roleId": "9S5Q1IVH"}' 'GT88prRE' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["BgYOWdHJ"], "roleId": "9JumohtU"}' '13gf7TRi' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["gNZj5w5y"], "roleId": "3HmK8QVO"}' 'a62eQZtb' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": false, "deletable": true, "isWildcard": true, "roleName": "v38Heccz"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 'opFmeRwp' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 'cJBZyi3m' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "kiSzeyol"}' 'nOQt0joV' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 67, "resource": "gCytC6lR", "schedAction": 65, "schedCron": "98YxnHbR", "schedRange": ["doTKKeuS"]}]}' 'jfZe9i1o' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 37, "resource": "ghF1hzi1", "schedAction": 79, "schedCron": "l47syJ5i", "schedRange": ["bzSHZeCL"]}]}' 'IvWPVRsd' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["EqA61yTr"]' 'MgsycTgm' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'Pzc20EuO' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["5dMqGDlS"], "namespace": "ZPY07rEV", "userId": "SjzHjL6Z"}' 'bXjG6DSm' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "pp3op8ht", "userId": "aRLxtW4P"}' 'vFkESTUL' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "at5F1Le7", "country": "cR7q6PWh", "dateOfBirth": "ZmmKz41i", "displayName": "1Tp78Fip", "languageTag": "JHahViJv", "userName": "LYW0kdml"}' --login_with_auth "Bearer foo"
iam-admin-disable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-admin-enable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-admin-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-admin-get-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-generate-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-download-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-enable-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 'k2luqSOO' --login_with_auth "Bearer foo"
iam-admin-invite-user-v4 '{"assignedNamespaces": ["A2VOZBoN"], "emailAddresses": ["bB98PuSG"], "isAdmin": true, "roleId": "kqFzPwSM"}' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "BuL38beO", "policyId": "YDVuHZQ9", "policyVersionId": "LYt6w23W"}], "authType": "EMAILPASSWD", "country": "8iEQo72s", "dateOfBirth": "H0aRdcDl", "displayName": "DyGcsfIu", "emailAddress": "I4Dv5lEJ", "password": "pK1AyRlz", "passwordMD5Sum": "srRXEFZi", "username": "vQOHG6wV", "verified": false}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "NratsvvH", "policyId": "LmIohfNI", "policyVersionId": "SLXMDWDd"}], "authType": "EMAILPASSWD", "code": "5FE4lliQ", "country": "MnutJbpE", "dateOfBirth": "o4mUNHFt", "displayName": "dml2xNvi", "emailAddress": "WacJc3Fm", "password": "7Z548uuK", "passwordMD5Sum": "goCBqS5u", "reachMinimumAge": false, "username": "CbwCeeq9"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "uEdDtjOg", "policyId": "sypLkm2Z", "policyVersionId": "Yew5H7Zm"}], "authType": "EMAILPASSWD", "country": "nYyj6MXf", "dateOfBirth": "9G1ntyeb", "displayName": "voeHenAA", "password": "LKt7EfxI", "reachMinimumAge": false, "username": "UnP2S74u"}' 'nXwg0JKq' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "VWW1rjK1", "country": "epwkAvcs", "dateOfBirth": "YvbgfBVP", "displayName": "pTa8Yuq7", "languageTag": "TKiNXmz7", "userName": "eMrMD5Tb"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "aUxTCTng", "emailAddress": "0xjtdBrj"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "s3Kiykt2", "country": "Ck2gOlSa", "dateOfBirth": "tECZ2Ugw", "displayName": "QLqDqYSx", "emailAddress": "TPuVlBqi", "password": "rdp3yxns", "reachMinimumAge": true, "username": "Tl1SvhQu", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"emailAddress": "sjIhXdxi", "password": "SoWpnnxg", "username": "X7BCPMqz"}' --login_with_auth "Bearer foo"
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
iam-public-make-factor-my-default-v4 'QIxibhpN' --login_with_auth "Bearer foo"
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
echo "1..321"

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
    '[{"field": "YsHtdB3I", "validation": {"allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "blockedWord": ["ZqhJilrZ"], "description": [{"language": "kSSKgP5r", "message": ["xCR77G9d"]}], "isCustomRegex": true, "letterCase": "A1GORSbL", "maxLength": 27, "maxRepeatingAlphaNum": 6, "maxRepeatingSpecialCharacter": 2, "minCharType": 96, "minLength": 58, "regex": "EupmdLQz", "specialCharacterLocation": "PnNfBAcW", "specialCharacters": ["ArbkCfdH"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    'IZb03otq' \
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
    '{"ageRestriction": 24, "enable": true}' \
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
    '{"ageRestriction": 40}' \
    'S9V2pCZ2' \
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
    '{"ban": "3UHmk0lp", "comment": "J4JLl01q", "endDate": "i7L2oDUo", "reason": "VRUb39j2", "skipNotif": false, "userIds": ["09cKmjRU"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "bZVBVS7O", "userId": "K2Zrdcsc"}]}' \
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
    '{"audiences": ["kMekROWZ"], "baseUri": "2KUTqkK2", "clientId": "eFaGLoSm", "clientName": "EEPbLywJ", "clientPermissions": [{"action": 36, "resource": "yUie6fZg", "schedAction": 74, "schedCron": "llUPsO8l", "schedRange": ["g46Si700"]}], "clientPlatform": "6vL2w4aa", "deletable": false, "namespace": "DAOx0iJj", "oauthClientType": "Yleaktqv", "redirectUri": "2WkljQuD", "secret": "5mnJONqH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    'Gq8mB7mF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    '2lMFcagh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["FXJIJflR"], "baseUri": "HFcsIqCy", "clientName": "4xDifSSQ", "clientPermissions": [{"action": 80, "resource": "n2ccEcl3", "schedAction": 46, "schedCron": "eiO4bwF5", "schedRange": ["JOjGoGxK"]}], "clientPlatform": "M3qMce5t", "deletable": false, "namespace": "LcpjFZMK", "redirectUri": "Cbp0pEbL"}' \
    'CLFpHxMY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 63, "resource": "836075xE"}]}' \
    'pzdnYtpj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 1, "resource": "5ig2isQZ"}]}' \
    'ga6Vy76i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '51' \
    'PiQRjYa8' \
    'fv5fIt22' \
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
    'tIZhjhgk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "igW22zXM", "AWSCognitoRegion": "WXfbcM0G", "AWSCognitoUserPool": "IALIbFCQ", "AllowedClients": ["gBcLNT6i"], "AppId": "OQVYx5rW", "AuthorizationEndpoint": "2gMsI1aY", "ClientId": "BitSn3UD", "Environment": "eKj97I4W", "FederationMetadataURL": "YXLqjN7k", "GenericOauthFlow": true, "IsActive": true, "Issuer": "TraBxWRT", "JWKSEndpoint": "VuYEqGlK", "KeyID": "DwTKXBrX", "NetflixCertificates": {"encryptedPrivateKey": "iQcd9IW8", "encryptedPrivateKeyName": "kiCKeQJW", "publicCertificate": "ZBvcq1ET", "publicCertificateName": "vWBxYZJh", "rootCertificate": "7B8gbnSu", "rootCertificateName": "9M2OxD2u"}, "OrganizationId": "daeYpCXY", "PlatformName": "SMiy87CT", "RedirectUri": "qEQBg36m", "RegisteredDomains": [{"affectedClientIDs": ["y3sY2clr"], "domain": "Dcain0cO", "namespaces": ["VF1zHwDT"], "roleId": "I0sJ1Q0k"}], "Secret": "phMTggSP", "TeamID": "2SLcuAP7", "TokenAuthenticationType": "vU971Czw", "TokenClaimsMapping": {"2nbg8C7M": "vywhu6Mj"}, "TokenEndpoint": "OjuGzo1F"}' \
    'z4tU0aSn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    '98N8qOUA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "0z92RaDe", "AWSCognitoRegion": "8ngT8LRQ", "AWSCognitoUserPool": "kMnG1LZy", "AllowedClients": ["F2mdYY6Z"], "AppId": "MfuTYTKs", "AuthorizationEndpoint": "ue48qBEB", "ClientId": "NAV5BTe6", "Environment": "ec1zA92U", "FederationMetadataURL": "RCLSGPmR", "GenericOauthFlow": true, "IsActive": true, "Issuer": "nHW7MYvr", "JWKSEndpoint": "6QA7Ppep", "KeyID": "c92HA94e", "NetflixCertificates": {"encryptedPrivateKey": "ACdeyfUp", "encryptedPrivateKeyName": "giPpf8nx", "publicCertificate": "KJ3dnmtP", "publicCertificateName": "wa64Y4gP", "rootCertificate": "EKMhhu9a", "rootCertificateName": "6f3xJNtU"}, "OrganizationId": "lKLlIIAe", "PlatformName": "Hbm5M6Ls", "RedirectUri": "Y1VMuIEc", "RegisteredDomains": [{"affectedClientIDs": ["Rls68M3M"], "domain": "PMRPBepy", "namespaces": ["yMz6zfR1"], "roleId": "pvTYYtDO"}], "Secret": "iEi4RuEc", "TeamID": "HCSGhpOZ", "TokenAuthenticationType": "QFlwOiuK", "TokenClaimsMapping": {"GDFgK49Y": "uKnXks0m"}, "TokenEndpoint": "8ANrcRal"}' \
    '7ta3fojA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["3h4MMW3A"], "assignedNamespaces": ["J5zlsFBw"], "domain": "jvLYvmg6", "roleId": "avudQFF1"}' \
    'CPNY9u2d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "VYdglOOo"}' \
    'CeK0kPKm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    'BqVux3lX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "cD8aertA", "apiKey": "VCqs8XT8", "appId": "xy3nJ06K", "federationMetadataUrl": "kseA0ARj", "isActive": true, "redirectUri": "icfayvnh", "secret": "i8MDdY4W", "ssoUrl": "LHoaUkYn"}' \
    'Qp5egdmV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'E8ImivNt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "QxqWRKHo", "apiKey": "hODoWOr9", "appId": "8kjBUas9", "federationMetadataUrl": "jjz2Frgi", "isActive": false, "redirectUri": "GrcB7dIO", "secret": "VKIPSJJH", "ssoUrl": "o5W8tKH8"}' \
    'ou9SdbxS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'XcrEFCwq' \
    'eGNLdIBR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'dliFQVMK' \
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
    '{"userIds": ["EzVUWlUW"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["Ds2x1EQU"], "isAdmin": false, "roles": ["epEvcjaS"]}' \
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
    '{"listEmailAddressRequest": ["gEh6jJnF"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'AdminGetBulkUserByEmailAddressV3' test.out

#- 149 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'xinIHJ1o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'AdminGetUserByUserIdV3' test.out

#- 150 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "7aq5Zznd", "country": "5eacobTs", "dateOfBirth": "uRlhreQV", "displayName": "FID3o8hJ", "languageTag": "WVjKIOAw", "userName": "70DvAHhS"}' \
    'GWUvzq1Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AdminUpdateUserV3' test.out

#- 151 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'a3IBC4vQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'AdminGetUserBanV3' test.out

#- 152 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "FsUJPfia", "comment": "Jp1rt7OB", "endDate": "gBCe6N0e", "reason": "I65Mn5tn", "skipNotif": false}' \
    'EYXgPVT5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'AdminBanUserV3' test.out

#- 153 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": true, "skipNotif": true}' \
    'XDZBVMJy' \
    'JeKFO92Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AdminUpdateUserBanV3' test.out

#- 154 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "DtaZvJoK", "emailAddress": "S0OxyipZ", "languageTag": "uO4N9S2Y"}' \
    'CgHa6XBc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'AdminSendVerificationCodeV3' test.out

#- 155 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "vGRYk5rU", "ContactType": "tWHCnhmz", "LanguageTag": "zppV7tKN", "validateOnly": true}' \
    'XymWcNlH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminVerifyAccountV3' test.out

#- 156 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'aFxYaGHU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'GetUserVerificationCode' test.out

#- 157 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'pmBFyOrF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'AdminGetUserDeletionStatusV3' test.out

#- 158 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"enabled": true}' \
    'xGNAi0fq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminUpdateUserDeletionStatusV3' test.out

#- 159 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "4xChPLd2", "country": "lOopc7Xo", "dateOfBirth": "Vpdd6rCp", "displayName": "yMrnH9YH", "emailAddress": "Xh7KnCVO", "password": "KY2zsBRG", "validateOnly": true}' \
    'd8QY2OLb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminUpgradeHeadlessAccountV3' test.out

#- 160 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'ijrvfr8h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminDeleteUserInformationV3' test.out

#- 161 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'knjWUWdM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminGetUserLoginHistoriesV3' test.out

#- 162 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "UXHvw4pN", "newPassword": "lGLjdBxL", "oldPassword": "M079pDAb"}' \
    'TgmsEYEq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminResetPasswordV3' test.out

#- 163 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 64, "Resource": "kYK1vYm9", "SchedAction": 11, "SchedCron": "lXQ7CQoe", "SchedRange": ["mnQG0dH0"]}]}' \
    'NVM9VEHT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AdminUpdateUserPermissionV3' test.out

#- 164 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 83, "Resource": "qDhkcu5v", "SchedAction": 27, "SchedCron": "z6GiNMbo", "SchedRange": ["BJHml0LJ"]}]}' \
    'mpPi4mqh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminAddUserPermissionsV3' test.out

#- 165 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 34, "Resource": "uiCZLGGP"}]' \
    '5UXkHNTM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminDeleteUserPermissionBulkV3' test.out

#- 166 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '1' \
    'pp5Sbons' \
    'UJKADr60' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionV3' test.out

#- 167 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'EkdFrpLs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminGetUserPlatformAccountsV3' test.out

#- 168 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'Gt9yTXWU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminGetListJusticePlatformAccounts' test.out

#- 169 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    'SCQcMsHN' \
    '7reI22ks' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminGetUserMapping' test.out

#- 170 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    '7I12tAZc' \
    '8sxxLx9X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminCreateJusticeUser' test.out

#- 171 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "QeqNWLm8", "platformUserId": "cNJbYH5J"}' \
    '4WiJLv9N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminLinkPlatformAccount' test.out

#- 172 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "vHwtw2Mj"}' \
    'cy9ZL6Zs' \
    '5Bu2XYop' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminPlatformUnlinkV3' test.out

#- 173 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'LWZeUKJJ' \
    'NftRpGgk' \
    '1iseREzz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformLinkV3' test.out

#- 174 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["RG6z9wmu"]' \
    'HddyOdib' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminDeleteUserRolesV3' test.out

#- 175 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "I1LVyqbd", "roleId": "Y8DGZKAu"}]' \
    'oIKz3Pp3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminSaveUserRoleV3' test.out

#- 176 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    'zLWUxMzM' \
    'tSmMmZP8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminAddUserRoleV3' test.out

#- 177 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'nG0FoQP8' \
    'q7aSsb85' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminDeleteUserRoleV3' test.out

#- 178 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": false, "reason": "Ah9RD3Zz"}' \
    'N6N1iJ8l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminUpdateUserStatusV3' test.out

#- 179 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'tt9IRqCf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 180 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "lgln6r5f"}' \
    '0s5H6lCf' \
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
    '{"adminRole": false, "deletable": false, "isWildcard": true, "managers": [{"displayName": "gw5av4LE", "namespace": "xdabD8g2", "userId": "cvHfMRup"}], "members": [{"displayName": "DA5xbjs3", "namespace": "XRdHUJ0G", "userId": "CmflIXkg"}], "permissions": [{"action": 70, "resource": "6zkTwoak", "schedAction": 32, "schedCron": "7sEejFZ1", "schedRange": ["NtONXb9w"]}], "roleName": "9hsQHszI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminCreateRoleV3' test.out

#- 183 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'sfrlzKpQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminGetRoleV3' test.out

#- 184 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'dd58dZP5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminDeleteRoleV3' test.out

#- 185 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": true, "isWildcard": true, "roleName": "inNtvBtq"}' \
    'FSkA68mI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminUpdateRoleV3' test.out

#- 186 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    'VYJ5pSVx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminGetRoleAdminStatusV3' test.out

#- 187 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'BsLhty3p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateAdminRoleStatusV3' test.out

#- 188 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'ecToXA4M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminRemoveRoleAdminV3' test.out

#- 189 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    '1oUFPhgo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminGetRoleManagersV3' test.out

#- 190 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "7Z6mwNC4", "namespace": "FY69mM87", "userId": "joJNOGB8"}]}' \
    '3Ns6Hl5P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminAddRoleManagersV3' test.out

#- 191 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "oab6lKoV", "namespace": "qNBUzIxO", "userId": "fglquS2q"}]}' \
    '2DoWr9zv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminRemoveRoleManagersV3' test.out

#- 192 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'FtKa2mOA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminGetRoleMembersV3' test.out

#- 193 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "qOokV1pl", "namespace": "xQ2YriTP", "userId": "fipD67jI"}]}' \
    '2hiZkrtL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminAddRoleMembersV3' test.out

#- 194 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "nh2U1RQl", "namespace": "MxkfNMPN", "userId": "tqv2TMz1"}]}' \
    'b7SnzkXO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminRemoveRoleMembersV3' test.out

#- 195 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 8, "resource": "k83Igm1w", "schedAction": 21, "schedCron": "SWsYvAsu", "schedRange": ["18obUdc8"]}]}' \
    'mbvXcwcg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminUpdateRolePermissionsV3' test.out

#- 196 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 76, "resource": "qOXMziXr", "schedAction": 94, "schedCron": "dsEc3ClF", "schedRange": ["P3mJwusC"]}]}' \
    'BTe4kLcu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminAddRolePermissionsV3' test.out

#- 197 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["qL40NYge"]' \
    'kRavpaGT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminDeleteRolePermissionsV3' test.out

#- 198 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '52' \
    '9BTyCCyN' \
    '4Fw9i6mI' \
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
    '2W3tjjCq' \
    'PVyYs01h' \
    'EYzWw3qr' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 200 'UserAuthenticationV3' test.out

#- 201 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    'cxM0DPAX' \
    'QBNMP7j3' \
    'xfPaoZaW' \
    'FspkU5kn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'AuthenticationWithPlatformLinkV3' test.out

#- 202 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    '6PlPqD4A' \
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
    'gfasBfcl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'RequestGameTokenCodeResponseV3' test.out

#- 206 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'BhZjZbLn' \
    'mghKwPyV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 207 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    'In3qaHP7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'RevokeUserV3' test.out

#- 208 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    'KNulyfrE' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 208 'AuthorizeV3' test.out

#- 209 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'pcaWHf6T' \
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
    '2xOOljn7' \
    'c6c9efJI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'Change2faMethod' test.out

#- 212 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    '02TZxrgL' \
    'BFJEkphF' \
    'z0h6WpoV' \
    'False' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'Verify2faCode' test.out

#- 213 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'Vc2HBBmj' \
    '6cEi02hX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 214 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'l42ubCRf' \
    'y4GjKn5I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'AuthCodeRequestV3' test.out

#- 215 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'tHXLDZqp' \
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
    'RhqnR742' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 217 'TokenRevocationV3' test.out

#- 218 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'authorization_code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 218 'TokenGrantV3' test.out

#- 219 VerifyTokenV3
$PYTHON -m $MODULE 'iam-verify-token-v3' \
    'bLuQOGMO' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 219 'VerifyTokenV3' test.out

#- 220 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'EzmdjNhT' \
    '0S46kqyf' \
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
    'MBSaZc4S' \
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
    'A16M8gQC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 225 PublicListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["D7aBHWCY"]}' \
    'evNkfcQv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 226 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    'l4Oso7tx' \
    '65zXCiTf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'PublicGetUserByPlatformUserIDV3' test.out

#- 227 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    'jorLFqTm' \
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
    '{"PasswordMD5Sum": "IUFUoonH", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "I13SZFHf", "policyId": "m0F8vS2B", "policyVersionId": "rZ3nq88Y"}], "authType": "SSD7zV0C", "code": "8FvVU3kR", "country": "XBGPXIdf", "dateOfBirth": "t1biZHuh", "displayName": "WyFPHdXc", "emailAddress": "yvZEhYeU", "password": "Sy5Ukc65", "reachMinimumAge": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'PublicCreateUserV3' test.out

#- 230 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'aP11R8Xw' \
    'w9vq9nMa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'CheckUserAvailability' test.out

#- 231 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["2Btgwyuf"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'PublicBulkGetUsers' test.out

#- 232 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "2fjV30SL", "languageTag": "xi7uyhae"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'PublicSendRegistrationCode' test.out

#- 233 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "FtcO9XNy", "emailAddress": "63QO9vW0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'PublicVerifyRegistrationCode' test.out

#- 234 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "ck7TEDE8", "languageTag": "LeEQBeGP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'PublicForgotPasswordV3' test.out

#- 235 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    'LiE6tHCr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'GetAdminInvitationV3' test.out

#- 236 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "vT0SAK91", "policyId": "y5vCeBIJ", "policyVersionId": "q0B9UcI6"}], "authType": "EMAILPASSWD", "country": "5cre9eal", "dateOfBirth": "HOZphcLn", "displayName": "cnjnmyU8", "password": "FSxXdCrs", "reachMinimumAge": false}' \
    'oFqnowq9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'CreateUserFromInvitationV3' test.out

#- 237 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "Laz1GLt5", "country": "Mhf8Z7ah", "dateOfBirth": "mbVPm2g7", "displayName": "xAFfRRLU", "languageTag": "jfWS9sft", "userName": "IfHGe5bU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'UpdateUserV3' test.out

#- 238 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "TSXOv12P", "country": "McRO6E2M", "dateOfBirth": "kre5q7Fv", "displayName": "aACp6he0", "languageTag": "fzjkPNNS", "userName": "0BfgF6in"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'PublicPartialUpdateUserV3' test.out

#- 239 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "IRsZ5hrq", "emailAddress": "NzVszGVP", "languageTag": "5P1iwhcf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'PublicSendVerificationCodeV3' test.out

#- 240 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "30C1KHRZ", "contactType": "HMGy5vbf", "languageTag": "ZvYIFFct", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'PublicUserVerificationV3' test.out

#- 241 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "KOLxSRxe", "country": "0wmWBMcN", "dateOfBirth": "iWoobB6o", "displayName": "6alTQcP0", "emailAddress": "EpE9wGNV", "password": "wkgfJJ2H", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'PublicUpgradeHeadlessAccountV3' test.out

#- 242 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "lfzgRpTf", "password": "9lxF1JPB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'PublicVerifyHeadlessAccountV3' test.out

#- 243 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "izXZtrGe", "newPassword": "8LyOH24n", "oldPassword": "neZHFeRl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'PublicUpdatePasswordV3' test.out

#- 244 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'd0bGA7Jx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'PublicCreateJusticeUser' test.out

#- 245 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'WYzaEaim' \
    'vokcWX59' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'PublicPlatformLinkV3' test.out

#- 246 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "kwiYHgHT"}' \
    '6Ivd0fGp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'PublicPlatformUnlinkV3' test.out

#- 247 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'U209nVRc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'PublicPlatformUnlinkAllV3' test.out

#- 248 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    'lumQTFvr' \
    '5rRyYzaN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'PublicForcePlatformLinkV3' test.out

#- 249 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'mz3PjMx2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'PublicWebLinkPlatform' test.out

#- 250 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'T89NTrFR' \
    'UCXFkrux' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'PublicWebLinkPlatformEstablish' test.out

#- 251 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "egpkcXCf", "emailAddress": "zgcvv0WE", "newPassword": "5EQhcomP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'ResetPasswordV3' test.out

#- 252 PublicGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-public-get-user-by-user-id-v3' \
    'S1E7cpsL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'PublicGetUserByUserIdV3' test.out

#- 253 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    'gr2zEnjy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'PublicGetUserBanHistoryV3' test.out

#- 254 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'RNjEC3FM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 255 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    'DcZvwwf8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'PublicGetUserInformationV3' test.out

#- 256 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'aU98In31' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'PublicGetUserLoginHistoriesV3' test.out

#- 257 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'mF4jlwKy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'PublicGetUserPlatformAccountsV3' test.out

#- 258 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    'GxTF1l5q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'PublicListJusticePlatformAccountsV3' test.out

#- 259 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "1Np0sT1X", "platformUserId": "8J2eAWOz"}' \
    'jmh9UzIf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'PublicLinkPlatformAccount' test.out

#- 260 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["nhoo6xUm"], "requestId": "TleUnJFM"}' \
    '7XhoDxGi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'PublicForceLinkPlatformWithProgression' test.out

#- 261 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    'k2JSfZ64' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'PublicGetPublisherUserV3' test.out

#- 262 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'wWePq610' \
    '3PONKIS7' \
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
    'F9emW4R1' \
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
    '{"languageTag": "5tAsiG31"}' \
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
    'CEyUOuOZ' \
    'hmnHkvek' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'PlatformAuthenticateSAMLV3Handler' test.out

#- 269 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    '6Aa5kNno' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'LoginSSOClient' test.out

#- 270 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'clxs9kxc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'LogoutSSOClient' test.out

#- 271 RequestGameTokenResponseV3
$PYTHON -m $MODULE 'iam-request-game-token-response-v3' \
    'vIpV7mCY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'RequestGameTokenResponseV3' test.out

#- 272 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"count": 10}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'AdminCreateTestUsersV4' test.out

#- 273 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["WKjY9CsQ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'AdminBulkCheckValidUserIDV4' test.out

#- 274 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "YsGyhEOn", "country": "tEkedM1A", "dateOfBirth": "0bFqvjxb", "displayName": "T3YuVdaB", "languageTag": "N5RSjhcj", "userName": "uDvNrXL8"}' \
    '45jfh5tZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'AdminUpdateUserV4' test.out

#- 275 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "0hqJLjQU", "emailAddress": "moYUnC84"}' \
    '9OBNuLZt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'AdminUpdateUserEmailAddressV4' test.out

#- 276 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    'ofGAAaMp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'AdminDisableUserMFAV4' test.out

#- 277 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'BQArU4RS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'AdminListUserRolesV4' test.out

#- 278 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["0FQRy5Qz"], "roleId": "5VcyfBpH"}' \
    'jtvFwKSJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'AdminUpdateUserRoleV4' test.out

#- 279 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["yZeqvpev"], "roleId": "cVXTxs9L"}' \
    'TorIyx23' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'AdminAddUserRoleV4' test.out

#- 280 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["LhLy7ds3"], "roleId": "g3BuHTPF"}' \
    '19dBYFws' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'AdminRemoveUserRoleV4' test.out

#- 281 AdminGetRolesV4
$PYTHON -m $MODULE 'iam-admin-get-roles-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'AdminGetRolesV4' test.out

#- 282 AdminCreateRoleV4
$PYTHON -m $MODULE 'iam-admin-create-role-v4' \
    '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "WqW8HiLp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'AdminCreateRoleV4' test.out

#- 283 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'Ti1W63Hc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'AdminGetRoleV4' test.out

#- 284 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'cgM5kYu3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'AdminDeleteRoleV4' test.out

#- 285 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": false, "deletable": true, "isWildcard": true, "roleName": "3KCyplY1"}' \
    'ocKDCVaq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'AdminUpdateRoleV4' test.out

#- 286 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 34, "resource": "VeegT3uG", "schedAction": 59, "schedCron": "IIcvuuok", "schedRange": ["t8TC38mY"]}]}' \
    'oUanQT4M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'AdminUpdateRolePermissionsV4' test.out

#- 287 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 24, "resource": "znv7r2jt", "schedAction": 14, "schedCron": "ibgeCLX4", "schedRange": ["1qyOiLgd"]}]}' \
    '8Wy739QH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'AdminAddRolePermissionsV4' test.out

#- 288 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["zw0TEzpd"]' \
    '7TV5vhMM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'AdminDeleteRolePermissionsV4' test.out

#- 289 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    '2i3DM6et' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'AdminListAssignedUsersV4' test.out

#- 290 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["fI7TzC3s"], "namespace": "KmtsyEKd", "userId": "O6HNm3zG"}' \
    'u71qTSSJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'AdminAssignUserToRoleV4' test.out

#- 291 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "EbWlETp9", "userId": "XOCA1X3H"}' \
    'HMTlakAW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'AdminRevokeUserFromRoleV4' test.out

#- 292 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "QfBuBAOC", "country": "jBfYCcpl", "dateOfBirth": "ye2GaPNz", "displayName": "krgBH4ic", "languageTag": "ml6L36Vg", "userName": "2F2Q9aZD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'AdminUpdateMyUserV4' test.out

#- 293 AdminDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'AdminDisableMyAuthenticatorV4' test.out

#- 294 AdminEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'AdminEnableMyAuthenticatorV4' test.out

#- 295 AdminGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-admin-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 296 AdminGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'AdminGetMyBackupCodesV4' test.out

#- 297 AdminGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'AdminGenerateMyBackupCodesV4' test.out

#- 298 AdminDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'AdminDisableMyBackupCodesV4' test.out

#- 299 AdminDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'AdminDownloadMyBackupCodesV4' test.out

#- 300 AdminEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'AdminEnableMyBackupCodesV4' test.out

#- 301 AdminGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-admin-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'AdminGetMyEnabledFactorsV4' test.out

#- 302 AdminMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-admin-make-factor-my-default-v4' \
    'Jg1OT810' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'AdminMakeFactorMyDefaultV4' test.out

#- 303 AdminInviteUserV4
$PYTHON -m $MODULE 'iam-admin-invite-user-v4' \
    '{"assignedNamespaces": ["9ot70Tev"], "emailAddresses": ["Jgsb2PyF"], "isAdmin": false, "roleId": "J6qcHABd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'AdminInviteUserV4' test.out

#- 304 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "V9jAPqon", "policyId": "7UmLNy9P", "policyVersionId": "kF9SnlbW"}], "authType": "EMAILPASSWD", "country": "Axv8uHDq", "dateOfBirth": "JtYC7rzn", "displayName": "wNdLhqXv", "emailAddress": "XVnjvc0B", "password": "MegJpW1Z", "passwordMD5Sum": "euhpLX1B", "username": "HZ4hnOmm", "verified": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'PublicCreateTestUserV4' test.out

#- 305 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "6XtjNCqY", "policyId": "k9TPUKcD", "policyVersionId": "TfR7dpUE"}], "authType": "EMAILPASSWD", "code": "2Oe08Hpe", "country": "JBfG0nGZ", "dateOfBirth": "He5lw2Tl", "displayName": "kPIxL9v4", "emailAddress": "fpCd0Uk5", "password": "h1kP1pkk", "passwordMD5Sum": "T08Cs6Dd", "reachMinimumAge": false, "username": "wBgZizMv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'PublicCreateUserV4' test.out

#- 306 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "Hszf84MA", "policyId": "mayJJ6vz", "policyVersionId": "DTXxsyIa"}], "authType": "EMAILPASSWD", "country": "p0pwnEJL", "dateOfBirth": "15kxO4oV", "displayName": "UPng5JsH", "password": "AkI47jO1", "reachMinimumAge": true, "username": "uAFuZcUw"}' \
    'PteKdQgU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'CreateUserFromInvitationV4' test.out

#- 307 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "TF33fYWZ", "country": "fQMAnziT", "dateOfBirth": "haE2btn0", "displayName": "up9GeTQ7", "languageTag": "XymDSQNY", "userName": "XNEpZyFh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'PublicUpdateUserV4' test.out

#- 308 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "IeqiNHtV", "emailAddress": "Snhxby8F"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'PublicUpdateUserEmailAddressV4' test.out

#- 309 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "6xF8MhbJ", "country": "AYEDN1xs", "dateOfBirth": "zppR69ns", "displayName": "KAS5zKsT", "emailAddress": "RXd7b3v2", "password": "fkZIkr06", "reachMinimumAge": false, "username": "jUtoVJLG", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 310 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "komvwD84", "password": "9mo5vIkD", "username": "ZYrYEf1x"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'PublicUpgradeHeadlessAccountV4' test.out

#- 311 PublicDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'PublicDisableMyAuthenticatorV4' test.out

#- 312 PublicEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'PublicEnableMyAuthenticatorV4' test.out

#- 313 PublicGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-public-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 314 PublicGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'PublicGetMyBackupCodesV4' test.out

#- 315 PublicGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'PublicGenerateMyBackupCodesV4' test.out

#- 316 PublicDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'PublicDisableMyBackupCodesV4' test.out

#- 317 PublicDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'PublicDownloadMyBackupCodesV4' test.out

#- 318 PublicEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'PublicEnableMyBackupCodesV4' test.out

#- 319 PublicRemoveTrustedDeviceV4
$PYTHON -m $MODULE 'iam-public-remove-trusted-device-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'PublicRemoveTrustedDeviceV4' test.out

#- 320 PublicGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-public-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'PublicGetMyEnabledFactorsV4' test.out

#- 321 PublicMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-public-make-factor-my-default-v4' \
    'YnlxHHXj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'PublicMakeFactorMyDefaultV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
