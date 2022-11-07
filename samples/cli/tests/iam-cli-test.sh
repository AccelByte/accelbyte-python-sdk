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
iam-admin-update-input-validations '[{"field": "k3iXnawf", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "blockedWord": ["hHonE4fo", "gKxTDmrW", "2ftoRDzD"], "description": [{"language": "4A2l8eo4", "message": ["l04QnlZ1", "BskIKkEc", "0aoHWe8Q"]}, {"language": "QJHm5cYO", "message": ["Rr8URSb9", "sXqKQ4Ie", "fBs9c6z2"]}, {"language": "ZvomgHkd", "message": ["yH1Vlu71", "w1twEnRr", "QaXkBOom"]}], "isCustomRegex": true, "letterCase": "DmA4U5VX", "maxLength": 30, "maxRepeatingAlphaNum": 0, "maxRepeatingSpecialCharacter": 10, "minCharType": 57, "minLength": 77, "regex": "x0J566vx", "specialCharacterLocation": "FrvU99ZK", "specialCharacters": ["cbcsvvgz", "hpYo6Pl4", "qOR1DwgO"]}}, {"field": "MhKtRilp", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "blockedWord": ["dPagmdIy", "IDNlGVMp", "Y68mtSd7"], "description": [{"language": "EQKNJr7E", "message": ["EYEizVlu", "6dDuc6QR", "zfKR2KJc"]}, {"language": "GU3lx2kA", "message": ["YdtgFOI1", "fa6TbEZ7", "FpN7Bz8K"]}, {"language": "sWelm03q", "message": ["JUcLnhP3", "SklxqZQp", "Vuwtjunl"]}], "isCustomRegex": true, "letterCase": "6aIQFhNP", "maxLength": 79, "maxRepeatingAlphaNum": 81, "maxRepeatingSpecialCharacter": 57, "minCharType": 51, "minLength": 65, "regex": "p6WUqq7e", "specialCharacterLocation": "n52YCckz", "specialCharacters": ["KkfZ60zx", "mNNyjHJ9", "kMDuNPTj"]}}, {"field": "7r5kPkIq", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "blockedWord": ["2EMYOEGg", "bkN7SxzQ", "I6ze1aHu"], "description": [{"language": "HxeG8z03", "message": ["6CPy8nfB", "qTCLbrs5", "MvfxYodG"]}, {"language": "tdBoauCI", "message": ["YBCWJEyJ", "CNSKc6uQ", "KsgLLzbR"]}, {"language": "NyeCZZZI", "message": ["3BV1UP2W", "F0caGmX3", "AMwUlMwh"]}], "isCustomRegex": true, "letterCase": "DYvClsgz", "maxLength": 16, "maxRepeatingAlphaNum": 37, "maxRepeatingSpecialCharacter": 5, "minCharType": 62, "minLength": 65, "regex": "PxmC7lGv", "specialCharacterLocation": "FCTbQPni", "specialCharacters": ["XXOgHpZZ", "FGplTKHu", "PATZ0ODs"]}}]' --login_with_auth "Bearer foo"
iam-admin-reset-input-validations 'EmOT0pq3' --login_with_auth "Bearer foo"
iam-list-admins-v3 --login_with_auth "Bearer foo"
iam-admin-get-age-restriction-status-v3 --login_with_auth "Bearer foo"
iam-admin-update-age-restriction-config-v3 '{"ageRestriction": 95, "enable": true}' --login_with_auth "Bearer foo"
iam-admin-get-list-country-age-restriction-v3 --login_with_auth "Bearer foo"
iam-admin-update-country-age-restriction-v3 '{"ageRestriction": 19}' '69tvnPsA' --login_with_auth "Bearer foo"
iam-admin-get-banned-users-v3 --login_with_auth "Bearer foo"
iam-admin-ban-user-bulk-v3 '{"ban": "lc8lgpfQ", "comment": "3hE1H2pR", "endDate": "OQKk2Pgw", "reason": "luc2tZQ8", "skipNotif": false, "userIds": ["ooVLwrSZ", "jTsY7APn", "HQyhf9e0"]}' --login_with_auth "Bearer foo"
iam-admin-unban-user-bulk-v3 '{"bans": [{"banId": "oeoO9FZA", "userId": "HMYaa12I"}, {"banId": "dm8e4V1L", "userId": "kqEO0Wsw"}, {"banId": "YtdIX4ff", "userId": "Mx80ZXqg"}]}' --login_with_auth "Bearer foo"
iam-admin-get-bans-type-with-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-get-clients-by-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-create-client-v3 '{"audiences": ["sgpBj0Ov", "x42b1WCk", "alhG0lrK"], "baseUri": "7VDMRVbY", "clientId": "W1OZ8whY", "clientName": "WTLrpOTf", "clientPermissions": [{"action": 49, "resource": "jPd46BXm", "schedAction": 78, "schedCron": "EX4B5jNl", "schedRange": ["6mm5QSpN", "XUIANdCg", "ymmUAh6R"]}, {"action": 48, "resource": "yQVh0GDz", "schedAction": 36, "schedCron": "IhZicrDt", "schedRange": ["JcywbYyp", "CRXrhqFd", "aDsO3bRa"]}, {"action": 61, "resource": "BcJnnRPM", "schedAction": 45, "schedCron": "ieL2reJP", "schedRange": ["0eIiT2zE", "BOOpwo3T", "I7dboY4M"]}], "clientPlatform": "Xha2sFKc", "deletable": true, "namespace": "aBQ5RSur", "oauthAccessTokenExpiration": 93, "oauthClientType": "CvsLMtrq", "oauthRefreshTokenExpiration": 11, "redirectUri": "I6LoqQSG", "secret": "okR69oea", "twoFactorEnabled": false}' --login_with_auth "Bearer foo"
iam-admin-get-clientsby-namespaceby-idv3 'snoVUXke' --login_with_auth "Bearer foo"
iam-admin-delete-client-v3 'raVXdTu6' --login_with_auth "Bearer foo"
iam-admin-update-client-v3 '{"audiences": ["kRvYCuZg", "LY35mLI8", "a3L0AOXY"], "baseUri": "9n57qWEi", "clientName": "ht3kXJ9x", "clientPermissions": [{"action": 5, "resource": "dHAImNAN", "schedAction": 66, "schedCron": "dtqLsoSg", "schedRange": ["lCBa0rVI", "30onnoFW", "Hv4U6Og6"]}, {"action": 60, "resource": "7jjfeI9W", "schedAction": 82, "schedCron": "ItBzvWeV", "schedRange": ["2lGoV9o3", "WqDlVDVL", "CVF6PH9B"]}, {"action": 17, "resource": "aBmsSlGY", "schedAction": 66, "schedCron": "JaQ5Zgvb", "schedRange": ["142vrVeo", "zTGdWw9s", "d82cesQj"]}], "clientPlatform": "q8jIMkAO", "deletable": false, "namespace": "TJa7XF8z", "oauthAccessTokenExpiration": 61, "oauthRefreshTokenExpiration": 31, "redirectUri": "l6bC7EPw", "twoFactorEnabled": true}' 'V3OOE5rp' --login_with_auth "Bearer foo"
iam-admin-update-client-permission-v3 '{"permissions": [{"action": 79, "resource": "LmLC3uT0"}, {"action": 55, "resource": "VYWzhWR9"}, {"action": 59, "resource": "3uouTgrL"}]}' 'mXLCCYua' --login_with_auth "Bearer foo"
iam-admin-add-client-permissions-v3 '{"permissions": [{"action": 19, "resource": "IvTR1pnD"}, {"action": 91, "resource": "x4lurC2e"}, {"action": 97, "resource": "345GIiy2"}]}' 's6YxEHAY' --login_with_auth "Bearer foo"
iam-admin-delete-client-permission-v3 '100' 'v8COM3w5' 'axIrIPXq' --login_with_auth "Bearer foo"
iam-retrieve-all-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-sso-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-third-party-login-platform-credential-v3 'm7POA8JH' --login_with_auth "Bearer foo"
iam-add-third-party-login-platform-credential-v3 '{"ACSURL": "yI5rMZiW", "AWSCognitoRegion": "fYpk7Cs6", "AWSCognitoUserPool": "hI5mosUs", "AllowedClients": ["XElT0S7h", "Sq5XwAtS", "ISW2EcQ0"], "AppId": "moLVfUEC", "AuthorizationEndpoint": "cw7k1mdO", "ClientId": "jtEOrXAb", "Environment": "siblU0rZ", "FederationMetadataURL": "EYJDS5ZB", "GenericOauthFlow": false, "IsActive": true, "Issuer": "dZrf53DR", "JWKSEndpoint": "InILY8TH", "KeyID": "CidVo1t1", "NetflixCertificates": {"encryptedPrivateKey": "Sv3IqstH", "encryptedPrivateKeyName": "lWXnhnxc", "publicCertificate": "Wjl9m3PX", "publicCertificateName": "315lVeJG", "rootCertificate": "CecOioEJ", "rootCertificateName": "dKTM1q6z"}, "OrganizationId": "VNBV3Vnc", "PlatformName": "A3djArbg", "RedirectUri": "1qfKw81v", "RegisteredDomains": [{"affectedClientIDs": ["6ZhMMDXL", "Vcx8tb0y", "i8y8voxS"], "domain": "lW76kePU", "namespaces": ["VsaP8IyU", "eG4SBsoF", "H6btpKtT"], "roleId": "VBQOSAeE"}, {"affectedClientIDs": ["OLznt1aE", "8jwnsIY8", "0AcHTKbe"], "domain": "39nJ3ver", "namespaces": ["Lb9P4wSf", "AN6lqxCh", "x4Vk165y"], "roleId": "eP4PK2cv"}, {"affectedClientIDs": ["mCXn5EgP", "DefJJiMA", "1ppuGEj2"], "domain": "ODxwPM52", "namespaces": ["CFTfpSd8", "bN9KTcPZ", "TELbF8JI"], "roleId": "qITQcffJ"}], "Secret": "JDHf26NO", "TeamID": "Z1TS0xlC", "TokenAuthenticationType": "wwk5XDrl", "TokenClaimsMapping": {"KKZvHJbI": "77WUvdzv", "UTKlWZjS": "LbRQW2Kk", "Jcw9ds2K": "4JTqG1u4"}, "TokenEndpoint": "h5wwQg4U", "scopes": ["Fj12vgwK", "TocvvqTM", "6KmX3KvN"]}' 'AYcB48Br' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-credential-v3 'RqbttxnC' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-credential-v3 '{"ACSURL": "iYYAkBEp", "AWSCognitoRegion": "ID3Xil6l", "AWSCognitoUserPool": "hsJd93ZN", "AllowedClients": ["6Us4FDhz", "JrSvBoTs", "PWlHZ67e"], "AppId": "Tj724kbY", "AuthorizationEndpoint": "DWfMCLE0", "ClientId": "WjKw0OyI", "Environment": "KTgT7wkl", "FederationMetadataURL": "HViyQq2u", "GenericOauthFlow": false, "IsActive": false, "Issuer": "fqnXd4FU", "JWKSEndpoint": "HiRVzrNU", "KeyID": "cUGa1Vrm", "NetflixCertificates": {"encryptedPrivateKey": "7abufhCd", "encryptedPrivateKeyName": "1wJWPNrh", "publicCertificate": "RE9cabix", "publicCertificateName": "SSfbcEB9", "rootCertificate": "5wmkA6pS", "rootCertificateName": "ABReKhvb"}, "OrganizationId": "zfImtb3y", "PlatformName": "KFOyZhCR", "RedirectUri": "hcYD2ORb", "RegisteredDomains": [{"affectedClientIDs": ["fRRxU8WA", "Lvnb1b0d", "SxeSPHLp"], "domain": "gx4c5Iot", "namespaces": ["53oOFE5z", "CRAxnnEV", "PfPhaQsJ"], "roleId": "yNLxZXav"}, {"affectedClientIDs": ["OiLTMOQc", "iUR3JZkp", "VZEOBlkA"], "domain": "g5zQUj0A", "namespaces": ["0Lut2yTJ", "PaIxnMLv", "L4YL5CIB"], "roleId": "4AUkjg0c"}, {"affectedClientIDs": ["HA08oxht", "Dr46097O", "IOnTOG2S"], "domain": "41wrUifM", "namespaces": ["fDU02ZG9", "COoRg3Jn", "dNpuenQE"], "roleId": "g7Xcmtn8"}], "Secret": "7mX9TKKd", "TeamID": "jZzvOBCW", "TokenAuthenticationType": "Ds74U3AB", "TokenClaimsMapping": {"zVIRJu0O": "hshsqrbA", "xBpIqymc": "WCOY3rrn", "XpQZitTu": "oPRBPNZw"}, "TokenEndpoint": "p1sHy53E", "scopes": ["lWTlZIzS", "oRyr2DnX", "8Ln46Sfq"]}' 'y5ZMHGSf' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-domain-v3 '{"affectedClientIDs": ["78MybhaZ", "xpjoP9EW", "szzKHPs7"], "assignedNamespaces": ["vTQTxowq", "zxc1WxWK", "QmWybbel"], "domain": "7ToE6N7b", "roleId": "YNXQMude"}' 'QhEAE4ee' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-domain-v3 '{"domain": "cyRuitAE"}' 'EJf96akl' --login_with_auth "Bearer foo"
iam-retrieve-sso-login-platform-credential 'Ide9LMpR' --login_with_auth "Bearer foo"
iam-add-sso-login-platform-credential '{"acsUrl": "NpbygFYH", "apiKey": "B8kcpCsA", "appId": "3Oh0QNki", "federationMetadataUrl": "U2XlYdI4", "isActive": false, "redirectUri": "EQyNSofK", "secret": "TADvffpZ", "ssoUrl": "tGmKovA1"}' 'OBvPberc' --login_with_auth "Bearer foo"
iam-delete-sso-login-platform-credential-v3 'dslmxkob' --login_with_auth "Bearer foo"
iam-update-sso-platform-credential '{"acsUrl": "5fmy2PO3", "apiKey": "vjundE2Z", "appId": "SlJKwHLC", "federationMetadataUrl": "ZqpC3V72", "isActive": true, "redirectUri": "189NFAfY", "secret": "nFnvCZHM", "ssoUrl": "fJJeyzAI"}' 'Ellnubjj' --login_with_auth "Bearer foo"
iam-admin-get-user-by-platform-user-idv3 '7Ml0IZHu' '7YzzVLIA' --login_with_auth "Bearer foo"
iam-get-admin-users-by-role-id-v3 'zweBILz6' --login_with_auth "Bearer foo"
iam-admin-get-user-by-email-address-v3 --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-user-i-ds-v3 '{"userIds": ["pULgMTyp", "YGhcPo0D", "mCZLl8YI"]}' --login_with_auth "Bearer foo"
iam-admin-invite-user-v3 '{"emailAddresses": ["ZY0goYwM", "JgsC8Uyy", "G2T3Cj4u"], "isAdmin": true, "roles": ["JOEZV98D", "cD5TmWvf", "5VOTZuHA"]}' --login_with_auth "Bearer foo"
iam-admin-list-users-v3 --login_with_auth "Bearer foo"
iam-admin-search-user-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-by-email-address-v3 '{"listEmailAddressRequest": ["sQIOQ32C", "9JE4VXzh", "arBolq5w"]}' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v3 '9grfGtKU' --login_with_auth "Bearer foo"
iam-admin-update-user-v3 '{"avatarUrl": "ZkCSUT4W", "country": "ykr6BMYp", "dateOfBirth": "Qg4AwQ3E", "displayName": "1F3UAS3d", "languageTag": "Z9gS4u6X", "userName": "DTzqRSHq"}' 'YFz5yesG' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v3 'HTFt2iQh' --login_with_auth "Bearer foo"
iam-admin-ban-user-v3 '{"ban": "3B0XJUeU", "comment": "VU4f3CG9", "endDate": "2Fdg2AIv", "reason": "lg8z39FV", "skipNotif": true}' 'NklaTZyF' --login_with_auth "Bearer foo"
iam-admin-update-user-ban-v3 '{"enabled": false, "skipNotif": true}' 'QPd8xLXf' '63wMuMEh' --login_with_auth "Bearer foo"
iam-admin-send-verification-code-v3 '{"context": "A8cKsEkh", "emailAddress": "raDmRo2O", "languageTag": "LnXLTfyI"}' '5oXTwVDF' --login_with_auth "Bearer foo"
iam-admin-verify-account-v3 '{"Code": "9Wb6jBEN", "ContactType": "IsItWqXd", "LanguageTag": "ldtitsCu", "validateOnly": true}' 'tYVdwGVV' --login_with_auth "Bearer foo"
iam-get-user-verification-code '4k636qbI' --login_with_auth "Bearer foo"
iam-admin-get-user-deletion-status-v3 'tGJowofd' --login_with_auth "Bearer foo"
iam-admin-update-user-deletion-status-v3 '{"enabled": true}' '9OcD55Fl' --login_with_auth "Bearer foo"
iam-admin-upgrade-headless-account-v3 '{"code": "UV5afgQj", "country": "LetWjwqT", "dateOfBirth": "CVDb6uZ9", "displayName": "Z2F14Owj", "emailAddress": "ZPRY5Ee8", "password": "4kTTkcHD", "validateOnly": true}' 'YsFTFh0D' --login_with_auth "Bearer foo"
iam-admin-delete-user-information-v3 'ldZiJNJm' --login_with_auth "Bearer foo"
iam-admin-get-user-login-histories-v3 'rqdULMLV' --login_with_auth "Bearer foo"
iam-admin-reset-password-v3 '{"languageTag": "ZNq799dN", "newPassword": "P33bMm90", "oldPassword": "cmvmHg5c"}' 'VGpnCZwt' --login_with_auth "Bearer foo"
iam-admin-update-user-permission-v3 '{"Permissions": [{"Action": 93, "Resource": "u5iH6zL0", "SchedAction": 72, "SchedCron": "Dvu9gK2e", "SchedRange": ["JoFDROwG", "GoFRNJ6U", "uDS7VvLZ"]}, {"Action": 48, "Resource": "nT43fQJZ", "SchedAction": 67, "SchedCron": "FbCWOOyy", "SchedRange": ["RT2srCuU", "znK3hBGS", "Kw9gXtp1"]}, {"Action": 70, "Resource": "yeTRZ0FF", "SchedAction": 53, "SchedCron": "fnIXemDy", "SchedRange": ["wACmcWVg", "16uZshg4", "nFYGiolx"]}]}' 'rVVpFUkb' --login_with_auth "Bearer foo"
iam-admin-add-user-permissions-v3 '{"Permissions": [{"Action": 57, "Resource": "ZbbZZOOq", "SchedAction": 99, "SchedCron": "UBxrEric", "SchedRange": ["gtts2Cap", "RfEU02JA", "IgpGhMuQ"]}, {"Action": 96, "Resource": "6CAAuUCU", "SchedAction": 80, "SchedCron": "modjmkBu", "SchedRange": ["uflGc7sK", "2KbGUfVB", "ZG7xWMuu"]}, {"Action": 9, "Resource": "XNgjbbQz", "SchedAction": 11, "SchedCron": "FcbX5gn5", "SchedRange": ["CDw8R5nm", "PJ34EPlD", "v5lZTtSd"]}]}' 'X9iurq0Y' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-bulk-v3 '[{"Action": 35, "Resource": "zxhMTCJu"}, {"Action": 7, "Resource": "LzosZWJG"}, {"Action": 13, "Resource": "GCmN5zfo"}]' '7M0AKyhR' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-v3 '53' 'KImWj1Uq' 'oZLCGl8o' --login_with_auth "Bearer foo"
iam-admin-get-user-platform-accounts-v3 'SY8Cl421' --login_with_auth "Bearer foo"
iam-admin-get-list-justice-platform-accounts 'QgrQ9M7h' --login_with_auth "Bearer foo"
iam-admin-get-user-mapping 'bioKRL1P' '3wL9Wypf' --login_with_auth "Bearer foo"
iam-admin-create-justice-user 'cmMPKATM' 'fggbZptM' --login_with_auth "Bearer foo"
iam-admin-link-platform-account '{"platformId": "e0HynFAz", "platformUserId": "Q2qAXQnq"}' 'ZZdRBdpE' --login_with_auth "Bearer foo"
iam-admin-platform-unlink-v3 '{"platformNamespace": "05nGVEPN"}' 'iNriqd49' 'mOetR4kB' --login_with_auth "Bearer foo"
iam-admin-platform-link-v3 '1XJyajf1' '4h7GT28G' 'nfoej6Kr' --login_with_auth "Bearer foo"
iam-admin-delete-user-roles-v3 '["M8RKnzCj", "XgXl9XfT", "PV4KZuh4"]' 'pRTvgK3J' --login_with_auth "Bearer foo"
iam-admin-save-user-role-v3 '[{"namespace": "ZNkRvNNz", "roleId": "Qi8J1YQt"}, {"namespace": "3WR0bSdR", "roleId": "6l2YYV0y"}, {"namespace": "aDLQEtRj", "roleId": "vaInuScl"}]' 'A3YYLQyZ' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v3 'Yiz0ktgF' 'Mso4Vs0g' --login_with_auth "Bearer foo"
iam-admin-delete-user-role-v3 'eLimilj0' 'YSHE5xks' --login_with_auth "Bearer foo"
iam-admin-update-user-status-v3 '{"enabled": false, "reason": "IR6lfAKJ"}' 'AduU07bq' --login_with_auth "Bearer foo"
iam-admin-verify-user-without-verification-code-v3 'v0XtWgLW' --login_with_auth "Bearer foo"
iam-admin-update-client-secret-v3 '{"newSecret": "TEPEnZfh"}' '1ll3Nt6L' --login_with_auth "Bearer foo"
iam-admin-get-roles-v3 --login_with_auth "Bearer foo"
iam-admin-create-role-v3 '{"adminRole": true, "deletable": true, "isWildcard": true, "managers": [{"displayName": "FGF43nc1", "namespace": "jg2haslK", "userId": "MLA7Nw5O"}, {"displayName": "pBaj9LCq", "namespace": "zwC5Y3LS", "userId": "GcFhPZpC"}, {"displayName": "9Y5l68KL", "namespace": "JlUCd3Ot", "userId": "gOz4RVMo"}], "members": [{"displayName": "qmjDBmIB", "namespace": "oYDgmPqg", "userId": "aF41jYSM"}, {"displayName": "gV0EVKfz", "namespace": "huXWVUyE", "userId": "VFsiliwZ"}, {"displayName": "RLXtR4bR", "namespace": "FKl7WaxN", "userId": "kzf94ZeX"}], "permissions": [{"action": 63, "resource": "y11BshWT", "schedAction": 1, "schedCron": "ntO3RC0q", "schedRange": ["9PTgheWF", "PPGia1kX", "axBKd020"]}, {"action": 35, "resource": "l5pspOFF", "schedAction": 56, "schedCron": "FKDsBr34", "schedRange": ["y9LKlGda", "r2Gzv7AH", "Us5z7yMR"]}, {"action": 59, "resource": "JAknfFVS", "schedAction": 54, "schedCron": "OfTWbgJb", "schedRange": ["GnG9WuZk", "CQemF57q", "P5TO2UaA"]}], "roleName": "eT7iw1Wx"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v3 'X4qaHGtq' --login_with_auth "Bearer foo"
iam-admin-delete-role-v3 'LALALPyU' --login_with_auth "Bearer foo"
iam-admin-update-role-v3 '{"deletable": true, "isWildcard": true, "roleName": "pKa7bkCx"}' 'Z2LbUgdH' --login_with_auth "Bearer foo"
iam-admin-get-role-admin-status-v3 'ExA3AgfZ' --login_with_auth "Bearer foo"
iam-admin-update-admin-role-status-v3 '8eLamYea' --login_with_auth "Bearer foo"
iam-admin-remove-role-admin-v3 'co0rc6ss' --login_with_auth "Bearer foo"
iam-admin-get-role-managers-v3 'fX1AU7nO' --login_with_auth "Bearer foo"
iam-admin-add-role-managers-v3 '{"managers": [{"displayName": "XaFIMGZa", "namespace": "c4blb2Pv", "userId": "q2dkIzvY"}, {"displayName": "V85x7BDL", "namespace": "0ykqCS7p", "userId": "xczG0Kj0"}, {"displayName": "YCJezrwe", "namespace": "xeOxNiS7", "userId": "AD1zvnKa"}]}' 'C2xjBDrE' --login_with_auth "Bearer foo"
iam-admin-remove-role-managers-v3 '{"managers": [{"displayName": "SWMH44xq", "namespace": "ntwN3CVV", "userId": "ursAhjn2"}, {"displayName": "ybUA3Tqt", "namespace": "i9T473KT", "userId": "ws5TINdP"}, {"displayName": "xIx9ITNC", "namespace": "srl9Bt5L", "userId": "CCiOUCnu"}]}' '6kXtIaPM' --login_with_auth "Bearer foo"
iam-admin-get-role-members-v3 'wYOfCO6u' --login_with_auth "Bearer foo"
iam-admin-add-role-members-v3 '{"members": [{"displayName": "jJOGGRIH", "namespace": "qb77Kq7g", "userId": "vncQjQol"}, {"displayName": "dAXH2u1g", "namespace": "A9UO58Vf", "userId": "zfesWNIu"}, {"displayName": "hG5scrEo", "namespace": "J3B801Eq", "userId": "ZYgzZY3e"}]}' 'XsUTI0z1' --login_with_auth "Bearer foo"
iam-admin-remove-role-members-v3 '{"members": [{"displayName": "ACYSOE5h", "namespace": "aU2vYc9Z", "userId": "i4syv9sB"}, {"displayName": "QLyiDdur", "namespace": "CfgNFJIP", "userId": "qVNZl7HE"}, {"displayName": "s4bOG3iE", "namespace": "Qpi2CMog", "userId": "CYHH9Hyw"}]}' 'ikTSdPyS' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v3 '{"permissions": [{"action": 94, "resource": "EUMtJDYL", "schedAction": 31, "schedCron": "eihbrCPN", "schedRange": ["yVEZso8s", "K9Ip3sEm", "xMz41tfO"]}, {"action": 44, "resource": "VEOBmw5A", "schedAction": 2, "schedCron": "vkiy5EH1", "schedRange": ["dovUjS6T", "hGZG0OGB", "d0BD0tEM"]}, {"action": 80, "resource": "SqmEst7Y", "schedAction": 32, "schedCron": "7Rywf9in", "schedRange": ["obSlTXJz", "B1ta0Qz3", "UBH1Z4O2"]}]}' 'bNB7PB89' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v3 '{"permissions": [{"action": 50, "resource": "yNQd3xa4", "schedAction": 33, "schedCron": "KuPo9Vvs", "schedRange": ["841OBo0u", "WB8PD2zE", "tABGJSzi"]}, {"action": 96, "resource": "YhiQI2gt", "schedAction": 27, "schedCron": "KoCKVvQk", "schedRange": ["ETFJfHmu", "uSiqj00x", "7Shg5DxL"]}, {"action": 22, "resource": "tGBnPB1k", "schedAction": 59, "schedCron": "9VPbHgJq", "schedRange": ["yr7ujEq1", "qDBXzejF", "DGOcl5XQ"]}]}' 'uloeoJEN' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v3 '["4jYN3OwL", "n515zuGZ", "zpvArLd7"]' 'Ay2ekGhA' --login_with_auth "Bearer foo"
iam-admin-delete-role-permission-v3 '25' 'FFnZK2io' '0gbFL3Hn' --login_with_auth "Bearer foo"
iam-admin-get-my-user-v3 --login_with_auth "Bearer foo"
iam-user-authentication-v3 'yTJGExc9' 'NaITecPx' 'q4OrEiji' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-authentication-with-platform-link-v3 'DXMu7tHk' 'h3qGvqvd' 'zKDPNiHx' '6Z0lModi' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v3 '8I16DsP7' --login_with_auth "Bearer foo"
iam-get-country-location-v3 --login_with_auth "Bearer foo"
iam-logout --login_with_auth "Bearer foo"
iam-request-game-token-code-response-v3 'V22sQ8Tc' --login_with_auth "Bearer foo"
iam-admin-retrieve-user-third-party-platform-token-v3 'mWq9OOdY' 'bXSGcvhE' --login_with_auth "Bearer foo"
iam-revoke-user-v3 'D7ikdMZ3' --login_with_auth "Bearer foo"
iam-authorize-v3 'QGIii9sD' 'code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-introspection-v3 'hcHbWSDe' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-jwksv3 --login_with_auth "Bearer foo"
iam-change2fa-method 'pEp4955B' 'URnTsgjE' --login_with_auth "Bearer foo"
iam-verify2fa-code 'az0uz7td' 'E9wme1pY' 'uzt6JWbZ' 'true' --login_with_auth "Bearer foo"
iam-retrieve-user-third-party-platform-token-v3 'FvDM9eM8' 'bFzgRU5Q' --login_with_auth "Bearer foo"
iam-auth-code-request-v3 'z7FLCUkN' 'ktZFo390' --login_with_auth "Bearer foo"
iam-platform-token-grant-v3 '5pgR8qzC' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-revocation-list-v3 --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-revocation-v3 '3WZq4DuH' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-grant-v3 'authorization_code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-verify-token-v3 'EoIghJH4' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-platform-authentication-v3 'KZt9J4BG' 'Gle9r7aG' --login_with_auth "Bearer foo"
iam-public-get-input-validations --login_with_auth "Bearer foo"
iam-public-get-country-age-restriction-v3 'zAeuf3ez' --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-public-v3 --login_with_auth "Bearer foo"
iam-retrieve-active-oidc-clients-public-v3 'yhtLHGZH' --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["P0CN9zMC", "UmBzopnX", "rAF6rzj2"]}' 'L3Q3y0Du' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv3 '4zzXwRsI' 'oL43T3q3' --login_with_auth "Bearer foo"
iam-public-get-async-status 'y2vMlzym' --login_with_auth "Bearer foo"
iam-public-search-user-v3 --login_with_auth "Bearer foo"
iam-public-create-user-v3 '{"PasswordMD5Sum": "GMzO3SiT", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "ayDPiSsz", "policyId": "CUlZTrPf", "policyVersionId": "Jy1rkkia"}, {"isAccepted": true, "localizedPolicyVersionId": "WixWouEo", "policyId": "qGUnWpmS", "policyVersionId": "H6067w5H"}, {"isAccepted": true, "localizedPolicyVersionId": "5JbrCTtk", "policyId": "KIkBfVKa", "policyVersionId": "zrUuOsQS"}], "authType": "ES0VXggD", "code": "QS96y9Ca", "country": "QZoAW2Bm", "dateOfBirth": "Z2ACthfS", "displayName": "yGAdQltN", "emailAddress": "G6xyvBo1", "password": "cjLXHgVx", "reachMinimumAge": false}' --login_with_auth "Bearer foo"
iam-check-user-availability 'DnNScNHA' 'CgRtZg3y' --login_with_auth "Bearer foo"
iam-public-bulk-get-users '{"userIds": ["0BJ7jK24", "eWo0V2Xj", "5JXzqAux"]}' --login_with_auth "Bearer foo"
iam-public-send-registration-code '{"emailAddress": "CFUESaM1", "languageTag": "MZeXvly1"}' --login_with_auth "Bearer foo"
iam-public-verify-registration-code '{"code": "oUEjQgYR", "emailAddress": "ObKLaWGR"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v3 '{"emailAddress": "22GKVgSk", "languageTag": "QU2MPZHs"}' --login_with_auth "Bearer foo"
iam-get-admin-invitation-v3 'AUYcKa5Q' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v3 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "awsIJGTp", "policyId": "kw6JZHNJ", "policyVersionId": "I4SiHxM9"}, {"isAccepted": false, "localizedPolicyVersionId": "VIOTnwwH", "policyId": "BAOICuNY", "policyVersionId": "mVvPrL6o"}, {"isAccepted": true, "localizedPolicyVersionId": "f9fzKK3l", "policyId": "qfGJ8cwF", "policyVersionId": "bJZ91uRu"}], "authType": "EMAILPASSWD", "country": "iTq0TvBR", "dateOfBirth": "HK59UDwX", "displayName": "3tPF3Km3", "password": "LlRizx7O", "reachMinimumAge": false}' 'Djk2qVpJ' --login_with_auth "Bearer foo"
iam-update-user-v3 '{"avatarUrl": "k54pJtsp", "country": "yaledzug", "dateOfBirth": "qlFAIL6G", "displayName": "SUZCwhRM", "languageTag": "JtGDYGE8", "userName": "7R5ziR8N"}' --login_with_auth "Bearer foo"
iam-public-partial-update-user-v3 '{"avatarUrl": "tmCTGTPt", "country": "QfXA1xpj", "dateOfBirth": "TVrb3GxU", "displayName": "U6c0wl5o", "languageTag": "Qr6DpNWo", "userName": "f193hc7a"}' --login_with_auth "Bearer foo"
iam-public-send-verification-code-v3 '{"context": "2hRDoCR4", "emailAddress": "Qo75I5qu", "languageTag": "dRsalecX"}' --login_with_auth "Bearer foo"
iam-public-user-verification-v3 '{"code": "WcBcSNDs", "contactType": "lIUFf8ND", "languageTag": "DdTa8Tgg", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v3 '{"code": "kbFgJRh4", "country": "QRtAtjLx", "dateOfBirth": "bkdrDhjk", "displayName": "vyl9swGx", "emailAddress": "VuUrmRtu", "password": "OoD6KqnY", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-verify-headless-account-v3 '{"emailAddress": "5C1oQauJ", "password": "2PwisWN3"}' --login_with_auth "Bearer foo"
iam-public-update-password-v3 '{"languageTag": "v97EmrNI", "newPassword": "6mSAfEUv", "oldPassword": "k2yaNs4f"}' --login_with_auth "Bearer foo"
iam-public-create-justice-user 'PXP2sHXc' --login_with_auth "Bearer foo"
iam-public-platform-link-v3 'Sfv9SURj' 'k2TVSDkd' --login_with_auth "Bearer foo"
iam-public-platform-unlink-v3 '{"platformNamespace": "fJP9TOjy"}' 'GuclmcC5' --login_with_auth "Bearer foo"
iam-public-platform-unlink-all-v3 'CWpZNQMx' --login_with_auth "Bearer foo"
iam-public-force-platform-link-v3 'hYSiQ4j0' '8QbRBCKE' --login_with_auth "Bearer foo"
iam-public-web-link-platform 'lXWAcMVo' --login_with_auth "Bearer foo"
iam-public-web-link-platform-establish 'NgW9Fmiu' 't1ODZIHb' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"code": "pV9JoSQ2", "emailAddress": "A1Knu8kI", "newPassword": "nnazb3sx"}' --login_with_auth "Bearer foo"
iam-public-get-user-by-user-id-v3 'VSf4WIso' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 'ozLmTz20' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 'v1QMm7LC' --login_with_auth "Bearer foo"
iam-public-get-user-information-v3 '4bDfm2AF' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 'ZM6Dnc3U' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 'HAUFKFja' --login_with_auth "Bearer foo"
iam-public-list-justice-platform-accounts-v3 'hU0iDlQ0' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "AcYj1qcu", "platformUserId": "zGbgz4VB"}' 'yepaw3QL' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["djOm86Mp", "MjGEquax", "gJhYrehP"], "requestId": "VA5kDoRy"}' '9Pd05UEf' --login_with_auth "Bearer foo"
iam-public-get-publisher-user-v3 'pr15DC0A' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 'kiUDWQrN' 'MO4n4XdP' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 'hf8ZzoOJ' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-public-send-verification-link-v3 '{"languageTag": "2LGVtTcJ"}' --login_with_auth "Bearer foo"
iam-public-verify-user-by-link-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler '9Fxw1AY3' 'Bg8E30oE' --login_with_auth "Bearer foo"
iam-login-sso-client '5uluxc05' --login_with_auth "Bearer foo"
iam-logout-sso-client 'xVzoKDBd' --login_with_auth "Bearer foo"
iam-request-game-token-response-v3 'Rjop2X1w' --login_with_auth "Bearer foo"
iam-admin-get-devices-by-user-v4 --login_with_auth "Bearer foo"
iam-admin-get-banned-devices-v4 --login_with_auth "Bearer foo"
iam-admin-get-user-device-bans-v4 'Zfq0hM5J' --login_with_auth "Bearer foo"
iam-admin-ban-device-v4 '{"comment": "UZu8JR9S", "deviceId": "zURUVNTV", "deviceType": "1VjZd4nQ", "enabled": true, "endDate": "HtnIx2UX", "ext": {"XGJHaP2E": {}, "SYr3gYvD": {}, "QEFFZLzU": {}}, "reason": "qHNZmteP"}' --login_with_auth "Bearer foo"
iam-admin-get-device-ban-v4 'OiIWkVfA' --login_with_auth "Bearer foo"
iam-admin-update-device-ban-v4 '{"enabled": true}' 'cqlowyCp' --login_with_auth "Bearer foo"
iam-admin-generate-report-v4 'qq3hGCWd' --login_with_auth "Bearer foo"
iam-admin-get-device-types-v4 --login_with_auth "Bearer foo"
iam-admin-get-device-bans-v4 'M3u2andH' --login_with_auth "Bearer foo"
iam-admin-decrypt-device-v4 'KqKoxeG1' --login_with_auth "Bearer foo"
iam-admin-unban-device-v4 '9TLaT0FW' --login_with_auth "Bearer foo"
iam-admin-get-users-by-device-v4 'WnGvm67i' --login_with_auth "Bearer foo"
iam-admin-create-test-users-v4 '{"count": 66}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["lHIE0kQQ", "qil7uMGH", "Bwc5M58s"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "1C3lerv6", "country": "orWhF9q0", "dateOfBirth": "D47if3tz", "displayName": "pYoI6qAR", "languageTag": "kTIbjiaV", "userName": "OB6EctNn"}' 'eCFWCJ1S' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "Pxbftp9Y", "emailAddress": "A5iiDpsp"}' 'mv0xnK9o' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 'q1ii56xD' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 'nlMATZlx' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["WcrkOT20", "6OhZHOLj", "HDKeiJO9"], "roleId": "iv8dhQwT"}' 'W4kdi28H' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["K4PkMyv7", "3rjhSw6P", "VGo4zRdB"], "roleId": "ZNxlSqx7"}' 'w78hcwDm' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["E3KHKlfE", "i26ssEKX", "teaoDPpU"], "roleId": "9qnycXtj"}' '36v8eBW8' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "OpYv47b5"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 'Ge4Cx6ij' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 'KEqq8ZyH' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "gDBgYGgs"}' 'T1EtYOqp' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 88, "resource": "Btt4vNGF", "schedAction": 80, "schedCron": "DJpAU73m", "schedRange": ["sCDfAqXY", "HP6pLPCm", "74Tunfh3"]}, {"action": 50, "resource": "pGufL98d", "schedAction": 20, "schedCron": "LyKGWoGa", "schedRange": ["T5k6YzCb", "nL97X7QO", "0Yu02mD6"]}, {"action": 1, "resource": "Urr9mq5H", "schedAction": 65, "schedCron": "W2JSou49", "schedRange": ["zmoVlwKh", "Urr3Tk9d", "YyVOW58Z"]}]}' '8Lclgs93' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 49, "resource": "B7sxjRja", "schedAction": 30, "schedCron": "rUZ6JpsF", "schedRange": ["6jMaOmEs", "YH54V1jw", "E2fLFDfE"]}, {"action": 55, "resource": "qpMaMqbC", "schedAction": 50, "schedCron": "fkIIXigO", "schedRange": ["4Oyng6Jn", "MVH0883o", "tZzRmOHR"]}, {"action": 8, "resource": "Yu9f13Ex", "schedAction": 71, "schedCron": "9eNZ0Q7v", "schedRange": ["zz10Ilhz", "HWOEpNRq", "3Y1b8z4g"]}]}' 'And4shxI' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["7bq2dFg3", "srrfJKcz", "ZKCVqx03"]' 'u2SLTCTD' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'f6NGuJcU' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["mTmGmCEt", "ciRUnSjO", "BneDZg53"], "namespace": "DW1Jm9O2", "userId": "ME7Jdb0a"}' 'SGKgRueM' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "AuAL96Bs", "userId": "Me9nAxhs"}' 'c9gkV4uV' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "PXCmBk2s", "country": "N4SbIZnr", "dateOfBirth": "faAwQ8Xh", "displayName": "bZEOkwpg", "languageTag": "bsoabH35", "userName": "f2vaVCrQ"}' --login_with_auth "Bearer foo"
iam-admin-disable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-admin-enable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-admin-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-admin-get-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-generate-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-download-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-enable-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 'NQRGY9LZ' --login_with_auth "Bearer foo"
iam-admin-invite-user-v4 '{"assignedNamespaces": ["8D4sx7kp", "vVc8OwxT", "nQvlA1Tp"], "emailAddresses": ["7XSon8zs", "3Mq7jglP", "N1aNkuBQ"], "isAdmin": false, "roleId": "KA33JhVa"}' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "lGQ45sl0", "policyId": "UlgEdrj5", "policyVersionId": "daifpRkq"}, {"isAccepted": true, "localizedPolicyVersionId": "9j08ocT0", "policyId": "4V2oEWAJ", "policyVersionId": "jNe0bOtm"}, {"isAccepted": true, "localizedPolicyVersionId": "E4ajTuIw", "policyId": "U20TWnnO", "policyVersionId": "3aJkJtCe"}], "authType": "EMAILPASSWD", "country": "fQCgPwIb", "dateOfBirth": "pb17Ke33", "displayName": "GXWppOW1", "emailAddress": "53dKeqi8", "password": "2lTYYGtr", "passwordMD5Sum": "c2GFBKC2", "username": "dHi3weWl", "verified": true}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "vgYNDuDu", "policyId": "dE3qIwhr", "policyVersionId": "weHUko7h"}, {"isAccepted": false, "localizedPolicyVersionId": "ri1SnjYO", "policyId": "eMo6OFtC", "policyVersionId": "5YZJoSHw"}, {"isAccepted": false, "localizedPolicyVersionId": "aOIsnf3V", "policyId": "2zrghdRB", "policyVersionId": "TDb1ibdM"}], "authType": "EMAILPASSWD", "code": "URrip0X8", "country": "9FmfSh8u", "dateOfBirth": "nfQc1Fyw", "displayName": "xlw4Ye3W", "emailAddress": "LYiKAAvv", "password": "Td6Us4Fs", "passwordMD5Sum": "1FaBJNCV", "reachMinimumAge": true, "username": "xvtT0ps1"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "Z6Zv62WH", "policyId": "b2I83iPB", "policyVersionId": "LtFborNn"}, {"isAccepted": false, "localizedPolicyVersionId": "ohDQLUfK", "policyId": "HWpr0ViQ", "policyVersionId": "CeqFoCbL"}, {"isAccepted": true, "localizedPolicyVersionId": "aNXtKArg", "policyId": "LBJolJVG", "policyVersionId": "iVOP4cYu"}], "authType": "EMAILPASSWD", "country": "j8GE3O0l", "dateOfBirth": "maVvSwTG", "displayName": "L60kJxyY", "password": "CQ2dQTVE", "reachMinimumAge": true, "username": "cPnmKsbH"}' 'eJn4zT8w' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "nn82xEsh", "country": "5rFobuPH", "dateOfBirth": "X4GendiZ", "displayName": "JC7rNx2J", "languageTag": "5pDR8Jlf", "userName": "99xA2z5B"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "ysOyT4Bj", "emailAddress": "OkpA4uFv"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "kYkwDAaP", "country": "zAQoE6j3", "dateOfBirth": "ytFQuaAU", "displayName": "cTifaEpw", "emailAddress": "L9rQkFAs", "password": "loTBbEdH", "reachMinimumAge": true, "username": "nJSHBG7a", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"emailAddress": "4k7o7CS0", "password": "Pq68wEhH", "username": "tx4ACpVg"}' --login_with_auth "Bearer foo"
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
iam-public-make-factor-my-default-v4 '4HfzWCBp' --login_with_auth "Bearer foo"
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
echo "1..333"

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
    '[{"field": "55ZwjVzk", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "blockedWord": ["EO4tsQZs", "GTkDKAgP", "kxOLyHLJ"], "description": [{"language": "XE4cTqV8", "message": ["q3cJY2YH", "KSMmhXp9", "zdzFjxgy"]}, {"language": "0PJNM4re", "message": ["uZu0bRMf", "NtvkjOei", "ZxSooLHL"]}, {"language": "pFeldVyW", "message": ["EAud2kyO", "0uKBfDtl", "nqPkeqUB"]}], "isCustomRegex": false, "letterCase": "WxnJs9xU", "maxLength": 32, "maxRepeatingAlphaNum": 12, "maxRepeatingSpecialCharacter": 81, "minCharType": 13, "minLength": 29, "regex": "4JsUEOq0", "specialCharacterLocation": "opfKpUZH", "specialCharacters": ["o7vaNiWt", "b1ni5ART", "Q9Wy1xu7"]}}, {"field": "QRBguilF", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "blockedWord": ["7UNTgRK3", "ruVyhapK", "qTlSQevh"], "description": [{"language": "xGIQS2Lj", "message": ["kyvdm17c", "FyCDn2LR", "hV515VjQ"]}, {"language": "IKrPncZa", "message": ["HAzIs8AD", "9d2Jav3s", "JekucSt9"]}, {"language": "YtJwATUv", "message": ["OEYz9Mek", "h25K7UAX", "isI2GHJW"]}], "isCustomRegex": false, "letterCase": "p1kjfOA6", "maxLength": 13, "maxRepeatingAlphaNum": 64, "maxRepeatingSpecialCharacter": 53, "minCharType": 25, "minLength": 93, "regex": "BJLkVS47", "specialCharacterLocation": "Od0ruUZs", "specialCharacters": ["LYpq0q4G", "BRvl9G7r", "xoNqiuoA"]}}, {"field": "wtXA4bnm", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "blockedWord": ["xq9SvtMy", "93dCyhQG", "8toQlEQt"], "description": [{"language": "chH4iCHM", "message": ["WHm69vuv", "UcdEE1jx", "ynXFLHec"]}, {"language": "QiR4EbS4", "message": ["UVofbncH", "HkygeW1X", "hnrNmlJf"]}, {"language": "6ZZPept2", "message": ["kwCZ4hHu", "isd8gOkC", "XrSeLOnq"]}], "isCustomRegex": false, "letterCase": "K78OLSk4", "maxLength": 64, "maxRepeatingAlphaNum": 99, "maxRepeatingSpecialCharacter": 13, "minCharType": 56, "minLength": 51, "regex": "9s6I1gGP", "specialCharacterLocation": "PBXw7nnu", "specialCharacters": ["CILoNZsU", "H1FOmgvF", "C1K6WtxL"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    'obeWmS3b' \
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
    '{"ageRestriction": 87, "enable": false}' \
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
    '{"ageRestriction": 48}' \
    'ZFzOdgla' \
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
    '{"ban": "FtfJKH2s", "comment": "gocSkwGi", "endDate": "C2RHphWK", "reason": "k5wHmZqg", "skipNotif": false, "userIds": ["GhvOzSXR", "9lhrEwdG", "4jfeEicK"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "lLE1kxEz", "userId": "dVdS63Zq"}, {"banId": "onp9yEh2", "userId": "Kpax4hcE"}, {"banId": "CgZWhSzd", "userId": "e9MVSCjO"}]}' \
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
    '{"audiences": ["cOALaKAh", "xL0MLwYH", "dF8aiPDs"], "baseUri": "1rO0TyYH", "clientId": "O08uPNJW", "clientName": "fufgGQte", "clientPermissions": [{"action": 99, "resource": "ruY9C0RY", "schedAction": 70, "schedCron": "Fmlt7jeM", "schedRange": ["YagR3KzO", "qaDjskS3", "tgQVn1Fr"]}, {"action": 53, "resource": "j07DxYxJ", "schedAction": 98, "schedCron": "IUrvX7tg", "schedRange": ["uNBX1Grx", "RRjU7v1W", "yz3HBa0W"]}, {"action": 54, "resource": "vfUVuHTa", "schedAction": 94, "schedCron": "dY47pxuE", "schedRange": ["F3WUJFph", "i1HsafGj", "2TB8WXBY"]}], "clientPlatform": "YpTDiov6", "deletable": true, "namespace": "7dzue0dv", "oauthAccessTokenExpiration": 37, "oauthClientType": "CBICcd3V", "oauthRefreshTokenExpiration": 79, "redirectUri": "vQ7HsMa9", "secret": "LFWqhJfR", "twoFactorEnabled": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    'xBDsHtwY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    '54ra2tok' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["utJA7u1y", "s8zIDurW", "OqPl0DcN"], "baseUri": "bAtvYLCI", "clientName": "LFvxZuGX", "clientPermissions": [{"action": 53, "resource": "gtWcq2Ml", "schedAction": 50, "schedCron": "5UO1ts49", "schedRange": ["JLStDD1s", "9e3z2ioh", "TfggPMIM"]}, {"action": 39, "resource": "gAyzQEoW", "schedAction": 5, "schedCron": "B5pYPUdJ", "schedRange": ["fGjE3293", "ijhjGuLl", "GYj2nhYd"]}, {"action": 40, "resource": "jNf220vI", "schedAction": 14, "schedCron": "Sv1T9tXH", "schedRange": ["C4hoiChp", "zS4H0VUV", "yKW0AigQ"]}], "clientPlatform": "D4G4INgB", "deletable": true, "namespace": "h8FwO27m", "oauthAccessTokenExpiration": 13, "oauthRefreshTokenExpiration": 93, "redirectUri": "fCCGBTIy", "twoFactorEnabled": false}' \
    'kydPzGq2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 17, "resource": "u4FgQLvl"}, {"action": 31, "resource": "J1pSFhvL"}, {"action": 99, "resource": "VBjS3RKW"}]}' \
    'D0v0mCT6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 22, "resource": "3AlC08cj"}, {"action": 64, "resource": "lwclabVS"}, {"action": 95, "resource": "fK9yjE63"}]}' \
    'XlSbey5Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '27' \
    's4R77rKG' \
    'adNDizn9' \
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
    'PSHGqTcS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "NtEATkfh", "AWSCognitoRegion": "MKIc3LeZ", "AWSCognitoUserPool": "hD4KXNi4", "AllowedClients": ["t0mvhxjH", "MmB46UzI", "JZcWs4vP"], "AppId": "8rStBR3S", "AuthorizationEndpoint": "BtMHe8b7", "ClientId": "7rVw8uBc", "Environment": "Tle5WgMj", "FederationMetadataURL": "LhUiVcWq", "GenericOauthFlow": true, "IsActive": false, "Issuer": "VXex8Zdf", "JWKSEndpoint": "CXDpuNVW", "KeyID": "s2Qx6Zd6", "NetflixCertificates": {"encryptedPrivateKey": "BORZHdTB", "encryptedPrivateKeyName": "mu3RupRV", "publicCertificate": "5wbUnqOE", "publicCertificateName": "WaQXlOTw", "rootCertificate": "1kxe2Hkg", "rootCertificateName": "HGObeH3C"}, "OrganizationId": "1qNuu7YZ", "PlatformName": "jNfUUkXc", "RedirectUri": "Ug7bWYzd", "RegisteredDomains": [{"affectedClientIDs": ["ZSo14gwZ", "u9QWllfl", "FS4FnXys"], "domain": "ru15LtR7", "namespaces": ["D7Favkby", "rpYe09ks", "I0v1Od5V"], "roleId": "XY2Ygcco"}, {"affectedClientIDs": ["BrHFp6mS", "9ZJW6iQb", "mFuFf1Cw"], "domain": "TAg6YOc0", "namespaces": ["ENkzqiaJ", "OuABYII5", "LlLQjJpc"], "roleId": "eKGM8vYx"}, {"affectedClientIDs": ["TKkZzrog", "6xuZUN64", "xaWiN4TI"], "domain": "v2oOHTGK", "namespaces": ["rjvLbhVX", "oE2l6a5J", "nNEduTdD"], "roleId": "etGtFa4o"}], "Secret": "vYePIIxi", "TeamID": "BAasZmQK", "TokenAuthenticationType": "y898djwt", "TokenClaimsMapping": {"ohu1clWC": "OdXSURLR", "3buCjmoR": "8kwNHzGv", "xnt97HvE": "x2PXJlRh"}, "TokenEndpoint": "wGJlfgGo", "scopes": ["3k0wKeJ4", "7ZE0d1PA", "FHGcPQo8"]}' \
    'V6lWdmeM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    'S1bZylMy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "1uRSIBVW", "AWSCognitoRegion": "w2u5d7Sk", "AWSCognitoUserPool": "rQJvjaAr", "AllowedClients": ["2I7fR0tp", "f9JAB8V9", "xANBrfLT"], "AppId": "5ujqgwt1", "AuthorizationEndpoint": "D3MIfgaf", "ClientId": "iGgsuSpZ", "Environment": "SIxJphMP", "FederationMetadataURL": "FhRFq3Hg", "GenericOauthFlow": true, "IsActive": false, "Issuer": "1o6Y2VAW", "JWKSEndpoint": "Wp2qcyPQ", "KeyID": "2U4CywBi", "NetflixCertificates": {"encryptedPrivateKey": "xpu45dVs", "encryptedPrivateKeyName": "4imUmwjX", "publicCertificate": "7U35ouwP", "publicCertificateName": "0K7PvGqp", "rootCertificate": "QbcouE1U", "rootCertificateName": "nhswsOd8"}, "OrganizationId": "AMk7f0dx", "PlatformName": "6hJGcP7K", "RedirectUri": "yZlC6C9I", "RegisteredDomains": [{"affectedClientIDs": ["ENq9Wy2i", "R56QiUpI", "hu04nLjT"], "domain": "ZyhhCmwt", "namespaces": ["jxk7BiNz", "CWKLH9RC", "AUZHKF6p"], "roleId": "jRe4PNMw"}, {"affectedClientIDs": ["0JkNhkrJ", "uGXnk2Km", "OPaHtWxY"], "domain": "Irta23zD", "namespaces": ["79H2DyJw", "m8Km7Ltu", "IeTMXM7x"], "roleId": "FDeMTJan"}, {"affectedClientIDs": ["PihMvyHw", "EVAujAPf", "85NOIuB0"], "domain": "XyC7L1hl", "namespaces": ["CuwApAEp", "leeUM6cZ", "BaHoe9Ev"], "roleId": "fs7sF5Pv"}], "Secret": "JDyspjFc", "TeamID": "tZGHy4Wr", "TokenAuthenticationType": "4nT1nxpA", "TokenClaimsMapping": {"8DAmzOoc": "cII91zpX", "s6GxzBOn": "2Rw4KZc5", "RSlnpsKE": "bFzeAcW5"}, "TokenEndpoint": "tetYJrXQ", "scopes": ["FUIiX0Md", "5ZrIgcdu", "wdGnHbUO"]}' \
    'Exu7QxMg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["MZF5kkEP", "MIkqtiCQ", "naVtWGRt"], "assignedNamespaces": ["EUKMsaxS", "N003hUPP", "P9umeKdo"], "domain": "n8ZtUc3P", "roleId": "Hj8tiikW"}' \
    'FRNIhUWa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "7on4ZyDQ"}' \
    'PHREveXp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    'GbLZbrfP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "uY2GmORd", "apiKey": "1SKhREgC", "appId": "5VqLScAE", "federationMetadataUrl": "qt8TO3YC", "isActive": false, "redirectUri": "Jxc2MVWN", "secret": "t6EvOWIC", "ssoUrl": "zpOp0t2O"}' \
    'vjWg4v8J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'lsLwhp2N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "AZeXn4Dh", "apiKey": "XrEwCb14", "appId": "YjKl3LiJ", "federationMetadataUrl": "KQAHqUpv", "isActive": false, "redirectUri": "p5ncFEwx", "secret": "JHhwjxA6", "ssoUrl": "7t48UzEp"}' \
    'LxYT0nDy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'RXTtVzY3' \
    'Xe1iuFgg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'g3NYNSJx' \
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
    '{"userIds": ["Nd1PTkQn", "wiVC6ct4", "gZ2E3vso"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["OmWGH9y5", "Mvju2cGe", "vViQpc3g"], "isAdmin": true, "roles": ["WnizDCTz", "5C4UBlKn", "dVFI6OPi"]}' \
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
    '{"listEmailAddressRequest": ["ETWwVwgw", "5NvpHjFg", "y5HGhPeq"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'AdminGetBulkUserByEmailAddressV3' test.out

#- 149 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'Nsi3CpDh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'AdminGetUserByUserIdV3' test.out

#- 150 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "HNxp5CyI", "country": "3oQIXtpt", "dateOfBirth": "Z2SE5iTp", "displayName": "UyO0BBvB", "languageTag": "x35X8ozE", "userName": "YVstKiC5"}' \
    'PxA8UoKg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AdminUpdateUserV3' test.out

#- 151 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'CeYf93jW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'AdminGetUserBanV3' test.out

#- 152 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "XsO6kzaF", "comment": "fXYzrWjD", "endDate": "kJLHoieG", "reason": "j8JQgETR", "skipNotif": false}' \
    'KNpm7ERe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'AdminBanUserV3' test.out

#- 153 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": false, "skipNotif": false}' \
    'YJtPgtw3' \
    'THxAQEI0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AdminUpdateUserBanV3' test.out

#- 154 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "6rehtns4", "emailAddress": "n10g1xyW", "languageTag": "O4vdfa4b"}' \
    'dfig6FG7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'AdminSendVerificationCodeV3' test.out

#- 155 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "824UE7Pz", "ContactType": "BfjX6Dif", "LanguageTag": "1oj7ZEc1", "validateOnly": false}' \
    'Gzs8AZYm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminVerifyAccountV3' test.out

#- 156 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    't8J6AF1C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'GetUserVerificationCode' test.out

#- 157 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'q52TRlBr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'AdminGetUserDeletionStatusV3' test.out

#- 158 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"enabled": true}' \
    'r0E1IzIu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminUpdateUserDeletionStatusV3' test.out

#- 159 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "NwjDFW0t", "country": "QSY29bef", "dateOfBirth": "7JtBF89z", "displayName": "WGTiSIry", "emailAddress": "zuKooIn8", "password": "ZXrjUNmM", "validateOnly": true}' \
    'k5phFUTt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminUpgradeHeadlessAccountV3' test.out

#- 160 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'KpSvF2J8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminDeleteUserInformationV3' test.out

#- 161 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'yBe6E9DC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminGetUserLoginHistoriesV3' test.out

#- 162 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "FYtAXnYc", "newPassword": "Zfe8TlA7", "oldPassword": "tEe4J3M9"}' \
    '7E0sa5E4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminResetPasswordV3' test.out

#- 163 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 84, "Resource": "KYmRyxjt", "SchedAction": 61, "SchedCron": "MaTentQu", "SchedRange": ["t1KRptMJ", "2VLLjnLf", "JGrxA39G"]}, {"Action": 38, "Resource": "lc6wqMzJ", "SchedAction": 36, "SchedCron": "4vSScRCd", "SchedRange": ["pZ87uLt9", "welZXXjp", "76ZHgpt1"]}, {"Action": 66, "Resource": "idrsrYT2", "SchedAction": 71, "SchedCron": "dlKDi7y8", "SchedRange": ["qVPYfc84", "MmwWL1bv", "Sm0EQ44b"]}]}' \
    'PvwYL5UG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AdminUpdateUserPermissionV3' test.out

#- 164 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 80, "Resource": "04tEQaXx", "SchedAction": 49, "SchedCron": "K1gR9hG0", "SchedRange": ["rJqpMNCb", "PCiO6eic", "8HfutfwD"]}, {"Action": 51, "Resource": "Bl97nSiE", "SchedAction": 33, "SchedCron": "iiVBHhVG", "SchedRange": ["ji2T7OtV", "4cMm9PCJ", "Ihb9hNvv"]}, {"Action": 69, "Resource": "OBJP1r0n", "SchedAction": 40, "SchedCron": "gv9HOSmL", "SchedRange": ["VucERWcL", "97gAgT6K", "zQ8qZlUg"]}]}' \
    'SU6KZn2t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminAddUserPermissionsV3' test.out

#- 165 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 40, "Resource": "N0OpbG7a"}, {"Action": 79, "Resource": "bJ4EzKEn"}, {"Action": 65, "Resource": "WEWISHUv"}]' \
    '0FMmxGuh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminDeleteUserPermissionBulkV3' test.out

#- 166 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '80' \
    '4Onb96wh' \
    'jGiXCbEi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionV3' test.out

#- 167 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'm31UEbsA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminGetUserPlatformAccountsV3' test.out

#- 168 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'l5guwF6D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminGetListJusticePlatformAccounts' test.out

#- 169 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    'tFArz9lx' \
    'SqFSO5D7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminGetUserMapping' test.out

#- 170 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    'Hf5G1D0y' \
    '9ymczmqR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminCreateJusticeUser' test.out

#- 171 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "HI6Xjxkb", "platformUserId": "5NoWZSyI"}' \
    'vxpGDvCj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminLinkPlatformAccount' test.out

#- 172 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "5acmPBXP"}' \
    'MFpNt1Qv' \
    'QJ6gfpnB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminPlatformUnlinkV3' test.out

#- 173 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'GT0KA4xY' \
    'Nm9kSiU9' \
    'TQ4e0Ny3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformLinkV3' test.out

#- 174 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["yiR2EprH", "UvcUjHxF", "LDAtSj4k"]' \
    'ohcocJpu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminDeleteUserRolesV3' test.out

#- 175 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "f5BXYcpG", "roleId": "OgnBh4xj"}, {"namespace": "kQP6qcMD", "roleId": "HSpNPbXv"}, {"namespace": "ySOjFdds", "roleId": "d2Wvg54a"}]' \
    'ropjck2e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminSaveUserRoleV3' test.out

#- 176 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    'G5zDM94L' \
    'dO5lTnLr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminAddUserRoleV3' test.out

#- 177 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'APwhMW7A' \
    'Mi7DKKn3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminDeleteUserRoleV3' test.out

#- 178 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": true, "reason": "16dk0Ygs"}' \
    'yy6RRb4H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminUpdateUserStatusV3' test.out

#- 179 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'oHDQKAg6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 180 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "yLqLNP6G"}' \
    'tsaakfK8' \
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
    '{"adminRole": false, "deletable": false, "isWildcard": false, "managers": [{"displayName": "Mg7F1EcH", "namespace": "pFiGSMNI", "userId": "FRDDYmkh"}, {"displayName": "YAqreFE4", "namespace": "yR8RdBZo", "userId": "5Zd2Wyc2"}, {"displayName": "1WVrHAGH", "namespace": "tFngBZPq", "userId": "O5fHBRcC"}], "members": [{"displayName": "puHpDi2S", "namespace": "CUMHDV9L", "userId": "DXSfPyZ1"}, {"displayName": "3tWVHM27", "namespace": "6R1TaUe2", "userId": "LwyBYmrw"}, {"displayName": "opRZ5tHK", "namespace": "Yi4EH4fc", "userId": "aF2o9tSJ"}], "permissions": [{"action": 29, "resource": "TAjmeqOr", "schedAction": 63, "schedCron": "phPQBiSu", "schedRange": ["zTARH5nf", "LMilyQrU", "L7pDybYn"]}, {"action": 66, "resource": "gv5yYkH8", "schedAction": 74, "schedCron": "C6z46Ac4", "schedRange": ["8HmjqZAY", "6voBCsQ6", "CpP4aNvc"]}, {"action": 92, "resource": "U6apXPbe", "schedAction": 94, "schedCron": "QwhCtfxz", "schedRange": ["syGFE7Vd", "niaWgAzg", "ajVm94OQ"]}], "roleName": "uzN7f1tv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminCreateRoleV3' test.out

#- 183 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'flbA9Koq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminGetRoleV3' test.out

#- 184 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'N3lKQN9g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminDeleteRoleV3' test.out

#- 185 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": false, "isWildcard": false, "roleName": "AebHlVYi"}' \
    'RFsyXbrz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminUpdateRoleV3' test.out

#- 186 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    'XqB11DLa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminGetRoleAdminStatusV3' test.out

#- 187 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'p8L3bNVo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateAdminRoleStatusV3' test.out

#- 188 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'Pd59ndqw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminRemoveRoleAdminV3' test.out

#- 189 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'MjknBW55' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminGetRoleManagersV3' test.out

#- 190 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "CR2qik8R", "namespace": "UwgxbQMc", "userId": "syfLTJhj"}, {"displayName": "gWAH1Rb4", "namespace": "mlovFavp", "userId": "eaUJncqR"}, {"displayName": "HK05cKh0", "namespace": "Eg8gdZ7d", "userId": "SY0lWB4P"}]}' \
    'VTK3Wwew' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminAddRoleManagersV3' test.out

#- 191 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "V0UBpIgC", "namespace": "nRbxFMBH", "userId": "ZI4uJfYq"}, {"displayName": "Dmvt5X2i", "namespace": "NsgPYLbK", "userId": "OMnBW5lP"}, {"displayName": "2yeKMBq4", "namespace": "sIe7Q7Dc", "userId": "fzlj9r6I"}]}' \
    'n8hsE66v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminRemoveRoleManagersV3' test.out

#- 192 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    '820lIRte' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminGetRoleMembersV3' test.out

#- 193 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "2YT9bN1V", "namespace": "twMq3PEl", "userId": "zgsueCw2"}, {"displayName": "CDyOzRi0", "namespace": "oKBTD3Yc", "userId": "NkUryOsV"}, {"displayName": "rTycRKuC", "namespace": "ngtrUmSf", "userId": "IopDRb6O"}]}' \
    '68cB8RSR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminAddRoleMembersV3' test.out

#- 194 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "anHK1WYF", "namespace": "rz46V5Yp", "userId": "kzLWwcDU"}, {"displayName": "ueEC3poh", "namespace": "lPOCKNQx", "userId": "DW9GZIOX"}, {"displayName": "SGCO59uO", "namespace": "4EnGQnTP", "userId": "LWPqXtPL"}]}' \
    '6HjuHA84' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminRemoveRoleMembersV3' test.out

#- 195 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 40, "resource": "jB6UJJaI", "schedAction": 38, "schedCron": "wGuhtWxf", "schedRange": ["Wzfb3W3B", "bUaDNrbh", "3H5aZHvX"]}, {"action": 75, "resource": "tgytuGSn", "schedAction": 38, "schedCron": "SWTLo158", "schedRange": ["XhJmpdjb", "EGRvnpDK", "UOuRPUS5"]}, {"action": 32, "resource": "G6uEtBxb", "schedAction": 35, "schedCron": "03nZCRn1", "schedRange": ["vjTzIXJJ", "NlnkvbKG", "2l0ZiOQ6"]}]}' \
    's9T1MJkc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminUpdateRolePermissionsV3' test.out

#- 196 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 99, "resource": "7nheUzFA", "schedAction": 89, "schedCron": "PYeIRkzz", "schedRange": ["PEbPkywM", "FZ6b6kf8", "DCVDbN6e"]}, {"action": 30, "resource": "HH9nvd77", "schedAction": 34, "schedCron": "bah2YTef", "schedRange": ["xH6bEEm4", "8wGOg1tF", "6sWgz9wF"]}, {"action": 58, "resource": "yn6lEh1K", "schedAction": 15, "schedCron": "IJNPJAP8", "schedRange": ["A9H3h9Io", "ZRQTKGQU", "srhoMNop"]}]}' \
    'v0L6oVNy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminAddRolePermissionsV3' test.out

#- 197 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["ArmlMfWd", "O3g6BrjK", "qdcpWnk9"]' \
    'RmEjq4W2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminDeleteRolePermissionsV3' test.out

#- 198 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '34' \
    'J5n7kA5J' \
    'pe3PILKH' \
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
    'lAUrXWKP' \
    'vrCm9Asv' \
    'zYSQn4OB' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 200 'UserAuthenticationV3' test.out

#- 201 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    'IHAlNYWv' \
    'AZZTIwQ8' \
    'TwhQGWAI' \
    '3ym2yL1F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'AuthenticationWithPlatformLinkV3' test.out

#- 202 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    'eqi94J7q' \
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
    'jq3dz7rC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'RequestGameTokenCodeResponseV3' test.out

#- 206 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'e7zH1EkK' \
    'Sfuyaj7K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 207 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    '9WFYHtij' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'RevokeUserV3' test.out

#- 208 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    'oho1pdzD' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 208 'AuthorizeV3' test.out

#- 209 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'ePtKUyJD' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 209 'TokenIntrospectionV3' test.out

#- 210 GetJWKSV3
$PYTHON -m $MODULE 'iam-get-jwksv3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'GetJWKSV3' test.out

#- 211 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    'GI8dLfZV' \
    'i2odGlaT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'Change2faMethod' test.out

#- 212 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    'udYENGkB' \
    'fEehmDwo' \
    'PPgRS9lV' \
    'true' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'Verify2faCode' test.out

#- 213 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'joraKkdL' \
    '4hkZHeGa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 214 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'jd6XLAsr' \
    '2c4Wz44P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'AuthCodeRequestV3' test.out

#- 215 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'RhA41MyA' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 215 'PlatformTokenGrantV3' test.out

#- 216 GetRevocationListV3
$PYTHON -m $MODULE 'iam-get-revocation-list-v3' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 216 'GetRevocationListV3' test.out

#- 217 TokenRevocationV3
$PYTHON -m $MODULE 'iam-token-revocation-v3' \
    '4T00FrtD' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 217 'TokenRevocationV3' test.out

#- 218 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'password' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 218 'TokenGrantV3' test.out

#- 219 VerifyTokenV3
$PYTHON -m $MODULE 'iam-verify-token-v3' \
    'xVDUHS4T' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 219 'VerifyTokenV3' test.out

#- 220 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'xJFZCm0i' \
    'r3NUwRdA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'PlatformAuthenticationV3' test.out

#- 221 PublicGetInputValidations
$PYTHON -m $MODULE 'iam-public-get-input-validations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'PublicGetInputValidations' test.out

#- 222 PublicGetCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction-v3' \
    'IDPvBgoI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'PublicGetCountryAgeRestrictionV3' test.out

#- 223 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-public-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 224 RetrieveActiveOIDCClientsPublicV3
$PYTHON -m $MODULE 'iam-retrieve-active-oidc-clients-public-v3' \
    'P5qM0eLv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 225 PublicListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["NJIEwwGN", "iqNINKgG", "mvxcyOIl"]}' \
    'PF0gE1HC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 226 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    '65pZTuwE' \
    'f5Tc599Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'PublicGetUserByPlatformUserIDV3' test.out

#- 227 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    'Pua3clEq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'PublicGetAsyncStatus' test.out

#- 228 PublicSearchUserV3
$PYTHON -m $MODULE 'iam-public-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'PublicSearchUserV3' test.out

#- 229 PublicCreateUserV3
$PYTHON -m $MODULE 'iam-public-create-user-v3' \
    '{"PasswordMD5Sum": "uDuJTi7x", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "2KkV9drL", "policyId": "InZV4hMi", "policyVersionId": "TCHOKXTb"}, {"isAccepted": false, "localizedPolicyVersionId": "fTgLsj1i", "policyId": "VqdWdc3f", "policyVersionId": "lDNQWzIx"}, {"isAccepted": false, "localizedPolicyVersionId": "5fexGgpI", "policyId": "lWQSmwrR", "policyVersionId": "rFCoaDzQ"}], "authType": "187V43w9", "code": "OMzgpA1g", "country": "bfFY1EjA", "dateOfBirth": "3aYc5ef9", "displayName": "90Pz6Ddx", "emailAddress": "nUXGPVEU", "password": "7Ja5tuCc", "reachMinimumAge": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'PublicCreateUserV3' test.out

#- 230 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'gkiiQeQM' \
    'kzQzhPo4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'CheckUserAvailability' test.out

#- 231 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["2UOMSEZ6", "E2U7ARam", "IqamghPb"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'PublicBulkGetUsers' test.out

#- 232 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "nxkLCApl", "languageTag": "j7CdIdDl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'PublicSendRegistrationCode' test.out

#- 233 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "aT2ZdFVW", "emailAddress": "7WWGPVT0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'PublicVerifyRegistrationCode' test.out

#- 234 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "zXfkCfkk", "languageTag": "XeRIX45w"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'PublicForgotPasswordV3' test.out

#- 235 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    'ht3jUJEE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'GetAdminInvitationV3' test.out

#- 236 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "z5ViPegA", "policyId": "a7kaNk20", "policyVersionId": "pkCKUIT5"}, {"isAccepted": false, "localizedPolicyVersionId": "MdkfLgZm", "policyId": "dfo0O3GY", "policyVersionId": "IsRM9PHd"}, {"isAccepted": false, "localizedPolicyVersionId": "NISd8WW7", "policyId": "ZV4K685B", "policyVersionId": "boigEIJu"}], "authType": "EMAILPASSWD", "country": "AE24UOaC", "dateOfBirth": "MrkAJWSb", "displayName": "64Jxz61R", "password": "FwGso9rC", "reachMinimumAge": false}' \
    'uHTzJfZM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'CreateUserFromInvitationV3' test.out

#- 237 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "KITlwlXK", "country": "v8FbWuK7", "dateOfBirth": "F5hpIZMQ", "displayName": "rKYBD38S", "languageTag": "r9YQ369i", "userName": "NBKhJSB6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'UpdateUserV3' test.out

#- 238 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "7Qr2gExB", "country": "1sFEjSQW", "dateOfBirth": "WTRFlaez", "displayName": "BCMbSeh3", "languageTag": "RqyblJKn", "userName": "wZ82RiIj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'PublicPartialUpdateUserV3' test.out

#- 239 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "LghyByWj", "emailAddress": "9E5COgcO", "languageTag": "K8IZeMsK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'PublicSendVerificationCodeV3' test.out

#- 240 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "X9IjWEkw", "contactType": "N9EBvsNU", "languageTag": "Bs5LdOTG", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'PublicUserVerificationV3' test.out

#- 241 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "xDUgNeau", "country": "rwrfLKV7", "dateOfBirth": "XNxd3v7U", "displayName": "yy6ehXiv", "emailAddress": "zeB8aWiZ", "password": "XLVXPJHl", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'PublicUpgradeHeadlessAccountV3' test.out

#- 242 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "qxbL1KZ6", "password": "OjwxNBzT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'PublicVerifyHeadlessAccountV3' test.out

#- 243 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "Q7wyWsgT", "newPassword": "GkGwQwok", "oldPassword": "DftNts6l"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'PublicUpdatePasswordV3' test.out

#- 244 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'n5tS6PoO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'PublicCreateJusticeUser' test.out

#- 245 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'amMMoMz4' \
    'etv52h6A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'PublicPlatformLinkV3' test.out

#- 246 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "nc4OW0Mi"}' \
    '2BxBQJEq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'PublicPlatformUnlinkV3' test.out

#- 247 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    '89f3dWzl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'PublicPlatformUnlinkAllV3' test.out

#- 248 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    'EgSds4EY' \
    'kgE9zf1z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'PublicForcePlatformLinkV3' test.out

#- 249 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'szw0zmGy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'PublicWebLinkPlatform' test.out

#- 250 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'Dy6GO2xO' \
    'b8aFe5g1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'PublicWebLinkPlatformEstablish' test.out

#- 251 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "KiPGIfao", "emailAddress": "HPmjbD4s", "newPassword": "ShjZrRnJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'ResetPasswordV3' test.out

#- 252 PublicGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-public-get-user-by-user-id-v3' \
    'RV6l8uYL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'PublicGetUserByUserIdV3' test.out

#- 253 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    'fMxHEoT0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'PublicGetUserBanHistoryV3' test.out

#- 254 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'PQ2Rs75T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 255 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    'rxAKEzCw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'PublicGetUserInformationV3' test.out

#- 256 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'nXycZsbS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'PublicGetUserLoginHistoriesV3' test.out

#- 257 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'WFs9z2w7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'PublicGetUserPlatformAccountsV3' test.out

#- 258 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    'gRFf36xB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'PublicListJusticePlatformAccountsV3' test.out

#- 259 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "G3NT9ilb", "platformUserId": "aVqND5vy"}' \
    'u4NOrB1K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'PublicLinkPlatformAccount' test.out

#- 260 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["RtD2SMOO", "pEMx2xWL", "jGgCYu1y"], "requestId": "PI5rpG4a"}' \
    'GCQEhkUX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'PublicForceLinkPlatformWithProgression' test.out

#- 261 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    'NHQDI3LV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'PublicGetPublisherUserV3' test.out

#- 262 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'mkW8nZsI' \
    'MtjoA5aX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 263 PublicGetRolesV3
$PYTHON -m $MODULE 'iam-public-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'PublicGetRolesV3' test.out

#- 264 PublicGetRoleV3
$PYTHON -m $MODULE 'iam-public-get-role-v3' \
    'Yf0aXJFZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'PublicGetRoleV3' test.out

#- 265 PublicGetMyUserV3
$PYTHON -m $MODULE 'iam-public-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'PublicGetMyUserV3' test.out

#- 266 PublicSendVerificationLinkV3
$PYTHON -m $MODULE 'iam-public-send-verification-link-v3' \
    '{"languageTag": "VsmpVR3z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'PublicSendVerificationLinkV3' test.out

#- 267 PublicVerifyUserByLinkV3
$PYTHON -m $MODULE 'iam-public-verify-user-by-link-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'PublicVerifyUserByLinkV3' test.out

#- 268 PlatformAuthenticateSAMLV3Handler
$PYTHON -m $MODULE 'iam-platform-authenticate-samlv3-handler' \
    'Dc3s846N' \
    'zN0sRZuQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'PlatformAuthenticateSAMLV3Handler' test.out

#- 269 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'EUQsuJkA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'LoginSSOClient' test.out

#- 270 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'tPrmxPst' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'LogoutSSOClient' test.out

#- 271 RequestGameTokenResponseV3
$PYTHON -m $MODULE 'iam-request-game-token-response-v3' \
    'LqKUA1GN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'RequestGameTokenResponseV3' test.out

#- 272 AdminGetDevicesByUserV4
$PYTHON -m $MODULE 'iam-admin-get-devices-by-user-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'AdminGetDevicesByUserV4' test.out

#- 273 AdminGetBannedDevicesV4
$PYTHON -m $MODULE 'iam-admin-get-banned-devices-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'AdminGetBannedDevicesV4' test.out

#- 274 AdminGetUserDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-user-device-bans-v4' \
    '7SoJCBxw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'AdminGetUserDeviceBansV4' test.out

#- 275 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "K27Xznoy", "deviceId": "PvgbaRwq", "deviceType": "gund8pbn", "enabled": true, "endDate": "4d3CelPP", "ext": {"ak8Tc3dZ": {}, "ROVfPJNK": {}, "WaFE6NMB": {}}, "reason": "SyaE2598"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'AdminBanDeviceV4' test.out

#- 276 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    'GGU7hYv0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'AdminGetDeviceBanV4' test.out

#- 277 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": true}' \
    'PDHyTBdB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'AdminUpdateDeviceBanV4' test.out

#- 278 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    'HIpbluHM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'AdminGenerateReportV4' test.out

#- 279 AdminGetDeviceTypesV4
$PYTHON -m $MODULE 'iam-admin-get-device-types-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'AdminGetDeviceTypesV4' test.out

#- 280 AdminGetDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-device-bans-v4' \
    '5iTy95R3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'AdminGetDeviceBansV4' test.out

#- 281 AdminDecryptDeviceV4
$PYTHON -m $MODULE 'iam-admin-decrypt-device-v4' \
    'AZ9cyEFV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'AdminDecryptDeviceV4' test.out

#- 282 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    'ndO4yXSO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'AdminUnbanDeviceV4' test.out

#- 283 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    'l5Vd4g2Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'AdminGetUsersByDeviceV4' test.out

#- 284 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"count": 20}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'AdminCreateTestUsersV4' test.out

#- 285 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["u8YgWSIN", "DyxquJKv", "GcsX4eub"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'AdminBulkCheckValidUserIDV4' test.out

#- 286 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "U3DKb0rU", "country": "sgLj4DSk", "dateOfBirth": "JNVMzoqE", "displayName": "0NyyNGWb", "languageTag": "yq9BkwU4", "userName": "nx5aLr6K"}' \
    'vFqUzrmq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'AdminUpdateUserV4' test.out

#- 287 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "E7utq3GD", "emailAddress": "VInuEHZf"}' \
    '8RE32eHW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'AdminUpdateUserEmailAddressV4' test.out

#- 288 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    'ybEZP7Hv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'AdminDisableUserMFAV4' test.out

#- 289 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    '4Apb06e4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'AdminListUserRolesV4' test.out

#- 290 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["0sunqTgL", "E7SJIMMY", "boDuDAJp"], "roleId": "obXF0L6W"}' \
    '60bwRAYS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'AdminUpdateUserRoleV4' test.out

#- 291 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["jBJwuNR3", "m3k4UoOH", "YrQ3dhCz"], "roleId": "EkuwwcXY"}' \
    'NAAKDgfu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'AdminAddUserRoleV4' test.out

#- 292 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["PZFt8cUf", "dm27BmqM", "IfJjrypM"], "roleId": "orwSrvfi"}' \
    'BPCJxmyw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'AdminRemoveUserRoleV4' test.out

#- 293 AdminGetRolesV4
$PYTHON -m $MODULE 'iam-admin-get-roles-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'AdminGetRolesV4' test.out

#- 294 AdminCreateRoleV4
$PYTHON -m $MODULE 'iam-admin-create-role-v4' \
    '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "4vtWBgza"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'AdminCreateRoleV4' test.out

#- 295 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    '1o5y6BTM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'AdminGetRoleV4' test.out

#- 296 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'OE17u9GD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'AdminDeleteRoleV4' test.out

#- 297 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "iPm0zM1F"}' \
    'RYh1835P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'AdminUpdateRoleV4' test.out

#- 298 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 90, "resource": "F8FGsaJg", "schedAction": 58, "schedCron": "ts39ZKXR", "schedRange": ["3qemmolk", "8kJD1xsG", "OmODUtYT"]}, {"action": 53, "resource": "hsrqwSXi", "schedAction": 34, "schedCron": "sH0Q1ZNm", "schedRange": ["ixIeqny6", "8giQVCYC", "GgVyxCLS"]}, {"action": 26, "resource": "mo88cZUs", "schedAction": 23, "schedCron": "lehz5C1u", "schedRange": ["4uA9CzyB", "LiTSFc6A", "Up0ufvkr"]}]}' \
    'Wa6L8ocK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateRolePermissionsV4' test.out

#- 299 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 19, "resource": "epEjlNiR", "schedAction": 88, "schedCron": "sJqpz8SW", "schedRange": ["OHlSPgIa", "aF7zXMbW", "4ImQtgIv"]}, {"action": 6, "resource": "SXOf7efL", "schedAction": 17, "schedCron": "uky4gw4X", "schedRange": ["0p9x4rE2", "d6n4upse", "FZ50REyD"]}, {"action": 70, "resource": "FzvVp987", "schedAction": 82, "schedCron": "Hu8jNHm7", "schedRange": ["uR4cGK2W", "KhoPNnXh", "GjmtIJAB"]}]}' \
    'pwn760lz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'AdminAddRolePermissionsV4' test.out

#- 300 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["B27JeEwN", "v0DiJh3F", "YEQI7aZT"]' \
    'zQGPv0cJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'AdminDeleteRolePermissionsV4' test.out

#- 301 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    '1XLmc2mE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'AdminListAssignedUsersV4' test.out

#- 302 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["f2yiKHeO", "SkPy7ze9", "R7gdK9q8"], "namespace": "bZQnmPtS", "userId": "0aR2u4Cl"}' \
    'e8gSIVeM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'AdminAssignUserToRoleV4' test.out

#- 303 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "VmehGU10", "userId": "8AfAWPIi"}' \
    '1M1XazEK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'AdminRevokeUserFromRoleV4' test.out

#- 304 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "hc5I8U83", "country": "jjKwdjs9", "dateOfBirth": "rGmhS6md", "displayName": "oxFIjLEC", "languageTag": "ahLr3RDJ", "userName": "NYqTw3SP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'AdminUpdateMyUserV4' test.out

#- 305 AdminDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'AdminDisableMyAuthenticatorV4' test.out

#- 306 AdminEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'AdminEnableMyAuthenticatorV4' test.out

#- 307 AdminGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-admin-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 308 AdminGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'AdminGetMyBackupCodesV4' test.out

#- 309 AdminGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'AdminGenerateMyBackupCodesV4' test.out

#- 310 AdminDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'AdminDisableMyBackupCodesV4' test.out

#- 311 AdminDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'AdminDownloadMyBackupCodesV4' test.out

#- 312 AdminEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'AdminEnableMyBackupCodesV4' test.out

#- 313 AdminGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-admin-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'AdminGetMyEnabledFactorsV4' test.out

#- 314 AdminMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-admin-make-factor-my-default-v4' \
    'DYDd75dc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'AdminMakeFactorMyDefaultV4' test.out

#- 315 AdminInviteUserV4
$PYTHON -m $MODULE 'iam-admin-invite-user-v4' \
    '{"assignedNamespaces": ["w4z6wz82", "qbcPhmcb", "n9OaU1i3"], "emailAddresses": ["vSeMxFyP", "lATCz5TL", "wroPgW99"], "isAdmin": true, "roleId": "zLCgbt2F"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'AdminInviteUserV4' test.out

#- 316 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "gbIX6ozj", "policyId": "MeypsIuM", "policyVersionId": "3Cf1yKrC"}, {"isAccepted": true, "localizedPolicyVersionId": "iuGZXmTI", "policyId": "ZKXKV5Sp", "policyVersionId": "Jtidy603"}, {"isAccepted": false, "localizedPolicyVersionId": "Ypqyfdbx", "policyId": "l2ac0tXI", "policyVersionId": "Yxns0HZt"}], "authType": "EMAILPASSWD", "country": "HrSktYSE", "dateOfBirth": "z7U6jxxr", "displayName": "EPJ3mztk", "emailAddress": "DqLqjGGQ", "password": "W3huuGWo", "passwordMD5Sum": "vYyiX1QH", "username": "TfUeLKYz", "verified": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'PublicCreateTestUserV4' test.out

#- 317 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "MTHBFAx9", "policyId": "5X7bnZ5r", "policyVersionId": "ukyKQ6li"}, {"isAccepted": false, "localizedPolicyVersionId": "eYRWYfBp", "policyId": "ka4EZotz", "policyVersionId": "LUqDlROA"}, {"isAccepted": false, "localizedPolicyVersionId": "h6qK9uox", "policyId": "077sC5WS", "policyVersionId": "HzuXc8Bx"}], "authType": "EMAILPASSWD", "code": "aWkOr5eq", "country": "z2jA1akv", "dateOfBirth": "LvpFFG1s", "displayName": "SopJoZOx", "emailAddress": "v0kHBnlo", "password": "3TAnkTzJ", "passwordMD5Sum": "5GDYRtme", "reachMinimumAge": true, "username": "9PfcyG69"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'PublicCreateUserV4' test.out

#- 318 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "zhX6kNAs", "policyId": "q67qPMpL", "policyVersionId": "on9unIht"}, {"isAccepted": true, "localizedPolicyVersionId": "Mpuw5z6n", "policyId": "koENzlg9", "policyVersionId": "shgImm8p"}, {"isAccepted": false, "localizedPolicyVersionId": "CVEdDKyR", "policyId": "tHFZy70O", "policyVersionId": "YNS1QgdE"}], "authType": "EMAILPASSWD", "country": "nkts8cBd", "dateOfBirth": "9PjwDB4p", "displayName": "95QOGekA", "password": "a9H09hix", "reachMinimumAge": true, "username": "CQBbRlLr"}' \
    '2Q2cQ5GR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'CreateUserFromInvitationV4' test.out

#- 319 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "bWN3fXde", "country": "jLLrECu2", "dateOfBirth": "6xBUOsgP", "displayName": "XTILXbNo", "languageTag": "e0bkQlQG", "userName": "3Ny2yPkc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'PublicUpdateUserV4' test.out

#- 320 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "bJhSYEiz", "emailAddress": "WAbknY9Q"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'PublicUpdateUserEmailAddressV4' test.out

#- 321 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "UKt7Flx7", "country": "mh5XSWsg", "dateOfBirth": "L6qtoYPm", "displayName": "GJ4i4705", "emailAddress": "nhnO64Bw", "password": "NaxV3bZa", "reachMinimumAge": false, "username": "es9VlQAe", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 322 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "cqcgXkHH", "password": "urXg5gLT", "username": "F4DYoOD9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'PublicUpgradeHeadlessAccountV4' test.out

#- 323 PublicDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'PublicDisableMyAuthenticatorV4' test.out

#- 324 PublicEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'PublicEnableMyAuthenticatorV4' test.out

#- 325 PublicGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-public-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 326 PublicGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'PublicGetMyBackupCodesV4' test.out

#- 327 PublicGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'PublicGenerateMyBackupCodesV4' test.out

#- 328 PublicDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'PublicDisableMyBackupCodesV4' test.out

#- 329 PublicDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'PublicDownloadMyBackupCodesV4' test.out

#- 330 PublicEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'PublicEnableMyBackupCodesV4' test.out

#- 331 PublicRemoveTrustedDeviceV4
$PYTHON -m $MODULE 'iam-public-remove-trusted-device-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'PublicRemoveTrustedDeviceV4' test.out

#- 332 PublicGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-public-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'PublicGetMyEnabledFactorsV4' test.out

#- 333 PublicMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-public-make-factor-my-default-v4' \
    'gkBPwlML' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'PublicMakeFactorMyDefaultV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
