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
iam-admin-update-input-validations '[{"field": "THjU85ze", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "blockedWord": ["CzFIvTWq", "rUqAwrcq", "xrJYvueV"], "description": [{"language": "pz820y8r", "message": ["6Tc1taIM", "EZSXPFLQ", "lHGcGggp"]}, {"language": "PegPtXPq", "message": ["NdWvYGkf", "vWRLeyYw", "zI5uWO0z"]}, {"language": "s1fArxPg", "message": ["CT8uS7Rb", "KFNSOQaw", "0q6Y5fMe"]}], "isCustomRegex": true, "letterCase": "2fKWquFP", "maxLength": 23, "maxRepeatingAlphaNum": 63, "maxRepeatingSpecialCharacter": 46, "minCharType": 24, "minLength": 91, "regex": "3lKwXUNr", "specialCharacterLocation": "ETVCMvxN", "specialCharacters": ["CL0WLzcl", "MupNguxc", "kkcUSk4h"]}}, {"field": "mNcHaSqH", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "blockedWord": ["ITwOCnqI", "MtU66FtV", "QQWrdlac"], "description": [{"language": "oX3SKz2t", "message": ["aoo9JLUt", "bYnKBtcO", "YLA89mJV"]}, {"language": "hLIow3Vj", "message": ["Pvd7xDAZ", "aitvUr3I", "oD8N3rl6"]}, {"language": "gwFsmG6Z", "message": ["f0fs9UK1", "mdgUkHlz", "QPtlqWl5"]}], "isCustomRegex": true, "letterCase": "1W0e5bs7", "maxLength": 91, "maxRepeatingAlphaNum": 67, "maxRepeatingSpecialCharacter": 48, "minCharType": 91, "minLength": 46, "regex": "DGEpVGLZ", "specialCharacterLocation": "9MYebBKs", "specialCharacters": ["eG1AG4Xf", "P3uWQRt7", "6o2foYLq"]}}, {"field": "NwMUAoej", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "blockedWord": ["wjK1R8Jq", "hYBPolkC", "UCdH3jON"], "description": [{"language": "cXhYV1DU", "message": ["VLAP9sL9", "czdlXVBx", "c4uFx0Hu"]}, {"language": "rF64JCyI", "message": ["lHaoR9OC", "oqoOrElq", "xwtrsudm"]}, {"language": "oCLyCIA9", "message": ["lBuoFAkL", "lsjMbeWB", "cZQosVLu"]}], "isCustomRegex": false, "letterCase": "pjnrlh5H", "maxLength": 15, "maxRepeatingAlphaNum": 82, "maxRepeatingSpecialCharacter": 50, "minCharType": 56, "minLength": 0, "regex": "MKjrSSAZ", "specialCharacterLocation": "JhPMN7OL", "specialCharacters": ["rzAghdrm", "KowdNSCs", "140Qq88s"]}}]' --login_with_auth "Bearer foo"
iam-admin-reset-input-validations '3E1zbiCD' --login_with_auth "Bearer foo"
iam-list-admins-v3 --login_with_auth "Bearer foo"
iam-admin-get-age-restriction-status-v3 --login_with_auth "Bearer foo"
iam-admin-update-age-restriction-config-v3 '{"ageRestriction": 82, "enable": true}' --login_with_auth "Bearer foo"
iam-admin-get-list-country-age-restriction-v3 --login_with_auth "Bearer foo"
iam-admin-update-country-age-restriction-v3 '{"ageRestriction": 87}' 'CHVGJizj' --login_with_auth "Bearer foo"
iam-admin-get-banned-users-v3 --login_with_auth "Bearer foo"
iam-admin-ban-user-bulk-v3 '{"ban": "5vI1M53c", "comment": "dyompDoV", "endDate": "mOMPU3qY", "reason": "cggwJ76e", "skipNotif": false, "userIds": ["dTXWSwun", "quGsBRqA", "j5FJo3qt"]}' --login_with_auth "Bearer foo"
iam-admin-unban-user-bulk-v3 '{"bans": [{"banId": "0ED5VQyN", "userId": "P3okvzUN"}, {"banId": "LYcMG0Ti", "userId": "lIVk1ZER"}, {"banId": "JAbblkht", "userId": "XDZBnqpK"}]}' --login_with_auth "Bearer foo"
iam-admin-get-bans-type-with-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-get-clients-by-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-create-client-v3 '{"audiences": ["DuABMBe4", "PXzmQJ8J", "Oq4cDY6B"], "baseUri": "1GFzcbJA", "clientId": "9BW9luK0", "clientName": "8xaLePWC", "clientPermissions": [{"action": 29, "resource": "YBdtqkuX", "schedAction": 89, "schedCron": "EIvV9Bfr", "schedRange": ["ieo0G3wH", "wDj2m1wq", "ZOEV2N2O"]}, {"action": 8, "resource": "HkbVn2vs", "schedAction": 84, "schedCron": "m50ALUea", "schedRange": ["ZZtWo2cp", "OUzJqt3O", "nzdXhE7u"]}, {"action": 87, "resource": "2Hv0A1Gb", "schedAction": 32, "schedCron": "nyiwJR8y", "schedRange": ["QIL8eDuj", "LkcFXwlM", "1qeu8mdD"]}], "clientPlatform": "ahH73b8x", "deletable": true, "description": "GoVodcWq", "namespace": "mC0AMil0", "oauthAccessTokenExpiration": 9, "oauthAccessTokenExpirationTimeUnit": "WaPey8OY", "oauthClientType": "fk9iUIBn", "oauthRefreshTokenExpiration": 100, "oauthRefreshTokenExpirationTimeUnit": "Bn5nOi2S", "redirectUri": "6hEBtQmS", "scopes": ["Lepbu7Fm", "99GuY2db", "LaMbtC0q"], "secret": "OFzszxey", "twoFactorEnabled": true}' --login_with_auth "Bearer foo"
iam-admin-get-clientsby-namespaceby-idv3 'laOHjwwN' --login_with_auth "Bearer foo"
iam-admin-delete-client-v3 '946FKM0X' --login_with_auth "Bearer foo"
iam-admin-update-client-v3 '{"audiences": ["jPyDqXEr", "9XvSyuQ5", "QgAH8s66"], "baseUri": "XGWwTqb2", "clientName": "m0CERT7P", "clientPermissions": [{"action": 24, "resource": "sxZ5Ya5C", "schedAction": 9, "schedCron": "2Hx86Aog", "schedRange": ["3ghrm5pV", "zULAjp33", "afnMIY7G"]}, {"action": 64, "resource": "GW4qlK37", "schedAction": 16, "schedCron": "i3CVV0Kx", "schedRange": ["jBI6NCvK", "WrRkGlFQ", "o6dUBKcJ"]}, {"action": 96, "resource": "wCVKoJD7", "schedAction": 49, "schedCron": "Lfjnol4a", "schedRange": ["Ve2RvP0c", "89nKMKLW", "R2pMbGeI"]}], "clientPlatform": "sMEiZwjv", "deletable": true, "description": "Y1PwsS4A", "namespace": "jxuOAEwK", "oauthAccessTokenExpiration": 16, "oauthAccessTokenExpirationTimeUnit": "y26TB6za", "oauthRefreshTokenExpiration": 94, "oauthRefreshTokenExpirationTimeUnit": "9EZA32lB", "redirectUri": "rfuSJlwu", "scopes": ["Uy55aFkI", "vfv6etvb", "TgmWOJgf"], "twoFactorEnabled": false}' 'Iw3CsOsG' --login_with_auth "Bearer foo"
iam-admin-update-client-permission-v3 '{"permissions": [{"action": 81, "resource": "hVVuEdBt"}, {"action": 13, "resource": "kclKvp0x"}, {"action": 51, "resource": "ZjyGDdMv"}]}' 'Ch1rExB5' --login_with_auth "Bearer foo"
iam-admin-add-client-permissions-v3 '{"permissions": [{"action": 92, "resource": "xe7DxS2W"}, {"action": 21, "resource": "MgBuffRY"}, {"action": 59, "resource": "lKt2zzPy"}]}' 'DXzVt3UE' --login_with_auth "Bearer foo"
iam-admin-delete-client-permission-v3 '62' 'TvcQgELm' 'euHN6078' --login_with_auth "Bearer foo"
iam-retrieve-all-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-sso-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-third-party-login-platform-credential-v3 's3ddoeKN' --login_with_auth "Bearer foo"
iam-add-third-party-login-platform-credential-v3 '{"ACSURL": "bVQqglu3", "AWSCognitoRegion": "G9MGTwOB", "AWSCognitoUserPool": "IqAFOK2q", "AllowedClients": ["jIzwbjtx", "JnL5lUZ7", "YPR5EBvh"], "AppId": "B4OBxwCi", "AuthorizationEndpoint": "q2SWgLG7", "ClientId": "PEpBjVpO", "Environment": "UmOMiGxq", "FederationMetadataURL": "TqYe8yC3", "GenericOauthFlow": false, "IsActive": true, "Issuer": "f9RnQEXZ", "JWKSEndpoint": "ONQb83s1", "KeyID": "o7Y4IPJD", "NetflixCertificates": {"encryptedPrivateKey": "NZQ6QUEE", "encryptedPrivateKeyName": "jhojd2sA", "publicCertificate": "uFPIFUt9", "publicCertificateName": "nq5leEaS", "rootCertificate": "GbfkqJda", "rootCertificateName": "zL4Mk7sQ"}, "OrganizationId": "PS6wfiFK", "PlatformName": "8ICictTK", "RedirectUri": "a2P0Se2d", "RegisteredDomains": [{"affectedClientIDs": ["OKPUfhV9", "1eO05SSI", "7DtLQPbF"], "domain": "NsYqsWEl", "namespaces": ["mw7KjxBX", "tXJX1Szm", "rU1nKF7h"], "roleId": "iebwPzTJ"}, {"affectedClientIDs": ["BJMb8iNb", "zpT1AGef", "SK5oeWeR"], "domain": "E17MvMoG", "namespaces": ["PjMXM907", "oK13Nc8s", "U4rSVXnS"], "roleId": "jfr5Msog"}, {"affectedClientIDs": ["bDE04W80", "LBICXLo8", "XLqU0Jyr"], "domain": "aSkqkXU4", "namespaces": ["VCuGrkFK", "UROlfjky", "fawb2yJI"], "roleId": "7rrcQF66"}], "Secret": "nSq9Ookf", "TeamID": "5aIj8uAG", "TokenAuthenticationType": "TilVXsmt", "TokenClaimsMapping": {"aARlLQcn": "rfFj3rTb", "gCKGiJR5": "BzAfMm2i", "AvnfTVbi": "Kz2hsSVW"}, "TokenEndpoint": "u2SmmCgC", "scopes": ["FXjpyw7p", "PVG4Z4Ig", "bk5UDgUc"]}' '2EcIKp4z' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-credential-v3 'lBAbTiNP' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-credential-v3 '{"ACSURL": "6jhGbYBb", "AWSCognitoRegion": "kuE6VY5L", "AWSCognitoUserPool": "0SW8i2m5", "AllowedClients": ["iBjltAtU", "5J8fFLoe", "4PyfdQQb"], "AppId": "TCXSsOBY", "AuthorizationEndpoint": "ak9qczto", "ClientId": "IGTXz6y3", "Environment": "m9bLHd9r", "FederationMetadataURL": "U3V1Wkuf", "GenericOauthFlow": true, "IsActive": false, "Issuer": "UqEpEANi", "JWKSEndpoint": "OjO81d8S", "KeyID": "HwJlB11e", "NetflixCertificates": {"encryptedPrivateKey": "8vNcwSpM", "encryptedPrivateKeyName": "q0fKDzYQ", "publicCertificate": "GDVptTHL", "publicCertificateName": "tDNOJGB7", "rootCertificate": "ne2QeEPc", "rootCertificateName": "kNN8fJJT"}, "OrganizationId": "IiW2J3Xs", "PlatformName": "r0GGEU7C", "RedirectUri": "2aKUDzu4", "RegisteredDomains": [{"affectedClientIDs": ["I6nOD0rS", "YKU3MS9k", "S3XOWo0K"], "domain": "mT3e91D4", "namespaces": ["SzvlLJNN", "1PHYhFBA", "RyIAG6Fd"], "roleId": "ZlHgaXSF"}, {"affectedClientIDs": ["JlGFt8nC", "4CwzEuCa", "diLhuMrF"], "domain": "9EIRxLpn", "namespaces": ["V3aJoASN", "7ldfIoS6", "VlgzFeKO"], "roleId": "p0snZLeK"}, {"affectedClientIDs": ["WsWYjCgJ", "IgXXpBuS", "9T6b8O4J"], "domain": "9U7v2HXH", "namespaces": ["dHA1BQHP", "I3CeuueF", "j9lTEO0S"], "roleId": "lJRWHcvk"}], "Secret": "TBATARpo", "TeamID": "H7AwA7mh", "TokenAuthenticationType": "npKKm3MS", "TokenClaimsMapping": {"XmumVciQ": "nhcWf7Vx", "h3UHAvtX": "XatVP1RB", "HgkKyOBB": "xVxxYdNn"}, "TokenEndpoint": "F1TwNoGk", "scopes": ["gdH5GczA", "EswLzjZT", "SS8D1jIH"]}' 'zkFuRGeq' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-domain-v3 '{"affectedClientIDs": ["QYW3bYZ5", "4Z5P9UTA", "LQS3efpl"], "assignedNamespaces": ["DsSeObDt", "2Ftw0wnD", "4f5HmyA3"], "domain": "wDCjTui4", "roleId": "M0aACN6b"}' 'y1Xe05GY' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-domain-v3 '{"domain": "1rGLGUvU"}' 'W3Humm9w' --login_with_auth "Bearer foo"
iam-retrieve-sso-login-platform-credential 'iNW6LTNX' --login_with_auth "Bearer foo"
iam-add-sso-login-platform-credential '{"acsUrl": "QuOPvbR6", "apiKey": "LpgJLHD0", "appId": "r90G8gcW", "federationMetadataUrl": "aaUnJUDd", "isActive": true, "redirectUri": "zmbQ4uH3", "secret": "COKGoVfQ", "ssoUrl": "d8tf0xIX"}' 'E1PeL6KZ' --login_with_auth "Bearer foo"
iam-delete-sso-login-platform-credential-v3 'OlBHEXRy' --login_with_auth "Bearer foo"
iam-update-sso-platform-credential '{"acsUrl": "9qMVl7RP", "apiKey": "6vI6t34f", "appId": "Q7szSEdX", "federationMetadataUrl": "rk1TxFT0", "isActive": false, "redirectUri": "IwkKNCfb", "secret": "l58lk8Ec", "ssoUrl": "Sl2ClVDB"}' 'ygvWyuRW' --login_with_auth "Bearer foo"
iam-admin-get-user-by-platform-user-idv3 'MjblDidN' 'pM100wvE' --login_with_auth "Bearer foo"
iam-get-admin-users-by-role-id-v3 'moIKP5Bi' --login_with_auth "Bearer foo"
iam-admin-get-user-by-email-address-v3 --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-user-i-ds-v3 '{"userIds": ["nHqGVJ12", "qehCKWhH", "V8u4G6oZ"]}' --login_with_auth "Bearer foo"
iam-admin-invite-user-v3 '{"emailAddresses": ["kO4qpot8", "x9PrEuno", "E12A8YMI"], "isAdmin": false, "roles": ["l5bdfwHo", "FA0yQMXd", "1ZyvVSAP"]}' --login_with_auth "Bearer foo"
iam-admin-list-users-v3 --login_with_auth "Bearer foo"
iam-admin-search-user-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-by-email-address-v3 '{"listEmailAddressRequest": ["HxRmNS65", "Sa3mOw0a", "bUuhxVym"]}' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v3 'gxkshq2m' --login_with_auth "Bearer foo"
iam-admin-update-user-v3 '{"avatarUrl": "TslWWGaf", "country": "zwUkpid6", "dateOfBirth": "wFPWy28w", "displayName": "3O0lZRl0", "languageTag": "rxCCh7XW", "userName": "nb5C9mtM"}' '74SUId8b' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v3 'YrurEKKO' --login_with_auth "Bearer foo"
iam-admin-ban-user-v3 '{"ban": "7FgDsbwX", "comment": "zLp6qdli", "endDate": "YU6RUnSm", "reason": "qw8czlZI", "skipNotif": true}' '4s5AWtTG' --login_with_auth "Bearer foo"
iam-admin-update-user-ban-v3 '{"enabled": true, "skipNotif": true}' 'jcuFTcFg' 'o7vtG70b' --login_with_auth "Bearer foo"
iam-admin-send-verification-code-v3 '{"context": "rI4H6GNK", "emailAddress": "dBHWqgFo", "languageTag": "O4xawRoS"}' 'EfSbzhyZ' --login_with_auth "Bearer foo"
iam-admin-verify-account-v3 '{"Code": "Kt4gQqM2", "ContactType": "0CtUNRwk", "LanguageTag": "QETLxD3g", "validateOnly": false}' 'WARIHKGZ' --login_with_auth "Bearer foo"
iam-get-user-verification-code 'JMgEFf2E' --login_with_auth "Bearer foo"
iam-admin-get-user-deletion-status-v3 'umrrZ2GJ' --login_with_auth "Bearer foo"
iam-admin-update-user-deletion-status-v3 '{"enabled": true}' 'cuLFtF1E' --login_with_auth "Bearer foo"
iam-admin-upgrade-headless-account-v3 '{"code": "D4c5Nghn", "country": "8gUgRUyk", "dateOfBirth": "9UkpnJPg", "displayName": "dI7kX3L3", "emailAddress": "jRe549DA", "password": "bcgrUtde", "validateOnly": true}' 'AvkN1CF8' --login_with_auth "Bearer foo"
iam-admin-delete-user-information-v3 'yxbGiClS' --login_with_auth "Bearer foo"
iam-admin-get-user-login-histories-v3 'BEI2CQS9' --login_with_auth "Bearer foo"
iam-admin-reset-password-v3 '{"languageTag": "CAn4fTvq", "newPassword": "mouvtqSu", "oldPassword": "37TvnFkX"}' 'jXsl4WgW' --login_with_auth "Bearer foo"
iam-admin-update-user-permission-v3 '{"Permissions": [{"Action": 93, "Resource": "3MLwFNYz", "SchedAction": 38, "SchedCron": "sWJEHbXp", "SchedRange": ["pDLs6X2z", "1lCl1bzM", "lUY5CXHv"]}, {"Action": 30, "Resource": "cb70DG7G", "SchedAction": 66, "SchedCron": "pNYV0ZD3", "SchedRange": ["IJXUgx5K", "jYfmVKCj", "di4Fkyy2"]}, {"Action": 76, "Resource": "1VvfeMFO", "SchedAction": 84, "SchedCron": "nQhHfcrZ", "SchedRange": ["AkIDJU4k", "OKVgOeqr", "3P2PowGJ"]}]}' 'OHxXiyya' --login_with_auth "Bearer foo"
iam-admin-add-user-permissions-v3 '{"Permissions": [{"Action": 80, "Resource": "qiT0pBKn", "SchedAction": 22, "SchedCron": "G9j0po44", "SchedRange": ["kHY5ZpXM", "Mnzw0YVt", "DVKo3q7l"]}, {"Action": 39, "Resource": "un4X4c9H", "SchedAction": 79, "SchedCron": "AxjZuOvV", "SchedRange": ["8qhW6jE7", "DnrOZAoW", "Zk8cCNZk"]}, {"Action": 21, "Resource": "ZelftGX0", "SchedAction": 20, "SchedCron": "6I0q8nMp", "SchedRange": ["3YZI9UF8", "jpnJ1ARQ", "eKUlvzM6"]}]}' 'xLcVuUjZ' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-bulk-v3 '[{"Action": 70, "Resource": "FCwqEJAE"}, {"Action": 64, "Resource": "aQv24cdK"}, {"Action": 28, "Resource": "J3wyqJin"}]' 'kHlIOlHc' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-v3 '98' 'B4mKUKOu' 'O2n8DOLm' --login_with_auth "Bearer foo"
iam-admin-get-user-platform-accounts-v3 '18SV0wxj' --login_with_auth "Bearer foo"
iam-admin-get-list-justice-platform-accounts 'X004FSfL' --login_with_auth "Bearer foo"
iam-admin-get-user-mapping 'RwW7vfXi' 'iBJP2p6Y' --login_with_auth "Bearer foo"
iam-admin-create-justice-user 'acTl6B2X' '6JytHIhD' --login_with_auth "Bearer foo"
iam-admin-link-platform-account '{"platformId": "XGJspagA", "platformUserId": "yJXHuS6i"}' 'vDtUkoMc' --login_with_auth "Bearer foo"
iam-admin-platform-unlink-v3 '{"platformNamespace": "Bo8AHc58"}' 'eHFXTqEc' 'yC1pCOtV' --login_with_auth "Bearer foo"
iam-admin-platform-link-v3 'im0Z1IXA' '6e1Apml5' 'oYfS4XXG' --login_with_auth "Bearer foo"
iam-admin-delete-user-roles-v3 '["MuEHEO4f", "XLHaYWVn", "dbmUR1ik"]' 'Pghgpahm' --login_with_auth "Bearer foo"
iam-admin-save-user-role-v3 '[{"namespace": "Csxht6Bk", "roleId": "1P4zqens"}, {"namespace": "HV6ih3r3", "roleId": "VFe31IN8"}, {"namespace": "dBacekU9", "roleId": "1RHMjf6p"}]' 'xEoePEYk' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v3 'obxdwdyA' 'RJjrd50g' --login_with_auth "Bearer foo"
iam-admin-delete-user-role-v3 'FCBW3lE4' 'VRgWxW5a' --login_with_auth "Bearer foo"
iam-admin-update-user-status-v3 '{"enabled": true, "reason": "gKYhb2SU"}' 'Y1cxqCNa' --login_with_auth "Bearer foo"
iam-admin-verify-user-without-verification-code-v3 '1PYS3Wu1' --login_with_auth "Bearer foo"
iam-admin-update-client-secret-v3 '{"newSecret": "wzxGFUxA"}' 'aQy3eNqc' --login_with_auth "Bearer foo"
iam-admin-get-roles-v3 --login_with_auth "Bearer foo"
iam-admin-create-role-v3 '{"adminRole": true, "deletable": false, "isWildcard": false, "managers": [{"displayName": "SgAyNVAI", "namespace": "z3kTmJJs", "userId": "6Bgs924V"}, {"displayName": "zRSaAsCb", "namespace": "2FI4eOQR", "userId": "c8v6Qm0b"}, {"displayName": "CkKdOvOY", "namespace": "Rv6nAHK0", "userId": "QROQBQd4"}], "members": [{"displayName": "kqkXeyaK", "namespace": "y6STiZ2Z", "userId": "A7Eu9fny"}, {"displayName": "VY35pzpI", "namespace": "psM8Phc0", "userId": "2YgtMZqi"}, {"displayName": "3b0XmZAc", "namespace": "mnOOK89n", "userId": "9pAGEFhL"}], "permissions": [{"action": 91, "resource": "0nnnWQ8e", "schedAction": 12, "schedCron": "65xB533d", "schedRange": ["9lVTv3yq", "ZXW7aBAp", "oU4pc8er"]}, {"action": 94, "resource": "ekZGZeCo", "schedAction": 29, "schedCron": "qofkIXXJ", "schedRange": ["mOFuXuMl", "jJbUUQ7j", "pD7pSge0"]}, {"action": 92, "resource": "P4DPRJKH", "schedAction": 7, "schedCron": "4n5gzWxZ", "schedRange": ["IvhGJdPY", "ESUtGLCZ", "WSoOydiG"]}], "roleName": "BQuSRmnt"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v3 'rWc7b8A7' --login_with_auth "Bearer foo"
iam-admin-delete-role-v3 'KidjYrJ3' --login_with_auth "Bearer foo"
iam-admin-update-role-v3 '{"deletable": false, "isWildcard": false, "roleName": "LNaGWU19"}' 'JyquAVm1' --login_with_auth "Bearer foo"
iam-admin-get-role-admin-status-v3 'SW4vj8cg' --login_with_auth "Bearer foo"
iam-admin-update-admin-role-status-v3 'Nv3qZEyn' --login_with_auth "Bearer foo"
iam-admin-remove-role-admin-v3 'sfytnpCT' --login_with_auth "Bearer foo"
iam-admin-get-role-managers-v3 'X0CXbhBN' --login_with_auth "Bearer foo"
iam-admin-add-role-managers-v3 '{"managers": [{"displayName": "ZIKEepHg", "namespace": "Rhr2oauC", "userId": "22rlXbBf"}, {"displayName": "dt9TW3ut", "namespace": "eVj5juVg", "userId": "6j548imM"}, {"displayName": "6usnHk3L", "namespace": "kiykw2jM", "userId": "E0BRljA3"}]}' 'g1upKla4' --login_with_auth "Bearer foo"
iam-admin-remove-role-managers-v3 '{"managers": [{"displayName": "HSnWXocP", "namespace": "xF8je2a7", "userId": "2oS4DoJl"}, {"displayName": "Qp1Fzeah", "namespace": "JQQlE9t4", "userId": "LdSnQmSk"}, {"displayName": "Bsi3zkEP", "namespace": "fVlSFcHs", "userId": "UQt3u2c7"}]}' 'zNtiMR02' --login_with_auth "Bearer foo"
iam-admin-get-role-members-v3 'tRBfFQMD' --login_with_auth "Bearer foo"
iam-admin-add-role-members-v3 '{"members": [{"displayName": "VjgD39IO", "namespace": "5oRUKzbG", "userId": "U9B6mBaQ"}, {"displayName": "NAP9L6oO", "namespace": "lLpLxngu", "userId": "2aRT7P3B"}, {"displayName": "quYHwYfu", "namespace": "IegxvhVe", "userId": "xcsXgvEy"}]}' 'TMmA0PE1' --login_with_auth "Bearer foo"
iam-admin-remove-role-members-v3 '{"members": [{"displayName": "kKIpLRCU", "namespace": "QBG8gUCy", "userId": "zrzhTvuS"}, {"displayName": "kGhgppCA", "namespace": "Lx42zB33", "userId": "YzuDm9Bj"}, {"displayName": "NabyvSLh", "namespace": "2pK1qbtz", "userId": "NXb2H8oo"}]}' '8RTTiR5r' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v3 '{"permissions": [{"action": 90, "resource": "kliT45eP", "schedAction": 17, "schedCron": "qGx8sWXR", "schedRange": ["nU1m3Mmj", "HHSF0Ara", "wY13mQyy"]}, {"action": 39, "resource": "pwBPicg9", "schedAction": 70, "schedCron": "ZASj1RPq", "schedRange": ["YC9qo6k0", "tyQpR9fh", "DAcugSOa"]}, {"action": 58, "resource": "5oIowDih", "schedAction": 92, "schedCron": "BWhjC9sQ", "schedRange": ["rnXhUCKi", "PP6M83Lt", "iNCLhEMo"]}]}' 'FlYAcDNh' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v3 '{"permissions": [{"action": 72, "resource": "aBS3tjme", "schedAction": 68, "schedCron": "8ArStXBr", "schedRange": ["xJupoafz", "BVZcf1gm", "O5RoSnT4"]}, {"action": 39, "resource": "E0GxWH3n", "schedAction": 44, "schedCron": "b8eSgwBH", "schedRange": ["CM1tPXAN", "cOcmSOAj", "9YuRUjJy"]}, {"action": 84, "resource": "X8glVHYm", "schedAction": 98, "schedCron": "fE5YqnOC", "schedRange": ["YEmXQJuO", "HcXnosje", "N1J6MngI"]}]}' '8j4i9JzX' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v3 '["FnwkmPz3", "r7ddvewG", "H1Q9jgEk"]' 'NfADOGIO' --login_with_auth "Bearer foo"
iam-admin-delete-role-permission-v3 '7' 'HtDtq1JS' 'drysbkup' --login_with_auth "Bearer foo"
iam-admin-get-my-user-v3 --login_with_auth "Bearer foo"
iam-user-authentication-v3 'kgQeXdOp' 'NtUCCoaz' 'EGzef9Kj' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-authentication-with-platform-link-v3 'yoa6waVe' 'hkKzkC7J' 'WKQkFMaf' 'qALhMnbG' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v3 'y8oyZsPC' --login_with_auth "Bearer foo"
iam-get-country-location-v3 --login_with_auth "Bearer foo"
iam-logout --login_with_auth "Bearer foo"
iam-request-game-token-code-response-v3 '8Ipk3d2Z' --login_with_auth "Bearer foo"
iam-admin-retrieve-user-third-party-platform-token-v3 '0cG9nJnd' 'B1mgfEZi' --login_with_auth "Bearer foo"
iam-revoke-user-v3 'rjOhRD72' --login_with_auth "Bearer foo"
iam-authorize-v3 'e7VM0x0t' 'code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-introspection-v3 'm2UUsmw6' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-jwksv3 --login_with_auth "Bearer foo"
iam-send-mfa-authentication-code 'pyaCouG1' 'x35v0LjL' 'szxrJrc2' --login_with_auth "Bearer foo"
iam-change2fa-method '9EfS56B2' 'IcVWdugP' --login_with_auth "Bearer foo"
iam-verify2fa-code 'qI3O6Hkq' 'SYMYDYkF' 't0M8a73r' 'false' --login_with_auth "Bearer foo"
iam-retrieve-user-third-party-platform-token-v3 'K9KujuEq' 'Nc2DMMSN' --login_with_auth "Bearer foo"
iam-auth-code-request-v3 'l5ROLlK8' '5DYybvpv' --login_with_auth "Bearer foo"
iam-platform-token-grant-v3 'CO0UmcHK' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-revocation-list-v3 --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-revocation-v3 'kZ0oW6eG' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-grant-v3 'password' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-verify-token-v3 'xiYuLxCn' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-platform-authentication-v3 'oYTW8F7x' 'ndOB5Nhy' --login_with_auth "Bearer foo"
iam-public-get-input-validations --login_with_auth "Bearer foo"
iam-public-get-country-age-restriction-v3 'wDFoMgvA' --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-public-v3 --login_with_auth "Bearer foo"
iam-retrieve-active-oidc-clients-public-v3 'CmMAeB3P' --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["mkwo9ZPU", "VpQD4FIC", "P2aYJr2b"]}' 'KYVkoIIM' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv3 'N5tyfO97' '6YKvNksJ' --login_with_auth "Bearer foo"
iam-public-get-async-status '0mWCWVLJ' --login_with_auth "Bearer foo"
iam-public-search-user-v3 --login_with_auth "Bearer foo"
iam-public-create-user-v3 '{"PasswordMD5Sum": "djZfn9ov", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "AmseM7tD", "policyId": "ZHTd3py5", "policyVersionId": "2CHsW5Pc"}, {"isAccepted": true, "localizedPolicyVersionId": "TQOhGwTn", "policyId": "ycrsOmeE", "policyVersionId": "PUV1B2nD"}, {"isAccepted": true, "localizedPolicyVersionId": "WkJ8vbPk", "policyId": "8rZr61Zp", "policyVersionId": "6LJhiD8b"}], "authType": "a0xw6rKl", "code": "7eKSKJIe", "country": "NPeZtOY9", "dateOfBirth": "NrMhJHeF", "displayName": "Kxcwv87m", "emailAddress": "IsEN0MKY", "password": "Zp2fKetL", "reachMinimumAge": true}' --login_with_auth "Bearer foo"
iam-check-user-availability 'CRT7x8pa' 'DWlxJCzw' --login_with_auth "Bearer foo"
iam-public-bulk-get-users '{"userIds": ["IZ6dJ3No", "YrkRU70G", "hN2pGBgC"]}' --login_with_auth "Bearer foo"
iam-public-send-registration-code '{"emailAddress": "5GX9or9M", "languageTag": "UMzBEG5h"}' --login_with_auth "Bearer foo"
iam-public-verify-registration-code '{"code": "dNIKHkYt", "emailAddress": "ZNxr1423"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v3 '{"emailAddress": "dQwFNeLI", "languageTag": "RIoWKDsd"}' --login_with_auth "Bearer foo"
iam-get-admin-invitation-v3 'kv4zf5Dh' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v3 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "Yx3hwDu3", "policyId": "eMeXGWUh", "policyVersionId": "SPJW2WMJ"}, {"isAccepted": true, "localizedPolicyVersionId": "SlF0O9kd", "policyId": "bOCbrpQZ", "policyVersionId": "T8QMpPlL"}, {"isAccepted": true, "localizedPolicyVersionId": "fyqKJixr", "policyId": "VRlufM27", "policyVersionId": "eE5cs5Ke"}], "authType": "EMAILPASSWD", "country": "2v44bPfs", "dateOfBirth": "koWCBpk8", "displayName": "A0AqGxQb", "password": "IHYpaELR", "reachMinimumAge": false}' 'csFDkxEM' --login_with_auth "Bearer foo"
iam-update-user-v3 '{"avatarUrl": "ezVgwZ1K", "country": "dYDFujLq", "dateOfBirth": "f11BKBbK", "displayName": "8WDNJHpv", "languageTag": "rKanDn4Z", "userName": "MhWElTiO"}' --login_with_auth "Bearer foo"
iam-public-partial-update-user-v3 '{"avatarUrl": "WafoAD2W", "country": "1on23PgF", "dateOfBirth": "XknmpMal", "displayName": "A3dN3zfO", "languageTag": "LyM56jLB", "userName": "VtXKh8NM"}' --login_with_auth "Bearer foo"
iam-public-send-verification-code-v3 '{"context": "WwQziIWA", "emailAddress": "y1wYhDya", "languageTag": "Dw1Sgf3V"}' --login_with_auth "Bearer foo"
iam-public-user-verification-v3 '{"code": "Hm4uIrY0", "contactType": "HfqDfUXa", "languageTag": "diAOujZ2", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v3 '{"code": "Uo7aUYVO", "country": "NYj99sD3", "dateOfBirth": "bVwAfsNy", "displayName": "ksdN3vhZ", "emailAddress": "sOxlwPPK", "password": "FJuQWFIs", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-verify-headless-account-v3 '{"emailAddress": "v0G7AO4Y", "password": "FFS4Hzo4"}' --login_with_auth "Bearer foo"
iam-public-update-password-v3 '{"languageTag": "7pH6BAjJ", "newPassword": "GBrmZnIr", "oldPassword": "0ej30yRM"}' --login_with_auth "Bearer foo"
iam-public-create-justice-user 'x6jt91Ry' --login_with_auth "Bearer foo"
iam-public-platform-link-v3 '7YDpLgx5' 'EE6oXoWO' --login_with_auth "Bearer foo"
iam-public-platform-unlink-v3 '{"platformNamespace": "qP8IPCH3"}' 'C9DjKeba' --login_with_auth "Bearer foo"
iam-public-platform-unlink-all-v3 'DXTfCgFy' --login_with_auth "Bearer foo"
iam-public-force-platform-link-v3 'DFf3pOdk' '13vGNxxs' --login_with_auth "Bearer foo"
iam-public-web-link-platform 'ria6W1qH' --login_with_auth "Bearer foo"
iam-public-web-link-platform-establish 'CbYS1jIG' 'l6rXpBXv' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"code": "aQMhjF1e", "emailAddress": "p4CcT1BG", "newPassword": "q2xpqF6i"}' --login_with_auth "Bearer foo"
iam-public-get-user-by-user-id-v3 'fkJYESc8' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 'OZRIx4Oh' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 'aiPBkMUg' --login_with_auth "Bearer foo"
iam-public-get-user-information-v3 'M4D60Kxf' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 'pO8IWdXa' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 'BDdnEhy6' --login_with_auth "Bearer foo"
iam-public-list-justice-platform-accounts-v3 '7fPCt6Qp' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "gjmA1UlT", "platformUserId": "g8tEO0WV"}' 'G9MUCJhb' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["EppJdF1x", "bExPCAUe", "R8NqqRVL"], "requestId": "ijaOIbM6"}' '8CSLXwGE' --login_with_auth "Bearer foo"
iam-public-get-publisher-user-v3 'shr3oQE5' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 'fe2oQfEO' 'fyBymIzy' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 'iDv9bDVN' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-public-send-verification-link-v3 '{"languageTag": "FzXB2IWm"}' --login_with_auth "Bearer foo"
iam-public-verify-user-by-link-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler 'QLizPKpv' 'KCbNCdUE' --login_with_auth "Bearer foo"
iam-login-sso-client 'UZT5zxl1' --login_with_auth "Bearer foo"
iam-logout-sso-client 'm8OwmsoY' --login_with_auth "Bearer foo"
iam-request-game-token-response-v3 '1TheNw44' --login_with_auth "Bearer foo"
iam-admin-get-devices-by-user-v4 --login_with_auth "Bearer foo"
iam-admin-get-banned-devices-v4 --login_with_auth "Bearer foo"
iam-admin-get-user-device-bans-v4 'WbSEwmNd' --login_with_auth "Bearer foo"
iam-admin-ban-device-v4 '{"comment": "7Who8Dmm", "deviceId": "QRzrlO1R", "deviceType": "AGmxKvDR", "enabled": true, "endDate": "rLVspZ6x", "ext": {"FwVtkHyi": {}, "e2Cj8NMK": {}, "3o2vLXFH": {}}, "reason": "4MMu4d5L"}' --login_with_auth "Bearer foo"
iam-admin-get-device-ban-v4 '9BT7wVi8' --login_with_auth "Bearer foo"
iam-admin-update-device-ban-v4 '{"enabled": true}' 'PEbnaaj6' --login_with_auth "Bearer foo"
iam-admin-generate-report-v4 'iIqzGPwN' --login_with_auth "Bearer foo"
iam-admin-get-device-types-v4 --login_with_auth "Bearer foo"
iam-admin-get-device-bans-v4 '46SGE5cN' --login_with_auth "Bearer foo"
iam-admin-decrypt-device-v4 'xjyLJCov' --login_with_auth "Bearer foo"
iam-admin-unban-device-v4 '7liL5OeQ' --login_with_auth "Bearer foo"
iam-admin-get-users-by-device-v4 'V1DBL1pe' --login_with_auth "Bearer foo"
iam-admin-create-test-users-v4 '{"count": 76}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["PCVNmwvK", "bFFLrxRb", "6LZ6qprj"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "zUFqaEkJ", "country": "sbq1hSWU", "dateOfBirth": "hb1WH63k", "displayName": "9yrsL7yd", "languageTag": "MepNdRdw", "userName": "DioBvHJK"}' 'Rw1HG2wQ' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "Z43Mepd6", "emailAddress": "HWvhwPLY"}' 'MSxG7iD4' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 'dXsdqL9q' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 'INwcdF6N' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["1aqBwzl9", "eomIGrDn", "Xy2MtK7z"], "roleId": "FC8MoTZ0"}' 'KxH6Wyyr' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["7YKihfRo", "kQXcq4D2", "poPuVTe5"], "roleId": "rWwuJdos"}' 'a6TQMdFz' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["GHL3Tb4v", "lecxlRMZ", "AI8S501r"], "roleId": "SxsuHTtN"}' 'O1jJMDmQ' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "ZWb2X9hs"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 '5yFpCHEg' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 'wuIpQIhr' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "URKK312o"}' 'GIhBJPue' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 46, "resource": "4lctCLPC", "schedAction": 69, "schedCron": "t7lxFGzM", "schedRange": ["Uv1BzjLA", "OMXhMGVk", "xyaTKByE"]}, {"action": 81, "resource": "v00SMFAc", "schedAction": 2, "schedCron": "atrFulRE", "schedRange": ["GtH5tD8Q", "uhVPeySW", "bmQ9mniL"]}, {"action": 12, "resource": "Fp15G5xt", "schedAction": 100, "schedCron": "1btQevZu", "schedRange": ["DXsOZUuD", "R3vyjkiq", "pseYK54K"]}]}' 'QoNWv5jp' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 14, "resource": "kqDhP7aT", "schedAction": 20, "schedCron": "ZkqRMIQN", "schedRange": ["D6GIHPI8", "H2P3gNzf", "b6dgX8m6"]}, {"action": 38, "resource": "CGRszcdk", "schedAction": 77, "schedCron": "o2g1LXn8", "schedRange": ["xXGTBkog", "rdFRep4Q", "qmrK2xJj"]}, {"action": 90, "resource": "XCiVHOFr", "schedAction": 43, "schedCron": "ckCCo8Wv", "schedRange": ["PwAe1v9i", "1FkHIJYv", "l2Wx3KWr"]}]}' 'noltCtoe' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["GPDVWNgQ", "Yj6af3XX", "XRtiW1og"]' 'SXvbAVAC' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'bZSipD25' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["SxHwVQgQ", "EkRaa0Jj", "acw5r7D2"], "namespace": "fOJgPNsA", "userId": "4atTme8R"}' 'jxD57gmO' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "FrYxS63l", "userId": "5ZS9l9SC"}' 'OLUuEsPf' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "Fo4yvnDQ", "country": "ZIJtWIOh", "dateOfBirth": "52B1dwaa", "displayName": "PKfrwkeZ", "languageTag": "FgM0EFaw", "userName": "gmjx41zD"}' --login_with_auth "Bearer foo"
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
iam-admin-enable-my-email-v4 'ldXpcvqz' --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 'H5nsJHq5' --login_with_auth "Bearer foo"
iam-admin-invite-user-v4 '{"assignedNamespaces": ["Xc076ZkI", "Vch1J4Rl", "Dx2vwmx5"], "emailAddresses": ["y7TWCn2j", "u1bp7nT2", "Jl3Gp6d5"], "isAdmin": true, "roleId": "JzxIvKu8"}' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "UoComLL2", "policyId": "cpqj96Ml", "policyVersionId": "eulJW5GI"}, {"isAccepted": false, "localizedPolicyVersionId": "Rdh1Nnik", "policyId": "tRbWuZV1", "policyVersionId": "rQTv9T06"}, {"isAccepted": true, "localizedPolicyVersionId": "C2V1f3R9", "policyId": "dYfHiUUQ", "policyVersionId": "vLbZycyc"}], "authType": "EMAILPASSWD", "country": "P6B0o7uB", "dateOfBirth": "9pzOXdNj", "displayName": "PWMgBlcR", "emailAddress": "gSMYc5VL", "password": "osgRdU3y", "passwordMD5Sum": "MX7k2baT", "username": "V05tKaL7", "verified": true}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "bDcwcKvV", "policyId": "HNx6FyZe", "policyVersionId": "Nu4q82SE"}, {"isAccepted": true, "localizedPolicyVersionId": "46bt7Ffy", "policyId": "0r3Nj8xu", "policyVersionId": "c00Te6t1"}, {"isAccepted": true, "localizedPolicyVersionId": "Y9TU9yDW", "policyId": "apJVKBr9", "policyVersionId": "Fg4kwWxz"}], "authType": "EMAILPASSWD", "code": "OnNhV10p", "country": "LukjAxp9", "dateOfBirth": "vEcYFUDw", "displayName": "g68sKY8V", "emailAddress": "ybrXXHxX", "password": "aa4brFiI", "passwordMD5Sum": "6sZG3CMn", "reachMinimumAge": true, "username": "yZxzzCEi"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "shH2Sr8l", "policyId": "RBk15953", "policyVersionId": "fNmZfetE"}, {"isAccepted": false, "localizedPolicyVersionId": "bc2lxYu9", "policyId": "b3qlmPhu", "policyVersionId": "hWBAvYGA"}, {"isAccepted": true, "localizedPolicyVersionId": "qg3QP7ih", "policyId": "ptcvPn1w", "policyVersionId": "3BCHFoTA"}], "authType": "EMAILPASSWD", "country": "2bLguexC", "dateOfBirth": "dqiTuvNk", "displayName": "MXUckfKK", "password": "7nDdGTPW", "reachMinimumAge": true, "username": "zPaFrWdJ"}' 'YvU0Dmje' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "wLwpxnzy", "country": "gkkp77a6", "dateOfBirth": "Gvf1BC9d", "displayName": "qZIp6xsk", "languageTag": "k62JZFqa", "userName": "OOoptShk"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "GmZLvPwn", "emailAddress": "a6UIMLb4"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "kG0jkk1T", "country": "m6P7zs2B", "dateOfBirth": "FpXt5cpu", "displayName": "Da0ajvVp", "emailAddress": "7r8RK8p1", "password": "fv4xfZIt", "reachMinimumAge": true, "username": "vBXYnT0H", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"emailAddress": "OFKfxNGK", "password": "jZFuMWgy", "username": "s6mWskik"}' --login_with_auth "Bearer foo"
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
iam-public-enable-my-email-v4 'ydNvaDKv' --login_with_auth "Bearer foo"
iam-public-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-public-make-factor-my-default-v4 'f7cNRkLL' --login_with_auth "Bearer foo"
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
echo "1..340"

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
    '[{"field": "YFzbNAvX", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "blockedWord": ["ISoZ7FpI", "Q4lVNP2g", "DIItGBJw"], "description": [{"language": "t0rIRG53", "message": ["rCBilLGe", "oGSPt9Mn", "2GHEmQIc"]}, {"language": "XZBmu4vF", "message": ["x725UDKz", "SDieEREJ", "5r14GBPi"]}, {"language": "5yWNITZB", "message": ["zUtBliGc", "XCg3m9bF", "Pi2ztd9l"]}], "isCustomRegex": false, "letterCase": "76NkSfUz", "maxLength": 92, "maxRepeatingAlphaNum": 77, "maxRepeatingSpecialCharacter": 32, "minCharType": 58, "minLength": 99, "regex": "U9TJd2Pm", "specialCharacterLocation": "jhXPjcLe", "specialCharacters": ["VOyCG6KH", "Qy1xc4Dh", "MxqvXmfw"]}}, {"field": "kJRY2BBL", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "blockedWord": ["TUigHTRS", "yQdXnVfm", "ZiLNOVTV"], "description": [{"language": "BX98c3y4", "message": ["KxQLQu7T", "TAGzAGfd", "QvzivpBJ"]}, {"language": "NfjPsK7I", "message": ["EXUZZzsK", "tsoS6DcI", "fSueQ116"]}, {"language": "1Ik8AQlO", "message": ["ScWqDh7J", "mRInSbQ6", "IGghp2K7"]}], "isCustomRegex": true, "letterCase": "2rrBdWE7", "maxLength": 49, "maxRepeatingAlphaNum": 81, "maxRepeatingSpecialCharacter": 40, "minCharType": 4, "minLength": 74, "regex": "P0uv6DDp", "specialCharacterLocation": "lPJNOfd1", "specialCharacters": ["CzsElAEp", "0uZqiCYa", "XulVSZrH"]}}, {"field": "ituLlvQX", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "blockedWord": ["6UCCveCP", "qdBlYzXj", "e7pLydB2"], "description": [{"language": "6Ac5LTUn", "message": ["lcpvL0WW", "Gr064MK1", "mrPOaNfo"]}, {"language": "Ehhm8LI4", "message": ["TGQBSJ4O", "V73fBFlM", "ZPoL8ltb"]}, {"language": "A3dtGCvN", "message": ["nmlxZrbg", "xcWdpau8", "JpodSDJm"]}], "isCustomRegex": true, "letterCase": "KNIQAHzM", "maxLength": 20, "maxRepeatingAlphaNum": 97, "maxRepeatingSpecialCharacter": 46, "minCharType": 75, "minLength": 28, "regex": "mDTNPnbu", "specialCharacterLocation": "iOEgGYHK", "specialCharacters": ["cijFuIAW", "hYqflTM3", "zmDfsxdT"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    'xyqkLIED' \
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
    '{"ageRestriction": 46, "enable": true}' \
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
    '{"ageRestriction": 46}' \
    'NzkYsyuW' \
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
    '{"ban": "g2gosV5j", "comment": "9gOawYjw", "endDate": "KXEh0ViX", "reason": "RaiVThZ7", "skipNotif": false, "userIds": ["BMPQciFP", "J5xSMoX5", "cAmHwCTG"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "9uW3UAA6", "userId": "JzeSaNOf"}, {"banId": "wNTICDcT", "userId": "lsdk7V1k"}, {"banId": "hmBCE2gh", "userId": "gxBxm2LH"}]}' \
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
    '{"audiences": ["G6kb7cCi", "PjJFovX1", "vOiLCjne"], "baseUri": "8ojMb2Ub", "clientId": "P1cQx48t", "clientName": "0KPMPckd", "clientPermissions": [{"action": 67, "resource": "bZziqG9F", "schedAction": 99, "schedCron": "pVBBMejP", "schedRange": ["g5i5EimO", "CbreZbuT", "LWbcLZQW"]}, {"action": 52, "resource": "U30RTUAF", "schedAction": 89, "schedCron": "lQcXWHe3", "schedRange": ["PoVVUMob", "3pKxR6qs", "jXC68ZE4"]}, {"action": 72, "resource": "TkKpDK8b", "schedAction": 44, "schedCron": "7mpItlbd", "schedRange": ["rgnpNG6Q", "0qZNynIz", "8yjQJDjV"]}], "clientPlatform": "y25LHPgz", "deletable": false, "description": "0JndNlLD", "namespace": "I5TDYXxb", "oauthAccessTokenExpiration": 48, "oauthAccessTokenExpirationTimeUnit": "bCgEBaQ9", "oauthClientType": "EWim6RPd", "oauthRefreshTokenExpiration": 49, "oauthRefreshTokenExpirationTimeUnit": "TUuR5G4K", "redirectUri": "TI2UFngY", "scopes": ["6xGgURXL", "GePsFIKN", "irvhMho3"], "secret": "1D8IJlTW", "twoFactorEnabled": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    'CVnkUaqI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    '5uaNMJp6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["KAZDSNU4", "XE0ZgkhM", "x5Ogbkmo"], "baseUri": "OR6bxtfl", "clientName": "Cjv9f2zp", "clientPermissions": [{"action": 44, "resource": "8i5AUkHV", "schedAction": 50, "schedCron": "t5bwjsIy", "schedRange": ["nmdiUpFZ", "eHybneea", "ADpBjhNq"]}, {"action": 29, "resource": "ywihqA76", "schedAction": 30, "schedCron": "3QCkv9mV", "schedRange": ["JNu0rodL", "DBOTpLXM", "O8ZaWCnR"]}, {"action": 38, "resource": "8XV1fi3r", "schedAction": 46, "schedCron": "awpQY5N8", "schedRange": ["hWC2zz3X", "9HlFYwt2", "kDkf4dea"]}], "clientPlatform": "D2NzE4Jl", "deletable": false, "description": "etYXeIqE", "namespace": "A81hLKGV", "oauthAccessTokenExpiration": 33, "oauthAccessTokenExpirationTimeUnit": "dgGtlCJM", "oauthRefreshTokenExpiration": 42, "oauthRefreshTokenExpirationTimeUnit": "zwuakJ8O", "redirectUri": "P7wFAHNj", "scopes": ["HkXwOMQm", "1kf6iYEv", "GSYjOvoC"], "twoFactorEnabled": false}' \
    'N9nph6oW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 76, "resource": "RLuybGvk"}, {"action": 50, "resource": "RCl2s8p6"}, {"action": 76, "resource": "KqpuxNcC"}]}' \
    'd19EUWde' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 36, "resource": "UUvdriRh"}, {"action": 43, "resource": "2pHbo7iM"}, {"action": 38, "resource": "TFQrYXUi"}]}' \
    'doY1w8T2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '53' \
    'liJ4VRcT' \
    'MPqLPtmA' \
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
    'Y2faVe0u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "KfzZPicp", "AWSCognitoRegion": "W5U1zVC6", "AWSCognitoUserPool": "3H05cZVg", "AllowedClients": ["D7LfXhjo", "SavaRlqG", "lQyZFMKP"], "AppId": "028ulkLD", "AuthorizationEndpoint": "xRaymtib", "ClientId": "3aglOMhZ", "Environment": "zunYKFEj", "FederationMetadataURL": "5gEtMy5U", "GenericOauthFlow": false, "IsActive": true, "Issuer": "L8PyJGmC", "JWKSEndpoint": "GjfIEedA", "KeyID": "r0DnjvCo", "NetflixCertificates": {"encryptedPrivateKey": "Hqz17FTP", "encryptedPrivateKeyName": "QdUoqVUq", "publicCertificate": "2xgOaPh8", "publicCertificateName": "2T4UiAjR", "rootCertificate": "ES3wUVZW", "rootCertificateName": "y8NXIMz6"}, "OrganizationId": "juopji5G", "PlatformName": "9sU3juJP", "RedirectUri": "y7POmj53", "RegisteredDomains": [{"affectedClientIDs": ["LJEPBgf5", "aZKVxW1J", "fbKocJpC"], "domain": "6mZ9YjKI", "namespaces": ["2AhduoTX", "IzYhBZda", "tQX3uW0F"], "roleId": "4jdWv1V4"}, {"affectedClientIDs": ["Xt1pQhgB", "VzELO74y", "4qVUybhB"], "domain": "FvCL6o77", "namespaces": ["KCut0WyC", "YSuVH4QA", "44kx6KeO"], "roleId": "CWdSPex4"}, {"affectedClientIDs": ["zRvQlh8l", "5bZ1Gj7R", "UyuQ4c1m"], "domain": "elycNSQd", "namespaces": ["3EVAn0DG", "Fc9w9gZJ", "qJ0zhvTf"], "roleId": "5l4g2lzL"}], "Secret": "uYxjbg6a", "TeamID": "rmFYU2xA", "TokenAuthenticationType": "531kDK2M", "TokenClaimsMapping": {"jZMgzBg6": "hKLsKq3j", "hlpcp9nO": "A4BUTxHZ", "a0KJyN70": "aKFILpMu"}, "TokenEndpoint": "bztMvk3z", "scopes": ["GWfYMzpQ", "X8gbo981", "55PVWW4f"]}' \
    '5rCUzDyd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    'xetrWvej' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "RF9rCeSy", "AWSCognitoRegion": "1tx0uhCR", "AWSCognitoUserPool": "51aVLqmR", "AllowedClients": ["D6WaNDYE", "BsSShzC8", "asLrdi3A"], "AppId": "NMwmc0VN", "AuthorizationEndpoint": "jC3wDYEQ", "ClientId": "jRaSi0Jv", "Environment": "7wpgEZFf", "FederationMetadataURL": "neSrcig7", "GenericOauthFlow": false, "IsActive": true, "Issuer": "heRj2pdU", "JWKSEndpoint": "Duqifwtv", "KeyID": "sJ5W0NbK", "NetflixCertificates": {"encryptedPrivateKey": "DymI5yp5", "encryptedPrivateKeyName": "qLdK2UrE", "publicCertificate": "CkC9i33L", "publicCertificateName": "JL4d92Lt", "rootCertificate": "bUg03UQu", "rootCertificateName": "ESt4y35y"}, "OrganizationId": "qID05e7S", "PlatformName": "wTpe2yuB", "RedirectUri": "DrLrfA0D", "RegisteredDomains": [{"affectedClientIDs": ["IbaI8xu0", "QI0t3v5E", "PiIz6tqz"], "domain": "Pf8lN9mJ", "namespaces": ["RAH90vYi", "MRKtaPPN", "Z0eZbXRe"], "roleId": "oM1ShvRV"}, {"affectedClientIDs": ["MhLZrbxk", "bMovlqKf", "6y2uhusv"], "domain": "cj8N1fYb", "namespaces": ["EOP1hLbz", "MIhswlKb", "9Pdk2m8P"], "roleId": "Axaca7Ca"}, {"affectedClientIDs": ["6IdkbAJH", "VKCGH4nx", "hm8mIqNq"], "domain": "ZQoZWVva", "namespaces": ["qBE2j7iM", "xZiOUiM8", "6kB2ktu4"], "roleId": "0TC1G6w1"}], "Secret": "o8nZE6VH", "TeamID": "eF2ijN5V", "TokenAuthenticationType": "s8GZnSX4", "TokenClaimsMapping": {"79Fxwamx": "BbxJBxVd", "kHyqBJD8": "gHSjuVRi", "EGDAViH2": "qvzGPlSo"}, "TokenEndpoint": "pGQgohKH", "scopes": ["IexRY1WU", "IoFO1EzW", "Ozbnzeal"]}' \
    '2Jm5CmOu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["IbFPvICi", "ApmYoMqx", "IkkxBaqj"], "assignedNamespaces": ["jTBD5R2N", "l12sLMoM", "tC495EqQ"], "domain": "Aawi3k0Z", "roleId": "our6rzWw"}' \
    'eHJENegw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "olTgUigi"}' \
    '5COigKNw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    'XveAWK1X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "COh93cE9", "apiKey": "cXSl0173", "appId": "wY2T3Kdz", "federationMetadataUrl": "WkDeruyu", "isActive": false, "redirectUri": "Yi3zH7bd", "secret": "0Me0TFvd", "ssoUrl": "8Lca36UL"}' \
    'E4cKwlVV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    '2RH39ZST' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "g0IGR7BV", "apiKey": "ykPTjcI5", "appId": "fd3UlIGp", "federationMetadataUrl": "OI9xEYMX", "isActive": false, "redirectUri": "mSE6KuJ2", "secret": "URrTsBIS", "ssoUrl": "xJirT6ph"}' \
    'SGUCTP4I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'QfdjZQCz' \
    'HnpyHPCg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'pUksuVQK' \
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
    '{"userIds": ["0XHgbe8p", "ZzyBSxKP", "6dPCNXNm"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["y5WaJNYN", "lY5kWfPE", "Ky6q6AED"], "isAdmin": true, "roles": ["toVkD4MH", "hVyVtd7M", "lsP6HHyE"]}' \
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
    '{"listEmailAddressRequest": ["XIhFu76m", "eVwh4f4Y", "skvJN7QE"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'AdminGetBulkUserByEmailAddressV3' test.out

#- 149 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    '2uPhULBf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'AdminGetUserByUserIdV3' test.out

#- 150 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "vh33X0ue", "country": "bT2qUrwr", "dateOfBirth": "7DYUkLES", "displayName": "B5KszVhh", "languageTag": "r0EAOpRb", "userName": "50S7kXhs"}' \
    '8zrPrnUt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AdminUpdateUserV3' test.out

#- 151 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'iXZnOfkr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'AdminGetUserBanV3' test.out

#- 152 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "fcpsj8S1", "comment": "RwBEotjC", "endDate": "HsynlDAV", "reason": "EJfYiONZ", "skipNotif": false}' \
    'X3w16HNI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'AdminBanUserV3' test.out

#- 153 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": true, "skipNotif": true}' \
    'dvOBAj4F' \
    'TXFbLL0L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AdminUpdateUserBanV3' test.out

#- 154 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "DjhIcvoa", "emailAddress": "aNZvvfr4", "languageTag": "I0SXfKzq"}' \
    'EeJ7pjrA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'AdminSendVerificationCodeV3' test.out

#- 155 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "7PSiH2Wi", "ContactType": "rVq21yVN", "LanguageTag": "eSNrdyXi", "validateOnly": false}' \
    'hdkBvGh6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminVerifyAccountV3' test.out

#- 156 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'eLEE3A1c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'GetUserVerificationCode' test.out

#- 157 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'Zomt41e4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'AdminGetUserDeletionStatusV3' test.out

#- 158 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"enabled": true}' \
    'bLBwntmX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminUpdateUserDeletionStatusV3' test.out

#- 159 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "wjRKKlfD", "country": "Qj7geh03", "dateOfBirth": "v6G19Emb", "displayName": "C4gWoQrw", "emailAddress": "oAZV8jMd", "password": "2nJKGkK1", "validateOnly": true}' \
    'EmVVEXx8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminUpgradeHeadlessAccountV3' test.out

#- 160 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'O08xNqOq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminDeleteUserInformationV3' test.out

#- 161 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'rKEsnqAa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminGetUserLoginHistoriesV3' test.out

#- 162 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "U523Bnk4", "newPassword": "zcEu4YDY", "oldPassword": "FFcyN4Md"}' \
    'njyPTzYV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminResetPasswordV3' test.out

#- 163 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 88, "Resource": "1xPp4CPI", "SchedAction": 64, "SchedCron": "xQSHvb5x", "SchedRange": ["mmT3zwep", "xmEu29oX", "VKNYGpIA"]}, {"Action": 11, "Resource": "Z9WTFKGR", "SchedAction": 86, "SchedCron": "efZhrKmN", "SchedRange": ["dDuSsNu8", "TNME4kQx", "A84LjlYV"]}, {"Action": 63, "Resource": "LTSWeZaA", "SchedAction": 3, "SchedCron": "bBcp7XWZ", "SchedRange": ["b3h8W9oZ", "m6PYbcRB", "wpOfVs33"]}]}' \
    'JFYiVYyM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AdminUpdateUserPermissionV3' test.out

#- 164 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 60, "Resource": "musFhbWG", "SchedAction": 65, "SchedCron": "sjUsLsQU", "SchedRange": ["kabT8yqi", "n8jhgPAy", "JUbmGR1x"]}, {"Action": 68, "Resource": "b7aRzwe2", "SchedAction": 40, "SchedCron": "V18ovmOt", "SchedRange": ["WdfUZJX2", "mFFwwvh5", "4KdPXUW3"]}, {"Action": 99, "Resource": "C1Kus81L", "SchedAction": 8, "SchedCron": "d2IZfXH4", "SchedRange": ["yMczjufk", "NexCYSzK", "IePgNG3Y"]}]}' \
    'hlcQDbyV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminAddUserPermissionsV3' test.out

#- 165 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 87, "Resource": "cEWuOZEv"}, {"Action": 41, "Resource": "rLMpkcph"}, {"Action": 78, "Resource": "ey1DBvyW"}]' \
    'xFwSZV70' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminDeleteUserPermissionBulkV3' test.out

#- 166 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '0' \
    'hQkuE8j5' \
    'BqywCE4R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionV3' test.out

#- 167 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    '5s8pgRzL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminGetUserPlatformAccountsV3' test.out

#- 168 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'rZSBgsPJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminGetListJusticePlatformAccounts' test.out

#- 169 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    'lXbGjV5Y' \
    'NhBNJnGK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminGetUserMapping' test.out

#- 170 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    'fYOj9RW5' \
    'nK51HPXQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminCreateJusticeUser' test.out

#- 171 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "IJxyEmtl", "platformUserId": "R7BQCN7i"}' \
    'Y6PxShhj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminLinkPlatformAccount' test.out

#- 172 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "y2mjSEXd"}' \
    'W8rtG2Hn' \
    'xfL0b04s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminPlatformUnlinkV3' test.out

#- 173 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    's8Qff26v' \
    'ACSG4WiZ' \
    'y7fxWZ93' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformLinkV3' test.out

#- 174 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["zJ1ttt5R", "qyganWZO", "Bt1C0jlK"]' \
    'A1B2Br7e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminDeleteUserRolesV3' test.out

#- 175 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "LzXqfBMJ", "roleId": "MuYWp89J"}, {"namespace": "mfX754Lr", "roleId": "XocFboxs"}, {"namespace": "foJlF3HJ", "roleId": "hHfvfh5b"}]' \
    'Dp1kkXjZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminSaveUserRoleV3' test.out

#- 176 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    'J4t3zZB5' \
    'cG4LqnwR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminAddUserRoleV3' test.out

#- 177 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'bvhA6OYS' \
    'HgIeEfjy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminDeleteUserRoleV3' test.out

#- 178 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": true, "reason": "sd5nQyjy"}' \
    'FWGHpLao' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminUpdateUserStatusV3' test.out

#- 179 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'pt7ycaeH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 180 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "ieoYdgLl"}' \
    'xJ7OkbsR' \
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
    '{"adminRole": true, "deletable": false, "isWildcard": false, "managers": [{"displayName": "GomVBL5a", "namespace": "aVVHxjwu", "userId": "gXJvSW0i"}, {"displayName": "BLQI4Xab", "namespace": "9vt71tVF", "userId": "D0iMt8Cb"}, {"displayName": "rlschaHw", "namespace": "p3bOikXZ", "userId": "f8aLLM5q"}], "members": [{"displayName": "rfs8D4BD", "namespace": "gKJwmtMW", "userId": "Be5EIVfo"}, {"displayName": "c0WJKObQ", "namespace": "4MMZ4wTj", "userId": "pdrByuVI"}, {"displayName": "HXlwPWnn", "namespace": "7HszTfwK", "userId": "5xdomyj5"}], "permissions": [{"action": 73, "resource": "H4oRfX3H", "schedAction": 13, "schedCron": "3I12PrJm", "schedRange": ["w2XYZCCr", "3uxz6PJa", "E2jpLq4i"]}, {"action": 82, "resource": "8cA5YaOj", "schedAction": 97, "schedCron": "zo8t3jGl", "schedRange": ["UG3wSJxz", "QUFeFszQ", "8RBUJExh"]}, {"action": 64, "resource": "6RRcANwe", "schedAction": 0, "schedCron": "JV94UA2o", "schedRange": ["mQ9rbPtt", "Z9IjbnAu", "6H1gk7dx"]}], "roleName": "XIoXJAAs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminCreateRoleV3' test.out

#- 183 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'QcjvP1yy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminGetRoleV3' test.out

#- 184 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'NRZIfa0n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminDeleteRoleV3' test.out

#- 185 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": false, "isWildcard": false, "roleName": "352gZiq0"}' \
    'RE90F1yd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminUpdateRoleV3' test.out

#- 186 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    'QCSMeoDA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminGetRoleAdminStatusV3' test.out

#- 187 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'OdOJm4K9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateAdminRoleStatusV3' test.out

#- 188 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'uZHwl0QN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminRemoveRoleAdminV3' test.out

#- 189 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'iQsoBVG0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminGetRoleManagersV3' test.out

#- 190 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "GYp1aC4I", "namespace": "sWoE2MIv", "userId": "pC03ohPj"}, {"displayName": "5efSL65G", "namespace": "eKzyVhUL", "userId": "nySNPU5W"}, {"displayName": "5Mczx1r0", "namespace": "Rljovaw3", "userId": "ITIEc6W9"}]}' \
    '9nk0OaEr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminAddRoleManagersV3' test.out

#- 191 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "Ak2arrBM", "namespace": "7UViv32z", "userId": "l9547nBF"}, {"displayName": "wJ5L7w8K", "namespace": "y6RSQ73b", "userId": "qba0iUWp"}, {"displayName": "aWBoC0DC", "namespace": "cRVlEDA1", "userId": "X4kw9gjT"}]}' \
    'Rcmgphxz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminRemoveRoleManagersV3' test.out

#- 192 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'RcsGvZhA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminGetRoleMembersV3' test.out

#- 193 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "ufma9Tr9", "namespace": "kjaPQMqA", "userId": "0GWecl7R"}, {"displayName": "06hYSbKi", "namespace": "AdfzMFAp", "userId": "MgLsNFzu"}, {"displayName": "Z7eLGAsT", "namespace": "bFTWHdlN", "userId": "IUBY97JV"}]}' \
    'NDaLs01M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminAddRoleMembersV3' test.out

#- 194 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "DY6RKfik", "namespace": "iFGGuWhH", "userId": "FaAAQpw9"}, {"displayName": "V0Pg9qIz", "namespace": "hRIvnuXH", "userId": "Kzwu0B3b"}, {"displayName": "QPrjI9Hi", "namespace": "HAioEGsd", "userId": "SOSdyyaD"}]}' \
    'FtUctaFd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminRemoveRoleMembersV3' test.out

#- 195 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 27, "resource": "o5eYoHDq", "schedAction": 32, "schedCron": "9Sr5caRI", "schedRange": ["Pkal7ltw", "36OCgdps", "VgoKd5zR"]}, {"action": 85, "resource": "kSg0gJLo", "schedAction": 43, "schedCron": "Nt7NFYKo", "schedRange": ["yJ92ns8b", "WJgIaGBp", "ZXqQ2GS2"]}, {"action": 11, "resource": "M1XNdSq2", "schedAction": 56, "schedCron": "RqMegQGv", "schedRange": ["fS9ETiVp", "Mw3dFLl6", "nQql6HES"]}]}' \
    'trJxyyY1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminUpdateRolePermissionsV3' test.out

#- 196 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 45, "resource": "LHwGMNP6", "schedAction": 26, "schedCron": "4oifbLiJ", "schedRange": ["14DC7KeR", "UbmkqxzP", "zkEtEo1s"]}, {"action": 46, "resource": "u40Ct4Jm", "schedAction": 7, "schedCron": "7a51duGD", "schedRange": ["4fyIs8pi", "A8yl1iz5", "lIxwRFVY"]}, {"action": 1, "resource": "SkNM5BH2", "schedAction": 96, "schedCron": "CVh6JO3A", "schedRange": ["evbtRw78", "RBVhQube", "Zx28OmxD"]}]}' \
    'YgZdx0VD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminAddRolePermissionsV3' test.out

#- 197 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["Vx9dKxrg", "NvJSSexi", "pnp8oHSA"]' \
    'nVjGkYbi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminDeleteRolePermissionsV3' test.out

#- 198 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '46' \
    'UH4MdD3y' \
    '1kFAxWzO' \
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
    'X8z253Dx' \
    'WpyLexPG' \
    'vlA2yFs4' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 200 'UserAuthenticationV3' test.out

#- 201 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    '0vcx408Q' \
    'UjNcsD7J' \
    'PrlLaGJ9' \
    '2F44enuf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'AuthenticationWithPlatformLinkV3' test.out

#- 202 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    'KkBUdzgz' \
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
    'AoNbIr6u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'RequestGameTokenCodeResponseV3' test.out

#- 206 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'qY0nkUfG' \
    'dW4PaPyy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 207 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    'xLRnm8zE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'RevokeUserV3' test.out

#- 208 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    'aoEGlAmN' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 208 'AuthorizeV3' test.out

#- 209 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'Yd3omHto' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 209 'TokenIntrospectionV3' test.out

#- 210 GetJWKSV3
$PYTHON -m $MODULE 'iam-get-jwksv3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'GetJWKSV3' test.out

#- 211 SendMFAAuthenticationCode
$PYTHON -m $MODULE 'iam-send-mfa-authentication-code' \
    'QdtERELA' \
    'teNqSgaA' \
    'P7fKNTkf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'SendMFAAuthenticationCode' test.out

#- 212 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    'PCZTMTaO' \
    'hWiBrE9Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'Change2faMethod' test.out

#- 213 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    'C1U8qMBO' \
    '5oQ3T5Pp' \
    'pgYhCvbX' \
    'true' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'Verify2faCode' test.out

#- 214 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'VqcMVYOL' \
    'sVUlVccR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 215 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    '4pHvc7nt' \
    'UblcvHE9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'AuthCodeRequestV3' test.out

#- 216 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'cDtLj5S2' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 216 'PlatformTokenGrantV3' test.out

#- 217 GetRevocationListV3
$PYTHON -m $MODULE 'iam-get-revocation-list-v3' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 217 'GetRevocationListV3' test.out

#- 218 TokenRevocationV3
$PYTHON -m $MODULE 'iam-token-revocation-v3' \
    'B2Gz3dFr' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 218 'TokenRevocationV3' test.out

#- 219 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'refresh_token' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 219 'TokenGrantV3' test.out

#- 220 VerifyTokenV3
$PYTHON -m $MODULE 'iam-verify-token-v3' \
    'K8CdYnJy' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 220 'VerifyTokenV3' test.out

#- 221 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'TZKkDIQh' \
    '29hQJ0SG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'PlatformAuthenticationV3' test.out

#- 222 PublicGetInputValidations
$PYTHON -m $MODULE 'iam-public-get-input-validations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'PublicGetInputValidations' test.out

#- 223 PublicGetCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction-v3' \
    'M2Xxq7aO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'PublicGetCountryAgeRestrictionV3' test.out

#- 224 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-public-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 225 RetrieveActiveOIDCClientsPublicV3
$PYTHON -m $MODULE 'iam-retrieve-active-oidc-clients-public-v3' \
    '4UEgyJMy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 226 PublicListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["9ys8etKo", "I2qe3wMo", "bYWa8ZTP"]}' \
    'Z8i8PFBy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 227 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    'hcywjYuH' \
    'H0cnY3Y3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'PublicGetUserByPlatformUserIDV3' test.out

#- 228 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    'ceIUqfoi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'PublicGetAsyncStatus' test.out

#- 229 PublicSearchUserV3
$PYTHON -m $MODULE 'iam-public-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'PublicSearchUserV3' test.out

#- 230 PublicCreateUserV3
$PYTHON -m $MODULE 'iam-public-create-user-v3' \
    '{"PasswordMD5Sum": "fZdgntrG", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "skQNOR1J", "policyId": "W246SukO", "policyVersionId": "LGpAZvkd"}, {"isAccepted": false, "localizedPolicyVersionId": "6et39giQ", "policyId": "ouBqHPzb", "policyVersionId": "P8AI8PMP"}, {"isAccepted": false, "localizedPolicyVersionId": "CyMSVm5M", "policyId": "7FKJu6E3", "policyVersionId": "IPttWOWm"}], "authType": "FgIBHdOs", "code": "y3ro594n", "country": "FW8XNkAq", "dateOfBirth": "ZBgUw67x", "displayName": "rI6hm1qe", "emailAddress": "YFmReT7E", "password": "UoIO6EBJ", "reachMinimumAge": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'PublicCreateUserV3' test.out

#- 231 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'vceP8M3H' \
    'tSRs89je' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'CheckUserAvailability' test.out

#- 232 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["FN8zMWo0", "Rktf6dCK", "DCdYQ3sH"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'PublicBulkGetUsers' test.out

#- 233 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "xsXeA4zO", "languageTag": "rB7vi1pa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'PublicSendRegistrationCode' test.out

#- 234 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "BsQ2xgjq", "emailAddress": "CFVUCzqb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'PublicVerifyRegistrationCode' test.out

#- 235 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "BtpF2Ykx", "languageTag": "wqR6aWYm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'PublicForgotPasswordV3' test.out

#- 236 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    '3yH9LPum' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'GetAdminInvitationV3' test.out

#- 237 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "nvuEKJ8O", "policyId": "R1NA5SzK", "policyVersionId": "irPKCmvO"}, {"isAccepted": false, "localizedPolicyVersionId": "jLSHWWkY", "policyId": "IFg4VJwM", "policyVersionId": "hfqynhBJ"}, {"isAccepted": false, "localizedPolicyVersionId": "JJQOMPo8", "policyId": "275TfN19", "policyVersionId": "P81vBBj6"}], "authType": "EMAILPASSWD", "country": "vxxzDB7f", "dateOfBirth": "QWVAz3PC", "displayName": "yPmlJmed", "password": "LCEmsZ6B", "reachMinimumAge": false}' \
    'ryJiQQTH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'CreateUserFromInvitationV3' test.out

#- 238 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "u4175mHp", "country": "orHqVNTb", "dateOfBirth": "zhOFgONn", "displayName": "bbniKfaI", "languageTag": "IPEv3fBu", "userName": "tOQRTaG8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'UpdateUserV3' test.out

#- 239 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "qt3YTxHq", "country": "tFr8AZvk", "dateOfBirth": "A0dJNuhz", "displayName": "KxkxSX8H", "languageTag": "FZj8LV97", "userName": "DQEBz0YB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'PublicPartialUpdateUserV3' test.out

#- 240 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "opXsQ9lm", "emailAddress": "UmlrZUTc", "languageTag": "Rdse3yQu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'PublicSendVerificationCodeV3' test.out

#- 241 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "gUsN6tB0", "contactType": "mdYUEPLl", "languageTag": "jleMswIL", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'PublicUserVerificationV3' test.out

#- 242 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "UmdRiVml", "country": "MrmVYTEt", "dateOfBirth": "gp212cz9", "displayName": "No9Px3Yr", "emailAddress": "MkdLq48c", "password": "JNSiniGv", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'PublicUpgradeHeadlessAccountV3' test.out

#- 243 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "PQuAqdCk", "password": "ajCfFtpP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'PublicVerifyHeadlessAccountV3' test.out

#- 244 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "IQHJNFab", "newPassword": "gDGvhDJY", "oldPassword": "FAAj9ndR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'PublicUpdatePasswordV3' test.out

#- 245 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'jyOVD0Cq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'PublicCreateJusticeUser' test.out

#- 246 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'ZqpeSQkZ' \
    'pjmjkF1k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'PublicPlatformLinkV3' test.out

#- 247 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "DeCPIP0i"}' \
    '3EBeTz37' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'PublicPlatformUnlinkV3' test.out

#- 248 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'fBfi30SH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'PublicPlatformUnlinkAllV3' test.out

#- 249 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    'EY1r4skP' \
    '0n9r2NG5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'PublicForcePlatformLinkV3' test.out

#- 250 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'KOKr1ufl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'PublicWebLinkPlatform' test.out

#- 251 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'eUYbOnWH' \
    'U4uRKJyS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'PublicWebLinkPlatformEstablish' test.out

#- 252 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "uIzjWW6B", "emailAddress": "nwj6qQdR", "newPassword": "loTDspMJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'ResetPasswordV3' test.out

#- 253 PublicGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-public-get-user-by-user-id-v3' \
    'QnoLlRuZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'PublicGetUserByUserIdV3' test.out

#- 254 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    'B82VKTuQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'PublicGetUserBanHistoryV3' test.out

#- 255 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'qGvGC80X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 256 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    'QT9FALnd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'PublicGetUserInformationV3' test.out

#- 257 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'gEaTKu1L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'PublicGetUserLoginHistoriesV3' test.out

#- 258 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'BiH4UPZY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'PublicGetUserPlatformAccountsV3' test.out

#- 259 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    'l4pkYNSn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'PublicListJusticePlatformAccountsV3' test.out

#- 260 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "WlDAYoUa", "platformUserId": "PI4vuKbA"}' \
    'bh8XTzgh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'PublicLinkPlatformAccount' test.out

#- 261 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["Kk6NN273", "BtsPC3x5", "JDGoXYbc"], "requestId": "mQCiVCkM"}' \
    'DEtNtxyM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'PublicForceLinkPlatformWithProgression' test.out

#- 262 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    '5YSnDRQh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'PublicGetPublisherUserV3' test.out

#- 263 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'BHmFfG3u' \
    'd10iFp9K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 264 PublicGetRolesV3
$PYTHON -m $MODULE 'iam-public-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'PublicGetRolesV3' test.out

#- 265 PublicGetRoleV3
$PYTHON -m $MODULE 'iam-public-get-role-v3' \
    '38HpvfHG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'PublicGetRoleV3' test.out

#- 266 PublicGetMyUserV3
$PYTHON -m $MODULE 'iam-public-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'PublicGetMyUserV3' test.out

#- 267 PublicSendVerificationLinkV3
$PYTHON -m $MODULE 'iam-public-send-verification-link-v3' \
    '{"languageTag": "1d6vmMaO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'PublicSendVerificationLinkV3' test.out

#- 268 PublicVerifyUserByLinkV3
$PYTHON -m $MODULE 'iam-public-verify-user-by-link-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'PublicVerifyUserByLinkV3' test.out

#- 269 PlatformAuthenticateSAMLV3Handler
$PYTHON -m $MODULE 'iam-platform-authenticate-samlv3-handler' \
    'GSSRGfGN' \
    'lvWhLf48' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'PlatformAuthenticateSAMLV3Handler' test.out

#- 270 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'nWJ7mwFf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'LoginSSOClient' test.out

#- 271 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'ynJSm5Ve' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'LogoutSSOClient' test.out

#- 272 RequestGameTokenResponseV3
$PYTHON -m $MODULE 'iam-request-game-token-response-v3' \
    'd7NUGNzB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'RequestGameTokenResponseV3' test.out

#- 273 AdminGetDevicesByUserV4
$PYTHON -m $MODULE 'iam-admin-get-devices-by-user-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'AdminGetDevicesByUserV4' test.out

#- 274 AdminGetBannedDevicesV4
$PYTHON -m $MODULE 'iam-admin-get-banned-devices-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'AdminGetBannedDevicesV4' test.out

#- 275 AdminGetUserDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-user-device-bans-v4' \
    'Rdcfibyn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'AdminGetUserDeviceBansV4' test.out

#- 276 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "JPeTmAbH", "deviceId": "X6jmxqXh", "deviceType": "4QcwojkV", "enabled": false, "endDate": "roVw19Rc", "ext": {"ldmgtS4l": {}, "jC2eeh0y": {}, "kuFzflbG": {}}, "reason": "3bo5rEwp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'AdminBanDeviceV4' test.out

#- 277 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    'S0EJxl5J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'AdminGetDeviceBanV4' test.out

#- 278 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": false}' \
    'rrUd0yuT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'AdminUpdateDeviceBanV4' test.out

#- 279 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    'pLCE3ceg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'AdminGenerateReportV4' test.out

#- 280 AdminGetDeviceTypesV4
$PYTHON -m $MODULE 'iam-admin-get-device-types-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'AdminGetDeviceTypesV4' test.out

#- 281 AdminGetDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-device-bans-v4' \
    'EQtqrhjr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'AdminGetDeviceBansV4' test.out

#- 282 AdminDecryptDeviceV4
$PYTHON -m $MODULE 'iam-admin-decrypt-device-v4' \
    '4Z11j3JU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'AdminDecryptDeviceV4' test.out

#- 283 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    '4FlT6sWt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'AdminUnbanDeviceV4' test.out

#- 284 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    '0IcIS1Jo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'AdminGetUsersByDeviceV4' test.out

#- 285 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"count": 63}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'AdminCreateTestUsersV4' test.out

#- 286 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["THo3utbT", "Enkm1fRE", "2isZYZcC"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'AdminBulkCheckValidUserIDV4' test.out

#- 287 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "1v2sbB5V", "country": "hsddp8aP", "dateOfBirth": "Sui13sKg", "displayName": "TDfv3vFi", "languageTag": "n5FLXazs", "userName": "jexD4z8o"}' \
    'V9WjjOkU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'AdminUpdateUserV4' test.out

#- 288 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "cDssapOl", "emailAddress": "Q54hfmSr"}' \
    '1Lllahdf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'AdminUpdateUserEmailAddressV4' test.out

#- 289 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    'clkA5BOX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'AdminDisableUserMFAV4' test.out

#- 290 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'BdYT81K1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'AdminListUserRolesV4' test.out

#- 291 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["iU4UJQWI", "42zxnA3o", "Cl6WEozg"], "roleId": "U3Y5sIC2"}' \
    'HZKFhzbL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'AdminUpdateUserRoleV4' test.out

#- 292 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["wjmuScdt", "2paiOgcu", "qn3GxWBp"], "roleId": "F8Knv6Sn"}' \
    '93325h5i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'AdminAddUserRoleV4' test.out

#- 293 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["jyP96Fbc", "tDqmlyKy", "obMSTCk9"], "roleId": "t8i2QlH9"}' \
    'qiWS3Qx7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'AdminRemoveUserRoleV4' test.out

#- 294 AdminGetRolesV4
$PYTHON -m $MODULE 'iam-admin-get-roles-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'AdminGetRolesV4' test.out

#- 295 AdminCreateRoleV4
$PYTHON -m $MODULE 'iam-admin-create-role-v4' \
    '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "CQmJGDt7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'AdminCreateRoleV4' test.out

#- 296 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'XSKzzDi8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'AdminGetRoleV4' test.out

#- 297 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'q8pPtZ85' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'AdminDeleteRoleV4' test.out

#- 298 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "lhiQJrNd"}' \
    'rIMuHv6r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateRoleV4' test.out

#- 299 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 32, "resource": "v96OO5BN", "schedAction": 74, "schedCron": "avgHNSly", "schedRange": ["v0L4TPpz", "SXFXmoXA", "ACH24qX9"]}, {"action": 72, "resource": "Rtm3UUdr", "schedAction": 29, "schedCron": "yHnFku0n", "schedRange": ["HtVTc6mJ", "Dx1MqX5n", "jTWP2xR4"]}, {"action": 71, "resource": "8A05pckK", "schedAction": 86, "schedCron": "3NMb6JT3", "schedRange": ["kqpn8Jmn", "XtkL9qrw", "kBVBArMM"]}]}' \
    'sQMWoZZr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'AdminUpdateRolePermissionsV4' test.out

#- 300 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 40, "resource": "fySNzDYi", "schedAction": 93, "schedCron": "Zl33w46m", "schedRange": ["jnDnC5pC", "2887bdDX", "peSeY9vM"]}, {"action": 47, "resource": "TswXa4Y0", "schedAction": 5, "schedCron": "akwbwAo7", "schedRange": ["9eqsiHxU", "NCMqBg54", "4dRSFeCZ"]}, {"action": 48, "resource": "FaJNvpWD", "schedAction": 67, "schedCron": "N1rS55MU", "schedRange": ["Dlybwnq0", "PsY6R679", "WuczAcTE"]}]}' \
    'ItNwZBLP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'AdminAddRolePermissionsV4' test.out

#- 301 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["CzxKY984", "IOVITOOn", "AM8fe91q"]' \
    'iKQsFOn5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'AdminDeleteRolePermissionsV4' test.out

#- 302 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'subZRNWI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'AdminListAssignedUsersV4' test.out

#- 303 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["4wW0wl6P", "FfwFIaAB", "hgbaMafb"], "namespace": "K9ihDF56", "userId": "KeEyTaGe"}' \
    '2rD20snZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'AdminAssignUserToRoleV4' test.out

#- 304 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "MF068OP3", "userId": "PSBpBytK"}' \
    '2CmgAJTa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'AdminRevokeUserFromRoleV4' test.out

#- 305 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "jvAUzZY6", "country": "igLdBs3r", "dateOfBirth": "ZXLI7jwh", "displayName": "rNTZGhn3", "languageTag": "wom5jxrI", "userName": "PkKUDRuU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'AdminUpdateMyUserV4' test.out

#- 306 AdminDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'AdminDisableMyAuthenticatorV4' test.out

#- 307 AdminEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'AdminEnableMyAuthenticatorV4' test.out

#- 308 AdminGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-admin-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 309 AdminGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'AdminGetMyBackupCodesV4' test.out

#- 310 AdminGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'AdminGenerateMyBackupCodesV4' test.out

#- 311 AdminDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'AdminDisableMyBackupCodesV4' test.out

#- 312 AdminDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'AdminDownloadMyBackupCodesV4' test.out

#- 313 AdminEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'AdminEnableMyBackupCodesV4' test.out

#- 314 AdminSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-admin-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'AdminSendMyMFAEmailCodeV4' test.out

#- 315 AdminDisableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-disable-my-email-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'AdminDisableMyEmailV4' test.out

#- 316 AdminEnableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-enable-my-email-v4' \
    '6ve9UDwX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'AdminEnableMyEmailV4' test.out

#- 317 AdminGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-admin-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'AdminGetMyEnabledFactorsV4' test.out

#- 318 AdminMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-admin-make-factor-my-default-v4' \
    'uGP373Qt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'AdminMakeFactorMyDefaultV4' test.out

#- 319 AdminInviteUserV4
$PYTHON -m $MODULE 'iam-admin-invite-user-v4' \
    '{"assignedNamespaces": ["nWTLAKYO", "420xlIRm", "Dy3opVJJ"], "emailAddresses": ["sDs2axA8", "dMJcWuHH", "XHB35UBw"], "isAdmin": false, "roleId": "IChIRKoA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'AdminInviteUserV4' test.out

#- 320 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "VqPvdV1K", "policyId": "A8ek7wCT", "policyVersionId": "JBR6JdiZ"}, {"isAccepted": false, "localizedPolicyVersionId": "OwgVQIUJ", "policyId": "T7n46oAc", "policyVersionId": "nDyMXP1Y"}, {"isAccepted": true, "localizedPolicyVersionId": "454GDRSb", "policyId": "xh7CwT89", "policyVersionId": "qE8HrCkt"}], "authType": "EMAILPASSWD", "country": "OxMW9KGO", "dateOfBirth": "1M7mKbm4", "displayName": "bRaHUKaH", "emailAddress": "5PJg6Uyn", "password": "YsUzCqFr", "passwordMD5Sum": "7E9qbBMS", "username": "ZxFRZgMf", "verified": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'PublicCreateTestUserV4' test.out

#- 321 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "ucw30CUP", "policyId": "zcRkXiR4", "policyVersionId": "zD0ggDQc"}, {"isAccepted": false, "localizedPolicyVersionId": "3dkxrFQn", "policyId": "kNtjGzw1", "policyVersionId": "9qhbYzJL"}, {"isAccepted": true, "localizedPolicyVersionId": "JzZ4ZJpT", "policyId": "pOuncOW5", "policyVersionId": "wzLQrcDL"}], "authType": "EMAILPASSWD", "code": "wF6ayTkh", "country": "lxCfFDje", "dateOfBirth": "lwzgkpPr", "displayName": "Yl4rjgQo", "emailAddress": "VUaelfBh", "password": "2MHfdpjK", "passwordMD5Sum": "V35Gb3Km", "reachMinimumAge": true, "username": "diBSP8Z8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'PublicCreateUserV4' test.out

#- 322 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "CfOAjFJt", "policyId": "ClEk62E6", "policyVersionId": "knE1uE6Q"}, {"isAccepted": false, "localizedPolicyVersionId": "zBKBt58X", "policyId": "F586RRjh", "policyVersionId": "Iw3owtGl"}, {"isAccepted": true, "localizedPolicyVersionId": "YBrRI0Yn", "policyId": "qxAfo2Xd", "policyVersionId": "kSHf4DYl"}], "authType": "EMAILPASSWD", "country": "QxgAYh2S", "dateOfBirth": "9PCLr6Fj", "displayName": "OLYggaIB", "password": "edilBCce", "reachMinimumAge": true, "username": "WMBFYjq9"}' \
    'aV8h2fk2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'CreateUserFromInvitationV4' test.out

#- 323 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "6J7idj7I", "country": "05jwJt80", "dateOfBirth": "4FBreAID", "displayName": "45njgoj2", "languageTag": "k3w7VKnX", "userName": "5RVtUmdZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'PublicUpdateUserV4' test.out

#- 324 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "u5gy55TV", "emailAddress": "QdVHVa3o"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'PublicUpdateUserEmailAddressV4' test.out

#- 325 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "I54gP1aI", "country": "EoUI6kps", "dateOfBirth": "Zug8AJQT", "displayName": "39s2mNSk", "emailAddress": "NDbSYEvW", "password": "dCYYArU5", "reachMinimumAge": true, "username": "dl56tOfA", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 326 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "Qt5P94HB", "password": "e1RrguQy", "username": "CT5jtLJT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'PublicUpgradeHeadlessAccountV4' test.out

#- 327 PublicDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'PublicDisableMyAuthenticatorV4' test.out

#- 328 PublicEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'PublicEnableMyAuthenticatorV4' test.out

#- 329 PublicGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-public-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 330 PublicGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'PublicGetMyBackupCodesV4' test.out

#- 331 PublicGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'PublicGenerateMyBackupCodesV4' test.out

#- 332 PublicDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'PublicDisableMyBackupCodesV4' test.out

#- 333 PublicDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'PublicDownloadMyBackupCodesV4' test.out

#- 334 PublicEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'PublicEnableMyBackupCodesV4' test.out

#- 335 PublicRemoveTrustedDeviceV4
$PYTHON -m $MODULE 'iam-public-remove-trusted-device-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'PublicRemoveTrustedDeviceV4' test.out

#- 336 PublicSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-public-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'PublicSendMyMFAEmailCodeV4' test.out

#- 337 PublicDisableMyEmailV4
$PYTHON -m $MODULE 'iam-public-disable-my-email-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'PublicDisableMyEmailV4' test.out

#- 338 PublicEnableMyEmailV4
$PYTHON -m $MODULE 'iam-public-enable-my-email-v4' \
    'AyRr6PyT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'PublicEnableMyEmailV4' test.out

#- 339 PublicGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-public-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'PublicGetMyEnabledFactorsV4' test.out

#- 340 PublicMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-public-make-factor-my-default-v4' \
    'JXK52fun' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'PublicMakeFactorMyDefaultV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
