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
iam-admin-update-input-validations '[{"field": "asJRIKhh", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "blockedWord": ["vi6fr3pf", "bygaI2ca", "nEPEGXIJ"], "description": [{"language": "IlykYcsV", "message": ["g3m6XN0b", "Q0LmclTn", "onFfUjg7"]}, {"language": "jhorqonR", "message": ["aPkeyj0b", "FnCzfFeO", "XZrSQFge"]}, {"language": "V0idwZQ6", "message": ["FqgS4ryv", "3tzTILB6", "QlZmzrZF"]}], "isCustomRegex": true, "letterCase": "VSL6ciFu", "maxLength": 57, "maxRepeatingAlphaNum": 34, "maxRepeatingSpecialCharacter": 38, "minCharType": 24, "minLength": 44, "regex": "iJn9V2Ya", "specialCharacterLocation": "eZb6T0BB", "specialCharacters": ["BgFnXWJi", "XtCvOac5", "9opBoOfe"]}}, {"field": "bgcYlbVR", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "blockedWord": ["2VcOxu8J", "dVU9FPa3", "s9Tf3Ahi"], "description": [{"language": "WIYM0yjz", "message": ["fMv5bpU1", "51JnASA9", "G391ycJi"]}, {"language": "sS5PF4hr", "message": ["t1EBK2xq", "YDF5vX0W", "MtQHtgVu"]}, {"language": "g016vCgn", "message": ["fetPmRSE", "LrQhTkvk", "bDZGJk5U"]}], "isCustomRegex": false, "letterCase": "kvpuM77k", "maxLength": 7, "maxRepeatingAlphaNum": 46, "maxRepeatingSpecialCharacter": 70, "minCharType": 17, "minLength": 53, "regex": "8KPeLOQr", "specialCharacterLocation": "dqUoii1Q", "specialCharacters": ["sDlSw2jD", "7i6S6UPK", "3QqliTUa"]}}, {"field": "jlbAagZc", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "blockedWord": ["myoin4wv", "pzqHDuEQ", "MpDCmdzZ"], "description": [{"language": "QeiNvfSE", "message": ["FgTvHo7s", "V3DZ3j6o", "47uL2U3I"]}, {"language": "hvxj7puc", "message": ["MmCME4tm", "GUodFnLt", "eMvti4ZF"]}, {"language": "COp4PPGM", "message": ["X2VMuuui", "QVQwsLQT", "DpSU2J7t"]}], "isCustomRegex": false, "letterCase": "Wf7rn2BP", "maxLength": 74, "maxRepeatingAlphaNum": 81, "maxRepeatingSpecialCharacter": 63, "minCharType": 9, "minLength": 21, "regex": "3uZ7jOKj", "specialCharacterLocation": "vZuirfUn", "specialCharacters": ["N1Zg8Y78", "2D2E8QKt", "fik9vxJG"]}}]' --login_with_auth "Bearer foo"
iam-admin-reset-input-validations 'YzKrvS1q' --login_with_auth "Bearer foo"
iam-list-admins-v3 --login_with_auth "Bearer foo"
iam-admin-get-age-restriction-status-v3 --login_with_auth "Bearer foo"
iam-admin-update-age-restriction-config-v3 '{"ageRestriction": 39, "enable": true}' --login_with_auth "Bearer foo"
iam-admin-get-list-country-age-restriction-v3 --login_with_auth "Bearer foo"
iam-admin-update-country-age-restriction-v3 '{"ageRestriction": 90}' 'ivVuZIeY' --login_with_auth "Bearer foo"
iam-admin-get-banned-users-v3 --login_with_auth "Bearer foo"
iam-admin-ban-user-bulk-v3 '{"ban": "mQKtBWzC", "comment": "QVWfK6ID", "endDate": "hESXzA3C", "reason": "sZMHIxPU", "skipNotif": false, "userIds": ["CdYmMhx8", "zRplSbef", "nk1SCKAu"]}' --login_with_auth "Bearer foo"
iam-admin-unban-user-bulk-v3 '{"bans": [{"banId": "rvIQg2c2", "userId": "QMIAYO7d"}, {"banId": "Le5Og5mM", "userId": "fs25gtPx"}, {"banId": "07TN6eiC", "userId": "DkcwjNkr"}]}' --login_with_auth "Bearer foo"
iam-admin-get-bans-type-with-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-get-clients-by-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-create-client-v3 '{"audiences": ["gQQghh3N", "3395YGVk", "s4veb2Je"], "baseUri": "Zmha4pn0", "clientId": "LjwQbGcr", "clientName": "I4EVfEAo", "clientPermissions": [{"action": 30, "resource": "xTWQ8dH9", "schedAction": 54, "schedCron": "YtgdoCmj", "schedRange": ["pP7IgnQ0", "Iy6oUbg7", "XtG8gJLF"]}, {"action": 12, "resource": "C6NFI1YW", "schedAction": 56, "schedCron": "jh5DUbhu", "schedRange": ["QRXLDWxg", "L1CqcSxt", "YSyKYa1o"]}, {"action": 78, "resource": "T20yt1MQ", "schedAction": 57, "schedCron": "kfTq9Ry7", "schedRange": ["7vu14SSu", "OqUPH8w6", "b1LE0BcM"]}], "clientPlatform": "gOUh8Fh9", "deletable": false, "description": "09nhOPfw", "namespace": "RanxS7K7", "oauthAccessTokenExpiration": 26, "oauthAccessTokenExpirationTimeUnit": "DiyRkep1", "oauthClientType": "XLN89Z3N", "oauthRefreshTokenExpiration": 17, "oauthRefreshTokenExpirationTimeUnit": "VUoBBmNw", "redirectUri": "h075gueU", "scopes": ["SEWgyBwm", "gtkFXPzg", "PqN1pDPm"], "secret": "urJxXcrJ", "twoFactorEnabled": true}' --login_with_auth "Bearer foo"
iam-admin-get-clientsby-namespaceby-idv3 'YMV3wjB0' --login_with_auth "Bearer foo"
iam-admin-delete-client-v3 'OfOyPRsN' --login_with_auth "Bearer foo"
iam-admin-update-client-v3 '{"audiences": ["MWkMP07w", "cp6Z25wB", "AEKzpYwh"], "baseUri": "S44rCG3W", "clientName": "EDlPtofa", "clientPermissions": [{"action": 25, "resource": "17Jp2kNb", "schedAction": 9, "schedCron": "uiIIe7Kz", "schedRange": ["mXo7uhuK", "iwlAifXd", "iUYG0qWu"]}, {"action": 98, "resource": "fyQ1uveA", "schedAction": 0, "schedCron": "oMVZ56in", "schedRange": ["yYFUaHxX", "zfTKkbPu", "5W7XisdA"]}, {"action": 4, "resource": "8YMr3XXR", "schedAction": 12, "schedCron": "slbzgyLy", "schedRange": ["TdaU16sd", "SB2GYm34", "w9eeyQmI"]}], "clientPlatform": "FfEo6BaW", "deletable": false, "description": "WObbzjH4", "namespace": "0622CgJe", "oauthAccessTokenExpiration": 89, "oauthAccessTokenExpirationTimeUnit": "GH3ttOeR", "oauthRefreshTokenExpiration": 38, "oauthRefreshTokenExpirationTimeUnit": "8ZnCMtGC", "redirectUri": "pVQRRJcP", "scopes": ["sVtyCNlU", "6Lwqozn0", "x08EgaLK"], "twoFactorEnabled": false}' 'MVdt889v' --login_with_auth "Bearer foo"
iam-admin-update-client-permission-v3 '{"permissions": [{"action": 67, "resource": "KDkI2ALh"}, {"action": 90, "resource": "OfdtYW2h"}, {"action": 83, "resource": "YkNXeT9z"}]}' '5pECQ0uP' --login_with_auth "Bearer foo"
iam-admin-add-client-permissions-v3 '{"permissions": [{"action": 25, "resource": "V7yahhK7"}, {"action": 65, "resource": "7I35GTKj"}, {"action": 19, "resource": "cXdMMpjY"}]}' 'LiI75nzc' --login_with_auth "Bearer foo"
iam-admin-delete-client-permission-v3 '98' '3p1O2Y0C' 'lrpKkBNg' --login_with_auth "Bearer foo"
iam-retrieve-all-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-sso-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-third-party-login-platform-credential-v3 'gj6UsJaB' --login_with_auth "Bearer foo"
iam-add-third-party-login-platform-credential-v3 '{"ACSURL": "V9AcBUH9", "AWSCognitoRegion": "yilIf6Sf", "AWSCognitoUserPool": "tqHY8JO1", "AllowedClients": ["s0IvL0HD", "Hbdn71XF", "LyNHpV5D"], "AppId": "0jcffIpV", "AuthorizationEndpoint": "0PFAYX1C", "ClientId": "TxyOueej", "Environment": "YIkaCZUq", "FederationMetadataURL": "NIF2DLxa", "GenericOauthFlow": true, "IsActive": false, "Issuer": "qPAgosAY", "JWKSEndpoint": "wvJVasGz", "KeyID": "nBiJLvyq", "NetflixCertificates": {"encryptedPrivateKey": "5izaqFmg", "encryptedPrivateKeyName": "BkHMxLjW", "publicCertificate": "3mbWZDDy", "publicCertificateName": "DNwH4Y19", "rootCertificate": "ZSzM8oDz", "rootCertificateName": "6X4VM3IV"}, "OrganizationId": "sp0z4WSt", "PlatformName": "xCYjQVXF", "RedirectUri": "OerhBo5y", "RegisteredDomains": [{"affectedClientIDs": ["ckahTkxQ", "CIQ3WRRy", "GuEluHLA"], "domain": "Da96v8vz", "namespaces": ["cRVLmmfy", "0aFw4WeR", "9BDXsOlQ"], "roleId": "ommuWwdd"}, {"affectedClientIDs": ["T5PPx2GE", "Q24ttVIe", "YqV5h611"], "domain": "edOlSSRp", "namespaces": ["N9HEA2jk", "8pcW64Fe", "V3oHTPbB"], "roleId": "OnmlV7H9"}, {"affectedClientIDs": ["Zxwen7PV", "AhaNfIpL", "dnZ69vVN"], "domain": "fbSmxh7M", "namespaces": ["smPXUIEZ", "Hq2qXB4k", "D7S2Xp7G"], "roleId": "LtBeR0l7"}], "Secret": "kEsZwaGW", "TeamID": "Fyrm6aDm", "TokenAuthenticationType": "u7lj6w3F", "TokenClaimsMapping": {"cDNpEMuU": "QHDpjMvH", "6UM21csG": "cDAaR4Z7", "uReZLmVa": "lONY7lrb"}, "TokenEndpoint": "FqGJEY6i", "scopes": ["XelHLiKp", "rwwvenwF", "NFaOTzOd"]}' 'd7EzgukA' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-credential-v3 'zR6XlsIC' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-credential-v3 '{"ACSURL": "VCCNMYsF", "AWSCognitoRegion": "ndGkj8Zm", "AWSCognitoUserPool": "F96ohOCL", "AllowedClients": ["9dIgQpQz", "esDx57OP", "12Rs20eq"], "AppId": "bXAy0XDU", "AuthorizationEndpoint": "EqKweNCB", "ClientId": "qfELuOFa", "Environment": "UxrEOuCu", "FederationMetadataURL": "KOyIVu7N", "GenericOauthFlow": true, "IsActive": true, "Issuer": "v7xwf8ov", "JWKSEndpoint": "HQUoUOR8", "KeyID": "DG80M81n", "NetflixCertificates": {"encryptedPrivateKey": "bduITtoi", "encryptedPrivateKeyName": "BT7ashPi", "publicCertificate": "uigKpODi", "publicCertificateName": "EMEFWMug", "rootCertificate": "A0GhVoMB", "rootCertificateName": "JvlFcrJa"}, "OrganizationId": "QJ0yNTPX", "PlatformName": "XYiWU4is", "RedirectUri": "WSHsyGBC", "RegisteredDomains": [{"affectedClientIDs": ["DsGLSLxN", "KqG8YYjE", "k1jXV7Tl"], "domain": "svFxeIOC", "namespaces": ["sp5SOa3M", "6aYDgQWB", "wFi8FNLZ"], "roleId": "74IrJJgN"}, {"affectedClientIDs": ["mj5ItTyj", "qj8oR4Uv", "BOUCdL4u"], "domain": "VzNc9Ps7", "namespaces": ["dR0uw148", "eTG6y0Gh", "o6vqJhIe"], "roleId": "1s3w3Eto"}, {"affectedClientIDs": ["SVKUDAA2", "fEKNn2vR", "gZq0Hrao"], "domain": "gZxBAxIw", "namespaces": ["GHRSeOuE", "2Or60Xpz", "JVSFZpDI"], "roleId": "mFXTBgCH"}], "Secret": "yNKJV9gX", "TeamID": "HpsIa0ro", "TokenAuthenticationType": "Dans9QiC", "TokenClaimsMapping": {"5Qaotf3Z": "9XzeGxmq", "xkQpmegs": "dNrNqNxS", "sjCplkbn": "7WhOfHsI"}, "TokenEndpoint": "QHGLjdhD", "scopes": ["ZulSPv6k", "HF3fjAln", "T7dersLl"]}' 'E15Ay5ye' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-domain-v3 '{"affectedClientIDs": ["iHEBw3ZY", "gEBqrdsB", "yX4V35TC"], "assignedNamespaces": ["aprrNrSr", "hQFSiCb3", "pbX8BrXW"], "domain": "d0dmWMiz", "roleId": "FoYhPTi6"}' 'tEZdNP9U' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-domain-v3 '{"domain": "aF2rTvq7"}' 'EJndNe9O' --login_with_auth "Bearer foo"
iam-retrieve-sso-login-platform-credential 'Zy7qZ5Tj' --login_with_auth "Bearer foo"
iam-add-sso-login-platform-credential '{"acsUrl": "4OCv0cus", "apiKey": "0C9GkIjN", "appId": "x1o3VQiP", "federationMetadataUrl": "OnKOqrcu", "isActive": false, "redirectUri": "T2HRT2SN", "secret": "zMsGINJY", "ssoUrl": "t7WbgcrA"}' 'SjvbOyb9' --login_with_auth "Bearer foo"
iam-delete-sso-login-platform-credential-v3 '6rQZ26gJ' --login_with_auth "Bearer foo"
iam-update-sso-platform-credential '{"acsUrl": "vdlrGGUw", "apiKey": "4OZsiHfr", "appId": "Er8Lsymj", "federationMetadataUrl": "DdOoLuko", "isActive": false, "redirectUri": "ql28TBSD", "secret": "mPIT0pSj", "ssoUrl": "vMgGcPE9"}' 'cHIpJxG9' --login_with_auth "Bearer foo"
iam-admin-get-user-by-platform-user-idv3 'nPA0O4wN' 'PSyZkcN6' --login_with_auth "Bearer foo"
iam-get-admin-users-by-role-id-v3 'myR0jzsC' --login_with_auth "Bearer foo"
iam-admin-get-user-by-email-address-v3 --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-user-i-ds-v3 '{"userIds": ["TRdW5F30", "chavwLd0", "KglL9KAd"]}' --login_with_auth "Bearer foo"
iam-admin-invite-user-v3 '{"emailAddresses": ["WkHINlWg", "s5a4m3Dl", "Iop54ptD"], "isAdmin": false, "roles": ["6pZlStYt", "d6iNRDzq", "zGU3rePt"]}' --login_with_auth "Bearer foo"
iam-admin-list-users-v3 --login_with_auth "Bearer foo"
iam-admin-search-user-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-by-email-address-v3 '{"listEmailAddressRequest": ["X2b56nRY", "WNiPnYkn", "ubBNaCPU"]}' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v3 'SoUh1RAB' --login_with_auth "Bearer foo"
iam-admin-update-user-v3 '{"avatarUrl": "tuK825yK", "country": "UYqpPhTR", "dateOfBirth": "Efz39WFU", "displayName": "PIyx8oeT", "languageTag": "X9H290gD", "userName": "aY4jqbcR"}' 'GnW9vDoX' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v3 'sqgRrMmk' --login_with_auth "Bearer foo"
iam-admin-ban-user-v3 '{"ban": "5lLkZa7V", "comment": "eGhb9yIP", "endDate": "b6EHMMIK", "reason": "aAjYNE5a", "skipNotif": true}' 'iTMPPVVT' --login_with_auth "Bearer foo"
iam-admin-update-user-ban-v3 '{"enabled": true, "skipNotif": false}' 'FKO9qChb' 'lL4zG4ln' --login_with_auth "Bearer foo"
iam-admin-send-verification-code-v3 '{"context": "BPBYkUa8", "emailAddress": "rk4L79nE", "languageTag": "i6vVZywX"}' 'JZHxdNLT' --login_with_auth "Bearer foo"
iam-admin-verify-account-v3 '{"Code": "orIjBSPm", "ContactType": "p78Edgjp", "LanguageTag": "RDXtJSus", "validateOnly": true}' 'fx4qwEdg' --login_with_auth "Bearer foo"
iam-get-user-verification-code 'nRX1OwPP' --login_with_auth "Bearer foo"
iam-admin-get-user-deletion-status-v3 'vUbJZL2S' --login_with_auth "Bearer foo"
iam-admin-update-user-deletion-status-v3 '{"enabled": true}' '7cOU3le6' --login_with_auth "Bearer foo"
iam-admin-upgrade-headless-account-v3 '{"code": "6jofFtcK", "country": "e7oJK2CH", "dateOfBirth": "fHmAALC1", "displayName": "rbhBuiT4", "emailAddress": "f1JGxuJN", "password": "eVXNeaaq", "validateOnly": true}' 'Xh5LaTRU' --login_with_auth "Bearer foo"
iam-admin-delete-user-information-v3 'TgfvqYth' --login_with_auth "Bearer foo"
iam-admin-get-user-login-histories-v3 '5NlmloF5' --login_with_auth "Bearer foo"
iam-admin-reset-password-v3 '{"languageTag": "zdKtgTYF", "newPassword": "QxkdPBoS", "oldPassword": "GsH79DEH"}' '69zuMayq' --login_with_auth "Bearer foo"
iam-admin-update-user-permission-v3 '{"Permissions": [{"Action": 77, "Resource": "0mgRip3W", "SchedAction": 53, "SchedCron": "3Bbu1C0Y", "SchedRange": ["ql8Xo0qW", "WNLxyO8v", "ejyuTais"]}, {"Action": 2, "Resource": "t2USqtLA", "SchedAction": 48, "SchedCron": "kxvyLi0r", "SchedRange": ["Os0ChhuJ", "VF2pCma4", "WgjkcHFs"]}, {"Action": 100, "Resource": "nVRPFPB0", "SchedAction": 63, "SchedCron": "KschpwT0", "SchedRange": ["mjwO8LMG", "iV5fCcEg", "njUyXk3J"]}]}' 'AmhCR9hv' --login_with_auth "Bearer foo"
iam-admin-add-user-permissions-v3 '{"Permissions": [{"Action": 13, "Resource": "O8DnKgQc", "SchedAction": 4, "SchedCron": "JiocxzrE", "SchedRange": ["bCwd7BKG", "UIwrDoMb", "1dIIsMOZ"]}, {"Action": 9, "Resource": "KcAXPTI8", "SchedAction": 26, "SchedCron": "pMWDs1lW", "SchedRange": ["Wk2sg5A0", "67qNjSOu", "EayAMks3"]}, {"Action": 23, "Resource": "5Tlk0E4I", "SchedAction": 58, "SchedCron": "ptDS0J3K", "SchedRange": ["G8ilo7In", "4cliHhOU", "ubah8UIp"]}]}' 'e8HApIG6' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-bulk-v3 '[{"Action": 63, "Resource": "RvFpnvlr"}, {"Action": 58, "Resource": "9tPEGE2a"}, {"Action": 99, "Resource": "Gsr32jCj"}]' 'lbAqrk1t' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-v3 '37' 'sqfl66AT' 'NNljIcbx' --login_with_auth "Bearer foo"
iam-admin-get-user-platform-accounts-v3 '9AuNShPu' --login_with_auth "Bearer foo"
iam-admin-get-list-justice-platform-accounts 'srkBQeeV' --login_with_auth "Bearer foo"
iam-admin-get-user-mapping 'cCUl5yV7' 'VMGxEaSg' --login_with_auth "Bearer foo"
iam-admin-create-justice-user 'fOeADj2V' 'MN87LsTf' --login_with_auth "Bearer foo"
iam-admin-link-platform-account '{"platformId": "mlLkKueD", "platformUserId": "tJek4cxG"}' 'Ijb6RYYd' --login_with_auth "Bearer foo"
iam-admin-platform-unlink-v3 '{"platformNamespace": "VJScUbod"}' '5UZiB2Tm' 'Y3dW6aUp' --login_with_auth "Bearer foo"
iam-admin-platform-link-v3 '1Mc8Av2U' 'Clzd9zmW' 'qImGgdmT' --login_with_auth "Bearer foo"
iam-admin-delete-user-roles-v3 '["ttfD0xTa", "09gdSdJ7", "Me2fjKmj"]' '8sMT3VMA' --login_with_auth "Bearer foo"
iam-admin-save-user-role-v3 '[{"namespace": "S76l9GD6", "roleId": "CxVpTGUp"}, {"namespace": "xfOoGefK", "roleId": "GrW8ezaE"}, {"namespace": "bcsK6XSm", "roleId": "hQEcCOqA"}]' 'JD1o9R7V' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v3 'wxCWMMBq' 'TfKwzYxk' --login_with_auth "Bearer foo"
iam-admin-delete-user-role-v3 'U9soGzC0' 'hwjDVTnr' --login_with_auth "Bearer foo"
iam-admin-update-user-status-v3 '{"enabled": false, "reason": "qQCktBaz"}' 'O5nQLJVV' --login_with_auth "Bearer foo"
iam-admin-verify-user-without-verification-code-v3 'ccUIWKvY' --login_with_auth "Bearer foo"
iam-admin-update-client-secret-v3 '{"newSecret": "ux4Diaiv"}' 'e0c6IdvM' --login_with_auth "Bearer foo"
iam-admin-get-roles-v3 --login_with_auth "Bearer foo"
iam-admin-create-role-v3 '{"adminRole": true, "deletable": true, "isWildcard": false, "managers": [{"displayName": "t69DwRo7", "namespace": "FSUQtrfc", "userId": "2GA5ld6h"}, {"displayName": "O6Ors0WM", "namespace": "hJoWXoNC", "userId": "tmdzEIsk"}, {"displayName": "bFAvsL03", "namespace": "WH5MN6jF", "userId": "bYFFTv4a"}], "members": [{"displayName": "E3wFGF2G", "namespace": "BCkz2T7H", "userId": "pyQzqfl9"}, {"displayName": "ScxBDOQa", "namespace": "wWElw1Gv", "userId": "Qg1Im5h5"}, {"displayName": "AGCIwT3o", "namespace": "6khd32en", "userId": "fCHTEGHL"}], "permissions": [{"action": 81, "resource": "S5enWUUi", "schedAction": 70, "schedCron": "SuJFRwzW", "schedRange": ["xTAvYyq8", "j3bL9Kds", "VU6nmU6k"]}, {"action": 46, "resource": "S9bzoZps", "schedAction": 18, "schedCron": "id1cI6ep", "schedRange": ["DeDRjzmP", "et6Y9q9t", "1x2TSiam"]}, {"action": 6, "resource": "wG5eG9p2", "schedAction": 48, "schedCron": "8aG7o8lg", "schedRange": ["QiXxRylx", "MmNRP2xz", "3KhHPUOm"]}], "roleName": "wVBbX4qL"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v3 '3zOPaCuP' --login_with_auth "Bearer foo"
iam-admin-delete-role-v3 'Ky2pO92Y' --login_with_auth "Bearer foo"
iam-admin-update-role-v3 '{"deletable": false, "isWildcard": true, "roleName": "pkivgOvW"}' 'YOMUUYVR' --login_with_auth "Bearer foo"
iam-admin-get-role-admin-status-v3 'BjFB86wV' --login_with_auth "Bearer foo"
iam-admin-update-admin-role-status-v3 'XWkjC0lo' --login_with_auth "Bearer foo"
iam-admin-remove-role-admin-v3 'd5jNM8nd' --login_with_auth "Bearer foo"
iam-admin-get-role-managers-v3 'QUfSCxPr' --login_with_auth "Bearer foo"
iam-admin-add-role-managers-v3 '{"managers": [{"displayName": "DAnAqttn", "namespace": "PJnVxgxm", "userId": "iShWykJR"}, {"displayName": "NhTKIwfK", "namespace": "9M5oeXhS", "userId": "mwtMLNYo"}, {"displayName": "49epI82C", "namespace": "KtyUjVus", "userId": "awDfNJCy"}]}' '5xVK2MF1' --login_with_auth "Bearer foo"
iam-admin-remove-role-managers-v3 '{"managers": [{"displayName": "fIzcglhV", "namespace": "ZMYkPU8J", "userId": "G0v8VXfr"}, {"displayName": "xNIbrY11", "namespace": "686yvkiK", "userId": "IVAYoMl6"}, {"displayName": "53K5LcWT", "namespace": "MvWNy1AX", "userId": "FKr4EbAm"}]}' 'zMTYgHia' --login_with_auth "Bearer foo"
iam-admin-get-role-members-v3 'gRpVfhMC' --login_with_auth "Bearer foo"
iam-admin-add-role-members-v3 '{"members": [{"displayName": "WqiFhJ54", "namespace": "yQilS269", "userId": "GKUjEKlA"}, {"displayName": "qgAeQbLg", "namespace": "Se5VEW5y", "userId": "gBiRJhjm"}, {"displayName": "GqNvSv4V", "namespace": "dTOyNCNg", "userId": "LdXtE1MD"}]}' 'XeEUYDyJ' --login_with_auth "Bearer foo"
iam-admin-remove-role-members-v3 '{"members": [{"displayName": "lapIBGd4", "namespace": "areHLKMg", "userId": "EXK8rJxe"}, {"displayName": "yVejoKA7", "namespace": "FI7K6U49", "userId": "Z3vyZS2Y"}, {"displayName": "4jLwuqTC", "namespace": "oqv7FSAX", "userId": "OXkP1ZDb"}]}' '4aZpQSGU' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v3 '{"permissions": [{"action": 81, "resource": "CXhoDxFC", "schedAction": 1, "schedCron": "SpKctJwa", "schedRange": ["0pl4dTgu", "qq4UV4d1", "aYztSo8D"]}, {"action": 45, "resource": "I4OzSY2D", "schedAction": 73, "schedCron": "JyfD6btM", "schedRange": ["AqIrUuuN", "ecWtudD9", "YZ9vGfZl"]}, {"action": 65, "resource": "CwcTy1is", "schedAction": 47, "schedCron": "eEyIVMdq", "schedRange": ["tYSzLLBg", "AX4lUqvr", "DNDAUuvq"]}]}' '63Ac7dq6' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v3 '{"permissions": [{"action": 53, "resource": "GtKdUmYS", "schedAction": 68, "schedCron": "VPDPuEzf", "schedRange": ["4aO396i8", "MZTx7BGj", "LSH0HICg"]}, {"action": 14, "resource": "LQBJW9HI", "schedAction": 42, "schedCron": "J3pZEx8l", "schedRange": ["dll0IVnl", "VvEY7hjw", "ErNr5hQW"]}, {"action": 87, "resource": "vJMo1VVG", "schedAction": 0, "schedCron": "dDQ16AMn", "schedRange": ["l0JpOSwD", "1CEQk9W6", "diMttSdU"]}]}' 'kahMlXbx' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v3 '["9HHc5pKG", "k8wcPHsT", "b1vmtSX7"]' 'HcejfAfs' --login_with_auth "Bearer foo"
iam-admin-delete-role-permission-v3 '41' 'UbCWzVra' 'C3QzeYos' --login_with_auth "Bearer foo"
iam-admin-get-my-user-v3 --login_with_auth "Bearer foo"
iam-user-authentication-v3 'Jdup9ai6' '219yNFdX' '5DaSmAF1' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-authentication-with-platform-link-v3 '3ihYbcyQ' 'Pltt6xE4' 'lGgsDs5F' 'ebVgG8v7' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v3 'UehQ8gcz' --login_with_auth "Bearer foo"
iam-get-country-location-v3 --login_with_auth "Bearer foo"
iam-logout --login_with_auth "Bearer foo"
iam-request-game-token-code-response-v3 'VQeKbAuC' --login_with_auth "Bearer foo"
iam-admin-retrieve-user-third-party-platform-token-v3 'L975hGPq' 'GABAIM2l' --login_with_auth "Bearer foo"
iam-revoke-user-v3 'ihXUAXrM' --login_with_auth "Bearer foo"
iam-authorize-v3 'vHgmpknO' 'code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-introspection-v3 'Hp7hTHoP' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-jwksv3 --login_with_auth "Bearer foo"
iam-send-mfa-authentication-code '4r1PYVrV' 'pqkrZOHd' 'LsZDpY4O' --login_with_auth "Bearer foo"
iam-change2fa-method 'pgoGOuZG' 'Bj9cSVlg' --login_with_auth "Bearer foo"
iam-verify2fa-code 'kZsRGdfd' 'C96GFwfY' 'MzXxCxY5' 'false' --login_with_auth "Bearer foo"
iam-retrieve-user-third-party-platform-token-v3 'K8d17gxC' 'dnTQQ8uv' --login_with_auth "Bearer foo"
iam-auth-code-request-v3 'eK0mCrJc' 'rn2VOq9X' --login_with_auth "Bearer foo"
iam-platform-token-grant-v3 'OSZWE7YA' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-revocation-list-v3 --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-revocation-v3 'keKjKuoP' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-grant-v3 'refresh_token' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-verify-token-v3 'bjWGxFhe' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-platform-authentication-v3 'lBNWIxTj' 'y2RxKFZf' --login_with_auth "Bearer foo"
iam-public-get-input-validations --login_with_auth "Bearer foo"
iam-public-get-country-age-restriction-v3 'TeQQoE61' --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-public-v3 --login_with_auth "Bearer foo"
iam-retrieve-active-oidc-clients-public-v3 'iHEDbpXQ' --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["BnODmNF7", "cNvpYUvn", "0yG1rFXT"]}' 'bE3AE7rG' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv3 'XJIFYod5' 'sfWhFELk' --login_with_auth "Bearer foo"
iam-public-get-async-status 'DgDUvOrA' --login_with_auth "Bearer foo"
iam-public-search-user-v3 --login_with_auth "Bearer foo"
iam-public-create-user-v3 '{"PasswordMD5Sum": "DTbmNyT7", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "4LKjzetc", "policyId": "THHezAZb", "policyVersionId": "ckxhjkTO"}, {"isAccepted": false, "localizedPolicyVersionId": "vDdCyQB3", "policyId": "rWdkiOZ4", "policyVersionId": "nQ1R2u25"}, {"isAccepted": true, "localizedPolicyVersionId": "pon4ck1L", "policyId": "fEdSo2mx", "policyVersionId": "QJqyogme"}], "authType": "I4MZUs8s", "code": "DNTbGU5X", "country": "zrAxtuR7", "dateOfBirth": "kalRpG3S", "displayName": "v5NVeKoQ", "emailAddress": "jzTq4p5E", "password": "r6xtqlEl", "reachMinimumAge": true}' --login_with_auth "Bearer foo"
iam-check-user-availability 'MfwlQFOM' 'iZ6Df1ZZ' --login_with_auth "Bearer foo"
iam-public-bulk-get-users '{"userIds": ["3D7Gy7Fo", "H82fGGkC", "oYVVXoPI"]}' --login_with_auth "Bearer foo"
iam-public-send-registration-code '{"emailAddress": "HTddHWmM", "languageTag": "UDYBX1Cj"}' --login_with_auth "Bearer foo"
iam-public-verify-registration-code '{"code": "Di2S0Fxg", "emailAddress": "FXg6GljK"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v3 '{"emailAddress": "BFd1JYJa", "languageTag": "CAsnaPos"}' --login_with_auth "Bearer foo"
iam-get-admin-invitation-v3 'q2K7mpv2' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v3 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "73ir9B6c", "policyId": "AAV0uBko", "policyVersionId": "iQ14nA1h"}, {"isAccepted": true, "localizedPolicyVersionId": "s0pVgwT2", "policyId": "wLlYeWGK", "policyVersionId": "fEb0o8vh"}, {"isAccepted": false, "localizedPolicyVersionId": "ma8a1AkK", "policyId": "NQU2JxvT", "policyVersionId": "mpWAAEzq"}], "authType": "EMAILPASSWD", "country": "1oDwjVlh", "dateOfBirth": "YPXz77bJ", "displayName": "Hygpn1vS", "password": "2F2gSjUD", "reachMinimumAge": false}' 'FIzjcz7A' --login_with_auth "Bearer foo"
iam-update-user-v3 '{"avatarUrl": "5EpkMi2i", "country": "rM43szTo", "dateOfBirth": "7RU1zEhI", "displayName": "IZGbCBbI", "languageTag": "paklYzxH", "userName": "n2w0YCRG"}' --login_with_auth "Bearer foo"
iam-public-partial-update-user-v3 '{"avatarUrl": "AyiOaL9r", "country": "pq77iHq0", "dateOfBirth": "glgotSMu", "displayName": "cO7JHcZi", "languageTag": "3Sit9HQ1", "userName": "miRQjDL6"}' --login_with_auth "Bearer foo"
iam-public-send-verification-code-v3 '{"context": "Eq7DX4Sc", "emailAddress": "detajTLC", "languageTag": "r5zJtSoM"}' --login_with_auth "Bearer foo"
iam-public-user-verification-v3 '{"code": "1rS6URk1", "contactType": "mPgDooPk", "languageTag": "23UZ4yhl", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v3 '{"code": "jkVxceP6", "country": "1AtN1VEr", "dateOfBirth": "DoCHTI1h", "displayName": "swM0cCEp", "emailAddress": "plwgI8qQ", "password": "GcCaUPuf", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-verify-headless-account-v3 '{"emailAddress": "IPushHEQ", "password": "XBcTBEEI"}' --login_with_auth "Bearer foo"
iam-public-update-password-v3 '{"languageTag": "OW9CpbSe", "newPassword": "wOt0p68s", "oldPassword": "znmlE5ug"}' --login_with_auth "Bearer foo"
iam-public-create-justice-user 'QGDRZ5zj' --login_with_auth "Bearer foo"
iam-public-platform-link-v3 '1VuTTVcb' 'HVNlJvqu' --login_with_auth "Bearer foo"
iam-public-platform-unlink-v3 '{"platformNamespace": "JkG2yQYb"}' 'RWkgcEy2' --login_with_auth "Bearer foo"
iam-public-platform-unlink-all-v3 'mbVDpInd' --login_with_auth "Bearer foo"
iam-public-force-platform-link-v3 'qhBSjhmO' '9p3eVJa3' --login_with_auth "Bearer foo"
iam-public-web-link-platform 'oyjHyJvS' --login_with_auth "Bearer foo"
iam-public-web-link-platform-establish '2ar2y7q2' '5Aedma31' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"code": "58UzVfBJ", "emailAddress": "l9o2AaOn", "newPassword": "6DeSAlzN"}' --login_with_auth "Bearer foo"
iam-public-get-user-by-user-id-v3 'iNJisVmH' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 'VW2dAqd8' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 'beKvn7Y4' --login_with_auth "Bearer foo"
iam-public-get-user-information-v3 'NJHalglb' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 'hwzbjkia' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 '4skuIkrl' --login_with_auth "Bearer foo"
iam-public-list-justice-platform-accounts-v3 '3R0Ggm3z' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "zEPMQdLQ", "platformUserId": "XvIIUnW4"}' 'DiAHXzIg' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["0PNbdYZM", "cnPNRnRg", "nTrqPz1l"], "requestId": "VE1cZHyt"}' 'DH8uPP0s' --login_with_auth "Bearer foo"
iam-public-get-publisher-user-v3 'dQx9f4Q5' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 'yDv9Ek3V' 'xvBiJIhr' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 'uqg8pGHo' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-public-send-verification-link-v3 '{"languageTag": "lWaQhwgr"}' --login_with_auth "Bearer foo"
iam-public-verify-user-by-link-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler 'Nz6sKOgX' '8IwKy3Wu' --login_with_auth "Bearer foo"
iam-login-sso-client 'nHqIXqGi' --login_with_auth "Bearer foo"
iam-logout-sso-client 'bogklewK' --login_with_auth "Bearer foo"
iam-request-game-token-response-v3 'PYJvFA1S' --login_with_auth "Bearer foo"
iam-admin-get-devices-by-user-v4 --login_with_auth "Bearer foo"
iam-admin-get-banned-devices-v4 --login_with_auth "Bearer foo"
iam-admin-get-user-device-bans-v4 'EJJSwG2l' --login_with_auth "Bearer foo"
iam-admin-ban-device-v4 '{"comment": "nMX36Z0W", "deviceId": "k8E1wmAB", "deviceType": "jbKScVdl", "enabled": false, "endDate": "ZSRNkg8M", "ext": {"RwIdYIY3": {}, "8zh7jIAb": {}, "pGPRElGu": {}}, "reason": "4CrKsFxV"}' --login_with_auth "Bearer foo"
iam-admin-get-device-ban-v4 'v0KqQouw' --login_with_auth "Bearer foo"
iam-admin-update-device-ban-v4 '{"enabled": true}' 'TZu55J0u' --login_with_auth "Bearer foo"
iam-admin-generate-report-v4 'Id28v2Kq' --login_with_auth "Bearer foo"
iam-admin-get-device-types-v4 --login_with_auth "Bearer foo"
iam-admin-get-device-bans-v4 '0BU9cmWc' --login_with_auth "Bearer foo"
iam-admin-decrypt-device-v4 '7LsanHBC' --login_with_auth "Bearer foo"
iam-admin-unban-device-v4 '7dYIHQID' --login_with_auth "Bearer foo"
iam-admin-get-users-by-device-v4 '6lG9W5kL' --login_with_auth "Bearer foo"
iam-admin-create-test-users-v4 '{"count": 38}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["62FvFl20", "Jn9ITC6p", "uF3L6wqa"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "1sCVPv7V", "country": "wuTlHMOr", "dateOfBirth": "FuGTiQJH", "displayName": "tG0TzLU1", "languageTag": "juODjqZB", "userName": "Ha8MRMms"}' '5mCkn0uJ' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "PyQ6NIx5", "emailAddress": "K59uwBLw"}' 'Tafhrzuw' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 'yaRzR0X4' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 'yk3jdBkP' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["5UalUPwI", "tK83HUjI", "yy1TMkze"], "roleId": "0dKDqWKN"}' 'bywvAT1L' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["EuvNyBhU", "VQ1ZRh7X", "uU5XP4o1"], "roleId": "SVKalrhP"}' 'ffmicJIX' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["ZCfenMnf", "aqzBmMjI", "AFqiIegm"], "roleId": "wo3ShXVZ"}' 'q6cbxuMb' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "2xB4l6Np"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 'pghv6xvy' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 'tdHsusI9' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "MbzQq6WG"}' 'wcejctF0' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 42, "resource": "fYvTQ3jW", "schedAction": 83, "schedCron": "eSH6Bh7R", "schedRange": ["9D2vyPla", "UMFT5xjG", "tfEJbmYQ"]}, {"action": 13, "resource": "ej6nOPEN", "schedAction": 45, "schedCron": "lAALM9MH", "schedRange": ["qMk9vxLQ", "5Kn6iQB6", "pHkVD0ZB"]}, {"action": 75, "resource": "SN9XseGN", "schedAction": 62, "schedCron": "ur070GWM", "schedRange": ["m5sYdhna", "kDRTgqS3", "zDY8THz6"]}]}' 'NgD7nKFF' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 68, "resource": "bzv0CyXG", "schedAction": 82, "schedCron": "fTyjnYEP", "schedRange": ["jzhho9Iq", "6MJyKK82", "amzG3jtk"]}, {"action": 31, "resource": "S7iBJl3s", "schedAction": 9, "schedCron": "mKxAywwV", "schedRange": ["c2vIlqCF", "cY84Ic4t", "98cYfZi4"]}, {"action": 7, "resource": "7QM00GHQ", "schedAction": 23, "schedCron": "WGiH1Fec", "schedRange": ["yU3uypfK", "jvoYquLd", "BcS6A9xV"]}]}' 'gP6RGhsj' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["WSRlA5ca", "wBUGgxSg", "HoODGNaX"]' 'nox0Jfwg' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'ymsTdpXu' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["3wdLS2FI", "yGJ78ojC", "kb39UGSR"], "namespace": "0l0AAEiY", "userId": "tpamMiR6"}' 'BLzQ6Ig9' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "eq4fbgTH", "userId": "yJXWPhdf"}' 'NakZz6Bh' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "T7mf67VG", "country": "vk0HxE1a", "dateOfBirth": "bom1n7NG", "displayName": "M7wehjpH", "languageTag": "Gr8xVMLG", "userName": "Gt3PtyxF"}' --login_with_auth "Bearer foo"
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
iam-admin-enable-my-email-v4 'siMK0a5V' --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 'SFCJLMtS' --login_with_auth "Bearer foo"
iam-admin-invite-user-v4 '{"assignedNamespaces": ["d4bnDNBe", "kizvVJO1", "QVaRDQsd"], "emailAddresses": ["Rxq6inYM", "4z2Aip6r", "yTLEXjtK"], "isAdmin": false, "roleId": "ABFM0qSC"}' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "Oe55ZSWt", "policyId": "JAt1RZma", "policyVersionId": "RVdNZQ6F"}, {"isAccepted": false, "localizedPolicyVersionId": "URGN9ZHk", "policyId": "fWGjdGNC", "policyVersionId": "tqG1viWi"}, {"isAccepted": false, "localizedPolicyVersionId": "4bPUnafr", "policyId": "8QE8Hal5", "policyVersionId": "dsR2Dhie"}], "authType": "EMAILPASSWD", "country": "WSsEU9HF", "dateOfBirth": "KYeaYuU7", "displayName": "VPnfHoHb", "emailAddress": "j9OBNbwl", "password": "4W0EiTGF", "passwordMD5Sum": "WfJhb0Fs", "username": "KmmcGoV6", "verified": false}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "kHqOYHKH", "policyId": "8qUsxOzQ", "policyVersionId": "PkxdtVCG"}, {"isAccepted": true, "localizedPolicyVersionId": "0OtQT2ug", "policyId": "z3PmfaK3", "policyVersionId": "gMWMsh9u"}, {"isAccepted": false, "localizedPolicyVersionId": "ZETVkpId", "policyId": "wyJ4jDit", "policyVersionId": "DXQRsR0Q"}], "authType": "EMAILPASSWD", "code": "QnyHkVAr", "country": "pVMXl9GX", "dateOfBirth": "QJhcBvcn", "displayName": "ImhkrXac", "emailAddress": "uxOZtcxi", "password": "SJE65gs7", "passwordMD5Sum": "Q7K60kYC", "reachMinimumAge": true, "username": "xnxQu7RK"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "NKfqIwqs", "policyId": "GUqNoWkR", "policyVersionId": "QWH754Kf"}, {"isAccepted": true, "localizedPolicyVersionId": "2jE3VqBB", "policyId": "mg7DnI6F", "policyVersionId": "BfXzOs0x"}, {"isAccepted": true, "localizedPolicyVersionId": "iYoSIkVd", "policyId": "YWZT81dS", "policyVersionId": "xA90Gpl1"}], "authType": "EMAILPASSWD", "country": "PIukouZT", "dateOfBirth": "1RVDuqGs", "displayName": "ZxT7q2oJ", "password": "Z8FFxcX6", "reachMinimumAge": false, "username": "jhENyKWo"}' 'H7uSYzS1' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "vQNOESDf", "country": "Q0fxQKD4", "dateOfBirth": "6cwrH5rl", "displayName": "cBZJZWui", "languageTag": "XfuuyOIo", "userName": "uKm6Bd7j"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "Zs0MO90y", "emailAddress": "Vr3AsqYw"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "IwPofor0", "country": "05hQJaGI", "dateOfBirth": "i4XmNsxN", "displayName": "SqEwsGQP", "emailAddress": "LhTfzRn1", "password": "7WUNbvgQ", "reachMinimumAge": false, "username": "KX7uY4UW", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"emailAddress": "WlrVAeQG", "password": "uQFOd389", "username": "ISHJJmlY"}' --login_with_auth "Bearer foo"
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
iam-public-enable-my-email-v4 'IPjHwt9b' --login_with_auth "Bearer foo"
iam-public-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-public-make-factor-my-default-v4 'YP3Fq2Ql' --login_with_auth "Bearer foo"
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
    '[{"field": "nXQqOfDR", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "blockedWord": ["yjvhAeXa", "U1QrxmHG", "qNdjC5wB"], "description": [{"language": "eZD9u1Go", "message": ["A1DP0GfU", "wxDXTT3c", "AX9RswKp"]}, {"language": "H1FTRbQI", "message": ["Ld1NXwuz", "mSrYPQqY", "XUrEEMCj"]}, {"language": "V5Rdrs3U", "message": ["12e4GJaD", "zEr19Tkp", "rTyUW5HL"]}], "isCustomRegex": false, "letterCase": "0fuK1vbw", "maxLength": 39, "maxRepeatingAlphaNum": 63, "maxRepeatingSpecialCharacter": 7, "minCharType": 84, "minLength": 77, "regex": "BSgoHjzX", "specialCharacterLocation": "npsmWmSV", "specialCharacters": ["Q1ouNp4o", "yGfytnV7", "RWu2qN2r"]}}, {"field": "AS5p1DRJ", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "blockedWord": ["dUWq7Izj", "z8Fp3oK4", "QthgZVdK"], "description": [{"language": "nLXVAUDi", "message": ["ckAAJDeS", "MmD6Zc22", "UtagjP0J"]}, {"language": "NnILqigG", "message": ["CNNhpI22", "2b4S2lCT", "s103gERu"]}, {"language": "LwYtvjsE", "message": ["ih865A39", "0IJl8vs1", "jy518gR4"]}], "isCustomRegex": false, "letterCase": "5rUnjKpi", "maxLength": 12, "maxRepeatingAlphaNum": 45, "maxRepeatingSpecialCharacter": 5, "minCharType": 35, "minLength": 89, "regex": "aMFCjXBG", "specialCharacterLocation": "gncEB1Sv", "specialCharacters": ["HhyNzeC8", "bdtXl5p1", "jb5G0oGT"]}}, {"field": "qKX0bhgG", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "blockedWord": ["OPfsQgG0", "5gfENWQa", "Fpj4YmkA"], "description": [{"language": "vRJPghJq", "message": ["PKJVExUG", "EqMPaqrR", "MPfMoTS4"]}, {"language": "AEwT9fkx", "message": ["P58qGmDt", "pGDua0zU", "EE8eEdyu"]}, {"language": "q06MyBoS", "message": ["bJTVNwq2", "NHXobjif", "Nyey5avG"]}], "isCustomRegex": true, "letterCase": "cMa2uvvf", "maxLength": 39, "maxRepeatingAlphaNum": 85, "maxRepeatingSpecialCharacter": 63, "minCharType": 59, "minLength": 1, "regex": "VFWN5IRL", "specialCharacterLocation": "5zh1Ggeo", "specialCharacters": ["p2Zo6CJf", "YzzoieMs", "YuPmNTj8"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    'zeJ0Fksa' \
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
    '{"ageRestriction": 45, "enable": true}' \
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
    '{"ageRestriction": 54}' \
    'sI74fXYn' \
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
    '{"ban": "L5lnG7ZG", "comment": "aSsfsaxp", "endDate": "XQYd2rrm", "reason": "pIOoSI7K", "skipNotif": true, "userIds": ["qIbJsJXS", "2IqXVykf", "DhMmh17f"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "lSl76hGd", "userId": "xqcsTzC2"}, {"banId": "yQOCx9Ad", "userId": "PE3sX4jA"}, {"banId": "mImJDgLt", "userId": "8fK3zzEJ"}]}' \
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
    '{"audiences": ["ooaPHHLo", "sLe1SohM", "mqS714cX"], "baseUri": "1PmdmT4x", "clientId": "EfooggHg", "clientName": "xiZbjsqI", "clientPermissions": [{"action": 99, "resource": "uyLgVkpy", "schedAction": 91, "schedCron": "LvwlmMdi", "schedRange": ["R1Fk0KTy", "i9puulAZ", "uvLki87A"]}, {"action": 95, "resource": "BlCG3wis", "schedAction": 64, "schedCron": "unWMkWKU", "schedRange": ["ufklmanS", "gA7GHRJa", "E3ZpLsz7"]}, {"action": 24, "resource": "OWQVqoC3", "schedAction": 34, "schedCron": "y6N5OaBI", "schedRange": ["R3G7lWce", "Fq0zFaWD", "5WYolXeb"]}], "clientPlatform": "gB7huTqX", "deletable": false, "description": "PjCwWqru", "namespace": "VAlne2F5", "oauthAccessTokenExpiration": 21, "oauthAccessTokenExpirationTimeUnit": "gJPFXKPX", "oauthClientType": "furTnV1R", "oauthRefreshTokenExpiration": 83, "oauthRefreshTokenExpirationTimeUnit": "jcfAm923", "redirectUri": "wtz5OOYJ", "scopes": ["fzVnoZKB", "YRRwQZXN", "pHCFZrkD"], "secret": "s9H0zrOS", "twoFactorEnabled": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    'VXTm3OvL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'APf1lN7f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["vFylNL1o", "TTrG5jiF", "SLHRozFq"], "baseUri": "CODpCFyr", "clientName": "anaocZPX", "clientPermissions": [{"action": 14, "resource": "gDbN9rpj", "schedAction": 89, "schedCron": "8NnrxCs8", "schedRange": ["daSSlXpn", "FxcHnltq", "khULfsWr"]}, {"action": 13, "resource": "iLwQoJFa", "schedAction": 40, "schedCron": "JQdDzkWe", "schedRange": ["B8SMiXl6", "HVcdBF7T", "byOvX902"]}, {"action": 56, "resource": "Ke8qDiTh", "schedAction": 53, "schedCron": "akoJBUZu", "schedRange": ["gMqYIMv1", "FH21pU3A", "MOyLG0vc"]}], "clientPlatform": "JFW0jqUC", "deletable": false, "description": "3DGh4iQg", "namespace": "9TMtzPiK", "oauthAccessTokenExpiration": 88, "oauthAccessTokenExpirationTimeUnit": "7PYGf0vN", "oauthRefreshTokenExpiration": 23, "oauthRefreshTokenExpirationTimeUnit": "8cfCgQQH", "redirectUri": "w92zjKrG", "scopes": ["ibfd6Dnf", "bj0MnW9d", "iQjCwnk9"], "twoFactorEnabled": true}' \
    'HGP7dumL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 60, "resource": "9QoP3msA"}, {"action": 25, "resource": "c1loEyCW"}, {"action": 67, "resource": "mcb6W3jI"}]}' \
    'ElomAtr3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 66, "resource": "JU76dcgj"}, {"action": 25, "resource": "W7miBwHh"}, {"action": 73, "resource": "LmgP8Afn"}]}' \
    'dYkMjnHV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '57' \
    'FMpDV0lG' \
    'OXoFl0wj' \
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
    '4MFa21H4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "adWohJ9E", "AWSCognitoRegion": "B3zAz4I5", "AWSCognitoUserPool": "2pd3JiPg", "AllowedClients": ["qbaT7WdE", "aUnFGKMj", "VskioBwj"], "AppId": "2rYiKr2C", "AuthorizationEndpoint": "E3HHVKFj", "ClientId": "F9Qd9bDP", "Environment": "JU2rdsNQ", "FederationMetadataURL": "2pnzBfd4", "GenericOauthFlow": false, "IsActive": false, "Issuer": "GrdNckIC", "JWKSEndpoint": "3YHk8fIy", "KeyID": "fWyM428M", "NetflixCertificates": {"encryptedPrivateKey": "UNp7IvjH", "encryptedPrivateKeyName": "oXSeA9R4", "publicCertificate": "eE7AEJpL", "publicCertificateName": "OYfZeYYO", "rootCertificate": "RTGowt4e", "rootCertificateName": "VZTJRLXQ"}, "OrganizationId": "mIzhW4Ch", "PlatformName": "iyXoh86Z", "RedirectUri": "QdAEL1Lz", "RegisteredDomains": [{"affectedClientIDs": ["icKQw3lH", "S2Hm0KZ1", "RLBJ7VcA"], "domain": "PXohlQ8P", "namespaces": ["g5pA2OeN", "Mm27C8T2", "5CQbohwX"], "roleId": "8Eihfqw8"}, {"affectedClientIDs": ["1zxJWo4N", "TQIWgYOv", "DUnHE0lf"], "domain": "sMQbjWYm", "namespaces": ["2Z5rXqAC", "Zhn44sEB", "oNHyQSBb"], "roleId": "o5ZCT0du"}, {"affectedClientIDs": ["VChjhK0R", "YTDl8dSl", "7jQVEYLQ"], "domain": "x1dsC3BQ", "namespaces": ["mdEI9IJt", "joG8HsfO", "SFesXsFH"], "roleId": "WmiymMJJ"}], "Secret": "6FSmJ0A1", "TeamID": "bQaCgWSX", "TokenAuthenticationType": "1Q3S9tdT", "TokenClaimsMapping": {"SX11u3CI": "NgLoGwKt", "1tpbkAgn": "323TwBUe", "1dLIATOU": "gH6LodpB"}, "TokenEndpoint": "U3xhgne9", "scopes": ["ZYHt9ik1", "y5Waz0yx", "MzeCOaGU"]}' \
    'KMzKv5jq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    'wCf9CVvW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "p7XpsIfR", "AWSCognitoRegion": "GPvOkX14", "AWSCognitoUserPool": "1DKgWzuj", "AllowedClients": ["NjmwaKOL", "n6oWjGsc", "Mn2QnY16"], "AppId": "IpdyXPy2", "AuthorizationEndpoint": "plQZfhyJ", "ClientId": "7GBfTvR7", "Environment": "fLnqXApj", "FederationMetadataURL": "1ZYVS8G0", "GenericOauthFlow": true, "IsActive": false, "Issuer": "RoqDT1cj", "JWKSEndpoint": "byLcYCUj", "KeyID": "Dq2WnVaE", "NetflixCertificates": {"encryptedPrivateKey": "X1Bld20g", "encryptedPrivateKeyName": "my40OyGN", "publicCertificate": "MuEdj9FV", "publicCertificateName": "DKqmuzUB", "rootCertificate": "eF5HC5jz", "rootCertificateName": "xcUejLAM"}, "OrganizationId": "SDQTqiJ7", "PlatformName": "cG06dOo4", "RedirectUri": "Sr8STgxQ", "RegisteredDomains": [{"affectedClientIDs": ["7yFbwxqN", "DUbroIoB", "9U9tn21D"], "domain": "EDYIwMvv", "namespaces": ["3erC7byc", "K6sQaFu4", "kT450Pog"], "roleId": "byFxT7OS"}, {"affectedClientIDs": ["NO3nTeDu", "C7ewXs7B", "peCZ74BI"], "domain": "zQbluNJ1", "namespaces": ["6c91bnLo", "qgi5p8Gd", "bXAegsyE"], "roleId": "jEkaTBzN"}, {"affectedClientIDs": ["UTBA4hzk", "M5sCQpW5", "BXvaapf8"], "domain": "Yr6Euqz9", "namespaces": ["OhcEI3Eq", "gZcOiO6m", "7vQqYPJL"], "roleId": "RTgT9Xyc"}], "Secret": "WdtvegP3", "TeamID": "K7aZKZHg", "TokenAuthenticationType": "sEhYtBsg", "TokenClaimsMapping": {"YOuBTvi8": "kyOUYsFO", "DLzMFRF8": "kxUHgxW3", "xZvkiecO": "Ccn0pMtx"}, "TokenEndpoint": "yiQhjWlM", "scopes": ["dZOPMFnJ", "SzYIi2SR", "l9MPjPCq"]}' \
    'taShvJXZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["RjRrFWzo", "Uwf8vh8Q", "8gVe215Y"], "assignedNamespaces": ["66iKYn2C", "hYFzOEG0", "j2fv9nZU"], "domain": "ukTiEtL5", "roleId": "03OwQZw4"}' \
    'wUS5ocmM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "3OOtHXid"}' \
    'bkqiHVpn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    '5bSIhKph' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "xI9E30jG", "apiKey": "n4N55fjp", "appId": "gn00CSwz", "federationMetadataUrl": "b5QaQ03b", "isActive": false, "redirectUri": "qP1PdNnK", "secret": "THVkQGNa", "ssoUrl": "6onEgHTN"}' \
    '9BemF27J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'rBGL2k6D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "a3voM1m7", "apiKey": "egiWdd3O", "appId": "X6IMYq2w", "federationMetadataUrl": "MojLOPeD", "isActive": false, "redirectUri": "9K6wrjgo", "secret": "TWhmYIih", "ssoUrl": "wQ51lfiE"}' \
    'i2t2OQjN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'NdkHI9og' \
    'CEdYqF3D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'YY6odigr' \
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
    '{"userIds": ["V8z99kn5", "fV3lKP3E", "HEz8eHib"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["rtOKY4ip", "nRW1aBpw", "gemFLcai"], "isAdmin": true, "roles": ["CjH8y7aI", "5wmQPqHh", "EQrD0eZy"]}' \
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
    '{"listEmailAddressRequest": ["PwPK5jfv", "1TP6unVi", "xelY2Inp"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'AdminGetBulkUserByEmailAddressV3' test.out

#- 149 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'VmY2U2sK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'AdminGetUserByUserIdV3' test.out

#- 150 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "m4AGeHcK", "country": "2lK55Q7h", "dateOfBirth": "IfwwowRi", "displayName": "SkRLtAVB", "languageTag": "L3T2Kv25", "userName": "5SsmijY0"}' \
    'WysMsvT8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AdminUpdateUserV3' test.out

#- 151 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'GtSceZGc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'AdminGetUserBanV3' test.out

#- 152 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "Ek3HZyF6", "comment": "N08C7FCS", "endDate": "aIv4h22D", "reason": "0umIcMXG", "skipNotif": false}' \
    'eaqh1Qip' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'AdminBanUserV3' test.out

#- 153 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": true, "skipNotif": true}' \
    'vLoskmm4' \
    'wm39VK0F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AdminUpdateUserBanV3' test.out

#- 154 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "ycWh0WWC", "emailAddress": "0wU5RChR", "languageTag": "6fGN1SK7"}' \
    'qeWMHAxc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'AdminSendVerificationCodeV3' test.out

#- 155 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "P5OCMAg4", "ContactType": "myKfS67H", "LanguageTag": "1Tp9u1Jf", "validateOnly": true}' \
    'Y1QjVQfh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminVerifyAccountV3' test.out

#- 156 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'WhPmMtzd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'GetUserVerificationCode' test.out

#- 157 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    '4udYK9KT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'AdminGetUserDeletionStatusV3' test.out

#- 158 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"enabled": false}' \
    'wQG4ieQc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminUpdateUserDeletionStatusV3' test.out

#- 159 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "iVZlhAlc", "country": "DgzQcFuu", "dateOfBirth": "Y7rqY9tI", "displayName": "WgHdtmmi", "emailAddress": "GcCL3bbv", "password": "iSewtBxS", "validateOnly": true}' \
    '69Bes1F3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminUpgradeHeadlessAccountV3' test.out

#- 160 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'iSTATUeI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminDeleteUserInformationV3' test.out

#- 161 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'hbRwpEzA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminGetUserLoginHistoriesV3' test.out

#- 162 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "K8bHR82w", "newPassword": "foa6KGuW", "oldPassword": "XEvOSCiM"}' \
    'QF9aFzSn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminResetPasswordV3' test.out

#- 163 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 31, "Resource": "roMRn9hs", "SchedAction": 60, "SchedCron": "DCY65A9o", "SchedRange": ["tDMTt9Ng", "Wv6zcTFB", "d59p16lX"]}, {"Action": 44, "Resource": "xLFWkSnI", "SchedAction": 100, "SchedCron": "lZPZtxkb", "SchedRange": ["SsOyCuc5", "TycddIGY", "VTRcdLkD"]}, {"Action": 95, "Resource": "Rn05Uwya", "SchedAction": 55, "SchedCron": "6wtMvPUE", "SchedRange": ["E3wqmXGw", "hXeF8ius", "02rSH3Ke"]}]}' \
    '1hv1LEWr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AdminUpdateUserPermissionV3' test.out

#- 164 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 27, "Resource": "Z4o8fJWm", "SchedAction": 8, "SchedCron": "DVx6Gq1S", "SchedRange": ["0HRPxBm9", "9q0G7dK0", "KpvFlYsk"]}, {"Action": 77, "Resource": "voPw9cjn", "SchedAction": 4, "SchedCron": "HNFon8Pn", "SchedRange": ["jE9hdvhB", "s7SkkqUY", "DLbcZFLL"]}, {"Action": 25, "Resource": "JJbQRHBc", "SchedAction": 11, "SchedCron": "2VDDuHTy", "SchedRange": ["HUaPKwVQ", "auBRqaNe", "wNogsoJC"]}]}' \
    'Vi9rlVmw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminAddUserPermissionsV3' test.out

#- 165 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 6, "Resource": "MMgx6L7O"}, {"Action": 17, "Resource": "Z4Cyp1E7"}, {"Action": 97, "Resource": "nkdW2BT2"}]' \
    'kMLXvJN8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminDeleteUserPermissionBulkV3' test.out

#- 166 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '40' \
    'XLFmFX71' \
    'if9elRhP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionV3' test.out

#- 167 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'QLQI4GtG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminGetUserPlatformAccountsV3' test.out

#- 168 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'LmqToaeA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminGetListJusticePlatformAccounts' test.out

#- 169 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    'OPNuDyFc' \
    'Zz65gyF8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminGetUserMapping' test.out

#- 170 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    'qZc0oUGU' \
    'DKeXgM8i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminCreateJusticeUser' test.out

#- 171 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "ONoIbeDG", "platformUserId": "5xcgzCuW"}' \
    'YTwOcfMs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminLinkPlatformAccount' test.out

#- 172 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "vKOzXdYP"}' \
    'imxIzrgl' \
    '4WBsxkDN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminPlatformUnlinkV3' test.out

#- 173 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'RvAGfZv9' \
    'W2JOg2Es' \
    'WAUkiu9t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformLinkV3' test.out

#- 174 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["v4jTQl4X", "pQGgQ5Jr", "ObJoy68a"]' \
    'LHjDUfCd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminDeleteUserRolesV3' test.out

#- 175 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "dVQRfctc", "roleId": "vUuks0lY"}, {"namespace": "yKA5laFs", "roleId": "Rfk3bckz"}, {"namespace": "CMD2zfoF", "roleId": "WqaNBpw4"}]' \
    '0WpC0AhX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminSaveUserRoleV3' test.out

#- 176 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    '7waBaMFM' \
    'wlDdipK1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminAddUserRoleV3' test.out

#- 177 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'heOzSUaG' \
    'odgDSJvE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminDeleteUserRoleV3' test.out

#- 178 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": false, "reason": "2jbY1Kxq"}' \
    'MXwy5J4h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminUpdateUserStatusV3' test.out

#- 179 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    '7A7P12bZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 180 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "Ok7nfrwB"}' \
    'TAp0uvg8' \
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
    '{"adminRole": true, "deletable": true, "isWildcard": true, "managers": [{"displayName": "wdAqI07A", "namespace": "Ux2wrWPv", "userId": "913FsA5A"}, {"displayName": "BLAnj5Tc", "namespace": "Ei7i7eI2", "userId": "eoLp1jCE"}, {"displayName": "OURbYr2Y", "namespace": "K4tS2IXB", "userId": "xkLCsVkx"}], "members": [{"displayName": "dmErSNX1", "namespace": "kkVN6nOE", "userId": "L9BnI3fw"}, {"displayName": "sfjSLCGO", "namespace": "WMOUkF03", "userId": "gWgvQBYp"}, {"displayName": "r2IvCXZ4", "namespace": "Uya1Nmhm", "userId": "RbSo3SLy"}], "permissions": [{"action": 98, "resource": "KFnKy9GS", "schedAction": 18, "schedCron": "HtfCHGMj", "schedRange": ["vGOWvqxE", "TKYJBfy2", "Fuee6WH5"]}, {"action": 66, "resource": "VHKsXbkQ", "schedAction": 75, "schedCron": "67UogJuV", "schedRange": ["yWzwe7A4", "WrMxMDdX", "wc8wMb81"]}, {"action": 41, "resource": "QEGoTQL8", "schedAction": 65, "schedCron": "34yNpEII", "schedRange": ["6KWVaXjz", "LAmovJgj", "i3ya8uoG"]}], "roleName": "GMOGuxbS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminCreateRoleV3' test.out

#- 183 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'fXxhEhRD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminGetRoleV3' test.out

#- 184 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'HS04bqfk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminDeleteRoleV3' test.out

#- 185 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": false, "isWildcard": true, "roleName": "WNyZBCP7"}' \
    'QBo34VEx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminUpdateRoleV3' test.out

#- 186 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    'V6h4ie9N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminGetRoleAdminStatusV3' test.out

#- 187 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'y6Wqkbxr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateAdminRoleStatusV3' test.out

#- 188 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'NBC9ZiC9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminRemoveRoleAdminV3' test.out

#- 189 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    '1M0Ct8ip' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminGetRoleManagersV3' test.out

#- 190 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "L7Jw5oZp", "namespace": "3gi7XwJN", "userId": "DbQ4nM8F"}, {"displayName": "o8hQmb2n", "namespace": "S2VwmtJb", "userId": "AiUK0C4p"}, {"displayName": "VGejWvn8", "namespace": "iavxGF9O", "userId": "Bdjl8vQ8"}]}' \
    'f8jqeyJM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminAddRoleManagersV3' test.out

#- 191 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "8ddk37GT", "namespace": "nH7mbyBd", "userId": "a49ZwOFg"}, {"displayName": "Kt2k6v8Q", "namespace": "kTohb1CY", "userId": "7sbTDMSO"}, {"displayName": "WWKBCXQY", "namespace": "83u3NnvU", "userId": "RO2rgVKn"}]}' \
    'YdlnfYlK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminRemoveRoleManagersV3' test.out

#- 192 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'ToVqMgsc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminGetRoleMembersV3' test.out

#- 193 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "KaWR4Nzp", "namespace": "vFRSm2mU", "userId": "HrJH91Im"}, {"displayName": "9W1vSXt0", "namespace": "zp8cMOvM", "userId": "dP68vMKm"}, {"displayName": "U3gVuvHF", "namespace": "95sr4Pse", "userId": "QjEvDJcZ"}]}' \
    'zQ7yCFCS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminAddRoleMembersV3' test.out

#- 194 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "WvIgYBqq", "namespace": "ivMz32YH", "userId": "2CvBExJZ"}, {"displayName": "3nvIDVFh", "namespace": "cZuwTuy2", "userId": "QiFhSDP3"}, {"displayName": "47CRNc2U", "namespace": "qCrd6vIf", "userId": "S8b7Fpbk"}]}' \
    'ppR1eOPO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminRemoveRoleMembersV3' test.out

#- 195 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 30, "resource": "NAdqaZ55", "schedAction": 64, "schedCron": "X1eNocC0", "schedRange": ["hQR806qD", "bYt0Njcj", "xFWyIneb"]}, {"action": 21, "resource": "MQp8qhL3", "schedAction": 94, "schedCron": "0QKQkVXF", "schedRange": ["QNRmKyDi", "eZnxzQ4m", "uLf7Pmol"]}, {"action": 8, "resource": "ntDqCnAc", "schedAction": 53, "schedCron": "idCWjouU", "schedRange": ["xXLYI1Dl", "qJJcuX9U", "oGyWnez2"]}]}' \
    'p6yDHoRL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminUpdateRolePermissionsV3' test.out

#- 196 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 23, "resource": "s7Q0uvvs", "schedAction": 28, "schedCron": "9FDGjzD8", "schedRange": ["D3M7tfxl", "HnoUy7bc", "YKyEiXz8"]}, {"action": 43, "resource": "ESLyS0mi", "schedAction": 5, "schedCron": "0Y1bCtC8", "schedRange": ["KRDtioFc", "PMcZt8Kk", "kuvASa4b"]}, {"action": 41, "resource": "k4lZ6wE0", "schedAction": 1, "schedCron": "EwhWF6r3", "schedRange": ["X49nT3TK", "7D1O8PRZ", "G6DkmIWj"]}]}' \
    'R9S6nzCf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminAddRolePermissionsV3' test.out

#- 197 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["I0gbtVLb", "G8bYqCxq", "XwQ99mUw"]' \
    'oaeXIjMC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminDeleteRolePermissionsV3' test.out

#- 198 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '11' \
    'RfagU9Zh' \
    'Sl3JrmtT' \
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
    'JF1sAOpb' \
    'WMJoDMoP' \
    'A5ql3xqY' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 200 'UserAuthenticationV3' test.out

#- 201 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    'YKMyPm8S' \
    'fSn6rYH3' \
    'Yc4Ukf4o' \
    'TYUqBry6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'AuthenticationWithPlatformLinkV3' test.out

#- 202 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    'U0INDpbl' \
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
    'otzWcMz9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'RequestGameTokenCodeResponseV3' test.out

#- 206 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'sqUeuJS0' \
    'YJCLZlpk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 207 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    'DS2YytAl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'RevokeUserV3' test.out

#- 208 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    'AITTsYt7' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 208 'AuthorizeV3' test.out

#- 209 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'n4XUEsKl' \
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
    '4X3J3gLP' \
    'wvBuriTM' \
    'hr9z2lGQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'SendMFAAuthenticationCode' test.out

#- 212 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    '72pyW7Xf' \
    '6FTXeiwY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'Change2faMethod' test.out

#- 213 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    '0v3aHx6M' \
    'qjAtSCQ4' \
    '5zhzNeL1' \
    'true' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'Verify2faCode' test.out

#- 214 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'CWhMF1n0' \
    'mNyUWJTf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 215 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'Qy8zqwGX' \
    'fyfpurGs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'AuthCodeRequestV3' test.out

#- 216 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'xMc4JEhw' \
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
    'qfnfbZyB' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 218 'TokenRevocationV3' test.out

#- 219 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'client_credentials' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 219 'TokenGrantV3' test.out

#- 220 VerifyTokenV3
$PYTHON -m $MODULE 'iam-verify-token-v3' \
    'xjz9S8St' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 220 'VerifyTokenV3' test.out

#- 221 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'P1g08A2G' \
    'z59y1DfX' \
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
    'UmKZ1yuA' \
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
    '9bmEIKka' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 226 PublicListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["PYcEkkbl", "LyKlGE3I", "8YuKY1xr"]}' \
    'Pk437WRh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 227 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    'FkBbTkxt' \
    '21bsCeBN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'PublicGetUserByPlatformUserIDV3' test.out

#- 228 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    'MHb73moB' \
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
    '{"PasswordMD5Sum": "s6hcNNPi", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "XFJ26JpH", "policyId": "vERqmjb8", "policyVersionId": "oUxEjUoo"}, {"isAccepted": false, "localizedPolicyVersionId": "m67bP8tT", "policyId": "yj8potVW", "policyVersionId": "DXnkIgU0"}, {"isAccepted": true, "localizedPolicyVersionId": "RYm8Cl2P", "policyId": "Aa1adNRI", "policyVersionId": "rdS4Oev6"}], "authType": "pW9RDNry", "code": "aaTjzdzo", "country": "iCJ8XJE0", "dateOfBirth": "OuAVuUwm", "displayName": "wBKhCJTQ", "emailAddress": "2jJ0Y7Uj", "password": "aIoHYtOp", "reachMinimumAge": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'PublicCreateUserV3' test.out

#- 231 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'piqDl4hg' \
    'YyJDtKAi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'CheckUserAvailability' test.out

#- 232 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["H6ws3qAS", "LS5mzT2F", "YnIhIHFp"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'PublicBulkGetUsers' test.out

#- 233 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "mVXMjOEv", "languageTag": "cEobC9t3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'PublicSendRegistrationCode' test.out

#- 234 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "d1Jy5OqB", "emailAddress": "44zhao84"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'PublicVerifyRegistrationCode' test.out

#- 235 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "0IYG3wG9", "languageTag": "Vh9wm1BS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'PublicForgotPasswordV3' test.out

#- 236 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    'TcPZfTWi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'GetAdminInvitationV3' test.out

#- 237 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "cnvxyqGE", "policyId": "HKafeMuC", "policyVersionId": "3YJZ0gW9"}, {"isAccepted": false, "localizedPolicyVersionId": "D5ui698o", "policyId": "GMvYnNho", "policyVersionId": "tHiD8jfY"}, {"isAccepted": true, "localizedPolicyVersionId": "JkZNNOTH", "policyId": "Qv2R1HUT", "policyVersionId": "2Jlp2dhn"}], "authType": "EMAILPASSWD", "country": "1lSEpVor", "dateOfBirth": "dvPMXn6K", "displayName": "bgAmLFtd", "password": "r3nzs2KK", "reachMinimumAge": true}' \
    'NdvdvxJz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'CreateUserFromInvitationV3' test.out

#- 238 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "JrxPS8f0", "country": "MlXw4wuF", "dateOfBirth": "emsD4hy7", "displayName": "kuG3zIKG", "languageTag": "xPNnAyOP", "userName": "eBWqlECF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'UpdateUserV3' test.out

#- 239 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "eMudVTHW", "country": "l18Lh7hw", "dateOfBirth": "su0H3NCn", "displayName": "EDY1cLJE", "languageTag": "SRSUDRhZ", "userName": "mhpRkK4j"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'PublicPartialUpdateUserV3' test.out

#- 240 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "0uWU1KGd", "emailAddress": "YqWBS6cp", "languageTag": "ZcRXnmRe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'PublicSendVerificationCodeV3' test.out

#- 241 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "8oXvjPGL", "contactType": "MPECUnvD", "languageTag": "524gRJ2T", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'PublicUserVerificationV3' test.out

#- 242 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "5H0IBtCq", "country": "CeMoyUgs", "dateOfBirth": "ommNWGHm", "displayName": "CtipZrST", "emailAddress": "pUBdzBnT", "password": "K0rklWVf", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'PublicUpgradeHeadlessAccountV3' test.out

#- 243 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "vhclMSiz", "password": "pzRaU3pn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'PublicVerifyHeadlessAccountV3' test.out

#- 244 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "9DF41hgv", "newPassword": "Xl0rWt2z", "oldPassword": "RGUs5sDl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'PublicUpdatePasswordV3' test.out

#- 245 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'jrXZFUZh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'PublicCreateJusticeUser' test.out

#- 246 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'silL5I2I' \
    'TwwqdG1N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'PublicPlatformLinkV3' test.out

#- 247 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "ge7CEXaX"}' \
    'w9J0UvUN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'PublicPlatformUnlinkV3' test.out

#- 248 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'FhtV4NZR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'PublicPlatformUnlinkAllV3' test.out

#- 249 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    'qOAoTZim' \
    '6lQ8Z1jR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'PublicForcePlatformLinkV3' test.out

#- 250 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    '1suo3rMQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'PublicWebLinkPlatform' test.out

#- 251 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'ichgTSHY' \
    'j7PxN334' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'PublicWebLinkPlatformEstablish' test.out

#- 252 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "cz5gfCy2", "emailAddress": "zXcOS6Mv", "newPassword": "fYrah4v8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'ResetPasswordV3' test.out

#- 253 PublicGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-public-get-user-by-user-id-v3' \
    'VelA76rh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'PublicGetUserByUserIdV3' test.out

#- 254 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    '3vF2qjwY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'PublicGetUserBanHistoryV3' test.out

#- 255 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'Mi2bLVay' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 256 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    'xphWhvWU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'PublicGetUserInformationV3' test.out

#- 257 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'Q3jtifDr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'PublicGetUserLoginHistoriesV3' test.out

#- 258 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'Efe0IJL2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'PublicGetUserPlatformAccountsV3' test.out

#- 259 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    'JO38QZZb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'PublicListJusticePlatformAccountsV3' test.out

#- 260 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "OpO0pGEo", "platformUserId": "nlczJHOt"}' \
    '6HAYFzi3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'PublicLinkPlatformAccount' test.out

#- 261 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["4mOyakyW", "RRcMpp7e", "fEmkTyIg"], "requestId": "61U97E6n"}' \
    'OKkeHgLP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'PublicForceLinkPlatformWithProgression' test.out

#- 262 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    '22YOuAqE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'PublicGetPublisherUserV3' test.out

#- 263 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'A9C5nxiZ' \
    'ASw1WkQj' \
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
    '2FumtIMm' \
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
    '{"languageTag": "FvbyHUu3"}' \
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
    'KIudV5b8' \
    'vvqbDFgL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'PlatformAuthenticateSAMLV3Handler' test.out

#- 270 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'SMoatgyW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'LoginSSOClient' test.out

#- 271 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'gCOPG710' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'LogoutSSOClient' test.out

#- 272 RequestGameTokenResponseV3
$PYTHON -m $MODULE 'iam-request-game-token-response-v3' \
    'ZtynHolT' \
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
    'CeH5esK8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'AdminGetUserDeviceBansV4' test.out

#- 276 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "zxeVFnb3", "deviceId": "J2dEfWEf", "deviceType": "nq9QCNbC", "enabled": true, "endDate": "3xnEJQO9", "ext": {"QtgNP2lG": {}, "GfGm1Nd7": {}, "Lob0TYLo": {}}, "reason": "iSR45ytr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'AdminBanDeviceV4' test.out

#- 277 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    'hI2XNQZi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'AdminGetDeviceBanV4' test.out

#- 278 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": false}' \
    '7xbDhFKx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'AdminUpdateDeviceBanV4' test.out

#- 279 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    'ZwiII14v' \
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
    'AAAZslFD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'AdminGetDeviceBansV4' test.out

#- 282 AdminDecryptDeviceV4
$PYTHON -m $MODULE 'iam-admin-decrypt-device-v4' \
    'Jk4YHmgh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'AdminDecryptDeviceV4' test.out

#- 283 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    'L8W0oY7r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'AdminUnbanDeviceV4' test.out

#- 284 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    'iv0q7rX5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'AdminGetUsersByDeviceV4' test.out

#- 285 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"count": 88}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'AdminCreateTestUsersV4' test.out

#- 286 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["emTCvJBT", "uhlFKzHm", "i2mUYSP4"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'AdminBulkCheckValidUserIDV4' test.out

#- 287 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "xNeZWBSN", "country": "qfZhpHFZ", "dateOfBirth": "w9kHa0MT", "displayName": "VP4lacsD", "languageTag": "L3CX5x1H", "userName": "gHKv7vGO"}' \
    'aqgu555M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'AdminUpdateUserV4' test.out

#- 288 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "c2a8ooTo", "emailAddress": "tZ7fRIxj"}' \
    'LEAure41' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'AdminUpdateUserEmailAddressV4' test.out

#- 289 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    'cIIj207L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'AdminDisableUserMFAV4' test.out

#- 290 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'dd5Mbkge' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'AdminListUserRolesV4' test.out

#- 291 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["tjOc2sVW", "Jyq4BZ2Y", "FfdBiGyh"], "roleId": "9qWqNjvE"}' \
    '8CzzpwkQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'AdminUpdateUserRoleV4' test.out

#- 292 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["bBPvzVoC", "Ee3LFNVj", "FlHS8Wdx"], "roleId": "oSWCsxJw"}' \
    'g6pF0lZT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'AdminAddUserRoleV4' test.out

#- 293 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["5pMl3w2m", "wiQT90n3", "6JmhYn9d"], "roleId": "pIZvSfoH"}' \
    'uO4B26X5' \
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
    '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "zYZiMnMA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'AdminCreateRoleV4' test.out

#- 296 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'OLfUBfUu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'AdminGetRoleV4' test.out

#- 297 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'YruXVts3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'AdminDeleteRoleV4' test.out

#- 298 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "inMf2rQh"}' \
    'oN6RuqaN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateRoleV4' test.out

#- 299 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 6, "resource": "xWy1igTc", "schedAction": 98, "schedCron": "4eTwW7Af", "schedRange": ["kcOjzOto", "jmBgF4kf", "qDRoglWJ"]}, {"action": 66, "resource": "QOD4Fmsz", "schedAction": 19, "schedCron": "ZqRuWQna", "schedRange": ["L3gvtZ3f", "SzzN5j46", "EFcuD5U9"]}, {"action": 97, "resource": "k7Kq4dWx", "schedAction": 75, "schedCron": "A1ePu8w8", "schedRange": ["gNItUMOn", "5OkFPsoA", "mAhXdylc"]}]}' \
    'd2cslIcb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'AdminUpdateRolePermissionsV4' test.out

#- 300 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 28, "resource": "5a2HB7MT", "schedAction": 25, "schedCron": "015Huva5", "schedRange": ["AkOtcgDT", "KjEIOdr1", "RJUYRvmj"]}, {"action": 10, "resource": "UrMJxbIG", "schedAction": 4, "schedCron": "8CmMaYkj", "schedRange": ["ARlQkjtx", "pQB7sP7c", "dlGeBTSg"]}, {"action": 39, "resource": "JNEYkcjQ", "schedAction": 25, "schedCron": "VZ9eomLe", "schedRange": ["JKQAWW28", "Nia7lXTe", "z9P4ejKy"]}]}' \
    'KNmcr11Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'AdminAddRolePermissionsV4' test.out

#- 301 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["7i1qnWzj", "yjWPhEcy", "bhBzknwf"]' \
    'R26dz6ck' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'AdminDeleteRolePermissionsV4' test.out

#- 302 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'eUAQH88k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'AdminListAssignedUsersV4' test.out

#- 303 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["dMeXxaJi", "tPeFxPBe", "R6IHQNl4"], "namespace": "exIOqpPQ", "userId": "SzTU13ud"}' \
    'TN2m9uO7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'AdminAssignUserToRoleV4' test.out

#- 304 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "T4mXQVmQ", "userId": "9h3nMSS2"}' \
    'CAwMlddw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'AdminRevokeUserFromRoleV4' test.out

#- 305 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "SH2iCVDD", "country": "2njOoqBP", "dateOfBirth": "HBeaJgAj", "displayName": "V1CUz896", "languageTag": "cxXwiW8Z", "userName": "q6Nz27xO"}' \
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
    'gHdLm9MS' \
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
    'nMXOWl5C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'AdminMakeFactorMyDefaultV4' test.out

#- 319 AdminInviteUserV4
$PYTHON -m $MODULE 'iam-admin-invite-user-v4' \
    '{"assignedNamespaces": ["YTwyuW4c", "lyTwEOZN", "jJBKOPOA"], "emailAddresses": ["T0gV60mb", "rHUf73IC", "yZPncfJN"], "isAdmin": false, "roleId": "fnh476ew"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'AdminInviteUserV4' test.out

#- 320 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "z8gHEpOj", "policyId": "qFIGIRkb", "policyVersionId": "aUnTuFjA"}, {"isAccepted": true, "localizedPolicyVersionId": "jA1AvR2J", "policyId": "lySH5BhA", "policyVersionId": "9tCZXvEJ"}, {"isAccepted": true, "localizedPolicyVersionId": "ZdlhvUhk", "policyId": "UWLO1xrc", "policyVersionId": "i5TxccyH"}], "authType": "EMAILPASSWD", "country": "QJv951A8", "dateOfBirth": "k2QUbc87", "displayName": "0heQuKx4", "emailAddress": "Ktu0evgH", "password": "JfyHF8QL", "passwordMD5Sum": "YNwCshsh", "username": "dTlDh0EX", "verified": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'PublicCreateTestUserV4' test.out

#- 321 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "gPdOxoxe", "policyId": "6MjzQCA8", "policyVersionId": "H3U7RcQx"}, {"isAccepted": true, "localizedPolicyVersionId": "yvdnB9fR", "policyId": "PBZT6pe6", "policyVersionId": "U2bvValy"}, {"isAccepted": true, "localizedPolicyVersionId": "AHSjIIwW", "policyId": "hGrnNWI7", "policyVersionId": "jDD68MJq"}], "authType": "EMAILPASSWD", "code": "Iq01cM3k", "country": "7A3SdHEG", "dateOfBirth": "Z5w6MtnP", "displayName": "cA9VkY7m", "emailAddress": "ACLuNCSs", "password": "Tdh60fUS", "passwordMD5Sum": "RwleCKjL", "reachMinimumAge": true, "username": "Kfv1oMfa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'PublicCreateUserV4' test.out

#- 322 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "q8fhc7xS", "policyId": "1Iq6KVte", "policyVersionId": "228v41T6"}, {"isAccepted": false, "localizedPolicyVersionId": "AVPn2k9G", "policyId": "L4LjRHg4", "policyVersionId": "4VJZfMCR"}, {"isAccepted": true, "localizedPolicyVersionId": "pRb2DE0o", "policyId": "s3CHBnvt", "policyVersionId": "MmoU1GAp"}], "authType": "EMAILPASSWD", "country": "RpFqi06V", "dateOfBirth": "6V7fyYTx", "displayName": "5DyTQo49", "password": "u7I8sFEp", "reachMinimumAge": true, "username": "PDFNSdBl"}' \
    'hQhz5MiZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'CreateUserFromInvitationV4' test.out

#- 323 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "9yrIM3Z2", "country": "abfumVyN", "dateOfBirth": "F4CgiRls", "displayName": "InXEMEsE", "languageTag": "cMlCcIck", "userName": "l9dyaYP4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'PublicUpdateUserV4' test.out

#- 324 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "6kGPt51Q", "emailAddress": "tSnNKjxR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'PublicUpdateUserEmailAddressV4' test.out

#- 325 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "DpBmi3qN", "country": "UulnQor0", "dateOfBirth": "paC3AiCs", "displayName": "jI39yHHH", "emailAddress": "XirdtIrf", "password": "z7gx7FDo", "reachMinimumAge": true, "username": "z3mvN5Bg", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 326 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "RGUKy4dp", "password": "flrQZxTh", "username": "5VegDiNC"}' \
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
    'W8ycKTPO' \
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
    'f9OXVFpP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'PublicMakeFactorMyDefaultV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
