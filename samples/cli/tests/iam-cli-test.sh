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
iam-admin-update-input-validations '[{"field": "BxSIDJ03", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "blockedWord": ["lKoo0v1f", "xV7jc7Gf", "3pjsTqU1"], "description": [{"language": "kiWBxmHV", "message": ["2mv08lIs", "TBZmeCw9", "yTCfMw9C"]}, {"language": "8dIEnj6G", "message": ["khYPg6fY", "WXhcftK8", "BIH11iy3"]}, {"language": "pZWEVPuh", "message": ["P80wGOad", "TykDl52t", "ydpTtPSI"]}], "isCustomRegex": false, "letterCase": "jxZ5vBBd", "maxLength": 42, "maxRepeatingAlphaNum": 54, "maxRepeatingSpecialCharacter": 7, "minCharType": 55, "minLength": 18, "regex": "oTsZFrMV", "specialCharacterLocation": "b9ZwiXhD", "specialCharacters": ["GLZoIZAY", "5nSwD3ZO", "3iuvaUkp"]}}, {"field": "s1iGc2FN", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "blockedWord": ["AUzrvv1n", "d9pgEi6H", "1H0XYRyd"], "description": [{"language": "8KgblrrC", "message": ["zr9w8CDa", "oDNkA3zX", "OHPvqHEm"]}, {"language": "PLx5pHRi", "message": ["ggXFZG97", "TCr9saty", "bCNNkU4K"]}, {"language": "TSNl2R40", "message": ["ruiSyRdN", "FLKcx6ml", "M28viI3n"]}], "isCustomRegex": true, "letterCase": "K94qNKFp", "maxLength": 29, "maxRepeatingAlphaNum": 5, "maxRepeatingSpecialCharacter": 33, "minCharType": 0, "minLength": 31, "regex": "hHmys5uS", "specialCharacterLocation": "NeTir2K5", "specialCharacters": ["hol2ZWjn", "ja7KOq8L", "AeqGAHEK"]}}, {"field": "onOg9qu5", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "blockedWord": ["23PMeAPU", "zegS6lm8", "rSpTYGVd"], "description": [{"language": "KyAXCgCO", "message": ["kTDSNH3m", "sBuDQHvh", "dfe9e0yS"]}, {"language": "BncN7Fpp", "message": ["CZeD1p1v", "VcShJGml", "Npj0ItLb"]}, {"language": "iieF3FSt", "message": ["tf9KoEPo", "YRPLTzhb", "boBBNBu2"]}], "isCustomRegex": true, "letterCase": "8HKou0wS", "maxLength": 89, "maxRepeatingAlphaNum": 67, "maxRepeatingSpecialCharacter": 21, "minCharType": 30, "minLength": 52, "regex": "a8q92wvo", "specialCharacterLocation": "i8mKxFjq", "specialCharacters": ["oYDhDOBi", "X5hyZWb6", "BygkgrSW"]}}]' --login_with_auth "Bearer foo"
iam-admin-reset-input-validations '20pyyg1g' --login_with_auth "Bearer foo"
iam-list-admins-v3 --login_with_auth "Bearer foo"
iam-admin-get-age-restriction-status-v3 --login_with_auth "Bearer foo"
iam-admin-update-age-restriction-config-v3 '{"ageRestriction": 12, "enable": true}' --login_with_auth "Bearer foo"
iam-admin-get-list-country-age-restriction-v3 --login_with_auth "Bearer foo"
iam-admin-update-country-age-restriction-v3 '{"ageRestriction": 13}' 'Kw3bt4bu' --login_with_auth "Bearer foo"
iam-admin-get-banned-users-v3 --login_with_auth "Bearer foo"
iam-admin-ban-user-bulk-v3 '{"ban": "EXsEE84Y", "comment": "4pv9lvh8", "endDate": "AURSssAV", "reason": "OQvhB60f", "skipNotif": true, "userIds": ["oBWLYpnr", "1bAoXZPg", "LlWgkAUE"]}' --login_with_auth "Bearer foo"
iam-admin-unban-user-bulk-v3 '{"bans": [{"banId": "JwJfPmka", "userId": "6dAfz3Pm"}, {"banId": "bzNQXzlJ", "userId": "mtZggrRX"}, {"banId": "7b4N63fO", "userId": "SBPJvlHY"}]}' --login_with_auth "Bearer foo"
iam-admin-get-bans-type-with-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-get-clients-by-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-create-client-v3 '{"audiences": ["K52YEpiu", "2yF7AUGf", "RiSFUJkK"], "baseUri": "n6W8Jo9N", "clientId": "2Vfl2M4O", "clientName": "4VP2jSzz", "clientPermissions": [{"action": 72, "resource": "khCIcnJo", "schedAction": 46, "schedCron": "idjZZkFP", "schedRange": ["0qrcAHO9", "IEq79vY8", "AWoPcoIm"]}, {"action": 54, "resource": "Anpuwgx3", "schedAction": 96, "schedCron": "QWVAw2M6", "schedRange": ["5oblMy9l", "VTYp6Qd5", "cegc9GMS"]}, {"action": 79, "resource": "jKKyBu9A", "schedAction": 32, "schedCron": "kMcyi73T", "schedRange": ["MdvmVWN7", "iUGXB6GG", "E1wCjffQ"]}], "clientPlatform": "mjjLprrg", "deletable": true, "description": "rBgYRpqD", "namespace": "PVl0Q9Xg", "oauthAccessTokenExpiration": 48, "oauthAccessTokenExpirationTimeUnit": "pzq3BYGH", "oauthClientType": "lo7z1pqO", "oauthRefreshTokenExpiration": 94, "oauthRefreshTokenExpirationTimeUnit": "yOJIMPzW", "parentNamespace": "QeKT50uH", "redirectUri": "ocOoTak7", "scopes": ["VnBNlY5P", "i9tRNCCZ", "QjQDVVAY"], "secret": "SJAMxQkt", "twoFactorEnabled": false}' --login_with_auth "Bearer foo"
iam-admin-get-clientsby-namespaceby-idv3 'JjFdELcK' --login_with_auth "Bearer foo"
iam-admin-delete-client-v3 'ZJlBuW6d' --login_with_auth "Bearer foo"
iam-admin-update-client-v3 '{"audiences": ["wLQ651xW", "hRhMpW2N", "c00HAexN"], "baseUri": "7xWLEMMi", "clientName": "1v2Ob0nl", "clientPermissions": [{"action": 73, "resource": "ysslh0kf", "schedAction": 62, "schedCron": "aPr4QwsL", "schedRange": ["cc2J47LM", "MFonMCUw", "tqJEwkaA"]}, {"action": 32, "resource": "EBluHFA1", "schedAction": 91, "schedCron": "94vh3LmD", "schedRange": ["K8uZFSgL", "omoOXj4v", "tTKtbaKv"]}, {"action": 32, "resource": "ZlgfgSKc", "schedAction": 33, "schedCron": "UTKT3DY2", "schedRange": ["aOaqJlLC", "6OLmWTfS", "X4vwuwht"]}], "clientPlatform": "K1pmJOJT", "deletable": false, "description": "CruJrZNj", "namespace": "4yBb3cYh", "oauthAccessTokenExpiration": 96, "oauthAccessTokenExpirationTimeUnit": "r9URkHcU", "oauthRefreshTokenExpiration": 52, "oauthRefreshTokenExpirationTimeUnit": "fCUMFkiG", "redirectUri": "ZVTJzHdb", "scopes": ["YoPUvBi4", "glIDnDld", "n3HNltZJ"], "twoFactorEnabled": false}' 'KT2MDB3n' --login_with_auth "Bearer foo"
iam-admin-update-client-permission-v3 '{"permissions": [{"action": 51, "resource": "ySiry6WA"}, {"action": 61, "resource": "hXendm9u"}, {"action": 35, "resource": "mzp15Dc1"}]}' 'kHpNfEki' --login_with_auth "Bearer foo"
iam-admin-add-client-permissions-v3 '{"permissions": [{"action": 26, "resource": "KKTCRbUA"}, {"action": 40, "resource": "nEscFPbq"}, {"action": 67, "resource": "1DC4w8Lw"}]}' 'ukdEs1RO' --login_with_auth "Bearer foo"
iam-admin-delete-client-permission-v3 '3' 'mbevJ6Om' 'nE4YPQUo' --login_with_auth "Bearer foo"
iam-retrieve-all-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-sso-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-third-party-login-platform-credential-v3 '2glEktle' --login_with_auth "Bearer foo"
iam-add-third-party-login-platform-credential-v3 '{"ACSURL": "4X5DG6x8", "AWSCognitoRegion": "1mOk5Kg1", "AWSCognitoUserPool": "gRvGKdkB", "AllowedClients": ["xsPTnuhn", "5bODgppg", "sr3JgSrd"], "AppId": "CGfIrs8H", "AuthorizationEndpoint": "RKqWuNDW", "ClientId": "LRT74kvY", "Environment": "WLaKC9dB", "FederationMetadataURL": "ITYZBVGE", "GenericOauthFlow": false, "IsActive": false, "Issuer": "DzLAxH3y", "JWKSEndpoint": "pV3nxGpT", "KeyID": "FdhyEUyp", "NetflixCertificates": {"encryptedPrivateKey": "KKYTrf8v", "encryptedPrivateKeyName": "zJYAhqLu", "publicCertificate": "ECEgSTZm", "publicCertificateName": "1dyw4sxs", "rootCertificate": "EuNNI0Wx", "rootCertificateName": "qPfdVQ1O"}, "OrganizationId": "cqkkZ0Sr", "PlatformName": "eWA6MjpA", "RedirectUri": "FXyR3hrD", "RegisteredDomains": [{"affectedClientIDs": ["JA352YHc", "lnBe7W5a", "O96fdruD"], "domain": "CuERn39a", "namespaces": ["M0Gicb4T", "JpGJC4PH", "grLtO2zq"], "roleId": "yXw3uuhP"}, {"affectedClientIDs": ["BLAPXw7A", "gN2pr5jd", "LK4Wycl3"], "domain": "MJAhlGfa", "namespaces": ["zTxniID4", "IDwGr4q6", "SNNZZ9O1"], "roleId": "uoErEkFp"}, {"affectedClientIDs": ["0CMwCHzY", "ExfOYxOH", "G78EUIWF"], "domain": "7jeYwEcs", "namespaces": ["jux4j7m5", "DRFKoaUR", "34a6wHOc"], "roleId": "zdtexLqA"}], "Secret": "cSY2qKre", "TeamID": "hWKz2Q6B", "TokenAuthenticationType": "yapffmk2", "TokenClaimsMapping": {"MFYqpk9d": "itWQLRTY", "rJ0z09Kr": "bufHuxTE", "5DHkVtvp": "PpNeeHIB"}, "TokenEndpoint": "81aHe7cd", "scopes": ["FrH9n6z0", "eA3mJNjB", "BReqxF7g"]}' '4s4EFgyL' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-credential-v3 'ovLCkb3o' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-credential-v3 '{"ACSURL": "saoiFRH8", "AWSCognitoRegion": "LffNyXNe", "AWSCognitoUserPool": "IE1JwZIv", "AllowedClients": ["HgDpZDOG", "hIg43din", "rTbwOVhb"], "AppId": "lSPfnjpM", "AuthorizationEndpoint": "ZHlG0aHc", "ClientId": "VgmoO4B1", "Environment": "70QRGyub", "FederationMetadataURL": "3EpYYw70", "GenericOauthFlow": false, "IsActive": false, "Issuer": "A6CdNsm9", "JWKSEndpoint": "YgrK8yBh", "KeyID": "foYGYS0M", "NetflixCertificates": {"encryptedPrivateKey": "dHYVHjSS", "encryptedPrivateKeyName": "aIJALXa7", "publicCertificate": "4AY7XaeI", "publicCertificateName": "LjH884Yi", "rootCertificate": "QjXEUId8", "rootCertificateName": "A3Wsfuhu"}, "OrganizationId": "Tw3H63ty", "PlatformName": "s5XmyiYF", "RedirectUri": "C7MTqdG3", "RegisteredDomains": [{"affectedClientIDs": ["tLWdDAdE", "LESHbomi", "pEA81vvB"], "domain": "lH911xxO", "namespaces": ["Mf8gDpyX", "wJuO2Lrq", "zjjh76JN"], "roleId": "Wb5iG93t"}, {"affectedClientIDs": ["436zOv4g", "efjwiQfy", "tHnsQcx0"], "domain": "cmNIIaoY", "namespaces": ["fHFoaCJI", "G08UzatM", "280kRCyV"], "roleId": "N8E0DR71"}, {"affectedClientIDs": ["miGHJp8q", "OUAKYqm1", "AzO2kj8f"], "domain": "jtUggCNm", "namespaces": ["Ay2FFslp", "An3bx810", "KhgGuovN"], "roleId": "GCtmH1xP"}], "Secret": "GTe1orLt", "TeamID": "VBlv8zSc", "TokenAuthenticationType": "QrN5wUHY", "TokenClaimsMapping": {"hiHZ85j4": "suKlScLr", "1cShDM7Z": "jReEXuoM", "NzEU7U9j": "S5xzT9Sn"}, "TokenEndpoint": "0UjL4N71", "scopes": ["LwKWToT2", "F4AdGXya", "F7TjU2Ze"]}' 'hnsucAf5' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-domain-v3 '{"affectedClientIDs": ["OCnuGdJN", "M80ZHCi3", "qFZGLltt"], "assignedNamespaces": ["xgSPEltw", "sr9qsRUV", "2NAcqyLC"], "domain": "VlgpjbqG", "roleId": "AtX7zkMR"}' 'HltbyWiJ' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-domain-v3 '{"domain": "835TJscA"}' 'InDCPcaq' --login_with_auth "Bearer foo"
iam-retrieve-sso-login-platform-credential 'KIq0LJTR' --login_with_auth "Bearer foo"
iam-add-sso-login-platform-credential '{"acsUrl": "RFDRv6OZ", "apiKey": "xMFPHxXo", "appId": "IXVB8F79", "federationMetadataUrl": "98pGXIcY", "isActive": true, "redirectUri": "wIJmLzRO", "secret": "hFt9vWYr", "ssoUrl": "pu15gfNU"}' '0uHm6FLN' --login_with_auth "Bearer foo"
iam-delete-sso-login-platform-credential-v3 'L64Xztqr' --login_with_auth "Bearer foo"
iam-update-sso-platform-credential '{"acsUrl": "peEn97ke", "apiKey": "6bQd5U8B", "appId": "5QjvjQ6X", "federationMetadataUrl": "RbqD9sHf", "isActive": false, "redirectUri": "BTWaeNvB", "secret": "sHIiuDJv", "ssoUrl": "kNgU4BYs"}' '5jMgyxYk' --login_with_auth "Bearer foo"
iam-admin-get-user-by-platform-user-idv3 'wNX7rNnq' 'ClPVS25x' --login_with_auth "Bearer foo"
iam-get-admin-users-by-role-id-v3 '5nkSb6SE' --login_with_auth "Bearer foo"
iam-admin-get-user-by-email-address-v3 --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-user-i-ds-v3 '{"userIds": ["mkqXzVIj", "VGp5apzX", "o7qGtqZZ"]}' --login_with_auth "Bearer foo"
iam-admin-invite-user-v3 '{"emailAddresses": ["uAFlvUSL", "QWXLahm7", "XdUdvezD"], "isAdmin": true, "namespace": "N07vrCKY", "roles": ["eSH8C5Fd", "QYhf0Whi", "wNdlve18"]}' --login_with_auth "Bearer foo"
iam-admin-query-third-platform-link-history-v3 'aBaSipld' --login_with_auth "Bearer foo"
iam-admin-list-users-v3 --login_with_auth "Bearer foo"
iam-admin-search-user-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-by-email-address-v3 '{"listEmailAddressRequest": ["qImURcKu", "uTbpEEn6", "TdXi3EJh"]}' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v3 'tqUvaoiu' --login_with_auth "Bearer foo"
iam-admin-update-user-v3 '{"avatarUrl": "IGV96cLo", "country": "e9OouI7n", "dateOfBirth": "jNcY1FYf", "displayName": "X2ZUKbpu", "languageTag": "i6wcnnn1", "userName": "Sp474MRn"}' 'FTqszLwY' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v3 'jps1DGyS' --login_with_auth "Bearer foo"
iam-admin-ban-user-v3 '{"ban": "Nsswq2Uz", "comment": "SELAWOxt", "endDate": "4kEAhJVB", "reason": "LLjZhgbH", "skipNotif": true}' 'kwgYePT2' --login_with_auth "Bearer foo"
iam-admin-update-user-ban-v3 '{"enabled": true, "skipNotif": false}' '3u1p3l2B' 'zZVUp2cg' --login_with_auth "Bearer foo"
iam-admin-send-verification-code-v3 '{"context": "9r3qI8jz", "emailAddress": "PI1wyeze", "languageTag": "WkZHsuUL"}' 'qQx7FzZD' --login_with_auth "Bearer foo"
iam-admin-verify-account-v3 '{"Code": "M7zvdtPq", "ContactType": "HoosFXOp", "LanguageTag": "cX19k210", "validateOnly": true}' 'eRNJWDGq' --login_with_auth "Bearer foo"
iam-get-user-verification-code 'lFh92qXN' --login_with_auth "Bearer foo"
iam-admin-get-user-deletion-status-v3 'nc5mvOqE' --login_with_auth "Bearer foo"
iam-admin-update-user-deletion-status-v3 '{"enabled": true}' 'C4GRkaqS' --login_with_auth "Bearer foo"
iam-admin-upgrade-headless-account-v3 '{"code": "N2lbBFPC", "country": "Vei1sMLF", "dateOfBirth": "jqTF5T2G", "displayName": "xscmttqF", "emailAddress": "2349jPnl", "password": "cre7JHZY", "validateOnly": false}' 'NDuVpI6F' --login_with_auth "Bearer foo"
iam-admin-delete-user-information-v3 'qEFCfPme' --login_with_auth "Bearer foo"
iam-admin-get-user-login-histories-v3 'EAJOxjab' --login_with_auth "Bearer foo"
iam-admin-reset-password-v3 '{"languageTag": "ZWJVZupt", "newPassword": "rpPhpBf5", "oldPassword": "czfGcLzW"}' 'BxKLX6Lz' --login_with_auth "Bearer foo"
iam-admin-update-user-permission-v3 '{"Permissions": [{"Action": 91, "Resource": "Ccy9kKUL", "SchedAction": 35, "SchedCron": "BxHNHeM3", "SchedRange": ["GbcCo8T7", "Zrf0cVsD", "fXAxktZZ"]}, {"Action": 3, "Resource": "joXrwRvT", "SchedAction": 29, "SchedCron": "lQK8r09R", "SchedRange": ["F333rbtN", "494cDnLq", "GJU7CeRq"]}, {"Action": 53, "Resource": "LkZR0C5m", "SchedAction": 77, "SchedCron": "Sjgj74FF", "SchedRange": ["n4abA1d9", "xb54b7a4", "TGvL7Ibn"]}]}' '3mdCZmQ0' --login_with_auth "Bearer foo"
iam-admin-add-user-permissions-v3 '{"Permissions": [{"Action": 65, "Resource": "hgDPE1FW", "SchedAction": 18, "SchedCron": "EAnMBhrU", "SchedRange": ["aObuZYw8", "CV7FT2dH", "l3NJqXdp"]}, {"Action": 75, "Resource": "iX8qrZ2f", "SchedAction": 93, "SchedCron": "NTgAtILY", "SchedRange": ["Jug2aUas", "vU1f7h6c", "jYLxcVJz"]}, {"Action": 92, "Resource": "zL62zJws", "SchedAction": 38, "SchedCron": "a8esxn1Y", "SchedRange": ["LfeSlQU2", "P0QRcwHP", "nM9QfmYq"]}]}' 'qUAbayQq' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-bulk-v3 '[{"Action": 53, "Resource": "V3wZBWE7"}, {"Action": 41, "Resource": "oW6tO317"}, {"Action": 50, "Resource": "FqKtWIT8"}]' 'zUwgFRwo' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-v3 '3' 'wD9xfgdC' 't6sTRipa' --login_with_auth "Bearer foo"
iam-admin-get-user-platform-accounts-v3 'n2PlfkwB' --login_with_auth "Bearer foo"
iam-admin-get-list-justice-platform-accounts 'xo5wql4V' --login_with_auth "Bearer foo"
iam-admin-get-user-mapping '3I0MNYza' 'iNtNMHKr' --login_with_auth "Bearer foo"
iam-admin-create-justice-user 'ZKQ455lE' '4euGpmXR' --login_with_auth "Bearer foo"
iam-admin-link-platform-account '{"platformId": "H0QPwAZK", "platformUserId": "lAiUb4JD"}' 'RPrEqLOk' --login_with_auth "Bearer foo"
iam-admin-platform-unlink-v3 '{"platformNamespace": "Mweiptbk"}' 'qtX3n0Op' 'JdYD0wp5' --login_with_auth "Bearer foo"
iam-admin-platform-link-v3 'wYjntzqx' 'Ofonkb4R' 'l3WteGxN' --login_with_auth "Bearer foo"
iam-admin-get-third-party-platform-token-link-status-v3 '2AN1Wjkc' '1IA8Lh34' 'GxHKqXmc' --login_with_auth "Bearer foo"
iam-admin-delete-user-roles-v3 '["K9cOwFIx", "1Wzv0jNL", "OaJ0G9aH"]' 'DUIOuR5N' --login_with_auth "Bearer foo"
iam-admin-save-user-role-v3 '[{"namespace": "A25NESbT", "roleId": "SiTSFGDi"}, {"namespace": "YHyogUuI", "roleId": "B2FZuXf2"}, {"namespace": "ESI3vNH5", "roleId": "uVivbIqo"}]' 'zIet4mvG' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v3 'moe8RZ4n' 'L3PoGiwQ' --login_with_auth "Bearer foo"
iam-admin-delete-user-role-v3 'NrgcYUjM' 'VjHipQLR' --login_with_auth "Bearer foo"
iam-admin-update-user-status-v3 '{"enabled": false, "reason": "da4fvbGv"}' 'uQn4eFYO' --login_with_auth "Bearer foo"
iam-admin-verify-user-without-verification-code-v3 'KkXX1KSc' --login_with_auth "Bearer foo"
iam-admin-update-client-secret-v3 '{"newSecret": "x11i7MAG"}' 'dH71O4QV' --login_with_auth "Bearer foo"
iam-admin-get-roles-v3 --login_with_auth "Bearer foo"
iam-admin-create-role-v3 '{"adminRole": true, "deletable": false, "isWildcard": true, "managers": [{"displayName": "cjTyiw3y", "namespace": "OopV7xhe", "userId": "9Jf00Ifd"}, {"displayName": "oK4Z12XD", "namespace": "WIvcPwcz", "userId": "sgWhSN6T"}, {"displayName": "zgEsYPG9", "namespace": "gjZBR7dB", "userId": "qFabQ5r9"}], "members": [{"displayName": "ni4i2feK", "namespace": "0jdpRj6l", "userId": "F1dGwnYo"}, {"displayName": "ZI7aTQjV", "namespace": "Q7ENrVcV", "userId": "JhHhIqri"}, {"displayName": "uvBZCaih", "namespace": "OZXhpXlO", "userId": "Pi5vycbk"}], "permissions": [{"action": 42, "resource": "rJabbchv", "schedAction": 53, "schedCron": "jyN3eoUs", "schedRange": ["zWqBOywI", "RNqThr8a", "WbfpybWb"]}, {"action": 84, "resource": "RFadC6VR", "schedAction": 67, "schedCron": "uxfqMNTk", "schedRange": ["gtnt3wZp", "Ho3ruRKk", "dmYAW8s5"]}, {"action": 57, "resource": "dDaj34td", "schedAction": 29, "schedCron": "ZNQRJ1e4", "schedRange": ["aaIhGHll", "VlgPHEtx", "zpO2R5Ti"]}], "roleName": "JbS8WsQU"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v3 '3uIYMhUL' --login_with_auth "Bearer foo"
iam-admin-delete-role-v3 'K9zcyrKU' --login_with_auth "Bearer foo"
iam-admin-update-role-v3 '{"deletable": true, "isWildcard": true, "roleName": "nQYyLRMi"}' 'fyO3VAhn' --login_with_auth "Bearer foo"
iam-admin-get-role-admin-status-v3 '7ejFNMnY' --login_with_auth "Bearer foo"
iam-admin-update-admin-role-status-v3 'tdvJqwtu' --login_with_auth "Bearer foo"
iam-admin-remove-role-admin-v3 's6lnAJsY' --login_with_auth "Bearer foo"
iam-admin-get-role-managers-v3 'BkdCAkaY' --login_with_auth "Bearer foo"
iam-admin-add-role-managers-v3 '{"managers": [{"displayName": "D2qCLLNL", "namespace": "mNBhvBPk", "userId": "Cik8vj4O"}, {"displayName": "YzrvBJjt", "namespace": "Ltwdff13", "userId": "mUXfYYvf"}, {"displayName": "U1GBqxSk", "namespace": "pb6YMm5m", "userId": "XUZOD0mf"}]}' 'unBeAMp1' --login_with_auth "Bearer foo"
iam-admin-remove-role-managers-v3 '{"managers": [{"displayName": "3VC2eAe9", "namespace": "LsyOBzvU", "userId": "V4yqRuEa"}, {"displayName": "7OoPxUrA", "namespace": "vomY75Gn", "userId": "l2ODsQEI"}, {"displayName": "lpK7j1NQ", "namespace": "nvr0IgeD", "userId": "hq79EGWT"}]}' 'UQaFLIHF' --login_with_auth "Bearer foo"
iam-admin-get-role-members-v3 'GJ1BVgFB' --login_with_auth "Bearer foo"
iam-admin-add-role-members-v3 '{"members": [{"displayName": "O8S7jUwk", "namespace": "y5hhzdt0", "userId": "UK2tCUCQ"}, {"displayName": "03izw708", "namespace": "JOisTDvy", "userId": "6DNa1lpI"}, {"displayName": "gzqJreb2", "namespace": "FHEBkHO6", "userId": "rejKCN0w"}]}' '6j38SwKH' --login_with_auth "Bearer foo"
iam-admin-remove-role-members-v3 '{"members": [{"displayName": "VKZhDvVu", "namespace": "Z8ISRtzC", "userId": "nUdd9uzO"}, {"displayName": "HBcWBVkZ", "namespace": "VfFQDmVN", "userId": "u0Zr1TJf"}, {"displayName": "RFVck13S", "namespace": "FOr33OjJ", "userId": "yfkdLKMJ"}]}' 'eYQf6l9V' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v3 '{"permissions": [{"action": 90, "resource": "y8oHV3xD", "schedAction": 56, "schedCron": "OcyMcuWo", "schedRange": ["1qvVVKwl", "GhKpxODX", "a4eVjcsu"]}, {"action": 44, "resource": "17KyKRbk", "schedAction": 12, "schedCron": "Nt60FccG", "schedRange": ["eO39Lqai", "3NElscUw", "QoVHiHNW"]}, {"action": 26, "resource": "E3LbNzlf", "schedAction": 91, "schedCron": "GNRP5Xg6", "schedRange": ["j8FhVRtP", "5guOOVlk", "VAdV7Rho"]}]}' 'rTvjZrYy' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v3 '{"permissions": [{"action": 46, "resource": "ri89G9AD", "schedAction": 23, "schedCron": "n2NLguz1", "schedRange": ["ki9jPIL0", "RV8ZHCC1", "aS3IlpLK"]}, {"action": 92, "resource": "R8XxPhAG", "schedAction": 87, "schedCron": "NBld3nHO", "schedRange": ["ctRc1s5y", "GUPhYzw2", "LFl3Q7xT"]}, {"action": 75, "resource": "00MbnHFy", "schedAction": 86, "schedCron": "LdjtwR9A", "schedRange": ["ztjLy5UG", "gV3gq23f", "dOmX48Ix"]}]}' 'J8cwtKD7' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v3 '["EKDIOt4i", "WNpnlq5W", "CXoR755l"]' 'rNxu2YOh' --login_with_auth "Bearer foo"
iam-admin-delete-role-permission-v3 '69' 'ZTFUXwbO' 'htHZ6VsG' --login_with_auth "Bearer foo"
iam-admin-get-my-user-v3 --login_with_auth "Bearer foo"
iam-user-authentication-v3 'fxjEqTaW' 'L0OlFaYE' '5a5Fu4mC' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-authentication-with-platform-link-v3 '3iLI0u1N' 'cuCXIIBG' 'MYWXROiX' 'hVhcNxp2' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v3 'yBuixvTA' --login_with_auth "Bearer foo"
iam-request-one-time-linking-code-v3 's6iNHF41' --login_with_auth "Bearer foo"
iam-validate-one-time-linking-code-v3 'J5XcpojT' --login_with_auth "Bearer foo"
iam-request-token-by-one-time-link-code-response-v3 '2omn5nh2' 'tOhBHCOU' --login_with_auth "Bearer foo"
iam-get-country-location-v3 --login_with_auth "Bearer foo"
iam-logout --login_with_auth "Bearer foo"
iam-request-game-token-code-response-v3 'qbQEcsE5' --login_with_auth "Bearer foo"
iam-admin-retrieve-user-third-party-platform-token-v3 '4V55i9XG' 'xQB4bMoY' --login_with_auth "Bearer foo"
iam-revoke-user-v3 '1f5vz7B4' --login_with_auth "Bearer foo"
iam-authorize-v3 'ahmDw9w7' 'code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-introspection-v3 '9qn8PbOK' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-jwksv3 --login_with_auth "Bearer foo"
iam-send-mfa-authentication-code 'vw2ToLi9' 'P41KRm1t' 'wLS0GIpz' --login_with_auth "Bearer foo"
iam-change2fa-method 'A3RfBMfq' 'P1bDRN4d' --login_with_auth "Bearer foo"
iam-verify2fa-code '489Vk4dd' 'AEswQAxw' 'bdY9cA6S' 'false' --login_with_auth "Bearer foo"
iam-retrieve-user-third-party-platform-token-v3 '1m7a3Foo' 'VJo6soIy' --login_with_auth "Bearer foo"
iam-auth-code-request-v3 'OYaV30qr' 'LFF2CAcR' --login_with_auth "Bearer foo"
iam-platform-token-grant-v3 'aKgeOykg' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-revocation-list-v3 --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-revocation-v3 'uOv8Kqmy' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-grant-v3 'client_credentials' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-verify-token-v3 'cr3icVU9' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-platform-authentication-v3 'hdySCMTw' '8Fvzvl86' --login_with_auth "Bearer foo"
iam-public-get-input-validations --login_with_auth "Bearer foo"
iam-public-get-country-age-restriction-v3 'VrFPC2yN' --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-public-v3 --login_with_auth "Bearer foo"
iam-retrieve-active-oidc-clients-public-v3 'Zo2LDxeH' --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["hxteTcwh", "trFNu0cp", "6bYrRRp2"]}' 'ZoXDhU9N' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv3 '78HMj2u8' 'eMRpvtar' --login_with_auth "Bearer foo"
iam-public-get-async-status 'pK4oINQG' --login_with_auth "Bearer foo"
iam-public-search-user-v3 --login_with_auth "Bearer foo"
iam-public-create-user-v3 '{"PasswordMD5Sum": "IpWekv5v", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "E2wd0lhD", "policyId": "HZ22sdEV", "policyVersionId": "Gyoc5a8k"}, {"isAccepted": true, "localizedPolicyVersionId": "yC3QoMDE", "policyId": "SHnJadqH", "policyVersionId": "bVSQHqMR"}, {"isAccepted": true, "localizedPolicyVersionId": "qBwCqJR1", "policyId": "ARCkuGrd", "policyVersionId": "D3FrbEEz"}], "authType": "DudqmhiL", "code": "3RLcfZpN", "country": "u22bJ9An", "dateOfBirth": "4PDRrImC", "displayName": "81wy80bU", "emailAddress": "qb4jnm0E", "password": "IY2i9NpD", "reachMinimumAge": true}' --login_with_auth "Bearer foo"
iam-check-user-availability 'HN0qz6qI' '1qVC3xxW' --login_with_auth "Bearer foo"
iam-public-bulk-get-users '{"userIds": ["hGdB8Q55", "tGCGIIDS", "VxjGMblf"]}' --login_with_auth "Bearer foo"
iam-public-send-registration-code '{"emailAddress": "rEBeMnQW", "languageTag": "PFxEzABq"}' --login_with_auth "Bearer foo"
iam-public-verify-registration-code '{"code": "kD6ZgkTj", "emailAddress": "seHNHTcS"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v3 '{"emailAddress": "eIqOzUf8", "languageTag": "PufcHFH9"}' --login_with_auth "Bearer foo"
iam-get-admin-invitation-v3 'pQoBLCmB' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v3 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "mmDO4PW6", "policyId": "JemOjD8m", "policyVersionId": "7i0GGORb"}, {"isAccepted": false, "localizedPolicyVersionId": "qA6L1c1L", "policyId": "l4D0G15W", "policyVersionId": "wq6PM6Dg"}, {"isAccepted": true, "localizedPolicyVersionId": "5MHr64Zg", "policyId": "WQ2RM03a", "policyVersionId": "Cp9svaFQ"}], "authType": "EMAILPASSWD", "country": "95cY76sc", "dateOfBirth": "cBZe2kK6", "displayName": "EUdusNgJ", "password": "7kxUVOGR", "reachMinimumAge": false}' 'NpScJ7lO' --login_with_auth "Bearer foo"
iam-update-user-v3 '{"avatarUrl": "Sq9TJRPC", "country": "n6yDNzk9", "dateOfBirth": "O696v924", "displayName": "6jWql1Wu", "languageTag": "nJAdchK1", "userName": "Szn50G47"}' --login_with_auth "Bearer foo"
iam-public-partial-update-user-v3 '{"avatarUrl": "rNceM0jm", "country": "O1cisK9E", "dateOfBirth": "A78qD9W3", "displayName": "YOOZFKOe", "languageTag": "FYnBuXZF", "userName": "Rv8z0Uln"}' --login_with_auth "Bearer foo"
iam-public-send-verification-code-v3 '{"context": "syABIuy6", "emailAddress": "iQxf9LaP", "languageTag": "2loE4SmL"}' --login_with_auth "Bearer foo"
iam-public-user-verification-v3 '{"code": "J1BsNE4g", "contactType": "K50BAAHO", "languageTag": "dAZ8nTDZ", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v3 '{"code": "xx3tJ2p4", "country": "XH6YK1Nc", "dateOfBirth": "nfCMKOfX", "displayName": "LcWeQvrN", "emailAddress": "Q16AzJZf", "password": "SSj0UBlV", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-verify-headless-account-v3 '{"emailAddress": "7RkdHXPy", "password": "ZmsEgvzX"}' --login_with_auth "Bearer foo"
iam-public-update-password-v3 '{"languageTag": "lAYAfIp0", "newPassword": "xvcAmncl", "oldPassword": "VelJHOMP"}' --login_with_auth "Bearer foo"
iam-public-create-justice-user 'qCNZBLHn' --login_with_auth "Bearer foo"
iam-public-platform-link-v3 'FOTFzc4f' 'pzVoeV87' --login_with_auth "Bearer foo"
iam-public-platform-unlink-v3 '{"platformNamespace": "k0jvgW2h"}' 'ShTXPl7b' --login_with_auth "Bearer foo"
iam-public-platform-unlink-all-v3 'LOT2L8jE' --login_with_auth "Bearer foo"
iam-public-force-platform-link-v3 'tbJKGiLL' '97GJzqCc' --login_with_auth "Bearer foo"
iam-public-web-link-platform 'Ui2uE21B' --login_with_auth "Bearer foo"
iam-public-web-link-platform-establish 'zPJdW9xW' 'vcXurjB7' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"code": "Cqsbzw3m", "emailAddress": "HkL8PsZi", "newPassword": "scNf0GMR"}' --login_with_auth "Bearer foo"
iam-public-get-user-by-user-id-v3 '9svIGXJs' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 'p9HRkfmG' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 'BHaLYHZS' --login_with_auth "Bearer foo"
iam-public-get-user-information-v3 'blav84g9' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 'srOprKGO' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 'Dq4SvLh0' --login_with_auth "Bearer foo"
iam-public-list-justice-platform-accounts-v3 'u01gD26k' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "w37p97Mh", "platformUserId": "ND5XaRt4"}' 'TdCiOYHt' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["lepoHpbM", "XHQZNbxN", "UdclvpY3"], "requestId": "g6D47PIk"}' 'Bc3WTNTg' --login_with_auth "Bearer foo"
iam-public-get-publisher-user-v3 '8mbUZZgm' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 'NCcwQpF3' 'Z807sRwA' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 'n1qYGaEl' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-public-get-link-headless-account-to-my-account-conflict-v3 'q4hZZ4e0' --login_with_auth "Bearer foo"
iam-link-headless-account-to-my-account-v3 '{"chosenNamespaces": ["R7Xoogxz", "sj8W2Wwt", "0Nh8ZmMR"], "oneTimeLinkCode": "4TK0wfaz"}' --login_with_auth "Bearer foo"
iam-public-send-verification-link-v3 '{"languageTag": "RpC5MIxe"}' --login_with_auth "Bearer foo"
iam-public-verify-user-by-link-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler '8mNb2Kcc' 'PTBYmsNC' --login_with_auth "Bearer foo"
iam-login-sso-client 'YN4riUab' --login_with_auth "Bearer foo"
iam-logout-sso-client 'r9EdnAze' --login_with_auth "Bearer foo"
iam-request-game-token-response-v3 'KKcnvy2l' --login_with_auth "Bearer foo"
iam-admin-get-devices-by-user-v4 --login_with_auth "Bearer foo"
iam-admin-get-banned-devices-v4 --login_with_auth "Bearer foo"
iam-admin-get-user-device-bans-v4 'ynrrqyZ3' --login_with_auth "Bearer foo"
iam-admin-ban-device-v4 '{"comment": "jNHvwPld", "deviceId": "XalyKzap", "deviceType": "bHpujohY", "enabled": false, "endDate": "iDPIFEtC", "ext": {"xrfLY8Xh": {}, "KTjA0iH2": {}, "JHhHHrDy": {}}, "reason": "vGSYy159"}' --login_with_auth "Bearer foo"
iam-admin-get-device-ban-v4 'ojYFdEwX' --login_with_auth "Bearer foo"
iam-admin-update-device-ban-v4 '{"enabled": true}' 'D8Be1nez' --login_with_auth "Bearer foo"
iam-admin-generate-report-v4 'x446UJW1' --login_with_auth "Bearer foo"
iam-admin-get-device-types-v4 --login_with_auth "Bearer foo"
iam-admin-get-device-bans-v4 'zNUC8xgo' --login_with_auth "Bearer foo"
iam-admin-decrypt-device-v4 'Lkjnfhv2' --login_with_auth "Bearer foo"
iam-admin-unban-device-v4 'gtREbYUp' --login_with_auth "Bearer foo"
iam-admin-get-users-by-device-v4 'X7KQ4bpB' --login_with_auth "Bearer foo"
iam-admin-create-test-users-v4 '{"count": 88}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["zIjXuAqA", "J0ptmcEo", "rMTkS69r"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "yAgIk0Sx", "country": "sRdgxLre", "dateOfBirth": "XEfkP8b1", "displayName": "rNJZ3Mze", "languageTag": "J82OoHRt", "userName": "CW2QkANh"}' 'ZaXUbKyC' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "Cecgu0Re", "emailAddress": "UMeOYzt9"}' 'a35l4B8M' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 'yRoha4ct' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 '3z8e2tTj' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["xFFmtGb5", "l5nOI5WQ", "qJyOGrPT"], "roleId": "rlILnE5V"}' 'l4auqZ9c' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["GFB7Cbxj", "k0tH7xW5", "EfoK1hv2"], "roleId": "muOoxV50"}' '4OWAxZ5O' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["W4XIrP6J", "yrTZ0koF", "09qu3mNr"], "roleId": "mp8MaqYe"}' 'Kh3JlPc7' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "fazyyOUb"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 'zaoy4k90' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 'JZsWJ8mj' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "fnttE5NV"}' 'NEfinK2a' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 6, "resource": "vlYMEP7p", "schedAction": 82, "schedCron": "sTJrVJYr", "schedRange": ["ayTiJnbX", "L7W8f6PW", "PbW34Adp"]}, {"action": 6, "resource": "EVMEQBRi", "schedAction": 60, "schedCron": "Dnoc7j26", "schedRange": ["aF6uS85I", "ncUYU9tY", "9oU2f2Hw"]}, {"action": 27, "resource": "UwstNTs5", "schedAction": 35, "schedCron": "yX4GTxJn", "schedRange": ["2Qo7wcaK", "J280DMdu", "P1neKG8S"]}]}' 's6L8D3ek' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 0, "resource": "IXfQ4IuF", "schedAction": 67, "schedCron": "3ygl4qJS", "schedRange": ["5uZh9pr1", "TTyv0h2g", "KqwT0A86"]}, {"action": 91, "resource": "aGgoT1h8", "schedAction": 69, "schedCron": "N7HKBMJh", "schedRange": ["DZAfaA6Y", "674BL3Xj", "lLQ6USel"]}, {"action": 60, "resource": "j8mWBxbq", "schedAction": 63, "schedCron": "PbsE16PR", "schedRange": ["zBYzwaZR", "zO9wB5aF", "KgYfsgu1"]}]}' 'Bma7aRxY' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["I36rAneA", "0uGtTA8P", "CXC767dg"]' '39jnoZFq' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'XYWXz1gB' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["YMz45nwh", "adXkzyha", "dU6eyYIN"], "namespace": "FFF4oUr6", "userId": "pJx0FhUR"}' 'o49onaJm' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "HrZX4pvb", "userId": "nDl1E8YF"}' '03iFMYQG' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "V6RItT5Q", "country": "q8I7l6E7", "dateOfBirth": "HvBaLfvn", "displayName": "iINY3HZj", "languageTag": "nK48ueLI", "userName": "TVvF7bCn"}' --login_with_auth "Bearer foo"
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
iam-admin-enable-my-email-v4 't0c7kmVt' --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 'sSRaQyOV' --login_with_auth "Bearer foo"
iam-admin-invite-user-v4 '{"assignedNamespaces": ["vFnuu29N", "0ASQ8g4L", "9wuw9gN1"], "emailAddresses": ["zx9AF0vo", "vu3GkEkR", "Hm8uS1ga"], "isAdmin": false, "namespace": "an2NnCmR", "roleId": "UfJtASKe"}' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "OKoGyKWC", "policyId": "rLociTl8", "policyVersionId": "nGL45BJr"}, {"isAccepted": true, "localizedPolicyVersionId": "eAnzb0QG", "policyId": "fUhZUeCV", "policyVersionId": "3mEVXzNd"}, {"isAccepted": true, "localizedPolicyVersionId": "UGceJWBD", "policyId": "FO6xVR3m", "policyVersionId": "BwSMkafb"}], "authType": "EMAILPASSWD", "country": "E9OXnKtz", "dateOfBirth": "qun54e1b", "displayName": "29FmhMa1", "emailAddress": "AwrcLRXm", "password": "MLEbeghI", "passwordMD5Sum": "15TZ4Hgk", "username": "BBkjqnsT", "verified": false}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "1D6eTG2r", "policyId": "Uktm7v0g", "policyVersionId": "miY2PfeK"}, {"isAccepted": true, "localizedPolicyVersionId": "1Rnrpe9s", "policyId": "Z4Bgpjjg", "policyVersionId": "dSJuVtjZ"}, {"isAccepted": true, "localizedPolicyVersionId": "ChruyT5m", "policyId": "dyD3iSF8", "policyVersionId": "0x1e8O4v"}], "authType": "EMAILPASSWD", "code": "HdDeskly", "country": "2DdhLVXN", "dateOfBirth": "nI15qwN1", "displayName": "SzwP2KjJ", "emailAddress": "mATIfzlN", "password": "3cfV0pWh", "passwordMD5Sum": "Y1e64jUY", "reachMinimumAge": false, "username": "FwAaUuyG"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "BAb6u1yz", "policyId": "GyO1eMVu", "policyVersionId": "X6XBphNK"}, {"isAccepted": true, "localizedPolicyVersionId": "dPYI3Ggy", "policyId": "VJcVz0KD", "policyVersionId": "MahY8vIK"}, {"isAccepted": false, "localizedPolicyVersionId": "P56YKgbo", "policyId": "eUQ57iXT", "policyVersionId": "wOWtkH0y"}], "authType": "EMAILPASSWD", "country": "LA8FIzxT", "dateOfBirth": "WDpqtNQN", "displayName": "LmJ0YjRU", "password": "9JbFoHZ1", "reachMinimumAge": false, "username": "v4NxyVK8"}' 'NY8Zqlum' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "YXTO2aGC", "country": "inaR0Czu", "dateOfBirth": "18qaNqVc", "displayName": "SSfAl5EZ", "languageTag": "XpBosOd6", "userName": "0fUOZUAj"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "WxGLhEXr", "emailAddress": "LGq2uqKr"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "HnLe6X5j", "country": "jpecTkoH", "dateOfBirth": "1yKuTTwm", "displayName": "ZFlakVkH", "emailAddress": "Gjp62VEH", "password": "HTBkep5P", "reachMinimumAge": false, "username": "PU4OWFTi", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"emailAddress": "E8MfNgpN", "password": "AaPBXG7E", "username": "jwawAMht"}' --login_with_auth "Bearer foo"
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
iam-public-enable-my-email-v4 'FjfvBfXy' --login_with_auth "Bearer foo"
iam-public-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-public-make-factor-my-default-v4 'zDmDRy0D' --login_with_auth "Bearer foo"
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
    '[{"field": "azJHnvxw", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "blockedWord": ["XN374p0O", "iAtgycIv", "OGcJ6ihl"], "description": [{"language": "lCWOeNb7", "message": ["cTuOYR2S", "MgrdmSNH", "1t8aY40Q"]}, {"language": "WohKIDPd", "message": ["RW5o9PLD", "WcCakZX3", "fyVpDD9U"]}, {"language": "yQeVYV2a", "message": ["0fgEDNVu", "rjgIPuYC", "2M0LBB5v"]}], "isCustomRegex": true, "letterCase": "cXdnYh1L", "maxLength": 69, "maxRepeatingAlphaNum": 67, "maxRepeatingSpecialCharacter": 71, "minCharType": 59, "minLength": 31, "regex": "yVtYejBQ", "specialCharacterLocation": "iM70R5p6", "specialCharacters": ["mKOL0HI6", "kVGh9jBv", "MVeYVmZt"]}}, {"field": "WlRO8jL6", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "blockedWord": ["f6uyoW8J", "R9Dvu4Us", "5jhYCkkS"], "description": [{"language": "pwf4ksd9", "message": ["D8AYgZlm", "2wtduvQN", "zhxr44Ua"]}, {"language": "Chvivx3V", "message": ["6t8lcD1J", "FOQJjrB4", "KCggknC8"]}, {"language": "md9EbTI4", "message": ["NOPoxM1O", "jTkbDF1h", "d5MhTIMI"]}], "isCustomRegex": true, "letterCase": "0XGdn1nH", "maxLength": 37, "maxRepeatingAlphaNum": 5, "maxRepeatingSpecialCharacter": 17, "minCharType": 44, "minLength": 2, "regex": "Mmmr2U2o", "specialCharacterLocation": "9tx7QDqw", "specialCharacters": ["8nuNchne", "yimmVGJx", "ri3nIR9G"]}}, {"field": "bfPw5sof", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "blockedWord": ["pt67NqNl", "ik4JCmSK", "fJHySVjx"], "description": [{"language": "FYNQfYoQ", "message": ["5yVCqiLE", "EDHX4Zy0", "A68EpwTf"]}, {"language": "MNHOYyrV", "message": ["zY2Jotw1", "xL4hMIjw", "NLeXnOrk"]}, {"language": "hur8nkeO", "message": ["CBp02jJY", "anJw34TX", "WN1VVXMS"]}], "isCustomRegex": false, "letterCase": "MYrCfQLh", "maxLength": 22, "maxRepeatingAlphaNum": 83, "maxRepeatingSpecialCharacter": 19, "minCharType": 4, "minLength": 68, "regex": "HXGz0bgk", "specialCharacterLocation": "n91Vt9Zv", "specialCharacters": ["BfRZ3YMQ", "9DPmcVmA", "POzJYQRq"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    'RZ1ni270' \
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
    '{"ageRestriction": 97, "enable": false}' \
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
    '{"ageRestriction": 72}' \
    '2Rf2Qqx9' \
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
    '{"ban": "2PDnRpcd", "comment": "ypves1wa", "endDate": "NWVbWwSB", "reason": "xzBshRTo", "skipNotif": false, "userIds": ["xHOpLNc1", "idOso8Qy", "4gyHycC0"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "czOqWCVW", "userId": "XhsvCCQo"}, {"banId": "a22mhxS4", "userId": "jRW2XKBI"}, {"banId": "WXyJCEh7", "userId": "j0mUeebX"}]}' \
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
    '{"audiences": ["2MI6L2us", "664YR11T", "nj5HLvaF"], "baseUri": "1g7g2Qiu", "clientId": "AB2Gw360", "clientName": "SklueEFm", "clientPermissions": [{"action": 48, "resource": "MHe20YlL", "schedAction": 41, "schedCron": "sOlRMGnV", "schedRange": ["W1MoSTU3", "XLsZTRLL", "akysvW3h"]}, {"action": 89, "resource": "iZmhzjmy", "schedAction": 75, "schedCron": "ks3kB50U", "schedRange": ["8OGpLpjp", "hMo2AfgF", "2mvr3kxb"]}, {"action": 57, "resource": "Py5Nso1b", "schedAction": 47, "schedCron": "ydIXTEiW", "schedRange": ["w2u3M2jF", "BOYppOYp", "Vgn7IEqz"]}], "clientPlatform": "y5LrCz5i", "deletable": false, "description": "9Z8Tmsmf", "namespace": "TrPJOiF6", "oauthAccessTokenExpiration": 43, "oauthAccessTokenExpirationTimeUnit": "MTdg17KZ", "oauthClientType": "rdFvKaJz", "oauthRefreshTokenExpiration": 20, "oauthRefreshTokenExpirationTimeUnit": "csocciCM", "parentNamespace": "tfBwbxUf", "redirectUri": "R5umdUtH", "scopes": ["MEKALMiz", "8UBCOivq", "WR7MuKWP"], "secret": "mj9u4laQ", "twoFactorEnabled": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    '3ZGEsmvq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'RbMaf8jS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["KY8ejEHi", "u9pZw7Po", "ucWRrfDa"], "baseUri": "UZLFzaJS", "clientName": "8NB3VHSO", "clientPermissions": [{"action": 78, "resource": "jSKvdBgi", "schedAction": 79, "schedCron": "jh4D5lKn", "schedRange": ["RHyhpYrq", "lN4jgDjj", "OsQFqkOE"]}, {"action": 24, "resource": "Im6rpTBA", "schedAction": 38, "schedCron": "v5NzJdQM", "schedRange": ["sP9ytJwF", "jpwQWjL1", "vnrpAoQh"]}, {"action": 85, "resource": "6pVufy6n", "schedAction": 3, "schedCron": "rAYyZjoB", "schedRange": ["sV9RkWfQ", "Ae7DP9FW", "Ru7MHP2O"]}], "clientPlatform": "EDXwWDrX", "deletable": true, "description": "0Do7emf5", "namespace": "4HAPpEIt", "oauthAccessTokenExpiration": 64, "oauthAccessTokenExpirationTimeUnit": "Fz3g1aST", "oauthRefreshTokenExpiration": 26, "oauthRefreshTokenExpirationTimeUnit": "hGbrfYdr", "redirectUri": "J2y5bdV0", "scopes": ["TttPRTiT", "wWybzzBN", "ivZEMxpz"], "twoFactorEnabled": true}' \
    'uokT5CrF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 99, "resource": "toKWNvMY"}, {"action": 33, "resource": "VFTzQ94d"}, {"action": 12, "resource": "62t0HnMb"}]}' \
    'jAohc3gi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 71, "resource": "8p5tN6iA"}, {"action": 81, "resource": "omScaWLk"}, {"action": 43, "resource": "oeXA99bt"}]}' \
    'E2uceiqa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '91' \
    'XbiAfcI7' \
    'xKnM2FGQ' \
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
    'ZukoVLZi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "Tx1vXzxC", "AWSCognitoRegion": "fe4iEfjM", "AWSCognitoUserPool": "7VXbHrH7", "AllowedClients": ["kmZTEs5p", "FNN03kVR", "703isWNr"], "AppId": "cT2BEN3K", "AuthorizationEndpoint": "SwYzqazw", "ClientId": "ZLnp2Kkf", "Environment": "466aGqrn", "FederationMetadataURL": "OMfezoci", "GenericOauthFlow": false, "IsActive": true, "Issuer": "PHvQ4fbE", "JWKSEndpoint": "lAdOynQM", "KeyID": "N43MwpTw", "NetflixCertificates": {"encryptedPrivateKey": "gBwOJxDk", "encryptedPrivateKeyName": "CgOC0svr", "publicCertificate": "gLampzPS", "publicCertificateName": "a95tQC6Q", "rootCertificate": "VRg2GEMT", "rootCertificateName": "2hgPNHpE"}, "OrganizationId": "tLp4W94Y", "PlatformName": "EpiRlFEP", "RedirectUri": "2SDthmQj", "RegisteredDomains": [{"affectedClientIDs": ["W7MP76SQ", "LOoRIEwf", "q3zvLxWF"], "domain": "lLPD1QCz", "namespaces": ["vMqfiOpg", "F3B15Gcm", "9QUghF8i"], "roleId": "bEamY8qz"}, {"affectedClientIDs": ["4n3mRoAu", "ch8spcrf", "iLvSmke6"], "domain": "asyNb5zv", "namespaces": ["PO5q843t", "i9yvwGoT", "PFUDXksL"], "roleId": "jvTuVAE2"}, {"affectedClientIDs": ["gU8qEVrn", "QpJRrGk1", "iRBLu4pQ"], "domain": "7dYrHn0S", "namespaces": ["JSgHq2A9", "XZBE5a4P", "Q5CMvWdP"], "roleId": "HYeBBLOx"}], "Secret": "GpaUOESv", "TeamID": "IijjgtL5", "TokenAuthenticationType": "9YOBQWQ7", "TokenClaimsMapping": {"A2CAcEir": "MDGPseLF", "mMpbz3O8": "DINN0MFT", "3SfZ9Vj7": "OKUARL7p"}, "TokenEndpoint": "9dJODoOy", "scopes": ["s8FQicXJ", "N9G3NFZV", "glx2oaFr"]}' \
    'JetVTbfh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    'PDL8atZE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "xRXrX9za", "AWSCognitoRegion": "8Ff6drOl", "AWSCognitoUserPool": "wExetkPW", "AllowedClients": ["ou4HRfun", "CcoOGUQ5", "aMkDr7E3"], "AppId": "B65EZYnl", "AuthorizationEndpoint": "ArDFgiEo", "ClientId": "9D7gAerB", "Environment": "LwwHT6I2", "FederationMetadataURL": "ipjsf5pm", "GenericOauthFlow": true, "IsActive": false, "Issuer": "f3k2dJbu", "JWKSEndpoint": "LumGMBmh", "KeyID": "Zit372AM", "NetflixCertificates": {"encryptedPrivateKey": "GrOfxxgU", "encryptedPrivateKeyName": "wC29VVNA", "publicCertificate": "HWwY4zx4", "publicCertificateName": "Pz27ZSz7", "rootCertificate": "y9boZegJ", "rootCertificateName": "kpa7UhCq"}, "OrganizationId": "nxMd0vcp", "PlatformName": "zlXpS1ib", "RedirectUri": "lPxdOnET", "RegisteredDomains": [{"affectedClientIDs": ["B4u0W4v4", "zOTE0xjz", "VMduX2mg"], "domain": "g09TW0ev", "namespaces": ["A9mOtkAg", "ci7xyPow", "fbSQPVAu"], "roleId": "OYSXOlVH"}, {"affectedClientIDs": ["YNrBAtj1", "nQlipHfk", "1CjXlCUe"], "domain": "7qHgs8Bc", "namespaces": ["w6ZOOjf1", "2gNkJ4x2", "vnw9xjZI"], "roleId": "ulsT2knT"}, {"affectedClientIDs": ["U3xV83uS", "WZJkPxlY", "IfRzifUB"], "domain": "Uupc7FTe", "namespaces": ["RRLuZYHM", "Kt5k9k8D", "TTpTuQQh"], "roleId": "FbnRLB0r"}], "Secret": "1hoPrbFR", "TeamID": "4o9IKCz8", "TokenAuthenticationType": "YVLCuyjJ", "TokenClaimsMapping": {"rJQqAGx8": "qFWAjgOt", "6Kxem9da": "JvLnxefz", "wYLJNGEr": "HTrOgKcx"}, "TokenEndpoint": "HiZzaFDp", "scopes": ["kdwwMORl", "d0z0DV5H", "VrNuPJPi"]}' \
    'R0vSB12W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["nv43lN1E", "u6GwOEGT", "ZtsTywp7"], "assignedNamespaces": ["4QnQKVne", "UjKdJ8Vm", "nFV7qPdm"], "domain": "qAKrQ1S9", "roleId": "W9gfsxXI"}' \
    'AGoYaZ6O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "5OoCzKyk"}' \
    'ZCxwodFJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    'YimP23Hy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "QanK7a6J", "apiKey": "IiNQNs4h", "appId": "nT6U07NS", "federationMetadataUrl": "kM7sKArP", "isActive": false, "redirectUri": "aFA0lQxy", "secret": "5k5WlPbE", "ssoUrl": "LPywt9xi"}' \
    'Hk8MWmo6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'aq6yMrEx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "WN9XSJtn", "apiKey": "NAmzfji2", "appId": "yZpXY97x", "federationMetadataUrl": "MLwacGK4", "isActive": true, "redirectUri": "EyOSrVR5", "secret": "VQF5oHOK", "ssoUrl": "uwztYByC"}' \
    'TEIiCRN3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'yndSpBfG' \
    '7ua4HMlG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    '8rhQsdvM' \
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
    '{"userIds": ["QhrAU098", "mvwA5SCl", "iJoGmQ9p"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["wDksynQq", "Eh5Qs3Wp", "YqXbGO3G"], "isAdmin": false, "namespace": "mCZ4H2Lv", "roles": ["MPmerR5C", "NZ5MQXk0", "s1zDczz6"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'AdminInviteUserV3' test.out

#- 146 AdminQueryThirdPlatformLinkHistoryV3
$PYTHON -m $MODULE 'iam-admin-query-third-platform-link-history-v3' \
    'ujXB7ZJ3' \
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
    '{"listEmailAddressRequest": ["EfwV9cdf", "dTWGiAW5", "zPHeJRrH"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'AdminGetBulkUserByEmailAddressV3' test.out

#- 150 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'OB98zqOo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AdminGetUserByUserIdV3' test.out

#- 151 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "nTHbEzEb", "country": "YM4akZMq", "dateOfBirth": "BOz689zt", "displayName": "r4bQvJtp", "languageTag": "RSEk6i72", "userName": "GOgMZvsV"}' \
    'YH8kIn0T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserV3' test.out

#- 152 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'DPa5qp1W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'AdminGetUserBanV3' test.out

#- 153 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "U6vy2qZk", "comment": "92PVFfqE", "endDate": "cnbEXQtp", "reason": "uZdqjTjd", "skipNotif": false}' \
    'mX3IoATZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AdminBanUserV3' test.out

#- 154 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": true, "skipNotif": true}' \
    'aief8OFV' \
    'NWKGRFTK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'AdminUpdateUserBanV3' test.out

#- 155 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "rQ7obLzg", "emailAddress": "1aUyWw0V", "languageTag": "oiY9cHHD"}' \
    'fKfFdlMN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminSendVerificationCodeV3' test.out

#- 156 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "Yf3JNTPV", "ContactType": "4ThWHAaO", "LanguageTag": "SG7ueMgJ", "validateOnly": false}' \
    'BZZXcvyJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'AdminVerifyAccountV3' test.out

#- 157 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'JFnGhAxc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'GetUserVerificationCode' test.out

#- 158 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    '6wNxZvrQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserDeletionStatusV3' test.out

#- 159 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"enabled": false}' \
    '8PqVRsVm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminUpdateUserDeletionStatusV3' test.out

#- 160 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "yKGUI8H2", "country": "Pyku4y5Y", "dateOfBirth": "jYI8vOSb", "displayName": "tFMLn0Da", "emailAddress": "YNzW8P6u", "password": "MP4ONqPP", "validateOnly": true}' \
    'tP2viD9V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminUpgradeHeadlessAccountV3' test.out

#- 161 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'rVyD4h27' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminDeleteUserInformationV3' test.out

#- 162 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'zFsVk44l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminGetUserLoginHistoriesV3' test.out

#- 163 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "Nfzs7255", "newPassword": "Rjf6usBd", "oldPassword": "u4WA5TO5"}' \
    '5sOFP50K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AdminResetPasswordV3' test.out

#- 164 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 92, "Resource": "OGzJDhfc", "SchedAction": 88, "SchedCron": "YSiMw9Hp", "SchedRange": ["3aBdeDKj", "sxKLSeie", "WlUAw1XK"]}, {"Action": 86, "Resource": "y0bHmv4r", "SchedAction": 11, "SchedCron": "JDnYuY1e", "SchedRange": ["w30dSUUc", "IrnvM2Pg", "fxVPydZo"]}, {"Action": 32, "Resource": "KqBfcAuF", "SchedAction": 44, "SchedCron": "1VhEI5WH", "SchedRange": ["27GGGoAJ", "sKtiKjVs", "9gs4DlSG"]}]}' \
    'kf4zsLN9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserPermissionV3' test.out

#- 165 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 60, "Resource": "LekivUSJ", "SchedAction": 42, "SchedCron": "F3ZvK7aq", "SchedRange": ["DVqprbIK", "4iidDdAn", "rfiDSZaH"]}, {"Action": 14, "Resource": "J0mVITor", "SchedAction": 73, "SchedCron": "CnLNxT5n", "SchedRange": ["l5vGgu4l", "vUYgg3LS", "rtVquHB2"]}, {"Action": 60, "Resource": "dsEcd5Fb", "SchedAction": 46, "SchedCron": "JVR0sviZ", "SchedRange": ["N9PC9Gb6", "z2XcO1rH", "SR735tQN"]}]}' \
    'yVvL7gKr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminAddUserPermissionsV3' test.out

#- 166 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 89, "Resource": "FfZXc51Y"}, {"Action": 56, "Resource": "Y1awdSV0"}, {"Action": 57, "Resource": "FUK2Jz4t"}]' \
    'RJTdL23J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionBulkV3' test.out

#- 167 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '79' \
    'QveQag9T' \
    'vkon13MK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserPermissionV3' test.out

#- 168 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'tKaSQ5Rm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserPlatformAccountsV3' test.out

#- 169 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'IOiFVjrJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminGetListJusticePlatformAccounts' test.out

#- 170 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    'xVABlUlR' \
    '9Ztj3Ygq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminGetUserMapping' test.out

#- 171 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    'MWmY1O0Y' \
    'c53QN9zE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminCreateJusticeUser' test.out

#- 172 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "4CH8laNv", "platformUserId": "oy3UoaM4"}' \
    'R9cJ2dSv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminLinkPlatformAccount' test.out

#- 173 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "2FITwgHI"}' \
    'tEJIOGpx' \
    'v3VP78F9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformUnlinkV3' test.out

#- 174 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'ajiAd51i' \
    'fjSXa3l7' \
    '6oMrWZf1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminPlatformLinkV3' test.out

#- 175 AdminGetThirdPartyPlatformTokenLinkStatusV3
$PYTHON -m $MODULE 'iam-admin-get-third-party-platform-token-link-status-v3' \
    '722tpNI0' \
    '2zaC0Ep3' \
    'Sq8CCrZQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 176 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["xWT4YOoH", "hvVPc7S0", "dNBBunup"]' \
    's3g2yJSg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminDeleteUserRolesV3' test.out

#- 177 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "Wy8vSc0Z", "roleId": "r1PTqqJV"}, {"namespace": "IPbbg9nl", "roleId": "d81D2Iix"}, {"namespace": "4ZHLtphg", "roleId": "lEEnCFYR"}]' \
    'rF8WEbCf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminSaveUserRoleV3' test.out

#- 178 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    'lfdDdy6i' \
    'Ug1YGUE3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminAddUserRoleV3' test.out

#- 179 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'zABu4wqy' \
    'XWTbLNFt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminDeleteUserRoleV3' test.out

#- 180 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": true, "reason": "OAHQG8YF"}' \
    'tYkGrSk5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateUserStatusV3' test.out

#- 181 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'YzgscUQO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 182 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "i6gR7o60"}' \
    '7bX23jjO' \
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
    '{"adminRole": false, "deletable": true, "isWildcard": false, "managers": [{"displayName": "bwlJS4VK", "namespace": "GJxqAm1u", "userId": "pKkvDp2j"}, {"displayName": "9rTl4Qye", "namespace": "GCdk3YWS", "userId": "rHhgyGtA"}, {"displayName": "EQlodLgb", "namespace": "gpesepqG", "userId": "Z5jFVwai"}], "members": [{"displayName": "F4BDA0VH", "namespace": "se6wqtmj", "userId": "bJ18cxBh"}, {"displayName": "8TtU5Exd", "namespace": "wm9jwthF", "userId": "J1oNZugU"}, {"displayName": "9r1BXDlT", "namespace": "A6HoObbu", "userId": "GJtZTCOw"}], "permissions": [{"action": 5, "resource": "smif6WNo", "schedAction": 30, "schedCron": "oGwTWZAY", "schedRange": ["3lcjQAs5", "02D845ts", "rhJ3Zb90"]}, {"action": 94, "resource": "QCr4nzXL", "schedAction": 92, "schedCron": "Ge0kCMjy", "schedRange": ["fjDTpVQd", "iu7BgRpC", "93pzuivX"]}, {"action": 62, "resource": "frMoZL3M", "schedAction": 13, "schedCron": "8X0Ndc1G", "schedRange": ["DG9zDQys", "FzBRtos1", "yxk8qx83"]}], "roleName": "VeP8lbYk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminCreateRoleV3' test.out

#- 185 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'z4aNsBeF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRoleV3' test.out

#- 186 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    '1uGsOwVz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteRoleV3' test.out

#- 187 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": true, "isWildcard": true, "roleName": "vRmLa0uF"}' \
    '4c3tH1ST' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateRoleV3' test.out

#- 188 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    'uYuD7Gzn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminGetRoleAdminStatusV3' test.out

#- 189 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    '5ZLWejv0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateAdminRoleStatusV3' test.out

#- 190 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'bntjWuVB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminRemoveRoleAdminV3' test.out

#- 191 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    '6Fpwxdmw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRoleManagersV3' test.out

#- 192 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "5KqjOOzo", "namespace": "obLPwJMK", "userId": "1PqBBmPT"}, {"displayName": "tkCfyFCn", "namespace": "ergLc76k", "userId": "X3e8wdbh"}, {"displayName": "yZPkPwN4", "namespace": "K9tG9Vxz", "userId": "x5zZEnFS"}]}' \
    'KQXsiCnW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminAddRoleManagersV3' test.out

#- 193 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "DEGHHE22", "namespace": "CV6DeaeL", "userId": "JINjA6eT"}, {"displayName": "kzs9oP23", "namespace": "GznC8sga", "userId": "JxNMdNyg"}, {"displayName": "ZCSrNxKA", "namespace": "Gq1Er1Pz", "userId": "Hs2QcWkY"}]}' \
    'UczWdFio' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminRemoveRoleManagersV3' test.out

#- 194 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'hvTqwVV7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminGetRoleMembersV3' test.out

#- 195 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "gaDMUmvS", "namespace": "D8Vuo6rY", "userId": "pEeNOuUJ"}, {"displayName": "cH6NSeon", "namespace": "n0pErsuk", "userId": "SZFQ4aYE"}, {"displayName": "m0d9nKNu", "namespace": "7RVbE0it", "userId": "pRrGAq7B"}]}' \
    'PMZbv7gx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminAddRoleMembersV3' test.out

#- 196 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "f3aqA8TR", "namespace": "M0lJ7Nqs", "userId": "rPgbdqkC"}, {"displayName": "pp3q1zIY", "namespace": "tZ0SAC01", "userId": "ZsHwJGd1"}, {"displayName": "9sftyujd", "namespace": "hzgtNWzg", "userId": "Ai2JaO07"}]}' \
    'apOFtFhI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminRemoveRoleMembersV3' test.out

#- 197 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 72, "resource": "07v3rVog", "schedAction": 44, "schedCron": "FBa21bYx", "schedRange": ["wHiNuScY", "3f7T0bjZ", "VhlkOy96"]}, {"action": 86, "resource": "xBlwbl69", "schedAction": 96, "schedCron": "9EWSoWE5", "schedRange": ["v7n2vIT2", "QTJeD511", "PpLNDlDW"]}, {"action": 15, "resource": "AWaTKFK4", "schedAction": 7, "schedCron": "Yebtg2Jk", "schedRange": ["LXzEzcwf", "kywl6HpJ", "A8DVm94D"]}]}' \
    'DbyBuAGo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateRolePermissionsV3' test.out

#- 198 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 86, "resource": "HsJwTiZ2", "schedAction": 34, "schedCron": "LLYDVmGh", "schedRange": ["p5tIAQYW", "fc6ORQxp", "Giised7T"]}, {"action": 11, "resource": "NfhjcDaq", "schedAction": 86, "schedCron": "Sw3iJqde", "schedRange": ["wy08HMP1", "KJFDSeSz", "p4f6ZVr9"]}, {"action": 8, "resource": "7nz1lRTY", "schedAction": 60, "schedCron": "GBRMQtjP", "schedRange": ["MXTuFn7H", "t1FxrW5D", "azlSl4HB"]}]}' \
    'bPL7dmoH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'AdminAddRolePermissionsV3' test.out

#- 199 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["YmmSHFOS", "eTtNFdM2", "Lr13jZ9S"]' \
    'Z4xhepin' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'AdminDeleteRolePermissionsV3' test.out

#- 200 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '51' \
    '5IuSEeVk' \
    'SfL2otBs' \
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
    '4sC9wnjz' \
    'JTyls0sI' \
    '6pVVIycq' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 202 'UserAuthenticationV3' test.out

#- 203 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    'lssxq5nW' \
    'sd5OQr0i' \
    'NB5xkJZo' \
    '8l8RaXaa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'AuthenticationWithPlatformLinkV3' test.out

#- 204 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    'ftDEs3Hl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 205 RequestOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-request-one-time-linking-code-v3' \
    'PEpqSuEQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'RequestOneTimeLinkingCodeV3' test.out

#- 206 ValidateOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-validate-one-time-linking-code-v3' \
    'v11DSbYG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'ValidateOneTimeLinkingCodeV3' test.out

#- 207 RequestTokenByOneTimeLinkCodeResponseV3
$PYTHON -m $MODULE 'iam-request-token-by-one-time-link-code-response-v3' \
    'Cy3fEy6I' \
    '9gI2NS5x' \
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
    'TpITuR2X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'RequestGameTokenCodeResponseV3' test.out

#- 211 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    '9XQkjNln' \
    'llRrN2q5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 212 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    'I055Aswx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'RevokeUserV3' test.out

#- 213 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    'IhYFxXe0' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 213 'AuthorizeV3' test.out

#- 214 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'cQrP0r1x' \
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
    'tR1G0X3x' \
    'Hw1luWBX' \
    't4tSFlWT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'SendMFAAuthenticationCode' test.out

#- 217 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    'XqjBzi7j' \
    'q1pV8RUA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'Change2faMethod' test.out

#- 218 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    'pyEk0nwQ' \
    'dpacGrg2' \
    'oYjjWxJb' \
    'true' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'Verify2faCode' test.out

#- 219 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'vEf5IIUT' \
    'q2PjCsGG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'X03qmEwu' \
    'lmDbXRGx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'AuthCodeRequestV3' test.out

#- 221 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'NS91Oigs' \
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
    'YbFXBJ6M' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 223 'TokenRevocationV3' test.out

#- 224 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'password' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 224 'TokenGrantV3' test.out

#- 225 VerifyTokenV3
$PYTHON -m $MODULE 'iam-verify-token-v3' \
    'Ck3Ce4Zi' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 225 'VerifyTokenV3' test.out

#- 226 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'WvS8AaTu' \
    'sRfVgs9q' \
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
    'QvSCcDnV' \
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
    'hVQuxEnY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 231 PublicListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["z1S64hPE", "5TbdltPp", "D7b7uwUx"]}' \
    'M84yqSWP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 232 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    'TOiNULwM' \
    'HWbrK2D3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'PublicGetUserByPlatformUserIDV3' test.out

#- 233 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    'kuAyTQGz' \
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
    '{"PasswordMD5Sum": "Y7lfqbG9", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "UXpzjBWm", "policyId": "JJdEBbX4", "policyVersionId": "PjdRMyOv"}, {"isAccepted": true, "localizedPolicyVersionId": "T2OgUeCr", "policyId": "P9oy3ZRJ", "policyVersionId": "bnAYWjYu"}, {"isAccepted": true, "localizedPolicyVersionId": "Vw46HgSt", "policyId": "J4yRjkNp", "policyVersionId": "zEAG4k7l"}], "authType": "rwoAbqzB", "code": "Kh306QEV", "country": "sQScITc3", "dateOfBirth": "Zou799bU", "displayName": "yd51NLzp", "emailAddress": "HRhTkdxE", "password": "L83UqJe9", "reachMinimumAge": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'PublicCreateUserV3' test.out

#- 236 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'oJ3jJWQg' \
    '5wvBJ0Zp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'CheckUserAvailability' test.out

#- 237 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["ZvlizVtK", "IFkcQPzw", "SWtaVVyM"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'PublicBulkGetUsers' test.out

#- 238 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "Jw2dnrWr", "languageTag": "Q0Q0TloP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'PublicSendRegistrationCode' test.out

#- 239 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "NGL6Y2Ky", "emailAddress": "cAPUyxC5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'PublicVerifyRegistrationCode' test.out

#- 240 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "nWeVEP0B", "languageTag": "SWrJiOYv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'PublicForgotPasswordV3' test.out

#- 241 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    'zTX5fzQW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'GetAdminInvitationV3' test.out

#- 242 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "5TaG6BBa", "policyId": "vYXx6l0G", "policyVersionId": "LDqvxeZf"}, {"isAccepted": false, "localizedPolicyVersionId": "wtj6cM78", "policyId": "7E2V3rvo", "policyVersionId": "lfcMOiwM"}, {"isAccepted": false, "localizedPolicyVersionId": "ZJ8B21fP", "policyId": "9lPj7tf4", "policyVersionId": "78yf0Zhc"}], "authType": "EMAILPASSWD", "country": "18Q68JPT", "dateOfBirth": "wfEeURfq", "displayName": "iOhZ3ihZ", "password": "YpfiKC4S", "reachMinimumAge": true}' \
    'xZARcdsb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'CreateUserFromInvitationV3' test.out

#- 243 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "cxNyvH0X", "country": "OuIr5c3S", "dateOfBirth": "xxe3dv1W", "displayName": "uIV4dqeH", "languageTag": "wVQYAHJq", "userName": "s8lFZ8vP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'UpdateUserV3' test.out

#- 244 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "b3vYOFmk", "country": "v1To8bj4", "dateOfBirth": "FWgsOVP7", "displayName": "kcxcNFll", "languageTag": "ayjFS2br", "userName": "3Qvx2TMw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'PublicPartialUpdateUserV3' test.out

#- 245 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "cdJMTprS", "emailAddress": "zcSCDnYZ", "languageTag": "9WS2gjDa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'PublicSendVerificationCodeV3' test.out

#- 246 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "AG1Vv83V", "contactType": "5f7nnMmm", "languageTag": "0ysbFiLL", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'PublicUserVerificationV3' test.out

#- 247 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "Kqk6C3qV", "country": "Oanyk8dC", "dateOfBirth": "wu8BX7Vm", "displayName": "aqBmb6kf", "emailAddress": "fXxKITbB", "password": "tPuzuPYb", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'PublicUpgradeHeadlessAccountV3' test.out

#- 248 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "bjumDi6z", "password": "yw2xJKaY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'PublicVerifyHeadlessAccountV3' test.out

#- 249 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "vrRTn4H3", "newPassword": "qWQ20GqZ", "oldPassword": "3BrkXayY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'PublicUpdatePasswordV3' test.out

#- 250 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'CHOrKtwA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'PublicCreateJusticeUser' test.out

#- 251 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    '0fMM2mmi' \
    'IfEQL1sy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'PublicPlatformLinkV3' test.out

#- 252 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "vFg5neA0"}' \
    '9qWMyeek' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'PublicPlatformUnlinkV3' test.out

#- 253 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'dq0422Fp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'PublicPlatformUnlinkAllV3' test.out

#- 254 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    'ZBTQurEs' \
    'P19d7FgP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'PublicForcePlatformLinkV3' test.out

#- 255 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'JHUJRO5Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'PublicWebLinkPlatform' test.out

#- 256 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    '6skF7zBS' \
    'PbZjpdrj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'PublicWebLinkPlatformEstablish' test.out

#- 257 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "txKTHb1J", "emailAddress": "LW1nJQXO", "newPassword": "I2ZUgr17"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'ResetPasswordV3' test.out

#- 258 PublicGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-public-get-user-by-user-id-v3' \
    'YSIcwh1h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'PublicGetUserByUserIdV3' test.out

#- 259 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    'PYNJRSDx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'PublicGetUserBanHistoryV3' test.out

#- 260 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'NPHNxmH9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 261 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    'ucJXr7JS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'PublicGetUserInformationV3' test.out

#- 262 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'vQst0mFt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'PublicGetUserLoginHistoriesV3' test.out

#- 263 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    '3qKYTiyU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'PublicGetUserPlatformAccountsV3' test.out

#- 264 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    'oum4iErs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'PublicListJusticePlatformAccountsV3' test.out

#- 265 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "W060YO93", "platformUserId": "ppnhHUZK"}' \
    'rntcwXx1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'PublicLinkPlatformAccount' test.out

#- 266 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["Fj5VDKtj", "Y9Uy7MGM", "zez8Rl6X"], "requestId": "Rmn39ckp"}' \
    'Y0JLm9YT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'PublicForceLinkPlatformWithProgression' test.out

#- 267 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    'nudd1DSZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'PublicGetPublisherUserV3' test.out

#- 268 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'G782Gq4M' \
    'EBDQBQhE' \
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
    'Cg0S6ljI' \
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
    'e1C9EJun' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 273 LinkHeadlessAccountToMyAccountV3
$PYTHON -m $MODULE 'iam-link-headless-account-to-my-account-v3' \
    '{"chosenNamespaces": ["Th8xuZsH", "2NEEDXAZ", "XjM1CxZ8"], "oneTimeLinkCode": "wZ5Y8TzF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'LinkHeadlessAccountToMyAccountV3' test.out

#- 274 PublicSendVerificationLinkV3
$PYTHON -m $MODULE 'iam-public-send-verification-link-v3' \
    '{"languageTag": "JqX6eNUM"}' \
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
    'KnoHSSkr' \
    'KAXgquXn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'PlatformAuthenticateSAMLV3Handler' test.out

#- 277 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'mOAVEpxV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'LoginSSOClient' test.out

#- 278 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'P7UaXBQ5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'LogoutSSOClient' test.out

#- 279 RequestGameTokenResponseV3
$PYTHON -m $MODULE 'iam-request-game-token-response-v3' \
    '7yOzTEue' \
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
    'osinmLEy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'AdminGetUserDeviceBansV4' test.out

#- 283 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "eZL068JN", "deviceId": "kOZxuezq", "deviceType": "yh2d2D9X", "enabled": false, "endDate": "eNCfQwLq", "ext": {"XHpbRIXs": {}, "LEWem99F": {}, "crdpA2U7": {}}, "reason": "QVwL35zo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'AdminBanDeviceV4' test.out

#- 284 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    'BVWuxiop' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'AdminGetDeviceBanV4' test.out

#- 285 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": false}' \
    'XMNPXxm2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'AdminUpdateDeviceBanV4' test.out

#- 286 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    'JZGWbb3H' \
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
    '6ZnhfM7P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'AdminGetDeviceBansV4' test.out

#- 289 AdminDecryptDeviceV4
$PYTHON -m $MODULE 'iam-admin-decrypt-device-v4' \
    'A9GUe9kF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'AdminDecryptDeviceV4' test.out

#- 290 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    'lmTDkDPX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'AdminUnbanDeviceV4' test.out

#- 291 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    '2S7udiru' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'AdminGetUsersByDeviceV4' test.out

#- 292 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"count": 71}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'AdminCreateTestUsersV4' test.out

#- 293 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["y0hlv7Z2", "Xc5PisHk", "pnHXti5o"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'AdminBulkCheckValidUserIDV4' test.out

#- 294 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "lQpV0RVs", "country": "krxNRIvO", "dateOfBirth": "wMZ51SNl", "displayName": "XnHfLk5A", "languageTag": "kuTCtg3N", "userName": "pwXLSH9r"}' \
    'z6sERxj3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'AdminUpdateUserV4' test.out

#- 295 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "Jsix5xLg", "emailAddress": "iUOUkIgA"}' \
    'r6pnNHwW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'AdminUpdateUserEmailAddressV4' test.out

#- 296 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    'MXGPajwI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'AdminDisableUserMFAV4' test.out

#- 297 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'qt7whkcn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'AdminListUserRolesV4' test.out

#- 298 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["Eir6Fpro", "Nmfiot2j", "j2OQUWPb"], "roleId": "D8bpMz1J"}' \
    'CNnDWQ0D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateUserRoleV4' test.out

#- 299 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["DEb8PWk8", "0RQk8ngx", "Rn6Mqfto"], "roleId": "KpXtuO3Z"}' \
    'etqtt9qY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'AdminAddUserRoleV4' test.out

#- 300 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["hs8qKSf0", "b7DqHKLC", "Yf5Skc2G"], "roleId": "aBOfqE7E"}' \
    '524CwQTd' \
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
    '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "SwSA8ej1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'AdminCreateRoleV4' test.out

#- 303 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    '318h948E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'AdminGetRoleV4' test.out

#- 304 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'ofgzY4HK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'AdminDeleteRoleV4' test.out

#- 305 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "cl8hA0jl"}' \
    'LIIfe9Dg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'AdminUpdateRoleV4' test.out

#- 306 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 28, "resource": "DX4BxNxX", "schedAction": 14, "schedCron": "bmhYebQr", "schedRange": ["EK9R09YK", "BgPnG2R9", "KCTSfCM9"]}, {"action": 76, "resource": "OKUbuc5E", "schedAction": 6, "schedCron": "QsOqm3At", "schedRange": ["v1ObbR1O", "jmE6I0qN", "LKGTR6wd"]}, {"action": 41, "resource": "ktVzgpGW", "schedAction": 61, "schedCron": "c2SpMtBY", "schedRange": ["5hPx0WwW", "UxZL5qFN", "lNnWEsN5"]}]}' \
    'pXhye2hR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'AdminUpdateRolePermissionsV4' test.out

#- 307 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 41, "resource": "50sh5Wtz", "schedAction": 52, "schedCron": "6pGnNsNd", "schedRange": ["ygpN7fim", "uV6HctvT", "1vlDz311"]}, {"action": 38, "resource": "IP4pHJsL", "schedAction": 23, "schedCron": "vE7yTXMG", "schedRange": ["gNHr2bbQ", "1BBBVTwT", "BJUil49l"]}, {"action": 5, "resource": "oAsDLZOq", "schedAction": 25, "schedCron": "AtDJopxg", "schedRange": ["1JQnnbOb", "rbABF6Px", "tgLiVuDk"]}]}' \
    'r4bIBZfm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'AdminAddRolePermissionsV4' test.out

#- 308 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["wKMS6YNO", "TeDbsiOW", "kwHQiUvm"]' \
    'wi2zOEnc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'AdminDeleteRolePermissionsV4' test.out

#- 309 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'YvvUm42A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'AdminListAssignedUsersV4' test.out

#- 310 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["xtiukaME", "6SGgN6Kj", "qJ5h5d1D"], "namespace": "ZD2K5MHw", "userId": "iGl3X0Vn"}' \
    '068anFuS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'AdminAssignUserToRoleV4' test.out

#- 311 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "6L4SUE5q", "userId": "ak3DSAgQ"}' \
    'D7Mz5VY1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'AdminRevokeUserFromRoleV4' test.out

#- 312 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "O1EqteAn", "country": "1hGwTjqX", "dateOfBirth": "7TqF0mzu", "displayName": "JcpgW2eE", "languageTag": "POb5DoUB", "userName": "04crVrrJ"}' \
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
    '142iLNOG' \
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
    'vnc8ukt2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'AdminMakeFactorMyDefaultV4' test.out

#- 326 AdminInviteUserV4
$PYTHON -m $MODULE 'iam-admin-invite-user-v4' \
    '{"assignedNamespaces": ["SHuZficq", "QU4wozLy", "RLXsPN93"], "emailAddresses": ["0tAR3qH7", "F0S8v3Uz", "6gGZ31NE"], "isAdmin": false, "namespace": "d5jQXbw1", "roleId": "vaFooDGA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'AdminInviteUserV4' test.out

#- 327 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "IysA1O8g", "policyId": "DOw0nZUf", "policyVersionId": "Y67qsqTU"}, {"isAccepted": true, "localizedPolicyVersionId": "Z6CQ8P5q", "policyId": "dbNpIree", "policyVersionId": "IDP4oDvx"}, {"isAccepted": true, "localizedPolicyVersionId": "ckWl9dvZ", "policyId": "fbtu9xJP", "policyVersionId": "8jI39LgJ"}], "authType": "EMAILPASSWD", "country": "hNyabs4p", "dateOfBirth": "O5EysDLY", "displayName": "lymsmDhG", "emailAddress": "vSEdR1cC", "password": "sLcHG1f7", "passwordMD5Sum": "RT4iJPlp", "username": "iGmwE1DH", "verified": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'PublicCreateTestUserV4' test.out

#- 328 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "snwYmCPn", "policyId": "QjpqMyGM", "policyVersionId": "M7UVwTW8"}, {"isAccepted": false, "localizedPolicyVersionId": "iRx3MUQC", "policyId": "aZqo152q", "policyVersionId": "RD25Rzyc"}, {"isAccepted": true, "localizedPolicyVersionId": "ZRQo0Rm7", "policyId": "KRpYN9VS", "policyVersionId": "spkgH7Ly"}], "authType": "EMAILPASSWD", "code": "I5xbAksi", "country": "9wjKtxfZ", "dateOfBirth": "c9rY1fi1", "displayName": "4bmoKzuR", "emailAddress": "g8FhzAVO", "password": "wlG7HC62", "passwordMD5Sum": "PozsJ3DC", "reachMinimumAge": true, "username": "Jev3tdQy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'PublicCreateUserV4' test.out

#- 329 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "LY1xT4Tz", "policyId": "hlakwONd", "policyVersionId": "a3cvuxxo"}, {"isAccepted": false, "localizedPolicyVersionId": "Zs6ms0w0", "policyId": "NfZXgBDV", "policyVersionId": "qLehVDRz"}, {"isAccepted": true, "localizedPolicyVersionId": "187TB2yk", "policyId": "ZA8hsDsn", "policyVersionId": "hoGt1etR"}], "authType": "EMAILPASSWD", "country": "KmG28M0g", "dateOfBirth": "C8jv1CCm", "displayName": "PCEg0P7G", "password": "HjPzZiWE", "reachMinimumAge": true, "username": "HgMt5WZD"}' \
    'BRQj780D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'CreateUserFromInvitationV4' test.out

#- 330 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "ZQGrVE0T", "country": "wTtSCAOv", "dateOfBirth": "Acs6DJy6", "displayName": "3DVJPiol", "languageTag": "0HbjhvY3", "userName": "CSXxzSkH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'PublicUpdateUserV4' test.out

#- 331 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "F7GbQUAY", "emailAddress": "79znWeq5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'PublicUpdateUserEmailAddressV4' test.out

#- 332 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "BkKXVc2t", "country": "uhmIqGTx", "dateOfBirth": "5B3H85mF", "displayName": "d8HWK830", "emailAddress": "bjTiuHIs", "password": "lf0Aaao5", "reachMinimumAge": true, "username": "BWT8cWaQ", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 333 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "I6krTdgU", "password": "EIWUOT9L", "username": "lr117tSr"}' \
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
    'smRRhAGV' \
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
    'x5JwF3IV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicMakeFactorMyDefaultV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
