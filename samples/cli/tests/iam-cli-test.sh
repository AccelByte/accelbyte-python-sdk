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
iam-admin-update-input-validations '[{"field": "OWIBrg2U", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "blockedWord": ["3BjgZ6FX", "YAzyhaus", "seAorPXE"], "description": [{"language": "BlC7Nkhn", "message": ["ogHFAhfR", "ddtdglpq", "gQkTX23q"]}, {"language": "ANruDGD8", "message": ["C4AZnxI1", "ihYv1vjB", "Ib3zwaxk"]}, {"language": "sKaP65ZN", "message": ["q83WKiO8", "fCy1Szqt", "NyuF5JoR"]}], "isCustomRegex": true, "letterCase": "L4o1cJKp", "maxLength": 96, "maxRepeatingAlphaNum": 92, "maxRepeatingSpecialCharacter": 19, "minCharType": 24, "minLength": 15, "regex": "uY8gCfKH", "specialCharacterLocation": "Eaull9Al", "specialCharacters": ["3SkkcGM1", "Hu8wvD62", "KW40Q8zt"]}}, {"field": "XMr0FyY6", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "blockedWord": ["eKtIwmAw", "HDyKezYb", "6bpepYGe"], "description": [{"language": "5TPCeTK1", "message": ["MND34f0M", "pb71VxK3", "Jf1g4L4C"]}, {"language": "fgDyvnqW", "message": ["uOvppy9G", "JvVi3Bl2", "j4hyGYqp"]}, {"language": "1j3qFDWj", "message": ["1clqZIQ4", "EDLZUQ7B", "OwBYG7Gr"]}], "isCustomRegex": true, "letterCase": "RXvWr4w0", "maxLength": 90, "maxRepeatingAlphaNum": 8, "maxRepeatingSpecialCharacter": 20, "minCharType": 21, "minLength": 5, "regex": "HPyLUo4O", "specialCharacterLocation": "EhuO1BLy", "specialCharacters": ["2mig7x3k", "fYpY0AKL", "QuECiKNq"]}}, {"field": "Gy4Y8zqE", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "blockedWord": ["Wbe57Pbe", "OE0WuXgF", "S5doffXi"], "description": [{"language": "kuW4a7EG", "message": ["VYJbqxvX", "fsgP4038", "kUoGu1qd"]}, {"language": "siKCbuZA", "message": ["UCQxv0rX", "J2j0h8YF", "bdwfsQ8U"]}, {"language": "lf8udFDp", "message": ["k8smScUs", "MFgmSrYy", "XuoKJnG8"]}], "isCustomRegex": true, "letterCase": "AS1uGSZF", "maxLength": 23, "maxRepeatingAlphaNum": 98, "maxRepeatingSpecialCharacter": 15, "minCharType": 67, "minLength": 40, "regex": "44mlBK6Z", "specialCharacterLocation": "S7nS8GJW", "specialCharacters": ["m939MFob", "WBSdWoxg", "58rtD3P2"]}}]' --login_with_auth "Bearer foo"
iam-admin-reset-input-validations 'oTKTH4Tb' --login_with_auth "Bearer foo"
iam-list-admins-v3 --login_with_auth "Bearer foo"
iam-admin-get-age-restriction-status-v3 --login_with_auth "Bearer foo"
iam-admin-update-age-restriction-config-v3 '{"ageRestriction": 7, "enable": true}' --login_with_auth "Bearer foo"
iam-admin-get-list-country-age-restriction-v3 --login_with_auth "Bearer foo"
iam-admin-update-country-age-restriction-v3 '{"ageRestriction": 29}' 'OdSesdqT' --login_with_auth "Bearer foo"
iam-admin-get-banned-users-v3 --login_with_auth "Bearer foo"
iam-admin-ban-user-bulk-v3 '{"ban": "ja0Fc3OC", "comment": "gWBoGetx", "endDate": "MgTJw9PZ", "reason": "l5sE5ncz", "skipNotif": false, "userIds": ["ZszO18xh", "ABebKCL5", "Fumt8dfj"]}' --login_with_auth "Bearer foo"
iam-admin-unban-user-bulk-v3 '{"bans": [{"banId": "eK1LV6Om", "userId": "Kro2ny6f"}, {"banId": "hBh1E1RF", "userId": "yP7ZHiWF"}, {"banId": "U2gFrvMI", "userId": "fktHvSRI"}]}' --login_with_auth "Bearer foo"
iam-admin-get-bans-type-with-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-get-clients-by-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-create-client-v3 '{"audiences": ["yyex4tCI", "9zdRo2jA", "XIrsLbeu"], "baseUri": "IAZrxs8e", "clientId": "H6Ryj3GG", "clientName": "IUlL81Wf", "clientPermissions": [{"action": 23, "resource": "88RUN5K4", "schedAction": 16, "schedCron": "0jWARadb", "schedRange": ["HhFcnLkF", "mMK6WFKM", "YYwahMCp"]}, {"action": 72, "resource": "f4CQRx3a", "schedAction": 79, "schedCron": "6U0AayxA", "schedRange": ["4atXtWm8", "SjEcC4s2", "XzlVNPhX"]}, {"action": 41, "resource": "STDqPeJc", "schedAction": 77, "schedCron": "nz5QUzME", "schedRange": ["7yvJ1h9q", "PfRun99b", "ub7oGFS7"]}], "clientPlatform": "BgZoD7dG", "deletable": false, "description": "NLWTvh4Y", "namespace": "O3CUVL7I", "oauthAccessTokenExpiration": 100, "oauthAccessTokenExpirationTimeUnit": "KXtRTfJ5", "oauthClientType": "2MZMVIG0", "oauthRefreshTokenExpiration": 74, "oauthRefreshTokenExpirationTimeUnit": "DaNCcOsg", "redirectUri": "v58CR5hB", "scopes": ["ZnOUO0Tc", "Y0GycqFt", "7AmM45JW"], "secret": "NykUgKej", "twoFactorEnabled": true}' --login_with_auth "Bearer foo"
iam-admin-get-clientsby-namespaceby-idv3 'CaKQ9Reg' --login_with_auth "Bearer foo"
iam-admin-delete-client-v3 'ljsudb2k' --login_with_auth "Bearer foo"
iam-admin-update-client-v3 '{"audiences": ["GsaiyqVI", "caLiJ8uG", "fkaUhQy6"], "baseUri": "ddZ6lwYf", "clientName": "mGiDGKRb", "clientPermissions": [{"action": 27, "resource": "cf6jdXK8", "schedAction": 60, "schedCron": "oEdXykI4", "schedRange": ["42VyWm7L", "hVGXmYbE", "toBcB23R"]}, {"action": 88, "resource": "bzH7uXqn", "schedAction": 93, "schedCron": "0gSblJMv", "schedRange": ["syJvLnGR", "k3HDBoXA", "f8YnqaFx"]}, {"action": 0, "resource": "BpDzZh8I", "schedAction": 46, "schedCron": "4dQGEMoK", "schedRange": ["6Sl9c7Vu", "ar6B0jVk", "zbPfubRR"]}], "clientPlatform": "u5IMf8lm", "deletable": false, "description": "iWPW4c0h", "namespace": "FSGQUPuu", "oauthAccessTokenExpiration": 19, "oauthAccessTokenExpirationTimeUnit": "bPxFe55W", "oauthRefreshTokenExpiration": 36, "oauthRefreshTokenExpirationTimeUnit": "DxlCfC6n", "redirectUri": "DHpWUA49", "scopes": ["GzitMvh3", "3IlwEQCN", "nr2yrx9o"], "twoFactorEnabled": false}' 'vxG3QxSG' --login_with_auth "Bearer foo"
iam-admin-update-client-permission-v3 '{"permissions": [{"action": 24, "resource": "lbG7E95B"}, {"action": 61, "resource": "Y1CIVd6O"}, {"action": 9, "resource": "rMwW7qm9"}]}' 'i6304zuT' --login_with_auth "Bearer foo"
iam-admin-add-client-permissions-v3 '{"permissions": [{"action": 20, "resource": "1M5ffQXE"}, {"action": 68, "resource": "GtV174hD"}, {"action": 15, "resource": "SHhm7gk8"}]}' 'FCnxfaPX' --login_with_auth "Bearer foo"
iam-admin-delete-client-permission-v3 '29' 'ZXacGpqo' 'i1BuvPrA' --login_with_auth "Bearer foo"
iam-retrieve-all-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-sso-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-third-party-login-platform-credential-v3 '9lhIPCUi' --login_with_auth "Bearer foo"
iam-add-third-party-login-platform-credential-v3 '{"ACSURL": "bEMvaTUt", "AWSCognitoRegion": "G6hewKhF", "AWSCognitoUserPool": "eWhVRje2", "AllowedClients": ["YTzSk2mk", "8GSnnjGu", "yGYticJl"], "AppId": "OgpVuosx", "AuthorizationEndpoint": "lMQDZLKv", "ClientId": "tMV4l3V2", "Environment": "XFc9ow36", "FederationMetadataURL": "w26XAzoO", "GenericOauthFlow": true, "IsActive": true, "Issuer": "fa0LujO1", "JWKSEndpoint": "VBM92i1X", "KeyID": "0YdkN3Uo", "NetflixCertificates": {"encryptedPrivateKey": "S7wNQZYT", "encryptedPrivateKeyName": "kegvkXec", "publicCertificate": "IqVy2ODs", "publicCertificateName": "LgbZR8ZB", "rootCertificate": "sa7kEUYT", "rootCertificateName": "H1OXLDfq"}, "OrganizationId": "cm6lld5c", "PlatformName": "6UmE0Vuy", "RedirectUri": "dvwLMhGQ", "RegisteredDomains": [{"affectedClientIDs": ["FxkUYB1b", "JYYYkNNy", "TkdKcOxN"], "domain": "llutYBNf", "namespaces": ["KPSERJ1i", "GPQGNGts", "E3t5Qwf1"], "roleId": "Y7XPbCLc"}, {"affectedClientIDs": ["IdKstypO", "wVjvuAqg", "MncbNP9b"], "domain": "2oWEljxB", "namespaces": ["EZH3kdYy", "jcei2O6h", "1f63cX2t"], "roleId": "23PJw2p7"}, {"affectedClientIDs": ["G2derxkv", "qJuwfBuL", "cpa3x3wj"], "domain": "5l6Gx5Do", "namespaces": ["EpDJvtKl", "1fTDgyN1", "m4m6IXZL"], "roleId": "jBD7SJhl"}], "Secret": "IRtvmbzY", "TeamID": "AYWUniW1", "TokenAuthenticationType": "dCVdM5S6", "TokenClaimsMapping": {"aNkSXvEz": "HoEFMvtD", "Kv4Tj7Y7": "Sk08Jm6S", "kCGZHqzl": "6M00Urqm"}, "TokenEndpoint": "2Mw7lGME", "scopes": ["POBTNWc5", "kVfsKTxl", "iCmYMi8V"]}' 'WDodlZmf' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-credential-v3 'SkH3MIIy' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-credential-v3 '{"ACSURL": "lLDnYPjo", "AWSCognitoRegion": "742qR4K4", "AWSCognitoUserPool": "qtXLwpld", "AllowedClients": ["E00MqH38", "S6UKUfre", "5OvC894Y"], "AppId": "cUL3AlQa", "AuthorizationEndpoint": "EJxQWROl", "ClientId": "vGfWe5xH", "Environment": "Ljx2BJXY", "FederationMetadataURL": "4Dz4AyIU", "GenericOauthFlow": true, "IsActive": true, "Issuer": "PGi2oAG6", "JWKSEndpoint": "MgVeE3cX", "KeyID": "j16C6cMv", "NetflixCertificates": {"encryptedPrivateKey": "QkC8MOSj", "encryptedPrivateKeyName": "ZdmvMgQ6", "publicCertificate": "GzcwbDZA", "publicCertificateName": "E0Jqnpdg", "rootCertificate": "wCu7WdyS", "rootCertificateName": "wbNqvueV"}, "OrganizationId": "8BinqISV", "PlatformName": "pOc4lgcR", "RedirectUri": "Z9c45hT1", "RegisteredDomains": [{"affectedClientIDs": ["EbCq222K", "5ss8Ilf6", "7mGg0niC"], "domain": "Ctjv7DU9", "namespaces": ["fLJt43n5", "YKH1ACda", "Vkti36ae"], "roleId": "LOMWUzHE"}, {"affectedClientIDs": ["Etd3R5FH", "wqCm7tf7", "2nclFKY4"], "domain": "y8eMnUqu", "namespaces": ["cI9mOEpV", "Tk2Jau3B", "BEhvMlSs"], "roleId": "Ln7vBxrT"}, {"affectedClientIDs": ["Z6VIr7bu", "oLxEgk83", "iN40uQY3"], "domain": "mOfNOtMz", "namespaces": ["onmD8vC9", "85xVKyG3", "h6vdsqDG"], "roleId": "QDhoxram"}], "Secret": "OFdL9Upw", "TeamID": "T50evdm1", "TokenAuthenticationType": "TmrjftIO", "TokenClaimsMapping": {"o21DpbVR": "0E79w5DC", "ZwHZLlZM": "YHDA10Y7", "5sdnry0T": "x0ZwQZ4K"}, "TokenEndpoint": "3wUZNNdb", "scopes": ["v1Ao8gMZ", "jAl0dlvD", "XfLG3eGH"]}' 'QWVqOsgB' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-domain-v3 '{"affectedClientIDs": ["4evJfTkL", "MsRNhtOz", "lksGbXtO"], "assignedNamespaces": ["OQEqzSeq", "ZsU6afzr", "76ayDo00"], "domain": "kb36aXli", "roleId": "KD5lcVKB"}' '5my1Vqqi' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-domain-v3 '{"domain": "65c7fNvN"}' 'CAM5mH4l' --login_with_auth "Bearer foo"
iam-retrieve-sso-login-platform-credential 'aRo6vkph' --login_with_auth "Bearer foo"
iam-add-sso-login-platform-credential '{"acsUrl": "QcpXeRaL", "apiKey": "XhusO37l", "appId": "Zdhhakyj", "federationMetadataUrl": "33HcEjeP", "isActive": true, "redirectUri": "QHrseN6K", "secret": "DKlxFh76", "ssoUrl": "wceTNwD4"}' 'wXFsLy61' --login_with_auth "Bearer foo"
iam-delete-sso-login-platform-credential-v3 'PkaTW331' --login_with_auth "Bearer foo"
iam-update-sso-platform-credential '{"acsUrl": "UGVCD2us", "apiKey": "qhDuGfWF", "appId": "5yaxT3uE", "federationMetadataUrl": "GkTkXtNF", "isActive": true, "redirectUri": "qK59wz8r", "secret": "7oa4rl0D", "ssoUrl": "tXRZV7h0"}' 'tFLhbbDr' --login_with_auth "Bearer foo"
iam-admin-get-user-by-platform-user-idv3 '30zpPw6z' 'QwKTvznx' --login_with_auth "Bearer foo"
iam-get-admin-users-by-role-id-v3 'mopSLH4g' --login_with_auth "Bearer foo"
iam-admin-get-user-by-email-address-v3 --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-user-i-ds-v3 '{"userIds": ["sFgoiQw2", "z489b4gV", "cIq0F6tw"]}' --login_with_auth "Bearer foo"
iam-admin-invite-user-v3 '{"emailAddresses": ["RZhAn6kX", "g3DVoCT7", "jVSQyZi9"], "isAdmin": true, "roles": ["plmBnXnq", "5byG2gmh", "ViSBFreW"]}' --login_with_auth "Bearer foo"
iam-admin-query-third-platform-link-history-v3 'qPahhU2G' --login_with_auth "Bearer foo"
iam-admin-list-users-v3 --login_with_auth "Bearer foo"
iam-admin-search-user-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-by-email-address-v3 '{"listEmailAddressRequest": ["VJzCf5P4", "NRBnEuDX", "5RixrgUl"]}' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v3 '6Th9Yj3c' --login_with_auth "Bearer foo"
iam-admin-update-user-v3 '{"avatarUrl": "YKRcP25k", "country": "R4rwgeQK", "dateOfBirth": "IqLAHSZ8", "displayName": "x2mvRu2w", "languageTag": "74oMgfBt", "userName": "JIb3XQyu"}' 'rnGEb1UW' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v3 'OL5ncigx' --login_with_auth "Bearer foo"
iam-admin-ban-user-v3 '{"ban": "qCI3gIQ9", "comment": "GZj3u4gH", "endDate": "75CQdakS", "reason": "cNrRY4ga", "skipNotif": false}' 'unbJgEwj' --login_with_auth "Bearer foo"
iam-admin-update-user-ban-v3 '{"enabled": false, "skipNotif": true}' 'rGp8bVf9' 'dU7Bbn9w' --login_with_auth "Bearer foo"
iam-admin-send-verification-code-v3 '{"context": "nROz9oXM", "emailAddress": "jKbg3jwO", "languageTag": "m5kBnqSE"}' 'VnPh3RcP' --login_with_auth "Bearer foo"
iam-admin-verify-account-v3 '{"Code": "ktMQ394P", "ContactType": "dRcEabiZ", "LanguageTag": "5yFXfr2J", "validateOnly": true}' '8yfAegBH' --login_with_auth "Bearer foo"
iam-get-user-verification-code 'Kf7gk9x3' --login_with_auth "Bearer foo"
iam-admin-get-user-deletion-status-v3 'TMjRvQf0' --login_with_auth "Bearer foo"
iam-admin-update-user-deletion-status-v3 '{"enabled": true}' '9GMzJCD8' --login_with_auth "Bearer foo"
iam-admin-upgrade-headless-account-v3 '{"code": "7vJzneH5", "country": "uAuX4D7J", "dateOfBirth": "oB0MNLtf", "displayName": "zEtL0VP1", "emailAddress": "mrhRyXmf", "password": "xbl8lcZG", "validateOnly": true}' 'iNOpdDzq' --login_with_auth "Bearer foo"
iam-admin-delete-user-information-v3 'ATUbKhFc' --login_with_auth "Bearer foo"
iam-admin-get-user-login-histories-v3 'm2UEE8g6' --login_with_auth "Bearer foo"
iam-admin-reset-password-v3 '{"languageTag": "ztYh922F", "newPassword": "NH8eRd0y", "oldPassword": "iV7KqGrZ"}' 'OrpwwrjP' --login_with_auth "Bearer foo"
iam-admin-update-user-permission-v3 '{"Permissions": [{"Action": 99, "Resource": "KZteSCxA", "SchedAction": 93, "SchedCron": "UMx5q3Yq", "SchedRange": ["lvWq97xU", "UwJ0oEYB", "d6B7W5SS"]}, {"Action": 72, "Resource": "GuRqjkg2", "SchedAction": 56, "SchedCron": "vGu7ym7l", "SchedRange": ["ePtLVnhC", "qaZGma1a", "jkhuKExp"]}, {"Action": 0, "Resource": "E8DtE6JD", "SchedAction": 10, "SchedCron": "ra8LgSIe", "SchedRange": ["nFzDiv31", "2ifxk1cy", "74EwLs2z"]}]}' 'RQ0VTT8A' --login_with_auth "Bearer foo"
iam-admin-add-user-permissions-v3 '{"Permissions": [{"Action": 66, "Resource": "jY6IN2Ct", "SchedAction": 77, "SchedCron": "JC3KIldt", "SchedRange": ["W0vwUguY", "6osp58zH", "8BZm44Ph"]}, {"Action": 37, "Resource": "n0ae7kSM", "SchedAction": 3, "SchedCron": "uj0mpVlE", "SchedRange": ["l67jUSlx", "8XxWKGTL", "PGIfpxwf"]}, {"Action": 21, "Resource": "gHdkm6XY", "SchedAction": 32, "SchedCron": "55U1J1S0", "SchedRange": ["G6i07PVI", "Wf5DQMr3", "zRW8rHwV"]}]}' 'HSLAaS3d' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-bulk-v3 '[{"Action": 33, "Resource": "Jb5ieBwJ"}, {"Action": 73, "Resource": "lGGrHsYx"}, {"Action": 69, "Resource": "90SDOlwW"}]' 'VCJcdeli' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-v3 '69' 'bjStJqxv' '7TT0opP8' --login_with_auth "Bearer foo"
iam-admin-get-user-platform-accounts-v3 'hwEcKVDi' --login_with_auth "Bearer foo"
iam-admin-get-list-justice-platform-accounts 'HG5B4GgT' --login_with_auth "Bearer foo"
iam-admin-get-user-mapping 'a6ae09aU' 'd9fQeshB' --login_with_auth "Bearer foo"
iam-admin-create-justice-user 'RFhO32hK' 'kFb55jBo' --login_with_auth "Bearer foo"
iam-admin-link-platform-account '{"platformId": "xEZ3bA7w", "platformUserId": "CbMB1y1X"}' 'j0AsYilB' --login_with_auth "Bearer foo"
iam-admin-platform-unlink-v3 '{"platformNamespace": "xrEZEUUT"}' 'nrhPWW3P' 'MqLQQoel' --login_with_auth "Bearer foo"
iam-admin-platform-link-v3 '69pMot84' 'uwyaWSLv' 'kGHNmw2u' --login_with_auth "Bearer foo"
iam-admin-get-third-party-platform-token-link-status-v3 '07yFGmMC' 'YuMCjtmi' 'J7W5hqKo' --login_with_auth "Bearer foo"
iam-admin-delete-user-roles-v3 '["w6DKDqxg", "JvQUspT8", "NK4P8LM6"]' '5q1bOuEz' --login_with_auth "Bearer foo"
iam-admin-save-user-role-v3 '[{"namespace": "fJIz2712", "roleId": "J0oJ93CV"}, {"namespace": "VtBccT3Q", "roleId": "V0KaTMWw"}, {"namespace": "54fymPaU", "roleId": "i5F7Sbha"}]' 'D1CE0rzq' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v3 'YwzXx8q9' 'fdutqE8v' --login_with_auth "Bearer foo"
iam-admin-delete-user-role-v3 'i0hhpHQZ' 'NRXRkRW7' --login_with_auth "Bearer foo"
iam-admin-update-user-status-v3 '{"enabled": true, "reason": "HnzDZpRe"}' 'xGhucHK3' --login_with_auth "Bearer foo"
iam-admin-verify-user-without-verification-code-v3 't56Dd9f7' --login_with_auth "Bearer foo"
iam-admin-update-client-secret-v3 '{"newSecret": "Xi9o3FVI"}' 'pGkM2IRv' --login_with_auth "Bearer foo"
iam-admin-get-roles-v3 --login_with_auth "Bearer foo"
iam-admin-create-role-v3 '{"adminRole": false, "deletable": false, "isWildcard": false, "managers": [{"displayName": "U21nrFDn", "namespace": "kM5vedy5", "userId": "qNkRYRvN"}, {"displayName": "4e5uSzVt", "namespace": "adjsS3fn", "userId": "zpiqN9Ue"}, {"displayName": "NtUFMstc", "namespace": "OO2C1tHg", "userId": "xTAOvcXl"}], "members": [{"displayName": "QmtvtC2w", "namespace": "DTmuhdlQ", "userId": "iXGfXJP2"}, {"displayName": "DnZjAtzJ", "namespace": "iCQTzMiD", "userId": "Tp0J25T0"}, {"displayName": "0AjYouFO", "namespace": "hbQAl8u8", "userId": "4Y21AClH"}], "permissions": [{"action": 23, "resource": "1Gup9C6r", "schedAction": 93, "schedCron": "X2iRNYGa", "schedRange": ["CRSeiOZM", "z0uRBYl5", "4GTrJrwu"]}, {"action": 90, "resource": "TjbRx5ae", "schedAction": 50, "schedCron": "TsPrq3ss", "schedRange": ["CboD7Eiv", "nUg80Jtp", "9hF4XY9j"]}, {"action": 68, "resource": "yzmm6kcB", "schedAction": 28, "schedCron": "B4xk7sah", "schedRange": ["hcJnfIkc", "9u4ehPVw", "J7UbUqrK"]}], "roleName": "vSDGFDig"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v3 '9XUQAChs' --login_with_auth "Bearer foo"
iam-admin-delete-role-v3 'oiBCZkDN' --login_with_auth "Bearer foo"
iam-admin-update-role-v3 '{"deletable": false, "isWildcard": false, "roleName": "gYBEgGkK"}' 'qb47iQrT' --login_with_auth "Bearer foo"
iam-admin-get-role-admin-status-v3 'dU8N8NCT' --login_with_auth "Bearer foo"
iam-admin-update-admin-role-status-v3 'VqpBP94v' --login_with_auth "Bearer foo"
iam-admin-remove-role-admin-v3 'wVIrrT0b' --login_with_auth "Bearer foo"
iam-admin-get-role-managers-v3 'Og7SvZqg' --login_with_auth "Bearer foo"
iam-admin-add-role-managers-v3 '{"managers": [{"displayName": "6PdGWbot", "namespace": "ugZoJzJo", "userId": "qfpPAHUE"}, {"displayName": "vsIFgPCm", "namespace": "QtFCx7Uz", "userId": "1SAejUt2"}, {"displayName": "OdtlV9zK", "namespace": "RH0sLo1S", "userId": "4BqDvGcd"}]}' 'ozWX6jNp' --login_with_auth "Bearer foo"
iam-admin-remove-role-managers-v3 '{"managers": [{"displayName": "7IW5wWfP", "namespace": "ldbrymYk", "userId": "anTzvTus"}, {"displayName": "znRSF2wi", "namespace": "YHBZ6qzr", "userId": "DTk4eS7f"}, {"displayName": "CNKh8Q9U", "namespace": "9IraKaUX", "userId": "GVPtIHti"}]}' 'Gcn74UFK' --login_with_auth "Bearer foo"
iam-admin-get-role-members-v3 'qi1Nd5Ec' --login_with_auth "Bearer foo"
iam-admin-add-role-members-v3 '{"members": [{"displayName": "2Y6tItX4", "namespace": "6oyWKU2T", "userId": "0LQJx55V"}, {"displayName": "BcCvhIrk", "namespace": "iQEnUWQe", "userId": "49VNE5Zq"}, {"displayName": "xVRekv1b", "namespace": "I1bPzg3a", "userId": "PLwjCFA4"}]}' '708PMFJn' --login_with_auth "Bearer foo"
iam-admin-remove-role-members-v3 '{"members": [{"displayName": "K1YnLjwW", "namespace": "ZtDppnRS", "userId": "qFXfVUmq"}, {"displayName": "hZpIibd8", "namespace": "vkR5fPTo", "userId": "fYqexb0Y"}, {"displayName": "w5YbyYv6", "namespace": "f0iHw41A", "userId": "rNiJldJv"}]}' 'sggJKHrh' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v3 '{"permissions": [{"action": 1, "resource": "K4uH00Jc", "schedAction": 29, "schedCron": "kztrjxqw", "schedRange": ["MV5xchJA", "WfAkrcZv", "MacB5QHK"]}, {"action": 94, "resource": "UkmzlErF", "schedAction": 90, "schedCron": "qdF9oilh", "schedRange": ["JDJZ429R", "5mM1OTCC", "m7D5CtBb"]}, {"action": 29, "resource": "AQEc7sHP", "schedAction": 99, "schedCron": "c4bZTcoF", "schedRange": ["bqkzVfDg", "PW4ajk59", "F1fGgWMV"]}]}' 'w3rZ65Jb' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v3 '{"permissions": [{"action": 56, "resource": "ubMI28PE", "schedAction": 38, "schedCron": "Cg5JPuQm", "schedRange": ["KDh9OMB9", "fnsPmJZs", "u44CVpuE"]}, {"action": 77, "resource": "TnsTkvPD", "schedAction": 11, "schedCron": "cvc8MLkc", "schedRange": ["ufQKnQio", "EGIWBjot", "zhLsTjgx"]}, {"action": 4, "resource": "AxfrZWtO", "schedAction": 30, "schedCron": "59ER996C", "schedRange": ["jYeOus2g", "zRmT05vZ", "VGWl5hiq"]}]}' 'K6r2sHMi' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v3 '["NJjIPsX5", "HOWofjIO", "FQaaA5EJ"]' 'VWxq9Kyb' --login_with_auth "Bearer foo"
iam-admin-delete-role-permission-v3 '0' 'RDPZB9ZI' 'r6hqiFWC' --login_with_auth "Bearer foo"
iam-admin-get-my-user-v3 --login_with_auth "Bearer foo"
iam-user-authentication-v3 '6NcqVsaN' 'RNiqYMPG' '6dcabKBT' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-authentication-with-platform-link-v3 'DnU4CWUX' '5Osb90ct' 'avBjMizF' '6OrVnnFj' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v3 'GivmarMh' --login_with_auth "Bearer foo"
iam-request-one-time-linking-code-v3 'xqG7Pwri' --login_with_auth "Bearer foo"
iam-validate-one-time-linking-code-v3 'VWU2cDIi' --login_with_auth "Bearer foo"
iam-request-token-by-one-time-link-code-response-v3 'YX9zKwjk' 'eoql90xk' --login_with_auth "Bearer foo"
iam-get-country-location-v3 --login_with_auth "Bearer foo"
iam-logout --login_with_auth "Bearer foo"
iam-request-game-token-code-response-v3 'ns5AsGAj' --login_with_auth "Bearer foo"
iam-admin-retrieve-user-third-party-platform-token-v3 'M1QXte6H' 'i1i2Qujn' --login_with_auth "Bearer foo"
iam-revoke-user-v3 '3dQqxCTR' --login_with_auth "Bearer foo"
iam-authorize-v3 '9ej3gao9' 'code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-introspection-v3 'mpqyLliM' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-jwksv3 --login_with_auth "Bearer foo"
iam-send-mfa-authentication-code 'BNzKqtyo' '4pM4fIRm' '60ocAtSh' --login_with_auth "Bearer foo"
iam-change2fa-method 'ZWtbpY8r' 'O5rOAG0R' --login_with_auth "Bearer foo"
iam-verify2fa-code 'BOeVGQXt' 'vtkYMKxu' 'OfCJF3cH' 'false' --login_with_auth "Bearer foo"
iam-retrieve-user-third-party-platform-token-v3 'BEjJQqGs' '1J6GCcqe' --login_with_auth "Bearer foo"
iam-auth-code-request-v3 'C5GAykPz' 'g8wUoHEj' --login_with_auth "Bearer foo"
iam-platform-token-grant-v3 'bzHb6hBj' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-revocation-list-v3 --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-revocation-v3 'URBCjlmS' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-grant-v3 'client_credentials' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-verify-token-v3 'nduvPiRW' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-platform-authentication-v3 'OT1Qx6oD' '2lRfNWBs' --login_with_auth "Bearer foo"
iam-public-get-input-validations --login_with_auth "Bearer foo"
iam-public-get-country-age-restriction-v3 '6DVRXqU4' --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-public-v3 --login_with_auth "Bearer foo"
iam-retrieve-active-oidc-clients-public-v3 'H5TgHwTw' --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["9Ol3OhLz", "hb93tIKd", "Fo2yaMdc"]}' 'g0H8JqCC' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv3 '2pLg3Rxk' 'WiJn97Hu' --login_with_auth "Bearer foo"
iam-public-get-async-status 'ldVoXZRw' --login_with_auth "Bearer foo"
iam-public-search-user-v3 --login_with_auth "Bearer foo"
iam-public-create-user-v3 '{"PasswordMD5Sum": "4sorjpPz", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "s7W2gIiv", "policyId": "6MdgTXAd", "policyVersionId": "LVB1Z4uj"}, {"isAccepted": true, "localizedPolicyVersionId": "z99favVD", "policyId": "8WkJ5Wpc", "policyVersionId": "vdYT1MNr"}, {"isAccepted": true, "localizedPolicyVersionId": "pbmKFZfm", "policyId": "lPzxca7m", "policyVersionId": "QKo6GAKJ"}], "authType": "jx97xem3", "code": "M56EtpCG", "country": "790uMkBr", "dateOfBirth": "vM2NXMCr", "displayName": "0mgDE4fr", "emailAddress": "ZmD1cyNt", "password": "2TYdSDnq", "reachMinimumAge": false}' --login_with_auth "Bearer foo"
iam-check-user-availability 'lmehBBWk' 'a5C5EM0K' --login_with_auth "Bearer foo"
iam-public-bulk-get-users '{"userIds": ["c78eGsRZ", "5If3KXo8", "fTiK4eat"]}' --login_with_auth "Bearer foo"
iam-public-send-registration-code '{"emailAddress": "RZLSn1W0", "languageTag": "xfD9xAdu"}' --login_with_auth "Bearer foo"
iam-public-verify-registration-code '{"code": "HLF8t8CO", "emailAddress": "kaudGI06"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v3 '{"emailAddress": "1DEGglPt", "languageTag": "Mcx6aJZ8"}' --login_with_auth "Bearer foo"
iam-get-admin-invitation-v3 'kyBzpvEd' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v3 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "zGJRaxWe", "policyId": "WqPSe1he", "policyVersionId": "oCoGtKeH"}, {"isAccepted": true, "localizedPolicyVersionId": "rypUCfMh", "policyId": "Jmw4UWfc", "policyVersionId": "DLIAxMgk"}, {"isAccepted": false, "localizedPolicyVersionId": "3IcqjwF5", "policyId": "9jSilp25", "policyVersionId": "rB39WOrK"}], "authType": "EMAILPASSWD", "country": "zSfQ7Ivk", "dateOfBirth": "dqyqgOzd", "displayName": "c8rElzng", "password": "EJbMXgVO", "reachMinimumAge": false}' 'p1SFgxKM' --login_with_auth "Bearer foo"
iam-update-user-v3 '{"avatarUrl": "SfI1V26z", "country": "OUEuMCee", "dateOfBirth": "eLolsSiG", "displayName": "uwt8zbcT", "languageTag": "VWJa3mLl", "userName": "q1M6UuR1"}' --login_with_auth "Bearer foo"
iam-public-partial-update-user-v3 '{"avatarUrl": "jP70s5ui", "country": "2QoHXpio", "dateOfBirth": "ZAyH7wn0", "displayName": "SSgvOIkN", "languageTag": "wBrinvxN", "userName": "OuClvIwJ"}' --login_with_auth "Bearer foo"
iam-public-send-verification-code-v3 '{"context": "cdRrdle4", "emailAddress": "WubWDisW", "languageTag": "Gdm2vhPg"}' --login_with_auth "Bearer foo"
iam-public-user-verification-v3 '{"code": "2cD6TFFU", "contactType": "kA0j2vL8", "languageTag": "afWbW88j", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v3 '{"code": "AkcU0H5s", "country": "V7m4dt7Q", "dateOfBirth": "Fx41WfaH", "displayName": "s2BMrmWp", "emailAddress": "5v74pr5E", "password": "T2wbv4q7", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-verify-headless-account-v3 '{"emailAddress": "uQ01rrPU", "password": "OZeiZucu"}' --login_with_auth "Bearer foo"
iam-public-update-password-v3 '{"languageTag": "93t67t8o", "newPassword": "1VdR2SZq", "oldPassword": "3g7EztmT"}' --login_with_auth "Bearer foo"
iam-public-create-justice-user 'Cl4VK2A3' --login_with_auth "Bearer foo"
iam-public-platform-link-v3 'jXr2hgXQ' 'tKvr8SNb' --login_with_auth "Bearer foo"
iam-public-platform-unlink-v3 '{"platformNamespace": "eyeqb9iO"}' 'WG9CcbAV' --login_with_auth "Bearer foo"
iam-public-platform-unlink-all-v3 'uZsDak95' --login_with_auth "Bearer foo"
iam-public-force-platform-link-v3 'NCI0srvo' '64TsUGzk' --login_with_auth "Bearer foo"
iam-public-web-link-platform 'RcAgwKQd' --login_with_auth "Bearer foo"
iam-public-web-link-platform-establish 'wZYR85y5' 'K2vIij8l' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"code": "RuMizmfb", "emailAddress": "tzOe3czg", "newPassword": "TZNMlnXV"}' --login_with_auth "Bearer foo"
iam-public-get-user-by-user-id-v3 'ZmSZ4WA0' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 'kicPEwJI' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 'S9boaGwI' --login_with_auth "Bearer foo"
iam-public-get-user-information-v3 'jOxVjiJX' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 'DwkKIqYv' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 'VTMwFeiY' --login_with_auth "Bearer foo"
iam-public-list-justice-platform-accounts-v3 'NFo1VkGf' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "W5yYjrse", "platformUserId": "gUIC9KPP"}' 'PCExt30G' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["e80vj7h1", "MC73gEAG", "uCUBIdkM"], "requestId": "svsVYrKZ"}' '42uoWMv0' --login_with_auth "Bearer foo"
iam-public-get-publisher-user-v3 'YhkweQgC' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 'iN3qvvbk' 'ONf4dirm' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 '0TkX82av' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-public-get-link-headless-account-to-my-account-conflict-v3 '4Ce8s25k' --login_with_auth "Bearer foo"
iam-link-headless-account-to-my-account-v3 '{"chosenNamespaces": ["Uh9gHuoQ", "OZqBibfv", "SR5AARZ0"], "oneTimeLinkCode": "CdD3TqA7"}' --login_with_auth "Bearer foo"
iam-public-send-verification-link-v3 '{"languageTag": "AiJMRk0c"}' --login_with_auth "Bearer foo"
iam-public-verify-user-by-link-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler 'kumrTRN4' '1xMYBTfr' --login_with_auth "Bearer foo"
iam-login-sso-client 'xBUF26qa' --login_with_auth "Bearer foo"
iam-logout-sso-client 'Ufha6a6x' --login_with_auth "Bearer foo"
iam-request-game-token-response-v3 'Rnzq0CpR' --login_with_auth "Bearer foo"
iam-admin-get-devices-by-user-v4 --login_with_auth "Bearer foo"
iam-admin-get-banned-devices-v4 --login_with_auth "Bearer foo"
iam-admin-get-user-device-bans-v4 'xtvcWgwZ' --login_with_auth "Bearer foo"
iam-admin-ban-device-v4 '{"comment": "l81cvdb6", "deviceId": "wzuRtrkO", "deviceType": "7sxGBZMg", "enabled": true, "endDate": "yMHReOF4", "ext": {"21WfVClh": {}, "KGKduNkw": {}, "SpuzzoJS": {}}, "reason": "n05XmWKo"}' --login_with_auth "Bearer foo"
iam-admin-get-device-ban-v4 'w8RHqWca' --login_with_auth "Bearer foo"
iam-admin-update-device-ban-v4 '{"enabled": false}' 'bNxUw0om' --login_with_auth "Bearer foo"
iam-admin-generate-report-v4 'dXDNwGRf' --login_with_auth "Bearer foo"
iam-admin-get-device-types-v4 --login_with_auth "Bearer foo"
iam-admin-get-device-bans-v4 'sNqA4vxT' --login_with_auth "Bearer foo"
iam-admin-decrypt-device-v4 '628CgLs2' --login_with_auth "Bearer foo"
iam-admin-unban-device-v4 'vbFRcKK4' --login_with_auth "Bearer foo"
iam-admin-get-users-by-device-v4 'zPoE25Gk' --login_with_auth "Bearer foo"
iam-admin-create-test-users-v4 '{"count": 55}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["GOdJTeWp", "NAMHn9Wf", "GoC6W8Q9"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "AZ4trQpO", "country": "OskyMJA5", "dateOfBirth": "brrRMkA9", "displayName": "sb2wxK3f", "languageTag": "1URrMrIM", "userName": "w8MUU7ys"}' 'XILI5ZhP' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "ccu0Lw73", "emailAddress": "Kd3p7N63"}' 'p5Pr9L8R' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 '7SQdSOQp' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 'Pp4zRgY3' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["GHnG5AXG", "wLB30Q5l", "ZikypNeF"], "roleId": "z6VD5O5h"}' 'gjvQ92ts' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["FH1vhOOq", "nJ7Xt1Kj", "A78iVBpo"], "roleId": "kJp7jPHJ"}' 'QkwiX6nP' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["mr9vaBbY", "zqKv4Nsq", "pZhFc1qK"], "roleId": "zLIjrB9E"}' 'JheAVVou' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "OiQBcrMV"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 'wp594xSM' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 'jZBk5EQO' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "toOqUApV"}' 'ePPfzTKm' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 89, "resource": "0S18GmwK", "schedAction": 29, "schedCron": "AYFc7iXf", "schedRange": ["0kPLwqiG", "hyGZk94A", "QBUQEDZz"]}, {"action": 71, "resource": "iQ6gUWQ1", "schedAction": 31, "schedCron": "8nB8XTH9", "schedRange": ["fnkKxl2y", "6I8ZwYq4", "PmHqhJ5O"]}, {"action": 4, "resource": "xaCuwlt2", "schedAction": 14, "schedCron": "eez8gD5A", "schedRange": ["aRJPSyou", "r9yxTtlI", "0hE8FJyx"]}]}' 'klNFPL7O' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 31, "resource": "uTr19Qb2", "schedAction": 90, "schedCron": "1uOkXl2t", "schedRange": ["1FRqUcVS", "nGaX2ZdZ", "tBBOvxk4"]}, {"action": 54, "resource": "zhAy7xG2", "schedAction": 14, "schedCron": "S6pzz82B", "schedRange": ["YbuWwngs", "1Wtk8dQZ", "U6Ca2EpP"]}, {"action": 70, "resource": "qGDYsmqL", "schedAction": 8, "schedCron": "uoC7ZVUA", "schedRange": ["5RJDB4eV", "Bmzdcwfn", "87tb5SB0"]}]}' '5FUTjF9M' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["atFUxl2H", "Wv5jRURa", "R7FVYfVQ"]' 'l2PKFE41' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'EE6xi2YF' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["DTzEIMNd", "Pwix6n4q", "QNS1YeWY"], "namespace": "DJpNZvAJ", "userId": "jFZGVuxG"}' 'zITYdvp7' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "Ep2JSYle", "userId": "vF8dORVD"}' 'Yf6pUg3Q' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "nVLWLqcF", "country": "XXBtgOwW", "dateOfBirth": "94HeOKd7", "displayName": "eltQhd9C", "languageTag": "uPHddtTs", "userName": "YAHvQhXy"}' --login_with_auth "Bearer foo"
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
iam-admin-enable-my-email-v4 'Kf0HuS7B' --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 '2CZl3Rte' --login_with_auth "Bearer foo"
iam-admin-invite-user-v4 '{"assignedNamespaces": ["cxSVYON2", "TWOBVpdz", "lmQ6U5c0"], "emailAddresses": ["YI9eMRzL", "T45aImfJ", "p0au9fL3"], "isAdmin": false, "roleId": "VQoNnjH9"}' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "G0kOmIyw", "policyId": "S8dVXMtO", "policyVersionId": "yD8JkkBj"}, {"isAccepted": false, "localizedPolicyVersionId": "5no7qrWq", "policyId": "sjE8eU8M", "policyVersionId": "A6PxXYJU"}, {"isAccepted": true, "localizedPolicyVersionId": "GDozlsju", "policyId": "sEEY6tNE", "policyVersionId": "8PjSzP97"}], "authType": "EMAILPASSWD", "country": "0SIHnHi6", "dateOfBirth": "SM1W9jeM", "displayName": "uoMu6yAy", "emailAddress": "WdfN7mQz", "password": "y5YQVTYp", "passwordMD5Sum": "cVHynbtl", "username": "YKnISznS", "verified": true}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "lOt91JTM", "policyId": "DB0Qevsk", "policyVersionId": "HkhT25hh"}, {"isAccepted": false, "localizedPolicyVersionId": "4vGrKHac", "policyId": "utAGRDtA", "policyVersionId": "RogxdWcH"}, {"isAccepted": false, "localizedPolicyVersionId": "OJGi2b4i", "policyId": "QfJfshIb", "policyVersionId": "DIINAhdu"}], "authType": "EMAILPASSWD", "code": "zsGbVD5T", "country": "CGCl1CAt", "dateOfBirth": "mjBBHf7M", "displayName": "y8lRdtP9", "emailAddress": "7auYUx1d", "password": "GE6OaBbA", "passwordMD5Sum": "uKpUCeqI", "reachMinimumAge": false, "username": "T7jsDDYu"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "B7SrUGTK", "policyId": "82OUO3Ij", "policyVersionId": "4fDEp16v"}, {"isAccepted": false, "localizedPolicyVersionId": "mMkOQ9hq", "policyId": "KCur34TO", "policyVersionId": "PFvfwBJ2"}, {"isAccepted": false, "localizedPolicyVersionId": "QQZBpOLN", "policyId": "1q5CqNjM", "policyVersionId": "1YakqNmo"}], "authType": "EMAILPASSWD", "country": "5MtjRr1z", "dateOfBirth": "w1d6UM7O", "displayName": "fzD0Obbw", "password": "tpPboegP", "reachMinimumAge": true, "username": "tkIhTipg"}' '1F67xw9x' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "Gbz4SjD8", "country": "Qa5rM2qv", "dateOfBirth": "AZQRCBTU", "displayName": "Ge4VXxfd", "languageTag": "MTJDKgLG", "userName": "DAPcHwUW"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "AREAUHIa", "emailAddress": "m4d1rQP8"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "G2w8Km26", "country": "kYwCoSr8", "dateOfBirth": "1990VmMm", "displayName": "tvhueW9W", "emailAddress": "3xuDIPR7", "password": "6HThIrXM", "reachMinimumAge": false, "username": "8N2jCTiZ", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"emailAddress": "mMwSypdw", "password": "1PpDa8sS", "username": "lr5JejLw"}' --login_with_auth "Bearer foo"
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
iam-public-enable-my-email-v4 '5H9en9dO' --login_with_auth "Bearer foo"
iam-public-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-public-make-factor-my-default-v4 'V5a5mD37' --login_with_auth "Bearer foo"
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
    '[{"field": "0Vl5WkGj", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "blockedWord": ["KeJ3H5oL", "a8JBOdI2", "4MF7XvTb"], "description": [{"language": "iLLKcovl", "message": ["plsZkEZY", "QPdSEuQi", "nZ8rgkKL"]}, {"language": "ck5rSPGO", "message": ["Rv2dodZZ", "lGY1sLyh", "JcrivpRp"]}, {"language": "cGqg29SI", "message": ["pUyvY12C", "gbksxt5o", "UFR5QfOU"]}], "isCustomRegex": false, "letterCase": "Yuzhv4Bn", "maxLength": 53, "maxRepeatingAlphaNum": 47, "maxRepeatingSpecialCharacter": 93, "minCharType": 88, "minLength": 98, "regex": "yY6IGO78", "specialCharacterLocation": "DQ1MyreE", "specialCharacters": ["5NU1SuqS", "oM8Lhr4g", "K51tXDrx"]}}, {"field": "jqv6coQD", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "blockedWord": ["JEFdCdz6", "vNps3x0G", "Z3WFYKH7"], "description": [{"language": "mbPeP7gZ", "message": ["1iJTc6om", "I3sF9cLI", "F6wbijtG"]}, {"language": "HxTQRpXr", "message": ["Kj4Ts2U2", "Ea8l4AJX", "9WKAHQiz"]}, {"language": "w9M8BPWw", "message": ["GZ3E2GF0", "hRaE3YEk", "PBm6OPEL"]}], "isCustomRegex": false, "letterCase": "jC6veYZF", "maxLength": 89, "maxRepeatingAlphaNum": 74, "maxRepeatingSpecialCharacter": 44, "minCharType": 82, "minLength": 71, "regex": "sr5IjqjN", "specialCharacterLocation": "XRc1tSvb", "specialCharacters": ["tjBmZZ3n", "6b0Jaoz3", "ml6LKi0L"]}}, {"field": "8QKtNh6j", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "blockedWord": ["HCwq0R8R", "tNHGLMaf", "YvIwXLxD"], "description": [{"language": "OyJ0796z", "message": ["0Rx2qhQp", "SfMHz5O8", "zVt61tzl"]}, {"language": "z5cYUApN", "message": ["ugd9jnZa", "iiovKBHc", "nqXgdWu4"]}, {"language": "Y3rZSQRM", "message": ["AckXGvqz", "yJISjbhM", "iN5LDrOM"]}], "isCustomRegex": true, "letterCase": "4oBU0F41", "maxLength": 40, "maxRepeatingAlphaNum": 37, "maxRepeatingSpecialCharacter": 6, "minCharType": 41, "minLength": 9, "regex": "bLxijbNN", "specialCharacterLocation": "AACm3tcK", "specialCharacters": ["ExSYEYMf", "WsYUxuwN", "eCKBXwA4"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    'HxVRaxp7' \
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
    '{"ageRestriction": 88, "enable": true}' \
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
    '{"ageRestriction": 3}' \
    '05IjMTl2' \
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
    '{"ban": "v1pWRrlY", "comment": "NPe5UWmd", "endDate": "2katbZKR", "reason": "5rCw8tFg", "skipNotif": false, "userIds": ["Fs7SgU1v", "8N4HhDuc", "8iGqsbLe"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "y55Mh4Mj", "userId": "bQS5fSEI"}, {"banId": "jXmkGYCd", "userId": "QQvsamWN"}, {"banId": "H30eUZo4", "userId": "0em8lfFH"}]}' \
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
    '{"audiences": ["jfjF47Bz", "919r9Znr", "eJVQHnR8"], "baseUri": "lrPAPcG8", "clientId": "H2QWl3i4", "clientName": "S2lhldOe", "clientPermissions": [{"action": 41, "resource": "1I4AfHTi", "schedAction": 46, "schedCron": "BvYdvVFB", "schedRange": ["9CgpHqxI", "Mhy2jpry", "p4fmzhsW"]}, {"action": 58, "resource": "XgT17FWx", "schedAction": 96, "schedCron": "tl3Bol3B", "schedRange": ["W8eysTXt", "ZbrRuraw", "Zw3AkwOs"]}, {"action": 78, "resource": "6TGMwNas", "schedAction": 9, "schedCron": "rXrqbwMp", "schedRange": ["N7SWf4eE", "9aWmOvey", "7bMSAyBn"]}], "clientPlatform": "5pCq4W6R", "deletable": true, "description": "PwWkzo1w", "namespace": "R4E4nMi3", "oauthAccessTokenExpiration": 22, "oauthAccessTokenExpirationTimeUnit": "PjswatJZ", "oauthClientType": "pvD8Zxde", "oauthRefreshTokenExpiration": 15, "oauthRefreshTokenExpirationTimeUnit": "Y69AmDn1", "redirectUri": "x1PVhy9h", "scopes": ["77f1247t", "QLHY6N5n", "aP0lOpGk"], "secret": "ae7v5rUG", "twoFactorEnabled": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    '7XnlJvP5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    '3ttoMLmo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["8Ti1WFaA", "8VVB04T3", "qhSZhnaS"], "baseUri": "Q8Av3dkP", "clientName": "5yjDnjkH", "clientPermissions": [{"action": 57, "resource": "7qJFsVTe", "schedAction": 82, "schedCron": "txmBwihQ", "schedRange": ["KuGM1F9r", "3UOnZcHl", "tF8YrA1d"]}, {"action": 9, "resource": "yMx4Z78d", "schedAction": 48, "schedCron": "xXuYJSmC", "schedRange": ["5o5f7PlQ", "QP5cJoGq", "LfSBMm5K"]}, {"action": 77, "resource": "GZhsEh1z", "schedAction": 90, "schedCron": "tYcnvnwy", "schedRange": ["AIARM18i", "Jv8Gq4Uk", "de5uP7jJ"]}], "clientPlatform": "Wp78lGSj", "deletable": false, "description": "Ny2YfyoZ", "namespace": "ZJb9GU56", "oauthAccessTokenExpiration": 2, "oauthAccessTokenExpirationTimeUnit": "UdnxWYvX", "oauthRefreshTokenExpiration": 15, "oauthRefreshTokenExpirationTimeUnit": "AgKyjbBF", "redirectUri": "dPfCAGfw", "scopes": ["qAdIaCYP", "5hTh9rB8", "DLEj99yz"], "twoFactorEnabled": true}' \
    'GT6Lu1Vg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 59, "resource": "edyogZsm"}, {"action": 42, "resource": "gvJoJMKk"}, {"action": 90, "resource": "IlbEwfvJ"}]}' \
    'OFQrcUxR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 24, "resource": "gd0wd8dN"}, {"action": 5, "resource": "OIYBjqLr"}, {"action": 58, "resource": "amhcwpiC"}]}' \
    'fbCsKORO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '66' \
    'oNq7Jc4u' \
    'i6hvpraO' \
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
    'sF2C3VFm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "5vLQBbZn", "AWSCognitoRegion": "aROgyGq1", "AWSCognitoUserPool": "wG5wHZiR", "AllowedClients": ["3Z3uJBHs", "qpuevbVL", "9lDjkNcP"], "AppId": "V7SCvKNa", "AuthorizationEndpoint": "LjT09u9p", "ClientId": "k8dKTKsq", "Environment": "Y1BgCs2u", "FederationMetadataURL": "OD62zCTO", "GenericOauthFlow": false, "IsActive": true, "Issuer": "umXHDvdB", "JWKSEndpoint": "1Wxczx5N", "KeyID": "hGFrkM0Y", "NetflixCertificates": {"encryptedPrivateKey": "KhsXDTyE", "encryptedPrivateKeyName": "s1wHtYxe", "publicCertificate": "pCSzNKTA", "publicCertificateName": "AgG6YVnc", "rootCertificate": "78y0Fzxy", "rootCertificateName": "VfAZPsbt"}, "OrganizationId": "ZaD9QWUL", "PlatformName": "BjxWH9vR", "RedirectUri": "uEzkPeaA", "RegisteredDomains": [{"affectedClientIDs": ["ran4aJw6", "k7eEZCFM", "G5633iE1"], "domain": "iM6u6Tzr", "namespaces": ["VmjVp5mp", "5cANGyws", "GAZzysRu"], "roleId": "Vzf7axyj"}, {"affectedClientIDs": ["Z0neEZ9k", "WNlhuoWn", "6Li7g6BB"], "domain": "QtjYCWNI", "namespaces": ["t1385wK0", "ZbnOqv8h", "bWe5T211"], "roleId": "9RYAeqpC"}, {"affectedClientIDs": ["kb6txQrn", "DWnOqVUR", "JYAgMdYC"], "domain": "l7ODGYhL", "namespaces": ["xuch30Se", "ksS5j1As", "3WVaEXDd"], "roleId": "oKUydiVl"}], "Secret": "NKazg61S", "TeamID": "ygN2ZqNL", "TokenAuthenticationType": "Bvukt2T0", "TokenClaimsMapping": {"mVadIZZu": "Ti2bNjLN", "BWGym3LR": "e5qyfei3", "FAKcsGJl": "q9Z6DZuT"}, "TokenEndpoint": "fQmzj7j5", "scopes": ["hivYJkE8", "Pf9hjjOM", "BshDCJnD"]}' \
    'NMsnNNyy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    'ZnjlWJQN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "9H9mh69Z", "AWSCognitoRegion": "UPaglQYZ", "AWSCognitoUserPool": "dnu4YlSM", "AllowedClients": ["VqrutmXl", "W3bV9N7Z", "qCLqE6U0"], "AppId": "YGwTsJdg", "AuthorizationEndpoint": "08jAnhqd", "ClientId": "p6BQwlw3", "Environment": "JanEcqWg", "FederationMetadataURL": "WqFAX1Mp", "GenericOauthFlow": false, "IsActive": false, "Issuer": "8QAgJNxE", "JWKSEndpoint": "8Misju9o", "KeyID": "HFMVpxEk", "NetflixCertificates": {"encryptedPrivateKey": "DkSybTop", "encryptedPrivateKeyName": "dXGLT4In", "publicCertificate": "cBWL6Pa8", "publicCertificateName": "6IVou5oH", "rootCertificate": "UPWVgLTj", "rootCertificateName": "u0qWmzno"}, "OrganizationId": "wkdSNxoQ", "PlatformName": "gy2kJquf", "RedirectUri": "SylHIcGH", "RegisteredDomains": [{"affectedClientIDs": ["RdRUPdYY", "R4xuWh0r", "r5nEUijh"], "domain": "qGkhfjbW", "namespaces": ["5WyzezEP", "mLASLs8d", "JbFzAjvk"], "roleId": "ZerTqSGs"}, {"affectedClientIDs": ["n7grTfYU", "gyGfK1Gj", "35AWP7Xb"], "domain": "9LHeZR6i", "namespaces": ["9OeeeRhI", "ScgyW268", "mZkwIsWD"], "roleId": "4imN9Gzk"}, {"affectedClientIDs": ["M2EzydmD", "OOtKQgD8", "F9IFgwIo"], "domain": "C8eqbZJ9", "namespaces": ["n2ZaLSZG", "Pbp9NhtE", "07oIOpkm"], "roleId": "Imf8fFiM"}], "Secret": "MqzS1ue1", "TeamID": "EoCrq0bM", "TokenAuthenticationType": "Nwn7MYr7", "TokenClaimsMapping": {"JAp3E7bx": "5E7Ug1to", "LbLOJPt4": "sFQFyF57", "SBF99VBP": "0m9qIoUp"}, "TokenEndpoint": "nC2i4MY8", "scopes": ["vj9yI1fH", "jdo9Mlc5", "qPEFZVRE"]}' \
    'LPK0WF0C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["guguYjWn", "wBwRW67I", "MsD0jFTj"], "assignedNamespaces": ["59LtLTPo", "baUwTHA9", "pY6SaiCU"], "domain": "YjdE47Lo", "roleId": "1HNbxjyu"}' \
    'sHcZTrmm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "e0SiOrJB"}' \
    'XUDFQJpe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    '2j2EB0Ez' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "zIqUfqip", "apiKey": "fufyBBE3", "appId": "rMVHREw0", "federationMetadataUrl": "TC9sNwWv", "isActive": true, "redirectUri": "vFbdppp2", "secret": "hTX3EA4c", "ssoUrl": "qyt2l3zP"}' \
    'ojgAwaD0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    '8Xb6Qu6b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "vkKGOh1s", "apiKey": "gIxZX7lq", "appId": "mgrXQqOh", "federationMetadataUrl": "HQYqXfwJ", "isActive": false, "redirectUri": "Ee1qMCM8", "secret": "ZY4Ta4Kv", "ssoUrl": "atTIcgiZ"}' \
    'qLy2meHO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'g4UHHGHp' \
    'XfeZh59C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'uNGczmmQ' \
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
    '{"userIds": ["hgoOR1tP", "VISgURDV", "ZtLtWQi1"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["bn0ytyEs", "4lmiiLCW", "DGVf6joT"], "isAdmin": true, "roles": ["XhM8OqrU", "yeWdGLAQ", "TRUdBUdc"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'AdminInviteUserV3' test.out

#- 146 AdminQueryThirdPlatformLinkHistoryV3
$PYTHON -m $MODULE 'iam-admin-query-third-platform-link-history-v3' \
    'ZNQfzXg6' \
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
    '{"listEmailAddressRequest": ["nioERKdg", "yiU1jZtU", "F4JFwt5W"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'AdminGetBulkUserByEmailAddressV3' test.out

#- 150 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    '13j1NvVD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AdminGetUserByUserIdV3' test.out

#- 151 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "BI9AYFtV", "country": "OHR4CnSp", "dateOfBirth": "1vhXC0ia", "displayName": "mzs8c6sH", "languageTag": "VcGXkZ2w", "userName": "rJNRNSc1"}' \
    '7enfIZ8B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserV3' test.out

#- 152 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'bvn1FbFL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'AdminGetUserBanV3' test.out

#- 153 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "SYlkVOpX", "comment": "glFv7pUl", "endDate": "kIWbVIat", "reason": "p6CRgb8I", "skipNotif": true}' \
    'VVkl2h4U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AdminBanUserV3' test.out

#- 154 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": true, "skipNotif": true}' \
    'Qbzte42p' \
    'pOCsheP5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'AdminUpdateUserBanV3' test.out

#- 155 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "LpU8Ufgu", "emailAddress": "DHZ2Mz7s", "languageTag": "dMQ7xHOv"}' \
    'w0oWHjXK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminSendVerificationCodeV3' test.out

#- 156 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "9p2RCeJS", "ContactType": "t4cP9cul", "LanguageTag": "OsLH9Tg9", "validateOnly": true}' \
    'aG4aeYns' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'AdminVerifyAccountV3' test.out

#- 157 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    '7mfnY2H0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'GetUserVerificationCode' test.out

#- 158 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'N9qVDXpz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserDeletionStatusV3' test.out

#- 159 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"enabled": false}' \
    'JphuYTWx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminUpdateUserDeletionStatusV3' test.out

#- 160 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "naIGh7lU", "country": "8lrkgPVa", "dateOfBirth": "lp5nR9x6", "displayName": "eScCC6Ke", "emailAddress": "mN8zXCRS", "password": "fRSwcdi1", "validateOnly": true}' \
    'fAul5GUG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminUpgradeHeadlessAccountV3' test.out

#- 161 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'BFhYTZ4N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminDeleteUserInformationV3' test.out

#- 162 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'BOvydSpi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminGetUserLoginHistoriesV3' test.out

#- 163 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "rg1HobYn", "newPassword": "0SoFOjZi", "oldPassword": "qff2qtku"}' \
    '8dtzZVww' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AdminResetPasswordV3' test.out

#- 164 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 32, "Resource": "JNxw1Xsv", "SchedAction": 47, "SchedCron": "0ODZyFJC", "SchedRange": ["qshM3sGu", "UH2IPGgt", "kwVb9oRI"]}, {"Action": 89, "Resource": "r98C0hff", "SchedAction": 62, "SchedCron": "XDTUzvnO", "SchedRange": ["u2MFUVhJ", "Q3s9d4Ck", "yDskBbrb"]}, {"Action": 75, "Resource": "D8dAyek2", "SchedAction": 10, "SchedCron": "O7LWYOEZ", "SchedRange": ["tyJp4yoa", "1fSbwrkX", "QiXBs0F6"]}]}' \
    'GXEbVoIv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserPermissionV3' test.out

#- 165 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 43, "Resource": "pVbizOEC", "SchedAction": 56, "SchedCron": "0oOTRxKd", "SchedRange": ["M6uWzHl8", "nNo2xMQ5", "aaInNaLG"]}, {"Action": 58, "Resource": "DejtZ80f", "SchedAction": 83, "SchedCron": "KLuec1A1", "SchedRange": ["fIUUfLQN", "kA6KLFD9", "ZGnKgQ00"]}, {"Action": 79, "Resource": "cgZe56Kf", "SchedAction": 97, "SchedCron": "RduZd1vn", "SchedRange": ["EC67CGt8", "5VMxjok2", "ZpcsAVY8"]}]}' \
    '7uaKTRlI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminAddUserPermissionsV3' test.out

#- 166 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 56, "Resource": "UTbQhS63"}, {"Action": 17, "Resource": "5dcFI1jD"}, {"Action": 77, "Resource": "1fdnzSKx"}]' \
    'VVnVn8CO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionBulkV3' test.out

#- 167 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '20' \
    'iHsvHwsd' \
    'UC0KBLUq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserPermissionV3' test.out

#- 168 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'sjKGijSs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserPlatformAccountsV3' test.out

#- 169 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'dA7dNP7Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminGetListJusticePlatformAccounts' test.out

#- 170 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    'J9bwrzQa' \
    'k0XVaKMA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminGetUserMapping' test.out

#- 171 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    'hqH8CuI2' \
    'QsRx1OC9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminCreateJusticeUser' test.out

#- 172 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "r23rCA3r", "platformUserId": "qxeEzzyy"}' \
    '8byzu23q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminLinkPlatformAccount' test.out

#- 173 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "sejbo11o"}' \
    '53Y5gjnE' \
    'Z3NfRBge' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformUnlinkV3' test.out

#- 174 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'VslWe3Rk' \
    'pqVp3G2s' \
    'IViZnAjY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminPlatformLinkV3' test.out

#- 175 AdminGetThirdPartyPlatformTokenLinkStatusV3
$PYTHON -m $MODULE 'iam-admin-get-third-party-platform-token-link-status-v3' \
    'zJurYoJR' \
    '5sw9GmPk' \
    'GEzxwMUb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 176 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["qo1WCg0F", "1FwK7fFp", "nvU1AnVS"]' \
    'TPVZsZBm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminDeleteUserRolesV3' test.out

#- 177 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "0cO97S6E", "roleId": "6lGczjAn"}, {"namespace": "2bZduu4P", "roleId": "lY8iRR4L"}, {"namespace": "O3tsnD19", "roleId": "btXcIevi"}]' \
    'JJhAmZjx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminSaveUserRoleV3' test.out

#- 178 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    'jFyexnUh' \
    'y2Knufwy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminAddUserRoleV3' test.out

#- 179 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    '8LCf59Hv' \
    'f3zA8FjG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminDeleteUserRoleV3' test.out

#- 180 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": false, "reason": "HFXBBFh3"}' \
    'hnhRANSd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateUserStatusV3' test.out

#- 181 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'HS2WwaMn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 182 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "9dHP1aUB"}' \
    '4TdHINBF' \
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
    '{"adminRole": false, "deletable": true, "isWildcard": true, "managers": [{"displayName": "hjzlTezw", "namespace": "OY9LfCkY", "userId": "sGR9Iaj8"}, {"displayName": "LMnzos8b", "namespace": "m5sdrn5y", "userId": "jaji1nYD"}, {"displayName": "ydruKB4d", "namespace": "c9aqxEwg", "userId": "CzK9SdAl"}], "members": [{"displayName": "KPmeJ1UL", "namespace": "Z5vVNBYC", "userId": "uhVr4KN2"}, {"displayName": "t5rFJf2B", "namespace": "OaJ3dWlE", "userId": "FgxvI00o"}, {"displayName": "yB1bcHkN", "namespace": "yEv8P9kc", "userId": "DEY99Lpp"}], "permissions": [{"action": 48, "resource": "iIt1DIyk", "schedAction": 0, "schedCron": "hLju2Wgv", "schedRange": ["vZ5zgy4L", "PwORyydM", "ZtMOHY6U"]}, {"action": 62, "resource": "uwQmyLeU", "schedAction": 94, "schedCron": "3Y7HapcB", "schedRange": ["4tipsWi4", "kAVGQNqL", "A4TDCeSw"]}, {"action": 71, "resource": "yDCNP8nG", "schedAction": 89, "schedCron": "cMTSkvyg", "schedRange": ["4IlRwZlX", "hOPL6V56", "XMpcR98z"]}], "roleName": "SQ8xE8DW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminCreateRoleV3' test.out

#- 185 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'C7cmQVVP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRoleV3' test.out

#- 186 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'ddnjogha' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteRoleV3' test.out

#- 187 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": false, "isWildcard": false, "roleName": "OCCUItKN"}' \
    'G5rYQHN2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateRoleV3' test.out

#- 188 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    'X5p0XFqd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminGetRoleAdminStatusV3' test.out

#- 189 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'EpCMBak2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateAdminRoleStatusV3' test.out

#- 190 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'KkiKS5PB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminRemoveRoleAdminV3' test.out

#- 191 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'gYXZKx3a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRoleManagersV3' test.out

#- 192 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "V8yj7HNF", "namespace": "yiQbsd2h", "userId": "TUf8OzOV"}, {"displayName": "rJZdpZg2", "namespace": "pgdIvIMY", "userId": "0LqoIY9W"}, {"displayName": "qqgu27L4", "namespace": "xwh8mc3A", "userId": "LyTpwxHR"}]}' \
    'ktgQApJd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminAddRoleManagersV3' test.out

#- 193 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "kL7VFhtz", "namespace": "cmueFf6Q", "userId": "ITJjvKfX"}, {"displayName": "IFwaIXA9", "namespace": "Dg41AR1V", "userId": "g7dVBwRJ"}, {"displayName": "z5Z3aMpq", "namespace": "UOZmevqr", "userId": "FxdfOJaE"}]}' \
    'naUj1DOs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminRemoveRoleManagersV3' test.out

#- 194 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'GX9IjE3W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminGetRoleMembersV3' test.out

#- 195 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "7TAFjChT", "namespace": "7GU1RP7r", "userId": "jrprwoID"}, {"displayName": "FLG3KhfA", "namespace": "AoFqU7J7", "userId": "rxhXxNvU"}, {"displayName": "XdLBhmIr", "namespace": "eMyYXT9o", "userId": "PAHTArDy"}]}' \
    'P24FAtsx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminAddRoleMembersV3' test.out

#- 196 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "5vpMkJl0", "namespace": "NWNIzgZW", "userId": "RCi8mYMp"}, {"displayName": "W8HCUGqt", "namespace": "IXRRnGsW", "userId": "emC4qk0s"}, {"displayName": "d5C1KWJQ", "namespace": "sqHOdBsr", "userId": "IjbEsqzK"}]}' \
    'Hrg7weKB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminRemoveRoleMembersV3' test.out

#- 197 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 32, "resource": "zYSK1ALc", "schedAction": 46, "schedCron": "6fAq8Eho", "schedRange": ["R27nsH6F", "BbdA92q5", "WUBE67l8"]}, {"action": 83, "resource": "4o7KgKl0", "schedAction": 87, "schedCron": "lWmO3Lec", "schedRange": ["OLVxuIP7", "FjRBg0sj", "3jxd5WHu"]}, {"action": 6, "resource": "Vn9kJMy6", "schedAction": 45, "schedCron": "Gb55EtvV", "schedRange": ["zUtqhx64", "S26xKiiO", "6rAzqiXl"]}]}' \
    '9Mu9b0YC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateRolePermissionsV3' test.out

#- 198 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 67, "resource": "xFXlfQEb", "schedAction": 58, "schedCron": "6IIDSynr", "schedRange": ["zJlLMTd5", "NDG2CTwR", "4kWB6AgB"]}, {"action": 88, "resource": "w2TWTEpE", "schedAction": 75, "schedCron": "K3ihZyL7", "schedRange": ["mnTfoiEZ", "VRacLXWg", "EAL1QnXX"]}, {"action": 99, "resource": "8ePynYfJ", "schedAction": 43, "schedCron": "dpFMk5MP", "schedRange": ["rb0rPyvL", "OJLy6QQS", "zxCoz9V2"]}]}' \
    'LNm4XXaq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'AdminAddRolePermissionsV3' test.out

#- 199 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["NL1XbUgX", "9Mi9OEpP", "pQoiAN3K"]' \
    'Uh9ORF0u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'AdminDeleteRolePermissionsV3' test.out

#- 200 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '68' \
    'zIMmkR2U' \
    'fOXfHA6u' \
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
    'xbpuH2cU' \
    'fZDgnWSe' \
    'tvwgeOzJ' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 202 'UserAuthenticationV3' test.out

#- 203 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    'iYS8AU2m' \
    'aKB8BcE2' \
    'wF4KJJX2' \
    'y1uiscft' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'AuthenticationWithPlatformLinkV3' test.out

#- 204 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    'sWRBX9Y9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 205 RequestOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-request-one-time-linking-code-v3' \
    '1Q3PMh06' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'RequestOneTimeLinkingCodeV3' test.out

#- 206 ValidateOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-validate-one-time-linking-code-v3' \
    'rUdBZC1l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'ValidateOneTimeLinkingCodeV3' test.out

#- 207 RequestTokenByOneTimeLinkCodeResponseV3
$PYTHON -m $MODULE 'iam-request-token-by-one-time-link-code-response-v3' \
    '0wQzrrxu' \
    'WbJsCtPW' \
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
    'o1UjSkFg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'RequestGameTokenCodeResponseV3' test.out

#- 211 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'UbnDuv3Q' \
    'Q8MDkXpw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 212 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    'cel7yo2O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'RevokeUserV3' test.out

#- 213 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    'Ws0swayF' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 213 'AuthorizeV3' test.out

#- 214 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'jgR6z52b' \
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
    'Fk254qnl' \
    '2L6hniCd' \
    'HLl2NbGW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'SendMFAAuthenticationCode' test.out

#- 217 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    '8QMz6hV7' \
    '1jBYq3fz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'Change2faMethod' test.out

#- 218 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    'wB100QVU' \
    '0ztfGkA0' \
    '9A7XSdLY' \
    'true' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'Verify2faCode' test.out

#- 219 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'SJO7JBuT' \
    'ORu1y1z0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    '0nFzt8aD' \
    '01kjcnbf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'AuthCodeRequestV3' test.out

#- 221 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'owA9B3GA' \
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
    'Mct1uY4N' \
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
    '6zAcmxOj' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 225 'VerifyTokenV3' test.out

#- 226 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'roEjjGLO' \
    'NUSbrOUA' \
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
    '9ECB2KgZ' \
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
    '6xk7Rpti' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 231 PublicListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["2KjK97wQ", "vYGa1IfF", "FA3Hs1Yg"]}' \
    'IYML3F3E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 232 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    'U9iZPHVr' \
    'Uv2217gK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'PublicGetUserByPlatformUserIDV3' test.out

#- 233 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    '0bSmz0N9' \
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
    '{"PasswordMD5Sum": "79DktrAR", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "fKuhjt4W", "policyId": "GvhKAkPB", "policyVersionId": "3EuS6tzq"}, {"isAccepted": false, "localizedPolicyVersionId": "YoWEeZfN", "policyId": "4Ckdmx4S", "policyVersionId": "h4fGf52r"}, {"isAccepted": false, "localizedPolicyVersionId": "a2ibOC28", "policyId": "jtUjWmjW", "policyVersionId": "mJf3mzC7"}], "authType": "I4tl9qsU", "code": "njvvmlp7", "country": "wO6Ux5Hf", "dateOfBirth": "nEajitWi", "displayName": "KVyvdOyQ", "emailAddress": "H7VNiZbK", "password": "nK9DkZyg", "reachMinimumAge": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'PublicCreateUserV3' test.out

#- 236 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'QsNy9gXp' \
    'U09Y8oCb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'CheckUserAvailability' test.out

#- 237 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["XTqsuGOV", "llaiJPKZ", "lJLJaRJA"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'PublicBulkGetUsers' test.out

#- 238 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "sXMYUDuq", "languageTag": "1RzQQ1ba"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'PublicSendRegistrationCode' test.out

#- 239 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "lTxQ6wmg", "emailAddress": "tXLQHtNN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'PublicVerifyRegistrationCode' test.out

#- 240 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "JIDg3C7n", "languageTag": "9YLrhZzi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'PublicForgotPasswordV3' test.out

#- 241 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    'NLavL1ZP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'GetAdminInvitationV3' test.out

#- 242 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "Bcw5JXOI", "policyId": "Kmwo2SU9", "policyVersionId": "5rWm37LF"}, {"isAccepted": false, "localizedPolicyVersionId": "sWRb62eL", "policyId": "2hVhsVij", "policyVersionId": "8LoDhTji"}, {"isAccepted": true, "localizedPolicyVersionId": "8dv4l7d8", "policyId": "yMhhrQF4", "policyVersionId": "TjJuKxa9"}], "authType": "EMAILPASSWD", "country": "MLK9tt97", "dateOfBirth": "CDDOiWPS", "displayName": "bNA9CIpX", "password": "pv5kjmip", "reachMinimumAge": true}' \
    'oeEsLCdq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'CreateUserFromInvitationV3' test.out

#- 243 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "8wVDYXYo", "country": "cHQI6od3", "dateOfBirth": "d4N73K2I", "displayName": "I0lCMnwK", "languageTag": "4xT39w56", "userName": "SwJGSveV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'UpdateUserV3' test.out

#- 244 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "PM4BuQjX", "country": "WVXGmDhh", "dateOfBirth": "mGCo1n9h", "displayName": "niZ86LPJ", "languageTag": "EjNw68tP", "userName": "gNQX8qlP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'PublicPartialUpdateUserV3' test.out

#- 245 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "pRE5nbNo", "emailAddress": "3tslpXur", "languageTag": "v8wV1EKJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'PublicSendVerificationCodeV3' test.out

#- 246 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "ymiPHiDS", "contactType": "AToamIAy", "languageTag": "cYUBt1gr", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'PublicUserVerificationV3' test.out

#- 247 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "ti01St2L", "country": "4kdhwkQD", "dateOfBirth": "QdOGjVtV", "displayName": "Jys2VJ5t", "emailAddress": "kjZIEXGw", "password": "Zf9dDMRj", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'PublicUpgradeHeadlessAccountV3' test.out

#- 248 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "1IgrfRoQ", "password": "VUIm3BLi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'PublicVerifyHeadlessAccountV3' test.out

#- 249 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "jGOBi8DI", "newPassword": "ARkOkRpa", "oldPassword": "E56yEOLG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'PublicUpdatePasswordV3' test.out

#- 250 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'hhz0DerZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'PublicCreateJusticeUser' test.out

#- 251 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'JSP9dJnp' \
    'Cp1Yb7G8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'PublicPlatformLinkV3' test.out

#- 252 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "gLMDNgNp"}' \
    'zivR9jfP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'PublicPlatformUnlinkV3' test.out

#- 253 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'R8POle8v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'PublicPlatformUnlinkAllV3' test.out

#- 254 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    'hZWmoXZR' \
    'GTu1AgZp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'PublicForcePlatformLinkV3' test.out

#- 255 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'LudXggdc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'PublicWebLinkPlatform' test.out

#- 256 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'PrsYwssU' \
    'Sl0GQxJq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'PublicWebLinkPlatformEstablish' test.out

#- 257 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "IBvPL8UW", "emailAddress": "8PkxTnE1", "newPassword": "EHsSztAi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'ResetPasswordV3' test.out

#- 258 PublicGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-public-get-user-by-user-id-v3' \
    'YKPoTmvv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'PublicGetUserByUserIdV3' test.out

#- 259 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    'bDyZGOHt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'PublicGetUserBanHistoryV3' test.out

#- 260 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'lMtu7N8g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 261 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    'DQzHoJpJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'PublicGetUserInformationV3' test.out

#- 262 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'RXusteld' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'PublicGetUserLoginHistoriesV3' test.out

#- 263 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'kqvOOXhB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'PublicGetUserPlatformAccountsV3' test.out

#- 264 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    'mc0J1gU6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'PublicListJusticePlatformAccountsV3' test.out

#- 265 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "ym9VZKxa", "platformUserId": "V4XVQ1JY"}' \
    'v5k9pX30' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'PublicLinkPlatformAccount' test.out

#- 266 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["D56GLtf0", "517Q8KFe", "4Z2HFu7b"], "requestId": "pgwlzJgk"}' \
    'L4GjFDcM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'PublicForceLinkPlatformWithProgression' test.out

#- 267 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    '2VTJ6fAc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'PublicGetPublisherUserV3' test.out

#- 268 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'A86rwLRt' \
    'V0jlEAcS' \
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
    'FjbgN7sH' \
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
    'ZUJhi2Ov' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 273 LinkHeadlessAccountToMyAccountV3
$PYTHON -m $MODULE 'iam-link-headless-account-to-my-account-v3' \
    '{"chosenNamespaces": ["2KbTUMsc", "iqezGv9g", "XiQdTb5B"], "oneTimeLinkCode": "TtpdaIIG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'LinkHeadlessAccountToMyAccountV3' test.out

#- 274 PublicSendVerificationLinkV3
$PYTHON -m $MODULE 'iam-public-send-verification-link-v3' \
    '{"languageTag": "6sZGWNow"}' \
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
    'uanWSrym' \
    'WB9yKU6g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'PlatformAuthenticateSAMLV3Handler' test.out

#- 277 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'm6047api' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'LoginSSOClient' test.out

#- 278 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'bi4cMxMA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'LogoutSSOClient' test.out

#- 279 RequestGameTokenResponseV3
$PYTHON -m $MODULE 'iam-request-game-token-response-v3' \
    '9JpiXt6n' \
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
    'VJTDbask' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'AdminGetUserDeviceBansV4' test.out

#- 283 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "LRK3mAGq", "deviceId": "rPzA41pc", "deviceType": "j0cQmQLJ", "enabled": false, "endDate": "U8pTfQqB", "ext": {"ztPZWyDV": {}, "rZpkwtUr": {}, "v3qOrj6o": {}}, "reason": "vPzADISJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'AdminBanDeviceV4' test.out

#- 284 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    'LJ0oXTJ1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'AdminGetDeviceBanV4' test.out

#- 285 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": false}' \
    'zYrUX8yZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'AdminUpdateDeviceBanV4' test.out

#- 286 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    'YtpyPvZ8' \
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
    '1b7ybwea' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'AdminGetDeviceBansV4' test.out

#- 289 AdminDecryptDeviceV4
$PYTHON -m $MODULE 'iam-admin-decrypt-device-v4' \
    'wcVJgGxg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'AdminDecryptDeviceV4' test.out

#- 290 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    'KbSg8Eng' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'AdminUnbanDeviceV4' test.out

#- 291 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    'AK4Gth5A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'AdminGetUsersByDeviceV4' test.out

#- 292 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"count": 75}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'AdminCreateTestUsersV4' test.out

#- 293 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["hOQ6z5zB", "oaUinw1t", "wp7Yrgym"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'AdminBulkCheckValidUserIDV4' test.out

#- 294 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "3c00tNel", "country": "7IIctlE0", "dateOfBirth": "0LZKLm6Z", "displayName": "8R2WNZiM", "languageTag": "9VEfCZ1W", "userName": "MNEmgfPR"}' \
    'xeBOf3V8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'AdminUpdateUserV4' test.out

#- 295 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "IjmVVPEp", "emailAddress": "oiy5jRs2"}' \
    'YwT79LpM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'AdminUpdateUserEmailAddressV4' test.out

#- 296 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    'IxgW1dpE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'AdminDisableUserMFAV4' test.out

#- 297 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    '9gygry8n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'AdminListUserRolesV4' test.out

#- 298 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["g7RsFUbf", "qUfGtuv1", "fOQ6yq6d"], "roleId": "obhRDDIX"}' \
    'cyuFWj02' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateUserRoleV4' test.out

#- 299 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["QhDYqWaQ", "9FjgGbEH", "i7NdUzPs"], "roleId": "neeTS2FX"}' \
    'dSyvrQnK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'AdminAddUserRoleV4' test.out

#- 300 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["4moOPSl2", "EAArNhF0", "CiV3kfke"], "roleId": "bOerRorv"}' \
    'QV8JLa0e' \
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
    '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "PcIR9AAJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'AdminCreateRoleV4' test.out

#- 303 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'ZGFTy5vd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'AdminGetRoleV4' test.out

#- 304 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'VD1idHic' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'AdminDeleteRoleV4' test.out

#- 305 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "83lKfUSd"}' \
    '5Z490a9K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'AdminUpdateRoleV4' test.out

#- 306 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 49, "resource": "SNJBD1pO", "schedAction": 45, "schedCron": "guOs05UB", "schedRange": ["ZFHo2XUM", "2Ey6YYxj", "NokqrLQL"]}, {"action": 25, "resource": "Lgn2dZNM", "schedAction": 83, "schedCron": "UxmJNPjn", "schedRange": ["yKQXQOtN", "DusgbT6O", "8kqBoEYP"]}, {"action": 40, "resource": "fMj4xpA9", "schedAction": 72, "schedCron": "TZUf0pCy", "schedRange": ["LBR5lKp1", "TFVU4KHl", "Vrbd0gl4"]}]}' \
    '6P7kAEn3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'AdminUpdateRolePermissionsV4' test.out

#- 307 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 30, "resource": "yaf9J00C", "schedAction": 46, "schedCron": "CcskDye9", "schedRange": ["OOUerguj", "dsSqkopB", "zEpNvwnG"]}, {"action": 87, "resource": "Bm1epY5F", "schedAction": 23, "schedCron": "Mu77GtuV", "schedRange": ["GtMkilJn", "U7tOCVJi", "NEpvKfBt"]}, {"action": 1, "resource": "YwzDvxcr", "schedAction": 33, "schedCron": "LQBlp17s", "schedRange": ["QG3f8cnF", "DaEn6V9S", "zNDEAYdq"]}]}' \
    '1OFp0XI1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'AdminAddRolePermissionsV4' test.out

#- 308 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["BEdKdrAj", "a5DQoGnp", "j3X8XfVM"]' \
    'h6C4QBxN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'AdminDeleteRolePermissionsV4' test.out

#- 309 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'L6b3GVD2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'AdminListAssignedUsersV4' test.out

#- 310 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["SHOmLw79", "c8PwBNEz", "mjnOtfet"], "namespace": "lzlqjcAW", "userId": "Ce2OvHQZ"}' \
    'RqJKc2Qp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'AdminAssignUserToRoleV4' test.out

#- 311 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "HBmLSbkG", "userId": "Kcr4qsG8"}' \
    'Hl6RNpNE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'AdminRevokeUserFromRoleV4' test.out

#- 312 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "IdQGnQn7", "country": "H6ED59PK", "dateOfBirth": "DRE8A6tP", "displayName": "oMAHvJKR", "languageTag": "pAUfnGye", "userName": "28vhLHQC"}' \
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
    'OSCIu4U4' \
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
    '3KpuQm4o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'AdminMakeFactorMyDefaultV4' test.out

#- 326 AdminInviteUserV4
$PYTHON -m $MODULE 'iam-admin-invite-user-v4' \
    '{"assignedNamespaces": ["KYpaajkf", "WVqYeKFF", "m9wiTfOu"], "emailAddresses": ["MlO6nsIH", "EiqQobkA", "nXrMGgK1"], "isAdmin": false, "roleId": "1vLIVVzb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'AdminInviteUserV4' test.out

#- 327 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "pEnyop4p", "policyId": "vWQq0AvW", "policyVersionId": "afdbEjp6"}, {"isAccepted": true, "localizedPolicyVersionId": "Myrz2YRH", "policyId": "uf99dsG6", "policyVersionId": "Tj5q3an7"}, {"isAccepted": false, "localizedPolicyVersionId": "lZMh7862", "policyId": "DcRFzj0a", "policyVersionId": "kyuT0G7X"}], "authType": "EMAILPASSWD", "country": "MHU6BQyf", "dateOfBirth": "x0hWAC24", "displayName": "X2ZQBTLu", "emailAddress": "KcDSWaUq", "password": "U1PXAmzE", "passwordMD5Sum": "iWTZeExC", "username": "TSgzVkYV", "verified": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'PublicCreateTestUserV4' test.out

#- 328 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "1OMB4mwJ", "policyId": "kkwK0y5H", "policyVersionId": "b0kkZYVO"}, {"isAccepted": false, "localizedPolicyVersionId": "TnuPEn7y", "policyId": "6epIAtVR", "policyVersionId": "baIdcX3Q"}, {"isAccepted": false, "localizedPolicyVersionId": "fMAsIMpb", "policyId": "mbEu99z2", "policyVersionId": "IAqBWSXi"}], "authType": "EMAILPASSWD", "code": "D1wbJidK", "country": "bEIc7JN0", "dateOfBirth": "vzeDXucN", "displayName": "RcjIXggN", "emailAddress": "2aFmwWfR", "password": "roMOMqcp", "passwordMD5Sum": "kz0Q1fNY", "reachMinimumAge": false, "username": "HvxUGI79"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'PublicCreateUserV4' test.out

#- 329 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "5qfILEKV", "policyId": "lfwiAlsI", "policyVersionId": "5b25Rt8I"}, {"isAccepted": false, "localizedPolicyVersionId": "cieJBHl9", "policyId": "ynITvCZB", "policyVersionId": "FAsFYoX1"}, {"isAccepted": true, "localizedPolicyVersionId": "cYWxUfZ5", "policyId": "gYSY23Zc", "policyVersionId": "gIZVt7k7"}], "authType": "EMAILPASSWD", "country": "gMrJlsBA", "dateOfBirth": "rVabahnl", "displayName": "U358WS8R", "password": "qUYxTf1n", "reachMinimumAge": false, "username": "AKd7RCBu"}' \
    'm6vODL7k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'CreateUserFromInvitationV4' test.out

#- 330 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "LSTGFIxw", "country": "bvTyM8iQ", "dateOfBirth": "TBn0BTUu", "displayName": "ZVBJzybk", "languageTag": "an0JOcVO", "userName": "CxgtLX3j"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'PublicUpdateUserV4' test.out

#- 331 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "Two2BFa6", "emailAddress": "7Gfm5iZs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'PublicUpdateUserEmailAddressV4' test.out

#- 332 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "W9ZvoeuU", "country": "2U2jCLZE", "dateOfBirth": "LngcKXMM", "displayName": "MlVKG4h1", "emailAddress": "4IBbHSY3", "password": "DnfzRlBV", "reachMinimumAge": true, "username": "YUKteShq", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 333 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "xSDKOBvp", "password": "9dYW0tsX", "username": "FYqhtcZ8"}' \
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
    'tJ2cwEHI' \
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
    'JiUIEiTh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicMakeFactorMyDefaultV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
