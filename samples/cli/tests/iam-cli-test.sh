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
iam-admin-update-input-validations '[{"field": "B5bNKxqn", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "blockedWord": ["dOuYvdid", "J6OmV5d8", "F3OcJmsx"], "description": [{"language": "nGLC96i2", "message": ["iilQmbFI", "xDNCBcBj", "6kiWzFEM"]}, {"language": "rJdGDUXO", "message": ["b5w7NQcM", "5jP5uG3K", "05O1iQbs"]}, {"language": "8oUF5Jz5", "message": ["zylAJa5w", "e4V6lLQB", "VQj6vUrJ"]}], "isCustomRegex": true, "letterCase": "ulTB2Box", "maxLength": 54, "maxRepeatingAlphaNum": 71, "maxRepeatingSpecialCharacter": 32, "minCharType": 31, "minLength": 30, "regex": "0Clza5GP", "specialCharacterLocation": "8EMplyUz", "specialCharacters": ["wRGho2mJ", "3pq6EsJg", "33bulJgN"]}}, {"field": "3cpPO6dX", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "blockedWord": ["SEcl4Ycj", "VeLdfRLR", "fkfclgSZ"], "description": [{"language": "sw5fYgJu", "message": ["P2gKnurk", "X9TPMMnB", "nlxPDeWn"]}, {"language": "YnNQJE8I", "message": ["wCfrwn5M", "rfGtShk3", "brShSTeA"]}, {"language": "RLV2qtRU", "message": ["d3NvetQg", "3y3ZNy4H", "LZ678pKl"]}], "isCustomRegex": false, "letterCase": "IrNgeOjN", "maxLength": 13, "maxRepeatingAlphaNum": 43, "maxRepeatingSpecialCharacter": 72, "minCharType": 56, "minLength": 81, "regex": "wBtcHu9n", "specialCharacterLocation": "w1On3uDZ", "specialCharacters": ["BRoSEij2", "qZyQThZV", "HYdQFyo6"]}}, {"field": "HhEuGEOH", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "blockedWord": ["bmEylbVS", "8iDxPeQN", "G9A3SSYx"], "description": [{"language": "LEAaAOOh", "message": ["WrngEnTg", "7DP8DJJN", "m1T1GJjp"]}, {"language": "23Z4v8NU", "message": ["oE5utgTo", "to7UZA7P", "MRCf1Lo8"]}, {"language": "N9eYPBw7", "message": ["VbqiySp7", "RSE3wYQT", "wPDeQVvj"]}], "isCustomRegex": true, "letterCase": "W88VYK1Z", "maxLength": 8, "maxRepeatingAlphaNum": 13, "maxRepeatingSpecialCharacter": 56, "minCharType": 94, "minLength": 94, "regex": "wi26n3Ma", "specialCharacterLocation": "upqScvw9", "specialCharacters": ["SNbpSSu5", "zBcuapIz", "jpretQdg"]}}]' --login_with_auth "Bearer foo"
iam-admin-reset-input-validations 'ssVoeNmg' --login_with_auth "Bearer foo"
iam-list-admins-v3 --login_with_auth "Bearer foo"
iam-admin-get-age-restriction-status-v3 --login_with_auth "Bearer foo"
iam-admin-update-age-restriction-config-v3 '{"ageRestriction": 75, "enable": false}' --login_with_auth "Bearer foo"
iam-admin-get-list-country-age-restriction-v3 --login_with_auth "Bearer foo"
iam-admin-update-country-age-restriction-v3 '{"ageRestriction": 77}' 'iC264INo' --login_with_auth "Bearer foo"
iam-admin-get-banned-users-v3 --login_with_auth "Bearer foo"
iam-admin-ban-user-bulk-v3 '{"ban": "o9q3R9sD", "comment": "d8fGDJFU", "endDate": "m8S5KbRG", "reason": "aj7SMK5X", "skipNotif": true, "userIds": ["6res2MMn", "Sz2QWlq7", "5pNaTm5O"]}' --login_with_auth "Bearer foo"
iam-admin-unban-user-bulk-v3 '{"bans": [{"banId": "Vyaa50Nl", "userId": "oEEaMApC"}, {"banId": "AUIvtEKg", "userId": "mWCl12s4"}, {"banId": "NiAXyaK9", "userId": "VfbOrKK3"}]}' --login_with_auth "Bearer foo"
iam-admin-get-bans-type-with-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-get-clients-by-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-create-client-v3 '{"audiences": ["nMHvSUCL", "Xa7E2l8f", "oPM8f7yZ"], "baseUri": "0EGcAvv0", "clientId": "BWPV7Vt8", "clientName": "8PWvJakK", "clientPermissions": [{"action": 34, "resource": "gLRaEONi", "schedAction": 0, "schedCron": "Vy5P0foU", "schedRange": ["ufHiFKPY", "i2FImfgr", "00fAmQVA"]}, {"action": 51, "resource": "WUQ6Zxh5", "schedAction": 87, "schedCron": "mwCaqwXB", "schedRange": ["YEoJ7k3O", "gOy3mfHb", "SDeC9g7n"]}, {"action": 68, "resource": "Dkg6LXfB", "schedAction": 71, "schedCron": "KxGfXrU6", "schedRange": ["g6bKeTFG", "Agx6Qss9", "kbwh4UHF"]}], "clientPlatform": "X0lBCWZe", "deletable": false, "description": "xZ6UHD9F", "namespace": "CT9aIJux", "oauthAccessTokenExpiration": 80, "oauthAccessTokenExpirationTimeUnit": "s5Goliik", "oauthClientType": "mIqMyymG", "oauthRefreshTokenExpiration": 81, "oauthRefreshTokenExpirationTimeUnit": "WaPZusfI", "parentNamespace": "CnyCfmHO", "redirectUri": "rOExWEJB", "scopes": ["elhYElJ3", "mBsis1D3", "hpFuUJ1W"], "secret": "V2poif9o", "twoFactorEnabled": true}' --login_with_auth "Bearer foo"
iam-admin-get-clientsby-namespaceby-idv3 'DSiLFdTH' --login_with_auth "Bearer foo"
iam-admin-delete-client-v3 'qTI93jSB' --login_with_auth "Bearer foo"
iam-admin-update-client-v3 '{"audiences": ["3DeGbT0Q", "tKxmdpDl", "VrlrRCKf"], "baseUri": "Os74BsrV", "clientName": "n1hyud5O", "clientPermissions": [{"action": 0, "resource": "pxliw5nj", "schedAction": 15, "schedCron": "trZvXZZO", "schedRange": ["4f5SeA2L", "EKQTnbVA", "5QhZOD8M"]}, {"action": 74, "resource": "yAebjOup", "schedAction": 23, "schedCron": "5lOcfQLQ", "schedRange": ["rWX85b0K", "LV02pscx", "Yybyu9q0"]}, {"action": 41, "resource": "rWu38HWE", "schedAction": 1, "schedCron": "o6hfD7uT", "schedRange": ["2kX9zBk0", "uGZU2kGU", "CX3sxc3U"]}], "clientPlatform": "WrrvcDPo", "deletable": true, "description": "MkG3Xdge", "namespace": "E4OXlYAM", "oauthAccessTokenExpiration": 17, "oauthAccessTokenExpirationTimeUnit": "DIAfVHD4", "oauthRefreshTokenExpiration": 11, "oauthRefreshTokenExpirationTimeUnit": "3HOa0Mro", "redirectUri": "20fIFrew", "scopes": ["jRIJ6Rfg", "UNxBbaya", "gUvRLn60"], "twoFactorEnabled": false}' 'nXUKAL0g' --login_with_auth "Bearer foo"
iam-admin-update-client-permission-v3 '{"permissions": [{"action": 25, "resource": "mlGUu2Ni"}, {"action": 86, "resource": "35bcIUgk"}, {"action": 55, "resource": "3Ixo4sUI"}]}' 'GbalYLXZ' --login_with_auth "Bearer foo"
iam-admin-add-client-permissions-v3 '{"permissions": [{"action": 100, "resource": "9QJTIVUW"}, {"action": 46, "resource": "WaE9mKqV"}, {"action": 34, "resource": "xgEiEqR8"}]}' 'yTDRp7Wb' --login_with_auth "Bearer foo"
iam-admin-delete-client-permission-v3 '31' '2iAkJm55' 'Yc7POHqH' --login_with_auth "Bearer foo"
iam-retrieve-all-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-sso-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-third-party-login-platform-credential-v3 'jlhlzd2m' --login_with_auth "Bearer foo"
iam-add-third-party-login-platform-credential-v3 '{"ACSURL": "OUzbdeSD", "AWSCognitoRegion": "IHXyZbtj", "AWSCognitoUserPool": "9PTwMQMK", "AllowedClients": ["c7gQdCE3", "Dfc2OoAs", "Huf234EP"], "AppId": "y1A3dcPi", "AuthorizationEndpoint": "Mk3MiAlX", "ClientId": "h0J5Gqjq", "Environment": "A8TQESC1", "FederationMetadataURL": "HLkIt63n", "GenericOauthFlow": true, "IsActive": true, "Issuer": "DLlPfwBn", "JWKSEndpoint": "uv5F6dZT", "KeyID": "e10nN38T", "NetflixCertificates": {"encryptedPrivateKey": "JpxSf8gf", "encryptedPrivateKeyName": "8W2LWKM8", "publicCertificate": "St3njN62", "publicCertificateName": "p4zfZKRr", "rootCertificate": "5FMuzhFO", "rootCertificateName": "KA1OeBaW"}, "OrganizationId": "6oQRKNjx", "PlatformName": "dtV3QqU3", "RedirectUri": "JzRIYL2g", "RegisteredDomains": [{"affectedClientIDs": ["c3Mrb9aR", "zFll45l9", "mheQz6OY"], "domain": "1YpnWUVu", "namespaces": ["FltET4xO", "XEhKJ06L", "xf1WyD2b"], "roleId": "0Yfcrg30"}, {"affectedClientIDs": ["xuq0SLNu", "fcDk9wdG", "omeRaiyM"], "domain": "sjWSp2kw", "namespaces": ["9c4R8SAr", "XhbAFfYN", "I8p6uqc2"], "roleId": "SGDsYLU3"}, {"affectedClientIDs": ["xaEFPwzn", "eXHis3PY", "cKHuJLMD"], "domain": "J2RsfwJj", "namespaces": ["177dGzpF", "24wJcXPl", "4IgpBI21"], "roleId": "LtX7CHHG"}], "Secret": "UtXRgEtf", "TeamID": "m1mzIefl", "TokenAuthenticationType": "mdZ9TqUN", "TokenClaimsMapping": {"aRezaphA": "zvkFGZna", "7IcySmFI": "TDBWwoA1", "YJmoN2Qx": "aQ5JmqrD"}, "TokenEndpoint": "sYXaOXJn", "UserInfoEndpoint": "gMDhY7qn", "UserInfoHTTPMethod": "uqef57kl", "scopes": ["AMv7o2BU", "pxHCs0lH", "b2cx9miz"]}' 'Ylr43nQU' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-credential-v3 'TcR0dt2C' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-credential-v3 '{"ACSURL": "s8XRUgYI", "AWSCognitoRegion": "b3WTusuS", "AWSCognitoUserPool": "NHIDbWDr", "AllowedClients": ["gGFWyCWm", "IVz3cmG8", "g5MsVRXn"], "AppId": "twnSznbE", "AuthorizationEndpoint": "jVVVVBIV", "ClientId": "7weUb1qH", "Environment": "LrM1TKrv", "FederationMetadataURL": "BR13rDEW", "GenericOauthFlow": false, "IsActive": true, "Issuer": "9jHlbaIr", "JWKSEndpoint": "Hg1juxF2", "KeyID": "mxmLSpas", "NetflixCertificates": {"encryptedPrivateKey": "KlUnr49c", "encryptedPrivateKeyName": "OjxVX5uk", "publicCertificate": "XZgLmUaY", "publicCertificateName": "llPfgkXe", "rootCertificate": "tlkujxm2", "rootCertificateName": "Y5YF1y3s"}, "OrganizationId": "cmpsi3oZ", "PlatformName": "SZMUHXfZ", "RedirectUri": "zpb53i0E", "RegisteredDomains": [{"affectedClientIDs": ["VKTBp261", "pcqjT5p3", "4iFM11eK"], "domain": "XDRjs72O", "namespaces": ["lHXQezB9", "nJ3qDFxf", "BfaDeWpT"], "roleId": "DBpJbBKL"}, {"affectedClientIDs": ["dGaiNvNM", "dWzDwmbz", "BZkm91xI"], "domain": "arh3451i", "namespaces": ["jmjueDX9", "cJeEqXdu", "Hb4SWbgD"], "roleId": "dfdsg5Rw"}, {"affectedClientIDs": ["NuOz4ZcX", "4DCCsMU3", "At3CIJyW"], "domain": "wGalhwkw", "namespaces": ["tqXGLF6C", "LbicIwuj", "I8NPAOWP"], "roleId": "Mj50Lcna"}], "Secret": "w75NbNhZ", "TeamID": "ttktqJl6", "TokenAuthenticationType": "BKzugz0O", "TokenClaimsMapping": {"o9Kp6V3d": "agVzlu5C", "3ug3AxVE": "datXBvp7", "0kXAS5tW": "SnoMn7fy"}, "TokenEndpoint": "nPYyhXdh", "UserInfoEndpoint": "kso03uzF", "UserInfoHTTPMethod": "RZeIgxDQ", "scopes": ["MtP9YGWX", "pCGlblym", "gCgDG6ZY"]}' 'fEcIXl4z' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-domain-v3 '{"affectedClientIDs": ["rrTzf07H", "xT7Z8zDf", "rKtIUSaw"], "assignedNamespaces": ["0lyXJGrT", "nvl1vDLw", "YZTE8n4a"], "domain": "OUANj3HK", "roleId": "jm5xF3Fp"}' '6hMGxNfJ' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-domain-v3 '{"domain": "HkssQuNZ"}' 'umiIb7RE' --login_with_auth "Bearer foo"
iam-retrieve-sso-login-platform-credential 'cX5p5YNu' --login_with_auth "Bearer foo"
iam-add-sso-login-platform-credential '{"acsUrl": "PjQPllfc", "apiKey": "29cN0gXK", "appId": "ICdrJE60", "federationMetadataUrl": "W5EdXk3w", "isActive": false, "redirectUri": "yf760fxT", "secret": "0YCQNhQS", "ssoUrl": "kWw6hrjo"}' 'lOeq7P9s' --login_with_auth "Bearer foo"
iam-delete-sso-login-platform-credential-v3 'tIqXPK7y' --login_with_auth "Bearer foo"
iam-update-sso-platform-credential '{"acsUrl": "OwMUYDXi", "apiKey": "pMFJiEf2", "appId": "VEyRBxUX", "federationMetadataUrl": "yDFHHytD", "isActive": true, "redirectUri": "BrlHIkeA", "secret": "RlNhm9Hw", "ssoUrl": "S0n6NCCR"}' 'B9l2EKwc' --login_with_auth "Bearer foo"
iam-admin-get-user-by-platform-user-idv3 'WZOxbRx1' '0RkNOcVP' --login_with_auth "Bearer foo"
iam-get-admin-users-by-role-id-v3 'crHqUBaV' --login_with_auth "Bearer foo"
iam-admin-get-user-by-email-address-v3 --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-user-i-ds-v3 '{"userIds": ["AYwO6uLE", "TZV0sK48", "6WWXgIPz"]}' --login_with_auth "Bearer foo"
iam-admin-invite-user-v3 '{"emailAddresses": ["ldZ7Far9", "k7yFXvRj", "rjxWe9Nr"], "isAdmin": false, "namespace": "GyvWM2Xb", "roles": ["sGAZUXqm", "9xKDIHt8", "ht456QEJ"]}' --login_with_auth "Bearer foo"
iam-admin-query-third-platform-link-history-v3 'fSpve14V' --login_with_auth "Bearer foo"
iam-admin-list-users-v3 --login_with_auth "Bearer foo"
iam-admin-search-user-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-by-email-address-v3 '{"listEmailAddressRequest": ["N1GZVum1", "JnSR2WBR", "flZtTzfk"]}' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v3 'reSM8FTA' --login_with_auth "Bearer foo"
iam-admin-update-user-v3 '{"avatarUrl": "RNZe10pt", "country": "RQT9jdku", "dateOfBirth": "xSTVEmN6", "displayName": "4gKphPCI", "languageTag": "Bvxo8Ux3", "userName": "txkI0LZl"}' 'MDQw1RMY' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v3 'I3oZTT1x' --login_with_auth "Bearer foo"
iam-admin-ban-user-v3 '{"ban": "6ZptaW2F", "comment": "7DpJAfxg", "endDate": "ZEWsmul9", "reason": "sBXoqeoj", "skipNotif": false}' 'pEMpIg2r' --login_with_auth "Bearer foo"
iam-admin-update-user-ban-v3 '{"enabled": false, "skipNotif": true}' 'o4Lttyz8' 'YQs2Xebs' --login_with_auth "Bearer foo"
iam-admin-send-verification-code-v3 '{"context": "qeknrrpz", "emailAddress": "otuR0iMN", "languageTag": "0EKMrM2u"}' 'MHDHO0Db' --login_with_auth "Bearer foo"
iam-admin-verify-account-v3 '{"Code": "rO0XMDUN", "ContactType": "nYiHxWcn", "LanguageTag": "XXLmWaic", "validateOnly": true}' 'x01WTcUO' --login_with_auth "Bearer foo"
iam-get-user-verification-code 'sS0Nnx1s' --login_with_auth "Bearer foo"
iam-admin-get-user-deletion-status-v3 'vKTHKoH3' --login_with_auth "Bearer foo"
iam-admin-update-user-deletion-status-v3 '{"enabled": false}' 'DezjuZxF' --login_with_auth "Bearer foo"
iam-admin-upgrade-headless-account-v3 '{"code": "A13ZKxyz", "country": "MCkxnKQi", "dateOfBirth": "wgQf6TG2", "displayName": "9rIKmH7F", "emailAddress": "JccZQHxG", "password": "J6OpWGFj", "validateOnly": true}' 'zxUNu1oh' --login_with_auth "Bearer foo"
iam-admin-delete-user-information-v3 'xaOmm1K2' --login_with_auth "Bearer foo"
iam-admin-get-user-login-histories-v3 'zs9jdoIX' --login_with_auth "Bearer foo"
iam-admin-reset-password-v3 '{"languageTag": "v6TQkL0k", "newPassword": "colOMDdg", "oldPassword": "fFOkdMyl"}' 'L2xGF4wQ' --login_with_auth "Bearer foo"
iam-admin-update-user-permission-v3 '{"Permissions": [{"Action": 54, "Resource": "lXI4WIPH", "SchedAction": 4, "SchedCron": "jTwPikLp", "SchedRange": ["m2WQ3Ruz", "klFAWf0g", "Fj25U94z"]}, {"Action": 94, "Resource": "Iw9oV4vA", "SchedAction": 19, "SchedCron": "SLWCFXgA", "SchedRange": ["qpzdlBKL", "YPlhxKey", "4NXST387"]}, {"Action": 99, "Resource": "VB1qA4XZ", "SchedAction": 19, "SchedCron": "sI3SntHT", "SchedRange": ["AtDOkYgA", "2nfhqyz0", "mclsDjB2"]}]}' '8Milps57' --login_with_auth "Bearer foo"
iam-admin-add-user-permissions-v3 '{"Permissions": [{"Action": 27, "Resource": "CLofVxAB", "SchedAction": 15, "SchedCron": "MTgRIlv2", "SchedRange": ["mEQqSuym", "HMbeDKHe", "LjpwU7CZ"]}, {"Action": 6, "Resource": "kwUtyLsH", "SchedAction": 66, "SchedCron": "ejHdXaDG", "SchedRange": ["7Fx67hZ4", "ECGMx8lP", "VuFiUCUW"]}, {"Action": 20, "Resource": "GOhCQ9Bh", "SchedAction": 58, "SchedCron": "GC64uBKh", "SchedRange": ["qeNG01FJ", "5pNLsvzq", "eaSgspNI"]}]}' 'dyeuHlJa' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-bulk-v3 '[{"Action": 55, "Resource": "HMAGjnBh"}, {"Action": 47, "Resource": "0Tzd4eTc"}, {"Action": 9, "Resource": "SMa1cppq"}]' 'vzP9zkq0' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-v3 '68' 'Jy9DdRbx' 'aBgFLlYP' --login_with_auth "Bearer foo"
iam-admin-get-user-platform-accounts-v3 'lpnaTPHa' --login_with_auth "Bearer foo"
iam-admin-get-list-justice-platform-accounts 'tPkMmTPr' --login_with_auth "Bearer foo"
iam-admin-get-user-mapping 'inctRDZd' '3zidptia' --login_with_auth "Bearer foo"
iam-admin-create-justice-user 'sJ0l6RS6' 'xTT8shuT' --login_with_auth "Bearer foo"
iam-admin-link-platform-account '{"platformId": "bUYGmasX", "platformUserId": "HWrFy4ZO"}' '0C3gWdFO' --login_with_auth "Bearer foo"
iam-admin-platform-unlink-v3 '{"platformNamespace": "amUM38OU"}' 'pnn6986v' 'VojqJsI0' --login_with_auth "Bearer foo"
iam-admin-platform-link-v3 '6rpsRtTH' '4s1Si54G' 'Y58SJ35z' --login_with_auth "Bearer foo"
iam-admin-get-third-party-platform-token-link-status-v3 'E7Hl5Uz5' 'z5SjZrdI' 'YRc3Qr3A' --login_with_auth "Bearer foo"
iam-admin-delete-user-roles-v3 '["hjonYqp6", "GArai9Md", "8N9oQJvF"]' 'rhEWku3y' --login_with_auth "Bearer foo"
iam-admin-save-user-role-v3 '[{"namespace": "S7YFu6aE", "roleId": "XewuR1K9"}, {"namespace": "18Bhzjgc", "roleId": "ZM3r7JfX"}, {"namespace": "KB0bC6GP", "roleId": "GG9J1WMY"}]' 'LF41kx2H' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v3 'dDpZkVcV' 'WlIlQmz7' --login_with_auth "Bearer foo"
iam-admin-delete-user-role-v3 'D1GN4FqI' 'AXvrJGzG' --login_with_auth "Bearer foo"
iam-admin-update-user-status-v3 '{"enabled": false, "reason": "N7PRsvtQ"}' 'QddcrNYb' --login_with_auth "Bearer foo"
iam-admin-verify-user-without-verification-code-v3 'siSVipZw' --login_with_auth "Bearer foo"
iam-admin-update-client-secret-v3 '{"newSecret": "csY64Ara"}' 'Zh9ffugV' --login_with_auth "Bearer foo"
iam-admin-get-roles-v3 --login_with_auth "Bearer foo"
iam-admin-create-role-v3 '{"adminRole": true, "deletable": false, "isWildcard": true, "managers": [{"displayName": "S8IciZRu", "namespace": "vzHURwcX", "userId": "DLSZOPhI"}, {"displayName": "1e1sJwFb", "namespace": "48aavP7b", "userId": "DV3nZ1NJ"}, {"displayName": "HTmk2xMh", "namespace": "zbEn2lYb", "userId": "TwPjUb2K"}], "members": [{"displayName": "ncHcdJ3O", "namespace": "Trtlaqfc", "userId": "iC5OfzPD"}, {"displayName": "VknxLi8E", "namespace": "ocQ0csWN", "userId": "OxWVLqrp"}, {"displayName": "aqDzOrWh", "namespace": "UNUYRP6t", "userId": "FUsFpRTV"}], "permissions": [{"action": 51, "resource": "ISd1MMWl", "schedAction": 20, "schedCron": "ecYotHoB", "schedRange": ["RqsakB9O", "WVx44VvU", "8aELUACT"]}, {"action": 70, "resource": "fVoijWpV", "schedAction": 95, "schedCron": "9hKJi7J3", "schedRange": ["7G4hwOFQ", "BBadOE6b", "kMTNIvSM"]}, {"action": 41, "resource": "O1aOaleK", "schedAction": 93, "schedCron": "MwQeXjPk", "schedRange": ["P3XHU416", "kUPOdNDp", "ZQGwatpS"]}], "roleName": "07Zo6HBo"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v3 'Btygf9ft' --login_with_auth "Bearer foo"
iam-admin-delete-role-v3 'QfqpdvlU' --login_with_auth "Bearer foo"
iam-admin-update-role-v3 '{"deletable": true, "isWildcard": false, "roleName": "mIWnuLuF"}' 'UpOUOMhL' --login_with_auth "Bearer foo"
iam-admin-get-role-admin-status-v3 'S6EdYAD5' --login_with_auth "Bearer foo"
iam-admin-update-admin-role-status-v3 'U5LNMdwt' --login_with_auth "Bearer foo"
iam-admin-remove-role-admin-v3 '6W7x0j7p' --login_with_auth "Bearer foo"
iam-admin-get-role-managers-v3 't1BA8UaM' --login_with_auth "Bearer foo"
iam-admin-add-role-managers-v3 '{"managers": [{"displayName": "e86oKf4p", "namespace": "eg8C9z1n", "userId": "nCp1OvCC"}, {"displayName": "W1BlbQ0t", "namespace": "anZ4E1CK", "userId": "Wv0wFPet"}, {"displayName": "6grojTFm", "namespace": "okLv0zFY", "userId": "W50ymXUE"}]}' 'hWmJ7Rrl' --login_with_auth "Bearer foo"
iam-admin-remove-role-managers-v3 '{"managers": [{"displayName": "EbvSFqGt", "namespace": "pvP5CRbO", "userId": "drScbiE2"}, {"displayName": "EXchNRMx", "namespace": "DIeRewjB", "userId": "AWw4WGCe"}, {"displayName": "kTrLosUY", "namespace": "RZZbdXCV", "userId": "LzvOzMkw"}]}' 'K4wsZ7eK' --login_with_auth "Bearer foo"
iam-admin-get-role-members-v3 'B9DV14bU' --login_with_auth "Bearer foo"
iam-admin-add-role-members-v3 '{"members": [{"displayName": "gnYnPZwL", "namespace": "N48VCgut", "userId": "qQXQVBJP"}, {"displayName": "dNA5Z8EO", "namespace": "BD7sK17q", "userId": "2zoBkwAi"}, {"displayName": "sCrCiHU2", "namespace": "Dh7ghuWp", "userId": "MRELXWwo"}]}' 'snGMEFkJ' --login_with_auth "Bearer foo"
iam-admin-remove-role-members-v3 '{"members": [{"displayName": "2LlQrzL6", "namespace": "Gc3giG5L", "userId": "k7ts2TGC"}, {"displayName": "8msb50PL", "namespace": "fPb2Qzaf", "userId": "VyIZiYYe"}, {"displayName": "zoqwrksK", "namespace": "7vFgfh7M", "userId": "7F2ztDky"}]}' 'ireDeTiS' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v3 '{"permissions": [{"action": 52, "resource": "ZZVEp1G0", "schedAction": 1, "schedCron": "GC8CJIX4", "schedRange": ["pUio3Ma3", "esutJje5", "6X1LIlhj"]}, {"action": 36, "resource": "4cJfNg0c", "schedAction": 0, "schedCron": "ChraYdHZ", "schedRange": ["OJVIJ0h7", "KYBGr1lS", "RAjfdCcw"]}, {"action": 49, "resource": "RrEMJBV5", "schedAction": 66, "schedCron": "Af2yMi9A", "schedRange": ["TVLoSj0R", "2bYPUl2i", "YciezUYg"]}]}' 'aOjNcNlC' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v3 '{"permissions": [{"action": 41, "resource": "tMVKl6tx", "schedAction": 72, "schedCron": "2ngDAR7G", "schedRange": ["xNcEXASJ", "0xiJ2wgH", "hrjBY9rT"]}, {"action": 8, "resource": "JFlzLoMc", "schedAction": 39, "schedCron": "aQkgmqFy", "schedRange": ["47UzZbJ5", "stH5EEQJ", "QpIcpYPD"]}, {"action": 23, "resource": "Lo8FOO8E", "schedAction": 9, "schedCron": "L4rn5YxR", "schedRange": ["hN9IsZ7C", "L7cHyqpW", "H2bdNhRX"]}]}' 'Lul7n7Eh' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v3 '["v9UGxbB3", "jyoAcMx6", "1OxZN2UY"]' '6IB7MM5I' --login_with_auth "Bearer foo"
iam-admin-delete-role-permission-v3 '38' 'vy8T3Q99' '0NoTejRv' --login_with_auth "Bearer foo"
iam-admin-get-my-user-v3 --login_with_auth "Bearer foo"
iam-user-authentication-v3 'lXKRBuEQ' 'pbq4hZog' 'Q94CO5qU' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-authentication-with-platform-link-v3 'FPHXXlhe' '3yB47SuW' '1y9n0cwt' 'NY2mJG67' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v3 'vRtgT8m1' --login_with_auth "Bearer foo"
iam-request-one-time-linking-code-v3 '143uZwxQ' --login_with_auth "Bearer foo"
iam-validate-one-time-linking-code-v3 'rJ0DteRb' --login_with_auth "Bearer foo"
iam-request-token-by-one-time-link-code-response-v3 'SqMykXux' 'zGnhM6bG' --login_with_auth "Bearer foo"
iam-get-country-location-v3 --login_with_auth "Bearer foo"
iam-logout --login_with_auth "Bearer foo"
iam-request-game-token-code-response-v3 '4zgZULOU' --login_with_auth "Bearer foo"
iam-admin-retrieve-user-third-party-platform-token-v3 'wyEbY7Cj' 'EE2rHEU5' --login_with_auth "Bearer foo"
iam-revoke-user-v3 'T4tEWvXX' --login_with_auth "Bearer foo"
iam-authorize-v3 'bEu72iXH' 'code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-introspection-v3 '951QUQFJ' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-jwksv3 --login_with_auth "Bearer foo"
iam-send-mfa-authentication-code 'kTYmKv63' 'JhBCdZCf' 'p1eBTPpJ' --login_with_auth "Bearer foo"
iam-change2fa-method 'CQdXl1dp' 'PvQoohsd' --login_with_auth "Bearer foo"
iam-verify2fa-code 'DhGoPQ2H' 'zFxwwVsG' 'JbGJ2MHV' 'false' --login_with_auth "Bearer foo"
iam-retrieve-user-third-party-platform-token-v3 'FuJ6aGMQ' 'Ft7LXDml' --login_with_auth "Bearer foo"
iam-auth-code-request-v3 'tFmF0Jww' 'xcZKdzEz' --login_with_auth "Bearer foo"
iam-platform-token-grant-v3 'M75A7wSl' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-revocation-list-v3 --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-revocation-v3 'B805qe9V' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-grant-v3 'refresh_token' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-verify-token-v3 'SAlCKixp' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-platform-authentication-v3 'JYsuTLeG' 'EVLqXxJy' --login_with_auth "Bearer foo"
iam-public-get-input-validations --login_with_auth "Bearer foo"
iam-public-get-country-age-restriction-v3 'nej1BVgx' --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-public-v3 --login_with_auth "Bearer foo"
iam-retrieve-active-oidc-clients-public-v3 '3YzsnHp1' --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["sq2BaYWv", "8X9M5hVL", "I9sItyeT"]}' 'csIIwCUD' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv3 'ugx9MA4j' 'fI3wtgMN' --login_with_auth "Bearer foo"
iam-public-get-async-status '224OZctA' --login_with_auth "Bearer foo"
iam-public-search-user-v3 --login_with_auth "Bearer foo"
iam-public-create-user-v3 '{"PasswordMD5Sum": "s9pg2vtL", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "T75XwRc7", "policyId": "p1wivK3X", "policyVersionId": "rQYsP0xp"}, {"isAccepted": true, "localizedPolicyVersionId": "HuD6M2Fh", "policyId": "sK762C4s", "policyVersionId": "HtLVN6fz"}, {"isAccepted": true, "localizedPolicyVersionId": "Mhpd1th2", "policyId": "P26xI0rv", "policyVersionId": "rYT8mAAy"}], "authType": "BAIkBkcY", "code": "LC3kmYA6", "country": "V8gbmHi7", "dateOfBirth": "8om4hCdx", "displayName": "fDuFOsBl", "emailAddress": "jAcHEBvm", "password": "xZiq2J5V", "reachMinimumAge": true}' --login_with_auth "Bearer foo"
iam-check-user-availability 'esUpYjzM' 'oFWooEO9' --login_with_auth "Bearer foo"
iam-public-bulk-get-users '{"userIds": ["7Ae1pcpJ", "UCuguRfi", "xiSO2NIx"]}' --login_with_auth "Bearer foo"
iam-public-send-registration-code '{"emailAddress": "QwmDdtk6", "languageTag": "IFRDZB4q"}' --login_with_auth "Bearer foo"
iam-public-verify-registration-code '{"code": "f7YZuMg9", "emailAddress": "agbMRrHY"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v3 '{"emailAddress": "2EAVtzy0", "languageTag": "EczdUimU"}' --login_with_auth "Bearer foo"
iam-get-admin-invitation-v3 'abfVLCjj' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v3 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "Be7L24nw", "policyId": "vv4V3ttW", "policyVersionId": "fMQFxKiR"}, {"isAccepted": false, "localizedPolicyVersionId": "LOMK183J", "policyId": "xXEX7F7R", "policyVersionId": "7Mc2zhAi"}, {"isAccepted": true, "localizedPolicyVersionId": "jgm3GOwu", "policyId": "msLN11OK", "policyVersionId": "YjGeX03c"}], "authType": "EMAILPASSWD", "country": "6cUGlNlt", "dateOfBirth": "NPojkKay", "displayName": "pRFWhVsn", "password": "VwNA6Y1d", "reachMinimumAge": true}' 'OovQcOUU' --login_with_auth "Bearer foo"
iam-update-user-v3 '{"avatarUrl": "J4Ejp3WT", "country": "058G9nW4", "dateOfBirth": "9ttoHGoW", "displayName": "tvVmaS06", "languageTag": "BPGAeJC4", "userName": "HeOgiwR3"}' --login_with_auth "Bearer foo"
iam-public-partial-update-user-v3 '{"avatarUrl": "oo1ZtHCc", "country": "uh47bjNM", "dateOfBirth": "T3IAKBvl", "displayName": "livrEm0b", "languageTag": "fcgtYdFg", "userName": "64knB2Av"}' --login_with_auth "Bearer foo"
iam-public-send-verification-code-v3 '{"context": "uFIBR4Ze", "emailAddress": "Bba0AhfE", "languageTag": "cMRpz8u7"}' --login_with_auth "Bearer foo"
iam-public-user-verification-v3 '{"code": "1i3Km22H", "contactType": "45oRcdsv", "languageTag": "XG6GMdOE", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v3 '{"code": "ueExCiTU", "country": "M4Awckom", "dateOfBirth": "VxUiJism", "displayName": "siNgM1yy", "emailAddress": "oNRv05V1", "password": "EFTpjk1j", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-verify-headless-account-v3 '{"emailAddress": "gJkazJC2", "password": "BLhCu39T"}' --login_with_auth "Bearer foo"
iam-public-update-password-v3 '{"languageTag": "aqz05ngN", "newPassword": "3wuZHcAW", "oldPassword": "C0Y51jSy"}' --login_with_auth "Bearer foo"
iam-public-create-justice-user 'jGR4NiOh' --login_with_auth "Bearer foo"
iam-public-platform-link-v3 'iXsiXqAW' '18WSTq9X' --login_with_auth "Bearer foo"
iam-public-platform-unlink-v3 '{"platformNamespace": "iANdietR"}' 'J9lrM5XR' --login_with_auth "Bearer foo"
iam-public-platform-unlink-all-v3 'wU7o0F3X' --login_with_auth "Bearer foo"
iam-public-force-platform-link-v3 'F2xNlpFo' 'gvNpDATH' --login_with_auth "Bearer foo"
iam-public-web-link-platform 'dAasFb5o' --login_with_auth "Bearer foo"
iam-public-web-link-platform-establish 'uu4BCG9j' 'ld8Xi1TT' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"code": "8rQnsonf", "emailAddress": "Hm6jwwnu", "newPassword": "8X4eq3yR"}' --login_with_auth "Bearer foo"
iam-public-get-user-by-user-id-v3 'Cb7hx5CZ' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 'KfhWtDDp' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 'RBwMQauX' --login_with_auth "Bearer foo"
iam-public-get-user-information-v3 'PoCzl9xt' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 'DfsRZ3hy' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 'nfS8sCy7' --login_with_auth "Bearer foo"
iam-public-list-justice-platform-accounts-v3 'HG7gXBoh' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "fLHiJYbJ", "platformUserId": "oJi0tsQB"}' 'VIwiGeEc' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["J89j6JFc", "oez29Gqo", "XlIV6HtE"], "requestId": "Jejz4IP6"}' 'dJxJKjWp' --login_with_auth "Bearer foo"
iam-public-get-publisher-user-v3 'uyi4Lv5X' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 'XNNJGg0j' 'zYpEMd1Q' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 'hm7uRPft' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-public-get-link-headless-account-to-my-account-conflict-v3 'NaHSNvtD' --login_with_auth "Bearer foo"
iam-link-headless-account-to-my-account-v3 '{"chosenNamespaces": ["YcU0wsQj", "G5gz8nOb", "2nsGrua2"], "oneTimeLinkCode": "T63Ev599"}' --login_with_auth "Bearer foo"
iam-public-send-verification-link-v3 '{"languageTag": "Pl8kQ9Ar"}' --login_with_auth "Bearer foo"
iam-public-verify-user-by-link-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler 'A0zaLLsT' 'yeX55GEr' --login_with_auth "Bearer foo"
iam-login-sso-client '05NosrOf' --login_with_auth "Bearer foo"
iam-logout-sso-client 'YrIsMRVf' --login_with_auth "Bearer foo"
iam-request-game-token-response-v3 '9ytrYUb7' --login_with_auth "Bearer foo"
iam-admin-get-devices-by-user-v4 --login_with_auth "Bearer foo"
iam-admin-get-banned-devices-v4 --login_with_auth "Bearer foo"
iam-admin-get-user-device-bans-v4 'Jm9B5lLO' --login_with_auth "Bearer foo"
iam-admin-ban-device-v4 '{"comment": "fJtiDUT1", "deviceId": "FZD3TvbM", "deviceType": "cj5EdsA2", "enabled": true, "endDate": "LQiFyKgg", "ext": {"eSr0IbMN": {}, "1rNP3VRw": {}, "mJ0IzkHa": {}}, "reason": "hgrLWxRI"}' --login_with_auth "Bearer foo"
iam-admin-get-device-ban-v4 '2FjhqQVp' --login_with_auth "Bearer foo"
iam-admin-update-device-ban-v4 '{"enabled": true}' '7LIANFzL' --login_with_auth "Bearer foo"
iam-admin-generate-report-v4 'pJM0Hf1t' --login_with_auth "Bearer foo"
iam-admin-get-device-types-v4 --login_with_auth "Bearer foo"
iam-admin-get-device-bans-v4 'jFNVtohP' --login_with_auth "Bearer foo"
iam-admin-decrypt-device-v4 'Ve1Dm5YZ' --login_with_auth "Bearer foo"
iam-admin-unban-device-v4 'h4MTw67C' --login_with_auth "Bearer foo"
iam-admin-get-users-by-device-v4 'EC6KYAYj' --login_with_auth "Bearer foo"
iam-admin-create-test-users-v4 '{"count": 33}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["9wYZN9xq", "F9C7fRWh", "2Uo886hy"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "VxjjFagG", "country": "1r9iqiET", "dateOfBirth": "DyprixzG", "displayName": "hGSN9bWX", "languageTag": "G6ArUZmW", "userName": "3tp77vAm"}' 'NgYMRILw' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "kv5MhRoC", "emailAddress": "LMqKqOWE"}' 'nsE67L6z' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 'AIahxDap' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 'WJbU4j9t' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["ecsMP8oe", "kYdx2mIh", "tfwe7aZc"], "roleId": "DAdyCnVg"}' 'yGBz8RRF' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["2NrvP5Zs", "hhZfNOco", "4aBm2CLs"], "roleId": "956ykyFx"}' 'otvBTX9G' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["KKtDQZAu", "WQIOpvWk", "7jtLpx5A"], "roleId": "eZz6KLO9"}' '8BfJ2rwn' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": false, "deletable": true, "isWildcard": true, "roleName": "ZB7UfxQI"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 '9idhIomX' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 'UZeVURZH' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "I3OKblcR"}' 'enfMZ5gz' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 11, "resource": "sjLthihU", "schedAction": 43, "schedCron": "NZfyE9VM", "schedRange": ["e76b45AE", "Phyz7Cn1", "dloIIItv"]}, {"action": 77, "resource": "fFTSRsfM", "schedAction": 42, "schedCron": "ABJ6Gskz", "schedRange": ["fU35x0SL", "miQRZ5EG", "5SuJKERC"]}, {"action": 66, "resource": "4nd0hxIJ", "schedAction": 29, "schedCron": "7yYcIcGj", "schedRange": ["uiOPHfhA", "FSjS5fTu", "hn59Z8hr"]}]}' 'ssRwJEFU' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 39, "resource": "GXyNHslO", "schedAction": 52, "schedCron": "ZdFrLho8", "schedRange": ["YQLl1Ldv", "PRI5TC0S", "9XonL9Zg"]}, {"action": 54, "resource": "IPIQwqFN", "schedAction": 6, "schedCron": "gDwqNDtc", "schedRange": ["nQd5bsla", "o5YoLeFE", "RVURGmQR"]}, {"action": 98, "resource": "Tl3ZAWxq", "schedAction": 62, "schedCron": "n9IGoATB", "schedRange": ["6vEgnsVk", "wxBxxfPC", "v03sUn0O"]}]}' 'nX5wUHIn' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["lD4QAHTg", "lGGdX9SG", "gw5FV88i"]' 'oeF62XmF' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'WgeUtn6b' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["TZhBgs0i", "rrFCj7II", "LcGsVsRQ"], "namespace": "tXFf5ybd", "userId": "s13IhQ9s"}' '1b5wAksX' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "7xHLtoAS", "userId": "YP7SMf1d"}' '1WdMDKji' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "YOHJBb39", "country": "GcA0OkGJ", "dateOfBirth": "kfjF8jXu", "displayName": "79tT6zSh", "languageTag": "Lk9R3tjX", "userName": "q1Nuyzi2"}' --login_with_auth "Bearer foo"
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
iam-admin-enable-my-email-v4 'ufmMqSYR' --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 'jf8AOACW' --login_with_auth "Bearer foo"
iam-admin-invite-user-v4 '{"assignedNamespaces": ["5dP98B2b", "3ByCCrfk", "a9Tv70uI"], "emailAddresses": ["LyYuTWEG", "hEmsHw2r", "e8bEUDyJ"], "isAdmin": true, "namespace": "eHoNqUTM", "roleId": "hcpDNx2O"}' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "CwHCbpZg", "policyId": "2BtKMnr9", "policyVersionId": "CjxGb4lD"}, {"isAccepted": false, "localizedPolicyVersionId": "PQJ6FOZY", "policyId": "WCd8CWlF", "policyVersionId": "RrQp2r7E"}, {"isAccepted": false, "localizedPolicyVersionId": "wyyEBzqz", "policyId": "vLILuIMX", "policyVersionId": "0O2zNy5h"}], "authType": "EMAILPASSWD", "country": "G0PLFlbo", "dateOfBirth": "CkcoemXy", "displayName": "xD05cgLm", "emailAddress": "WKm9sg1T", "password": "WNkQmXFO", "passwordMD5Sum": "L0Z60AIs", "username": "Yg2fKoad", "verified": true}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "ds0wVNFA", "policyId": "f7l354Iv", "policyVersionId": "FWXlhOAh"}, {"isAccepted": false, "localizedPolicyVersionId": "qnymvTxF", "policyId": "DTmGtZAd", "policyVersionId": "XN04pwKf"}, {"isAccepted": true, "localizedPolicyVersionId": "JyNLN4o1", "policyId": "3hIWWx4B", "policyVersionId": "uoASVFml"}], "authType": "EMAILPASSWD", "code": "Q99Y6yda", "country": "A8bqqiuX", "dateOfBirth": "OEYrZraa", "displayName": "1tBHLn4Q", "emailAddress": "5XtH4GnG", "password": "7hcOdjpv", "passwordMD5Sum": "hgSXKFzc", "reachMinimumAge": false, "username": "8X2MVOJD"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "BLN9eAKb", "policyId": "FMICrAb1", "policyVersionId": "ZI1ccB1v"}, {"isAccepted": true, "localizedPolicyVersionId": "Wa2hFBYa", "policyId": "NFN16GB8", "policyVersionId": "9sJ0TlZI"}, {"isAccepted": false, "localizedPolicyVersionId": "8Lcojk6u", "policyId": "dl95gHSQ", "policyVersionId": "ovK2w8b3"}], "authType": "EMAILPASSWD", "country": "UHBExNqF", "dateOfBirth": "wkwQqOK4", "displayName": "wM3cw1rT", "password": "DjM1ED7W", "reachMinimumAge": true, "username": "xaB85P73"}' 'CO6DzYPS' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "JXGxRbaD", "country": "VoygHYZq", "dateOfBirth": "mBB5BRKX", "displayName": "27Vdz4er", "languageTag": "fNhISjOr", "userName": "TJybqUo8"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "eiNrMnMU", "emailAddress": "SYEbwn4L"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "JgZGklm0", "country": "obXALsAa", "dateOfBirth": "BQAgA6Io", "displayName": "gcgM0jRV", "emailAddress": "fbHvBvD1", "password": "1vWOtVfB", "reachMinimumAge": false, "username": "8ZlF78gu", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"emailAddress": "fTmUOeSA", "password": "4uC6IFkB", "username": "DHM4JeGK"}' --login_with_auth "Bearer foo"
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
iam-public-enable-my-email-v4 'qXuasHKD' --login_with_auth "Bearer foo"
iam-public-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-public-make-factor-my-default-v4 'kyBmjaeB' --login_with_auth "Bearer foo"
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
    '[{"field": "50x5hiI7", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "blockedWord": ["VQDFRr2w", "WwPYIpzq", "UCIrDUBZ"], "description": [{"language": "vATEyq5V", "message": ["2DfJwIg2", "dPopN0O6", "7JOPFTBC"]}, {"language": "Uykct7vz", "message": ["vE70sQam", "3Z63FZQt", "GpOrw723"]}, {"language": "CFS1RWhb", "message": ["HtwqyUKb", "o8tgMOqh", "NcpqC8s6"]}], "isCustomRegex": true, "letterCase": "vWR4Fhe2", "maxLength": 24, "maxRepeatingAlphaNum": 57, "maxRepeatingSpecialCharacter": 4, "minCharType": 56, "minLength": 92, "regex": "UuL4ypgr", "specialCharacterLocation": "DvXmXtcE", "specialCharacters": ["AWXA5wvf", "ndj5XEgl", "9JqevSuQ"]}}, {"field": "7MvNBfgu", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "blockedWord": ["NounkoNM", "1xal8FFU", "kZdHnQVk"], "description": [{"language": "WRTFSRWY", "message": ["G8321R6X", "N5NKhBDr", "wC5Pc5KV"]}, {"language": "iNrYP3q0", "message": ["fmT9Cu0B", "vZhhSRgy", "ZwR5zeTJ"]}, {"language": "hDBtqJgM", "message": ["zKC3koEp", "oDGy3sX6", "GPtLfgNn"]}], "isCustomRegex": false, "letterCase": "ufkEyLo4", "maxLength": 8, "maxRepeatingAlphaNum": 83, "maxRepeatingSpecialCharacter": 55, "minCharType": 44, "minLength": 53, "regex": "Xpt02hjB", "specialCharacterLocation": "LLOdVSjk", "specialCharacters": ["wIoYlAf4", "Wtz5yMh0", "HtcIOzH1"]}}, {"field": "C7jzJ9PT", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "blockedWord": ["1j3zRTJB", "08IAx6v8", "eChYH88T"], "description": [{"language": "x7dO0Xo8", "message": ["mRa1WQI5", "30yNADdd", "xTfms2Rh"]}, {"language": "iKiLonx4", "message": ["xuARxWRB", "piIguSZ7", "SWZ7GJgc"]}, {"language": "tzFbG49F", "message": ["b45hVRja", "guu09HZF", "TFp6jj7J"]}], "isCustomRegex": true, "letterCase": "ftKohUVx", "maxLength": 47, "maxRepeatingAlphaNum": 64, "maxRepeatingSpecialCharacter": 78, "minCharType": 55, "minLength": 64, "regex": "mnPJ8FCv", "specialCharacterLocation": "cqmMxXRu", "specialCharacters": ["pItdAIrh", "ozRhotLe", "5eP9g0fi"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    'aVqFiwlc' \
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
    '{"ageRestriction": 30, "enable": false}' \
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
    '{"ageRestriction": 53}' \
    'jfvVXBMB' \
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
    '{"ban": "ROhnWJ6E", "comment": "33rdTB8T", "endDate": "GeaKV78W", "reason": "3xUIg2ow", "skipNotif": true, "userIds": ["7h4rFl7U", "YWD0OO4X", "zBnzU8ax"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "uSDJpzKH", "userId": "HP7Yzmsy"}, {"banId": "lJkfSSY2", "userId": "W0O4ATv2"}, {"banId": "enC8B7Ng", "userId": "z8JCaiOq"}]}' \
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
    '{"audiences": ["zy7yOx98", "cKQLjlyH", "f5JEZc59"], "baseUri": "YH5Uk1Is", "clientId": "VvuCZtm3", "clientName": "P7H1mHSw", "clientPermissions": [{"action": 43, "resource": "BHhX8fpJ", "schedAction": 9, "schedCron": "xHylppgU", "schedRange": ["r2oVicqo", "DUBXIbds", "LCr6LRsN"]}, {"action": 34, "resource": "75RcJCrU", "schedAction": 37, "schedCron": "sQC8XCJX", "schedRange": ["WiooI9hn", "mkMkvG7j", "i3S1ctso"]}, {"action": 72, "resource": "bqO4xr9d", "schedAction": 20, "schedCron": "0S3SmpJs", "schedRange": ["e09tWwGx", "9LC7Vxv2", "cFJXsvqW"]}], "clientPlatform": "cl88h314", "deletable": false, "description": "GLRdfuBA", "namespace": "EWGM0OD0", "oauthAccessTokenExpiration": 25, "oauthAccessTokenExpirationTimeUnit": "kroypqrB", "oauthClientType": "EDqvio7F", "oauthRefreshTokenExpiration": 15, "oauthRefreshTokenExpirationTimeUnit": "jQ62pk8t", "parentNamespace": "ar8j8QUj", "redirectUri": "IHZMeMKu", "scopes": ["VMZJhZmw", "soYcS0tI", "TnMATthw"], "secret": "tL9s9Syv", "twoFactorEnabled": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    'BFdNScfa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'ehlBAqD6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["WSv3KMkq", "NYNEJ2EA", "wLmNs6qI"], "baseUri": "Sxn4Js28", "clientName": "KlvoVIAR", "clientPermissions": [{"action": 16, "resource": "Bmf6Ut92", "schedAction": 55, "schedCron": "QQadDJpQ", "schedRange": ["qKECOU6i", "QbEhQHEK", "iz3ljaWJ"]}, {"action": 86, "resource": "wBYAkX9K", "schedAction": 10, "schedCron": "C5mmoSCY", "schedRange": ["e5PlqVXd", "wAPkyFdw", "QTlvDycQ"]}, {"action": 26, "resource": "a07ZOeZo", "schedAction": 14, "schedCron": "EHA6M0vk", "schedRange": ["YYowr6hV", "tj1OKzYn", "TN3NKOZ7"]}], "clientPlatform": "VZjQyJtq", "deletable": false, "description": "D2FGUMRH", "namespace": "EsVDBeNP", "oauthAccessTokenExpiration": 48, "oauthAccessTokenExpirationTimeUnit": "4UO15oPy", "oauthRefreshTokenExpiration": 23, "oauthRefreshTokenExpirationTimeUnit": "E9iLgcHU", "redirectUri": "hWDX1R24", "scopes": ["xiGaMIOJ", "Bcd9eZbJ", "jIyQ3jFW"], "twoFactorEnabled": true}' \
    'f56os519' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 17, "resource": "bcHS5cDv"}, {"action": 89, "resource": "Fl7DbqVm"}, {"action": 13, "resource": "4xKD6x0m"}]}' \
    'noOmm2UV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 66, "resource": "SDaTwmIw"}, {"action": 33, "resource": "qOR0bNIA"}, {"action": 52, "resource": "bwyGClGb"}]}' \
    'gmVcfJbM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '90' \
    'RAEU4Ma7' \
    'k9wVMCBm' \
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
    'UmKOwMM1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "3Rt63YPg", "AWSCognitoRegion": "yLaTXhxw", "AWSCognitoUserPool": "GCvLW1D6", "AllowedClients": ["XZFhVDwE", "OOm6x8qh", "s2aZSbX7"], "AppId": "bXVeyxzu", "AuthorizationEndpoint": "CuS98MA9", "ClientId": "eiOqVzKm", "Environment": "9qxMpHKY", "FederationMetadataURL": "IGny7ptY", "GenericOauthFlow": true, "IsActive": false, "Issuer": "wqM9xyFn", "JWKSEndpoint": "Zrwql4FB", "KeyID": "9fiAskeS", "NetflixCertificates": {"encryptedPrivateKey": "fnpjFHf4", "encryptedPrivateKeyName": "X16T8YUx", "publicCertificate": "nYqSXjEj", "publicCertificateName": "wwSjuoe7", "rootCertificate": "gLlwwLdZ", "rootCertificateName": "HXoxtKJ0"}, "OrganizationId": "vDj3Y2Zq", "PlatformName": "YL10jrtM", "RedirectUri": "GcQKeeTp", "RegisteredDomains": [{"affectedClientIDs": ["TZYMYMMH", "KbglBfOp", "DoGNSgLI"], "domain": "uvi8lZU9", "namespaces": ["eX0YiJ21", "dItYKyKL", "FFF329im"], "roleId": "HAW6V0Ej"}, {"affectedClientIDs": ["ogONS34l", "QHpka5he", "JRppIBS2"], "domain": "iDhULoMH", "namespaces": ["pU5tLZuJ", "vhoeFwla", "xQ3a1itS"], "roleId": "YrlZIVOm"}, {"affectedClientIDs": ["ZeQMBbaS", "jSOZqOEq", "xM6KUvg4"], "domain": "WNoc1a1b", "namespaces": ["51amR59T", "6hJkL5jr", "D60k6sh7"], "roleId": "MwG2eXgL"}], "Secret": "uVqgvMfr", "TeamID": "EPcaENfV", "TokenAuthenticationType": "jLb7Ah9t", "TokenClaimsMapping": {"Ma8zV8N6": "rWcKBLWU", "EbJBPEtq": "UhyctLU4", "WAN13dHc": "DQETyknf"}, "TokenEndpoint": "QsAijDHi", "UserInfoEndpoint": "ryjKveOG", "UserInfoHTTPMethod": "g9IrbygY", "scopes": ["AEKx2C85", "ZJ6Y2NdL", "h7BGvH8J"]}' \
    'LvJWy1i4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    '82FGfHu5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "uqeQv26L", "AWSCognitoRegion": "HNIrqkMF", "AWSCognitoUserPool": "jtyO4Sfz", "AllowedClients": ["WlH4m8Yp", "NWzHF4qs", "f7GpgadJ"], "AppId": "z62Tjtx6", "AuthorizationEndpoint": "3OWKw5jF", "ClientId": "z17VGYbc", "Environment": "P72YANCL", "FederationMetadataURL": "1QcNmfUX", "GenericOauthFlow": true, "IsActive": true, "Issuer": "sJG7P7V0", "JWKSEndpoint": "6qvEoHSD", "KeyID": "eEaTTG4T", "NetflixCertificates": {"encryptedPrivateKey": "bopS4vDh", "encryptedPrivateKeyName": "rZZjzZvB", "publicCertificate": "nrrtNWFZ", "publicCertificateName": "6vLFfHFV", "rootCertificate": "HOt7BIB3", "rootCertificateName": "yufef26T"}, "OrganizationId": "ldMJDewe", "PlatformName": "H6LCWNEM", "RedirectUri": "jfH150Kd", "RegisteredDomains": [{"affectedClientIDs": ["jnyPQC6R", "hhp7dIZ4", "XAf5p2Ip"], "domain": "CzDlSHMA", "namespaces": ["fz10koR4", "JYtYKOrh", "8pDlTXmo"], "roleId": "oB9S61uc"}, {"affectedClientIDs": ["XZ9AdZVe", "xwKi5XaB", "MZjYoBJ1"], "domain": "SaXOQKix", "namespaces": ["u7pnHgPl", "mPUpF2AL", "Dq9rgMda"], "roleId": "8aFQIMQP"}, {"affectedClientIDs": ["q2Nt7Wto", "TUA44EYu", "5RFEKGFk"], "domain": "X227oUwx", "namespaces": ["vKPqZ8jm", "D20Jd9o0", "JZxyFifm"], "roleId": "KtE4sjY9"}], "Secret": "1zpeWIlN", "TeamID": "969kg9Lf", "TokenAuthenticationType": "bfBm8EiB", "TokenClaimsMapping": {"hY13U50f": "e4JPtP0a", "JGoWAoHS": "252sRxf5", "6OTk59hB": "Pugc22Ha"}, "TokenEndpoint": "WPPn6cC7", "UserInfoEndpoint": "lWql95Fr", "UserInfoHTTPMethod": "XhIdXVSZ", "scopes": ["0qPh1uMY", "Y7OnBgcu", "jb8Zn1do"]}' \
    'IVnftOr2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["S1euWvwy", "p2Y0hkS0", "vLbp7E3d"], "assignedNamespaces": ["ygXO7Fsr", "HA3jwGTv", "0b2gu0Pi"], "domain": "zcrpbVoo", "roleId": "Zbb959bn"}' \
    'wmaFAMUQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "RiEnyEfG"}' \
    'DCOAG7wH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    'ATmMqfbX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "DOyKjLQz", "apiKey": "2ROL5aEY", "appId": "T0Kh5dsC", "federationMetadataUrl": "VccPkHvp", "isActive": true, "redirectUri": "lrT60lY7", "secret": "5GPz2PFm", "ssoUrl": "GUiGbA5K"}' \
    'dlydtQ2i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    '82KXrbjr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "btfFd3gE", "apiKey": "LaZdPbhY", "appId": "5yKbBclO", "federationMetadataUrl": "1CbU4XqU", "isActive": false, "redirectUri": "V3xhsMXw", "secret": "EoazvW0c", "ssoUrl": "hyk2zXBL"}' \
    '5VxYIOXX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'fersy1c2' \
    'WkpFhpiq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'd7Hx2VSD' \
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
    '{"userIds": ["45lm2GAC", "IibkKK9E", "l2nmkYDF"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["gOTbStd8", "98yM1mhT", "IRKonIiQ"], "isAdmin": false, "namespace": "IxZlK0cG", "roles": ["yCYacAM4", "RWxNpX8M", "BMNRoCTw"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'AdminInviteUserV3' test.out

#- 146 AdminQueryThirdPlatformLinkHistoryV3
$PYTHON -m $MODULE 'iam-admin-query-third-platform-link-history-v3' \
    've2LfyoX' \
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
    '{"listEmailAddressRequest": ["69eE4ZQe", "AZHwMmA8", "qgYagMFH"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'AdminGetBulkUserByEmailAddressV3' test.out

#- 150 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'RPOWoSOY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AdminGetUserByUserIdV3' test.out

#- 151 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "Rj1mxGoX", "country": "IAh63j8e", "dateOfBirth": "fK6kJKc1", "displayName": "v38VGuEo", "languageTag": "XNryoIYT", "userName": "j8hJQqLx"}' \
    'YoPoJDaQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserV3' test.out

#- 152 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'IqSYDFRA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'AdminGetUserBanV3' test.out

#- 153 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "wgOlWDy4", "comment": "FgNnzVSr", "endDate": "OGRWi1oT", "reason": "wFLr0qvu", "skipNotif": false}' \
    'a30taC0a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AdminBanUserV3' test.out

#- 154 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": false, "skipNotif": false}' \
    '0LYTg4Bj' \
    'qeyY4g0y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'AdminUpdateUserBanV3' test.out

#- 155 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "xCd9hJBY", "emailAddress": "5adDeqVW", "languageTag": "MQOPOtlW"}' \
    'BWDBLSnO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminSendVerificationCodeV3' test.out

#- 156 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "GxwB03O2", "ContactType": "yOnNugY5", "LanguageTag": "Yegup9Sf", "validateOnly": true}' \
    'Zg9Evwgn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'AdminVerifyAccountV3' test.out

#- 157 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'wOK2NQfq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'GetUserVerificationCode' test.out

#- 158 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'j23LOPX8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserDeletionStatusV3' test.out

#- 159 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"enabled": false}' \
    'ynJbf0gK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminUpdateUserDeletionStatusV3' test.out

#- 160 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "QpfbUd8W", "country": "6adfk9fC", "dateOfBirth": "Ap3oT8Gh", "displayName": "flSnJiWY", "emailAddress": "Dy6OIi9E", "password": "V1LjtuiL", "validateOnly": false}' \
    '2F3SYFsA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminUpgradeHeadlessAccountV3' test.out

#- 161 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'KoBPagzy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminDeleteUserInformationV3' test.out

#- 162 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    '5QLZFNHP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminGetUserLoginHistoriesV3' test.out

#- 163 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "NqQ8PcD5", "newPassword": "CNjdYG2x", "oldPassword": "BjoNtavx"}' \
    'axqFFZkn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AdminResetPasswordV3' test.out

#- 164 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 65, "Resource": "70ELvJOJ", "SchedAction": 83, "SchedCron": "CmwZJo0s", "SchedRange": ["pAqXYMco", "45txgCck", "TNiFGJAB"]}, {"Action": 12, "Resource": "HW2fet2s", "SchedAction": 45, "SchedCron": "Z22vADcl", "SchedRange": ["IpeIXJG7", "Sxg2Wt54", "7cAjH6Br"]}, {"Action": 10, "Resource": "VungLgfF", "SchedAction": 77, "SchedCron": "5w6ZF2yS", "SchedRange": ["igsaMUcq", "KaJjyWtU", "1AZGJlxc"]}]}' \
    'TZu91n2Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserPermissionV3' test.out

#- 165 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 71, "Resource": "j1EOZPwO", "SchedAction": 69, "SchedCron": "U3v3Vl9G", "SchedRange": ["kfE4cjip", "GgN0yQAT", "vlUycZsV"]}, {"Action": 83, "Resource": "tmHMlPtf", "SchedAction": 96, "SchedCron": "mLoXMhhy", "SchedRange": ["2ZuOufUo", "j27t4pHJ", "vwPhgn14"]}, {"Action": 61, "Resource": "GB8Uostp", "SchedAction": 52, "SchedCron": "DUYQ22vt", "SchedRange": ["erdDVHZ8", "JqF8MhWq", "RTKQwO7T"]}]}' \
    'MGtVNKLy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminAddUserPermissionsV3' test.out

#- 166 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 51, "Resource": "G5ZUsCyn"}, {"Action": 25, "Resource": "zGndH3nX"}, {"Action": 80, "Resource": "dD2UHPPn"}]' \
    'AvvvSEtF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionBulkV3' test.out

#- 167 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '1' \
    'NR0Vuv99' \
    'OCjly0pe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserPermissionV3' test.out

#- 168 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    '03e94d9E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserPlatformAccountsV3' test.out

#- 169 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'Ft1dpsgc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminGetListJusticePlatformAccounts' test.out

#- 170 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    'n09L31O6' \
    'CDnt59Pe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminGetUserMapping' test.out

#- 171 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    'sdLcOIYA' \
    'e2Cuq1BR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminCreateJusticeUser' test.out

#- 172 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "km7ULnGc", "platformUserId": "cb7IrqA9"}' \
    'tW10ZUzp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminLinkPlatformAccount' test.out

#- 173 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "nRP9VRND"}' \
    'H2auYarO' \
    'GjZyjAXf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformUnlinkV3' test.out

#- 174 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'YrfOmnJW' \
    'j99FdhKD' \
    '9ghDJWx5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminPlatformLinkV3' test.out

#- 175 AdminGetThirdPartyPlatformTokenLinkStatusV3
$PYTHON -m $MODULE 'iam-admin-get-third-party-platform-token-link-status-v3' \
    '33czVe1d' \
    'rISWXH3X' \
    'RFUPc7EC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 176 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["3mFDpfTG", "Fr88g27b", "FZFP00px"]' \
    '3Ijc8gJC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminDeleteUserRolesV3' test.out

#- 177 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "XqKovMPP", "roleId": "1bkxDU2c"}, {"namespace": "P2NGg0qF", "roleId": "bcoVUpBu"}, {"namespace": "MSzfVwuf", "roleId": "lR2RHiOF"}]' \
    'YWVuto6b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminSaveUserRoleV3' test.out

#- 178 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    'EqZxDoZp' \
    'VJnmjgb0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminAddUserRoleV3' test.out

#- 179 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'sQyau0uq' \
    'MpcFP1XZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminDeleteUserRoleV3' test.out

#- 180 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": true, "reason": "h1VFzL5d"}' \
    'rg3yO1dN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateUserStatusV3' test.out

#- 181 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'wtZDJu87' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 182 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "NCrutsei"}' \
    'f2aOjbrF' \
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
    '{"adminRole": true, "deletable": true, "isWildcard": true, "managers": [{"displayName": "pfw9GaYP", "namespace": "MLJ5INwD", "userId": "z022kkaO"}, {"displayName": "1tLHu51r", "namespace": "h3YOuN8b", "userId": "WJuwEuPa"}, {"displayName": "0RMCkLD5", "namespace": "YdABztJl", "userId": "4pmQZR4W"}], "members": [{"displayName": "kgsv7Whg", "namespace": "RgMZPeOl", "userId": "3NmynhIa"}, {"displayName": "0uZsQodV", "namespace": "4kcmx7c8", "userId": "FMQhAgOY"}, {"displayName": "aNvqOidy", "namespace": "U7MqPB5V", "userId": "TqArE0Qg"}], "permissions": [{"action": 48, "resource": "8I6n62io", "schedAction": 7, "schedCron": "ErDY1BWp", "schedRange": ["BzYhKJGv", "A5dv5YmQ", "qzpaZWdb"]}, {"action": 46, "resource": "t0uSPYe5", "schedAction": 18, "schedCron": "zskX1TsA", "schedRange": ["UeAjqxkF", "jbQGrWb3", "QvlKUwuj"]}, {"action": 37, "resource": "oZDhGvKx", "schedAction": 48, "schedCron": "v0TusX3R", "schedRange": ["IDQUt95U", "WNzui22n", "VHmAKaYn"]}], "roleName": "OJeU6xlq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminCreateRoleV3' test.out

#- 185 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'jE2qpAmp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRoleV3' test.out

#- 186 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'XmrtCy1A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteRoleV3' test.out

#- 187 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": false, "isWildcard": false, "roleName": "1WUZR9dH"}' \
    'rVDoLiNK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateRoleV3' test.out

#- 188 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    'MWqbgjV2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminGetRoleAdminStatusV3' test.out

#- 189 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'DnFw9TiI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateAdminRoleStatusV3' test.out

#- 190 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    '9CKzqBWT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminRemoveRoleAdminV3' test.out

#- 191 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'tzDS1DnN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRoleManagersV3' test.out

#- 192 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "ytykmWnV", "namespace": "rnfHkAga", "userId": "53jsSDs0"}, {"displayName": "M9vfu5of", "namespace": "S5WLXZVy", "userId": "heVkScH6"}, {"displayName": "e555DVCv", "namespace": "WD7KO7Fb", "userId": "kF0IxU8N"}]}' \
    'dSnO7Sbe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminAddRoleManagersV3' test.out

#- 193 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "46sp7pt9", "namespace": "3ouU9RVq", "userId": "cPRbH4dG"}, {"displayName": "1sYSig7k", "namespace": "FsxxH1Ju", "userId": "jyspW8g6"}, {"displayName": "5YNJS3vA", "namespace": "vyO3wB9z", "userId": "xeKKzv68"}]}' \
    'UzC9TwrF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminRemoveRoleManagersV3' test.out

#- 194 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'Ab1sfxyf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminGetRoleMembersV3' test.out

#- 195 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "XjkuF80K", "namespace": "CmK6HLga", "userId": "bTxuDw9l"}, {"displayName": "yVhe9otC", "namespace": "7H5zl853", "userId": "rwEqAeh9"}, {"displayName": "8G82jrNR", "namespace": "qQn7JMdv", "userId": "5kb3rxil"}]}' \
    '0Qm1S0Ar' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminAddRoleMembersV3' test.out

#- 196 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "ZBEM7ZXF", "namespace": "9LlIkBXI", "userId": "r6lBcGPx"}, {"displayName": "KvDMc6RE", "namespace": "4V4VvkLh", "userId": "w6PGvbhZ"}, {"displayName": "gonObx1w", "namespace": "Ju68p6vh", "userId": "M8hVrnQN"}]}' \
    'hITIb4Vn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminRemoveRoleMembersV3' test.out

#- 197 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 53, "resource": "vETMjI4J", "schedAction": 36, "schedCron": "BpQZwxk0", "schedRange": ["D4mfq6ws", "UaKE6r60", "gIocPnVV"]}, {"action": 86, "resource": "nTKdNEaU", "schedAction": 51, "schedCron": "SNEljLsT", "schedRange": ["QQ4lmE4I", "dAeYFqdV", "pDrVsfk9"]}, {"action": 6, "resource": "yWioxGiw", "schedAction": 28, "schedCron": "m2CeAG1Y", "schedRange": ["es08PJ5F", "9ZhFv3ge", "XRqVuXPW"]}]}' \
    'JxVwZ0TR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateRolePermissionsV3' test.out

#- 198 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 98, "resource": "mvZ4rHcL", "schedAction": 14, "schedCron": "qbVa7Sn6", "schedRange": ["gdx7yutx", "jRsQ2TM8", "e88lG62I"]}, {"action": 52, "resource": "lY6UwlLJ", "schedAction": 42, "schedCron": "0govZcuS", "schedRange": ["1d8iwXzB", "1MoPwb9R", "3Wn1hswX"]}, {"action": 61, "resource": "aF4duVdJ", "schedAction": 97, "schedCron": "zHCTb6GT", "schedRange": ["7YNVQQTK", "MmO17Zpf", "9HBrFyRc"]}]}' \
    '0ng7bM8K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'AdminAddRolePermissionsV3' test.out

#- 199 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["BjVxcv02", "b7RG3Y1M", "tJbbIWxc"]' \
    'UzXT9dQS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'AdminDeleteRolePermissionsV3' test.out

#- 200 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '9' \
    'G5IstXCA' \
    'ughDh4lR' \
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
    'pksdaTqt' \
    'Pz57595n' \
    'howjOrWK' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 202 'UserAuthenticationV3' test.out

#- 203 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    'awmNLmvS' \
    'DQZyEB9b' \
    'M84LMrDq' \
    'GA4IEz2R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'AuthenticationWithPlatformLinkV3' test.out

#- 204 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    'VJ3MWqIO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 205 RequestOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-request-one-time-linking-code-v3' \
    'jnYRqcze' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'RequestOneTimeLinkingCodeV3' test.out

#- 206 ValidateOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-validate-one-time-linking-code-v3' \
    'qowOBXHm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'ValidateOneTimeLinkingCodeV3' test.out

#- 207 RequestTokenByOneTimeLinkCodeResponseV3
$PYTHON -m $MODULE 'iam-request-token-by-one-time-link-code-response-v3' \
    'aabW1t85' \
    'CQtEonCm' \
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
    'cpyagdmo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'RequestGameTokenCodeResponseV3' test.out

#- 211 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'cmNfeR6r' \
    '2jrjUeXa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 212 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    '4VzpEC2N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'RevokeUserV3' test.out

#- 213 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    'NEqN1tec' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 213 'AuthorizeV3' test.out

#- 214 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'vJEJ1dRX' \
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
    'GFxAryJf' \
    '3oMfnqOU' \
    'EtCUPoCp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'SendMFAAuthenticationCode' test.out

#- 217 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    'zWKh7tYR' \
    'b75aVZHV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'Change2faMethod' test.out

#- 218 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    '7hBTY2g9' \
    'nWhNxWOh' \
    'IVuDfrxZ' \
    'true' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'Verify2faCode' test.out

#- 219 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'PSuzxhxq' \
    'fT5rgcgJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'SQ36XbPE' \
    'hdl30KGx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'AuthCodeRequestV3' test.out

#- 221 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'Eh4qQ95A' \
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
    'RWSCKF2G' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 223 'TokenRevocationV3' test.out

#- 224 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'refresh_token' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 224 'TokenGrantV3' test.out

#- 225 VerifyTokenV3
$PYTHON -m $MODULE 'iam-verify-token-v3' \
    'depaH0bV' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 225 'VerifyTokenV3' test.out

#- 226 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'szk2vS0x' \
    'cm5ubUYz' \
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
    '3BC5oP8V' \
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
    'tj6CqDuZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 231 PublicListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["S3YgTtEe", "oSTf2Btk", "youWVCRS"]}' \
    'WWVW0umN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 232 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    'A25pzV1V' \
    'fvldfwNJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'PublicGetUserByPlatformUserIDV3' test.out

#- 233 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    'jiEYMIOV' \
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
    '{"PasswordMD5Sum": "l8BQdMrY", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "w5M9GFQ7", "policyId": "luHBFwJI", "policyVersionId": "QxSO4YFd"}, {"isAccepted": false, "localizedPolicyVersionId": "khMzRntu", "policyId": "rZ5UYNgG", "policyVersionId": "d9CoOXMB"}, {"isAccepted": true, "localizedPolicyVersionId": "Q5xw6Kv0", "policyId": "zkrcNDyV", "policyVersionId": "BluQLh9g"}], "authType": "83AxwY6Q", "code": "xcjmR31B", "country": "fZsCXzcE", "dateOfBirth": "QIxnE55K", "displayName": "GlEDQJdB", "emailAddress": "3sJvk02b", "password": "jMZvk3oC", "reachMinimumAge": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'PublicCreateUserV3' test.out

#- 236 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'WRjax6eI' \
    'zCMf2TN1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'CheckUserAvailability' test.out

#- 237 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["MQcOE84d", "p0oZHPB2", "a91B2Nbm"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'PublicBulkGetUsers' test.out

#- 238 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "X4xqkddT", "languageTag": "fBxwkXtr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'PublicSendRegistrationCode' test.out

#- 239 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "eYiahGdZ", "emailAddress": "WtHafd7c"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'PublicVerifyRegistrationCode' test.out

#- 240 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "0HHVgQ3V", "languageTag": "M87fAT7C"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'PublicForgotPasswordV3' test.out

#- 241 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    '01dpameA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'GetAdminInvitationV3' test.out

#- 242 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "j7g74RCx", "policyId": "zRSi9Fja", "policyVersionId": "CwOgy7Ye"}, {"isAccepted": false, "localizedPolicyVersionId": "0C4rGfKk", "policyId": "hv45ggRw", "policyVersionId": "cMlLINeM"}, {"isAccepted": true, "localizedPolicyVersionId": "oj6flY7A", "policyId": "jBPCh9Mp", "policyVersionId": "v8H4I6nn"}], "authType": "EMAILPASSWD", "country": "SJBhz1aS", "dateOfBirth": "Q3m5Zckz", "displayName": "fjvyZ054", "password": "anrjRvmW", "reachMinimumAge": true}' \
    'oxPV6RNH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'CreateUserFromInvitationV3' test.out

#- 243 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "7lWun8RT", "country": "3HxbFlHp", "dateOfBirth": "6I97jbls", "displayName": "24mNYe6C", "languageTag": "819avSQj", "userName": "yD91AJLi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'UpdateUserV3' test.out

#- 244 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "4MXCCzvK", "country": "rlpuekvf", "dateOfBirth": "Cokauozj", "displayName": "gvjcHFu0", "languageTag": "fuVTWJlf", "userName": "isO20Lod"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'PublicPartialUpdateUserV3' test.out

#- 245 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "ThExzdwh", "emailAddress": "AHxGB84B", "languageTag": "6cv5VWTG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'PublicSendVerificationCodeV3' test.out

#- 246 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "vVuQi9Dd", "contactType": "93EfN1Rn", "languageTag": "ZFXnnQc4", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'PublicUserVerificationV3' test.out

#- 247 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "7PTRdfhj", "country": "rx7fXiTF", "dateOfBirth": "WMwLUch2", "displayName": "uCVOWYnE", "emailAddress": "hijyGXCS", "password": "fq5cmTon", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'PublicUpgradeHeadlessAccountV3' test.out

#- 248 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "WYFXZLbX", "password": "J7zqEtJI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'PublicVerifyHeadlessAccountV3' test.out

#- 249 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "ElmujTmw", "newPassword": "3BUizSrs", "oldPassword": "v78LqJAB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'PublicUpdatePasswordV3' test.out

#- 250 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'YxMV4R5R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'PublicCreateJusticeUser' test.out

#- 251 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'GnC7Xzz9' \
    'ccyUGt6P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'PublicPlatformLinkV3' test.out

#- 252 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "9dgZzqzZ"}' \
    'zuzffvD6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'PublicPlatformUnlinkV3' test.out

#- 253 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'U4hYrFkM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'PublicPlatformUnlinkAllV3' test.out

#- 254 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    'qwCSkgaS' \
    'GLiYE53P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'PublicForcePlatformLinkV3' test.out

#- 255 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'jwGNwHuh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'PublicWebLinkPlatform' test.out

#- 256 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'tZ8lTrZ4' \
    'OvvND20u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'PublicWebLinkPlatformEstablish' test.out

#- 257 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "4XKjqtJP", "emailAddress": "yLKNmsHP", "newPassword": "maDWO6yV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'ResetPasswordV3' test.out

#- 258 PublicGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-public-get-user-by-user-id-v3' \
    'Ko3Y4OsK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'PublicGetUserByUserIdV3' test.out

#- 259 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    'I1nV1v4L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'PublicGetUserBanHistoryV3' test.out

#- 260 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'LbKLoMYn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 261 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    'etjiwyIA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'PublicGetUserInformationV3' test.out

#- 262 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'IGCvp6Tv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'PublicGetUserLoginHistoriesV3' test.out

#- 263 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'f059Fprs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'PublicGetUserPlatformAccountsV3' test.out

#- 264 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    '5ZJrDoIL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'PublicListJusticePlatformAccountsV3' test.out

#- 265 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "TyFBMxUe", "platformUserId": "oJfjFaBh"}' \
    'X4m9wl6j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'PublicLinkPlatformAccount' test.out

#- 266 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["UTIEpTjc", "STv6g1TV", "ZFOFoUEi"], "requestId": "HiSCCdds"}' \
    'NocDsv60' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'PublicForceLinkPlatformWithProgression' test.out

#- 267 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    '6hL2Hh3U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'PublicGetPublisherUserV3' test.out

#- 268 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'tuZlpLAA' \
    'uW8WstXI' \
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
    '4HkPvpaE' \
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
    'G5c3n3Cc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 273 LinkHeadlessAccountToMyAccountV3
$PYTHON -m $MODULE 'iam-link-headless-account-to-my-account-v3' \
    '{"chosenNamespaces": ["GWKdWcaS", "0qZhsHZb", "kEapwkGi"], "oneTimeLinkCode": "prs1o801"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'LinkHeadlessAccountToMyAccountV3' test.out

#- 274 PublicSendVerificationLinkV3
$PYTHON -m $MODULE 'iam-public-send-verification-link-v3' \
    '{"languageTag": "7gAcMOfe"}' \
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
    'XoX6tiZc' \
    '2wDCPk3u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'PlatformAuthenticateSAMLV3Handler' test.out

#- 277 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'MjOvD6WP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'LoginSSOClient' test.out

#- 278 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'RZrx7ot8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'LogoutSSOClient' test.out

#- 279 RequestGameTokenResponseV3
$PYTHON -m $MODULE 'iam-request-game-token-response-v3' \
    'nIllEmpr' \
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
    'Y360slr0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'AdminGetUserDeviceBansV4' test.out

#- 283 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "kuWbdJrX", "deviceId": "W7hBKedD", "deviceType": "AOW7DM4p", "enabled": false, "endDate": "sa6VsUtX", "ext": {"pfjjA1YW": {}, "4S2zpKmH": {}, "MntoUSi5": {}}, "reason": "RVIntFTt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'AdminBanDeviceV4' test.out

#- 284 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    'S6UScyMF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'AdminGetDeviceBanV4' test.out

#- 285 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": true}' \
    'Ry9vGLNk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'AdminUpdateDeviceBanV4' test.out

#- 286 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    '3KPa62jl' \
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
    'eO15R1MZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'AdminGetDeviceBansV4' test.out

#- 289 AdminDecryptDeviceV4
$PYTHON -m $MODULE 'iam-admin-decrypt-device-v4' \
    'fDMeonHj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'AdminDecryptDeviceV4' test.out

#- 290 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    'WA0LKNIr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'AdminUnbanDeviceV4' test.out

#- 291 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    'mUuzYjyt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'AdminGetUsersByDeviceV4' test.out

#- 292 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"count": 40}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'AdminCreateTestUsersV4' test.out

#- 293 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["XbCcQkkw", "y5YdTtt4", "lAeVyrJ1"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'AdminBulkCheckValidUserIDV4' test.out

#- 294 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "ypmawP41", "country": "xfBKJ4jy", "dateOfBirth": "rbxOzYY3", "displayName": "up10wvDy", "languageTag": "4CQsjJ8O", "userName": "8mM7tD5q"}' \
    'LBKiaAwI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'AdminUpdateUserV4' test.out

#- 295 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "4nkzCUcS", "emailAddress": "PeWyXoDz"}' \
    'NuYWJYPm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'AdminUpdateUserEmailAddressV4' test.out

#- 296 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    'EQXA3qrf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'AdminDisableUserMFAV4' test.out

#- 297 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    '2mBJZeNO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'AdminListUserRolesV4' test.out

#- 298 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["M33UcSe8", "sgHFcYb4", "LuNjRy34"], "roleId": "t3j5o20z"}' \
    '5DFprsZX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateUserRoleV4' test.out

#- 299 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["DRxDRzDJ", "7SPWPjWy", "XOSMnbaq"], "roleId": "AhIcM2eF"}' \
    '0L4IOVkb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'AdminAddUserRoleV4' test.out

#- 300 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["fDsLGOWg", "mdlZjNnb", "b67vqwVv"], "roleId": "OuEV6MNM"}' \
    'ienHOCU8' \
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
    '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "5EYVl8f6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'AdminCreateRoleV4' test.out

#- 303 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'ucXHBzpV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'AdminGetRoleV4' test.out

#- 304 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'WhEv5frD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'AdminDeleteRoleV4' test.out

#- 305 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "wrP6FGOg"}' \
    'bsLRgUU7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'AdminUpdateRoleV4' test.out

#- 306 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 50, "resource": "kFeiSnh4", "schedAction": 6, "schedCron": "gV6JTZax", "schedRange": ["2fmE6p9B", "gRcYrdQ9", "raCoGcJJ"]}, {"action": 64, "resource": "dLGKdEGe", "schedAction": 53, "schedCron": "9hXcv1dS", "schedRange": ["3ULAIJYN", "vUW2ZHb7", "1W49mf3A"]}, {"action": 41, "resource": "lcXGkRIB", "schedAction": 42, "schedCron": "Txj0xk5O", "schedRange": ["VXJTh9ve", "62vNdJll", "fipZCfcz"]}]}' \
    'CelOQ78P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'AdminUpdateRolePermissionsV4' test.out

#- 307 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 79, "resource": "XiRqVLCI", "schedAction": 92, "schedCron": "FzWTq0sd", "schedRange": ["HQDnX4FJ", "chCCDEPs", "RlR1JjKl"]}, {"action": 31, "resource": "GEVCFuhN", "schedAction": 6, "schedCron": "r9BPlYeX", "schedRange": ["gwGG2rpv", "DGRmYO0i", "Gv54l4cu"]}, {"action": 2, "resource": "5BWZ252F", "schedAction": 11, "schedCron": "49sYAcLX", "schedRange": ["1wIRbAt9", "2YtTQACy", "v62d8ND2"]}]}' \
    'zgy3ddLk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'AdminAddRolePermissionsV4' test.out

#- 308 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["z1rVGWNh", "6VoI6yYr", "ZWHiYaof"]' \
    'meVaXvOM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'AdminDeleteRolePermissionsV4' test.out

#- 309 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'IyPaV2BS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'AdminListAssignedUsersV4' test.out

#- 310 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["tXeq27mc", "nUhFAAZB", "e1dExR9k"], "namespace": "iEs58da8", "userId": "47BEsjJd"}' \
    'hj7T5SIj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'AdminAssignUserToRoleV4' test.out

#- 311 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "eMcGqyt8", "userId": "uINPizy4"}' \
    'zzZGKGwH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'AdminRevokeUserFromRoleV4' test.out

#- 312 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "MB486zi1", "country": "qqOMrBei", "dateOfBirth": "NF1wTBYY", "displayName": "ZpFk415m", "languageTag": "bHZxSB4h", "userName": "MrLLf6as"}' \
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
    '9uLqsDKE' \
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
    'nEmSxv2p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'AdminMakeFactorMyDefaultV4' test.out

#- 326 AdminInviteUserV4
$PYTHON -m $MODULE 'iam-admin-invite-user-v4' \
    '{"assignedNamespaces": ["yh1fT1t2", "JNdzsRQq", "zZbrLGsi"], "emailAddresses": ["INTBZ6YM", "NXTsN7tH", "OnImQKG7"], "isAdmin": false, "namespace": "ZSknnmBS", "roleId": "WgvIfRkS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'AdminInviteUserV4' test.out

#- 327 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "R1ruxUuk", "policyId": "8WUswGJu", "policyVersionId": "992LyZX6"}, {"isAccepted": false, "localizedPolicyVersionId": "7bqcrNQ9", "policyId": "baS05Vpx", "policyVersionId": "sF9bPGpg"}, {"isAccepted": true, "localizedPolicyVersionId": "zs7aSwHE", "policyId": "aas23mNP", "policyVersionId": "VgwXsJMB"}], "authType": "EMAILPASSWD", "country": "DU5vIjn1", "dateOfBirth": "lWZC7ihN", "displayName": "T8qFuaRk", "emailAddress": "ncFbEx5v", "password": "tZktkXTQ", "passwordMD5Sum": "vsq754fL", "username": "uDTVJ27Z", "verified": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'PublicCreateTestUserV4' test.out

#- 328 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "gMBSW3dP", "policyId": "2iWXhJHC", "policyVersionId": "J7OzcEeY"}, {"isAccepted": false, "localizedPolicyVersionId": "ZYaliCuM", "policyId": "O0jx9vyq", "policyVersionId": "eYcEpNu1"}, {"isAccepted": true, "localizedPolicyVersionId": "mEATm0BE", "policyId": "xSU88hX9", "policyVersionId": "ya8TAwtq"}], "authType": "EMAILPASSWD", "code": "ugyvFYWZ", "country": "D1U8gX7Q", "dateOfBirth": "nxG5grfj", "displayName": "gWO4LyYe", "emailAddress": "9PoFNpYR", "password": "eXEyu1wR", "passwordMD5Sum": "HT3hO6vi", "reachMinimumAge": true, "username": "vjMDQaUN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'PublicCreateUserV4' test.out

#- 329 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "1ThZHils", "policyId": "938rokWN", "policyVersionId": "Jo1HceWR"}, {"isAccepted": false, "localizedPolicyVersionId": "NMw5S0dH", "policyId": "nBgnaS0t", "policyVersionId": "SqHcZ8Mr"}, {"isAccepted": true, "localizedPolicyVersionId": "FUO5cfs6", "policyId": "fiRZzN7m", "policyVersionId": "XW0XZd0S"}], "authType": "EMAILPASSWD", "country": "lJOxTIJn", "dateOfBirth": "Q4Ys0xdU", "displayName": "2E7U3fvn", "password": "4fnw2xEF", "reachMinimumAge": true, "username": "KGR5IZTk"}' \
    '5j0xaVhB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'CreateUserFromInvitationV4' test.out

#- 330 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "IrUnTM4p", "country": "IJQPoJT1", "dateOfBirth": "q2FyXVTL", "displayName": "iLHeyweu", "languageTag": "LNP8bh8w", "userName": "LToUXx5Q"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'PublicUpdateUserV4' test.out

#- 331 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "24P7eV3B", "emailAddress": "fmH7qPMI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'PublicUpdateUserEmailAddressV4' test.out

#- 332 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "PPJKOdFy", "country": "LgHCGa6S", "dateOfBirth": "8ionuDFP", "displayName": "iSvfPLSU", "emailAddress": "SFkkd6pK", "password": "r6GdQ3uo", "reachMinimumAge": true, "username": "FKcDZN2O", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 333 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "YxshrIk4", "password": "2Mmt7HYV", "username": "ej5inTBz"}' \
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
    'a6ZduPj0' \
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
    '16E1qnoK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicMakeFactorMyDefaultV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
