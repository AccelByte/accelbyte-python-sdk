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
iam-admin-update-input-validations '[{"field": "WX2LGVbf", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "blockedWord": ["rM04MG5l", "pNewTiNk", "iAi2k09Y"], "description": [{"language": "MxvETtO7", "message": ["maZ4XFEk", "6Z5cjz06", "5AaEZiW4"]}, {"language": "DSG7ZvVt", "message": ["6C7gGhjK", "nWyKHPRu", "uR4wQlvJ"]}, {"language": "pw3OPWuk", "message": ["r5XPTrpO", "U0xbwCf8", "93soBc3I"]}], "isCustomRegex": true, "letterCase": "MGPdH63X", "maxLength": 77, "maxRepeatingAlphaNum": 11, "maxRepeatingSpecialCharacter": 9, "minCharType": 72, "minLength": 32, "regex": "swDbeMVG", "specialCharacterLocation": "KKm3DGMP", "specialCharacters": ["gwoUcp00", "XZkUlAls", "m4JD95ow"]}}, {"field": "q1HfOzrS", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "blockedWord": ["m2jl0C7H", "yRZjraI4", "fM2WNaau"], "description": [{"language": "dKQbBnbl", "message": ["e1fkUtLH", "cmgegtU5", "ovsJ61F2"]}, {"language": "5xXFDdsk", "message": ["BQ1utFul", "fZFsKcAF", "a48P9ywL"]}, {"language": "MwrBU1xt", "message": ["sMaWEjW3", "eumVzfVd", "uwVVJkvB"]}], "isCustomRegex": false, "letterCase": "RAPjWWec", "maxLength": 83, "maxRepeatingAlphaNum": 37, "maxRepeatingSpecialCharacter": 8, "minCharType": 46, "minLength": 28, "regex": "b7927kTw", "specialCharacterLocation": "Lj2PBAIE", "specialCharacters": ["v0tg5Yre", "YGlorMTk", "g4GlWGXW"]}}, {"field": "FM9qj0n5", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "blockedWord": ["HiJQwvdY", "wudXrpv2", "jetztDhK"], "description": [{"language": "5EQbMXks", "message": ["zs4rbGxD", "JqS61njg", "FGOGFwBQ"]}, {"language": "1wrlPRNc", "message": ["BeM9ea7p", "4IeUvBOW", "wClDfThD"]}, {"language": "0xmA5Bnq", "message": ["BfqsDWjy", "QSGXcBkz", "j69KUbkz"]}], "isCustomRegex": false, "letterCase": "07mbbhbu", "maxLength": 85, "maxRepeatingAlphaNum": 39, "maxRepeatingSpecialCharacter": 6, "minCharType": 75, "minLength": 83, "regex": "ZlvNGWti", "specialCharacterLocation": "GRDKCIl1", "specialCharacters": ["tcCpXkU5", "06aCbekD", "SaaWP5h9"]}}]' --login_with_auth "Bearer foo"
iam-admin-reset-input-validations 'ylMBEoV3' --login_with_auth "Bearer foo"
iam-list-admins-v3 --login_with_auth "Bearer foo"
iam-admin-get-age-restriction-status-v3 --login_with_auth "Bearer foo"
iam-admin-update-age-restriction-config-v3 '{"ageRestriction": 6, "enable": true}' --login_with_auth "Bearer foo"
iam-admin-get-list-country-age-restriction-v3 --login_with_auth "Bearer foo"
iam-admin-update-country-age-restriction-v3 '{"ageRestriction": 89}' 'NPXrx9d0' --login_with_auth "Bearer foo"
iam-admin-get-banned-users-v3 --login_with_auth "Bearer foo"
iam-admin-ban-user-bulk-v3 '{"ban": "pPbG9ZZ2", "comment": "OWQAwBKK", "endDate": "pUgXSgJx", "reason": "cz0jpp6w", "skipNotif": true, "userIds": ["KH1xbJv2", "XJYQTb1i", "YwJjAzLW"]}' --login_with_auth "Bearer foo"
iam-admin-unban-user-bulk-v3 '{"bans": [{"banId": "e6BREyaJ", "userId": "wj6pXlnq"}, {"banId": "qGtYz9oF", "userId": "uJciNWYM"}, {"banId": "cVxxf34s", "userId": "o7BnI3Bg"}]}' --login_with_auth "Bearer foo"
iam-admin-get-bans-type-with-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-get-clients-by-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-create-client-v3 '{"audiences": ["wQZ0Qvme", "oDu1c39S", "miHe4256"], "baseUri": "uhv6lFIf", "clientId": "ZfxbYQb3", "clientName": "9o4Vbm6U", "clientPermissions": [{"action": 64, "resource": "eEyxNKn0", "schedAction": 21, "schedCron": "6LYCn6qu", "schedRange": ["hODh2lCn", "J4HjNGh0", "cxUZNxYT"]}, {"action": 89, "resource": "S06RG20W", "schedAction": 97, "schedCron": "Uuxh98oX", "schedRange": ["E8tuu7KD", "dJRwNuXg", "IB4db1Vg"]}, {"action": 61, "resource": "j7zKZGlX", "schedAction": 48, "schedCron": "JtUIkNci", "schedRange": ["irjdk6o1", "lcYWVhrO", "KKX0cpWa"]}], "clientPlatform": "sROciwEz", "deletable": false, "description": "D94oyoDh", "namespace": "j05M6G8S", "oauthAccessTokenExpiration": 33, "oauthAccessTokenExpirationTimeUnit": "M5MrxFLS", "oauthClientType": "6QcA9oBU", "oauthRefreshTokenExpiration": 69, "oauthRefreshTokenExpirationTimeUnit": "xP23s6or", "redirectUri": "lzfDB05z", "scopes": ["PgwoLpIH", "ahQNhqdp", "YaGfErDA"], "secret": "Xo6Izfvx", "twoFactorEnabled": false}' --login_with_auth "Bearer foo"
iam-admin-get-clientsby-namespaceby-idv3 '0PgKKfBE' --login_with_auth "Bearer foo"
iam-admin-delete-client-v3 'ikhMpPJU' --login_with_auth "Bearer foo"
iam-admin-update-client-v3 '{"audiences": ["FtDQo9Qj", "pQqGV6ha", "M6XeY2be"], "baseUri": "3cmBbrKM", "clientName": "XcXDIIuM", "clientPermissions": [{"action": 40, "resource": "SAGvmmcM", "schedAction": 71, "schedCron": "uMP3BGh0", "schedRange": ["bPiuyfNn", "TDznvHmy", "JUG4ZBFR"]}, {"action": 41, "resource": "ClYUcCof", "schedAction": 89, "schedCron": "coeXrPCE", "schedRange": ["Gyu7BmDz", "0aBvVbfp", "dg7ckU5J"]}, {"action": 96, "resource": "0pIGlQaT", "schedAction": 61, "schedCron": "UXrvsOkM", "schedRange": ["6Gf4aVuy", "TPNKVt8S", "NaOWpqRk"]}], "clientPlatform": "yK9eww9F", "deletable": true, "description": "UHeSymeR", "namespace": "YJq1cvxi", "oauthAccessTokenExpiration": 26, "oauthAccessTokenExpirationTimeUnit": "KQ3WJWn8", "oauthRefreshTokenExpiration": 93, "oauthRefreshTokenExpirationTimeUnit": "ZmxJyf8w", "redirectUri": "3K2Qw5Y9", "scopes": ["tJTWHlbn", "4sCMdhmR", "ZDCP7PfU"], "twoFactorEnabled": false}' 'LTWxPC29' --login_with_auth "Bearer foo"
iam-admin-update-client-permission-v3 '{"permissions": [{"action": 59, "resource": "oXMe50SY"}, {"action": 5, "resource": "KumKOaae"}, {"action": 88, "resource": "vz5pI06d"}]}' 'PM27d8J6' --login_with_auth "Bearer foo"
iam-admin-add-client-permissions-v3 '{"permissions": [{"action": 38, "resource": "BWufUwm6"}, {"action": 5, "resource": "0g8is8xn"}, {"action": 47, "resource": "MgeiCJNM"}]}' 'H01KPqLe' --login_with_auth "Bearer foo"
iam-admin-delete-client-permission-v3 '69' 'XR95CdSs' 'ak3Yb3KL' --login_with_auth "Bearer foo"
iam-retrieve-all-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-sso-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-third-party-login-platform-credential-v3 'XcSn7OG7' --login_with_auth "Bearer foo"
iam-add-third-party-login-platform-credential-v3 '{"ACSURL": "ccF5h5Qg", "AWSCognitoRegion": "ddJB6Gc9", "AWSCognitoUserPool": "sB6ibnUN", "AllowedClients": ["XmownUzk", "AQmsb9SV", "kio2DviT"], "AppId": "O3bSBsVO", "AuthorizationEndpoint": "Et9Laegp", "ClientId": "uqswEU9F", "Environment": "XzFCyPRk", "FederationMetadataURL": "WBUYVhG2", "GenericOauthFlow": true, "IsActive": false, "Issuer": "H3cqY5F1", "JWKSEndpoint": "gzXen9CM", "KeyID": "3bCmY41l", "NetflixCertificates": {"encryptedPrivateKey": "TIKzggpV", "encryptedPrivateKeyName": "rqhzbGN4", "publicCertificate": "h5PcoUc1", "publicCertificateName": "SgbmFB1O", "rootCertificate": "tOIB5dEZ", "rootCertificateName": "M9gExrRo"}, "OrganizationId": "R6SKsXK0", "PlatformName": "aU7JwcW0", "RedirectUri": "aWJzEjvY", "RegisteredDomains": [{"affectedClientIDs": ["7CgWyERp", "r2kyIl0s", "X4gMHZ69"], "domain": "ldhGu02f", "namespaces": ["ikqEPGMX", "QTyC74Sh", "pm7xzCqA"], "roleId": "7n1PQ4NO"}, {"affectedClientIDs": ["heXeLeoU", "rO2tsJrU", "KfTw0dbx"], "domain": "7fDQ7Ytc", "namespaces": ["JzkIxSpX", "eSKAPyzF", "6wdy2wX7"], "roleId": "0ZHcV2VQ"}, {"affectedClientIDs": ["E2DIwJR8", "yXlmmN1p", "jO8XutKJ"], "domain": "oz1A7JaQ", "namespaces": ["ywlNUl83", "f7v6tLk4", "MBBxappU"], "roleId": "8FS2jiqf"}], "Secret": "YlU4rCUq", "TeamID": "I5qzLdcL", "TokenAuthenticationType": "XPbK1Vox", "TokenClaimsMapping": {"2RdwFZJz": "4jG2Ug8F", "npducUav": "rxYQUAD1", "3Dp6ShOn": "8tWGGeiO"}, "TokenEndpoint": "2ClUUmJD", "scopes": ["bPe9Uhwf", "XWQOPgDH", "2bX7MyXR"]}' 'r9BTHtmo' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-credential-v3 '5gQtzTsq' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-credential-v3 '{"ACSURL": "e27B04pD", "AWSCognitoRegion": "RyMCY305", "AWSCognitoUserPool": "dfHhPTiu", "AllowedClients": ["pUXDQGSb", "jKcymDc1", "XjElimiY"], "AppId": "qsZ6rpgA", "AuthorizationEndpoint": "UD3GsyFv", "ClientId": "6PQirM7j", "Environment": "d75ByTfs", "FederationMetadataURL": "Mh8DX8uA", "GenericOauthFlow": true, "IsActive": true, "Issuer": "q7JbmGZr", "JWKSEndpoint": "CZ19hhfr", "KeyID": "SFJtY4To", "NetflixCertificates": {"encryptedPrivateKey": "jbMwB34p", "encryptedPrivateKeyName": "Qk2pMIPm", "publicCertificate": "cwoXx4eb", "publicCertificateName": "5HPUkrs5", "rootCertificate": "v9UXQxNh", "rootCertificateName": "fZFuonet"}, "OrganizationId": "21lXVbsR", "PlatformName": "VYDOkPUr", "RedirectUri": "y44Fsyck", "RegisteredDomains": [{"affectedClientIDs": ["6bpOLKJi", "jKEvMGeQ", "f2hO1pzt"], "domain": "f8IpxF0L", "namespaces": ["z1RISuOG", "QgEtLSBA", "gcIYOVmA"], "roleId": "aPJcvRcN"}, {"affectedClientIDs": ["uv8guHBR", "rYXEmsB3", "9iXEoJ4n"], "domain": "WPANhWcv", "namespaces": ["YxwTfpyB", "IrZUJ2IK", "zTwuAgFx"], "roleId": "PVg5H4ax"}, {"affectedClientIDs": ["jsLNZZ4h", "OmNFkK2T", "RUFkDXL8"], "domain": "7UozphiE", "namespaces": ["gOG0oHHz", "f22xLLnH", "50RlrL4e"], "roleId": "6pTZlxYp"}], "Secret": "w7jp7iwx", "TeamID": "QWD25llA", "TokenAuthenticationType": "51taZbnp", "TokenClaimsMapping": {"efLD5oyb": "SdRwFceE", "6mXtbVEc": "juPHq9s4", "lxJlWCp0": "uA517run"}, "TokenEndpoint": "SE9XcfCz", "scopes": ["We623MrV", "3FboC3r0", "lmNX1fLV"]}' 'JntBUAfk' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-domain-v3 '{"affectedClientIDs": ["aBKIe7mB", "O3gii4c9", "OoBHw01k"], "assignedNamespaces": ["eyc7IRJZ", "YCS0pxMU", "f6AwcjtQ"], "domain": "i4duPmRF", "roleId": "DArmAi0i"}' 'xvA9eu0o' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-domain-v3 '{"domain": "5GnMYZkf"}' 'jBcSLxzp' --login_with_auth "Bearer foo"
iam-retrieve-sso-login-platform-credential '2ej64Pvt' --login_with_auth "Bearer foo"
iam-add-sso-login-platform-credential '{"acsUrl": "MGkFJ7zp", "apiKey": "R7XXFLeN", "appId": "o9fTS9zs", "federationMetadataUrl": "y2cFlCWm", "isActive": true, "redirectUri": "fLeeSuwV", "secret": "7uWpIFp2", "ssoUrl": "1pi6n4b0"}' 'e5hiiDPI' --login_with_auth "Bearer foo"
iam-delete-sso-login-platform-credential-v3 'frsII5mR' --login_with_auth "Bearer foo"
iam-update-sso-platform-credential '{"acsUrl": "DxdNK7ec", "apiKey": "06kc7UVz", "appId": "PlpYbhol", "federationMetadataUrl": "IsUChnsC", "isActive": true, "redirectUri": "ORa06ETT", "secret": "q0mM4Hky", "ssoUrl": "qRL0bktA"}' '1cHnCVO2' --login_with_auth "Bearer foo"
iam-admin-get-user-by-platform-user-idv3 'E7S4vRG7' 'tWxj1dbD' --login_with_auth "Bearer foo"
iam-get-admin-users-by-role-id-v3 '7wNLraoJ' --login_with_auth "Bearer foo"
iam-admin-get-user-by-email-address-v3 --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-user-i-ds-v3 '{"userIds": ["3SnXsegS", "sRzGKERI", "VgdmDElI"]}' --login_with_auth "Bearer foo"
iam-admin-invite-user-v3 '{"emailAddresses": ["vRre8YOC", "zeCYuS1T", "IQ48YB1t"], "isAdmin": false, "roles": ["j4HFQKOf", "LnAampqB", "WPCQ8Nwd"]}' --login_with_auth "Bearer foo"
iam-admin-query-third-platform-link-history-v3 '1kha0JVt' --login_with_auth "Bearer foo"
iam-admin-list-users-v3 --login_with_auth "Bearer foo"
iam-admin-search-user-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-by-email-address-v3 '{"listEmailAddressRequest": ["jnvVjH8t", "hYx6JNrk", "v6B65fqz"]}' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v3 'L7PjStbx' --login_with_auth "Bearer foo"
iam-admin-update-user-v3 '{"avatarUrl": "J6PTy6IR", "country": "XBHR8eMO", "dateOfBirth": "pUJAIZqk", "displayName": "ivNQNf9U", "languageTag": "SX3LoJWv", "userName": "hC23iC07"}' 'PexUHbzl' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v3 'H8qi7eXt' --login_with_auth "Bearer foo"
iam-admin-ban-user-v3 '{"ban": "cTR1z1Ij", "comment": "XV6uDEOK", "endDate": "eZN6VA2J", "reason": "oi8pefKS", "skipNotif": false}' 'yhYoyN8F' --login_with_auth "Bearer foo"
iam-admin-update-user-ban-v3 '{"enabled": true, "skipNotif": false}' 'JPS3mvIg' '9niCrc8m' --login_with_auth "Bearer foo"
iam-admin-send-verification-code-v3 '{"context": "tQXstpqO", "emailAddress": "UhYpyuRQ", "languageTag": "sgsAyWvy"}' 'MKbRoTrt' --login_with_auth "Bearer foo"
iam-admin-verify-account-v3 '{"Code": "esbrZKh7", "ContactType": "xblYcI9H", "LanguageTag": "pSHcJfSn", "validateOnly": true}' 'WgrOM5QX' --login_with_auth "Bearer foo"
iam-get-user-verification-code 'mgJYd0nh' --login_with_auth "Bearer foo"
iam-admin-get-user-deletion-status-v3 'pyybGmpt' --login_with_auth "Bearer foo"
iam-admin-update-user-deletion-status-v3 '{"enabled": true}' 'rCsRA3KI' --login_with_auth "Bearer foo"
iam-admin-upgrade-headless-account-v3 '{"code": "iBz6s0kq", "country": "qp2AzR0Q", "dateOfBirth": "uAnGpaOB", "displayName": "DxYJya0g", "emailAddress": "9WIYMdrC", "password": "A8IXSvVT", "validateOnly": true}' '3sLoNBlR' --login_with_auth "Bearer foo"
iam-admin-delete-user-information-v3 '7n1sDy2a' --login_with_auth "Bearer foo"
iam-admin-get-user-login-histories-v3 'PxRJcXWG' --login_with_auth "Bearer foo"
iam-admin-reset-password-v3 '{"languageTag": "8X9LFgZ7", "newPassword": "NXdpoXzr", "oldPassword": "T1RCr0Sx"}' 'FYz4XInl' --login_with_auth "Bearer foo"
iam-admin-update-user-permission-v3 '{"Permissions": [{"Action": 7, "Resource": "K6NWNNGm", "SchedAction": 81, "SchedCron": "WXOq8zUX", "SchedRange": ["5xpHFZPc", "FYFpuc6B", "DUHzNRPd"]}, {"Action": 19, "Resource": "k8GEqYhE", "SchedAction": 81, "SchedCron": "940LD60o", "SchedRange": ["SXFS48v6", "Z95jJmha", "WvHz6Eri"]}, {"Action": 24, "Resource": "vjOw0RCu", "SchedAction": 46, "SchedCron": "9YRs5aJT", "SchedRange": ["1u8XDtCJ", "HZwGsnv0", "zWVwWVdT"]}]}' 'bUtsO194' --login_with_auth "Bearer foo"
iam-admin-add-user-permissions-v3 '{"Permissions": [{"Action": 91, "Resource": "E0hskyAA", "SchedAction": 34, "SchedCron": "ASydVuYM", "SchedRange": ["7uTozkFO", "Sca0L8Hz", "73x2w5Dh"]}, {"Action": 6, "Resource": "c3xcR8Sf", "SchedAction": 11, "SchedCron": "uB6mSKcI", "SchedRange": ["rzJ2ADVW", "hhuBzAvS", "11iNx0JP"]}, {"Action": 96, "Resource": "PpdLC5S0", "SchedAction": 25, "SchedCron": "j2AI1Ztd", "SchedRange": ["EyO7o0FK", "GMyWgrqO", "6eLZITi5"]}]}' '5GLdxNKE' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-bulk-v3 '[{"Action": 10, "Resource": "fQomT1R5"}, {"Action": 42, "Resource": "Q0c4UFI1"}, {"Action": 41, "Resource": "i6a7YEyA"}]' 'CMc1eRR8' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-v3 '28' 'ClnUNORd' 'kMLu6cnY' --login_with_auth "Bearer foo"
iam-admin-get-user-platform-accounts-v3 'qzgfGNsE' --login_with_auth "Bearer foo"
iam-admin-get-list-justice-platform-accounts 'qywnuY2G' --login_with_auth "Bearer foo"
iam-admin-get-user-mapping 'sRBxYqwe' '44idBjdG' --login_with_auth "Bearer foo"
iam-admin-create-justice-user 'CEszx1pW' 's5ZUP6G8' --login_with_auth "Bearer foo"
iam-admin-link-platform-account '{"platformId": "ACAawC92", "platformUserId": "xyolSPJQ"}' 'nGRAddXz' --login_with_auth "Bearer foo"
iam-admin-platform-unlink-v3 '{"platformNamespace": "ySHeC40K"}' 'JNXadobd' 'Fzcs15Fn' --login_with_auth "Bearer foo"
iam-admin-platform-link-v3 'ZMNHKEKL' 'cy5d0ohv' 'pvcs1cr6' --login_with_auth "Bearer foo"
iam-admin-get-third-party-platform-token-link-status-v3 'xqnCNulx' 'wLOZTl9P' '8fggTp4H' --login_with_auth "Bearer foo"
iam-admin-delete-user-roles-v3 '["HPm2prIk", "iuyBIkoY", "DzUgsELL"]' 'oD0XJx9d' --login_with_auth "Bearer foo"
iam-admin-save-user-role-v3 '[{"namespace": "L5kpqVsg", "roleId": "MtsQN65A"}, {"namespace": "GBINmD1t", "roleId": "J4yf37lJ"}, {"namespace": "uSpRVTdB", "roleId": "VZxzRFqE"}]' 'wiVBKJXe' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v3 'I2i7DXjD' 'jto16exF' --login_with_auth "Bearer foo"
iam-admin-delete-user-role-v3 'OILuPzsQ' 'zZP3JISD' --login_with_auth "Bearer foo"
iam-admin-update-user-status-v3 '{"enabled": true, "reason": "ZXkDYC3k"}' '5SDn2qSB' --login_with_auth "Bearer foo"
iam-admin-verify-user-without-verification-code-v3 'oNQoaIYV' --login_with_auth "Bearer foo"
iam-admin-update-client-secret-v3 '{"newSecret": "TAXkm8Cc"}' 'XHm6eXCA' --login_with_auth "Bearer foo"
iam-admin-get-roles-v3 --login_with_auth "Bearer foo"
iam-admin-create-role-v3 '{"adminRole": true, "deletable": true, "isWildcard": true, "managers": [{"displayName": "5yQ81QPN", "namespace": "bqzIEwkG", "userId": "51cnAjuE"}, {"displayName": "0ZtzyKCS", "namespace": "TOHgCW1I", "userId": "6cGtK67H"}, {"displayName": "Au3xs6ZI", "namespace": "aArPHIw7", "userId": "Rf2Qf4rB"}], "members": [{"displayName": "CJAvsTur", "namespace": "NhJTLjMH", "userId": "tu4cgaXp"}, {"displayName": "cCz8dPp4", "namespace": "9O4OJZfj", "userId": "mPVBQWmR"}, {"displayName": "6HtnNRRE", "namespace": "zcPHS0i5", "userId": "BHwO5M3o"}], "permissions": [{"action": 32, "resource": "ntqpxIHY", "schedAction": 87, "schedCron": "2CsZPxEq", "schedRange": ["F6sO0H3N", "qKMtztvJ", "ztCvRHU9"]}, {"action": 21, "resource": "Pvqyzf41", "schedAction": 26, "schedCron": "NsteK2Hj", "schedRange": ["bA5k3728", "iEJPwCx5", "Lyo16yAj"]}, {"action": 43, "resource": "z8c38A4F", "schedAction": 27, "schedCron": "kKDixL6w", "schedRange": ["xaB0QTog", "p67k576p", "FqWgvz6l"]}], "roleName": "W4SeVuiF"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v3 '1FDVRZXL' --login_with_auth "Bearer foo"
iam-admin-delete-role-v3 '0v8uXlVZ' --login_with_auth "Bearer foo"
iam-admin-update-role-v3 '{"deletable": false, "isWildcard": false, "roleName": "a3JpM3Dt"}' 'MU8kJfIB' --login_with_auth "Bearer foo"
iam-admin-get-role-admin-status-v3 '2N9n1sBR' --login_with_auth "Bearer foo"
iam-admin-update-admin-role-status-v3 'y9C19xAY' --login_with_auth "Bearer foo"
iam-admin-remove-role-admin-v3 'QfSfCzrc' --login_with_auth "Bearer foo"
iam-admin-get-role-managers-v3 'Nz9mNikk' --login_with_auth "Bearer foo"
iam-admin-add-role-managers-v3 '{"managers": [{"displayName": "Q2IKnbYm", "namespace": "5eRFO92W", "userId": "YDfhAvIh"}, {"displayName": "HAMYmRyv", "namespace": "6tsgDFiR", "userId": "h6MH8f6j"}, {"displayName": "hsRwbfch", "namespace": "jcGifj79", "userId": "PZhZjHN4"}]}' 'diEXfpkz' --login_with_auth "Bearer foo"
iam-admin-remove-role-managers-v3 '{"managers": [{"displayName": "Jc2J4Ur0", "namespace": "uA6U71FO", "userId": "QqbCvTul"}, {"displayName": "BXszN9xA", "namespace": "L5xuwaSm", "userId": "cNXsJShS"}, {"displayName": "HsoR8B4o", "namespace": "u7NRPsQa", "userId": "VwBjQ40p"}]}' 'A4hGBY8s' --login_with_auth "Bearer foo"
iam-admin-get-role-members-v3 'cgb3idHt' --login_with_auth "Bearer foo"
iam-admin-add-role-members-v3 '{"members": [{"displayName": "l8TiCeFM", "namespace": "peUUhJFb", "userId": "ewdvF445"}, {"displayName": "tAR2wmXy", "namespace": "DlrTkJEB", "userId": "14Js1DnX"}, {"displayName": "MHeqT6ca", "namespace": "aqWGb2ph", "userId": "xT9zeaA1"}]}' 'XURdPmVR' --login_with_auth "Bearer foo"
iam-admin-remove-role-members-v3 '{"members": [{"displayName": "ZLuy17r3", "namespace": "rCr4Ch7f", "userId": "1oHrKWk5"}, {"displayName": "t93VfFIf", "namespace": "TpnUtOGY", "userId": "peT4rvcz"}, {"displayName": "ocgvIfAD", "namespace": "9NU2Xuz3", "userId": "OLfIzcJn"}]}' 'JiFqFTrc' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v3 '{"permissions": [{"action": 33, "resource": "MPvJbv74", "schedAction": 68, "schedCron": "fKuw5Ife", "schedRange": ["Ed1JKjFz", "TzqiEPZV", "7EchQHNR"]}, {"action": 88, "resource": "CSv92gLz", "schedAction": 8, "schedCron": "TeI9101T", "schedRange": ["OVW9MVcD", "2SLQ9Lks", "gZV32qj9"]}, {"action": 54, "resource": "W7VrELDp", "schedAction": 17, "schedCron": "TbMp0hbl", "schedRange": ["LsyKGkHe", "gjhA4YVA", "oSKI8Br2"]}]}' 'kPOPVgF2' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v3 '{"permissions": [{"action": 88, "resource": "NPNw5F7y", "schedAction": 19, "schedCron": "YTcH9GIc", "schedRange": ["ezmp5xl6", "ID4w53iz", "dJrH7rj4"]}, {"action": 34, "resource": "ucwHuI0u", "schedAction": 24, "schedCron": "1oFYMUas", "schedRange": ["AZNFq9dt", "Dyp7FGra", "HCYJxhVq"]}, {"action": 20, "resource": "HkKoj6az", "schedAction": 51, "schedCron": "5nmM6KEx", "schedRange": ["NnOsg2WK", "wu7oTliV", "Jelesywn"]}]}' 'a62kkGQG' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v3 '["Rmdj9I9l", "WUSESOdZ", "Y9leLQ8a"]' 'Bjkzgquw' --login_with_auth "Bearer foo"
iam-admin-delete-role-permission-v3 '74' 'dY9jgsJi' 'F9NWer5L' --login_with_auth "Bearer foo"
iam-admin-get-my-user-v3 --login_with_auth "Bearer foo"
iam-user-authentication-v3 'MhwLJhHb' 'UnYdLcXR' 'ugHr2lI0' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-authentication-with-platform-link-v3 'HvA190ZK' 'jSuRY5xo' 'd7tV6A3P' 'VH836rLW' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v3 'eo9MAxvb' --login_with_auth "Bearer foo"
iam-request-one-time-linking-code-v3 'pe0zXcyg' --login_with_auth "Bearer foo"
iam-validate-one-time-linking-code-v3 't4ilGcsx' --login_with_auth "Bearer foo"
iam-request-token-by-one-time-link-code-response-v3 'qTIsk5R5' '9Sdi75JX' --login_with_auth "Bearer foo"
iam-get-country-location-v3 --login_with_auth "Bearer foo"
iam-logout --login_with_auth "Bearer foo"
iam-request-game-token-code-response-v3 'GVkNRQGr' --login_with_auth "Bearer foo"
iam-admin-retrieve-user-third-party-platform-token-v3 'W2v4gem1' '9RHUYSqf' --login_with_auth "Bearer foo"
iam-revoke-user-v3 'ZwBRsRqW' --login_with_auth "Bearer foo"
iam-authorize-v3 'wdq5rUIl' 'code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-introspection-v3 'RHKWCKXW' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-jwksv3 --login_with_auth "Bearer foo"
iam-send-mfa-authentication-code '07f6m6wX' 'W0il4wBa' 'MDqrxSVs' --login_with_auth "Bearer foo"
iam-change2fa-method 'KDi1UmkX' 'drg9Btjf' --login_with_auth "Bearer foo"
iam-verify2fa-code '0auvF4v1' 'rxgF4RWH' 'EhvFNb0s' 'true' --login_with_auth "Bearer foo"
iam-retrieve-user-third-party-platform-token-v3 'Ue98lPKx' 'PqsChFWe' --login_with_auth "Bearer foo"
iam-auth-code-request-v3 'KYYANffc' 'bSJddT4J' --login_with_auth "Bearer foo"
iam-platform-token-grant-v3 'Kft4l8sp' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-revocation-list-v3 --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-revocation-v3 'B0Sm5Qmc' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-grant-v3 'client_credentials' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-verify-token-v3 'GmTWUEKb' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-platform-authentication-v3 'jnyMfMeE' 'O57ve3rz' --login_with_auth "Bearer foo"
iam-public-get-input-validations --login_with_auth "Bearer foo"
iam-public-get-country-age-restriction-v3 '4aUpaSAo' --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-public-v3 --login_with_auth "Bearer foo"
iam-retrieve-active-oidc-clients-public-v3 'dmYyzX3G' --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["tkCZ2VPF", "UaYMpcIk", "iO1GYRKl"]}' 'O2vis0vf' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv3 'ITqYCZRn' 'b9E84jeZ' --login_with_auth "Bearer foo"
iam-public-get-async-status 'Z3EOhK6v' --login_with_auth "Bearer foo"
iam-public-search-user-v3 --login_with_auth "Bearer foo"
iam-public-create-user-v3 '{"PasswordMD5Sum": "KMZ20Snx", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "IBNxBAuB", "policyId": "8BGLyBST", "policyVersionId": "k3i61Grz"}, {"isAccepted": true, "localizedPolicyVersionId": "IYiBU9te", "policyId": "2HejJFby", "policyVersionId": "B3Je5qFB"}, {"isAccepted": false, "localizedPolicyVersionId": "JNKY1LNr", "policyId": "siUNYxEr", "policyVersionId": "ro3uTw0Y"}], "authType": "KNIsW01q", "code": "tSM6y2JQ", "country": "eLteajjt", "dateOfBirth": "8eNuU6pj", "displayName": "wDAtJ5UV", "emailAddress": "UIVWOtWd", "password": "ureS25Qa", "reachMinimumAge": true}' --login_with_auth "Bearer foo"
iam-check-user-availability 'mrDZKA1y' 'svIQpI5q' --login_with_auth "Bearer foo"
iam-public-bulk-get-users '{"userIds": ["PsqndPej", "USg5qqTK", "b0UoDuTV"]}' --login_with_auth "Bearer foo"
iam-public-send-registration-code '{"emailAddress": "CVsV9Wod", "languageTag": "d1JcRmQP"}' --login_with_auth "Bearer foo"
iam-public-verify-registration-code '{"code": "jalRakxG", "emailAddress": "nPAGvYuG"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v3 '{"emailAddress": "TkXuratb", "languageTag": "d29wUeBS"}' --login_with_auth "Bearer foo"
iam-get-admin-invitation-v3 'j7AXzISY' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v3 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "0fLjcy9L", "policyId": "VJ9RcwPS", "policyVersionId": "yvLEAf8p"}, {"isAccepted": true, "localizedPolicyVersionId": "9kA1lEZc", "policyId": "Jkv4upY2", "policyVersionId": "fRMBKrSN"}, {"isAccepted": false, "localizedPolicyVersionId": "IuCnNRKG", "policyId": "ZNIO19Oc", "policyVersionId": "BzRla0Jg"}], "authType": "EMAILPASSWD", "country": "iiScZQbf", "dateOfBirth": "EQbgeeye", "displayName": "i2HG0lwX", "password": "DR5krK8b", "reachMinimumAge": true}' 'Yam2XwhR' --login_with_auth "Bearer foo"
iam-update-user-v3 '{"avatarUrl": "zS4JW4Vl", "country": "OX5eyhAv", "dateOfBirth": "SEjJPl5G", "displayName": "eE8zpH1x", "languageTag": "5jd4zaw0", "userName": "MzCAGAI0"}' --login_with_auth "Bearer foo"
iam-public-partial-update-user-v3 '{"avatarUrl": "0R6m9U0s", "country": "ACGjgu48", "dateOfBirth": "paMFVfX5", "displayName": "ZnYttf2O", "languageTag": "dCG7vbBR", "userName": "JXKosG3e"}' --login_with_auth "Bearer foo"
iam-public-send-verification-code-v3 '{"context": "k9P84tye", "emailAddress": "NfvHjlgy", "languageTag": "nJ7afTv3"}' --login_with_auth "Bearer foo"
iam-public-user-verification-v3 '{"code": "4k385XZc", "contactType": "TliSlQiR", "languageTag": "chhvcBhz", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v3 '{"code": "yvJ8b5Nw", "country": "cFgVkt1R", "dateOfBirth": "WTMYG6tn", "displayName": "nlIhAfbb", "emailAddress": "ad7QYc1y", "password": "YYs0odoP", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-verify-headless-account-v3 '{"emailAddress": "SoaNhRsy", "password": "FPzucpTH"}' --login_with_auth "Bearer foo"
iam-public-update-password-v3 '{"languageTag": "CMb9Kkfk", "newPassword": "FN0deRHg", "oldPassword": "LLPWjVZp"}' --login_with_auth "Bearer foo"
iam-public-create-justice-user 'qtdUnxwj' --login_with_auth "Bearer foo"
iam-public-platform-link-v3 'lWZYxE1X' 'P2s9rEDT' --login_with_auth "Bearer foo"
iam-public-platform-unlink-v3 '{"platformNamespace": "b4C3LSQA"}' 'ybkhKCO4' --login_with_auth "Bearer foo"
iam-public-platform-unlink-all-v3 'kpltuBI7' --login_with_auth "Bearer foo"
iam-public-force-platform-link-v3 '092kpKzp' 'WOL1umsM' --login_with_auth "Bearer foo"
iam-public-web-link-platform 'U4uJbYfL' --login_with_auth "Bearer foo"
iam-public-web-link-platform-establish 'ujzvPo3H' 'kbpQQO8N' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"code": "PHb4QEzE", "emailAddress": "UicwsoyZ", "newPassword": "AeVOLxez"}' --login_with_auth "Bearer foo"
iam-public-get-user-by-user-id-v3 'dngx3yTX' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 'CIheNLYc' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 'RHqc9MWz' --login_with_auth "Bearer foo"
iam-public-get-user-information-v3 'TFS4CMte' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 'SPPCmtAy' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 'LkgX11Zb' --login_with_auth "Bearer foo"
iam-public-list-justice-platform-accounts-v3 'Z5BrqSBB' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "tM8DnXJF", "platformUserId": "VrzvrSnY"}' 'ZVQDuCpO' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["bzuk3Oj8", "MnOX1YfR", "kwfwcoAg"], "requestId": "67OSindx"}' 'e5q4OuCY' --login_with_auth "Bearer foo"
iam-public-get-publisher-user-v3 'bpV03leM' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 'kO2V3cSz' 'IZ3YuImN' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 '0Fgz6wzP' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-public-get-link-headless-account-to-my-account-conflict-v3 'erfIC00i' --login_with_auth "Bearer foo"
iam-link-headless-account-to-my-account-v3 '{"chosenNamespaces": ["etaBTwgm", "y7qV76eA", "sfGxboM8"], "oneTimeLinkCode": "iRBuWn9q"}' --login_with_auth "Bearer foo"
iam-public-send-verification-link-v3 '{"languageTag": "w260Cx67"}' --login_with_auth "Bearer foo"
iam-public-verify-user-by-link-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler 'jZgMibhn' 'wVf0R6Ts' --login_with_auth "Bearer foo"
iam-login-sso-client 'jKP56YE3' --login_with_auth "Bearer foo"
iam-logout-sso-client 'QxM78qb9' --login_with_auth "Bearer foo"
iam-request-game-token-response-v3 'QQd3DOOO' --login_with_auth "Bearer foo"
iam-admin-get-devices-by-user-v4 --login_with_auth "Bearer foo"
iam-admin-get-banned-devices-v4 --login_with_auth "Bearer foo"
iam-admin-get-user-device-bans-v4 'NuXMkAWS' --login_with_auth "Bearer foo"
iam-admin-ban-device-v4 '{"comment": "5bY2qvvV", "deviceId": "qyHl71zj", "deviceType": "nV9vMgqr", "enabled": true, "endDate": "oAawDkOF", "ext": {"PuLnhU1F": {}, "G0vJzhpD": {}, "rFHsDQcj": {}}, "reason": "RUYiMPKQ"}' --login_with_auth "Bearer foo"
iam-admin-get-device-ban-v4 'ESxBFf0M' --login_with_auth "Bearer foo"
iam-admin-update-device-ban-v4 '{"enabled": false}' 'CvHmEusN' --login_with_auth "Bearer foo"
iam-admin-generate-report-v4 'b7JRon6J' --login_with_auth "Bearer foo"
iam-admin-get-device-types-v4 --login_with_auth "Bearer foo"
iam-admin-get-device-bans-v4 'TyioZyNX' --login_with_auth "Bearer foo"
iam-admin-decrypt-device-v4 'rZg7y1za' --login_with_auth "Bearer foo"
iam-admin-unban-device-v4 'RFmg6D9P' --login_with_auth "Bearer foo"
iam-admin-get-users-by-device-v4 'IDJscqTl' --login_with_auth "Bearer foo"
iam-admin-create-test-users-v4 '{"count": 16}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["lQdTNDlD", "I10lE3fx", "YxV14QPJ"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "I12HamPA", "country": "kGgbR2Hs", "dateOfBirth": "lPtnhLZm", "displayName": "A5MG3fod", "languageTag": "640Ls0zw", "userName": "A4ggHBaH"}' 'qXT46ZBr' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "lyRRXuG8", "emailAddress": "DECAAppw"}' 'CujL8IZ2' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 'qwZmb26j' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 'D89hm5zv' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["g7YCn7rw", "CcDZbUZE", "stZazzSf"], "roleId": "l9U3HeII"}' 'arUtKmAU' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["q8wzv5VN", "2jZiux3H", "bvIwoyiu"], "roleId": "VxugODzt"}' 'AZBxpD0K' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["9P6wQvt7", "o6U2CAxm", "kuLs8Ikz"], "roleId": "OiVqn0D3"}' 'sRGWKr6n' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "T0TnpUIl"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 'k7vN7zSd' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 'fY9dTSCX' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "ibe977Vk"}' 'IbqpYxNJ' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 0, "resource": "hvuesx1w", "schedAction": 2, "schedCron": "a9ew2Mjm", "schedRange": ["n1jZNk7d", "JvYgJi3q", "hshAfEwY"]}, {"action": 26, "resource": "HnEQyBYv", "schedAction": 46, "schedCron": "yFkNascf", "schedRange": ["0zJgr33x", "aJa2JSZo", "zIk7ZrT3"]}, {"action": 39, "resource": "oQqvaagG", "schedAction": 95, "schedCron": "AFFghoFD", "schedRange": ["c25nR2TZ", "mLPv82QK", "zQxu7RwW"]}]}' 'aCnjZvac' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 27, "resource": "P2OsoufG", "schedAction": 8, "schedCron": "Fr9MCZYO", "schedRange": ["BGslutfr", "RBuDmCy4", "EUNBBlAo"]}, {"action": 95, "resource": "VRTrA9hV", "schedAction": 60, "schedCron": "ioz1uRjP", "schedRange": ["YVetP4T7", "F2pRiyDP", "49FGwPPf"]}, {"action": 71, "resource": "ZFTFoZJL", "schedAction": 62, "schedCron": "EmDIJI1T", "schedRange": ["ZuTIdCQG", "hjS6Sx12", "jsRgM3Fi"]}]}' 'oce4WPMS' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["c41IjqTg", "JJsxqOtf", "cPfwH3v1"]' 'CGRgvLUs' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'YaiPOLao' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["ZDn677uZ", "FdijBAdw", "Qz77YtS8"], "namespace": "Q5eVYzG1", "userId": "OaPNkcZa"}' 'AQzWYBTl' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "a6pM7eTd", "userId": "LgasfeYt"}' 'YpPPmX9T' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "UXgPUFuN", "country": "vVonZQwx", "dateOfBirth": "VGlQfOZS", "displayName": "gYoj88mU", "languageTag": "zQdTAiuR", "userName": "pdVARcUh"}' --login_with_auth "Bearer foo"
iam-admin-disable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-admin-enable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-admin-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-admin-get-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-generate-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-download-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-enable-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-send-my-mfa-email-code-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-email-v4 --login_with_auth "Bearer foo"
iam-admin-enable-my-email-v4 'NPKNqDts' --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 'I9V3PlkV' --login_with_auth "Bearer foo"
iam-admin-invite-user-v4 '{"assignedNamespaces": ["Tm9MvyuI", "naedy7wn", "rRW2GnFe"], "emailAddresses": ["sdEMRuFM", "KTDk4vV1", "TX67Pay5"], "isAdmin": false, "roleId": "8ibbG4U2"}' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "6bm0rqL2", "policyId": "VnNq2TJA", "policyVersionId": "ezTFr1yz"}, {"isAccepted": true, "localizedPolicyVersionId": "UbSFx6Ii", "policyId": "T0WpAzwJ", "policyVersionId": "umKBKkex"}, {"isAccepted": true, "localizedPolicyVersionId": "KlIgjSei", "policyId": "0PxNnCtz", "policyVersionId": "ovIBzLIO"}], "authType": "EMAILPASSWD", "country": "OFvNviuK", "dateOfBirth": "DzwjPFDe", "displayName": "9CPBLPnj", "emailAddress": "dodpasoi", "password": "1jVLyywz", "passwordMD5Sum": "7aK0EnxN", "username": "pVGvKcpe", "verified": true}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "Avh8o3tB", "policyId": "qSLWdrwm", "policyVersionId": "gJo6Lb44"}, {"isAccepted": false, "localizedPolicyVersionId": "vO45jVds", "policyId": "RwzLtAY8", "policyVersionId": "jYpkhLPt"}, {"isAccepted": false, "localizedPolicyVersionId": "NIRQ8GDy", "policyId": "wNjFJdCv", "policyVersionId": "ZSTZyasD"}], "authType": "EMAILPASSWD", "code": "P820brsC", "country": "wSZxwcD7", "dateOfBirth": "HtLphq7w", "displayName": "m34CAp9k", "emailAddress": "P7pJuJPt", "password": "u6QnjEQV", "passwordMD5Sum": "0f07oW9u", "reachMinimumAge": false, "username": "BjBotxtb"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "3Sk1icTW", "policyId": "ApyaHkmV", "policyVersionId": "ioY0Qhc1"}, {"isAccepted": false, "localizedPolicyVersionId": "6vHuRM6g", "policyId": "nd9qJhLp", "policyVersionId": "uzWRoz8F"}, {"isAccepted": true, "localizedPolicyVersionId": "HYoIYTFo", "policyId": "vnlgNspY", "policyVersionId": "r1yZJ1K7"}], "authType": "EMAILPASSWD", "country": "xl830Yfc", "dateOfBirth": "YOibXolK", "displayName": "Et5nHcCs", "password": "IDU4zrFy", "reachMinimumAge": true, "username": "9C2S07mN"}' 'Hsu85gMV' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "RMamQj8a", "country": "XEhEWb2z", "dateOfBirth": "V0YZLqGa", "displayName": "jiodorrA", "languageTag": "28TdUMYm", "userName": "2ZI8LSuq"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "F8Pu7LUh", "emailAddress": "Jy01f8kx"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "eqjhb6mE", "country": "347t3PHs", "dateOfBirth": "f6zUO7yP", "displayName": "rYFMcR7P", "emailAddress": "3ACHs1Yc", "password": "n28EJyvw", "reachMinimumAge": false, "username": "rL6H6w2D", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"emailAddress": "FHbk2TOW", "password": "8amXKQV0", "username": "8MyddIWq"}' --login_with_auth "Bearer foo"
iam-public-disable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-public-enable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-public-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-public-get-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-generate-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-disable-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-download-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-enable-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-remove-trusted-device-v4 --login_with_auth "Bearer foo"
iam-public-send-my-mfa-email-code-v4 --login_with_auth "Bearer foo"
iam-public-disable-my-email-v4 --login_with_auth "Bearer foo"
iam-public-enable-my-email-v4 '4Qn6UBAg' --login_with_auth "Bearer foo"
iam-public-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-public-make-factor-my-default-v4 'NvxdKiAY' --login_with_auth "Bearer foo"
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
echo "1..347"

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
    '[{"field": "24F2Tkql", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "blockedWord": ["faGIK56o", "qaQT62Dv", "8f3AcAQH"], "description": [{"language": "h7yP0i9C", "message": ["mi1Of07e", "3Uw4Ae8p", "QslcfiD3"]}, {"language": "68dLXlLY", "message": ["aoJKFIpZ", "Hdea56wK", "ThJWDyvm"]}, {"language": "P3Cl52D2", "message": ["bKQgKKFR", "oMsG45S4", "VTzBOZqu"]}], "isCustomRegex": true, "letterCase": "WyXJmPY4", "maxLength": 1, "maxRepeatingAlphaNum": 20, "maxRepeatingSpecialCharacter": 46, "minCharType": 42, "minLength": 60, "regex": "fJnBZHw4", "specialCharacterLocation": "1LDLu7xA", "specialCharacters": ["wunn1fw4", "cL5sXE7F", "7RtFowHA"]}}, {"field": "oXJtV290", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "blockedWord": ["qeGbOw3E", "hSneqTw2", "1EUMujtz"], "description": [{"language": "8YfirXbu", "message": ["7X8h4pyp", "wWH50dfP", "Xm7V9fmI"]}, {"language": "OPLrmeIM", "message": ["SHE7xkiX", "WeLlo1mh", "hIpf21De"]}, {"language": "8wFAsKAD", "message": ["fpszhg9G", "C0A6JfNo", "Txj1eMuK"]}], "isCustomRegex": false, "letterCase": "rdygtACY", "maxLength": 91, "maxRepeatingAlphaNum": 86, "maxRepeatingSpecialCharacter": 49, "minCharType": 23, "minLength": 7, "regex": "88laM9dT", "specialCharacterLocation": "vWR5bTqd", "specialCharacters": ["tGjsHw26", "sNjYrdP4", "l4qjcXIM"]}}, {"field": "AFw2fhJ5", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "blockedWord": ["ylEAVrxr", "Qh0hmm5T", "RqhutdFQ"], "description": [{"language": "lLXMTvgZ", "message": ["k90bVysU", "PWmoewZj", "yGbr7TAC"]}, {"language": "YALdnXPJ", "message": ["pN3kDzpk", "DCz0WPA9", "dB1OxM1j"]}, {"language": "2y3o1uLS", "message": ["XBhPFqFF", "ot19Mcin", "RBSLNXxE"]}], "isCustomRegex": true, "letterCase": "OomJm9yW", "maxLength": 68, "maxRepeatingAlphaNum": 8, "maxRepeatingSpecialCharacter": 77, "minCharType": 49, "minLength": 41, "regex": "KpV4B0kZ", "specialCharacterLocation": "ExY93xk8", "specialCharacters": ["KDuSEyfg", "vLcrEi75", "XhTknAyp"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    '6zDQGJaz' \
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
    '{"ageRestriction": 61, "enable": false}' \
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
    '{"ageRestriction": 8}' \
    'fT9lxyDi' \
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
    '{"ban": "aV69O1KR", "comment": "qRJIA1qk", "endDate": "NnPTVHTj", "reason": "6fpTRVPu", "skipNotif": true, "userIds": ["HbKkaw16", "CDG0pLAC", "mQVahIRA"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "z38E4Nf5", "userId": "394FVB6G"}, {"banId": "nR2u6Knw", "userId": "lVezMtqI"}, {"banId": "9uqGirGz", "userId": "kHzAe2EA"}]}' \
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
    '{"audiences": ["GkY6K1SO", "5y3v5E0A", "awbpHcnz"], "baseUri": "4alLvEQx", "clientId": "Vex3QfA6", "clientName": "XksvPK6O", "clientPermissions": [{"action": 86, "resource": "1TjCd8XY", "schedAction": 45, "schedCron": "dOK8GgTn", "schedRange": ["NIhqMBp6", "mLWy0Dpt", "vEEDt2S9"]}, {"action": 90, "resource": "36cishxt", "schedAction": 69, "schedCron": "5qDuvQzV", "schedRange": ["7vdnbF66", "icnsZBnk", "19cqBsbW"]}, {"action": 57, "resource": "AQtSPEP5", "schedAction": 36, "schedCron": "1CW7gnd6", "schedRange": ["8pEj6NDD", "ftaPDboG", "IUFhagMD"]}], "clientPlatform": "2n9OD9rc", "deletable": true, "description": "EfeSn4Ll", "namespace": "btqERhyU", "oauthAccessTokenExpiration": 59, "oauthAccessTokenExpirationTimeUnit": "MlRXj6e8", "oauthClientType": "kZIBRGEl", "oauthRefreshTokenExpiration": 58, "oauthRefreshTokenExpirationTimeUnit": "ZmdzTZmt", "redirectUri": "omNsSInu", "scopes": ["Br2K6qWe", "mJ2Hi7Ns", "wgBOXnGJ"], "secret": "npJAELJ2", "twoFactorEnabled": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    'yl5km1M1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    '3eusa98x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["UX52YKdQ", "xedvrm7i", "zOYLXdOs"], "baseUri": "ejYmn98n", "clientName": "IJRyLzI4", "clientPermissions": [{"action": 51, "resource": "THle429p", "schedAction": 33, "schedCron": "iIgQn2BH", "schedRange": ["TGf79gVh", "rpFKHqZZ", "xzgDCbEV"]}, {"action": 90, "resource": "4udYonWm", "schedAction": 22, "schedCron": "0ItR2bGp", "schedRange": ["ziG0q2p4", "cLU3338j", "lKZanFfN"]}, {"action": 93, "resource": "NJroBYKg", "schedAction": 84, "schedCron": "juaAIGEd", "schedRange": ["NbXLUiKw", "esilWa9n", "ZymzvZdF"]}], "clientPlatform": "8LWGD4kW", "deletable": true, "description": "sRqbvRey", "namespace": "Mr68cul2", "oauthAccessTokenExpiration": 69, "oauthAccessTokenExpirationTimeUnit": "i092f16w", "oauthRefreshTokenExpiration": 85, "oauthRefreshTokenExpirationTimeUnit": "edkQGiM6", "redirectUri": "4Kxmwm51", "scopes": ["HKcZnwVZ", "O41aIs6o", "RRcEzgzV"], "twoFactorEnabled": false}' \
    '0MPRpKAh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 29, "resource": "W9jcz4b0"}, {"action": 59, "resource": "zk8IDrCM"}, {"action": 23, "resource": "zN3V7Qqa"}]}' \
    'mThVU49b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 49, "resource": "WaXIWAH1"}, {"action": 46, "resource": "8am7yilY"}, {"action": 77, "resource": "ymko9eLq"}]}' \
    'JchBHC8W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '29' \
    'SQS83tXd' \
    'zRNAIc6C' \
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
    '0QFxNNHE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "lvqaFj68", "AWSCognitoRegion": "6tbxTJQB", "AWSCognitoUserPool": "9ttexwnC", "AllowedClients": ["IBevG465", "8cyLUChZ", "kQ4ALh1F"], "AppId": "G8HZYqbc", "AuthorizationEndpoint": "liWXYLGg", "ClientId": "daiixKHE", "Environment": "Npfvlpzt", "FederationMetadataURL": "oyN0QO7J", "GenericOauthFlow": true, "IsActive": true, "Issuer": "pv5G6aFU", "JWKSEndpoint": "qacr9e7m", "KeyID": "NBz0gy5x", "NetflixCertificates": {"encryptedPrivateKey": "ayss87HF", "encryptedPrivateKeyName": "5uFqOZrj", "publicCertificate": "oo0gRSuH", "publicCertificateName": "mHSBsv6t", "rootCertificate": "yRbIxrZb", "rootCertificateName": "nDevENni"}, "OrganizationId": "iuHk9paf", "PlatformName": "agfWusbD", "RedirectUri": "HUau9CMW", "RegisteredDomains": [{"affectedClientIDs": ["nWX2GDoL", "Fk3uhNuC", "v7xQ1Ivc"], "domain": "nV2hbDWl", "namespaces": ["to6HHTk3", "W8Zypp4P", "KQROiecv"], "roleId": "8TT1M1rt"}, {"affectedClientIDs": ["wM4MT3Q9", "epKwZMAm", "VZkKQ85u"], "domain": "c2xApqJv", "namespaces": ["3IugLxNL", "eidevnxp", "LkOB8XDk"], "roleId": "s3CHf83x"}, {"affectedClientIDs": ["AOXUulix", "Ug67cXRz", "iToLYUIJ"], "domain": "j3OMZIJH", "namespaces": ["QCNQgd0Y", "jFybMGmE", "kRCCjQhL"], "roleId": "EZUZBHJS"}], "Secret": "FbPMQNtC", "TeamID": "S1iPVn5H", "TokenAuthenticationType": "hjeVYGu2", "TokenClaimsMapping": {"m44InxTE": "Zvn17pCJ", "RVtVjtfc": "tQoohaI0", "hVo27Zur": "vFbdzHs8"}, "TokenEndpoint": "iUF0lyLY", "scopes": ["HeaSWSOH", "ujQgSrF2", "hQlZqyO6"]}' \
    'D8ZA4mit' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    'bQN5f0m8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "VkcktpN3", "AWSCognitoRegion": "AuOn3QVH", "AWSCognitoUserPool": "USOYPAHH", "AllowedClients": ["dY4q6Dfn", "YtIolVkw", "oiN8cyVQ"], "AppId": "Ik2YvRXA", "AuthorizationEndpoint": "KXYn6wsU", "ClientId": "DaHiq7dZ", "Environment": "7ikQKy3z", "FederationMetadataURL": "QRo59kck", "GenericOauthFlow": true, "IsActive": true, "Issuer": "kL1e6OoR", "JWKSEndpoint": "nNZ31PAC", "KeyID": "hpvXZeB3", "NetflixCertificates": {"encryptedPrivateKey": "Ra42fHGk", "encryptedPrivateKeyName": "XDBOP4Gs", "publicCertificate": "uSql0XYc", "publicCertificateName": "D01asnPD", "rootCertificate": "JJpErjfn", "rootCertificateName": "Mnxfz52J"}, "OrganizationId": "miRdLzG2", "PlatformName": "e1v3FR9s", "RedirectUri": "MWaDDHyo", "RegisteredDomains": [{"affectedClientIDs": ["AjM0OdPM", "CjJVofzK", "iAdkGRaM"], "domain": "5NFhRatd", "namespaces": ["vG0eWRKA", "PlVxnUuj", "K9pEfSWp"], "roleId": "cAOkGhHT"}, {"affectedClientIDs": ["cnmQe2H1", "HtNjk76Y", "qwZBUFhx"], "domain": "97GaZe57", "namespaces": ["AMWFZkIa", "k1Bfp7er", "MgdbUdp1"], "roleId": "EwcJRLYI"}, {"affectedClientIDs": ["z1oi2ERr", "20PWJora", "LEKOEd2B"], "domain": "pxghweFs", "namespaces": ["zdMPbSOw", "liJXgmNe", "cwn1JGzG"], "roleId": "KU9bdje5"}], "Secret": "NBvwGrWG", "TeamID": "P1cv0qnU", "TokenAuthenticationType": "htX1MSMa", "TokenClaimsMapping": {"8SaeXSYj": "ggscKPZy", "4SBIkGdg": "rihOpXZT", "LLJN8KQA": "2yET0N4z"}, "TokenEndpoint": "bMahJcvr", "scopes": ["zaH7bGbZ", "0VT3LQkL", "i6SRXM0P"]}' \
    'HHDhkyrL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["EOQmeRym", "pHsC2atL", "SCerqw3b"], "assignedNamespaces": ["9NZtcUdJ", "iS2jYE5h", "rERXkdpx"], "domain": "5hHsLJ72", "roleId": "jfQOdJRu"}' \
    'D8DCyndf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "9B5fLAQh"}' \
    'TwzIMTXw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    'RHXNuToZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "unMykC6G", "apiKey": "a8rJNiyj", "appId": "Lx3CZBKd", "federationMetadataUrl": "xpkzodz0", "isActive": true, "redirectUri": "WWAvTqmZ", "secret": "hjKQpcO8", "ssoUrl": "N64Nw7MB"}' \
    'pcLXZhlg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'OBSuJ1YG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "TLcM7DKA", "apiKey": "dzOIyFCO", "appId": "y6r2NvUu", "federationMetadataUrl": "4Mwb1CeU", "isActive": false, "redirectUri": "qUsLmDDr", "secret": "XIXUrRdR", "ssoUrl": "FNnBVMDu"}' \
    'xHjMgkZX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'IiNjEs3u' \
    'ddq57CSH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'lZs7Q2Co' \
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
    '{"userIds": ["OeXau0Xy", "jRg3UzvG", "s2HHBllG"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["y0fkKVbE", "5Ig5lfah", "stXOceW0"], "isAdmin": false, "roles": ["S8T3Dw2E", "FAZ6IviD", "7TAzRFUW"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'AdminInviteUserV3' test.out

#- 146 AdminQueryThirdPlatformLinkHistoryV3
$PYTHON -m $MODULE 'iam-admin-query-third-platform-link-history-v3' \
    'vc71bGbz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 147 AdminListUsersV3
$PYTHON -m $MODULE 'iam-admin-list-users-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'AdminListUsersV3' test.out

#- 148 AdminSearchUserV3
$PYTHON -m $MODULE 'iam-admin-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'AdminSearchUserV3' test.out

#- 149 AdminGetBulkUserByEmailAddressV3
$PYTHON -m $MODULE 'iam-admin-get-bulk-user-by-email-address-v3' \
    '{"listEmailAddressRequest": ["xGfP76Eo", "Zbm9r2jx", "3zm9oJYD"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'AdminGetBulkUserByEmailAddressV3' test.out

#- 150 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'HsPApZQL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AdminGetUserByUserIdV3' test.out

#- 151 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "SmZKFG0X", "country": "9CsBkKIO", "dateOfBirth": "wlHVhtPV", "displayName": "qMDQrGdJ", "languageTag": "sr9HKCMX", "userName": "2WG1UWOJ"}' \
    'KPJDQvzv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserV3' test.out

#- 152 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    '5Mu01oo4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'AdminGetUserBanV3' test.out

#- 153 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "BzjhYHm0", "comment": "TgAS6hIq", "endDate": "dqOxGBVa", "reason": "gTAk002F", "skipNotif": true}' \
    'CqiNXUzP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AdminBanUserV3' test.out

#- 154 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": false, "skipNotif": true}' \
    'qobWxAdc' \
    '0BqIVRSe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'AdminUpdateUserBanV3' test.out

#- 155 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "f7vKUVlw", "emailAddress": "ceHo6F4J", "languageTag": "zUlW5B3T"}' \
    'mJLoqz54' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminSendVerificationCodeV3' test.out

#- 156 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "QngGixZQ", "ContactType": "5dXLacCa", "LanguageTag": "Q9lw5BzZ", "validateOnly": true}' \
    'O7uMpFFO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'AdminVerifyAccountV3' test.out

#- 157 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'zakrwAdd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'GetUserVerificationCode' test.out

#- 158 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'PjZjS120' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserDeletionStatusV3' test.out

#- 159 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"enabled": true}' \
    'xRuw1LwL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminUpdateUserDeletionStatusV3' test.out

#- 160 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "28bUmRl1", "country": "YHdtRSKw", "dateOfBirth": "8ToWbHuJ", "displayName": "TRKt6HSb", "emailAddress": "xtRtQeOg", "password": "mjbboi3g", "validateOnly": false}' \
    'g5fNiVF5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminUpgradeHeadlessAccountV3' test.out

#- 161 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'tTzOoq9r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminDeleteUserInformationV3' test.out

#- 162 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'p6MSPpr3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminGetUserLoginHistoriesV3' test.out

#- 163 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "fpY23alR", "newPassword": "8Qkj0geE", "oldPassword": "lSe1bRCF"}' \
    '6p5qvrDX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AdminResetPasswordV3' test.out

#- 164 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 13, "Resource": "2vYkdfr8", "SchedAction": 49, "SchedCron": "sF91SQzQ", "SchedRange": ["G0sjFAvH", "jnYg6WJw", "LO2p5DaA"]}, {"Action": 54, "Resource": "uahbuvgf", "SchedAction": 5, "SchedCron": "ZyoTe08p", "SchedRange": ["26o2pY7l", "TP8OZx7r", "q8S9VpWl"]}, {"Action": 2, "Resource": "4mMiiqeO", "SchedAction": 7, "SchedCron": "xodJTgoG", "SchedRange": ["Pe4XkxVi", "pLNmNK9v", "jnrpLvRF"]}]}' \
    'MegNI3nI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserPermissionV3' test.out

#- 165 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 31, "Resource": "PMGoEs9V", "SchedAction": 40, "SchedCron": "0HILeNUi", "SchedRange": ["TxPaIdxj", "n5yIbnMi", "N3Jga16m"]}, {"Action": 73, "Resource": "bCAS9Lc9", "SchedAction": 79, "SchedCron": "G570eJP0", "SchedRange": ["Suf08mPZ", "FgB9j2RE", "f5nbhXqK"]}, {"Action": 90, "Resource": "BDlrTM1L", "SchedAction": 84, "SchedCron": "wSRwp3OC", "SchedRange": ["yoGNu97G", "UbV1zjI8", "8rpLBh97"]}]}' \
    'VMEliGJY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminAddUserPermissionsV3' test.out

#- 166 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 62, "Resource": "NioTnSid"}, {"Action": 47, "Resource": "W85OLjNt"}, {"Action": 71, "Resource": "cH4rXw6A"}]' \
    'CgadSVrD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionBulkV3' test.out

#- 167 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '93' \
    'FdFZs8hs' \
    'KvV2xq1k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserPermissionV3' test.out

#- 168 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'HjIuzGWz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserPlatformAccountsV3' test.out

#- 169 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'C5fDThOq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminGetListJusticePlatformAccounts' test.out

#- 170 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    '2GBPNKVI' \
    '59JsAtG6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminGetUserMapping' test.out

#- 171 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    '2SdP1CTY' \
    'r08uAOyf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminCreateJusticeUser' test.out

#- 172 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "p0tkZMLh", "platformUserId": "BQLNA9ZL"}' \
    'fuKVIYcs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminLinkPlatformAccount' test.out

#- 173 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "9UbSygaG"}' \
    'ZwLmMBZl' \
    'p4tKCgur' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformUnlinkV3' test.out

#- 174 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'aPM6Dt21' \
    'X4TI1qRE' \
    'Q9J9jrfw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminPlatformLinkV3' test.out

#- 175 AdminGetThirdPartyPlatformTokenLinkStatusV3
$PYTHON -m $MODULE 'iam-admin-get-third-party-platform-token-link-status-v3' \
    '8ocpUdSp' \
    '74ylsSUO' \
    '50PKXtCh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 176 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["wmDZKcFP", "1tjQ44It", "1UgIaQCC"]' \
    'E4wqePg9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminDeleteUserRolesV3' test.out

#- 177 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "fqAX44Dh", "roleId": "FfEycZZm"}, {"namespace": "ihDEhQFm", "roleId": "EMJyfKit"}, {"namespace": "XfvMGKaq", "roleId": "XhZtFnEk"}]' \
    '4hWmBjYQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminSaveUserRoleV3' test.out

#- 178 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    '6pmT858C' \
    'ZzZo53bA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminAddUserRoleV3' test.out

#- 179 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'YGER1TMY' \
    'LjR2Qq4k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminDeleteUserRoleV3' test.out

#- 180 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": false, "reason": "XXVbzl0C"}' \
    'q13ay0jK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateUserStatusV3' test.out

#- 181 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    '5QJRG4am' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 182 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "2Ca75hox"}' \
    'aOSILJT5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateClientSecretV3' test.out

#- 183 AdminGetRolesV3
$PYTHON -m $MODULE 'iam-admin-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminGetRolesV3' test.out

#- 184 AdminCreateRoleV3
$PYTHON -m $MODULE 'iam-admin-create-role-v3' \
    '{"adminRole": false, "deletable": false, "isWildcard": false, "managers": [{"displayName": "O8XIAnW1", "namespace": "qp1QrMDM", "userId": "obZ9Eusz"}, {"displayName": "pL7bZ4ZV", "namespace": "RMawE373", "userId": "pTrQFAZE"}, {"displayName": "bSxahopI", "namespace": "Qw1VdQDr", "userId": "MANMVN7w"}], "members": [{"displayName": "Qog87u6p", "namespace": "gkmx9XhO", "userId": "7SIHUMSn"}, {"displayName": "p47p4gdo", "namespace": "qkLdWwYF", "userId": "bnKitFWT"}, {"displayName": "LNL386vM", "namespace": "T4uJbOF6", "userId": "GwszQyRh"}], "permissions": [{"action": 64, "resource": "CpEdMP35", "schedAction": 2, "schedCron": "BOshVBRf", "schedRange": ["M5oxttBl", "Vh1PlCzk", "n4EfPodk"]}, {"action": 19, "resource": "RKYgtxd0", "schedAction": 77, "schedCron": "ApMAkoOi", "schedRange": ["Hx0LMDKC", "5gyEaPX6", "Zz7hDUgZ"]}, {"action": 20, "resource": "4VLVcVbN", "schedAction": 29, "schedCron": "k9p0ucJo", "schedRange": ["HkjfkBlc", "u0wxQqt3", "oTBT0bNy"]}], "roleName": "ssLFxn6n"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminCreateRoleV3' test.out

#- 185 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'ZapGg1zR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRoleV3' test.out

#- 186 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'iS3OqW0p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteRoleV3' test.out

#- 187 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": true, "isWildcard": false, "roleName": "51DcvoiG"}' \
    'XhjZVVHS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateRoleV3' test.out

#- 188 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    '7y3OW1lc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminGetRoleAdminStatusV3' test.out

#- 189 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'JBBBUDAl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateAdminRoleStatusV3' test.out

#- 190 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    '2Um1Xm35' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminRemoveRoleAdminV3' test.out

#- 191 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'JOGVczPT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRoleManagersV3' test.out

#- 192 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "EnvlVjkk", "namespace": "C3yL4zav", "userId": "gk7Lkhn5"}, {"displayName": "irWSH0wm", "namespace": "f9xplbDc", "userId": "tX7SLWH1"}, {"displayName": "9Nx72xdg", "namespace": "vk5dtnEl", "userId": "wmKXaM9G"}]}' \
    'KNy0fawo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminAddRoleManagersV3' test.out

#- 193 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "lvmq45uW", "namespace": "kYC1yE1D", "userId": "ZALNjoQ1"}, {"displayName": "v9xcMDMp", "namespace": "U0bkyDju", "userId": "Qk0T3F98"}, {"displayName": "fcqix1h5", "namespace": "aV9jqCPj", "userId": "TCxcB06c"}]}' \
    'tNv9omMS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminRemoveRoleManagersV3' test.out

#- 194 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'a2RdUp9K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminGetRoleMembersV3' test.out

#- 195 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "wOd3CyTy", "namespace": "hcpLP3U3", "userId": "TmbSyVum"}, {"displayName": "WnKRi3gK", "namespace": "y70FKVyi", "userId": "x0YKUiPk"}, {"displayName": "AwmGFn6L", "namespace": "oUvcxKdn", "userId": "2Vs1pi7J"}]}' \
    'UT9MVJJg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminAddRoleMembersV3' test.out

#- 196 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "6T7aO0bf", "namespace": "FDaLktcX", "userId": "V8FkhuQH"}, {"displayName": "Q508nb4b", "namespace": "lgVnRMHY", "userId": "GAE2XiOC"}, {"displayName": "AofR7jMc", "namespace": "TKip5FoQ", "userId": "WzwN9gkv"}]}' \
    '8CaWlfI3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminRemoveRoleMembersV3' test.out

#- 197 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 50, "resource": "PCjOR44h", "schedAction": 5, "schedCron": "mTfzLziD", "schedRange": ["Fvgmz2Z6", "dLBk1Xwl", "pdBBVeOE"]}, {"action": 72, "resource": "CA9ACNzr", "schedAction": 79, "schedCron": "WhcaGmiE", "schedRange": ["jBudcA3b", "ePKOfv37", "i5gRmIDR"]}, {"action": 73, "resource": "hPYvtZhl", "schedAction": 63, "schedCron": "IZZ2Vw0x", "schedRange": ["OxC2jusA", "8DXGSnvC", "p68anscw"]}]}' \
    'Gx72BaQz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateRolePermissionsV3' test.out

#- 198 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 28, "resource": "mZ07Qjbb", "schedAction": 51, "schedCron": "41o2yILP", "schedRange": ["IMI3DvvX", "TMRU0Kt6", "72CY7vH0"]}, {"action": 28, "resource": "9Jw7Gz2U", "schedAction": 31, "schedCron": "UYKUjU8W", "schedRange": ["pDWPcupG", "FJ3gsTnO", "g1RiQ5JS"]}, {"action": 70, "resource": "4ogAjNsD", "schedAction": 6, "schedCron": "P2RZS2NV", "schedRange": ["xzYh1K5I", "VBFnAPaf", "LBaqlulU"]}]}' \
    'cZ5sQDUG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'AdminAddRolePermissionsV3' test.out

#- 199 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["JSBqaT7U", "dHuVQqVn", "coMVEO23"]' \
    'i6fKb0j1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'AdminDeleteRolePermissionsV3' test.out

#- 200 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '27' \
    'YsVyv6QQ' \
    'QCfbp2s6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'AdminDeleteRolePermissionV3' test.out

#- 201 AdminGetMyUserV3
$PYTHON -m $MODULE 'iam-admin-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'AdminGetMyUserV3' test.out

#- 202 UserAuthenticationV3
$PYTHON -m $MODULE 'iam-user-authentication-v3' \
    'vegGKlZm' \
    'ZyhpfXdB' \
    'ocbO3RvY' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 202 'UserAuthenticationV3' test.out

#- 203 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    'AqCWRRwu' \
    'zN7EUjpV' \
    'erkoVkRg' \
    'ciAXjobj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'AuthenticationWithPlatformLinkV3' test.out

#- 204 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    'NIlWzFfV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 205 RequestOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-request-one-time-linking-code-v3' \
    'zxyPMIEF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'RequestOneTimeLinkingCodeV3' test.out

#- 206 ValidateOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-validate-one-time-linking-code-v3' \
    'NRVlbSdV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'ValidateOneTimeLinkingCodeV3' test.out

#- 207 RequestTokenByOneTimeLinkCodeResponseV3
$PYTHON -m $MODULE 'iam-request-token-by-one-time-link-code-response-v3' \
    'GhHzFkOZ' \
    'h2CduKOM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 208 GetCountryLocationV3
$PYTHON -m $MODULE 'iam-get-country-location-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'GetCountryLocationV3' test.out

#- 209 Logout
$PYTHON -m $MODULE 'iam-logout' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'Logout' test.out

#- 210 RequestGameTokenCodeResponseV3
$PYTHON -m $MODULE 'iam-request-game-token-code-response-v3' \
    '7ugFbpD5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'RequestGameTokenCodeResponseV3' test.out

#- 211 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'RbB7ME0m' \
    'hfUZnfR6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 212 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    'qEXMdHj7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'RevokeUserV3' test.out

#- 213 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    'Kb73lWzU' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 213 'AuthorizeV3' test.out

#- 214 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'yPi1FCsQ' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 214 'TokenIntrospectionV3' test.out

#- 215 GetJWKSV3
$PYTHON -m $MODULE 'iam-get-jwksv3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'GetJWKSV3' test.out

#- 216 SendMFAAuthenticationCode
$PYTHON -m $MODULE 'iam-send-mfa-authentication-code' \
    'BUtauHDh' \
    'jsFKt18i' \
    'rIIcWv5c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'SendMFAAuthenticationCode' test.out

#- 217 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    'TsipZS1L' \
    'ABY2tLqN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'Change2faMethod' test.out

#- 218 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    'vfCk3NgD' \
    'Z38G3bHV' \
    '1q9rTVmk' \
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'Verify2faCode' test.out

#- 219 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'x8QT2GnQ' \
    'o3xf2xN9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'D1STPQ6F' \
    'kI6mjvUI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'AuthCodeRequestV3' test.out

#- 221 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'Ug62S11y' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 221 'PlatformTokenGrantV3' test.out

#- 222 GetRevocationListV3
$PYTHON -m $MODULE 'iam-get-revocation-list-v3' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 222 'GetRevocationListV3' test.out

#- 223 TokenRevocationV3
$PYTHON -m $MODULE 'iam-token-revocation-v3' \
    'UaTcYVVh' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 223 'TokenRevocationV3' test.out

#- 224 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'authorization_code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 224 'TokenGrantV3' test.out

#- 225 VerifyTokenV3
$PYTHON -m $MODULE 'iam-verify-token-v3' \
    'VkIQTItb' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 225 'VerifyTokenV3' test.out

#- 226 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'MX2bMk5z' \
    'bNZFqWW9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'PlatformAuthenticationV3' test.out

#- 227 PublicGetInputValidations
$PYTHON -m $MODULE 'iam-public-get-input-validations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'PublicGetInputValidations' test.out

#- 228 PublicGetCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction-v3' \
    'uIcvQgBp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'PublicGetCountryAgeRestrictionV3' test.out

#- 229 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-public-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 230 RetrieveActiveOIDCClientsPublicV3
$PYTHON -m $MODULE 'iam-retrieve-active-oidc-clients-public-v3' \
    'zplghPBL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 231 PublicListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["BNLaRmSs", "I9pzeB8t", "AwWVE6sc"]}' \
    'wmOtLjYv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 232 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    'xxjrkW86' \
    'dsXwZhDG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'PublicGetUserByPlatformUserIDV3' test.out

#- 233 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    'k8zMOvTW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'PublicGetAsyncStatus' test.out

#- 234 PublicSearchUserV3
$PYTHON -m $MODULE 'iam-public-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'PublicSearchUserV3' test.out

#- 235 PublicCreateUserV3
$PYTHON -m $MODULE 'iam-public-create-user-v3' \
    '{"PasswordMD5Sum": "uC1mB2vl", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "FERgon1X", "policyId": "B9gtaWTV", "policyVersionId": "kfP63Osv"}, {"isAccepted": true, "localizedPolicyVersionId": "e7c30hxN", "policyId": "axAI1MwP", "policyVersionId": "WQT5f4Ey"}, {"isAccepted": true, "localizedPolicyVersionId": "XEheIugx", "policyId": "BneivzuN", "policyVersionId": "NU0tffUG"}], "authType": "JczGyTzP", "code": "7Phb7Hbw", "country": "FpzVUVY5", "dateOfBirth": "QvsUL5Tb", "displayName": "ZZkDhqyx", "emailAddress": "4GfleydB", "password": "xG9aIoWg", "reachMinimumAge": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'PublicCreateUserV3' test.out

#- 236 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'sXcxX6ye' \
    'FmLDOcPE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'CheckUserAvailability' test.out

#- 237 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["PogwZGqa", "9ULnmhZv", "zJtVcSw2"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'PublicBulkGetUsers' test.out

#- 238 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "zQlGkIPv", "languageTag": "TLJOskZ6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'PublicSendRegistrationCode' test.out

#- 239 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "GEgI5eug", "emailAddress": "DVUrpKQP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'PublicVerifyRegistrationCode' test.out

#- 240 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "zFsivYoO", "languageTag": "wSLnB8LH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'PublicForgotPasswordV3' test.out

#- 241 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    'es2kXBxs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'GetAdminInvitationV3' test.out

#- 242 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "EO6zT3Yf", "policyId": "9hABX7eV", "policyVersionId": "rS2YEhlA"}, {"isAccepted": false, "localizedPolicyVersionId": "Dzvkrwd7", "policyId": "HhnJdHep", "policyVersionId": "hXc8Xfbn"}, {"isAccepted": false, "localizedPolicyVersionId": "5IQrRCgF", "policyId": "XvBc0os9", "policyVersionId": "SXHVh9NW"}], "authType": "EMAILPASSWD", "country": "3XeWMIKV", "dateOfBirth": "ZNTv7Ijj", "displayName": "by6UmjeG", "password": "mnQJDrVs", "reachMinimumAge": true}' \
    'h16qkCsD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'CreateUserFromInvitationV3' test.out

#- 243 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "7YaSlw8y", "country": "8Y6cMP5F", "dateOfBirth": "aYlmnVYf", "displayName": "yiydgtY1", "languageTag": "fmE0gggM", "userName": "oCz5UxCh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'UpdateUserV3' test.out

#- 244 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "3HYYCMnr", "country": "3kb1VFFq", "dateOfBirth": "KPp09eLq", "displayName": "yiu3E3Iw", "languageTag": "ukMCNT5h", "userName": "401C9ro5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'PublicPartialUpdateUserV3' test.out

#- 245 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "UeqnSnLl", "emailAddress": "nahtR679", "languageTag": "ZxgrLlsw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'PublicSendVerificationCodeV3' test.out

#- 246 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "bSFYeOc5", "contactType": "5BBeEY54", "languageTag": "4cbHeiMh", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'PublicUserVerificationV3' test.out

#- 247 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "xTrI1jRY", "country": "3n6ZV3OB", "dateOfBirth": "mmHH005O", "displayName": "5kIOurft", "emailAddress": "USBxa4Ui", "password": "RVtnSx5c", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'PublicUpgradeHeadlessAccountV3' test.out

#- 248 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "uDFv2HZa", "password": "0H3dBGCU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'PublicVerifyHeadlessAccountV3' test.out

#- 249 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "yxAE5ISZ", "newPassword": "Tmtu0SXm", "oldPassword": "bZ3sgYuY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'PublicUpdatePasswordV3' test.out

#- 250 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'ZgAamsA8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'PublicCreateJusticeUser' test.out

#- 251 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'WpCuCHjj' \
    'gEy17W1a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'PublicPlatformLinkV3' test.out

#- 252 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "f51JtFoI"}' \
    'KDX4UWVc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'PublicPlatformUnlinkV3' test.out

#- 253 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'lxLP79nk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'PublicPlatformUnlinkAllV3' test.out

#- 254 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    'F3ojbrFP' \
    'DQfVaf0Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'PublicForcePlatformLinkV3' test.out

#- 255 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'fIEINX9b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'PublicWebLinkPlatform' test.out

#- 256 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    '8G1GUJRK' \
    'HLvLBPUo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'PublicWebLinkPlatformEstablish' test.out

#- 257 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "NB8gDg1i", "emailAddress": "O8Q5O4wy", "newPassword": "22rqhNK6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'ResetPasswordV3' test.out

#- 258 PublicGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-public-get-user-by-user-id-v3' \
    '2cjlF5gl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'PublicGetUserByUserIdV3' test.out

#- 259 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    '17bbOPy4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'PublicGetUserBanHistoryV3' test.out

#- 260 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'BB1qV3yg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 261 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    '8noTd8hS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'PublicGetUserInformationV3' test.out

#- 262 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'WVUawiBE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'PublicGetUserLoginHistoriesV3' test.out

#- 263 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'xmbkDBBa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'PublicGetUserPlatformAccountsV3' test.out

#- 264 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    'b70ekr3U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'PublicListJusticePlatformAccountsV3' test.out

#- 265 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "BMEVFB8d", "platformUserId": "KUrAEYHu"}' \
    'PjuVgFS2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'PublicLinkPlatformAccount' test.out

#- 266 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["WbyYxN5m", "9dZ05ves", "CcntNnyx"], "requestId": "ACvT3UvJ"}' \
    'ZayYBK7g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'PublicForceLinkPlatformWithProgression' test.out

#- 267 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    'CiLPvfMx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'PublicGetPublisherUserV3' test.out

#- 268 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'Mq5ALR05' \
    'OUgU1pTn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 269 PublicGetRolesV3
$PYTHON -m $MODULE 'iam-public-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'PublicGetRolesV3' test.out

#- 270 PublicGetRoleV3
$PYTHON -m $MODULE 'iam-public-get-role-v3' \
    'pe4avsL5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'PublicGetRoleV3' test.out

#- 271 PublicGetMyUserV3
$PYTHON -m $MODULE 'iam-public-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'PublicGetMyUserV3' test.out

#- 272 PublicGetLinkHeadlessAccountToMyAccountConflictV3
$PYTHON -m $MODULE 'iam-public-get-link-headless-account-to-my-account-conflict-v3' \
    '7uihlTPW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 273 LinkHeadlessAccountToMyAccountV3
$PYTHON -m $MODULE 'iam-link-headless-account-to-my-account-v3' \
    '{"chosenNamespaces": ["vAXFYa8l", "Ifr2PcjH", "iDhQem6o"], "oneTimeLinkCode": "JpP2GtQt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'LinkHeadlessAccountToMyAccountV3' test.out

#- 274 PublicSendVerificationLinkV3
$PYTHON -m $MODULE 'iam-public-send-verification-link-v3' \
    '{"languageTag": "QZaF1gxw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'PublicSendVerificationLinkV3' test.out

#- 275 PublicVerifyUserByLinkV3
$PYTHON -m $MODULE 'iam-public-verify-user-by-link-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'PublicVerifyUserByLinkV3' test.out

#- 276 PlatformAuthenticateSAMLV3Handler
$PYTHON -m $MODULE 'iam-platform-authenticate-samlv3-handler' \
    '2IZpz47I' \
    'QGTWIPiV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'PlatformAuthenticateSAMLV3Handler' test.out

#- 277 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'HlzH4R5X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'LoginSSOClient' test.out

#- 278 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'RSHosTsC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'LogoutSSOClient' test.out

#- 279 RequestGameTokenResponseV3
$PYTHON -m $MODULE 'iam-request-game-token-response-v3' \
    '0monyVWX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'RequestGameTokenResponseV3' test.out

#- 280 AdminGetDevicesByUserV4
$PYTHON -m $MODULE 'iam-admin-get-devices-by-user-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'AdminGetDevicesByUserV4' test.out

#- 281 AdminGetBannedDevicesV4
$PYTHON -m $MODULE 'iam-admin-get-banned-devices-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'AdminGetBannedDevicesV4' test.out

#- 282 AdminGetUserDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-user-device-bans-v4' \
    'et7CiCv5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'AdminGetUserDeviceBansV4' test.out

#- 283 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "aBu6KIee", "deviceId": "36IQERRy", "deviceType": "AGkZlXxN", "enabled": false, "endDate": "VomNTVQN", "ext": {"NkfsLWw9": {}, "p3ibEUmw": {}, "woqkkkCF": {}}, "reason": "oFbLyBl8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'AdminBanDeviceV4' test.out

#- 284 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    'k20yQqel' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'AdminGetDeviceBanV4' test.out

#- 285 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": false}' \
    'XsWLhac7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'AdminUpdateDeviceBanV4' test.out

#- 286 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    's72aMeXN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'AdminGenerateReportV4' test.out

#- 287 AdminGetDeviceTypesV4
$PYTHON -m $MODULE 'iam-admin-get-device-types-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'AdminGetDeviceTypesV4' test.out

#- 288 AdminGetDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-device-bans-v4' \
    'lTYN3lWr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'AdminGetDeviceBansV4' test.out

#- 289 AdminDecryptDeviceV4
$PYTHON -m $MODULE 'iam-admin-decrypt-device-v4' \
    'i62CGgna' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'AdminDecryptDeviceV4' test.out

#- 290 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    'r0zXoGgl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'AdminUnbanDeviceV4' test.out

#- 291 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    'bO1uWDvp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'AdminGetUsersByDeviceV4' test.out

#- 292 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"count": 15}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'AdminCreateTestUsersV4' test.out

#- 293 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["NWB9BTNj", "DhY5JlRt", "sy21PzGp"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'AdminBulkCheckValidUserIDV4' test.out

#- 294 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "BC7YuHuH", "country": "dXBYqUFQ", "dateOfBirth": "sMAbpg01", "displayName": "oHZUEgcl", "languageTag": "xUOWfUJp", "userName": "Ij9NARDJ"}' \
    'UhsOS8GK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'AdminUpdateUserV4' test.out

#- 295 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "loFqwAOf", "emailAddress": "TcIbN0wU"}' \
    '55EPR4Ah' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'AdminUpdateUserEmailAddressV4' test.out

#- 296 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    'OLENMzkR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'AdminDisableUserMFAV4' test.out

#- 297 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    '57FgqMRQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'AdminListUserRolesV4' test.out

#- 298 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["tYuW6Gt4", "XxZbu2gk", "KBIoVtDN"], "roleId": "z4aSATuK"}' \
    'qb4fG4MN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateUserRoleV4' test.out

#- 299 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["vTvKJcSu", "mk50qQWA", "6qV5gjLa"], "roleId": "Nn4SE7uN"}' \
    '8tQLQeLm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'AdminAddUserRoleV4' test.out

#- 300 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["HSPXkJIL", "aMdDEMPE", "ixn1q76I"], "roleId": "KDTqCiMI"}' \
    'oigWJyYs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'AdminRemoveUserRoleV4' test.out

#- 301 AdminGetRolesV4
$PYTHON -m $MODULE 'iam-admin-get-roles-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'AdminGetRolesV4' test.out

#- 302 AdminCreateRoleV4
$PYTHON -m $MODULE 'iam-admin-create-role-v4' \
    '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "FDdhjWLG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'AdminCreateRoleV4' test.out

#- 303 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'c1oC7Wmv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'AdminGetRoleV4' test.out

#- 304 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'cXiQCboV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'AdminDeleteRoleV4' test.out

#- 305 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": false, "deletable": true, "isWildcard": true, "roleName": "dt8wcFXI"}' \
    '26c8XpMp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'AdminUpdateRoleV4' test.out

#- 306 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 0, "resource": "WtXJk1OQ", "schedAction": 75, "schedCron": "5QqUdPfk", "schedRange": ["OxCzva4o", "qdsU1Bte", "Sy0rG3P9"]}, {"action": 89, "resource": "ygjdVj73", "schedAction": 35, "schedCron": "pFbJUxP5", "schedRange": ["36SaM2nL", "TmQfZPhN", "OlBUnnSr"]}, {"action": 76, "resource": "Gg8ppanu", "schedAction": 82, "schedCron": "TyFfgSHF", "schedRange": ["LgIF3pVS", "1IyfIOAl", "L0v0Xq2N"]}]}' \
    '24Cv2tZF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'AdminUpdateRolePermissionsV4' test.out

#- 307 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 89, "resource": "78f8N53F", "schedAction": 21, "schedCron": "S6cVNY6o", "schedRange": ["NFS6ccrJ", "LELC2Epp", "MAgm8aO6"]}, {"action": 3, "resource": "BUF17SVu", "schedAction": 9, "schedCron": "YfD3fGJB", "schedRange": ["10NSGdDj", "aVMX7PD1", "A3VLtIZz"]}, {"action": 13, "resource": "JTxPEKMJ", "schedAction": 73, "schedCron": "SXJtjUV6", "schedRange": ["q9EvScJs", "64zGEtBa", "7rxHmYD5"]}]}' \
    '4dgGPxTx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'AdminAddRolePermissionsV4' test.out

#- 308 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["6a4AIak6", "YUH8KqXq", "Wpry3PYh"]' \
    '3xyKxnQv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'AdminDeleteRolePermissionsV4' test.out

#- 309 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'ZNRxrq8k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'AdminListAssignedUsersV4' test.out

#- 310 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["EI8DhZrI", "DkKpwb7a", "Yq1zI2wH"], "namespace": "WekKXLbc", "userId": "nRNP4PBQ"}' \
    'UOX7mCP2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'AdminAssignUserToRoleV4' test.out

#- 311 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "IJHtlvGD", "userId": "51DDeG5R"}' \
    'sAqUf2LM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'AdminRevokeUserFromRoleV4' test.out

#- 312 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "tKbZCDiV", "country": "pgmvPmFM", "dateOfBirth": "nU5GIIYJ", "displayName": "3lYIew3K", "languageTag": "Hcf1tE9w", "userName": "1sXtJYGu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'AdminUpdateMyUserV4' test.out

#- 313 AdminDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'AdminDisableMyAuthenticatorV4' test.out

#- 314 AdminEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'AdminEnableMyAuthenticatorV4' test.out

#- 315 AdminGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-admin-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 316 AdminGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'AdminGetMyBackupCodesV4' test.out

#- 317 AdminGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'AdminGenerateMyBackupCodesV4' test.out

#- 318 AdminDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'AdminDisableMyBackupCodesV4' test.out

#- 319 AdminDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'AdminDownloadMyBackupCodesV4' test.out

#- 320 AdminEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'AdminEnableMyBackupCodesV4' test.out

#- 321 AdminSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-admin-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'AdminSendMyMFAEmailCodeV4' test.out

#- 322 AdminDisableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-disable-my-email-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'AdminDisableMyEmailV4' test.out

#- 323 AdminEnableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-enable-my-email-v4' \
    'h3uBVguD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'AdminEnableMyEmailV4' test.out

#- 324 AdminGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-admin-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'AdminGetMyEnabledFactorsV4' test.out

#- 325 AdminMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-admin-make-factor-my-default-v4' \
    'lugqKHgN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'AdminMakeFactorMyDefaultV4' test.out

#- 326 AdminInviteUserV4
$PYTHON -m $MODULE 'iam-admin-invite-user-v4' \
    '{"assignedNamespaces": ["ZLVq3Cke", "wFNnfKBK", "mmzHn2uy"], "emailAddresses": ["fygM4E3Z", "EKdjzLsL", "ZOWvQ4lC"], "isAdmin": false, "roleId": "UMjYwkfn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'AdminInviteUserV4' test.out

#- 327 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "9PsupsTt", "policyId": "idaOq8tf", "policyVersionId": "7RV523VK"}, {"isAccepted": true, "localizedPolicyVersionId": "wIeoTcox", "policyId": "XLimSdb5", "policyVersionId": "RvDptJAi"}, {"isAccepted": false, "localizedPolicyVersionId": "wur8WvGE", "policyId": "XqdzEpG0", "policyVersionId": "wHFzBd6L"}], "authType": "EMAILPASSWD", "country": "RdjrkZak", "dateOfBirth": "N7oyzqB1", "displayName": "wtP46q4E", "emailAddress": "qQpBXI1D", "password": "XTR4WXl3", "passwordMD5Sum": "nCKy9Mo5", "username": "o3QcZnNg", "verified": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'PublicCreateTestUserV4' test.out

#- 328 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "hGEJ4x0w", "policyId": "bpFi3SwZ", "policyVersionId": "vMtWR3gQ"}, {"isAccepted": true, "localizedPolicyVersionId": "5CyQ9tY8", "policyId": "WH6QEEC2", "policyVersionId": "gYedhxOS"}, {"isAccepted": false, "localizedPolicyVersionId": "9zDb7nlL", "policyId": "9fGev5vk", "policyVersionId": "6fMxMLiX"}], "authType": "EMAILPASSWD", "code": "R3ClESW7", "country": "hHs6Ogh2", "dateOfBirth": "yQUdljhQ", "displayName": "aqdppsA6", "emailAddress": "wPK5bXMI", "password": "PIV6nUOR", "passwordMD5Sum": "nW4zB17I", "reachMinimumAge": true, "username": "KIsRXl09"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'PublicCreateUserV4' test.out

#- 329 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "TBGzvTsA", "policyId": "bpnfy5IL", "policyVersionId": "UPlsuPHx"}, {"isAccepted": false, "localizedPolicyVersionId": "EQYRPzAc", "policyId": "dXYo13P5", "policyVersionId": "cRAA7J7n"}, {"isAccepted": true, "localizedPolicyVersionId": "xVlhcq6H", "policyId": "gYpurWEA", "policyVersionId": "CLLZaP9P"}], "authType": "EMAILPASSWD", "country": "7YNdTt9W", "dateOfBirth": "OzrIYqUG", "displayName": "JrTLugeG", "password": "WTpwYtFM", "reachMinimumAge": true, "username": "w39bjYqt"}' \
    'XKBqTDxO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'CreateUserFromInvitationV4' test.out

#- 330 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "6p2l57HR", "country": "miPQA4ym", "dateOfBirth": "EItMEeG5", "displayName": "3m8EGsbq", "languageTag": "a2PYThBI", "userName": "UWexfZ1L"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'PublicUpdateUserV4' test.out

#- 331 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "XNZesKqv", "emailAddress": "M4JG38bW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'PublicUpdateUserEmailAddressV4' test.out

#- 332 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "Pmux7OAU", "country": "wXHU98NV", "dateOfBirth": "YPP0P6xD", "displayName": "fFPdXW7C", "emailAddress": "iBlfx0rj", "password": "IS4LmmgD", "reachMinimumAge": true, "username": "QlZCTbpx", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 333 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "xyc3ThAL", "password": "LtMqYUDE", "username": "5dJ7kwEl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'PublicUpgradeHeadlessAccountV4' test.out

#- 334 PublicDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'PublicDisableMyAuthenticatorV4' test.out

#- 335 PublicEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'PublicEnableMyAuthenticatorV4' test.out

#- 336 PublicGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-public-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 337 PublicGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'PublicGetMyBackupCodesV4' test.out

#- 338 PublicGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'PublicGenerateMyBackupCodesV4' test.out

#- 339 PublicDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'PublicDisableMyBackupCodesV4' test.out

#- 340 PublicDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'PublicDownloadMyBackupCodesV4' test.out

#- 341 PublicEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'PublicEnableMyBackupCodesV4' test.out

#- 342 PublicRemoveTrustedDeviceV4
$PYTHON -m $MODULE 'iam-public-remove-trusted-device-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'PublicRemoveTrustedDeviceV4' test.out

#- 343 PublicSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-public-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'PublicSendMyMFAEmailCodeV4' test.out

#- 344 PublicDisableMyEmailV4
$PYTHON -m $MODULE 'iam-public-disable-my-email-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'PublicDisableMyEmailV4' test.out

#- 345 PublicEnableMyEmailV4
$PYTHON -m $MODULE 'iam-public-enable-my-email-v4' \
    'eo8WFJAL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'PublicEnableMyEmailV4' test.out

#- 346 PublicGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-public-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'PublicGetMyEnabledFactorsV4' test.out

#- 347 PublicMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-public-make-factor-my-default-v4' \
    'yg0W5E0J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicMakeFactorMyDefaultV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
