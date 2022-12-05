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
iam-admin-update-input-validations '[{"field": "vVjSlZXa", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "blockedWord": ["IBXUeUZj", "aTKLxLb3", "vWixvtYM"], "description": [{"language": "2CTSqRIR", "message": ["1ZsVESOo", "kHb60Ik4", "w8iLav5W"]}, {"language": "Bg67bGMv", "message": ["gnPpWNLv", "wbQcI393", "MPxf4b8f"]}, {"language": "BF7ODRgD", "message": ["GJbQkDg7", "UkZJGah4", "gr43Hzml"]}], "isCustomRegex": false, "letterCase": "YOfjYqne", "maxLength": 84, "maxRepeatingAlphaNum": 21, "maxRepeatingSpecialCharacter": 34, "minCharType": 39, "minLength": 55, "regex": "jTDT7XZM", "specialCharacterLocation": "UvfWE4m8", "specialCharacters": ["Zhv7lW0B", "oELdSg1r", "Pwne7N4F"]}}, {"field": "7Af11iLe", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "blockedWord": ["7N2G4Ah4", "e7yhr8wc", "fQIffPm1"], "description": [{"language": "1bKKoj1D", "message": ["Gpe4tanp", "dUz9EFcK", "ZxOdqa0N"]}, {"language": "a5GeP0FD", "message": ["jD0kkSoj", "7MwiH4bt", "tnOBy8qZ"]}, {"language": "du8Llhdz", "message": ["8WMU2zRh", "CpsWfm3o", "qkYIwoL3"]}], "isCustomRegex": false, "letterCase": "6rijB0uB", "maxLength": 55, "maxRepeatingAlphaNum": 45, "maxRepeatingSpecialCharacter": 8, "minCharType": 43, "minLength": 24, "regex": "M12Rlyv3", "specialCharacterLocation": "d45iNBF8", "specialCharacters": ["UFBNivKE", "tO6IOMkp", "Zpfkp1j2"]}}, {"field": "yByMdO31", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "blockedWord": ["dEnniGlA", "2BrAuHdp", "zwB0dHGB"], "description": [{"language": "hGgIDSe3", "message": ["RhV6Pv15", "pgfjjDqn", "RBFH6wcq"]}, {"language": "J9eIlS0K", "message": ["DIyCbNtH", "tzmZhsjE", "PG7Al76A"]}, {"language": "SgyvHnfn", "message": ["xQ7Gb4xu", "oIPnEwM3", "hkhZPZZx"]}], "isCustomRegex": false, "letterCase": "29k3K8gC", "maxLength": 6, "maxRepeatingAlphaNum": 82, "maxRepeatingSpecialCharacter": 3, "minCharType": 22, "minLength": 42, "regex": "4BgfcOgT", "specialCharacterLocation": "1cPBDsMW", "specialCharacters": ["1HsSEEGB", "M8hKslMS", "aGvU5CyW"]}}]' --login_with_auth "Bearer foo"
iam-admin-reset-input-validations 'p7uG5FUm' --login_with_auth "Bearer foo"
iam-list-admins-v3 --login_with_auth "Bearer foo"
iam-admin-get-age-restriction-status-v3 --login_with_auth "Bearer foo"
iam-admin-update-age-restriction-config-v3 '{"ageRestriction": 85, "enable": true}' --login_with_auth "Bearer foo"
iam-admin-get-list-country-age-restriction-v3 --login_with_auth "Bearer foo"
iam-admin-update-country-age-restriction-v3 '{"ageRestriction": 18}' 'TwZQ79AQ' --login_with_auth "Bearer foo"
iam-admin-get-banned-users-v3 --login_with_auth "Bearer foo"
iam-admin-ban-user-bulk-v3 '{"ban": "IUxlwFVI", "comment": "Zi1fxRSt", "endDate": "awVyYeRE", "reason": "ZBq97Hr3", "skipNotif": false, "userIds": ["ZgJdEVh8", "dLuFwZ6s", "hr1tTs3L"]}' --login_with_auth "Bearer foo"
iam-admin-unban-user-bulk-v3 '{"bans": [{"banId": "tdjMrzoK", "userId": "7ZezbBEX"}, {"banId": "KQdJPOmo", "userId": "lJSmiJki"}, {"banId": "IHRQjtmq", "userId": "rhStyfRv"}]}' --login_with_auth "Bearer foo"
iam-admin-get-bans-type-with-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-get-clients-by-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-create-client-v3 '{"audiences": ["uz2KRfQ1", "BDS75Jh7", "yHof1s7y"], "baseUri": "ypRpreg6", "clientId": "YU75tEby", "clientName": "TPvqfuOy", "clientPermissions": [{"action": 74, "resource": "B5FrmHAc", "schedAction": 34, "schedCron": "NDYzJnhi", "schedRange": ["9Nu7qnSB", "FWapj3Ey", "wDpFa0pY"]}, {"action": 10, "resource": "CDrYmpZ5", "schedAction": 75, "schedCron": "hH0TIlPM", "schedRange": ["DiMune5A", "rv0lQ8dp", "zTnsegan"]}, {"action": 13, "resource": "1ZR5oidg", "schedAction": 44, "schedCron": "pkY2WWoW", "schedRange": ["Ko9r0qAr", "ixCM5gIE", "q47Iiggs"]}], "clientPlatform": "ni723FUJ", "deletable": false, "description": "w10lASfn", "namespace": "HM2PIFtA", "oauthAccessTokenExpiration": 84, "oauthAccessTokenExpirationTimeUnit": "akWK0Do6", "oauthClientType": "k1C2ESAZ", "oauthRefreshTokenExpiration": 60, "oauthRefreshTokenExpirationTimeUnit": "n3adQsE7", "redirectUri": "76Zfs1KI", "scopes": ["E5MJGmkG", "6VvuF1hF", "ldbqrELQ"], "secret": "oasELwz3", "twoFactorEnabled": false}' --login_with_auth "Bearer foo"
iam-admin-get-clientsby-namespaceby-idv3 '0jmop19T' --login_with_auth "Bearer foo"
iam-admin-delete-client-v3 'LAKO6t7M' --login_with_auth "Bearer foo"
iam-admin-update-client-v3 '{"audiences": ["DsUgjbJt", "9BZDWXPF", "RarQETkb"], "baseUri": "MD9PtpET", "clientName": "7HJg1p5P", "clientPermissions": [{"action": 59, "resource": "u0xfSubi", "schedAction": 32, "schedCron": "syCIZFXW", "schedRange": ["BjAtAv52", "DWr4vqzm", "qGQAVh87"]}, {"action": 98, "resource": "DKpp7i4T", "schedAction": 50, "schedCron": "5Nk26QuN", "schedRange": ["XaJLf7cN", "ulMjLbDT", "E48s0UH2"]}, {"action": 47, "resource": "NNIYOWLz", "schedAction": 21, "schedCron": "pJlWzbdP", "schedRange": ["xLQh4KUi", "Mcl2qLk3", "EscOUkMf"]}], "clientPlatform": "Ci3kQ0r0", "deletable": true, "description": "I7QKWdU9", "namespace": "aZTTnB6W", "oauthAccessTokenExpiration": 22, "oauthAccessTokenExpirationTimeUnit": "ik1jcoAI", "oauthRefreshTokenExpiration": 23, "oauthRefreshTokenExpirationTimeUnit": "MtWISPdr", "redirectUri": "GRDcitTM", "scopes": ["LcXvFwnN", "OJpN5iXD", "3iOkSH3L"], "twoFactorEnabled": false}' 'Xfq5WG5i' --login_with_auth "Bearer foo"
iam-admin-update-client-permission-v3 '{"permissions": [{"action": 2, "resource": "x22bkqhf"}, {"action": 21, "resource": "PJirjkTa"}, {"action": 14, "resource": "UjPJwoTe"}]}' '1R09zKVu' --login_with_auth "Bearer foo"
iam-admin-add-client-permissions-v3 '{"permissions": [{"action": 6, "resource": "kpKXkCGd"}, {"action": 100, "resource": "cKJgchZp"}, {"action": 83, "resource": "VOkJ7FsJ"}]}' 'ulpqcksw' --login_with_auth "Bearer foo"
iam-admin-delete-client-permission-v3 '18' 'dspXCGUK' 'vBTMzDiF' --login_with_auth "Bearer foo"
iam-retrieve-all-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-sso-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-third-party-login-platform-credential-v3 'EfW4fgv0' --login_with_auth "Bearer foo"
iam-add-third-party-login-platform-credential-v3 '{"ACSURL": "VnMvYdOH", "AWSCognitoRegion": "0gASLxDm", "AWSCognitoUserPool": "oHtW1b8Z", "AllowedClients": ["7q7KsYeR", "6R2b860a", "X5UOorTz"], "AppId": "BDvpfdQc", "AuthorizationEndpoint": "xDD4kd6A", "ClientId": "3kn2DG9i", "Environment": "u8Z9S74O", "FederationMetadataURL": "sdNqkQ0d", "GenericOauthFlow": false, "IsActive": true, "Issuer": "GEDqdDj8", "JWKSEndpoint": "Jj1z1Emu", "KeyID": "s38GU5v2", "NetflixCertificates": {"encryptedPrivateKey": "Z95zrOGz", "encryptedPrivateKeyName": "M5lkHXIW", "publicCertificate": "Ooks6OmN", "publicCertificateName": "inefdEiJ", "rootCertificate": "mXpTMmtz", "rootCertificateName": "A2X6elaE"}, "OrganizationId": "8n7V7IoM", "PlatformName": "9pKxsGaN", "RedirectUri": "bAX2ITTO", "RegisteredDomains": [{"affectedClientIDs": ["qbUUEExF", "Pnnf7KTs", "ZbZ8cNSJ"], "domain": "fuAPfBQK", "namespaces": ["TmMWhRDX", "OeHK9RDf", "wsx9GBZx"], "roleId": "oLmmy9ls"}, {"affectedClientIDs": ["AJFw8rth", "Gjf5r9BP", "S8eCJ0g3"], "domain": "hI3UPNQv", "namespaces": ["uJfzKbSw", "LwYx5xT0", "kzY4ObkD"], "roleId": "TSDtbBse"}, {"affectedClientIDs": ["rrgbgQFc", "EhWwrdXu", "ivaUyBAY"], "domain": "vmuKWofQ", "namespaces": ["k0OCpqbf", "AzLAunl8", "5Udibf5n"], "roleId": "olisNx0b"}], "Secret": "spojFduE", "TeamID": "JVd2yaP4", "TokenAuthenticationType": "ayzdmiVo", "TokenClaimsMapping": {"Li95nKI1": "RjIHLuN1", "d30j5hr5": "1ljM9cKZ", "MpBUuCbQ": "f8d2hMYU"}, "TokenEndpoint": "0zgH0ru2", "scopes": ["S3y62TYE", "BAgvJQMb", "2vYGdSX6"]}' 'pvaJgblb' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-credential-v3 'VR50pj8R' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-credential-v3 '{"ACSURL": "FxTRJsfF", "AWSCognitoRegion": "ZAFarQxR", "AWSCognitoUserPool": "scVYNBP4", "AllowedClients": ["ZnkxnrwD", "252FklJg", "H7m1WFK4"], "AppId": "c4KEc7DB", "AuthorizationEndpoint": "CaxavCOB", "ClientId": "qFzr8UFq", "Environment": "elf6s8r4", "FederationMetadataURL": "E9KE7qDu", "GenericOauthFlow": true, "IsActive": true, "Issuer": "1SutkCp9", "JWKSEndpoint": "HNistcZN", "KeyID": "xIoGRmMd", "NetflixCertificates": {"encryptedPrivateKey": "XW2OPKVy", "encryptedPrivateKeyName": "ICWm3KEU", "publicCertificate": "wf0smImF", "publicCertificateName": "NSvkoKc1", "rootCertificate": "Kxy1EEEE", "rootCertificateName": "hVSlSTAo"}, "OrganizationId": "5bS8BtdI", "PlatformName": "9YE755le", "RedirectUri": "uC6W23VW", "RegisteredDomains": [{"affectedClientIDs": ["XBHoDZ6B", "Gfw4xyWd", "W6NOpxkr"], "domain": "dfl2RS5t", "namespaces": ["an6lpDAW", "nrW6X737", "T8sBAoCH"], "roleId": "MNjP98jZ"}, {"affectedClientIDs": ["3L1HyldX", "SZRPlIxp", "Nqv3po1d"], "domain": "cF7Hhi10", "namespaces": ["xPKcVHuD", "3YOejkJL", "UuvYJkFG"], "roleId": "8dpAEBFP"}, {"affectedClientIDs": ["lc6HEzv4", "9rhv1Wkf", "XSkDVyIn"], "domain": "7C8Fd4AB", "namespaces": ["DyRS1zt4", "TGRedfb5", "dm7i4ljx"], "roleId": "aN9aMQ5y"}], "Secret": "d0pLWDfo", "TeamID": "9Pn0W6zr", "TokenAuthenticationType": "s9nGVahf", "TokenClaimsMapping": {"o7IxTYAf": "xCqsL4qo", "jWvIREl5": "763cyOco", "IIM7vN3x": "5YraDLL9"}, "TokenEndpoint": "SmOBI6Ku", "scopes": ["BmWIzxgn", "DjycUbin", "8x8i4Qra"]}' 'TtnLG4Kp' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-domain-v3 '{"affectedClientIDs": ["I3DUfyDE", "r8jb1z7D", "M0d1bVWz"], "assignedNamespaces": ["3L1Ijboy", "4WtjpwmJ", "dMPTsVtm"], "domain": "NMfK2ndC", "roleId": "wizLHa51"}' 'RMRFaYMW' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-domain-v3 '{"domain": "igbOUsYW"}' 'uperhWz4' --login_with_auth "Bearer foo"
iam-retrieve-sso-login-platform-credential 'AyEFVc1p' --login_with_auth "Bearer foo"
iam-add-sso-login-platform-credential '{"acsUrl": "EJwjXDeb", "apiKey": "yAmhyDrY", "appId": "u9ixH9wi", "federationMetadataUrl": "DMq8gMat", "isActive": true, "redirectUri": "Q2ebsHvA", "secret": "d2RLW11x", "ssoUrl": "1iVHsQw2"}' 'ALXcRyxh' --login_with_auth "Bearer foo"
iam-delete-sso-login-platform-credential-v3 'vFXrGmp6' --login_with_auth "Bearer foo"
iam-update-sso-platform-credential '{"acsUrl": "oyVQ53Iv", "apiKey": "oMv4agy1", "appId": "WRyt1b6D", "federationMetadataUrl": "8TwyS3aw", "isActive": false, "redirectUri": "qbL1ghez", "secret": "M0ChC4b5", "ssoUrl": "4UIlttZh"}' '4OCbcW8I' --login_with_auth "Bearer foo"
iam-admin-get-user-by-platform-user-idv3 '3ZdRnoy0' 'bouJ9Pj7' --login_with_auth "Bearer foo"
iam-get-admin-users-by-role-id-v3 'tAO5Fd9L' --login_with_auth "Bearer foo"
iam-admin-get-user-by-email-address-v3 --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-user-i-ds-v3 '{"userIds": ["rH3PdG59", "kXJ8DtAy", "grsMFEHE"]}' --login_with_auth "Bearer foo"
iam-admin-invite-user-v3 '{"emailAddresses": ["KS0Y8IuQ", "hRg9vGgH", "jwOxq7O9"], "isAdmin": false, "roles": ["ilLS4uPE", "yOkqKAEu", "C8xl3wBi"]}' --login_with_auth "Bearer foo"
iam-admin-list-users-v3 --login_with_auth "Bearer foo"
iam-admin-search-user-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-by-email-address-v3 '{"listEmailAddressRequest": ["I0smvL3z", "nBbeb0eK", "8YzuugeQ"]}' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v3 '3BRDmLMN' --login_with_auth "Bearer foo"
iam-admin-update-user-v3 '{"avatarUrl": "5izuD69P", "country": "eC75kZMT", "dateOfBirth": "PZvS9F4J", "displayName": "irAZ974f", "languageTag": "2UurYEVP", "userName": "fJiceUAc"}' 'pwEgRfHq' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v3 'jrVYngCE' --login_with_auth "Bearer foo"
iam-admin-ban-user-v3 '{"ban": "qQasnja4", "comment": "LLgM7muY", "endDate": "9nnjLxjy", "reason": "YhCltt43", "skipNotif": true}' 'MNhzTykJ' --login_with_auth "Bearer foo"
iam-admin-update-user-ban-v3 '{"enabled": false, "skipNotif": false}' 'LbzCDXFu' 'CZBGV9rz' --login_with_auth "Bearer foo"
iam-admin-send-verification-code-v3 '{"context": "HmGbw6J2", "emailAddress": "RUUcLLLq", "languageTag": "wJbrs3qO"}' 'MhNohJvM' --login_with_auth "Bearer foo"
iam-admin-verify-account-v3 '{"Code": "N4pUA0gF", "ContactType": "iO0y7RcA", "LanguageTag": "7taubIlQ", "validateOnly": false}' 'jlgifM3k' --login_with_auth "Bearer foo"
iam-get-user-verification-code 'L69mVgNE' --login_with_auth "Bearer foo"
iam-admin-get-user-deletion-status-v3 'cceoT9mE' --login_with_auth "Bearer foo"
iam-admin-update-user-deletion-status-v3 '{"enabled": false}' 'K6JJCxaS' --login_with_auth "Bearer foo"
iam-admin-upgrade-headless-account-v3 '{"code": "RlnrZXCH", "country": "UHtBhvVF", "dateOfBirth": "7RHxS6Kb", "displayName": "IIIoeYY7", "emailAddress": "vHajUEfT", "password": "67Pj2LDt", "validateOnly": false}' 'ohOLzlLf' --login_with_auth "Bearer foo"
iam-admin-delete-user-information-v3 'iE9r5uuS' --login_with_auth "Bearer foo"
iam-admin-get-user-login-histories-v3 'l0s83Kml' --login_with_auth "Bearer foo"
iam-admin-reset-password-v3 '{"languageTag": "P1FIgDzl", "newPassword": "2PSQCpH0", "oldPassword": "8rfrgmX8"}' 'iTEgManW' --login_with_auth "Bearer foo"
iam-admin-update-user-permission-v3 '{"Permissions": [{"Action": 22, "Resource": "ofnDA0XX", "SchedAction": 64, "SchedCron": "ewlYJUJa", "SchedRange": ["QtKm0BlR", "Pr9vG4wr", "nvl5akHr"]}, {"Action": 69, "Resource": "seCSOrRx", "SchedAction": 95, "SchedCron": "LpRPRfCv", "SchedRange": ["soWrOlDx", "FdEDsoWM", "uVAEr8pJ"]}, {"Action": 33, "Resource": "B6Mst45W", "SchedAction": 54, "SchedCron": "zIPcKv1R", "SchedRange": ["UXqmWfZJ", "vkBdrCzn", "ttbMxFKp"]}]}' 'wgPe1aw7' --login_with_auth "Bearer foo"
iam-admin-add-user-permissions-v3 '{"Permissions": [{"Action": 12, "Resource": "nfenNRhx", "SchedAction": 57, "SchedCron": "6cZvsvSq", "SchedRange": ["35mGCslD", "I3ZkuNBG", "Ck5rvpAn"]}, {"Action": 53, "Resource": "bCeYmR8U", "SchedAction": 0, "SchedCron": "AlegmgNS", "SchedRange": ["o70yQ3Gd", "FhaJjrjO", "qYfGaTBR"]}, {"Action": 7, "Resource": "pAOlODsS", "SchedAction": 62, "SchedCron": "KUwg6CzC", "SchedRange": ["yYekb6Gi", "Y86UQhSY", "h3kl3JCe"]}]}' 'sblPW6r1' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-bulk-v3 '[{"Action": 55, "Resource": "7jmXNkl3"}, {"Action": 88, "Resource": "3kIHcMHh"}, {"Action": 42, "Resource": "yfo9D6SH"}]' '9HFXfO5S' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-v3 '34' 'AaLSOKgv' 'ISvAisMl' --login_with_auth "Bearer foo"
iam-admin-get-user-platform-accounts-v3 '1pHoxORt' --login_with_auth "Bearer foo"
iam-admin-get-list-justice-platform-accounts 'aN0QURJn' --login_with_auth "Bearer foo"
iam-admin-get-user-mapping '1TpYCVIm' 'sNXt5DJy' --login_with_auth "Bearer foo"
iam-admin-create-justice-user 'GVrx7TZA' 'mglzNrQv' --login_with_auth "Bearer foo"
iam-admin-link-platform-account '{"platformId": "HjYRT6D7", "platformUserId": "hZFHNAjm"}' 'hpecGIWi' --login_with_auth "Bearer foo"
iam-admin-platform-unlink-v3 '{"platformNamespace": "xl9OzJOb"}' '7uTMorjJ' 'VLk9bjKM' --login_with_auth "Bearer foo"
iam-admin-platform-link-v3 'TPx9ffyx' 'S0wFSniS' 'ebkAN9ql' --login_with_auth "Bearer foo"
iam-admin-get-third-party-platform-token-link-status-v3 'gEQyD8xu' 'b12ZjO9n' 'BXVyyOAN' --login_with_auth "Bearer foo"
iam-admin-delete-user-roles-v3 '["PqERTTJV", "x5aAL4xA", "1LUsZxaC"]' 'uOACBZRp' --login_with_auth "Bearer foo"
iam-admin-save-user-role-v3 '[{"namespace": "lJpTMPHj", "roleId": "SlfeANfU"}, {"namespace": "Xk7xKzhr", "roleId": "Z2ppTHtE"}, {"namespace": "4Wt1DwWN", "roleId": "3mNLKRYs"}]' 'E1ANYMtw' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v3 'PxBa3ubj' 'N8rW7mRJ' --login_with_auth "Bearer foo"
iam-admin-delete-user-role-v3 'DWB61J7q' '06F3YRMb' --login_with_auth "Bearer foo"
iam-admin-update-user-status-v3 '{"enabled": true, "reason": "t48xjR8u"}' 'YgcA5Wsu' --login_with_auth "Bearer foo"
iam-admin-verify-user-without-verification-code-v3 'XQeCouUd' --login_with_auth "Bearer foo"
iam-admin-update-client-secret-v3 '{"newSecret": "rgX43mtN"}' 'WNEeQNNs' --login_with_auth "Bearer foo"
iam-admin-get-roles-v3 --login_with_auth "Bearer foo"
iam-admin-create-role-v3 '{"adminRole": true, "deletable": false, "isWildcard": false, "managers": [{"displayName": "FDupnfKs", "namespace": "uHMoHJjr", "userId": "pA40n60q"}, {"displayName": "xS5Mn2OR", "namespace": "ymdQNxRn", "userId": "qJyZRFrB"}, {"displayName": "Gv9tpmPO", "namespace": "4GCoWU0h", "userId": "TgP66GIq"}], "members": [{"displayName": "kdYWhFHW", "namespace": "xIj5xeYl", "userId": "Hh1Fh6kP"}, {"displayName": "CNZzswhG", "namespace": "t7z53ZPq", "userId": "Sh0wE7rr"}, {"displayName": "nRJ55Znw", "namespace": "2OjLNHMd", "userId": "mgWXWUCj"}], "permissions": [{"action": 92, "resource": "WeRQLfNH", "schedAction": 70, "schedCron": "0PKz0trr", "schedRange": ["1Zip9YPG", "oyaasFat", "PKrbQZCY"]}, {"action": 94, "resource": "AMizh0ST", "schedAction": 47, "schedCron": "x1Az7vTr", "schedRange": ["3eBPLGea", "jxBtzbod", "QelY3HnL"]}, {"action": 69, "resource": "WIinbDeJ", "schedAction": 70, "schedCron": "t6LqAl79", "schedRange": ["F8pTrRa3", "tvGq0v5J", "xkiORJ4W"]}], "roleName": "PD4dzzah"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v3 'IWA1iUnN' --login_with_auth "Bearer foo"
iam-admin-delete-role-v3 'WtQV4o8q' --login_with_auth "Bearer foo"
iam-admin-update-role-v3 '{"deletable": false, "isWildcard": false, "roleName": "OjtM51Fy"}' 'PD1OgOYa' --login_with_auth "Bearer foo"
iam-admin-get-role-admin-status-v3 'JbxfLGJC' --login_with_auth "Bearer foo"
iam-admin-update-admin-role-status-v3 'mMiJugbt' --login_with_auth "Bearer foo"
iam-admin-remove-role-admin-v3 'NudJL21e' --login_with_auth "Bearer foo"
iam-admin-get-role-managers-v3 'jmXXXXxf' --login_with_auth "Bearer foo"
iam-admin-add-role-managers-v3 '{"managers": [{"displayName": "UEqsvPXN", "namespace": "eNCgmuGE", "userId": "uwefGnnT"}, {"displayName": "JfJMFCha", "namespace": "NTUw88N5", "userId": "YUc1HxG1"}, {"displayName": "RSBwfWLP", "namespace": "AFdkZzBd", "userId": "VMeyjMRa"}]}' '4PvoWmwe' --login_with_auth "Bearer foo"
iam-admin-remove-role-managers-v3 '{"managers": [{"displayName": "Jr3mSLuH", "namespace": "NGCVFwmY", "userId": "wsCipXWB"}, {"displayName": "t2WCUUiH", "namespace": "y9Wb7nRn", "userId": "lWVBndVW"}, {"displayName": "8hkAhdRz", "namespace": "qSZRhiHj", "userId": "i65dg7Dk"}]}' '1YdfibDL' --login_with_auth "Bearer foo"
iam-admin-get-role-members-v3 'WRXhJtsF' --login_with_auth "Bearer foo"
iam-admin-add-role-members-v3 '{"members": [{"displayName": "UrkNtPvk", "namespace": "I69xMly3", "userId": "W9LtXCtW"}, {"displayName": "gRwPM4zg", "namespace": "gzfgSwyy", "userId": "2pPvACnv"}, {"displayName": "2FTXRBVT", "namespace": "r6aqWPbB", "userId": "noSxpOqN"}]}' 'RxgMUeUa' --login_with_auth "Bearer foo"
iam-admin-remove-role-members-v3 '{"members": [{"displayName": "2DPaRBKb", "namespace": "uB3pBKFW", "userId": "Y6F4nchl"}, {"displayName": "YKEdSdYv", "namespace": "3KV8Lra4", "userId": "Aeby63P7"}, {"displayName": "TOJDB7El", "namespace": "RSrMc1uP", "userId": "MW5iv3c3"}]}' '29LS7kGF' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v3 '{"permissions": [{"action": 29, "resource": "MJqaMzFs", "schedAction": 78, "schedCron": "oNnwosf5", "schedRange": ["3wZEZFcr", "g3AycAXM", "uMajI9wZ"]}, {"action": 3, "resource": "ajIIoiTp", "schedAction": 46, "schedCron": "GBfFMIA7", "schedRange": ["71h8tVCK", "Jm90eMFM", "209TCM7s"]}, {"action": 91, "resource": "WBKkkR97", "schedAction": 13, "schedCron": "WsqiUzJ1", "schedRange": ["Axp7tff8", "hsebMSGt", "HSp6V59T"]}]}' 'ACnQISeX' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v3 '{"permissions": [{"action": 94, "resource": "7aAXMzBO", "schedAction": 48, "schedCron": "HQp3d8C0", "schedRange": ["a3r2wV4W", "xTiVa0Rc", "s5NA78Hi"]}, {"action": 5, "resource": "qTLfTnUq", "schedAction": 54, "schedCron": "VMrsaRCT", "schedRange": ["cvGnmebB", "nim0Yj9G", "RxqxDO3Z"]}, {"action": 15, "resource": "C8le0xHF", "schedAction": 47, "schedCron": "IuGplSdm", "schedRange": ["2GTlaU6R", "9Bmoz4Lk", "mifhsxyE"]}]}' 'sWPoDPvt' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v3 '["3p6KiGpF", "9ecLulch", "mpSgYSVJ"]' 'JV7A9WR4' --login_with_auth "Bearer foo"
iam-admin-delete-role-permission-v3 '92' 'oZhZu7W9' 'K9HpIEbL' --login_with_auth "Bearer foo"
iam-admin-get-my-user-v3 --login_with_auth "Bearer foo"
iam-user-authentication-v3 'CcRNQ8ff' 'XyOGwnAW' 'c6sF8mS7' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-authentication-with-platform-link-v3 'oDewKCrU' 'SvDQcIc1' 'WkakFLxt' 'vLQAPmj6' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v3 'ickmnEmF' --login_with_auth "Bearer foo"
iam-get-country-location-v3 --login_with_auth "Bearer foo"
iam-logout --login_with_auth "Bearer foo"
iam-request-game-token-code-response-v3 '95fPU2y7' --login_with_auth "Bearer foo"
iam-admin-retrieve-user-third-party-platform-token-v3 '9zMDPW7V' 'HAzK4QMf' --login_with_auth "Bearer foo"
iam-revoke-user-v3 'JnBGGK8s' --login_with_auth "Bearer foo"
iam-authorize-v3 'wDSpoecS' 'code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-introspection-v3 '8c0qGtMq' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-jwksv3 --login_with_auth "Bearer foo"
iam-send-mfa-authentication-code '77wDTSp6' 'o6uqtZWK' 'RThoYHAx' --login_with_auth "Bearer foo"
iam-change2fa-method 'l45epVYg' 'MRPgMdX7' --login_with_auth "Bearer foo"
iam-verify2fa-code 'EsiVL7fE' 'C8aX994y' 'LJG9uPZG' 'true' --login_with_auth "Bearer foo"
iam-retrieve-user-third-party-platform-token-v3 'GROs5Akw' '4lSaDvLh' --login_with_auth "Bearer foo"
iam-auth-code-request-v3 'rBjypMnv' 'GbRQu3S2' --login_with_auth "Bearer foo"
iam-platform-token-grant-v3 'Nvr1jnWW' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-revocation-list-v3 --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-revocation-v3 'yrWrW7oF' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-grant-v3 'client_credentials' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-verify-token-v3 'I7CHlIxW' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-platform-authentication-v3 'eJfu6ti5' 'D38yQa71' --login_with_auth "Bearer foo"
iam-public-get-input-validations --login_with_auth "Bearer foo"
iam-public-get-country-age-restriction-v3 '3Dc8b5q5' --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-public-v3 --login_with_auth "Bearer foo"
iam-retrieve-active-oidc-clients-public-v3 'LZSo2DuG' --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["lnpwszyq", "rtOtrogY", "EtNJa056"]}' 'iz1eoGXL' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv3 '7360O3Qt' 'wDp3fW1c' --login_with_auth "Bearer foo"
iam-public-get-async-status 'on1sbmCS' --login_with_auth "Bearer foo"
iam-public-search-user-v3 --login_with_auth "Bearer foo"
iam-public-create-user-v3 '{"PasswordMD5Sum": "gkmgGgSW", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "KAoBVjU8", "policyId": "VH9ZQUYQ", "policyVersionId": "p1KBbqbN"}, {"isAccepted": false, "localizedPolicyVersionId": "hR4rYsq4", "policyId": "6tLVKyod", "policyVersionId": "ouyl4KUa"}, {"isAccepted": true, "localizedPolicyVersionId": "cvkiTlM4", "policyId": "sCjNygHQ", "policyVersionId": "AmjNkS05"}], "authType": "DmWprKB6", "code": "LVcPDMvn", "country": "xiQiMPuy", "dateOfBirth": "uFEzfi1Q", "displayName": "R7VA0DlG", "emailAddress": "Yr2BWIMN", "password": "tB25Ytko", "reachMinimumAge": false}' --login_with_auth "Bearer foo"
iam-check-user-availability 'IrXSORrc' 'dmUDxCBd' --login_with_auth "Bearer foo"
iam-public-bulk-get-users '{"userIds": ["QRWOwYKb", "UGbzijHD", "4NEU1yg8"]}' --login_with_auth "Bearer foo"
iam-public-send-registration-code '{"emailAddress": "8xEL8uC6", "languageTag": "rwdcL4iR"}' --login_with_auth "Bearer foo"
iam-public-verify-registration-code '{"code": "uAlMtEgV", "emailAddress": "4mU55CLb"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v3 '{"emailAddress": "7rZTxoVW", "languageTag": "7TXeNu1e"}' --login_with_auth "Bearer foo"
iam-get-admin-invitation-v3 'r2Jxb7ah' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v3 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "jvjBzVF8", "policyId": "PxFVc2Ir", "policyVersionId": "ekkIEuEO"}, {"isAccepted": false, "localizedPolicyVersionId": "cOKqpWg2", "policyId": "7j3Fy2v5", "policyVersionId": "67DLwRpp"}, {"isAccepted": false, "localizedPolicyVersionId": "31r3P3c7", "policyId": "AxeQkpO1", "policyVersionId": "boLgJFaA"}], "authType": "EMAILPASSWD", "country": "LEFMAeyj", "dateOfBirth": "Y9ZBgFZH", "displayName": "swG8U091", "password": "1YAUYh8m", "reachMinimumAge": false}' 'olFvxsdm' --login_with_auth "Bearer foo"
iam-update-user-v3 '{"avatarUrl": "jOzMxw4v", "country": "oeE8paH7", "dateOfBirth": "OjEgeRd3", "displayName": "7qw2CGVO", "languageTag": "Ymc8VirT", "userName": "ZNBVUkue"}' --login_with_auth "Bearer foo"
iam-public-partial-update-user-v3 '{"avatarUrl": "xmOImNsV", "country": "8rFGqXYg", "dateOfBirth": "QgNFbTHd", "displayName": "thbjXBK6", "languageTag": "arlbSbUi", "userName": "zvXK3vCL"}' --login_with_auth "Bearer foo"
iam-public-send-verification-code-v3 '{"context": "kU8kGyGm", "emailAddress": "LxEXjETb", "languageTag": "ciOLedSj"}' --login_with_auth "Bearer foo"
iam-public-user-verification-v3 '{"code": "d6BNVnDv", "contactType": "wJtka4ak", "languageTag": "Q6et6A1T", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v3 '{"code": "kHh3agol", "country": "74Eenqzc", "dateOfBirth": "GKEvaUO7", "displayName": "F8Fd4ANd", "emailAddress": "dGDiZiHo", "password": "9WyJjkFi", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-verify-headless-account-v3 '{"emailAddress": "q8YfAJXx", "password": "mtznv2aM"}' --login_with_auth "Bearer foo"
iam-public-update-password-v3 '{"languageTag": "O2IRgzxJ", "newPassword": "jIJtcbHq", "oldPassword": "zX3UqMhj"}' --login_with_auth "Bearer foo"
iam-public-create-justice-user 'GJAq2VAd' --login_with_auth "Bearer foo"
iam-public-platform-link-v3 'H56IOicq' 'MEd9ztbJ' --login_with_auth "Bearer foo"
iam-public-platform-unlink-v3 '{"platformNamespace": "Ee9W5LLs"}' '46dvtbiV' --login_with_auth "Bearer foo"
iam-public-platform-unlink-all-v3 'RHqVdqgZ' --login_with_auth "Bearer foo"
iam-public-force-platform-link-v3 '5W5N4yBm' '6rWBkDrQ' --login_with_auth "Bearer foo"
iam-public-web-link-platform 'jx15RsBZ' --login_with_auth "Bearer foo"
iam-public-web-link-platform-establish 'KJgvzUMw' 'F3Qtmn0j' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"code": "on1q747d", "emailAddress": "gqsd2TwS", "newPassword": "mpbMxFIX"}' --login_with_auth "Bearer foo"
iam-public-get-user-by-user-id-v3 '5ZoMUZeo' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 'ZIQ59q27' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 'VGA4OM8o' --login_with_auth "Bearer foo"
iam-public-get-user-information-v3 'SFYcBtiQ' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 'XzdLDU3q' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 '763vtKSg' --login_with_auth "Bearer foo"
iam-public-list-justice-platform-accounts-v3 'G3JB6Fwp' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "i1NQwet7", "platformUserId": "9UpUFdMP"}' 'ym9dD4ql' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["GyfH0xYl", "wGY05xU5", "4S7NCm1H"], "requestId": "WsBJY8fZ"}' 'a3tPL3zQ' --login_with_auth "Bearer foo"
iam-public-get-publisher-user-v3 'EYgOFTyN' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 'VuSe3EZo' 'qCzhMLjO' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 'GGWoRHUf' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-public-send-verification-link-v3 '{"languageTag": "989JfaDB"}' --login_with_auth "Bearer foo"
iam-public-verify-user-by-link-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler 'X4AWqOSo' 'UKw0F99g' --login_with_auth "Bearer foo"
iam-login-sso-client '85TL5PDP' --login_with_auth "Bearer foo"
iam-logout-sso-client 'Ydb1gix0' --login_with_auth "Bearer foo"
iam-request-game-token-response-v3 'WdUxgZ5d' --login_with_auth "Bearer foo"
iam-admin-get-devices-by-user-v4 --login_with_auth "Bearer foo"
iam-admin-get-banned-devices-v4 --login_with_auth "Bearer foo"
iam-admin-get-user-device-bans-v4 'ZlTn2ijN' --login_with_auth "Bearer foo"
iam-admin-ban-device-v4 '{"comment": "aaIkGOTj", "deviceId": "f15PWvai", "deviceType": "dy2S0Q6m", "enabled": false, "endDate": "UfJxjMZN", "ext": {"nDt0ryTq": {}, "ilyUZbQT": {}, "CU8mxb8l": {}}, "reason": "3odmZOPO"}' --login_with_auth "Bearer foo"
iam-admin-get-device-ban-v4 'ftzlHUmk' --login_with_auth "Bearer foo"
iam-admin-update-device-ban-v4 '{"enabled": false}' 'xsxlOmg7' --login_with_auth "Bearer foo"
iam-admin-generate-report-v4 'MbcMFmI5' --login_with_auth "Bearer foo"
iam-admin-get-device-types-v4 --login_with_auth "Bearer foo"
iam-admin-get-device-bans-v4 'XMmPYm5o' --login_with_auth "Bearer foo"
iam-admin-decrypt-device-v4 'JDE7m0ma' --login_with_auth "Bearer foo"
iam-admin-unban-device-v4 'PQHzDR2y' --login_with_auth "Bearer foo"
iam-admin-get-users-by-device-v4 'x6WaMNou' --login_with_auth "Bearer foo"
iam-admin-create-test-users-v4 '{"count": 88}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["MNwhpRRa", "2tH7AWPl", "lATJST8G"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "GXHlXQZI", "country": "BYTjB6n9", "dateOfBirth": "tjDlhBXQ", "displayName": "eUmCvUF0", "languageTag": "tOjlnFW4", "userName": "NeZXkvnx"}' 'pmGhmAHk' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "12ALvOCG", "emailAddress": "FmMKqVJX"}' 'bAOSHTRT' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 '5PTbcSTh' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 'VqCLaTo2' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["c1JZVEP1", "mr37x8zG", "hx01FlkY"], "roleId": "W1kkp8Th"}' 'UV7tMYlq' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["iyMHV68Z", "SUjpLa1E", "TIm4IDPX"], "roleId": "nE5EQDl7"}' 'wNYuyrzS' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["xyYzcWy6", "FTQDO5oh", "2uGAOeSz"], "roleId": "V5DSDqcE"}' 'EkVOcUdW' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "u4bAxW3s"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 'ZNRCRi2P' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 'NBGBKxBr' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "HitHOMd4"}' 'DlkKBazY' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 41, "resource": "2UqF6UMd", "schedAction": 95, "schedCron": "vr9bDo2j", "schedRange": ["3d5JyRPe", "fkz53pLJ", "4bJuxue0"]}, {"action": 58, "resource": "NURhQBWp", "schedAction": 77, "schedCron": "23rT2ajO", "schedRange": ["3tHYiwDy", "N1UrB6fW", "YmfAIxYc"]}, {"action": 23, "resource": "FK7Tqxw4", "schedAction": 30, "schedCron": "pSzZJloG", "schedRange": ["LhUiW8ta", "vawyLYxc", "T2hJznSu"]}]}' '5HGPTZdL' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 8, "resource": "wQJd2yDH", "schedAction": 21, "schedCron": "hDsK1s6H", "schedRange": ["xBS2PgPw", "F7lF5KV0", "F7RkI2db"]}, {"action": 49, "resource": "xHYpXgXt", "schedAction": 99, "schedCron": "t0jkX8xm", "schedRange": ["IjvJ9jRv", "5q0811Md", "RlDATtXp"]}, {"action": 17, "resource": "NpjALzjM", "schedAction": 35, "schedCron": "WEB9mDdc", "schedRange": ["IByqqvVb", "GUuvZgSo", "HOddHxnu"]}]}' 'd9UHIalc' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["rsHM2fRp", "dsaqxZpv", "QTlYulix"]' 'r1wQa3VU' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'EJR8d8jm' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["k6azLWYa", "DbWMaJAR", "qwdKHFhP"], "namespace": "YoEqtqVV", "userId": "mrtv5Y4T"}' 'Lwp9Kbif' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "i4ui48fq", "userId": "iKv46Irl"}' 'KEa6FaPz' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "e6Ho4Jki", "country": "SwNHRWEp", "dateOfBirth": "0VoFiXRz", "displayName": "eRV7jAxM", "languageTag": "XEQ6cH92", "userName": "pyBkhLf8"}' --login_with_auth "Bearer foo"
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
iam-admin-enable-my-email-v4 'Rbb0HFnn' --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 'biAEFqyP' --login_with_auth "Bearer foo"
iam-admin-invite-user-v4 '{"assignedNamespaces": ["9DfGyBZr", "gRx3EuT7", "f6qi7kDj"], "emailAddresses": ["CJjEOZOe", "n3Apn5dH", "WvOUsgiR"], "isAdmin": true, "roleId": "utisvMw6"}' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "LNqLS7iX", "policyId": "Zv7dZx5a", "policyVersionId": "loCE3hTB"}, {"isAccepted": false, "localizedPolicyVersionId": "lp8io9Bs", "policyId": "cjFYsMHk", "policyVersionId": "7AmUywdV"}, {"isAccepted": false, "localizedPolicyVersionId": "wWlDLQtx", "policyId": "AjJgxuQD", "policyVersionId": "RP5eDHQd"}], "authType": "EMAILPASSWD", "country": "2ZYe8AQM", "dateOfBirth": "wLZSdA96", "displayName": "BHgG7iwF", "emailAddress": "XYUcGzpj", "password": "3uBIbST2", "passwordMD5Sum": "GzQf0n4Q", "username": "H2c4Wzw8", "verified": false}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "AoRXNQyy", "policyId": "4wHm8SiD", "policyVersionId": "NYNWmat7"}, {"isAccepted": false, "localizedPolicyVersionId": "xw8KFNZE", "policyId": "JBW5QUgY", "policyVersionId": "B3JI2fI5"}, {"isAccepted": true, "localizedPolicyVersionId": "BBtsjskk", "policyId": "34bugnTN", "policyVersionId": "B4FuzwUL"}], "authType": "EMAILPASSWD", "code": "udPOYFlT", "country": "3guOT1sr", "dateOfBirth": "MPVGf5et", "displayName": "5Cxjsawq", "emailAddress": "JHuRrr30", "password": "hR6rlgGb", "passwordMD5Sum": "XpxKh5u2", "reachMinimumAge": false, "username": "3Yy5jDsr"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "Trt9yf0D", "policyId": "BB3vtFaJ", "policyVersionId": "s2a9eWyZ"}, {"isAccepted": false, "localizedPolicyVersionId": "KBBHl8HR", "policyId": "lw9BY25U", "policyVersionId": "CFimIhxT"}, {"isAccepted": true, "localizedPolicyVersionId": "7etMP7BL", "policyId": "QTBZTWGA", "policyVersionId": "CBpEhvJo"}], "authType": "EMAILPASSWD", "country": "o0bon3vV", "dateOfBirth": "19r1rzGm", "displayName": "nKBrKoYi", "password": "Szw4UuJU", "reachMinimumAge": false, "username": "uH3emp0k"}' 'QxBTq5oW' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "Gd7pGScu", "country": "o0ndjNok", "dateOfBirth": "3PJQ4kAw", "displayName": "vYacmXpB", "languageTag": "E5dLAp1Z", "userName": "sYFl1RxB"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "HrtEBiJk", "emailAddress": "uQwhMGc5"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "3rE5bk4v", "country": "nmrBjt92", "dateOfBirth": "CLZN29La", "displayName": "RFek5Gi8", "emailAddress": "AnxK71qy", "password": "OjYSXc6T", "reachMinimumAge": false, "username": "CMUOLSng", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"emailAddress": "vjHQo3ix", "password": "cpEezgpW", "username": "wKq3ptQq"}' --login_with_auth "Bearer foo"
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
iam-public-enable-my-email-v4 'rnlqpJKQ' --login_with_auth "Bearer foo"
iam-public-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-public-make-factor-my-default-v4 'rtJIMVu4' --login_with_auth "Bearer foo"
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
echo "1..341"

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
    '[{"field": "rNktfsbF", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "blockedWord": ["g9Gudx78", "Z9Ugn2ur", "SnYgSgGc"], "description": [{"language": "PBiwJgtt", "message": ["ZhzLbSub", "mwN8Brp4", "4nBaSAlt"]}, {"language": "Qlu1TDPZ", "message": ["IEJsL5Jo", "2EUlCJSG", "YMhM7irc"]}, {"language": "YrNTmWlK", "message": ["GWn6Yc7D", "i18dBGaL", "SGxDByic"]}], "isCustomRegex": false, "letterCase": "4vam5DSS", "maxLength": 29, "maxRepeatingAlphaNum": 15, "maxRepeatingSpecialCharacter": 29, "minCharType": 29, "minLength": 99, "regex": "8zkG6FuS", "specialCharacterLocation": "iSselNkZ", "specialCharacters": ["v64dXBMO", "VzcHwxuT", "6WPcYEom"]}}, {"field": "MNaOLk34", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "blockedWord": ["Jtbqw7NA", "jWTsTAXL", "jIOnDamy"], "description": [{"language": "D8Q4bM2I", "message": ["zYtb8LWD", "0irYOy7i", "z0u9fZgp"]}, {"language": "fN62QU5J", "message": ["sn5mQg9E", "oqHRMsJV", "xmNmAmvh"]}, {"language": "xLw5Pfr8", "message": ["ggyCVKt2", "uad0Hczs", "GHGxiQDJ"]}], "isCustomRegex": true, "letterCase": "iBYvgqhu", "maxLength": 82, "maxRepeatingAlphaNum": 34, "maxRepeatingSpecialCharacter": 74, "minCharType": 71, "minLength": 100, "regex": "m2EbMyAW", "specialCharacterLocation": "3GAk5Agg", "specialCharacters": ["tzmqlYH6", "En0NMkPH", "egePSu4d"]}}, {"field": "i2SFPRAZ", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "blockedWord": ["idlqHJus", "1J0jgarr", "1A2QFbeK"], "description": [{"language": "TekBFdJR", "message": ["kcwQPSdl", "E7wmABnL", "Z0lVOEQT"]}, {"language": "eMgCnQDJ", "message": ["OoMOVJT0", "y7bJsIKl", "tjgTxnJZ"]}, {"language": "PDd64QAJ", "message": ["Fj2XzcI4", "rOgdsSzR", "SKcDIgFD"]}], "isCustomRegex": true, "letterCase": "RoEV3Xby", "maxLength": 80, "maxRepeatingAlphaNum": 96, "maxRepeatingSpecialCharacter": 21, "minCharType": 35, "minLength": 28, "regex": "0BpRJQBM", "specialCharacterLocation": "WeWFzhxP", "specialCharacters": ["1xpdsUng", "l140HdjK", "WMycoOgH"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    '1RpXyy5T' \
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
    '{"ageRestriction": 22, "enable": true}' \
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
    '{"ageRestriction": 14}' \
    '3ksrkAgn' \
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
    '{"ban": "ynlQrqDY", "comment": "ZapzUEpa", "endDate": "BrOd0UjO", "reason": "tqCtnzYI", "skipNotif": false, "userIds": ["Y2U0lAJ2", "9Ct03QCW", "G9QEB4kW"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "aZUkRq5J", "userId": "XHS2jUiL"}, {"banId": "UkaWxqtV", "userId": "xOA90SCk"}, {"banId": "FmCdA4HP", "userId": "SiDF5WEM"}]}' \
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
    '{"audiences": ["BfUZZjOm", "czCFOZ72", "gg65Bs7U"], "baseUri": "l84w7Hgz", "clientId": "LAoTc3A7", "clientName": "WRwYZfXC", "clientPermissions": [{"action": 27, "resource": "ZfhlNNa6", "schedAction": 6, "schedCron": "a6iK8I2T", "schedRange": ["JL87yWTR", "aqzI9tD3", "3ZJ4Pcxt"]}, {"action": 51, "resource": "ehobFFvX", "schedAction": 65, "schedCron": "yw2Xsh8T", "schedRange": ["ZArxMrgx", "so0cApkP", "Z4Nh9XeW"]}, {"action": 1, "resource": "oSjgx1TO", "schedAction": 8, "schedCron": "vXy2xh2g", "schedRange": ["RQbVChxy", "TRoF85uJ", "lIIPnNaX"]}], "clientPlatform": "qFNm4zVG", "deletable": true, "description": "PHXWnbIl", "namespace": "g4loVVu3", "oauthAccessTokenExpiration": 71, "oauthAccessTokenExpirationTimeUnit": "aLFO4U85", "oauthClientType": "MhFmC5Rg", "oauthRefreshTokenExpiration": 12, "oauthRefreshTokenExpirationTimeUnit": "TBXheowi", "redirectUri": "WB3zTJYs", "scopes": ["L3vcsG08", "KIrZBCOm", "4Il7KN2B"], "secret": "4O6krTw8", "twoFactorEnabled": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    'a33TWCOY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'c9myphxc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["Tai0S6JG", "zFYhlIW5", "WyXO8eli"], "baseUri": "VQLRdx0z", "clientName": "Jc0wqYfE", "clientPermissions": [{"action": 81, "resource": "EUuhwJk2", "schedAction": 23, "schedCron": "D8txYOeX", "schedRange": ["GXoPqdpX", "P4XJAlon", "LY6FS6pA"]}, {"action": 48, "resource": "Wgns7NjN", "schedAction": 42, "schedCron": "ozyzFynd", "schedRange": ["mMeht1mP", "FjA9Xff4", "8QG43c4F"]}, {"action": 98, "resource": "3AGS9iMK", "schedAction": 70, "schedCron": "BFEdOQK2", "schedRange": ["fhRAHCvU", "OJXCGRFQ", "IoWarjV2"]}], "clientPlatform": "wylPjo0E", "deletable": true, "description": "PStUSiRu", "namespace": "ZVLmZgfs", "oauthAccessTokenExpiration": 6, "oauthAccessTokenExpirationTimeUnit": "YN88Bky6", "oauthRefreshTokenExpiration": 57, "oauthRefreshTokenExpirationTimeUnit": "74I34rEW", "redirectUri": "eTyH2pvw", "scopes": ["bfmbU6gs", "FPqSTQ9d", "R6XVJWaX"], "twoFactorEnabled": true}' \
    '1rdkkomG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 28, "resource": "lUbpLzLp"}, {"action": 13, "resource": "ErWkURM3"}, {"action": 38, "resource": "JnD5YvtY"}]}' \
    'IdPVlLD8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 71, "resource": "7SF64jXh"}, {"action": 65, "resource": "DfAndKLj"}, {"action": 94, "resource": "cUN8tu3G"}]}' \
    'Xh3DzhZh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '27' \
    '3i2HW1Nw' \
    'zURdKhFI' \
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
    'MSwI74en' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "dXcngp0c", "AWSCognitoRegion": "PV695XjG", "AWSCognitoUserPool": "2V6ZsYv6", "AllowedClients": ["u3zUqaWU", "XZlnVmFq", "YogG5Qz2"], "AppId": "TEzY88Dr", "AuthorizationEndpoint": "Xikyr6v3", "ClientId": "SHfrbk4Y", "Environment": "KBcjRXCX", "FederationMetadataURL": "ubFXdAxD", "GenericOauthFlow": true, "IsActive": false, "Issuer": "X6CnUTFz", "JWKSEndpoint": "de3dt9b0", "KeyID": "NYsbKd3Y", "NetflixCertificates": {"encryptedPrivateKey": "nErY5RRm", "encryptedPrivateKeyName": "HJF1on8m", "publicCertificate": "2qbDj3yq", "publicCertificateName": "jNoIM4Zy", "rootCertificate": "EDHbzYeK", "rootCertificateName": "NxAxQQOh"}, "OrganizationId": "3LMnZVvA", "PlatformName": "bVJkZzLY", "RedirectUri": "bj4jbXmf", "RegisteredDomains": [{"affectedClientIDs": ["mlnY5Lxg", "JVUU9oG9", "P4DpyaQv"], "domain": "5Ib9MLEo", "namespaces": ["RmgnrHrR", "TvTQdev4", "P7yrd7vZ"], "roleId": "TYenwaDR"}, {"affectedClientIDs": ["1E7YCiqv", "qb9RXc3o", "rn5yJpdp"], "domain": "LkrFN5kC", "namespaces": ["xeV0cfbf", "iXvXXNZU", "wBNH7yV0"], "roleId": "UmkwLWFj"}, {"affectedClientIDs": ["8Pd5OZQ0", "xWG9XMvZ", "3m5PRLWl"], "domain": "lIlWGob3", "namespaces": ["aQBMe22c", "BvnviiQB", "MrgWKYjU"], "roleId": "i7sYyBQ9"}], "Secret": "bD2bFvVZ", "TeamID": "JHsa18Lm", "TokenAuthenticationType": "HFLGW210", "TokenClaimsMapping": {"08Ojqv0s": "DDDgEWWv", "EViKugET": "tVWUKRM9", "Qj99XQgQ": "hioBoHF3"}, "TokenEndpoint": "oCMENaU3", "scopes": ["2IGZ2zm4", "0XKEp4MG", "tNlEKH1z"]}' \
    'y4bXWLTO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    'Ez1FDynv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "VYyFRyR3", "AWSCognitoRegion": "vLBZaM0o", "AWSCognitoUserPool": "75hnNZsW", "AllowedClients": ["KCfgtV2J", "81U1NV2v", "1qT0ECGe"], "AppId": "oDOvnAW6", "AuthorizationEndpoint": "zJk68aL5", "ClientId": "1OGfNVqY", "Environment": "KZxacXPg", "FederationMetadataURL": "H6hlXHLb", "GenericOauthFlow": false, "IsActive": true, "Issuer": "BwxctASN", "JWKSEndpoint": "ga6wwKAe", "KeyID": "jUWeEso4", "NetflixCertificates": {"encryptedPrivateKey": "C5m7xarp", "encryptedPrivateKeyName": "MobLPr0w", "publicCertificate": "NVGpo33w", "publicCertificateName": "Dj2Gn8j2", "rootCertificate": "KFV4yJzV", "rootCertificateName": "DmbhPAHt"}, "OrganizationId": "JNZU40J0", "PlatformName": "EePOdted", "RedirectUri": "he6UTD69", "RegisteredDomains": [{"affectedClientIDs": ["VBHZVIID", "p61mgTo0", "SK1qzHwL"], "domain": "bUlyceEy", "namespaces": ["Pn2Krtlh", "62rhKfx5", "nxHbfROw"], "roleId": "ylbVs9sq"}, {"affectedClientIDs": ["GvrJCUsb", "6pr5OYIE", "ZeEhWhby"], "domain": "vTIHmZKI", "namespaces": ["DK5e98Bv", "1hWKTb3h", "S6FyjaEV"], "roleId": "ClFIp2kn"}, {"affectedClientIDs": ["B2HWz8d0", "hzjpZwQC", "xFq7KrGY"], "domain": "NbHqTjLG", "namespaces": ["m0zRUeUn", "qVzHAMDu", "rAAIeQTy"], "roleId": "rVEvWxJj"}], "Secret": "pwS4sqjG", "TeamID": "b2OWVBdE", "TokenAuthenticationType": "N5X1ILiV", "TokenClaimsMapping": {"lqQZ5gu2": "yIwvtkCb", "bkybfscn": "wdYPqdi9", "t5k0tLut": "rTY2Qyju"}, "TokenEndpoint": "VwQOuB8d", "scopes": ["DjLuKINI", "TEtsJN0q", "2NEOs7X5"]}' \
    'WUaS9geF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["FIK8EyNw", "G7CwxM9f", "3TmjbRo9"], "assignedNamespaces": ["hOss9bVP", "7qVuVYPx", "y8tgXk5w"], "domain": "qXR7S8D6", "roleId": "Axay6wI6"}' \
    'Fzhy8Sl2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "nck9cFJQ"}' \
    'kK31dP7X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    'xUWfFz0b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "SPZVHGTW", "apiKey": "QmdBiFJg", "appId": "g0WYj8fz", "federationMetadataUrl": "ZihQJQ0C", "isActive": false, "redirectUri": "6dLV4ZRW", "secret": "LVYPAm2I", "ssoUrl": "r8icgJ9j"}' \
    '9AYcg1mU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'S2Nm3chE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "MV7SwpQk", "apiKey": "ungDami0", "appId": "DYJVam3f", "federationMetadataUrl": "uWrYPNBJ", "isActive": false, "redirectUri": "nsgPrKDr", "secret": "QkNOe0Vz", "ssoUrl": "Z9v8HtIk"}' \
    '3W0kCTYT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'T6PliMXx' \
    'rN0CSiOM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'ImNLvm7U' \
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
    '{"userIds": ["inJtpF6e", "JZON9j0y", "pk4r3ZGw"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["hMRIeDVp", "OC0qRcGY", "YUy5DkpZ"], "isAdmin": false, "roles": ["WrdPVytj", "XpAy0umZ", "L9imlN8s"]}' \
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
    '{"listEmailAddressRequest": ["SFl04vYh", "xTeO8xyJ", "gGVhXSa6"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'AdminGetBulkUserByEmailAddressV3' test.out

#- 149 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'QStwhCaE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'AdminGetUserByUserIdV3' test.out

#- 150 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "OOnvHIMF", "country": "E4p4chqX", "dateOfBirth": "xvJFyvMM", "displayName": "GfaasG3x", "languageTag": "fqAaBdDZ", "userName": "W9ZMPW5x"}' \
    '8SanDNzF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AdminUpdateUserV3' test.out

#- 151 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'upP50VWj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'AdminGetUserBanV3' test.out

#- 152 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "L3gCAXOA", "comment": "eg1bDSzi", "endDate": "KcqaaybU", "reason": "kSwhVNXN", "skipNotif": true}' \
    'LPW3yP67' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'AdminBanUserV3' test.out

#- 153 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": false, "skipNotif": true}' \
    'xM0ZJgMt' \
    '9Rcujf6e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AdminUpdateUserBanV3' test.out

#- 154 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "WL9UbU6b", "emailAddress": "Z54W1nVP", "languageTag": "l1f9GZEB"}' \
    'yD2EVbXd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'AdminSendVerificationCodeV3' test.out

#- 155 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "kbrug39q", "ContactType": "LaYYFIHx", "LanguageTag": "mAUvYquX", "validateOnly": false}' \
    'sqxokFAZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminVerifyAccountV3' test.out

#- 156 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'NrQTRyYX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'GetUserVerificationCode' test.out

#- 157 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'sErfjFQ6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'AdminGetUserDeletionStatusV3' test.out

#- 158 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"enabled": true}' \
    'XwKY5ke9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminUpdateUserDeletionStatusV3' test.out

#- 159 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "Wr3Eb4cy", "country": "M6pgtpB4", "dateOfBirth": "soPdAmI1", "displayName": "fOdEiSkR", "emailAddress": "OTGWhYSz", "password": "KoQ1B4YY", "validateOnly": false}' \
    'paoZcaif' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminUpgradeHeadlessAccountV3' test.out

#- 160 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    '6JpAIHVg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminDeleteUserInformationV3' test.out

#- 161 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'i2QQyHtJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminGetUserLoginHistoriesV3' test.out

#- 162 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "OBtNVD37", "newPassword": "Ys5DXGLy", "oldPassword": "yBCspBoz"}' \
    '19iOi76a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminResetPasswordV3' test.out

#- 163 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 61, "Resource": "Mt1EYYnw", "SchedAction": 29, "SchedCron": "RDXvMZNB", "SchedRange": ["tsOUzI4e", "HgS89VLg", "6xXewObu"]}, {"Action": 46, "Resource": "N1X33yEs", "SchedAction": 60, "SchedCron": "xz4wAA7M", "SchedRange": ["qL6qzwA0", "bbALwftR", "11PLFmZy"]}, {"Action": 1, "Resource": "NTsywpOV", "SchedAction": 39, "SchedCron": "VC1DTBC6", "SchedRange": ["u08aOF7d", "fS1iqhX6", "L3KwTUJe"]}]}' \
    'ZlSyhvgJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AdminUpdateUserPermissionV3' test.out

#- 164 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 58, "Resource": "ZWL4uEdt", "SchedAction": 63, "SchedCron": "ENoKe6CD", "SchedRange": ["kX7fnDDA", "j28DbdFM", "H5RAxeco"]}, {"Action": 56, "Resource": "c7pcuZwA", "SchedAction": 54, "SchedCron": "16btUamc", "SchedRange": ["Na3yjDky", "b8DnkZlk", "8zknf0yP"]}, {"Action": 72, "Resource": "HrBIpKWl", "SchedAction": 75, "SchedCron": "PHp09f6y", "SchedRange": ["BNGCfadF", "CPY8YmkS", "6RdNBbzG"]}]}' \
    'GUKkqIXP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminAddUserPermissionsV3' test.out

#- 165 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 86, "Resource": "Y654DGgR"}, {"Action": 41, "Resource": "dX2ohYwW"}, {"Action": 21, "Resource": "I7rTvRmt"}]' \
    'Td1tnP1z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminDeleteUserPermissionBulkV3' test.out

#- 166 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '17' \
    'WbsytCXJ' \
    'Z68BfpoD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionV3' test.out

#- 167 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'iR7ZPiD0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminGetUserPlatformAccountsV3' test.out

#- 168 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'jgIJUZmy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminGetListJusticePlatformAccounts' test.out

#- 169 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    'hYdKHSLQ' \
    'deMacWxb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminGetUserMapping' test.out

#- 170 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    'I7BmKome' \
    '5yRen4qN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminCreateJusticeUser' test.out

#- 171 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "Yo6CC7q2", "platformUserId": "3SncXITZ"}' \
    'O4Bnt2s9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminLinkPlatformAccount' test.out

#- 172 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "dsTYsqYM"}' \
    'g8L7caWY' \
    'gbJRF5JF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminPlatformUnlinkV3' test.out

#- 173 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'psRw1l7y' \
    'mkFmVcYu' \
    'JCUqKYvQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformLinkV3' test.out

#- 174 AdminGetThirdPartyPlatformTokenLinkStatusV3
$PYTHON -m $MODULE 'iam-admin-get-third-party-platform-token-link-status-v3' \
    'u4ltvWg4' \
    'P4JcBO4G' \
    'ob7n4ROK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 175 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["z4ZfITCV", "DTb0LJAE", "3YQgsJZs"]' \
    'aKu1emV7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminDeleteUserRolesV3' test.out

#- 176 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "IPXyfVTR", "roleId": "URRi36Oe"}, {"namespace": "rQ3liUpI", "roleId": "PYhTTg76"}, {"namespace": "RQ79785I", "roleId": "gL4edvx7"}]' \
    'cMF9BtTp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminSaveUserRoleV3' test.out

#- 177 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    'YpdccWPK' \
    'EPwunO0m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminAddUserRoleV3' test.out

#- 178 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'am73LcJS' \
    '8aI5Eg3a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminDeleteUserRoleV3' test.out

#- 179 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": false, "reason": "ncTsdbMu"}' \
    'nOMNGvhq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminUpdateUserStatusV3' test.out

#- 180 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'xVZYMiSj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 181 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "q9KxapZd"}' \
    'lwjXvqs9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminUpdateClientSecretV3' test.out

#- 182 AdminGetRolesV3
$PYTHON -m $MODULE 'iam-admin-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminGetRolesV3' test.out

#- 183 AdminCreateRoleV3
$PYTHON -m $MODULE 'iam-admin-create-role-v3' \
    '{"adminRole": true, "deletable": false, "isWildcard": true, "managers": [{"displayName": "7r8vsyrZ", "namespace": "M6oJrPEG", "userId": "3BrpaSi0"}, {"displayName": "ONfObMcN", "namespace": "jfSr4cjh", "userId": "rx7BH2Pg"}, {"displayName": "cIbAo9VC", "namespace": "Bg8dNViC", "userId": "foPhO11h"}], "members": [{"displayName": "CbpfTm7j", "namespace": "yj9Qgm85", "userId": "E9beEUBc"}, {"displayName": "ELaNe5LG", "namespace": "9BaxK8ZO", "userId": "hcfkiQse"}, {"displayName": "LMGaVWC8", "namespace": "Z6ZEHI6X", "userId": "aaQUnAKB"}], "permissions": [{"action": 66, "resource": "fyejYGHy", "schedAction": 94, "schedCron": "guBxm4PF", "schedRange": ["upJFpLfk", "nsyh1YoC", "TDnhAGoS"]}, {"action": 18, "resource": "ZeSccE3U", "schedAction": 84, "schedCron": "aTCIbwxa", "schedRange": ["gNJCiI5W", "HuU2dAYV", "wL2TUFLe"]}, {"action": 84, "resource": "3Me114KW", "schedAction": 1, "schedCron": "vK3lZj4D", "schedRange": ["cYmCyU3u", "f0l9sCfI", "mKQgkV8o"]}], "roleName": "ZbhUpXg8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminCreateRoleV3' test.out

#- 184 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'gcDY3Sjk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminGetRoleV3' test.out

#- 185 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'CDvEw1Hf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminDeleteRoleV3' test.out

#- 186 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": false, "isWildcard": false, "roleName": "2kzpZ3JA"}' \
    'bruWmEq0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminUpdateRoleV3' test.out

#- 187 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    'nxw1WOlv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminGetRoleAdminStatusV3' test.out

#- 188 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'HQNJkw9Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateAdminRoleStatusV3' test.out

#- 189 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'paJKbKmH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminRemoveRoleAdminV3' test.out

#- 190 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'Ls2AugRm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminGetRoleManagersV3' test.out

#- 191 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "3cEBsMUi", "namespace": "0LJIocwv", "userId": "S0TKNuyv"}, {"displayName": "pzKIvO63", "namespace": "YK7li4WY", "userId": "Ciq8gj8w"}, {"displayName": "h5EEJsju", "namespace": "sc00ojsC", "userId": "UfGfpJB8"}]}' \
    'wvXUoTTy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminAddRoleManagersV3' test.out

#- 192 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "PamHmRwz", "namespace": "EvbYiEA7", "userId": "e7wvwOpY"}, {"displayName": "QulzQb3F", "namespace": "M8vg8zHX", "userId": "VzqsNiNL"}, {"displayName": "BbaRlCVh", "namespace": "fAjfKGpe", "userId": "naNNrzQX"}]}' \
    'HdGzSFgm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminRemoveRoleManagersV3' test.out

#- 193 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'qypCmbDw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminGetRoleMembersV3' test.out

#- 194 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "FqVqfpIv", "namespace": "Fzw9ArPw", "userId": "H0qzPoMt"}, {"displayName": "TtbhLLE5", "namespace": "mh2R6065", "userId": "KHGzPMuz"}, {"displayName": "nrzavGXq", "namespace": "UKPR5qqT", "userId": "KCQp0dCm"}]}' \
    'ZJpIUZLw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminAddRoleMembersV3' test.out

#- 195 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "xGxQTuxI", "namespace": "FiJou1h5", "userId": "35W2kwGa"}, {"displayName": "31hEpDxD", "namespace": "VwN3o4nx", "userId": "R6pDdfMz"}, {"displayName": "TcS60U3n", "namespace": "05yBsrTQ", "userId": "PfS0UDCu"}]}' \
    'vPMBoU7z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminRemoveRoleMembersV3' test.out

#- 196 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 61, "resource": "X6CiIXOJ", "schedAction": 83, "schedCron": "Tu7QIsPk", "schedRange": ["cqUGJzIS", "jMb3stuq", "fDoElAhA"]}, {"action": 16, "resource": "czgzFCwF", "schedAction": 67, "schedCron": "MWNpRCSU", "schedRange": ["fG7wjWQZ", "ZGqyXPFD", "3gGqTVMs"]}, {"action": 91, "resource": "MCymGhD3", "schedAction": 60, "schedCron": "PBwl9EYu", "schedRange": ["HFPA1M6J", "Jjd0oQ0Z", "iJ4bdfqC"]}]}' \
    'rWp7lTsJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminUpdateRolePermissionsV3' test.out

#- 197 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 80, "resource": "zDpO6sGb", "schedAction": 27, "schedCron": "WNdYOylZ", "schedRange": ["SSJM4PbC", "FBODSUy4", "PwlEmcJA"]}, {"action": 53, "resource": "cR6voTKj", "schedAction": 66, "schedCron": "VpkCuh99", "schedRange": ["OI5YIyep", "FlK9Ercb", "aKN9rjfN"]}, {"action": 88, "resource": "dzTDGZYK", "schedAction": 75, "schedCron": "VUUQIuyM", "schedRange": ["5UKvlZ4t", "7tQ7POiU", "1yhrrpx0"]}]}' \
    '7Y82BvQM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminAddRolePermissionsV3' test.out

#- 198 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["TRQe5SkZ", "xUxHoCID", "khWB7WpK"]' \
    'gpFygNNM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'AdminDeleteRolePermissionsV3' test.out

#- 199 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '13' \
    'OSwXJsRg' \
    'JbCFAdnI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'AdminDeleteRolePermissionV3' test.out

#- 200 AdminGetMyUserV3
$PYTHON -m $MODULE 'iam-admin-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'AdminGetMyUserV3' test.out

#- 201 UserAuthenticationV3
$PYTHON -m $MODULE 'iam-user-authentication-v3' \
    'ZJ987q5z' \
    'A8nFH5lj' \
    'sYXL7esZ' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 201 'UserAuthenticationV3' test.out

#- 202 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    'c1Lfv78d' \
    '7YQf4g4w' \
    'STtUPJ9S' \
    'EpPanL1E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'AuthenticationWithPlatformLinkV3' test.out

#- 203 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    'MS7HZthj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 204 GetCountryLocationV3
$PYTHON -m $MODULE 'iam-get-country-location-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'GetCountryLocationV3' test.out

#- 205 Logout
$PYTHON -m $MODULE 'iam-logout' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'Logout' test.out

#- 206 RequestGameTokenCodeResponseV3
$PYTHON -m $MODULE 'iam-request-game-token-code-response-v3' \
    'DImEM1Nh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'RequestGameTokenCodeResponseV3' test.out

#- 207 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'tzQfjxjD' \
    'PLHgnmNT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 208 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    'UfnDWnCP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'RevokeUserV3' test.out

#- 209 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    '7PIkgy09' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 209 'AuthorizeV3' test.out

#- 210 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'dIGrDXfw' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 210 'TokenIntrospectionV3' test.out

#- 211 GetJWKSV3
$PYTHON -m $MODULE 'iam-get-jwksv3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'GetJWKSV3' test.out

#- 212 SendMFAAuthenticationCode
$PYTHON -m $MODULE 'iam-send-mfa-authentication-code' \
    'eYYlmnJd' \
    '0H07dtlc' \
    '8dN2UC6T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'SendMFAAuthenticationCode' test.out

#- 213 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    'Z6LQHxa7' \
    'CdoCpD4X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'Change2faMethod' test.out

#- 214 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    'FA6KEnvw' \
    'UvHLeUcd' \
    'YeKEoG9O' \
    'true' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'Verify2faCode' test.out

#- 215 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'NbasZA5T' \
    'pZp9UyBG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 216 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'Y8lsS4Bs' \
    'dEWlB4MT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'AuthCodeRequestV3' test.out

#- 217 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'ZzpdG7bt' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 217 'PlatformTokenGrantV3' test.out

#- 218 GetRevocationListV3
$PYTHON -m $MODULE 'iam-get-revocation-list-v3' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 218 'GetRevocationListV3' test.out

#- 219 TokenRevocationV3
$PYTHON -m $MODULE 'iam-token-revocation-v3' \
    'DxtoFhuY' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 219 'TokenRevocationV3' test.out

#- 220 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'password' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 220 'TokenGrantV3' test.out

#- 221 VerifyTokenV3
$PYTHON -m $MODULE 'iam-verify-token-v3' \
    'YPpiKfQ5' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 221 'VerifyTokenV3' test.out

#- 222 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'ZRiJVrX1' \
    'zFe8haiE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'PlatformAuthenticationV3' test.out

#- 223 PublicGetInputValidations
$PYTHON -m $MODULE 'iam-public-get-input-validations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'PublicGetInputValidations' test.out

#- 224 PublicGetCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction-v3' \
    'XvvpTDRm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'PublicGetCountryAgeRestrictionV3' test.out

#- 225 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-public-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 226 RetrieveActiveOIDCClientsPublicV3
$PYTHON -m $MODULE 'iam-retrieve-active-oidc-clients-public-v3' \
    'vr0wPFkP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 227 PublicListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["UHHlYK2v", "ZWcbavHr", "bnrKyVU1"]}' \
    'vbaYli48' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 228 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    'izFfLfsa' \
    'QYtB6MGf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'PublicGetUserByPlatformUserIDV3' test.out

#- 229 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    'HK3c8Djc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'PublicGetAsyncStatus' test.out

#- 230 PublicSearchUserV3
$PYTHON -m $MODULE 'iam-public-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'PublicSearchUserV3' test.out

#- 231 PublicCreateUserV3
$PYTHON -m $MODULE 'iam-public-create-user-v3' \
    '{"PasswordMD5Sum": "gDrKtED2", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "rC4uSTeM", "policyId": "KOlA0DmI", "policyVersionId": "CCIx6paE"}, {"isAccepted": true, "localizedPolicyVersionId": "nnEJBEKr", "policyId": "IJlt7GhA", "policyVersionId": "xsU7wxsS"}, {"isAccepted": false, "localizedPolicyVersionId": "5mjLg1xE", "policyId": "LrkKbBVh", "policyVersionId": "pPyelXEK"}], "authType": "UHJlZeia", "code": "8zV1soKm", "country": "ayOBP5MY", "dateOfBirth": "s8o5FYXg", "displayName": "rkUWmDXj", "emailAddress": "ERtOssf3", "password": "dCUhTt7q", "reachMinimumAge": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'PublicCreateUserV3' test.out

#- 232 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'maxJO0gD' \
    '2UdttV1q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'CheckUserAvailability' test.out

#- 233 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["IciafgyT", "vuTA3RnX", "gjvgw40E"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'PublicBulkGetUsers' test.out

#- 234 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "2CAbFkU0", "languageTag": "LnBYKrHg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'PublicSendRegistrationCode' test.out

#- 235 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "ZdRWExTu", "emailAddress": "gijhPGPj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'PublicVerifyRegistrationCode' test.out

#- 236 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "6oCUXfcC", "languageTag": "yZxV7smY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'PublicForgotPasswordV3' test.out

#- 237 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    'N7Zk3a87' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'GetAdminInvitationV3' test.out

#- 238 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "08NKLW6Q", "policyId": "JV2k4Unz", "policyVersionId": "bXTAt0CC"}, {"isAccepted": true, "localizedPolicyVersionId": "eczErrWF", "policyId": "5elFbEQc", "policyVersionId": "KSPV7AMz"}, {"isAccepted": true, "localizedPolicyVersionId": "JP1nZ61S", "policyId": "5dZmkQxM", "policyVersionId": "pjoQaZoe"}], "authType": "EMAILPASSWD", "country": "HJK5yPKV", "dateOfBirth": "JZ3u5LYm", "displayName": "G37sTgqm", "password": "2gzT5e5u", "reachMinimumAge": false}' \
    'q3bMntqx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'CreateUserFromInvitationV3' test.out

#- 239 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "Vw56s8nC", "country": "wpm4yJoT", "dateOfBirth": "6kv5uznV", "displayName": "IKwrlQWj", "languageTag": "SGMVAIR1", "userName": "N0XNaosQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'UpdateUserV3' test.out

#- 240 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "qlPx5YAC", "country": "u8RoAN3t", "dateOfBirth": "77mvX9bv", "displayName": "cXxwqAc6", "languageTag": "LSI73J0E", "userName": "HGtFuakJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'PublicPartialUpdateUserV3' test.out

#- 241 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "j1gcmxXy", "emailAddress": "9wVAIJwE", "languageTag": "WEyybeuN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'PublicSendVerificationCodeV3' test.out

#- 242 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "xX0aMgnD", "contactType": "hXD57cvu", "languageTag": "1PgQ5ZkM", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'PublicUserVerificationV3' test.out

#- 243 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "G52qPggD", "country": "zZQRXZ6r", "dateOfBirth": "5FloVQmu", "displayName": "SFUwrbEs", "emailAddress": "yEulpVtg", "password": "6VIvnYwO", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'PublicUpgradeHeadlessAccountV3' test.out

#- 244 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "TgzroA1M", "password": "1447yUEc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'PublicVerifyHeadlessAccountV3' test.out

#- 245 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "leeJ1eTQ", "newPassword": "Zb7j1l5n", "oldPassword": "30zZUu4s"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'PublicUpdatePasswordV3' test.out

#- 246 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'wHNdiH61' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'PublicCreateJusticeUser' test.out

#- 247 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'QONPPYaz' \
    'hGBZIr58' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'PublicPlatformLinkV3' test.out

#- 248 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "PvqoUY0R"}' \
    '5ThDPqhc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'PublicPlatformUnlinkV3' test.out

#- 249 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'FRodgdod' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'PublicPlatformUnlinkAllV3' test.out

#- 250 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    '2ovIFCs2' \
    '0Ce0bnV1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'PublicForcePlatformLinkV3' test.out

#- 251 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'XVJPqVyD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'PublicWebLinkPlatform' test.out

#- 252 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'lZqeCHj6' \
    'mcc8PSM8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'PublicWebLinkPlatformEstablish' test.out

#- 253 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "yIU3ML7K", "emailAddress": "Jat7Xor2", "newPassword": "Xsqr5Inh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'ResetPasswordV3' test.out

#- 254 PublicGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-public-get-user-by-user-id-v3' \
    'ZwvSNSQC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'PublicGetUserByUserIdV3' test.out

#- 255 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    'jfiHXf1H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'PublicGetUserBanHistoryV3' test.out

#- 256 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'Ab5pzl4H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 257 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    'GnvecwF7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'PublicGetUserInformationV3' test.out

#- 258 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'sRY5SEey' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'PublicGetUserLoginHistoriesV3' test.out

#- 259 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'Vhqdnuzl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'PublicGetUserPlatformAccountsV3' test.out

#- 260 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    'C7jzshf8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'PublicListJusticePlatformAccountsV3' test.out

#- 261 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "ykbRbm05", "platformUserId": "eSuFD2TR"}' \
    'DSWsEj5k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'PublicLinkPlatformAccount' test.out

#- 262 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["JqHEiDIm", "5WdRHgUS", "fYNpF7TE"], "requestId": "0ZvAWx1L"}' \
    'mYwr2UKW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'PublicForceLinkPlatformWithProgression' test.out

#- 263 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    'MJrD3z9G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'PublicGetPublisherUserV3' test.out

#- 264 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'y0CMaKYh' \
    'rtvxhwe3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 265 PublicGetRolesV3
$PYTHON -m $MODULE 'iam-public-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'PublicGetRolesV3' test.out

#- 266 PublicGetRoleV3
$PYTHON -m $MODULE 'iam-public-get-role-v3' \
    'HNZSQ0I4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'PublicGetRoleV3' test.out

#- 267 PublicGetMyUserV3
$PYTHON -m $MODULE 'iam-public-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'PublicGetMyUserV3' test.out

#- 268 PublicSendVerificationLinkV3
$PYTHON -m $MODULE 'iam-public-send-verification-link-v3' \
    '{"languageTag": "I138MOz5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'PublicSendVerificationLinkV3' test.out

#- 269 PublicVerifyUserByLinkV3
$PYTHON -m $MODULE 'iam-public-verify-user-by-link-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'PublicVerifyUserByLinkV3' test.out

#- 270 PlatformAuthenticateSAMLV3Handler
$PYTHON -m $MODULE 'iam-platform-authenticate-samlv3-handler' \
    'EMeE4uMV' \
    'q8k9wdVS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'PlatformAuthenticateSAMLV3Handler' test.out

#- 271 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    '3mO3GXHN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'LoginSSOClient' test.out

#- 272 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    '3UMNw0Tl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'LogoutSSOClient' test.out

#- 273 RequestGameTokenResponseV3
$PYTHON -m $MODULE 'iam-request-game-token-response-v3' \
    '54KEz22T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'RequestGameTokenResponseV3' test.out

#- 274 AdminGetDevicesByUserV4
$PYTHON -m $MODULE 'iam-admin-get-devices-by-user-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'AdminGetDevicesByUserV4' test.out

#- 275 AdminGetBannedDevicesV4
$PYTHON -m $MODULE 'iam-admin-get-banned-devices-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'AdminGetBannedDevicesV4' test.out

#- 276 AdminGetUserDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-user-device-bans-v4' \
    'SkiQKfp8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'AdminGetUserDeviceBansV4' test.out

#- 277 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "hvaxMGhV", "deviceId": "TZQgiQpU", "deviceType": "UwrjHEq3", "enabled": true, "endDate": "ekM1IIS3", "ext": {"uwahZvP6": {}, "ZDxmIV8S": {}, "nQtWDg8R": {}}, "reason": "JAinZGnc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'AdminBanDeviceV4' test.out

#- 278 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    'rB7FlcxO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'AdminGetDeviceBanV4' test.out

#- 279 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": false}' \
    'Amsunzwj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'AdminUpdateDeviceBanV4' test.out

#- 280 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    '6bvrpBie' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'AdminGenerateReportV4' test.out

#- 281 AdminGetDeviceTypesV4
$PYTHON -m $MODULE 'iam-admin-get-device-types-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'AdminGetDeviceTypesV4' test.out

#- 282 AdminGetDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-device-bans-v4' \
    'PyHcDADw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'AdminGetDeviceBansV4' test.out

#- 283 AdminDecryptDeviceV4
$PYTHON -m $MODULE 'iam-admin-decrypt-device-v4' \
    'x8WD7yVs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'AdminDecryptDeviceV4' test.out

#- 284 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    'WIX32keY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'AdminUnbanDeviceV4' test.out

#- 285 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    'oCgZ0QHi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'AdminGetUsersByDeviceV4' test.out

#- 286 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"count": 56}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'AdminCreateTestUsersV4' test.out

#- 287 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["JcyFT6au", "nioHMSQL", "2ix575aV"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'AdminBulkCheckValidUserIDV4' test.out

#- 288 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "KO50uReq", "country": "IGQvSLHs", "dateOfBirth": "ggciEUtW", "displayName": "IgmmHmSc", "languageTag": "fmiF6HJX", "userName": "0kaR8oww"}' \
    'k9Zspm5H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'AdminUpdateUserV4' test.out

#- 289 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "QjaWBbaH", "emailAddress": "J3KBcAEU"}' \
    '54raa2YB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'AdminUpdateUserEmailAddressV4' test.out

#- 290 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    'kWuCVo5T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'AdminDisableUserMFAV4' test.out

#- 291 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'HnIDqxLd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'AdminListUserRolesV4' test.out

#- 292 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["Aj8F5scr", "Ys8Iv243", "E1bbFHGh"], "roleId": "c98qYhOj"}' \
    'wDra7dTJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'AdminUpdateUserRoleV4' test.out

#- 293 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["lmxVnvsG", "e5h8sLCt", "1eVKOeCU"], "roleId": "vUYUbVw1"}' \
    'koNea0Ef' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'AdminAddUserRoleV4' test.out

#- 294 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["sejWNdwC", "q8pVd34u", "k97B5B7e"], "roleId": "DAws0GP4"}' \
    'ae8yyoJP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'AdminRemoveUserRoleV4' test.out

#- 295 AdminGetRolesV4
$PYTHON -m $MODULE 'iam-admin-get-roles-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'AdminGetRolesV4' test.out

#- 296 AdminCreateRoleV4
$PYTHON -m $MODULE 'iam-admin-create-role-v4' \
    '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "04120vIY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'AdminCreateRoleV4' test.out

#- 297 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'daTYeGZ5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'AdminGetRoleV4' test.out

#- 298 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'te0gQeF0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'AdminDeleteRoleV4' test.out

#- 299 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "OpMPW4ZQ"}' \
    'UkW7b99O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'AdminUpdateRoleV4' test.out

#- 300 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 50, "resource": "3VqLrB5F", "schedAction": 92, "schedCron": "BXEIFrzQ", "schedRange": ["PceHoFhZ", "yJ2894YS", "ikfOFNXL"]}, {"action": 43, "resource": "cldQSKCb", "schedAction": 36, "schedCron": "R5yaPAnU", "schedRange": ["uIC8vaaD", "PGIrEH21", "ChRfXFU1"]}, {"action": 69, "resource": "RZJo1Oft", "schedAction": 81, "schedCron": "LLjsCOl7", "schedRange": ["vyETvX9Y", "Uu6dlERZ", "JDssKnWA"]}]}' \
    'earEKYtn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'AdminUpdateRolePermissionsV4' test.out

#- 301 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 35, "resource": "mhipbRe6", "schedAction": 8, "schedCron": "JTVeqwGs", "schedRange": ["eh4HLluD", "k5bgqiCI", "ZMDHFhBp"]}, {"action": 22, "resource": "ng7tOwJE", "schedAction": 45, "schedCron": "qf9nYAtb", "schedRange": ["BfAzuzXU", "xKJhbXqC", "UQAJcQj7"]}, {"action": 34, "resource": "V6Z63BZ4", "schedAction": 21, "schedCron": "FtyoSoLw", "schedRange": ["pEuqldBp", "lbh7282s", "mVEm797z"]}]}' \
    'E2kPyxFH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'AdminAddRolePermissionsV4' test.out

#- 302 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["n0f6cp9M", "VYG4EFJD", "edRYaI1r"]' \
    'aP2LV43K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'AdminDeleteRolePermissionsV4' test.out

#- 303 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'elVjh3ir' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'AdminListAssignedUsersV4' test.out

#- 304 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["cxFsUz8o", "2z3bEGu1", "Z7q00jYl"], "namespace": "fyFUXpPe", "userId": "iehhUzmn"}' \
    'aOvQUOKG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'AdminAssignUserToRoleV4' test.out

#- 305 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "tIyrUB8q", "userId": "6oFkxqlF"}' \
    'GyOd3uSo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'AdminRevokeUserFromRoleV4' test.out

#- 306 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "sNLji0bR", "country": "wPux9OUU", "dateOfBirth": "1UMY2JF5", "displayName": "mxB2P6td", "languageTag": "tNsw5dHu", "userName": "OU8cKrGc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'AdminUpdateMyUserV4' test.out

#- 307 AdminDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'AdminDisableMyAuthenticatorV4' test.out

#- 308 AdminEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'AdminEnableMyAuthenticatorV4' test.out

#- 309 AdminGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-admin-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 310 AdminGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'AdminGetMyBackupCodesV4' test.out

#- 311 AdminGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'AdminGenerateMyBackupCodesV4' test.out

#- 312 AdminDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'AdminDisableMyBackupCodesV4' test.out

#- 313 AdminDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'AdminDownloadMyBackupCodesV4' test.out

#- 314 AdminEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'AdminEnableMyBackupCodesV4' test.out

#- 315 AdminSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-admin-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'AdminSendMyMFAEmailCodeV4' test.out

#- 316 AdminDisableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-disable-my-email-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'AdminDisableMyEmailV4' test.out

#- 317 AdminEnableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-enable-my-email-v4' \
    'vNqg4X5M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'AdminEnableMyEmailV4' test.out

#- 318 AdminGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-admin-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'AdminGetMyEnabledFactorsV4' test.out

#- 319 AdminMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-admin-make-factor-my-default-v4' \
    'CSVoccMN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'AdminMakeFactorMyDefaultV4' test.out

#- 320 AdminInviteUserV4
$PYTHON -m $MODULE 'iam-admin-invite-user-v4' \
    '{"assignedNamespaces": ["qsvGVGJv", "C3GH9CmX", "4JkbKslv"], "emailAddresses": ["jOauPfNI", "1VBAjliT", "jgQ3spz4"], "isAdmin": false, "roleId": "uY9l1NED"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'AdminInviteUserV4' test.out

#- 321 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "EgV168Hx", "policyId": "7ekn2Nqe", "policyVersionId": "tfFy2kgg"}, {"isAccepted": false, "localizedPolicyVersionId": "gCIKIiGB", "policyId": "w04VnTqT", "policyVersionId": "bL4x28em"}, {"isAccepted": true, "localizedPolicyVersionId": "QZkCz8wJ", "policyId": "9Jr104BY", "policyVersionId": "rV9b0lIn"}], "authType": "EMAILPASSWD", "country": "mQjCfjv6", "dateOfBirth": "Js6kKNDF", "displayName": "7K9jbDhJ", "emailAddress": "t9ZgMyD1", "password": "VqeF3da2", "passwordMD5Sum": "cRh86y5q", "username": "1j8QETrc", "verified": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'PublicCreateTestUserV4' test.out

#- 322 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "qbUPN12F", "policyId": "JBG6uvwn", "policyVersionId": "7RJPJ0ER"}, {"isAccepted": true, "localizedPolicyVersionId": "8AR87ybJ", "policyId": "hjLX8iLk", "policyVersionId": "j5k5KtJ3"}, {"isAccepted": false, "localizedPolicyVersionId": "uEO2mbwZ", "policyId": "v0mx2n41", "policyVersionId": "okfZXvyl"}], "authType": "EMAILPASSWD", "code": "0cYcI449", "country": "p5Si24YW", "dateOfBirth": "9vXlZIPD", "displayName": "ZM0iNnpJ", "emailAddress": "nnxfpQ9X", "password": "wRk3eF3J", "passwordMD5Sum": "pMdf3OSN", "reachMinimumAge": true, "username": "1mCZnjY7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'PublicCreateUserV4' test.out

#- 323 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "QQjz6cPd", "policyId": "jzZJMT7l", "policyVersionId": "iqjNg2uc"}, {"isAccepted": false, "localizedPolicyVersionId": "XlPfW7EK", "policyId": "tG9InrZM", "policyVersionId": "IdliLQJE"}, {"isAccepted": true, "localizedPolicyVersionId": "a3Wemb15", "policyId": "CRrxUrGB", "policyVersionId": "7a5JXCyJ"}], "authType": "EMAILPASSWD", "country": "sKlaIEiB", "dateOfBirth": "PylF1wRp", "displayName": "MQAV5OFK", "password": "6X4OM9dn", "reachMinimumAge": false, "username": "5AJOOsuj"}' \
    'dIlNMjMf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'CreateUserFromInvitationV4' test.out

#- 324 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "fl2ddHQX", "country": "2hJ66Z1t", "dateOfBirth": "eRlV5gfv", "displayName": "TN8eDYCm", "languageTag": "72miPTuM", "userName": "GeQLx2ES"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'PublicUpdateUserV4' test.out

#- 325 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "ByUHLmZM", "emailAddress": "V7Ef4dnQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'PublicUpdateUserEmailAddressV4' test.out

#- 326 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "o0bOzx39", "country": "BavE4HU3", "dateOfBirth": "FBxy3kd2", "displayName": "ptIKSRij", "emailAddress": "kWOeKtnv", "password": "MtfyndKj", "reachMinimumAge": true, "username": "GLJiHDuI", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 327 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "e5QiFjF4", "password": "RHRXzjI5", "username": "ybCaGTh4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'PublicUpgradeHeadlessAccountV4' test.out

#- 328 PublicDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'PublicDisableMyAuthenticatorV4' test.out

#- 329 PublicEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'PublicEnableMyAuthenticatorV4' test.out

#- 330 PublicGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-public-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 331 PublicGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'PublicGetMyBackupCodesV4' test.out

#- 332 PublicGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'PublicGenerateMyBackupCodesV4' test.out

#- 333 PublicDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'PublicDisableMyBackupCodesV4' test.out

#- 334 PublicDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'PublicDownloadMyBackupCodesV4' test.out

#- 335 PublicEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'PublicEnableMyBackupCodesV4' test.out

#- 336 PublicRemoveTrustedDeviceV4
$PYTHON -m $MODULE 'iam-public-remove-trusted-device-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'PublicRemoveTrustedDeviceV4' test.out

#- 337 PublicSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-public-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'PublicSendMyMFAEmailCodeV4' test.out

#- 338 PublicDisableMyEmailV4
$PYTHON -m $MODULE 'iam-public-disable-my-email-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'PublicDisableMyEmailV4' test.out

#- 339 PublicEnableMyEmailV4
$PYTHON -m $MODULE 'iam-public-enable-my-email-v4' \
    '27TlfJfF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'PublicEnableMyEmailV4' test.out

#- 340 PublicGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-public-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'PublicGetMyEnabledFactorsV4' test.out

#- 341 PublicMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-public-make-factor-my-default-v4' \
    'R7ASqiuy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'PublicMakeFactorMyDefaultV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
