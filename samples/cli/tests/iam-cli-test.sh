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
iam-create-user '{"AuthType": "FtBxyZcD", "Country": "XBpGlsQu", "DisplayName": "Ju8vMf0I", "LoginId": "sJkTrd8I", "Password": "DcV2zXnT", "PasswordMD5Sum": "KjXY1bPq"}' --login_with_auth "Bearer foo"
iam-get-admin-users-by-role-id --login_with_auth "Bearer foo"
iam-get-user-by-login-id --login_with_auth "Bearer foo"
iam-get-user-by-platform-user-id 'amiBxx9C' 's18EY84e' --login_with_auth "Bearer foo"
iam-forgot-password '{"Context": "kItqRzHU", "LanguageTag": "1oh570KQ", "LoginID": "BVaewc72"}' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-users-by-login-ids --login_with_auth "Bearer foo"
iam-reset-password '{"Code": "krSha68n", "LoginID": "3Ynozp1C", "NewPassword": "2KmIQTuB"}' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-user-by-user-id 'dNEUsxFb' --login_with_auth "Bearer foo"
iam-update-user '{"Country": "8CJ17M7D", "DateOfBirth": "JZaMSxEC", "DisplayName": "bZbygyoa", "LanguageTag": "rORoeNHS"}' 'b8Rh3kgs' --login_with_auth "Bearer foo"
iam-delete-user '9qqJbnQs' --login_with_auth "Bearer foo"
iam-ban-user '{"ban": "oBgiVpP8", "comment": "Cm3yvASU", "endDate": "oxdxxFqm", "reason": "AGTJ8IEd", "skipNotif": false}' 'gEtp4w29' --login_with_auth "Bearer foo"
iam-get-user-ban-history 'KOu9c19R' --login_with_auth "Bearer foo"
iam-disable-user-ban '6XDqWHkk' 'P8npLEKM' --login_with_auth "Bearer foo"
iam-enable-user-ban 'fjiX7jpk' 'VZk3IaQY' --login_with_auth "Bearer foo"
iam-get-user-information 'EmqGodOE' --login_with_auth "Bearer foo"
iam-delete-user-information 'Gt9gPOj0' --login_with_auth "Bearer foo"
iam-get-user-login-histories 'c6i0JkvI' --login_with_auth "Bearer foo"
iam-save-user-permission '{"Permissions": [{"Action": 0, "Resource": "s73ucYnF", "SchedAction": 52, "SchedCron": "J3DK5T4E", "SchedRange": ["ogg0Y39U"]}]}' 'oYlpv5bV' --login_with_auth "Bearer foo"
iam-add-user-permission '{"SchedAction": 53, "SchedCron": "gtsDhUTD", "SchedRange": ["UscbQDjb"]}' '91' 'QuPMz2PT' 'RlkyU89Z' --login_with_auth "Bearer foo"
iam-delete-user-permission '82' 'Ow6zPFJ4' '2cwmzBBS' --login_with_auth "Bearer foo"
iam-get-user-platform-accounts 'MNcoAAOj' --login_with_auth "Bearer foo"
iam-get-user-mapping 'KNjfcYHm' '093aYgBU' --login_with_auth "Bearer foo"
iam-platform-link '1sqjyK0X' 'H45PaRSO' 'FQBtu23R' --login_with_auth "Bearer foo"
iam-platform-unlink 'EZ8hRVX7' 'LGOvDdYi' --login_with_auth "Bearer foo"
iam-get-publisher-user 'QS9i7mV1' --login_with_auth "Bearer foo"
iam-save-user-roles '["C91pjG9g"]' 'pxL6ycTQ' --login_with_auth "Bearer foo"
iam-add-user-role 'dvln2LAu' 'SQWEXL6L' --login_with_auth "Bearer foo"
iam-delete-user-role 'FE1YHo9m' '126ZWc8h' --login_with_auth "Bearer foo"
iam-upgrade-headless-account '{"LoginID": "HtWvbNYq", "Password": "gUqslArF"}' 'PiHUIvaC' --login_with_auth "Bearer foo"
iam-upgrade-headless-account-with-verification-code '{"Code": "v8kU9dBB", "Password": "pdsJLhsV", "loginId": "yExrkxoo"}' 't0B7WOfe' --login_with_auth "Bearer foo"
iam-user-verification '{"Code": "rcZdpMci", "ContactType": "37Ds7YSf", "LanguageTag": "ExaI3uzL", "validateOnly": true}' 'eMbFAlt4' --login_with_auth "Bearer foo"
iam-send-verification-code '{"Context": "hr7HmOYi", "LanguageTag": "BA5ltAOX", "LoginID": "mlG6eh1d"}' 'TdoTFpBI' --login_with_auth "Bearer foo"
iam-authorization 'cuC1dQY9' '3OJnJ6Te' 'token' --login_with_auth "Bearer foo"
iam-get-jwks --login_with_auth "Bearer foo"
iam-revoke-user 'D8ldz7Hu' --login_with_auth "Bearer foo"
iam-get-revocation-list --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-grant 'refresh_token' --login_with_auth "Bearer foo"
iam-verify-token 'D79kdWun' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-admin-get-age-restriction-status-v2 --login_with_auth "Bearer foo"
iam-admin-update-age-restriction-config-v2 '{"AgeRestriction": 42, "Enable": false}' --login_with_auth "Bearer foo"
iam-get-list-country-age-restriction --login_with_auth "Bearer foo"
iam-update-country-age-restriction '{"AgeRestriction": 50}' 'U0q1pHyh' --login_with_auth "Bearer foo"
iam-admin-search-users-v2 'hERoGgdr' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v2 'ysMizBGS' --login_with_auth "Bearer foo"
iam-admin-update-user-v2 '{"Country": "RdP2l7DN", "DateOfBirth": "SZ8Aq0Xi", "DisplayName": "PLQXSe07", "LanguageTag": "ZddOGTMl"}' 'JjBwj9HJ' --login_with_auth "Bearer foo"
iam-admin-ban-user-v2 '{"ban": "HQKseEdS", "comment": "XRDSvgua", "endDate": "uw1xT7eM", "reason": "wSl9MLH0", "skipNotif": false}' 'TJ2ulNzB' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v2 'vwJaQa54' --login_with_auth "Bearer foo"
iam-admin-disable-user-v2 '{"Reason": "7JllvA8R"}' 'WSpabUt7' --login_with_auth "Bearer foo"
iam-admin-enable-user-v2 'xk6QxyWh' --login_with_auth "Bearer foo"
iam-admin-reset-password-v2 '{"LanguageTag": "fqoWfJw2", "NewPassword": "o8oWUqvP", "OldPassword": "CZ2HzT7N"}' 'XmWDlXsu' --login_with_auth "Bearer foo"
iam-admin-delete-platform-link-v2 'NIdQJR5l' 'sNOlvkfw' --login_with_auth "Bearer foo"
iam-admin-put-user-roles-v2 '["aSbnsuLC"]' 'gToxuVTe' --login_with_auth "Bearer foo"
iam-admin-create-user-roles-v2 '["kJgvg6h5"]' 'HIpH0Dvi' --login_with_auth "Bearer foo"
iam-public-get-country-age-restriction 'plEk4vj3' --login_with_auth "Bearer foo"
iam-public-create-user-v2 '{"AuthType": "LDp4yqDt", "Country": "8QUZDpxl", "DisplayName": "HasinGcj", "LoginId": "rkmRMttg", "Password": "jDSaIVBm", "PasswordMD5Sum": "ft3Udg7p"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v2 '{"Context": "9PGmY2H5", "LanguageTag": "kX4MsisS", "LoginID": "X28nARxW"}' --login_with_auth "Bearer foo"
iam-public-reset-password-v2 '{"Code": "Rpv5ou5x", "LoginID": "tvd28OUf", "NewPassword": "Ct8UJC5f"}' --login_with_auth "Bearer foo"
iam-public-get-user-by-user-idv2 'lNyj6HsT' --login_with_auth "Bearer foo"
iam-public-update-user-v2 '{"Country": "tX8P3lln", "DateOfBirth": "aaS9lqyy", "DisplayName": "gPcfkJIx", "LanguageTag": "fQZza8kN"}' 'VbDxVMq7' --login_with_auth "Bearer foo"
iam-public-get-user-ban 'HJk0F89x' --login_with_auth "Bearer foo"
iam-public-update-password-v2 '{"LanguageTag": "Ac3YVfaE", "NewPassword": "Ntrl0pTK", "OldPassword": "ZTXqzHuB"}' 'MYQSA2jz' --login_with_auth "Bearer foo"
iam-get-list-justice-platform-accounts '1ZOpdOjS' --login_with_auth "Bearer foo"
iam-public-platform-link-v2 'yMddB41J' 'uMf7RUyB' 'HRj8IiRi' --login_with_auth "Bearer foo"
iam-public-delete-platform-link-v2 'mRllHT6D' 'c40vFFA6' --login_with_auth "Bearer foo"
iam-admin-get-bans-type-v3 --login_with_auth "Bearer foo"
iam-admin-get-list-ban-reason-v3 --login_with_auth "Bearer foo"
iam-admin-get-input-validations --login_with_auth "Bearer foo"
iam-admin-update-input-validations '[{"field": "gpU7EW3x", "validation": {"allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "description": [{"language": "55gOeqQI", "message": ["qcJVKmBM"]}], "isCustomRegex": false, "letterCase": "uTrrkbmu", "maxLength": 90, "maxRepeatingAlphaNum": 45, "maxRepeatingSpecialCharacter": 15, "minCharType": 81, "minLength": 32, "regex": "mEnDXIWr", "specialCharacterLocation": "BPlSay46", "specialCharacters": ["mv71BAZA"]}}]' --login_with_auth "Bearer foo"
iam-admin-reset-input-validations 'OjtFJ2vm' --login_with_auth "Bearer foo"
iam-list-admins-v3 --login_with_auth "Bearer foo"
iam-admin-get-age-restriction-status-v3 --login_with_auth "Bearer foo"
iam-admin-update-age-restriction-config-v3 '{"ageRestriction": 91, "enable": false}' --login_with_auth "Bearer foo"
iam-admin-get-list-country-age-restriction-v3 --login_with_auth "Bearer foo"
iam-admin-update-country-age-restriction-v3 '{"ageRestriction": 39}' 'T7TZHWDd' --login_with_auth "Bearer foo"
iam-admin-get-banned-users-v3 --login_with_auth "Bearer foo"
iam-admin-get-bans-type-with-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-get-clients-by-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-create-client-v3 '{"audiences": ["CkIsZoAr"], "baseUri": "WwPHcyFA", "clientId": "dAtYciLI", "clientName": "gRwFRr0g", "clientPermissions": [{"action": 45, "resource": "B9tz3vp9", "schedAction": 98, "schedCron": "VlV8rK3t", "schedRange": ["E6n0smip"]}], "clientPlatform": "1tw3L7cU", "deletable": false, "namespace": "9pqtv6Jf", "oauthClientType": "PZwcCVOX", "redirectUri": "cVa80TmC", "secret": "wtD2lAH0"}' --login_with_auth "Bearer foo"
iam-admin-get-clientsby-namespaceby-idv3 '1o6NdcBI' --login_with_auth "Bearer foo"
iam-admin-delete-client-v3 'gzrDyWpF' --login_with_auth "Bearer foo"
iam-admin-update-client-v3 '{"audiences": ["BYGmmBaw"], "baseUri": "MyoKyNpd", "clientName": "Aasm8xwU", "clientPermissions": [{"action": 10, "resource": "zOlQiZY4", "schedAction": 79, "schedCron": "bOQXJ7uO", "schedRange": ["TzNMvuq2"]}], "clientPlatform": "tNl4CX4I", "deletable": false, "namespace": "iK4DEUJR", "redirectUri": "VK3l9Eb0"}' 'R1XRb0RH' --login_with_auth "Bearer foo"
iam-admin-update-client-permission-v3 '{"permissions": [{"action": 43, "resource": "S1smeOln"}]}' 'grdTXCza' --login_with_auth "Bearer foo"
iam-admin-add-client-permissions-v3 '{"permissions": [{"action": 82, "resource": "BtkZMio4"}]}' 'wcyhloVS' --login_with_auth "Bearer foo"
iam-admin-delete-client-permission-v3 '35' 'Yp8QtcEm' 'CEVc75Uf' --login_with_auth "Bearer foo"
iam-retrieve-all-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-sso-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-third-party-login-platform-credential-v3 'eypWjDNh' --login_with_auth "Bearer foo"
iam-add-third-party-login-platform-credential-v3 '{"ACSURL": "zCL5sWS2", "AWSCognitoRegion": "qwO763iE", "AWSCognitoUserPool": "klkzLm88", "AppId": "LpLuYRO3", "ClientId": "C55yHpwK", "Environment": "2JaqenDG", "FederationMetadataURL": "n7a2NUpl", "GenericOauthFlow": false, "IsActive": false, "Issuer": "q06n6a0r", "JWKSEndpoint": "W8EfkpaX", "KeyID": "twYZJaQ4", "NetflixCertificates": {"encryptedPrivateKey": "WbwNmsFY", "encryptedPrivateKeyName": "etjEurH8", "publicCertificate": "eloJzNKt", "publicCertificateName": "RUaTz1ET", "rootCertificate": "dsmwzjkk", "rootCertificateName": "n9oiQl05"}, "OrganizationId": "g7cO3ZMb", "PlatformName": "6Ojlo6DM", "RedirectUri": "NpP2qMrT", "Secret": "Q1UpjfU6", "TeamID": "wJhy1jOV", "TokenAuthenticationType": "kkUlS795", "TokenClaimsMapping": {"27EZ25Ia": "8uCeZFlL"}}' 'tEVpDAEb' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-credential-v3 'A82jy74l' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-credential-v3 '{"ACSURL": "q0pDE5xR", "AWSCognitoRegion": "wh5b45eb", "AWSCognitoUserPool": "pcM7ScSs", "AppId": "3UOpAwIp", "ClientId": "9rRtn1Pc", "Environment": "CxdbumeY", "FederationMetadataURL": "gOdEBWRQ", "GenericOauthFlow": false, "IsActive": true, "Issuer": "fU8icH40", "JWKSEndpoint": "81gRB1Gy", "KeyID": "LfLg4RYu", "NetflixCertificates": {"encryptedPrivateKey": "EbgUDEcJ", "encryptedPrivateKeyName": "yIvsPwOr", "publicCertificate": "0BmV5iFv", "publicCertificateName": "fwFjTSmI", "rootCertificate": "EqoLyLeU", "rootCertificateName": "GmomGX9s"}, "OrganizationId": "XTZ0v8pq", "PlatformName": "Lfc5SwGn", "RedirectUri": "ReUULDX4", "Secret": "QUIbb5nh", "TeamID": "68ZnyUtR", "TokenAuthenticationType": "vW9hNBSF", "TokenClaimsMapping": {"TtFrOmjk": "FrFVA8t0"}}' 'xF34Xpt6' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-domain-v3 '{"affectedClientIDs": ["ZlTTic0k"], "assignedNamespaces": ["r2a0nI2o"], "domain": "o7UHCJK5", "roleId": "sp0aCvIq"}' '3aHVYIle' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-domain-v3 '{"domain": "wLRuHY83"}' 'bGj0HTee' --login_with_auth "Bearer foo"
iam-retrieve-sso-login-platform-credential 'WXlIcRid' --login_with_auth "Bearer foo"
iam-add-sso-login-platform-credential '{"acsUrl": "qctDpygY", "apiKey": "0ax476ED", "appId": "4MMO9Tw2", "federationMetadataUrl": "JH0qhWIw", "isActive": false, "redirectUri": "zJFRYw6t", "secret": "1IKZLO6V", "ssoUrl": "4Ode46Qm"}' 'CidgdpP7' --login_with_auth "Bearer foo"
iam-delete-sso-login-platform-credential-v3 'RTC587lm' --login_with_auth "Bearer foo"
iam-update-sso-platform-credential '{"acsUrl": "UmBziPZB", "apiKey": "npOfkllx", "appId": "fq0NsrSj", "federationMetadataUrl": "w5Hog0bl", "isActive": false, "redirectUri": "5MStYGcz", "secret": "LINlEC0O", "ssoUrl": "EsE3yzIs"}' 'UP0NjluO' --login_with_auth "Bearer foo"
iam-admin-get-user-by-platform-user-idv3 'rGZTzsLW' '7Fjfs9nI' --login_with_auth "Bearer foo"
iam-get-admin-users-by-role-id-v3 'kcZ38fUE' --login_with_auth "Bearer foo"
iam-admin-get-user-by-email-address-v3 --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-user-i-ds-v3 '{"userIds": ["anjKHbXf"]}' --login_with_auth "Bearer foo"
iam-admin-invite-user-v3 '{"emailAddresses": ["k1zxdzxg"], "isAdmin": false, "roles": ["RyHi3u8B"]}' --login_with_auth "Bearer foo"
iam-admin-list-users-v3 --login_with_auth "Bearer foo"
iam-admin-search-user-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-by-email-address-v3 '{"listEmailAddressRequest": ["zVWu1tOm"]}' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v3 'hUtCgcpv' --login_with_auth "Bearer foo"
iam-admin-update-user-v3 '{"avatarUrl": "GrEbcZUD", "country": "ExH1tayO", "dateOfBirth": "GXIHzMRj", "displayName": "MCtOJsEi", "languageTag": "jlrbpyyE", "userName": "cQxVgJIj"}' 'MZqcWfMl' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v3 '6dqrpD4t' --login_with_auth "Bearer foo"
iam-admin-ban-user-v3 '{"ban": "nc3ZRB3I", "comment": "kdtPfAJE", "endDate": "omwenJvQ", "reason": "8grtQSv6", "skipNotif": true}' 'cALcMIPm' --login_with_auth "Bearer foo"
iam-admin-update-user-ban-v3 '{"enabled": true, "skipNotif": false}' 'T51M4yko' '8S0EnGLv' --login_with_auth "Bearer foo"
iam-admin-send-verification-code-v3 '{"context": "GvfuSyCT", "emailAddress": "yjj4mCai", "languageTag": "uMGKOF5G"}' 'JJooSXUl' --login_with_auth "Bearer foo"
iam-admin-verify-account-v3 '{"Code": "3YU35QHG", "ContactType": "pBABnOlx", "LanguageTag": "DznICQVy", "validateOnly": true}' 'Bg34WTtD' --login_with_auth "Bearer foo"
iam-get-user-verification-code 'kn0rtn6t' --login_with_auth "Bearer foo"
iam-admin-get-user-deletion-status-v3 '0Yx4z12E' --login_with_auth "Bearer foo"
iam-admin-update-user-deletion-status-v3 '{"enabled": false}' 'Q1rUQYCN' --login_with_auth "Bearer foo"
iam-admin-upgrade-headless-account-v3 '{"code": "TiDX4jE3", "country": "M2IsTHu8", "dateOfBirth": "QwNyOlXf", "displayName": "IWd0mcq5", "emailAddress": "T4SUc7cW", "password": "fCKK6Dij", "validateOnly": false}' 'FcenEMyS' --login_with_auth "Bearer foo"
iam-admin-delete-user-information-v3 'PfhxBenD' --login_with_auth "Bearer foo"
iam-admin-get-user-login-histories-v3 'iTiAqFYm' --login_with_auth "Bearer foo"
iam-admin-update-user-permission-v3 '{"Permissions": [{"Action": 63, "Resource": "KjaELmml", "SchedAction": 23, "SchedCron": "6oexId1O", "SchedRange": ["KGUN2Uzn"]}]}' 'd7uVa7t1' --login_with_auth "Bearer foo"
iam-admin-add-user-permissions-v3 '{"Permissions": [{"Action": 48, "Resource": "vSYSV52b", "SchedAction": 66, "SchedCron": "ifCIf4ts", "SchedRange": ["uu6Pkam6"]}]}' 'tFSYFt4Z' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-bulk-v3 '[{"Action": 47, "Resource": "A2PzZFRk"}]' 'BNlg6hn5' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-v3 '33' 'usKyZAuV' '6uUvqM0l' --login_with_auth "Bearer foo"
iam-admin-get-user-platform-accounts-v3 'V6UZMlEb' --login_with_auth "Bearer foo"
iam-admin-get-list-justice-platform-accounts 'xHNgJRiQ' --login_with_auth "Bearer foo"
iam-admin-create-justice-user 'ExaunjdA' 'qnHUz44t' --login_with_auth "Bearer foo"
iam-admin-link-platform-account '{"platformId": "x4O6hamP", "platformUserId": "wNoi071e"}' 'zDK56JFI' --login_with_auth "Bearer foo"
iam-admin-platform-unlink-v3 '{"platformNamespace": "Ge1IMUCL"}' 'cN0DsaD5' 'FyBsFe9O' --login_with_auth "Bearer foo"
iam-admin-platform-link-v3 'YEJVsYff' 'mhyx6J25' 'PrM4S3cB' --login_with_auth "Bearer foo"
iam-admin-delete-user-roles-v3 '["8m17hEeL"]' 'LgoaYth6' --login_with_auth "Bearer foo"
iam-admin-save-user-role-v3 '[{"namespace": "zcf8eA45", "roleId": "OMvObWej"}]' 'o9LfGeeg' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v3 'JMaBGR6D' '1ZoZEZQk' --login_with_auth "Bearer foo"
iam-admin-delete-user-role-v3 'J8DSqFnh' 'dKvjFCFb' --login_with_auth "Bearer foo"
iam-admin-update-user-status-v3 '{"enabled": true, "reason": "lEWoMPdg"}' 'K5zn62mh' --login_with_auth "Bearer foo"
iam-admin-verify-user-without-verification-code-v3 'nFSpCTlD' --login_with_auth "Bearer foo"
iam-admin-update-client-secret-v3 '{"newSecret": "NBOcygvv"}' '2LAgfBGV' --login_with_auth "Bearer foo"
iam-admin-get-roles-v3 --login_with_auth "Bearer foo"
iam-admin-create-role-v3 '{"adminRole": true, "deletable": false, "isWildcard": false, "managers": [{"displayName": "bKYsB0gq", "namespace": "J8VhYSik", "userId": "Jl2p9rBx"}], "members": [{"displayName": "8N5egapq", "namespace": "xDy4cLfN", "userId": "jzzEZYA8"}], "permissions": [{"action": 19, "resource": "IkMJb7cZ", "schedAction": 3, "schedCron": "PsaLLpEB", "schedRange": ["VEMk5AsK"]}], "roleName": "aF2P44lX"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v3 'kI3zdiRi' --login_with_auth "Bearer foo"
iam-admin-delete-role-v3 'C5IbPit7' --login_with_auth "Bearer foo"
iam-admin-update-role-v3 '{"deletable": false, "isWildcard": true, "roleName": "oi4nDfPu"}' '5V6QSYxE' --login_with_auth "Bearer foo"
iam-admin-get-role-admin-status-v3 'VOryVuZY' --login_with_auth "Bearer foo"
iam-admin-update-admin-role-status-v3 'mgUeEPB5' --login_with_auth "Bearer foo"
iam-admin-remove-role-admin-v3 'AGPgvk0Z' --login_with_auth "Bearer foo"
iam-admin-get-role-managers-v3 'thaj0EBA' --login_with_auth "Bearer foo"
iam-admin-add-role-managers-v3 '{"managers": [{"displayName": "4azRz0d5", "namespace": "6smobor4", "userId": "p1PlgQB9"}]}' 'EcNGOeBR' --login_with_auth "Bearer foo"
iam-admin-remove-role-managers-v3 '{"managers": [{"displayName": "Y6G5ae07", "namespace": "deDLaZ8J", "userId": "CvbeTfW0"}]}' 'hgzrabLJ' --login_with_auth "Bearer foo"
iam-admin-get-role-members-v3 'xEwJrEBm' --login_with_auth "Bearer foo"
iam-admin-add-role-members-v3 '{"members": [{"displayName": "Q64haNOz", "namespace": "lGu68UYy", "userId": "upjdDetn"}]}' 'oT0rfWtV' --login_with_auth "Bearer foo"
iam-admin-remove-role-members-v3 '{"members": [{"displayName": "PwQfq6V9", "namespace": "2gbfPouN", "userId": "dmP7fckV"}]}' 'nuDGvYIb' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v3 '{"permissions": [{"action": 30, "resource": "5tcR5z8Z", "schedAction": 71, "schedCron": "LjSHcaR3", "schedRange": ["X4tZmwr0"]}]}' 'QmOnsEg4' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v3 '{"permissions": [{"action": 8, "resource": "Xp0xQkZ2", "schedAction": 70, "schedCron": "juwWWy0t", "schedRange": ["U11PCeSr"]}]}' 'vejUKwVf' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v3 '["F37Vr7mk"]' 'DzFBI1Vw' --login_with_auth "Bearer foo"
iam-admin-delete-role-permission-v3 '14' 'kVSKDlNF' 'OUHBJsvT' --login_with_auth "Bearer foo"
iam-admin-get-my-user-v3 --login_with_auth "Bearer foo"
iam-user-authentication-v3 'sqk9hg4h' 'j6nUdebW' '6UskbPkk' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-authentication-with-platform-link-v3 'ZAk01f1K' 'xCtWADU2' 'guN6U9w1' '3W1K9TZQ' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v3 '4qRLEi5w' --login_with_auth "Bearer foo"
iam-get-country-location-v3 --login_with_auth "Bearer foo"
iam-logout --login_with_auth "Bearer foo"
iam-admin-retrieve-user-third-party-platform-token-v3 'owE36rfm' 'M0CCs35T' --login_with_auth "Bearer foo"
iam-revoke-user-v3 'PUPLmsY8' --login_with_auth "Bearer foo"
iam-authorize-v3 'WgwSx1DI' 'code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-introspection-v3 'v9ZTo2Hp' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-jwksv3 --login_with_auth "Bearer foo"
iam-change2fa-method 'A6pzjHpZ' 'O0E9iLgR' --login_with_auth "Bearer foo"
iam-verify2fa-code 'PJK3nBae' '3GOgbQrq' 'ra0Ptkfv' 'False' --login_with_auth "Bearer foo"
iam-retrieve-user-third-party-platform-token-v3 'Y2ramp5l' 'nBn6xmBk' --login_with_auth "Bearer foo"
iam-auth-code-request-v3 'fMtC66hF' 'q0kPOkOR' --login_with_auth "Bearer foo"
iam-platform-token-grant-v3 'm2XjlNEE' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-revocation-list-v3 --login_with_auth "Bearer foo"
iam-token-revocation-v3 '5ecPzAmi' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-grant-v3 'refresh_token' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-platform-authentication-v3 'SJHfPloP' '1XkYK4Mg' --login_with_auth "Bearer foo"
iam-public-get-input-validations --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-public-v3 --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["IsDSFMPy"]}' 'Mhyw1OLZ' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv3 'PVwwxH4B' 'IDJuDoSh' --login_with_auth "Bearer foo"
iam-public-get-async-status 'MMftll8N' --login_with_auth "Bearer foo"
iam-public-search-user-v3 --login_with_auth "Bearer foo"
iam-public-create-user-v3 '{"PasswordMD5Sum": "0VvChHz9", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "rmt7QWvE", "policyId": "8s6Uz8BR", "policyVersionId": "uYWDTtL6"}], "authType": "MTTRkCbb", "code": "9S5Q1IVH", "country": "GT88prRE", "dateOfBirth": "BgYOWdHJ", "displayName": "9JumohtU", "emailAddress": "13gf7TRi", "password": "gNZj5w5y", "reachMinimumAge": false}' --login_with_auth "Bearer foo"
iam-check-user-availability 'K8QVOa62' 'eQZtbLLc' --login_with_auth "Bearer foo"
iam-public-bulk-get-users '{"userIds": ["F671WLtv"]}' --login_with_auth "Bearer foo"
iam-public-send-registration-code '{"emailAddress": "38Hecczo", "languageTag": "pFmeRwpc"}' --login_with_auth "Bearer foo"
iam-public-verify-registration-code '{"code": "JBZyi3mL", "emailAddress": "C4KzekiS"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v3 '{"emailAddress": "zeyolnOQ", "languageTag": "t0joVHgC"}' --login_with_auth "Bearer foo"
iam-get-admin-invitation-v3 'ytC6lRG9' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v3 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "nHbRdoTK", "policyId": "KeuSjfZe", "policyVersionId": "9i1osghF"}], "authType": "EMAILPASSWD", "country": "zi1Nl47s", "dateOfBirth": "yJ5ibzSH", "displayName": "ZeCLIvWP", "password": "VRsdEqA6", "reachMinimumAge": true}' 'TrMgsycT' --login_with_auth "Bearer foo"
iam-update-user-v3 '{"avatarUrl": "gmPzc20E", "country": "uO5dMqGD", "dateOfBirth": "lSZPY07r", "displayName": "EVSjzHjL", "languageTag": "6ZbXjG6D", "userName": "Smpp3op8"}' --login_with_auth "Bearer foo"
iam-public-update-user-v3 '{"avatarUrl": "htaRLxtW", "country": "4PvFkEST", "dateOfBirth": "ULat5F1L", "displayName": "e7cR7q6P", "languageTag": "WhZmmKz4", "userName": "1i1Tp78F"}' --login_with_auth "Bearer foo"
iam-public-send-verification-code-v3 '{"context": "ipJHahVi", "emailAddress": "JvLYW0kd", "languageTag": "mlk2luqS"}' --login_with_auth "Bearer foo"
iam-public-user-verification-v3 '{"code": "OOA2VOZB", "contactType": "oNbB98Pu", "languageTag": "SGykqFzP", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v3 '{"code": "SMXT53bB", "country": "uL38beOY", "dateOfBirth": "DVuHZQ9L", "displayName": "Yt6w23Wf", "emailAddress": "8iEQo72s", "password": "H0aRdcDl", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-verify-headless-account-v3 '{"emailAddress": "yGcsfIuI", "password": "4Dv5lEJp"}' --login_with_auth "Bearer foo"
iam-public-update-password-v3 '{"languageTag": "K1AyRlzs", "newPassword": "rRXEFZiv", "oldPassword": "QOHG6wVi"}' --login_with_auth "Bearer foo"
iam-public-create-justice-user 'cNratsvv' --login_with_auth "Bearer foo"
iam-public-platform-link-v3 'HLmIohfN' 'ISLXMDWD' --login_with_auth "Bearer foo"
iam-public-platform-unlink-v3 '{"platformNamespace": "dm5FE4ll"}' 'iQMnutJb' --login_with_auth "Bearer foo"
iam-public-platform-unlink-all-v3 'pEo4mUNH' --login_with_auth "Bearer foo"
iam-public-web-link-platform 'Ftdml2xN' --login_with_auth "Bearer foo"
iam-public-web-link-platform-establish 'viWacJc3' 'Fm7Z548u' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"code": "uKgoCBqS", "emailAddress": "5uIdCbwC", "newPassword": "eeq9ouEd"}' --login_with_auth "Bearer foo"
iam-public-get-user-by-user-id-v3 'DtjOgsyp' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 'Lkm2ZYew' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 '5H7Zm0gn' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 'Yyj6MXf9' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 'G1ntyebv' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "oeHenAAL", "platformUserId": "Kt7EfxIH"}' '446oUnP2' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["S74unXwg"], "requestId": "0JKqVWW1"}' 'rjK1epwk' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 'AvcsYvbg' 'fBVPpTa8' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 'Yuq7TKiN' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler 'Xmz7eMrM' 'D5TbaUxT' --login_with_auth "Bearer foo"
iam-login-sso-client 'CTng0xjt' --login_with_auth "Bearer foo"
iam-logout-sso-client 'dBrjs3Ki' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["ykt2Ck2g"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "OlSatECZ", "country": "2UgwQLqD", "dateOfBirth": "qYSxTPuV", "displayName": "lBqirdp3", "languageTag": "yxnsETl1", "userName": "SvhQudsj"}' 'IhXdxiSo' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "WpnnxgX7", "emailAddress": "BCPMqzQI"}' 'xibhpNYs' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 'HtdB3Ikj' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 'uaZqhJil' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["rZkSSKgP"], "roleId": "5rxCR77G"}' '9d5CA1GO' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["RSbL9n0d"], "roleId": "bWDEupmd"}' 'LQzPnNfB' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["AcWArbkC"], "roleId": "fdHIZb03"}' 'otqmBuS9' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "k0lpJ4JL"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 'l01qi7L2' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 'oDUoVRUb' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "KmjRUbZV"}' 'BVS7OK2Z' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 34, "resource": "dcsckMek", "schedAction": 87, "schedCron": "OWZ2KUTq", "schedRange": ["kK2eFaGL"]}]}' 'oSmEEPbL' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 48, "resource": "wJsyUie6", "schedAction": 10, "schedCron": "ZgLllUPs", "schedRange": ["O8lg46Si"]}]}' '7006vL2w' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["4aajDAOx"]' '0iJjYlea' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'ktqv2Wkl' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["jQuD5mnJ"], "namespace": "ONqHGq8m", "userId": "B7mF2lMF"}' 'caghFXJI' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "JflRHFcs", "userId": "IqCy4xDi"}' 'fSSQ5On2' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "ccEcl3xe", "country": "iO4bwF5J", "dateOfBirth": "OjGoGxKM", "displayName": "3qMce5tf", "languageTag": "LcpjFZMK", "userName": "Cbp0pEbL"}' --login_with_auth "Bearer foo"
iam-admin-disable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-admin-enable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-admin-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-admin-get-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-generate-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-download-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-enable-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 'CLFpHxMY' --login_with_auth "Bearer foo"
iam-admin-invite-user-v4 '{"assignedNamespaces": ["F836075x"], "emailAddresses": ["EpzdnYtp"], "isAdmin": false, "roleId": "a5ig2isQ"}' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "a6Vy76iz", "policyId": "PiQRjYa8", "policyVersionId": "fv5fIt22"}], "authType": "EMAILPASSWD", "country": "IZhjhgki", "dateOfBirth": "gW22zXMW", "displayName": "XfbcM0GI", "emailAddress": "ALIbFCQg", "password": "BcLNT6iO", "passwordMD5Sum": "QVYx5rW2", "username": "gMsI1aYB", "verified": false}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "Sn3UDeKj", "policyId": "97I4WYXL", "policyVersionId": "qjN7ktOB"}], "authType": "EMAILPASSWD", "code": "aBxWRTVu", "country": "YEqGlKDw", "dateOfBirth": "TKXBrXiQ", "displayName": "cd9IW8ki", "emailAddress": "CKeQJWZB", "password": "vcq1ETvW", "passwordMD5Sum": "BxYZJh7B", "reachMinimumAge": false, "username": "bnSu9M2O"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "D2udaeYp", "policyId": "CXYSMiy8", "policyVersionId": "7CTqEQBg"}], "authType": "EMAILPASSWD", "country": "y3sY2clr", "dateOfBirth": "Dcain0cO", "displayName": "VF1zHwDT", "password": "I0sJ1Q0k", "reachMinimumAge": false, "username": "hMTggSP2"}' 'SLcuAP7v' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "U971Czw2", "country": "nbg8C7Mv", "dateOfBirth": "ywhu6MjO", "displayName": "juGzo1Fz", "languageTag": "4tU0aSn9", "userName": "8N8qOUA0"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "z92RaDe8", "emailAddress": "ngT8LRQk"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "MnG1LZyF", "country": "2mdYY6ZM", "dateOfBirth": "fuTYTKsu", "displayName": "e48qBEBN", "emailAddress": "AV5BTe6e", "password": "c1zA92UR", "reachMinimumAge": true, "username": "LSGPmRBZ", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"emailAddress": "nHW7MYvr", "password": "6QA7Ppep", "username": "c92HA94e"}' --login_with_auth "Bearer foo"
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
iam-public-make-factor-my-default-v4 'ACdeyfUp' --login_with_auth "Bearer foo"
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
echo "1..305"

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
$PYTHON -m $MODULE 'iam-create-user' \
    '{"AuthType": "giPpf8nx", "Country": "KJ3dnmtP", "DisplayName": "wa64Y4gP", "LoginId": "EKMhhu9a", "Password": "6f3xJNtU", "PasswordMD5Sum": "lKLlIIAe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'CreateUser' test.out

#- 17 GetAdminUsersByRoleID
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'GetAdminUsersByRoleID' test.out

#- 18 GetUserByLoginID
$PYTHON -m $MODULE 'iam-get-user-by-login-id' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'GetUserByLoginID' test.out

#- 19 GetUserByPlatformUserID
$PYTHON -m $MODULE 'iam-get-user-by-platform-user-id' \
    'Hbm5M6Ls' \
    'Y1VMuIEc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetUserByPlatformUserID' test.out

#- 20 ForgotPassword
$PYTHON -m $MODULE 'iam-forgot-password' \
    '{"Context": "Rls68M3M", "LanguageTag": "PMRPBepy", "LoginID": "yMz6zfR1"}' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 20 'ForgotPassword' test.out

#- 21 GetUsersByLoginIds
$PYTHON -m $MODULE 'iam-get-users-by-login-ids' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'GetUsersByLoginIds' test.out

#- 22 ResetPassword
$PYTHON -m $MODULE 'iam-reset-password' \
    '{"Code": "pvTYYtDO", "LoginID": "iEi4RuEc", "NewPassword": "HCSGhpOZ"}' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 22 'ResetPassword' test.out

#- 23 SearchUser
eval_tap 0 23 'SearchUser # SKIP deprecated' test.out

#- 24 GetUserByUserID
$PYTHON -m $MODULE 'iam-get-user-by-user-id' \
    'QFlwOiuK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'GetUserByUserID' test.out

#- 25 UpdateUser
$PYTHON -m $MODULE 'iam-update-user' \
    '{"Country": "GDFgK49Y", "DateOfBirth": "uKnXks0m", "DisplayName": "8ANrcRal", "LanguageTag": "7ta3fojA"}' \
    '3h4MMW3A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'UpdateUser' test.out

#- 26 DeleteUser
$PYTHON -m $MODULE 'iam-delete-user' \
    'J5zlsFBw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'DeleteUser' test.out

#- 27 BanUser
$PYTHON -m $MODULE 'iam-ban-user' \
    '{"ban": "jvLYvmg6", "comment": "avudQFF1", "endDate": "CPNY9u2d", "reason": "VYdglOOo", "skipNotif": true}' \
    'eK0kPKmB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'BanUser' test.out

#- 28 GetUserBanHistory
$PYTHON -m $MODULE 'iam-get-user-ban-history' \
    'qVux3lXc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetUserBanHistory' test.out

#- 29 DisableUserBan
$PYTHON -m $MODULE 'iam-disable-user-ban' \
    'D8aertAV' \
    'Cqs8XT8x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'DisableUserBan' test.out

#- 30 EnableUserBan
$PYTHON -m $MODULE 'iam-enable-user-ban' \
    'y3nJ06Kk' \
    'seA0ARj9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'EnableUserBan' test.out

#- 31 ListCrossNamespaceAccountLink
eval_tap 0 31 'ListCrossNamespaceAccountLink # SKIP deprecated' test.out

#- 32 DisableUser
eval_tap 0 32 'DisableUser # SKIP deprecated' test.out

#- 33 EnableUser
eval_tap 0 33 'EnableUser # SKIP deprecated' test.out

#- 34 GetUserInformation
$PYTHON -m $MODULE 'iam-get-user-information' \
    'ricfayvn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetUserInformation' test.out

#- 35 DeleteUserInformation
$PYTHON -m $MODULE 'iam-delete-user-information' \
    'hi8MDdY4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'DeleteUserInformation' test.out

#- 36 GetUserLoginHistories
$PYTHON -m $MODULE 'iam-get-user-login-histories' \
    'WLHoaUkY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GetUserLoginHistories' test.out

#- 37 UpdatePassword
eval_tap 0 37 'UpdatePassword # SKIP deprecated' test.out

#- 38 SaveUserPermission
$PYTHON -m $MODULE 'iam-save-user-permission' \
    '{"Permissions": [{"Action": 27, "Resource": "Qp5egdmV", "SchedAction": 60, "SchedCron": "8ImivNtQ", "SchedRange": ["xqWRKHoh"]}]}' \
    'ODoWOr98' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'SaveUserPermission' test.out

#- 39 AddUserPermission
$PYTHON -m $MODULE 'iam-add-user-permission' \
    '{"SchedAction": 21, "SchedCron": "jBUas9jj", "SchedRange": ["z2FrgiaG"]}' \
    '35' \
    'cB7dIOVK' \
    'IPSJJHo5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AddUserPermission' test.out

#- 40 DeleteUserPermission
$PYTHON -m $MODULE 'iam-delete-user-permission' \
    '97' \
    '8tKH8ou9' \
    'SdbxSXcr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'DeleteUserPermission' test.out

#- 41 GetUserPlatformAccounts
$PYTHON -m $MODULE 'iam-get-user-platform-accounts' \
    'EFCwqeGN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetUserPlatformAccounts' test.out

#- 42 GetUserMapping
$PYTHON -m $MODULE 'iam-get-user-mapping' \
    'LdIBRdli' \
    'FQVMKEzV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetUserMapping' test.out

#- 43 GetUserJusticePlatformAccount
eval_tap 0 43 'GetUserJusticePlatformAccount # SKIP deprecated' test.out

#- 44 PlatformLink
$PYTHON -m $MODULE 'iam-platform-link' \
    'UWlUWDs2' \
    'x1EQU0oe' \
    'pEvcjaSg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PlatformLink' test.out

#- 45 PlatformUnlink
$PYTHON -m $MODULE 'iam-platform-unlink' \
    'Eh6jJnFx' \
    'inIHJ1o7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'PlatformUnlink' test.out

#- 46 GetPublisherUser
$PYTHON -m $MODULE 'iam-get-publisher-user' \
    'aq5Zznd5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'GetPublisherUser' test.out

#- 47 SaveUserRoles
$PYTHON -m $MODULE 'iam-save-user-roles' \
    '["eacobTsu"]' \
    'RlhreQVF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'SaveUserRoles' test.out

#- 48 AddUserRole
$PYTHON -m $MODULE 'iam-add-user-role' \
    'ID3o8hJW' \
    'VjKIOAw7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AddUserRole' test.out

#- 49 DeleteUserRole
$PYTHON -m $MODULE 'iam-delete-user-role' \
    '0DvAHhSG' \
    'WUvzq1Za' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'DeleteUserRole' test.out

#- 50 UpgradeHeadlessAccount
$PYTHON -m $MODULE 'iam-upgrade-headless-account' \
    '{"LoginID": "3IBC4vQF", "Password": "sUJPfiaJ"}' \
    'p1rt7OBg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'UpgradeHeadlessAccount' test.out

#- 51 UpgradeHeadlessAccountWithVerificationCode
$PYTHON -m $MODULE 'iam-upgrade-headless-account-with-verification-code' \
    '{"Code": "BCe6N0eI", "Password": "65Mn5tng", "loginId": "EYXgPVT5"}' \
    'CqXDZBVM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'UpgradeHeadlessAccountWithVerificationCode' test.out

#- 52 UserVerification
$PYTHON -m $MODULE 'iam-user-verification' \
    '{"Code": "JyJeKFO9", "ContactType": "2YDtaZvJ", "LanguageTag": "oKS0Oxyi", "validateOnly": false}' \
    'ZuO4N9S2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'UserVerification' test.out

#- 53 SendVerificationCode
$PYTHON -m $MODULE 'iam-send-verification-code' \
    '{"Context": "YCgHa6XB", "LanguageTag": "cvGRYk5r", "LoginID": "UtWHCnhm"}' \
    'zzppV7tK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'SendVerificationCode' test.out

#- 54 Authorization
$PYTHON -m $MODULE 'iam-authorization' \
    'NKYUQVBX' \
    'ymWcNlHa' \
    'token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'Authorization' test.out

#- 55 GetJWKS
$PYTHON -m $MODULE 'iam-get-jwks' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'GetJWKS' test.out

#- 56 PlatformTokenRequestHandler
eval_tap 0 56 'PlatformTokenRequestHandler # SKIP deprecated' test.out

#- 57 RevokeUser
$PYTHON -m $MODULE 'iam-revoke-user' \
    'xYaGHUpm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'RevokeUser' test.out

#- 58 GetRevocationList
$PYTHON -m $MODULE 'iam-get-revocation-list' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 58 'GetRevocationList' test.out

#- 59 RevokeToken
eval_tap 0 59 'RevokeToken # SKIP deprecated' test.out

#- 60 RevokeAUser
eval_tap 0 60 'RevokeAUser # SKIP deprecated' test.out

#- 61 TokenGrant
$PYTHON -m $MODULE 'iam-token-grant' \
    'refresh_token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'TokenGrant' test.out

#- 62 VerifyToken
$PYTHON -m $MODULE 'iam-verify-token' \
    'FyOrFKtx' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 62 'VerifyToken' test.out

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
    '{"AgeRestriction": 64, "Enable": true}' \
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
    '{"AgeRestriction": 16}' \
    '0fq4xChP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'UpdateCountryAgeRestriction' test.out

#- 84 AdminSearchUsersV2
$PYTHON -m $MODULE 'iam-admin-search-users-v2' \
    'Ld2lOopc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'AdminSearchUsersV2' test.out

#- 85 AdminGetUserByUserIdV2
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v2' \
    '7XoVpdd6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'AdminGetUserByUserIdV2' test.out

#- 86 AdminUpdateUserV2
$PYTHON -m $MODULE 'iam-admin-update-user-v2' \
    '{"Country": "rCpyMrnH", "DateOfBirth": "9YHXh7Kn", "DisplayName": "CVOKY2zs", "LanguageTag": "BRGtd8QY"}' \
    '2OLbijrv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'AdminUpdateUserV2' test.out

#- 87 AdminBanUserV2
$PYTHON -m $MODULE 'iam-admin-ban-user-v2' \
    '{"ban": "fr8hknjW", "comment": "UWdMUXHv", "endDate": "w4pNlGLj", "reason": "dBxLM079", "skipNotif": false}' \
    'DAbTgmsE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'AdminBanUserV2' test.out

#- 88 AdminGetUserBanV2
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v2' \
    'YEq2GkYK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'AdminGetUserBanV2' test.out

#- 89 AdminDisableUserV2
$PYTHON -m $MODULE 'iam-admin-disable-user-v2' \
    '{"Reason": "1vYm9flX"}' \
    'Q7CQoemn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'AdminDisableUserV2' test.out

#- 90 AdminEnableUserV2
$PYTHON -m $MODULE 'iam-admin-enable-user-v2' \
    'QG0dH0NV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'AdminEnableUserV2' test.out

#- 91 AdminResetPasswordV2
$PYTHON -m $MODULE 'iam-admin-reset-password-v2' \
    '{"LanguageTag": "M9VEHTPq", "NewPassword": "Dhkcu5vn", "OldPassword": "z6GiNMbo"}' \
    'BJHml0LJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'AdminResetPasswordV2' test.out

#- 92 AdminDeletePlatformLinkV2
$PYTHON -m $MODULE 'iam-admin-delete-platform-link-v2' \
    'mpPi4mqh' \
    'ruiCZLGG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'AdminDeletePlatformLinkV2' test.out

#- 93 AdminPutUserRolesV2
$PYTHON -m $MODULE 'iam-admin-put-user-roles-v2' \
    '["P5UXkHNT"]' \
    'Mapp5Sbo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'AdminPutUserRolesV2' test.out

#- 94 AdminCreateUserRolesV2
$PYTHON -m $MODULE 'iam-admin-create-user-roles-v2' \
    '["nsUJKADr"]' \
    '60EkdFrp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'AdminCreateUserRolesV2' test.out

#- 95 PublicGetCountryAgeRestriction
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction' \
    'LsGt9yTX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'PublicGetCountryAgeRestriction' test.out

#- 96 PublicCreateUserV2
$PYTHON -m $MODULE 'iam-public-create-user-v2' \
    '{"AuthType": "WUSCQcMs", "Country": "HN7reI22", "DisplayName": "ks7I12tA", "LoginId": "Zc8sxxLx", "Password": "9XQeqNWL", "PasswordMD5Sum": "m8cNJbYH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'PublicCreateUserV2' test.out

#- 97 PublicForgotPasswordV2
$PYTHON -m $MODULE 'iam-public-forgot-password-v2' \
    '{"Context": "5J4WiJLv", "LanguageTag": "9NvHwtw2", "LoginID": "Mjcy9ZL6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'PublicForgotPasswordV2' test.out

#- 98 PublicResetPasswordV2
$PYTHON -m $MODULE 'iam-public-reset-password-v2' \
    '{"Code": "Zs5Bu2XY", "LoginID": "opLWZeUK", "NewPassword": "JJNftRpG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'PublicResetPasswordV2' test.out

#- 99 PublicGetUserByUserIDV2
$PYTHON -m $MODULE 'iam-public-get-user-by-user-idv2' \
    'gk1iseRE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'PublicGetUserByUserIDV2' test.out

#- 100 PublicUpdateUserV2
$PYTHON -m $MODULE 'iam-public-update-user-v2' \
    '{"Country": "zzRG6z9w", "DateOfBirth": "muHddyOd", "DisplayName": "ibI1LVyq", "LanguageTag": "bdY8DGZK"}' \
    'AuoIKz3P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'PublicUpdateUserV2' test.out

#- 101 PublicGetUserBan
$PYTHON -m $MODULE 'iam-public-get-user-ban' \
    'p3zLWUxM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'PublicGetUserBan' test.out

#- 102 PublicUpdatePasswordV2
$PYTHON -m $MODULE 'iam-public-update-password-v2' \
    '{"LanguageTag": "zMtSmMmZ", "NewPassword": "P8nG0FoQ", "OldPassword": "P8q7aSsb"}' \
    '85gAh9RD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'PublicUpdatePasswordV2' test.out

#- 103 GetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-get-list-justice-platform-accounts' \
    '3ZzN6N1i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'GetListJusticePlatformAccounts' test.out

#- 104 PublicPlatformLinkV2
$PYTHON -m $MODULE 'iam-public-platform-link-v2' \
    'J8ltt9IR' \
    'qCflgln6' \
    'r5f0s5H6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'PublicPlatformLinkV2' test.out

#- 105 PublicDeletePlatformLinkV2
$PYTHON -m $MODULE 'iam-public-delete-platform-link-v2' \
    'lCf3QHa1' \
    '1hLLCgw5' \
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
    '[{"field": "av4LExda", "validation": {"allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "description": [{"language": "vHfMRupD", "message": ["A5xbjs3X"]}], "isCustomRegex": false, "letterCase": "HUJ0GCmf", "maxLength": 23, "maxRepeatingAlphaNum": 69, "maxRepeatingSpecialCharacter": 99, "minCharType": 20, "minLength": 12, "regex": "J6zkTwoa", "specialCharacterLocation": "kq7sEejF", "specialCharacters": ["Z1NtONXb"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    '9w9hsQHs' \
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
    '{"ageRestriction": 50, "enable": true}' \
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
    '{"ageRestriction": 11}' \
    'rlzKpQdd' \
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
    '{"audiences": ["58dZP5Rv"], "baseUri": "rinNtvBt", "clientId": "qFSkA68m", "clientName": "IVYJ5pSV", "clientPermissions": [{"action": 46, "resource": "BsLhty3p", "schedAction": 9, "schedCron": "cToXA4M1", "schedRange": ["oUFPhgo7"]}], "clientPlatform": "Z6mwNC4F", "deletable": false, "namespace": "M87joJNO", "oauthClientType": "GB83Ns6H", "redirectUri": "l5Poab6l", "secret": "KoVqNBUz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'AdminCreateClientV3' test.out

#- 120 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    'IxOfglqu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 121 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'S2q2DoWr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminDeleteClientV3' test.out

#- 122 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["9zvFtKa2"], "baseUri": "mOAqOokV", "clientName": "1plxQ2Yr", "clientPermissions": [{"action": 17, "resource": "TPfipD67", "schedAction": 19, "schedCron": "I2hiZkrt", "schedRange": ["Lnh2U1RQ"]}], "clientPlatform": "lMxkfNMP", "deletable": true, "namespace": "qv2TMz1b", "redirectUri": "7SnzkXOe"}' \
    'k83Igm1w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AdminUpdateClientV3' test.out

#- 123 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 21, "resource": "SWsYvAsu"}]}' \
    '18obUdc8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminUpdateClientPermissionV3' test.out

#- 124 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 24, "resource": "bvXcwcgM"}]}' \
    'qOXMziXr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AdminAddClientPermissionsV3' test.out

#- 125 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '94' \
    'dsEc3ClF' \
    'P3mJwusC' \
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
    'BTe4kLcu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 130 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "qL40NYge", "AWSCognitoRegion": "kRavpaGT", "AWSCognitoUserPool": "A9BTyCCy", "AppId": "N4Fw9i6m", "ClientId": "I2W3tjjC", "Environment": "qPVyYs01", "FederationMetadataURL": "hEYzWw3q", "GenericOauthFlow": true, "IsActive": false, "Issuer": "xM0DPAXQ", "JWKSEndpoint": "BNMP7j3x", "KeyID": "fPaoZaWF", "NetflixCertificates": {"encryptedPrivateKey": "spkU5kn6", "encryptedPrivateKeyName": "PlPqD4Ag", "publicCertificate": "fasBfclB", "publicCertificateName": "hZjZbLnm", "rootCertificate": "ghKwPyVI", "rootCertificateName": "n3qaHP7K"}, "OrganizationId": "NulyfrEN", "PlatformName": "VQkpcaWH", "RedirectUri": "f6T2xOOl", "Secret": "jn7c6c9e", "TeamID": "fJI02TZx", "TokenAuthenticationType": "rgLBFJEk", "TokenClaimsMapping": {"phFz0h6W": "poVpVc2H"}}' \
    'BBmj6cEi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 131 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    '02hXl42u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 132 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "bCRfy4Gj", "AWSCognitoRegion": "Kn5ItHXL", "AWSCognitoUserPool": "DZqpRhqn", "AppId": "R742GcbL", "ClientId": "uQOGMOEz", "Environment": "mdjNhT0S", "FederationMetadataURL": "46kqyfMB", "GenericOauthFlow": false, "IsActive": false, "Issuer": "4SA16M8g", "JWKSEndpoint": "QCD7aBHW", "KeyID": "CYevNkfc", "NetflixCertificates": {"encryptedPrivateKey": "Qvl4Oso7", "encryptedPrivateKeyName": "tx65zXCi", "publicCertificate": "TfjorLFq", "publicCertificateName": "TmIUFUoo", "rootCertificate": "nHBI13SZ", "rootCertificateName": "FHfm0F8v"}, "OrganizationId": "S2BrZ3nq", "PlatformName": "88YSSD7z", "RedirectUri": "V0C8FvVU", "Secret": "3kRXBGPX", "TeamID": "Idft1biZ", "TokenAuthenticationType": "HuhWyFPH", "TokenClaimsMapping": {"dXcyvZEh": "YeUSy5Uk"}}' \
    'c65naP11' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 133 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["R8Xww9vq"], "assignedNamespaces": ["9nMa2Btg"], "domain": "wyuf2fjV", "roleId": "30SLxi7u"}' \
    'yhaeFtcO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 134 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "9XNy63QO"}' \
    '9vW0ck7T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 135 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    'EDE8LeEQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'RetrieveSSOLoginPlatformCredential' test.out

#- 136 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "BeGPLiE6", "apiKey": "tHCr0GPF", "appId": "vT0SAK91", "federationMetadataUrl": "y5vCeBIJ", "isActive": true, "redirectUri": "0B9UcI6c", "secret": "5cre9eal", "ssoUrl": "HOZphcLn"}' \
    'cnjnmyU8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'AddSSOLoginPlatformCredential' test.out

#- 137 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'FSxXdCrs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 138 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "koFqnowq", "apiKey": "9Laz1GLt", "appId": "5Mhf8Z7a", "federationMetadataUrl": "hmbVPm2g", "isActive": true, "redirectUri": "AFfRRLUj", "secret": "fWS9sftI", "ssoUrl": "fHGe5bUT"}' \
    'SXOv12PM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'UpdateSSOPlatformCredential' test.out

#- 139 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'cRO6E2Mk' \
    're5q7Fva' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'AdminGetUserByPlatformUserIDV3' test.out

#- 140 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'ACp6he0f' \
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
    '{"userIds": ["zjkPNNS0"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'AdminListUserIDByUserIDsV3' test.out

#- 143 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["BfgF6inI"], "isAdmin": true, "roles": ["Z5hrqNzV"]}' \
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
    '{"listEmailAddressRequest": ["szGVP5P1"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'AdminGetBulkUserByEmailAddressV3' test.out

#- 147 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'iwhcf30C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'AdminGetUserByUserIdV3' test.out

#- 148 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "1KHRZHMG", "country": "y5vbfZvY", "dateOfBirth": "IFFctEKO", "displayName": "LxSRxe0w", "languageTag": "mWBMcNiW", "userName": "oobB6o6a"}' \
    'lTQcP0Ep' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'AdminUpdateUserV3' test.out

#- 149 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'E9wGNVwk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'AdminGetUserBanV3' test.out

#- 150 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "gfJJ2HIa", "comment": "lfzgRpTf", "endDate": "9lxF1JPB", "reason": "izXZtrGe", "skipNotif": true}' \
    'OH24nneZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AdminBanUserV3' test.out

#- 151 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": true, "skipNotif": false}' \
    'Rld0bGA7' \
    'JxWYzaEa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserBanV3' test.out

#- 152 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "imvokcWX", "emailAddress": "59kwiYHg", "languageTag": "HT6Ivd0f"}' \
    'GpU209nV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'AdminSendVerificationCodeV3' test.out

#- 153 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "RclumQTF", "ContactType": "vr5rRyYz", "LanguageTag": "aNmz3PjM", "validateOnly": true}' \
    '2T89NTrF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AdminVerifyAccountV3' test.out

#- 154 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'RUCXFkru' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'GetUserVerificationCode' test.out

#- 155 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'xegpkcXC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminGetUserDeletionStatusV3' test.out

#- 156 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"enabled": false}' \
    'zgcvv0WE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'AdminUpdateUserDeletionStatusV3' test.out

#- 157 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "5EQhcomP", "country": "S1E7cpsL", "dateOfBirth": "gr2zEnjy", "displayName": "RNjEC3FM", "emailAddress": "DcZvwwf8", "password": "aU98In31", "validateOnly": false}' \
    'F4jlwKyG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'AdminUpgradeHeadlessAccountV3' test.out

#- 158 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'xTF1l5q1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminDeleteUserInformationV3' test.out

#- 159 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'Np0sT1X8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminGetUserLoginHistoriesV3' test.out

#- 160 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 71, "Resource": "2eAWOzjm", "SchedAction": 15, "SchedCron": "9UzIfnho", "SchedRange": ["o6xUmTle"]}]}' \
    'UnJFM7Xh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserPermissionV3' test.out

#- 161 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 29, "Resource": "DxGik2JS", "SchedAction": 11, "SchedCron": "Z64wWePq", "SchedRange": ["6103PONK"]}]}' \
    'IS7F9emW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminAddUserPermissionsV3' test.out

#- 162 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 87, "Resource": "15tAsiG3"}]' \
    '1CEyUOuO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminDeleteUserPermissionBulkV3' test.out

#- 163 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '14' \
    'mnHkvek6' \
    'Aa5kNnoc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AdminDeleteUserPermissionV3' test.out

#- 164 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'lxs9kxcv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserPlatformAccountsV3' test.out

#- 165 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'IpV7mCYf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminGetListJusticePlatformAccounts' test.out

#- 166 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    'WKjY9CsQ' \
    'YsGyhEOn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminCreateJusticeUser' test.out

#- 167 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "tEkedM1A", "platformUserId": "0bFqvjxb"}' \
    'T3YuVdaB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminLinkPlatformAccount' test.out

#- 168 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "N5RSjhcj"}' \
    'uDvNrXL8' \
    '45jfh5tZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminPlatformUnlinkV3' test.out

#- 169 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    '0hqJLjQU' \
    'moYUnC84' \
    '9OBNuLZt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminPlatformLinkV3' test.out

#- 170 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["ofGAAaMp"]' \
    'BQArU4RS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminDeleteUserRolesV3' test.out

#- 171 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "0FQRy5Qz", "roleId": "5VcyfBpH"}]' \
    'jtvFwKSJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminSaveUserRoleV3' test.out

#- 172 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    'yZeqvpev' \
    'cVXTxs9L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminAddUserRoleV3' test.out

#- 173 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'TorIyx23' \
    'LhLy7ds3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserRoleV3' test.out

#- 174 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": false, "reason": "3BuHTPF1"}' \
    '9dBYFws5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminUpdateUserStatusV3' test.out

#- 175 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'Ya4eOwWq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 176 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "W8HiLpTi"}' \
    '1W63Hccg' \
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
    '{"adminRole": false, "deletable": true, "isWildcard": false, "managers": [{"displayName": "TL55W4ws", "namespace": "3KCyplY1", "userId": "ocKDCVaq"}], "members": [{"displayName": "rVeegT3u", "namespace": "GDIIcvuu", "userId": "okt8TC38"}], "permissions": [{"action": 24, "resource": "YoUanQT4", "schedAction": 77, "schedCron": "mznv7r2j", "schedRange": ["thibgeCL"]}], "roleName": "X41qyOiL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminCreateRoleV3' test.out

#- 179 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'gd8Wy739' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminGetRoleV3' test.out

#- 180 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'QHzw0TEz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AdminDeleteRoleV3' test.out

#- 181 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": false, "isWildcard": false, "roleName": "7TV5vhMM"}' \
    '2i3DM6et' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminUpdateRoleV3' test.out

#- 182 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    'fI7TzC3s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminGetRoleAdminStatusV3' test.out

#- 183 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'KmtsyEKd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminUpdateAdminRoleStatusV3' test.out

#- 184 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'O6HNm3zG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminRemoveRoleAdminV3' test.out

#- 185 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'u71qTSSJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRoleManagersV3' test.out

#- 186 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "EbWlETp9", "namespace": "XOCA1X3H", "userId": "HMTlakAW"}]}' \
    'QfBuBAOC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminAddRoleManagersV3' test.out

#- 187 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "jBfYCcpl", "namespace": "ye2GaPNz", "userId": "krgBH4ic"}]}' \
    'ml6L36Vg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminRemoveRoleManagersV3' test.out

#- 188 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    '2F2Q9aZD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminGetRoleMembersV3' test.out

#- 189 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "Jg1OT810", "namespace": "9ot70Tev", "userId": "Jgsb2PyF"}]}' \
    'fJ6qcHAB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminAddRoleMembersV3' test.out

#- 190 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "dGtV9jAP", "namespace": "qon7UmLN", "userId": "y9PkF9Sn"}]}' \
    'lbWNcAxv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminRemoveRoleMembersV3' test.out

#- 191 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 40, "resource": "HDqJtYC7", "schedAction": 34, "schedCron": "znwNdLhq", "schedRange": ["XvXVnjvc"]}]}' \
    '0BMegJpW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminUpdateRolePermissionsV3' test.out

#- 192 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 9, "resource": "uhpLX1BH", "schedAction": 15, "schedCron": "nOmmyXu6", "schedRange": ["XtjNCqYk"]}]}' \
    '9TPUKcDT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminAddRolePermissionsV3' test.out

#- 193 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["fR7dpUEo"]' \
    '2Oe08Hpe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminDeleteRolePermissionsV3' test.out

#- 194 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '71' \
    'BfG0nGZH' \
    'e5lw2Tlk' \
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
    'PIxL9v4f' \
    'pCd0Uk5h' \
    '1kP1pkkT' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 196 'UserAuthenticationV3' test.out

#- 197 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    '08Cs6DdX' \
    'ZWowBgZi' \
    'zMvwHszf' \
    '84MAmayJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AuthenticationWithPlatformLinkV3' test.out

#- 198 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    'J6vzDTXx' \
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
    'syIaTgp0' \
    'pwnEJL15' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 202 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    'kxO4oVUP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'RevokeUserV3' test.out

#- 203 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    'ng5JsHAk' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 203 'AuthorizeV3' test.out

#- 204 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'O1wuAFuZ' \
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
    'cUwPteKd' \
    'QgUTF33f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'Change2faMethod' test.out

#- 207 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    'YWZfQMAn' \
    'ziThaE2b' \
    'tn0up9Ge' \
    'True' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'Verify2faCode' test.out

#- 208 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'mDSQNYXN' \
    'EpZyFhIe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 209 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'qiNHtVSn' \
    'hxby8F6x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'AuthCodeRequestV3' test.out

#- 210 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'F8MhbJAY' \
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
    'EDN1xszp' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 212 'TokenRevocationV3' test.out

#- 213 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'client_credentials' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 213 'TokenGrantV3' test.out

#- 214 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'R69nsKAS' \
    '5zKsTRXd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'PlatformAuthenticationV3' test.out

#- 215 PublicGetInputValidations
$PYTHON -m $MODULE 'iam-public-get-input-validations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'PublicGetInputValidations' test.out

#- 216 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-public-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 217 PublicListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["7b3v2fkZ"]}' \
    'Ikr06ojU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 218 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    'toVJLGXe' \
    'komvwD84' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'PublicGetUserByPlatformUserIDV3' test.out

#- 219 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    '9mo5vIkD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'PublicGetAsyncStatus' test.out

#- 220 PublicSearchUserV3
$PYTHON -m $MODULE 'iam-public-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'PublicSearchUserV3' test.out

#- 221 PublicCreateUserV3
$PYTHON -m $MODULE 'iam-public-create-user-v3' \
    '{"PasswordMD5Sum": "ZYrYEf1x", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "lxHHXjFo", "policyId": "XtwKW6AO", "policyVersionId": "nqnWCuXM"}], "authType": "WqG8fNpr", "code": "Jx82nAFe", "country": "xNou1Aic", "dateOfBirth": "sQjKx5Lj", "displayName": "etHEw0aC", "emailAddress": "QpU6EGOW", "password": "0VAI87DP", "reachMinimumAge": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'PublicCreateUserV3' test.out

#- 222 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'LLiUqzay' \
    '0gET8T53' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'CheckUserAvailability' test.out

#- 223 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["yEej7Dsq"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'PublicBulkGetUsers' test.out

#- 224 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "sTvNKAXq", "languageTag": "fqMJHGeH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'PublicSendRegistrationCode' test.out

#- 225 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "aN2k1Eut", "emailAddress": "m9AAWDcD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'PublicVerifyRegistrationCode' test.out

#- 226 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "v3ISBgZC", "languageTag": "Af2pWOWs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'PublicForgotPasswordV3' test.out

#- 227 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    '4I2lOHfi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'GetAdminInvitationV3' test.out

#- 228 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "4HraKYMt", "policyId": "gBmvCHMt", "policyVersionId": "F15a7T0I"}], "authType": "EMAILPASSWD", "country": "eywiPE1W", "dateOfBirth": "UR1PTFfJ", "displayName": "J46kzfqa", "password": "pbByIKoY", "reachMinimumAge": true}' \
    'YtTWJA3n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'CreateUserFromInvitationV3' test.out

#- 229 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "FCDgWOpz", "country": "3yPQfqbe", "dateOfBirth": "VG7i4VTA", "displayName": "huFYhEgQ", "languageTag": "Bb9Hni6l", "userName": "DMj9gvkB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'UpdateUserV3' test.out

#- 230 PublicUpdateUserV3
$PYTHON -m $MODULE 'iam-public-update-user-v3' \
    '{"avatarUrl": "cQjQ56Ru", "country": "AvUlMWp8", "dateOfBirth": "WGpZxCe0", "displayName": "KsmXtGBb", "languageTag": "KrV58TIT", "userName": "hQ52PYNk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'PublicUpdateUserV3' test.out

#- 231 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "nBCjirw4", "emailAddress": "hmfMSl2b", "languageTag": "ETuFLFOf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'PublicSendVerificationCodeV3' test.out

#- 232 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "dl0yRndb", "contactType": "O78R8ybY", "languageTag": "sHx3BIgG", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'PublicUserVerificationV3' test.out

#- 233 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "o817lZA5", "country": "8OI2LMYR", "dateOfBirth": "X16nfCJ8", "displayName": "33JKRNcd", "emailAddress": "puCxSDFW", "password": "MVcsOZlS", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'PublicUpgradeHeadlessAccountV3' test.out

#- 234 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "lerU61dr", "password": "wLngbZxO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'PublicVerifyHeadlessAccountV3' test.out

#- 235 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "GxFwnmB6", "newPassword": "0ea7XItZ", "oldPassword": "S8KIu9T6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'PublicUpdatePasswordV3' test.out

#- 236 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    '04oPajgy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'PublicCreateJusticeUser' test.out

#- 237 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'ShKuLB7p' \
    'QLZiWVmc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'PublicPlatformLinkV3' test.out

#- 238 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "8PVwShVQ"}' \
    'z7FY3h2o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'PublicPlatformUnlinkV3' test.out

#- 239 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'VVScVv3Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'PublicPlatformUnlinkAllV3' test.out

#- 240 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'TBM4teOp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'PublicWebLinkPlatform' test.out

#- 241 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'qevsWvMh' \
    'iheE2KM7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'PublicWebLinkPlatformEstablish' test.out

#- 242 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "Ctal5z7h", "emailAddress": "LiOYz1jF", "newPassword": "fu1y1d77"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'ResetPasswordV3' test.out

#- 243 PublicGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-public-get-user-by-user-id-v3' \
    'D8ZNOfHy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'PublicGetUserByUserIdV3' test.out

#- 244 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    'enhbRZ4a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'PublicGetUserBanHistoryV3' test.out

#- 245 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    '9UjjjU0E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 246 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'ggYLcGiE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'PublicGetUserLoginHistoriesV3' test.out

#- 247 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'DZbDl9Ze' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'PublicGetUserPlatformAccountsV3' test.out

#- 248 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "ZH3M87v0", "platformUserId": "FhdKDEfX"}' \
    'RhaO0AYS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'PublicLinkPlatformAccount' test.out

#- 249 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["qvcV2Lqf"], "requestId": "gCX28Je4"}' \
    'kyPQjgDJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'PublicForceLinkPlatformWithProgression' test.out

#- 250 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'NOEMtdEt' \
    'N4sEebnQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 251 PublicGetRolesV3
$PYTHON -m $MODULE 'iam-public-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'PublicGetRolesV3' test.out

#- 252 PublicGetRoleV3
$PYTHON -m $MODULE 'iam-public-get-role-v3' \
    'ucgaop5N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'PublicGetRoleV3' test.out

#- 253 PublicGetMyUserV3
$PYTHON -m $MODULE 'iam-public-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'PublicGetMyUserV3' test.out

#- 254 PlatformAuthenticateSAMLV3Handler
$PYTHON -m $MODULE 'iam-platform-authenticate-samlv3-handler' \
    'EdhurScN' \
    'iUxnJUew' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'PlatformAuthenticateSAMLV3Handler' test.out

#- 255 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'UVhkGRRT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'LoginSSOClient' test.out

#- 256 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'gLCb9evy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'LogoutSSOClient' test.out

#- 257 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["wZywunLI"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'AdminBulkCheckValidUserIDV4' test.out

#- 258 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "mNhyZsb7", "country": "YhhQbDxL", "dateOfBirth": "RKxzUtpK", "displayName": "DC8gl2ot", "languageTag": "jUWKxgW6", "userName": "n8AJaeqx"}' \
    'TPgZKFi3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'AdminUpdateUserV4' test.out

#- 259 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "SBGlCD4i", "emailAddress": "g5ZRoJd1"}' \
    'as1Wkfh3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'AdminUpdateUserEmailAddressV4' test.out

#- 260 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    'l8HyGWZT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'AdminDisableUserMFAV4' test.out

#- 261 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'dpmTxPUB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'AdminListUserRolesV4' test.out

#- 262 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["FjTIIKcX"], "roleId": "lxPfdDyj"}' \
    'J0wwrYel' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'AdminUpdateUserRoleV4' test.out

#- 263 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["jMyoeb3g"], "roleId": "sMOMdqbt"}' \
    '4PnuFr18' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'AdminAddUserRoleV4' test.out

#- 264 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["ijp3Cmzr"], "roleId": "fVIa1vi9"}' \
    'oky2P7fI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'AdminRemoveUserRoleV4' test.out

#- 265 AdminGetRolesV4
$PYTHON -m $MODULE 'iam-admin-get-roles-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'AdminGetRolesV4' test.out

#- 266 AdminCreateRoleV4
$PYTHON -m $MODULE 'iam-admin-create-role-v4' \
    '{"adminRole": false, "deletable": true, "isWildcard": true, "roleName": "lxukoOTC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'AdminCreateRoleV4' test.out

#- 267 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'osjAXo6l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'AdminGetRoleV4' test.out

#- 268 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'jBVW8r7n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'AdminDeleteRoleV4' test.out

#- 269 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "6ZB3bGHu"}' \
    'pBuAL2av' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'AdminUpdateRoleV4' test.out

#- 270 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 99, "resource": "KOjwGRJb", "schedAction": 32, "schedCron": "XgQ9azOr", "schedRange": ["eTsviZmg"]}]}' \
    'm0l8Yr4w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'AdminUpdateRolePermissionsV4' test.out

#- 271 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 25, "resource": "giwIF5Zx", "schedAction": 90, "schedCron": "IIhBtL3z", "schedRange": ["T6xRqyV0"]}]}' \
    'tlLaMYL1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'AdminAddRolePermissionsV4' test.out

#- 272 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["p95v9mOi"]' \
    'IFEdQ2RK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'AdminDeleteRolePermissionsV4' test.out

#- 273 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'eQy2WRzt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'AdminListAssignedUsersV4' test.out

#- 274 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["R5qztuhV"], "namespace": "aJDWx2Od", "userId": "rUV7bhcK"}' \
    'GIOZcB6N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'AdminAssignUserToRoleV4' test.out

#- 275 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "WffXkYze", "userId": "s2xHp1uf"}' \
    'ZNxhbsaS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'AdminRevokeUserFromRoleV4' test.out

#- 276 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "FtTmbIf2", "country": "hFQRmsi0", "dateOfBirth": "2melJQkL", "displayName": "tV2QnPsm", "languageTag": "hFVPtJTG", "userName": "ig12OdDn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'AdminUpdateMyUserV4' test.out

#- 277 AdminDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'AdminDisableMyAuthenticatorV4' test.out

#- 278 AdminEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'AdminEnableMyAuthenticatorV4' test.out

#- 279 AdminGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-admin-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 280 AdminGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'AdminGetMyBackupCodesV4' test.out

#- 281 AdminGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'AdminGenerateMyBackupCodesV4' test.out

#- 282 AdminDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'AdminDisableMyBackupCodesV4' test.out

#- 283 AdminDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'AdminDownloadMyBackupCodesV4' test.out

#- 284 AdminEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'AdminEnableMyBackupCodesV4' test.out

#- 285 AdminGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-admin-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'AdminGetMyEnabledFactorsV4' test.out

#- 286 AdminMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-admin-make-factor-my-default-v4' \
    'xXuJoZgO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'AdminMakeFactorMyDefaultV4' test.out

#- 287 AdminInviteUserV4
$PYTHON -m $MODULE 'iam-admin-invite-user-v4' \
    '{"assignedNamespaces": ["G4tOeWVM"], "emailAddresses": ["I9K1eJ6x"], "isAdmin": true, "roleId": "2h6U8TgR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'AdminInviteUserV4' test.out

#- 288 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "2RkEr8Xb", "policyId": "mQNuv80E", "policyVersionId": "m9nuffLG"}], "authType": "EMAILPASSWD", "country": "VBQPhwwH", "dateOfBirth": "R0qyfFcS", "displayName": "Cdkfe5ea", "emailAddress": "wFpdHeH5", "password": "p8Zx8jy7", "passwordMD5Sum": "nxGzOTBp", "username": "mmjuEEEy", "verified": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'PublicCreateTestUserV4' test.out

#- 289 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "wbtA8xsm", "policyId": "mcaOLdFi", "policyVersionId": "fUk9p700"}], "authType": "EMAILPASSWD", "code": "B0p4HpK8", "country": "pvufSxYM", "dateOfBirth": "0VkuqOKr", "displayName": "hvMwvD04", "emailAddress": "UY8ghvsm", "password": "SrrJzAi6", "passwordMD5Sum": "FOuhQIBA", "reachMinimumAge": false, "username": "up1fpWsO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'PublicCreateUserV4' test.out

#- 290 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "W468fWxq", "policyId": "RkJDjfNh", "policyVersionId": "YDgVm0TC"}], "authType": "EMAILPASSWD", "country": "os4wyjaP", "dateOfBirth": "P6ClekQG", "displayName": "m25KYmFZ", "password": "xQr4xbV6", "reachMinimumAge": false, "username": "cdU4vyIP"}' \
    'JeRjCj7U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'CreateUserFromInvitationV4' test.out

#- 291 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "K5nEmwsQ", "country": "tSfDqA4C", "dateOfBirth": "ysEX4VOy", "displayName": "0n2EkPBj", "languageTag": "C4ecHwtS", "userName": "GzayUaDh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'PublicUpdateUserV4' test.out

#- 292 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "3m2eX31q", "emailAddress": "VPH2VHDz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'PublicUpdateUserEmailAddressV4' test.out

#- 293 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "nf57fQ1P", "country": "Y5uDkQ8z", "dateOfBirth": "pNRwycEA", "displayName": "ShpFLpqA", "emailAddress": "x1N5IGeb", "password": "NuvyrghV", "reachMinimumAge": false, "username": "sSwDc9NJ", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 294 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "aC8sja1J", "password": "7eucGSSx", "username": "ZJPto04w"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'PublicUpgradeHeadlessAccountV4' test.out

#- 295 PublicDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'PublicDisableMyAuthenticatorV4' test.out

#- 296 PublicEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'PublicEnableMyAuthenticatorV4' test.out

#- 297 PublicGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-public-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 298 PublicGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'PublicGetMyBackupCodesV4' test.out

#- 299 PublicGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'PublicGenerateMyBackupCodesV4' test.out

#- 300 PublicDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'PublicDisableMyBackupCodesV4' test.out

#- 301 PublicDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'PublicDownloadMyBackupCodesV4' test.out

#- 302 PublicEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'PublicEnableMyBackupCodesV4' test.out

#- 303 PublicRemoveTrustedDeviceV4
$PYTHON -m $MODULE 'iam-public-remove-trusted-device-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'PublicRemoveTrustedDeviceV4' test.out

#- 304 PublicGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-public-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'PublicGetMyEnabledFactorsV4' test.out

#- 305 PublicMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-public-make-factor-my-default-v4' \
    'TEI8isXm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'PublicMakeFactorMyDefaultV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
