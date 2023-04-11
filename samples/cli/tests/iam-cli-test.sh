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
iam-public-get-user-ban-history-v3 'RuX91uYm' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 'trHJbEGT' --login_with_auth "Bearer foo"
iam-public-get-user-information-v3 'Uj7YjERL' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 '1rEQG02z' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 'ccA8wvLs' --login_with_auth "Bearer foo"
iam-public-list-justice-platform-accounts-v3 'WUNd6lPK' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "vqDejvqk", "platformUserId": "lTSvDwuO"}' 'rP9lzpiX' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["0VuFpZum", "7izxe7NP", "zjOa8E7w"], "requestId": "Y76PxLv9"}' 'HBEUe89A' --login_with_auth "Bearer foo"
iam-public-get-publisher-user-v3 'wEw1HO4F' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 'nKtx4XLK' 'AmlDr19u' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 'J3nq6Ver' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-public-get-link-headless-account-to-my-account-conflict-v3 'zVCcI8y3' --login_with_auth "Bearer foo"
iam-link-headless-account-to-my-account-v3 '{"chosenNamespaces": ["Cz0YqCKU", "h5RD9vNA", "p4jinFpn"], "oneTimeLinkCode": "Q5xF9wwb"}' --login_with_auth "Bearer foo"
iam-public-send-verification-link-v3 '{"languageTag": "vMZyeDeR"}' --login_with_auth "Bearer foo"
iam-public-verify-user-by-link-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler 'nVfPUa6x' 'VVBcq3wZ' --login_with_auth "Bearer foo"
iam-login-sso-client 'pFIYeAg7' --login_with_auth "Bearer foo"
iam-logout-sso-client '9HcLJXJ7' --login_with_auth "Bearer foo"
iam-request-game-token-response-v3 'mpVI6eTY' --login_with_auth "Bearer foo"
iam-admin-get-devices-by-user-v4 --login_with_auth "Bearer foo"
iam-admin-get-banned-devices-v4 --login_with_auth "Bearer foo"
iam-admin-get-user-device-bans-v4 'AjdPlCiQ' --login_with_auth "Bearer foo"
iam-admin-ban-device-v4 '{"comment": "QC35cj4K", "deviceId": "yOVgvnWb", "deviceType": "fRJtsB7c", "enabled": true, "endDate": "Z2QUAxJr", "ext": {"INPXppPN": {}, "O3AfmXcg": {}, "wC3IN6tv": {}}, "reason": "KgLB9QmJ"}' --login_with_auth "Bearer foo"
iam-admin-get-device-ban-v4 'IOq9dP5s' --login_with_auth "Bearer foo"
iam-admin-update-device-ban-v4 '{"enabled": true}' 'Kt4sUman' --login_with_auth "Bearer foo"
iam-admin-generate-report-v4 'YxM0UHZV' --login_with_auth "Bearer foo"
iam-admin-get-device-types-v4 --login_with_auth "Bearer foo"
iam-admin-get-device-bans-v4 'NYzGMNIp' --login_with_auth "Bearer foo"
iam-admin-decrypt-device-v4 'WoSLkUrf' --login_with_auth "Bearer foo"
iam-admin-unban-device-v4 'uf4U3WeY' --login_with_auth "Bearer foo"
iam-admin-get-users-by-device-v4 'eA9t2ENK' --login_with_auth "Bearer foo"
iam-admin-create-test-users-v4 '{"count": 75}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["mJOlzwm9", "Su4FnS98", "QqftSjq7"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "sn8yreci", "country": "PLfkVyyJ", "dateOfBirth": "sbGpO6Jg", "displayName": "ehDJxEN7", "languageTag": "JlZc8LMq", "userName": "1o2jZWu4"}' 'yA3r0u4q' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "1bTHXIjf", "emailAddress": "JKyFlM0u"}' '1uuoVdn9' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 'yVoSlKNc' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 'hPHNL4X3' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["LLaGPGdq", "LE8Sohhh", "uiTnJarY"], "roleId": "YkHBDdSz"}' 'BXdxapwh' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["d5IQYBQu", "xLvPuWYv", "E3fsNy9Z"], "roleId": "9OhxXvCp"}' '9y7fLD2q' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["fCXnlUnq", "xT1WsRNM", "ZcA92hzC"], "roleId": "7MNa8vVe"}' '4MHX6AgM' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "90AyyUJy"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 'AK5PRMRM' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 'wdvl0hv6' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "GxBW2tQF"}' '5tkTjgJa' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 80, "resource": "vtxk9hVK", "schedAction": 24, "schedCron": "4bkcgepq", "schedRange": ["txjbrzte", "e7QLTGAa", "k7Kaol01"]}, {"action": 61, "resource": "mj7gyQ7X", "schedAction": 6, "schedCron": "k42miteR", "schedRange": ["5eQAe1rz", "mmgqBPRm", "d6mO4oI8"]}, {"action": 75, "resource": "Zm9yEYWN", "schedAction": 67, "schedCron": "aNBJ5y7a", "schedRange": ["xEkvI4ox", "ZEDxGiBn", "Nbn0zaf7"]}]}' 'CaOSlHXr' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 96, "resource": "KNqX9LM2", "schedAction": 70, "schedCron": "5mtqISQ8", "schedRange": ["3TTbtefX", "WznDe4LQ", "dXfFBii2"]}, {"action": 89, "resource": "Gp1r0sVZ", "schedAction": 57, "schedCron": "LJAOddIL", "schedRange": ["2l3hPjND", "Kv2LWfXq", "jr8fS79E"]}, {"action": 27, "resource": "18T1IxVW", "schedAction": 59, "schedCron": "aZ3y6i38", "schedRange": ["XQjLDRqk", "piFK5Bti", "Q272Uo9U"]}]}' 'BJWodpdw' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["sX1jorcy", "R0x3YiHF", "8ITGPRQB"]' 'CgIs1Q2l' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'zxl0yF5m' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["77TTh4gU", "oj8u2WRc", "LiEtzVln"], "namespace": "kflfn7pH", "userId": "Y48F1dl1"}' 'q92m3iRl' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "fnBAk0Cw", "userId": "iAsR65yQ"}' '9ssuHdGm' --login_with_auth "Bearer foo"
iam-admin-invite-user-new-v4 '{"assignedNamespaces": ["xncCEr0K", "cgeqzGbr", "uNB72HHM"], "emailAddresses": ["kjzyBB4U", "FKiaoV0V", "Oem2yqPs"], "isAdmin": false, "namespace": "FxKybPkb", "roleId": "uS6x9cLJ"}' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "1APnNlsa", "country": "2bRBr27f", "dateOfBirth": "VMWuAfDq", "displayName": "LMR919IZ", "languageTag": "PKOKiAVQ", "userName": "XXOmqFHL"}' --login_with_auth "Bearer foo"
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
iam-admin-enable-my-email-v4 'byXmgCNi' --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 'XH8uenbC' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "koyHjCH5", "policyId": "olYLETRp", "policyVersionId": "ABAmO2EG"}, {"isAccepted": true, "localizedPolicyVersionId": "BL4BzhDU", "policyId": "jhKPwbwc", "policyVersionId": "vQU5kG8b"}, {"isAccepted": false, "localizedPolicyVersionId": "GFmPAnOk", "policyId": "DiJq4xQy", "policyVersionId": "e7HqnVK3"}], "authType": "EMAILPASSWD", "country": "VeOWs9mf", "dateOfBirth": "VQh3jLBt", "displayName": "n9pxpE7B", "emailAddress": "YtzB0B4C", "password": "xyQrUpIF", "passwordMD5Sum": "vORxTi79", "username": "DpSjb39u", "verified": false}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "2hxcJ2Fn", "policyId": "emn7M23S", "policyVersionId": "zUo4hNBD"}, {"isAccepted": false, "localizedPolicyVersionId": "CvNowNmd", "policyId": "pcJgF88y", "policyVersionId": "SNq4Mj7m"}, {"isAccepted": true, "localizedPolicyVersionId": "69yg9ADC", "policyId": "GiXaLs2x", "policyVersionId": "jHkinOD9"}], "authType": "EMAILPASSWD", "code": "JWZjNRSz", "country": "OTqcVNX3", "dateOfBirth": "ahvxw9gw", "displayName": "whTnjN6w", "emailAddress": "KZGW4y3f", "password": "0R9s2knd", "passwordMD5Sum": "hhZhwAiL", "reachMinimumAge": true, "username": "ZsWhkS47"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "ch4IjDq9", "policyId": "aT3qZyI0", "policyVersionId": "rYsWucAk"}, {"isAccepted": true, "localizedPolicyVersionId": "zYQCAaPJ", "policyId": "goxGJoJa", "policyVersionId": "SzUtY4ZD"}, {"isAccepted": true, "localizedPolicyVersionId": "tb0U4pH1", "policyId": "6NUsVY21", "policyVersionId": "NVIs7NRe"}], "authType": "EMAILPASSWD", "country": "S0IeHpWC", "dateOfBirth": "ugmfOL0Q", "displayName": "QpxsuD8P", "password": "Gqku59eF", "reachMinimumAge": true, "username": "rOXyDYz9"}' 'vMUOPG0i' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "HDT8QbF7", "country": "gHPTPQbv", "dateOfBirth": "Lt2NRqJG", "displayName": "IKzLyH1y", "languageTag": "72L13Orn", "userName": "yx34luLd"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "vtsTKXMj", "emailAddress": "iw6gYPvf"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "n2Qt9iyq", "country": "3Nyk8ncu", "dateOfBirth": "2Z3eDHH9", "displayName": "WaVO4iKh", "emailAddress": "DcJ7TCcN", "password": "IsQ3Pupp", "reachMinimumAge": true, "username": "6mVV7JS9", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"emailAddress": "MudcxlCV", "password": "4cNbJGQ5", "username": "7lPdinpj"}' --login_with_auth "Bearer foo"
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
iam-public-enable-my-email-v4 'S2DRfGt9' --login_with_auth "Bearer foo"
iam-public-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-public-make-factor-my-default-v4 'GlyZVQ4X' --login_with_auth "Bearer foo"
iam-public-invite-user-v4 '{"emailAddress": "67tPZSTp", "namespace": "Pq3xjrEl", "namespaceDisplayName": "vvDgw0ag"}' --login_with_auth "Bearer foo"
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
echo "1..349"

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
    '[{"field": "7kSWE0Hi", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "blockedWord": ["LryiEXqv", "UWDjU1G0", "EVjVZw1T"], "description": [{"language": "oLuPakQN", "message": ["1MpOs1RV", "Frcg2CXx", "epx78fvs"]}, {"language": "yhE2BKty", "message": ["TDSIM7mk", "mvZ7Cmsh", "4US8o4jf"]}, {"language": "MANPpmZD", "message": ["dMiCxmuC", "CVuFjS1G", "C1d2b92B"]}], "isCustomRegex": true, "letterCase": "vEgj3HOm", "maxLength": 16, "maxRepeatingAlphaNum": 52, "maxRepeatingSpecialCharacter": 6, "minCharType": 100, "minLength": 19, "regex": "m428XejR", "specialCharacterLocation": "F94NIY9n", "specialCharacters": ["MrBZo0lN", "UBDShHD3", "2vvL28FP"]}}, {"field": "wTiXfLcx", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "blockedWord": ["MrKYi0Zx", "s5SWCqZX", "HLLa31oQ"], "description": [{"language": "f7BULnZD", "message": ["hutDM6Bq", "guqD5xxG", "xBWtnTKU"]}, {"language": "e2znsqPz", "message": ["PkwCBo2S", "wCUsTag4", "MLAo3m61"]}, {"language": "P2xaNfmn", "message": ["8Onb1a9g", "Mz0F2UBR", "mMhAbUWm"]}], "isCustomRegex": true, "letterCase": "hdYLWzMu", "maxLength": 43, "maxRepeatingAlphaNum": 15, "maxRepeatingSpecialCharacter": 81, "minCharType": 53, "minLength": 58, "regex": "kUY0n0BA", "specialCharacterLocation": "ZkwbYkBL", "specialCharacters": ["yO6A0Fqf", "hnaB3YxK", "NdOTacCc"]}}, {"field": "JfIfXshu", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "blockedWord": ["sxe6A6Rp", "mKDebNky", "lbynkgT9"], "description": [{"language": "vayLLiiz", "message": ["ac7Ge6zK", "Jdlt7rjF", "5RaJwvkW"]}, {"language": "Vco2LTo5", "message": ["ijlvDF8q", "BWCQ9dLW", "YyS8zdhM"]}, {"language": "eBXH8x6H", "message": ["dVfZVDAi", "U6iJOF7J", "KZFNk2NK"]}], "isCustomRegex": true, "letterCase": "1lX8DD4M", "maxLength": 37, "maxRepeatingAlphaNum": 97, "maxRepeatingSpecialCharacter": 23, "minCharType": 56, "minLength": 35, "regex": "iCoeC5we", "specialCharacterLocation": "XJl7PeiM", "specialCharacters": ["H8z8dVej", "8N2yv6VT", "nOK7xAvM"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    '7tuL81ls' \
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
    '{"ageRestriction": 31}' \
    'xxSVp3Gd' \
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
    '{"ban": "2TK0HzYv", "comment": "iTgYmx82", "endDate": "JVBRLPZ6", "reason": "Iz8tne5d", "skipNotif": false, "userIds": ["VsXsygWb", "jE2opXtd", "sJQeJ1to"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "o0qvxphT", "userId": "LEEBGTtZ"}, {"banId": "yTjdKNKg", "userId": "YazujsmS"}, {"banId": "mylT1Ytx", "userId": "Iq73aMb4"}]}' \
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
    '{"audiences": ["8jISd97K", "ORRhxSWL", "WLNfHRD3"], "baseUri": "V15QaGGL", "clientId": "46LuxJF3", "clientName": "sbeqWBdQ", "clientPermissions": [{"action": 42, "resource": "Ns5kgSZZ", "schedAction": 81, "schedCron": "7MSBqabU", "schedRange": ["XOGkkoMU", "Zn1YXj5z", "FZeOCOR9"]}, {"action": 82, "resource": "iSpPFnZB", "schedAction": 73, "schedCron": "IKrRBrYV", "schedRange": ["zi9ui3lv", "ozTt9TsH", "7A0TuU2a"]}, {"action": 77, "resource": "PU1AziBO", "schedAction": 70, "schedCron": "ys6GdkDc", "schedRange": ["os5uVJ0B", "JfZ0jvA5", "4CSqZFDs"]}], "clientPlatform": "O1skRjOU", "deletable": false, "description": "SMfQVQa6", "namespace": "blj9Rdd8", "oauthAccessTokenExpiration": 3, "oauthAccessTokenExpirationTimeUnit": "1OJYMnW4", "oauthClientType": "9rWynp1c", "oauthRefreshTokenExpiration": 21, "oauthRefreshTokenExpirationTimeUnit": "9vQe0dHJ", "parentNamespace": "fF6KIuvn", "redirectUri": "RCa9Jkty", "scopes": ["BdxkZKrE", "WFw9GYxj", "iiOQAD77"], "secret": "ci0vfWVZ", "twoFactorEnabled": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    'sxsChScl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'Skb5aBi9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["K9zyv6gF", "ZXI5nXJ7", "hLi6Hwew"], "baseUri": "eRmyo91d", "clientName": "In7QqXBD", "clientPermissions": [{"action": 72, "resource": "2QSPAd9s", "schedAction": 47, "schedCron": "oEV6tCdr", "schedRange": ["xw1KOPhu", "vHuYrGWD", "K41uMOC0"]}, {"action": 26, "resource": "lvGjVQ4a", "schedAction": 8, "schedCron": "ktF5wnJD", "schedRange": ["g9Q3WXiy", "dCOInVol", "sr6CHmj7"]}, {"action": 10, "resource": "3vLwtYEJ", "schedAction": 93, "schedCron": "eFpvtDte", "schedRange": ["toQVFL8L", "NW11vtpa", "Txi7k489"]}], "clientPlatform": "jRCn48bv", "deletable": false, "description": "Ti1t530W", "namespace": "j1WfzIvc", "oauthAccessTokenExpiration": 0, "oauthAccessTokenExpirationTimeUnit": "VlSXrA3X", "oauthRefreshTokenExpiration": 96, "oauthRefreshTokenExpirationTimeUnit": "aTS6xBbN", "redirectUri": "rSUAW2ak", "scopes": ["7ISDrBVg", "6NuDZvPb", "1kuUfNfU"], "twoFactorEnabled": true}' \
    'TyBG5dCU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 30, "resource": "EaqbzHvD"}, {"action": 60, "resource": "69IN4V1O"}, {"action": 6, "resource": "MGBA6JXD"}]}' \
    'pA1tIC45' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 58, "resource": "iLjLyZrX"}, {"action": 35, "resource": "4hXONgUw"}, {"action": 73, "resource": "AdTn6xBh"}]}' \
    'rciryLm6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '78' \
    'rkadH5Y4' \
    '1SLjCPrF' \
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
    'a05Xl5TP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "C5GODS44", "AWSCognitoRegion": "bmm7jPdK", "AWSCognitoUserPool": "LddfdsUq", "AllowedClients": ["jXVzW1Qq", "xnWR5she", "LgsAF4ct"], "AppId": "v5guycGi", "AuthorizationEndpoint": "q9j2EyIk", "ClientId": "nfLDpgHn", "Environment": "MOn8nc3g", "FederationMetadataURL": "UZ8ZFyyE", "GenericOauthFlow": true, "IsActive": true, "Issuer": "BXuJBqK4", "JWKSEndpoint": "QtEydPWL", "KeyID": "PBYiR3Ub", "NetflixCertificates": {"encryptedPrivateKey": "Jc1ZYapx", "encryptedPrivateKeyName": "7C477etq", "publicCertificate": "gfOJDUT0", "publicCertificateName": "uKAPrARy", "rootCertificate": "a2IMlNiX", "rootCertificateName": "pF4qvsUU"}, "OrganizationId": "pHqi33Tc", "PlatformName": "BGkc0HjU", "RedirectUri": "cnkpU9oV", "RegisteredDomains": [{"affectedClientIDs": ["zl2kBuLF", "XIeCEKZU", "Tz3GvCAZ"], "domain": "5j24acYH", "namespaces": ["brryHB6G", "O9zP3Fae", "pA3b3YJ9"], "roleId": "nJM6vtT2"}, {"affectedClientIDs": ["7xv85K5M", "U2qmbeqa", "VemINdCl"], "domain": "pF7OvlBI", "namespaces": ["Egjse5kd", "6GEDo08y", "q5E5HleL"], "roleId": "oog4me2N"}, {"affectedClientIDs": ["BFp62xlX", "vVcJerTP", "W02PWsHi"], "domain": "KYArAxnK", "namespaces": ["BfBfDlrQ", "QuAc10Dj", "jwMv4vrI"], "roleId": "PRtvhQIy"}], "Secret": "LarjaLOK", "TeamID": "nX51yAB8", "TokenAuthenticationType": "Pa3uNGKh", "TokenClaimsMapping": {"aLlJzJMS": "nJIIgsAV", "maGYxUX1": "B9oVuzG2", "CnYX2YBF": "2g7TVtzY"}, "TokenEndpoint": "EHUodh3i", "UserInfoEndpoint": "UfBthbep", "UserInfoHTTPMethod": "UCTWiZ1u", "scopes": ["qh7GAi4F", "EIu44u83", "ZLRxYlYq"]}' \
    'lpq03BGd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    'Ik4oEogF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "VGR71rJO", "AWSCognitoRegion": "By6lsj1A", "AWSCognitoUserPool": "KGBjnHma", "AllowedClients": ["Au4YK87D", "YAWWcbcb", "GWmKgE8C"], "AppId": "Z4AELr5l", "AuthorizationEndpoint": "raa5v5P5", "ClientId": "Cj8hgFsq", "Environment": "HC9h5JPi", "FederationMetadataURL": "MEtgKuiG", "GenericOauthFlow": true, "IsActive": false, "Issuer": "2CX0rITa", "JWKSEndpoint": "jpwHITGe", "KeyID": "HTnqRbzB", "NetflixCertificates": {"encryptedPrivateKey": "B9ZFgJbQ", "encryptedPrivateKeyName": "3Fj1umx4", "publicCertificate": "ItzkMJ7c", "publicCertificateName": "udf4r916", "rootCertificate": "GPrhn2et", "rootCertificateName": "VIQvRkQJ"}, "OrganizationId": "AtDUH9tx", "PlatformName": "60AehGz1", "RedirectUri": "ermJYXsY", "RegisteredDomains": [{"affectedClientIDs": ["gL7TfyIl", "AwjTZdRZ", "JJzWZwvT"], "domain": "X2bamSCv", "namespaces": ["X1nwvSWd", "DwD7WJHz", "gNZUKsI5"], "roleId": "y0mR3zMy"}, {"affectedClientIDs": ["TsftKqns", "IJctAdxy", "ZVKHA9Dk"], "domain": "aSOWgtg8", "namespaces": ["yw8lHEbV", "DwBAqanO", "lscRIWw8"], "roleId": "2k5K5VTk"}, {"affectedClientIDs": ["dubkOFld", "MCQ98JH4", "n0JtgqzZ"], "domain": "v5kVu4S9", "namespaces": ["5mj8YRva", "e4f4lhBP", "barbWEm8"], "roleId": "bVtZcfVC"}], "Secret": "PdQhim9Q", "TeamID": "KUAFTVYe", "TokenAuthenticationType": "lIlGJg9w", "TokenClaimsMapping": {"dc8bihhW": "jfZpfcFB", "UsnnDJlm": "D1iEokbU", "iYzCQh2i": "NTwtnohd"}, "TokenEndpoint": "dMzMTQ9P", "UserInfoEndpoint": "7sYLDWAJ", "UserInfoHTTPMethod": "OA75K4BY", "scopes": ["J2fkqYJo", "F2FI3vyy", "qRzc20O7"]}' \
    'FdsJP1G9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["tyBTfERX", "dvgD1Qf7", "Ot2DkUt3"], "assignedNamespaces": ["yexZBRvx", "YnEBhXtA", "VxCd3meT"], "domain": "rT7cF9oV", "roleId": "Ch89wNOk"}' \
    'KYssVejc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "L3kR3hCG"}' \
    'NgaJmuAL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    'lMQl9RLr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "thbfp0Vg", "apiKey": "weLlT2sY", "appId": "3SsTnDQY", "federationMetadataUrl": "7kKU2u06", "isActive": true, "redirectUri": "wV3zDuqV", "secret": "lVTypcYP", "ssoUrl": "K8IxrSZu"}' \
    'xWl0Je4f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'JIyFAm3D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "Qht4JwnP", "apiKey": "S2urJqer", "appId": "obWMZGVL", "federationMetadataUrl": "5KLTxahW", "isActive": false, "redirectUri": "hWWwaxyM", "secret": "chkt8l5I", "ssoUrl": "PSrwrJl7"}' \
    'wYIVw13N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'Co9yXlbQ' \
    '52FTHTCj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    '6SEAzT7T' \
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
    '{"userIds": ["OpyiuvvQ", "Um29Iacq", "4XRLaA64"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["3nTMtXSA", "yejnny0J", "u13b6o5u"], "isAdmin": true, "namespace": "BBJI5Jxy", "roles": ["tpcubN4A", "UUPFPscZ", "sXeJOD4D"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'AdminInviteUserV3' test.out

#- 146 AdminQueryThirdPlatformLinkHistoryV3
$PYTHON -m $MODULE 'iam-admin-query-third-platform-link-history-v3' \
    'MtqfIGiG' \
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
    '{"listEmailAddressRequest": ["JovgWSRx", "Z8N4UQ2f", "g3V1o2x0"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'AdminGetBulkUserByEmailAddressV3' test.out

#- 150 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'hL5DuBDq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AdminGetUserByUserIdV3' test.out

#- 151 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "MyIAzWze", "country": "94MEdJFA", "dateOfBirth": "y2JTllJk", "displayName": "RGB8jqJE", "languageTag": "d6eqqsBV", "userName": "yONV0JRt"}' \
    'ozI0jpli' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserV3' test.out

#- 152 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'CFQ6WgJp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'AdminGetUserBanV3' test.out

#- 153 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "GPigdc5V", "comment": "yC4qvWjV", "endDate": "ac1cQvSx", "reason": "gTNIUzxD", "skipNotif": false}' \
    'mOuhCkZu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AdminBanUserV3' test.out

#- 154 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": true, "skipNotif": false}' \
    'zJ20NFRJ' \
    'IhFXR2dY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'AdminUpdateUserBanV3' test.out

#- 155 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "prPmbpup", "emailAddress": "tECGd5cd", "languageTag": "XC2Sesc6"}' \
    'y68whNBY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminSendVerificationCodeV3' test.out

#- 156 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "l9iCqfW6", "ContactType": "rqGOQny4", "LanguageTag": "ij4ysYPo", "validateOnly": false}' \
    'SH7eKDfR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'AdminVerifyAccountV3' test.out

#- 157 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'cngEpTnR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'GetUserVerificationCode' test.out

#- 158 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'UQr3RLOM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserDeletionStatusV3' test.out

#- 159 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"enabled": true}' \
    'vEx4gqDY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminUpdateUserDeletionStatusV3' test.out

#- 160 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "6jwyKRxh", "country": "kLe5zohg", "dateOfBirth": "9s9utRQt", "displayName": "28b6o3K0", "emailAddress": "COF74tz6", "password": "aeXZOYwb", "validateOnly": true}' \
    'aJYdMqGe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminUpgradeHeadlessAccountV3' test.out

#- 161 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'gcg3eRvB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminDeleteUserInformationV3' test.out

#- 162 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'ZXN3cjIX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminGetUserLoginHistoriesV3' test.out

#- 163 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "mFWRJnj8", "newPassword": "xN7HDPTU", "oldPassword": "EDPN1Kb4"}' \
    'UTPWDXTS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AdminResetPasswordV3' test.out

#- 164 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 3, "Resource": "E4mv12FN", "SchedAction": 49, "SchedCron": "Nf95lGlP", "SchedRange": ["rf6obIdn", "I6Ag7eUY", "cYJ4QzXC"]}, {"Action": 25, "Resource": "X8fBuBSK", "SchedAction": 78, "SchedCron": "HP5SVPvR", "SchedRange": ["LiDi0mNH", "b6Lx8eq8", "SGNwEQO8"]}, {"Action": 8, "Resource": "j17xGhaB", "SchedAction": 74, "SchedCron": "Bwb6CjZU", "SchedRange": ["MRf2VJet", "Wsokvx3B", "HuTEczr9"]}]}' \
    'KjQ3ttz8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserPermissionV3' test.out

#- 165 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 79, "Resource": "V7nmDk29", "SchedAction": 25, "SchedCron": "yssSA8nP", "SchedRange": ["5PQjpzk2", "Tb7iYdmN", "ZWosrsVB"]}, {"Action": 84, "Resource": "WECdjWYr", "SchedAction": 27, "SchedCron": "NscofwYL", "SchedRange": ["QcDvkaEI", "IPoJT83z", "EGXmVBZL"]}, {"Action": 51, "Resource": "YmuYCPG1", "SchedAction": 38, "SchedCron": "1q9GA5Dy", "SchedRange": ["dC2D8UT6", "KOc4VPDU", "R9ayazqX"]}]}' \
    'RqegIUic' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminAddUserPermissionsV3' test.out

#- 166 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 22, "Resource": "XXzxsBFr"}, {"Action": 95, "Resource": "lER2txs4"}, {"Action": 33, "Resource": "CejBd5o7"}]' \
    'iTST7R3K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionBulkV3' test.out

#- 167 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '4' \
    'bLhL8KXx' \
    '25FZfQIo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserPermissionV3' test.out

#- 168 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'dVBqQsBp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserPlatformAccountsV3' test.out

#- 169 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'CJBIXLGY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminGetListJusticePlatformAccounts' test.out

#- 170 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    'cwWVRK6U' \
    'Kk5ozrXA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminGetUserMapping' test.out

#- 171 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    '4HZHNyq9' \
    'odanhR1Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminCreateJusticeUser' test.out

#- 172 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "rm3thUvV", "platformUserId": "87yfkycL"}' \
    'SVdleSaA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminLinkPlatformAccount' test.out

#- 173 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "ylsmLYe2"}' \
    'phYOgT5k' \
    'DTyPl3dK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformUnlinkV3' test.out

#- 174 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'F7NXEjrJ' \
    'Mki8jvc3' \
    'P8Gwjg3I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminPlatformLinkV3' test.out

#- 175 AdminGetThirdPartyPlatformTokenLinkStatusV3
$PYTHON -m $MODULE 'iam-admin-get-third-party-platform-token-link-status-v3' \
    'OH0SDHgY' \
    'KqxJiFJd' \
    'rmj5vhzg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 176 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["sJwex7wq", "8ZPlXNaU", "NgdY2vfJ"]' \
    'uje5cPnm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminDeleteUserRolesV3' test.out

#- 177 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "GjTvYa5P", "roleId": "qx1K7qcA"}, {"namespace": "oijBPAp6", "roleId": "EPb988Nz"}, {"namespace": "xrDKVpUL", "roleId": "jjiw3NeV"}]' \
    'G4DJi9Da' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminSaveUserRoleV3' test.out

#- 178 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    'Mrc0WFgK' \
    'jE945x2C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminAddUserRoleV3' test.out

#- 179 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'PVYYG9Wv' \
    'oGmAmvaV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminDeleteUserRoleV3' test.out

#- 180 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": false, "reason": "5YfxnUNc"}' \
    'wjr7gSGh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateUserStatusV3' test.out

#- 181 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'nfuF4WZi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 182 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "QVICVpWd"}' \
    '3UM08gMX' \
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
    '{"adminRole": false, "deletable": true, "isWildcard": false, "managers": [{"displayName": "xRUY0ilr", "namespace": "NoFT98Sg", "userId": "tJd4Z5f8"}, {"displayName": "nfaKqdZF", "namespace": "LbZEHxsD", "userId": "xeR6d7r1"}, {"displayName": "SQw80JfM", "namespace": "pPrSqYyp", "userId": "RUnq5o4E"}], "members": [{"displayName": "TeCUYG9c", "namespace": "cTt7Wxw8", "userId": "OQ13t3uT"}, {"displayName": "w6zQuoZc", "namespace": "XQpoTOxe", "userId": "8y1jorNs"}, {"displayName": "g9ZKYCKo", "namespace": "ISyXtHzo", "userId": "WGdYohxM"}], "permissions": [{"action": 32, "resource": "HN9mVug2", "schedAction": 53, "schedCron": "WfG9BJ6F", "schedRange": ["VKlbYHtb", "PtaxvagS", "lpGgVTF6"]}, {"action": 97, "resource": "vehKqwCh", "schedAction": 46, "schedCron": "6XmRkCEc", "schedRange": ["fHDCdl59", "Wp9A3tXG", "ve6DdK6u"]}, {"action": 45, "resource": "4DtNp129", "schedAction": 15, "schedCron": "yk9fxtvs", "schedRange": ["geAxo57n", "KAbZpsbJ", "4Iu5KJ0y"]}], "roleName": "nxGBlacD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminCreateRoleV3' test.out

#- 185 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'CdFe8ATU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRoleV3' test.out

#- 186 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'qVxcSthr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteRoleV3' test.out

#- 187 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": false, "isWildcard": false, "roleName": "nMUBsnUf"}' \
    'uQIcSbUt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateRoleV3' test.out

#- 188 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    '5UGkInFG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminGetRoleAdminStatusV3' test.out

#- 189 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'puUsdtq4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateAdminRoleStatusV3' test.out

#- 190 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'dOwNESzC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminRemoveRoleAdminV3' test.out

#- 191 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'EW9dUVhZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRoleManagersV3' test.out

#- 192 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "jLftC3sC", "namespace": "S8CpLCqP", "userId": "D9CeDEdC"}, {"displayName": "nnL6Kt1B", "namespace": "jj3b8QM8", "userId": "Rr45ULqX"}, {"displayName": "QgvwD3Ps", "namespace": "KDJiWxQB", "userId": "waS7rDBf"}]}' \
    '2S54phbd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminAddRoleManagersV3' test.out

#- 193 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "yGDt47f9", "namespace": "GWRlE9hq", "userId": "z6rjDNo4"}, {"displayName": "rhjxUdMM", "namespace": "83WekqfW", "userId": "v04vvn9b"}, {"displayName": "k5qr8qs2", "namespace": "mqtnGAqX", "userId": "UjNypF6M"}]}' \
    'MqWpdEJs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminRemoveRoleManagersV3' test.out

#- 194 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'PoaIbYz8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminGetRoleMembersV3' test.out

#- 195 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "cK5jlpJd", "namespace": "re5ur6yv", "userId": "WJDdvM7T"}, {"displayName": "7PX2vamI", "namespace": "RZHzsIYO", "userId": "CUoiCXNj"}, {"displayName": "rdQL2jdx", "namespace": "1eIba1sB", "userId": "0HsJ06Dz"}]}' \
    'fbzRYt4O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminAddRoleMembersV3' test.out

#- 196 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "VUyumBeI", "namespace": "qdQGZC5k", "userId": "M03HHijs"}, {"displayName": "QRj7N8IA", "namespace": "jmsonjj0", "userId": "ZR50BQ1U"}, {"displayName": "6aFD3O2k", "namespace": "XQSc58zg", "userId": "ZVl4gIF7"}]}' \
    'v3qbZu9M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminRemoveRoleMembersV3' test.out

#- 197 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 83, "resource": "E92nHJzv", "schedAction": 46, "schedCron": "lRZ9Z1JB", "schedRange": ["rHRzEOtI", "xzPqb6n7", "3m0jiaDH"]}, {"action": 33, "resource": "6d9rsKgz", "schedAction": 58, "schedCron": "48eT7Mlu", "schedRange": ["exk87b9Z", "5BTsEA3E", "dmW8saab"]}, {"action": 86, "resource": "edopzwSl", "schedAction": 41, "schedCron": "jzPXI2v0", "schedRange": ["prR3OEey", "0MkZwS6T", "YwNN3UYh"]}]}' \
    'ic03qGEg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateRolePermissionsV3' test.out

#- 198 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 87, "resource": "fNzBVrjo", "schedAction": 4, "schedCron": "g8CfRwty", "schedRange": ["l1HeT7VE", "PgG40QyX", "zsOzgck0"]}, {"action": 42, "resource": "8IghoQBp", "schedAction": 50, "schedCron": "mWAOYksc", "schedRange": ["zxBS0OBC", "a2vWadLm", "QtYKmEMz"]}, {"action": 17, "resource": "FzwdOMdu", "schedAction": 31, "schedCron": "iW8dLTCB", "schedRange": ["fGUdVEdv", "dQL7sVwc", "Z2PofaJo"]}]}' \
    'SqtrEOqx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'AdminAddRolePermissionsV3' test.out

#- 199 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["H46fRTSZ", "oDdT0fef", "o74eg3Nt"]' \
    '2c0r4GqF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'AdminDeleteRolePermissionsV3' test.out

#- 200 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '61' \
    'NHglOVuN' \
    'Z9LzNeJn' \
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
    'Burh54CW' \
    'bYb0Peby' \
    't8b4DGsc' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 202 'UserAuthenticationV3' test.out

#- 203 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    'jwrizsFU' \
    'gYwbaLvq' \
    'vQ2NbmDI' \
    'TuymTBjn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'AuthenticationWithPlatformLinkV3' test.out

#- 204 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    '3d2sFzMS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 205 RequestOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-request-one-time-linking-code-v3' \
    '3QaVjZF7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'RequestOneTimeLinkingCodeV3' test.out

#- 206 ValidateOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-validate-one-time-linking-code-v3' \
    'Ax6115Kg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'ValidateOneTimeLinkingCodeV3' test.out

#- 207 RequestTokenByOneTimeLinkCodeResponseV3
$PYTHON -m $MODULE 'iam-request-token-by-one-time-link-code-response-v3' \
    '9U8vrQJX' \
    'QxoIbVi2' \
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
    'CLEk277I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'RequestGameTokenCodeResponseV3' test.out

#- 211 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'vjj1A647' \
    'XQ3koaAf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 212 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    'ZIim0sFP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'RevokeUserV3' test.out

#- 213 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    'm1YN27bo' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 213 'AuthorizeV3' test.out

#- 214 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'TGkeHsYs' \
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
    'W9oGBN1p' \
    'YMBwbPZT' \
    'lMlUvFEi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'SendMFAAuthenticationCode' test.out

#- 217 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    'GprcNSQ9' \
    'kEeXBZ6F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'Change2faMethod' test.out

#- 218 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    'VrBzyhyh' \
    'oS6a9oe0' \
    'JaXFpff2' \
    'true' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'Verify2faCode' test.out

#- 219 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'uYbe4Cf2' \
    'HEHvVevh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'ISjbtBJU' \
    'K5fE3Ouf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'AuthCodeRequestV3' test.out

#- 221 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'PSX3PdOU' \
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
    '2V9yw94o' \
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
    '1DiSFsm0' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 225 'VerifyTokenV3' test.out

#- 226 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'XXQJWszv' \
    'TQEuALzD' \
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
    'Np1SZ58a' \
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
    'DllwzTRH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 231 PublicListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["ak1MXxj7", "Esrg7900", "nml5Bids"]}' \
    'K9dCEzhV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 232 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    'nOv0PQbV' \
    'IaKiHfoe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'PublicGetUserByPlatformUserIDV3' test.out

#- 233 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    'orY7A1ot' \
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
    '{"PasswordMD5Sum": "GFyv2SMj", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "7jK5pxe8", "policyId": "2pgFiAS6", "policyVersionId": "piIzmc8r"}, {"isAccepted": false, "localizedPolicyVersionId": "rKEPGSAc", "policyId": "ong6eNER", "policyVersionId": "Uf8kjci1"}, {"isAccepted": true, "localizedPolicyVersionId": "e06c6SKL", "policyId": "c2mEC3IX", "policyVersionId": "l5XCbkOf"}], "authType": "HaGr5kda", "code": "zlypvt6l", "country": "SLfU7HBy", "dateOfBirth": "GXPMqxj4", "displayName": "hBgVY3YA", "emailAddress": "xZLKbcOd", "password": "yjqf6Q4o", "reachMinimumAge": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'PublicCreateUserV3' test.out

#- 236 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    '3Idi55jN' \
    'rGNT2VHT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'CheckUserAvailability' test.out

#- 237 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["KuIT5Fww", "Hj0Ur5F2", "PWGTTD81"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'PublicBulkGetUsers' test.out

#- 238 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "xhNP4t6k", "languageTag": "YBUjyXAn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'PublicSendRegistrationCode' test.out

#- 239 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "3bWQF6Qc", "emailAddress": "AiJpXIrg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'PublicVerifyRegistrationCode' test.out

#- 240 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "roixptZh", "languageTag": "ckUTGkcB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'PublicForgotPasswordV3' test.out

#- 241 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    'OE4qMcH1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'GetAdminInvitationV3' test.out

#- 242 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "DV1Vitao", "policyId": "mvWTzdsW", "policyVersionId": "4N70wYS4"}, {"isAccepted": false, "localizedPolicyVersionId": "j7Yi2Vvo", "policyId": "QNW8Yc48", "policyVersionId": "1dYdvGxJ"}, {"isAccepted": true, "localizedPolicyVersionId": "7JwgwMUS", "policyId": "uC3Bajy3", "policyVersionId": "BcEMCtQs"}], "authType": "EMAILPASSWD", "country": "FcEcvVAy", "dateOfBirth": "Id6Cp85H", "displayName": "VDsZBQgO", "password": "nXuXsGTh", "reachMinimumAge": true}' \
    'FwmGWAvN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'CreateUserFromInvitationV3' test.out

#- 243 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "F0Z0Gkwx", "country": "UNYyNwGi", "dateOfBirth": "KrknH0Y5", "displayName": "mrQgLC6D", "languageTag": "2qsFiQHg", "userName": "lUQMZi5W"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'UpdateUserV3' test.out

#- 244 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "jMZfOadp", "country": "gegCUjTd", "dateOfBirth": "i1Ehr8Ot", "displayName": "qpNJ9R8T", "languageTag": "uNy4ejmV", "userName": "A3vMCsGy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'PublicPartialUpdateUserV3' test.out

#- 245 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "Pd12B8QN", "emailAddress": "Uz0hFFNb", "languageTag": "H6j2W4ro"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'PublicSendVerificationCodeV3' test.out

#- 246 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "ZM2UKAXE", "contactType": "EsL5D0oi", "languageTag": "FchQnVeq", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'PublicUserVerificationV3' test.out

#- 247 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "IObJBTsv", "country": "sw76uISR", "dateOfBirth": "X0bKVoWt", "displayName": "oUW1P7oc", "emailAddress": "uBAldDSU", "password": "S7Haa6un", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'PublicUpgradeHeadlessAccountV3' test.out

#- 248 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "bumu2QHL", "password": "yZNuysyM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'PublicVerifyHeadlessAccountV3' test.out

#- 249 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "4OfCzdQC", "newPassword": "XMAWnf87", "oldPassword": "YPNOe9Ee"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'PublicUpdatePasswordV3' test.out

#- 250 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'vf1fhMg1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'PublicCreateJusticeUser' test.out

#- 251 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'E2k7QLFr' \
    'VgtX7y0f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'PublicPlatformLinkV3' test.out

#- 252 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "POieDCow"}' \
    '2zXyFFVp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'PublicPlatformUnlinkV3' test.out

#- 253 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'M87yqEwE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'PublicPlatformUnlinkAllV3' test.out

#- 254 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    'acQMTlqN' \
    '4LKkxJ5v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'PublicForcePlatformLinkV3' test.out

#- 255 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    '3SBafnKN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'PublicWebLinkPlatform' test.out

#- 256 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'iMPbFkFG' \
    'A85W3HJk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'PublicWebLinkPlatformEstablish' test.out

#- 257 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "qgS2B37w", "emailAddress": "woPYOHiI", "newPassword": "sxmsLBPB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'ResetPasswordV3' test.out

#- 258 PublicGetUserByUserIdV3
eval_tap 0 258 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 259 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    'JuNLnWRr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'PublicGetUserBanHistoryV3' test.out

#- 260 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'tW870qD8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 261 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    '8ZcduZSe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'PublicGetUserInformationV3' test.out

#- 262 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    '7W20UZcD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'PublicGetUserLoginHistoriesV3' test.out

#- 263 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'aiq0nEZ7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'PublicGetUserPlatformAccountsV3' test.out

#- 264 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    'PyhqFJkD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'PublicListJusticePlatformAccountsV3' test.out

#- 265 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "ClOsKmfs", "platformUserId": "gJdmzsDP"}' \
    'sWh1k0cQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'PublicLinkPlatformAccount' test.out

#- 266 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["08NG6dX2", "TZkil67k", "RngoUa83"], "requestId": "ECh1gqPe"}' \
    'S193TNNz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'PublicForceLinkPlatformWithProgression' test.out

#- 267 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    'ot3sVli3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'PublicGetPublisherUserV3' test.out

#- 268 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'GN2XTrFi' \
    'bRAhzzEW' \
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
    'zWlTY70q' \
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
    'dgJRvpZr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 273 LinkHeadlessAccountToMyAccountV3
$PYTHON -m $MODULE 'iam-link-headless-account-to-my-account-v3' \
    '{"chosenNamespaces": ["SpWX3KEe", "2BjV00Re", "CXFffjJJ"], "oneTimeLinkCode": "xlgjzIhp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'LinkHeadlessAccountToMyAccountV3' test.out

#- 274 PublicSendVerificationLinkV3
$PYTHON -m $MODULE 'iam-public-send-verification-link-v3' \
    '{"languageTag": "gOoIOD74"}' \
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
    'V21HWDAf' \
    'vXwdxbyp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'PlatformAuthenticateSAMLV3Handler' test.out

#- 277 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    '4HAPbBbN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'LoginSSOClient' test.out

#- 278 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'PStVBUpK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'LogoutSSOClient' test.out

#- 279 RequestGameTokenResponseV3
$PYTHON -m $MODULE 'iam-request-game-token-response-v3' \
    'gOssFkz0' \
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
    'F36piDYX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'AdminGetUserDeviceBansV4' test.out

#- 283 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "eHZ7FHls", "deviceId": "3nyvconq", "deviceType": "bHQqKLQK", "enabled": false, "endDate": "aP8huTmn", "ext": {"q3FGQn3A": {}, "hu5wxq6o": {}, "Jq4mChmQ": {}}, "reason": "HQhO9IKB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'AdminBanDeviceV4' test.out

#- 284 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    'XDFQfXFD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'AdminGetDeviceBanV4' test.out

#- 285 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": true}' \
    'sG6uDhFY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'AdminUpdateDeviceBanV4' test.out

#- 286 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    'lrzJBYSe' \
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
    'MuJfQecu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'AdminGetDeviceBansV4' test.out

#- 289 AdminDecryptDeviceV4
$PYTHON -m $MODULE 'iam-admin-decrypt-device-v4' \
    'tjS029Bi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'AdminDecryptDeviceV4' test.out

#- 290 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    'JWOG1m7M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'AdminUnbanDeviceV4' test.out

#- 291 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    'Kclr5igj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'AdminGetUsersByDeviceV4' test.out

#- 292 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"count": 82}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'AdminCreateTestUsersV4' test.out

#- 293 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["CNNH7RtG", "5Xmo9Q0W", "b07N17fk"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'AdminBulkCheckValidUserIDV4' test.out

#- 294 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "xZSc6VbE", "country": "0AGcekjM", "dateOfBirth": "NHuPXtz8", "displayName": "tXxrmzaf", "languageTag": "MUguyDoN", "userName": "91uc28Ho"}' \
    'SpGt1g0G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'AdminUpdateUserV4' test.out

#- 295 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "GbT4Hf2P", "emailAddress": "PKOldkbg"}' \
    'X9CWJKwX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'AdminUpdateUserEmailAddressV4' test.out

#- 296 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    'XSbv5eg9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'AdminDisableUserMFAV4' test.out

#- 297 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'q86IaDFj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'AdminListUserRolesV4' test.out

#- 298 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["jx6uZerW", "btwTX9gN", "RByjbE8l"], "roleId": "OLAfTXKL"}' \
    'zbrddqcK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateUserRoleV4' test.out

#- 299 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["La7LevxN", "HOSEhQRZ", "Ip693lRw"], "roleId": "tc43atCu"}' \
    'CFxbfbz4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'AdminAddUserRoleV4' test.out

#- 300 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["aQERziPL", "4dHhOqG5", "KDdUvk0L"], "roleId": "Ei26Ls7m"}' \
    'jRxNmvvN' \
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
    '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "ji329PfV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'AdminCreateRoleV4' test.out

#- 303 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'rvMEPtps' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'AdminGetRoleV4' test.out

#- 304 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'SNcpK1Qk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'AdminDeleteRoleV4' test.out

#- 305 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "Sy8Ww79L"}' \
    'VeVskqeU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'AdminUpdateRoleV4' test.out

#- 306 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 57, "resource": "EvdRF9bq", "schedAction": 79, "schedCron": "guhh3bva", "schedRange": ["dRthdbVA", "pebRA09r", "W8i8krFW"]}, {"action": 73, "resource": "97DmQ5ZO", "schedAction": 52, "schedCron": "ok5d3AyG", "schedRange": ["rZO8GuoX", "NSoVEBG7", "VbBPUWip"]}, {"action": 52, "resource": "y9DYkD2s", "schedAction": 71, "schedCron": "X4FCK5uc", "schedRange": ["TFsAFzaO", "3yJpA3KM", "xBlrRytE"]}]}' \
    'R1qdTelF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'AdminUpdateRolePermissionsV4' test.out

#- 307 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 54, "resource": "rtO2gCQD", "schedAction": 36, "schedCron": "57DrDlgC", "schedRange": ["2nzS9SiG", "UjVAw4v3", "q6JRHcn7"]}, {"action": 76, "resource": "IfOCDyVA", "schedAction": 68, "schedCron": "6qHYIZWn", "schedRange": ["XqQ1oHFJ", "9Q0vqsL9", "SomqWsGA"]}, {"action": 21, "resource": "6yxi0QzZ", "schedAction": 100, "schedCron": "S2A9VOA8", "schedRange": ["H9VeHv0L", "2Acm960E", "YQEuGJVl"]}]}' \
    '8xs1WId9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'AdminAddRolePermissionsV4' test.out

#- 308 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["WlalqshF", "9Rh2o7GC", "QGPCxwEd"]' \
    'kyuT3Mgz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'AdminDeleteRolePermissionsV4' test.out

#- 309 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'ReRq0112' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'AdminListAssignedUsersV4' test.out

#- 310 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["ISArROIo", "dcmM6v2A", "EozWWaYv"], "namespace": "BLE46bpu", "userId": "Jip8JyxJ"}' \
    '39vrtuWW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'AdminAssignUserToRoleV4' test.out

#- 311 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "rqTZbSqB", "userId": "SKp8Amgw"}' \
    'hYzk33J3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'AdminRevokeUserFromRoleV4' test.out

#- 312 AdminInviteUserNewV4
$PYTHON -m $MODULE 'iam-admin-invite-user-new-v4' \
    '{"assignedNamespaces": ["4fiTxK63", "OHpnUCGB", "VfpctNFU"], "emailAddresses": ["sUQ6ZXQc", "b2o1J5eu", "LAbBgejq"], "isAdmin": false, "namespace": "g8Jg5VBy", "roleId": "eI3ycMcY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'AdminInviteUserNewV4' test.out

#- 313 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "YBixKJXC", "country": "ISQdwec1", "dateOfBirth": "m8BusV9t", "displayName": "Uh74KVo6", "languageTag": "Xqjz2xUK", "userName": "LNWSmYyV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'AdminUpdateMyUserV4' test.out

#- 314 AdminDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'AdminDisableMyAuthenticatorV4' test.out

#- 315 AdminEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'AdminEnableMyAuthenticatorV4' test.out

#- 316 AdminGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-admin-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 317 AdminGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'AdminGetMyBackupCodesV4' test.out

#- 318 AdminGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'AdminGenerateMyBackupCodesV4' test.out

#- 319 AdminDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'AdminDisableMyBackupCodesV4' test.out

#- 320 AdminDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'AdminDownloadMyBackupCodesV4' test.out

#- 321 AdminEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'AdminEnableMyBackupCodesV4' test.out

#- 322 AdminSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-admin-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'AdminSendMyMFAEmailCodeV4' test.out

#- 323 AdminDisableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-disable-my-email-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'AdminDisableMyEmailV4' test.out

#- 324 AdminEnableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-enable-my-email-v4' \
    'vyelIJ8Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'AdminEnableMyEmailV4' test.out

#- 325 AdminGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-admin-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'AdminGetMyEnabledFactorsV4' test.out

#- 326 AdminMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-admin-make-factor-my-default-v4' \
    'gaLMqi83' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'AdminMakeFactorMyDefaultV4' test.out

#- 327 AdminInviteUserV4
eval_tap 0 327 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 328 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "ULa7cfZl", "policyId": "4VuY6rsZ", "policyVersionId": "yo6CBRRn"}, {"isAccepted": false, "localizedPolicyVersionId": "ewIzTOqK", "policyId": "kcjRh3l2", "policyVersionId": "gAJOTCbx"}, {"isAccepted": true, "localizedPolicyVersionId": "3gNLIlTk", "policyId": "3Bpclrk4", "policyVersionId": "hIRn0znI"}], "authType": "EMAILPASSWD", "country": "sGP6KLPX", "dateOfBirth": "kvUv2XiX", "displayName": "aBzsmaxj", "emailAddress": "TZPlLity", "password": "tGka7Kv5", "passwordMD5Sum": "TacQKF4O", "username": "lRGdmXxE", "verified": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'PublicCreateTestUserV4' test.out

#- 329 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "MhGy83Xi", "policyId": "t6boOLGC", "policyVersionId": "cg16Dqwd"}, {"isAccepted": true, "localizedPolicyVersionId": "HkSSV8e1", "policyId": "MgTTLS2F", "policyVersionId": "garY903I"}, {"isAccepted": true, "localizedPolicyVersionId": "yEfRBEj7", "policyId": "qms9AGQE", "policyVersionId": "xPhgr9gG"}], "authType": "EMAILPASSWD", "code": "secYbcOp", "country": "R45VDlvS", "dateOfBirth": "c0Mr7Imw", "displayName": "CwGqOf0b", "emailAddress": "Ns97KvKy", "password": "j3MqS7Dc", "passwordMD5Sum": "mtfh50eO", "reachMinimumAge": false, "username": "sHezWTqg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'PublicCreateUserV4' test.out

#- 330 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "ixtHk6lW", "policyId": "q6tEeUmU", "policyVersionId": "96FLEak0"}, {"isAccepted": false, "localizedPolicyVersionId": "UDh5yGjj", "policyId": "v4Mwrv2v", "policyVersionId": "ancmR6Z7"}, {"isAccepted": true, "localizedPolicyVersionId": "7VE2wL8Y", "policyId": "4JFVUdzA", "policyVersionId": "8bvXlDhG"}], "authType": "EMAILPASSWD", "country": "T3fDSrSH", "dateOfBirth": "rkoqv2mM", "displayName": "6soMaTvQ", "password": "q2a9YdFN", "reachMinimumAge": true, "username": "opWQbaCv"}' \
    'dPSq8Z27' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'CreateUserFromInvitationV4' test.out

#- 331 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "GpvHCDx5", "country": "5JZ5z6gu", "dateOfBirth": "jpFzlPsp", "displayName": "QD9IRIpD", "languageTag": "DubntPCF", "userName": "xfeoW2Nd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'PublicUpdateUserV4' test.out

#- 332 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "SWzOXjO1", "emailAddress": "NQUqWHBW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'PublicUpdateUserEmailAddressV4' test.out

#- 333 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "78XREZCi", "country": "TNAxq26g", "dateOfBirth": "ZrPqCsSD", "displayName": "spvgM16s", "emailAddress": "Z6rjnkH4", "password": "ExObppC6", "reachMinimumAge": true, "username": "WnfmGFy0", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 334 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "59UDEOF6", "password": "gp5Ufmjt", "username": "iVbqJnZc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'PublicUpgradeHeadlessAccountV4' test.out

#- 335 PublicDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'PublicDisableMyAuthenticatorV4' test.out

#- 336 PublicEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'PublicEnableMyAuthenticatorV4' test.out

#- 337 PublicGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-public-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 338 PublicGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'PublicGetMyBackupCodesV4' test.out

#- 339 PublicGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'PublicGenerateMyBackupCodesV4' test.out

#- 340 PublicDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'PublicDisableMyBackupCodesV4' test.out

#- 341 PublicDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'PublicDownloadMyBackupCodesV4' test.out

#- 342 PublicEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'PublicEnableMyBackupCodesV4' test.out

#- 343 PublicRemoveTrustedDeviceV4
$PYTHON -m $MODULE 'iam-public-remove-trusted-device-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'PublicRemoveTrustedDeviceV4' test.out

#- 344 PublicSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-public-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'PublicSendMyMFAEmailCodeV4' test.out

#- 345 PublicDisableMyEmailV4
$PYTHON -m $MODULE 'iam-public-disable-my-email-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'PublicDisableMyEmailV4' test.out

#- 346 PublicEnableMyEmailV4
$PYTHON -m $MODULE 'iam-public-enable-my-email-v4' \
    'rqrPye7f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'PublicEnableMyEmailV4' test.out

#- 347 PublicGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-public-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicGetMyEnabledFactorsV4' test.out

#- 348 PublicMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-public-make-factor-my-default-v4' \
    'Cwi7Il2w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'PublicMakeFactorMyDefaultV4' test.out

#- 349 PublicInviteUserV4
$PYTHON -m $MODULE 'iam-public-invite-user-v4' \
    '{"emailAddress": "IFlHm9N6", "namespace": "owMHMtJy", "namespaceDisplayName": "1Oqn59tE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'PublicInviteUserV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
