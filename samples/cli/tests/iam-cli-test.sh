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
iam-admin-update-input-validations '[{"field": "T2hSRb5a", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "blockedWord": ["0gUbIpP5", "3sU3Wmub", "fSKyxl9v"], "description": [{"language": "ZSVO0WhJ", "message": ["dUre2J9J", "1QA4ukeS", "HlEhPY0C"]}, {"language": "LUMszcfH", "message": ["Fa90meFv", "8QBV5tDg", "3CNuI3dl"]}, {"language": "VGzlomSB", "message": ["PMbrWBGM", "Gyy0mgTY", "iB1Rs9Qc"]}], "isCustomRegex": true, "letterCase": "1NfJk6j4", "maxLength": 13, "maxRepeatingAlphaNum": 96, "maxRepeatingSpecialCharacter": 46, "minCharType": 12, "minLength": 3, "regex": "8t1o0T0y", "specialCharacterLocation": "iCZaUkfH", "specialCharacters": ["BF6TwPK0", "UZLF0LQk", "sPt8EjcN"]}}, {"field": "OQMyrxCY", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "blockedWord": ["iSWLYWZa", "ouhewqaV", "ymISDsbh"], "description": [{"language": "j6UIfRmu", "message": ["ED7DPt83", "d54ZPMZW", "kpkEQnt3"]}, {"language": "bwGKjcgs", "message": ["qf0uScYM", "EDHbybg6", "8aWcReQh"]}, {"language": "D6p4f99e", "message": ["yjvjh1Zz", "4eQQuICL", "lgmK5MYk"]}], "isCustomRegex": true, "letterCase": "47eKtgG1", "maxLength": 40, "maxRepeatingAlphaNum": 69, "maxRepeatingSpecialCharacter": 48, "minCharType": 38, "minLength": 35, "regex": "PGel5I75", "specialCharacterLocation": "Je362wXv", "specialCharacters": ["AOSlYvI3", "LZJmsmp8", "j1UJfcXf"]}}, {"field": "rUPJjVSm", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "blockedWord": ["LxUGikqh", "6NzWbyLC", "KsPMCjxl"], "description": [{"language": "AEguafMQ", "message": ["GsGxhcrB", "EoHoAfHW", "Y1iN97HK"]}, {"language": "PQmfbpfV", "message": ["qkg0EIz5", "kZLIlXqM", "F9Yvb4Wf"]}, {"language": "Yn0dopLZ", "message": ["iE7YETal", "HIXzd1jT", "t6nYjSfB"]}], "isCustomRegex": false, "letterCase": "8QdhcZfU", "maxLength": 91, "maxRepeatingAlphaNum": 58, "maxRepeatingSpecialCharacter": 34, "minCharType": 39, "minLength": 73, "regex": "TcNhonRv", "specialCharacterLocation": "nC1Qq3mJ", "specialCharacters": ["v4wUVEgQ", "lRGHm7sR", "97VxZxM2"]}}]' --login_with_auth "Bearer foo"
iam-admin-reset-input-validations 'h6UugoRP' --login_with_auth "Bearer foo"
iam-list-admins-v3 --login_with_auth "Bearer foo"
iam-admin-get-age-restriction-status-v3 --login_with_auth "Bearer foo"
iam-admin-update-age-restriction-config-v3 '{"ageRestriction": 1, "enable": false}' --login_with_auth "Bearer foo"
iam-admin-get-list-country-age-restriction-v3 --login_with_auth "Bearer foo"
iam-admin-update-country-age-restriction-v3 '{"ageRestriction": 58}' 'G4mUJLyE' --login_with_auth "Bearer foo"
iam-admin-get-banned-users-v3 --login_with_auth "Bearer foo"
iam-admin-ban-user-bulk-v3 '{"ban": "UDJP3svY", "comment": "tPI09epb", "endDate": "omMiFfD2", "reason": "e2saCv7D", "skipNotif": true, "userIds": ["Okjdkudn", "bY10Ncus", "XCPC70ws"]}' --login_with_auth "Bearer foo"
iam-admin-unban-user-bulk-v3 '{"bans": [{"banId": "kG53DYqJ", "userId": "VbsqJtcL"}, {"banId": "YK9kfFRT", "userId": "pT94BD2G"}, {"banId": "WFQvtCVv", "userId": "aqxFYfW0"}]}' --login_with_auth "Bearer foo"
iam-admin-get-bans-type-with-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-get-clients-by-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-create-client-v3 '{"audiences": ["6dpSER9a", "Zg1EHPIf", "Cjwlvaeq"], "baseUri": "9gFv4PiP", "clientId": "5zpHv6Q5", "clientName": "qdWhXNj2", "clientPermissions": [{"action": 2, "resource": "CUBbTcxf", "schedAction": 22, "schedCron": "O0C4QVEt", "schedRange": ["FcV8pXmR", "uwCxtFSB", "kGwt12vh"]}, {"action": 70, "resource": "15Ls42Vt", "schedAction": 16, "schedCron": "61ktO5bD", "schedRange": ["NiYKT7OI", "Fjz8eu3B", "VHhUJJHR"]}, {"action": 97, "resource": "k7DOwpNx", "schedAction": 17, "schedCron": "uQfremtY", "schedRange": ["JvFTmafh", "t275g8Oc", "A4qSIXQ9"]}], "clientPlatform": "8XcenrE1", "deletable": false, "description": "0hjuHpQB", "namespace": "5fVls1xW", "oauthAccessTokenExpiration": 67, "oauthAccessTokenExpirationTimeUnit": "9BaZeySR", "oauthClientType": "iIJFpNpT", "oauthRefreshTokenExpiration": 76, "oauthRefreshTokenExpirationTimeUnit": "OB2sLBIq", "parentNamespace": "gJHAZPhj", "redirectUri": "rfhGNeZx", "scopes": ["OSNFRaBH", "oDjVlwU0", "nGWG2pIR"], "secret": "F5DCNwyV", "twoFactorEnabled": true}' --login_with_auth "Bearer foo"
iam-admin-get-clientsby-namespaceby-idv3 'ziKztO6n' --login_with_auth "Bearer foo"
iam-admin-delete-client-v3 '7Yxe3uRi' --login_with_auth "Bearer foo"
iam-admin-update-client-v3 '{"audiences": ["0wIZkHHp", "cCVOoYyS", "kAyWlwVf"], "baseUri": "9ntLPdhz", "clientName": "MIE0dY8b", "clientPermissions": [{"action": 4, "resource": "0TiQHhuU", "schedAction": 98, "schedCron": "NShyJWru", "schedRange": ["WsDd1hjx", "cIOJDFmX", "CuI7QGHJ"]}, {"action": 44, "resource": "4WBuWlJk", "schedAction": 26, "schedCron": "KiIcfvqf", "schedRange": ["NuEGtx5N", "dQCERdVX", "KetIR2AH"]}, {"action": 27, "resource": "cRDgvQ9v", "schedAction": 55, "schedCron": "6EwW0xB9", "schedRange": ["f8VlyZX3", "ArywT9Kr", "MfIvkOzv"]}], "clientPlatform": "KSn3cx2Q", "deletable": true, "description": "Wil3mR7N", "namespace": "AExHLQAL", "oauthAccessTokenExpiration": 73, "oauthAccessTokenExpirationTimeUnit": "DAAKTmUv", "oauthRefreshTokenExpiration": 42, "oauthRefreshTokenExpirationTimeUnit": "YAoS0CCx", "redirectUri": "RYXnSAdF", "scopes": ["AskndmE8", "jd5dUAEQ", "Ogc85qgv"], "twoFactorEnabled": false}' 'SlO6W5Zu' --login_with_auth "Bearer foo"
iam-admin-update-client-permission-v3 '{"permissions": [{"action": 51, "resource": "c5Fnkxmj"}, {"action": 54, "resource": "qba1le6E"}, {"action": 18, "resource": "xviwv3JC"}]}' 'RFAcf9aJ' --login_with_auth "Bearer foo"
iam-admin-add-client-permissions-v3 '{"permissions": [{"action": 17, "resource": "75RDQUi7"}, {"action": 74, "resource": "J14lxIic"}, {"action": 58, "resource": "R7DcdJxI"}]}' 'NWgD8JDK' --login_with_auth "Bearer foo"
iam-admin-delete-client-permission-v3 '75' '6LqsUINJ' 'x3M4kIv3' --login_with_auth "Bearer foo"
iam-retrieve-all-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-sso-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-third-party-login-platform-credential-v3 'BAjMlwJL' --login_with_auth "Bearer foo"
iam-add-third-party-login-platform-credential-v3 '{"ACSURL": "t8nFkjSk", "AWSCognitoRegion": "xAiVBPyr", "AWSCognitoUserPool": "0PTnNGPL", "AllowedClients": ["Wy4eeNXG", "Vg9LPWxk", "A8u69l56"], "AppId": "NKmYO8Zw", "AuthorizationEndpoint": "ZC6a2QiM", "ClientId": "EJEDXJVg", "Environment": "CTTeVHko", "FederationMetadataURL": "gRx96Z1J", "GenericOauthFlow": true, "IsActive": false, "Issuer": "jH44Ebmp", "JWKSEndpoint": "huo3HhlR", "KeyID": "t0Damngk", "NetflixCertificates": {"encryptedPrivateKey": "NKt0pzGg", "encryptedPrivateKeyName": "CMHaSNOR", "publicCertificate": "H377v30k", "publicCertificateName": "X3rZC2Yn", "rootCertificate": "wMZj5Jil", "rootCertificateName": "dI8qXoHu"}, "OrganizationId": "vbnBtlbm", "PlatformName": "fFh0jEu4", "RedirectUri": "MlKt58xT", "RegisteredDomains": [{"affectedClientIDs": ["wNdrDg4i", "QbMn9o76", "1BApcxbK"], "domain": "bdPB4ZKm", "namespaces": ["U7JVvi8g", "nKAIvwVL", "iNTTHZka"], "roleId": "H7sbtu2C"}, {"affectedClientIDs": ["g1DLaIE5", "4aTbp3nj", "xuTj1pom"], "domain": "wi2Hasyz", "namespaces": ["bin4l4dF", "DG3ycou4", "iIPZ6ilV"], "roleId": "kMH63HoS"}, {"affectedClientIDs": ["37fzRPqM", "3Ih1mBRe", "A2QWFurB"], "domain": "rTnzBgVc", "namespaces": ["l2cRX98S", "xs0PgXVk", "qkLzzr6i"], "roleId": "O8b2O241"}], "Secret": "HklFx9i7", "TeamID": "SzIVNeGn", "TokenAuthenticationType": "FM5n4qCD", "TokenClaimsMapping": {"IGCwVjGW": "5V28Mm3n", "Pb7XC8ZP": "CrlqhiZQ", "b2iRcCo6": "JUR7S2HZ"}, "TokenEndpoint": "2YRgqn6G", "scopes": ["18w083Vp", "Ux7EQ62H", "7P0FLL64"]}' 'SrT9k7uK' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-credential-v3 '2vEqxeuH' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-credential-v3 '{"ACSURL": "WMSW2UmA", "AWSCognitoRegion": "cUTjxd7M", "AWSCognitoUserPool": "xnkIrUMZ", "AllowedClients": ["KNleykoo", "uusqJiyW", "hTSOqWwM"], "AppId": "uXa8TU8j", "AuthorizationEndpoint": "6WOvAhCl", "ClientId": "tgDQB7ei", "Environment": "Vu5kFRC1", "FederationMetadataURL": "TPzXEDfh", "GenericOauthFlow": true, "IsActive": false, "Issuer": "dQW5DIxO", "JWKSEndpoint": "NvU7QA3D", "KeyID": "ZYr0X1Rv", "NetflixCertificates": {"encryptedPrivateKey": "UFOGI2du", "encryptedPrivateKeyName": "3uP9Nn3L", "publicCertificate": "vsbCiBJ4", "publicCertificateName": "ujo5cjzA", "rootCertificate": "4muzBMvk", "rootCertificateName": "rxDvqh9z"}, "OrganizationId": "W5t32WhN", "PlatformName": "qyrKQXHF", "RedirectUri": "7NwjaZJV", "RegisteredDomains": [{"affectedClientIDs": ["xoAYYNzu", "JLbV7tUK", "t4jw7Iq1"], "domain": "P0CHxzou", "namespaces": ["GWjSAULt", "5BMEKPbz", "f7X8pLSe"], "roleId": "AofjV0T8"}, {"affectedClientIDs": ["brSoThDt", "y9B1ZigW", "JIuzaSV3"], "domain": "NwvrYHG5", "namespaces": ["8d8VhBFi", "kzRCkJcj", "2hsdCq8Z"], "roleId": "iRazdimP"}, {"affectedClientIDs": ["CONsmJJ4", "9fzdBGTy", "jvpr9cGP"], "domain": "sjaMxKP8", "namespaces": ["zS1701z1", "LOAqFsun", "HVmeRB50"], "roleId": "4goRHskW"}], "Secret": "xdF1kHgA", "TeamID": "DQeZm8zX", "TokenAuthenticationType": "ueGgtGul", "TokenClaimsMapping": {"SP9Okh8U": "7PY6A9V4", "5TUWj0bc": "k856SgpV", "ZVXGiwD9": "sokrOlSV"}, "TokenEndpoint": "AGzbrt0Z", "scopes": ["qGZGG2bz", "vAgYziqu", "63hlMhM9"]}' 'M4kTNuzw' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-domain-v3 '{"affectedClientIDs": ["wUafhQQG", "ySDxMyjE", "wiOjA3HH"], "assignedNamespaces": ["iTu5PLmn", "nzUgpHC5", "zRrfodNC"], "domain": "8FbO6oPP", "roleId": "MyaQeexq"}' 'o8V2i0EA' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-domain-v3 '{"domain": "3nxE9Fqz"}' 'rRzIxQy6' --login_with_auth "Bearer foo"
iam-retrieve-sso-login-platform-credential 'JM0mKO4e' --login_with_auth "Bearer foo"
iam-add-sso-login-platform-credential '{"acsUrl": "dBOpCbnq", "apiKey": "Ul997QFT", "appId": "XbQGRL7X", "federationMetadataUrl": "kFIRO5j4", "isActive": false, "redirectUri": "spivSZtU", "secret": "xgFwr3rA", "ssoUrl": "SM2eAxzD"}' 'phahGfqF' --login_with_auth "Bearer foo"
iam-delete-sso-login-platform-credential-v3 'j55eA5yc' --login_with_auth "Bearer foo"
iam-update-sso-platform-credential '{"acsUrl": "ljfQvQyh", "apiKey": "mS9zKBS8", "appId": "IRul1Yzo", "federationMetadataUrl": "Szbi6cwU", "isActive": true, "redirectUri": "0yC5QInV", "secret": "GEFqtN9t", "ssoUrl": "GfPHHyXh"}' 'KDY18cp3' --login_with_auth "Bearer foo"
iam-admin-get-user-by-platform-user-idv3 'ag1FOEaU' 'iCpPaLBC' --login_with_auth "Bearer foo"
iam-get-admin-users-by-role-id-v3 'asJ7As9e' --login_with_auth "Bearer foo"
iam-admin-get-user-by-email-address-v3 --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-user-i-ds-v3 '{"userIds": ["8U0TVxBy", "6OVEVp2k", "UO8lnnrf"]}' --login_with_auth "Bearer foo"
iam-admin-invite-user-v3 '{"emailAddresses": ["82CdaCxp", "6Xr0Esys", "U783gwVm"], "isAdmin": false, "namespace": "HKpaM3UI", "roles": ["2levy5sM", "zEnxsS3Y", "3sOmwkF9"]}' --login_with_auth "Bearer foo"
iam-admin-query-third-platform-link-history-v3 'JHy4cZib' --login_with_auth "Bearer foo"
iam-admin-list-users-v3 --login_with_auth "Bearer foo"
iam-admin-search-user-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-by-email-address-v3 '{"listEmailAddressRequest": ["0lDcQyXo", "qeMgqrdp", "OnwCX0qP"]}' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v3 'ezOQGOlt' --login_with_auth "Bearer foo"
iam-admin-update-user-v3 '{"avatarUrl": "ViWmolzb", "country": "kgZ2z6eT", "dateOfBirth": "rARAYOuJ", "displayName": "BcEBnekX", "languageTag": "NCpHRxQi", "userName": "pmdTDXGC"}' 'scsCHiXN' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v3 'cMFNfWbf' --login_with_auth "Bearer foo"
iam-admin-ban-user-v3 '{"ban": "wyaQWBn9", "comment": "1ZhXo2b0", "endDate": "ysM6lyGG", "reason": "lQUbLwLr", "skipNotif": true}' 'stIzATFy' --login_with_auth "Bearer foo"
iam-admin-update-user-ban-v3 '{"enabled": false, "skipNotif": true}' 'Rg8TY409' 'E1qywKEc' --login_with_auth "Bearer foo"
iam-admin-send-verification-code-v3 '{"context": "7xVlIc5D", "emailAddress": "qSuzLge7", "languageTag": "2MpkxJZl"}' 'V73b6iJo' --login_with_auth "Bearer foo"
iam-admin-verify-account-v3 '{"Code": "dnojA0tx", "ContactType": "VRVzNuTQ", "LanguageTag": "fUQoDjq0", "validateOnly": false}' '9H3Zr1op' --login_with_auth "Bearer foo"
iam-get-user-verification-code 'axSyUz6q' --login_with_auth "Bearer foo"
iam-admin-get-user-deletion-status-v3 '3rdb9mo3' --login_with_auth "Bearer foo"
iam-admin-update-user-deletion-status-v3 '{"enabled": true}' 'Ohbkz5QT' --login_with_auth "Bearer foo"
iam-admin-upgrade-headless-account-v3 '{"code": "NopAmSCz", "country": "pXnZCbzy", "dateOfBirth": "s05fot81", "displayName": "ca4J7pTf", "emailAddress": "DmYhoLhz", "password": "eymgajh3", "validateOnly": true}' 'E3V7Ogva' --login_with_auth "Bearer foo"
iam-admin-delete-user-information-v3 'i2r51mED' --login_with_auth "Bearer foo"
iam-admin-get-user-login-histories-v3 'bhWnw5iT' --login_with_auth "Bearer foo"
iam-admin-reset-password-v3 '{"languageTag": "TsTIbVYf", "newPassword": "b2Iw2Pc1", "oldPassword": "Vvznd69f"}' '23yHN0Su' --login_with_auth "Bearer foo"
iam-admin-update-user-permission-v3 '{"Permissions": [{"Action": 49, "Resource": "4hMWxnxP", "SchedAction": 51, "SchedCron": "9SLlusEf", "SchedRange": ["GiPR3FUI", "oRUWNGJg", "g1R6wTQz"]}, {"Action": 95, "Resource": "tOjYA14Y", "SchedAction": 32, "SchedCron": "5OdoZwXv", "SchedRange": ["IH4lO9Dw", "eaT4YdjD", "pLUONEMk"]}, {"Action": 8, "Resource": "ULkicW1u", "SchedAction": 57, "SchedCron": "lqQVfl3B", "SchedRange": ["Q1yU8dgX", "GRlzQa6p", "keZIKj9x"]}]}' 'JpTC6vqp' --login_with_auth "Bearer foo"
iam-admin-add-user-permissions-v3 '{"Permissions": [{"Action": 48, "Resource": "NOu0iDtC", "SchedAction": 4, "SchedCron": "kNlYV9Ms", "SchedRange": ["fYJZLIwL", "let3lSOF", "HFc67kAd"]}, {"Action": 65, "Resource": "FTznwSp4", "SchedAction": 60, "SchedCron": "okvJtfHO", "SchedRange": ["yjnrICwg", "9BoJIEfD", "G9gJIbNa"]}, {"Action": 20, "Resource": "3KY3U5bi", "SchedAction": 78, "SchedCron": "ePT8gfNw", "SchedRange": ["ZP2Ju87l", "Z4xw2JST", "NLg4bF1i"]}]}' '3e9tlfBx' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-bulk-v3 '[{"Action": 37, "Resource": "GF1bzlIc"}, {"Action": 34, "Resource": "doCDtw8o"}, {"Action": 91, "Resource": "cz6Czztk"}]' 'QBUs4u6J' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-v3 '27' 'GslYc6UQ' 'B98mr7ey' --login_with_auth "Bearer foo"
iam-admin-get-user-platform-accounts-v3 '3cWGkEF8' --login_with_auth "Bearer foo"
iam-admin-get-list-justice-platform-accounts 'ncI7RbZf' --login_with_auth "Bearer foo"
iam-admin-get-user-mapping 'Wvqx9cyt' 'F9pQnwcY' --login_with_auth "Bearer foo"
iam-admin-create-justice-user 'phQoibXQ' 'yCbOvyiD' --login_with_auth "Bearer foo"
iam-admin-link-platform-account '{"platformId": "bVScXQ7F", "platformUserId": "qnVgRFqr"}' 'yYg1SmmN' --login_with_auth "Bearer foo"
iam-admin-platform-unlink-v3 '{"platformNamespace": "yLVsMgKi"}' 'dl2aUE7F' '1CsI3XOe' --login_with_auth "Bearer foo"
iam-admin-platform-link-v3 'zkG5EV79' 'MKy17K08' 'y7ANQxv3' --login_with_auth "Bearer foo"
iam-admin-get-third-party-platform-token-link-status-v3 'OOEGguax' 'd7zINPvm' 'NEGAlSXJ' --login_with_auth "Bearer foo"
iam-admin-delete-user-roles-v3 '["Uj5ko322", "7M9h98vx", "ScNL72Ao"]' 'pdyinPHg' --login_with_auth "Bearer foo"
iam-admin-save-user-role-v3 '[{"namespace": "hBpTHjlh", "roleId": "9eLEqcFS"}, {"namespace": "Uojbny4S", "roleId": "g2MOKhkM"}, {"namespace": "LxfOo7uH", "roleId": "1oOl0Meb"}]' 'RKatvcN0' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v3 'XOOqJcZ5' 'F8IkpCQE' --login_with_auth "Bearer foo"
iam-admin-delete-user-role-v3 'Pt79pb1T' 'BlZbSz2t' --login_with_auth "Bearer foo"
iam-admin-update-user-status-v3 '{"enabled": true, "reason": "DXGRTCn9"}' 'hNCNM6WQ' --login_with_auth "Bearer foo"
iam-admin-verify-user-without-verification-code-v3 '1C2avfns' --login_with_auth "Bearer foo"
iam-admin-update-client-secret-v3 '{"newSecret": "NlFm57im"}' 'vXj38jB1' --login_with_auth "Bearer foo"
iam-admin-get-roles-v3 --login_with_auth "Bearer foo"
iam-admin-create-role-v3 '{"adminRole": true, "deletable": false, "isWildcard": true, "managers": [{"displayName": "2amnOUMy", "namespace": "PQBSOdjG", "userId": "W8y5mka4"}, {"displayName": "ugUmUmvv", "namespace": "CDsQDdNQ", "userId": "OS7bGIxS"}, {"displayName": "xutZ4aDA", "namespace": "3RvmTYz1", "userId": "Tk8Xh9EW"}], "members": [{"displayName": "iFNPD2RB", "namespace": "Pf1drC9P", "userId": "sfMn51Z7"}, {"displayName": "rpr41h2W", "namespace": "4fViVjcO", "userId": "Tx63WNOe"}, {"displayName": "QCup8cGt", "namespace": "Wu8kyB6W", "userId": "pC2SUuTx"}], "permissions": [{"action": 77, "resource": "SzSZ3jiI", "schedAction": 40, "schedCron": "bbm257Vq", "schedRange": ["BHgTIhVX", "FW2sSchL", "AM85DnOG"]}, {"action": 52, "resource": "2hbvdgSi", "schedAction": 96, "schedCron": "quzoEkaD", "schedRange": ["jkpZ3eW9", "fcO8zsQ6", "ES5jlCuk"]}, {"action": 85, "resource": "wl9RTpGK", "schedAction": 85, "schedCron": "fHsN0F0K", "schedRange": ["Rol3J4Se", "ovqh2FDX", "Av9n9i3z"]}], "roleName": "0kR4Uq7S"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v3 'I1cOKylP' --login_with_auth "Bearer foo"
iam-admin-delete-role-v3 'fnX05ON8' --login_with_auth "Bearer foo"
iam-admin-update-role-v3 '{"deletable": true, "isWildcard": false, "roleName": "5S524hqs"}' 'shquSHbL' --login_with_auth "Bearer foo"
iam-admin-get-role-admin-status-v3 'YX3GVzgy' --login_with_auth "Bearer foo"
iam-admin-update-admin-role-status-v3 'ungCCEmI' --login_with_auth "Bearer foo"
iam-admin-remove-role-admin-v3 '13AoMwtn' --login_with_auth "Bearer foo"
iam-admin-get-role-managers-v3 'IErn1mmN' --login_with_auth "Bearer foo"
iam-admin-add-role-managers-v3 '{"managers": [{"displayName": "vDdm1pE6", "namespace": "Gc9zfNTX", "userId": "Q3tvq3iB"}, {"displayName": "P9oLr6e6", "namespace": "zOcvQTzp", "userId": "XXCHtbSy"}, {"displayName": "hqO6JeHF", "namespace": "arydW7d5", "userId": "oKkMVfwm"}]}' 'ERZ89EzI' --login_with_auth "Bearer foo"
iam-admin-remove-role-managers-v3 '{"managers": [{"displayName": "22gbGDvw", "namespace": "i3IfFfDh", "userId": "eM31uzq9"}, {"displayName": "u31mmF4H", "namespace": "1zZvzk4Y", "userId": "hGayMrvc"}, {"displayName": "sbGI7LZA", "namespace": "9gqHZUcr", "userId": "dH3qoBcQ"}]}' '1U5wju5i' --login_with_auth "Bearer foo"
iam-admin-get-role-members-v3 'vqfCMzYX' --login_with_auth "Bearer foo"
iam-admin-add-role-members-v3 '{"members": [{"displayName": "sdUlkbGi", "namespace": "yhllzUKo", "userId": "TnN6fEon"}, {"displayName": "H78uv03Y", "namespace": "fRl0go0X", "userId": "Msdf119r"}, {"displayName": "jfRsXJA3", "namespace": "bA7WCBHc", "userId": "I1w5GSiU"}]}' '9qDC3WMP' --login_with_auth "Bearer foo"
iam-admin-remove-role-members-v3 '{"members": [{"displayName": "MZCEgN7y", "namespace": "70f87SPf", "userId": "eg7sqVbb"}, {"displayName": "y5MMtUD6", "namespace": "4vVUoGMS", "userId": "zFhdmWo0"}, {"displayName": "Q2ll9ZHu", "namespace": "9oS8k7K6", "userId": "L4iDFlUf"}]}' 'QAmNPJGO' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v3 '{"permissions": [{"action": 10, "resource": "jDvPelOX", "schedAction": 23, "schedCron": "qRcmbwes", "schedRange": ["WaiRBjrO", "lNP7rdcD", "wLEIAwyE"]}, {"action": 47, "resource": "bZVHsEoO", "schedAction": 77, "schedCron": "qeCDRHOj", "schedRange": ["lk6iAHfo", "JuABTOSh", "veVZaEmb"]}, {"action": 35, "resource": "x0i1uKXs", "schedAction": 49, "schedCron": "5pDFkNQc", "schedRange": ["rSymTYAW", "6jfPajqY", "HjhMJAJA"]}]}' 'uHWqU324' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v3 '{"permissions": [{"action": 41, "resource": "ZkS5PSxo", "schedAction": 18, "schedCron": "YZgH9AxT", "schedRange": ["FRZjMdco", "qIaWZ5uF", "advjv8mb"]}, {"action": 85, "resource": "VSig6sz2", "schedAction": 0, "schedCron": "7FfDe2qv", "schedRange": ["gHXC5V1J", "bPyEtBnG", "R5a8byEf"]}, {"action": 84, "resource": "bQsxI1wa", "schedAction": 10, "schedCron": "ifJFbu8c", "schedRange": ["w2hRSTeQ", "oBQZEhr9", "E52yGt09"]}]}' 'vc1tfOqm' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v3 '["vX3qdQw9", "pbrdbJnT", "SSwJXb1Q"]' 'b2DLSQjZ' --login_with_auth "Bearer foo"
iam-admin-delete-role-permission-v3 '13' 'NhgMFp6Q' 'ojLIBepO' --login_with_auth "Bearer foo"
iam-admin-get-my-user-v3 --login_with_auth "Bearer foo"
iam-user-authentication-v3 'Dt9wdGbK' '66k4eQEi' 'm0TX4jEL' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-authentication-with-platform-link-v3 'by3wsJz3' 'yuwFMFXJ' 'QLrBGXr3' '7VKNTzrG' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v3 'rETwxchS' --login_with_auth "Bearer foo"
iam-request-one-time-linking-code-v3 'cWCOaehp' --login_with_auth "Bearer foo"
iam-validate-one-time-linking-code-v3 'U0ZDXtg5' --login_with_auth "Bearer foo"
iam-request-token-by-one-time-link-code-response-v3 'NId5DJvN' 'Dn4sIAKd' --login_with_auth "Bearer foo"
iam-get-country-location-v3 --login_with_auth "Bearer foo"
iam-logout --login_with_auth "Bearer foo"
iam-request-game-token-code-response-v3 '4Z68zT01' --login_with_auth "Bearer foo"
iam-admin-retrieve-user-third-party-platform-token-v3 'EbhR9vZ0' 'FPkf6tHS' --login_with_auth "Bearer foo"
iam-revoke-user-v3 'LEdDzuC5' --login_with_auth "Bearer foo"
iam-authorize-v3 'dF2nwT2j' 'code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-introspection-v3 'y2gydnpj' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-jwksv3 --login_with_auth "Bearer foo"
iam-send-mfa-authentication-code 'cKQLBDhH' 'UfdmJQ16' 'IFu0uD5j' --login_with_auth "Bearer foo"
iam-change2fa-method 'NgNLVJJ7' 'Dph1Y8ln' --login_with_auth "Bearer foo"
iam-verify2fa-code 'JRbfiPFl' 'WB5CcLLy' 'xErnfPT2' 'true' --login_with_auth "Bearer foo"
iam-retrieve-user-third-party-platform-token-v3 'LRuzAee1' 'Y5sd5OsE' --login_with_auth "Bearer foo"
iam-auth-code-request-v3 'GIdIvmMf' 'nQjN8XgD' --login_with_auth "Bearer foo"
iam-platform-token-grant-v3 'lYn21POT' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-revocation-list-v3 --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-revocation-v3 'CO4IoQl8' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-grant-v3 'authorization_code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-verify-token-v3 'Vr45cCWu' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-platform-authentication-v3 '3je7kuNS' 'UzA2dbey' --login_with_auth "Bearer foo"
iam-public-get-input-validations --login_with_auth "Bearer foo"
iam-public-get-country-age-restriction-v3 'nHSoXkyX' --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-public-v3 --login_with_auth "Bearer foo"
iam-retrieve-active-oidc-clients-public-v3 'g2iimlvR' --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["C74NKJ9W", "xuQkEu7L", "d4X4JCTS"]}' 'hp4BugPQ' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv3 '2DpZDpP1' 'GFDC1ctl' --login_with_auth "Bearer foo"
iam-public-get-async-status 'wLaMVpFe' --login_with_auth "Bearer foo"
iam-public-search-user-v3 --login_with_auth "Bearer foo"
iam-public-create-user-v3 '{"PasswordMD5Sum": "wK0eCsoh", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "Vv5jKyOl", "policyId": "eQbUA7um", "policyVersionId": "QuKroQte"}, {"isAccepted": true, "localizedPolicyVersionId": "34F2YgtO", "policyId": "dYhTGalZ", "policyVersionId": "vudVSCMB"}, {"isAccepted": true, "localizedPolicyVersionId": "DZ3qOK34", "policyId": "OaKtZSZA", "policyVersionId": "tKUPp15D"}], "authType": "qpB1Lqs2", "code": "8GuDF4SI", "country": "EEqdNMbf", "dateOfBirth": "PZhI3lqk", "displayName": "Vfoy8EuP", "emailAddress": "ZeMj037t", "password": "CJu0Be8V", "reachMinimumAge": false}' --login_with_auth "Bearer foo"
iam-check-user-availability 'JnWHbexT' '7RN5kdRV' --login_with_auth "Bearer foo"
iam-public-bulk-get-users '{"userIds": ["qFsTNNfZ", "44sXfrM9", "CSEDQQy1"]}' --login_with_auth "Bearer foo"
iam-public-send-registration-code '{"emailAddress": "N93LSNPw", "languageTag": "JWVkzi4f"}' --login_with_auth "Bearer foo"
iam-public-verify-registration-code '{"code": "ftWW7YoY", "emailAddress": "0ep5upw5"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v3 '{"emailAddress": "MHSrU5Pu", "languageTag": "gqpLCiIy"}' --login_with_auth "Bearer foo"
iam-get-admin-invitation-v3 'LZsaqXgp' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v3 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "UIF3jMEY", "policyId": "VG3oykQZ", "policyVersionId": "QrRUr44p"}, {"isAccepted": false, "localizedPolicyVersionId": "yg7pNYZE", "policyId": "a9J4d5GD", "policyVersionId": "YJFmRBGz"}, {"isAccepted": false, "localizedPolicyVersionId": "JOHcVm08", "policyId": "MvVa47ls", "policyVersionId": "nY7TOI3M"}], "authType": "EMAILPASSWD", "country": "bo8ookdn", "dateOfBirth": "fkctcJcx", "displayName": "3AoOjmfe", "password": "wvBnq56t", "reachMinimumAge": false}' '2MNO2SwF' --login_with_auth "Bearer foo"
iam-update-user-v3 '{"avatarUrl": "ik1z1bQz", "country": "dnAmKLGy", "dateOfBirth": "6bJ9aAf0", "displayName": "DoOpUCLp", "languageTag": "yBZpjggl", "userName": "YgB71zEJ"}' --login_with_auth "Bearer foo"
iam-public-partial-update-user-v3 '{"avatarUrl": "9vQTGTW2", "country": "hxkaLPPS", "dateOfBirth": "WHJBFLzm", "displayName": "QDL16aNd", "languageTag": "KpZ37azm", "userName": "QZK2KNvr"}' --login_with_auth "Bearer foo"
iam-public-send-verification-code-v3 '{"context": "nvJC7lzB", "emailAddress": "ux82Xznw", "languageTag": "jc2cp3hp"}' --login_with_auth "Bearer foo"
iam-public-user-verification-v3 '{"code": "dUJyj4ex", "contactType": "H1I2rEi7", "languageTag": "N67cRGSP", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v3 '{"code": "65hx76S7", "country": "BvB1iy82", "dateOfBirth": "wSfDtaDJ", "displayName": "YEffiYsl", "emailAddress": "Iz7HaHzG", "password": "3rgdVDzN", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-verify-headless-account-v3 '{"emailAddress": "h13tR2cv", "password": "aUrW5BQi"}' --login_with_auth "Bearer foo"
iam-public-update-password-v3 '{"languageTag": "r6vak7Le", "newPassword": "VBYb8gGE", "oldPassword": "iWB8lyHq"}' --login_with_auth "Bearer foo"
iam-public-create-justice-user 'bs3pi6Gy' --login_with_auth "Bearer foo"
iam-public-platform-link-v3 'qNJdTMIa' 'k1qj3zzP' --login_with_auth "Bearer foo"
iam-public-platform-unlink-v3 '{"platformNamespace": "kPrR6DMk"}' '6jRNqtq9' --login_with_auth "Bearer foo"
iam-public-platform-unlink-all-v3 'AGAL2zlc' --login_with_auth "Bearer foo"
iam-public-force-platform-link-v3 'BdXO4Ybr' 'QTS4wnEW' --login_with_auth "Bearer foo"
iam-public-web-link-platform '3vwD6F24' --login_with_auth "Bearer foo"
iam-public-web-link-platform-establish 'ppbRDFCL' 'gqHpDslv' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"code": "ty7GefuI", "emailAddress": "thrgcUjd", "newPassword": "zxMTqSUI"}' --login_with_auth "Bearer foo"
iam-public-get-user-by-user-id-v3 'DcU4Ut84' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 '69nj0qgh' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 'JSiQJg20' --login_with_auth "Bearer foo"
iam-public-get-user-information-v3 '3xHYX7WZ' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 'HVr0k4RD' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 '0OXXnFnr' --login_with_auth "Bearer foo"
iam-public-list-justice-platform-accounts-v3 'D8DmDvbk' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "prbKolA6", "platformUserId": "zeEeQ4f6"}' 'eetqXf7R' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["31pdJvrk", "p2gnFdi3", "x6dVztkr"], "requestId": "rQ4MY8DE"}' 'I0wAvuAA' --login_with_auth "Bearer foo"
iam-public-get-publisher-user-v3 'eVq3Ygcu' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 '79BzXw3E' 'R2B14O97' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 '1VIVaMAw' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-public-get-link-headless-account-to-my-account-conflict-v3 '0cCJPGld' --login_with_auth "Bearer foo"
iam-link-headless-account-to-my-account-v3 '{"chosenNamespaces": ["AcB7P0fg", "EQBp1FZJ", "EK5VLVGB"], "oneTimeLinkCode": "qkVKYWKd"}' --login_with_auth "Bearer foo"
iam-public-send-verification-link-v3 '{"languageTag": "uUu45TFx"}' --login_with_auth "Bearer foo"
iam-public-verify-user-by-link-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler 'pG2l7RV0' 'XouxbjJn' --login_with_auth "Bearer foo"
iam-login-sso-client 'gWr1Qp8A' --login_with_auth "Bearer foo"
iam-logout-sso-client '8IEpdyCs' --login_with_auth "Bearer foo"
iam-request-game-token-response-v3 'cicpF8hY' --login_with_auth "Bearer foo"
iam-admin-get-devices-by-user-v4 --login_with_auth "Bearer foo"
iam-admin-get-banned-devices-v4 --login_with_auth "Bearer foo"
iam-admin-get-user-device-bans-v4 'CkhcR2xl' --login_with_auth "Bearer foo"
iam-admin-ban-device-v4 '{"comment": "ot1Wgs6Q", "deviceId": "xd4JsaZy", "deviceType": "ACJ4Yafl", "enabled": true, "endDate": "6ZBQzAmL", "ext": {"s1e5Mi8b": {}, "cUYweFKq": {}, "V6P4AgTL": {}}, "reason": "CdeG7muu"}' --login_with_auth "Bearer foo"
iam-admin-get-device-ban-v4 'gRNZkXc1' --login_with_auth "Bearer foo"
iam-admin-update-device-ban-v4 '{"enabled": false}' 'qaeNQ3WG' --login_with_auth "Bearer foo"
iam-admin-generate-report-v4 'CQinbF00' --login_with_auth "Bearer foo"
iam-admin-get-device-types-v4 --login_with_auth "Bearer foo"
iam-admin-get-device-bans-v4 'nYgCeJmJ' --login_with_auth "Bearer foo"
iam-admin-decrypt-device-v4 '9JzE9aC9' --login_with_auth "Bearer foo"
iam-admin-unban-device-v4 'EvsbnoQE' --login_with_auth "Bearer foo"
iam-admin-get-users-by-device-v4 'ModTOfxO' --login_with_auth "Bearer foo"
iam-admin-create-test-users-v4 '{"count": 1}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["KuWmSQxy", "FZwGA820", "j731t9v5"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "n9usaGT2", "country": "u3Ma3ERH", "dateOfBirth": "TvzzElpC", "displayName": "Q9yBlCle", "languageTag": "Zzzw1gaI", "userName": "ii8EzwlB"}' 'cVvA7UpX' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "4lzvcB8m", "emailAddress": "AzG7FhMd"}' 'sNL8Mr7C' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 'e9aadtth' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 'PMYNK53N' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["EMfU6hv2", "o2Ldkyan", "jtQFQnyT"], "roleId": "z8TO6mg3"}' 'lQHiFf1P' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["afMcvgD9", "yztDlrvK", "VP95KKf2"], "roleId": "drYJaEp9"}' 'N3d0TDE9' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["zYkCfolT", "THxZ8Vre", "NWsMkcrh"], "roleId": "MyyVPgtp"}' 'psSfKOr5' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "WVvUmIGQ"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 'oWbyWHzH' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 'NPIu9wlj' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "h1fENQxp"}' 'N8sYqx88' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 58, "resource": "uFWG4uLq", "schedAction": 67, "schedCron": "QYifuZmF", "schedRange": ["twCq5asy", "xxldzERe", "cKodO8td"]}, {"action": 93, "resource": "pori0hwc", "schedAction": 89, "schedCron": "qIHaGCYg", "schedRange": ["COdAdc7g", "dDOdhIyG", "stQWYsIZ"]}, {"action": 35, "resource": "1tppVu2X", "schedAction": 58, "schedCron": "J1ATdXwh", "schedRange": ["p4LNakvW", "cTz0OmYG", "lDyGM9Rv"]}]}' 'Tlbqk3Md' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 70, "resource": "RmVKp6UQ", "schedAction": 37, "schedCron": "Jzx4HmxT", "schedRange": ["O41rf4kp", "8v7KLHT7", "mkbAYsGp"]}, {"action": 52, "resource": "cOdQa4LE", "schedAction": 40, "schedCron": "wnBFdiAW", "schedRange": ["45PY0fMO", "lKXcrhJK", "u5BQ9buv"]}, {"action": 76, "resource": "S3JgeAU0", "schedAction": 78, "schedCron": "SijW4rkL", "schedRange": ["MB22xuyc", "GZUevLdY", "mCKBZBlo"]}]}' 'xoLx2H3c' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["m6wl2Kn5", "TTOT561w", "xbRow3uc"]' 'YjU9msCD' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'tKzGAZvM' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["tNQcqTwF", "EuxhVWhE", "4Kdm8j6b"], "namespace": "elX3JOL0", "userId": "IIZ34gv7"}' '9IoBKXNe' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "cJt8Vz0u", "userId": "fd2psrdP"}' '4OughrKK' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "4a9l8wif", "country": "EOyZa3sD", "dateOfBirth": "jNvW4nFX", "displayName": "8WUh8WkX", "languageTag": "zE0j0X8p", "userName": "8nEAaA7Y"}' --login_with_auth "Bearer foo"
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
iam-admin-enable-my-email-v4 'pQcNSgkC' --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 'w4sOYDoZ' --login_with_auth "Bearer foo"
iam-admin-invite-user-v4 '{"assignedNamespaces": ["TjT58uRs", "0N07OHuJ", "RMViaSb1"], "emailAddresses": ["ZX6gdbuo", "ZkGvtJir", "CEFzdFMK"], "isAdmin": true, "namespace": "h3Z1D3VE", "roleId": "9DVeCYus"}' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "lk0JQIZc", "policyId": "aG7EL3ha", "policyVersionId": "tVTFd1p9"}, {"isAccepted": false, "localizedPolicyVersionId": "y4WISRGI", "policyId": "mE556YD0", "policyVersionId": "NuEsxQQy"}, {"isAccepted": false, "localizedPolicyVersionId": "3wNc6FFP", "policyId": "lrapzMae", "policyVersionId": "gz6o1snC"}], "authType": "EMAILPASSWD", "country": "DiLr00MX", "dateOfBirth": "4rSwfMx9", "displayName": "r2Wy4MCb", "emailAddress": "m417J3Rm", "password": "rkatw5eb", "passwordMD5Sum": "2YlIF5Kd", "username": "qJ7X1JUk", "verified": false}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "fM6MUBwT", "policyId": "XFIfyuYN", "policyVersionId": "ECJoZ3x4"}, {"isAccepted": true, "localizedPolicyVersionId": "0WU5u36X", "policyId": "ki3xgdeC", "policyVersionId": "bXVlSgDq"}, {"isAccepted": false, "localizedPolicyVersionId": "xO7kc6Gx", "policyId": "ZhzsTTEh", "policyVersionId": "QNVuH9cd"}], "authType": "EMAILPASSWD", "code": "Jg6K43cy", "country": "8pQwiEmT", "dateOfBirth": "WcoNpfSG", "displayName": "X4ERWFsE", "emailAddress": "dbDpMcGt", "password": "HzV2DVFs", "passwordMD5Sum": "kFyXp5TU", "reachMinimumAge": false, "username": "XU6HdcB6"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "nmPts2QG", "policyId": "FvpHITM6", "policyVersionId": "2qUlouZ6"}, {"isAccepted": false, "localizedPolicyVersionId": "MSMiEXvK", "policyId": "6TCTsUzd", "policyVersionId": "Bh1mLD53"}, {"isAccepted": false, "localizedPolicyVersionId": "OCRQ57hq", "policyId": "bhkjJzPa", "policyVersionId": "zj0LNCBS"}], "authType": "EMAILPASSWD", "country": "z2nw74bq", "dateOfBirth": "Osq33oxm", "displayName": "PmoOrEAj", "password": "IeC0rXp8", "reachMinimumAge": false, "username": "2vn0MmE2"}' 'mHimK4l0' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "NJhWsX2a", "country": "CLH4vLjF", "dateOfBirth": "M4J7hZU9", "displayName": "6aij22x6", "languageTag": "9oF0wn18", "userName": "Qv2zoJTl"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "V2fTIsSh", "emailAddress": "7rO9ERju"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "7Sa0ZcTi", "country": "6NYiNRp5", "dateOfBirth": "WXtixGaf", "displayName": "YTcNlRrg", "emailAddress": "Tzo88Xn1", "password": "OSWqj1EP", "reachMinimumAge": true, "username": "zxbuCI6k", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"emailAddress": "HgseQlRE", "password": "f2Fjf8pf", "username": "cSTwAj27"}' --login_with_auth "Bearer foo"
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
iam-public-enable-my-email-v4 'xBYpCcYq' --login_with_auth "Bearer foo"
iam-public-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-public-make-factor-my-default-v4 'Yt2iILJC' --login_with_auth "Bearer foo"
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
    '[{"field": "cfm6QNAl", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "blockedWord": ["mov3uZqR", "P0YEytOX", "iyuRWVsL"], "description": [{"language": "kx5GFJBO", "message": ["zQzy6I5T", "dT4rjM0R", "sL4w95qi"]}, {"language": "UJ3wq0DO", "message": ["vDb6ZC3P", "9uEd8O4m", "AnROfrfj"]}, {"language": "8Z67vTTw", "message": ["Nlg14waz", "NMVzefkk", "LlQIi44L"]}], "isCustomRegex": false, "letterCase": "oNepefcZ", "maxLength": 100, "maxRepeatingAlphaNum": 3, "maxRepeatingSpecialCharacter": 46, "minCharType": 24, "minLength": 35, "regex": "OWi7deXG", "specialCharacterLocation": "oO2YZK5J", "specialCharacters": ["HjBFj07D", "ATdUNU1L", "8h92a1sF"]}}, {"field": "e4Ru82KO", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "blockedWord": ["JNQywSVG", "gHyiED7s", "G19O6D5s"], "description": [{"language": "7WII6uTP", "message": ["DT7BS0wv", "Q8tcjCCP", "IBJjEYfU"]}, {"language": "eEC56OhL", "message": ["1rRnexlw", "lawJnlrA", "iaJuUmEs"]}, {"language": "4x4A0BJX", "message": ["RYrMZN1d", "Wa86ldwN", "Lqc7Mwcv"]}], "isCustomRegex": false, "letterCase": "rvnPKceM", "maxLength": 23, "maxRepeatingAlphaNum": 25, "maxRepeatingSpecialCharacter": 65, "minCharType": 51, "minLength": 81, "regex": "9VPWoAJr", "specialCharacterLocation": "jUqmvNJU", "specialCharacters": ["puApFxJR", "kRLm68LC", "3tKoQ1Nm"]}}, {"field": "ZRXMbsL7", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "blockedWord": ["8kNEQnkT", "0dwaEKsq", "dowFjtqS"], "description": [{"language": "R4w1EUlt", "message": ["5jqNumEx", "gL2cYdJ8", "FKn9HTij"]}, {"language": "W3Os8Wog", "message": ["GT3GdWsr", "6rAXhMXl", "OLLqgzZQ"]}, {"language": "Sg1twhBV", "message": ["bXG4xk44", "wvqUWAW4", "Wg4W9Z0x"]}], "isCustomRegex": false, "letterCase": "3bmCqgkS", "maxLength": 67, "maxRepeatingAlphaNum": 22, "maxRepeatingSpecialCharacter": 79, "minCharType": 83, "minLength": 91, "regex": "lVU1pYtS", "specialCharacterLocation": "1jMJs0Uz", "specialCharacters": ["FD95om2z", "BY7nuUOe", "Q1R4bcNq"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    'SQCIJF9R' \
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
    '{"ageRestriction": 71, "enable": true}' \
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
    '{"ageRestriction": 37}' \
    'JQfpdvLa' \
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
    '{"ban": "qSZNpIZf", "comment": "X4bmPEWY", "endDate": "yhqlutZU", "reason": "I34aTHoQ", "skipNotif": true, "userIds": ["Q6WHU6we", "1EHoPrVe", "gQ6WvfZB"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "iJhEzHS7", "userId": "XzTiOWWg"}, {"banId": "s3mNdmAE", "userId": "IpAKCqyC"}, {"banId": "IFlPxsSy", "userId": "1tvpdGHv"}]}' \
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
    '{"audiences": ["KG8W6f9h", "i7Z89UJo", "W6LmJMj5"], "baseUri": "zsyb30I5", "clientId": "w1PoMFBt", "clientName": "r8IkiqcD", "clientPermissions": [{"action": 37, "resource": "Qkuuk6WQ", "schedAction": 90, "schedCron": "XIalwtWE", "schedRange": ["pmTPNlfi", "bP5Z1Xpk", "NmwXqspn"]}, {"action": 56, "resource": "7Bt42jja", "schedAction": 97, "schedCron": "0R8JAbHX", "schedRange": ["UHdPlJqC", "ZdZdAhBH", "DYNrZgvM"]}, {"action": 79, "resource": "oH9VXhJ1", "schedAction": 85, "schedCron": "oGnBdhOP", "schedRange": ["PgqPiaGs", "761alRO0", "YrypEXd3"]}], "clientPlatform": "tVIvHLGQ", "deletable": true, "description": "LudnbbrY", "namespace": "Mu0wRAwH", "oauthAccessTokenExpiration": 58, "oauthAccessTokenExpirationTimeUnit": "Fu5LxqbI", "oauthClientType": "xQojAiw8", "oauthRefreshTokenExpiration": 66, "oauthRefreshTokenExpirationTimeUnit": "Yzb6r87m", "parentNamespace": "OSmdotkc", "redirectUri": "bwCjuNuM", "scopes": ["1vIpyh73", "77zcKOXX", "Yq62BALd"], "secret": "7ARlJv7b", "twoFactorEnabled": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    'fiuhNmQK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'nxRVpUqG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["tcMYX1az", "QPuSYVcr", "bv4x0Gsn"], "baseUri": "MO1suqiI", "clientName": "EgZVOelh", "clientPermissions": [{"action": 92, "resource": "ZU9ifwge", "schedAction": 82, "schedCron": "Szwodi56", "schedRange": ["iGykHprG", "18PjKXL3", "h4v9azPB"]}, {"action": 54, "resource": "sDL2EnY7", "schedAction": 64, "schedCron": "kXTaHwm9", "schedRange": ["HW0MnphR", "uECQkwPI", "mBACvioM"]}, {"action": 66, "resource": "J7SxS1DH", "schedAction": 55, "schedCron": "3hAlxoxS", "schedRange": ["rcxGPHRN", "wwjMzVdc", "OE7SNNAv"]}], "clientPlatform": "sF8Ko6Ws", "deletable": true, "description": "aRTbeMl9", "namespace": "BfmiVytE", "oauthAccessTokenExpiration": 28, "oauthAccessTokenExpirationTimeUnit": "RV3TuiJb", "oauthRefreshTokenExpiration": 44, "oauthRefreshTokenExpirationTimeUnit": "w4Y25moA", "redirectUri": "kkajX8DY", "scopes": ["jZpNU1QA", "i9VO4qu4", "mDayDwLy"], "twoFactorEnabled": true}' \
    '35ye4YVP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 56, "resource": "CkEs15MK"}, {"action": 79, "resource": "uiziloZI"}, {"action": 97, "resource": "j6F1XUjT"}]}' \
    'XsNPe5su' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 94, "resource": "aY7VGyBH"}, {"action": 17, "resource": "7p6MVEKz"}, {"action": 64, "resource": "EYYWghix"}]}' \
    '2V3iSvYn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '31' \
    'gNwdf7m1' \
    'KMMIDg51' \
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
    'KnAiQPsB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "p1MeCMJc", "AWSCognitoRegion": "STyW2WdY", "AWSCognitoUserPool": "PKtMwDw2", "AllowedClients": ["OgkARIRl", "4IkAxbBK", "4GdTpQV2"], "AppId": "2xRA6hF5", "AuthorizationEndpoint": "ZpapiYNe", "ClientId": "BzA4TcSV", "Environment": "xUUhZqis", "FederationMetadataURL": "GMO9x4E8", "GenericOauthFlow": false, "IsActive": false, "Issuer": "xLQ0IHuF", "JWKSEndpoint": "mgNeoZhy", "KeyID": "uEfWfUlW", "NetflixCertificates": {"encryptedPrivateKey": "UrDNwZyz", "encryptedPrivateKeyName": "rU6lMguP", "publicCertificate": "dDA0Kx3M", "publicCertificateName": "xWVQ0x1o", "rootCertificate": "dKzfaLoH", "rootCertificateName": "AYP7seQO"}, "OrganizationId": "EpSmIhKj", "PlatformName": "MqysOSvi", "RedirectUri": "8raavh7s", "RegisteredDomains": [{"affectedClientIDs": ["gtINIkg2", "6991oeeq", "rXyiW0Ty"], "domain": "mwxDIGkQ", "namespaces": ["tul4ftR2", "4p3QAJ6k", "2jgRav77"], "roleId": "cVTtemDU"}, {"affectedClientIDs": ["NdyWgVJC", "m8HkvfWT", "tBRoLr26"], "domain": "5I2nK8sF", "namespaces": ["nSGKHvG1", "XxPmvXqc", "c8NMZIyA"], "roleId": "bEvJwfQc"}, {"affectedClientIDs": ["CyUh7zNB", "CVkFPwUK", "JyNVLUGR"], "domain": "TTL31rGu", "namespaces": ["pz5wBiPR", "Oq0ZAJel", "kZPyzzEl"], "roleId": "O3iDsd68"}], "Secret": "6RNIkqOx", "TeamID": "BxIacF65", "TokenAuthenticationType": "ovVyBRLe", "TokenClaimsMapping": {"LmQkb5kE": "qicD8IrM", "UNhNKf51": "f30962oj", "CoSXlhGH": "fe6ZdVNu"}, "TokenEndpoint": "J05i8VwH", "scopes": ["lCsVDkdn", "h2Nte8ty", "d9cWapHZ"]}' \
    '1cMZNcTU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    'KHuy45xJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "ZDBpwCay", "AWSCognitoRegion": "wgUrFux0", "AWSCognitoUserPool": "WpwCeQxp", "AllowedClients": ["XEoY0kNP", "xXrkXAJO", "1fRNSfW7"], "AppId": "JRkqd5I9", "AuthorizationEndpoint": "iMFxsYRf", "ClientId": "C4CkLY84", "Environment": "k0IpK9xo", "FederationMetadataURL": "D4MA09ZA", "GenericOauthFlow": true, "IsActive": false, "Issuer": "LjaugkTt", "JWKSEndpoint": "bFwR8fc5", "KeyID": "8DE21Twr", "NetflixCertificates": {"encryptedPrivateKey": "whv4UbiE", "encryptedPrivateKeyName": "qPtwUsBk", "publicCertificate": "li13dLlb", "publicCertificateName": "VqHqzMqM", "rootCertificate": "LqMpyGxr", "rootCertificateName": "yeiatPp7"}, "OrganizationId": "UB3q7UVn", "PlatformName": "edudSJS3", "RedirectUri": "5fz7Y5HB", "RegisteredDomains": [{"affectedClientIDs": ["Dp5LO3fw", "lmw5liYL", "y1cRmhum"], "domain": "5rMZO9pv", "namespaces": ["h0YGtfiu", "KUwRwMGL", "RblH2fED"], "roleId": "VnE46hW8"}, {"affectedClientIDs": ["bpXaOR3C", "odpWMpUg", "lnfu5LzT"], "domain": "JkfgFmsq", "namespaces": ["7vZqKaAD", "zti6zEBk", "jIQW6N3k"], "roleId": "xhwi3OFN"}, {"affectedClientIDs": ["AJyPs8uG", "2WSQeMHZ", "yEo4Phpr"], "domain": "2KswJ81f", "namespaces": ["GAcbbcsQ", "OUjtEXXX", "ltlInG5Q"], "roleId": "ZlNHrfGF"}], "Secret": "7z8aCxNq", "TeamID": "B2fzwgGa", "TokenAuthenticationType": "3ZwR81sa", "TokenClaimsMapping": {"HjS6gRSN": "uFvAfWSS", "elZUtWLa": "g3ODM9hm", "EO02kEZV": "861mP19A"}, "TokenEndpoint": "vZp4grgy", "scopes": ["2ir662X7", "pXoid8cF", "xguQSGjy"]}' \
    'IgudaUCn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["qH1i55er", "NMF28ZlP", "Z5F1DWAy"], "assignedNamespaces": ["VbIlyb3M", "1Sf7J7nB", "fnOWtWMJ"], "domain": "YP6wlCzs", "roleId": "dEqFs2g2"}' \
    '0aa7xbf1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "PlcspAEM"}' \
    'hXfk9hXq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    'CpjsLAyi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "ujePzF5u", "apiKey": "nRmdfs5O", "appId": "A94piPKt", "federationMetadataUrl": "mWthS0GV", "isActive": true, "redirectUri": "gtUF3obq", "secret": "EoPy2XAv", "ssoUrl": "ZKNDvlbn"}' \
    'fFcrb4zH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'scs6cl7p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "J5CiuSsX", "apiKey": "Y25XG2mT", "appId": "5v8aQWfg", "federationMetadataUrl": "E2Ps1A65", "isActive": true, "redirectUri": "1YMZogJe", "secret": "oacBcmcZ", "ssoUrl": "iKhoYY4r"}' \
    'paKWM3Xi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'iljlsYvz' \
    'EIONmdNg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'ts9bNk9y' \
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
    '{"userIds": ["B69Mtrv4", "U9wI9p6Q", "eQuSsZLp"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["dH85AEEG", "u7SMqmYb", "vr3m02gb"], "isAdmin": false, "namespace": "lga5ubIU", "roles": ["T3LtzTSJ", "sx2dknin", "kFWVep7J"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'AdminInviteUserV3' test.out

#- 146 AdminQueryThirdPlatformLinkHistoryV3
$PYTHON -m $MODULE 'iam-admin-query-third-platform-link-history-v3' \
    'y4u6UuJp' \
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
    '{"listEmailAddressRequest": ["HcnT81sL", "aPIB9YSF", "el68fvRn"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'AdminGetBulkUserByEmailAddressV3' test.out

#- 150 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'ZF9SUkuS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AdminGetUserByUserIdV3' test.out

#- 151 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "XHbU8N0E", "country": "I2q4ykDE", "dateOfBirth": "vxe5vZ3A", "displayName": "dXJ7TNGR", "languageTag": "UZDyjOEg", "userName": "wXZa3Uu6"}' \
    'bPkE9cWp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserV3' test.out

#- 152 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'VzX2ODgC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'AdminGetUserBanV3' test.out

#- 153 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "mPrGAUQO", "comment": "NPFfFv2j", "endDate": "QaajCbv6", "reason": "vFzMOwYA", "skipNotif": false}' \
    'Q8mT6LDZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AdminBanUserV3' test.out

#- 154 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": false, "skipNotif": false}' \
    'pB5LS4aH' \
    'NqBw2daK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'AdminUpdateUserBanV3' test.out

#- 155 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "exz3m924", "emailAddress": "2CuRxPV8", "languageTag": "O1ORq13t"}' \
    'gBI9Rvl3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminSendVerificationCodeV3' test.out

#- 156 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "iyGM5K2T", "ContactType": "vq41xken", "LanguageTag": "DiOiJ6KU", "validateOnly": false}' \
    '5nFzZGN8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'AdminVerifyAccountV3' test.out

#- 157 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'Eng9NZfN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'GetUserVerificationCode' test.out

#- 158 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'wfKvvYCk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserDeletionStatusV3' test.out

#- 159 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"enabled": true}' \
    'RUPNOh7t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminUpdateUserDeletionStatusV3' test.out

#- 160 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "l5uhpxUC", "country": "xUukxk1V", "dateOfBirth": "6lsCD7HB", "displayName": "26EUA0kS", "emailAddress": "xWWX35Af", "password": "3fYvEbZ7", "validateOnly": true}' \
    'C5Rvl0Fh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminUpgradeHeadlessAccountV3' test.out

#- 161 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'fT2tEtZN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminDeleteUserInformationV3' test.out

#- 162 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'kUiBtaGC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminGetUserLoginHistoriesV3' test.out

#- 163 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "VwzmYQaV", "newPassword": "tfCFXnyf", "oldPassword": "OXfAIriX"}' \
    '6R7DCfcC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AdminResetPasswordV3' test.out

#- 164 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 81, "Resource": "A4lggKNP", "SchedAction": 57, "SchedCron": "MvDBAYP9", "SchedRange": ["zbzgdW1H", "qdinG9Ow", "HWIecEuP"]}, {"Action": 5, "Resource": "nneIDrwi", "SchedAction": 77, "SchedCron": "i30zMAJw", "SchedRange": ["2yizbanr", "ljkcJRPj", "uZtAbmRi"]}, {"Action": 49, "Resource": "92JBSv5t", "SchedAction": 66, "SchedCron": "etA6b0vn", "SchedRange": ["I2hwxKOs", "KJveHZWy", "AtHWwpFc"]}]}' \
    'wzzWj9uG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserPermissionV3' test.out

#- 165 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 39, "Resource": "ms2yl0V7", "SchedAction": 51, "SchedCron": "LSBtx20p", "SchedRange": ["IowHr0uy", "64ulWf6t", "2959QD0G"]}, {"Action": 6, "Resource": "FzfMAmOG", "SchedAction": 55, "SchedCron": "uVzzEE2b", "SchedRange": ["MsRrWpE5", "o1JOmXgG", "bZ3JeC7E"]}, {"Action": 5, "Resource": "ZLiG7NA2", "SchedAction": 78, "SchedCron": "XbnmXplE", "SchedRange": ["PVXsuWVj", "6fhvZogZ", "4dm7wnBN"]}]}' \
    'zm0RjiiC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminAddUserPermissionsV3' test.out

#- 166 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 35, "Resource": "zaw6t3I2"}, {"Action": 52, "Resource": "7mdUdLMO"}, {"Action": 36, "Resource": "3BDqhs5V"}]' \
    'tGEmtoWv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionBulkV3' test.out

#- 167 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '93' \
    'jBHTSJc9' \
    'O984TaTJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserPermissionV3' test.out

#- 168 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'iehpcxRn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserPlatformAccountsV3' test.out

#- 169 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'DFffHPw0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminGetListJusticePlatformAccounts' test.out

#- 170 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    '3PYOBBYC' \
    'kKRr5cz5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminGetUserMapping' test.out

#- 171 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    'wWpHrtxz' \
    'tW7EJqGw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminCreateJusticeUser' test.out

#- 172 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "oaPMwJoO", "platformUserId": "em2wUCmK"}' \
    'pK7HHeLf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminLinkPlatformAccount' test.out

#- 173 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "mNwIp0vY"}' \
    'DOfZn77U' \
    'Ayl7tCle' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformUnlinkV3' test.out

#- 174 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    '8Z3WzPyc' \
    '67LOTxxN' \
    'XaBtmMuA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminPlatformLinkV3' test.out

#- 175 AdminGetThirdPartyPlatformTokenLinkStatusV3
$PYTHON -m $MODULE 'iam-admin-get-third-party-platform-token-link-status-v3' \
    'W0Zyl2fb' \
    't3Ajbtcx' \
    'NrDU8d3c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 176 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["CovPDVKK", "HJOMSe0C", "GVnPGJyR"]' \
    'yO2kMLEU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminDeleteUserRolesV3' test.out

#- 177 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "pYkVu4oH", "roleId": "ZrAnx6ym"}, {"namespace": "8SzZega0", "roleId": "07if4Mqi"}, {"namespace": "36ZRDAUB", "roleId": "lUgTaQ5e"}]' \
    '6uxnTWg7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminSaveUserRoleV3' test.out

#- 178 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    'RGk6Tmqa' \
    'VKTkVrqW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminAddUserRoleV3' test.out

#- 179 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    '9p5R31QA' \
    'Yz3Nyd2t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminDeleteUserRoleV3' test.out

#- 180 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": false, "reason": "3slI697R"}' \
    'MOjF5JUS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateUserStatusV3' test.out

#- 181 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'I50lzpKY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 182 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "EHwT3bow"}' \
    '5NBSvOYg' \
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
    '{"adminRole": true, "deletable": true, "isWildcard": false, "managers": [{"displayName": "2xilaPIc", "namespace": "FiM9MHvW", "userId": "jEp5DfNX"}, {"displayName": "81BkvVkZ", "namespace": "lRXGegYg", "userId": "8QtZS85h"}, {"displayName": "vhS8iiRT", "namespace": "8qnCMBEJ", "userId": "zm5AsJDE"}], "members": [{"displayName": "tyv8olHs", "namespace": "LdyLrM27", "userId": "J8hOYEzM"}, {"displayName": "NA32mmO7", "namespace": "oY4avydk", "userId": "ThlYebPI"}, {"displayName": "E0K8OSs1", "namespace": "ZBBHE7tm", "userId": "yeGmEMsK"}], "permissions": [{"action": 7, "resource": "xCQjtwOt", "schedAction": 15, "schedCron": "huBoIMKr", "schedRange": ["lnfmE5Iz", "YL1uYfQ2", "vqni4AMU"]}, {"action": 11, "resource": "W681Eaet", "schedAction": 92, "schedCron": "uDu7xBgK", "schedRange": ["rhAKUdWC", "KSx5oDc3", "caQmU2Gn"]}, {"action": 94, "resource": "wh0E0mBL", "schedAction": 56, "schedCron": "HjQGFY2L", "schedRange": ["O7ska9Zv", "ZZlwEsYy", "6eI17g1W"]}], "roleName": "QXL9FQ56"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminCreateRoleV3' test.out

#- 185 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'DYD7cByb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRoleV3' test.out

#- 186 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    '6qdyMknC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteRoleV3' test.out

#- 187 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": true, "isWildcard": false, "roleName": "U54Kni0y"}' \
    'lMSqmFPo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateRoleV3' test.out

#- 188 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    'WyuG2EAK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminGetRoleAdminStatusV3' test.out

#- 189 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    '8NtvtAeW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateAdminRoleStatusV3' test.out

#- 190 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'lIJ42Xwk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminRemoveRoleAdminV3' test.out

#- 191 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'MY7sQ4IU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRoleManagersV3' test.out

#- 192 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "Frlm1SKE", "namespace": "KUXjOnZ2", "userId": "hMECNkNB"}, {"displayName": "D82Fipsi", "namespace": "aMgkeP5B", "userId": "cNCqe9KP"}, {"displayName": "lObCCiPz", "namespace": "jH1P99ND", "userId": "lTiCVU8m"}]}' \
    'mOT7Lfxi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminAddRoleManagersV3' test.out

#- 193 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "8af4kaRS", "namespace": "WBfdBP9G", "userId": "7WB5Wj7x"}, {"displayName": "RRoCzCJC", "namespace": "4Glodmv7", "userId": "Qt1CWJNO"}, {"displayName": "W849G3TG", "namespace": "GSeHO4HK", "userId": "tgo0qaDj"}]}' \
    'JOE9VJeD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminRemoveRoleManagersV3' test.out

#- 194 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'ygTNV3xl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminGetRoleMembersV3' test.out

#- 195 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "SrziGxvc", "namespace": "MyqnCbCI", "userId": "6ggWxwl9"}, {"displayName": "2IZiG2WS", "namespace": "jgLsbfpv", "userId": "r0eEgi5p"}, {"displayName": "foocjzi4", "namespace": "ZhTok8nA", "userId": "EJLsuuB7"}]}' \
    'R646oEFl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminAddRoleMembersV3' test.out

#- 196 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "B0kDS2kM", "namespace": "krcyR06f", "userId": "2hl1ZaLn"}, {"displayName": "GAoSNZc7", "namespace": "W4fMUCyR", "userId": "EmCz9hmE"}, {"displayName": "M4kiZhDI", "namespace": "KIcbMuHs", "userId": "bir1CRZk"}]}' \
    'wmq8Zfg3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminRemoveRoleMembersV3' test.out

#- 197 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 56, "resource": "4EDW7bVw", "schedAction": 66, "schedCron": "mJmyyuIm", "schedRange": ["Cx7YFcyM", "tKMA44tl", "tmBOhh4m"]}, {"action": 53, "resource": "kxf4UrYm", "schedAction": 41, "schedCron": "C4xUxQZF", "schedRange": ["MFNirrrN", "mMFWWusz", "N1iuPRl4"]}, {"action": 46, "resource": "LLMBvtFj", "schedAction": 70, "schedCron": "H2nbebW2", "schedRange": ["nXM2xmjv", "yo8gHx05", "qz1XmHLt"]}]}' \
    'QK5d9HHp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateRolePermissionsV3' test.out

#- 198 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 14, "resource": "1kXUfW4U", "schedAction": 14, "schedCron": "nMUKFa7d", "schedRange": ["hABc5aha", "4F4vMoRR", "q66bn8oM"]}, {"action": 55, "resource": "SXX0sn2L", "schedAction": 58, "schedCron": "i0yehQPH", "schedRange": ["hmgqmjcQ", "D7uV7f4G", "NPOcyj2T"]}, {"action": 74, "resource": "Xysm1z2D", "schedAction": 60, "schedCron": "gAHYMhLI", "schedRange": ["v2bf3K2y", "KtfnLNWW", "LLTEJ4cB"]}]}' \
    'LiGxqa5A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'AdminAddRolePermissionsV3' test.out

#- 199 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["dcCjAHLe", "5NhQYo7W", "lqgbWqQ2"]' \
    'lmA6ugzV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'AdminDeleteRolePermissionsV3' test.out

#- 200 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '90' \
    'Fxz1W0ak' \
    'Av90bEn3' \
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
    'aVo2wMPb' \
    'f377Y7tf' \
    '4qWK5ThR' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 202 'UserAuthenticationV3' test.out

#- 203 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    'Vk1dY0uY' \
    '2m65MF3P' \
    '3DfQU3My' \
    'jmPJoo4e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'AuthenticationWithPlatformLinkV3' test.out

#- 204 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    'gGQcKfku' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 205 RequestOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-request-one-time-linking-code-v3' \
    'qHSjh2yR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'RequestOneTimeLinkingCodeV3' test.out

#- 206 ValidateOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-validate-one-time-linking-code-v3' \
    'yLgyNlSb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'ValidateOneTimeLinkingCodeV3' test.out

#- 207 RequestTokenByOneTimeLinkCodeResponseV3
$PYTHON -m $MODULE 'iam-request-token-by-one-time-link-code-response-v3' \
    'qRO5Y561' \
    'xN4CL5zo' \
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
    'adaBAhFv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'RequestGameTokenCodeResponseV3' test.out

#- 211 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'nTqpDQ8E' \
    'rGhStmzx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 212 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    'l4xPh0Tf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'RevokeUserV3' test.out

#- 213 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    'eDAlR0Wg' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 213 'AuthorizeV3' test.out

#- 214 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'RyPlZPlr' \
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
    '2SXfHyAV' \
    'Gu8fNBBQ' \
    'QstgzQTv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'SendMFAAuthenticationCode' test.out

#- 217 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    'PeNk6cKK' \
    'WtABiOak' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'Change2faMethod' test.out

#- 218 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    '4tOp4VgU' \
    'YmEsRA8W' \
    'prYUZy2M' \
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'Verify2faCode' test.out

#- 219 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    '2qJI5XyY' \
    '3fnfFknH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'IVQx2YyK' \
    'dw0dggPk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'AuthCodeRequestV3' test.out

#- 221 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'V4gtEBEd' \
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
    'g29pzPSC' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 223 'TokenRevocationV3' test.out

#- 224 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'client_credentials' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 224 'TokenGrantV3' test.out

#- 225 VerifyTokenV3
$PYTHON -m $MODULE 'iam-verify-token-v3' \
    'gYdibWXG' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 225 'VerifyTokenV3' test.out

#- 226 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    '4eX1R0JX' \
    'kXGoJo6k' \
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
    'NR3VtCGn' \
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
    'keeg7kGy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 231 PublicListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["d6a6Q3h0", "rmfNSugz", "9uTZidXu"]}' \
    'r3XtHzO6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 232 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    'wvqxMWDn' \
    'fHKnJsxm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'PublicGetUserByPlatformUserIDV3' test.out

#- 233 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    'SjDegrFL' \
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
    '{"PasswordMD5Sum": "QZ5g522d", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "hO3mrkZa", "policyId": "EAdaWSSc", "policyVersionId": "qwI9QcTp"}, {"isAccepted": false, "localizedPolicyVersionId": "KFKfODTI", "policyId": "YKuT96kl", "policyVersionId": "4bOxWvH3"}, {"isAccepted": false, "localizedPolicyVersionId": "w1z1RuQZ", "policyId": "lIJmlG1l", "policyVersionId": "YJ8qcK4F"}], "authType": "SQR8ShiF", "code": "tSue8pAG", "country": "mRrqXU6q", "dateOfBirth": "de9IK6DW", "displayName": "hTEvkZlg", "emailAddress": "yoc7ousj", "password": "zbvFbIC6", "reachMinimumAge": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'PublicCreateUserV3' test.out

#- 236 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'eG9IhA4e' \
    'kDdImO1l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'CheckUserAvailability' test.out

#- 237 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["UJqW7diA", "lSImcBOH", "LQuvmLfV"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'PublicBulkGetUsers' test.out

#- 238 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "lSltxIej", "languageTag": "vDU2Q9o7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'PublicSendRegistrationCode' test.out

#- 239 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "H5wx2Mnq", "emailAddress": "az3fHOgq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'PublicVerifyRegistrationCode' test.out

#- 240 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "7boKiufP", "languageTag": "5I8Oxkbz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'PublicForgotPasswordV3' test.out

#- 241 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    '2uPhDbab' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'GetAdminInvitationV3' test.out

#- 242 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "BDqNDXSN", "policyId": "bvQbInOC", "policyVersionId": "PqDRuQIW"}, {"isAccepted": false, "localizedPolicyVersionId": "nY3t90Cx", "policyId": "hQJG6G5b", "policyVersionId": "Bk91jcPx"}, {"isAccepted": false, "localizedPolicyVersionId": "bY2eZ759", "policyId": "c086jvfZ", "policyVersionId": "Ghak3fZ7"}], "authType": "EMAILPASSWD", "country": "3nhg9ckd", "dateOfBirth": "4tTlIJs3", "displayName": "2Zk5WMSY", "password": "FQnoZOin", "reachMinimumAge": false}' \
    'P8ZqPqgI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'CreateUserFromInvitationV3' test.out

#- 243 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "KUv9u5KT", "country": "aB6yGTQI", "dateOfBirth": "81YjdC6X", "displayName": "Hga5JPD4", "languageTag": "Lu33ZOPz", "userName": "8OnQSFzq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'UpdateUserV3' test.out

#- 244 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "Vdkhra9c", "country": "xWsQIKsU", "dateOfBirth": "mGOezfUw", "displayName": "2xMRty2E", "languageTag": "r2kmXTwg", "userName": "Q8mKopQM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'PublicPartialUpdateUserV3' test.out

#- 245 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "fNpLBs1F", "emailAddress": "dUbRGBxh", "languageTag": "w6iSCkmQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'PublicSendVerificationCodeV3' test.out

#- 246 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "rFI8tpjg", "contactType": "UK6BL2Ji", "languageTag": "3OGkPf28", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'PublicUserVerificationV3' test.out

#- 247 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "kTjKTPfT", "country": "ldOSGgD8", "dateOfBirth": "xI2IiHxX", "displayName": "0C1HhJOz", "emailAddress": "m2tK2WxF", "password": "Z57pBGB0", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'PublicUpgradeHeadlessAccountV3' test.out

#- 248 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "995bYplC", "password": "IZwuuwrD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'PublicVerifyHeadlessAccountV3' test.out

#- 249 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "MrnYMeEK", "newPassword": "qEIFMwSq", "oldPassword": "QNDwWEsU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'PublicUpdatePasswordV3' test.out

#- 250 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'KseZDsrj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'PublicCreateJusticeUser' test.out

#- 251 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    '5osBPHwa' \
    'o2mGQG4n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'PublicPlatformLinkV3' test.out

#- 252 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "8Us8XvkO"}' \
    'K7coJFQD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'PublicPlatformUnlinkV3' test.out

#- 253 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'gOh4oYdr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'PublicPlatformUnlinkAllV3' test.out

#- 254 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    's4MY4FgM' \
    'rPwEjS1i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'PublicForcePlatformLinkV3' test.out

#- 255 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'LgF4i2LY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'PublicWebLinkPlatform' test.out

#- 256 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'ppSTfgBU' \
    '1T48kBdk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'PublicWebLinkPlatformEstablish' test.out

#- 257 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "D6njLqHP", "emailAddress": "UrGJ60dx", "newPassword": "ZUvKc1J9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'ResetPasswordV3' test.out

#- 258 PublicGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-public-get-user-by-user-id-v3' \
    '59RfoAjf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'PublicGetUserByUserIdV3' test.out

#- 259 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    'TX4awlW4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'PublicGetUserBanHistoryV3' test.out

#- 260 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'EnMagJdF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 261 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    'yBllJJPK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'PublicGetUserInformationV3' test.out

#- 262 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'YntSwvMk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'PublicGetUserLoginHistoriesV3' test.out

#- 263 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'xgx9NPYT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'PublicGetUserPlatformAccountsV3' test.out

#- 264 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    'zvwrehel' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'PublicListJusticePlatformAccountsV3' test.out

#- 265 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "W4LNbQnv", "platformUserId": "FG71BImv"}' \
    '3Jq5Mo1a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'PublicLinkPlatformAccount' test.out

#- 266 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["u0y9NKAD", "Omc0NcAu", "ai8dvFrO"], "requestId": "pwiWM4zf"}' \
    'WsVNG3gz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'PublicForceLinkPlatformWithProgression' test.out

#- 267 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    'HRBQ8bXg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'PublicGetPublisherUserV3' test.out

#- 268 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'L5dQ8i2c' \
    'aDBA35rr' \
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
    'qJwNgtrn' \
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
    'B88inMPp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 273 LinkHeadlessAccountToMyAccountV3
$PYTHON -m $MODULE 'iam-link-headless-account-to-my-account-v3' \
    '{"chosenNamespaces": ["7blVQfGb", "tvd3NzJ6", "zfCnrPGs"], "oneTimeLinkCode": "cnjlj2Eo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'LinkHeadlessAccountToMyAccountV3' test.out

#- 274 PublicSendVerificationLinkV3
$PYTHON -m $MODULE 'iam-public-send-verification-link-v3' \
    '{"languageTag": "ePJ7dow5"}' \
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
    'bGAn7q3q' \
    'yGjX9Tsi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'PlatformAuthenticateSAMLV3Handler' test.out

#- 277 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    '5xGt9p2C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'LoginSSOClient' test.out

#- 278 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'pFQIlhx9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'LogoutSSOClient' test.out

#- 279 RequestGameTokenResponseV3
$PYTHON -m $MODULE 'iam-request-game-token-response-v3' \
    'ag4sFblZ' \
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
    'uMYk54I8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'AdminGetUserDeviceBansV4' test.out

#- 283 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "Ay8Xb3xo", "deviceId": "YeEPr5nI", "deviceType": "Xf84Svxs", "enabled": true, "endDate": "EffbafYq", "ext": {"eFqr5rHH": {}, "SNibDMJF": {}, "HNxfImq3": {}}, "reason": "MNb08NxE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'AdminBanDeviceV4' test.out

#- 284 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    'dWuS3dmG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'AdminGetDeviceBanV4' test.out

#- 285 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": true}' \
    'dIorfA5f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'AdminUpdateDeviceBanV4' test.out

#- 286 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    'I7rNuPiG' \
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
    'Hd7rpAfQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'AdminGetDeviceBansV4' test.out

#- 289 AdminDecryptDeviceV4
$PYTHON -m $MODULE 'iam-admin-decrypt-device-v4' \
    'NOKX6ewv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'AdminDecryptDeviceV4' test.out

#- 290 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    'M2kKXN8a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'AdminUnbanDeviceV4' test.out

#- 291 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    'RekrI4gc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'AdminGetUsersByDeviceV4' test.out

#- 292 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"count": 32}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'AdminCreateTestUsersV4' test.out

#- 293 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["bHcElJxf", "2uaaVL90", "TWwZkKsr"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'AdminBulkCheckValidUserIDV4' test.out

#- 294 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "PKnJAOBn", "country": "dHEG7rhM", "dateOfBirth": "mSY9Z70m", "displayName": "i9qlPrnK", "languageTag": "bK8NdPLr", "userName": "n5MDlQGg"}' \
    'W6TInxsA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'AdminUpdateUserV4' test.out

#- 295 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "YBflMpUR", "emailAddress": "LSRzroYF"}' \
    'tTrLtLmC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'AdminUpdateUserEmailAddressV4' test.out

#- 296 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    'rkTDj7vF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'AdminDisableUserMFAV4' test.out

#- 297 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'cDcyPSZh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'AdminListUserRolesV4' test.out

#- 298 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["Lnl09r5Q", "CSg6sLs0", "SuyJiZzi"], "roleId": "4U08LtdB"}' \
    'JEpCWJiG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateUserRoleV4' test.out

#- 299 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["Mg0tgAcQ", "svCt2vik", "2FM8JLrU"], "roleId": "GxJq6Qve"}' \
    'iLdqRP3g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'AdminAddUserRoleV4' test.out

#- 300 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["slIeAW9V", "Ui6yTeBW", "9S6dHtD3"], "roleId": "Hb04Z0Xu"}' \
    '69sPmDsN' \
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
    '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "8vIdAB0u"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'AdminCreateRoleV4' test.out

#- 303 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'h659nOEh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'AdminGetRoleV4' test.out

#- 304 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    '3PupQxyv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'AdminDeleteRoleV4' test.out

#- 305 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "cd9na2kC"}' \
    'KlK0D0n1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'AdminUpdateRoleV4' test.out

#- 306 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 74, "resource": "Qwe13Pcu", "schedAction": 3, "schedCron": "SkHcicle", "schedRange": ["AbKWag6r", "bLCoeB3o", "39mtEjR9"]}, {"action": 97, "resource": "Uu2h4ATz", "schedAction": 17, "schedCron": "bTKUWnYn", "schedRange": ["S9D1Qc7x", "79mGoA6V", "Vic6NRNB"]}, {"action": 90, "resource": "NQumPyeC", "schedAction": 47, "schedCron": "YMUeosOz", "schedRange": ["E2pPinE0", "fSSFdlnR", "i6uGfcQq"]}]}' \
    'ONJbiByo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'AdminUpdateRolePermissionsV4' test.out

#- 307 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 71, "resource": "YKshNbW8", "schedAction": 92, "schedCron": "yTYi1QjO", "schedRange": ["bzBqskoI", "H1cV5TvG", "YwgfLuZV"]}, {"action": 0, "resource": "Ry00OzaK", "schedAction": 66, "schedCron": "KDbKqTt8", "schedRange": ["synbJE4N", "B5foZyqZ", "b1YHCfjg"]}, {"action": 46, "resource": "sLT1sZut", "schedAction": 47, "schedCron": "vFiRy8hI", "schedRange": ["jOoU0sDh", "exuQc8lO", "ZiH4XNhz"]}]}' \
    'r5XcZ1mr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'AdminAddRolePermissionsV4' test.out

#- 308 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["lSRF2qdD", "ptUEf8mZ", "DoC8PpSI"]' \
    'ATn0LGvx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'AdminDeleteRolePermissionsV4' test.out

#- 309 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'Vk3f2EjU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'AdminListAssignedUsersV4' test.out

#- 310 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["GuOuVQdR", "w6WuvuAe", "8A9Ewa0h"], "namespace": "WKZz7w6R", "userId": "bkyDdpPq"}' \
    'CUtKJCvd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'AdminAssignUserToRoleV4' test.out

#- 311 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "tyuhfULe", "userId": "3uHAWBwG"}' \
    's6TQkOwX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'AdminRevokeUserFromRoleV4' test.out

#- 312 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "rkPEkYxV", "country": "Aua2evhG", "dateOfBirth": "On1aGHbm", "displayName": "ny9WPize", "languageTag": "ozZC76xo", "userName": "P2IW30WS"}' \
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
    'IB1CZbwZ' \
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
    'yDO0Hd8m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'AdminMakeFactorMyDefaultV4' test.out

#- 326 AdminInviteUserV4
$PYTHON -m $MODULE 'iam-admin-invite-user-v4' \
    '{"assignedNamespaces": ["gNhr9Fmz", "pXxBDOmY", "7dEp0LZw"], "emailAddresses": ["RnyPdOC3", "EYDwjBhT", "VcTcEnax"], "isAdmin": true, "namespace": "lS5oI81w", "roleId": "9ZyPzgYA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'AdminInviteUserV4' test.out

#- 327 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "p4gjrO0o", "policyId": "YgYsajDL", "policyVersionId": "4o1nFgYN"}, {"isAccepted": true, "localizedPolicyVersionId": "Qj7Yl7Pv", "policyId": "cRmFhouX", "policyVersionId": "T10PCjUG"}, {"isAccepted": true, "localizedPolicyVersionId": "azwbaW3n", "policyId": "z08dKkgR", "policyVersionId": "it1X4U8H"}], "authType": "EMAILPASSWD", "country": "9auosISx", "dateOfBirth": "ccJLayPM", "displayName": "phD7AuAZ", "emailAddress": "faI4F8Rq", "password": "TEiBK7oP", "passwordMD5Sum": "iyOw29we", "username": "Z3AYqMX5", "verified": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'PublicCreateTestUserV4' test.out

#- 328 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "tNFo9toJ", "policyId": "AgkMfsll", "policyVersionId": "fRj8wWY1"}, {"isAccepted": false, "localizedPolicyVersionId": "MpXHmgIH", "policyId": "ltdLbN4K", "policyVersionId": "iVD1xA7L"}, {"isAccepted": false, "localizedPolicyVersionId": "jBgBVsmV", "policyId": "ic2Z7O4g", "policyVersionId": "LKDt6rE8"}], "authType": "EMAILPASSWD", "code": "thhqaMpX", "country": "iwBfYybA", "dateOfBirth": "DEtbcvb7", "displayName": "gSfhvpQ0", "emailAddress": "iwNr2bsm", "password": "elLvinLd", "passwordMD5Sum": "llkoWTt4", "reachMinimumAge": true, "username": "L6636WJN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'PublicCreateUserV4' test.out

#- 329 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "hLhKRVas", "policyId": "96hoOSuk", "policyVersionId": "Do2CPzsb"}, {"isAccepted": false, "localizedPolicyVersionId": "HgGj03s7", "policyId": "JGtI941r", "policyVersionId": "yAk6Cbfx"}, {"isAccepted": false, "localizedPolicyVersionId": "RiKskecl", "policyId": "nzHzz3Io", "policyVersionId": "SOkTqxhz"}], "authType": "EMAILPASSWD", "country": "IeFGNZfF", "dateOfBirth": "xiFWklVG", "displayName": "XUDsYSqi", "password": "aGzdVeSq", "reachMinimumAge": true, "username": "EuA3t5Q2"}' \
    'QELGiRHT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'CreateUserFromInvitationV4' test.out

#- 330 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "ik7Hm0oq", "country": "fWuokuTJ", "dateOfBirth": "SDq07ckn", "displayName": "rZfAgVQQ", "languageTag": "FMpYnjd2", "userName": "0cNaYGC2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'PublicUpdateUserV4' test.out

#- 331 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "Zyf8gXQF", "emailAddress": "dnkdgX47"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'PublicUpdateUserEmailAddressV4' test.out

#- 332 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "Nh9rHepM", "country": "Sdc1iM6Z", "dateOfBirth": "wP6r66dR", "displayName": "0O9qAcc8", "emailAddress": "kP4bt3ck", "password": "bYL3X2OO", "reachMinimumAge": false, "username": "YzaJZHGa", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 333 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "2KoZCjrE", "password": "8gCpKHTc", "username": "sM5Wxy4D"}' \
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
    'UIIarjzW' \
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
    '1j5rpoO8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicMakeFactorMyDefaultV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
