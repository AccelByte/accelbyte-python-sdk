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
iam-admin-update-input-validations '[{"field": "EAxcVpFrttufHIRd", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["W0Oaiw9B0D7eHpzS", "n3ZPUdc0qh4n8mzZ", "0m8SAMTwE6I56IaR"], "preferRegex": true, "regex": "8bbgorQeFbQ1g7qb"}, "blockedWord": ["PngUNB1vRodwpzS6", "DaDpv8N7ZQVqGj6o", "DLjWjkY1aXlFcDtg"], "description": [{"language": "OjchIua5tWEIC32o", "message": ["gW7olvbTgrhRTcPi", "SuL0Sly6XM4OI18m", "AQLnzjMf8GZ2WBZq"]}, {"language": "xYG3aREAu2D6QVKN", "message": ["CWP75TB0i7pKxR8d", "l0zRVW4EZG9m0Xcg", "GVbMqSszE8GHavj7"]}, {"language": "AorKsxwkosAVerXp", "message": ["c1C8XfwHuKeb9l3r", "GN9A3sNm84hddSpH", "t0P7MIIR7CkyF6C7"]}], "isCustomRegex": false, "letterCase": "UmiTqpyhPFdxLzFQ", "maxLength": 82, "maxRepeatingAlphaNum": 23, "maxRepeatingSpecialCharacter": 59, "minCharType": 79, "minLength": 89, "regex": "YzYiKWe5dNRljv7I", "specialCharacterLocation": "PrDQQRgat0SevkLG", "specialCharacters": ["MS0lyuI9a2I9u6Vp", "bsx5w8hqUI06UpOX", "GSLmCVuHOPlLlkvR"]}}, {"field": "8sKgnuRkgghGoYup", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["oyD6SCwGrncqmLtj", "QHAf8TgoNm03VLis", "V6zwPuo3td6TC6I3"], "preferRegex": false, "regex": "9x4rt69lna7qxNeI"}, "blockedWord": ["xPz6MbwL6IY69z1U", "aLqYSYWytLPziZMd", "jxcBZufQxGiHPllG"], "description": [{"language": "4cYEzfTD1ZBm3MqH", "message": ["cUmLZZbSqb8RwNmn", "9HrNQy4uZAAiE0mi", "t9RGCCHYzUOcEdsc"]}, {"language": "KHPEqgA8yu7Vk6Jt", "message": ["4Ymos9Jcdos4fYcT", "VU6RBt0zYoMcHyCU", "EXlAvxJMdalwSyli"]}, {"language": "WMNW5NyLu0M3VHh2", "message": ["EI8JlDbPWbQ6Q9lN", "mqRBaAkLnvxkT1X6", "8cmDc3fxU8MyKrQp"]}], "isCustomRegex": false, "letterCase": "Dlym6puQ23xoJ8ae", "maxLength": 58, "maxRepeatingAlphaNum": 64, "maxRepeatingSpecialCharacter": 27, "minCharType": 1, "minLength": 78, "regex": "TkhjYnaq6foWvXa3", "specialCharacterLocation": "bMrXsDr6kILsSSyD", "specialCharacters": ["dmykmoPYgc2L4jk4", "Lo0LSP0pf4IxjUkl", "535X3ateEKDpADz1"]}}, {"field": "x3poD3Qgb3boLQQ1", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["Qm8bwbmXgdAPh1ET", "hG96gAFKK2WDgCcx", "vONZm3EeERmDnyeF"], "preferRegex": false, "regex": "mVr9XuoJbRFQSKVP"}, "blockedWord": ["Hbn4Xxtu7LQRENjE", "Eztx1WsYSiZqan0n", "SBJroav91GXlvPG6"], "description": [{"language": "bFYReVHQipcCx9Zw", "message": ["5D2L7vIYhGGSyEW4", "ZJJ42d3PBddN8S48", "l9lyNApflxqMrj3o"]}, {"language": "Zk03QXcKMDYDDxHS", "message": ["ZjtqXyJ58f7Gc26S", "aiGVkydwYWQG26yU", "ZNmTBcvrbYCwZtxF"]}, {"language": "HyPLtI8ilbyDPUIj", "message": ["88cekdqCt81P1ktf", "Iovmv9gsR5cJcHm3", "SZLxoRDFuuuySj29"]}], "isCustomRegex": false, "letterCase": "iuFM3FIoVk8T3GpA", "maxLength": 27, "maxRepeatingAlphaNum": 80, "maxRepeatingSpecialCharacter": 22, "minCharType": 47, "minLength": 59, "regex": "zHPxB1UskYs4Yw20", "specialCharacterLocation": "DOqOBSC2DKHRuPMM", "specialCharacters": ["WH8Yb33T5UBJCjfc", "nLRfxeCSz9WEi8Kl", "loeH0JT1yduat2vQ"]}}]' --login_with_auth "Bearer foo"
iam-admin-reset-input-validations 'R3biBfsu4jmsRE2w' --login_with_auth "Bearer foo"
iam-list-admins-v3 --login_with_auth "Bearer foo"
iam-admin-get-age-restriction-status-v3 --login_with_auth "Bearer foo"
iam-admin-update-age-restriction-config-v3 '{"ageRestriction": 82, "enable": true}' --login_with_auth "Bearer foo"
iam-admin-get-list-country-age-restriction-v3 --login_with_auth "Bearer foo"
iam-admin-update-country-age-restriction-v3 '{"ageRestriction": 63}' 'QAk4mqrxzTtuLl4X' --login_with_auth "Bearer foo"
iam-admin-get-banned-users-v3 --login_with_auth "Bearer foo"
iam-admin-ban-user-bulk-v3 '{"ban": "lbGL8QOxtjzm8y2w", "comment": "NhmwoYZyI4EFZKBc", "endDate": "YrCEAE7WIsfmx40N", "reason": "LRc6m8heKnWhzfe2", "skipNotif": true, "userIds": ["NUj7fdgLA84Z8YYk", "6QEgJjBbEDoNf3n0", "hEoRCAcf80zfFyab"]}' --login_with_auth "Bearer foo"
iam-admin-unban-user-bulk-v3 '{"bans": [{"banId": "WAgIUXiI07A68eaq", "userId": "C2J9jyEW6GLbc0Na"}, {"banId": "KDUL3sa13lk1dQBH", "userId": "O86IlBhnetU4RwTq"}, {"banId": "UXlTDBzOuYsaZA2y", "userId": "yd4mbqoOfADMMAXF"}]}' --login_with_auth "Bearer foo"
iam-admin-get-bans-type-with-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-get-clients-by-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-create-client-v3 '{"audiences": ["aY9eKa699bRVhyaK", "wwrAP2aMlu7WtjCt", "oYetOO847g8OudOf"], "baseUri": "jnCuHZ3c46IjGa23", "clientId": "YvYmmDg7VYPXIuvU", "clientName": "YTZBRujIUE1Tq5jy", "clientPermissions": [{"action": 54, "resource": "HThUJkETAsSp7gh4", "schedAction": 93, "schedCron": "db4rbkXj0ZwsVC0g", "schedRange": ["L97ZVJSPqJiwv1ql", "YB1RSKs6gQxC3Gb7", "S0o4zGYY7KQI1AeF"]}, {"action": 12, "resource": "bqqZtfNWql4nmwAf", "schedAction": 39, "schedCron": "B4EYOkQ1jMD3cym8", "schedRange": ["xIfkOVW2grREOLx0", "KOww3HICQLfl7MUB", "G7qtPu64yAtURKLR"]}, {"action": 21, "resource": "BbRPZTF6oQAXVG7t", "schedAction": 28, "schedCron": "hS1fSiM9331m7Ta1", "schedRange": ["PsKc50Kv6ecnEevc", "Ax2K2zkRenmPZnGB", "t4P7WnbdSJtjX7Zs"]}], "clientPlatform": "hZyZl5x4bRXBHUTr", "deletable": true, "description": "q5xrgxSmy1DN9LFk", "namespace": "YW5DQyj4bj5Ro2og", "oauthAccessTokenExpiration": 0, "oauthAccessTokenExpirationTimeUnit": "PwVOEDSJsEK5QpNh", "oauthClientType": "lI2iS5EpGhhvXYck", "oauthRefreshTokenExpiration": 22, "oauthRefreshTokenExpirationTimeUnit": "upMzUYnb76tFkEOR", "parentNamespace": "V3bu1bNCtX7W40V6", "redirectUri": "Do5sYadCCFrHHC3D", "scopes": ["pZxkrQDXuNFviMar", "v8mnfHK8CCmE2lPn", "sbD3SGEdlwuUccE5"], "secret": "36ugBp3HBvepnDCj", "twoFactorEnabled": false}' --login_with_auth "Bearer foo"
iam-admin-get-clientsby-namespaceby-idv3 'rok0WvGYYnx4V709' --login_with_auth "Bearer foo"
iam-admin-delete-client-v3 'xbnGezKsDwG2omOR' --login_with_auth "Bearer foo"
iam-admin-update-client-v3 '{"audiences": ["2nvYI9TVqJdvzcWb", "fUpaXp5JMl5LL4bT", "xBmZjdrrIxsB0NRs"], "baseUri": "B1fPqqRRulpqpymD", "clientName": "kQhtrHWwRVnwVBOq", "clientPermissions": [{"action": 84, "resource": "8wbhMssAHjapIkY9", "schedAction": 89, "schedCron": "JOqB5F93zFQbJndU", "schedRange": ["DpdONneAczbBdHb2", "slt71B1SmZp2JZp5", "0CnPb71ORYcmQbTU"]}, {"action": 81, "resource": "JX8ccLjMXJRk0eaK", "schedAction": 88, "schedCron": "mDbxIxi4YKlONk2Q", "schedRange": ["5Y4JvaizwiilatuU", "jjt9lIMGql5ElEa9", "EIIlGcHB3CfR3ncD"]}, {"action": 22, "resource": "1eMbEIjowLqc3ecj", "schedAction": 76, "schedCron": "JbZDKKoxLE1Y3Dym", "schedRange": ["tj3giPg4x4yiPX6u", "es1Hhhkg1yLVbLFz", "HEP8cM4NTwr0KHaA"]}], "clientPlatform": "smTej52WKi6tArAU", "deletable": true, "description": "WDFJvJBWic7UkBeI", "namespace": "XuqDuAXI66bQ71w0", "oauthAccessTokenExpiration": 7, "oauthAccessTokenExpirationTimeUnit": "aXBWQi6BqPg4xr0l", "oauthRefreshTokenExpiration": 58, "oauthRefreshTokenExpirationTimeUnit": "ciYNEzvSZIPkhSgO", "redirectUri": "Rcz5S5BvmgBLxh4i", "scopes": ["jFnE3Tam69qSZ7PC", "6f6QkmZXElW9YfRS", "se6AAz3S4czz0QKF"], "twoFactorEnabled": false}' 'PYuG6XqP6oo7G73z' --login_with_auth "Bearer foo"
iam-admin-update-client-permission-v3 '{"permissions": [{"action": 6, "resource": "eeoip68J1nsv4W2O"}, {"action": 73, "resource": "Lh741IslKHzGlLKW"}, {"action": 95, "resource": "KHcl5LLLOexL4fZv"}]}' 'WtND2tcBFpX8lNtF' --login_with_auth "Bearer foo"
iam-admin-add-client-permissions-v3 '{"permissions": [{"action": 62, "resource": "f2XJVrlzqQls1ozh"}, {"action": 77, "resource": "K2IzrBvvWm4udE0O"}, {"action": 41, "resource": "0TdlNBJYOmpu1VCa"}]}' 'rzBsV6xnZ5Jrzzjr' --login_with_auth "Bearer foo"
iam-admin-delete-client-permission-v3 '5' 'fxnhLd3Knaknoed9' 'DHhLOqQGhCUr6iTr' --login_with_auth "Bearer foo"
iam-admin-get-config-value-v3 'jyEgarAdNJOIG36I' --login_with_auth "Bearer foo"
iam-admin-get-country-list-v3 --login_with_auth "Bearer foo"
iam-admin-get-country-blacklist-v3 --login_with_auth "Bearer foo"
iam-admin-add-country-blacklist-v3 '{"blacklist": ["6tRbRcrEveMdAdiP", "KDUVSC00PYeDcagg", "inxnFIna3yddcbsP"]}' --login_with_auth "Bearer foo"
iam-retrieve-all-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-sso-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-third-party-login-platform-credential-v3 'heTH26IUJNvYuGRU' --login_with_auth "Bearer foo"
iam-add-third-party-login-platform-credential-v3 '{"ACSURL": "vpZaHCuESOiIZsMf", "AWSCognitoRegion": "B4ZH3mtgWgU4pCAK", "AWSCognitoUserPool": "xeE70CaunQNxot37", "AllowedClients": ["1W9G4AvQkqsGnmyo", "5JJTUVmb8GEXFTlE", "MEsFzYqwgK1Np5no"], "AppId": "dqpLm7FhJBNXzAFd", "AuthorizationEndpoint": "O0Khqf6kiTdSGv2L", "ClientId": "FjAKY7CbgsWqFWZX", "Environment": "7kPBom8F9GLLTG8p", "FederationMetadataURL": "hc3n4iLoIllKlpO2", "GenericOauthFlow": true, "IsActive": false, "Issuer": "qiXJF3WGRaoQomSJ", "JWKSEndpoint": "C4DdrKF7SUQPLG59", "KeyID": "e0k5ZtX6wK7PpUlc", "NetflixCertificates": {"encryptedPrivateKey": "IW32iK7MGt1ixY5r", "encryptedPrivateKeyName": "A1WoVeJIePF8ZrQz", "publicCertificate": "P4zvtdxdbZUpd6FJ", "publicCertificateName": "tHJ1pyVwyKQLY6FE", "rootCertificate": "O65Rb3z7CYLM8Ils", "rootCertificateName": "HqffnrfsGlfPaZKB"}, "OrganizationId": "wa3Ddb60ufPpzwj1", "PlatformName": "QGIFmlVf4jvapseE", "RedirectUri": "9LN9bvhOrHflIOd6", "RegisteredDomains": [{"affectedClientIDs": ["X3viLvtEk4mTIpUA", "9gxo8SV38nEhoXmM", "2W7l6jHMA2rG3nak"], "domain": "opAywelu01nryEJ0", "namespaces": ["NqoTow0qiOiC4j0i", "ktm0ZPLkLOsp0LZ5", "njN86Hl8kUXzt6bS"], "roleId": "c6bWvgpVyW9dD1kO"}, {"affectedClientIDs": ["mvrAejcq2LgkQuaS", "7RBx3vim02jBOxrZ", "DyvpcLYOWA8NjxOn"], "domain": "aEok4nOOCzfsflhj", "namespaces": ["bngJOUn18G5MlfDT", "k8aG40NlncceIZSw", "gAIkgzh4pTU0Am4D"], "roleId": "Zhl0bQxFJ3sWCqQp"}, {"affectedClientIDs": ["Q2FbKPFMycMSQ4qf", "AacR0LgB5BUXvjcu", "2s6w3VifnKqmTSoG"], "domain": "H1XEfY6QAYn6WQ5U", "namespaces": ["BEU1QAOHfZiGhxOd", "cuDXSxSc3aZPV87p", "na08gxefTYKhuxaE"], "roleId": "c7M4P7UckSC6ePeN"}], "Secret": "8i4GrFES9z7xueHp", "TeamID": "ATHccee9GXhKcjmS", "TokenAuthenticationType": "EwdrkEnnqKzFsLfY", "TokenClaimsMapping": {"alUlfwEQKjU7eHGe": "bSVu0LQ40kepEaC4", "dfiOMZfEhHr39pys": "FO3Zvc1BZG99Lyvf", "vHEsJKQQewVLMUoA": "naRcYp7FUjfIGaff"}, "TokenEndpoint": "oflEIByYqeKN0meG", "UserInfoEndpoint": "elYF5wWaDhukU4kh", "UserInfoHTTPMethod": "GG4vZFTYnPkmSu4P", "scopes": ["Wam1jxR7SETWjteo", "c8fgvZDDhoO05oKq", "ymxLD1Lcvw6T6mZE"]}' 'iwxxElpMYSWIeVzm' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-credential-v3 '7z9noowmlTIKVowi' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-credential-v3 '{"ACSURL": "0RY2VN4ZONJREdUQ", "AWSCognitoRegion": "3z9F1BxNNgnke4ak", "AWSCognitoUserPool": "ncw7wu9TmXfJWBPr", "AllowedClients": ["x9Ns8eLzYEvwSWTa", "LQjctvrK2jhsYpKP", "lXn77AtYoFzLAATP"], "AppId": "Y8P8P3cfoivvQxev", "AuthorizationEndpoint": "ecWw7Rry0KK5rgAG", "ClientId": "O0dW8rX2MVUGKSZ4", "Environment": "GcLkt4pK32sJxlZc", "FederationMetadataURL": "CTpTdRtCHvuk6B6X", "GenericOauthFlow": false, "IsActive": false, "Issuer": "O2m9vqjhbeK2qN8g", "JWKSEndpoint": "6x2PyYDo5R3hLiD5", "KeyID": "sf5y1JsxJNGmyt0S", "NetflixCertificates": {"encryptedPrivateKey": "QDUDoWBZVGLlkUet", "encryptedPrivateKeyName": "zCAWc9x1aMjgGim5", "publicCertificate": "1T107XIZRZ7tZdIs", "publicCertificateName": "0xf4czdt7zqmSKxO", "rootCertificate": "EQlVcx6GqsBq8vdh", "rootCertificateName": "WVnuYLgpZehK0G2n"}, "OrganizationId": "myuViB9kRTcSQdTn", "PlatformName": "NYGeAfYFG3wSkHKu", "RedirectUri": "fBdS3ZOokZB4cXnA", "RegisteredDomains": [{"affectedClientIDs": ["XyuGz6LlxHv8Swya", "gYvDJ3w3UNgIGj2j", "ZtEYT8sIPSE1XXPz"], "domain": "ySa0sZoFS6xCOWMp", "namespaces": ["yh9pMsQgb64ELbzD", "Mwyo4nIRysQdbufX", "jYnSoIFeouC2m38k"], "roleId": "XrDZWlGVE9sJ4NpU"}, {"affectedClientIDs": ["tKp6M9I6nEwnZhsj", "wJeGwaPSDMZz95OY", "KiqaZD63xe5rruJV"], "domain": "fLGea0ZtlzUcuHAX", "namespaces": ["z0UV31MfuGaXsAuG", "sZaSHevO0TQNEI3k", "fabxJWWSI1ECUo1N"], "roleId": "PpeFhUztXDgB7n4C"}, {"affectedClientIDs": ["97uAPP8PATLpUpxe", "JlsBJT6Hh3OMjAjq", "2mK8lbSEEelxnb5Q"], "domain": "xWG2HFnZlA6HKWW4", "namespaces": ["fI1IQcoBQELcNlZk", "qTZrKgXNwvm4e5GX", "6H742OixhtAoKiVm"], "roleId": "6URT95XhnUcvWB28"}], "Secret": "MpusuhhDJ5slzgiW", "TeamID": "ZEtyd56LfxnbY97j", "TokenAuthenticationType": "jYgXchCbkXX26uEd", "TokenClaimsMapping": {"CfQaMAQuTKfC0I2k": "NjCMDtDMrentgn3D", "hqciwIeShF9RKb9v": "vxuJlhXbWhbwPwTo", "C6knjVwVnzaqSfJi": "QFC2gXoda0kg16yU"}, "TokenEndpoint": "SpSOAjHJWwfCjYwW", "UserInfoEndpoint": "kLob9gKLqs2nEZhp", "UserInfoHTTPMethod": "ByfHZinxNfgPAwkM", "scopes": ["BsznlBUqnLT4AbGp", "tKaWNvPbpg7yrRvX", "fZ6rvgvEY3Hht1Sw"]}' 'qTsKKKo37NHDOQe9' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-domain-v3 '{"affectedClientIDs": ["1Ps3ztUIV0dS6hIH", "9c4VfkyrwpuXxbaE", "RbfgPmi0eHkt1mr9"], "assignedNamespaces": ["EOIFg0dnWIYN2NVL", "70Iw157g00jr9b8M", "uYmmeKTmBNvGYxEQ"], "domain": "df3ewoGGoY7xmFNA", "roleId": "mjDDCvs78mcMdiS7"}' '6YApGJ9ufwLYkqIg' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-domain-v3 '{"domain": "LuZS6hsQryiEtOAb"}' 'peUNf26UqkCfgCUY' --login_with_auth "Bearer foo"
iam-retrieve-sso-login-platform-credential 'Bn2xaOBdPF0JmX8q' --login_with_auth "Bearer foo"
iam-add-sso-login-platform-credential '{"acsUrl": "wU1cTuHHPB5S3DvP", "apiKey": "RCzBrVUxmDOj3cvR", "appId": "FaTC11W0TGTCm4fZ", "federationMetadataUrl": "Wuk6pQxDQpKqxLGe", "isActive": true, "redirectUri": "vr9TsvcMQ7dBsaIe", "secret": "cRxIsZvD6rmzVr5X", "ssoUrl": "T1Nxw0v1dMQ9Rrbk"}' '6C2cVWf6ttvbU1PO' --login_with_auth "Bearer foo"
iam-delete-sso-login-platform-credential-v3 '6ApCD2VXidT7w0Oc' --login_with_auth "Bearer foo"
iam-update-sso-platform-credential '{"acsUrl": "15N8WXBPp17PAewq", "apiKey": "Sm5x3B4t7WQnp8jX", "appId": "Zedgt5cyNe27HLtw", "federationMetadataUrl": "tVOaxgP6Jbct8puM", "isActive": true, "redirectUri": "TGh5BxjWOozGoDts", "secret": "UuYo5p8ED5QZAufw", "ssoUrl": "Na8lzfjv9oYMXMjl"}' 'VHY1AHwF3vGoav7M' --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["K0PcLnEkcokKwcQ0", "baDT9OyJ2h23GUS2", "amU7syGlElXdEAOr"]}' 'VSnLocLVVYamQc4w' --login_with_auth "Bearer foo"
iam-admin-get-user-by-platform-user-idv3 'cG5nDBLJoJHbiQ5d' 'uE5p4cfs2E41cK8Q' --login_with_auth "Bearer foo"
iam-get-admin-users-by-role-id-v3 'TwiIAvxSvNDlmM5n' --login_with_auth "Bearer foo"
iam-admin-get-user-by-email-address-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-ban-v3 '{"bulkUserId": ["QFMGzs7fzjgyc44m", "Eh9tRk8knYSV30ln", "roQehMDli6t9unQL"]}' --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-user-i-ds-v3 '{"userIds": ["YXxm09wpGAbpEmDY", "9vLh3u6EDsUmrV6k", "H4OotKwG3UC6XCnn"]}' --login_with_auth "Bearer foo"
iam-admin-bulk-get-users-platform '{"userIds": ["ZxF8CmQr17W65br3", "4rBBN9tU6TDm5Glo", "FSKWM1eym5ydC6p2"]}' --login_with_auth "Bearer foo"
iam-admin-invite-user-v3 '{"emailAddresses": ["5xCWTqUOYZENJ1QH", "ZQxPRXH7uxBJEECQ", "E1li3Bg7Jxc9pUnZ"], "isAdmin": false, "namespace": "knrgidKupvXO6aj4", "roles": ["hCmTC34jxW4pIDwd", "qXpmRmut9H9XyWI8", "bp8fQxRuX91uYmtr"]}' --login_with_auth "Bearer foo"
iam-admin-query-third-platform-link-history-v3 'HJbEGTUj7YjERL1r' --login_with_auth "Bearer foo"
iam-admin-list-users-v3 --login_with_auth "Bearer foo"
iam-admin-search-user-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-by-email-address-v3 '{"listEmailAddressRequest": ["EQG02zccA8wvLsWU", "Nd6lPKvqDejvqklT", "SvDwuOrP9lzpiX0V"]}' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v3 'uFpZum7izxe7NPzj' --login_with_auth "Bearer foo"
iam-admin-update-user-v3 '{"avatarUrl": "Oa8E7wY76PxLv9HB", "country": "EUe89AwEw1HO4FnK", "dateOfBirth": "tx4XLKAmlDr19uJ3", "displayName": "nq6VerzVCcI8y3Cz", "languageTag": "0YqCKUh5RD9vNAp4", "uniqueDisplayName": "jinFpnQ5xF9wwbvM", "userName": "ZyeDeRnVfPUa6xVV"}' 'Bcq3wZpFIYeAg79H' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v3 'cLJXJ7mpVI6eTYAj' --login_with_auth "Bearer foo"
iam-admin-ban-user-v3 '{"ban": "dPlCiQQC35cj4KyO", "comment": "VgvnWbfRJtsB7cUQ", "endDate": "Z2QUAxJrINPXppPN", "reason": "O3AfmXcgwC3IN6tv", "skipNotif": true}' 'gLB9QmJIOq9dP5sz' --login_with_auth "Bearer foo"
iam-admin-update-user-ban-v3 '{"enabled": true, "skipNotif": true}' 'utjsQ4CrRb9gUCeV' 'z7fWbZIdhevfZvyV' --login_with_auth "Bearer foo"
iam-admin-send-verification-code-v3 '{"context": "7AcodcZwKjYDdmJO", "emailAddress": "lzwm9Su4FnS98Qqf", "languageTag": "tSjq7sn8yreciPLf"}' 'kVyyJsbGpO6JgehD' --login_with_auth "Bearer foo"
iam-admin-verify-account-v3 '{"Code": "JxEN7JlZc8LMq1o2", "ContactType": "jZWu4yA3r0u4q1bT", "LanguageTag": "HXIjfJKyFlM0u1uu", "validateOnly": false}' 'ntCVqiYOJf5KwMZQ' --login_with_auth "Bearer foo"
iam-get-user-verification-code 'jzvjSozv6CTRDl0z' --login_with_auth "Bearer foo"
iam-admin-get-user-deletion-status-v3 'p9CzHFwinkBNi4gv' --login_with_auth "Bearer foo"
iam-admin-update-user-deletion-status-v3 '{"deletionDate": 34, "enabled": true}' 'gl6TZ9TGVPmv34h6' --login_with_auth "Bearer foo"
iam-admin-upgrade-headless-account-v3 '{"code": "T7EsufmfxKYB4LM6", "country": "H6QXmpZ9X3fUSR1l", "dateOfBirth": "9xLPBsmAUrD9L1Ii", "displayName": "D6MlcEPhMDFzjHZ3", "emailAddress": "sIhzOx2CXKlvIomU", "password": "3pIxM9n8D2eLMe3l", "uniqueDisplayName": "t9qfx2UDcgVE7L9F", "validateOnly": true}' 'e0MrPc4vtxk9hVKl' --login_with_auth "Bearer foo"
iam-admin-delete-user-information-v3 'G56HlzGr7XjdyRJu' --login_with_auth "Bearer foo"
iam-admin-get-user-login-histories-v3 'nZPkp6ccIBnWyPw8' --login_with_auth "Bearer foo"
iam-admin-reset-password-v3 '{"languageTag": "mj7gyQ7XdIszGRj4", "newPassword": "6COPipH1MWVTHG0q", "oldPassword": "HJCWEfOJpZm9yEYW"}' 'NGMy2pgSGSUOK68e' --login_with_auth "Bearer foo"
iam-admin-update-user-permission-v3 '{"Permissions": [{"Action": 34, "Resource": "xZEDxGiBnNbn0zaf", "SchedAction": 2, "SchedCron": "CaOSlHXrUSA6sMJz", "SchedRange": ["A5mtqISQ83TTbtef", "XWznDe4LQdXfFBii", "2RAMEX5RMjBFVZGY"]}, {"Action": 52, "Resource": "IL2l3hPjNDKv2LWf", "SchedAction": 82, "SchedCron": "qjr8fS79En3wYowB", "SchedRange": ["dkaZ3y6i38XQjLDR", "qkpiFK5BtiQ272Uo", "9UBJWodpdwsX1jor"]}, {"Action": 4, "Resource": "anGBrkzUvck3xTtm", "SchedAction": 84, "SchedCron": "BCgIs1Q2lzxl0yF5", "SchedRange": ["m77TTh4gUoj8u2WR", "cLiEtzVlnkflfn7p", "HY48F1dl1q92m3iR"]}]}' 'lfnBAk0CwiAsR65y' --login_with_auth "Bearer foo"
iam-admin-add-user-permissions-v3 '{"Permissions": [{"Action": 88, "Resource": "1DjOsrs3CUYATdqn", "SchedAction": 87, "SchedCron": "cgeqzGbruNB72HHM", "SchedRange": ["kjzyBB4UFKiaoV0V", "Oem2yqPsMFxKybPk", "buS6x9cLJ1APnNls"]}, {"Action": 1, "Resource": "CPUYnfG6jl9U4jRe", "SchedAction": 39, "SchedCron": "LMR919IZPKOKiAVQ", "SchedRange": ["XXOmqFHLbyXmgCNi", "XH8uenbC5CphgMwe", "exsIAP5vHLjBJ9iq"]}, {"Action": 79, "Resource": "GvJ4UMS93yOxNInD", "SchedAction": 56, "SchedCron": "cvQU5kG8bXGFmPAn", "SchedRange": ["OkDiJq4xQye7HqnV", "K3YVeOWs9mfVQh3j", "LBtn9pxpE7BYtzB0"]}]}' 'B4CxyQrUpIFvORxT' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-bulk-v3 '[{"Action": 18, "Resource": "eRWdECaFGzfZ2hxc"}, {"Action": 73, "Resource": "E2r3vk3IfAKEbqcN"}, {"Action": 80, "Resource": "SGCCvNowNmdpcJgF"}]' '88ySNq4Mj7mulP4t' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-v3 '86' 'ADCGiXaLs2xjHkin' 'OD975nARHCmhNHSX' --login_with_auth "Bearer foo"
iam-admin-get-user-platform-accounts-v3 'uqIHsxvaUoXDmwWs' --login_with_auth "Bearer foo"
iam-admin-get-list-justice-platform-accounts 'ukxncuD3QxCXMd00' --login_with_auth "Bearer foo"
iam-admin-get-user-mapping 'YBWCaVVmM45mfIZs' 'WhkS476dGGJwJ00U' --login_with_auth "Bearer foo"
iam-admin-create-justice-user 'H197MJ6zU7JLMQyM' 'WzYQCAaPJgoxGJoJ' --login_with_auth "Bearer foo"
iam-admin-link-platform-account '{"platformId": "aSzUtY4ZD0Xtb0U4", "platformUserId": "pH16NUsVY21NVIs7"}' 'NRen2Y3Ns0QJQeaW' --login_with_auth "Bearer foo"
iam-admin-platform-unlink-v3 '{"platformNamespace": "ytPfds1BYx0EaURy"}' 'df8ZyyZeHAWGgJUb' 'UJRMbkcTglbU86Fy' --login_with_auth "Bearer foo"
iam-admin-platform-link-v3 'OjApNHBVfNOURcjY' '3YYT9oTynmfIuBWg' 'JTNFfM8M0IW4oe8K' --login_with_auth "Bearer foo"
iam-admin-delete-user-linking-history-by-platform-idv3 'Dgy0xZfAcNg14Ws8' 'TIP1LKiFQoLDvumf' --login_with_auth "Bearer foo"
iam-admin-get-third-party-platform-token-link-status-v3 'qrgSfnx2h61X9dN1' 'MGRXBJ6mVV7JS9qj' 'NLwvI8JdiY3RRiLi' --login_with_auth "Bearer foo"
iam-admin-get-user-single-platform-account 'lmOGF6dLLIeIVIjM' 'cdlbdRXTGIrdNL5g' --login_with_auth "Bearer foo"
iam-admin-delete-user-roles-v3 '["JPqTAjgqaTHf1ANT", "J9Yk997XkGOdC6It", "xDT8p4n4XCFkD1AJ"]' 'LCwszbZxuHSgDOK8' --login_with_auth "Bearer foo"
iam-admin-save-user-role-v3 '[{"namespace": "bjoF7bL2635KbtZT", "roleId": "GJpqgl2IzNXGTuQP"}, {"namespace": "IDpor7t1aJLNNz6Q", "roleId": "IVC9Mfuc8VOsnmnl"}, {"namespace": "VljdWYmELe74p38v", "roleId": "umnxAnYBTxaTIz0j"}]' 'cgDI8Pkz96vd80ms' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v3 'qIm5bufnBqrpLeqh' 'wVhjnnjKMEmtbiWs' --login_with_auth "Bearer foo"
iam-admin-delete-user-role-v3 'AQHbMrKYi0Zxs5SW' 'CqZXHLLa31oQf7BU' --login_with_auth "Bearer foo"
iam-admin-update-user-status-v3 '{"enabled": false, "reason": "nZDhutDM6BqguqD5"}' 'xxGxBWtnTKUe2zns' --login_with_auth "Bearer foo"
iam-admin-trustly-update-user-identity '{"emailAddress": "qPzPkwCBo2SwCUsT", "password": "ag4MLAo3m61P2xaN"}' 'fmn8Onb1a9gMz0F2' --login_with_auth "Bearer foo"
iam-admin-verify-user-without-verification-code-v3 'UBRmMhAbUWmFhdYL' --login_with_auth "Bearer foo"
iam-admin-update-client-secret-v3 '{"newSecret": "WzMuv3zkUY0n0BAZ"}' 'kwbYkBLyO6A0Fqfh' --login_with_auth "Bearer foo"
iam-admin-get-roles-v3 --login_with_auth "Bearer foo"
iam-admin-create-role-v3 '{"adminRole": false, "deletable": true, "isWildcard": false, "managers": [{"displayName": "JHXGXku2YVuOzhxH", "namespace": "mnrrV9ZGWrZ05sxe", "userId": "6A6RpmKDebNkylby"}, {"displayName": "nkgT9vayLLiizac7", "namespace": "Ge6zKJdlt7rjF5Ra", "userId": "JwvkWVco2LTo5ijl"}, {"displayName": "vDF8qBWCQ9dLWYyS", "namespace": "8zdhMeBXH8x6HdVf", "userId": "ZVDAiU6iJOF7JKZF"}], "members": [{"displayName": "Nk2NKy59X8iOg2sV", "namespace": "BiCoeC5weXJl7Pei", "userId": "MH8z8dVej8N2yv6V"}, {"displayName": "TnOK7xAvM7tuL81l", "namespace": "sR7xxSVp3Gd2TK0H", "userId": "zYviTgYmx82JVBRL"}, {"displayName": "PZ6Iz8tne5dbguBF", "namespace": "6Gsvvdl8jHz9x7XZ", "userId": "IjU4IK9lOLaZaMph"}], "permissions": [{"action": 75, "resource": "TtZyTjdKNKgYazuj", "schedAction": 38, "schedCron": "LIxGnNuhoJM3WWPv", "schedRange": ["vCiCf33ViEdqQpoG", "kUWNizk5UcPAGv6c", "1ESC6hZYTYZbzf5a"]}, {"action": 55, "resource": "dQuWfgBAKx27MSBq", "schedAction": 0, "schedCron": "9szApmWJO5vzzXZj", "schedRange": ["08a6K1XRVfriSpPF", "nZBJZkDnEiyfa2Lr", "npZxNnLRH36bqS2o"]}, {"action": 64, "resource": "U2aL4bPkk11sys6G", "schedAction": 8, "schedCron": "cT3u6Zc2FbrTFznT", "schedRange": ["gDIwZIRWf6T3by2k", "YSCdnFKLc0xcTjqj", "dcEfU61OJYMnW49r"]}], "roleName": "Wynp1ck1vT90C6o8"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v3 '6cSRL9cgbUmulhe9' --login_with_auth "Bearer foo"
iam-admin-delete-role-v3 '8oaFKlQicdrxVhrt' --login_with_auth "Bearer foo"
iam-admin-update-role-v3 '{"deletable": true, "isWildcard": false, "roleName": "AD77ci0vfWVZoRRM"}' 'Pi57HyKKz5nyI6ul' --login_with_auth "Bearer foo"
iam-admin-get-role-admin-status-v3 'KNKoXa0dgx1JgjC5' --login_with_auth "Bearer foo"
iam-admin-update-admin-role-status-v3 '6pda3YhtQxpCYME6' --login_with_auth "Bearer foo"
iam-admin-remove-role-admin-v3 'x21pdX2QSPAd9sxo' --login_with_auth "Bearer foo"
iam-admin-get-role-managers-v3 'LnWGP1PafIjLX8ce' --login_with_auth "Bearer foo"
iam-admin-add-role-managers-v3 '{"managers": [{"displayName": "0KbNN7Ycl2JfmQpl", "namespace": "vGjVQ4aebjfgGu47", "userId": "2oWJlfglLM4xjfkN"}, {"displayName": "L4lU6jaGfsD1cfsw", "namespace": "meFpvtDtetoQVFL8", "userId": "LNW11vtpaTxi7k48"}, {"displayName": "9jRCn48bvkCPfKof", "namespace": "wXOIZZQAJza84lKK", "userId": "mVOaTS6xBbNrSUAW"}]}' '2ak7ISDrBVg6NuDZ' --login_with_auth "Bearer foo"
iam-admin-remove-role-managers-v3 '{"managers": [{"displayName": "vPb1kuUfNfUDe4g7", "namespace": "q6PHEaqbzHvDDl1j", "userId": "iLw3XMGBA6JXDpA1"}, {"displayName": "tIC45C0oaGouFu4h", "namespace": "XONgUwJnUpryDeRc", "userId": "pUvlrw2MwC1uuokp"}, {"displayName": "aIjL0Vxe5n9Lx3Qc", "namespace": "Fo9gxOgvDc7xMrRK", "userId": "vw8ISP2WKmCRRXBx"}]}' 'lalCHtWlKxLpS8fL' --login_with_auth "Bearer foo"
iam-admin-get-role-members-v3 'WoQ5nuJhatQPxR7d' --login_with_auth "Bearer foo"
iam-admin-add-role-members-v3 '{"members": [{"displayName": "vBVC5zgOKLTDmHe8", "namespace": "c1eJ9sde7Ryt4udI", "userId": "v22M18uux9xBomQF"}, {"displayName": "PFWy5cwNPI6aFo0M", "namespace": "VwDZCIXFNEL3uWVR", "userId": "z3V7YbJM3bNLWHAb"}, {"displayName": "CZixe2cQ6O30lpzc", "namespace": "BQMAEcNcJqrKxnMz", "userId": "SYoc4ZjiMY4H34B6"}]}' 'wVd8ipcKDwQeUWtj' --login_with_auth "Bearer foo"
iam-admin-remove-role-members-v3 '{"members": [{"displayName": "CC2UH6jzMO3AfmOS", "namespace": "5mQNyRPZFPNP56l1", "userId": "AT6OLKmZhCZxxPPd"}, {"displayName": "PwOtEuWBSO2jJepU", "namespace": "nEEgja2mIE2kLTnJ", "userId": "wc5XmkCuL5W4tKt6"}, {"displayName": "G3j9LYdG7xVPqBqe", "namespace": "9RDQMBSYAFLqp8PF", "userId": "5hCcoukWpnbz4ys7"}]}' 'j6lxuU3u2HEG0qfK' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v3 '{"permissions": [{"action": 9, "resource": "OKnX51yAB8Pa3uNG", "schedAction": 75, "schedCron": "tYgWGcA0h4G1LZ1H", "schedRange": ["aX5UBMbsF44VTsLD", "Rzdq22cbnyK3ggFD", "h2kaZP7pnnVfxPwc"]}, {"action": 31, "resource": "59HF9ejHaILQruAu", "schedAction": 62, "schedCron": "yJLYGqMv824ouSgk", "schedRange": ["pK70uJmUL0uzElix", "c023dIvDiA0tQWlH", "wBcTtztx3VAl6tXF"]}, {"action": 2, "resource": "AWWcbcbGWmKgE8CZ", "schedAction": 9, "schedCron": "AELr5lraa5v5P5Cj", "schedRange": ["8hgFsqHC9h5JPiME", "tgKuiGTYgwWv5Xld", "L6rOVGcRAn51rVAQ"]}]}' 'Sxp4qTB54mKA3V9D' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v3 '{"permissions": [{"action": 74, "resource": "ItzkMJ7cudf4r916", "schedAction": 67, "schedCron": "Ipb1cIOJPS3lJ80Y", "schedRange": ["J41U4ooQ980ywmg1", "pWpWit1QC7FKe0fn", "HUlmU1unGKM0tgfe"]}, {"action": 50, "resource": "bamSCvX1nwvSWdDw", "schedAction": 59, "schedCron": "596FwBNrFXt3TAuK", "schedRange": ["BwBcD12ae6r3hHwy", "a4NpdOzg3hr6ucHf", "7dbh2iKNUl0qJqzo"]}, {"action": 74, "resource": "AqanOlscRIWw82k5", "schedAction": 75, "schedCron": "4SnKNXLMUaDSwwQl", "schedRange": ["nNRZJHBSB4fZWEFI", "Zs28Ff1kZp1Zktx3", "N7WNMYIfcDKbLu8p"]}]}' 'nK34oA1keYXJvtgg' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v3 '["DdXjbdjMBahFZZGM", "TcqnWrIprOv0BJ9S", "gl7H1sdH2RIJz1eI"]' '7Q5pu9PutLf6IrvZ' --login_with_auth "Bearer foo"
iam-admin-delete-role-permission-v3 '29' 'TQ9P7sYLDWAJOA75' 'K4BYJ2fkqYJoF2FI' --login_with_auth "Bearer foo"
iam-admin-get-my-user-v3 --login_with_auth "Bearer foo"
iam-user-authentication-v3 '3vyyqRzc20O7FdsJ' 'P1G9tyBTfERXdvgD' '1Qf7Ot2DkUt3yexZ' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-authentication-with-platform-link-v3 'BRvxYnEBhXtAVxCd' '3meTrT7cF9oVCh89' 'wNOkKYssVejcL3kR' '3hCGNgaJmuALlMQl' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v3 '9RLrthbfp0VgweLl' --login_with_auth "Bearer foo"
iam-request-one-time-linking-code-v3 'T2sY3SsTnDQY7kKU' --login_with_auth "Bearer foo"
iam-validate-one-time-linking-code-v3 '2u06Q4veujxtyQEN' --login_with_auth "Bearer foo"
iam-request-token-by-one-time-link-code-response-v3 'vJrBCqeg67d4RWOq' 'O4U0bitNQLzwRoWn' --login_with_auth "Bearer foo"
iam-get-country-location-v3 --login_with_auth "Bearer foo"
iam-logout --login_with_auth "Bearer foo"
iam-request-token-exchange-code-v3 'R0AbkCPY70FmvviV' --login_with_auth "Bearer foo"
iam-admin-retrieve-user-third-party-platform-token-v3 'IBbcujF8Vk5qb8Nh' 'WWwaxyMchkt8l5IP' --login_with_auth "Bearer foo"
iam-revoke-user-v3 'SrwrJl7wYIVw13NC' --login_with_auth "Bearer foo"
iam-authorize-v3 'o9yXlbQ52FTHTCj6' 'code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-introspection-v3 'XAblkT8VGgSH8MGZ' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-jwksv3 --login_with_auth "Bearer foo"
iam-send-mfa-authentication-code 'GwiVj7eDTaka9ABf' 'X1IByPEOuPhGspRi' '3bhPQvBBJI5Jxytp' --login_with_auth "Bearer foo"
iam-change2fa-method 'cubN4AUUPFPscZsX' 'eJOD4DMtqfIGiGJo' --login_with_auth "Bearer foo"
iam-verify2fa-code 'vgWSRxZ8N4UQ2fg3' 'V1o2x0hL5DuBDqMy' 'IAzWze94MEdJFAy2' 'true' --login_with_auth "Bearer foo"
iam-retrieve-user-third-party-platform-token-v3 'llJkRGB8jqJEd6eq' 'qsBVyONV0JRtozI0' --login_with_auth "Bearer foo"
iam-auth-code-request-v3 'jpliCFQ6WgJpGPig' 'dc5VyC4qvWjVac1c' --login_with_auth "Bearer foo"
iam-platform-token-grant-v3 'QvSxgTNIUzxDgBlI' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-revocation-list-v3 --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-revocation-v3 'buzm7DzJ20NFRJIh' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-simultaneous-login-v3 'steam' 'XR2dYprPmbpuptEC' --login_with_auth "Bearer foo"
iam-token-grant-v3 'urn:ietf:params:oauth:grant-type:extend_client_credentials' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-verify-token-v3 'jx8Upe8SjMvpqM8p' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-platform-authentication-v3 'uggOEdG47gD5i2Ni' '6AnWn3NdEPhNHSH7' --login_with_auth "Bearer foo"
iam-platform-token-refresh-v3 'eKDfRcngEpTnRUQr' '3RLOM1vEx4gqDY6j' --login_with_auth "Bearer foo"
iam-public-get-input-validations --login_with_auth "Bearer foo"
iam-public-get-input-validation-by-field 'wyKRxhkLe5zohg9s' --login_with_auth "Bearer foo"
iam-public-get-country-age-restriction-v3 '9utRQt28b6o3K0CO' --login_with_auth "Bearer foo"
iam-public-get-config-value-v3 'F74tz6aeXZOYwbwj' --login_with_auth "Bearer foo"
iam-public-get-country-list-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-public-v3 --login_with_auth "Bearer foo"
iam-retrieve-active-oidc-clients-public-v3 'MNdxKWlBfnRyFS0E' --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["d7gTM5AVrtBQiDTc", "NnZa6Zuxk6u6HXXd", "iC9ZDj4E4mv12FNX"]}' 'ypoOLl13j84P0Kqi' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv3 'rJ4PkMFtsnFfz8Ew' '0X8fBuBSKLSQ4GvL' --login_with_auth "Bearer foo"
iam-public-get-async-status 'tz50D3rpBfBovqLw' --login_with_auth "Bearer foo"
iam-public-search-user-v3 --login_with_auth "Bearer foo"
iam-public-create-user-v3 '{"PasswordMD5Sum": "XBuT30EYeRj17xGh", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "vJBwb6CjZUMRf2VJ", "policyId": "etWsokvx3BHuTEcz", "policyVersionId": "r9KjQ3ttz8MTBt1x"}, {"isAccepted": false, "localizedPolicyVersionId": "29mcjSuz9vbNStqP", "policyId": "tQmQN6eKAGiZFCft", "policyVersionId": "T0RWECdjWYrnulxc"}, {"isAccepted": true, "localizedPolicyVersionId": "wYLQcDvkaEIIPoJT", "policyId": "83zEGXmVBZLyrH9J", "policyVersionId": "7BoysmaORLkP5hc2"}], "authType": "Fh04JTsqDTynCewq", "code": "JligLlRxOelKykIC", "country": "RxF6HtlER2txs4qr", "dateOfBirth": "NARATn6KXOutlYBb", "displayName": "LhL8KXx25FZfQIod", "emailAddress": "VBqQsBpCJBIXLGYc", "password": "wWVRK6UKk5ozrXA4", "reachMinimumAge": false, "uniqueDisplayName": "ZHNyq9odanhR1Zrm"}' --login_with_auth "Bearer foo"
iam-check-user-availability '3thUvV87yfkycLSV' 'dleSaAylsmLYe2ph' --login_with_auth "Bearer foo"
iam-public-bulk-get-users '{"userIds": ["YOgT5kDTyPl3dKF7", "NXEjrJMki8jvc3P8", "Gwjg3IOH0SDHgYKq"]}' --login_with_auth "Bearer foo"
iam-public-send-registration-code '{"emailAddress": "xJiFJdrmj5vhzgsJ", "languageTag": "wex7wq8ZPlXNaUNg"}' --login_with_auth "Bearer foo"
iam-public-verify-registration-code '{"code": "dY2vfJuje5cPnmGj", "emailAddress": "TvYa5Pqx1K7qcAoi"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v3 '{"emailAddress": "jBPAp6EPb988Nzxr", "languageTag": "DKVpULjjiw3NeVG4"}' --login_with_auth "Bearer foo"
iam-get-admin-invitation-v3 'DJi9DaMrc0WFgKjE' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v3 '{"PasswordMD5Sum": "945x2CPVYYG9WvoG", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "zvTScdbKBsAyJMz4", "policyId": "ILNDvhB4Eoes9a6X", "policyVersionId": "aJeRbzTPwD3jxF7v"}, {"isAccepted": true, "localizedPolicyVersionId": "f3juXW4JprIb3CJC", "policyId": "AtvSG8Cfa9dzOJDG", "policyVersionId": "CTHIOFjeXbsSgR43"}, {"isAccepted": false, "localizedPolicyVersionId": "Qw80JfMpPrSqYypR", "policyId": "Unq5o4ETeCUYG9cc", "policyVersionId": "Tt7Wxw8OQ13t3uTw"}], "authType": "6zQuoZcXQpoTOxe8", "code": "y1jorNsg9ZKYCKoI", "country": "SyXtHzoWGdYohxMp", "dateOfBirth": "3uOQIybqWfG9BJ6F", "displayName": "VKlbYHtbPtaxvagS", "emailAddress": "lpGgVTF6VeDAPOGB", "password": "wweyFfXEOEAEtbag", "reachMinimumAge": true, "uniqueDisplayName": "gBgyCd5vjkfz3eR4"}' 'DtNp129hzBw3xLUc' --login_with_auth "Bearer foo"
iam-update-user-v3 '{"avatarUrl": "CEt0DzmkJq1sml5b", "country": "Yt76BNsi4giR9434", "dateOfBirth": "WpKKdzxoufCNlFoO", "displayName": "cWQQy4bjmQeEweoB", "languageTag": "HTdwAk7ZQnbqY1cQ", "uniqueDisplayName": "wVEtAr5kKKAo9MM2", "userName": "Cqm84jVi9kIpqgrz"}' --login_with_auth "Bearer foo"
iam-public-partial-update-user-v3 '{"avatarUrl": "pUkNOBWydXV0Fi02", "country": "aFr8CDapjwNOl4k8", "dateOfBirth": "rVNrm8drv8QD2JOe", "displayName": "2Ntz7EFvowPgIGue", "languageTag": "txFMqXCQMAqQ2ZRG", "uniqueDisplayName": "zNtrThFa9XU8mosl", "userName": "uiHZJ7O8sAQ32wj9"}' --login_with_auth "Bearer foo"
iam-public-send-verification-code-v3 '{"context": "uaDzsr9xYiWRuuzQ", "emailAddress": "JiLc1eI9w3JEhxPG", "languageTag": "bEk7s7gw07FlounC"}' --login_with_auth "Bearer foo"
iam-public-user-verification-v3 '{"code": "3vJKBC7SwgoViPeI", "contactType": "B4Ehy0Y5aSJVDgin", "languageTag": "xAM77eY9C14FbfiI", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v3 '{"code": "Pvl1kCY5bEokxXxk", "country": "WZbjf7GZxaossQmj", "dateOfBirth": "o69wohJFyTNk5FGU", "displayName": "PhR4LEZvz3EjFR79", "emailAddress": "96Ug5m4axDV5uTcY", "password": "soahUrELQ1btjJOq", "uniqueDisplayName": "QMgZWAU6E92nHJzv", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-verify-headless-account-v3 '{"emailAddress": "lRZ9Z1JBrHRzEOtI", "password": "xzPqb6n73m0jiaDH"}' --login_with_auth "Bearer foo"
iam-public-update-password-v3 '{"languageTag": "86d9rsKgzCsMulpB", "newPassword": "8HZUtVVaJCiLgKOw", "oldPassword": "rSfWhT5B4Wedopzw"}' --login_with_auth "Bearer foo"
iam-public-create-justice-user 'SluBtRFPKThyGnbj' --login_with_auth "Bearer foo"
iam-public-platform-link-v3 'mPDKFS6u9FHuv1M3' 'qfch4SqIV6LQPHla' --login_with_auth "Bearer foo"
iam-public-platform-unlink-v3 '{"platformNamespace": "eYl4csFq65cU66yJ"}' 'aj4ovoKWE4EW0sw8' --login_with_auth "Bearer foo"
iam-public-platform-unlink-all-v3 'v5peiuxoBJATauyD' --login_with_auth "Bearer foo"
iam-public-force-platform-link-v3 '3XCXVMiyEvMf9yil' 'UEujk6oqYo1HQYTF' --login_with_auth "Bearer foo"
iam-public-web-link-platform 'zwdOMdupwD4O3uNb' --login_with_auth "Bearer foo"
iam-public-web-link-platform-establish 'cIDcIyvZbOy1T4hf' 'wkuVykH4RpfmjIXF' --login_with_auth "Bearer foo"
iam-public-process-web-link-platform-v3 'GZ5PKdbabJIkNnt9' 'P1Tkm08luh4dpPRM' --login_with_auth "Bearer foo"
iam-public-get-users-platform-infos-v3 '{"platformId": "DbUXBWTbpAogG2wl", "userIds": ["ZkLhuU5FI8NijFI0", "GKwJ3vfXlsAMy2Zp", "2UAGxHnmSxvkG9UR"]}' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"code": "5q9neoW6JBcGp9Rx", "emailAddress": "2RfcRhXpmeeHdvph", "newPassword": "as9S7ivHEoLbUMM4"}' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 '7f1UreUpxEkXIbE1' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 'ETzRJZKMavu4Ul2I' --login_with_auth "Bearer foo"
iam-public-get-user-information-v3 'aieEbPSE7TGkeHsY' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 'sW9oGBN1pYMBwbPZ' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 'TlMlUvFEiGprcNSQ' --login_with_auth "Bearer foo"
iam-public-list-justice-platform-accounts-v3 '9kEeXBZ6FVrBzyhy' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "hoS6a9oe0JaXFpff", "platformUserId": "28uYbe4Cf2HEHvVe"}' 'vhISjbtBJUK5fE3O' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["ufPSX3PdOU2V9yw9", "4oa8UJ34TIedV3Hy", "oX4VnO2LpBU08wfn"], "requestId": "lHBXFIqFUmgUSMM5"}' 'au8GJT0mkVPI6zUt' --login_with_auth "Bearer foo"
iam-public-get-publisher-user-v3 'f3QaJPGrTNcXXTUI' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 'ggoH89QNmI17UDb1' '9R6H7r1ta3m7jK5p' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 'xe82pgFiAS6piIzm' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-public-get-link-headless-account-to-my-account-conflict-v3 'c8rKrKEPGSAcong6' --login_with_auth "Bearer foo"
iam-link-headless-account-to-my-account-v3 '{"chosenNamespaces": ["eNERUf8kjci1Ctcc", "v9Gv4tOcbnuCqf0l", "m6WBkIzjoSV31tvm"], "oneTimeLinkCode": "MB6jzrpRGESmooHi"}' --login_with_auth "Bearer foo"
iam-public-send-verification-link-v3 '{"languageTag": "CV4GUOnXpapXQGRa"}' --login_with_auth "Bearer foo"
iam-public-verify-user-by-link-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler 'kUbcG7PcR4eiU3Id' 'i55jNrGNT2VHTKuI' --login_with_auth "Bearer foo"
iam-login-sso-client 'T5FwwHj0Ur5F2PWG' --login_with_auth "Bearer foo"
iam-logout-sso-client 'TTD81xhNP4t6kYBU' --login_with_auth "Bearer foo"
iam-request-target-token-response-v3 'jyXAn3bWQF6QcAiJ' --login_with_auth "Bearer foo"
iam-admin-get-devices-by-user-v4 --login_with_auth "Bearer foo"
iam-admin-get-banned-devices-v4 --login_with_auth "Bearer foo"
iam-admin-get-user-device-bans-v4 'pXIrgroixptZhckU' --login_with_auth "Bearer foo"
iam-admin-ban-device-v4 '{"comment": "TGkcBOE4qMcH1Kyi", "deviceId": "8ZFvGcV8DY0XOkDs", "deviceType": "txZcY1HgAnZV4IOg", "enabled": false, "endDate": "NW8Yc481dYdvGxJA", "ext": {"MDRA1LF7jdWlekFw": {}, "O94VBCV9qJhWva2F": {}, "PBujX0geYCpGJM4s": {}}, "reason": "qsPNJMiZXXOFwmGW"}' --login_with_auth "Bearer foo"
iam-admin-get-device-ban-v4 'AvNF0Z0GkwxUNYyN' --login_with_auth "Bearer foo"
iam-admin-update-device-ban-v4 '{"enabled": true}' 'LjYsnignE7KcMF7f' --login_with_auth "Bearer foo"
iam-admin-generate-report-v4 'uDbzRRYMNXWUsp1t' --login_with_auth "Bearer foo"
iam-admin-get-device-types-v4 --login_with_auth "Bearer foo"
iam-admin-get-device-bans-v4 'OibJY9aL9ie6vvMb' --login_with_auth "Bearer foo"
iam-admin-decrypt-device-v4 'iNURrlm88QlKyuoy' --login_with_auth "Bearer foo"
iam-admin-unban-device-v4 'a4JgakZyUV7t73Vn' --login_with_auth "Bearer foo"
iam-admin-get-users-by-device-v4 'SFbuxd4KYZ0jk0UZ' --login_with_auth "Bearer foo"
iam-admin-create-test-users-v4 '{"count": 6}' --login_with_auth "Bearer foo"
iam-admin-create-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "bH6j2W4roZM2UKAX", "policyId": "EEsL5D0oiFchQnVe", "policyVersionId": "q3g2AB2WIRUQmauI"}, {"isAccepted": true, "localizedPolicyVersionId": "bKVoWtoUW1P7ocuB", "policyId": "AldDSUS7Haa6unq1", "policyVersionId": "yQOSRvyiLBRVtIDi"}, {"isAccepted": false, "localizedPolicyVersionId": "piIQFVmzMidw70KS", "policyId": "ahpYZdKZRyR9AX7J", "policyVersionId": "jxvNZhM84DiZk6yS"}], "authType": "EMAILPASSWD", "code": "eDCow2zXyFFVpM87", "country": "yqEwEacQMTlqN4LK", "dateOfBirth": "kxJ5v3SBafnKNiMP", "displayName": "bFkFGA85W3HJkqgS", "emailAddress": "2B37wwoPYOHiIsxm", "password": "sLBPBJuNLnWRrtW8", "passwordMD5Sum": "70qD88ZcduZSe7W2", "reachMinimumAge": false, "uniqueDisplayName": "UZcDaiq0nEZ7Pyhq", "username": "FJkDClOsKmfsgJdm"}' --login_with_auth "Bearer foo"
iam-admin-bulk-update-user-account-type-v4 '{"testAccount": true, "userIds": ["lHi8i9gOVqajUWrg", "EsWDtaKzn8dZwnnG", "eZsZVgbPzPFbrOMZ"]}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["MgWkFN7Tpkx6Gcfy", "Og6ZUrrp9ubg9mnd", "W2JKmQafUs2bxYzt"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "OEyVbKIf1ZbzgUwd", "country": "8DHoCQykmXHYmkRl", "dateOfBirth": "g7gYs6unPYQ9jNQN", "displayName": "1di1ldhOh6HvjnYu", "languageTag": "V7NfC4A2ODiZhbfb", "uniqueDisplayName": "8QqCyK1XH9D6vl5e", "userName": "FdFfgK46GjCWaP8h"}' 'uTmnq3FGQn3Ahu5w' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "xq6oJq4mChmQHQhO", "emailAddress": "9IKBXDFQfXFD58sG"}' '6uDhFYlrzJBYSeMu' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 'JfQecutjS029BiJW' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 'OG1m7MKclr5igjNT' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["VItrH2X78hxJgaVf", "w5Vnyq8OzTE89WDN", "oMcOmbfJrCJQIj1h"], "roleId": "aAosKglqaCXE9ytp"}' 'IO8btO3OwNEGSW5T' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["aW4to7QCY2NGGvi9", "kg3rMIzNmhJTNQjK", "lwjfJ3TJ2xVpge70"], "roleId": "WsLfgbZieRvJI5sT"}' '9DH3DfLCv8q4Thmq' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["09bBgPAYxrBE9jln", "TgtgW33wDwD9RKvQ", "X4yFQFdrRoM6FoqC"], "roleId": "Yw7AlxO6qdFpc71s"}' 'Sck3ggZWJlSlCQMD' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "9PfVrvMEPtpsSNcp"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 'K1QkB2Sy8Ww79LVe' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 'VskqeUB7RSayqGFg' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "h3bvadRthdbVApeb"}' 'RA09rW8i8krFWJhe' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 25, "resource": "3coRFok5d3AyGrZO", "schedAction": 11, "schedCron": "GuoXNSoVEBG7VbBP", "schedRange": ["UWipz9C05YabFX4F", "CK5ucTFsAFzaO3yJ", "pA3KMxBlrRytER1q"]}, {"action": 6, "resource": "EdLucrtO2gCQD057", "schedAction": 59, "schedCron": "SSGGt3MiBKohow3k", "schedRange": ["KoaP1K4CDuH1mMIf", "OCDyVAHrHncR5dSh", "qiBUI9esSsXegSEh"]}, {"action": 36, "resource": "mqWsGA76yxi0QzZW", "schedAction": 11, "schedCron": "2A9VOA8H9VeHv0L2", "schedRange": ["Acm960EYQEuGJVl8", "xs1WId9WlalqshF9", "Rh2o7GCQGPCxwEdk"]}]}' 'yuT3MgzReRq0112I' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 91, "resource": "racO5MnjnxD1OXkx", "schedAction": 91, "schedCron": "zWWaYvBLE46bpuJi", "schedRange": ["p8JyxJ39vrtuWWrq", "TZbSqBSKp8AmgwhY", "zk33J34fiTxK63OH"]}, {"action": 31, "resource": "NpE130YWSgxpKWtd", "schedAction": 40, "schedCron": "6ZXQcb2o1J5euLAb", "schedRange": ["Bgejqc0apxqZ209B", "ySn8aUaGlAyvIslt", "7N1qcxKs4nlf1Mfq"]}, {"action": 96, "resource": "4KVo6Xqjz2xUKLNW", "schedAction": 92, "schedCron": "pefgFIiJssShBKsQ", "schedRange": ["jXvfQgQDt6ce8NDM", "ErA82FrR1GSogkew", "IzTOqKkcjRh3l2gA"]}]}' 'JOTCbx7J3gNLIlTk' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["3Bpclrk4hIRn0znI", "KzAEAHQpBOgHEP5l", "94s7CbIJ7eHnVWOb"]' 'oMkyB7FTexsOZ0b2' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'p3b63KrcwIcXMhGy' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["83Xit6boOLGCcg16", "DqwdQPQ9HkSSV8e1", "MgTTLS2FgarY903I"], "namespace": "NGIyEfRBEj7qms9A", "userId": "GQExPhgr9gGfC0Gj"}' 'vpgJfuBs1Vpqn47G' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "VghTH2wToOnq9U5l", "userId": "yW89Xwt3wmRTrDCj"}' 'hnKvsHezWTqgYPix' --login_with_auth "Bearer foo"
iam-admin-invite-user-new-v4 '{"assignedNamespaces": ["tHk6lWq6tEeUmU96", "FLEak0mJqjRYldcT", "pdeCD9XPRi4bAQL7"], "emailAddresses": ["VE2wL8Y4JFVUdzA8", "bvXlDhG7BrorbKIK", "uOXJPm5ztrr09CDA"], "isAdmin": true, "isNewStudio": false, "namespace": "a9YdFNtRVSO0js0h", "roleId": "G9xmSnzd7zgUxAog"}' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "cnGkXk17QPkJHRhm", "country": "LKQuQVFSKiXl8G2u", "dateOfBirth": "f6E8EajXLSAS8MKM", "displayName": "axQ1QyJCpKedhuzI", "languageTag": "7G9NCKKXu1bqI2M5", "uniqueDisplayName": "PmXfKnQ7BYGjCUDM", "userName": "OrbmoRvWnfmGFy0e"}' --login_with_auth "Bearer foo"
iam-admin-disable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-admin-enable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-admin-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-get-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-generate-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-enable-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-send-my-mfa-email-code-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-email-v4 --login_with_auth "Bearer foo"
iam-admin-enable-my-email-v4 'UoOBd90h9EDqSTOf' --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 'oNewWjwMWDKEt6Jh' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "wi7Il2wIFlHm9N6o", "policyId": "wMHMtJy1Oqn59tEG", "policyVersionId": "m9NYeUT5P0nx8TqS"}, {"isAccepted": false, "localizedPolicyVersionId": "kapTCafFMdvYiCBu", "policyId": "zUUwyI6Vtd4v9k4f", "policyVersionId": "v3kMiuQ3DhsKLxjt"}, {"isAccepted": false, "localizedPolicyVersionId": "srPFxBgpFtDBmTLH", "policyId": "9kP9U53z6joBAhAl", "policyVersionId": "JGI2YYb6ajBjgq6e"}], "authType": "EMAILPASSWD", "country": "PBNHKPx62tHxDb06", "dateOfBirth": "ZFy3uglSp2UxvF2u", "displayName": "LXWilRD7HD6LCgdF", "emailAddress": "xRGj00RT6LvcnGMJ", "password": "bJIYLssMvy9gkfTM", "passwordMD5Sum": "RrXVRcAVRDX6gmDf", "uniqueDisplayName": "NfPGYYSTunMgt3C8", "username": "hEguCqlMHiQN3HWJ", "verified": true}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "9zIWsiP2JQ24meDr", "policyId": "wEuTyM2qohglzO8A", "policyVersionId": "El6A9sh2x2ur2ccp"}, {"isAccepted": true, "localizedPolicyVersionId": "7OqPqIjS4i0N9ytb", "policyId": "3c8pVZ8GlU8962e6", "policyVersionId": "gtn5pUARJM1T8QwM"}, {"isAccepted": true, "localizedPolicyVersionId": "vmzbajE2gjooiDnc", "policyId": "1NUb51lEgUwQ9tkW", "policyVersionId": "aMOH47CAT7cBP091"}], "authType": "EMAILPASSWD", "code": "aEBQBP766LUnBBR8", "country": "4iAO7sBQt6YJ2tWw", "dateOfBirth": "F7RnP1oK3c4RVfjB", "displayName": "0zi3XrYZUiN24ol1", "emailAddress": "qqbalgizL97ycJV5", "password": "YqE2myQzl7X9fHr6", "passwordMD5Sum": "WvBxmBvNj3ktaDf9", "reachMinimumAge": true, "uniqueDisplayName": "2ZSRJkujxbCu1HFa", "username": "j6Vxs3GuA4S1dS7H"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "yIS7b5TSDRIoMg7D", "policyId": "c5APzfzXDELJFaIa", "policyVersionId": "EMW5bhJyL72WDyhB"}, {"isAccepted": true, "localizedPolicyVersionId": "fC8x5aHLsXHlm1RJ", "policyId": "TTy9JrNz1K5M1qgF", "policyVersionId": "ddYvifGHawNx6yhn"}, {"isAccepted": false, "localizedPolicyVersionId": "M69XKkLwioRaKnWh", "policyId": "lh80BhYe2fJDS6T7", "policyVersionId": "5Q4ulonMFjmYqE1w"}], "authType": "EMAILPASSWD", "code": "p0DwUj2HKUvPYUcQ", "country": "BxMSdOOsn2Nd8Jpa", "dateOfBirth": "19GJDK46Eehx7xas", "displayName": "qMY9aulsL6NOV5ag", "emailAddress": "pS6A5mkufBpWVxIK", "password": "9D2bTcgaKoccaSwW", "passwordMD5Sum": "cZmzCWGI1cIQcPWA", "reachMinimumAge": false, "uniqueDisplayName": "AJWpcyNkUvqn6eXr", "username": "6FNbKJ05Orya6LSS"}' 'UlugIAknXcSaVYcA' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "Yp7qSiDvsfMUOpWv", "country": "46sXvpOjrpRo4mYr", "dateOfBirth": "CeQUnYoID2UqO0iA", "displayName": "XA9dB4ib8HDOJ8TN", "languageTag": "iP8KgEAj3dbRTI0i", "uniqueDisplayName": "6dO3zkbDseh4tJdo", "userName": "GcwMBmegqVUaWMJB"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "jrV0p9A7tcHrV0Mb", "emailAddress": "JGr4drgkDuWS05m0"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "pGzazM2BUXnzUEWT", "country": "iKMJAf6AgbiEDMfC", "dateOfBirth": "ckWogE5gcfF8AMGZ", "displayName": "2FBS93Mg6TKwdRMr", "emailAddress": "aDLrwh3d0ykRGkgq", "password": "UNIbJMJ9ABbKVWO2", "reachMinimumAge": false, "uniqueDisplayName": "EDiqkwKbpdk7wlDn", "username": "gNiPPjpSAlZwFGpe", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"emailAddress": "xxXdbYCRexPekTsQ", "password": "xMTfaSot7aohFYy4", "username": "VxwHIJ9gzxqAw4vB"}' --login_with_auth "Bearer foo"
iam-public-disable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-public-enable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-public-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-public-disable-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-get-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-generate-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-enable-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-remove-trusted-device-v4 --login_with_auth "Bearer foo"
iam-public-send-my-mfa-email-code-v4 --login_with_auth "Bearer foo"
iam-public-disable-my-email-v4 --login_with_auth "Bearer foo"
iam-public-enable-my-email-v4 'GQAeh0VTiTP4PSrX' --login_with_auth "Bearer foo"
iam-public-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-public-make-factor-my-default-v4 'US6jYI9lsQFD43Df' --login_with_auth "Bearer foo"
iam-public-get-user-public-info-by-user-id-v4 '5qUZOFzpFd6b5Jc5' --login_with_auth "Bearer foo"
iam-public-invite-user-v4 '{"additionalData": "TETHcup8GG0VCMTF", "emailAddress": "J6svTyo9RHget5hz", "namespace": "B52BDFopxUwkMuSq", "namespaceDisplayName": "QnKzDgDAtqE3kuyb"}' --login_with_auth "Bearer foo"
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
echo "1..376"

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
    '[{"field": "wTQFYEJjIYwqfSRy", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["fd1GS5YkyhAiAItn", "WUmD225fp1egsx3E", "rheNwqd5priclNNq"], "preferRegex": true, "regex": "KsOpyq8agQuz86nc"}, "blockedWord": ["6jLF9DIW2ncJJKpq", "mgvUTr8XAtpOqUQx", "zqJZiWi3KQffT5Tn"], "description": [{"language": "61A1xW6okIqmd87i", "message": ["r9op4YfGTno5oHzq", "Y3DgykA8zBJX0rkO", "HUkY5aSlqhYoSXbn"]}, {"language": "6l5xAzc1nc3eFm95", "message": ["0dtVAo7w4e3v5mh6", "Rum5pbgEt39uJQpg", "EtchTe3nt7t9ztpr"]}, {"language": "SfW9OutADrNGBWSJ", "message": ["1zQKxVmRTawjiZPM", "oZZcyGEHxAKDQher", "3usApPdJPn9eIdhI"]}], "isCustomRegex": true, "letterCase": "9jQbHWkcVk0X28GS", "maxLength": 26, "maxRepeatingAlphaNum": 43, "maxRepeatingSpecialCharacter": 39, "minCharType": 22, "minLength": 3, "regex": "7gIKBc7OYTylFRAJ", "specialCharacterLocation": "KySnC0cfPl3Z2zSB", "specialCharacters": ["bs4PAV72u8AxE2IQ", "eoxYV4UcYzswAGpX", "qQxctuVaqPJGAHEZ"]}}, {"field": "muQrZ8GaQ4OZ2nDo", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["8mAj6IKSYFdJwgZs", "RPOzwuDSdGl1A2va", "NeDiSqTfmAVg50kO"], "preferRegex": false, "regex": "eU5iqhx6zv7EURTN"}, "blockedWord": ["IoG1DBdoKH6sREmm", "fwUZLZZS7snx0Q2G", "d8m7Y3wiNloJfey3"], "description": [{"language": "HXL6SjljNPTXA3qb", "message": ["g55SyienCODZ0mnO", "pPTVxEgBFzG8tlkx", "WKCU1XN4gl7yHvEq"]}, {"language": "pJSrDXVwCkhOQ161", "message": ["TFjROYJm75VIuCOC", "kt2W1DfI8QtgODk9", "K6DcMnyCPn1FylWd"]}, {"language": "aNV1VaZTkbbuWiiA", "message": ["4UTDgS2SVEo5M80L", "Lbku9GYH4ijqOVM5", "0tCqkZfsSxAbDJ7s"]}], "isCustomRegex": false, "letterCase": "CLup8pmEosOXglQw", "maxLength": 45, "maxRepeatingAlphaNum": 25, "maxRepeatingSpecialCharacter": 7, "minCharType": 58, "minLength": 10, "regex": "ZUeelXYyNrXweiCn", "specialCharacterLocation": "DldRPRfd6mLZ0GTJ", "specialCharacters": ["wEjoZrRtaeWKMC8w", "sOByQAMAgqFEzEt8", "umj5XhKnw7MHDwFV"]}}, {"field": "KUC2ecnpUDqvLQix", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["jWH9dFmOHW0j9suu", "kPE4JwQONQ2vCbMn", "0Oia336uiiMTAduc"], "preferRegex": true, "regex": "usO6EyVqstpgZpbz"}, "blockedWord": ["77y88rUFum2ZcA8i", "KcF0bkfjcTEFXcTw", "EtnHxP5pVtN4jNVI"], "description": [{"language": "druEA39uCJzsE8WO", "message": ["bt6t0w8LOBxE15JY", "j4IqWK09l4wkrzah", "XR1sDEDVKDINE3Hj"]}, {"language": "CiVR1dQ8kuhb4pUw", "message": ["nGptHUplxzaDa9PD", "whu31d8eOdtrfq6E", "CDD6OGkuLs9gNpNo"]}, {"language": "n6DKW9A6AmnQTNFi", "message": ["dImWONTvCPMGLdbY", "EknHPKrZ7TiNBE0H", "RsE0GHDOFjrfqJcy"]}], "isCustomRegex": true, "letterCase": "Up9VthPjFrK7Hip0", "maxLength": 9, "maxRepeatingAlphaNum": 82, "maxRepeatingSpecialCharacter": 81, "minCharType": 93, "minLength": 66, "regex": "dtWjfVciuLnLsBKG", "specialCharacterLocation": "sALPuCOyphUUAV95", "specialCharacters": ["708zaP0wpZgQEvFz", "ox9wHocX3DRWobEo", "Gr8W97KBedcr6PM5"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    '1z7i0wQ9egK2t46E' \
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
    '{"ageRestriction": 66, "enable": true}' \
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
    '{"ageRestriction": 47}' \
    'lTviKbOgVuN3nhkn' \
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
    '{"ban": "6QIesNoYqvVsakyl", "comment": "HikKkpOjqwgKvfXX", "endDate": "s8pDqm31AZSRkuw6", "reason": "q8FgqG46RsFK7eYl", "skipNotif": false, "userIds": ["U3vYcHZZjFegVnZO", "n0tk4IATSIefcqNE", "n4IZ0Dv6b8WtaMVv"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "LbG04KKnh3jvW0Qp", "userId": "3kTyL4CsLwiWUMcp"}, {"banId": "xn4B6XoTNMuqZTHw", "userId": "o1IAJQpb6r8ZeaSH"}, {"banId": "wQuiH3Ozu4G6bXxp", "userId": "0gYZyF9fJBJkSOrF"}]}' \
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
    '{"audiences": ["9Dg4FcDwBGyBiHew", "ZkwEeuzBBRSknxyW", "kZObuvig8sMuss76"], "baseUri": "ezTrsDZNYUV48Oh6", "clientId": "I45X7HvUtPYONZdF", "clientName": "k75lkjQNHrjaboGo", "clientPermissions": [{"action": 25, "resource": "3yoBM9qxd6PWz7sV", "schedAction": 28, "schedCron": "GejdTGvZgN5hshSe", "schedRange": ["5YmZXKEQLkM6o3eG", "SP4Htmr90TqGf0Oy", "qJ9ibJMmRgoxNwp1"]}, {"action": 23, "resource": "gbJ37DN2lDvdh7ok", "schedAction": 68, "schedCron": "QPWX1NPO5Wn7rNG8", "schedRange": ["rGp7Fadvo5EzpX0I", "ttsRezyY9GB5sf94", "ALBmvdncQkcZb8cW"]}, {"action": 8, "resource": "tqzIWIzg8pbjnt1i", "schedAction": 56, "schedCron": "e5Kd5QB96ndlO6iP", "schedRange": ["GC9RhzMC7V8BEphn", "RXnSpCzyb8FkoxQb", "rPngi87K58pQswqK"]}], "clientPlatform": "LutINusOsa92F6iw", "deletable": false, "description": "9p2to7Yja1soDE1K", "namespace": "0SvGrMYwPmPXC2Lf", "oauthAccessTokenExpiration": 76, "oauthAccessTokenExpirationTimeUnit": "1CvzWPcZwkj1l6bf", "oauthClientType": "2F9EXOBj7v8LHYiv", "oauthRefreshTokenExpiration": 26, "oauthRefreshTokenExpirationTimeUnit": "7dPPyahppgxJhk4E", "parentNamespace": "dTZ000rS92594HLv", "redirectUri": "WFsXHtMP0k9L5dRE", "scopes": ["QbCqfh0gpABFBER6", "WNcDOsRzBkf9A6Hj", "CnFRdSihcvszzQLZ"], "secret": "Bktk0siMup01kyaF", "twoFactorEnabled": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    'dZJkkGhYvXYMIyaE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'MEqOpwetb82b96rs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["H73hRfDgl29GWKpI", "tMt4GszRufkDFLYy", "NBPlMrkse9SGcMuV"], "baseUri": "5phhU315LUC6HSMQ", "clientName": "32UznXNd6ve29lqq", "clientPermissions": [{"action": 39, "resource": "KpJXTLbYWpqeXjaf", "schedAction": 76, "schedCron": "f5fjNMZjKJ05puX3", "schedRange": ["197WrMnJtovSMFw8", "X4zxbdfXgunt1oMN", "Z68eovHSH3xV3URI"]}, {"action": 88, "resource": "ooMLnemwKAvgDXNr", "schedAction": 64, "schedCron": "fMH5Tu1ky1ZYvyeH", "schedRange": ["mfoFkUDP864shbnQ", "3bVvuvpsDJXPCWkX", "4Kpi8CJ88aMPGFFA"]}, {"action": 86, "resource": "WvLRy58UKWPv3F7S", "schedAction": 20, "schedCron": "wCVlYQi9cfMCeNnu", "schedRange": ["6OIG1PPLRDEXLXZW", "XvqNCHvNpeMjMzgu", "q6HFIqaqwH9J6JLb"]}], "clientPlatform": "5f3SBMyJUdwEBRrH", "deletable": true, "description": "GwGbUmQmJHNffZEN", "namespace": "s9X0hFMdzryvhc1Y", "oauthAccessTokenExpiration": 19, "oauthAccessTokenExpirationTimeUnit": "hXmcysae8HpWH4xi", "oauthRefreshTokenExpiration": 51, "oauthRefreshTokenExpirationTimeUnit": "Bb0aGnMt625bWHb5", "redirectUri": "sbX6asrjV7XJUOtH", "scopes": ["lzXNHEPpzlMlx7b2", "H2THLwZGikW7TFA9", "gE6SrYKq6lcVOhPJ"], "twoFactorEnabled": false}' \
    'UxdMuvmL0UBfwzaa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 8, "resource": "MmQSPDTRqjlvwnnC"}, {"action": 55, "resource": "0vAfbq8xoCurq4lp"}, {"action": 69, "resource": "UpR3uUdgNlyU4IJn"}]}' \
    'qtrjCOsE8VjvzhJw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 81, "resource": "f1AcweR7tJW3MLMo"}, {"action": 2, "resource": "6iic1FIMyF7CcNu2"}, {"action": 61, "resource": "FN0NUNGKxdlAUDFQ"}]}' \
    'uGPzAuT7M6OBrNwi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '30' \
    'djSb4Vt2vKQ5vlCd' \
    'I519Pf2iogwxM5DZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteClientPermissionV3' test.out

#- 128 AdminGetConfigValueV3
$PYTHON -m $MODULE 'iam-admin-get-config-value-v3' \
    'M0dgozmco41750xd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'AdminGetConfigValueV3' test.out

#- 129 AdminGetCountryListV3
$PYTHON -m $MODULE 'iam-admin-get-country-list-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'AdminGetCountryListV3' test.out

#- 130 AdminGetCountryBlacklistV3
$PYTHON -m $MODULE 'iam-admin-get-country-blacklist-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'AdminGetCountryBlacklistV3' test.out

#- 131 AdminAddCountryBlacklistV3
$PYTHON -m $MODULE 'iam-admin-add-country-blacklist-v3' \
    '{"blacklist": ["YQg34WUV0WpmsQnp", "1n4YGumTKOlDOy5v", "hSkxERZ2AQ1jvXYB"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'AdminAddCountryBlacklistV3' test.out

#- 132 RetrieveAllThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-all-third-party-login-platform-credential-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'RetrieveAllThirdPartyLoginPlatformCredentialV3' test.out

#- 133 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3' test.out

#- 134 RetrieveAllSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-all-sso-login-platform-credential-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 135 RetrieveThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-third-party-login-platform-credential-v3' \
    'ar5RMmmGdWl0wpj5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 136 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "tVfKU3D8WVPh0Z7Y", "AWSCognitoRegion": "iGE2cyzTMBY7Xd0O", "AWSCognitoUserPool": "oENg2Lw7uepmahXo", "AllowedClients": ["jVZYz2zMU9jLzNV3", "GaG43R6nlRPrEAYq", "RBeSc5uShoj3dGHM"], "AppId": "eoi5DBOsQ0Gax0iX", "AuthorizationEndpoint": "05IT9Agsjl5NmnSH", "ClientId": "hxNmCe4txY0MsPc9", "Environment": "EMgf9JCJiEvhL8Zf", "FederationMetadataURL": "wCVJW9yspUOyHC9e", "GenericOauthFlow": false, "IsActive": true, "Issuer": "e8Bzx9aGEI22BTCZ", "JWKSEndpoint": "s97TJI8GPrM24F3c", "KeyID": "elFgM62HQtgzQhO3", "NetflixCertificates": {"encryptedPrivateKey": "nR8j8DlP6OGbn8vm", "encryptedPrivateKeyName": "fMYGLt1AjKhh3JMX", "publicCertificate": "7xSrz1EH6X2SM3xz", "publicCertificateName": "sNrJzWBcdFlo7oAs", "rootCertificate": "OlfLB1J19b5rTfiL", "rootCertificateName": "2P3r1a8KIJH33aKk"}, "OrganizationId": "PuWD59MgTy1HA58J", "PlatformName": "t5NaROjSKFEuZo2E", "RedirectUri": "lXYSS4ezBRSiOyRe", "RegisteredDomains": [{"affectedClientIDs": ["viDaxlPdhwmcH03y", "oMxzRR6xd9rTh3ur", "eaIbxM3Wev9pZQjW"], "domain": "AN0tny16ZHZtuSJG", "namespaces": ["QCrM7JEMRPkdTcAz", "kIlndN5xeayr3vUK", "MuIiz2MiAAKcvAXn"], "roleId": "xnH0QIhoJRY807Vm"}, {"affectedClientIDs": ["BT4wZXQZZrSsuYiI", "Pei0pXglJYnKkoCA", "ZuolAWnxkImVbDP0"], "domain": "QX31gI7VmnGIRMvX", "namespaces": ["e6BiphIFe2bzr6qQ", "w6fSESkM19OPMBb1", "2gpmShlmIt2nfhUa"], "roleId": "ZGqjslu59GT2E6Aa"}, {"affectedClientIDs": ["cmZRXZm626POXWVj", "3KP1mX0iYHXBU3Uk", "2tQm307IORTyHnLY"], "domain": "DAAg1YA4kZURmoGg", "namespaces": ["xVRMPf8g1rbhfIMS", "tMnSqrKWYOuITlYS", "2RYaD9WNKGhbLhjz"], "roleId": "1v0RBIO2rkJGmPaK"}], "Secret": "6HEVIQJd3930TGew", "TeamID": "jRyfo4nWVZZbKFsK", "TokenAuthenticationType": "OmgEhjH2wFzCpxxJ", "TokenClaimsMapping": {"LfAg5cFT0gHAkltc": "R3eHFbiAluHv7Hss", "d05pHBJX5ln8PZbY": "VD8RiaTsdD4d3kSb", "TkHPMUvOAUXkw36c": "r2WJQqS7Tq4YIyZA"}, "TokenEndpoint": "FQ6lZfa2jdNvpWf3", "UserInfoEndpoint": "2JS1av9VNpVLT0Lv", "UserInfoHTTPMethod": "qcfSdO1nAjY5FvAD", "scopes": ["b3GUQgci632w6LUr", "HuKBoNTpPQXDNHto", "74GcmVf0fbCU9QdP"]}' \
    'uWeMEeL0EJG67g4W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 137 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    '1eAmDxP23qstMuik' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 138 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "Kc6VNU8570siWm3V", "AWSCognitoRegion": "9sirE0JOQxWeHypq", "AWSCognitoUserPool": "CWMDPRI2cCk8zHR8", "AllowedClients": ["VyCC0EQwE0cXokXb", "wKDtVmrYQu7hZvHf", "iT9s9pK8HuUY1QQH"], "AppId": "Q0NCEddJtx6GV01v", "AuthorizationEndpoint": "D7lNLxlpvqaB9P9G", "ClientId": "aukfCEIeSBLhTfzi", "Environment": "gzHcRuJgYaj4I8Dz", "FederationMetadataURL": "yh1N0JEKNoMtHvjM", "GenericOauthFlow": true, "IsActive": false, "Issuer": "TkUCqbbHGJGOTvKK", "JWKSEndpoint": "RTHDntaFiufH2YR6", "KeyID": "QU7fj6w17arNs12h", "NetflixCertificates": {"encryptedPrivateKey": "OoLVM7UFnuJDzeEk", "encryptedPrivateKeyName": "DxaVogxHrOon2OW4", "publicCertificate": "Zw5QwVKWNy2tnF2M", "publicCertificateName": "ifJR4hr4gdJDujYn", "rootCertificate": "VnFK6gB6ZxC6yYUV", "rootCertificateName": "UJYnQ3jOGmROIqxq"}, "OrganizationId": "Q0gcNeTflyvUh3w5", "PlatformName": "ZtfwmOCKpFSMF0tf", "RedirectUri": "GIZCTNiIRc9fEjkZ", "RegisteredDomains": [{"affectedClientIDs": ["hEpAJMCxMp2J0hDg", "2kMgkvhoQe9gD9tG", "N0nE7M36mI9u3EeZ"], "domain": "tLQij2JXsqdXfhZT", "namespaces": ["TaCeqGv7meuQhJuq", "1C6JHkWMSUbqByWN", "2BCnRz9w2nur0B9j"], "roleId": "KaunAcylsau7wRQm"}, {"affectedClientIDs": ["L4i3eRyIECEDa1I4", "lwXqwPfq3VzHQjto", "lx64w1gyvjacKtGq"], "domain": "xMnoAXRlcq0mYWKQ", "namespaces": ["YlqMmu2pvF6rP03b", "Qaq1cT88H6RCW8gJ", "mGzDlqxtLsR2AGOi"], "roleId": "PhNt2IdH8aYYUT6m"}, {"affectedClientIDs": ["ma833TDzk66ix88s", "AUrXr7MXxCvyy7ca", "xz4MQrODLNlxiEjQ"], "domain": "BCZx9DJ4V97SJLlr", "namespaces": ["wXmIGamRCARuFLx4", "rV4CXVMrDYKe2eTf", "1axo16GqT2vSLLiM"], "roleId": "vcu39YZJypWzpNXg"}], "Secret": "noKIz8O8NglJtZTh", "TeamID": "280vflFMxIhlIT8A", "TokenAuthenticationType": "gyZJ16MMd2bzOrTn", "TokenClaimsMapping": {"2huwPgyUzBUWiKoN": "Gtvyk5xEfrJDxKsw", "5Xl7ZZrDZdbuvCFB": "aVcohewKkVuGv9fQ", "XkErF0drbYrrFQP6": "rW62CtetBW3pvAJJ"}, "TokenEndpoint": "ieHhveGg97PY0txz", "UserInfoEndpoint": "vYwv7atn9EQv2Oj8", "UserInfoHTTPMethod": "TFNeGtJGjKbMgCeu", "scopes": ["AYuzrmbWofEaKStq", "dKu4ROnONpJ849ch", "qeiUGQMwNwDlYSli"]}' \
    '3p8YaAdel3hHMSLA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 139 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["iscGRWzkCl1ZKuPx", "jDUGRGcCEPjbUy7F", "82Adu9BYRHrVTehr"], "assignedNamespaces": ["qgvEtEs2LpE0qfbv", "dU8hlDoC9FnxqBlP", "BYJ7X6uVy7FWTSfM"], "domain": "i2CPVGxjcdpdCqVe", "roleId": "ePMSqb8y8qJTUQY4"}' \
    '0Zrpn0vAD9YsPeDW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 140 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "rAVQZSvgWuCuLsUG"}' \
    'rVQAbhS54ZuQHKer' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 141 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    'sDmJLUHAKtfXCKOn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'RetrieveSSOLoginPlatformCredential' test.out

#- 142 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "a8DdjtZhh6ofsUoR", "apiKey": "h6r0e0J6vyqPw7Yl", "appId": "mV3kES0Hi88UYgSV", "federationMetadataUrl": "40OvY7apPCrN5bEh", "isActive": false, "redirectUri": "UcxuXXpt0YSPX04u", "secret": "EIdAwgDobopbdJeV", "ssoUrl": "CiKs2vLyH9kcSBdk"}' \
    '7MwQzn28Le5neohq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'AddSSOLoginPlatformCredential' test.out

#- 143 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'hCzroAzWQDve0Z2G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 144 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "2N09VIbbsz24fQKD", "apiKey": "ZX6plErw0Gb0ceCb", "appId": "phW4YMhJ0S50bez9", "federationMetadataUrl": "ZLHW882riiPfRQ3r", "isActive": true, "redirectUri": "0f5lwXvRNDBnmL1K", "secret": "Qn77hiP1lzkzjYDw", "ssoUrl": "6mLBordrJkD6vy60"}' \
    'uRMT1Xw9K9Yb68a8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'UpdateSSOPlatformCredential' test.out

#- 145 AdminListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["ygYx2TqkhlqMnE9W", "j90EQzOidrWnLrXq", "ImgDf3GaJsdCZND0"]}' \
    'wgYOilX1e1825ias' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 146 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'unESjcgr2drXG5Nk' \
    'KCySLA8cKCs0dFYR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'AdminGetUserByPlatformUserIDV3' test.out

#- 147 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'Sa2OULZ0iOZJiOAh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'GetAdminUsersByRoleIdV3' test.out

#- 148 AdminGetUserByEmailAddressV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-email-address-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'AdminGetUserByEmailAddressV3' test.out

#- 149 AdminGetBulkUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-bulk-user-ban-v3' \
    '{"bulkUserId": ["1SpLhMF2Pav11FuU", "8iXCRz8KgqgwijYx", "pGhsFArq6lolbj7Q"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'AdminGetBulkUserBanV3' test.out

#- 150 AdminListUserIDByUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-user-i-ds-v3' \
    '{"userIds": ["KvtVRCPMjr5M3vw1", "GqUjjFp6R8mYZwKf", "tVqSECsypS42NmYQ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AdminListUserIDByUserIDsV3' test.out

#- 151 AdminBulkGetUsersPlatform
$PYTHON -m $MODULE 'iam-admin-bulk-get-users-platform' \
    '{"userIds": ["8HlHbHnfs4tLVOYQ", "CWMktmiKd9vLPP0w", "52JRAZxMWdoleYNH"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'AdminBulkGetUsersPlatform' test.out

#- 152 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["XeOpaRDwYLge851P", "bK2MFKvw5TWjAh4g", "y41LLzQ2IjY5PeNr"], "isAdmin": false, "namespace": "K8RGS0zCYRVmbfzw", "roles": ["Umsy0stUmKdXiiTO", "bNdqkWa13g3pgHx6", "uPf6jQZcYerH933X"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'AdminInviteUserV3' test.out

#- 153 AdminQueryThirdPlatformLinkHistoryV3
$PYTHON -m $MODULE 'iam-admin-query-third-platform-link-history-v3' \
    '7iXEEM2KOusNEHcI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 154 AdminListUsersV3
$PYTHON -m $MODULE 'iam-admin-list-users-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'AdminListUsersV3' test.out

#- 155 AdminSearchUserV3
$PYTHON -m $MODULE 'iam-admin-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminSearchUserV3' test.out

#- 156 AdminGetBulkUserByEmailAddressV3
$PYTHON -m $MODULE 'iam-admin-get-bulk-user-by-email-address-v3' \
    '{"listEmailAddressRequest": ["95GGdJvucDbs6Udc", "cuM2ykRj3WnyAaUa", "QBKFedL2uduXvZUb"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'AdminGetBulkUserByEmailAddressV3' test.out

#- 157 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'QQ13FhD3NExUFipJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'AdminGetUserByUserIdV3' test.out

#- 158 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "sUiDawAjgHFQk0Vz", "country": "WRNFNiUn2yXMSCcH", "dateOfBirth": "ADYpS861c0CJ7Lzp", "displayName": "FvOSF6xKA6yrnvXY", "languageTag": "5dDwneac75C6S2eH", "uniqueDisplayName": "sH4Y84hL75QboMHC", "userName": "tzEF9FSeg6WYgtfu"}' \
    'qJHrs4e3RnWR30Md' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminUpdateUserV3' test.out

#- 159 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'BZezfwc3H0qSbMq4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminGetUserBanV3' test.out

#- 160 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "GLj8aGsH0qE5p601", "comment": "ak59yFSfdZIv8oYW", "endDate": "PUS4Zu0SbTt6M2Xi", "reason": "zikCh6q0yq2WAHtL", "skipNotif": false}' \
    'E3MFqvfDG5jvMOaX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminBanUserV3' test.out

#- 161 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": true, "skipNotif": false}' \
    'DlEX42U0syrGNhBm' \
    'gT2q0kIbrJ2S5Pf1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminUpdateUserBanV3' test.out

#- 162 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "Lvg8kYEVylINJpxF", "emailAddress": "Y8E6pU8eHjh0aTjI", "languageTag": "OaQt0snbE0yMvqF7"}' \
    'TJ9uB0zypjJiu7BI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminSendVerificationCodeV3' test.out

#- 163 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "imNuwB3hBVhuSMHh", "ContactType": "f5R2MkxQTAYGfE6h", "LanguageTag": "XZ7XLoWCGf0dZEeX", "validateOnly": true}' \
    'qHZuuedbBOd19DqZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AdminVerifyAccountV3' test.out

#- 164 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'JRYV1oqNLmPAUIMw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'GetUserVerificationCode' test.out

#- 165 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'a2wYq6DsUq38bYva' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminGetUserDeletionStatusV3' test.out

#- 166 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"deletionDate": 100, "enabled": false}' \
    'LoKzHnngdfFnOfY9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminUpdateUserDeletionStatusV3' test.out

#- 167 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "stXH6LYXXMndxBPK", "country": "mHVB7cNzHhvxc4xA", "dateOfBirth": "PZ86WNnQOhusPn44", "displayName": "66u8agb5HPsBU0Eo", "emailAddress": "6QJ9vBRJ4UP09fab", "password": "C01Thm9f4AWpyiKV", "uniqueDisplayName": "T3OvEujx5yjtQSCJ", "validateOnly": false}' \
    'rXlH5jw99HxCjXWc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminUpgradeHeadlessAccountV3' test.out

#- 168 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'aXBcfXXeV7BXefsS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminDeleteUserInformationV3' test.out

#- 169 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'gZxSYnVwXqF6K0WA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminGetUserLoginHistoriesV3' test.out

#- 170 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "76Kl2mHHoz6qBQnE", "newPassword": "DgX49n1xTDFcmOm1", "oldPassword": "sqdIWU6ERylESgf5"}' \
    'dXMrPoYSohfrLyXM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminResetPasswordV3' test.out

#- 171 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 91, "Resource": "2LQw7Y2VdSxgXez7", "SchedAction": 97, "SchedCron": "W5cWeg6eSCypsceI", "SchedRange": ["TTkJGGCVF6LrILDL", "viUCzmDAaW5xz1c7", "ZuZXUCBYnkY0LEBS"]}, {"Action": 25, "Resource": "BdUSiTOrhB8hVs29", "SchedAction": 100, "SchedCron": "qSH533YlJ93CCGBX", "SchedRange": ["v4fP4VPzhcH4UJrr", "CKvrOAi7lMgkVWJY", "zSCIDxWUxgOzeRNH"]}, {"Action": 71, "Resource": "bqMMKvkOsR1fHUyi", "SchedAction": 36, "SchedCron": "T2kIQOecfLsYKTmU", "SchedRange": ["nKlrOsJmEwjGYN8V", "NPXNsmwTV8imJHNI", "0l6jJVzF1Oi2sQuW"]}]}' \
    'UBBHZonSmzF831vl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminUpdateUserPermissionV3' test.out

#- 172 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 59, "Resource": "1pgdHvlQKiR7SDQU", "SchedAction": 59, "SchedCron": "KqVwnpPn8N5xMRgU", "SchedRange": ["7cPqNZrLCRRUysya", "4J3rvTzMTMSwrNov", "2GW9i54JY23AUWFT"]}, {"Action": 77, "Resource": "5kAww01zalTddhAQ", "SchedAction": 70, "SchedCron": "pwqnybvUIfuulmee", "SchedRange": ["gRwPPbn7lttd21cS", "6IVE4fzwG3BHaRcZ", "8NK4gkLmvEOaRcqT"]}, {"Action": 12, "Resource": "zc1RDVhs2lhdzxxg", "SchedAction": 17, "SchedCron": "gzcwdgJMjIyGfiNB", "SchedRange": ["Qy41M1gzGCbaxw33", "rNbE4bbDU4FMTbQa", "ANJOODGerDCWcl3V"]}]}' \
    'SJENQopeHD6iKBGm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminAddUserPermissionsV3' test.out

#- 173 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 89, "Resource": "Cj7RqnJUmfDmofxv"}, {"Action": 80, "Resource": "fcCAeExeQX43Lpmd"}, {"Action": 80, "Resource": "q35BWDoc3qNcQFFy"}]' \
    'Hv141NPqjRUMKSQj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserPermissionBulkV3' test.out

#- 174 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '65' \
    'AQ2sEHvSxjWoM1rN' \
    'JLM0OOVG5cG6XxEN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminDeleteUserPermissionV3' test.out

#- 175 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'bWqlX7idzjpKDfwl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminGetUserPlatformAccountsV3' test.out

#- 176 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    '6XlCF6YxFMD8tJQw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminGetListJusticePlatformAccounts' test.out

#- 177 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    'ZvUVInos5RK100yH' \
    '89i8ZDPXRL8cbTAn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminGetUserMapping' test.out

#- 178 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    'tB1STaab1UeibXg7' \
    'RCe5BtKcwj6PqqOg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminCreateJusticeUser' test.out

#- 179 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "Cimr3ZQNBBkrXu9c", "platformUserId": "zsYr3cFeVw70xdNT"}' \
    'uOdLKK0M2B2hbqJi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminLinkPlatformAccount' test.out

#- 180 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "n37P69t1KqeGz7qb"}' \
    'PnXEuOzzkoBmMR9C' \
    '4qPqJrAdh1HIk7vC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AdminPlatformUnlinkV3' test.out

#- 181 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'Eq7FQ2S5VeW9ddxz' \
    'LPV8wDjsnyPh5yNb' \
    'YXmlAOi1SC3I1Sjk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminPlatformLinkV3' test.out

#- 182 AdminDeleteUserLinkingHistoryByPlatformIDV3
$PYTHON -m $MODULE 'iam-admin-delete-user-linking-history-by-platform-idv3' \
    'H42LtyZKrTJo0L5s' \
    'Hil4Q0mqa8Gatrjb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminDeleteUserLinkingHistoryByPlatformIDV3' test.out

#- 183 AdminGetThirdPartyPlatformTokenLinkStatusV3
$PYTHON -m $MODULE 'iam-admin-get-third-party-platform-token-link-status-v3' \
    'J5YT7uvqarTvrG1D' \
    'XZAWlvz3c3XALMre' \
    'sGFfsH4aXCDhshvE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 184 AdminGetUserSinglePlatformAccount
$PYTHON -m $MODULE 'iam-admin-get-user-single-platform-account' \
    'F8rHd250nyihcUVG' \
    'HQczI5ZoTRUkjGoR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminGetUserSinglePlatformAccount' test.out

#- 185 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["kPs2SO9XrgXNIaU1", "1cBXLwTfopqeZtHJ", "nRgaGfLMFbvyI5PZ"]' \
    'GzVLcmZKKKYARape' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminDeleteUserRolesV3' test.out

#- 186 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "2tsNczam4Cdd1QYv", "roleId": "ww4XDokltgq2vXtU"}, {"namespace": "nY6UhDJ4pe0s0Cuh", "roleId": "l3dU9b4seYCyiB4t"}, {"namespace": "DCWx3cEX8wTi1v2a", "roleId": "bpCWytPEi9Ze0hL9"}]' \
    'rPkV5GkSrcl2O47X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminSaveUserRoleV3' test.out

#- 187 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    'VzU7qlNVk7qnmBS3' \
    'XKDhp1OkMcErmeH0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminAddUserRoleV3' test.out

#- 188 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'lX1hj0LaXgQ94flh' \
    '775AQfzNjQ7IuMSY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminDeleteUserRoleV3' test.out

#- 189 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": false, "reason": "epRDJjDyMDKQhuTj"}' \
    'tQZyIiAmCL8bNTTf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateUserStatusV3' test.out

#- 190 AdminTrustlyUpdateUserIdentity
$PYTHON -m $MODULE 'iam-admin-trustly-update-user-identity' \
    '{"emailAddress": "qLCv9DYBOProN4UW", "password": "bQaKFrTv4JWElmOC"}' \
    'xqPrq9I3XJWBxTLc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminTrustlyUpdateUserIdentity' test.out

#- 191 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'Oef8MgIwkrKFEtwE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 192 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "SJCe2ksG3nZE13H2"}' \
    'fILFzOlAZbDQAEJL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminUpdateClientSecretV3' test.out

#- 193 AdminGetRolesV3
$PYTHON -m $MODULE 'iam-admin-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminGetRolesV3' test.out

#- 194 AdminCreateRoleV3
$PYTHON -m $MODULE 'iam-admin-create-role-v3' \
    '{"adminRole": false, "deletable": true, "isWildcard": true, "managers": [{"displayName": "H2XLIg3MgmdSvWp3", "namespace": "h0xPsVY8qNwB2TY4", "userId": "v9NNfQSYLFKSl3FN"}, {"displayName": "FFJnt3rIwZdW02Su", "namespace": "6aCnL816aH6gOBUI", "userId": "MeL0GL3aefSDME8X"}, {"displayName": "2MxILI42BJMPkZma", "namespace": "y4Csye3iJLtjsu6Z", "userId": "JRCoDq3geuHFFaZz"}], "members": [{"displayName": "PIjETqcKN1gaQ4Bn", "namespace": "0cPPtKaJlw31pdDr", "userId": "XQ47WSGyDCKF0LLh"}, {"displayName": "O3lGZ7eGOPj2XoFu", "namespace": "g8BUQUmPHnPumcaz", "userId": "KAna0ji757aNDFeK"}, {"displayName": "nQP2j2WsQImTwYki", "namespace": "uxzLrbJ0BkGzCNge", "userId": "sQlZZHIZH0iks6kx"}], "permissions": [{"action": 28, "resource": "adnimPyyzezsHdFf", "schedAction": 39, "schedCron": "taPAocOQcpBWSNrC", "schedRange": ["jSNEAdojkCMmYyTG", "O07foRZ6FujpIWo0", "qJtqp4Q6XgICLgMH"]}, {"action": 4, "resource": "gA7i9tqvfHmFvUZi", "schedAction": 96, "schedCron": "p6QGW56CNiszHE69", "schedRange": ["D1MMoaf6KlgRtwaM", "2IoyY1wpIdjcAtTj", "1IMuuhxxlulfmya7"]}, {"action": 43, "resource": "hX0a8Ri85PA9wNpm", "schedAction": 36, "schedCron": "CIkmt4bfJOhNaIT0", "schedRange": ["pv7XeqO8gY3c4Sry", "WB4yRaDxvxwaLM8H", "kVOW8PnLkgqkqYZW"]}], "roleName": "PZTgKagTzdcYcko7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminCreateRoleV3' test.out

#- 195 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'U3gH239LhRx2Laa2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminGetRoleV3' test.out

#- 196 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'RdtVb6VgA5yFIH3s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminDeleteRoleV3' test.out

#- 197 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": true, "isWildcard": true, "roleName": "8UjgyCUpM1JBcTzf"}' \
    '4dz1BojPoQg97640' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateRoleV3' test.out

#- 198 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    '9vFd5z9r4nJWUvLp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'AdminGetRoleAdminStatusV3' test.out

#- 199 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    '1wxGF747468MXUq3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'AdminUpdateAdminRoleStatusV3' test.out

#- 200 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'uIffkIpPmrWVxNZU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'AdminRemoveRoleAdminV3' test.out

#- 201 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'vkiU2jXSwsBBRopV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'AdminGetRoleManagersV3' test.out

#- 202 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "l38d4NZGtk6EmWxC", "namespace": "75M88TKhFYkA9aRN", "userId": "De2IoPMSQKcg0OTT"}, {"displayName": "9JA0ll1RimBCiQwu", "namespace": "yrI87uSyXP6C0jXS", "userId": "8au2wcWYyj3JvHqX"}, {"displayName": "p4JR7xI59Z9tfGVs", "namespace": "glnOxOXBfgBLuglk", "userId": "d9LIoshGnFSuHmrq"}]}' \
    'ej8PRppYY1vlV0M2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'AdminAddRoleManagersV3' test.out

#- 203 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "g6oreqyBzWzCgMMW", "namespace": "ZuD6tmIR28xVxbtp", "userId": "SKOfiIP3S6pypZqI"}, {"displayName": "Sn3msrykQFtW8QGK", "namespace": "FZLrIfqrZuu7IwKc", "userId": "T7sAsv2TKCbYMVkX"}, {"displayName": "EHmsHwIGGsusS0zZ", "namespace": "RODEKPdudZsLaf8a", "userId": "ZrXW84dt0TSTmy7X"}]}' \
    'F26K2U7xttUz8nWK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'AdminRemoveRoleManagersV3' test.out

#- 204 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'Jjv06PuffHghAQfA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'AdminGetRoleMembersV3' test.out

#- 205 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "sYXVzBenLtaAoYyR", "namespace": "fiCWrm3s1Ah3TII7", "userId": "0MIcBMJ04508jKed"}, {"displayName": "x0CVRpd7SwZw2Ukj", "namespace": "DzJ4NuMMgI13nplX", "userId": "aUQV5QEvKElLfbB7"}, {"displayName": "gwwAR1xFrnyirw3i", "namespace": "Jt5iA3JS2xeaJ08J", "userId": "rSHPqdhKHn6ZjZMd"}]}' \
    'r1C2TIQzRJY7UfYS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'AdminAddRoleMembersV3' test.out

#- 206 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "rdN0JVz4U43EcV1F", "namespace": "RyeeqehMNeRYKeMb", "userId": "L0G4v5D6ylZguO91"}, {"displayName": "8X7rLoexHBMBMMAY", "namespace": "okSWFwajRGUyklfL", "userId": "VY6g3PO4hKAeF4GU"}, {"displayName": "V5m96qcCJsVOWtu5", "namespace": "RPsqd66ImBEuhnax", "userId": "ZVf6MD9r1y5Ihr53"}]}' \
    '1Kajxq7lzuVRVEvh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'AdminRemoveRoleMembersV3' test.out

#- 207 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 76, "resource": "3ummpllnV6B62P1K", "schedAction": 1, "schedCron": "hcO55hVjfWyK02w5", "schedRange": ["QytAmkanukAzAMaR", "vIUhUwguGgbLLN3O", "7CEYjxqElP5lA2FJ"]}, {"action": 20, "resource": "iGLRTXGsC5mxxse4", "schedAction": 8, "schedCron": "ey2BqOxgwCymCDYs", "schedRange": ["uff3b7G5FDX4mu0q", "PHb9Ll2EFEb8Gnst", "hmQ2Y6ZGOiqrg3lp"]}, {"action": 34, "resource": "9M53Mg0MzWS9usxx", "schedAction": 28, "schedCron": "MxfEDE4TrtIHyyMq", "schedRange": ["79EdB9MxaF8QHGM2", "IuQYBO8m0HgTth47", "9W8rXqwGVIRWgTNH"]}]}' \
    'Cka3Wb5kH1BrLWUe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'AdminUpdateRolePermissionsV3' test.out

#- 208 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 41, "resource": "BxQNz2IUEHMzl5jh", "schedAction": 46, "schedCron": "zoUlUWqP4ElzL44K", "schedRange": ["Em3uHBMCP5ckjphU", "Rs4ksgsKJ2R6Jacw", "wu8W1zvrKMRPvwA9"]}, {"action": 22, "resource": "ek8WObpf0FHYfViE", "schedAction": 19, "schedCron": "rrpOm4M2pM4fIfcH", "schedRange": ["BWZM50aHbPXRns3q", "wYL6LwGlZGF7XQPL", "AcIL7FvAMWqhyyNZ"]}, {"action": 69, "resource": "f3TMhSaynVs05nZC", "schedAction": 89, "schedCron": "Os7hqIH2NgARSG3Q", "schedRange": ["QNGNH2K0UuJdeGNq", "uQnaXpDQ5rU2taDW", "h9JV5oc5IFQsrwHq"]}]}' \
    'FqwVA5mozeeOjIFQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'AdminAddRolePermissionsV3' test.out

#- 209 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["fXV3YW3ug3nCXhD7", "FUz1iOe0pHa0Lmse", "IRXeoerZAxbDPXU5"]' \
    'xJBhIpJ9b0Ap7CmS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteRolePermissionsV3' test.out

#- 210 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '17' \
    'qMzbE0ljQaBtb47V' \
    '691j0FZp2vjOXptx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'AdminDeleteRolePermissionV3' test.out

#- 211 AdminGetMyUserV3
$PYTHON -m $MODULE 'iam-admin-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'AdminGetMyUserV3' test.out

#- 212 UserAuthenticationV3
$PYTHON -m $MODULE 'iam-user-authentication-v3' \
    'zx6kkaZYpl52sQR9' \
    'Znp5d1eSwrG2GBBE' \
    'WrDbQ1ZzhDuLHq9L' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 212 'UserAuthenticationV3' test.out

#- 213 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    'TBstguOdN0O7l3Gb' \
    'KPHdDTQDEEE2mTsn' \
    '1NwJ71szsNmnqZSW' \
    'dEyOVYrTdDq7IqbT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'AuthenticationWithPlatformLinkV3' test.out

#- 214 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    'Vv8BLsqQW8HSrEm5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 215 RequestOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-request-one-time-linking-code-v3' \
    'Y7jI232SjktijiNz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'RequestOneTimeLinkingCodeV3' test.out

#- 216 ValidateOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-validate-one-time-linking-code-v3' \
    'TUe8KdizXmrmK0sC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'ValidateOneTimeLinkingCodeV3' test.out

#- 217 RequestTokenByOneTimeLinkCodeResponseV3
$PYTHON -m $MODULE 'iam-request-token-by-one-time-link-code-response-v3' \
    'UsqxKocHomtjoU1k' \
    'UqRedwIu1TSRr6r8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 218 GetCountryLocationV3
$PYTHON -m $MODULE 'iam-get-country-location-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'GetCountryLocationV3' test.out

#- 219 Logout
$PYTHON -m $MODULE 'iam-logout' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'Logout' test.out

#- 220 RequestTokenExchangeCodeV3
$PYTHON -m $MODULE 'iam-request-token-exchange-code-v3' \
    'mzfMedpcKhvHPlvY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'RequestTokenExchangeCodeV3' test.out

#- 221 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'anGqEkn9OEVwLWGT' \
    '4MXhmzvRQb7c0vmj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 222 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    'Wq9fQqzulLGfQMqS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'RevokeUserV3' test.out

#- 223 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    'LQDlRFYMVfiAMa6P' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 223 'AuthorizeV3' test.out

#- 224 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    '80Ynss7hc3VUxxZI' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 224 'TokenIntrospectionV3' test.out

#- 225 GetJWKSV3
$PYTHON -m $MODULE 'iam-get-jwksv3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'GetJWKSV3' test.out

#- 226 SendMFAAuthenticationCode
$PYTHON -m $MODULE 'iam-send-mfa-authentication-code' \
    'gkTLqMeJPCbs8jWm' \
    'TteJhwNbwHGG39YA' \
    'ZJ4HuLfeTfFBTOFF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'SendMFAAuthenticationCode' test.out

#- 227 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    'MJ9pq511jZcTK8zm' \
    'MfyshYk3b5cAFVo8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'Change2faMethod' test.out

#- 228 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    '5r1b8Yp2QnuhQuId' \
    'vZdj6AspWBfRnLcL' \
    'bp7OmcrDJ7u1rrRP' \
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'Verify2faCode' test.out

#- 229 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    '1rnOzbsFBqg6dziW' \
    'vdNcwfUBMdNuTaiL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 230 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'xFMXRpDP9xutntU8' \
    'xHw4yYJOCViHwunQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'AuthCodeRequestV3' test.out

#- 231 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'wpC2eCFUAHZaYSvs' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 231 'PlatformTokenGrantV3' test.out

#- 232 GetRevocationListV3
$PYTHON -m $MODULE 'iam-get-revocation-list-v3' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 232 'GetRevocationListV3' test.out

#- 233 TokenRevocationV3
$PYTHON -m $MODULE 'iam-token-revocation-v3' \
    'WiNJtqXltZF6aSRm' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 233 'TokenRevocationV3' test.out

#- 234 SimultaneousLoginV3
$PYTHON -m $MODULE 'iam-simultaneous-login-v3' \
    'epicgames' \
    '5iR3hXIbzWPKOkzf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'SimultaneousLoginV3' test.out

#- 235 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'password' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 235 'TokenGrantV3' test.out

#- 236 VerifyTokenV3
$PYTHON -m $MODULE 'iam-verify-token-v3' \
    'ljC7gcT3M1DArk4L' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 236 'VerifyTokenV3' test.out

#- 237 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    '80aXFY7SQkym9KvK' \
    'MHK5fbqioeoRIplY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'PlatformAuthenticationV3' test.out

#- 238 PlatformTokenRefreshV3
$PYTHON -m $MODULE 'iam-platform-token-refresh-v3' \
    '0DIzRCNAO6ZpqXJm' \
    'PJso6M11LLZWKgWx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'PlatformTokenRefreshV3' test.out

#- 239 PublicGetInputValidations
$PYTHON -m $MODULE 'iam-public-get-input-validations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'PublicGetInputValidations' test.out

#- 240 PublicGetInputValidationByField
$PYTHON -m $MODULE 'iam-public-get-input-validation-by-field' \
    'n9YL16HQdtAneXGg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'PublicGetInputValidationByField' test.out

#- 241 PublicGetCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction-v3' \
    'xNg33ZIUrIkfmdXV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'PublicGetCountryAgeRestrictionV3' test.out

#- 242 PublicGetConfigValueV3
$PYTHON -m $MODULE 'iam-public-get-config-value-v3' \
    'vaPQzzKdFg7N7piT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'PublicGetConfigValueV3' test.out

#- 243 PublicGetCountryListV3
$PYTHON -m $MODULE 'iam-public-get-country-list-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'PublicGetCountryListV3' test.out

#- 244 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-public-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 245 RetrieveActiveOIDCClientsPublicV3
$PYTHON -m $MODULE 'iam-retrieve-active-oidc-clients-public-v3' \
    '8VcrXLZnuMNpKEIs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 246 PublicListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["3GC9VTK7tkJWFpHt", "7MdKu9Xwn5GHJDGa", "trYOMO91CYEjX867"]}' \
    'n9PT9fR7mMuBXPDK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 247 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    'CriRKzTZ7TXAVRnU' \
    'VbxEJcKHE764EwhQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'PublicGetUserByPlatformUserIDV3' test.out

#- 248 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    'fxFKIOGT1WKSmLoA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'PublicGetAsyncStatus' test.out

#- 249 PublicSearchUserV3
$PYTHON -m $MODULE 'iam-public-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'PublicSearchUserV3' test.out

#- 250 PublicCreateUserV3
$PYTHON -m $MODULE 'iam-public-create-user-v3' \
    '{"PasswordMD5Sum": "0ILaESC1GJXsoBwq", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "5FFi1n10vDgyoHXI", "policyId": "lrMl2RAukCL26ihd", "policyVersionId": "My9YCLNJEkvq6SUS"}, {"isAccepted": true, "localizedPolicyVersionId": "LNz0u8ySxA0yrjz4", "policyId": "q7e0EJnADXC2y0DY", "policyVersionId": "1E1SMK9oA4vK56ds"}, {"isAccepted": false, "localizedPolicyVersionId": "I5SKV5pDANyJ184m", "policyId": "iBhdVJt81fmLSyGu", "policyVersionId": "u5rbJVIwRMtwApGb"}], "authType": "XnR3yC6f2MHGGedk", "code": "0KzXRclOXdPYZQxB", "country": "nttu4yW5etl4Xk8H", "dateOfBirth": "d1lRtoPMvsu9oswE", "displayName": "PTvzwwGnpbx8MCIj", "emailAddress": "KzylqW8auyseP9wE", "password": "EyYAnHPp4XzVL5Mc", "reachMinimumAge": false, "uniqueDisplayName": "Pm4JLsXVtBOEetHs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'PublicCreateUserV3' test.out

#- 251 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'xAJ8Ny1LRkPU9hrl' \
    '5nkpEdBe8bYWdok4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'CheckUserAvailability' test.out

#- 252 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["UnUEOyP0cPZf5Ovo", "lfI0mqZctohLheRa", "QkfMLFW9B7jHZro4"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'PublicBulkGetUsers' test.out

#- 253 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "hhwnANAGp8zGqNGr", "languageTag": "cQyoA1TWPcy83iXf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'PublicSendRegistrationCode' test.out

#- 254 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "YXNdMkdg9TMwxNcQ", "emailAddress": "6CkVi8fqVPRqNbF5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'PublicVerifyRegistrationCode' test.out

#- 255 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "yLnYSa8xFLvcYexM", "languageTag": "MMiDFh5RbW021cHN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'PublicForgotPasswordV3' test.out

#- 256 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    '3QbzVuJZH3k54cEx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'GetAdminInvitationV3' test.out

#- 257 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"PasswordMD5Sum": "xWKtdGTW4FILotv5", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "42ApAb7CKt79wAop", "policyId": "ZL9Cw6K9h55mwUvh", "policyVersionId": "dBOgumV4wAsd4ifG"}, {"isAccepted": false, "localizedPolicyVersionId": "zqX2KJcYHgiFDxcl", "policyId": "BXap6j73doCWxhub", "policyVersionId": "MXbxNvT6wAffv4uz"}, {"isAccepted": true, "localizedPolicyVersionId": "neFHWhDRJtyYEt7y", "policyId": "gZleAoUuVKneoO10", "policyVersionId": "ytPdJ8SY3qoogOxo"}], "authType": "PYvdIBJYyGURjEjn", "code": "slEYM8ngVT1ewVxv", "country": "gAocOqsd5v5n7eXC", "dateOfBirth": "o9gZWdxfIdW8fNAM", "displayName": "5YdHivK2Q0WwolQy", "emailAddress": "037hJMOEv5W0v25y", "password": "AObZIbrA8XAKKWMD", "reachMinimumAge": false, "uniqueDisplayName": "WzWFTuNPf5JCSDyY"}' \
    'y4e5qoTZxSoZbQUn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'CreateUserFromInvitationV3' test.out

#- 258 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "UxS6m68WL3HDL4yx", "country": "5I0euBsccHPA2v9X", "dateOfBirth": "P9enfEX7lloLgIYq", "displayName": "xFfSNJlHCjxLNnYU", "languageTag": "lGQsFpy9ZVlLIFwL", "uniqueDisplayName": "gT78nootfUs9559i", "userName": "lm3cauhrw9Yn2z5c"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'UpdateUserV3' test.out

#- 259 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "nbm7z2Aa24yBTw3w", "country": "fNGyWf3VujS7Bq5b", "dateOfBirth": "cfPW4pPZB9YXltCx", "displayName": "yztUnj17t3gHBXvj", "languageTag": "vziexzOLbOWbtcJU", "uniqueDisplayName": "xM3AWyDkA5LmART6", "userName": "kulpM4SRtUE5P4kx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'PublicPartialUpdateUserV3' test.out

#- 260 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "mHtFbjqurHix0QYy", "emailAddress": "cDH5we2Mx0sYCnYP", "languageTag": "T4i4mxc14iRfzJwK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'PublicSendVerificationCodeV3' test.out

#- 261 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "uc7EpiQEzz5N5osR", "contactType": "YO7wbYh7q02W8tkT", "languageTag": "URUFmqNc8xhQqptc", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'PublicUserVerificationV3' test.out

#- 262 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "P7PjngEFggq91cpg", "country": "voDBgYfLBdGNAZEv", "dateOfBirth": "bvxqa0K7VUbjUnzi", "displayName": "rnEsxSE4vBzG7VK8", "emailAddress": "sWEshmZf5fEdvjby", "password": "JPQ1qdRcJjsme1Ou", "uniqueDisplayName": "kIfIZVH8q8svV5hM", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'PublicUpgradeHeadlessAccountV3' test.out

#- 263 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "SfpyJkJlmJmTkFvB", "password": "7wkY6nuUEGJ3k0HG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'PublicVerifyHeadlessAccountV3' test.out

#- 264 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "tpK43uORGREOOwTu", "newPassword": "Y8dhNCDWWpN3B6te", "oldPassword": "dgFUzBm5vGA3itKa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'PublicUpdatePasswordV3' test.out

#- 265 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'F9z3WWuv3j8T9g1f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'PublicCreateJusticeUser' test.out

#- 266 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    '6P3D3rVcC2g6t42j' \
    'E1Wad232YV7A2zHF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'PublicPlatformLinkV3' test.out

#- 267 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "GbN8AQaCaw9UF7cd"}' \
    'SDd99DQZ7vnTx8HD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'PublicPlatformUnlinkV3' test.out

#- 268 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'XTJWiyw17ogzmbj4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'PublicPlatformUnlinkAllV3' test.out

#- 269 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    'SLYDrZJvDLGvn6qt' \
    'roZcp16HKXX1ft5n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'PublicForcePlatformLinkV3' test.out

#- 270 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'BA9xNIJVuMz04evS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'PublicWebLinkPlatform' test.out

#- 271 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'dE2FMcKd7c94rEmI' \
    'YuAT5OAcUwYHGmG5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'PublicWebLinkPlatformEstablish' test.out

#- 272 PublicProcessWebLinkPlatformV3
$PYTHON -m $MODULE 'iam-public-process-web-link-platform-v3' \
    'rNDBF1oU37vjfyX5' \
    'YLaM0wmi0i1WABBb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'PublicProcessWebLinkPlatformV3' test.out

#- 273 PublicGetUsersPlatformInfosV3
$PYTHON -m $MODULE 'iam-public-get-users-platform-infos-v3' \
    '{"platformId": "q8IzZsMFLX9ZhFXc", "userIds": ["FtfBS3ZIHofhwyM6", "Bw2sFGQ5DQoDwzrK", "POZZnV3zR7YxSu6a"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'PublicGetUsersPlatformInfosV3' test.out

#- 274 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "ddocg10Hy9jx7gBH", "emailAddress": "TOHHArjld0LnREsr", "newPassword": "rB2pJ7V8BSrucjO3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'ResetPasswordV3' test.out

#- 275 PublicGetUserByUserIdV3
eval_tap 0 275 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 276 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    'zvSM5KeVNHU9GcOi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'PublicGetUserBanHistoryV3' test.out

#- 277 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'vIfcCJt4U8VSgXoi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 278 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    '9Fw25b9qXzlIK2G6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'PublicGetUserInformationV3' test.out

#- 279 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'AUjBCdf0Rp5e5IvF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'PublicGetUserLoginHistoriesV3' test.out

#- 280 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'uN1oUsCnBmGMx5F6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'PublicGetUserPlatformAccountsV3' test.out

#- 281 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    'EhM3dKvIG9MR0hTI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'PublicListJusticePlatformAccountsV3' test.out

#- 282 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "Nvq1VR9SJUfQEX99", "platformUserId": "6Mh1sQ3Dw3uyjgQN"}' \
    'As9188Qm3W1De2Mc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'PublicLinkPlatformAccount' test.out

#- 283 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["Gd10wefF0CJlH55R", "LEgeAsSpQdcmGHZu", "RVQ8tzwqMayP8A3H"], "requestId": "GNI3BfjkFd6MHo6g"}' \
    'GQ5mChYoKD7yqCR0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'PublicForceLinkPlatformWithProgression' test.out

#- 284 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    '3RovQZhwfjkq9iyT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'PublicGetPublisherUserV3' test.out

#- 285 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'byD3D01tRpuuyIag' \
    'SSzEL8H4euLufhQj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 286 PublicGetRolesV3
$PYTHON -m $MODULE 'iam-public-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'PublicGetRolesV3' test.out

#- 287 PublicGetRoleV3
$PYTHON -m $MODULE 'iam-public-get-role-v3' \
    '2KP3LLxl9Hs2L2wl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'PublicGetRoleV3' test.out

#- 288 PublicGetMyUserV3
$PYTHON -m $MODULE 'iam-public-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'PublicGetMyUserV3' test.out

#- 289 PublicGetLinkHeadlessAccountToMyAccountConflictV3
$PYTHON -m $MODULE 'iam-public-get-link-headless-account-to-my-account-conflict-v3' \
    'pKBVURxHefz77a9f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 290 LinkHeadlessAccountToMyAccountV3
$PYTHON -m $MODULE 'iam-link-headless-account-to-my-account-v3' \
    '{"chosenNamespaces": ["ntCNiHBRUNCPSre5", "GmZzCQwilS3IxSjl", "yvR9PxG9Lji2Vc88"], "oneTimeLinkCode": "W8aLjIxVGpdOqgux"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'LinkHeadlessAccountToMyAccountV3' test.out

#- 291 PublicSendVerificationLinkV3
$PYTHON -m $MODULE 'iam-public-send-verification-link-v3' \
    '{"languageTag": "vRwI9ZBTipMRlhK9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'PublicSendVerificationLinkV3' test.out

#- 292 PublicVerifyUserByLinkV3
$PYTHON -m $MODULE 'iam-public-verify-user-by-link-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'PublicVerifyUserByLinkV3' test.out

#- 293 PlatformAuthenticateSAMLV3Handler
$PYTHON -m $MODULE 'iam-platform-authenticate-samlv3-handler' \
    'DMMaI4ryVDvNaruZ' \
    'xwTfh9gEs6GF247c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'PlatformAuthenticateSAMLV3Handler' test.out

#- 294 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'bBLjUr5z03wxB3E9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'LoginSSOClient' test.out

#- 295 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'hrE9f9COFrOr6wJD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'LogoutSSOClient' test.out

#- 296 RequestTargetTokenResponseV3
$PYTHON -m $MODULE 'iam-request-target-token-response-v3' \
    'BwIDsJHNg6TvNGjw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'RequestTargetTokenResponseV3' test.out

#- 297 PlatformTokenRefreshV3Deprecate
eval_tap 0 297 'PlatformTokenRefreshV3Deprecate # SKIP deprecated' test.out

#- 298 AdminGetDevicesByUserV4
$PYTHON -m $MODULE 'iam-admin-get-devices-by-user-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'AdminGetDevicesByUserV4' test.out

#- 299 AdminGetBannedDevicesV4
$PYTHON -m $MODULE 'iam-admin-get-banned-devices-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'AdminGetBannedDevicesV4' test.out

#- 300 AdminGetUserDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-user-device-bans-v4' \
    'I4TbTwBufUorJoud' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'AdminGetUserDeviceBansV4' test.out

#- 301 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "uhCEJ5XiKDIE9Yug", "deviceId": "cupLxVBcRkfhRuqk", "deviceType": "OTHSia7oFd1fEmDu", "enabled": true, "endDate": "liYmBrqrOc0NIlig", "ext": {"BrOkBljwRENjt04Z": {}, "pyTTZG1LxLdySvyV": {}, "qY8nxBZbHcPHEFuE": {}}, "reason": "VP9bF07gnWDULkJP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'AdminBanDeviceV4' test.out

#- 302 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    'QR0UJMr8ouccGH0B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'AdminGetDeviceBanV4' test.out

#- 303 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": true}' \
    'QwnlgAVfqz6gQJh8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'AdminUpdateDeviceBanV4' test.out

#- 304 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    'sn0bVWRkvmAemh8l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'AdminGenerateReportV4' test.out

#- 305 AdminGetDeviceTypesV4
$PYTHON -m $MODULE 'iam-admin-get-device-types-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'AdminGetDeviceTypesV4' test.out

#- 306 AdminGetDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-device-bans-v4' \
    'ioBR7xTXcEIFod3l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'AdminGetDeviceBansV4' test.out

#- 307 AdminDecryptDeviceV4
$PYTHON -m $MODULE 'iam-admin-decrypt-device-v4' \
    'CzvjHzDHOrSJ1vbB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'AdminDecryptDeviceV4' test.out

#- 308 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    '7LRHd96dGLgkfrZv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'AdminUnbanDeviceV4' test.out

#- 309 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    'eFMWAFT7l0l1jaOA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'AdminGetUsersByDeviceV4' test.out

#- 310 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"count": 79}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'AdminCreateTestUsersV4' test.out

#- 311 AdminCreateUserV4
$PYTHON -m $MODULE 'iam-admin-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "JqQqhISTBT1Gofv4", "policyId": "SuaZ8yCB9TVZnuzg", "policyVersionId": "vAZJRm71EC3ENuvD"}, {"isAccepted": false, "localizedPolicyVersionId": "OPsp5Z3ez84KVB7H", "policyId": "eWPnVeFdy5ezlCU6", "policyVersionId": "SGzkMpTL2wxobjxA"}, {"isAccepted": false, "localizedPolicyVersionId": "7ColKwlsNvtFuunQ", "policyId": "svdXGlD40xxIyVwY", "policyVersionId": "jn6dlC9Kfh9gHulo"}], "authType": "EMAILPASSWD", "code": "mrVrmTJwtBTzQTrN", "country": "o1LcWNf7xHpi1JZJ", "dateOfBirth": "jIRtCfqDHSlo54zS", "displayName": "nRN0zGMworzym1z3", "emailAddress": "ZdetOic9AQOFWpdI", "password": "tLBhvKJq9tWz9yui", "passwordMD5Sum": "8a6jOflFJlZEhz1Q", "reachMinimumAge": true, "uniqueDisplayName": "thVvU5on065ApCkV", "username": "N3QchuQ6pntxB648"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'AdminCreateUserV4' test.out

#- 312 AdminBulkUpdateUserAccountTypeV4
$PYTHON -m $MODULE 'iam-admin-bulk-update-user-account-type-v4' \
    '{"testAccount": true, "userIds": ["8BG8KcVWOX9n3Ysj", "JexnFA9Umz3KPICy", "a5Fk5TPaEbX29cV8"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 313 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["v7MXctihtxMnIr4b", "7jyfL3zMkklGCPIS", "lsnVA6z0uSfNNpJU"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'AdminBulkCheckValidUserIDV4' test.out

#- 314 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "YzJxnOyvqmswrToy", "country": "BIQumxDfAxNqCUti", "dateOfBirth": "zYM97ebZcYqwfIHP", "displayName": "WMkOmrT5HL16jMwE", "languageTag": "CnmwJv4rpqtzDaz0", "uniqueDisplayName": "WUJlBCHzJ2v9K8c1", "userName": "zOlZg30pagfP0FfO"}' \
    'MBOpeQT4zYIbU4i9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'AdminUpdateUserV4' test.out

#- 315 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "mLyX46Alt08rrnG8", "emailAddress": "y2ScXkwjpAp82pGc"}' \
    'xvXaG9LzHpMS53jl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'AdminUpdateUserEmailAddressV4' test.out

#- 316 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    'lopwirRo3A8WxnR0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'AdminDisableUserMFAV4' test.out

#- 317 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'YaMsF3f5KLtpTSsP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'AdminListUserRolesV4' test.out

#- 318 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["MGDZTOwEP5Bhh0NS", "tWIggmhfAzVdNYP7", "Ao1z7FeJM2fWXGk7"], "roleId": "JObSHksRkabpmvRs"}' \
    'c7ZYvXCT6m6mRZAl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'AdminUpdateUserRoleV4' test.out

#- 319 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["LBczJVeil7GbG1IS", "BCkcnpxKUxLjmxhB", "S6YypRW7fNntaIEt"], "roleId": "DI6MbhxkQdezbmf3"}' \
    '92ersoZ2KbMb5jal' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'AdminAddUserRoleV4' test.out

#- 320 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["0ruZmBXlGSp85q6f", "uGfo5wSDHnyabk49", "3I3pvHKDaWhTN1qy"], "roleId": "xpUzWIZWJTDzWguh"}' \
    'ujw1EoR58uCVldef' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'AdminRemoveUserRoleV4' test.out

#- 321 AdminGetRolesV4
$PYTHON -m $MODULE 'iam-admin-get-roles-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'AdminGetRolesV4' test.out

#- 322 AdminCreateRoleV4
$PYTHON -m $MODULE 'iam-admin-create-role-v4' \
    '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "337LLNCjIySe36SA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'AdminCreateRoleV4' test.out

#- 323 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    '5dxATLv5PkLvraRz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'AdminGetRoleV4' test.out

#- 324 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'ChdjDGdlk2A2jHbA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'AdminDeleteRoleV4' test.out

#- 325 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "4pWwIVXp9avUr6Iy"}' \
    'dpXW0MO0eT9okl6M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'AdminUpdateRoleV4' test.out

#- 326 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 23, "resource": "02R1IVNnaK6KS71X", "schedAction": 38, "schedCron": "JHTEm5PSeyod5L6O", "schedRange": ["ooYoQn9iHEqWO1cV", "CUIOx90FQdwLi3GO", "QkLtpuRNeT1CULEM"]}, {"action": 86, "resource": "rPkzUe9SglAJGyZS", "schedAction": 74, "schedCron": "I8FevJiT98HUBp56", "schedRange": ["Q4WETxtGMs5tPKPu", "K0K4PiMDTR7Lxihu", "On57io0d9dG3yzaN"]}, {"action": 2, "resource": "YkVQnZDUAbINRKQs", "schedAction": 47, "schedCron": "yUnHnfrEdDfY4TTx", "schedRange": ["u8goZgsX4RwfM4qn", "UdcQqZ9F1uivPob0", "YZEuXQACDDQryNf9"]}]}' \
    'VGxbOeJe4n9eUlBQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'AdminUpdateRolePermissionsV4' test.out

#- 327 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 76, "resource": "2UGePWXbAyGiXa9n", "schedAction": 96, "schedCron": "G3ydYmGzvx9bSqqy", "schedRange": ["APha5b6PQTPTytHe", "eXo7gOFVLZCBWuVI", "ROZuqdJBi8pkn98V"]}, {"action": 40, "resource": "alv3bkoMXNzl1ywE", "schedAction": 86, "schedCron": "XtZU5SuIhMSaDRp1", "schedRange": ["7dUWHcjrb6qNeKpO", "xPrlG9svdqsiVTqP", "bzY1yxl7zeEpmSPO"]}, {"action": 94, "resource": "KwlJQlj9Ii2jARwz", "schedAction": 29, "schedCron": "1CE1gu6cYuzC77J4", "schedRange": ["irvZ9tktWLtDdlmV", "GK6iolEw6IIpDc9X", "5ijmtDGvd9ESdY0e"]}]}' \
    'TkBWA44Qqsi5yOjv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'AdminAddRolePermissionsV4' test.out

#- 328 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["l5sRN2ENn1RLi5iM", "Pnbg7o1zYpqUsliP", "yXZGYIW5ZDtWbdkz"]' \
    'PP47RcUIi2CoNj4E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'AdminDeleteRolePermissionsV4' test.out

#- 329 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'G2emxKQk8cBrt5E8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'AdminListAssignedUsersV4' test.out

#- 330 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["k8rzDZ08j6ICP75c", "m8YDChFi3zLvfQWC", "85MxWxvW0veFl3uU"], "namespace": "1aMD0mczWxc8f1s2", "userId": "QPMMZsf2dvKZyHCh"}' \
    'RPHvdkcKW21B5EFt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'AdminAssignUserToRoleV4' test.out

#- 331 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "D2pYaKTz1gcE2XCw", "userId": "TkRUIX6IFHNmB9mY"}' \
    'BvtOwxjqyrjDApeN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'AdminRevokeUserFromRoleV4' test.out

#- 332 AdminInviteUserNewV4
$PYTHON -m $MODULE 'iam-admin-invite-user-new-v4' \
    '{"assignedNamespaces": ["5eAfRqSgH5xIuBTY", "OdsvNyk52MQFkVVE", "f36S7yPgG48bk6Pw"], "emailAddresses": ["H1tdEAJSqXA0Wv0z", "WGvkc6byp3mvyYT3", "GuaZVTxBlw1IWeXK"], "isAdmin": true, "isNewStudio": true, "namespace": "ww3nBTVmBFZ6TIs9", "roleId": "bTi2m7eNsYEqKkeu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'AdminInviteUserNewV4' test.out

#- 333 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "LWDfeFeExlOFjRh8", "country": "mLFTJLveQSDWnMQG", "dateOfBirth": "aYRxFWia7yJ2d87X", "displayName": "jA0ajvb7JcGUFgp6", "languageTag": "LkyXpxJeFxhgTwyO", "uniqueDisplayName": "51CUpcdxL0a9VDhr", "userName": "qWCTXOxQUpyFgZhN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'AdminUpdateMyUserV4' test.out

#- 334 AdminDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'AdminDisableMyAuthenticatorV4' test.out

#- 335 AdminEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'AdminEnableMyAuthenticatorV4' test.out

#- 336 AdminGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-admin-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 337 AdminGetMyBackupCodesV4
eval_tap 0 337 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 338 AdminGenerateMyBackupCodesV4
eval_tap 0 338 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 339 AdminDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'AdminDisableMyBackupCodesV4' test.out

#- 340 AdminDownloadMyBackupCodesV4
eval_tap 0 340 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 341 AdminEnableMyBackupCodesV4
eval_tap 0 341 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 342 AdminGetBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-get-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'AdminGetBackupCodesV4' test.out

#- 343 AdminGenerateBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-generate-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'AdminGenerateBackupCodesV4' test.out

#- 344 AdminEnableBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-enable-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'AdminEnableBackupCodesV4' test.out

#- 345 AdminSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-admin-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'AdminSendMyMFAEmailCodeV4' test.out

#- 346 AdminDisableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-disable-my-email-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'AdminDisableMyEmailV4' test.out

#- 347 AdminEnableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-enable-my-email-v4' \
    'pOTE4toH57yr01N3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'AdminEnableMyEmailV4' test.out

#- 348 AdminGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-admin-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'AdminGetMyEnabledFactorsV4' test.out

#- 349 AdminMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-admin-make-factor-my-default-v4' \
    '3p1Gha8HwpagvERZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'AdminMakeFactorMyDefaultV4' test.out

#- 350 AdminInviteUserV4
eval_tap 0 350 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 351 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "p7VMlxEXnqHwMyKp", "policyId": "wphjUXvM1GqMkZ44", "policyVersionId": "UXgdBqtJaRyDlP9q"}, {"isAccepted": false, "localizedPolicyVersionId": "5Krx6KkHagEugKJx", "policyId": "kU8Y58COtTNjnNSi", "policyVersionId": "kJDg6ujKvq0CIa1Y"}, {"isAccepted": true, "localizedPolicyVersionId": "l3yrH9HR4reG0HwU", "policyId": "XxQTf5YpDUGYsJBE", "policyVersionId": "kYUrLv4qUiTkFcLB"}], "authType": "EMAILPASSWD", "country": "4azSHcwicUVq2XPl", "dateOfBirth": "jTZj5R0yZSVQ8SSe", "displayName": "J4qy4PIKleuV271b", "emailAddress": "wZ4niLSzQnv0C00d", "password": "tNGGzbGYSYo9fY2E", "passwordMD5Sum": "BZAHQXc4Xcae7VKl", "uniqueDisplayName": "0ARzGEArlfE1NSmt", "username": "cADoZvd0La7P4JI4", "verified": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'PublicCreateTestUserV4' test.out

#- 352 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "TCbAPLC3iqrkyJFO", "policyId": "VaewFcv9h31YxuZn", "policyVersionId": "oSesWpLUHjGaIcZN"}, {"isAccepted": false, "localizedPolicyVersionId": "gH4Cd9xTdt2K1Czp", "policyId": "QWslNGnLYUYR0yOv", "policyVersionId": "JhUjzcMtwINUlrhI"}, {"isAccepted": true, "localizedPolicyVersionId": "dESOBV7wZJsg7wSv", "policyId": "9lyRyTdYBUljvBzv", "policyVersionId": "YNEtfgBFikt18cQ6"}], "authType": "EMAILPASSWD", "code": "SotDEtU2xBSEQ8rB", "country": "Kc2K6oJXxVEfnaqX", "dateOfBirth": "8NuZtRUTKUvR69PI", "displayName": "my6CcwlqJ4MO3L8x", "emailAddress": "1H5OgzHypgsSeKCv", "password": "tPz7jagBG9a1TZ87", "passwordMD5Sum": "ltClc3RDXF5055tU", "reachMinimumAge": false, "uniqueDisplayName": "2943ClrNhEdxd24Z", "username": "KfvMf1T5FzYMf1ja"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'PublicCreateUserV4' test.out

#- 353 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "Bvb1rcuEtWAF763k", "policyId": "ci7lT62BOHaso53W", "policyVersionId": "3U2Mu9ZGMWou1U0R"}, {"isAccepted": false, "localizedPolicyVersionId": "Cf3gMWDAodCKqfqz", "policyId": "eexHA70NgJTxjtzg", "policyVersionId": "O7W3taRvJ6lKWJwH"}, {"isAccepted": true, "localizedPolicyVersionId": "65aOFDwpqy7XOU3D", "policyId": "wglyMGNll4O8ELah", "policyVersionId": "cNJqRjepck1l0qxR"}], "authType": "EMAILPASSWD", "code": "RpcfEQn0O6D8PGQu", "country": "azAypgWhTED5YmPT", "dateOfBirth": "BUkm2FyvdguCYVqF", "displayName": "yIKh1YtTY4AejyQc", "emailAddress": "5Dac7hSLldWx5Dyn", "password": "iVESUgrROrP1ip3j", "passwordMD5Sum": "NG68DByf2UMPtigq", "reachMinimumAge": true, "uniqueDisplayName": "zOQOcAqBj0bXhOr9", "username": "OHt6zx1i2W3GY7td"}' \
    'h8hHlQyMlgfkTsAT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'CreateUserFromInvitationV4' test.out

#- 354 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "hLyflAqqAP4M78sm", "country": "Ydyge6DroOywOxI4", "dateOfBirth": "G6jZzoYIFAvYfT8X", "displayName": "Qw2EOq6BFjmN4OqK", "languageTag": "GLRpNWzKZtZnxgyw", "uniqueDisplayName": "mr4CYNGm7Tk1mMye", "userName": "NRsjQuDEgO3MEQNL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'PublicUpdateUserV4' test.out

#- 355 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "6ijLRvQOgoaBooTa", "emailAddress": "wHLMxhx9nC3o6pXU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'PublicUpdateUserEmailAddressV4' test.out

#- 356 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "5MDJLCB6WbXWIRpg", "country": "jooaBVemsbkaXZQ6", "dateOfBirth": "nTj9rZpkSntuOeaP", "displayName": "AyPeEGBepK1Ix4Sw", "emailAddress": "jCYjCHniVSn1gYGa", "password": "l5NrBtT0om9OlGzp", "reachMinimumAge": false, "uniqueDisplayName": "25qu98RhktX6qwkX", "username": "bCLbh8t0zPkQWRUl", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 357 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "TEqYudHlA4AxeEIf", "password": "UxJ2xMSNNBxCeN3p", "username": "Gn46fGvodt413MRd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'PublicUpgradeHeadlessAccountV4' test.out

#- 358 PublicDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'PublicDisableMyAuthenticatorV4' test.out

#- 359 PublicEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'PublicEnableMyAuthenticatorV4' test.out

#- 360 PublicGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-public-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 361 PublicGetMyBackupCodesV4
eval_tap 0 361 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 362 PublicGenerateMyBackupCodesV4
eval_tap 0 362 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 363 PublicDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'PublicDisableMyBackupCodesV4' test.out

#- 364 PublicDownloadMyBackupCodesV4
eval_tap 0 364 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 365 PublicEnableMyBackupCodesV4
eval_tap 0 365 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 366 PublicGetBackupCodesV4
$PYTHON -m $MODULE 'iam-public-get-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'PublicGetBackupCodesV4' test.out

#- 367 PublicGenerateBackupCodesV4
$PYTHON -m $MODULE 'iam-public-generate-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'PublicGenerateBackupCodesV4' test.out

#- 368 PublicEnableBackupCodesV4
$PYTHON -m $MODULE 'iam-public-enable-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'PublicEnableBackupCodesV4' test.out

#- 369 PublicRemoveTrustedDeviceV4
$PYTHON -m $MODULE 'iam-public-remove-trusted-device-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'PublicRemoveTrustedDeviceV4' test.out

#- 370 PublicSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-public-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'PublicSendMyMFAEmailCodeV4' test.out

#- 371 PublicDisableMyEmailV4
$PYTHON -m $MODULE 'iam-public-disable-my-email-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'PublicDisableMyEmailV4' test.out

#- 372 PublicEnableMyEmailV4
$PYTHON -m $MODULE 'iam-public-enable-my-email-v4' \
    'G8qAPiANv2Ar8yXV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'PublicEnableMyEmailV4' test.out

#- 373 PublicGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-public-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'PublicGetMyEnabledFactorsV4' test.out

#- 374 PublicMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-public-make-factor-my-default-v4' \
    '6qf6v5SgcJPZPUh2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'PublicMakeFactorMyDefaultV4' test.out

#- 375 PublicGetUserPublicInfoByUserIdV4
$PYTHON -m $MODULE 'iam-public-get-user-public-info-by-user-id-v4' \
    'nHQwpWi8HZ6C0VJ0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 376 PublicInviteUserV4
$PYTHON -m $MODULE 'iam-public-invite-user-v4' \
    '{"additionalData": "fK2m6lQ5Ao8TITYi", "emailAddress": "HSR2SEJh1YDedZdN", "namespace": "qkXPWZfT8ZfdKp9q", "namespaceDisplayName": "4nXuK0tJAYror2Xd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'PublicInviteUserV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
