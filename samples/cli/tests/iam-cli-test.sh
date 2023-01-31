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
iam-admin-update-input-validations '[{"field": "mOiMRE2q", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "blockedWord": ["5KeeznX3", "YEXYTnwd", "4d6xsHS3"], "description": [{"language": "lEMX34S6", "message": ["XLWCFIhU", "qWvsx6hD", "Qx9WhoHm"]}, {"language": "LbPsSWOt", "message": ["oCZfqNa1", "U8AFICHr", "hQLNeIwi"]}, {"language": "Sb86HPvZ", "message": ["D1IFAadi", "LI5fyDEb", "6EglXbel"]}], "isCustomRegex": false, "letterCase": "0rxzB2ks", "maxLength": 95, "maxRepeatingAlphaNum": 33, "maxRepeatingSpecialCharacter": 61, "minCharType": 52, "minLength": 52, "regex": "xJI47tLZ", "specialCharacterLocation": "QUSDwYnv", "specialCharacters": ["tkMfSoQi", "F6qzaF7j", "iaWg1QkZ"]}}, {"field": "Oxa5D1Z9", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "blockedWord": ["wV3asiWr", "8UGqMGSx", "xlYGLP45"], "description": [{"language": "3t4xlR8U", "message": ["OAX8Xxjc", "YZjQSRIq", "7XvjiCzf"]}, {"language": "QYtoBw66", "message": ["aHUzukcx", "eMrgV3uq", "d24G6Y5I"]}, {"language": "3XwYGX5K", "message": ["XspQYEk8", "Nik8uZoV", "aOchXCEX"]}], "isCustomRegex": false, "letterCase": "eEUWy4nq", "maxLength": 33, "maxRepeatingAlphaNum": 79, "maxRepeatingSpecialCharacter": 10, "minCharType": 42, "minLength": 36, "regex": "qF2mcMXu", "specialCharacterLocation": "UYWRnHpD", "specialCharacters": ["oLV3pxJA", "ibhPeUWt", "FFCFqY6j"]}}, {"field": "5lM1H61Q", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "blockedWord": ["0ptz0E8L", "rVYwaXdG", "R4SBkiwB"], "description": [{"language": "0fx1203D", "message": ["d7ueTKya", "CVjEwTpV", "sm2okzJD"]}, {"language": "SG9pTrcy", "message": ["u0Orz7Kn", "sBPvSL65", "YoILVBmR"]}, {"language": "5fpyvllV", "message": ["til0ab5o", "CoWu0o65", "1rCSh4w5"]}], "isCustomRegex": true, "letterCase": "wFoj74q0", "maxLength": 74, "maxRepeatingAlphaNum": 8, "maxRepeatingSpecialCharacter": 24, "minCharType": 73, "minLength": 61, "regex": "IUnlogEf", "specialCharacterLocation": "YIdFP3fz", "specialCharacters": ["k0OmIaMr", "gRh1dU14", "KJBbe3N9"]}}]' --login_with_auth "Bearer foo"
iam-admin-reset-input-validations 'FsNUVf6H' --login_with_auth "Bearer foo"
iam-list-admins-v3 --login_with_auth "Bearer foo"
iam-admin-get-age-restriction-status-v3 --login_with_auth "Bearer foo"
iam-admin-update-age-restriction-config-v3 '{"ageRestriction": 85, "enable": true}' --login_with_auth "Bearer foo"
iam-admin-get-list-country-age-restriction-v3 --login_with_auth "Bearer foo"
iam-admin-update-country-age-restriction-v3 '{"ageRestriction": 58}' 'lwoe4xLB' --login_with_auth "Bearer foo"
iam-admin-get-banned-users-v3 --login_with_auth "Bearer foo"
iam-admin-ban-user-bulk-v3 '{"ban": "q3PQC9Vn", "comment": "P8qVF0vW", "endDate": "Mk5qUtaQ", "reason": "YCMlxeUe", "skipNotif": true, "userIds": ["qvxkfI9s", "chtONrLr", "snrY3ubx"]}' --login_with_auth "Bearer foo"
iam-admin-unban-user-bulk-v3 '{"bans": [{"banId": "YtmtcEqW", "userId": "Ry6ewLv3"}, {"banId": "YByvEb43", "userId": "9xGXzxtf"}, {"banId": "rzAOmdBl", "userId": "bva9iVPW"}]}' --login_with_auth "Bearer foo"
iam-admin-get-bans-type-with-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-get-clients-by-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-create-client-v3 '{"audiences": ["Pxr4ppQ6", "gkXBCqlg", "hRrMwkAa"], "baseUri": "bVConCx8", "clientId": "cZhj9XO6", "clientName": "Yz8wi2Ij", "clientPermissions": [{"action": 84, "resource": "UfRotZJA", "schedAction": 8, "schedCron": "Uha1m0J6", "schedRange": ["gFzTYzfo", "qHjaC2NN", "o4RBdXIM"]}, {"action": 68, "resource": "uFfHQQtd", "schedAction": 55, "schedCron": "PBB7NORZ", "schedRange": ["u50jS0bG", "jFa2TaXx", "9OEI5NOF"]}, {"action": 96, "resource": "1h5tNyeD", "schedAction": 21, "schedCron": "uCtyF71X", "schedRange": ["OjkEuITk", "sJBWxH4N", "Esa58Y7Q"]}], "clientPlatform": "5RjagUtb", "deletable": false, "description": "xUXGfjdz", "namespace": "7ewgrSaf", "oauthAccessTokenExpiration": 91, "oauthAccessTokenExpirationTimeUnit": "187dLkJR", "oauthClientType": "6vjfrpux", "oauthRefreshTokenExpiration": 81, "oauthRefreshTokenExpirationTimeUnit": "HE5Ze0fp", "parentNamespace": "cgoSDzCa", "redirectUri": "tkBTFYAM", "scopes": ["x0fna27R", "0rL2jh09", "gLB0S9uv"], "secret": "cagMHrJj", "twoFactorEnabled": false}' --login_with_auth "Bearer foo"
iam-admin-get-clientsby-namespaceby-idv3 'ljlNhW70' --login_with_auth "Bearer foo"
iam-admin-delete-client-v3 'AwJDfXZr' --login_with_auth "Bearer foo"
iam-admin-update-client-v3 '{"audiences": ["wdzBbZp6", "xWDMrH3t", "Xdv63ZLv"], "baseUri": "URAdf0ae", "clientName": "tNig6PX0", "clientPermissions": [{"action": 97, "resource": "30tnUqIM", "schedAction": 49, "schedCron": "sPI1DO81", "schedRange": ["8Y79Ekrg", "8f6zPgzB", "mlCPs1ce"]}, {"action": 97, "resource": "gjJLz1LS", "schedAction": 11, "schedCron": "DbHS6go5", "schedRange": ["aEZxyiU4", "eKTmkjYK", "PiA1xyoR"]}, {"action": 40, "resource": "Z7AdVAqQ", "schedAction": 11, "schedCron": "kMLzEOGl", "schedRange": ["ptR0uH1F", "QYxJsCA5", "F6OVsw0N"]}], "clientPlatform": "cFOlN40r", "deletable": true, "description": "ep94ZyMQ", "namespace": "8nXl42oC", "oauthAccessTokenExpiration": 40, "oauthAccessTokenExpirationTimeUnit": "2SFefiIJ", "oauthRefreshTokenExpiration": 48, "oauthRefreshTokenExpirationTimeUnit": "FvfIhyYo", "redirectUri": "CDTxVfaT", "scopes": ["Cd1eCMyg", "x7pem4HX", "1xZaYrTD"], "twoFactorEnabled": false}' 'X2FODsps' --login_with_auth "Bearer foo"
iam-admin-update-client-permission-v3 '{"permissions": [{"action": 60, "resource": "oL8yz8Py"}, {"action": 35, "resource": "eJAxGq8m"}, {"action": 76, "resource": "nLYKJJgg"}]}' 'rm2tZaFx' --login_with_auth "Bearer foo"
iam-admin-add-client-permissions-v3 '{"permissions": [{"action": 87, "resource": "C84n0eFk"}, {"action": 9, "resource": "gSdOBtR2"}, {"action": 20, "resource": "s5cAwqjo"}]}' 'EDVPXZTX' --login_with_auth "Bearer foo"
iam-admin-delete-client-permission-v3 '60' 'Yto2IBka' 'BWfxiZCG' --login_with_auth "Bearer foo"
iam-retrieve-all-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-sso-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-third-party-login-platform-credential-v3 'HXffVJCb' --login_with_auth "Bearer foo"
iam-add-third-party-login-platform-credential-v3 '{"ACSURL": "x1PtK5C6", "AWSCognitoRegion": "1zQ8v1H9", "AWSCognitoUserPool": "dYpmvE4i", "AllowedClients": ["x9rggwPd", "pawY85Mq", "n98dJDZT"], "AppId": "xi7a1Ntp", "AuthorizationEndpoint": "fae23QPL", "ClientId": "bor8BZF9", "Environment": "PnbkDxfh", "FederationMetadataURL": "6DaSUx1m", "GenericOauthFlow": false, "IsActive": true, "Issuer": "rT4dKyXk", "JWKSEndpoint": "gqX429y7", "KeyID": "3CDOp0qo", "NetflixCertificates": {"encryptedPrivateKey": "BsHcbbET", "encryptedPrivateKeyName": "8VCfFi5E", "publicCertificate": "Hbe15jlW", "publicCertificateName": "hpaNCmyO", "rootCertificate": "HCxH1RSL", "rootCertificateName": "VfylYkw1"}, "OrganizationId": "2342Nnpj", "PlatformName": "FUoOZI8M", "RedirectUri": "0YcQP5sy", "RegisteredDomains": [{"affectedClientIDs": ["hokkDFZG", "sEedwyfI", "Us1ybjez"], "domain": "ignEX7D2", "namespaces": ["TAdvOUlH", "EGwpb7hZ", "uecM5EuD"], "roleId": "NMFfbXhs"}, {"affectedClientIDs": ["tjkSZMNN", "kgI5pjhm", "k3XJKRsh"], "domain": "GTL4eouD", "namespaces": ["4FQhWLmz", "OYZMNETc", "JXDvvJIQ"], "roleId": "qwk8AWyV"}, {"affectedClientIDs": ["46snYdCn", "zJRPibTC", "SjMvWq4v"], "domain": "iSnjFieX", "namespaces": ["BBPcKgvp", "TrodY10D", "BTBGCtmX"], "roleId": "WjYmABKR"}], "Secret": "O6PcExyd", "TeamID": "JFtjljaP", "TokenAuthenticationType": "az220FhF", "TokenClaimsMapping": {"tsit9vfi": "5JqjVjSe", "OB0q1gUC": "rxkor3wG", "ULCjSRkg": "MIE3jqsC"}, "TokenEndpoint": "hNsmEA2g", "scopes": ["nrjaeYXp", "VTSuP0aX", "Iv2KnJtI"]}' 'zrqqrd73' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-credential-v3 '22Od1XEG' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-credential-v3 '{"ACSURL": "iRe0af6O", "AWSCognitoRegion": "nfguIsOQ", "AWSCognitoUserPool": "NS6qQQ9z", "AllowedClients": ["Yz8z3bkU", "JcgckTNy", "dRdycF8c"], "AppId": "u6YSPRTU", "AuthorizationEndpoint": "fkG4Coa6", "ClientId": "O8BDMbsU", "Environment": "TMgkJHAX", "FederationMetadataURL": "3jPdTAPY", "GenericOauthFlow": false, "IsActive": false, "Issuer": "7HCvkTmy", "JWKSEndpoint": "GQND7HL0", "KeyID": "ZpWUXl5T", "NetflixCertificates": {"encryptedPrivateKey": "bwWyfutu", "encryptedPrivateKeyName": "12XJSmKY", "publicCertificate": "Ewo0TrJH", "publicCertificateName": "Qm4fDPlK", "rootCertificate": "KsN4xazh", "rootCertificateName": "3acfwW5Y"}, "OrganizationId": "JCLFQpIY", "PlatformName": "zWoheMQO", "RedirectUri": "LZoHauKw", "RegisteredDomains": [{"affectedClientIDs": ["cFwOrTpF", "pEDN0XoA", "RcMKHxwW"], "domain": "BAPPgluO", "namespaces": ["M8wP3QeN", "SiiITS2X", "EHbmJ9qZ"], "roleId": "ZujEIGcL"}, {"affectedClientIDs": ["tqq4w3xy", "PWamdFSy", "PeRfBPip"], "domain": "YwYtJUoX", "namespaces": ["YFgkHpmN", "gdfKqxEh", "6oYT6oyX"], "roleId": "BvneOATy"}, {"affectedClientIDs": ["AD32Nx93", "YxmFvPHl", "7J1MxppW"], "domain": "Z0PEQUWg", "namespaces": ["m7RpFobw", "Iw9Gss9a", "Q4WB9VbD"], "roleId": "chkT8sJp"}], "Secret": "pJ92S1IE", "TeamID": "aqZRszhy", "TokenAuthenticationType": "XhXP0Yoo", "TokenClaimsMapping": {"OW2iuoPL": "YoQr4ulk", "PWPrDLRv": "xwri719S", "wHhOT5rW": "nAwc1CqH"}, "TokenEndpoint": "7kfP27Dx", "scopes": ["Ab9RQLFq", "8cgRNTQI", "edfvX8Mx"]}' 'r4oI6yPf' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-domain-v3 '{"affectedClientIDs": ["G9iDCilM", "xyCiAKao", "rIBa2NMU"], "assignedNamespaces": ["2CTXCaUT", "lottsAV0", "tlPv241D"], "domain": "PhB1MHa9", "roleId": "4QRbvQ80"}' '7EPs90xY' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-domain-v3 '{"domain": "YWhDe8N4"}' 'jhgzwuRR' --login_with_auth "Bearer foo"
iam-retrieve-sso-login-platform-credential 'bmUztKgF' --login_with_auth "Bearer foo"
iam-add-sso-login-platform-credential '{"acsUrl": "w4HXg36c", "apiKey": "UH6PF8Oa", "appId": "E9wBpWfQ", "federationMetadataUrl": "4oLZNbIc", "isActive": true, "redirectUri": "xHJP2jTw", "secret": "u9hmK35d", "ssoUrl": "wWTvIPtP"}' 'WvAFlCHo' --login_with_auth "Bearer foo"
iam-delete-sso-login-platform-credential-v3 '6D4jSnp9' --login_with_auth "Bearer foo"
iam-update-sso-platform-credential '{"acsUrl": "KOCfZmhi", "apiKey": "JTisPDV6", "appId": "okrSorF0", "federationMetadataUrl": "BxS3ZXp6", "isActive": false, "redirectUri": "qZ7EMXeu", "secret": "mvFO5czb", "ssoUrl": "NVs4hrx6"}' 'qogFq9lk' --login_with_auth "Bearer foo"
iam-admin-get-user-by-platform-user-idv3 'K7MMMor6' 'EiPzDUmI' --login_with_auth "Bearer foo"
iam-get-admin-users-by-role-id-v3 '9LJBQcYc' --login_with_auth "Bearer foo"
iam-admin-get-user-by-email-address-v3 --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-user-i-ds-v3 '{"userIds": ["xrkUXMZq", "6mAEwfJF", "Mnc7kKFS"]}' --login_with_auth "Bearer foo"
iam-admin-invite-user-v3 '{"emailAddresses": ["yBiI2S9Q", "UnDjdU5C", "C0lwYkTO"], "isAdmin": false, "namespace": "ZVoEqw6k", "roles": ["KSGbkSrj", "ACgTaps2", "DyFTDaBf"]}' --login_with_auth "Bearer foo"
iam-admin-query-third-platform-link-history-v3 'XEyCJKl8' --login_with_auth "Bearer foo"
iam-admin-list-users-v3 --login_with_auth "Bearer foo"
iam-admin-search-user-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-by-email-address-v3 '{"listEmailAddressRequest": ["WtM9A3vV", "7hqg3NPv", "dts4fiTt"]}' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v3 'pKE1ccrn' --login_with_auth "Bearer foo"
iam-admin-update-user-v3 '{"avatarUrl": "uIu3geeM", "country": "FrBNaGpf", "dateOfBirth": "AW9uTIgg", "displayName": "ELnVjcOs", "languageTag": "wC1S4f6y", "userName": "FjvH2kDy"}' '5h5wgW5K' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v3 'vbgmG91j' --login_with_auth "Bearer foo"
iam-admin-ban-user-v3 '{"ban": "bU671N5i", "comment": "KujIVm1f", "endDate": "8t5awXit", "reason": "DhOg0NtO", "skipNotif": false}' 'T5xB1OWx' --login_with_auth "Bearer foo"
iam-admin-update-user-ban-v3 '{"enabled": true, "skipNotif": false}' 'zC82L0IL' 'Lasb0koQ' --login_with_auth "Bearer foo"
iam-admin-send-verification-code-v3 '{"context": "yPg6Et4N", "emailAddress": "Qii5KeC1", "languageTag": "KJrqwuLw"}' 'lCw9KKO8' --login_with_auth "Bearer foo"
iam-admin-verify-account-v3 '{"Code": "P7Ua1o5Z", "ContactType": "pgD6gvKy", "LanguageTag": "tUkxSNeG", "validateOnly": false}' 'larGrqwh' --login_with_auth "Bearer foo"
iam-get-user-verification-code 'SGCw4sXH' --login_with_auth "Bearer foo"
iam-admin-get-user-deletion-status-v3 'aP16TMnG' --login_with_auth "Bearer foo"
iam-admin-update-user-deletion-status-v3 '{"enabled": true}' '4NMGkAUX' --login_with_auth "Bearer foo"
iam-admin-upgrade-headless-account-v3 '{"code": "W75nSUCY", "country": "52RzZjwc", "dateOfBirth": "aFYNgtHQ", "displayName": "7Lf9ZTW5", "emailAddress": "Dw5LBrhA", "password": "NlxLXbS2", "validateOnly": true}' 'VnQ5sU7o' --login_with_auth "Bearer foo"
iam-admin-delete-user-information-v3 'xIvLvmhF' --login_with_auth "Bearer foo"
iam-admin-get-user-login-histories-v3 'z0Mp8A42' --login_with_auth "Bearer foo"
iam-admin-reset-password-v3 '{"languageTag": "0OZsVxvJ", "newPassword": "1vAIEw4H", "oldPassword": "5AMurtQz"}' 'bi5l1NHL' --login_with_auth "Bearer foo"
iam-admin-update-user-permission-v3 '{"Permissions": [{"Action": 61, "Resource": "LXWHolUY", "SchedAction": 24, "SchedCron": "eeFoIFP1", "SchedRange": ["49UiyMGg", "Bf8PrUcv", "DRHK2AQO"]}, {"Action": 46, "Resource": "ZKIya0hQ", "SchedAction": 44, "SchedCron": "9wxQcAQc", "SchedRange": ["l6lARZXJ", "wQbeeOLy", "XTivflNL"]}, {"Action": 74, "Resource": "O26B9vAN", "SchedAction": 93, "SchedCron": "VKm3NpKP", "SchedRange": ["kAUIKmlo", "yEl7xfz7", "pKv816od"]}]}' 'ng2BMKt6' --login_with_auth "Bearer foo"
iam-admin-add-user-permissions-v3 '{"Permissions": [{"Action": 67, "Resource": "lbPDBxQO", "SchedAction": 28, "SchedCron": "IP2DClJc", "SchedRange": ["fqWZ6gOc", "fe9U4brc", "IiGbBYyp"]}, {"Action": 53, "Resource": "PhGy22XW", "SchedAction": 96, "SchedCron": "jXEhFM68", "SchedRange": ["nOqTeC0m", "3CioA88x", "VAuHrBDj"]}, {"Action": 96, "Resource": "jAslFDqt", "SchedAction": 79, "SchedCron": "hZTkGEMp", "SchedRange": ["ebLWz2EV", "Lb7mAW6A", "ySBRkSBG"]}]}' 'bKs2bKJ7' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-bulk-v3 '[{"Action": 3, "Resource": "EODNphZG"}, {"Action": 14, "Resource": "j656kadd"}, {"Action": 74, "Resource": "FQB7p3fK"}]' 'E6mf2RXy' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-v3 '96' 'BGC8jxOl' 'Ia2535GH' --login_with_auth "Bearer foo"
iam-admin-get-user-platform-accounts-v3 'iTCbx8av' --login_with_auth "Bearer foo"
iam-admin-get-list-justice-platform-accounts '4ZbT8zhn' --login_with_auth "Bearer foo"
iam-admin-get-user-mapping 'R36rNVqQ' 'oYk42yDN' --login_with_auth "Bearer foo"
iam-admin-create-justice-user '0RjCFtj0' 'rW4BxXUi' --login_with_auth "Bearer foo"
iam-admin-link-platform-account '{"platformId": "I5NFKEMC", "platformUserId": "58PaRGdt"}' 'eMvS5Ab7' --login_with_auth "Bearer foo"
iam-admin-platform-unlink-v3 '{"platformNamespace": "vIzO9IpT"}' 'RYTvblte' 'TT15uEfC' --login_with_auth "Bearer foo"
iam-admin-platform-link-v3 'juSo5HWY' 'u3t7y9VC' 'SvqspxWH' --login_with_auth "Bearer foo"
iam-admin-get-third-party-platform-token-link-status-v3 'gNLypBRr' 'N6We1JbM' 'lLB1giWE' --login_with_auth "Bearer foo"
iam-admin-delete-user-roles-v3 '["T43Svxxy", "VMtWzPWE", "jVYrFjwn"]' '0KTZLRVo' --login_with_auth "Bearer foo"
iam-admin-save-user-role-v3 '[{"namespace": "1dZqfVbI", "roleId": "IKGPpank"}, {"namespace": "KRZwEEun", "roleId": "quRHVa8Q"}, {"namespace": "4eSTXdq9", "roleId": "SIgcyoSQ"}]' 'EZP5Spxn' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v3 'ctC9UVSD' 'BX9ipmIb' --login_with_auth "Bearer foo"
iam-admin-delete-user-role-v3 'BI0Wg9rn' 'k43ijsvw' --login_with_auth "Bearer foo"
iam-admin-update-user-status-v3 '{"enabled": false, "reason": "NU99KKVg"}' 'QeC0N985' --login_with_auth "Bearer foo"
iam-admin-verify-user-without-verification-code-v3 'OLFAazHV' --login_with_auth "Bearer foo"
iam-admin-update-client-secret-v3 '{"newSecret": "Sjt57ctC"}' 'iWN26unv' --login_with_auth "Bearer foo"
iam-admin-get-roles-v3 --login_with_auth "Bearer foo"
iam-admin-create-role-v3 '{"adminRole": true, "deletable": true, "isWildcard": true, "managers": [{"displayName": "sLxGLLmH", "namespace": "0yXrr4vI", "userId": "vzi6yQ7r"}, {"displayName": "ignEVtbt", "namespace": "oa947Nfv", "userId": "vAt8xAag"}, {"displayName": "gH8rI9cN", "namespace": "MSkK7m0i", "userId": "0ibHpFEQ"}], "members": [{"displayName": "o8iMOY60", "namespace": "wprU55Cv", "userId": "yiQRkDVa"}, {"displayName": "7JDxMWTc", "namespace": "LsdH7nS4", "userId": "jfFz2Dcr"}, {"displayName": "WS4MUl8l", "namespace": "xxW8vpvj", "userId": "BDJGFnmD"}], "permissions": [{"action": 57, "resource": "spGkdZHd", "schedAction": 98, "schedCron": "Q5OhWdWj", "schedRange": ["ynlbGzhl", "PjxaGL4t", "LT7Qhmdx"]}, {"action": 100, "resource": "Z4vCJhqt", "schedAction": 13, "schedCron": "6swyebmv", "schedRange": ["BE07fW9D", "LZ5eORe7", "uf69qAvr"]}, {"action": 67, "resource": "mJ3zlbPo", "schedAction": 84, "schedCron": "67wSAKAJ", "schedRange": ["DosuHtpU", "p76AKwpC", "Ip2nE2em"]}], "roleName": "F0ytCnjZ"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v3 'JwSAaqK7' --login_with_auth "Bearer foo"
iam-admin-delete-role-v3 'lGLUGKs6' --login_with_auth "Bearer foo"
iam-admin-update-role-v3 '{"deletable": true, "isWildcard": false, "roleName": "u7ctO3OA"}' 'lEnBJeuB' --login_with_auth "Bearer foo"
iam-admin-get-role-admin-status-v3 'dUqogMRV' --login_with_auth "Bearer foo"
iam-admin-update-admin-role-status-v3 'dugt2aTw' --login_with_auth "Bearer foo"
iam-admin-remove-role-admin-v3 'fQpHbu4r' --login_with_auth "Bearer foo"
iam-admin-get-role-managers-v3 'wwdrCjJh' --login_with_auth "Bearer foo"
iam-admin-add-role-managers-v3 '{"managers": [{"displayName": "WR2AGLk6", "namespace": "1kLvnMZ6", "userId": "Y3JdZuGv"}, {"displayName": "pLv8ijeR", "namespace": "MCa4Dqqi", "userId": "lB7BEaVv"}, {"displayName": "uQmJdIol", "namespace": "VKpjwOAd", "userId": "oMOsUMYb"}]}' 'I3q2g8Dx' --login_with_auth "Bearer foo"
iam-admin-remove-role-managers-v3 '{"managers": [{"displayName": "jo9qM0Ta", "namespace": "fo69R4PA", "userId": "B2cmQpeE"}, {"displayName": "dZLU6Skf", "namespace": "G7UnLYWB", "userId": "hejEK0mI"}, {"displayName": "B5DCZoIj", "namespace": "DNFNVxMF", "userId": "C8lVxrql"}]}' 'uiKImwlI' --login_with_auth "Bearer foo"
iam-admin-get-role-members-v3 'xpF4O6WA' --login_with_auth "Bearer foo"
iam-admin-add-role-members-v3 '{"members": [{"displayName": "DjDMyQxh", "namespace": "E09isP7Y", "userId": "ouqmk2N9"}, {"displayName": "KsP148hB", "namespace": "rjosjQMd", "userId": "5BIlXIoW"}, {"displayName": "kz5eEvUE", "namespace": "kWECJqp3", "userId": "EqQvWNTN"}]}' 'auIRt5K3' --login_with_auth "Bearer foo"
iam-admin-remove-role-members-v3 '{"members": [{"displayName": "MbhvEQwK", "namespace": "D4mHLbHp", "userId": "GXyknK1V"}, {"displayName": "pjtk21xy", "namespace": "cpqWLaNl", "userId": "t29JCHdJ"}, {"displayName": "9leWY9mF", "namespace": "pvN88fdl", "userId": "LvmIUrD7"}]}' 'gYkbugof' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v3 '{"permissions": [{"action": 4, "resource": "Es4bZrUH", "schedAction": 60, "schedCron": "Kli9zVyI", "schedRange": ["UBE9VOCI", "5kmbPj0p", "dXJgpHqJ"]}, {"action": 24, "resource": "dPndOdNP", "schedAction": 19, "schedCron": "0KgbQI71", "schedRange": ["asuTv0iH", "Lv8HuXhI", "useKtMO7"]}, {"action": 20, "resource": "UYIEaJ8R", "schedAction": 8, "schedCron": "X4PFPZhq", "schedRange": ["gBIl101f", "Zmirxn5D", "62RlM5Wz"]}]}' 'koqcmQm7' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v3 '{"permissions": [{"action": 37, "resource": "av4n5Vuj", "schedAction": 40, "schedCron": "pYKyq1IU", "schedRange": ["4RBNTEqV", "zdoNhjFp", "7hWCSqbw"]}, {"action": 91, "resource": "FsKlf1Oz", "schedAction": 80, "schedCron": "4aJTWUdt", "schedRange": ["2PsHNhqX", "pQR8kyij", "YXmaQfFc"]}, {"action": 79, "resource": "Hy68pr6t", "schedAction": 25, "schedCron": "XY5XQ1nG", "schedRange": ["prTfclzC", "EfgwqcYA", "XmTMQbkv"]}]}' 'YbdIDtWv' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v3 '["7SpW2DqT", "aCcCrGfy", "uOoEona9"]' 'y27tXM7H' --login_with_auth "Bearer foo"
iam-admin-delete-role-permission-v3 '90' 't65vQKCa' 'qpJ94vVP' --login_with_auth "Bearer foo"
iam-admin-get-my-user-v3 --login_with_auth "Bearer foo"
iam-user-authentication-v3 'fPvWAmdv' '7yolJYGC' 'k6ZQ034P' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-authentication-with-platform-link-v3 'wnB6JyFM' 'Vw7bArVG' 'n1EVdblu' 'lbRAzUMg' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v3 'woWxBLy7' --login_with_auth "Bearer foo"
iam-request-one-time-linking-code-v3 'mhz7BLh7' --login_with_auth "Bearer foo"
iam-validate-one-time-linking-code-v3 '7Ywnexeg' --login_with_auth "Bearer foo"
iam-request-token-by-one-time-link-code-response-v3 'QMH2Ro5t' 'yDOHyUES' --login_with_auth "Bearer foo"
iam-get-country-location-v3 --login_with_auth "Bearer foo"
iam-logout --login_with_auth "Bearer foo"
iam-request-game-token-code-response-v3 'JqXQG67c' --login_with_auth "Bearer foo"
iam-admin-retrieve-user-third-party-platform-token-v3 'c3FGlaq6' '45yBFPpL' --login_with_auth "Bearer foo"
iam-revoke-user-v3 '87LF6dYt' --login_with_auth "Bearer foo"
iam-authorize-v3 'QXmxTPyZ' 'code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-introspection-v3 'oujwTfuW' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-jwksv3 --login_with_auth "Bearer foo"
iam-send-mfa-authentication-code '80n3i3IR' 'gJP03ny7' 'zXg1dXXh' --login_with_auth "Bearer foo"
iam-change2fa-method 'NwSGvol2' 'Lu2brHiE' --login_with_auth "Bearer foo"
iam-verify2fa-code 'MCRdPxEQ' 'SHizFumM' '044CkttW' 'false' --login_with_auth "Bearer foo"
iam-retrieve-user-third-party-platform-token-v3 'R4fxyfyJ' '2ODEwwy5' --login_with_auth "Bearer foo"
iam-auth-code-request-v3 'FEnRSwTD' 'AOv72tcu' --login_with_auth "Bearer foo"
iam-platform-token-grant-v3 'C5KtLBfp' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-revocation-list-v3 --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-revocation-v3 'Jow2vWYH' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-grant-v3 'refresh_token' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-verify-token-v3 'eoSuANT0' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-platform-authentication-v3 '6qGMOysh' 'SIZ5sjiH' --login_with_auth "Bearer foo"
iam-public-get-input-validations --login_with_auth "Bearer foo"
iam-public-get-country-age-restriction-v3 'mFwsUal9' --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-public-v3 --login_with_auth "Bearer foo"
iam-retrieve-active-oidc-clients-public-v3 'Pu4De4Pn' --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["U537sINz", "myzQOX7d", "Ehkr4846"]}' '02c7tkaj' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv3 'IMNZCOIe' 'HsNRFpfl' --login_with_auth "Bearer foo"
iam-public-get-async-status 'sFfi4H2W' --login_with_auth "Bearer foo"
iam-public-search-user-v3 --login_with_auth "Bearer foo"
iam-public-create-user-v3 '{"PasswordMD5Sum": "H7jGMyC6", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "VGIIBckO", "policyId": "NK5RqIM3", "policyVersionId": "p1yN4d2g"}, {"isAccepted": true, "localizedPolicyVersionId": "fJXjLY0R", "policyId": "8tCGFNQf", "policyVersionId": "sT6RtJGf"}, {"isAccepted": true, "localizedPolicyVersionId": "dIp7WFW7", "policyId": "37AV4QpB", "policyVersionId": "typa2eMn"}], "authType": "NBDJWYIs", "code": "jBLHh0DQ", "country": "zKbO5zyq", "dateOfBirth": "fxEWboKA", "displayName": "qgZOk85z", "emailAddress": "zlqL2B7g", "password": "9dXzsmjp", "reachMinimumAge": true}' --login_with_auth "Bearer foo"
iam-check-user-availability 'okbutKPM' 'zDAxb1Qt' --login_with_auth "Bearer foo"
iam-public-bulk-get-users '{"userIds": ["tYZ6rSUw", "IiR4ZghR", "w5yn1mOs"]}' --login_with_auth "Bearer foo"
iam-public-send-registration-code '{"emailAddress": "HfS1rnfV", "languageTag": "KxYEB5IK"}' --login_with_auth "Bearer foo"
iam-public-verify-registration-code '{"code": "rfzESZjO", "emailAddress": "uLlxO5SH"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v3 '{"emailAddress": "hlluwepY", "languageTag": "mN2HHdML"}' --login_with_auth "Bearer foo"
iam-get-admin-invitation-v3 'BfiJVCoi' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v3 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "CU1RLp0D", "policyId": "2gvQ2QBr", "policyVersionId": "EQB9ySF8"}, {"isAccepted": false, "localizedPolicyVersionId": "STxdXoCj", "policyId": "jkNk5Sa3", "policyVersionId": "w6e4qQkC"}, {"isAccepted": false, "localizedPolicyVersionId": "owBIRruk", "policyId": "EkseKtzA", "policyVersionId": "gHjna5mr"}], "authType": "EMAILPASSWD", "country": "QdWkYiIS", "dateOfBirth": "vjUs5Nzb", "displayName": "2zRHPQUb", "password": "JfwTBkDL", "reachMinimumAge": true}' 'fRdqTG6i' --login_with_auth "Bearer foo"
iam-update-user-v3 '{"avatarUrl": "RGFw0yGn", "country": "Uxf1QuLW", "dateOfBirth": "m87RxH10", "displayName": "OMYnOQAz", "languageTag": "I4dc0aVq", "userName": "t36N0xpv"}' --login_with_auth "Bearer foo"
iam-public-partial-update-user-v3 '{"avatarUrl": "kLJvGy8y", "country": "qSgGXim7", "dateOfBirth": "sga0mF4l", "displayName": "QFsSCUDW", "languageTag": "QPwLjfZH", "userName": "nHNC4OT1"}' --login_with_auth "Bearer foo"
iam-public-send-verification-code-v3 '{"context": "jMtmBgm0", "emailAddress": "ZRBPuu1t", "languageTag": "vyQXxm1K"}' --login_with_auth "Bearer foo"
iam-public-user-verification-v3 '{"code": "o88pPJqA", "contactType": "e4NlQph1", "languageTag": "kXhZJQRm", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v3 '{"code": "pZnl7ZbH", "country": "6N1f41G0", "dateOfBirth": "ROGWORQ6", "displayName": "FZLlNCoe", "emailAddress": "AYqj8BYM", "password": "zCutFu0z", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-verify-headless-account-v3 '{"emailAddress": "Zs0vX9ot", "password": "5XFaOKYl"}' --login_with_auth "Bearer foo"
iam-public-update-password-v3 '{"languageTag": "SZVWUCfd", "newPassword": "4DOKIaof", "oldPassword": "TkTM0tJg"}' --login_with_auth "Bearer foo"
iam-public-create-justice-user 'dd3C4Xwa' --login_with_auth "Bearer foo"
iam-public-platform-link-v3 'sPEeQGPw' 'jmnonDAH' --login_with_auth "Bearer foo"
iam-public-platform-unlink-v3 '{"platformNamespace": "m31ogM0z"}' '88lQicS6' --login_with_auth "Bearer foo"
iam-public-platform-unlink-all-v3 '94nT5Kkd' --login_with_auth "Bearer foo"
iam-public-force-platform-link-v3 'DStjEj48' 'oDKzLqQ4' --login_with_auth "Bearer foo"
iam-public-web-link-platform 'ODvinrvu' --login_with_auth "Bearer foo"
iam-public-web-link-platform-establish 'LAWNLscd' 'aCM1cXlb' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"code": "KDPczUg1", "emailAddress": "6SsXMz71", "newPassword": "rrGfAMcB"}' --login_with_auth "Bearer foo"
iam-public-get-user-by-user-id-v3 'legwZ6HO' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 'h5goYBNP' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 'Q7NngmnH' --login_with_auth "Bearer foo"
iam-public-get-user-information-v3 'frvXfjX4' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 'nTegan0g' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 '2NYnBHKS' --login_with_auth "Bearer foo"
iam-public-list-justice-platform-accounts-v3 'oozPy04L' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "8yQNaGd2", "platformUserId": "eYeVVG0u"}' 'l00hnp9z' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["6LqpSZ9V", "KPzkIUOa", "QGbTk8xs"], "requestId": "byjJd0Sc"}' 'OG1MyOMq' --login_with_auth "Bearer foo"
iam-public-get-publisher-user-v3 '45EXJ3Zb' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 'ZYel23z5' 'OH6mnVDB' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 '9NKYsYMj' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-public-get-link-headless-account-to-my-account-conflict-v3 'TvuqBQ1y' --login_with_auth "Bearer foo"
iam-link-headless-account-to-my-account-v3 '{"chosenNamespaces": ["0cjMnEzx", "7d0Fv5qT", "bC88M5uh"], "oneTimeLinkCode": "2IDV27mH"}' --login_with_auth "Bearer foo"
iam-public-send-verification-link-v3 '{"languageTag": "pqpIP7RY"}' --login_with_auth "Bearer foo"
iam-public-verify-user-by-link-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler 'Dr0ueO8Q' 'zFi3W3qK' --login_with_auth "Bearer foo"
iam-login-sso-client 'jPthWFtS' --login_with_auth "Bearer foo"
iam-logout-sso-client 'U0pfhVhK' --login_with_auth "Bearer foo"
iam-request-game-token-response-v3 'ZjMlQDcF' --login_with_auth "Bearer foo"
iam-admin-get-devices-by-user-v4 --login_with_auth "Bearer foo"
iam-admin-get-banned-devices-v4 --login_with_auth "Bearer foo"
iam-admin-get-user-device-bans-v4 'g39E0HbF' --login_with_auth "Bearer foo"
iam-admin-ban-device-v4 '{"comment": "JdmwLSlG", "deviceId": "GoSqTwa2", "deviceType": "hmywIopn", "enabled": true, "endDate": "z3UL2ctm", "ext": {"Hoaf8Pi9": {}, "eUymKRGu": {}, "Q0Rn29pK": {}}, "reason": "oLbkdPfX"}' --login_with_auth "Bearer foo"
iam-admin-get-device-ban-v4 'cZocv7mg' --login_with_auth "Bearer foo"
iam-admin-update-device-ban-v4 '{"enabled": true}' 'EHAaQXrs' --login_with_auth "Bearer foo"
iam-admin-generate-report-v4 'hjm3xxlv' --login_with_auth "Bearer foo"
iam-admin-get-device-types-v4 --login_with_auth "Bearer foo"
iam-admin-get-device-bans-v4 'EiF80SPj' --login_with_auth "Bearer foo"
iam-admin-decrypt-device-v4 'Vup8llxa' --login_with_auth "Bearer foo"
iam-admin-unban-device-v4 'Q76Nr1BZ' --login_with_auth "Bearer foo"
iam-admin-get-users-by-device-v4 'Uq5p2qJG' --login_with_auth "Bearer foo"
iam-admin-create-test-users-v4 '{"count": 89}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["Yf2tdqsW", "TiiKApAw", "TkEXwYX0"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "jgnd9eqA", "country": "pjG7mval", "dateOfBirth": "Uk1eqJSS", "displayName": "JEmflOsk", "languageTag": "W7zaeF3d", "userName": "IboocbWW"}' 'fpyMFL09' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "ugy8mxm6", "emailAddress": "UBtyPik8"}' 'EeHYiInN' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 'IfiibHEz' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 'ARK7oo7n' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["aCd76P93", "jJrNWU3O", "A9fNFSKI"], "roleId": "X7j56Y8d"}' 'd8zP7oTi' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["XGi6ZnA7", "f7Hm7GZ7", "VMoJn58r"], "roleId": "6mV7krsC"}' '6XNpKP2A' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["zQGyaclt", "X5pHrZPz", "O5DRCfdy"], "roleId": "e9tLm8dc"}' 'HPS2BDDu' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "NNTEMl4i"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 'R2X0JDs6' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 'oSvL4Cnb' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "qLbDRR63"}' 'DBQp88XK' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 65, "resource": "DEagpjZ1", "schedAction": 8, "schedCron": "jbZwrt3e", "schedRange": ["MRlKFgDn", "NUbjTZx9", "c1ckElUs"]}, {"action": 56, "resource": "4Z8ZjqEV", "schedAction": 87, "schedCron": "8sYSKtx0", "schedRange": ["N08WTbj2", "r293Mfhq", "A0ZErInQ"]}, {"action": 17, "resource": "wcMn1dbN", "schedAction": 85, "schedCron": "QKAKPyAS", "schedRange": ["0Od811JZ", "FAMw4HT9", "mPMZaC1y"]}]}' 'YARGD5Mz' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 17, "resource": "uQrzaWBB", "schedAction": 33, "schedCron": "GhnROTvV", "schedRange": ["bii8lbb5", "4T5KECAA", "J94HDytU"]}, {"action": 45, "resource": "hUh9E4Us", "schedAction": 9, "schedCron": "2yHvVYOX", "schedRange": ["UW8vb3G7", "Bm0vHziw", "DnM3mZmS"]}, {"action": 80, "resource": "6Ifg5Pdi", "schedAction": 37, "schedCron": "X3beOJv3", "schedRange": ["vC4aNnHX", "X0o3bZCg", "lEe7y4LJ"]}]}' 'SQDrOPKv' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["g3u4Q2pp", "2I710oP3", "jpvoFluX"]' 'zM2TLcvv' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'z4eK083B' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["lJgR4Tuk", "F11uw6jC", "k5w0nC1u"], "namespace": "9czuO92J", "userId": "MCnMnnl0"}' 'ZXcDKnXF' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "IZdLiGnR", "userId": "BC38NAEo"}' 'abUmy13a' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "JoHzmzx8", "country": "ocNcCBy4", "dateOfBirth": "C1ik7L2f", "displayName": "co26o4oI", "languageTag": "vsUzDDI9", "userName": "A84et104"}' --login_with_auth "Bearer foo"
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
iam-admin-enable-my-email-v4 '1z9vixyp' --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 'aGqo9fBs' --login_with_auth "Bearer foo"
iam-admin-invite-user-v4 '{"assignedNamespaces": ["DdhQ1OGB", "qKyBXY1t", "FGzoOQOB"], "emailAddresses": ["LsfvKxxQ", "VWs6wpXV", "1c7F2i3D"], "isAdmin": false, "namespace": "r9m1JVN7", "roleId": "FLlVewVT"}' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "dPXqTHxF", "policyId": "yO7twMqf", "policyVersionId": "cg0FYtlb"}, {"isAccepted": false, "localizedPolicyVersionId": "tL8P7hNg", "policyId": "5VuUFlhG", "policyVersionId": "o1GYBPwr"}, {"isAccepted": false, "localizedPolicyVersionId": "1VSkPiG7", "policyId": "phT1LUsc", "policyVersionId": "o8SSDDIQ"}], "authType": "EMAILPASSWD", "country": "r1LfYJ4i", "dateOfBirth": "4PhUEXXl", "displayName": "RLnOYZ3F", "emailAddress": "72fmJTQF", "password": "nvgDZC8g", "passwordMD5Sum": "a6aduh7F", "username": "tu8dux6C", "verified": true}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "ne3hBhvY", "policyId": "QSEAQdgh", "policyVersionId": "FI10Yhbq"}, {"isAccepted": false, "localizedPolicyVersionId": "Ocq1qUdK", "policyId": "zR6MQS04", "policyVersionId": "hlBhKSbe"}, {"isAccepted": false, "localizedPolicyVersionId": "aHmpvCq6", "policyId": "GHQUsuws", "policyVersionId": "J9yOP4e7"}], "authType": "EMAILPASSWD", "code": "soO0nS9R", "country": "X1MiQYGL", "dateOfBirth": "89SGOqZg", "displayName": "gynDaKNy", "emailAddress": "8aaOpJNW", "password": "exOKOijt", "passwordMD5Sum": "ripHypUa", "reachMinimumAge": false, "username": "Bi0tQ715"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "gF28diMJ", "policyId": "l6p3e030", "policyVersionId": "Xw8bNjOM"}, {"isAccepted": true, "localizedPolicyVersionId": "93Qay9pv", "policyId": "SOiMgMuD", "policyVersionId": "0SMMON87"}, {"isAccepted": false, "localizedPolicyVersionId": "UD4Yul1g", "policyId": "SKbrBeo7", "policyVersionId": "T8Ssq7xd"}], "authType": "EMAILPASSWD", "country": "R33hlC0V", "dateOfBirth": "Qm770MWX", "displayName": "FwUgOS6X", "password": "ROeXcsA8", "reachMinimumAge": true, "username": "kSuKo8W1"}' 'DfZuqDwp' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "mM3rv9Ty", "country": "vG5Vy95o", "dateOfBirth": "3eH0kYJi", "displayName": "aLTrbCKa", "languageTag": "IFUXSAPT", "userName": "AzFF5Zuo"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "8sApL9Jg", "emailAddress": "Dwaeo3a0"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "uPpBPX2O", "country": "4NFUv2y5", "dateOfBirth": "M42nyQBH", "displayName": "Ipo23Xx9", "emailAddress": "pJIwMcRg", "password": "s8dAjqGM", "reachMinimumAge": true, "username": "Y0zAvo3n", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"emailAddress": "hZS24aUc", "password": "igESdBxF", "username": "zQmsbyjy"}' --login_with_auth "Bearer foo"
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
iam-public-enable-my-email-v4 'M3sFcHuI' --login_with_auth "Bearer foo"
iam-public-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-public-make-factor-my-default-v4 'dwt3EMXE' --login_with_auth "Bearer foo"
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
    '[{"field": "j5Hgh8iw", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "blockedWord": ["vf86Idk0", "tQE2iPXE", "aQSYThd4"], "description": [{"language": "c3Wpm9S0", "message": ["apHLaCwT", "CiA4uRBf", "X47BGzuT"]}, {"language": "d0fdpmlT", "message": ["PjPLnSjA", "yRTgQo7T", "pMBAvPz0"]}, {"language": "xdW7JFO1", "message": ["dTpWmgbi", "hCvGiapq", "P46PGy8Z"]}], "isCustomRegex": false, "letterCase": "yeO7p0gf", "maxLength": 2, "maxRepeatingAlphaNum": 28, "maxRepeatingSpecialCharacter": 41, "minCharType": 37, "minLength": 76, "regex": "K5ds77Kg", "specialCharacterLocation": "k5co1elI", "specialCharacters": ["qAzHgNAB", "ViWAKa2a", "VoUxM8r3"]}}, {"field": "w2935k3j", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "blockedWord": ["YBlZaxRm", "QpRhUEop", "dAogoDJs"], "description": [{"language": "tAMrxTXo", "message": ["pENP6nyI", "8GMYOcAL", "g0gJkLCl"]}, {"language": "IYEJes20", "message": ["I5gVw0mu", "7ZCC5Ejb", "y1F8MtT1"]}, {"language": "4QWcuSOW", "message": ["XBzSRdYk", "4V3XKSw7", "fjIbrhGV"]}], "isCustomRegex": false, "letterCase": "7xe7TFD9", "maxLength": 61, "maxRepeatingAlphaNum": 33, "maxRepeatingSpecialCharacter": 44, "minCharType": 15, "minLength": 83, "regex": "CcS3qLXF", "specialCharacterLocation": "yr8OFncf", "specialCharacters": ["J24J9F2X", "699cHF3R", "6K1wn2FG"]}}, {"field": "lbKeSkfW", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "blockedWord": ["KjmDL3Ly", "7TYZIekz", "2Kk5GdwV"], "description": [{"language": "E09Tu1Qc", "message": ["QJ3GlCPq", "KFDZXXM7", "yFWoCH5h"]}, {"language": "Ckx4mSS9", "message": ["dsvDUW3D", "EHTAHQBT", "YY4PsGxN"]}, {"language": "dxZnDnff", "message": ["e1FdeaNW", "H5N8A3ie", "aj3lzw2V"]}], "isCustomRegex": false, "letterCase": "HTEjkf4Z", "maxLength": 71, "maxRepeatingAlphaNum": 17, "maxRepeatingSpecialCharacter": 71, "minCharType": 20, "minLength": 88, "regex": "N2a8oug2", "specialCharacterLocation": "E11986Sw", "specialCharacters": ["qaRnPI3j", "pJ3uptfw", "JzlvuAEL"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    'FAxK3j7H' \
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
    '{"ageRestriction": 28, "enable": true}' \
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
    '{"ageRestriction": 5}' \
    'CEz1iYvy' \
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
    '{"ban": "qyNslmBi", "comment": "utHUAPrd", "endDate": "smp8p9D9", "reason": "N8rqPbI3", "skipNotif": true, "userIds": ["h27e7jn0", "4DK1CsXM", "bZvHeOXt"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "msYJigOG", "userId": "27RS3iXJ"}, {"banId": "LalgWgW4", "userId": "riax9M1m"}, {"banId": "5zptgDSK", "userId": "7nZEamyC"}]}' \
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
    '{"audiences": ["q01r8nXP", "bE1XyER1", "901aMTz4"], "baseUri": "bjx74zXW", "clientId": "P08c1hg6", "clientName": "jQsoGTMP", "clientPermissions": [{"action": 62, "resource": "EMb34eST", "schedAction": 35, "schedCron": "evK4sEiJ", "schedRange": ["ZLLDv5tt", "f8OoC929", "Y9Tdrmuq"]}, {"action": 94, "resource": "g154XxbY", "schedAction": 86, "schedCron": "xAsmvZRu", "schedRange": ["rADx4c4j", "gCGgCjb5", "DM2AqfSc"]}, {"action": 32, "resource": "OpCShXcb", "schedAction": 73, "schedCron": "cppGZdue", "schedRange": ["2P6LHRgn", "vkI9pnKe", "BvQkfdRm"]}], "clientPlatform": "Vq3CwNA7", "deletable": false, "description": "7f6WqPhz", "namespace": "6aAP4zgn", "oauthAccessTokenExpiration": 30, "oauthAccessTokenExpirationTimeUnit": "1Xt6C8CG", "oauthClientType": "scw2eVkg", "oauthRefreshTokenExpiration": 24, "oauthRefreshTokenExpirationTimeUnit": "EQWTf5xA", "parentNamespace": "UILUgP4z", "redirectUri": "pSSeM4QF", "scopes": ["i6dACUCG", "Q5JXp9Te", "kXHQlWgA"], "secret": "ZJg9j3rl", "twoFactorEnabled": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    '4f3IxwPW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'Hl6ENxn8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["n3gogCLU", "NWD26MCF", "DJPJRd09"], "baseUri": "U1JiTtoi", "clientName": "nQ2ptmLW", "clientPermissions": [{"action": 17, "resource": "6WelIsxT", "schedAction": 16, "schedCron": "TzGCnI9g", "schedRange": ["NSb37tU0", "lSvvBvcs", "mhNPUucD"]}, {"action": 34, "resource": "S0fPvWOK", "schedAction": 24, "schedCron": "cTjyofIj", "schedRange": ["XBalhIEX", "Eu1uIUmH", "jaVOzzzg"]}, {"action": 19, "resource": "clH66jxr", "schedAction": 70, "schedCron": "S2lB7hMF", "schedRange": ["D0AKuLJi", "3h6ioGfw", "AZNIhIcy"]}], "clientPlatform": "r4JIyKLm", "deletable": false, "description": "W38a4lV0", "namespace": "J5Cpe2uz", "oauthAccessTokenExpiration": 66, "oauthAccessTokenExpirationTimeUnit": "iXMWmB8L", "oauthRefreshTokenExpiration": 56, "oauthRefreshTokenExpirationTimeUnit": "qdGcF4dw", "redirectUri": "6OzFa8uw", "scopes": ["fMKNLfDD", "0WHGJ65b", "z3ub85VL"], "twoFactorEnabled": true}' \
    'x1OSA2bx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 89, "resource": "X073AAJ4"}, {"action": 14, "resource": "pllRTNfS"}, {"action": 47, "resource": "RnGtqT8g"}]}' \
    'zWdlo72D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 26, "resource": "dNT1cSns"}, {"action": 8, "resource": "iT5RufOS"}, {"action": 21, "resource": "uXgfbZ6F"}]}' \
    '2Zqntzcl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '14' \
    'tNi1PWWO' \
    'kGQLrAqU' \
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
    'uXKUvibu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "lbkWjql3", "AWSCognitoRegion": "FONDdxQ0", "AWSCognitoUserPool": "bWf2wwi4", "AllowedClients": ["NUuBDE64", "FeT0SZVc", "Vxuucncs"], "AppId": "RTV7N24S", "AuthorizationEndpoint": "T7ZFZBki", "ClientId": "G9Eh9NYX", "Environment": "iqweffPV", "FederationMetadataURL": "1bB4M5Sm", "GenericOauthFlow": false, "IsActive": true, "Issuer": "1yxjLJdj", "JWKSEndpoint": "pbOdtdqk", "KeyID": "e3OENWNE", "NetflixCertificates": {"encryptedPrivateKey": "nEeDM1be", "encryptedPrivateKeyName": "Qcx6i3cR", "publicCertificate": "DxyW68Mv", "publicCertificateName": "3rEX5O7C", "rootCertificate": "WNeg3iId", "rootCertificateName": "Yz8xUJeJ"}, "OrganizationId": "10AK0ln7", "PlatformName": "a5ByQRFx", "RedirectUri": "F9M6Sf8m", "RegisteredDomains": [{"affectedClientIDs": ["4xbyvjDK", "lhRlT9mg", "GZxVzfMm"], "domain": "4HDeGjdS", "namespaces": ["im6Byp68", "9HIsHkj3", "uzPEOOni"], "roleId": "del6RK5q"}, {"affectedClientIDs": ["MPXb3X79", "lR3pYUac", "S8AvuD6D"], "domain": "q7oM1dPy", "namespaces": ["kfVX5Ttg", "Tp4o065U", "SbuhCHGG"], "roleId": "W5nqeveW"}, {"affectedClientIDs": ["v5UwQ6gi", "EYxguKnS", "QJ0zKCqh"], "domain": "qOB5OgUr", "namespaces": ["XnE4deN3", "eqDR4ldV", "82Fpwkss"], "roleId": "1wZRZVm0"}], "Secret": "5lJZAWbK", "TeamID": "fbXIDl2O", "TokenAuthenticationType": "2jzmIJQ5", "TokenClaimsMapping": {"hEQjyTz8": "WxHDVALl", "fWO0HRyE": "eAv7OMIV", "G3Xv9DuY": "SPMOXrVW"}, "TokenEndpoint": "XDV2TJa6", "scopes": ["oVvNQCG1", "xssJ1RDr", "nP9eG4V8"]}' \
    'sfD8pyVH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    'ttMBtEmk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "A3AzpHRF", "AWSCognitoRegion": "UrmQA2Bf", "AWSCognitoUserPool": "eMgt421f", "AllowedClients": ["uEKHK8zC", "viZTY7gq", "5hQp5aRW"], "AppId": "x9fDL5iR", "AuthorizationEndpoint": "45K3s9oo", "ClientId": "cC9Jg6EM", "Environment": "SqtXpBPg", "FederationMetadataURL": "KIgTPJBw", "GenericOauthFlow": false, "IsActive": true, "Issuer": "vS7HNeHG", "JWKSEndpoint": "Gge1wWY9", "KeyID": "0nMcMtC8", "NetflixCertificates": {"encryptedPrivateKey": "ONig7sDu", "encryptedPrivateKeyName": "7apwkU1R", "publicCertificate": "0MoywVPY", "publicCertificateName": "jRcUKUUJ", "rootCertificate": "HXc78kly", "rootCertificateName": "wpL92K4Q"}, "OrganizationId": "TCIHDDal", "PlatformName": "dmjIPtux", "RedirectUri": "54CWAY4i", "RegisteredDomains": [{"affectedClientIDs": ["B4ZFzmZR", "jWH6Kbi4", "03uLF7J0"], "domain": "QEC5o7ay", "namespaces": ["G5b6zF9A", "d9iKyVj3", "rDWVzVry"], "roleId": "5ghJ8epw"}, {"affectedClientIDs": ["6t8mJyaH", "PzQCB4n7", "hGLtIFgX"], "domain": "cNuPja4P", "namespaces": ["IlXbojyS", "ict4KXrV", "uKTcpkvG"], "roleId": "mRnLAeDb"}, {"affectedClientIDs": ["nfb1oAq2", "bUP4KmOT", "XbJHR8Yp"], "domain": "R1w4Xm73", "namespaces": ["sdLMJDN0", "gouqmUBf", "SRGVytCG"], "roleId": "G0gt64pl"}], "Secret": "qfslsjVM", "TeamID": "Qd1vc9jn", "TokenAuthenticationType": "zYAuJ9Bs", "TokenClaimsMapping": {"qAhjtIUE": "dmB1KSad", "vTy5yaRJ": "BYTS1Dcv", "E4ElFXtE": "NaV2EfDJ"}, "TokenEndpoint": "tAV9DD10", "scopes": ["jYuldHrs", "9gJprSyU", "rghW9Qbx"]}' \
    'ECC2BDrn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["1hVzmZU7", "CPQR5rCe", "uiiAVIWJ"], "assignedNamespaces": ["VzxtOOQW", "Mhr9mRgT", "NHe8iXMR"], "domain": "8Pi2KqgW", "roleId": "a4YA2NlH"}' \
    'hulAaKIW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "9RvhCmX1"}' \
    '45ClWE34' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    '0CKWp1bi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "WPaU2e6m", "apiKey": "K77yB5a6", "appId": "XeqLR98u", "federationMetadataUrl": "kIXiDUBM", "isActive": false, "redirectUri": "EWwcN5Pg", "secret": "Bjpt6YM1", "ssoUrl": "slQW302x"}' \
    'kVkiTqhJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'o4KACKyx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "kphYeM7f", "apiKey": "glR81unE", "appId": "d75GAgwh", "federationMetadataUrl": "IrOHpfTz", "isActive": true, "redirectUri": "JnR0IQPn", "secret": "AYFLeoBg", "ssoUrl": "K2F4tIRn"}' \
    'JvoyDyxT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'J9cwBbPO' \
    'cZ4bqKcC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'p0UMTydu' \
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
    '{"userIds": ["ZVJYWEiX", "ub5UcvbM", "h16X45XO"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["91qmb7w0", "L2EQGhFR", "jseHvxuT"], "isAdmin": false, "namespace": "hjPACgH9", "roles": ["p8hzyEcQ", "63z8Lqwt", "CDrYnSCX"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'AdminInviteUserV3' test.out

#- 146 AdminQueryThirdPlatformLinkHistoryV3
$PYTHON -m $MODULE 'iam-admin-query-third-platform-link-history-v3' \
    'RWYMJXOb' \
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
    '{"listEmailAddressRequest": ["0fglpeOL", "zKdVX8v6", "pQc85AKl"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'AdminGetBulkUserByEmailAddressV3' test.out

#- 150 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'Ozp6WJtq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AdminGetUserByUserIdV3' test.out

#- 151 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "tbInqHeh", "country": "ORkG7xJs", "dateOfBirth": "AAeLbZqv", "displayName": "TyYFfSt8", "languageTag": "HwW7yOgn", "userName": "buClGwxf"}' \
    'gXjKhBI7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserV3' test.out

#- 152 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    '6rU4XSOf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'AdminGetUserBanV3' test.out

#- 153 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "n79Sn2yb", "comment": "35e70gBo", "endDate": "qGKTc1sn", "reason": "gWS2xe2a", "skipNotif": false}' \
    'qvht1Nmg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AdminBanUserV3' test.out

#- 154 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": true, "skipNotif": false}' \
    'NFDcRmzG' \
    'mGiph7v5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'AdminUpdateUserBanV3' test.out

#- 155 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "Mu2ekP4h", "emailAddress": "mCXazcQ3", "languageTag": "GiZ2OKof"}' \
    'LOUoh8bZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminSendVerificationCodeV3' test.out

#- 156 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "QMsYrioX", "ContactType": "p2Xkyq8f", "LanguageTag": "DiGR6Avb", "validateOnly": true}' \
    'CTfwKnZN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'AdminVerifyAccountV3' test.out

#- 157 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'Fn6Q1tyN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'GetUserVerificationCode' test.out

#- 158 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'Id2hxXqN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserDeletionStatusV3' test.out

#- 159 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"enabled": false}' \
    'wwyZjcSU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminUpdateUserDeletionStatusV3' test.out

#- 160 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "iVvzpoOD", "country": "HtByyjxB", "dateOfBirth": "nV6CZIl8", "displayName": "0YSqBEm1", "emailAddress": "FNnSNsuJ", "password": "HTsi6txc", "validateOnly": true}' \
    'g3CSBUMW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminUpgradeHeadlessAccountV3' test.out

#- 161 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'TQpPTTQE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminDeleteUserInformationV3' test.out

#- 162 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'i9dLR7KD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminGetUserLoginHistoriesV3' test.out

#- 163 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "ar1zD2dn", "newPassword": "iuJ3OgZe", "oldPassword": "f9FqXEFE"}' \
    'zovLbash' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AdminResetPasswordV3' test.out

#- 164 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 3, "Resource": "4CdascLK", "SchedAction": 4, "SchedCron": "LQqrkC8x", "SchedRange": ["xlOsLkqS", "vRH4jb41", "yIYydj7o"]}, {"Action": 46, "Resource": "bxlvkSGM", "SchedAction": 66, "SchedCron": "nOs7vXyY", "SchedRange": ["CM1zG7OT", "WURcHSc7", "fepQVQmu"]}, {"Action": 43, "Resource": "LlDFmsuL", "SchedAction": 57, "SchedCron": "88mVcqIt", "SchedRange": ["UhmdRHP6", "KjndbHVh", "YvP33PYi"]}]}' \
    '5QdlPEm8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserPermissionV3' test.out

#- 165 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 14, "Resource": "7HbP0rMv", "SchedAction": 76, "SchedCron": "9cPt48rg", "SchedRange": ["xervW0CC", "12G1CLru", "fgsD1KuC"]}, {"Action": 16, "Resource": "7TjUVX1j", "SchedAction": 0, "SchedCron": "xeen9YoV", "SchedRange": ["hre3cVqy", "T5OC9v0b", "nk4VNrMi"]}, {"Action": 98, "Resource": "O5wPDVdr", "SchedAction": 96, "SchedCron": "OVksj5hr", "SchedRange": ["Nb4bsNAG", "s7JZjHni", "uPTwGIHw"]}]}' \
    'Cz8SYPxM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminAddUserPermissionsV3' test.out

#- 166 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 63, "Resource": "gHpIPgKi"}, {"Action": 9, "Resource": "oQfKW3jY"}, {"Action": 88, "Resource": "098URlsl"}]' \
    'gsYx6BUq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionBulkV3' test.out

#- 167 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '98' \
    'frFEcGLh' \
    'UV0zF9fi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserPermissionV3' test.out

#- 168 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'yDDWbGH1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserPlatformAccountsV3' test.out

#- 169 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'IEoeQDID' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminGetListJusticePlatformAccounts' test.out

#- 170 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    'il2v4tG2' \
    'WtNKNqYD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminGetUserMapping' test.out

#- 171 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    'lp3MVL6v' \
    'gNcTK08S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminCreateJusticeUser' test.out

#- 172 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "XN8GbLvQ", "platformUserId": "8a0J4bxk"}' \
    'Da6M8orr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminLinkPlatformAccount' test.out

#- 173 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "n3JIkmZS"}' \
    'kGwLxFGg' \
    'vI2RKEdy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformUnlinkV3' test.out

#- 174 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    '6CZx6N8Z' \
    'gkkUKI3o' \
    'GDtpDjmb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminPlatformLinkV3' test.out

#- 175 AdminGetThirdPartyPlatformTokenLinkStatusV3
$PYTHON -m $MODULE 'iam-admin-get-third-party-platform-token-link-status-v3' \
    'dcPudF0Q' \
    'i4yhBdCT' \
    'FkqT2ppK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 176 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["vLUmHCjf", "m2Hf35Dm", "985OlsIb"]' \
    'xZNYSrHj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminDeleteUserRolesV3' test.out

#- 177 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "BrUC9fOV", "roleId": "xKhCGRWZ"}, {"namespace": "Qkz12k8x", "roleId": "ckmouZtT"}, {"namespace": "mHd0M4xh", "roleId": "We181lvt"}]' \
    'qC3SkA3a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminSaveUserRoleV3' test.out

#- 178 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    'LriXDlyU' \
    'SkH7COa4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminAddUserRoleV3' test.out

#- 179 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'BhZyxPhH' \
    'ytY7utss' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminDeleteUserRoleV3' test.out

#- 180 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": false, "reason": "9ESDV2AY"}' \
    'jSEWigdX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateUserStatusV3' test.out

#- 181 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'r1NrNOpN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 182 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "vTOJy26c"}' \
    'Gy172wab' \
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
    '{"adminRole": true, "deletable": true, "isWildcard": true, "managers": [{"displayName": "uyFqhP8t", "namespace": "7YQOB00S", "userId": "U2ymxLlE"}, {"displayName": "rDBI2roV", "namespace": "zRJX6R9X", "userId": "MsCoZNHd"}, {"displayName": "GEyqvRGT", "namespace": "0AgvHRb2", "userId": "FiRl9pRZ"}], "members": [{"displayName": "pXHp2coe", "namespace": "zKePM0mF", "userId": "EWOZLhRK"}, {"displayName": "sH58jFgT", "namespace": "fDlMS1Sb", "userId": "UzDXy4lC"}, {"displayName": "GlmZeCS0", "namespace": "7Ng3lBD2", "userId": "RjRdnbzZ"}], "permissions": [{"action": 0, "resource": "Y1cZJvvI", "schedAction": 12, "schedCron": "HrvJ4DMD", "schedRange": ["yY3L8FLL", "zrl1eakD", "1TZZYgLY"]}, {"action": 81, "resource": "QzKytzDu", "schedAction": 62, "schedCron": "CUjHYQGr", "schedRange": ["rWrzrZO6", "ZMss6QjM", "HIhwpFQO"]}, {"action": 36, "resource": "mJYJ6P71", "schedAction": 25, "schedCron": "l07m4AoH", "schedRange": ["e4TaXSUC", "QWQg6M4J", "Mz7FQqm7"]}], "roleName": "j2volbqE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminCreateRoleV3' test.out

#- 185 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'hbDfRzxm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRoleV3' test.out

#- 186 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'CLVO0fZj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteRoleV3' test.out

#- 187 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": true, "isWildcard": false, "roleName": "VOROKSPg"}' \
    '2Jd97qiI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateRoleV3' test.out

#- 188 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    'BRxonyGt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminGetRoleAdminStatusV3' test.out

#- 189 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'nOSFx11g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateAdminRoleStatusV3' test.out

#- 190 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'xKFRo3Tu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminRemoveRoleAdminV3' test.out

#- 191 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'wT68naO9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRoleManagersV3' test.out

#- 192 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "sbYXzk0J", "namespace": "C4wWfW9i", "userId": "sfj2AdwL"}, {"displayName": "VWaEMVyK", "namespace": "XNxo6fPl", "userId": "Q9lwhjM8"}, {"displayName": "NnbE3JeG", "namespace": "gm72TNQn", "userId": "bZoyZrSI"}]}' \
    'h5TwwR2a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminAddRoleManagersV3' test.out

#- 193 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "qcjRTLsn", "namespace": "huvJc7ke", "userId": "iKXMgt9J"}, {"displayName": "XefvCqcq", "namespace": "PIDqppMA", "userId": "uHYxsUIm"}, {"displayName": "rBJIi5pc", "namespace": "XI0v06Rn", "userId": "i8bBBgH8"}]}' \
    'HqkNDLdl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminRemoveRoleManagersV3' test.out

#- 194 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'DHBqx4cW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminGetRoleMembersV3' test.out

#- 195 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "vdUHpsFs", "namespace": "zlwIEXeN", "userId": "GbG2oAGi"}, {"displayName": "BL1GmrN3", "namespace": "cyb3ctUK", "userId": "CLS8bY4i"}, {"displayName": "X90briHm", "namespace": "kOr2TMrd", "userId": "hWFvvnUN"}]}' \
    'Sq0WjjHi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminAddRoleMembersV3' test.out

#- 196 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "WrReoYvq", "namespace": "HbJCSgNn", "userId": "fybKUUXr"}, {"displayName": "M2Gaf9Lw", "namespace": "Dn0cq4M0", "userId": "Gtxu8bVl"}, {"displayName": "tjLI13z5", "namespace": "cYbSx7mO", "userId": "WgJpwAUi"}]}' \
    'BeTTp2fN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminRemoveRoleMembersV3' test.out

#- 197 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 91, "resource": "nhyoew66", "schedAction": 79, "schedCron": "x0NCWbNO", "schedRange": ["E3Iih1t2", "TicjsEDm", "2F12HyEC"]}, {"action": 17, "resource": "81MnxLNM", "schedAction": 19, "schedCron": "252r7pbK", "schedRange": ["y0YOG2wH", "fX0U5Fw8", "VAN2zOeF"]}, {"action": 23, "resource": "9LOp4uLw", "schedAction": 76, "schedCron": "5hj6vHwU", "schedRange": ["xm7bYANc", "RRPWlB2N", "XqsAYMEd"]}]}' \
    'RuzDIEZ5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateRolePermissionsV3' test.out

#- 198 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 56, "resource": "uPru8i9Q", "schedAction": 84, "schedCron": "OL2q6Yp9", "schedRange": ["WHzZxqO4", "SKYKwQZl", "pC7k8oHU"]}, {"action": 61, "resource": "PDgrPa2a", "schedAction": 40, "schedCron": "W4zvT7Rm", "schedRange": ["2jWXf514", "U4pGNLuD", "yAevrsMw"]}, {"action": 51, "resource": "l3E48kFy", "schedAction": 70, "schedCron": "VByUZ5bE", "schedRange": ["pSOWoIko", "Wd4nQGy6", "I4gXFW2K"]}]}' \
    'lDFvRRtF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'AdminAddRolePermissionsV3' test.out

#- 199 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["6HT0LHXg", "PapULpaq", "3rVvpKBQ"]' \
    '1rY5CHTM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'AdminDeleteRolePermissionsV3' test.out

#- 200 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '97' \
    'evtwp2mU' \
    'GgJEBLl6' \
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
    'dQ9duBWZ' \
    'fRD6pM7t' \
    'P4xLt6N8' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 202 'UserAuthenticationV3' test.out

#- 203 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    'ync1T2z7' \
    'EdqrFFjh' \
    'D7vZQL77' \
    'rMU2ogVE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'AuthenticationWithPlatformLinkV3' test.out

#- 204 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    'kdiKApF1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 205 RequestOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-request-one-time-linking-code-v3' \
    'EDhhrqN4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'RequestOneTimeLinkingCodeV3' test.out

#- 206 ValidateOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-validate-one-time-linking-code-v3' \
    'J2vuiDTG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'ValidateOneTimeLinkingCodeV3' test.out

#- 207 RequestTokenByOneTimeLinkCodeResponseV3
$PYTHON -m $MODULE 'iam-request-token-by-one-time-link-code-response-v3' \
    'TlKjZhXx' \
    '5LPtS3gS' \
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
    'OM30Bqlh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'RequestGameTokenCodeResponseV3' test.out

#- 211 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'RYVCWsTp' \
    'lOitxJON' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 212 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    'd6NnKNPy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'RevokeUserV3' test.out

#- 213 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    'ZaVqnu15' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 213 'AuthorizeV3' test.out

#- 214 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    '9J0Cx561' \
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
    'cSybh9Js' \
    'fh7koHDE' \
    'SRBCP7RM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'SendMFAAuthenticationCode' test.out

#- 217 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    'g2i5xOVT' \
    '7B0B1XQG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'Change2faMethod' test.out

#- 218 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    'nvNqqqtn' \
    'dYbRJQ43' \
    'iRM4MZ1V' \
    'true' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'Verify2faCode' test.out

#- 219 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'UjtXWTU9' \
    '8P7abGVy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'uZNSSwEN' \
    'NeeEiDh7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'AuthCodeRequestV3' test.out

#- 221 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'P0j6c63x' \
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
    '6Egt3J7B' \
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
    'Y3A2dYY9' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 225 'VerifyTokenV3' test.out

#- 226 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'ekIe7dr5' \
    'DjWizEN5' \
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
    'p20FEXFz' \
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
    'yvq9cGvM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 231 PublicListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["RIHwAtix", "yG8Yo7Aw", "fkDxFxcR"]}' \
    'T2JjFbrX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 232 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    'nauBfRS2' \
    'JFiT4EjD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'PublicGetUserByPlatformUserIDV3' test.out

#- 233 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    'OdhzCIQF' \
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
    '{"PasswordMD5Sum": "iaXN5YIv", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "lhZyDTce", "policyId": "La7Kw5Vm", "policyVersionId": "PAGoXcq9"}, {"isAccepted": true, "localizedPolicyVersionId": "9iidfG82", "policyId": "J0iz3wTU", "policyVersionId": "yHjp7m6c"}, {"isAccepted": true, "localizedPolicyVersionId": "PXZeut8D", "policyId": "acdN8Puw", "policyVersionId": "x7KOa3qW"}], "authType": "KCbIbyrc", "code": "Fz2a3xLA", "country": "RprzQGoh", "dateOfBirth": "sxq70pf2", "displayName": "lErLKlK7", "emailAddress": "IsA7Unmb", "password": "KTTCQs7l", "reachMinimumAge": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'PublicCreateUserV3' test.out

#- 236 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'NJcxp3kb' \
    'iqSOEcIT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'CheckUserAvailability' test.out

#- 237 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["UwDQ7w9v", "U7DLFTl7", "LfS7PwKO"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'PublicBulkGetUsers' test.out

#- 238 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "o1S8jTL7", "languageTag": "O8wOvoI7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'PublicSendRegistrationCode' test.out

#- 239 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "5P561KnT", "emailAddress": "0ogzJxtG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'PublicVerifyRegistrationCode' test.out

#- 240 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "x4nkLJhD", "languageTag": "YNefMbXf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'PublicForgotPasswordV3' test.out

#- 241 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    'Qc8Md69y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'GetAdminInvitationV3' test.out

#- 242 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "dsu474rs", "policyId": "9CFypy3G", "policyVersionId": "GaA7aE87"}, {"isAccepted": true, "localizedPolicyVersionId": "8kRrwTcI", "policyId": "LtwYUUyL", "policyVersionId": "z81voL7Q"}, {"isAccepted": false, "localizedPolicyVersionId": "0lm6nspv", "policyId": "ip4yyMWi", "policyVersionId": "XryrycHs"}], "authType": "EMAILPASSWD", "country": "q34T8FJG", "dateOfBirth": "1DQwvxCg", "displayName": "qcGqBT5W", "password": "X4Z4ouKi", "reachMinimumAge": false}' \
    'A1A2KCtk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'CreateUserFromInvitationV3' test.out

#- 243 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "wwcACkUN", "country": "QHHBRXA0", "dateOfBirth": "neZSgxBx", "displayName": "BmUg4tZ1", "languageTag": "e3S8okHJ", "userName": "qOsww9o6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'UpdateUserV3' test.out

#- 244 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "9lX8VRJm", "country": "BPLy1389", "dateOfBirth": "TKaaP3Kb", "displayName": "USGLPYxf", "languageTag": "YahJeDvM", "userName": "1hR95ADx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'PublicPartialUpdateUserV3' test.out

#- 245 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "hdY5uFeM", "emailAddress": "VRFxUbYV", "languageTag": "f0OQBhQe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'PublicSendVerificationCodeV3' test.out

#- 246 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "QfGESLVa", "contactType": "uVsN7W06", "languageTag": "fw1XTuIk", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'PublicUserVerificationV3' test.out

#- 247 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "5AX91Vap", "country": "ZJg5pzZO", "dateOfBirth": "MtQJ4szT", "displayName": "eoTlCDp2", "emailAddress": "o2FokSQs", "password": "PGsza71N", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'PublicUpgradeHeadlessAccountV3' test.out

#- 248 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "wOh5kntP", "password": "FqLfXHNk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'PublicVerifyHeadlessAccountV3' test.out

#- 249 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "ofSNHiS8", "newPassword": "6rE5KZaI", "oldPassword": "eCFs9Zw0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'PublicUpdatePasswordV3' test.out

#- 250 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'EUotVB5i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'PublicCreateJusticeUser' test.out

#- 251 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'SwhsmmRw' \
    'XzjntYpq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'PublicPlatformLinkV3' test.out

#- 252 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "rlGFXmLq"}' \
    'Pgl6swtj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'PublicPlatformUnlinkV3' test.out

#- 253 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'IdAVa99J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'PublicPlatformUnlinkAllV3' test.out

#- 254 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    'kO20kB4C' \
    '784UkqXw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'PublicForcePlatformLinkV3' test.out

#- 255 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'tUAmgTjd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'PublicWebLinkPlatform' test.out

#- 256 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    '99zKictD' \
    'p1hXkgLF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'PublicWebLinkPlatformEstablish' test.out

#- 257 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "1shjHst9", "emailAddress": "trGHkpjP", "newPassword": "7kVvGpF6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'ResetPasswordV3' test.out

#- 258 PublicGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-public-get-user-by-user-id-v3' \
    'WsPTpxIk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'PublicGetUserByUserIdV3' test.out

#- 259 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    'FeMjve5T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'PublicGetUserBanHistoryV3' test.out

#- 260 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'dQaXQgo5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 261 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    '92DfPMrg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'PublicGetUserInformationV3' test.out

#- 262 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'zhTNDM2C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'PublicGetUserLoginHistoriesV3' test.out

#- 263 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'pwcyZ1jp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'PublicGetUserPlatformAccountsV3' test.out

#- 264 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    'RnwyVoxQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'PublicListJusticePlatformAccountsV3' test.out

#- 265 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "G63yOi7b", "platformUserId": "EgFKVFR5"}' \
    '8jPT4q9K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'PublicLinkPlatformAccount' test.out

#- 266 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["9X72sfeO", "ANTZLgVi", "scfUmDjv"], "requestId": "PFqLJcLD"}' \
    'l9yjAytf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'PublicForceLinkPlatformWithProgression' test.out

#- 267 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    'AJGCSYon' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'PublicGetPublisherUserV3' test.out

#- 268 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'ggs5t6oq' \
    'WpNtsfUZ' \
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
    'pnRa3Cex' \
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
    'KtVaZGsW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 273 LinkHeadlessAccountToMyAccountV3
$PYTHON -m $MODULE 'iam-link-headless-account-to-my-account-v3' \
    '{"chosenNamespaces": ["XaeGXJj5", "qsBWBsvq", "NEeqb1KQ"], "oneTimeLinkCode": "eLBIAdxn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'LinkHeadlessAccountToMyAccountV3' test.out

#- 274 PublicSendVerificationLinkV3
$PYTHON -m $MODULE 'iam-public-send-verification-link-v3' \
    '{"languageTag": "3Uzggu17"}' \
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
    'Pyym2fPx' \
    'E4NbchaR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'PlatformAuthenticateSAMLV3Handler' test.out

#- 277 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'xVKZ0LVG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'LoginSSOClient' test.out

#- 278 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'S8dfkbfw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'LogoutSSOClient' test.out

#- 279 RequestGameTokenResponseV3
$PYTHON -m $MODULE 'iam-request-game-token-response-v3' \
    'rxpYHAUE' \
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
    'j86h1QML' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'AdminGetUserDeviceBansV4' test.out

#- 283 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "3gm2x1tu", "deviceId": "c1FkwLAz", "deviceType": "jTfGfM8C", "enabled": true, "endDate": "92P8nhoY", "ext": {"QvR1K0Fh": {}, "bm4rDjbO": {}, "6udJ9PQD": {}}, "reason": "r6srV7f4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'AdminBanDeviceV4' test.out

#- 284 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    'gtb86luM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'AdminGetDeviceBanV4' test.out

#- 285 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": false}' \
    'BjKApQkM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'AdminUpdateDeviceBanV4' test.out

#- 286 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    'sS7QmsGC' \
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
    'geA4QG6n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'AdminGetDeviceBansV4' test.out

#- 289 AdminDecryptDeviceV4
$PYTHON -m $MODULE 'iam-admin-decrypt-device-v4' \
    'BVmWdzyM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'AdminDecryptDeviceV4' test.out

#- 290 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    'QiyzLqhp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'AdminUnbanDeviceV4' test.out

#- 291 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    'mohUOwmt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'AdminGetUsersByDeviceV4' test.out

#- 292 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"count": 55}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'AdminCreateTestUsersV4' test.out

#- 293 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["1uXM0UqU", "qaFRAayq", "hrjLDf3d"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'AdminBulkCheckValidUserIDV4' test.out

#- 294 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "LAmJyOdR", "country": "OwzNLfr6", "dateOfBirth": "zpz20R0H", "displayName": "0kbWDZa3", "languageTag": "86NvbeuX", "userName": "nHW91g6t"}' \
    'Ic4NBItO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'AdminUpdateUserV4' test.out

#- 295 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "Ufftpa39", "emailAddress": "8W9kXTeQ"}' \
    '5CG5Jsdl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'AdminUpdateUserEmailAddressV4' test.out

#- 296 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    'rD62poGP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'AdminDisableUserMFAV4' test.out

#- 297 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'ydA3fteA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'AdminListUserRolesV4' test.out

#- 298 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["8GJImKVw", "xe5kIoFV", "uzh2Odde"], "roleId": "ADroJge2"}' \
    'aIsmpW60' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateUserRoleV4' test.out

#- 299 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["bYBwuVQb", "suFBzMK6", "hRA66dh2"], "roleId": "xGuLQnBq"}' \
    'e5utoTK0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'AdminAddUserRoleV4' test.out

#- 300 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["1NoptrFt", "DdAfvreH", "pIw9AYEw"], "roleId": "pV9WiWVR"}' \
    'e6O4gyXl' \
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
    '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "87aCJMz1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'AdminCreateRoleV4' test.out

#- 303 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'nq1uZ5yO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'AdminGetRoleV4' test.out

#- 304 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'wenPELe6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'AdminDeleteRoleV4' test.out

#- 305 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "RJZYWKWd"}' \
    'ifucpM8k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'AdminUpdateRoleV4' test.out

#- 306 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 31, "resource": "Fs0wNJ1K", "schedAction": 4, "schedCron": "L6J1MPdq", "schedRange": ["WBVaQ0CV", "KIgwcLIS", "80e0oQJt"]}, {"action": 36, "resource": "RMmrgPX2", "schedAction": 19, "schedCron": "U4UlMS8E", "schedRange": ["5hFpY8De", "xwXAcKxn", "TupRT4wS"]}, {"action": 29, "resource": "Rcziu3AQ", "schedAction": 12, "schedCron": "VbkcOtb8", "schedRange": ["voKVUfyf", "Olmu6WaY", "HirRkacK"]}]}' \
    '13uV3W5m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'AdminUpdateRolePermissionsV4' test.out

#- 307 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 65, "resource": "0xx61k3r", "schedAction": 35, "schedCron": "U3QXKGbh", "schedRange": ["8M1aKCvl", "6Xi5CBup", "hGE9a7BA"]}, {"action": 88, "resource": "51FWRhDR", "schedAction": 13, "schedCron": "jxn5VSHH", "schedRange": ["6B0bjdzA", "WujEhs1q", "WPhYpmEv"]}, {"action": 20, "resource": "Gh1o8Ugi", "schedAction": 80, "schedCron": "A6ft543u", "schedRange": ["3iZdATjP", "Nu4hpekr", "5yEtaQqc"]}]}' \
    '6sIyk1h1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'AdminAddRolePermissionsV4' test.out

#- 308 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["TrucGJCu", "fJk9oE2Q", "LleRq3Zc"]' \
    'J4tzj0P6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'AdminDeleteRolePermissionsV4' test.out

#- 309 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'FLLBlSeO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'AdminListAssignedUsersV4' test.out

#- 310 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["qTHwbNMy", "BjCMRThU", "BNm5zZGQ"], "namespace": "wLchvOdr", "userId": "tCpzhzXg"}' \
    'zY8QLnME' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'AdminAssignUserToRoleV4' test.out

#- 311 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "khqddG7f", "userId": "SrfirzSw"}' \
    'fNjhAf0W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'AdminRevokeUserFromRoleV4' test.out

#- 312 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "YCWs7yuY", "country": "WK8SmnjP", "dateOfBirth": "PklrVo1C", "displayName": "lqF1Ch1z", "languageTag": "r50jRNCU", "userName": "6pJf86kz"}' \
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
    'aLYqXMx6' \
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
    'zyM81Dkl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'AdminMakeFactorMyDefaultV4' test.out

#- 326 AdminInviteUserV4
$PYTHON -m $MODULE 'iam-admin-invite-user-v4' \
    '{"assignedNamespaces": ["SPSaKXJY", "TwxbP6UJ", "d6jB3xr2"], "emailAddresses": ["QsYbXgvF", "t6c0spdw", "hmld9ZrZ"], "isAdmin": false, "namespace": "1zHIP5EJ", "roleId": "A1yeIfVh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'AdminInviteUserV4' test.out

#- 327 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "8F42Jcqz", "policyId": "ehsETzcs", "policyVersionId": "6u9AcJuR"}, {"isAccepted": true, "localizedPolicyVersionId": "0aNNRTdZ", "policyId": "V5pUVYh6", "policyVersionId": "rshwtgiE"}, {"isAccepted": false, "localizedPolicyVersionId": "xZzUYVkA", "policyId": "TrXQqkYu", "policyVersionId": "hjkrUgGE"}], "authType": "EMAILPASSWD", "country": "R9ml6bYb", "dateOfBirth": "cUUwG22c", "displayName": "9DnTqLnp", "emailAddress": "j6MQkeIk", "password": "lxLmHGOf", "passwordMD5Sum": "cChunfEU", "username": "YQTs3xPn", "verified": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'PublicCreateTestUserV4' test.out

#- 328 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "PEizkT01", "policyId": "N5cAfSSP", "policyVersionId": "iRgVumFA"}, {"isAccepted": false, "localizedPolicyVersionId": "HsrJsNMW", "policyId": "m3IetTJr", "policyVersionId": "QWpCRu2k"}, {"isAccepted": false, "localizedPolicyVersionId": "TAf7DhDI", "policyId": "8P8MJkXy", "policyVersionId": "prFjhfYk"}], "authType": "EMAILPASSWD", "code": "lZyMdDR8", "country": "P6h4oMre", "dateOfBirth": "zHk9JGWI", "displayName": "cZo93VW4", "emailAddress": "d099HQOx", "password": "FzXSVLbw", "passwordMD5Sum": "n1VgLULT", "reachMinimumAge": false, "username": "Tmb7FBpZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'PublicCreateUserV4' test.out

#- 329 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "3IM1JJOU", "policyId": "hMCEFtw1", "policyVersionId": "hZW3QRGk"}, {"isAccepted": true, "localizedPolicyVersionId": "agWHJvbB", "policyId": "6rAlKbma", "policyVersionId": "FYJJcTtd"}, {"isAccepted": false, "localizedPolicyVersionId": "KTjmYr4h", "policyId": "gmqIx5Bn", "policyVersionId": "T3NFaPm5"}], "authType": "EMAILPASSWD", "country": "7LSdza91", "dateOfBirth": "fIukNIYM", "displayName": "Z9U9gQTK", "password": "PrKmt3VX", "reachMinimumAge": true, "username": "xTja5HpJ"}' \
    'A4BYuYNU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'CreateUserFromInvitationV4' test.out

#- 330 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "eLHr2Mk2", "country": "ZXZktGdx", "dateOfBirth": "WS30OQff", "displayName": "fNC9iDPU", "languageTag": "OY2zXLjs", "userName": "jHFqDaYP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'PublicUpdateUserV4' test.out

#- 331 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "3vUQzbfe", "emailAddress": "gxPtSvPZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'PublicUpdateUserEmailAddressV4' test.out

#- 332 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "WPtkXgtx", "country": "VT2YY8Id", "dateOfBirth": "vE2xytjR", "displayName": "ysQzG3iP", "emailAddress": "9E30L12y", "password": "AKdXaTwN", "reachMinimumAge": false, "username": "8nWgRjza", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 333 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "TUUKutGK", "password": "qOYjh2hn", "username": "vyzCjL1p"}' \
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
    'glQBDD3c' \
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
    'TqxZ7Ipm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicMakeFactorMyDefaultV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
