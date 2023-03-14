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
iam-admin-update-input-validations '[{"field": "EAxcVpFr", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "blockedWord": ["IRdH9UzV", "RiXbqlAw", "7r6W2ktQ"], "description": [{"language": "G0h5JAav", "message": ["5kRa62Wo", "pBJHPtcD", "s8bBZLCX"]}, {"language": "Lx8bbgor", "message": ["QeFbQ1g7", "qbPngUNB", "1vRodwpz"]}, {"language": "S6DaDpv8", "message": ["N7ZQVqGj", "6oDLjWjk", "Y1aXlFcD"]}], "isCustomRegex": true, "letterCase": "78NY4YkH", "maxLength": 37, "maxRepeatingAlphaNum": 40, "maxRepeatingSpecialCharacter": 4, "minCharType": 100, "minLength": 27, "regex": "EIC32ogW", "specialCharacterLocation": "7olvbTgr", "specialCharacters": ["hRTcPiSu", "L0Sly6XM", "4OI18mAQ"]}}, {"field": "LnzjMf8G", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "blockedWord": ["jJW2OQNO", "s1PXhT5F", "vdiRilZ7"], "description": [{"language": "oFgx4c8O", "message": ["umKtPDKJ", "DXn7Z4U6", "8su8Xfql"]}, {"language": "qNiTvB6S", "message": ["dAdIhUDr", "woZ5Mecd", "Ki5r6QEa"]}, {"language": "1ysLEzth", "message": ["6mXhzkzW", "kFeZSoEA", "cBdW19m4"]}], "isCustomRegex": false, "letterCase": "7CkyF6C7", "maxLength": 7, "maxRepeatingAlphaNum": 96, "maxRepeatingSpecialCharacter": 41, "minCharType": 26, "minLength": 42, "regex": "iTqpyhPF", "specialCharacterLocation": "dxLzFQN0", "specialCharacters": ["5MYzYiKW", "e5dNRljv", "7IPrDQQR"]}}, {"field": "gat0Sevk", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "blockedWord": ["uI9a2I9u", "6Vpbsx5w", "8hqUI06U"], "description": [{"language": "pOXGSLmC", "message": ["VuHOPlLl", "kvR8sKgn", "uRkgghGo"]}, {"language": "YupD391C", "message": ["2qtPYoka", "hFjkQsfC", "aTmt1d67"]}, {"language": "FXGk2s9Q", "message": ["0mPVo3tw", "u0MesTCf", "9x4rt69l"]}], "isCustomRegex": false, "letterCase": "aRlxfcjH", "maxLength": 11, "maxRepeatingAlphaNum": 85, "maxRepeatingSpecialCharacter": 51, "minCharType": 0, "minLength": 21, "regex": "MbwL6IY6", "specialCharacterLocation": "9z1UaLqY", "specialCharacters": ["SYWytLPz", "iZMdjxcB", "ZufQxGiH"]}}]' --login_with_auth "Bearer foo"
iam-admin-reset-input-validations 'PllG4cYE' --login_with_auth "Bearer foo"
iam-list-admins-v3 --login_with_auth "Bearer foo"
iam-admin-get-age-restriction-status-v3 --login_with_auth "Bearer foo"
iam-admin-update-age-restriction-config-v3 '{"ageRestriction": 52, "enable": false}' --login_with_auth "Bearer foo"
iam-admin-get-list-country-age-restriction-v3 --login_with_auth "Bearer foo"
iam-admin-update-country-age-restriction-v3 '{"ageRestriction": 30}' 'TD1ZBm3M' --login_with_auth "Bearer foo"
iam-admin-get-banned-users-v3 --login_with_auth "Bearer foo"
iam-admin-ban-user-bulk-v3 '{"ban": "qHcUmLZZ", "comment": "bSqb8RwN", "endDate": "mn9HrNQy", "reason": "4uZAAiE0", "skipNotif": false, "userIds": ["S5S5XUdj", "soqwGyzz", "Wi9gwQYv"]}' --login_with_auth "Bearer foo"
iam-admin-unban-user-bulk-v3 '{"bans": [{"banId": "7t1o7TTr", "userId": "1DmrhZv1"}, {"banId": "5T7quIOv", "userId": "BMcaYmvC"}, {"banId": "kGZ5dAgq", "userId": "xpBFmaLo"}]}' --login_with_auth "Bearer foo"
iam-admin-get-bans-type-with-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-get-clients-by-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-create-client-v3 '{"audiences": ["xozr6wfN", "PX2bOItR", "MvqtlB2j"], "baseUri": "JCSQT279", "clientId": "ZZPYGu0r", "clientName": "dlgdWyOt", "clientPermissions": [{"action": 76, "resource": "i3choQrp", "schedAction": 84, "schedCron": "8cmDc3fx", "schedRange": ["U8MyKrQp", "M4hkkK6K", "KXNB3Gv0"]}, {"action": 70, "resource": "aeCnaLpU", "schedAction": 74, "schedCron": "jYnaq6fo", "schedRange": ["WvXa3bMr", "XsDr6kIL", "sSSyDdmy"]}, {"action": 21, "resource": "j7il35MX", "schedAction": 2, "schedCron": "4jk4Lo0L", "schedRange": ["SP0pf4Ix", "jUkl535X", "3ateEKDp"]}], "clientPlatform": "ADz1x3po", "deletable": true, "description": "9xv32e8c", "namespace": "5csSovoq", "oauthAccessTokenExpiration": 38, "oauthAccessTokenExpirationTimeUnit": "m8bwbmXg", "oauthClientType": "dAPh1ETh", "oauthRefreshTokenExpiration": 67, "oauthRefreshTokenExpirationTimeUnit": "2Z0QZxfg", "parentNamespace": "PubTDIHr", "redirectUri": "vqAThuwj", "scopes": ["RHpKKTlm", "Vr9XuoJb", "RFQSKVPH"], "secret": "bn4Xxtu7", "twoFactorEnabled": true}' --login_with_auth "Bearer foo"
iam-admin-get-clientsby-namespaceby-idv3 'QRENjEEz' --login_with_auth "Bearer foo"
iam-admin-delete-client-v3 'tx1WsYSi' --login_with_auth "Bearer foo"
iam-admin-update-client-v3 '{"audiences": ["Zqan0nSB", "Jroav91G", "XlvPG6bF"], "baseUri": "YReVHQip", "clientName": "cCx9Zw5D", "clientPermissions": [{"action": 76, "resource": "L7vIYhGG", "schedAction": 91, "schedCron": "fHQvsHXN", "schedRange": ["UNe4mhgo", "5QB65lSA", "iYnNjkfZ"]}, {"action": 36, "resource": "rj3oZk03", "schedAction": 88, "schedCron": "sFzHkBMr", "schedRange": ["1yrOMlNF", "SrUEirnj", "X9fDmIbe"]}, {"action": 50, "resource": "xzfTcyiu", "schedAction": 54, "schedCron": "yUZNmTBc", "schedRange": ["vrbYCwZt", "xFHyPLtI", "8ilbyDPU"]}], "clientPlatform": "Ij88cekd", "deletable": true, "description": "p2ncYAHd", "namespace": "NzDmeIP6", "oauthAccessTokenExpiration": 35, "oauthAccessTokenExpirationTimeUnit": "sR5cJcHm", "oauthRefreshTokenExpiration": 3, "oauthRefreshTokenExpirationTimeUnit": "SZLxoRDF", "redirectUri": "uuuySj29", "scopes": ["a9LJE8Ho", "RS1X2PFA", "AMwzHPxB"], "twoFactorEnabled": true}' 'CnqntX9y' --login_with_auth "Bearer foo"
iam-admin-update-client-permission-v3 '{"permissions": [{"action": 60, "resource": "aZSWMiVi"}, {"action": 76, "resource": "0sG6vxkf"}, {"action": 96, "resource": "8Yb33T5U"}]}' 'BJCjfcnL' --login_with_auth "Bearer foo"
iam-admin-add-client-permissions-v3 '{"permissions": [{"action": 89, "resource": "OgBnhhqE"}, {"action": 24, "resource": "Ei8Klloe"}, {"action": 68, "resource": "dNFLTm5T"}]}' '50x9WT0G' --login_with_auth "Bearer foo"
iam-admin-delete-client-permission-v3 '11' 'Bfsu4jms' 'RE2w1yEk' --login_with_auth "Bearer foo"
iam-retrieve-all-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-sso-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-third-party-login-platform-credential-v3 'Lgh3tIYt' --login_with_auth "Bearer foo"
iam-add-third-party-login-platform-credential-v3 '{"ACSURL": "4SqYUTLD", "AWSCognitoRegion": "x9gIiDan", "AWSCognitoUserPool": "dpGT2t24", "AllowedClients": ["aOMh5eC3", "IHeHSKLC", "a3xreNDU"], "AppId": "WehwH3q3", "AuthorizationEndpoint": "1A806DJg", "ClientId": "as4b6z3L", "Environment": "NUj7fdgL", "FederationMetadataURL": "A84Z8YYk", "GenericOauthFlow": true, "IsActive": true, "Issuer": "EgJjBbED", "JWKSEndpoint": "oNf3n0hE", "KeyID": "oRCAcf80", "NetflixCertificates": {"encryptedPrivateKey": "zfFyabWA", "encryptedPrivateKeyName": "gIUXiI07", "publicCertificate": "A68eaqC2", "publicCertificateName": "J9jyEW6G", "rootCertificate": "Lbc0NaKD", "rootCertificateName": "UL3sa13l"}, "OrganizationId": "k1dQBHO8", "PlatformName": "6IlBhnet", "RedirectUri": "U4RwTqUX", "RegisteredDomains": [{"affectedClientIDs": ["lTDBzOuY", "saZA2yyd", "4mbqoOfA"], "domain": "DMMAXFaY", "namespaces": ["9eKa699b", "RVhyaKww", "rAP2aMlu"], "roleId": "7WtjCtoY"}, {"affectedClientIDs": ["etOO847g", "8OudOfjn", "CuHZ3c46"], "domain": "IjGa23Yv", "namespaces": ["YmmDg7VY", "PXIuvUYT", "ZBRujIUE"], "roleId": "1Tq5jyAZ"}, {"affectedClientIDs": ["vkRCMNFI", "urjh2imd", "b4rbkXj0"], "domain": "ZwsVC0gL", "namespaces": ["97ZVJSPq", "Jiwv1qlY", "B1RSKs6g"], "roleId": "QxC3Gb7S"}], "Secret": "0o4zGYY7", "TeamID": "KQI1AeFg", "TokenAuthenticationType": "PqaOkvo1", "TokenClaimsMapping": {"aolB4lkK": "B4EYOkQ1", "jMD3cym8": "xIfkOVW2", "grREOLx0": "KOww3HIC"}, "TokenEndpoint": "QLfl7MUB", "UserInfoEndpoint": "G7qtPu64", "UserInfoHTTPMethod": "yAtURKLR", "scopes": ["kb738HGS", "6rDgMdII", "lhS1fSiM"]}' '9331m7Ta' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-credential-v3 '1PsKc50K' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-credential-v3 '{"ACSURL": "v6ecnEev", "AWSCognitoRegion": "cAx2K2zk", "AWSCognitoUserPool": "RenmPZnG", "AllowedClients": ["Bt4P7Wnb", "dSJtjX7Z", "shZyZl5x"], "AppId": "4bRXBHUT", "AuthorizationEndpoint": "rDzZSKsc", "ClientId": "fOcYu3dp", "Environment": "CROYqUiG", "FederationMetadataURL": "KXVFCmpo", "GenericOauthFlow": false, "IsActive": true, "Issuer": "aKt2ujQS", "JWKSEndpoint": "a3Zdb65U", "KeyID": "Xmy0Zp6i", "NetflixCertificates": {"encryptedPrivateKey": "IaTIKUkm", "encryptedPrivateKeyName": "kk9QM0NB", "publicCertificate": "MA9ORxpz", "publicCertificateName": "wLR2AK6e", "rootCertificate": "XUGPJsw1", "rootCertificateName": "fiP80G9P"}, "OrganizationId": "clxcft2u", "PlatformName": "lIJzPyrV", "RedirectUri": "EiOG4Ucq", "RegisteredDomains": [{"affectedClientIDs": ["suGKHhMR", "WLVd3Dlh", "LuIpomM8"], "domain": "sm1MiaI1", "namespaces": ["mX2tJoAR", "tdbBe7ud", "sMrok0Wv"], "roleId": "GYYnx4V7"}, {"affectedClientIDs": ["09xbnGez", "KsDwG2om", "OR2nvYI9"], "domain": "TVqJdvzc", "namespaces": ["WbfUpaXp", "5JMl5LL4", "bTxBmZjd"], "roleId": "rrIxsB0N"}, {"affectedClientIDs": ["RsB1fPqq", "RRulpqpy", "mDkQhtrH"], "domain": "WwRVnwVB", "namespaces": ["OqOHi8pW", "Gd1juYhi", "qjRJOqB5"], "roleId": "F93zFQbJ"}], "Secret": "ndUDpdON", "TeamID": "neAczbBd", "TokenAuthenticationType": "Hb2slt71", "TokenClaimsMapping": {"B1SmZp2J": "Zp50CnPb", "71ORYcmQ": "bTU5JX8c", "cLjMXJRk": "0eaKQDOJ"}, "TokenEndpoint": "vrTefglS", "UserInfoEndpoint": "s6g4iY9u", "UserInfoHTTPMethod": "02aCNYIW", "scopes": ["ekp18lOC", "3mNqF7Bl", "0LcghVHf"]}' 'PEspxwhR' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-domain-v3 '{"affectedClientIDs": ["ON0bc1eM", "bEIjowLq", "c3ecjXJb"], "assignedNamespaces": ["ZDKKoxLE", "1Y3Dymtj", "3giPg4x4"], "domain": "yiPX6ues", "roleId": "1Hhhkg1y"}' 'LVbLFzHE' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-domain-v3 '{"domain": "P8cM4NTw"}' 'r0KHaAsm' --login_with_auth "Bearer foo"
iam-retrieve-sso-login-platform-credential 'Tej52WKi' --login_with_auth "Bearer foo"
iam-add-sso-login-platform-credential '{"acsUrl": "6tArAURt", "apiKey": "9plCSVq8", "appId": "PdH6hJPU", "federationMetadataUrl": "Ac0RVwXg", "isActive": true, "redirectUri": "6bQ71w0d", "secret": "eoV9Lx5R", "ssoUrl": "DA1l2Xcr"}' 'ciYNEzvS' --login_with_auth "Bearer foo"
iam-delete-sso-login-platform-credential-v3 'ZIPkhSgO' --login_with_auth "Bearer foo"
iam-update-sso-platform-credential '{"acsUrl": "Rcz5S5Bv", "apiKey": "mgBLxh4i", "appId": "jFnE3Tam", "federationMetadataUrl": "69qSZ7PC", "isActive": false, "redirectUri": "f6QkmZXE", "secret": "lW9YfRSs", "ssoUrl": "e6AAz3S4"}' 'czz0QKFl' --login_with_auth "Bearer foo"
iam-admin-get-user-by-platform-user-idv3 'AVmVLu4A' 'Oec0z8eB' --login_with_auth "Bearer foo"
iam-get-admin-users-by-role-id-v3 'eeoip68J' --login_with_auth "Bearer foo"
iam-admin-get-user-by-email-address-v3 --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-user-i-ds-v3 '{"userIds": ["1nsv4W2O", "JhtafxMS", "JlHeb34s"]}' --login_with_auth "Bearer foo"
iam-admin-invite-user-v3 '{"emailAddresses": ["ZKHcl5LL", "LOexL4fZ", "vWtND2tc"], "isAdmin": true, "namespace": "QhNPEwiJ", "roles": ["Cf2XJVrl", "zqQls1oz", "hLVA3kE8"]}' --login_with_auth "Bearer foo"
iam-admin-query-third-platform-link-history-v3 'jKvgatOE' --login_with_auth "Bearer foo"
iam-admin-list-users-v3 --login_with_auth "Bearer foo"
iam-admin-search-user-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-by-email-address-v3 '{"listEmailAddressRequest": ["BM70TdlN", "BJYOmpu1", "VCarzBsV"]}' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v3 '6xnZ5Jrz' --login_with_auth "Bearer foo"
iam-admin-update-user-v3 '{"avatarUrl": "zjrcaug6", "country": "CWVG8SWP", "dateOfBirth": "3glU6mus", "displayName": "wVJnNnN7", "languageTag": "kAa7j0ri", "userName": "Fc5HTHQI"}' 'oVsGo7dw' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v3 'V9DBqFKH' --login_with_auth "Bearer foo"
iam-admin-ban-user-v3 '{"ban": "QkETJyTl", "comment": "UrwDTnou", "endDate": "jQD4IEiH", "reason": "9Z5qXn3a", "skipNotif": false}' 'bsPheTH2' --login_with_auth "Bearer foo"
iam-admin-update-user-ban-v3 '{"enabled": false, "skipNotif": false}' 'JNvYuGRU' 'vpZaHCuE' --login_with_auth "Bearer foo"
iam-admin-send-verification-code-v3 '{"context": "SOiIZsMf", "emailAddress": "B4ZH3mtg", "languageTag": "WgU4pCAK"}' 'xeE70Cau' --login_with_auth "Bearer foo"
iam-admin-verify-account-v3 '{"Code": "nQNxot37", "ContactType": "1W9G4AvQ", "LanguageTag": "kqsGnmyo", "validateOnly": true}' 'JJTUVmb8' --login_with_auth "Bearer foo"
iam-get-user-verification-code 'GEXFTlEM' --login_with_auth "Bearer foo"
iam-admin-get-user-deletion-status-v3 'EsFzYqwg' --login_with_auth "Bearer foo"
iam-admin-update-user-deletion-status-v3 '{"enabled": false}' '1Np5nodq' --login_with_auth "Bearer foo"
iam-admin-upgrade-headless-account-v3 '{"code": "pLm7FhJB", "country": "NXzAFdO0", "dateOfBirth": "Khqf6kiT", "displayName": "dSGv2LFj", "emailAddress": "AKY7Cbgs", "password": "WqFWZX7k", "validateOnly": true}' 'OemPYdYT' --login_with_auth "Bearer foo"
iam-admin-delete-user-information-v3 '7DROCjtu' --login_with_auth "Bearer foo"
iam-admin-get-user-login-histories-v3 'zFMbAG9Y' --login_with_auth "Bearer foo"
iam-admin-reset-password-v3 '{"languageTag": "I89hmguB", "newPassword": "8FOTjMLo", "oldPassword": "4b9rIzqY"}' 'kEpstyVT' --login_with_auth "Bearer foo"
iam-admin-update-user-permission-v3 '{"Permissions": [{"Action": 56, "Resource": "PLG59e0k", "SchedAction": 69, "SchedCron": "ZtX6wK7P", "SchedRange": ["pUlcIW32", "iK7MGt1i", "xY5rA1Wo"]}, {"Action": 97, "Resource": "XTIMtpgk", "SchedAction": 16, "SchedCron": "rQzP4zvt", "SchedRange": ["dxdbZUpd", "6FJtHJ1p", "yVwyKQLY"]}, {"Action": 26, "Resource": "FEO65Rb3", "SchedAction": 52, "SchedCron": "hP1y4Zi7", "SchedRange": ["s7QBlk44", "Z44B1GZg", "Kg4uKxaC"]}]}' 'gcGLuC3b' --login_with_auth "Bearer foo"
iam-admin-add-user-permissions-v3 '{"Permissions": [{"Action": 36, "Resource": "1QGIFmlV", "SchedAction": 12, "SchedCron": "IySok5Di", "SchedRange": ["XZtLW87r", "Gysryod3", "dNQrmsAp"]}, {"Action": 88, "Resource": "k4mTIpUA", "SchedAction": 75, "SchedCron": "gxo8SV38", "SchedRange": ["nEhoXmM2", "W7l6jHMA", "2rG3nako"]}, {"Action": 32, "Resource": "MSHNgqRq", "SchedAction": 58, "SchedCron": "nryEJ0Nq", "SchedRange": ["oTow0qiO", "iC4j0ikt", "m0ZPLkLO"]}]}' 'sp0LZ5nj' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-bulk-v3 '[{"Action": 81, "Resource": "ek2gZvRr"}, {"Action": 43, "Resource": "zt6bSc6b"}, {"Action": 99, "Resource": "ccKMLhrT"}]' 'rcBE2ItB' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-v3 '91' 'ejcq2Lgk' 'QuaS7RBx' --login_with_auth "Bearer foo"
iam-admin-get-user-platform-accounts-v3 '3vim02jB' --login_with_auth "Bearer foo"
iam-admin-get-list-justice-platform-accounts 'OxrZDyvp' --login_with_auth "Bearer foo"
iam-admin-get-user-mapping 'cLYOWA8N' 'jxOnaEok' --login_with_auth "Bearer foo"
iam-admin-create-justice-user '4nOOCzfs' 'flhjbngJ' --login_with_auth "Bearer foo"
iam-admin-link-platform-account '{"platformId": "OUn18G5M", "platformUserId": "lfDTk8aG"}' '40Nlncce' --login_with_auth "Bearer foo"
iam-admin-platform-unlink-v3 '{"platformNamespace": "IZSwgAIk"}' 'gzh4pTU0' 'Am4DZhl0' --login_with_auth "Bearer foo"
iam-admin-platform-link-v3 'bQxFJ3sW' 'CqQpQ2Fb' 'KPFMycMS' --login_with_auth "Bearer foo"
iam-admin-get-third-party-platform-token-link-status-v3 'Q4qfAacR' '0LgB5BUX' 'vjcu2s6w' --login_with_auth "Bearer foo"
iam-admin-delete-user-roles-v3 '["3VifnKqm", "TSoGH1XE", "fY6QAYn6"]' 'WQ5UBEU1' --login_with_auth "Bearer foo"
iam-admin-save-user-role-v3 '[{"namespace": "QAOHfZiG", "roleId": "hxOdcuDX"}, {"namespace": "SxSc3aZP", "roleId": "V87pna08"}, {"namespace": "gxefTYKh", "roleId": "uxaEc7M4"}]' 'P7UckSC6' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v3 'ePeN8i4G' 'rFES9z7x' --login_with_auth "Bearer foo"
iam-admin-delete-user-role-v3 'ueHpATHc' 'cee9GXhK' --login_with_auth "Bearer foo"
iam-admin-update-user-status-v3 '{"enabled": false, "reason": "nnx6RVBr"}' 'op9v7aZK' --login_with_auth "Bearer foo"
iam-admin-verify-user-without-verification-code-v3 '3h65hbN1' --login_with_auth "Bearer foo"
iam-admin-update-client-secret-v3 '{"newSecret": "5zfQSfQr"}' 'tfF3TQN0' --login_with_auth "Bearer foo"
iam-admin-get-roles-v3 --login_with_auth "Bearer foo"
iam-admin-create-role-v3 '{"adminRole": false, "deletable": true, "isWildcard": false, "managers": [{"displayName": "r36vzohZ", "namespace": "yjMQAg5m", "userId": "PYhrLTyU"}, {"displayName": "8OhgfY9J", "namespace": "QYGF4bYX", "userId": "EcENx9xZ"}, {"displayName": "lAchob44", "namespace": "lONDDwMv", "userId": "gI0HlyPR"}], "members": [{"displayName": "7wZNiVsF", "namespace": "6xG2mXEQ", "userId": "dbzIVy8a"}, {"displayName": "lncV7vWg", "namespace": "SHdfo07U", "userId": "ctPErqxy"}, {"displayName": "MyOK06Mq", "namespace": "QBErxgjV", "userId": "BycvU4Pb"}], "permissions": [{"action": 25, "resource": "O05oKqym", "schedAction": 48, "schedCron": "QjBECXve", "schedRange": ["a7H1m2lJ", "FRZ3ZprZ", "60zMjhTH"]}, {"action": 10, "resource": "noowmlTI", "schedAction": 76, "schedCron": "5hCFkIf5", "schedRange": ["weqZ18MH", "57l2Zsrh", "90ETtYmG"]}, {"action": 43, "resource": "e4akncw7", "schedAction": 46, "schedCron": "cHp6B8Vj", "schedRange": ["7rXFgDnD", "kdZ9bpjb", "1tdA3Qhj"]}], "roleName": "CMW64f4X"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v3 'hIjSoTB2' --login_with_auth "Bearer foo"
iam-admin-delete-role-v3 'NMKtezap' --login_with_auth "Bearer foo"
iam-admin-update-role-v3 '{"deletable": true, "isWildcard": true, "roleName": "TPY8P8P3"}' 'cfoivvQx' --login_with_auth "Bearer foo"
iam-admin-get-role-admin-status-v3 'evecWw7R' --login_with_auth "Bearer foo"
iam-admin-update-admin-role-status-v3 'ry0KK5rg' --login_with_auth "Bearer foo"
iam-admin-remove-role-admin-v3 'AGO0dW8r' --login_with_auth "Bearer foo"
iam-admin-get-role-managers-v3 'X2MVUGKS' --login_with_auth "Bearer foo"
iam-admin-add-role-managers-v3 '{"managers": [{"displayName": "Z4GcLkt4", "namespace": "pK32sJxl", "userId": "ZcCTpTdR"}, {"displayName": "tCHvuk6B", "namespace": "6XTmSLyn", "userId": "50sigBVZ"}, {"displayName": "xiKdV57G", "namespace": "vRyd9UuL", "userId": "02Le8HSC"}]}' 'slsDd4M1' --login_with_auth "Bearer foo"
iam-admin-remove-role-managers-v3 '{"managers": [{"displayName": "F5qRIblS", "namespace": "7Nz81GRa", "userId": "zPAANjfB"}, {"displayName": "oldFOyqA", "namespace": "2clJ5gEO", "userId": "aCgM6Yn6"}, {"displayName": "RugbNEIp", "namespace": "GBFUjOn5", "userId": "mM7k8nbL"}]}' 'zvtCIW5y' --login_with_auth "Bearer foo"
iam-admin-get-role-members-v3 'nMKquUic' --login_with_auth "Bearer foo"
iam-admin-add-role-members-v3 '{"members": [{"displayName": "AeIVXtoW", "namespace": "AXhMlW4t", "userId": "LqX7OICf"}, {"displayName": "5oD1e6oI", "namespace": "9FmYel0k", "userId": "Ow72o8Zk"}, {"displayName": "gk0jS6rD", "namespace": "WUwfhKvr", "userId": "f2AaH4yC"}]}' 'WrHSppnI' --login_with_auth "Bearer foo"
iam-admin-remove-role-members-v3 '{"members": [{"displayName": "ZkNnTn3r", "namespace": "zH5NvAtc", "userId": "vNedgS1f"}, {"displayName": "UfKmihDb", "namespace": "mu8ePWlQ", "userId": "MVDXEHei"}, {"displayName": "GTnwyEw6", "namespace": "hIWDZrpP", "userId": "7rz3ISW5"}]}' '10kHr4is' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v3 '{"permissions": [{"action": 94, "resource": "IFeouC2m", "schedAction": 42, "schedCron": "8kXrDZWl", "schedRange": ["GVE9sJ4N", "pUtKp6M9", "I6nEwnZh"]}, {"action": 37, "resource": "PJ3jtDYB", "schedAction": 30, "schedCron": "SDMZz95O", "schedRange": ["YKiqaZD6", "3xe5rruJ", "VfLGea0Z"]}, {"action": 41, "resource": "s7ACC1Rg", "schedAction": 57, "schedCron": "z0UV31Mf", "schedRange": ["uGaXsAuG", "sZaSHevO", "0TQNEI3k"]}]}' 'fabxJWWS' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v3 '{"permissions": [{"action": 71, "resource": "znCgNyx9", "schedAction": 10, "schedCron": "peFhUztX", "schedRange": ["DgB7n4C9", "7uAPP8PA", "TLpUpxeJ"]}, {"action": 24, "resource": "WFbr3RSP", "schedAction": 83, "schedCron": "W9nBhvhf", "schedRange": ["8Q0DtJMc", "YQdN66bs", "wAgt65X4"]}, {"action": 80, "resource": "HKWW4fI1", "schedAction": 70, "schedCron": "JMdtwCVU", "schedRange": ["rYQue84d", "wmbwFEnA", "ZaWsQJtR"]}]}' 'YoagRJK5' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v3 '["PX9UcOvh", "PyE11TRT", "2SKseoe8"]' 'VLie0LBa' --login_with_auth "Bearer foo"
iam-admin-delete-role-permission-v3 '51' '6KNzjf00' '5CXNGehQ' --login_with_auth "Bearer foo"
iam-admin-get-my-user-v3 --login_with_auth "Bearer foo"
iam-user-authentication-v3 '2aTjTDfK' 'FDXC7eGL' '5YhJDWh9' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-authentication-with-platform-link-v3 'YWqc0qgV' '6d9yOfIM' 'Lds2DbPc' 'aoMdtRLT' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v3 'mSvTkQQg' --login_with_auth "Bearer foo"
iam-request-one-time-linking-code-v3 'B7exYvmH' --login_with_auth "Bearer foo"
iam-validate-one-time-linking-code-v3 'Mxr5hPCJ' --login_with_auth "Bearer foo"
iam-request-token-by-one-time-link-code-response-v3 'JztJBg0t' 'TJg46Iew' --login_with_auth "Bearer foo"
iam-get-country-location-v3 --login_with_auth "Bearer foo"
iam-logout --login_with_auth "Bearer foo"
iam-request-game-token-code-response-v3 'OXE2AkCh' --login_with_auth "Bearer foo"
iam-admin-retrieve-user-third-party-platform-token-v3 '3QIZsUf8' 'lGFXcmwT' --login_with_auth "Bearer foo"
iam-revoke-user-v3 'ERHclOdx' --login_with_auth "Bearer foo"
iam-authorize-v3 'Iwqejxe1' 'code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-introspection-v3 'rNdb8Otq' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-jwksv3 --login_with_auth "Bearer foo"
iam-send-mfa-authentication-code '6j1mqUav' '7k05HAQl' 'tnSojV4j' --login_with_auth "Bearer foo"
iam-change2fa-method 'T65yclX2' 'FtAz0vJj' --login_with_auth "Bearer foo"
iam-verify2fa-code 'FIYWOaNd' 'simmkW2m' 'iH3xRHAK' 'true' --login_with_auth "Bearer foo"
iam-retrieve-user-third-party-platform-token-v3 'SwqTsKKK' 'o37NHDOQ' --login_with_auth "Bearer foo"
iam-auth-code-request-v3 'e91Ps3zt' 'UIV0dS6h' --login_with_auth "Bearer foo"
iam-platform-token-grant-v3 'IH9c4Vfk' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-revocation-list-v3 --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-revocation-v3 'yrwpuXxb' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-grant-v3 'authorization_code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-verify-token-v3 'RsmH1EQr' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-platform-authentication-v3 'YmkPKTPO' 'lhTtSiZN' --login_with_auth "Bearer foo"
iam-public-get-input-validations --login_with_auth "Bearer foo"
iam-public-get-country-age-restriction-v3 'CxuogFte' --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-public-v3 --login_with_auth "Bearer foo"
iam-retrieve-active-oidc-clients-public-v3 'THJe4BhS' --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["SQkQD6Wm", "Ot6D7ufF", "VTOhvQpf"]}' 'bBke8aEd' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv3 'd36xj6wy' 'SoltDxsb' --login_with_auth "Bearer foo"
iam-public-get-async-status 'zxrlaKEf' --login_with_auth "Bearer foo"
iam-public-search-user-v3 --login_with_auth "Bearer foo"
iam-public-create-user-v3 '{"PasswordMD5Sum": "koYjY2o6", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "ufwLYkqI", "policyId": "gLuZS6hs", "policyVersionId": "QryiEtOA"}, {"isAccepted": false, "localizedPolicyVersionId": "tZpr4U4f", "policyId": "wQIiLXgm", "policyVersionId": "RasvjO4l"}, {"isAccepted": false, "localizedPolicyVersionId": "PF0JmX8q", "policyId": "wU1cTuHH", "policyVersionId": "PB5S3DvP"}], "authType": "RCzBrVUx", "code": "mDOj3cvR", "country": "FaTC11W0", "dateOfBirth": "TGTCm4fZ", "displayName": "Wuk6pQxD", "emailAddress": "QpKqxLGe", "password": "Mvr9Tsvc", "reachMinimumAge": false}' --login_with_auth "Bearer foo"
iam-check-user-availability 'a6iZ5uFR' 'YNn3SHiW' --login_with_auth "Bearer foo"
iam-public-bulk-get-users '{"userIds": ["xF0YbuU5", "ar5qTLWU", "Cy0Afgc0"]}' --login_with_auth "Bearer foo"
iam-public-send-registration-code '{"emailAddress": "50XIZRW4", "languageTag": "91e94mQj"}' --login_with_auth "Bearer foo"
iam-public-verify-registration-code '{"code": "VOOBnIWh", "emailAddress": "unElqZUo"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v3 '{"emailAddress": "dp3IhtCS", "languageTag": "Hy1ei1fI"}' --login_with_auth "Bearer foo"
iam-get-admin-invitation-v3 'rPvfHnRN' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v3 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "6EjRwEQl", "policyId": "NapJRfk4", "policyVersionId": "f9Zcw1pE"}, {"isAccepted": true, "localizedPolicyVersionId": "AyNFxcVT", "policyId": "KuAQTGh5", "policyVersionId": "BxjWOozG"}, {"isAccepted": false, "localizedPolicyVersionId": "mu3kaPj0", "policyId": "O4zd8Tb7", "policyVersionId": "cUNGPTBx"}], "authType": "EMAILPASSWD", "country": "fjv9oYMX", "dateOfBirth": "MjlVHY1A", "displayName": "HwF3vGoa", "password": "v7MK0PcL", "reachMinimumAge": false}' '4mUHVbMP' --login_with_auth "Bearer foo"
iam-update-user-v3 '{"avatarUrl": "imNhcZsU", "country": "3VAdMDcb", "dateOfBirth": "4qlkiFAa", "displayName": "mqvZI2Kw", "languageTag": "jqPBiWXa", "userName": "de41s3rH"}' --login_with_auth "Bearer foo"
iam-public-partial-update-user-v3 '{"avatarUrl": "34mB2yPl", "country": "RpWjmHZA", "dateOfBirth": "AvKTH8Mu", "displayName": "qIg0Czkg", "languageTag": "uwuJCW7E", "userName": "EFB67AOD"}' --login_with_auth "Bearer foo"
iam-public-send-verification-code-v3 '{"context": "bi9BzupB", "emailAddress": "sFpYc77G", "languageTag": "tRUcCFeY"}' --login_with_auth "Bearer foo"
iam-public-user-verification-v3 '{"code": "5g4XgBsb", "contactType": "fzqxBPNe", "languageTag": "8ae1Il4a", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v3 '{"code": "QLYXxm09", "country": "wpGAbpEm", "dateOfBirth": "DY9vLh3u", "displayName": "6EDsUmrV", "emailAddress": "6kH4OotK", "password": "wG3UC6XC", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-verify-headless-account-v3 '{"emailAddress": "BbA6bfbY", "password": "aJCJjfk2"}' --login_with_auth "Bearer foo"
iam-public-update-password-v3 '{"languageTag": "TUvn95Fh", "newPassword": "O7VW3mbD", "oldPassword": "VMDu87t0"}' --login_with_auth "Bearer foo"
iam-public-create-justice-user 'ldWf7iSG' --login_with_auth "Bearer foo"
iam-public-platform-link-v3 'IiKFtWtn' '4Yr2svKM' --login_with_auth "Bearer foo"
iam-public-platform-unlink-v3 '{"platformNamespace": "6pqLGZ0T"}' 'BujELAUK' --login_with_auth "Bearer foo"
iam-public-platform-unlink-all-v3 '6mQ5iZgb' --login_with_auth "Bearer foo"
iam-public-force-platform-link-v3 'wwm5iGzX' 'tcknrgid' --login_with_auth "Bearer foo"
iam-public-web-link-platform 'KupvXO6a' --login_with_auth "Bearer foo"
iam-public-web-link-platform-establish 'j4hCmTC3' '4jxW4pID' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"code": "wdqXpmRm", "emailAddress": "ut9H9XyW", "newPassword": "I8bp8fQx"}' --login_with_auth "Bearer foo"
iam-public-get-user-by-user-id-v3 'RuX91uYm' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 'trHJbEGT' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 'Uj7YjERL' --login_with_auth "Bearer foo"
iam-public-get-user-information-v3 '1rEQG02z' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 'ccA8wvLs' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 'WUNd6lPK' --login_with_auth "Bearer foo"
iam-public-list-justice-platform-accounts-v3 'vqDejvqk' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "lTSvDwuO", "platformUserId": "rP9lzpiX"}' '0VuFpZum' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["7izxe7NP", "zjOa8E7w", "Y76PxLv9"], "requestId": "HBEUe89A"}' 'wEw1HO4F' --login_with_auth "Bearer foo"
iam-public-get-publisher-user-v3 'nKtx4XLK' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 'AmlDr19u' 'J3nq6Ver' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 'zVCcI8y3' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-public-get-link-headless-account-to-my-account-conflict-v3 'Cz0YqCKU' --login_with_auth "Bearer foo"
iam-link-headless-account-to-my-account-v3 '{"chosenNamespaces": ["h5RD9vNA", "p4jinFpn", "Q5xF9wwb"], "oneTimeLinkCode": "vMZyeDeR"}' --login_with_auth "Bearer foo"
iam-public-send-verification-link-v3 '{"languageTag": "nVfPUa6x"}' --login_with_auth "Bearer foo"
iam-public-verify-user-by-link-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler 'VVBcq3wZ' 'pFIYeAg7' --login_with_auth "Bearer foo"
iam-login-sso-client '9HcLJXJ7' --login_with_auth "Bearer foo"
iam-logout-sso-client 'mpVI6eTY' --login_with_auth "Bearer foo"
iam-request-game-token-response-v3 'AjdPlCiQ' --login_with_auth "Bearer foo"
iam-admin-get-devices-by-user-v4 --login_with_auth "Bearer foo"
iam-admin-get-banned-devices-v4 --login_with_auth "Bearer foo"
iam-admin-get-user-device-bans-v4 'QC35cj4K' --login_with_auth "Bearer foo"
iam-admin-ban-device-v4 '{"comment": "yOVgvnWb", "deviceId": "fRJtsB7c", "deviceType": "UQZ2QUAx", "enabled": true, "endDate": "rINPXppP", "ext": {"NO3AfmXc": {}, "gwC3IN6t": {}, "vKgLB9Qm": {}}, "reason": "JIOq9dP5"}' --login_with_auth "Bearer foo"
iam-admin-get-device-ban-v4 'szG71utj' --login_with_auth "Bearer foo"
iam-admin-update-device-ban-v4 '{"enabled": true}' 'nYxM0UHZ' --login_with_auth "Bearer foo"
iam-admin-generate-report-v4 'VNYzGMNI' --login_with_auth "Bearer foo"
iam-admin-get-device-types-v4 --login_with_auth "Bearer foo"
iam-admin-get-device-bans-v4 'pWoSLkUr' --login_with_auth "Bearer foo"
iam-admin-decrypt-device-v4 'fuf4U3We' --login_with_auth "Bearer foo"
iam-admin-unban-device-v4 'YeA9t2EN' --login_with_auth "Bearer foo"
iam-admin-get-users-by-device-v4 'KKWrFtHI' --login_with_auth "Bearer foo"
iam-admin-create-test-users-v4 '{"count": 18}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["9Su4FnS9", "8QqftSjq", "7sn8yrec"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "iPLfkVyy", "country": "JsbGpO6J", "dateOfBirth": "gehDJxEN", "displayName": "7JlZc8LM", "languageTag": "q1o2jZWu", "userName": "4yA3r0u4"}' 'q1bTHXIj' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "fJKyFlM0", "emailAddress": "u1uuoVdn"}' '9yVoSlKN' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 'chPHNL4X' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 '3LLaGPGd' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["qLE8Sohh", "huiTnJar", "YYkHBDdS"], "roleId": "zBXdxapw"}' 'hd5IQYBQ' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["uxLvPuWY", "vE3fsNy9", "Z9OhxXvC"], "roleId": "p9y7fLD2"}' 'qfCXnlUn' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["qxT1WsRN", "MZcA92hz", "C7MNa8vV"], "roleId": "e4MHX6Ag"}' 'Mep90Ayy' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "n8D2eLMe"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 '3lt9qfx2' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 'UDcgVE7L' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "0MrPc4vt"}' 'xk9hVKlG' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 21, "resource": "6HlzGr7X", "schedAction": 19, "schedCron": "brztee7Q", "schedRange": ["LTGAak7K", "aol01DK9", "7D2xnik4"]}, {"action": 52, "resource": "miteR5eQ", "schedAction": 54, "schedCron": "ipH1MWVT", "schedRange": ["HG0qHJCW", "EfOJpZm9", "yEYWNGMy"]}, {"action": 72, "resource": "pgSGSUOK", "schedAction": 72, "schedCron": "8eqGJtWf", "schedRange": ["1Ybgg8rd", "wY9bmrvH", "mO07KNqX"]}]}' '9LM2IwEs' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 7, "resource": "ISQ83TTb", "schedAction": 39, "schedCron": "DX8v3xgC", "schedRange": ["1Ge9PdbT", "TAJ2Gp1r", "0sVZ6LJA"]}, {"action": 83, "resource": "GYzQqV8d", "schedAction": 86, "schedCron": "mDdUIoiI", "schedRange": ["JFNxuNOm", "USWw18T1", "IxVWCxdv"]}, {"action": 85, "resource": "6i38XQjL", "schedAction": 60, "schedCron": "xP8xj1Ly", "schedRange": ["EirURERn", "EMzpImW6", "sjAHyCK5"]}]}' 'tNanGBrk' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["zUvck3xT", "tmOFMebS", "4AdlNzwo"]' 'g2IhErkN' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'hNcECWwc' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["hW6zL9Sk", "bLlrNXnG", "anMazb8j"], "namespace": "vRWenURH", "userId": "48aJuALE"}' 'cSqcE15u' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "6D31DjOs", "userId": "rs3CUYAT"}' 'dqnQGbqi' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "qOkNeATj", "country": "7eGjodd7", "dateOfBirth": "CcJUrI6M", "displayName": "AugK5kyp", "languageTag": "Nrp2nFe9", "userName": "FmN86sK5"}' --login_with_auth "Bearer foo"
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
iam-admin-enable-my-email-v4 'LOq4ft5j' --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 'GcMICPUY' --login_with_auth "Bearer foo"
iam-admin-invite-user-v4 '{"assignedNamespaces": ["nfG6jl9U", "4jReteIM", "gzISomCs"], "emailAddresses": ["odJrhQW4", "1q2OspCZ", "bt3Uta5I"], "isAdmin": false, "namespace": "uGcL1koy", "roleId": "HjCH5olY"}' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "5vHLjBJ9", "policyId": "iqMcBL4B", "policyVersionId": "zhDUjhKP"}, {"isAccepted": true, "localizedPolicyVersionId": "nDByhnol", "policyId": "uO6ti0QP", "policyVersionId": "2ssiJ66O"}, {"isAccepted": true, "localizedPolicyVersionId": "4xQye7Hq", "policyId": "nVK3YVeO", "policyVersionId": "Ws9mfVQh"}], "authType": "EMAILPASSWD", "country": "5zifF8y9", "dateOfBirth": "59anrNSl", "displayName": "eywHbHig", "emailAddress": "6IKWVZ77", "password": "KeRWdECa", "passwordMD5Sum": "FGzfZ2hx", "username": "cJ2Fnemn", "verified": false}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "3SzUo4hN", "policyId": "BDh9ZFP1", "policyVersionId": "OW0nXOEr"}, {"isAccepted": true, "localizedPolicyVersionId": "S4VsRoYI", "policyId": "K69yg9AD", "policyVersionId": "CGiXaLs2"}, {"isAccepted": true, "localizedPolicyVersionId": "iBgLsNhd", "policyId": "gQ0JWZjN", "policyVersionId": "RSzOTqcV"}], "authType": "EMAILPASSWD", "code": "3ahvxw9g", "country": "wwhTnjN6", "dateOfBirth": "wKZGW4y3", "displayName": "f0R9s2kn", "emailAddress": "dhhZhwAi", "password": "LsZs4pmL", "passwordMD5Sum": "DIQch4Ij", "reachMinimumAge": true, "username": "00UH197M"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "rYsWucAk", "policyId": "XsVJbXi7", "policyVersionId": "eRZa7WwI"}, {"isAccepted": false, "localizedPolicyVersionId": "aSzUtY4Z", "policyId": "D0Xtb0U4", "policyVersionId": "pH16NUsV"}, {"isAccepted": false, "localizedPolicyVersionId": "1NVIs7NR", "policyId": "en2Y3Ns0", "policyVersionId": "QJQeaWyt"}], "authType": "EMAILPASSWD", "country": "QpxsuD8P", "dateOfBirth": "Gqku59eF", "displayName": "JrOXyDYz", "password": "9vMUOPG0", "reachMinimumAge": false, "username": "bkcTglbU"}' '86FyOjAp' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "NHBVfNOU", "country": "RcjY3YYT", "dateOfBirth": "9oTynmfI", "displayName": "uBWgJTNF", "languageTag": "fM8M0IW4", "userName": "oe8KDgy0"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "xZfAcNg1", "emailAddress": "4Ws8TIP1"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "LKiFQoLD", "country": "vumfqrgS", "dateOfBirth": "fnx2h61X", "displayName": "9dN1MGRX", "emailAddress": "BJ6mVV7J", "password": "S9qjNLwv", "reachMinimumAge": true, "username": "8JdiY3RR", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"emailAddress": "57lPdinp", "password": "jS2DRfGt", "username": "9GlyZVQ4"}' --login_with_auth "Bearer foo"
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
iam-public-enable-my-email-v4 'X67tPZST' --login_with_auth "Bearer foo"
iam-public-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-public-make-factor-my-default-v4 'pPq3xjrE' --login_with_auth "Bearer foo"
iam-public-invite-user-v4 '{"emailAddress": "lvvDgw0a", "namespace": "g7kSWE0H", "namespaceDisplayName": "iqm5IuLr"}' --login_with_auth "Bearer foo"
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
echo "1..348"

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
    '[{"field": "yiEXqvUW", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "blockedWord": ["EVjVZw1T", "oLuPakQN", "1MpOs1RV"], "description": [{"language": "Frcg2CXx", "message": ["epx78fvs", "yhE2BKty", "TDSIM7mk"]}, {"language": "mvZ7Cmsh", "message": ["4US8o4jf", "MANPpmZD", "dMiCxmuC"]}, {"language": "CVuFjS1G", "message": ["C1d2b92B", "4vEgj3HO", "mhcWm428"]}], "isCustomRegex": false, "letterCase": "Pkz96vd8", "maxLength": 26, "maxRepeatingAlphaNum": 27, "maxRepeatingSpecialCharacter": 37, "minCharType": 78, "minLength": 33, "regex": "rBZo0lNU", "specialCharacterLocation": "BDShHD32", "specialCharacters": ["vvL28FPw", "TiXfLcxD", "C9Ynd02m"]}}, {"field": "ECIQhfIh", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "blockedWord": ["zimQTQT9", "5pFJUAJs", "yAfeKOuf"], "description": [{"language": "V4f15Noh", "message": ["Xu6opxQG", "Rt6PqlkL", "0diRhLC1"]}, {"language": "0ih2EQfY", "message": ["3XCv4hdO", "a6FdZhNM", "d1onFjGR"]}, {"language": "bxtABPXD", "message": ["mgNEJBhg", "Gq5GIDhN", "C66szbCC"]}], "isCustomRegex": false, "letterCase": "ZkwbYkBL", "maxLength": 49, "maxRepeatingAlphaNum": 90, "maxRepeatingSpecialCharacter": 82, "minCharType": 92, "minLength": 71, "regex": "A0Fqfhna", "specialCharacterLocation": "B3YxKNdO", "specialCharacters": ["TacCcJfI", "fXshuLUk", "5WdpxjZx"]}}, {"field": "5noXPhPU", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "blockedWord": ["noucNmzw", "OZOK56sD", "kci5rZ8i"], "description": [{"language": "MlOuksQJ", "message": ["CiRFiZWw", "J7NrTb1X", "TB9YQzUJ"]}, {"language": "9XlYJ8Bz", "message": ["P6EUmUXG", "M5anIloy", "j9lhbvuQ"]}, {"language": "dW2jwKUc", "message": ["kc794ryY", "91lX8DD4", "MYXlrJ81"]}], "isCustomRegex": false, "letterCase": "C5weXJl7", "maxLength": 84, "maxRepeatingAlphaNum": 30, "maxRepeatingSpecialCharacter": 9, "minCharType": 79, "minLength": 16, "regex": "8YmVjAkO", "specialCharacterLocation": "3HKsEp6K", "specialCharacters": ["lqwW4djr", "excbHdEt", "oQvpV344"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    'RctmTozC' \
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
    '{"ageRestriction": 18, "enable": true}' \
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
    '{"ageRestriction": 68}' \
    'viTgYmx8' \
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
    '{"ban": "2JVBRLPZ", "comment": "6Iz8tne5", "endDate": "dbguBF6G", "reason": "svvdl8jH", "skipNotif": true, "userIds": ["dsJQeJ1t", "oo0qvxph", "TLEEBGTt"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "ZyTjdKNK", "userId": "gYazujsm"}, {"banId": "SmylT1Yt", "userId": "xIq73aMb"}, {"banId": "48jISd97", "userId": "KORRhxSW"}]}' \
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
    '{"audiences": ["LWLNfHRD", "3V15QaGG", "L46LuxJF"], "baseUri": "3sbeqWBd", "clientId": "QuWfgBAK", "clientName": "x27MSBqa", "clientPermissions": [{"action": 4, "resource": "szApmWJO", "schedAction": 96, "schedCron": "vzzXZj08", "schedRange": ["a6K1XRVf", "riSpPFnZ", "BJZkDnEi"]}, {"action": 51, "resource": "Vzi9ui3l", "schedAction": 43, "schedCron": "xNnLRH36", "schedRange": ["bqS2oFY7", "6PU1AziB", "OHEAj1cT"]}, {"action": 5, "resource": "u6Zc2Fbr", "schedAction": 93, "schedCron": "JfZ0jvA5", "schedRange": ["4CSqZFDs", "O1skRjOU", "1SMfQVQa"]}], "clientPlatform": "6blj9Rdd", "deletable": false, "description": "1OJYMnW4", "namespace": "9rWynp1c", "oauthAccessTokenExpiration": 21, "oauthAccessTokenExpirationTimeUnit": "9vQe0dHJ", "oauthClientType": "fF6KIuvn", "oauthRefreshTokenExpiration": 89, "oauthRefreshTokenExpirationTimeUnit": "gbUmulhe", "parentNamespace": "98oaFKlQ", "redirectUri": "icdrxVhr", "scopes": ["twSd9QWV", "MYz7TU1T", "sxsChScl"], "secret": "Skb5aBi9", "twoFactorEnabled": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    'zyv6gFZX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'I5nXJ7hL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["i6HweweR", "myo91dIn", "7QqXBDXJ"], "baseUri": "crqKmXDw", "clientName": "oEV6tCdr", "clientPermissions": [{"action": 49, "resource": "afIjLX8c", "schedAction": 9, "schedCron": "HuYrGWDK", "schedRange": ["41uMOC0m", "RvSoaGk4", "ktF5wnJD"]}, {"action": 13, "resource": "2oWJlfgl", "schedAction": 77, "schedCron": "COInVols", "schedRange": ["r6CHmj76", "3vLwtYEJ", "TSiXjcY5"]}, {"action": 40, "resource": "Pkv90lyK", "schedAction": 91, "schedCron": "W11vtpaT", "schedRange": ["xi7k489j", "RCn48bvk", "CPfKofwX"]}], "clientPlatform": "OIZZQAJz", "deletable": false, "description": "VlSXrA3X", "namespace": "UGud4tVj", "oauthAccessTokenExpiration": 25, "oauthAccessTokenExpirationTimeUnit": "rSUAW2ak", "oauthRefreshTokenExpiration": 66, "oauthRefreshTokenExpirationTimeUnit": "ISDrBVg6", "redirectUri": "NuDZvPb1", "scopes": ["kuUfNfUD", "e4g7q6PH", "EaqbzHvD"], "twoFactorEnabled": true}' \
    '69IN4V1O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 6, "resource": "MGBA6JXD"}, {"action": 32, "resource": "xlkmc4xY"}, {"action": 16, "resource": "0oaGouFu"}]}' \
    '4hXONgUw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 73, "resource": "AdTn6xBh"}, {"action": 35, "resource": "cpUvlrw2"}, {"action": 78, "resource": "rkadH5Y4"}]}' \
    '1SLjCPrF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '0' \
    '5n9Lx3Qc' \
    'Fo9gxOgv' \
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
    'Dc7xMrRK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "vw8ISP2W", "AWSCognitoRegion": "KmCRRXBx", "AWSCognitoUserPool": "lalCHtWl", "AllowedClients": ["KxLpS8fL", "WoQ5nuJh", "atQPxR7d"], "AppId": "vBVC5zgO", "AuthorizationEndpoint": "KLTDmHe8", "ClientId": "c1eJ9sde", "Environment": "7Ryt4udI", "FederationMetadataURL": "v22M18uu", "GenericOauthFlow": true, "IsActive": true, "Issuer": "PBYiR3Ub", "JWKSEndpoint": "Jc1ZYapx", "KeyID": "7C477etq", "NetflixCertificates": {"encryptedPrivateKey": "gfOJDUT0", "encryptedPrivateKeyName": "uKAPrARy", "publicCertificate": "a2IMlNiX", "publicCertificateName": "pF4qvsUU", "rootCertificate": "pHqi33Tc", "rootCertificateName": "BGkc0HjU"}, "OrganizationId": "cnkpU9oV", "PlatformName": "zl2kBuLF", "RedirectUri": "XIeCEKZU", "RegisteredDomains": [{"affectedClientIDs": ["Tz3GvCAZ", "5j24acYH", "brryHB6G"], "domain": "O9zP3Fae", "namespaces": ["pA3b3YJ9", "nJM6vtT2", "7xv85K5M"], "roleId": "U2qmbeqa"}, {"affectedClientIDs": ["VemINdCl", "pF7OvlBI", "Egjse5kd"], "domain": "6GEDo08y", "namespaces": ["q5E5HleL", "oog4me2N", "BFp62xlX"], "roleId": "vVcJerTP"}, {"affectedClientIDs": ["W02PWsHi", "KYArAxnK", "BfBfDlrQ"], "domain": "QuAc10Dj", "namespaces": ["jwMv4vrI", "PRtvhQIy", "LarjaLOK"], "roleId": "nX51yAB8"}], "Secret": "Pa3uNGKh", "TeamID": "aLlJzJMS", "TokenAuthenticationType": "nJIIgsAV", "TokenClaimsMapping": {"maGYxUX1": "B9oVuzG2", "CnYX2YBF": "2g7TVtzY", "EHUodh3i": "UfBthbep"}, "TokenEndpoint": "UCTWiZ1u", "UserInfoEndpoint": "qh7GAi4F", "UserInfoHTTPMethod": "EIu44u83", "scopes": ["ZLRxYlYq", "lpq03BGd", "Ik4oEogF"]}' \
    'VGR71rJO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    'By6lsj1A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "KGBjnHma", "AWSCognitoRegion": "Au4YK87D", "AWSCognitoUserPool": "YAWWcbcb", "AllowedClients": ["GWmKgE8C", "Z4AELr5l", "raa5v5P5"], "AppId": "Cj8hgFsq", "AuthorizationEndpoint": "HC9h5JPi", "ClientId": "MEtgKuiG", "Environment": "TYgwWv5X", "FederationMetadataURL": "ldL6rOVG", "GenericOauthFlow": false, "IsActive": false, "Issuer": "An51rVAQ", "JWKSEndpoint": "Sxp4qTB5", "KeyID": "4mKA3V9D", "NetflixCertificates": {"encryptedPrivateKey": "KlCeZ7mL", "encryptedPrivateKeyName": "YsHooOIa", "publicCertificate": "xIpb1cIO", "publicCertificateName": "JPS3lJ80", "rootCertificate": "YJ41U4oo", "rootCertificateName": "Q980ywmg"}, "OrganizationId": "1pWpWit1", "PlatformName": "QC7FKe0f", "RedirectUri": "nHUlmU1u", "RegisteredDomains": [{"affectedClientIDs": ["nGKM0tgf", "eWy47bbw", "MI4gGmvK"], "domain": "9gW596Fw", "namespaces": ["BNrFXt3T", "AuKBwBcD", "12ae6r3h"], "roleId": "Hwya4Npd"}, {"affectedClientIDs": ["Ozg3hr6u", "cHf7dbh2", "iKNUl0qJ"], "domain": "qzoKMRMG", "namespaces": ["541PAiNj", "ULsx4SnK", "NXLMUaDS"], "roleId": "wwQlnNRZ"}, {"affectedClientIDs": ["JHBSB4fZ", "WEFIZs28", "Ff1kZp1Z"], "domain": "ktx3N7WN", "namespaces": ["MYIfcDKb", "Lu8pnK34", "oA1keYXJ"], "roleId": "vtggDdXj"}], "Secret": "bdjMBahF", "TeamID": "ZZGMTcqn", "TokenAuthenticationType": "WrIprOv0", "TokenClaimsMapping": {"BJ9Sgl7H": "1sdH2RIJ", "z1eI7Q5p": "u9PutLf6", "IrvZoBGQ": "bO4S3rUR"}, "TokenEndpoint": "GWUzPAE6", "UserInfoEndpoint": "SdV4D5jf", "UserInfoHTTPMethod": "tRl9rZmt", "scopes": ["QUvro8TW", "wXWsz9TV", "mdMKEohK"]}' \
    'zuMYDUTL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["BeCidXju", "Ggx8ncXe", "jmeZtzT0"], "assignedNamespaces": ["qj0ltsqf", "iZrthVvy", "X0OCKDJE"], "domain": "3RMUddwS", "roleId": "SgxCu8zr"}' \
    'u1DhGAYO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "HR5BWa9V"}' \
    'zIkaQEl1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    'iUProNB6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "hI6IpGcT", "apiKey": "oWgFvdRh", "appId": "G9NwV3zD", "federationMetadataUrl": "uqVlVTyp", "isActive": false, "redirectUri": "Cqeg67d4", "secret": "RWOqO4U0", "ssoUrl": "bitNQLzw"}' \
    'RoWnR0Ab' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'kCPY70Fm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "vviVIBbc", "apiKey": "ujF8Vk5q", "appId": "b8NhWWwa", "federationMetadataUrl": "xyMchkt8", "isActive": false, "redirectUri": "PXM6XTUh", "secret": "2dJ90yqH", "ssoUrl": "DNacl4F9"}' \
    'G6Dl5TFw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'BY6HKXAb' \
    'lkT8VGgS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'H8MGZGwi' \
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
    '{"userIds": ["Vj7eDTak", "a9ABfX1I", "ByPEOuPh"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["GspRi3bh", "PQvBBJI5", "Jxytpcub"], "isAdmin": false, "namespace": "AUUPFPsc", "roles": ["ZsXeJOD4", "DMtqfIGi", "GJovgWSR"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'AdminInviteUserV3' test.out

#- 146 AdminQueryThirdPlatformLinkHistoryV3
$PYTHON -m $MODULE 'iam-admin-query-third-platform-link-history-v3' \
    'xZ8N4UQ2' \
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
    '{"listEmailAddressRequest": ["fg3V1o2x", "0hL5DuBD", "qMyIAzWz"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'AdminGetBulkUserByEmailAddressV3' test.out

#- 150 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'e94MEdJF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AdminGetUserByUserIdV3' test.out

#- 151 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "Ay2JTllJ", "country": "kRGB8jqJ", "dateOfBirth": "Ed6eqqsB", "displayName": "VyONV0JR", "languageTag": "tozI0jpl", "userName": "iCFQ6WgJ"}' \
    'pGPigdc5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserV3' test.out

#- 152 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'VyC4qvWj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'AdminGetUserBanV3' test.out

#- 153 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "Vac1cQvS", "comment": "xgTNIUzx", "endDate": "DgBlIbuz", "reason": "m7DzJ20N", "skipNotif": false}' \
    'RJIhFXR2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AdminBanUserV3' test.out

#- 154 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": false, "skipNotif": false}' \
    'YprPmbpu' \
    'ptECGd5c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'AdminUpdateUserBanV3' test.out

#- 155 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "dXC2Sesc", "emailAddress": "6y68whNB", "languageTag": "Yl9iCqfW"}' \
    '6rqGOQny' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminSendVerificationCodeV3' test.out

#- 156 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "4ij4ysYP", "ContactType": "onb59gQf", "LanguageTag": "fkNOmubx", "validateOnly": true}' \
    'RUQr3RLO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'AdminVerifyAccountV3' test.out

#- 157 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'M1vEx4gq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'GetUserVerificationCode' test.out

#- 158 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'DY6jwyKR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserDeletionStatusV3' test.out

#- 159 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"enabled": true}' \
    'c1tP5TDu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminUpdateUserDeletionStatusV3' test.out

#- 160 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "I5f6m4KC", "country": "07CnsZe3", "dateOfBirth": "2hqEcB1E", "displayName": "xYMBb3ck", "emailAddress": "voaJYdMq", "password": "Gegcg3eR", "validateOnly": true}' \
    'S0Ed7gTM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminUpgradeHeadlessAccountV3' test.out

#- 161 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    '5AVrtBQi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminDeleteUserInformationV3' test.out

#- 162 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'DTcNnZa6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminGetUserLoginHistoriesV3' test.out

#- 163 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "Zuxk6u6H", "newPassword": "XXdiC9ZD", "oldPassword": "j4E4mv12"}' \
    'FNXypoOL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AdminResetPasswordV3' test.out

#- 164 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 24, "Resource": "GlPrf6ob", "SchedAction": 70, "SchedCron": "qirJ4PkM", "SchedRange": ["FtsnFfz8", "Ew0X8fBu", "BSKLSQ4G"]}, {"Action": 45, "Resource": "PvRLiDi0", "SchedAction": 26, "SchedCron": "pBfBovqL", "SchedRange": ["wXBuT30E", "YeRj17xG", "haBKoUfi"]}, {"Action": 70, "Resource": "jZUMRf2V", "SchedAction": 73, "SchedCron": "CJTv1ic9", "SchedRange": ["gvagF2cS", "uztsJ5tj", "64gV7nmD"]}]}' \
    'k29mcjSu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserPermissionV3' test.out

#- 165 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 52, "Resource": "8nP5PQjp", "SchedAction": 52, "SchedCron": "tQmQN6eK", "SchedRange": ["AGiZFCft", "T0RWECdj", "WYrnulxc"]}, {"Action": 57, "Resource": "wYLQcDvk", "SchedAction": 0, "SchedCron": "AVLDB4k3", "SchedRange": ["JwkdaxR7", "GJpYmuYC", "PG181q9G"]}, {"Action": 55, "Resource": "LkP5hc2F", "SchedAction": 15, "SchedCron": "UT6KOc4V", "SchedRange": ["PDUR9aya", "zqXRqegI", "UicYXXzx"]}]}' \
    'sBFrUs9B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminAddUserPermissionsV3' test.out

#- 166 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 40, "Resource": "p6TgCejB"}, {"Action": 7, "Resource": "ATn6KXOu"}, {"Action": 40, "Resource": "R3KbbQGE"}]' \
    'RMNpqWb5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionBulkV3' test.out

#- 167 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '88' \
    'y5RUzvMf' \
    'TkPy0fGv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserPermissionV3' test.out

#- 168 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'TGgfLKsg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserPlatformAccountsV3' test.out

#- 169 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    '0b1Bq78c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminGetListJusticePlatformAccounts' test.out

#- 170 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    'E5O5pmPn' \
    'biPJ9j4v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminGetUserMapping' test.out

#- 171 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    'xmbH3rVa' \
    'auufxkPH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminCreateJusticeUser' test.out

#- 172 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "Elug48Tg", "platformUserId": "fNu0rqXU"}' \
    'OyToLPIR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminLinkPlatformAccount' test.out

#- 173 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "EGIKlJt3"}' \
    'EP9kKwkE' \
    'NQ8VOHGw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformUnlinkV3' test.out

#- 174 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'bADMfuOm' \
    'h0lciRhV' \
    'Z2DeoODX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminPlatformLinkV3' test.out

#- 175 AdminGetThirdPartyPlatformTokenLinkStatusV3
$PYTHON -m $MODULE 'iam-admin-get-third-party-platform-token-link-status-v3' \
    'MzLSrzoi' \
    'BnYi5UWs' \
    '3tYlYeMo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 176 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["CimJySoc", "RvUWDOrF", "ZKPNoN9A"]' \
    'WtLK9TFg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminDeleteUserRolesV3' test.out

#- 177 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "i9j2XMh9", "roleId": "WpifqjNj"}, {"namespace": "LOtNQts2", "roleId": "yxf6MLZJ"}, {"namespace": "2jZfZbpT", "roleId": "JezzriCD"}]' \
    'WXT59SRu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminSaveUserRoleV3' test.out

#- 178 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    '0YqUxKDc' \
    '84OMIzvT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminAddUserRoleV3' test.out

#- 179 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'ScdbKBsA' \
    'yJMz4ILN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminDeleteUserRoleV3' test.out

#- 180 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": true, "reason": "SGhnfuF4"}' \
    'WZiQVICV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateUserStatusV3' test.out

#- 181 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'pWd3UM08' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 182 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "gMXhdf3j"}' \
    'uXW4JprI' \
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
    '{"adminRole": false, "deletable": true, "isWildcard": false, "managers": [{"displayName": "CAtvSG8C", "namespace": "fa9dzOJD", "userId": "GCTHIOFj"}, {"displayName": "eXbsSgR4", "namespace": "3kIDzxBw", "userId": "qRJTzrHN"}, {"displayName": "ZWUsq5lQ", "namespace": "o2jy29EJ", "userId": "igqYhyVh"}], "members": [{"displayName": "URx1yPec", "namespace": "zRpdk0HA", "userId": "TGylx2JG"}, {"displayName": "2KNGfhzf", "namespace": "CTxxrsRR", "userId": "Lee3TcJ7"}, {"displayName": "DQIi45aC", "namespace": "DHN9mVug", "userId": "2zkVf6Kg"}], "permissions": [{"action": 32, "resource": "FVKlbYHt", "schedAction": 2, "schedCron": "9UT67bOw", "schedRange": ["ugFDa6wU", "QvehKqwC", "h86XmRkC"]}, {"action": 62, "resource": "OEAEtbag", "schedAction": 99, "schedCron": "KgBgyCd5", "schedRange": ["vjkfz3eR", "4DtNp129", "hzBw3xLU"]}, {"action": 5, "resource": "geAxo57n", "schedAction": 76, "schedCron": "Jq1sml5b", "schedRange": ["Yt76BNsi", "4giR9434", "WpKKdzxo"]}], "roleName": "ufCNlFoO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminCreateRoleV3' test.out

#- 185 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'cWQQy4bj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRoleV3' test.out

#- 186 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'mQeEweoB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteRoleV3' test.out

#- 187 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": false, "isWildcard": true, "roleName": "kInFGpuU"}' \
    'sdtq4dOw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateRoleV3' test.out

#- 188 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    'NESzCEW9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminGetRoleAdminStatusV3' test.out

#- 189 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'dUVhZjLf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateAdminRoleStatusV3' test.out

#- 190 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'tC3sCS8C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminRemoveRoleAdminV3' test.out

#- 191 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'pLCqPD9C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRoleManagersV3' test.out

#- 192 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "eDEdCnnL", "namespace": "6Kt1Bjj3", "userId": "b8QM8Rr4"}, {"displayName": "5ULqXQgv", "namespace": "wD3PsKDJ", "userId": "iWxQBwaS"}, {"displayName": "7rDBf2S5", "namespace": "4phbdyGD", "userId": "t47f9GWR"}]}' \
    'lE9hqz6r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminAddRoleManagersV3' test.out

#- 193 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "jDNo4rhj", "namespace": "xUdMM83W", "userId": "ekqfWv04"}, {"displayName": "vvn9bk5q", "namespace": "r8qs2mqt", "userId": "nGAqXUjN"}, {"displayName": "ypF6MMqW", "namespace": "pdEJsPoa", "userId": "IbYz8cK5"}]}' \
    'jlpJdre5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminRemoveRoleManagersV3' test.out

#- 194 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'ur6yvWJD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminGetRoleMembersV3' test.out

#- 195 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "dvM7T7PX", "namespace": "2vamIRZH", "userId": "zsIYOCUo"}, {"displayName": "iCXNjrdQ", "namespace": "L2jdx1eI", "userId": "ba1sB0Hs"}, {"displayName": "J06Dzfbz", "namespace": "RYt4OVUy", "userId": "umBeIqdQ"}]}' \
    'GZC5kM03' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminAddRoleMembersV3' test.out

#- 196 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "HHijsQRj", "namespace": "7N8IAjms", "userId": "onjj0ZR5"}, {"displayName": "0BQ1U6aF", "namespace": "D3O2kXQS", "userId": "c58zgZVl"}, {"displayName": "4gIF7v3q", "namespace": "bZu9M3Ox", "userId": "qVAT4H1l"}]}' \
    'RZ9Z1JBr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminRemoveRoleMembersV3' test.out

#- 197 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 69, "resource": "EJyjBu4E", "schedAction": 52, "schedCron": "Pqb6n73m", "schedRange": ["0jiaDH86", "d9rsKgzC", "sMulpB8H"]}, {"action": 48, "resource": "UtVVaJCi", "schedAction": 77, "schedCron": "TsEA3Edm", "schedRange": ["W8saabP4", "xRowfNoj", "zPXI2v0p"]}, {"action": 35, "resource": "GnbjmPDK", "schedAction": 65, "schedCron": "kZwS6TYw", "schedRange": ["NN3UYhic", "03qGEg5f", "NzBVrjo3"]}]}' \
    'g8CfRwty' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateRolePermissionsV3' test.out

#- 198 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 23, "resource": "6yJaj4ov", "schedAction": 30, "schedCron": "gG40QyXz", "schedRange": ["sOzgck07", "8IghoQBp", "2mWAOYks"]}, {"action": 5, "resource": "iyEvMf9y", "schedAction": 17, "schedCron": "a2vWadLm", "schedRange": ["QtYKmEMz", "icbuL2S3", "RiW8dLTC"]}, {"action": 56, "resource": "bcIDcIyv", "schedAction": 6, "schedCron": "bOy1T4hf", "schedRange": ["wkuVykH4", "RpfmjIXF", "GZ5PKdba"]}]}' \
    'bJIkNnt9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'AdminAddRolePermissionsV3' test.out

#- 199 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["P1Tkm08l", "uh4dpPRM", "DbUXBWTb"]' \
    'pAogG2wl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'AdminDeleteRolePermissionsV3' test.out

#- 200 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '57' \
    'kLhuU5FI' \
    '8NijFI0G' \
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
    'KwJ3vfXl' \
    'sAMy2Zp2' \
    'UAGxHnmS' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 202 'UserAuthenticationV3' test.out

#- 203 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    'xvkG9UR5' \
    'q9neoW6J' \
    'BcGp9Rx2' \
    'RfcRhXpm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'AuthenticationWithPlatformLinkV3' test.out

#- 204 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    'eeHdvpha' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 205 RequestOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-request-one-time-linking-code-v3' \
    's9S7ivHE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'RequestOneTimeLinkingCodeV3' test.out

#- 206 ValidateOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-validate-one-time-linking-code-v3' \
    'oLbUMM47' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'ValidateOneTimeLinkingCodeV3' test.out

#- 207 RequestTokenByOneTimeLinkCodeResponseV3
$PYTHON -m $MODULE 'iam-request-token-by-one-time-link-code-response-v3' \
    'f1UreUpx' \
    'EkXIbE1E' \
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
    'TzRJZKMa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'RequestGameTokenCodeResponseV3' test.out

#- 211 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'vu4Ul2Ia' \
    'ieEbPSE7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 212 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    'TGkeHsYs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'RevokeUserV3' test.out

#- 213 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    'W9oGBN1p' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 213 'AuthorizeV3' test.out

#- 214 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'MBwbPZTl' \
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
    'MlUvFEiG' \
    'prcNSQ9k' \
    'EeXBZ6FV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'SendMFAAuthenticationCode' test.out

#- 217 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    'rBzyhyho' \
    'S6a9oe0J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'Change2faMethod' test.out

#- 218 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    'aXFpff28' \
    'uYbe4Cf2' \
    'HEHvVevh' \
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'Verify2faCode' test.out

#- 219 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'SjbtBJUK' \
    '5fE3OufP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'SX3PdOU2' \
    'V9yw94oa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'AuthCodeRequestV3' test.out

#- 221 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    '8UJ34TIe' \
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
    'dV3HyoX4' \
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
    'EuALzDNp' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 225 'VerifyTokenV3' test.out

#- 226 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    '1SZ58aDl' \
    'lwzTRHak' \
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
    '1MXxj7Es' \
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
    'rg7900nm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 231 PublicListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["l5BidsK9", "dCEzhVnO", "v0PQbVIa"]}' \
    'KiHfoeor' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 232 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    'Y7A1otGF' \
    'yv2SMjbE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'PublicGetUserByPlatformUserIDV3' test.out

#- 233 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    'r50qGdCZ' \
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
    '{"PasswordMD5Sum": "Ic6EFqBK", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "Izmc8rKr", "policyId": "KEPGSAco", "policyVersionId": "ng6eNERU"}, {"isAccepted": false, "localizedPolicyVersionId": "Oau6syme", "policyId": "06c6SKLc", "policyVersionId": "2mEC3IXl"}, {"isAccepted": false, "localizedPolicyVersionId": "CbkOfHaG", "policyId": "r5kdazly", "policyVersionId": "pvt6lSLf"}], "authType": "U7HByGXP", "code": "Mqxj4hBg", "country": "VY3YAxZL", "dateOfBirth": "KbcOdyjq", "displayName": "f6Q4oiwo", "emailAddress": "JcaRMEb1", "password": "5LBlTVuf", "reachMinimumAge": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'PublicCreateUserV3' test.out

#- 236 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'T5FwwHj0' \
    'Ur5F2PWG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'CheckUserAvailability' test.out

#- 237 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["TTD81xhN", "P4t6kYBU", "jyXAn3bW"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'PublicBulkGetUsers' test.out

#- 238 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "QF6QcAiJ", "languageTag": "pXIrgroi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'PublicSendRegistrationCode' test.out

#- 239 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "xptZhckU", "emailAddress": "TGkcBOE4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'PublicVerifyRegistrationCode' test.out

#- 240 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "qMcH1Kyi", "languageTag": "8ZFvGcV8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'PublicForgotPasswordV3' test.out

#- 241 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    'DY0XOkDs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'GetAdminInvitationV3' test.out

#- 242 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "70wYS4Kj", "policyId": "7Yi2VvoQ", "policyVersionId": "NW8Yc481"}, {"isAccepted": false, "localizedPolicyVersionId": "JUg21Lt7", "policyId": "JwgwMUSu", "policyVersionId": "C3Bajy3B"}, {"isAccepted": false, "localizedPolicyVersionId": "94VBCV9q", "policyId": "JhWva2FP", "policyVersionId": "BujX0geY"}], "authType": "EMAILPASSWD", "country": "DsZBQgOn", "dateOfBirth": "XuXsGThY", "displayName": "Zrmm0wrF", "password": "MnPpWgrQ", "reachMinimumAge": true}' \
    'xUNYyNwG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'CreateUserFromInvitationV3' test.out

#- 243 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "iKrknH0Y", "country": "5mrQgLC6", "dateOfBirth": "D2qsFiQH", "displayName": "glUQMZi5", "languageTag": "WjMZfOad", "userName": "pgegCUjT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'UpdateUserV3' test.out

#- 244 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "di1Ehr8O", "country": "tqpNJ9R8", "dateOfBirth": "TuNy4ejm", "displayName": "VA3vMCsG", "languageTag": "yPd12B8Q", "userName": "NUz0hFFN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'PublicPartialUpdateUserV3' test.out

#- 245 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "bH6j2W4r", "emailAddress": "oZM2UKAX", "languageTag": "EEsL5D0o"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'PublicSendVerificationCodeV3' test.out

#- 246 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "iFchQnVe", "contactType": "q3g2AB2W", "languageTag": "IRUQmauI", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'PublicUserVerificationV3' test.out

#- 247 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "bKVoWtoU", "country": "W1P7ocuB", "dateOfBirth": "AldDSUS7", "displayName": "Haa6unq1", "emailAddress": "yQOSRvyi", "password": "LBRVtIDi", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'PublicUpgradeHeadlessAccountV3' test.out

#- 248 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "piIQFVmz", "password": "Midw70KS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'PublicVerifyHeadlessAccountV3' test.out

#- 249 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "ahpYZdKZ", "newPassword": "RyR9AX7J", "oldPassword": "jxvNZhM8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'PublicUpdatePasswordV3' test.out

#- 250 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    '4DiZk6yS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'PublicCreateJusticeUser' test.out

#- 251 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'rB9SVFct' \
    'W7YS0OkL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'PublicPlatformLinkV3' test.out

#- 252 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "78XeEAtA"}' \
    'LFI3v8yh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'PublicPlatformUnlinkV3' test.out

#- 253 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'a4pd5A7M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'PublicPlatformUnlinkAllV3' test.out

#- 254 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    'YcpBD6lK' \
    'Nb8RxvN2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'PublicForcePlatformLinkV3' test.out

#- 255 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'u5J7baOe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'PublicWebLinkPlatform' test.out

#- 256 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'LH19fqBw' \
    'NbNe1ffY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'PublicWebLinkPlatformEstablish' test.out

#- 257 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "RtIvQaKy", "emailAddress": "evWYtZjK", "newPassword": "6J29v8Mp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'ResetPasswordV3' test.out

#- 258 PublicGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-public-get-user-by-user-id-v3' \
    'BSpo3AKR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'PublicGetUserByUserIdV3' test.out

#- 259 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    'mnJkzJHA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'PublicGetUserBanHistoryV3' test.out

#- 260 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'ckUyBksY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 261 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    'QfDm0RNF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'PublicGetUserInformationV3' test.out

#- 262 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'wiz70tRV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'PublicGetUserLoginHistoriesV3' test.out

#- 263 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'LMlHi8i9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'PublicGetUserPlatformAccountsV3' test.out

#- 264 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    'gOVqajUW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'PublicListJusticePlatformAccountsV3' test.out

#- 265 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "rgEsWDta", "platformUserId": "Kzn8dZwn"}' \
    'nGeZsZVg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'PublicLinkPlatformAccount' test.out

#- 266 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["bPzPFbrO", "MZMgWkFN", "7Tpkx6Gc"], "requestId": "fyOg6ZUr"}' \
    'rp9ubg9m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'PublicForceLinkPlatformWithProgression' test.out

#- 267 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    'ndW2JKmQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'PublicGetPublisherUserV3' test.out

#- 268 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'afUs2bxY' \
    'ztOEyVbK' \
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
    'If1ZbzgU' \
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
    'wd8DHoCQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 273 LinkHeadlessAccountToMyAccountV3
$PYTHON -m $MODULE 'iam-link-headless-account-to-my-account-v3' \
    '{"chosenNamespaces": ["ykmXHYmk", "Rlg7gYs6", "unPYQ9jN"], "oneTimeLinkCode": "QN1di1ld"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'LinkHeadlessAccountToMyAccountV3' test.out

#- 274 PublicSendVerificationLinkV3
$PYTHON -m $MODULE 'iam-public-send-verification-link-v3' \
    '{"languageTag": "hOh6Hvjn"}' \
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
    'YuV7NfC4' \
    'A2ODiZhb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'PlatformAuthenticateSAMLV3Handler' test.out

#- 277 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'fb8QqCyK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'LoginSSOClient' test.out

#- 278 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    '1XH9D6vl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'LogoutSSOClient' test.out

#- 279 RequestGameTokenResponseV3
$PYTHON -m $MODULE 'iam-request-game-token-response-v3' \
    '5eFdFfgK' \
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
    '46GjCWaP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'AdminGetUserDeviceBansV4' test.out

#- 283 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "8huTmnq3", "deviceId": "FGQn3Ahu", "deviceType": "5wxq6oJq", "enabled": false, "endDate": "5SzoCV8Z", "ext": {"Mi2o1nR4": {}, "82D6gNCl": {}, "k9c87hos": {}}, "reason": "aPFC5zBW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'AdminBanDeviceV4' test.out

#- 284 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    '3ZgVZCj9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'AdminGetDeviceBanV4' test.out

#- 285 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": false}' \
    '029BiJWO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'AdminUpdateDeviceBanV4' test.out

#- 286 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    'G1m7MKcl' \
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
    'r5igjNTV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'AdminGetDeviceBansV4' test.out

#- 289 AdminDecryptDeviceV4
$PYTHON -m $MODULE 'iam-admin-decrypt-device-v4' \
    'ItrH2X78' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'AdminDecryptDeviceV4' test.out

#- 290 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    'hxJgaVfw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'AdminUnbanDeviceV4' test.out

#- 291 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    '5Vnyq8Oz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'AdminGetUsersByDeviceV4' test.out

#- 292 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"count": 94}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'AdminCreateTestUsersV4' test.out

#- 293 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["c6VbE0AG", "cekjMNHu", "PXtz8tXx"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'AdminBulkCheckValidUserIDV4' test.out

#- 294 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "rmzafMUg", "country": "uyDoN91u", "dateOfBirth": "c28HoSpG", "displayName": "t1g0GGbT", "languageTag": "4Hf2PPKO", "userName": "ldkbgX9C"}' \
    'WJKwXXSb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'AdminUpdateUserV4' test.out

#- 295 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "v5eg9q86", "emailAddress": "IaDFjjx6"}' \
    'uZerWbtw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'AdminUpdateUserEmailAddressV4' test.out

#- 296 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    'TX9gNRBy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'AdminDisableUserMFAV4' test.out

#- 297 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'jbE8lOLA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'AdminListUserRolesV4' test.out

#- 298 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["fTXKLzbr", "ddqcKLa7", "LevxNHOS"], "roleId": "EhQRZIp6"}' \
    '93lRwtc4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateUserRoleV4' test.out

#- 299 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["3atCuCFx", "bfbz4aQE", "RziPL4dH"], "roleId": "hOqG5KDd"}' \
    'Uvk0LEi2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'AdminAddUserRoleV4' test.out

#- 300 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["6Ls7mjRx", "NmvvNtjJ", "NQepUTGh"], "roleId": "wlY4lPzl"}' \
    'sCR5rVsy' \
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
    '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "H7WjP7Hu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'AdminCreateRoleV4' test.out

#- 303 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'Gz3b5WAE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'AdminGetRoleV4' test.out

#- 304 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'vdRF9bqM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'AdminDeleteRoleV4' test.out

#- 305 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "ro5B19VE"}' \
    '838c7Oyd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'AdminUpdateRoleV4' test.out

#- 306 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 98, "resource": "RA09rW8i", "schedAction": 43, "schedCron": "krFWJhe0", "schedRange": ["3coRFok5", "d3AyGrZO", "8GuoXNSo"]}, {"action": 98, "resource": "xsjqbCKp", "schedAction": 78, "schedCron": "UWipz9C0", "schedRange": ["5YabFX4F", "CK5ucTFs", "AFzaO3yJ"]}, {"action": 32, "resource": "Wm8RQvRU", "schedAction": 2, "schedCron": "RytER1qd", "schedRange": ["TelFAadM", "9y66Drf4", "SSGGt3Mi"]}]}' \
    'BKohow3k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'AdminUpdateRolePermissionsV4' test.out

#- 307 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 75, "resource": "Aw4v3q6J", "schedAction": 89, "schedCron": "uH1mMIfO", "schedRange": ["CDyVAHrH", "ncR5dShq", "iBUI9esS"]}, {"action": 37, "resource": "vqsL9Som", "schedAction": 34, "schedCron": "pK2q8kxR", "schedRange": ["4BuEksS2", "A9VOA8H9", "VeHv0L2A"]}, {"action": 4, "resource": "jsodyJQV", "schedAction": 98, "schedCron": "uGJVl8xs", "schedRange": ["1WId9Wla", "lqshF9Rh", "2o7GCQGP"]}]}' \
    'CxwEdkyu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'AdminAddRolePermissionsV4' test.out

#- 308 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["T3MgzReR", "q0112ISA", "rROIodcm"]' \
    'M6v2AEoz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'AdminDeleteRolePermissionsV4' test.out

#- 309 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'WWaYvBLE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'AdminListAssignedUsersV4' test.out

#- 310 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["46bpuJip", "8JyxJ39v", "rtuWWrqT"], "namespace": "ZbSqBSKp", "userId": "8AmgwhYz"}' \
    'k33J34fi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'AdminAssignUserToRoleV4' test.out

#- 311 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "TxK63OHp", "userId": "nUCGBVfp"}' \
    'ctNFUsUQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'AdminRevokeUserFromRoleV4' test.out

#- 312 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "6ZXQcb2o", "country": "1J5euLAb", "dateOfBirth": "Bgejqc0a", "displayName": "pxqZ209B", "languageTag": "ySn8aUaG", "userName": "lAyvIslt"}' \
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
    '7N1qcxKs' \
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
    '4nlf1Mfq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'AdminMakeFactorMyDefaultV4' test.out

#- 326 AdminInviteUserV4
$PYTHON -m $MODULE 'iam-admin-invite-user-v4' \
    '{"assignedNamespaces": ["UZXkjHvc", "UOTlxNf0", "9pefgFIi"], "emailAddresses": ["JssShBKs", "QjXvfQgQ", "Dt6ce8ND"], "isAdmin": true, "namespace": "ErA82FrR", "roleId": "1GSogkew"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'AdminInviteUserV4' test.out

#- 327 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "zTOqKkcj", "policyId": "Rh3l2gAJ", "policyVersionId": "OTCbx7J3"}, {"isAccepted": false, "localizedPolicyVersionId": "dJDnE73G", "policyId": "LmSZns5o", "policyVersionId": "wBhoUg4L"}, {"isAccepted": true, "localizedPolicyVersionId": "AEAHQpBO", "policyId": "gHEP5l94", "policyVersionId": "s7CbIJ7e"}], "authType": "EMAILPASSWD", "country": "PlLitytG", "dateOfBirth": "ka7Kv5Ta", "displayName": "cQKF4OlR", "emailAddress": "GdmXxETL", "password": "EQrr3KCA", "passwordMD5Sum": "V9alq3hK", "username": "1G4kKooS", "verified": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'PublicCreateTestUserV4' test.out

#- 328 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "kSSV8e1M", "policyId": "gTTLS2Fg", "policyVersionId": "arY903IN"}, {"isAccepted": true, "localizedPolicyVersionId": "yEfRBEj7", "policyId": "qms9AGQE", "policyVersionId": "xPhgr9gG"}, {"isAccepted": false, "localizedPolicyVersionId": "secYbcOp", "policyId": "R45VDlvS", "policyVersionId": "c0Mr7Imw"}], "authType": "EMAILPASSWD", "code": "H2wToOnq", "country": "9U5lyW89", "dateOfBirth": "Xwt3wmRT", "displayName": "rDCjhnKv", "emailAddress": "sHezWTqg", "password": "YPixtHk6", "passwordMD5Sum": "lWq6tEeU", "reachMinimumAge": false, "username": "a16Bw3Jb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'PublicCreateUserV4' test.out

#- 329 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "mJqjRYld", "policyId": "cTpdeCD9", "policyVersionId": "XPRi4bAQ"}, {"isAccepted": true, "localizedPolicyVersionId": "7VE2wL8Y", "policyId": "4JFVUdzA", "policyVersionId": "8bvXlDhG"}, {"isAccepted": true, "localizedPolicyVersionId": "T3fDSrSH", "policyId": "rkoqv2mM", "policyVersionId": "6soMaTvQ"}], "authType": "EMAILPASSWD", "country": "Ij5bGKSu", "dateOfBirth": "opWQbaCv", "displayName": "dPSq8Z27", "password": "GpvHCDx5", "reachMinimumAge": false, "username": "JZ5z6guj"}' \
    'pFzlPspQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'CreateUserFromInvitationV4' test.out

#- 330 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "D9IRIpDD", "country": "ubntPCFx", "dateOfBirth": "feoW2NdS", "displayName": "WzOXjO1N", "languageTag": "QUqWHBW7", "userName": "8XREZCiT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'PublicUpdateUserV4' test.out

#- 331 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "NAxq26gZ", "emailAddress": "rPqCsSDs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'PublicUpdateUserEmailAddressV4' test.out

#- 332 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "pvgM16sZ", "country": "6rjnkH4E", "dateOfBirth": "xObppC6C", "displayName": "MYDm5ge6", "emailAddress": "59UDEOF6", "password": "gp5Ufmjt", "reachMinimumAge": false, "username": "oNewWjwM", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 333 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "DKEt6Jhb", "password": "J0fwTDaq", "username": "6b5RpMwh"}' \
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
    'WPtndriX' \
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
    'U9loOxpm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicMakeFactorMyDefaultV4' test.out

#- 348 PublicInviteUserV4
$PYTHON -m $MODULE 'iam-public-invite-user-v4' \
    '{"emailAddress": "EuwDVc12", "namespace": "r0DVUGgG", "namespaceDisplayName": "HkapTCaf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'PublicInviteUserV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
