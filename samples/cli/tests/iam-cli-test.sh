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
iam-platform-token-request-handler 'D8ldz7Hu' --login_with_auth "Bearer foo"
iam-revoke-user '8AD79kdW' --login_with_auth "Bearer foo"
iam-get-revocation-list --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-revoke-token 'unvizU0q' --login_with_auth "Bearer foo"
iam-revoke-a-user '1pHyhhER' --login_with_auth "Bearer foo"
iam-token-grant 'client_credentials' --login_with_auth "Bearer foo"
iam-verify-token 'GgdrysMi' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-admin-get-age-restriction-status-v2 --login_with_auth "Bearer foo"
iam-admin-update-age-restriction-config-v2 '{"AgeRestriction": 51, "Enable": true}' --login_with_auth "Bearer foo"
iam-get-list-country-age-restriction --login_with_auth "Bearer foo"
iam-update-country-age-restriction '{"AgeRestriction": 65}' 'SRdP2l7D' --login_with_auth "Bearer foo"
iam-admin-search-users-v2 'NSZ8Aq0X' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v2 'iPLQXSe0' --login_with_auth "Bearer foo"
iam-admin-update-user-v2 '{"Country": "7ZddOGTM", "DateOfBirth": "lJjBwj9H", "DisplayName": "JHQKseEd", "LanguageTag": "SXRDSvgu"}' 'auw1xT7e' --login_with_auth "Bearer foo"
iam-admin-ban-user-v2 '{"ban": "MwSl9MLH", "comment": "0NnTJ2ul", "endDate": "NzBvwJaQ", "reason": "a547Jllv", "skipNotif": true}' '8RWSpabU' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v2 't7xk6Qxy' --login_with_auth "Bearer foo"
iam-admin-disable-user-v2 '{"Reason": "WhfqoWfJ"}' 'w2o8oWUq' --login_with_auth "Bearer foo"
iam-admin-enable-user-v2 'vPCZ2HzT' --login_with_auth "Bearer foo"
iam-admin-reset-password-v2 '{"LanguageTag": "7NXmWDlX", "NewPassword": "suNIdQJR", "OldPassword": "5lsNOlvk"}' 'fwaSbnsu' --login_with_auth "Bearer foo"
iam-admin-delete-platform-link-v2 'LCgToxuV' 'TekJgvg6' --login_with_auth "Bearer foo"
iam-admin-put-user-roles-v2 '["h5HIpH0D"]' 'viplEk4v' --login_with_auth "Bearer foo"
iam-admin-create-user-roles-v2 '["j3LDp4yq"]' 'Dt8QUZDp' --login_with_auth "Bearer foo"
iam-public-get-country-age-restriction 'xlHasinG' --login_with_auth "Bearer foo"
iam-public-create-user-v2 '{"AuthType": "cjrkmRMt", "Country": "tgjDSaIV", "DisplayName": "Bmft3Udg", "LoginId": "7p9PGmY2", "Password": "H5kX4Msi", "PasswordMD5Sum": "sSX28nAR"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v2 '{"Context": "xWRpv5ou", "LanguageTag": "5xtvd28O", "LoginID": "UfCt8UJC"}' --login_with_auth "Bearer foo"
iam-public-reset-password-v2 '{"Code": "5flNyj6H", "LoginID": "sTtX8P3l", "NewPassword": "lnaaS9lq"}' --login_with_auth "Bearer foo"
iam-public-get-user-by-user-idv2 'yygPcfkJ' --login_with_auth "Bearer foo"
iam-public-update-user-v2 '{"Country": "IxfQZza8", "DateOfBirth": "kNVbDxVM", "DisplayName": "q7HJk0F8", "LanguageTag": "9xAc3YVf"}' 'aENtrl0p' --login_with_auth "Bearer foo"
iam-public-get-user-ban 'TKZTXqzH' --login_with_auth "Bearer foo"
iam-public-update-password-v2 '{"LanguageTag": "uBMYQSA2", "NewPassword": "jz1ZOpdO", "OldPassword": "jSyMddB4"}' '1JuMf7RU' --login_with_auth "Bearer foo"
iam-get-list-justice-platform-accounts 'yBHRj8Ii' --login_with_auth "Bearer foo"
iam-public-platform-link-v2 'RimRllHT' '6Dc40vFF' 'A6gpU7EW' --login_with_auth "Bearer foo"
iam-public-delete-platform-link-v2 '3x1dCpm5' '5gOeqQIq' --login_with_auth "Bearer foo"
iam-admin-get-bans-type-v3 --login_with_auth "Bearer foo"
iam-admin-get-list-ban-reason-v3 --login_with_auth "Bearer foo"
iam-admin-get-input-validations --login_with_auth "Bearer foo"
iam-admin-update-input-validations '[{"field": "cJVKmBM1", "validation": {"allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "description": [{"language": "kbmuT1wh", "message": ["OqmEnDXI"]}], "isCustomRegex": true, "letterCase": "BPlSay46", "maxLength": 24, "maxRepeatingAlphaNum": 43, "maxRepeatingSpecialCharacter": 55, "minCharType": 53, "minLength": 53, "regex": "OjtFJ2vm", "specialCharacterLocation": "Tj7tT7TZ", "specialCharacters": ["HWDdCkIs"]}}]' --login_with_auth "Bearer foo"
iam-admin-reset-input-validations 'ZoArWwPH' --login_with_auth "Bearer foo"
iam-list-admins-v3 --login_with_auth "Bearer foo"
iam-admin-get-age-restriction-status-v3 --login_with_auth "Bearer foo"
iam-admin-update-age-restriction-config-v3 '{"ageRestriction": 4, "enable": true}' --login_with_auth "Bearer foo"
iam-admin-get-list-country-age-restriction-v3 --login_with_auth "Bearer foo"
iam-admin-update-country-age-restriction-v3 '{"ageRestriction": 62}' 'AdAtYciL' --login_with_auth "Bearer foo"
iam-admin-get-banned-users-v3 --login_with_auth "Bearer foo"
iam-admin-get-bans-type-with-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-get-clients-by-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-create-client-v3 '{"audiences": ["IgRwFRr0"], "baseUri": "gwB9tz3v", "clientId": "p99XVlV8", "clientName": "rK3tE6n0", "clientPermissions": [{"action": 36, "resource": "mip1tw3L", "schedAction": 4, "schedCron": "Ud9pqtv6", "schedRange": ["JfPZwcCV"]}], "clientPlatform": "OXcVa80T", "deletable": false, "namespace": "CwtD2lAH", "oauthClientType": "01o6NdcB", "redirectUri": "IgzrDyWp", "secret": "FBYGmmBa"}' --login_with_auth "Bearer foo"
iam-admin-get-clientsby-namespaceby-idv3 'wMyoKyNp' --login_with_auth "Bearer foo"
iam-admin-delete-client-v3 'dAasm8xw' --login_with_auth "Bearer foo"
iam-admin-update-client-v3 '{"audiences": ["UfzOlQiZ"], "baseUri": "Y4NbOQXJ", "clientName": "7uOTzNMv", "clientPermissions": [{"action": 41, "resource": "q2tNl4CX", "schedAction": 68, "schedCron": "jiK4DEUJ", "schedRange": ["RVK3l9Eb"]}], "clientPlatform": "0R1XRb0R", "deletable": true, "namespace": "S1smeOln", "redirectUri": "grdTXCza"}' 'PBtkZMio' --login_with_auth "Bearer foo"
iam-admin-update-client-permission-v3 '{"permissions": [{"action": 44, "resource": "cyhloVS3"}]}' 'rYp8QtcE' --login_with_auth "Bearer foo"
iam-admin-add-client-permissions-v3 '{"permissions": [{"action": 25, "resource": "CEVc75Uf"}]}' 'eypWjDNh' --login_with_auth "Bearer foo"
iam-admin-delete-client-permission-v3 '50' 'CL5sWS2q' 'wO763iEk' --login_with_auth "Bearer foo"
iam-retrieve-all-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-sso-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-third-party-login-platform-credential-v3 'lkzLm88L' --login_with_auth "Bearer foo"
iam-add-third-party-login-platform-credential-v3 '{"ACSURL": "pLuYRO3C", "AWSCognitoRegion": "55yHpwK2", "AWSCognitoUserPool": "JaqenDGn", "AllowedClients": ["7a2NUplW"], "AppId": "iLjq06n6", "AuthorizationEndpoint": "a0rW8Efk", "ClientId": "paXtwYZJ", "Environment": "aQ4WbwNm", "FederationMetadataURL": "sFYetjEu", "GenericOauthFlow": true, "IsActive": false, "Issuer": "loJzNKtR", "JWKSEndpoint": "UaTz1ETd", "KeyID": "smwzjkkn", "NetflixCertificates": {"encryptedPrivateKey": "9oiQl05g", "encryptedPrivateKeyName": "7cO3ZMb6", "publicCertificate": "Ojlo6DMN", "publicCertificateName": "pP2qMrTQ", "rootCertificate": "1UpjfU6w", "rootCertificateName": "Jhy1jOVk"}, "OrganizationId": "kUlS7952", "PlatformName": "7EZ25Ia8", "RedirectUri": "uCeZFlLt", "RegisteredDomains": [{"affectedClientIDs": ["EVpDAEbA"], "domain": "82jy74lq", "namespaces": ["0pDE5xRw"], "roleId": "h5b45ebp"}], "Secret": "cM7ScSs3", "TeamID": "UOpAwIp9", "TokenAuthenticationType": "rRtn1PcC", "TokenClaimsMapping": {"xdbumeYg": "OdEBWRQi"}, "TokenEndpoint": "W3KFfU8i"}' 'cH4081gR' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-credential-v3 'B1GyLfLg' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-credential-v3 '{"ACSURL": "4RYuEbgU", "AWSCognitoRegion": "DEcJyIvs", "AWSCognitoUserPool": "PwOr0BmV", "AllowedClients": ["5iFvfwFj"], "AppId": "TSmIEqoL", "AuthorizationEndpoint": "yLeUGmom", "ClientId": "GX9sXTZ0", "Environment": "v8pqLfc5", "FederationMetadataURL": "SwGnReUU", "GenericOauthFlow": true, "IsActive": false, "Issuer": "b5nh68Zn", "JWKSEndpoint": "yUtRvW9h", "KeyID": "NBSFTtFr", "NetflixCertificates": {"encryptedPrivateKey": "OmjkFrFV", "encryptedPrivateKeyName": "A8t0xF34", "publicCertificate": "Xpt6ZlTT", "publicCertificateName": "ic0kr2a0", "rootCertificate": "nI2oo7UH", "rootCertificateName": "CJK5sp0a"}, "OrganizationId": "CvIq3aHV", "PlatformName": "YIlewLRu", "RedirectUri": "HY83bGj0", "RegisteredDomains": [{"affectedClientIDs": ["HTeeWXlI"], "domain": "cRidqctD", "namespaces": ["pygY0ax4"], "roleId": "76ED4MMO"}], "Secret": "9Tw2JH0q", "TeamID": "hWIwHWTg", "TokenAuthenticationType": "zJFRYw6t", "TokenClaimsMapping": {"1IKZLO6V": "4Ode46Qm"}, "TokenEndpoint": "CidgdpP7"}' 'RTC587lm' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-domain-v3 '{"affectedClientIDs": ["UmBziPZB"], "assignedNamespaces": ["npOfkllx"], "domain": "fq0NsrSj", "roleId": "w5Hog0bl"}' 'M1d5MStY' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-domain-v3 '{"domain": "GczLINlE"}' 'C0OEsE3y' --login_with_auth "Bearer foo"
iam-retrieve-sso-login-platform-credential 'zIsUP0Nj' --login_with_auth "Bearer foo"
iam-add-sso-login-platform-credential '{"acsUrl": "luOrGZTz", "apiKey": "sLW7Fjfs", "appId": "9nIkcZ38", "federationMetadataUrl": "fUEanjKH", "isActive": false, "redirectUri": "Xfk1zxdz", "secret": "xg0UXcRy", "ssoUrl": "Hi3u8BzV"}' 'Wu1tOmhU' --login_with_auth "Bearer foo"
iam-delete-sso-login-platform-credential-v3 'tCgcpvGr' --login_with_auth "Bearer foo"
iam-update-sso-platform-credential '{"acsUrl": "EbcZUDEx", "apiKey": "H1tayOGX", "appId": "IHzMRjMC", "federationMetadataUrl": "tOJsEijl", "isActive": true, "redirectUri": "bpyyEcQx", "secret": "VgJIjMZq", "ssoUrl": "cWfMl6dq"}' 'rpD4tnc3' --login_with_auth "Bearer foo"
iam-admin-get-user-by-platform-user-idv3 'ZRB3Ikdt' 'PfAJEomw' --login_with_auth "Bearer foo"
iam-get-admin-users-by-role-id-v3 'enJvQ8gr' --login_with_auth "Bearer foo"
iam-admin-get-user-by-email-address-v3 --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-user-i-ds-v3 '{"userIds": ["tQSv6EcA"]}' --login_with_auth "Bearer foo"
iam-admin-invite-user-v3 '{"emailAddresses": ["LcMIPms5"], "isAdmin": false, "roles": ["T51M4yko"]}' --login_with_auth "Bearer foo"
iam-admin-list-users-v3 --login_with_auth "Bearer foo"
iam-admin-search-user-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-by-email-address-v3 '{"listEmailAddressRequest": ["8S0EnGLv"]}' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v3 'GvfuSyCT' --login_with_auth "Bearer foo"
iam-admin-update-user-v3 '{"avatarUrl": "yjj4mCai", "country": "uMGKOF5G", "dateOfBirth": "JJooSXUl", "displayName": "3YU35QHG", "languageTag": "pBABnOlx", "userName": "DznICQVy"}' 'qBg34WTt' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v3 'Dkn0rtn6' --login_with_auth "Bearer foo"
iam-admin-ban-user-v3 '{"ban": "t0Yx4z12", "comment": "EaQ1rUQY", "endDate": "CNTiDX4j", "reason": "E3M2IsTH", "skipNotif": true}' '8QwNyOlX' --login_with_auth "Bearer foo"
iam-admin-update-user-ban-v3 '{"enabled": false, "skipNotif": false}' '0mcq5T4S' 'Uc7cWfCK' --login_with_auth "Bearer foo"
iam-admin-send-verification-code-v3 '{"context": "K6Dij1gF", "emailAddress": "cenEMySP", "languageTag": "fhxBenDi"}' 'TiAqFYmF' --login_with_auth "Bearer foo"
iam-admin-verify-account-v3 '{"Code": "KjaELmml", "ContactType": "l6oexId1", "LanguageTag": "OKGUN2Uz", "validateOnly": false}' 'd7uVa7t1' --login_with_auth "Bearer foo"
iam-get-user-verification-code '4yvSYSV5' --login_with_auth "Bearer foo"
iam-admin-get-user-deletion-status-v3 '2bHifCIf' --login_with_auth "Bearer foo"
iam-admin-update-user-deletion-status-v3 '{"enabled": true}' 'suu6Pkam' --login_with_auth "Bearer foo"
iam-admin-upgrade-headless-account-v3 '{"code": "6tFSYFt4", "country": "ZxA2PzZF", "dateOfBirth": "RkBNlg6h", "displayName": "n5qusKyZ", "emailAddress": "AuV6uUvq", "password": "M0lV6UZM", "validateOnly": false}' 'EbxHNgJR' --login_with_auth "Bearer foo"
iam-admin-delete-user-information-v3 'iQExaunj' --login_with_auth "Bearer foo"
iam-admin-get-user-login-histories-v3 'dAqnHUz4' --login_with_auth "Bearer foo"
iam-admin-update-user-permission-v3 '{"Permissions": [{"Action": 39, "Resource": "x4O6hamP", "SchedAction": 45, "SchedCron": "Noi071ez", "SchedRange": ["DK56JFIG"]}]}' 'e1IMUCLc' --login_with_auth "Bearer foo"
iam-admin-add-user-permissions-v3 '{"Permissions": [{"Action": 78, "Resource": "0DsaD5Fy", "SchedAction": 55, "SchedCron": "sFe9OYEJ", "SchedRange": ["VsYffmhy"]}]}' 'x6J25PrM' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-bulk-v3 '[{"Action": 89, "Resource": "3cB8m17h"}]' 'EeLLgoaY' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-v3 '38' 'h6zcf8eA' '45OMvObW' --login_with_auth "Bearer foo"
iam-admin-get-user-platform-accounts-v3 'ejo9LfGe' --login_with_auth "Bearer foo"
iam-admin-get-list-justice-platform-accounts 'egJMaBGR' --login_with_auth "Bearer foo"
iam-admin-create-justice-user '6D1ZoZEZ' 'QkJ8DSqF' --login_with_auth "Bearer foo"
iam-admin-link-platform-account '{"platformId": "nhdKvjFC", "platformUserId": "FbSFlEWo"}' 'MPdgK5zn' --login_with_auth "Bearer foo"
iam-admin-platform-unlink-v3 '{"platformNamespace": "62mhnFSp"}' 'CTlDNBOc' 'ygvv2LAg' --login_with_auth "Bearer foo"
iam-admin-platform-link-v3 'fBGVzanb' 'KYsB0gqJ' '8VhYSikJ' --login_with_auth "Bearer foo"
iam-admin-delete-user-roles-v3 '["l2p9rBx8"]' 'N5egapqx' --login_with_auth "Bearer foo"
iam-admin-save-user-role-v3 '[{"namespace": "Dy4cLfNj", "roleId": "zzEZYA8j"}]' 'IkMJb7cZ' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v3 '2bPsaLLp' 'EBVEMk5A' --login_with_auth "Bearer foo"
iam-admin-delete-user-role-v3 'sKaF2P44' 'lXkI3zdi' --login_with_auth "Bearer foo"
iam-admin-update-user-status-v3 '{"enabled": false, "reason": "C5IbPit7"}' '1JWlYCoi' --login_with_auth "Bearer foo"
iam-admin-verify-user-without-verification-code-v3 '4nDfPu5V' --login_with_auth "Bearer foo"
iam-admin-update-client-secret-v3 '{"newSecret": "6QSYxEVO"}' 'ryVuZYmg' --login_with_auth "Bearer foo"
iam-admin-get-roles-v3 --login_with_auth "Bearer foo"
iam-admin-create-role-v3 '{"adminRole": false, "deletable": true, "isWildcard": true, "managers": [{"displayName": "5AGPgvk0", "namespace": "Zthaj0EB", "userId": "A4azRz0d"}], "members": [{"displayName": "56smobor", "namespace": "4p1PlgQB", "userId": "9EcNGOeB"}], "permissions": [{"action": 86, "resource": "Y6G5ae07", "schedAction": 7, "schedCron": "eDLaZ8JC", "schedRange": ["vbeTfW0h"]}], "roleName": "gzrabLJx"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v3 'EwJrEBmQ' --login_with_auth "Bearer foo"
iam-admin-delete-role-v3 '64haNOzl' --login_with_auth "Bearer foo"
iam-admin-update-role-v3 '{"deletable": true, "isWildcard": true, "roleName": "upjdDetn"}' 'oT0rfWtV' --login_with_auth "Bearer foo"
iam-admin-get-role-admin-status-v3 'PwQfq6V9' --login_with_auth "Bearer foo"
iam-admin-update-admin-role-status-v3 '2gbfPouN' --login_with_auth "Bearer foo"
iam-admin-remove-role-admin-v3 'dmP7fckV' --login_with_auth "Bearer foo"
iam-admin-get-role-managers-v3 'nuDGvYIb' --login_with_auth "Bearer foo"
iam-admin-add-role-managers-v3 '{"managers": [{"displayName": "1p5tcR5z", "namespace": "8ZJLjSHc", "userId": "aR3X4tZm"}]}' 'wr0QmOns' --login_with_auth "Bearer foo"
iam-admin-remove-role-managers-v3 '{"managers": [{"displayName": "Eg49eXp0", "namespace": "xQkZ2Jju", "userId": "wWWy0tU1"}]}' '1PCeSrve' --login_with_auth "Bearer foo"
iam-admin-get-role-members-v3 'jUKwVfF3' --login_with_auth "Bearer foo"
iam-admin-add-role-members-v3 '{"members": [{"displayName": "7Vr7mkDz", "namespace": "FBI1Vwhk", "userId": "VSKDlNFO"}]}' 'UHBJsvTs' --login_with_auth "Bearer foo"
iam-admin-remove-role-members-v3 '{"members": [{"displayName": "qk9hg4hj", "namespace": "6nUdebW6", "userId": "UskbPkkZ"}]}' 'Ak01f1Kx' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v3 '{"permissions": [{"action": 56, "resource": "tWADU2gu", "schedAction": 78, "schedCron": "6U9w13W1", "schedRange": ["K9TZQ4qR"]}]}' 'LEi5wowE' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v3 '{"permissions": [{"action": 34, "resource": "fmM0CCs3", "schedAction": 90, "schedCron": "PUPLmsY8", "schedRange": ["WgwSx1DI"]}]}' '5GH9bv9Z' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v3 '["To2HpA6p"]' 'zjHpZO0E' --login_with_auth "Bearer foo"
iam-admin-delete-role-permission-v3 '17' 'LgRPJK3n' 'Bae3GOgb' --login_with_auth "Bearer foo"
iam-admin-get-my-user-v3 --login_with_auth "Bearer foo"
iam-user-authentication-v3 'Qrqra0Pt' 'kfvOpY2r' 'amp5lnBn' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-authentication-with-platform-link-v3 '6xmBkfMt' 'C66hFq0k' 'POkORm2X' 'jlNEE5ec' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v3 'PzAmi0yS' --login_with_auth "Bearer foo"
iam-get-country-location-v3 --login_with_auth "Bearer foo"
iam-logout --login_with_auth "Bearer foo"
iam-admin-retrieve-user-third-party-platform-token-v3 'JHfPloP1' 'XkYK4MgI' --login_with_auth "Bearer foo"
iam-revoke-user-v3 'sDSFMPyM' --login_with_auth "Bearer foo"
iam-authorize-v3 'hyw1OLZP' 'code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-introspection-v3 'wxH4BIDJ' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-jwksv3 --login_with_auth "Bearer foo"
iam-change2fa-method 'uDoShMMf' 'tll8N0Vv' --login_with_auth "Bearer foo"
iam-verify2fa-code 'ChHz9urm' 't7QWvE8s' '6Uz8BRuY' 'True' --login_with_auth "Bearer foo"
iam-retrieve-user-third-party-platform-token-v3 'TtL6MTTR' 'kCbb9S5Q' --login_with_auth "Bearer foo"
iam-auth-code-request-v3 '1IVHGT88' 'prREBgYO' --login_with_auth "Bearer foo"
iam-platform-token-grant-v3 'WdHJ9Jum' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-revocation-list-v3 --login_with_auth "Bearer foo"
iam-token-revocation-v3 'ohtU13gf' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-grant-v3 'client_credentials' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-verify-token-v3 'gNZj5w5y' --login_with_auth "Bearer foo"
iam-platform-authentication-v3 '3HmK8QVO' 'a62eQZtb' --login_with_auth "Bearer foo"
iam-public-get-input-validations --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-public-v3 --login_with_auth "Bearer foo"
iam-retrieve-active-oidc-clients-public-v3 'LLcF671W' --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["Ltv38Hec"]}' 'czopFmeR' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv3 'wpcJBZyi' '3mLC4Kze' --login_with_auth "Bearer foo"
iam-public-get-async-status 'kiSzeyol' --login_with_auth "Bearer foo"
iam-public-search-user-v3 --login_with_auth "Bearer foo"
iam-public-create-user-v3 '{"PasswordMD5Sum": "nOQt0joV", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "CytC6lRG", "policyId": "98YxnHbR", "policyVersionId": "doTKKeuS"}], "authType": "jfZe9i1o", "code": "sghF1hzi", "country": "1Nl47syJ", "dateOfBirth": "5ibzSHZe", "displayName": "CLIvWPVR", "emailAddress": "sdEqA61y", "password": "TrMgsycT", "reachMinimumAge": false}' --login_with_auth "Bearer foo"
iam-check-user-availability 'mPzc20Eu' 'O5dMqGDl' --login_with_auth "Bearer foo"
iam-public-bulk-get-users '{"userIds": ["SZPY07rE"]}' --login_with_auth "Bearer foo"
iam-public-send-registration-code '{"emailAddress": "VSjzHjL6", "languageTag": "ZbXjG6DS"}' --login_with_auth "Bearer foo"
iam-public-verify-registration-code '{"code": "mpp3op8h", "emailAddress": "taRLxtW4"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v3 '{"emailAddress": "PvFkESTU", "languageTag": "Lat5F1Le"}' --login_with_auth "Bearer foo"
iam-get-admin-invitation-v3 '7cR7q6PW' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v3 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "ZmmKz41i", "policyId": "1Tp78Fip", "policyVersionId": "JHahViJv"}], "authType": "EMAILPASSWD", "country": "dmlk2luq", "dateOfBirth": "SOOA2VOZ", "displayName": "BoNbB98P", "password": "uSGykqFz", "reachMinimumAge": true}' 'SMXT53bB' --login_with_auth "Bearer foo"
iam-update-user-v3 '{"avatarUrl": "uL38beOY", "country": "DVuHZQ9L", "dateOfBirth": "Yt6w23Wf", "displayName": "8iEQo72s", "languageTag": "H0aRdcDl", "userName": "DyGcsfIu"}' --login_with_auth "Bearer foo"
iam-public-update-user-v3 '{"avatarUrl": "I4Dv5lEJ", "country": "pK1AyRlz", "dateOfBirth": "srRXEFZi", "displayName": "vQOHG6wV", "languageTag": "icNratsv", "userName": "vHLmIohf"}' --login_with_auth "Bearer foo"
iam-public-send-verification-code-v3 '{"context": "NISLXMDW", "emailAddress": "Ddm5FE4l", "languageTag": "liQMnutJ"}' --login_with_auth "Bearer foo"
iam-public-user-verification-v3 '{"code": "bpEo4mUN", "contactType": "HFtdml2x", "languageTag": "NviWacJc", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v3 '{"code": "m7Z548uu", "country": "KgoCBqS5", "dateOfBirth": "uIdCbwCe", "displayName": "eq9ouEdD", "emailAddress": "tjOgsypL", "password": "km2ZYew5", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-verify-headless-account-v3 '{"emailAddress": "0gnYyj6M", "password": "Xf9G1nty"}' --login_with_auth "Bearer foo"
iam-public-update-password-v3 '{"languageTag": "ebvoeHen", "newPassword": "AALKt7Ef", "oldPassword": "xIH446oU"}' --login_with_auth "Bearer foo"
iam-public-create-justice-user 'nP2S74un' --login_with_auth "Bearer foo"
iam-public-platform-link-v3 'Xwg0JKqV' 'WW1rjK1e' --login_with_auth "Bearer foo"
iam-public-platform-unlink-v3 '{"platformNamespace": "pwkAvcsY"}' 'vbgfBVPp' --login_with_auth "Bearer foo"
iam-public-platform-unlink-all-v3 'Ta8Yuq7T' --login_with_auth "Bearer foo"
iam-public-web-link-platform 'KiNXmz7e' --login_with_auth "Bearer foo"
iam-public-web-link-platform-establish 'MrMD5Tba' 'UxTCTng0' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"code": "xjtdBrjs", "emailAddress": "3Kiykt2C", "newPassword": "k2gOlSat"}' --login_with_auth "Bearer foo"
iam-public-get-user-by-user-id-v3 'ECZ2UgwQ' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 'LqDqYSxT' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 'PuVlBqir' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 'dp3yxnsE' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 'Tl1SvhQu' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "dsjIhXdx", "platformUserId": "iSoWpnnx"}' 'gX7BCPMq' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["zQIxibhp"], "requestId": "NYsHtdB3"}' 'IkjuaZqh' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 'JilrZkSS' 'KgP5rxCR' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 '77G9d5CA' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler '1GORSbL9' 'n0dbWDEu' --login_with_auth "Bearer foo"
iam-login-sso-client 'pmdLQzPn' --login_with_auth "Bearer foo"
iam-logout-sso-client 'NfBAcWAr' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["bkCfdHIZ"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "b03otqmB", "country": "uS9V2pCZ", "dateOfBirth": "23UHmk0l", "displayName": "pJ4JLl01", "languageTag": "qi7L2oDU", "userName": "oVRUb39j"}' '22P4Sp09' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "cKmjRUbZ", "emailAddress": "VBVS7OK2"}' 'ZrdcsckM' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 'ekROWZ2K' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 'UTqkK2eF' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["aGLoSmEE"], "roleId": "PbLywJsy"}' 'Uie6fZgL' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["llUPsO8l"], "roleId": "g46Si700"}' '6vL2w4aa' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["jDAOx0iJ"], "roleId": "jYleaktq"}' 'v2WkljQu' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "JONqHGq8"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 'mB7mF2lM' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 'FcaghFXJ' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "csIqCy4x"}' 'DifSSQ5O' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 26, "resource": "2ccEcl3x", "schedAction": 9, "schedCron": "iO4bwF5J", "schedRange": ["OjGoGxKM"]}]}' '3qMce5tf' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 74, "resource": "cpjFZMKC", "schedAction": 2, "schedCron": "p0pEbLCL", "schedRange": ["FpHxMYF8"]}]}' '36075xEp' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["zdnYtpja"]' '5ig2isQZ' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'ga6Vy76i' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["zPiQRjYa"], "namespace": "8fv5fIt2", "userId": "2tIZhjhg"}' 'kigW22zX' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "MWXfbcM0", "userId": "GIALIbFC"}' 'QgBcLNT6' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "iOQVYx5r", "country": "W2gMsI1a", "dateOfBirth": "YBitSn3U", "displayName": "DeKj97I4", "languageTag": "WYXLqjN7", "userName": "ktOBTraB"}' --login_with_auth "Bearer foo"
iam-admin-disable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-admin-enable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-admin-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-admin-get-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-generate-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-download-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-enable-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 'xWRTVuYE' --login_with_auth "Bearer foo"
iam-admin-invite-user-v4 '{"assignedNamespaces": ["qGlKDwTK"], "emailAddresses": ["XBrXiQcd"], "isAdmin": false, "roleId": "iCKeQJWZ"}' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "vcq1ETvW", "policyId": "BxYZJh7B", "policyVersionId": "8gbnSu9M"}], "authType": "EMAILPASSWD", "country": "D2udaeYp", "dateOfBirth": "CXYSMiy8", "displayName": "7CTqEQBg", "emailAddress": "36my3sY2", "password": "clrDcain", "passwordMD5Sum": "0cOVF1zH", "username": "wDTI0sJ1", "verified": false}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "hMTggSP2", "policyId": "SLcuAP7v", "policyVersionId": "U971Czw2"}], "authType": "EMAILPASSWD", "code": "bg8C7Mvy", "country": "whu6MjOj", "dateOfBirth": "uGzo1Fz4", "displayName": "tU0aSn98", "emailAddress": "N8qOUA0z", "password": "92RaDe8n", "passwordMD5Sum": "gT8LRQkM", "reachMinimumAge": false, "username": "G1LZyF2m"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "YY6ZMfuT", "policyId": "YTKsue48", "policyVersionId": "qBEBNAV5"}], "authType": "EMAILPASSWD", "country": "Te6ec1zA", "dateOfBirth": "92URCLSG", "displayName": "PmRBZWun", "password": "HW7MYvr6", "reachMinimumAge": true, "username": "7Ppepc92"}' 'HA94eACd' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "eyfUpgiP", "country": "pf8nxKJ3", "dateOfBirth": "dnmtPwa6", "displayName": "4Y4gPEKM", "languageTag": "hhu9a6f3", "userName": "xJNtUlKL"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "lIIAeHbm", "emailAddress": "5M6LsY1V"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "MuIEcRls", "country": "68M3MPMR", "dateOfBirth": "PBepyyMz", "displayName": "6zfR1pvT", "emailAddress": "YYtDOiEi", "password": "4RuEcHCS", "reachMinimumAge": false, "username": "pOZQFlwO", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"emailAddress": "uKGDFgK4", "password": "9YuKnXks", "username": "0m8ANrcR"}' --login_with_auth "Bearer foo"
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
iam-public-make-factor-my-default-v4 'al7ta3fo' --login_with_auth "Bearer foo"
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
echo "1..307"

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
    '{"AuthType": "jA3h4MMW", "Country": "3AJ5zlsF", "DisplayName": "BwjvLYvm", "LoginId": "g6avudQF", "Password": "F1CPNY9u", "PasswordMD5Sum": "2dVYdglO"}' \
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
    'OoCeK0kP' \
    'KmBqVux3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetUserByPlatformUserID' test.out

#- 20 ForgotPassword
$PYTHON -m $MODULE 'iam-forgot-password' \
    '{"Context": "lXcD8aer", "LanguageTag": "tAVCqs8X", "LoginID": "T8xy3nJ0"}' \
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
    '{"Code": "6KkseA0A", "LoginID": "Rj9ricfa", "NewPassword": "yvnhi8MD"}' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 22 'ResetPassword' test.out

#- 23 SearchUser
eval_tap 0 23 'SearchUser # SKIP deprecated' test.out

#- 24 GetUserByUserID
$PYTHON -m $MODULE 'iam-get-user-by-user-id' \
    'dY4WLHoa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'GetUserByUserID' test.out

#- 25 UpdateUser
$PYTHON -m $MODULE 'iam-update-user' \
    '{"Country": "UkYnQp5e", "DateOfBirth": "gdmVE8Im", "DisplayName": "ivNtQxqW", "LanguageTag": "RKHohODo"}' \
    'WOr98kjB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'UpdateUser' test.out

#- 26 DeleteUser
$PYTHON -m $MODULE 'iam-delete-user' \
    'Uas9jjz2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'DeleteUser' test.out

#- 27 BanUser
$PYTHON -m $MODULE 'iam-ban-user' \
    '{"ban": "FrgiaGrc", "comment": "B7dIOVKI", "endDate": "PSJJHo5W", "reason": "8tKH8ou9", "skipNotif": false}' \
    'bxSXcrEF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'BanUser' test.out

#- 28 GetUserBanHistory
$PYTHON -m $MODULE 'iam-get-user-ban-history' \
    'CwqeGNLd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetUserBanHistory' test.out

#- 29 DisableUserBan
$PYTHON -m $MODULE 'iam-disable-user-ban' \
    'IBRdliFQ' \
    'VMKEzVUW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'DisableUserBan' test.out

#- 30 EnableUserBan
$PYTHON -m $MODULE 'iam-enable-user-ban' \
    'lUWDs2x1' \
    'EQU0oepE' \
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
    'vcjaSgEh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetUserInformation' test.out

#- 35 DeleteUserInformation
$PYTHON -m $MODULE 'iam-delete-user-information' \
    '6jJnFxin' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'DeleteUserInformation' test.out

#- 36 GetUserLoginHistories
$PYTHON -m $MODULE 'iam-get-user-login-histories' \
    'IHJ1o7aq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GetUserLoginHistories' test.out

#- 37 UpdatePassword
eval_tap 0 37 'UpdatePassword # SKIP deprecated' test.out

#- 38 SaveUserPermission
$PYTHON -m $MODULE 'iam-save-user-permission' \
    '{"Permissions": [{"Action": 51, "Resource": "nd5eacob", "SchedAction": 90, "SchedCron": "suRlhreQ", "SchedRange": ["VFID3o8h"]}]}' \
    'JWVjKIOA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'SaveUserPermission' test.out

#- 39 AddUserPermission
$PYTHON -m $MODULE 'iam-add-user-permission' \
    '{"SchedAction": 45, "SchedCron": "70DvAHhS", "SchedRange": ["GWUvzq1Z"]}' \
    '1' \
    '3IBC4vQF' \
    'sUJPfiaJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AddUserPermission' test.out

#- 40 DeleteUserPermission
$PYTHON -m $MODULE 'iam-delete-user-permission' \
    '31' \
    '1rt7OBgB' \
    'Ce6N0eI6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'DeleteUserPermission' test.out

#- 41 GetUserPlatformAccounts
$PYTHON -m $MODULE 'iam-get-user-platform-accounts' \
    '5Mn5tngE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetUserPlatformAccounts' test.out

#- 42 GetUserMapping
$PYTHON -m $MODULE 'iam-get-user-mapping' \
    'YXgPVT5C' \
    'qXDZBVMJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetUserMapping' test.out

#- 43 GetUserJusticePlatformAccount
eval_tap 0 43 'GetUserJusticePlatformAccount # SKIP deprecated' test.out

#- 44 PlatformLink
$PYTHON -m $MODULE 'iam-platform-link' \
    'yJeKFO92' \
    'YDtaZvJo' \
    'KS0Oxyip' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PlatformLink' test.out

#- 45 PlatformUnlink
$PYTHON -m $MODULE 'iam-platform-unlink' \
    'ZuO4N9S2' \
    'YCgHa6XB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'PlatformUnlink' test.out

#- 46 GetPublisherUser
$PYTHON -m $MODULE 'iam-get-publisher-user' \
    'cvGRYk5r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'GetPublisherUser' test.out

#- 47 SaveUserRoles
$PYTHON -m $MODULE 'iam-save-user-roles' \
    '["UtWHCnhm"]' \
    'zzppV7tK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'SaveUserRoles' test.out

#- 48 AddUserRole
$PYTHON -m $MODULE 'iam-add-user-role' \
    'NKYUQVBX' \
    'ymWcNlHa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AddUserRole' test.out

#- 49 DeleteUserRole
$PYTHON -m $MODULE 'iam-delete-user-role' \
    'FxYaGHUp' \
    'mBFyOrFK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'DeleteUserRole' test.out

#- 50 UpgradeHeadlessAccount
$PYTHON -m $MODULE 'iam-upgrade-headless-account' \
    '{"LoginID": "txGNAi0f", "Password": "q4xChPLd"}' \
    '2lOopc7X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'UpgradeHeadlessAccount' test.out

#- 51 UpgradeHeadlessAccountWithVerificationCode
$PYTHON -m $MODULE 'iam-upgrade-headless-account-with-verification-code' \
    '{"Code": "oVpdd6rC", "Password": "pyMrnH9Y", "loginId": "HXh7KnCV"}' \
    'OKY2zsBR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'UpgradeHeadlessAccountWithVerificationCode' test.out

#- 52 UserVerification
$PYTHON -m $MODULE 'iam-user-verification' \
    '{"Code": "Gtd8QY2O", "ContactType": "Lbijrvfr", "LanguageTag": "8hknjWUW", "validateOnly": false}' \
    'MUXHvw4p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'UserVerification' test.out

#- 53 SendVerificationCode
$PYTHON -m $MODULE 'iam-send-verification-code' \
    '{"Context": "NlGLjdBx", "LanguageTag": "LM079pDA", "LoginID": "bTgmsEYE"}' \
    'q2GkYK1v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'SendVerificationCode' test.out

#- 54 Authorization
$PYTHON -m $MODULE 'iam-authorization' \
    'Ym9flXQ7' \
    'CQoemnQG' \
    'code' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'Authorization' test.out

#- 55 GetJWKS
$PYTHON -m $MODULE 'iam-get-jwks' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'GetJWKS' test.out

#- 56 PlatformTokenRequestHandler
$PYTHON -m $MODULE 'iam-platform-token-request-handler' \
    'H0NVM9VE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PlatformTokenRequestHandler' test.out

#- 57 RevokeUser
$PYTHON -m $MODULE 'iam-revoke-user' \
    'HTPqDhkc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'RevokeUser' test.out

#- 58 GetRevocationList
$PYTHON -m $MODULE 'iam-get-revocation-list' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 58 'GetRevocationList' test.out

#- 59 RevokeToken
$PYTHON -m $MODULE 'iam-revoke-token' \
    'u5vnz6Gi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'RevokeToken' test.out

#- 60 RevokeAUser
$PYTHON -m $MODULE 'iam-revoke-a-user' \
    'NMboBJHm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'RevokeAUser' test.out

#- 61 TokenGrant
$PYTHON -m $MODULE 'iam-token-grant' \
    'client_credentials' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'TokenGrant' test.out

#- 62 VerifyToken
$PYTHON -m $MODULE 'iam-verify-token' \
    '0LJmpPi4' \
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
    '{"AgeRestriction": 25, "Enable": true}' \
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
    '{"AgeRestriction": 14}' \
    'ruiCZLGG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'UpdateCountryAgeRestriction' test.out

#- 84 AdminSearchUsersV2
$PYTHON -m $MODULE 'iam-admin-search-users-v2' \
    'P5UXkHNT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'AdminSearchUsersV2' test.out

#- 85 AdminGetUserByUserIdV2
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v2' \
    'Mapp5Sbo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'AdminGetUserByUserIdV2' test.out

#- 86 AdminUpdateUserV2
$PYTHON -m $MODULE 'iam-admin-update-user-v2' \
    '{"Country": "nsUJKADr", "DateOfBirth": "60EkdFrp", "DisplayName": "LsGt9yTX", "LanguageTag": "WUSCQcMs"}' \
    'HN7reI22' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'AdminUpdateUserV2' test.out

#- 87 AdminBanUserV2
$PYTHON -m $MODULE 'iam-admin-ban-user-v2' \
    '{"ban": "ks7I12tA", "comment": "Zc8sxxLx", "endDate": "9XQeqNWL", "reason": "m8cNJbYH", "skipNotif": false}' \
    'JLv9NvHw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'AdminBanUserV2' test.out

#- 88 AdminGetUserBanV2
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v2' \
    'tw2Mjcy9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'AdminGetUserBanV2' test.out

#- 89 AdminDisableUserV2
$PYTHON -m $MODULE 'iam-admin-disable-user-v2' \
    '{"Reason": "ZL6Zs5Bu"}' \
    '2XYopLWZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'AdminDisableUserV2' test.out

#- 90 AdminEnableUserV2
$PYTHON -m $MODULE 'iam-admin-enable-user-v2' \
    'eUKJJNft' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'AdminEnableUserV2' test.out

#- 91 AdminResetPasswordV2
$PYTHON -m $MODULE 'iam-admin-reset-password-v2' \
    '{"LanguageTag": "RpGgk1is", "NewPassword": "eREzzRG6", "OldPassword": "z9wmuHdd"}' \
    'yOdibI1L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'AdminResetPasswordV2' test.out

#- 92 AdminDeletePlatformLinkV2
$PYTHON -m $MODULE 'iam-admin-delete-platform-link-v2' \
    'VyqbdY8D' \
    'GZKAuoIK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'AdminDeletePlatformLinkV2' test.out

#- 93 AdminPutUserRolesV2
$PYTHON -m $MODULE 'iam-admin-put-user-roles-v2' \
    '["z3Pp3zLW"]' \
    'UxMzMtSm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'AdminPutUserRolesV2' test.out

#- 94 AdminCreateUserRolesV2
$PYTHON -m $MODULE 'iam-admin-create-user-roles-v2' \
    '["MmZP8nG0"]' \
    'FoQP8q7a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'AdminCreateUserRolesV2' test.out

#- 95 PublicGetCountryAgeRestriction
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction' \
    'Ssb85gAh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'PublicGetCountryAgeRestriction' test.out

#- 96 PublicCreateUserV2
$PYTHON -m $MODULE 'iam-public-create-user-v2' \
    '{"AuthType": "9RD3ZzN6", "Country": "N1iJ8ltt", "DisplayName": "9IRqCflg", "LoginId": "ln6r5f0s", "Password": "5H6lCf3Q", "PasswordMD5Sum": "Ha11hLLC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'PublicCreateUserV2' test.out

#- 97 PublicForgotPasswordV2
$PYTHON -m $MODULE 'iam-public-forgot-password-v2' \
    '{"Context": "gw5av4LE", "LanguageTag": "xdabD8g2", "LoginID": "cvHfMRup"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'PublicForgotPasswordV2' test.out

#- 98 PublicResetPasswordV2
$PYTHON -m $MODULE 'iam-public-reset-password-v2' \
    '{"Code": "DA5xbjs3", "LoginID": "XRdHUJ0G", "NewPassword": "CmflIXkg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'PublicResetPasswordV2' test.out

#- 99 PublicGetUserByUserIDV2
$PYTHON -m $MODULE 'iam-public-get-user-by-user-idv2' \
    'J6zkTwoa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'PublicGetUserByUserIDV2' test.out

#- 100 PublicUpdateUserV2
$PYTHON -m $MODULE 'iam-public-update-user-v2' \
    '{"Country": "kq7sEejF", "DateOfBirth": "Z1NtONXb", "DisplayName": "9w9hsQHs", "LanguageTag": "zIsfrlzK"}' \
    'pQdd58dZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'PublicUpdateUserV2' test.out

#- 101 PublicGetUserBan
$PYTHON -m $MODULE 'iam-public-get-user-ban' \
    'P5RvrinN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'PublicGetUserBan' test.out

#- 102 PublicUpdatePasswordV2
$PYTHON -m $MODULE 'iam-public-update-password-v2' \
    '{"LanguageTag": "tvBtqFSk", "NewPassword": "A68mIVYJ", "OldPassword": "5pSVxBsL"}' \
    'hty3pecT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'PublicUpdatePasswordV2' test.out

#- 103 GetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-get-list-justice-platform-accounts' \
    'oXA4M1oU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'GetListJusticePlatformAccounts' test.out

#- 104 PublicPlatformLinkV2
$PYTHON -m $MODULE 'iam-public-platform-link-v2' \
    'FPhgo7Z6' \
    'mwNC4FY6' \
    '9mM87joJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'PublicPlatformLinkV2' test.out

#- 105 PublicDeletePlatformLinkV2
$PYTHON -m $MODULE 'iam-public-delete-platform-link-v2' \
    'NOGB83Ns' \
    '6Hl5Poab' \
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
    '[{"field": "6lKoVqNB", "validation": {"allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "description": [{"language": "lquS2q2D", "message": ["oWr9zvFt"]}], "isCustomRegex": false, "letterCase": "2mOAqOok", "maxLength": 94, "maxRepeatingAlphaNum": 30, "maxRepeatingSpecialCharacter": 22, "minCharType": 46, "minLength": 84, "regex": "2YriTPfi", "specialCharacterLocation": "pD67jI2h", "specialCharacters": ["iZkrtLnh"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    '2U1RQlMx' \
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
    '{"ageRestriction": 78}' \
    'MPNtqv2T' \
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
    '{"audiences": ["Mz1b7Snz"], "baseUri": "kXOek83I", "clientId": "gm1wkSWs", "clientName": "YvAsu18o", "clientPermissions": [{"action": 3, "resource": "Udc8mbvX", "schedAction": 5, "schedCron": "wcgMqOXM", "schedRange": ["ziXrVdsE"]}], "clientPlatform": "c3ClFP3m", "deletable": true, "namespace": "usCBTe4k", "oauthClientType": "LcuqL40N", "redirectUri": "YgekRavp", "secret": "aGTA9BTy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'AdminCreateClientV3' test.out

#- 120 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    'CCyN4Fw9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 121 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'i6mI2W3t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminDeleteClientV3' test.out

#- 122 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["jjCqPVyY"], "baseUri": "s01hEYzW", "clientName": "w3qrcxM0", "clientPermissions": [{"action": 59, "resource": "PAXQBNMP", "schedAction": 19, "schedCron": "3xfPaoZa", "schedRange": ["WFspkU5k"]}], "clientPlatform": "n6PlPqD4", "deletable": true, "namespace": "gfasBfcl", "redirectUri": "BhZjZbLn"}' \
    'mghKwPyV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AdminUpdateClientV3' test.out

#- 123 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 69, "resource": "n3qaHP7K"}]}' \
    'NulyfrEN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminUpdateClientPermissionV3' test.out

#- 124 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 94, "resource": "QkpcaWHf"}]}' \
    '6T2xOOlj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AdminAddClientPermissionsV3' test.out

#- 125 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '27' \
    '7c6c9efJ' \
    'I02TZxrg' \
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
    'LBFJEkph' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 130 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "Fz0h6Wpo", "AWSCognitoRegion": "VpVc2HBB", "AWSCognitoUserPool": "mj6cEi02", "AllowedClients": ["hXl42ubC"], "AppId": "Rfy4GjKn", "AuthorizationEndpoint": "5ItHXLDZ", "ClientId": "qpRhqnR7", "Environment": "42GcbLuQ", "FederationMetadataURL": "OGMOEzmd", "GenericOauthFlow": false, "IsActive": false, "Issuer": "T0S46kqy", "JWKSEndpoint": "fMBSaZc4", "KeyID": "SA16M8gQ", "NetflixCertificates": {"encryptedPrivateKey": "CD7aBHWC", "encryptedPrivateKeyName": "YevNkfcQ", "publicCertificate": "vl4Oso7t", "publicCertificateName": "x65zXCiT", "rootCertificate": "fjorLFqT", "rootCertificateName": "mIUFUoon"}, "OrganizationId": "HBI13SZF", "PlatformName": "Hfm0F8vS", "RedirectUri": "2BrZ3nq8", "RegisteredDomains": [{"affectedClientIDs": ["8YSSD7zV"], "domain": "0C8FvVU3", "namespaces": ["kRXBGPXI"], "roleId": "dft1biZH"}], "Secret": "uhWyFPHd", "TeamID": "XcyvZEhY", "TokenAuthenticationType": "eUSy5Ukc", "TokenClaimsMapping": {"65naP11R": "8Xww9vq9"}, "TokenEndpoint": "nMa2Btgw"}' \
    'yuf2fjV3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 131 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    '0SLxi7uy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 132 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "haeFtcO9", "AWSCognitoRegion": "XNy63QO9", "AWSCognitoUserPool": "vW0ck7TE", "AllowedClients": ["DE8LeEQB"], "AppId": "eGPLiE6t", "AuthorizationEndpoint": "HCr0GPFv", "ClientId": "T0SAK91y", "Environment": "5vCeBIJq", "FederationMetadataURL": "0B9UcI6c", "GenericOauthFlow": false, "IsActive": true, "Issuer": "e9ealHOZ", "JWKSEndpoint": "phcLncnj", "KeyID": "nmyU8FSx", "NetflixCertificates": {"encryptedPrivateKey": "XdCrskoF", "encryptedPrivateKeyName": "qnowq9La", "publicCertificate": "z1GLt5Mh", "publicCertificateName": "f8Z7ahmb", "rootCertificate": "VPm2g7xA", "rootCertificateName": "FfRRLUjf"}, "OrganizationId": "WS9sftIf", "PlatformName": "HGe5bUTS", "RedirectUri": "XOv12PMc", "RegisteredDomains": [{"affectedClientIDs": ["RO6E2Mkr"], "domain": "e5q7FvaA", "namespaces": ["Cp6he0fz"], "roleId": "jkPNNS0B"}], "Secret": "fgF6inIR", "TeamID": "sZ5hrqNz", "TokenAuthenticationType": "VszGVP5P", "TokenClaimsMapping": {"1iwhcf30": "C1KHRZHM"}, "TokenEndpoint": "Gy5vbfZv"}' \
    'YIFFctEK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 133 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["OLxSRxe0"], "assignedNamespaces": ["wmWBMcNi"], "domain": "WoobB6o6", "roleId": "alTQcP0E"}' \
    'pE9wGNVw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 134 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "kgfJJ2HI"}' \
    'alfzgRpT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 135 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    'f9lxF1JP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'RetrieveSSOLoginPlatformCredential' test.out

#- 136 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "BizXZtrG", "apiKey": "e8LyOH24", "appId": "nneZHFeR", "federationMetadataUrl": "ld0bGA7J", "isActive": true, "redirectUri": "WYzaEaim", "secret": "vokcWX59", "ssoUrl": "kwiYHgHT"}' \
    '6Ivd0fGp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'AddSSOLoginPlatformCredential' test.out

#- 137 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'U209nVRc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 138 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "lumQTFvr", "apiKey": "5rRyYzaN", "appId": "mz3PjMx2", "federationMetadataUrl": "T89NTrFR", "isActive": true, "redirectUri": "XFkruxeg", "secret": "pkcXCfzg", "ssoUrl": "cvv0WE5E"}' \
    'QhcomPS1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'UpdateSSOPlatformCredential' test.out

#- 139 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'E7cpsLgr' \
    '2zEnjyRN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'AdminGetUserByPlatformUserIDV3' test.out

#- 140 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'jEC3FMDc' \
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
    '{"userIds": ["Zvwwf8aU"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'AdminListUserIDByUserIDsV3' test.out

#- 143 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["98In31mF"], "isAdmin": false, "roles": ["lwKyGxTF"]}' \
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
    '{"listEmailAddressRequest": ["1l5q1Np0"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'AdminGetBulkUserByEmailAddressV3' test.out

#- 147 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'sT1X8J2e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'AdminGetUserByUserIdV3' test.out

#- 148 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "AWOzjmh9", "country": "UzIfnhoo", "dateOfBirth": "6xUmTleU", "displayName": "nJFM7Xho", "languageTag": "DxGik2JS", "userName": "fZ64wWeP"}' \
    'q6103PON' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'AdminUpdateUserV3' test.out

#- 149 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'KIS7F9em' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'AdminGetUserBanV3' test.out

#- 150 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "W4R15tAs", "comment": "iG31CEyU", "endDate": "OuOZhmnH", "reason": "kvek6Aa5", "skipNotif": false}' \
    'Nnoclxs9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AdminBanUserV3' test.out

#- 151 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": false, "skipNotif": true}' \
    'cvIpV7mC' \
    'YfWKjY9C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserBanV3' test.out

#- 152 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "sQYsGyhE", "emailAddress": "OntEkedM", "languageTag": "1A0bFqvj"}' \
    'xbT3YuVd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'AdminSendVerificationCodeV3' test.out

#- 153 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "aBN5RSjh", "ContactType": "cjuDvNrX", "LanguageTag": "L845jfh5", "validateOnly": true}' \
    'Z0hqJLjQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AdminVerifyAccountV3' test.out

#- 154 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'UmoYUnC8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'GetUserVerificationCode' test.out

#- 155 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    '49OBNuLZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminGetUserDeletionStatusV3' test.out

#- 156 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"enabled": true}' \
    'ofGAAaMp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'AdminUpdateUserDeletionStatusV3' test.out

#- 157 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "BQArU4RS", "country": "0FQRy5Qz", "dateOfBirth": "5VcyfBpH", "displayName": "jtvFwKSJ", "emailAddress": "yZeqvpev", "password": "cVXTxs9L", "validateOnly": false}' \
    'rIyx23Lh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'AdminUpgradeHeadlessAccountV3' test.out

#- 158 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'Ly7ds3g3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminDeleteUserInformationV3' test.out

#- 159 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'BuHTPF19' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminGetUserLoginHistoriesV3' test.out

#- 160 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 6, "Resource": "BYFws5Ya", "SchedAction": 8, "SchedCron": "OwWqW8Hi", "SchedRange": ["LpTi1W63"]}]}' \
    'HccgM5kY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserPermissionV3' test.out

#- 161 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 41, "Resource": "36JpTL55", "SchedAction": 96, "SchedCron": "4ws3KCyp", "SchedRange": ["lY1ocKDC"]}]}' \
    'VaqrVeeg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminAddUserPermissionsV3' test.out

#- 162 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 90, "Resource": "3uGDIIcv"}]' \
    'uuokt8TC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminDeleteUserPermissionBulkV3' test.out

#- 163 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '24' \
    'YoUanQT4' \
    'Mmznv7r2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AdminDeleteUserPermissionV3' test.out

#- 164 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'jthibgeC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserPlatformAccountsV3' test.out

#- 165 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'LX41qyOi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminGetListJusticePlatformAccounts' test.out

#- 166 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    'Lgd8Wy73' \
    '9QHzw0TE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminCreateJusticeUser' test.out

#- 167 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "zpd7TV5v", "platformUserId": "hMM2i3DM"}' \
    '6etfI7Tz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminLinkPlatformAccount' test.out

#- 168 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "C3sKmtsy"}' \
    'EKdO6HNm' \
    '3zGu71qT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminPlatformUnlinkV3' test.out

#- 169 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'SSJEbWlE' \
    'Tp9XOCA1' \
    'X3HHMTla' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminPlatformLinkV3' test.out

#- 170 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["kAWQfBuB"]' \
    'AOCjBfYC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminDeleteUserRolesV3' test.out

#- 171 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "cplye2Ga", "roleId": "PNzkrgBH"}]' \
    '4icml6L3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminSaveUserRoleV3' test.out

#- 172 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    '6Vg2F2Q9' \
    'aZDJg1OT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminAddUserRoleV3' test.out

#- 173 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    '8109ot70' \
    'TevJgsb2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserRoleV3' test.out

#- 174 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": true, "reason": "FfJ6qcHA"}' \
    'BdGtV9jA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminUpdateUserStatusV3' test.out

#- 175 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'Pqon7UmL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 176 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "Ny9PkF9S"}' \
    'nlbWNcAx' \
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
    '{"adminRole": true, "deletable": true, "isWildcard": true, "managers": [{"displayName": "qJtYC7rz", "namespace": "nwNdLhqX", "userId": "vXVnjvc0"}], "members": [{"displayName": "BMegJpW1", "namespace": "ZeuhpLX1", "userId": "BHZ4hnOm"}], "permissions": [{"action": 24, "resource": "yXu6XtjN", "schedAction": 57, "schedCron": "qYk9TPUK", "schedRange": ["cDTfR7dp"]}], "roleName": "UEo2Oe08"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminCreateRoleV3' test.out

#- 179 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'HpeJBfG0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminGetRoleV3' test.out

#- 180 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'nGZHe5lw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AdminDeleteRoleV3' test.out

#- 181 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": false, "isWildcard": false, "roleName": "PIxL9v4f"}' \
    'pCd0Uk5h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminUpdateRoleV3' test.out

#- 182 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    '1kP1pkkT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminGetRoleAdminStatusV3' test.out

#- 183 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    '08Cs6DdX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminUpdateAdminRoleStatusV3' test.out

#- 184 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'ZWowBgZi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminRemoveRoleAdminV3' test.out

#- 185 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'zMvwHszf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRoleManagersV3' test.out

#- 186 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "84MAmayJ", "namespace": "J6vzDTXx", "userId": "syIaTgp0"}]}' \
    'pwnEJL15' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminAddRoleManagersV3' test.out

#- 187 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "kxO4oVUP", "namespace": "ng5JsHAk", "userId": "I47jO1wu"}]}' \
    'AFuZcUwP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminRemoveRoleManagersV3' test.out

#- 188 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'teKdQgUT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminGetRoleMembersV3' test.out

#- 189 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "F33fYWZf", "namespace": "QMAnziTh", "userId": "aE2btn0u"}]}' \
    'p9GeTQ7X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminAddRoleMembersV3' test.out

#- 190 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "ymDSQNYX", "namespace": "NEpZyFhI", "userId": "eqiNHtVS"}]}' \
    'nhxby8F6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminRemoveRoleMembersV3' test.out

#- 191 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 46, "resource": "F8MhbJAY", "schedAction": 61, "schedCron": "DN1xszpp", "schedRange": ["R69nsKAS"]}]}' \
    '5zKsTRXd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminUpdateRolePermissionsV3' test.out

#- 192 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 2, "resource": "3v2fkZIk", "schedAction": 35, "schedCron": "06ojUtoV", "schedRange": ["JLGXekom"]}]}' \
    'vwD849mo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminAddRolePermissionsV3' test.out

#- 193 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["5vIkDZYr"]' \
    'YEf1xYnl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminDeleteRolePermissionsV3' test.out

#- 194 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '47' \
    'HHXjFoXt' \
    'wKW6AOnq' \
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
    'nWCuXMWq' \
    'G8fNprJx' \
    '82nAFexN' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 196 'UserAuthenticationV3' test.out

#- 197 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    'ou1AicsQ' \
    'jKx5Ljet' \
    'HEw0aCQp' \
    'U6EGOW0V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AuthenticationWithPlatformLinkV3' test.out

#- 198 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    'AI87DPH0' \
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
    'fLLiUqza' \
    'y0gET8T5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 202 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    '3yEej7Ds' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'RevokeUserV3' test.out

#- 203 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    'qsTvNKAX' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 203 'AuthorizeV3' test.out

#- 204 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'fqMJHGeH' \
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
    'aN2k1Eut' \
    'm9AAWDcD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'Change2faMethod' test.out

#- 207 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    'v3ISBgZC' \
    'Af2pWOWs' \
    '4I2lOHfi' \
    'True' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'Verify2faCode' test.out

#- 208 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    '4HraKYMt' \
    'gBmvCHMt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 209 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'F15a7T0I' \
    'heywiPE1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'AuthCodeRequestV3' test.out

#- 210 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'WUR1PTFf' \
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
    'JJ46kzfq' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 212 'TokenRevocationV3' test.out

#- 213 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'authorization_code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 213 'TokenGrantV3' test.out

#- 214 VerifyTokenV3
$PYTHON -m $MODULE 'iam-verify-token-v3' \
    'pbByIKoY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'VerifyTokenV3' test.out

#- 215 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'zYtTWJA3' \
    'nFCDgWOp' \
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
    'z3yPQfqb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 219 PublicListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["eVG7i4VT"]}' \
    'AhuFYhEg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 220 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    'QBb9Hni6' \
    'lDMj9gvk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'PublicGetUserByPlatformUserIDV3' test.out

#- 221 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    'BcQjQ56R' \
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
    '{"PasswordMD5Sum": "uAvUlMWp", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "ZxCe0Ksm", "policyId": "XtGBbKrV", "policyVersionId": "58TIThQ5"}], "authType": "2PYNknBC", "code": "jirw4hmf", "country": "MSl2bETu", "dateOfBirth": "FLFOfdl0", "displayName": "yRndbO78", "emailAddress": "R8ybYsHx", "password": "3BIgGuo8", "reachMinimumAge": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'PublicCreateUserV3' test.out

#- 224 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'ZA58OI2L' \
    'MYRX16nf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'CheckUserAvailability' test.out

#- 225 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["CJ833JKR"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'PublicBulkGetUsers' test.out

#- 226 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "NcdpuCxS", "languageTag": "DFWMVcsO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'PublicSendRegistrationCode' test.out

#- 227 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "ZlS0uler", "emailAddress": "U61drwLn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'PublicVerifyRegistrationCode' test.out

#- 228 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "gbZxOGxF", "languageTag": "wnmB60ea"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'PublicForgotPasswordV3' test.out

#- 229 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    '7XItZS8K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'GetAdminInvitationV3' test.out

#- 230 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "9T604oPa", "policyId": "jgyShKuL", "policyVersionId": "B7pQLZiW"}], "authType": "EMAILPASSWD", "country": "c8PVwShV", "dateOfBirth": "Qz7FY3h2", "displayName": "oVVScVv3", "password": "YTBM4teO", "reachMinimumAge": false}' \
    'qevsWvMh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'CreateUserFromInvitationV3' test.out

#- 231 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "iheE2KM7", "country": "Ctal5z7h", "dateOfBirth": "LiOYz1jF", "displayName": "fu1y1d77", "languageTag": "D8ZNOfHy", "userName": "enhbRZ4a"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'UpdateUserV3' test.out

#- 232 PublicUpdateUserV3
$PYTHON -m $MODULE 'iam-public-update-user-v3' \
    '{"avatarUrl": "9UjjjU0E", "country": "ggYLcGiE", "dateOfBirth": "DZbDl9Ze", "displayName": "ZH3M87v0", "languageTag": "FhdKDEfX", "userName": "RhaO0AYS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'PublicUpdateUserV3' test.out

#- 233 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "qvcV2Lqf", "emailAddress": "gCX28Je4", "languageTag": "kyPQjgDJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'PublicSendVerificationCodeV3' test.out

#- 234 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "NOEMtdEt", "contactType": "N4sEebnQ", "languageTag": "ucgaop5N", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'PublicUserVerificationV3' test.out

#- 235 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "dhurScNi", "country": "UxnJUewU", "dateOfBirth": "VhkGRRTg", "displayName": "LCb9evyw", "emailAddress": "ZywunLIm", "password": "NhyZsb7Y", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'PublicUpgradeHeadlessAccountV3' test.out

#- 236 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "hQbDxLRK", "password": "xzUtpKDC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'PublicVerifyHeadlessAccountV3' test.out

#- 237 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "8gl2otjU", "newPassword": "WKxgW6n8", "oldPassword": "AJaeqxTP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'PublicUpdatePasswordV3' test.out

#- 238 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'gZKFi3SB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'PublicCreateJusticeUser' test.out

#- 239 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'GlCD4ig5' \
    'ZRoJd1as' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'PublicPlatformLinkV3' test.out

#- 240 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "1Wkfh3l8"}' \
    'HyGWZTdp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'PublicPlatformUnlinkV3' test.out

#- 241 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'mTxPUBFj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'PublicPlatformUnlinkAllV3' test.out

#- 242 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'TIIKcXlx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'PublicWebLinkPlatform' test.out

#- 243 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'PfdDyjJ0' \
    'wwrYeljM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'PublicWebLinkPlatformEstablish' test.out

#- 244 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "yoeb3gsM", "emailAddress": "OMdqbt4P", "newPassword": "nuFr18ij"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'ResetPasswordV3' test.out

#- 245 PublicGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-public-get-user-by-user-id-v3' \
    'p3CmzrfV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'PublicGetUserByUserIdV3' test.out

#- 246 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    'Ia1vi9ok' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'PublicGetUserBanHistoryV3' test.out

#- 247 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'y2P7fIgB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 248 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'RSBlxuko' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'PublicGetUserLoginHistoriesV3' test.out

#- 249 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'OTCosjAX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'PublicGetUserPlatformAccountsV3' test.out

#- 250 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "o6ljBVW8", "platformUserId": "r7nyNcVl"}' \
    '6ZB3bGHu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'PublicLinkPlatformAccount' test.out

#- 251 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["pBuAL2av"], "requestId": "XKOjwGRJ"}' \
    'bZqXgQ9a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'PublicForceLinkPlatformWithProgression' test.out

#- 252 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'zOreTsvi' \
    'Zmgm0l8Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 253 PublicGetRolesV3
$PYTHON -m $MODULE 'iam-public-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'PublicGetRolesV3' test.out

#- 254 PublicGetRoleV3
$PYTHON -m $MODULE 'iam-public-get-role-v3' \
    'r4wmgiwI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'PublicGetRoleV3' test.out

#- 255 PublicGetMyUserV3
$PYTHON -m $MODULE 'iam-public-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'PublicGetMyUserV3' test.out

#- 256 PlatformAuthenticateSAMLV3Handler
$PYTHON -m $MODULE 'iam-platform-authenticate-samlv3-handler' \
    'F5Zx5TII' \
    'hBtL3zT6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'PlatformAuthenticateSAMLV3Handler' test.out

#- 257 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'xRqyV0tl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'LoginSSOClient' test.out

#- 258 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'LaMYL1p9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'LogoutSSOClient' test.out

#- 259 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["5v9mOiIF"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'AdminBulkCheckValidUserIDV4' test.out

#- 260 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "EdQ2RKeQ", "country": "y2WRztR5", "dateOfBirth": "qztuhVaJ", "displayName": "DWx2OdrU", "languageTag": "V7bhcKGI", "userName": "OZcB6NWf"}' \
    'fXkYzes2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'AdminUpdateUserV4' test.out

#- 261 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "xHp1ufZN", "emailAddress": "xhbsaSFt"}' \
    'TmbIf2hF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'AdminUpdateUserEmailAddressV4' test.out

#- 262 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    'QRmsi02m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'AdminDisableUserMFAV4' test.out

#- 263 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'elJQkLtV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'AdminListUserRolesV4' test.out

#- 264 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["2QnPsmhF"], "roleId": "VPtJTGig"}' \
    '12OdDnxX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'AdminUpdateUserRoleV4' test.out

#- 265 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["uJoZgOG4"], "roleId": "tOeWVMI9"}' \
    'K1eJ6xC2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'AdminAddUserRoleV4' test.out

#- 266 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["h6U8TgR2"], "roleId": "k2RkEr8X"}' \
    'bmQNuv80' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'AdminRemoveUserRoleV4' test.out

#- 267 AdminGetRolesV4
$PYTHON -m $MODULE 'iam-admin-get-roles-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'AdminGetRolesV4' test.out

#- 268 AdminCreateRoleV4
$PYTHON -m $MODULE 'iam-admin-create-role-v4' \
    '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "uffLGUWn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'AdminCreateRoleV4' test.out

#- 269 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'VBQPhwwH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'AdminGetRoleV4' test.out

#- 270 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'R0qyfFcS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'AdminDeleteRoleV4' test.out

#- 271 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "fe5eawFp"}' \
    'dHeH5p8Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'AdminUpdateRoleV4' test.out

#- 272 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 47, "resource": "8jy7nxGz", "schedAction": 80, "schedCron": "TBpmmjuE", "schedRange": ["EEyDtwbt"]}]}' \
    'A8xsmmca' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'AdminUpdateRolePermissionsV4' test.out

#- 273 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 80, "resource": "LdFifUk9", "schedAction": 30, "schedCron": "700jB0p4", "schedRange": ["HpK8pvuf"]}]}' \
    'SxYM0Vku' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'AdminAddRolePermissionsV4' test.out

#- 274 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["qOKrhvMw"]' \
    'vD04UY8g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'AdminDeleteRolePermissionsV4' test.out

#- 275 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'hvsmSrrJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'AdminListAssignedUsersV4' test.out

#- 276 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["zAi6FOuh"], "namespace": "QIBAbup1", "userId": "fpWsO6fW"}' \
    '468fWxqR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'AdminAssignUserToRoleV4' test.out

#- 277 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "kJDjfNhY", "userId": "DgVm0TCa"}' \
    'os4wyjaP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'AdminRevokeUserFromRoleV4' test.out

#- 278 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "P6ClekQG", "country": "m25KYmFZ", "dateOfBirth": "xQr4xbV6", "displayName": "3gcdU4vy", "languageTag": "IPJeRjCj", "userName": "7UK5nEmw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'AdminUpdateMyUserV4' test.out

#- 279 AdminDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'AdminDisableMyAuthenticatorV4' test.out

#- 280 AdminEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'AdminEnableMyAuthenticatorV4' test.out

#- 281 AdminGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-admin-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 282 AdminGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'AdminGetMyBackupCodesV4' test.out

#- 283 AdminGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'AdminGenerateMyBackupCodesV4' test.out

#- 284 AdminDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'AdminDisableMyBackupCodesV4' test.out

#- 285 AdminDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'AdminDownloadMyBackupCodesV4' test.out

#- 286 AdminEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'AdminEnableMyBackupCodesV4' test.out

#- 287 AdminGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-admin-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'AdminGetMyEnabledFactorsV4' test.out

#- 288 AdminMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-admin-make-factor-my-default-v4' \
    'sQtSfDqA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'AdminMakeFactorMyDefaultV4' test.out

#- 289 AdminInviteUserV4
$PYTHON -m $MODULE 'iam-admin-invite-user-v4' \
    '{"assignedNamespaces": ["4CysEX4V"], "emailAddresses": ["Oy0n2EkP"], "isAdmin": true, "roleId": "jC4ecHwt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'AdminInviteUserV4' test.out

#- 290 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "ayUaDh3m", "policyId": "2eX31qVP", "policyVersionId": "H2VHDznf"}], "authType": "EMAILPASSWD", "country": "Q1PY5uDk", "dateOfBirth": "Q8zpNRwy", "displayName": "cEAShpFL", "emailAddress": "pqAx1N5I", "password": "GebNuvyr", "passwordMD5Sum": "ghVdsSwD", "username": "c9NJRX9Z", "verified": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'PublicCreateTestUserV4' test.out

#- 291 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "C8sja1J7", "policyId": "eucGSSxZ", "policyVersionId": "JPto04wT"}], "authType": "EMAILPASSWD", "code": "I8isXmyA", "country": "GW2rZ7bY", "dateOfBirth": "vVW26Oay", "displayName": "sx72rwV3", "emailAddress": "MdXNVRDz", "password": "T2sBbflg", "passwordMD5Sum": "7cD247c1", "reachMinimumAge": false, "username": "18StYu6w"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'PublicCreateUserV4' test.out

#- 292 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "2We3Q6Pm", "policyId": "7RBkqWDP", "policyVersionId": "EP4CWnZJ"}], "authType": "EMAILPASSWD", "country": "XdiUv9ow", "dateOfBirth": "F1mQrc03", "displayName": "W7oOdpY5", "password": "ZJChQtpD", "reachMinimumAge": true, "username": "A2eexjq3"}' \
    'TfnJ6ryQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'CreateUserFromInvitationV4' test.out

#- 293 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "4wCg5Itn", "country": "9TYOR2n8", "dateOfBirth": "qFjjSZx0", "displayName": "FeRdmgOt", "languageTag": "a6pcKzSP", "userName": "fek369fI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'PublicUpdateUserV4' test.out

#- 294 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "M1tcxwt2", "emailAddress": "XqPFaIxB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'PublicUpdateUserEmailAddressV4' test.out

#- 295 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "gzRO8GKy", "country": "cdcXuULp", "dateOfBirth": "vuBNRzUb", "displayName": "H0hI7yCE", "emailAddress": "yjKXQPno", "password": "mAsHMpmD", "reachMinimumAge": true, "username": "t4tkWavQ", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 296 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "o17Qq6AF", "password": "dE7URb19", "username": "BcvWfPxH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'PublicUpgradeHeadlessAccountV4' test.out

#- 297 PublicDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'PublicDisableMyAuthenticatorV4' test.out

#- 298 PublicEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'PublicEnableMyAuthenticatorV4' test.out

#- 299 PublicGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-public-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 300 PublicGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'PublicGetMyBackupCodesV4' test.out

#- 301 PublicGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'PublicGenerateMyBackupCodesV4' test.out

#- 302 PublicDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'PublicDisableMyBackupCodesV4' test.out

#- 303 PublicDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'PublicDownloadMyBackupCodesV4' test.out

#- 304 PublicEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'PublicEnableMyBackupCodesV4' test.out

#- 305 PublicRemoveTrustedDeviceV4
$PYTHON -m $MODULE 'iam-public-remove-trusted-device-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'PublicRemoveTrustedDeviceV4' test.out

#- 306 PublicGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-public-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'PublicGetMyEnabledFactorsV4' test.out

#- 307 PublicMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-public-make-factor-my-default-v4' \
    'PQaUClyA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'PublicMakeFactorMyDefaultV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
