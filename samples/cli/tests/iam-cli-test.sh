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
iam-admin-create-client-v3 '{"audiences": ["h3kgs9qq"], "baseUri": "JbnQsoBg", "clientId": "iVpP8Cm3", "clientName": "yvASUoxd", "clientPermissions": [{"action": 46, "resource": "xFqmAGTJ", "schedAction": 68, "schedCron": "EdagEtp4", "schedRange": ["w29KOu9c"]}], "clientPlatform": "19R6XDqW", "deletable": false, "namespace": "kP8npLEK", "oauthClientType": "MfjiX7jp", "redirectUri": "kVZk3IaQ", "secret": "YEmqGodO", "twoFactorEnabled": true}' --login_with_auth "Bearer foo"
iam-admin-get-clientsby-namespaceby-idv3 'Gt9gPOj0' --login_with_auth "Bearer foo"
iam-admin-delete-client-v3 'c6i0JkvI' --login_with_auth "Bearer foo"
iam-admin-update-client-v3 '{"audiences": ["as73ucYn"], "baseUri": "FAJ3DK5T", "clientName": "4Eogg0Y3", "clientPermissions": [{"action": 93, "resource": "oYlpv5bV", "schedAction": 53, "schedCron": "gtsDhUTD", "schedRange": ["UscbQDjb"]}], "clientPlatform": "TQuPMz2P", "deletable": false, "namespace": "kyU89ZPO", "redirectUri": "w6zPFJ42", "twoFactorEnabled": false}' 'wmzBBSMN' --login_with_auth "Bearer foo"
iam-admin-update-client-permission-v3 '{"permissions": [{"action": 4, "resource": "oAAOjKNj"}]}' 'fcYHm093' --login_with_auth "Bearer foo"
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
iam-admin-get-devices-by-user-v4 --login_with_auth "Bearer foo"
iam-admin-get-banned-devices-v4 --login_with_auth "Bearer foo"
iam-admin-get-user-device-bans-v4 'XjlNEE5e' --login_with_auth "Bearer foo"
iam-admin-ban-device-v4 '{"comment": "cPzAmi0y", "deviceId": "SJHfPloP", "deviceType": "1XkYK4Mg", "enabled": true, "endDate": "DSFMPyMh", "ext": {"yw1OLZPV": {}}, "reason": "wwxH4BID"}' --login_with_auth "Bearer foo"
iam-admin-get-device-ban-v4 'JuDoShMM' --login_with_auth "Bearer foo"
iam-admin-update-device-ban-v4 '{"enabled": false}' 'tll8N0Vv' --login_with_auth "Bearer foo"
iam-admin-generate-report-v4 'ChHz9urm' --login_with_auth "Bearer foo"
iam-admin-get-device-types-v4 --login_with_auth "Bearer foo"
iam-admin-get-device-bans-v4 't7QWvE8s' --login_with_auth "Bearer foo"
iam-admin-decrypt-device-v4 '6Uz8BRuY' --login_with_auth "Bearer foo"
iam-admin-unban-device-v4 'WDTtL6MT' --login_with_auth "Bearer foo"
iam-admin-get-users-by-device-v4 'TRkCbb9S' --login_with_auth "Bearer foo"
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
    '[{"field": "DUoVRUb3", "validation": {"allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "blockedWord": ["jRUbZVBV"], "description": [{"language": "S7OK2Zrd", "message": ["csckMekR"]}], "isCustomRegex": true, "letterCase": "kK2eFaGL", "maxLength": 28, "maxRepeatingAlphaNum": 88, "maxRepeatingSpecialCharacter": 25, "minCharType": 61, "minLength": 60, "regex": "PbLywJsy", "specialCharacterLocation": "Uie6fZgL", "specialCharacters": ["llUPsO8l"]}}]' \
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
    '{"audiences": ["y4xDifSS"], "baseUri": "Q5On2ccE", "clientId": "cl3xeiO4", "clientName": "bwF5JOjG", "clientPermissions": [{"action": 29, "resource": "GxKM3qMc", "schedAction": 9, "schedCron": "5tfLcpjF", "schedRange": ["ZMKCbp0p"]}], "clientPlatform": "EbLCLFpH", "deletable": true, "namespace": "MYF83607", "oauthClientType": "5xEpzdnY", "redirectUri": "tpja5ig2", "secret": "isQZga6V", "twoFactorEnabled": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    '76izPiQR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'jYa8fv5f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["It22tIZh"], "baseUri": "jhgkigW2", "clientName": "2zXMWXfb", "clientPermissions": [{"action": 5, "resource": "M0GIALIb", "schedAction": 63, "schedCron": "CQgBcLNT", "schedRange": ["6iOQVYx5"]}], "clientPlatform": "rW2gMsI1", "deletable": false, "namespace": "YBitSn3U", "redirectUri": "DeKj97I4", "twoFactorEnabled": true}' \
    'jN7ktOBT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 35, "resource": "aBxWRTVu"}]}' \
    'YEqGlKDw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 91, "resource": "KXBrXiQc"}]}' \
    'd9IW8kiC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '73' \
    'eQJWZBvc' \
    'q1ETvWBx' \
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
    'YZJh7B8g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "bnSu9M2O", "AWSCognitoRegion": "xD2udaeY", "AWSCognitoUserPool": "pCXYSMiy", "AllowedClients": ["87CTqEQB"], "AppId": "g36my3sY", "AuthorizationEndpoint": "2clrDcai", "ClientId": "n0cOVF1z", "Environment": "HwDTI0sJ", "FederationMetadataURL": "1Q0kphMT", "GenericOauthFlow": false, "IsActive": false, "Issuer": "SP2SLcuA", "JWKSEndpoint": "P7vU971C", "KeyID": "zw2nbg8C", "NetflixCertificates": {"encryptedPrivateKey": "7Mvywhu6", "encryptedPrivateKeyName": "MjOjuGzo", "publicCertificate": "1Fz4tU0a", "publicCertificateName": "Sn98N8qO", "rootCertificate": "UA0z92Ra", "rootCertificateName": "De8ngT8L"}, "OrganizationId": "RQkMnG1L", "PlatformName": "ZyF2mdYY", "RedirectUri": "6ZMfuTYT", "RegisteredDomains": [{"affectedClientIDs": ["Ksue48qB"], "domain": "EBNAV5BT", "namespaces": ["e6ec1zA9"], "roleId": "2URCLSGP"}], "Secret": "mRBZWunH", "TeamID": "W7MYvr6Q", "TokenAuthenticationType": "A7Ppepc9", "TokenClaimsMapping": {"2HA94eAC": "deyfUpgi"}, "TokenEndpoint": "Ppf8nxKJ"}' \
    '3dnmtPwa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    '64Y4gPEK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "Mhhu9a6f", "AWSCognitoRegion": "3xJNtUlK", "AWSCognitoUserPool": "LlIIAeHb", "AllowedClients": ["m5M6LsY1"], "AppId": "VMuIEcRl", "AuthorizationEndpoint": "s68M3MPM", "ClientId": "RPBepyyM", "Environment": "z6zfR1pv", "FederationMetadataURL": "TYYtDOiE", "GenericOauthFlow": false, "IsActive": true, "Issuer": "EcHCSGhp", "JWKSEndpoint": "OZQFlwOi", "KeyID": "uKGDFgK4", "NetflixCertificates": {"encryptedPrivateKey": "9YuKnXks", "encryptedPrivateKeyName": "0m8ANrcR", "publicCertificate": "al7ta3fo", "publicCertificateName": "jA3h4MMW", "rootCertificate": "3AJ5zlsF", "rootCertificateName": "BwjvLYvm"}, "OrganizationId": "g6avudQF", "PlatformName": "F1CPNY9u", "RedirectUri": "2dVYdglO", "RegisteredDomains": [{"affectedClientIDs": ["OoCeK0kP"], "domain": "KmBqVux3", "namespaces": ["lXcD8aer"], "roleId": "tAVCqs8X"}], "Secret": "T8xy3nJ0", "TeamID": "6KkseA0A", "TokenAuthenticationType": "Rj9ricfa", "TokenClaimsMapping": {"yvnhi8MD": "dY4WLHoa"}, "TokenEndpoint": "UkYnQp5e"}' \
    'gdmVE8Im' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["ivNtQxqW"], "assignedNamespaces": ["RKHohODo"], "domain": "WOr98kjB", "roleId": "Uas9jjz2"}' \
    'FrgiaGrc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "B7dIOVKI"}' \
    'PSJJHo5W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    '8tKH8ou9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "SdbxSXcr", "apiKey": "EFCwqeGN", "appId": "LdIBRdli", "federationMetadataUrl": "FQVMKEzV", "isActive": false, "redirectUri": "UWDs2x1E", "secret": "QU0oepEv", "ssoUrl": "cjaSgEh6"}' \
    'jJnFxinI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'HJ1o7aq5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "Zznd5eac", "apiKey": "obTsuRlh", "appId": "reQVFID3", "federationMetadataUrl": "o8hJWVjK", "isActive": true, "redirectUri": "w70DvAHh", "secret": "SGWUvzq1", "ssoUrl": "Za3IBC4v"}' \
    'QFsUJPfi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'aJp1rt7O' \
    'BgBCe6N0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'eI65Mn5t' \
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
    '{"userIds": ["ngEYXgPV"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["T5CqXDZB"], "isAdmin": true, "roles": ["JeKFO92Y"]}' \
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
    '{"listEmailAddressRequest": ["DtaZvJoK"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'AdminGetBulkUserByEmailAddressV3' test.out

#- 149 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'S0OxyipZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'AdminGetUserByUserIdV3' test.out

#- 150 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "uO4N9S2Y", "country": "CgHa6XBc", "dateOfBirth": "vGRYk5rU", "displayName": "tWHCnhmz", "languageTag": "zppV7tKN", "userName": "KYUQVBXy"}' \
    'mWcNlHaF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AdminUpdateUserV3' test.out

#- 151 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'xYaGHUpm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'AdminGetUserBanV3' test.out

#- 152 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "BFyOrFKt", "comment": "xGNAi0fq", "endDate": "4xChPLd2", "reason": "lOopc7Xo", "skipNotif": false}' \
    'dd6rCpyM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'AdminBanUserV3' test.out

#- 153 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": true, "skipNotif": false}' \
    'H9YHXh7K' \
    'nCVOKY2z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AdminUpdateUserBanV3' test.out

#- 154 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "sBRGtd8Q", "emailAddress": "Y2OLbijr", "languageTag": "vfr8hknj"}' \
    'WUWdMUXH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'AdminSendVerificationCodeV3' test.out

#- 155 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "vw4pNlGL", "ContactType": "jdBxLM07", "LanguageTag": "9pDAbTgm", "validateOnly": true}' \
    'EYEq2GkY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminVerifyAccountV3' test.out

#- 156 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'K1vYm9fl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'GetUserVerificationCode' test.out

#- 157 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'XQ7CQoem' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'AdminGetUserDeletionStatusV3' test.out

#- 158 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"enabled": false}' \
    'QG0dH0NV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminUpdateUserDeletionStatusV3' test.out

#- 159 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "M9VEHTPq", "country": "Dhkcu5vn", "dateOfBirth": "z6GiNMbo", "displayName": "BJHml0LJ", "emailAddress": "mpPi4mqh", "password": "ruiCZLGG", "validateOnly": false}' \
    'HNTMapp5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminUpgradeHeadlessAccountV3' test.out

#- 160 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'SbonsUJK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminDeleteUserInformationV3' test.out

#- 161 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'ADr60Ekd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminGetUserLoginHistoriesV3' test.out

#- 162 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "FrpLsGt9", "newPassword": "yTXWUSCQ", "oldPassword": "cMsHN7re"}' \
    'I22ks7I1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminResetPasswordV3' test.out

#- 163 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 39, "Resource": "AZc8sxxL", "SchedAction": 46, "SchedCron": "9XQeqNWL", "SchedRange": ["m8cNJbYH"]}]}' \
    '5J4WiJLv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AdminUpdateUserPermissionV3' test.out

#- 164 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 79, "Resource": "vHwtw2Mj", "SchedAction": 4, "SchedCron": "y9ZL6Zs5", "SchedRange": ["Bu2XYopL"]}]}' \
    'WZeUKJJN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminAddUserPermissionsV3' test.out

#- 165 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 10, "Resource": "tRpGgk1i"}]' \
    'seREzzRG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminDeleteUserPermissionBulkV3' test.out

#- 166 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '51' \
    '9wmuHddy' \
    'OdibI1LV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionV3' test.out

#- 167 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'yqbdY8DG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminGetUserPlatformAccountsV3' test.out

#- 168 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'ZKAuoIKz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminGetListJusticePlatformAccounts' test.out

#- 169 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    '3Pp3zLWU' \
    'xMzMtSmM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminGetUserMapping' test.out

#- 170 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    'mZP8nG0F' \
    'oQP8q7aS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminCreateJusticeUser' test.out

#- 171 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "sb85gAh9", "platformUserId": "RD3ZzN6N"}' \
    '1iJ8ltt9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminLinkPlatformAccount' test.out

#- 172 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "IRqCflgl"}' \
    'n6r5f0s5' \
    'H6lCf3QH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminPlatformUnlinkV3' test.out

#- 173 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'a11hLLCg' \
    'w5av4LEx' \
    'dabD8g2c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformLinkV3' test.out

#- 174 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["vHfMRupD"]' \
    'A5xbjs3X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminDeleteUserRolesV3' test.out

#- 175 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "RdHUJ0GC", "roleId": "mflIXkgJ"}]' \
    '6zkTwoak' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminSaveUserRoleV3' test.out

#- 176 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    'q7sEejFZ' \
    '1NtONXb9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminAddUserRoleV3' test.out

#- 177 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'w9hsQHsz' \
    'IsfrlzKp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminDeleteUserRoleV3' test.out

#- 178 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": false, "reason": "d58dZP5R"}' \
    'vrinNtvB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminUpdateUserStatusV3' test.out

#- 179 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'tqFSkA68' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 180 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "mIVYJ5pS"}' \
    'VxBsLhty' \
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
    '{"adminRole": false, "deletable": false, "isWildcard": false, "managers": [{"displayName": "ToXA4M1o", "namespace": "UFPhgo7Z", "userId": "6mwNC4FY"}], "members": [{"displayName": "69mM87jo", "namespace": "JNOGB83N", "userId": "s6Hl5Poa"}], "permissions": [{"action": 2, "resource": "6lKoVqNB", "schedAction": 92, "schedCron": "zIxOfglq", "schedRange": ["uS2q2DoW"]}], "roleName": "r9zvFtKa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminCreateRoleV3' test.out

#- 183 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    '2mOAqOok' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminGetRoleV3' test.out

#- 184 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'V1plxQ2Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminDeleteRoleV3' test.out

#- 185 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": true, "isWildcard": false, "roleName": "TPfipD67"}' \
    'jI2hiZkr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminUpdateRoleV3' test.out

#- 186 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    'tLnh2U1R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminGetRoleAdminStatusV3' test.out

#- 187 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'QlMxkfNM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateAdminRoleStatusV3' test.out

#- 188 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'PNtqv2TM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminRemoveRoleAdminV3' test.out

#- 189 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'z1b7Snzk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminGetRoleManagersV3' test.out

#- 190 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "XOek83Ig", "namespace": "m1wkSWsY", "userId": "vAsu18ob"}]}' \
    'Udc8mbvX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminAddRoleManagersV3' test.out

#- 191 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "cwcgMqOX", "namespace": "MziXrVds", "userId": "Ec3ClFP3"}]}' \
    'mJwusCBT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminRemoveRoleManagersV3' test.out

#- 192 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'e4kLcuqL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminGetRoleMembersV3' test.out

#- 193 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "40NYgekR", "namespace": "avpaGTA9", "userId": "BTyCCyN4"}]}' \
    'Fw9i6mI2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminAddRoleMembersV3' test.out

#- 194 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "W3tjjCqP", "namespace": "VyYs01hE", "userId": "YzWw3qrc"}]}' \
    'xM0DPAXQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminRemoveRoleMembersV3' test.out

#- 195 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 55, "resource": "NMP7j3xf", "schedAction": 83, "schedCron": "aoZaWFsp", "schedRange": ["kU5kn6Pl"]}]}' \
    'PqD4Agfa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminUpdateRolePermissionsV3' test.out

#- 196 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 37, "resource": "BfclBhZj", "schedAction": 3, "schedCron": "LnmghKwP", "schedRange": ["yVIn3qaH"]}]}' \
    'P7KNulyf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminAddRolePermissionsV3' test.out

#- 197 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["rENVQkpc"]' \
    'aWHf6T2x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminDeleteRolePermissionsV3' test.out

#- 198 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '81' \
    'Oljn7c6c' \
    '9efJI02T' \
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
    'ZxrgLBFJ' \
    'EkphFz0h' \
    '6WpoVpVc' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 200 'UserAuthenticationV3' test.out

#- 201 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    '2HBBmj6c' \
    'Ei02hXl4' \
    '2ubCRfy4' \
    'GjKn5ItH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'AuthenticationWithPlatformLinkV3' test.out

#- 202 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    'XLDZqpRh' \
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
    'qnR742Gc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'RequestGameTokenCodeResponseV3' test.out

#- 206 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'bLuQOGMO' \
    'EzmdjNhT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 207 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    '0S46kqyf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'RevokeUserV3' test.out

#- 208 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    'MBSaZc4S' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 208 'AuthorizeV3' test.out

#- 209 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    '16M8gQCD' \
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
    '7aBHWCYe' \
    'vNkfcQvl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'Change2faMethod' test.out

#- 212 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    '4Oso7tx6' \
    '5zXCiTfj' \
    'orLFqTmI' \
    'True' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'Verify2faCode' test.out

#- 213 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'UoonHBI1' \
    '3SZFHfm0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 214 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'F8vS2BrZ' \
    '3nq88YSS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'AuthCodeRequestV3' test.out

#- 215 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'D7zV0C8F' \
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
    'vVU3kRXB' \
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
    'ft1biZHu' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 219 'VerifyTokenV3' test.out

#- 220 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'hWyFPHdX' \
    'cyvZEhYe' \
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
    'USy5Ukc6' \
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
    '5naP11R8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 225 PublicListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["Xww9vq9n"]}' \
    'Ma2Btgwy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 226 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    'uf2fjV30' \
    'SLxi7uyh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'PublicGetUserByPlatformUserIDV3' test.out

#- 227 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    'aeFtcO9X' \
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
    '{"PasswordMD5Sum": "Ny63QO9v", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "k7TEDE8L", "policyId": "eEQBeGPL", "policyVersionId": "iE6tHCr0"}], "authType": "GPFvT0SA", "code": "K91y5vCe", "country": "BIJq0B9U", "dateOfBirth": "cI6c5cre", "displayName": "9ealHOZp", "emailAddress": "hcLncnjn", "password": "myU8FSxX", "reachMinimumAge": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'PublicCreateUserV3' test.out

#- 230 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'CrskoFqn' \
    'owq9Laz1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'CheckUserAvailability' test.out

#- 231 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["GLt5Mhf8"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'PublicBulkGetUsers' test.out

#- 232 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "Z7ahmbVP", "languageTag": "m2g7xAFf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'PublicSendRegistrationCode' test.out

#- 233 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "RRLUjfWS", "emailAddress": "9sftIfHG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'PublicVerifyRegistrationCode' test.out

#- 234 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "e5bUTSXO", "languageTag": "v12PMcRO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'PublicForgotPasswordV3' test.out

#- 235 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    '6E2Mkre5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'GetAdminInvitationV3' test.out

#- 236 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "7FvaACp6", "policyId": "he0fzjkP", "policyVersionId": "NNS0BfgF"}], "authType": "EMAILPASSWD", "country": "nIRsZ5hr", "dateOfBirth": "qNzVszGV", "displayName": "P5P1iwhc", "password": "f30C1KHR", "reachMinimumAge": true}' \
    '5vbfZvYI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'CreateUserFromInvitationV3' test.out

#- 237 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "FFctEKOL", "country": "xSRxe0wm", "dateOfBirth": "WBMcNiWo", "displayName": "obB6o6al", "languageTag": "TQcP0EpE", "userName": "9wGNVwkg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'UpdateUserV3' test.out

#- 238 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "fJJ2HIal", "country": "fzgRpTf9", "dateOfBirth": "lxF1JPBi", "displayName": "zXZtrGe8", "languageTag": "LyOH24nn", "userName": "eZHFeRld"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'PublicPartialUpdateUserV3' test.out

#- 239 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "0bGA7JxW", "emailAddress": "YzaEaimv", "languageTag": "okcWX59k"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'PublicSendVerificationCodeV3' test.out

#- 240 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "wiYHgHT6", "contactType": "Ivd0fGpU", "languageTag": "209nVRcl", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'PublicUserVerificationV3' test.out

#- 241 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "mQTFvr5r", "country": "RyYzaNmz", "dateOfBirth": "3PjMx2T8", "displayName": "9NTrFRUC", "emailAddress": "XFkruxeg", "password": "pkcXCfzg", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'PublicUpgradeHeadlessAccountV3' test.out

#- 242 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "vv0WE5EQ", "password": "hcomPS1E"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'PublicVerifyHeadlessAccountV3' test.out

#- 243 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "7cpsLgr2", "newPassword": "zEnjyRNj", "oldPassword": "EC3FMDcZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'PublicUpdatePasswordV3' test.out

#- 244 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'vwwf8aU9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'PublicCreateJusticeUser' test.out

#- 245 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    '8In31mF4' \
    'jlwKyGxT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'PublicPlatformLinkV3' test.out

#- 246 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "F1l5q1Np"}' \
    '0sT1X8J2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'PublicPlatformUnlinkV3' test.out

#- 247 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'eAWOzjmh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'PublicPlatformUnlinkAllV3' test.out

#- 248 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    '9UzIfnho' \
    'o6xUmTle' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'PublicForcePlatformLinkV3' test.out

#- 249 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'UnJFM7Xh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'PublicWebLinkPlatform' test.out

#- 250 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'oDxGik2J' \
    'SfZ64wWe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'PublicWebLinkPlatformEstablish' test.out

#- 251 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "Pq6103PO", "emailAddress": "NKIS7F9e", "newPassword": "mW4R15tA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'ResetPasswordV3' test.out

#- 252 PublicGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-public-get-user-by-user-id-v3' \
    'siG31CEy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'PublicGetUserByUserIdV3' test.out

#- 253 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    'UOuOZhmn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'PublicGetUserBanHistoryV3' test.out

#- 254 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'Hkvek6Aa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 255 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    '5kNnoclx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'PublicGetUserInformationV3' test.out

#- 256 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    's9kxcvIp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'PublicGetUserLoginHistoriesV3' test.out

#- 257 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'V7mCYfWK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'PublicGetUserPlatformAccountsV3' test.out

#- 258 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    'jY9CsQYs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'PublicListJusticePlatformAccountsV3' test.out

#- 259 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "GyhEOntE", "platformUserId": "kedM1A0b"}' \
    'FqvjxbT3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'PublicLinkPlatformAccount' test.out

#- 260 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["YuVdaBN5"], "requestId": "RSjhcjuD"}' \
    'vNrXL845' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'PublicForceLinkPlatformWithProgression' test.out

#- 261 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    'jfh5tZ0h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'PublicGetPublisherUserV3' test.out

#- 262 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'qJLjQUmo' \
    'YUnC849O' \
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
    'BNuLZtof' \
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
    '{"languageTag": "GAAaMpBQ"}' \
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
    'ArU4RS0F' \
    'QRy5Qz5V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'PlatformAuthenticateSAMLV3Handler' test.out

#- 269 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'cyfBpHjt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'LoginSSOClient' test.out

#- 270 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'vFwKSJyZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'LogoutSSOClient' test.out

#- 271 RequestGameTokenResponseV3
$PYTHON -m $MODULE 'iam-request-game-token-response-v3' \
    'eqvpevcV' \
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
    'XTxs9LTo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'AdminGetUserDeviceBansV4' test.out

#- 275 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "rIyx23Lh", "deviceId": "Ly7ds3g3", "deviceType": "BuHTPF19", "enabled": false, "endDate": "BYFws5Ya", "ext": {"4eOwWqW8": {}}, "reason": "HiLpTi1W"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'AdminBanDeviceV4' test.out

#- 276 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    '63HccgM5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'AdminGetDeviceBanV4' test.out

#- 277 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": false}' \
    'Yu36JpTL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'AdminUpdateDeviceBanV4' test.out

#- 278 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    '55W4ws3K' \
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
    'CyplY1oc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'AdminGetDeviceBansV4' test.out

#- 281 AdminDecryptDeviceV4
$PYTHON -m $MODULE 'iam-admin-decrypt-device-v4' \
    'KDCVaqrV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'AdminDecryptDeviceV4' test.out

#- 282 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    'eegT3uGD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'AdminUnbanDeviceV4' test.out

#- 283 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    'IIcvuuok' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'AdminGetUsersByDeviceV4' test.out

#- 284 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"count": 38}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'AdminCreateTestUsersV4' test.out

#- 285 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["8TC38mYo"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'AdminBulkCheckValidUserIDV4' test.out

#- 286 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "UanQT4Mm", "country": "znv7r2jt", "dateOfBirth": "hibgeCLX", "displayName": "41qyOiLg", "languageTag": "d8Wy739Q", "userName": "Hzw0TEzp"}' \
    'd7TV5vhM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'AdminUpdateUserV4' test.out

#- 287 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "M2i3DM6e", "emailAddress": "tfI7TzC3"}' \
    'sKmtsyEK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'AdminUpdateUserEmailAddressV4' test.out

#- 288 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    'dO6HNm3z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'AdminDisableUserMFAV4' test.out

#- 289 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'Gu71qTSS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'AdminListUserRolesV4' test.out

#- 290 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["JEbWlETp"], "roleId": "9XOCA1X3"}' \
    'HHMTlakA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'AdminUpdateUserRoleV4' test.out

#- 291 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["WQfBuBAO"], "roleId": "CjBfYCcp"}' \
    'lye2GaPN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'AdminAddUserRoleV4' test.out

#- 292 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["zkrgBH4i"], "roleId": "cml6L36V"}' \
    'g2F2Q9aZ' \
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
    '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "t70TevJg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'AdminCreateRoleV4' test.out

#- 295 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'sb2PyFfJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'AdminGetRoleV4' test.out

#- 296 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    '6qcHABdG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'AdminDeleteRoleV4' test.out

#- 297 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "Pqon7UmL"}' \
    'Ny9PkF9S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'AdminUpdateRoleV4' test.out

#- 298 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 26, "resource": "lbWNcAxv", "schedAction": 40, "schedCron": "HDqJtYC7", "schedRange": ["rznwNdLh"]}]}' \
    'qXvXVnjv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateRolePermissionsV4' test.out

#- 299 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 5, "resource": "0BMegJpW", "schedAction": 9, "schedCron": "uhpLX1BH", "schedRange": ["Z4hnOmmy"]}]}' \
    'Xu6XtjNC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'AdminAddRolePermissionsV4' test.out

#- 300 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["qYk9TPUK"]' \
    'cDTfR7dp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'AdminDeleteRolePermissionsV4' test.out

#- 301 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'UEo2Oe08' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'AdminListAssignedUsersV4' test.out

#- 302 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["HpeJBfG0"], "namespace": "nGZHe5lw", "userId": "2TlkPIxL"}' \
    '9v4fpCd0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'AdminAssignUserToRoleV4' test.out

#- 303 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "Uk5h1kP1", "userId": "pkkT08Cs"}' \
    '6DdXZWow' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'AdminRevokeUserFromRoleV4' test.out

#- 304 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "BgZizMvw", "country": "Hszf84MA", "dateOfBirth": "mayJJ6vz", "displayName": "DTXxsyIa", "languageTag": "Tgp0pwnE", "userName": "JL15kxO4"}' \
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
    'oVUPng5J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'AdminMakeFactorMyDefaultV4' test.out

#- 315 AdminInviteUserV4
$PYTHON -m $MODULE 'iam-admin-invite-user-v4' \
    '{"assignedNamespaces": ["sHAkI47j"], "emailAddresses": ["O1wuAFuZ"], "isAdmin": false, "roleId": "UwPteKdQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'AdminInviteUserV4' test.out

#- 316 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "UTF33fYW", "policyId": "ZfQMAnzi", "policyVersionId": "ThaE2btn"}], "authType": "EMAILPASSWD", "country": "p9GeTQ7X", "dateOfBirth": "ymDSQNYX", "displayName": "NEpZyFhI", "emailAddress": "eqiNHtVS", "password": "nhxby8F6", "passwordMD5Sum": "xF8MhbJA", "username": "YEDN1xsz", "verified": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'PublicCreateTestUserV4' test.out

#- 317 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "R69nsKAS", "policyId": "5zKsTRXd", "policyVersionId": "7b3v2fkZ"}], "authType": "EMAILPASSWD", "code": "r06ojUto", "country": "VJLGXeko", "dateOfBirth": "mvwD849m", "displayName": "o5vIkDZY", "emailAddress": "rYEf1xYn", "password": "lxHHXjFo", "passwordMD5Sum": "XtwKW6AO", "reachMinimumAge": false, "username": "qnWCuXMW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'PublicCreateUserV4' test.out

#- 318 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "G8fNprJx", "policyId": "82nAFexN", "policyVersionId": "ou1AicsQ"}], "authType": "EMAILPASSWD", "country": "Kx5LjetH", "dateOfBirth": "Ew0aCQpU", "displayName": "6EGOW0VA", "password": "I87DPH0f", "reachMinimumAge": false, "username": "Uqzay0gE"}' \
    'T8T53yEe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'CreateUserFromInvitationV4' test.out

#- 319 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "j7DsqsTv", "country": "NKAXqfqM", "dateOfBirth": "JHGeHaN2", "displayName": "k1Eutm9A", "languageTag": "AWDcDv3I", "userName": "SBgZCAf2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'PublicUpdateUserV4' test.out

#- 320 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "pWOWs4I2", "emailAddress": "lOHfiu4H"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'PublicUpdateUserEmailAddressV4' test.out

#- 321 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "raKYMtgB", "country": "mvCHMtF1", "dateOfBirth": "5a7T0Ihe", "displayName": "ywiPE1WU", "emailAddress": "R1PTFfJJ", "password": "46kzfqap", "reachMinimumAge": false, "username": "ByIKoYzY", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 322 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "TWJA3nFC", "password": "DgWOpz3y", "username": "PQfqbeVG"}' \
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
    '7i4VTAhu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'PublicMakeFactorMyDefaultV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
