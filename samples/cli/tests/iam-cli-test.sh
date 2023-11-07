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
iam-admin-get-country-list-v3 --login_with_auth "Bearer foo"
iam-admin-get-country-blacklist-v3 --login_with_auth "Bearer foo"
iam-admin-add-country-blacklist-v3 '{"blacklist": ["jyEgarAdNJOIG36I", "6tRbRcrEveMdAdiP", "KDUVSC00PYeDcagg"]}' --login_with_auth "Bearer foo"
iam-retrieve-all-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-sso-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-third-party-login-platform-credential-v3 'inxnFIna3yddcbsP' --login_with_auth "Bearer foo"
iam-add-third-party-login-platform-credential-v3 '{"ACSURL": "heTH26IUJNvYuGRU", "AWSCognitoRegion": "vpZaHCuESOiIZsMf", "AWSCognitoUserPool": "B4ZH3mtgWgU4pCAK", "AllowedClients": ["xeE70CaunQNxot37", "1W9G4AvQkqsGnmyo", "5JJTUVmb8GEXFTlE"], "AppId": "MEsFzYqwgK1Np5no", "AuthorizationEndpoint": "dqpLm7FhJBNXzAFd", "ClientId": "O0Khqf6kiTdSGv2L", "Environment": "FjAKY7CbgsWqFWZX", "FederationMetadataURL": "7kPBom8F9GLLTG8p", "GenericOauthFlow": false, "IsActive": false, "Issuer": "c3n4iLoIllKlpO2p", "JWKSEndpoint": "qiXJF3WGRaoQomSJ", "KeyID": "C4DdrKF7SUQPLG59", "NetflixCertificates": {"encryptedPrivateKey": "e0k5ZtX6wK7PpUlc", "encryptedPrivateKeyName": "IW32iK7MGt1ixY5r", "publicCertificate": "A1WoVeJIePF8ZrQz", "publicCertificateName": "P4zvtdxdbZUpd6FJ", "rootCertificate": "tHJ1pyVwyKQLY6FE", "rootCertificateName": "O65Rb3z7CYLM8Ils"}, "OrganizationId": "HqffnrfsGlfPaZKB", "PlatformName": "wa3Ddb60ufPpzwj1", "RedirectUri": "QGIFmlVf4jvapseE", "RegisteredDomains": [{"affectedClientIDs": ["9LN9bvhOrHflIOd6", "X3viLvtEk4mTIpUA", "9gxo8SV38nEhoXmM"], "domain": "2W7l6jHMA2rG3nak", "namespaces": ["opAywelu01nryEJ0", "NqoTow0qiOiC4j0i", "ktm0ZPLkLOsp0LZ5"], "roleId": "njN86Hl8kUXzt6bS"}, {"affectedClientIDs": ["c6bWvgpVyW9dD1kO", "mvrAejcq2LgkQuaS", "7RBx3vim02jBOxrZ"], "domain": "DyvpcLYOWA8NjxOn", "namespaces": ["aEok4nOOCzfsflhj", "bngJOUn18G5MlfDT", "k8aG40NlncceIZSw"], "roleId": "gAIkgzh4pTU0Am4D"}, {"affectedClientIDs": ["Zhl0bQxFJ3sWCqQp", "Q2FbKPFMycMSQ4qf", "AacR0LgB5BUXvjcu"], "domain": "2s6w3VifnKqmTSoG", "namespaces": ["H1XEfY6QAYn6WQ5U", "BEU1QAOHfZiGhxOd", "cuDXSxSc3aZPV87p"], "roleId": "na08gxefTYKhuxaE"}], "Secret": "c7M4P7UckSC6ePeN", "TeamID": "8i4GrFES9z7xueHp", "TokenAuthenticationType": "ATHccee9GXhKcjmS", "TokenClaimsMapping": {"EwdrkEnnqKzFsLfY": "alUlfwEQKjU7eHGe", "bSVu0LQ40kepEaC4": "dfiOMZfEhHr39pys", "FO3Zvc1BZG99Lyvf": "vHEsJKQQewVLMUoA"}, "TokenEndpoint": "naRcYp7FUjfIGaff", "UserInfoEndpoint": "oflEIByYqeKN0meG", "UserInfoHTTPMethod": "elYF5wWaDhukU4kh", "scopes": ["GG4vZFTYnPkmSu4P", "Wam1jxR7SETWjteo", "c8fgvZDDhoO05oKq"]}' 'ymxLD1Lcvw6T6mZE' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-credential-v3 'iwxxElpMYSWIeVzm' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-credential-v3 '{"ACSURL": "7z9noowmlTIKVowi", "AWSCognitoRegion": "0RY2VN4ZONJREdUQ", "AWSCognitoUserPool": "3z9F1BxNNgnke4ak", "AllowedClients": ["ncw7wu9TmXfJWBPr", "x9Ns8eLzYEvwSWTa", "LQjctvrK2jhsYpKP"], "AppId": "lXn77AtYoFzLAATP", "AuthorizationEndpoint": "Y8P8P3cfoivvQxev", "ClientId": "ecWw7Rry0KK5rgAG", "Environment": "O0dW8rX2MVUGKSZ4", "FederationMetadataURL": "GcLkt4pK32sJxlZc", "GenericOauthFlow": true, "IsActive": true, "Issuer": "TpTdRtCHvuk6B6XT", "JWKSEndpoint": "mSLyn50sigBVZxiK", "KeyID": "dV57GvRyd9UuL02L", "NetflixCertificates": {"encryptedPrivateKey": "e8HSCslsDd4M1F5q", "encryptedPrivateKeyName": "RIblS7Nz81GRazPA", "publicCertificate": "ANjfBoldFOyqA2cl", "publicCertificateName": "J5gEOaCgM6Yn6Rug", "rootCertificate": "bNEIpGBFUjOn5mM7", "rootCertificateName": "k8nbLzvtCIW5ynMK"}, "OrganizationId": "quUicAeIVXtoWAXh", "PlatformName": "MlW4tLqX7OICf5oD", "RedirectUri": "1e6oI9FmYel0kOw7", "RegisteredDomains": [{"affectedClientIDs": ["2o8Zkgk0jS6rDWUw", "fhKvrf2AaH4yCWrH", "SppnIZkNnTn3rzH5"], "domain": "NvAtcvNedgS1fUfK", "namespaces": ["mihDbmu8ePWlQMVD", "XEHeiGTnwyEw6hIW", "DZrpP7rz3ISW510k"], "roleId": "Hr4isTKWjmv67nuH"}, {"affectedClientIDs": ["CXWfwnwGioVwVzmm", "BVVFfpqx1AeLtzcP", "J3jtDYBo4FUTH7CG"], "domain": "fKSyxgRR1DiCqSMz", "namespaces": ["pqIFGLkDs7ACC1Rg", "BfoNrHlFi2qJLgmB", "LE35YhyiDV90SeI5"], "roleId": "yppBHoytVznCgNyx"}, {"affectedClientIDs": ["9fbT63ShEh8PbGik", "Ljgjcj34uulU6FYB", "ZsWFbr3RSP0W9nBh"], "domain": "vhf8Q0DtJMcYQdN6", "namespaces": ["6bswAgt65X4N1LQZ", "mB61JMdtwCVUrYQu", "e84dwmbwFEnAZaWs"], "roleId": "QJtRYoagRJK5PX9U"}], "Secret": "cOvhPyE11TRT2SKs", "TeamID": "eoe8VLie0LBa36KN", "TokenAuthenticationType": "zjf005CXNGehQ2aT", "TokenClaimsMapping": {"jTDfKFDXC7eGL5Yh": "JDWh9YWqc0qgV6d9", "yOfIMLds2DbPcaoM": "dtRLTmSvTkQQgB7e", "xYvmHMxr5hPCJJzt": "JBg0tTJg46IewOXE"}, "TokenEndpoint": "2AkCh3QIZsUf8lGF", "UserInfoEndpoint": "XcmwTERHclOdxIwq", "UserInfoHTTPMethod": "ejxe18rNdb8Otq6j", "scopes": ["1mqUav7k05HAQltn", "SojV4jT65yclX2Ft", "Az0vJjFIYWOaNdsi"]}' 'mmkW2miH3xRHAKy4' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-domain-v3 '{"affectedClientIDs": ["QxZkaXZ7vmiEd0JP", "xVyQpshaDwNqTbbF", "MXAMfVXe0GZeMgsR"], "assignedNamespaces": ["smH1EQrYmkPKTPOl", "hTtSiZNCxuogFteT", "HJe4BhSSQkQD6WmO"], "domain": "t6D7ufFVTOhvQpfb", "roleId": "Bke8aEdd36xj6wyS"}' 'oltDxsbzxrlaKEfk' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-domain-v3 '{"domain": "oYjY2o6ouRW9UtNq"}' 'uwC3WgumrIz4NhGz' --login_with_auth "Bearer foo"
iam-retrieve-sso-login-platform-credential 'tZpr4U4fwQIiLXgm' --login_with_auth "Bearer foo"
iam-add-sso-login-platform-credential '{"acsUrl": "RasvjO4lj8m3XEwP", "apiKey": "2b4gd3xOeii8Jnms", "appId": "sep2xD2NY0kABeGs", "federationMetadataUrl": "9yxahld1pO0Gyf5P", "isActive": true, "redirectUri": "COyMvczgEpzZ3Fbt", "secret": "xfhcRC7IVYa6iZ5u", "ssoUrl": "FRYNn3SHiWxF0Ybu"}' 'U5ar5qTLWUCy0Afg' --login_with_auth "Bearer foo"
iam-delete-sso-login-platform-credential-v3 'c050XIZRW491e94m' --login_with_auth "Bearer foo"
iam-update-sso-platform-credential '{"acsUrl": "QjVOOBnIWhunElqZ", "apiKey": "Uodp3IhtCSHy1ei1", "appId": "fIrPvfHnRN06EjRw", "federationMetadataUrl": "EQlNapJRfk4f9Zcw", "isActive": true, "redirectUri": "OaxgP6Jbct8puMyb", "secret": "YGxD9IPmmsLmu3ka", "ssoUrl": "Pj0O4zd8Tb7cUNGP"}' 'TBxiFFCrn7djjs69' --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["FTFVGUVhvKhJCmei", "sql14mUHVbMPimNh", "cZsU3VAdMDcb4qlk"]}' 'iFAamqvZI2KwjqPB' --login_with_auth "Bearer foo"
iam-admin-get-user-by-platform-user-idv3 'iWXade41s3rH34mB' '2yPlRpWjmHZAAvKT' --login_with_auth "Bearer foo"
iam-get-admin-users-by-role-id-v3 'H8MuqIg0CzkguwuJ' --login_with_auth "Bearer foo"
iam-admin-get-user-by-email-address-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-ban-v3 '{"bulkUserId": ["CW7EEFB67AODbi9B", "zupBsFpYc77GtRUc", "CFeY5g4XgBsbfzqx"]}' --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-user-i-ds-v3 '{"userIds": ["BPNe8ae1Il4aAtEb", "u4IjGdqthRxTjQ7g", "kZEY8rG0q0Q2Qd2J"]}' --login_with_auth "Bearer foo"
iam-admin-bulk-get-users-platform '{"userIds": ["zRbkF2I03dIjvBbA", "6bfbYaJCJjfk2TUv", "n95FhO7VW3mbDVMD"]}' --login_with_auth "Bearer foo"
iam-admin-invite-user-v3 '{"emailAddresses": ["u87t0ldWf7iSGIiK", "FtWtn4Yr2svKM6pq", "LGZ0TBujELAUK6mQ"], "isAdmin": false, "namespace": "iZgbwwm5iGzXtckn", "roles": ["rgidKupvXO6aj4hC", "mTC34jxW4pIDwdqX", "pmRmut9H9XyWI8bp"]}' --login_with_auth "Bearer foo"
iam-admin-query-third-platform-link-history-v3 '8fQxRuX91uYmtrHJ' --login_with_auth "Bearer foo"
iam-admin-list-users-v3 --login_with_auth "Bearer foo"
iam-admin-search-user-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-by-email-address-v3 '{"listEmailAddressRequest": ["bEGTUj7YjERL1rEQ", "G02zccA8wvLsWUNd", "6lPKvqDejvqklTSv"]}' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v3 'DwuOrP9lzpiX0VuF' --login_with_auth "Bearer foo"
iam-admin-update-user-v3 '{"avatarUrl": "pZum7izxe7NPzjOa", "country": "8E7wY76PxLv9HBEU", "dateOfBirth": "e89AwEw1HO4FnKtx", "displayName": "4XLKAmlDr19uJ3nq", "languageTag": "6VerzVCcI8y3Cz0Y", "userName": "qCKUh5RD9vNAp4ji"}' 'nFpnQ5xF9wwbvMZy' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v3 'eDeRnVfPUa6xVVBc' --login_with_auth "Bearer foo"
iam-admin-ban-user-v3 '{"ban": "q3wZpFIYeAg79HcL", "comment": "JXJ7mpVI6eTYAjdP", "endDate": "lCiQQC35cj4KyOVg", "reason": "vnWbfRJtsB7cUQZ2", "skipNotif": true}' 'UAxJrINPXppPNO3A' --login_with_auth "Bearer foo"
iam-admin-update-user-ban-v3 '{"enabled": false, "skipNotif": false}' '2fSk3LL0calqxEew' 'uGS469k2hG0WKt4s' --login_with_auth "Bearer foo"
iam-admin-send-verification-code-v3 '{"context": "UmanYxM0UHZVNYzG", "emailAddress": "MNIpWoSLkUrfuf4U", "languageTag": "3WeYeA9t2ENKKWrF"}' 'tHIi1CMgKAOG5iDc' --login_with_auth "Bearer foo"
iam-admin-verify-account-v3 '{"Code": "CR5PbCvDLil8wj9c", "ContactType": "KM3Ar6MF35hCER4n", "LanguageTag": "GmWGgTJfHlJl4tHG", "validateOnly": false}' 'ZWu4yA3r0u4q1bTH' --login_with_auth "Bearer foo"
iam-get-user-verification-code 'XIjfJKyFlM0u1uuo' --login_with_auth "Bearer foo"
iam-admin-get-user-deletion-status-v3 'Vdn9yVoSlKNchPHN' --login_with_auth "Bearer foo"
iam-admin-update-user-deletion-status-v3 '{"deletionDate": 77, "enabled": true}' '4X3LLaGPGdqLE8So' --login_with_auth "Bearer foo"
iam-admin-upgrade-headless-account-v3 '{"code": "hhhuiTnJarYYkHBD", "country": "dSzBXdxapwhd5IQY", "dateOfBirth": "BQuxLvPuWYvE3fsN", "displayName": "y9Z9OhxXvCp9y7fL", "emailAddress": "D2qfCXnlUnqxT1Ws", "password": "RNMZcA92hzC7MNa8", "validateOnly": true}' 'IhzOx2CXKlvIomU3' --login_with_auth "Bearer foo"
iam-admin-delete-user-information-v3 'pIxM9n8D2eLMe3lt' --login_with_auth "Bearer foo"
iam-admin-get-user-login-histories-v3 '9qfx2UDcgVE7L9FK' --login_with_auth "Bearer foo"
iam-admin-reset-password-v3 '{"languageTag": "6e0MrPc4vtxk9hVK", "newPassword": "lG56HlzGr7XjdyRJ", "oldPassword": "unZPkp6ccIBnWyPw"}' '8mj7gyQ7XdIszGRj' --login_with_auth "Bearer foo"
iam-admin-update-user-permission-v3 '{"Permissions": [{"Action": 89, "Resource": "6COPipH1MWVTHG0q", "SchedAction": 69, "SchedCron": "d6mO4oI8KDqebm83", "SchedRange": ["raNBJ5y7axEkvI4o", "xZEDxGiBnNbn0zaf", "7CaOSlHXrUSA6sMJ"]}, {"Action": 53, "Resource": "2IwEsdOGBXBwnzDX", "SchedAction": 44, "SchedCron": "WznDe4LQdXfFBii2", "SchedRange": ["RAMEX5RMjBFVZGYz", "QqV8d9mDdUIoiIJF", "NxuNOmUSWw18T1Ix"]}, {"Action": 98, "Resource": "dkaZ3y6i38XQjLDR", "SchedAction": 33, "SchedCron": "8xj1LyEirURERnEM", "SchedRange": ["zpImW6sjAHyCK5tN", "anGBrkzUvck3xTtm", "OFMebS4AdlNzwog2"]}]}' 'IhErkNhNcECWwchW' --login_with_auth "Bearer foo"
iam-admin-add-user-permissions-v3 '{"Permissions": [{"Action": 5, "Resource": "zL9SkbLlrNXnGanM", "SchedAction": 0, "SchedCron": "Y48F1dl1q92m3iRl", "SchedRange": ["fnBAk0CwiAsR65yQ", "9ssuHdGmxncCEr0K", "cgeqzGbruNB72HHM"]}, {"Action": 20, "Resource": "odd7CcJUrI6MAugK", "SchedAction": 9, "SchedCron": "kypNrp2nFe9FmN86", "SchedRange": ["sK5LOq4ft5jGcMIC", "PUYnfG6jl9U4jRet", "eIMgzISomCsodJrh"]}, {"Action": 87, "Resource": "XOmqFHLbyXmgCNiX", "SchedAction": 68, "SchedCron": "5I0uGcL1koyHjCH5", "SchedRange": ["olYLETRpABAmO2EG", "vJ4UMS93yOxNInDB", "yhnoluO6ti0QP2ss"]}]}' 'iJ66OzOj84O6tgoh' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-bulk-v3 '[{"Action": 19, "Resource": "3YVeOWs9mfVQh3jL"}, {"Action": 57, "Resource": "ifF8y959anrNSley"}, {"Action": 47, "Resource": "CxyQrUpIFvORxTi7"}]' '9DpSjb39ukcR6c2E' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-v3 '64' 'r3vk3IfAKEbqcNXS' 'GCCvNowNmdpcJgF8' --login_with_auth "Bearer foo"
iam-admin-get-user-platform-accounts-v3 '8ySNq4Mj7mulP4tQ' --login_with_auth "Bearer foo"
iam-admin-get-list-justice-platform-accounts '6R1OqKVOTniBgLsN' --login_with_auth "Bearer foo"
iam-admin-get-user-mapping 'hdgQ0JWZjNRSzOTq' 'cVNX3ahvxw9gwwhT' --login_with_auth "Bearer foo"
iam-admin-create-justice-user 'njN6wKZGW4y3f0R9' 's2kndhhZhwAiLsZs' --login_with_auth "Bearer foo"
iam-admin-link-platform-account '{"platformId": "4pmLDIQch4IjDq9a", "platformUserId": "T3qZyI0rYsWucAkX"}' 'sVJbXi7eRZa7WwIc' --login_with_auth "Bearer foo"
iam-admin-platform-unlink-v3 '{"platformNamespace": "895ImqK6tVsaUq3s"}' 'tUh5J5Z9GiBiSAyl' 'X5cS0IeHpWCugmfO' --login_with_auth "Bearer foo"
iam-admin-platform-link-v3 'L0QQpxsuD8PGqku5' '9eFJrOXyDYz9vMUO' 'PG0iHDT8QbF7gHPT' --login_with_auth "Bearer foo"
iam-admin-get-third-party-platform-token-link-status-v3 'PQbvLt2NRqJGIKzL' 'yH1y72L13Ornyx34' 'luLdvtsTKXMjiw6g' --login_with_auth "Bearer foo"
iam-admin-get-user-single-platform-account 'YPvfn2Qt9iyq3Nyk' '8ncu2Z3eDHH9WaVO' --login_with_auth "Bearer foo"
iam-admin-delete-user-roles-v3 '["4iKhDcJ7TCcNIsQ3", "PuppUxDSK8aOTGMu", "dcxlCV4cNbJGQ57l"]' 'PdinpjS2DRfGt9Gl' --login_with_auth "Bearer foo"
iam-admin-save-user-role-v3 '[{"namespace": "yZVQ4X67tPZSTpPq", "roleId": "3xjrElvvDgw0ag7k"}, {"namespace": "SWE0Hiqm5IuLryiE", "roleId": "XqvUWDjU1G0EVjVZ"}, {"namespace": "w1ToLuPakQN1MpOs", "roleId": "1RVFrcg2CXxepx78"}]' 'fvsyhE2BKtyTDSIM' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v3 '7mkmvZ7Cmsh4US8o' '4jfMANPpmZDdMiCx' --login_with_auth "Bearer foo"
iam-admin-delete-user-role-v3 'muCCVuFjS1GC1d2b' '92B4vEgj3HOmhcWm' --login_with_auth "Bearer foo"
iam-admin-update-user-status-v3 '{"enabled": false, "reason": "28XejRF94NIY9nMr"}' 'BZo0lNUBDShHD32v' --login_with_auth "Bearer foo"
iam-admin-trustly-update-user-identity '{"emailAddress": "vL28FPwTiXfLcxDC", "password": "9Ynd02mECIQhfIhH"}' 'tADUQ9zimQTQT95p' --login_with_auth "Bearer foo"
iam-admin-verify-user-without-verification-code-v3 'FJUAJsyAfeKOufV4' --login_with_auth "Bearer foo"
iam-admin-update-client-secret-v3 '{"newSecret": "f15NohXu6opxQGRt"}' '6PqlkL0diRhLC10i' --login_with_auth "Bearer foo"
iam-admin-get-roles-v3 --login_with_auth "Bearer foo"
iam-admin-create-role-v3 '{"adminRole": false, "deletable": false, "isWildcard": true, "managers": [{"displayName": "MLAo3m61P2xaNfmn", "namespace": "8Onb1a9gMz0F2UBR", "userId": "mMhAbUWmFhdYLWzM"}, {"displayName": "uv3zkUY0n0BAZkwb", "namespace": "YkBLyO6A0FqfhnaB", "userId": "3YxKNdOTacCcJfIf"}, {"displayName": "XshuLUk5WdpxjZx5", "namespace": "noXPhPUTKbonoucN", "userId": "mzwOZOK56sDkci5r"}], "members": [{"displayName": "Z8iMlOuksQJCiRFi", "namespace": "ZWwJ7NrTb1XTB9YQ", "userId": "zUJ9XlYJ8BzP6EUm"}, {"displayName": "UXGM5anIloyj9lhb", "namespace": "vuQdW2jwKUckc794", "userId": "ryY91lX8DD4MYXlr"}, {"displayName": "J81lHvv9rqvEoM8Y", "namespace": "mVjAkO3HKsEp6Klq", "userId": "wW4djrexcbHdEtoQ"}], "permissions": [{"action": 44, "resource": "7xxSVp3Gd2TK0HzY", "schedAction": 44, "schedCron": "eV6jbalHmqBBfi7s", "schedRange": ["SF5BoGiTCVsXsygW", "bjE2opXtdsJQeJ1t", "oo0qvxphTLEEBGTt"]}, {"action": 94, "resource": "yTjdKNKgYazujsmS", "schedAction": 26, "schedCron": "GnNuhoJM3WWPvvCi", "schedRange": ["Cf33ViEdqQpoGkUW", "Nizk5UcPAGv6c1ES", "C6hZYTYZbzf5aANN"]}, {"action": 82, "resource": "WfgBAKx27MSBqabU", "schedAction": 55, "schedCron": "OGkkoMUZn1YXj5zF", "schedRange": ["ZeOCOR9NvBQZSJPO", "IKrRBrYVzi9ui3lv", "ozTt9TsH7A0TuU2a"]}], "roleName": "L4bPkk11sys6GdkD"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v3 'cos5uVJ0BJfZ0jvA' --login_with_auth "Bearer foo"
iam-admin-delete-role-v3 '54CSqZFDsO1skRjO' --login_with_auth "Bearer foo"
iam-admin-update-role-v3 '{"deletable": false, "isWildcard": false, "roleName": "SMfQVQa6blj9Rdd8"}' '5bdYUumPKVSZCg3X' --login_with_auth "Bearer foo"
iam-admin-get-role-admin-status-v3 'Tc9vQe0dHJfF6KIu' --login_with_auth "Bearer foo"
iam-admin-update-admin-role-status-v3 'vnRCa9JktyBdxkZK' --login_with_auth "Bearer foo"
iam-admin-remove-role-admin-v3 'rEWFw9GYxjiiOQAD' --login_with_auth "Bearer foo"
iam-admin-get-role-managers-v3 '77ci0vfWVZoRRMPi' --login_with_auth "Bearer foo"
iam-admin-add-role-managers-v3 '{"managers": [{"displayName": "57HyKKz5nyI6ulKN", "namespace": "KoXa0dgx1JgjC56p", "userId": "da3YhtQxpCYME6x2"}, {"displayName": "1pdX2QSPAd9sxoLn", "namespace": "WGP1PafIjLX8ce0K", "userId": "bNN7Ycl2JfmQplvG"}, {"displayName": "jVQ4aebjfgGu472o", "namespace": "WJlfglLM4xjfkNL4", "userId": "lU6jaGfsD1cfswme"}]}' 'FpvtDtetoQVFL8LN' --login_with_auth "Bearer foo"
iam-admin-remove-role-managers-v3 '{"managers": [{"displayName": "W11vtpaTxi7k489j", "namespace": "RCn48bvkCPfKofwX", "userId": "OIZZQAJza84lKKmV"}, {"displayName": "OaTS6xBbNrSUAW2a", "namespace": "k7ISDrBVg6NuDZvP", "userId": "b1kuUfNfUDe4g7q6"}, {"displayName": "PHEaqbzHvDDl1jiL", "namespace": "w3XMGBA6JXDpA1tI", "userId": "C45C0oaGouFu4hXO"}]}' 'NgUwJnUpryDeRcpU' --login_with_auth "Bearer foo"
iam-admin-get-role-members-v3 'vlrw2MwC1uuokpaI' --login_with_auth "Bearer foo"
iam-admin-add-role-members-v3 '{"members": [{"displayName": "jL0Vxe5n9Lx3QcFo", "namespace": "9gxOgvDc7xMrRKvw", "userId": "8ISP2WKmCRRXBxla"}, {"displayName": "lCHtWlKxLpS8fLWo", "namespace": "Q5nuJhatQPxR7dvB", "userId": "VC5zgOKLTDmHe8c1"}, {"displayName": "eJ9sde7Ryt4udIv2", "namespace": "2M18uux9xBomQFPF", "userId": "Wy5cwNPI6aFo0MVw"}]}' 'DZCIXFNEL3uWVRz3' --login_with_auth "Bearer foo"
iam-admin-remove-role-members-v3 '{"members": [{"displayName": "V7YbJM3bNLWHAbCZ", "namespace": "ixe2cQ6O30lpzcBQ", "userId": "MAEcNcJqrKxnMzSY"}, {"displayName": "oc4ZjiMY4H34B6wV", "namespace": "d8ipcKDwQeUWtjCC", "userId": "2UH6jzMO3AfmOS5m"}, {"displayName": "QNyRPZFPNP56l1AT", "namespace": "6OLKmZhCZxxPPdPw", "userId": "OtEuWBSO2jJepUnE"}]}' 'Egja2mIE2kLTnJwc' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v3 '{"permissions": [{"action": 29, "resource": "XmkCuL5W4tKt6G3j", "schedAction": 97, "schedCron": "LYdG7xVPqBqe9RDQ", "schedRange": ["MBSYAFLqp8PF5hCc", "oukWpnbz4ys7j6lx", "uU3u2HEG0qfKegvF"]}, {"action": 93, "resource": "51yAB8Pa3uNGKhaL", "schedAction": 24, "schedCron": "GcA0h4G1LZ1HaX5U", "schedRange": ["BMbsF44VTsLDRzdq", "22cbnyK3ggFDh2ka", "ZP7pnnVfxPwc259H"]}, {"action": 64, "resource": "WiZ1uqh7GAi4FEIu", "schedAction": 66, "schedCron": "u83ZLRxYlYqlpq03", "schedRange": ["BGdIk4oEogFVGR71", "rJOBy6lsj1AKGBjn", "HmaAu4YK87DYAWWc"]}]}' 'bcbGWmKgE8CZ4AEL' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v3 '{"permissions": [{"action": 36, "resource": "nwa0ClGQJultJe32", "schedAction": 53, "schedCron": "sqHC9h5JPiMEtgKu", "schedRange": ["iGTYgwWv5XldL6rO", "VGcRAn51rVAQSxp4", "qTB54mKA3V9DKlCe"]}, {"action": 79, "resource": "7mLYsHooOIaxIpb1", "schedAction": 5, "schedCron": "2etVIQvRkQJAtDUH", "schedRange": ["9tx60AehGz1ermJY", "XsYgL7TfyIlAwjTZ", "dRZJJzWZwvTX2bam"]}, {"action": 91, "resource": "bwMI4gGmvK9gW596", "schedAction": 64, "schedCron": "HzgNZUKsI5y0mR3z", "schedRange": ["MyTsftKqnsIJctAd", "xyZVKHA9DkaSOWgt", "g8yw8lHEbVDwBAqa"]}]}' 'nOlscRIWw82k5K5V' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v3 '["TkdubkOFldMCQ98J", "H4n0JtgqzZv5kVu4", "S95mj8YRvae4f4lh"]' 'BPbarbWEm8bVtZcf' --login_with_auth "Bearer foo"
iam-admin-delete-role-permission-v3 '98' '4oA1keYXJvtggDdX' 'jbdjMBahFZZGMTcq' --login_with_auth "Bearer foo"
iam-admin-get-my-user-v3 --login_with_auth "Bearer foo"
iam-user-authentication-v3 'nWrIprOv0BJ9Sgl7' 'H1sdH2RIJz1eI7Q5' 'pu9PutLf6IrvZoBG' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-authentication-with-platform-link-v3 'QbO4S3rURGWUzPAE' '6SdV4D5jftRl9rZm' 'tQUvro8TWwXWsz9T' 'VmdMKEohKzuMYDUT' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v3 'LBeCidXjuGgx8ncX' --login_with_auth "Bearer foo"
iam-request-one-time-linking-code-v3 'ejmeZtzT0qj0ltsq' --login_with_auth "Bearer foo"
iam-validate-one-time-linking-code-v3 'fiZrthVvyX0OCKDJ' --login_with_auth "Bearer foo"
iam-request-token-by-one-time-link-code-response-v3 'E3RMUddwSSgxCu8z' 'ru1DhGAYOHR5BWa9' --login_with_auth "Bearer foo"
iam-get-country-location-v3 --login_with_auth "Bearer foo"
iam-logout --login_with_auth "Bearer foo"
iam-request-token-exchange-code-v3 'VzIkaQEl1iUProNB' --login_with_auth "Bearer foo"
iam-admin-retrieve-user-third-party-platform-token-v3 '6hI6IpGcToWgFvdR' 'hG9NwV3zDuqVlVTy' --login_with_auth "Bearer foo"
iam-revoke-user-v3 'pcYPK8IxrSZuxWl0' --login_with_auth "Bearer foo"
iam-authorize-v3 'Je4fJIyFAm3DQht4' 'code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-introspection-v3 'wnPS2urJqerobWMZ' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-jwksv3 --login_with_auth "Bearer foo"
iam-send-mfa-authentication-code 'GVL5KLTxahWlS6Xd' 'BaKSLCgOOPXM6XTU' 'h2dJ90yqHDNacl4F' --login_with_auth "Bearer foo"
iam-change2fa-method '9G6Dl5TFwBY6HKXA' 'blkT8VGgSH8MGZGw' --login_with_auth "Bearer foo"
iam-verify2fa-code 'iVj7eDTaka9ABfX1' 'IByPEOuPhGspRi3b' 'hPQvBBJI5Jxytpcu' 'false' --login_with_auth "Bearer foo"
iam-retrieve-user-third-party-platform-token-v3 'yLmcvrZZOdwe1x8R' 'jU6Bi8JXE52sUBBq' --login_with_auth "Bearer foo"
iam-auth-code-request-v3 '2SimQQoLbe5YOJvx' 'GRxUzrTwagH7BMT1' --login_with_auth "Bearer foo"
iam-platform-token-grant-v3 'IZKTdNFVBQ1crBXA' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-revocation-list-v3 --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-revocation-v3 'upATO8uXsqVpdiWo' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-grant-v3 'password' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-verify-token-v3 'SjDAM0Riw8wLYW3n' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-platform-authentication-v3 '4F3LD1EDwBXw5uBY' 'eQZOzATNSV9E9yyN' --login_with_auth "Bearer foo"
iam-platform-token-refresh-v3 'b7yaLXzAVYymOuhC' 'kZu4htrsf8eIFSov' --login_with_auth "Bearer foo"
iam-public-get-input-validations --login_with_auth "Bearer foo"
iam-public-get-input-validation-by-field 'TGXaMsq8ePN1oco2' --login_with_auth "Bearer foo"
iam-public-get-country-age-restriction-v3 'jx8Upe8SjMvpqM8p' --login_with_auth "Bearer foo"
iam-public-get-country-list-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-public-v3 --login_with_auth "Bearer foo"
iam-retrieve-active-oidc-clients-public-v3 'uggOEdG47gD5i2Ni' --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["6AnWn3NdEPhNHSH7", "eKDfRcngEpTnRUQr", "3RLOM1vEx4gqDY6j"]}' 'wyKRxhkLe5zohg9s' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv3 '9utRQt28b6o3K0CO' 'F74tz6aeXZOYwbwj' --login_with_auth "Bearer foo"
iam-public-get-async-status 'MNdxKWlBfnRyFS0E' --login_with_auth "Bearer foo"
iam-public-search-user-v3 --login_with_auth "Bearer foo"
iam-public-create-user-v3 '{"PasswordMD5Sum": "d7gTM5AVrtBQiDTc", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "HDPTUEDPN1Kb4UTP", "policyId": "WDXTSb55g8LSTs7N", "policyVersionId": "f95lGlPrf6obIdnI"}, {"isAccepted": true, "localizedPolicyVersionId": "PkMFtsnFfz8Ew0X8", "policyId": "fBuBSKLSQ4GvLtz5", "policyVersionId": "0D3rpBfBovqLwXBu"}, {"isAccepted": true, "localizedPolicyVersionId": "0EYeRj17xGhaBKoU", "policyId": "fiHjGmCyPsKCJTv1", "policyVersionId": "ic9gvagF2cSuztsJ"}], "authType": "5tj64gV7nmDk29mc", "code": "jSuz9vbNStqPtQmQ", "country": "N6eKAGiZFCftT0RW", "dateOfBirth": "ECdjWYrnulxcCKAr", "displayName": "u8pOaAVLDB4k3Jwk", "emailAddress": "daxR7GJpYmuYCPG1", "password": "81q9GA5DydC2D8UT", "reachMinimumAge": true}' --login_with_auth "Bearer foo"
iam-check-user-availability 'c4VPDUR9ayazqXRq' 'egIUicYXXzxsBFrU' --login_with_auth "Bearer foo"
iam-public-bulk-get-users '{"userIds": ["s9BYp6TgCejBd5o7", "iTST7R3KbbQGERMN", "pqWb51y5RUzvMfTk"]}' --login_with_auth "Bearer foo"
iam-public-send-registration-code '{"emailAddress": "Py0fGvTGgfLKsg0b", "languageTag": "1Bq78cE5O5pmPnbi"}' --login_with_auth "Bearer foo"
iam-public-verify-registration-code '{"code": "PJ9j4vxmbH3rVaau", "emailAddress": "ufxkPHElug48TgfN"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v3 '{"emailAddress": "u0rqXUOyToLPIREG", "languageTag": "IKlJt3EP9kKwkENQ"}' --login_with_auth "Bearer foo"
iam-get-admin-invitation-v3 '8VOHGwbADMfuOmh0' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v3 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "OH0SDHgYKqxJiFJd", "policyId": "rmj5vhzgsJwex7wq", "policyVersionId": "8ZPlXNaUNgdY2vfJ"}, {"isAccepted": true, "localizedPolicyVersionId": "WDOrFZKPNoN9AWtL", "policyId": "K9TFgi9j2XMh9Wpi", "policyVersionId": "fqjNjLOtNQts2yxf"}, {"isAccepted": false, "localizedPolicyVersionId": "MLZJ2jZfZbpTJezz", "policyId": "riCDWXT59SRu0YqU", "policyVersionId": "xKDc84OMIzvTScdb"}], "authType": "EMAILPASSWD", "country": "fxnUNcwjr7gSGhnf", "dateOfBirth": "uF4WZiQVICVpWd3U", "displayName": "M08gMXhdf3juXW4J", "password": "prIb3CJCAtvSG8Cf", "reachMinimumAge": false}' 'faKqdZFLbZEHxsDx' --login_with_auth "Bearer foo"
iam-update-user-v3 '{"avatarUrl": "eR6d7r1SQw80JfMp", "country": "PrSqYypRUnq5o4ET", "dateOfBirth": "eCUYG9ccTt7Wxw8O", "displayName": "Q13t3uTw6zQuoZcX", "languageTag": "QpoTOxe8y1jorNsg", "userName": "9ZKYCKoISyXtHzoW"}' --login_with_auth "Bearer foo"
iam-public-partial-update-user-v3 '{"avatarUrl": "GdYohxMp3uOQIybq", "country": "WfG9BJ6FVKlbYHtb", "dateOfBirth": "PtaxvagSlpGgVTF6", "displayName": "VeDAPOGBwweyFfXE", "languageTag": "OEAEtbag82KgBgyC", "userName": "d5vjkfz3eR4DtNp1"}' --login_with_auth "Bearer foo"
iam-public-send-verification-code-v3 '{"context": "29hzBw3xLUcCEt0D", "emailAddress": "zmkJq1sml5bYt76B", "languageTag": "Nsi4giR9434WpKKd"}' --login_with_auth "Bearer foo"
iam-public-user-verification-v3 '{"code": "zxoufCNlFoOcWQQy", "contactType": "4bjmQeEweoBHTdwA", "languageTag": "k7ZQnbqY1cQwVEtA", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v3 '{"code": "SzCEW9dUVhZjLftC", "country": "3sCS8CpLCqPD9CeD", "dateOfBirth": "EdCnnL6Kt1Bjj3b8", "displayName": "QM8Rr45ULqXQgvwD", "emailAddress": "3PsKDJiWxQBwaS7r", "password": "DBf2S54phbdyGDt4", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-verify-headless-account-v3 '{"emailAddress": "f9GWRlE9hqz6rjDN", "password": "o4rhjxUdMM83Wekq"}' --login_with_auth "Bearer foo"
iam-public-update-password-v3 '{"languageTag": "fWv04vvn9bk5qr8q", "newPassword": "s2mqtnGAqXUjNypF", "oldPassword": "6MMqWpdEJsPoaIbY"}' --login_with_auth "Bearer foo"
iam-public-create-justice-user 'z8cK5jlpJdre5ur6' --login_with_auth "Bearer foo"
iam-public-platform-link-v3 'yvWJDdvM7T7PX2va' 'mIRZHzsIYOCUoiCX' --login_with_auth "Bearer foo"
iam-public-platform-unlink-v3 '{"platformNamespace": "NjrdQL2jdx1eIba1"}' 'sB0HsJ06DzfbzRYt' --login_with_auth "Bearer foo"
iam-public-platform-unlink-all-v3 '4OVUyumBeIqdQGZC' --login_with_auth "Bearer foo"
iam-public-force-platform-link-v3 '5kM03HHijsQRj7N8' 'IAjmsonjj0ZR50BQ' --login_with_auth "Bearer foo"
iam-public-web-link-platform '1U6aFD3O2kXQSc58' --login_with_auth "Bearer foo"
iam-public-web-link-platform-establish 'zgZVl4gIF7v3qbZu' '9M3OxqVAT4H1lRZ9' --login_with_auth "Bearer foo"
iam-public-process-web-link-platform-v3 'Z1JBrHRzEOtIxzPq' 'b6n73m0jiaDH86d9' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"code": "rsKgzCsMulpB8HZU", "emailAddress": "tVVaJCiLgKOwrSfW", "newPassword": "hT5B4WedopzwSluB"}' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 'tRFPKThyGnbjmPDK' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 'FS6u9FHuv1M3qfch' --login_with_auth "Bearer foo"
iam-public-get-user-information-v3 '4SqIV6LQPHlaeYl4' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 'csFq65cU66yJaj4o' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 'voKWE4EW0sw8v5pe' --login_with_auth "Bearer foo"
iam-public-list-justice-platform-accounts-v3 'iuxoBJATauyD3XCX' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "VMiyEvMf9yilUEuj", "platformUserId": "k6oqYo1HQYTFzwdO"}' 'MdupwD4O3uNbcIDc' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["IyvZbOy1T4hfwkuV", "ykH4RpfmjIXFGZ5P", "KdbabJIkNnt9P1Tk"], "requestId": "m08luh4dpPRMDbUX"}' 'BWTbpAogG2wlZkLh' --login_with_auth "Bearer foo"
iam-public-get-publisher-user-v3 'uU5FI8NijFI0GKwJ' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 '3vfXlsAMy2Zp2UAG' 'xHnmSxvkG9UR5q9n' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 'eoW6JBcGp9Rx2Rfc' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-public-get-link-headless-account-to-my-account-conflict-v3 'RhXpmeeHdvphas9S' --login_with_auth "Bearer foo"
iam-link-headless-account-to-my-account-v3 '{"chosenNamespaces": ["7ivHEoLbUMM47f1U", "reUpxEkXIbE1ETzR", "JZKMavu4Ul2IaieE"], "oneTimeLinkCode": "bPSE7TGkeHsYsW9o"}' --login_with_auth "Bearer foo"
iam-public-send-verification-link-v3 '{"languageTag": "GBN1pYMBwbPZTlMl"}' --login_with_auth "Bearer foo"
iam-public-verify-user-by-link-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler 'UvFEiGprcNSQ9kEe' 'XBZ6FVrBzyhyhoS6' --login_with_auth "Bearer foo"
iam-login-sso-client 'a9oe0JaXFpff28uY' --login_with_auth "Bearer foo"
iam-logout-sso-client 'be4Cf2HEHvVevhIS' --login_with_auth "Bearer foo"
iam-request-target-token-response-v3 'jbtBJUK5fE3OufPS' --login_with_auth "Bearer foo"
iam-admin-get-devices-by-user-v4 --login_with_auth "Bearer foo"
iam-admin-get-banned-devices-v4 --login_with_auth "Bearer foo"
iam-admin-get-user-device-bans-v4 'X3PdOU2V9yw94oa8' --login_with_auth "Bearer foo"
iam-admin-ban-device-v4 '{"comment": "UJ34TIedV3HyoX4V", "deviceId": "nO2LpBU08wfnlHBX", "deviceType": "FIqFUmgUSMM5au8G", "enabled": true, "endDate": "T0mkVPI6zUtf3QaJ", "ext": {"PGrTNcXXTUIggoH8": {}, "9QNmI17UDb19R6H7": {}, "r1ta3m7jK5pxe82p": {}}, "reason": "gFiAS6piIzmc8rKr"}' --login_with_auth "Bearer foo"
iam-admin-get-device-ban-v4 'KEPGSAcong6eNERU' --login_with_auth "Bearer foo"
iam-admin-update-device-ban-v4 '{"enabled": false}' 'Oau6syme06c6SKLc' --login_with_auth "Bearer foo"
iam-admin-generate-report-v4 '2mEC3IXl5XCbkOfH' --login_with_auth "Bearer foo"
iam-admin-get-device-types-v4 --login_with_auth "Bearer foo"
iam-admin-get-device-bans-v4 'aGr5kdazlypvt6lS' --login_with_auth "Bearer foo"
iam-admin-decrypt-device-v4 'LfU7HByGXPMqxj4h' --login_with_auth "Bearer foo"
iam-admin-unban-device-v4 'BgVY3YAxZLKbcOdy' --login_with_auth "Bearer foo"
iam-admin-get-users-by-device-v4 'jqf6Q4oiwoJcaRME' --login_with_auth "Bearer foo"
iam-admin-create-test-users-v4 '{"count": 2}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["GNT2VHTKuIT5FwwH", "j0Ur5F2PWGTTD81x", "hNP4t6kYBUjyXAn3"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "bWQF6QcAiJpXIrgr", "country": "oixptZhckUTGkcBO", "dateOfBirth": "E4qMcH1Kyi8ZFvGc", "displayName": "V8DY0XOkDstxZcY1", "languageTag": "HgAnZV4IOglVLqb9", "userName": "lGAJUg21Lt7JwgwM"}' 'USuC3Bajy3BcEMCt' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "Qs2FcEcvVAyId6Cp", "emailAddress": "85HVDsZBQgOnXuXs"}' 'GThYZrmm0wrFMnPp' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 'WgrQD4hEk0OLjYsn' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 'ignE7KcMF7fuDbzR' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["RYMNXWUsp1tOibJY", "9aL9ie6vvMbiNURr", "lm88QlKyuoya4Jga"], "roleId": "kZyUV7t73VnSFbux"}' 'd4KYZ0jk0UZdhtnK' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["u9oTc8pVkiyGsj5J", "dXzRxfNEjUMTs8WI", "ObJBTsvsw76uISRX"], "roleId": "0bKVoWtoUW1P7ocu"}' 'BAldDSUS7Haa6unq' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["1yQOSRvyiLBRVtID", "i2piIQFVmzMidw70", "KSahpYZdKZRyR9AX"], "roleId": "7JjxvNZhM84DiZk6"}' 'ySrB9SVFctW7YS0O' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": false, "deletable": true, "isWildcard": true, "roleName": "XeEAtALFI3v8yha4"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 'pd5A7MYcpBD6lKNb' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 '8RxvN2u5J7baOeLH' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": false, "deletable": true, "isWildcard": true, "roleName": "woPYOHiIsxmsLBPB"}' 'JuNLnWRrtW870qD8' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 79, "resource": "ZcduZSe7W20UZcDa", "schedAction": 17, "schedCron": "AckUyBksYQfDm0RN", "schedRange": ["Fwiz70tRVLMlHi8i", "9gOVqajUWrgEsWDt", "aKzn8dZwnnGeZsZV"]}, {"action": 13, "resource": "h1gqPeS193TNNzot", "schedAction": 38, "schedCron": "Tpkx6GcfyOg6ZUrr", "schedRange": ["p9ubg9mndW2JKmQa", "fUs2bxYztOEyVbKI", "f1ZbzgUwd8DHoCQy"]}, {"action": 21, "resource": "zIhpgOoIOD74V21H", "schedAction": 99, "schedCron": "PYQ9jNQN1di1ldhO", "schedRange": ["h6HvjnYuV7NfC4A2", "ODiZhbfb8QqCyK1X", "H9D6vl5eFdFfgK46"]}]}' 'GjCWaP8huTmnq3FG' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 87, "resource": "cp5LrqbiKudv9z75", "schedAction": 91, "schedCron": "hmQHQhO9IKBXDFQf", "schedRange": ["XFD58sG6uDhFYlrz", "JBYSeMuJfQecutjS", "029BiJWOG1m7MKcl"]}, {"action": 35, "resource": "XTJTgCNNH7RtG5Xm", "schedAction": 29, "schedCron": "xJgaVfw5Vnyq8OzT", "schedRange": ["E89WDNoMcOmbfJrC", "JQIj1haAosKglqaC", "XE9ytpIO8btO3OwN"]}, {"action": 62, "resource": "1g0GGbT4Hf2PPKOl", "schedAction": 7, "schedCron": "GGvi9kg3rMIzNmhJ", "schedRange": ["TNQjKlwjfJ3TJ2xV", "pge70WsLfgbZieRv", "JI5sT9DH3DfLCv8q"]}]}' '4Thmq09bBgPAYxrB' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["E9jlnTgtgW33wDwD", "9RKvQX4yFQFdrRoM", "6FoqCYw7AlxO6qdF"]' 'pc71sSck3ggZWJlS' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'lCQMDji329PfVrvM' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["EPtpsSNcpK1QkB2S", "y8Ww79LVeVskqeUB", "7RSayqGFguhh3bva"], "namespace": "dRthdbVApebRA09r", "userId": "W8i8krFWJhe03coR"}' 'Fok5d3AyGrZO8Guo' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "XNSoVEBG7VbBPUWi", "userId": "pz9C05YabFX4FCK5"}' 'ucTFsAFzaO3yJpA3' --login_with_auth "Bearer foo"
iam-admin-invite-user-new-v4 '{"assignedNamespaces": ["KMxBlrRytER1qdTe", "lFAadM9y66Drf4SS", "GGt3MiBKohow3kKo"], "emailAddresses": ["aP1K4CDuH1mMIfOC", "DyVAHrHncR5dShqi", "BUI9esSsXegSEhrP"], "isAdmin": false, "namespace": "WsGA76yxi0QzZWfm", "roleId": "P2sx0KO5bEJaPnAF"}' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "jsodyJQVVBrShGbI", "country": "IuqK8C403HgoXCR6", "dateOfBirth": "XOMXwKdfqk8T4QHK", "displayName": "30EX0FclpDl5Hsur", "languageTag": "acO5MnjnxD1OXkxS", "userName": "hFVQTRekLfjmy8zo"}' --login_with_auth "Bearer foo"
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
iam-admin-enable-my-email-v4 'sRCRgVwbrQKmb01y' --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 'A7U7dGMjupZkZQY8' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "k33J34fiTxK63OHp", "policyId": "nUCGBVfpctNFUsUQ", "policyVersionId": "6ZXQcb2o1J5euLAb"}, {"isAccepted": true, "localizedPolicyVersionId": "XZV3ig8Jg5VByeI3", "policyId": "ycMcYYBixKJXCISQ", "policyVersionId": "dwec1m8BusV9tUh7"}, {"isAccepted": false, "localizedPolicyVersionId": "o6Xqjz2xUKLNWSmY", "policyId": "yVvyelIJ8QgaLMqi", "policyVersionId": "836ULa7cfZl4VuY6"}], "authType": "EMAILPASSWD", "country": "82FrR1GSogkewIzT", "dateOfBirth": "OqKkcjRh3l2gAJOT", "displayName": "Cbx7J3gNLIlTk3Bp", "emailAddress": "clrk4hIRn0znIKzA", "password": "EAHQpBOgHEP5l94s", "passwordMD5Sum": "7CbIJ7eHnVWOboMk", "username": "yB7FTexsOZ0b2p3b", "verified": false}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "rcwIcXMhGy83Xit6", "policyId": "boOLGCcg16DqwdQP", "policyVersionId": "Q9HkSSV8e1MgTTLS"}, {"isAccepted": false, "localizedPolicyVersionId": "F3eTC0vzZUDj9dzG", "policyId": "gGVxo9OHgfHumyfu", "policyVersionId": "BNisecYbcOpR45VD"}, {"isAccepted": false, "localizedPolicyVersionId": "Vpqn47GVghTH2wTo", "policyId": "Onq9U5lyW89Xwt3w", "policyVersionId": "mRTrDCjhnKvsHezW"}], "authType": "EMAILPASSWD", "code": "qgYPixtHk6lWq6tE", "country": "eUmU96FLEak0mJqj", "dateOfBirth": "RYldcTpdeCD9XPRi", "displayName": "4bAQL7VE2wL8Y4JF", "emailAddress": "VUdzA8bvXlDhG7Br", "password": "orbKIKuOXJPm5ztr", "passwordMD5Sum": "r09CDA8Ij5bGKSuo", "reachMinimumAge": true, "username": "VSO0js0hG9xmSnzd"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "zgUxAogcnGkXk17Q", "policyId": "PkJHRhmLKQuQVFSK", "policyVersionId": "iXl8G2uf6E8EajXL"}, {"isAccepted": true, "localizedPolicyVersionId": "XjO1NQUqWHBW78XR", "policyId": "EZCiTNAxq26gZrPq", "policyVersionId": "CsSDspvgM16sZ6rj"}, {"isAccepted": false, "localizedPolicyVersionId": "jCUDMOrbmoRvWnfm", "policyId": "GFy0eUoOBd90h9ED", "policyVersionId": "qSTOfoNewWjwMWDK"}], "authType": "EMAILPASSWD", "country": "ye7fCwi7Il2wIFlH", "dateOfBirth": "m9N6owMHMtJy1Oqn", "displayName": "59tEGm9NYeUT5P0n", "password": "x8TqSZdZ5C8mFI9T", "reachMinimumAge": false, "username": "vYiCBuzUUwyI6Vtd"}' '4v9k4fv3kMiuQ3Dh' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "sKLxjt5srPFxBgpF", "country": "tDBmTLH9kP9U53z6", "dateOfBirth": "joBAhAlJGI2YYb6a", "displayName": "jBjgq6eY4PBNHKPx", "languageTag": "62tHxDb06ZFy3ugl", "userName": "Sp2UxvF2uLXWilRD"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "7HD6LCgdFxRGj00R", "emailAddress": "T6LvcnGMJbJIYLss"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "Mvy9gkfTMRrXVRcA", "country": "VRDX6gmDfNfPGYYS", "dateOfBirth": "TunMgt3C8hEguCql", "displayName": "MHiQN3HWJw9zIWsi", "emailAddress": "P2JQ24meDrwEuTyM", "password": "2qohglzO8AEl6A9s", "reachMinimumAge": false, "username": "ceS9UX48dKPCFUIe", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"emailAddress": "IjS4i0N9ytb3c8pV", "password": "Z8GlU8962e6gtn5p", "username": "UARJM1T8QwMNOAzX"}' --login_with_auth "Bearer foo"
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
iam-public-enable-my-email-v4 'myHEV4g9P6a280S5' --login_with_auth "Bearer foo"
iam-public-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-public-make-factor-my-default-v4 'RNB5dVCsB7xL4axS' --login_with_auth "Bearer foo"
iam-public-get-user-public-info-by-user-id-v4 'PgPCiwLxCFLDixZw' --login_with_auth "Bearer foo"
iam-public-invite-user-v4 '{"additionalData": "Vtt3RVTl0tR00oQg", "emailAddress": "cHdGGK3x76U1EIck", "namespace": "lttmrpgF5szl0sMY", "namespaceDisplayName": "8es36r1FgR70eNLH"}' --login_with_auth "Bearer foo"
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
echo "1..363"

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
    '[{"field": "kVrEFd8xArWJuCAI", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["HgpFNw9K9pmAIc6V", "SfE9nbE2PMv12ZSR", "JkujxbCu1HFaj6Vx"], "preferRegex": true, "regex": "sEzLPnnGsnfmBerp"}, "blockedWord": ["84qjwzWpCF1vyamj", "sEzwtLPxK1os4qR8", "LaQzEb39sZTdFfC8"], "description": [{"language": "x5aHLsXHlm1RJTTy", "message": ["9JrNz1K5M1qgFddY", "vifGHawNx6yhniEH", "LbEQKc0aUvrKXDIj"]}, {"language": "YC4df9qswSlpCI8D", "message": ["hjlxUyrs3OSesE5p", "0DwUj2HKUvPYUcQB", "xMSdOOsn2Nd8Jpa1"]}, {"language": "9GJDK46Eehx7xasq", "message": ["MY9aulsL6NOV5agp", "S6A5mkufBpWVxIK9", "D2bTcgaKoccaSwWc"]}], "isCustomRegex": false, "letterCase": "uwWrCQt86Jrg8tLA", "maxLength": 72, "maxRepeatingAlphaNum": 15, "maxRepeatingSpecialCharacter": 100, "minCharType": 17, "minLength": 32, "regex": "eSKUf3zKbyQk2vQT", "specialCharacterLocation": "YX1xsth28NZZgsXy", "specialCharacters": ["cuQNGIDeHlf6IcX1", "K9JrK6Or2xx7rLwr", "PoWiywnxuDLLuIaS"]}}, {"field": "xoloIH1gBCWVFrvl", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["osKhDlLfTKxpVOXv", "GSrdkqddI3ezqu6F", "B0sL2xt6fX9j7rhZ"], "preferRegex": true, "regex": "qVUaWMJBjrV0p9A7"}, "blockedWord": ["tcHrV0MbJGr4drgk", "DuWS05m0pGzazM2B", "UXnzUEWTiKMJAf6A"], "description": [{"language": "gbiEDMfCckWogE5g", "message": ["cfF8AMGZ2FBS93Mg", "6TKwdRMraDLrwh3d", "0ykRGkgqUNIbJMJ9"]}, {"language": "ABbKVWO2YEDiqkwK", "message": ["bpdk7wlDngNiPPjp", "SAlZwFGpea5ObBB4", "9Km4ClIQmkIdLCvN"]}, {"language": "hZ6P8aqZ2yfrC1V7", "message": ["ZpJZPHCMqvcYmeDL", "YEzs2SQUdKr6vgqk", "jycqclNlBORlC8Zk"]}], "isCustomRegex": false, "letterCase": "pFd6b5Jc5TETHcup", "maxLength": 64, "maxRepeatingAlphaNum": 67, "maxRepeatingSpecialCharacter": 66, "minCharType": 13, "minLength": 65, "regex": "VCMTFJ6svTyo9RHg", "specialCharacterLocation": "et5hzB52BDFopxUw", "specialCharacters": ["kMuSqQnKzDgDAtqE", "3kuybwTQFYEJjIYw", "qfSRy8GgVk77fd1G"]}}, {"field": "S5YkyhAiAItnWUmD", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["H6opK5DSO8JyX4IE", "1z3rDwZ1HKsOpyq8", "agQuz86nc6jLF9DI"], "preferRegex": true, "regex": "ncJJKpqmgvUTr8XA"}, "blockedWord": ["tpOqUQxzqJZiWi3K", "QffT5Tn61A1xW6ok", "Iqmd87ir9op4YfGT"], "description": [{"language": "no5oHzqY3DgykA8z", "message": ["BJX0rkOHUkY5aSlq", "hYoSXbn6l5xAzc1n", "c3eFm950dtVAo7w4"]}, {"language": "e3v5mh6Rum5pbgEt", "message": ["39uJQpgEtchTe3nt", "7t9ztprSfW9OutAD", "rNGBWSJ1zQKxVmRT"]}, {"language": "awjiZPMoZZcyGEHx", "message": ["AKDQher3usApPdJP", "n9eIdhIBvTTupABJ", "4RwH3EdKmYtbqQHN"]}], "isCustomRegex": false, "letterCase": "c7OYTylFRAJKySnC", "maxLength": 93, "maxRepeatingAlphaNum": 5, "maxRepeatingSpecialCharacter": 10, "minCharType": 76, "minLength": 84, "regex": "b85nmpdN26BY5YI0", "specialCharacterLocation": "jeO2zMDSy4kyqyKg", "specialCharacters": ["rtEPdXXlt8geCdiX", "u3iNvn7vLZ7h6alh", "JNGZF07lsPP5OfHb"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    'XzWnVO2U4uyzZo1r' \
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
    '{"ageRestriction": 19, "enable": true}' \
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
    '{"ageRestriction": 45}' \
    'ZrLQjk4VoYfIksth' \
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
    '{"ban": "24cZBpdDFfvzeU5i", "comment": "qhx6zv7EURTNIoG1", "endDate": "DBdoKH6sREmmfwUZ", "reason": "LZZS7snx0Q2Gd8m7", "skipNotif": false, "userIds": ["3wiNloJfey3HXL6S", "jljNPTXA3qbg55Sy", "ienCODZ0mnOpPTVx"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "EgBFzG8tlkxWKCU1", "userId": "XN4gl7yHvEqpJSrD"}, {"banId": "XVwCkhOQ161TFjRO", "userId": "YJm75VIuCOCkt2W1"}, {"banId": "DfI8QtgODk9K6DcM", "userId": "nyCPn1FylWdaNV1V"}]}' \
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
    '{"audiences": ["aZTkbbuWiiA4UTDg", "S2SVEo5M80LLbku9", "GYH4ijqOVM50tCqk"], "baseUri": "ZfsSxAbDJ7sHCLup", "clientId": "8pmEosOXglQwwdeL", "clientName": "VpmXqRwVjc3W2ANm", "clientPermissions": [{"action": 62, "resource": "dRPRfd6mLZ0GTJwE", "schedAction": 19, "schedCron": "uLsKZoqnpKwhpZVd", "schedRange": ["w5UMa8ymxtEFLwEL", "CY2vIddlxnA1Vyni", "oJcAPwVHUGcs1ACM"]}, {"action": 44, "resource": "SmWa8TGko16XTqHc", "schedAction": 37, "schedCron": "cM7ixq8Tjnxp5Cl8", "schedRange": ["ggaEmCcuK2hHviBE", "WpbusO6EyVqstpgZ", "pbz77y88rUFum2Zc"]}, {"action": 53, "resource": "1R5OexAPzCG6ZKQC", "schedAction": 23, "schedCron": "TwEtnHxP5pVtN4jN", "schedRange": ["VIdruEA39uCJzsE8", "WObt6t0w8LOBxE15", "JYj4IqWK09l4wkrz"]}], "clientPlatform": "ahXR1sDEDVKDINE3", "deletable": true, "description": "jCiVR1dQ8kuhb4pU", "namespace": "wnGptHUplxzaDa9P", "oauthAccessTokenExpiration": 60, "oauthAccessTokenExpirationTimeUnit": "p2oac8QTNEuBbeuQ", "oauthClientType": "qm9wM7mgTtUdPVcQ", "oauthRefreshTokenExpiration": 18, "oauthRefreshTokenExpirationTimeUnit": "n6DKW9A6AmnQTNFi", "parentNamespace": "dImWONTvCPMGLdbY", "redirectUri": "EknHPKrZ7TiNBE0H", "scopes": ["RsE0GHDOFjrfqJcy", "xT2a7fCFAUzLELiM", "573TdtWjfVciuLnL"], "secret": "sBKGsALPuCOyphUU", "twoFactorEnabled": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    'AhbFMZfxaznlDQbz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'TiFrQB1yUonirH4U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["Rx3NkKQBYrlUaMiF", "EWUT8cAFO5zEw8GE", "NEJYPKxxOw7xNQ98"], "baseUri": "IEbc9YITN98j4P2A", "clientName": "GeidXRRnIAJfKVjO", "clientPermissions": [{"action": 27, "resource": "wgKvfXXs8pDqm31A", "schedAction": 41, "schedCron": "SRkuw6q8FgqG46Rs", "schedRange": ["FK7eYlSU3vYcHZZj", "FegVnZOn0tk4IATS", "IefcqNEn4IZ0Dv6b"]}, {"action": 63, "resource": "WtaMVvLbG04KKnh3", "schedAction": 19, "schedCron": "FAGbMtEybfcAl0mn", "schedRange": ["sAkRT2k0AzdgIunR", "kTxsGdrpNELM8Lfk", "ut0wnT24wh59RGSb"]}, {"action": 55, "resource": "6bXxp0gYZyF9fJBJ", "schedAction": 21, "schedCron": "boQqCCyJfThvCJie", "schedRange": ["qRSGN8Mm74HlSZzp", "4aEW4GkHG5OIVuGv", "47XJpkMiopQrVL3Z"]}], "clientPlatform": "ZTVxqa9XM2gY14iW", "deletable": false, "description": "NZdFk75lkjQNHrja", "namespace": "boGomguUqeuZh5qt", "oauthAccessTokenExpiration": 37, "oauthAccessTokenExpirationTimeUnit": "z7sVnMxge2inL8fB", "oauthRefreshTokenExpiration": 64, "oauthRefreshTokenExpirationTimeUnit": "shSe5YmZXKEQLkM6", "redirectUri": "o3eGSP4Htmr90TqG", "scopes": ["f0OyqJ9ibJMmRgox", "Nwp1lGkYoq8HP1TM", "0tefVQPWX1NPO5Wn"], "twoFactorEnabled": true}' \
    'CUJhDsDefAS09VyQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 57, "resource": "X0IttsRezyY9GB5s"}, {"action": 10, "resource": "4ZuoGZSxTzm8oMSP"}, {"action": 70, "resource": "cWdVH9bww15zZsaY"}]}' \
    'rJAe5Kd5QB96ndlO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 93, "resource": "iPGC9RhzMC7V8BEp"}, {"action": 16, "resource": "gxUmnfdOAmu1dX1N"}, {"action": 35, "resource": "brPngi87K58pQswq"}]}' \
    'KLutINusOsa92F6i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '45' \
    't9p2to7Yja1soDE1' \
    'K0SvGrMYwPmPXC2L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteClientPermissionV3' test.out

#- 128 AdminGetCountryListV3
$PYTHON -m $MODULE 'iam-admin-get-country-list-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'AdminGetCountryListV3' test.out

#- 129 AdminGetCountryBlacklistV3
$PYTHON -m $MODULE 'iam-admin-get-country-blacklist-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'AdminGetCountryBlacklistV3' test.out

#- 130 AdminAddCountryBlacklistV3
$PYTHON -m $MODULE 'iam-admin-add-country-blacklist-v3' \
    '{"blacklist": ["fL2m5rP2A20t6foP", "PH94SUinY5diUlqg", "vY7dPPyahppgxJhk"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'AdminAddCountryBlacklistV3' test.out

#- 131 RetrieveAllThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-all-third-party-login-platform-credential-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'RetrieveAllThirdPartyLoginPlatformCredentialV3' test.out

#- 132 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3' test.out

#- 133 RetrieveAllSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-all-sso-login-platform-credential-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 134 RetrieveThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-third-party-login-platform-credential-v3' \
    '4EdTZ000rS92594H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 135 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "LvWFsXHtMP0k9L5d", "AWSCognitoRegion": "REQbCqfh0gpABFBE", "AWSCognitoUserPool": "R6WNcDOsRzBkf9A6", "AllowedClients": ["HjCnFRdSihcvszzQ", "LZBktk0siMup01ky", "aFwwD7wecuQb4GNQ"], "AppId": "HVZMKGBnzh4suaGI", "AuthorizationEndpoint": "zttTncVBf5g3oeuH", "ClientId": "iNyLkfPQPmjUkvSs", "Environment": "5YmIejozmG5HlrIf", "FederationMetadataURL": "MAvvpkAHRJHZyfrX", "GenericOauthFlow": false, "IsActive": false, "Issuer": "32UznXNd6ve29lqq", "JWKSEndpoint": "tcLJW9eTJvKNDFrx", "KeyID": "6LabyDnqXjXKPIcx", "NetflixCertificates": {"encryptedPrivateKey": "h0x7T6RQGnnW4ugG", "encryptedPrivateKeyName": "X6mKBbgTD9xL07Zz", "publicCertificate": "zIs3Jke34ZAUuLP8", "publicCertificateName": "97ooMLnemwKAvgDX", "rootCertificate": "NrFEE4Jf4hQpsLOc", "rootCertificateName": "LtZw0efmEVcW7mxb"}, "OrganizationId": "S5UOoICxQMit8555", "PlatformName": "Niy4NNFpRE5pS85y", "RedirectUri": "TIRWvLRy58UKWPv3", "RegisteredDomains": [{"affectedClientIDs": ["F7S0wCVlYQi9cfMC", "eNnu6OIG1PPLRDEX", "LXZWXvqNCHvNpeMj"], "domain": "Mzguq6HFIqaqwH9J", "namespaces": ["6JLb5f3SBMyJUdwE", "BRrHAWUFqTooGGnP", "EgY0t7QQWl42byOw"], "roleId": "XgKyPhXmcysae8Hp"}, {"affectedClientIDs": ["WH4xiz3fWthJSu2p", "UIIuPLFAtcWhjAP5", "7QbWvSSp71zEPPfm"], "domain": "AQiqRRC2caquMRtQ", "namespaces": ["OILcaDqUITBHQR5I", "SNoFR3GUxdMuvmL0", "UBfwzaaeP3Wd0Wrb"], "roleId": "8s3GW0CY0vAfbq8x"}, {"affectedClientIDs": ["oCurq4lpHXrbVBh6", "0NUA2aKQwnXrmi6y", "a8u4sQPvaf1AcweR"], "domain": "7tJW3MLMob1hUnIz", "namespaces": ["IpUM8KK1kGFN0NUN", "GKxdlAUDFQuGPzAu", "T7M6OBrNwioKnXPV"], "roleId": "ZaDcXsV1TnsZioDi"}], "Secret": "BgprzahPB0FKMa0Y", "TeamID": "eyNBQWUHDBnBeePk", "TokenAuthenticationType": "qg6Zt1Lr5BlO8K6L", "TokenClaimsMapping": {"H4dSaa8XYHug51ZT": "ogG0N7Hvnuq1kJ1k", "pHcQtnIc9z70LFQM": "I0oZuEjY0rNBbbB9", "txAvtRQvqJacXR2R": "f4noXDFaEUkPUBnB"}, "TokenEndpoint": "0ZEJH3ebM71Tg922", "UserInfoEndpoint": "xiBgHSka0Pz7I1Wk", "UserInfoHTTPMethod": "Ia0oZ1nXpW1l70pc", "scopes": ["ZgIn4lPghHyMEHBz", "ArbyW10NkJFQxuMH", "nfOlX6HYVEiaereF"]}' \
    'CPJU2wEzUYUTmZ8J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 136 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    'SMeNmRocp400RZe8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 137 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "Bzx9aGEI22BTCZs9", "AWSCognitoRegion": "7TJI8GPrM24F3cel", "AWSCognitoUserPool": "FgM62HQtgzQhO3nR", "AllowedClients": ["8j8DlP6OGbn8vmfM", "YGLt1AjKhh3JMX7x", "Srz1EH6X2SM3xzsN"], "AppId": "rJzWBcdFlo7oAsOl", "AuthorizationEndpoint": "fLB1J19b5rTfiL2P", "ClientId": "3r1a8KIJH33aKkPu", "Environment": "WD59MgTy1HA58Jt5", "FederationMetadataURL": "NaROjSKFEuZo2ElX", "GenericOauthFlow": true, "IsActive": true, "Issuer": "4ezBRSiOyReviDax", "JWKSEndpoint": "lPdhwmcH03yoMxzR", "KeyID": "R6xd9rTh3ureaIbx", "NetflixCertificates": {"encryptedPrivateKey": "M3Wev9pZQjWAN0tn", "encryptedPrivateKeyName": "y16ZHZtuSJGQCrM7", "publicCertificate": "JEMRPkdTcAzkIlnd", "publicCertificateName": "N5xeayr3vUKMuIiz", "rootCertificate": "2MiAAKcvAXnxnH0Q", "rootCertificateName": "IhoJRY807VmBT4wZ"}, "OrganizationId": "XQZZrSsuYiIPei0p", "PlatformName": "XglJYnKkoCAZuolA", "RedirectUri": "WnxkImVbDP0QX31g", "RegisteredDomains": [{"affectedClientIDs": ["I7VmnGIRMvXe6Bip", "hIFe2bzr6qQw6fSE", "SkM19OPMBb12gpmS"], "domain": "hlmIt2nfhUaZGqjs", "namespaces": ["lu59GT2E6AacmZRX", "Zm626POXWVj3KP1m", "X0iYHXBU3Uk2tQm3"], "roleId": "07IORTyHnLYDAAg1"}, {"affectedClientIDs": ["YA4kZURmoGgxVRMP", "f8g1rbhfIMStMnSq", "rKWYOuITlYS2RYaD"], "domain": "9WNKGhbLhjz1v0RB", "namespaces": ["IO2rkJGmPaK6HEVI", "QJd3930TGewjRyfo", "4nWVZZbKFsKOmgEh"], "roleId": "jH2wFzCpxxJLfAg5"}, {"affectedClientIDs": ["cFT0gHAkltcR3eHF", "biAluHv7Hssd05pH", "BJX5ln8PZbYVD8Ri"], "domain": "aTsdD4d3kSbTkHPM", "namespaces": ["UvOAUXkw36cr2WJQ", "qS7Tq4YIyZAFQ6lZ", "fa2jdNvpWf32JS1a"], "roleId": "v9VNpVLT0LvqcfSd"}], "Secret": "O1nAjY5FvADb3GUQ", "TeamID": "gci632w6LUrHuKBo", "TokenAuthenticationType": "NTpPQXDNHto74Gcm", "TokenClaimsMapping": {"Vf0fbCU9QdPuWeME": "eL0EJG67g4W1eAmD", "xP23qstMuikKc6VN": "U8570siWm3V9sirE", "0JOQxWeHypqCWMDP": "RI2cCk8zHR8VyCC0"}, "TokenEndpoint": "EQwE0cXokXbwKDtV", "UserInfoEndpoint": "mrYQu7hZvHfiT9s9", "UserInfoHTTPMethod": "pK8HuUY1QQHQ0NCE", "scopes": ["ddJtx6GV01vD7lNL", "xlpvqaB9P9GaukfC", "EIeSBLhTfzigzHcR"]}' \
    'uJgYaj4I8Dzyh1N0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 138 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["JEKNoMtHvjM7X1fj", "zknv2HZMIL2P2bh1", "4LroFTnAuujPeP9N"], "assignedNamespaces": ["0vdVB5a2XkS3XQfM", "uzZh4AhZRe2hgU56", "xtyJtnbTDXu7Fble"], "domain": "SP5PcdOuq0m0rvak", "roleId": "R8rcwojLRjhcaJ56"}' \
    'nGlYZ2tod2BGBXjN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 139 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "yRCtPOr1FU3QZy3g"}' \
    'dDms3kb1htW0UGJp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 140 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    'wQZlXuzu3m9u67Jj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'RetrieveSSOLoginPlatformCredential' test.out

#- 141 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "CDwg186hGWKfO9Mn", "apiKey": "oT3t99HmcxzjDhTr", "appId": "cBKtU956hOg8oukD", "federationMetadataUrl": "VdweG0sFHxTHa2k6", "isActive": false, "redirectUri": "zCqUgq1gLbcIMevT", "secret": "mC631p7q794bu49l", "ssoUrl": "INFTtERAXT2h3hcQ"}' \
    '2wV3ZbBTnNQnVUhA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'AddSSOLoginPlatformCredential' test.out

#- 142 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    '5WnzVZdj8tsyzC4Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 143 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "aLXp3o4TDraEEaDN", "apiKey": "JbVd20FVHevCjthJ", "appId": "Ub7jKuMrFaoLulzp", "federationMetadataUrl": "3sZxImVK5yh2LcM8", "isActive": false, "redirectUri": "aMW0ByjsRUrAHNRk", "secret": "IcC4wNFzsbrtYvLh", "ssoUrl": "56AWXoMiowdWSs9D"}' \
    'Q0VU1HED9CGo9aUX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'UpdateSSOPlatformCredential' test.out

#- 144 AdminListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["j3rh0UyqxVWlIMY5", "tTJw4KV104MtMhKH", "mSjqPuQZX5KjdNrE"]}' \
    'wfWo2MwulLg4bsO4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 145 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'YHEYLjTSNDf3zazm' \
    '6p5Y1tkG9WwU4Ty6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'AdminGetUserByPlatformUserIDV3' test.out

#- 146 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'Ch5QYyFjuBquE7xs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'GetAdminUsersByRoleIdV3' test.out

#- 147 AdminGetUserByEmailAddressV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-email-address-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'AdminGetUserByEmailAddressV3' test.out

#- 148 AdminGetBulkUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-bulk-user-ban-v3' \
    '{"bulkUserId": ["sm4hxczskbSUbOZ9", "WNl3apJmNAbl1g5Z", "mTTGYRbP4QVey9pE"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'AdminGetBulkUserBanV3' test.out

#- 149 AdminListUserIDByUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-user-i-ds-v3' \
    '{"userIds": ["z1TV5cUtPBsw01i5", "Mf7WvbNSeeDNfUES", "LlwHv3JgteOLyKp8"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'AdminListUserIDByUserIDsV3' test.out

#- 150 AdminBulkGetUsersPlatform
$PYTHON -m $MODULE 'iam-admin-bulk-get-users-platform' \
    '{"userIds": ["a1VqxXnRhDd9TGkO", "6aIYqftw1SrM2nhS", "EanfUYrMU6A43UKG"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AdminBulkGetUsersPlatform' test.out

#- 151 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["pvC1cr5T1PSXhduT", "WchzXDv3TAtBjP4H", "SuiYCbG0UyYUJmNL"], "isAdmin": true, "namespace": "p6AbdtU0CDrlQpKB", "roles": ["8qoel2QK3aSOYdmM", "Dikc3Fjm9HoQDemt", "iQvURYZCeF30RT9r"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'AdminInviteUserV3' test.out

#- 152 AdminQueryThirdPlatformLinkHistoryV3
$PYTHON -m $MODULE 'iam-admin-query-third-platform-link-history-v3' \
    'BgM8o7lxXq7TkdM7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 153 AdminListUsersV3
$PYTHON -m $MODULE 'iam-admin-list-users-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AdminListUsersV3' test.out

#- 154 AdminSearchUserV3
$PYTHON -m $MODULE 'iam-admin-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'AdminSearchUserV3' test.out

#- 155 AdminGetBulkUserByEmailAddressV3
$PYTHON -m $MODULE 'iam-admin-get-bulk-user-by-email-address-v3' \
    '{"listEmailAddressRequest": ["FVDCBcvVegrZddP8", "lLQo6tHj4z4cAM4L", "MJfWNZIxAgBpeubp"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminGetBulkUserByEmailAddressV3' test.out

#- 156 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'rKX68jTyRd3LrR1x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'AdminGetUserByUserIdV3' test.out

#- 157 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "6U1v6zSLjm9zmzUW", "country": "0vPj90jmLTt5YQGa", "dateOfBirth": "wcomPoiYoQ1f1AYq", "displayName": "306Pysv4VPaZWolX", "languageTag": "ypwucUqqqff2iWi4", "userName": "yP3uqNcig6YcDA8Z"}' \
    '3g62oGYwkrjLI4EH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'AdminUpdateUserV3' test.out

#- 158 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'JEEWgki9fbdvUMDZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserBanV3' test.out

#- 159 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "eO4U55wdCpVpnENi", "comment": "Tc9NESV22eRBElD4", "endDate": "K2Cy1tJcPAEkCeV2", "reason": "9QsQk100eu5UcxuX", "skipNotif": true}' \
    'izEpw1zN0mOYgGhH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminBanUserV3' test.out

#- 160 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": false, "skipNotif": true}' \
    'bopbdJeVCiKs2vLy' \
    'H9kcSBdk7MwQzn28' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserBanV3' test.out

#- 161 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "Le5neohqhCzroAzW", "emailAddress": "QDve0Z2G2N09VIbb", "languageTag": "sz24fQKDZX6plErw"}' \
    '0Gb0ceCbphW4YMhJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminSendVerificationCodeV3' test.out

#- 162 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "0S50bez9ZLHW882r", "ContactType": "iiPfRQ3rJ0f5lwXv", "LanguageTag": "RNDBnmL1KQn77hiP", "validateOnly": false}' \
    'ugVWXz8dv7BiEUqn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminVerifyAccountV3' test.out

#- 163 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'zxs2deMF8UAJIHEZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'GetUserVerificationCode' test.out

#- 164 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'v5zyUUyNJkvA5xF3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserDeletionStatusV3' test.out

#- 165 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"deletionDate": 52, "enabled": false}' \
    'HtZSd3QzXhkrN4pW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateUserDeletionStatusV3' test.out

#- 166 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "ryt4XTNwpp0ni1Yf", "country": "IgLZ4YIzElrLZOBL", "dateOfBirth": "HCKmLBaIwlokbAFW", "displayName": "8RgBUwBL28BqM8Uz", "emailAddress": "vKqeoTiNKGRUMrim", "password": "GAz6OhmHOpCdr3Wz", "validateOnly": true}' \
    'v11FuU8iXCRz8Kgq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminUpgradeHeadlessAccountV3' test.out

#- 167 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'gwijYxpGhsFArq6l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserInformationV3' test.out

#- 168 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'olbj7QKvtVRCPMjr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserLoginHistoriesV3' test.out

#- 169 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "5M3vw1GqUjjFp6R8", "newPassword": "mYZwKftVqSECsypS", "oldPassword": "42NmYQ8HlHbHnfs4"}' \
    'tLVOYQCWMktmiKd9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminResetPasswordV3' test.out

#- 170 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 45, "Resource": "tgE2bTXJxCCFqPND", "SchedAction": 33, "SchedCron": "leYNHXeOpaRDwYLg", "SchedRange": ["e851PbK2MFKvw5TW", "jAh4gy41LLzQ2IjY", "5PeNr4JmYxH2qs28"]}, {"Action": 16, "Resource": "RVmbfzwUmsy0stUm", "SchedAction": 74, "SchedCron": "9f2oLWDPSZexfKVx", "SchedRange": ["qdxmh5QWxuQuI7gd", "DTDb3WdnOpzTrRzC", "CafADJfWBspT3MLw"]}, {"Action": 72, "Resource": "bs6UdccuM2ykRj3W", "SchedAction": 27, "SchedCron": "fgff7Et4uY8nlBwG", "SchedRange": ["NHgfgwZwVMvshGms", "g6ZJYnkHDnHTlRug", "M7a2UZgeesipbP02"]}]}' \
    '7okM5E8tAajVSvLR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminUpdateUserPermissionV3' test.out

#- 171 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 19, "Resource": "J7LzpFvOSF6xKA6y", "SchedAction": 35, "SchedCron": "ZBkatNLc42eq0O6V", "SchedRange": ["sXtOlQwj5xPvm7c5", "nPR0Y1sffUaZ64dF", "piv8o9Gw4QtKgyIe"]}, {"Action": 49, "Resource": "30MdBZezfwc3H0qS", "SchedAction": 3, "SchedCron": "tyjTxnlmSyjEaFH2", "SchedRange": ["DRN6HIEqIFEcS0yn", "IMOYWpUYUQMooiKT", "57rmbjEnimeR7EFB"]}, {"Action": 52, "Resource": "HtL7IWE3MFqvfDG5", "SchedAction": 18, "SchedCron": "W1iSYQbcebBd5wb5", "SchedRange": ["H3qppoCiHMD4iBK2", "O7qYtOHV5hnpjc5C", "NLnnEvo25aEtdjls"]}]}' \
    '5oadseJg7y4Q9CU3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminAddUserPermissionsV3' test.out

#- 172 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 12, "Resource": "yMvqF7TJ9uB0zypj"}, {"Action": 72, "Resource": "iKR29LKIhNU43K8b"}, {"Action": 16, "Resource": "uSMHhf5R2MkxQTAY"}]' \
    'GfE6hXZ7XLoWCGf0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminDeleteUserPermissionBulkV3' test.out

#- 173 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '7' \
    'CLVc2qHZuuedbBOd' \
    '19DqZJRYV1oqNLmP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserPermissionV3' test.out

#- 174 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'AUIMwa2wYq6DsUq3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminGetUserPlatformAccountsV3' test.out

#- 175 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    '8bYvaWLoKzHnngdf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminGetListJusticePlatformAccounts' test.out

#- 176 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    'FnOfY9stXH6LYXXM' \
    'ndxBPKmHVB7cNzHh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminGetUserMapping' test.out

#- 177 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    'vxc4xAPZ86WNnQOh' \
    'usPn4466u8agb5HP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminCreateJusticeUser' test.out

#- 178 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "sBU0Eo6QJ9vBRJ4U", "platformUserId": "P09fabC01Thm9f4A"}' \
    'WpyiKVT3OvEujx5y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminLinkPlatformAccount' test.out

#- 179 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "jtQSCJaOHzpb623E"}' \
    'ciYoYOPVg6DLEZ6D' \
    'xpwBm2N8PdQ5mQaG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminPlatformUnlinkV3' test.out

#- 180 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'XEbnmWR0H3EkrHqa' \
    'LNdfKszYZzOg113h' \
    '6fIaHSx5bClxUOBm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AdminPlatformLinkV3' test.out

#- 181 AdminGetThirdPartyPlatformTokenLinkStatusV3
$PYTHON -m $MODULE 'iam-admin-get-third-party-platform-token-link-status-v3' \
    'Mwv5pmiIVnhlLoMe' \
    'msp7o3F2LQw7Y2Vd' \
    'SxgXez7VvS0C9JLV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 182 AdminGetUserSinglePlatformAccount
$PYTHON -m $MODULE 'iam-admin-get-user-single-platform-account' \
    'QQPa7PPx4Zi6WaC8' \
    'wk7HMbJhNwZgf5nl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserSinglePlatformAccount' test.out

#- 183 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["MDORYuXnPNJgayPF", "cyUnKXA3mcyMmX6W", "F8jtNAVOYqSH533Y"]' \
    'lJ93CCGBXv4fP4VP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminDeleteUserRolesV3' test.out

#- 184 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "zhcH4UJrrCKvrOAi", "roleId": "7lMgkVWJYzSCIDxW"}, {"namespace": "UxgOzeRNHIqK5PT4", "roleId": "04mFw4HJv5T2kIQO"}, {"namespace": "ecfLsYKTmUnKlrOs", "roleId": "JmEwjGYN8VNPXNsm"}]' \
    'wTV8imJHNI0l6jJV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminSaveUserRoleV3' test.out

#- 185 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    'zF1Oi2sQuWUBBHZo' \
    'nSmzF831vlCiZAZH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminAddUserRoleV3' test.out

#- 186 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'CWMXxVh8HTrKqVwn' \
    'pPn8N5xMRgU7cPqN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteUserRoleV3' test.out

#- 187 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": true, "reason": "1akNKz9IltQUku3n"}' \
    '32atB0QPQPEp5Utw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateUserStatusV3' test.out

#- 188 AdminTrustlyUpdateUserIdentity
$PYTHON -m $MODULE 'iam-admin-trustly-update-user-identity' \
    '{"emailAddress": "UWGt6tooHP5kAww0", "password": "1zalTddhAQ1pwqny"}' \
    'bvUIfuulmeegRwPP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminTrustlyUpdateUserIdentity' test.out

#- 189 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'bn7lttd21cS6IVE4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 190 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "fzwG3BHaRcZ8NK4g"}' \
    'kLmvEOaRcqTgF0xt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminUpdateClientSecretV3' test.out

#- 191 AdminGetRolesV3
$PYTHON -m $MODULE 'iam-admin-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRolesV3' test.out

#- 192 AdminCreateRoleV3
$PYTHON -m $MODULE 'iam-admin-create-role-v3' \
    '{"adminRole": true, "deletable": false, "isWildcard": true, "managers": [{"displayName": "oDoFkmA3fgzcwdgJ", "namespace": "MjIyGfiNBQy41M1g", "userId": "zGCbaxw33rNbE4bb"}, {"displayName": "DU4FMTbQaANJOODG", "namespace": "erDCWcl3VSJENQop", "userId": "eHD6iKBGm5Cj7Rqn"}, {"displayName": "JUmfDmofxvN8pRGo", "namespace": "UtmbWZbEjPyq35BW", "userId": "Doc3qNcQFFyHv141"}], "members": [{"displayName": "NPqjRUMKSQjFdjqT", "namespace": "aZFsWzbqwTZQIN5j", "userId": "C6a8mEVCXHmFnrSL"}, {"displayName": "0PJcZQaCeNLYxMID", "namespace": "9pqZ5rryiMMt6fQt", "userId": "LhzylaquioT3QBt2"}, {"displayName": "9AiRASsuFM4ahGw7", "namespace": "XcF1Qwzz606UGXPh", "userId": "oNZlXMef7AvS3TfK"}], "permissions": [{"action": 49, "resource": "ZQNBBkrXu9czsYr3", "schedAction": 5, "schedCron": "gw1wRUnIVYxY6Ohd", "schedRange": ["krYiCinoVOzo4Plv", "1IlTpEhjTFYdzsUN", "vQAn2LuMjLqwmVz3"]}, {"action": 53, "resource": "Adh1HIk7vCEq7FQ2", "schedAction": 90, "schedCron": "FoXCOguSq2A4R3wD", "schedRange": ["dSkNfHJtA3QiX9Zv", "tydbaVb0scd97A0G", "P6djn2Ps3IVT5hUZ"]}, {"action": 34, "resource": "cnDq0ddZG0EpfGAq", "schedAction": 70, "schedCron": "arTvrG1DXZAWlvz3", "schedRange": ["c3XALMresGFfsH4a", "XCDhshvEF8rHd250", "nyihcUVGHQczI5Zo"]}], "roleName": "TRUkjGoRkPs2SO9X"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminCreateRoleV3' test.out

#- 193 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'rgXNIaU11cBXLwTf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminGetRoleV3' test.out

#- 194 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'opqeZtHJnRgaGfLM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminDeleteRoleV3' test.out

#- 195 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": false, "isWildcard": false, "roleName": "Q99M1yuXeqV31LX2"}' \
    'ehcMnM6QtjzQjDlU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminUpdateRoleV3' test.out

#- 196 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    'MCGnxZwak7KHnzGA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminGetRoleAdminStatusV3' test.out

#- 197 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'SmVzePIroz41oQCu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateAdminRoleStatusV3' test.out

#- 198 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'XeTRyJQrNLTcqLVT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'AdminRemoveRoleAdminV3' test.out

#- 199 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'N5Qf4tjPGpu27yxb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'AdminGetRoleManagersV3' test.out

#- 200 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "1of79zVTWIfgdNph", "namespace": "qe9fS1m77MAg4KoZ", "userId": "QPLhDSJx9jzxaRKp"}, {"displayName": "h4kiIFgS4fLqlrKG", "namespace": "iS3XxjkyNfj3XgTR", "userId": "TjI9oNBzgQ4CRwg0"}, {"displayName": "sKVeSpMny0GrvKI5", "namespace": "EVB9ZFzLNsjdCFtK", "userId": "Y0KsxR0rCFkyiQZf"}]}' \
    'MnTbKdwNhiIP7dpJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'AdminAddRoleManagersV3' test.out

#- 201 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "8B8VwFQnVco2oCn1", "namespace": "KvJmbjapW9UlEqtz", "userId": "Dd7SgxdxB5kvtM8a"}, {"displayName": "h9bPsksceGUEX8ER", "namespace": "ZcKSYLo6y7yJMowQ", "userId": "6LpHCvCYTgX9JQwE"}, {"displayName": "rzjtuP9pUUv7qefN", "namespace": "MFsZAIqak1zi0JSa", "userId": "5cRn31D8ubfdXi7B"}]}' \
    'ycDPckeGJUgU8bD5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'AdminRemoveRoleManagersV3' test.out

#- 202 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'mGFFmKTTUxG0mpmF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'AdminGetRoleMembersV3' test.out

#- 203 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "xxDNXGlGJvHf558h", "namespace": "1ltyhiSGhfqXhxBJ", "userId": "7zLXioAGkWgSDdDQ"}, {"displayName": "vpRfGe3z2rtjWpJA", "namespace": "lKHF0ebxhJ1176Ce", "userId": "D4dWCp4wqlQJcZro"}, {"displayName": "NQiefBnPluOIjZyv", "namespace": "lGDQGv6pNNowEuVV", "userId": "ZM28w4mnYvvlt1es"}]}' \
    '7A4PFduN4gx0UC6e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'AdminAddRoleMembersV3' test.out

#- 204 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "WKCFGS97Si6XyLVP", "namespace": "rkUxyZ1OH5Nn4nMT", "userId": "8QOyTuUSD9ImtaPA"}, {"displayName": "ocOQcpBWSNrCjSNE", "namespace": "AdojkCMmYyTGO07f", "userId": "oRZ6FujpIWo0qJtq"}, {"displayName": "p4Q6XgICLgMHcP1e", "namespace": "E6sjWQllYsONpp6Q", "userId": "GW56CNiszHE69D1M"}]}' \
    'Moaf6KlgRtwaM2Io' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'AdminRemoveRoleMembersV3' test.out

#- 205 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 50, "resource": "Qvq7NKWIHYsii3fC", "schedAction": 15, "schedCron": "uhxxlulfmya73hX0", "schedRange": ["a8Ri85PA9wNpmrK5", "Y5heA2ewWnFcqHxX", "P3kRhtrBcBofWTGY"]}, {"action": 49, "resource": "yRaDxvxwaLM8HkVO", "schedAction": 99, "schedCron": "9emdCLmzJbdkykVA", "schedRange": ["nmnRfUilcKA84d9p", "Msl7zrNJvDiP2hNN", "EI8QrQ6H1ro5CtU8"]}, {"action": 96, "resource": "aFi8OE7BCK4FeVGr", "schedAction": 24, "schedCron": "z1BojPoQg976409v", "schedRange": ["Fd5z9r4nJWUvLp1w", "xGF747468MXUq3uI", "ffkIpPmrWVxNZUvk"]}]}' \
    'iU2jXSwsBBRopVl3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'AdminUpdateRolePermissionsV3' test.out

#- 206 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 96, "resource": "d4NZGtk6EmWxC75M", "schedAction": 67, "schedCron": "8TKhFYkA9aRNDe2I", "schedRange": ["oPMSQKcg0OTT9JA0", "ll1RimBCiQwuyrI8", "7uSyXP6C0jXS8au2"]}, {"action": 46, "resource": "FpaS1uq1mH3oYfPK", "schedAction": 48, "schedCron": "QiAUhIfi17YrkWHN", "schedRange": ["xiaNyqBfgw58Hx0X", "YL0fJOPYpnPqGlPn", "hBDOWqDU8N3DjVUt"]}, {"action": 50, "resource": "n0jfyDbtIXICLkK8", "schedAction": 89, "schedCron": "vbnTg3znlg8nmzQx", "schedRange": ["1RsYhcRlv16Wwe8Y", "K3lZFslECI9QzuQc", "sjFehD6uTDYnqyNg"]}]}' \
    'N7GoeMsezFZsTBHk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'AdminAddRolePermissionsV3' test.out

#- 207 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["gcJ0DcEt23pci6xE", "ljer6aGJx5OFp3jK", "Ex4aSGdwTPX4ig3N"]' \
    'VFFkP7O3F4vsohRW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'AdminDeleteRolePermissionsV3' test.out

#- 208 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '60' \
    'fHghAQfAsYXVzBen' \
    'LtaAoYyRfiCWrm3s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'AdminDeleteRolePermissionV3' test.out

#- 209 AdminGetMyUserV3
$PYTHON -m $MODULE 'iam-admin-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'AdminGetMyUserV3' test.out

#- 210 UserAuthenticationV3
$PYTHON -m $MODULE 'iam-user-authentication-v3' \
    '1Ah3TII70MIcBMJ0' \
    '4508jKedx0CVRpd7' \
    'SwZw2UkjDzJ4NuMM' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 210 'UserAuthenticationV3' test.out

#- 211 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    'gI13nplXaUQV5QEv' \
    'KElLfbB7gwwAR1xF' \
    'rnyirw3iJt5iA3JS' \
    '2xeaJ08JrSHPqdhK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'AuthenticationWithPlatformLinkV3' test.out

#- 212 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    'Hn6ZjZMdr1C2TIQz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 213 RequestOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-request-one-time-linking-code-v3' \
    'RJY7UfYSrdN0JVz4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'RequestOneTimeLinkingCodeV3' test.out

#- 214 ValidateOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-validate-one-time-linking-code-v3' \
    'U43EcV1FRyeeqehM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'ValidateOneTimeLinkingCodeV3' test.out

#- 215 RequestTokenByOneTimeLinkCodeResponseV3
$PYTHON -m $MODULE 'iam-request-token-by-one-time-link-code-response-v3' \
    'NeRYKeMbL0G4v5D6' \
    'ylZguO918X7rLoex' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 216 GetCountryLocationV3
$PYTHON -m $MODULE 'iam-get-country-location-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'GetCountryLocationV3' test.out

#- 217 Logout
$PYTHON -m $MODULE 'iam-logout' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'Logout' test.out

#- 218 RequestTokenExchangeCodeV3
$PYTHON -m $MODULE 'iam-request-token-exchange-code-v3' \
    'HBMBMMAYokSWFwaj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'RequestTokenExchangeCodeV3' test.out

#- 219 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'RGUyklfLVY6g3PO4' \
    'hKAeF4GUV5m96qcC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    'JsVOWtu5RPsqd66I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'RevokeUserV3' test.out

#- 221 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    'mBEuhnaxZVf6MD9r' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 221 'AuthorizeV3' test.out

#- 222 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'y5Ihr531Kajxq7lz' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 222 'TokenIntrospectionV3' test.out

#- 223 GetJWKSV3
$PYTHON -m $MODULE 'iam-get-jwksv3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'GetJWKSV3' test.out

#- 224 SendMFAAuthenticationCode
$PYTHON -m $MODULE 'iam-send-mfa-authentication-code' \
    'uVRVEvhKIbrq1xsG' \
    'pdobYun8hcO55hVj' \
    'fWyK02w5QytAmkan' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'SendMFAAuthenticationCode' test.out

#- 225 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    'ukAzAMaRvIUhUwgu' \
    'GgbLLN3O7CEYjxqE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'Change2faMethod' test.out

#- 226 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    'lP5lA2FJ0iGLRTXG' \
    'sC5mxxse4eeuMgEc' \
    'tVEux2MSuwsEHlwd' \
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'Verify2faCode' test.out

#- 227 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    '5FDX4mu0qPHb9Ll2' \
    'EFEb8GnsthmQ2Y6Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 228 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'GOiqrg3lpqN5bOfn' \
    'qJ5bzDRzbhMxfEDE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'AuthCodeRequestV3' test.out

#- 229 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    '4TrtIHyyMq79EdB9' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 229 'PlatformTokenGrantV3' test.out

#- 230 GetRevocationListV3
$PYTHON -m $MODULE 'iam-get-revocation-list-v3' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 230 'GetRevocationListV3' test.out

#- 231 TokenRevocationV3
$PYTHON -m $MODULE 'iam-token-revocation-v3' \
    'MxaF8QHGM2IuQYBO' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 231 'TokenRevocationV3' test.out

#- 232 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'authorization_code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 232 'TokenGrantV3' test.out

#- 233 VerifyTokenV3
$PYTHON -m $MODULE 'iam-verify-token-v3' \
    'm0HgTth479W8rXqw' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 233 'VerifyTokenV3' test.out

#- 234 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'GVIRWgTNHCka3Wb5' \
    'kH1BrLWUetP7nmES' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'PlatformAuthenticationV3' test.out

#- 235 PlatformTokenRefreshV3
$PYTHON -m $MODULE 'iam-platform-token-refresh-v3' \
    'QDV3BD1nnEzoUlUW' \
    'qP4ElzL44KEm3uHB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'PlatformTokenRefreshV3' test.out

#- 236 PublicGetInputValidations
$PYTHON -m $MODULE 'iam-public-get-input-validations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'PublicGetInputValidations' test.out

#- 237 PublicGetInputValidationByField
$PYTHON -m $MODULE 'iam-public-get-input-validation-by-field' \
    'MCP5ckjphURs4ksg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'PublicGetInputValidationByField' test.out

#- 238 PublicGetCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction-v3' \
    'sKJ2R6Jacwwu8W1z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'PublicGetCountryAgeRestrictionV3' test.out

#- 239 PublicGetCountryListV3
$PYTHON -m $MODULE 'iam-public-get-country-list-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'PublicGetCountryListV3' test.out

#- 240 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-public-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 241 RetrieveActiveOIDCClientsPublicV3
$PYTHON -m $MODULE 'iam-retrieve-active-oidc-clients-public-v3' \
    'vrKMRPvwA9k6yJz0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 242 PublicListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["3NETdywPqYerrpOm", "4M2pM4fIfcHBWZM5", "0aHbPXRns3qwYL6L"]}' \
    'wGlZGF7XQPLAcIL7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 243 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    'FvAMWqhyyNZH1Cdu' \
    'cB5y5iMdeBG7REG4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'PublicGetUserByPlatformUserIDV3' test.out

#- 244 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    'meKEabfVXBJPIZqZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'PublicGetAsyncStatus' test.out

#- 245 PublicSearchUserV3
$PYTHON -m $MODULE 'iam-public-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'PublicSearchUserV3' test.out

#- 246 PublicCreateUserV3
$PYTHON -m $MODULE 'iam-public-create-user-v3' \
    '{"PasswordMD5Sum": "C5d6JuFdcfiNf0DO", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "wxDF5GJhCjVHiCn2", "policyId": "hTefT8gPFJ4WndMp", "policyVersionId": "QhcLK0WTZbtmQkwC"}, {"isAccepted": false, "localizedPolicyVersionId": "ug3nCXhD7FUz1iOe", "policyId": "0pHa0LmseIRXeoer", "policyVersionId": "ZAxbDPXU5xJBhIpJ"}, {"isAccepted": false, "localizedPolicyVersionId": "b0Ap7CmSiKPjcwAw", "policyId": "5GdxpvLfa4b4hTaZ", "policyVersionId": "BGdX66DqPTdurR3M"}], "authType": "Yda0Y0BCO4qPnvxE", "code": "RWjKasq5zQ6uZNwK", "country": "jnX7vDIqpcjmaq5K", "dateOfBirth": "BCsHlwNrfKJrkzwR", "displayName": "40tfd9GFXChtxB10", "emailAddress": "d4Q8nlBthUSu4WNf", "password": "TvD5UcES1eLMZs9l", "reachMinimumAge": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'PublicCreateUserV3' test.out

#- 247 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'SrEm5Y7jI232Sjkt' \
    'ijiNzTUe8KdizXmr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'CheckUserAvailability' test.out

#- 248 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["mK0sCUsqxKocHomt", "joU1kUqRedwIu1TS", "Rr6r8mzfMedpcKhv"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'PublicBulkGetUsers' test.out

#- 249 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "HPlvYanGqEkn9OEV", "languageTag": "wLWGT4MXhmzvRQb7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'PublicSendRegistrationCode' test.out

#- 250 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "c0vmjWq9fQqzulLG", "emailAddress": "fQMqSLQDlRFYMVfi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'PublicVerifyRegistrationCode' test.out

#- 251 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "AMa6Pco7Mfvikslp", "languageTag": "yL9BYLVVznF6hMYf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'PublicForgotPasswordV3' test.out

#- 252 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    'ksp8VQhYSFeBOp0i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'GetAdminInvitationV3' test.out

#- 253 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "G39YAZJ4HuLfeTfF", "policyId": "BTOFFMJ9pq511jZc", "policyVersionId": "TK8zmMfyshYk3b5c"}, {"isAccepted": true, "localizedPolicyVersionId": "EyNgvs5LEZrQXzSQ", "policyId": "RWRs9EGnRPgYlJEl", "policyVersionId": "gJ8kx1WEeDbql13F"}, {"isAccepted": true, "localizedPolicyVersionId": "rrRPcnG89rnNW1Yj", "policyId": "fn8lY4DnYRxY8ZhH", "policyVersionId": "eb0CaPFDjrSotKnp"}], "authType": "EMAILPASSWD", "country": "WALpToj9rgr5RffM", "dateOfBirth": "5JXvPdzEpDln04F8", "displayName": "BQjzobhDa8VxKOrf", "password": "VfBRIfkStOqdXqhD", "reachMinimumAge": false}' \
    'tBLljC7gcT3M1DAr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'CreateUserFromInvitationV3' test.out

#- 254 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "k4L80aXFY7SQkym9", "country": "KvKMHK5fbqioeoRI", "dateOfBirth": "plY0DIzRCNAO6Zpq", "displayName": "XJmPJso6M11LLZWK", "languageTag": "gWxn9YL16HQdtAne", "userName": "XGgxNg33ZIUrIkfm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'UpdateUserV3' test.out

#- 255 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "dXVvaPQzzKdFg7N7", "country": "piT8VcrXLZnuMNpK", "dateOfBirth": "EIs3GC9VTK7tkJWF", "displayName": "pHt7MdKu9Xwn5GHJ", "languageTag": "DGatrYOMO91CYEjX", "userName": "867n9PT9fR7mMuBX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'PublicPartialUpdateUserV3' test.out

#- 256 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "PDKCriRKzTZ7TXAV", "emailAddress": "RnUVbxEJcKHE764E", "languageTag": "whQfxFKIOGT1WKSm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'PublicSendVerificationCodeV3' test.out

#- 257 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "LoA0ILaESC1GJXso", "contactType": "Bwqh0TQXa2j7v3zQ", "languageTag": "JoQLTAlW75icIKUp", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'PublicUserVerificationV3' test.out

#- 258 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "azsFrmaGNoi3RPTg", "country": "WotLNz0u8ySxA0yr", "dateOfBirth": "jz4q7e0EJnADXC2y", "displayName": "0DY1E1SMK9oA4vK5", "emailAddress": "6dsYI5SKV5pDANyJ", "password": "184miBhdVJt81fmL", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'PublicUpgradeHeadlessAccountV3' test.out

#- 259 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "yGuu5rbJVIwRMtwA", "password": "pGbXnR3yC6f2MHGG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'PublicVerifyHeadlessAccountV3' test.out

#- 260 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "edk0KzXRclOXdPYZ", "newPassword": "QxBnttu4yW5etl4X", "oldPassword": "k8Hd1lRtoPMvsu9o"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'PublicUpdatePasswordV3' test.out

#- 261 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'swEPTvzwwGnpbx8M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'PublicCreateJusticeUser' test.out

#- 262 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'CIjKzylqW8auyseP' \
    '9wEEyYAnHPp4XzVL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'PublicPlatformLinkV3' test.out

#- 263 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "5McglFCrjxqqxAYq"}' \
    'XG2V3baMkZ9JCqBI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'PublicPlatformUnlinkV3' test.out

#- 264 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'kUID0EE9InZNLwwA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'PublicPlatformUnlinkAllV3' test.out

#- 265 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    'hW2b5OHKtUv4lTkQ' \
    'NjxhXdj1CG0EBgst' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'PublicForcePlatformLinkV3' test.out

#- 266 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    '9Qu8Ofl2oB8VTjF0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'PublicWebLinkPlatform' test.out

#- 267 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'pD3NHU8iYUOtG5gb' \
    'QSKW2MdgCH4bWxRF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'PublicWebLinkPlatformEstablish' test.out

#- 268 PublicProcessWebLinkPlatformV3
$PYTHON -m $MODULE 'iam-public-process-web-link-platform-v3' \
    '6fBPa6GOuV5z0p8j' \
    'aJs2duQqawPrxi6F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'PublicProcessWebLinkPlatformV3' test.out

#- 269 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "4elhy9CZ94CAUVW8", "emailAddress": "FoEf8tjCjWc22qqD", "newPassword": "fNz59jHwSDQHadmA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'ResetPasswordV3' test.out

#- 270 PublicGetUserByUserIdV3
eval_tap 0 270 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 271 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    'o0lzhPm7RmaOr6TL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'PublicGetUserBanHistoryV3' test.out

#- 272 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'wVyE42ApAb7CKt79' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 273 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    'wAopZL9Cw6K9h55m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'PublicGetUserInformationV3' test.out

#- 274 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'wUvhdBOgumV4wAsd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'PublicGetUserLoginHistoriesV3' test.out

#- 275 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    '4ifGd0bkWrlhtfTy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'PublicGetUserPlatformAccountsV3' test.out

#- 276 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    'wRW4fmg6btk3mAO4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'PublicListJusticePlatformAccountsV3' test.out

#- 277 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "EtB0hn2x1oTOX5gB", "platformUserId": "QlVDx9neFHWhDRJt"}' \
    'yYEt7ygZleAoUuVK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'PublicLinkPlatformAccount' test.out

#- 278 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["neoO10ytPdJ8SY3q", "oogOxoPYvdIBJYyG", "URjEjnslEYM8ngVT"], "requestId": "1ewVxvgAocOqsd5v"}' \
    '5n7eXCo9gZWdxfId' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'PublicForceLinkPlatformWithProgression' test.out

#- 279 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    'W8fNAM5YdHivK2Q0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'PublicGetPublisherUserV3' test.out

#- 280 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'WwolQy037hJMOEv5' \
    'W0v25yAObZIbrA8X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 281 PublicGetRolesV3
$PYTHON -m $MODULE 'iam-public-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'PublicGetRolesV3' test.out

#- 282 PublicGetRoleV3
$PYTHON -m $MODULE 'iam-public-get-role-v3' \
    'AKKWMDebehSjpt0w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'PublicGetRoleV3' test.out

#- 283 PublicGetMyUserV3
$PYTHON -m $MODULE 'iam-public-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'PublicGetMyUserV3' test.out

#- 284 PublicGetLinkHeadlessAccountToMyAccountConflictV3
$PYTHON -m $MODULE 'iam-public-get-link-headless-account-to-my-account-conflict-v3' \
    'rfWPXaI1Jb75o2MF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 285 LinkHeadlessAccountToMyAccountV3
$PYTHON -m $MODULE 'iam-link-headless-account-to-my-account-v3' \
    '{"chosenNamespaces": ["Oa6xgPt69QROGDeJ", "CyHvUsnLvXCSgQHv", "s25eiQO3oWdgXdm1"], "oneTimeLinkCode": "IxL1OtleUBqBO0Ze"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'LinkHeadlessAccountToMyAccountV3' test.out

#- 286 PublicSendVerificationLinkV3
$PYTHON -m $MODULE 'iam-public-send-verification-link-v3' \
    '{"languageTag": "049k9W6ZLVJzRpUs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'PublicSendVerificationLinkV3' test.out

#- 287 PublicVerifyUserByLinkV3
$PYTHON -m $MODULE 'iam-public-verify-user-by-link-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'PublicVerifyUserByLinkV3' test.out

#- 288 PlatformAuthenticateSAMLV3Handler
$PYTHON -m $MODULE 'iam-platform-authenticate-samlv3-handler' \
    'ITfVruDukun42zPZ' \
    'vOd4yZyMKyED3qDO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'PlatformAuthenticateSAMLV3Handler' test.out

#- 289 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    '5HXp5oVkhESbHQ7h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'LoginSSOClient' test.out

#- 290 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'vTlzf7XwQtVIYU87' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'LogoutSSOClient' test.out

#- 291 RequestTargetTokenResponseV3
$PYTHON -m $MODULE 'iam-request-target-token-response-v3' \
    'NgjDMcJxfMfYFlt3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'RequestTargetTokenResponseV3' test.out

#- 292 PlatformTokenRefreshV3Deprecate
eval_tap 0 292 'PlatformTokenRefreshV3Deprecate # SKIP deprecated' test.out

#- 293 AdminGetDevicesByUserV4
$PYTHON -m $MODULE 'iam-admin-get-devices-by-user-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'AdminGetDevicesByUserV4' test.out

#- 294 AdminGetBannedDevicesV4
$PYTHON -m $MODULE 'iam-admin-get-banned-devices-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'AdminGetBannedDevicesV4' test.out

#- 295 AdminGetUserDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-user-device-bans-v4' \
    'JvDgMiyBGygWFTAY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'AdminGetUserDeviceBansV4' test.out

#- 296 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "3Th5mOwPCPKVPlOG", "deviceId": "fFBlu2ZP0IkiYXGk", "deviceType": "6BoBmSLi0R7zDFMo", "enabled": true, "endDate": "TQmlS8lMlY8Ujprh", "ext": {"CxhzW6ZM7LkTVrtV": {}, "JZVhxCVdjPutJ8dk": {}, "AVOJ5imghdfVhjnj": {}}, "reason": "d66A1SQmWGSQLAVP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'AdminBanDeviceV4' test.out

#- 297 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    'AJ7zX5lB80k2smdk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'AdminGetDeviceBanV4' test.out

#- 298 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": true}' \
    'QqptccNorRls7EC3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateDeviceBanV4' test.out

#- 299 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    'nDnhFvDlFd7iyZpv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'AdminGenerateReportV4' test.out

#- 300 AdminGetDeviceTypesV4
$PYTHON -m $MODULE 'iam-admin-get-device-types-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'AdminGetDeviceTypesV4' test.out

#- 301 AdminGetDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-device-bans-v4' \
    'WVJFK6ZuvlzGCII1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'AdminGetDeviceBansV4' test.out

#- 302 AdminDecryptDeviceV4
$PYTHON -m $MODULE 'iam-admin-decrypt-device-v4' \
    '56hIg0g8HIxpzm9A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'AdminDecryptDeviceV4' test.out

#- 303 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    'cFhH4ZlYY3rEuHMW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'AdminUnbanDeviceV4' test.out

#- 304 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    'wQNmCQmGCF963Cbs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'AdminGetUsersByDeviceV4' test.out

#- 305 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"count": 83}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'AdminCreateTestUsersV4' test.out

#- 306 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["me1OukIfIZVH8q8s", "vV5hMOSfpyJkJlmJ", "mTkFvB7wkY6nuUEG"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'AdminBulkCheckValidUserIDV4' test.out

#- 307 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "J3k0HGtpK43uORGR", "country": "EOOwTuY8dhNCDWWp", "dateOfBirth": "N3B6tedgFUzBm5vG", "displayName": "A3itKaF9z3WWuv3j", "languageTag": "8T9g1f6P3D3rVcC2", "userName": "g6t42jE1Wad232YV"}' \
    '7A2zHFGbN8AQaCaw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'AdminUpdateUserV4' test.out

#- 308 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "9UF7cdSDd99DQZ7v", "emailAddress": "nTx8HDXTJWiyw17o"}' \
    'gzmbj4SLYDrZJvDL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'AdminUpdateUserEmailAddressV4' test.out

#- 309 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    'Gvn6qtroZcp16HKX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'AdminDisableUserMFAV4' test.out

#- 310 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'X1ft5nBA9xNIJVuM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'AdminListUserRolesV4' test.out

#- 311 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["z04evSdE2FMcKd7c", "94rEmIYuAT5OAcUw", "YHGmG5rNDBF1oU37"], "roleId": "vjfyX5YLaM0wmi0i"}' \
    '1WABBbq8IzZsMFLX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'AdminUpdateUserRoleV4' test.out

#- 312 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["9ZhFXcFtfBS3ZIHo", "fhwyM6Bw2sFGQ5DQ", "oDwzrKPOZZnV3zR7"], "roleId": "YxSu6addocg10Hy9"}' \
    'jx7gBHTOHHArjld0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'AdminAddUserRoleV4' test.out

#- 313 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["LnREsrrB2pJ7V8BS", "rucjO3zvSM5KeVNH", "U9GcOivIfcCJt4U8"], "roleId": "VSgXoi9Fw25b9qXz"}' \
    'lIK2G6AUjBCdf0Rp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'AdminRemoveUserRoleV4' test.out

#- 314 AdminGetRolesV4
$PYTHON -m $MODULE 'iam-admin-get-roles-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'AdminGetRolesV4' test.out

#- 315 AdminCreateRoleV4
$PYTHON -m $MODULE 'iam-admin-create-role-v4' \
    '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "vFuN1oUsCnBmGMx5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'AdminCreateRoleV4' test.out

#- 316 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'F6EhM3dKvIG9MR0h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'AdminGetRoleV4' test.out

#- 317 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'TINvq1VR9SJUfQEX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'AdminDeleteRoleV4' test.out

#- 318 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "Qecxo4bQZO3P2f8T"}' \
    'TOVf6jrr1OL606Qp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'AdminUpdateRoleV4' test.out

#- 319 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 33, "resource": "0wefF0CJlH55RLEg", "schedAction": 8, "schedCron": "YFmrLT0HbvS4kSSt", "schedRange": ["3CyDgf6eFAiqSkHi", "0BR2ElF6z6eJKuOW", "61akRFizqxCmudSX"]}, {"action": 17, "resource": "QZhwfjkq9iyTbyD3", "schedAction": 61, "schedCron": "JeCJghTrk68FWFzu", "schedRange": ["LBdlrKjUbgZQfw6Z", "ys3mN8fIcC9Ckhar", "fqaoMsGyv1RuSNdy"]}, {"action": 4, "resource": "HBRUNCPSre5GmZzC", "schedAction": 88, "schedCron": "FAyidbnXdMSwmkBk", "schedRange": ["KC1h6h45u0wuh9pY", "0011jSmHFTtfM2mG", "UUpq3ix7Am7W1fwJ"]}]}' \
    'nV94BrMSP31wAkVH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'AdminUpdateRolePermissionsV4' test.out

#- 320 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 14, "resource": "5UcmNXK5RqcIo9lp", "schedAction": 51, "schedCron": "z03wxB3E9hrE9f9C", "schedRange": ["OFrOr6wJDBwIDsJH", "Ng6TvNGjwI4TbTwB", "ufUorJouduhCEJ5X"]}, {"action": 17, "resource": "AL9gYHEV3wnTZTvY", "schedAction": 89, "schedCron": "f4ZFuV6L2AldoWWR", "schedRange": ["N5wNYlFiliYmBrqr", "Oc0NIligBrOkBljw", "RENjt04ZpyTTZG1L"]}, {"action": 48, "resource": "gr2S4Yw8NmPaBery", "schedAction": 53, "schedCron": "cPHEFuEVP9bF07gn", "schedRange": ["WDULkJPQR0UJMr8o", "uccGH0B4LCe2h0iF", "CCZgFWs5s0nT89A8"]}]}' \
    '8GDOUClGyzYgnYTd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'AdminAddRolePermissionsV4' test.out

#- 321 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["im6PkRoq5TO65KWh", "8ztRJkXxUAj3jzZv", "EaY103YUIMuSjDHz"]' \
    '0zPWMZQNNP2JqQqh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'AdminDeleteRolePermissionsV4' test.out

#- 322 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'ISTBT1Gofv4SuaZ8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'AdminListAssignedUsersV4' test.out

#- 323 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["yCB9TVZnuzgvAZJR", "m71EC3ENuvD8OPsp", "5Z3ez84KVB7HeWPn"], "namespace": "VeFdy5ezlCU6SGzk", "userId": "MpTL2wxobjxAbagq"}' \
    'EmXn6U2VeV2emK3J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'AdminAssignUserToRoleV4' test.out

#- 324 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "ecJA4skqCbPxRkIA", "userId": "FQh9yDdoLE2s7mrV"}' \
    'rmTJwtBTzQTrNo1L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'AdminRevokeUserFromRoleV4' test.out

#- 325 AdminInviteUserNewV4
$PYTHON -m $MODULE 'iam-admin-invite-user-new-v4' \
    '{"assignedNamespaces": ["cWNf7xHpi1JZJjIR", "tCfqDHSlo54zSnRN", "0zGMworzym1z3Zde"], "emailAddresses": ["tOic9AQOFWpdItLB", "hvKJq9tWz9yui8a6", "jOflFJlZEhz1QDeh"], "isAdmin": true, "namespace": "5hj92bwVVxJ62Q5A", "roleId": "OAOyL65cPaOZA8BG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'AdminInviteUserNewV4' test.out

#- 326 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "8KcVWOX9n3YsjJex", "country": "nFA9Umz3KPICya5F", "dateOfBirth": "k5TPaEbX29cV8v7M", "displayName": "XctihtxMnIr4b7jy", "languageTag": "fL3zMkklGCPISlsn", "userName": "VA6z0uSfNNpJUYzJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'AdminUpdateMyUserV4' test.out

#- 327 AdminDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'AdminDisableMyAuthenticatorV4' test.out

#- 328 AdminEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'AdminEnableMyAuthenticatorV4' test.out

#- 329 AdminGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-admin-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 330 AdminGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'AdminGetMyBackupCodesV4' test.out

#- 331 AdminGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'AdminGenerateMyBackupCodesV4' test.out

#- 332 AdminDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'AdminDisableMyBackupCodesV4' test.out

#- 333 AdminDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'AdminDownloadMyBackupCodesV4' test.out

#- 334 AdminEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'AdminEnableMyBackupCodesV4' test.out

#- 335 AdminSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-admin-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'AdminSendMyMFAEmailCodeV4' test.out

#- 336 AdminDisableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-disable-my-email-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'AdminDisableMyEmailV4' test.out

#- 337 AdminEnableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-enable-my-email-v4' \
    'xnOyvqmswrToyBIQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'AdminEnableMyEmailV4' test.out

#- 338 AdminGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-admin-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'AdminGetMyEnabledFactorsV4' test.out

#- 339 AdminMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-admin-make-factor-my-default-v4' \
    'umxDfAxNqCUtizYM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'AdminMakeFactorMyDefaultV4' test.out

#- 340 AdminInviteUserV4
eval_tap 0 340 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 341 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "7ebZcYqwfIHPWMkO", "policyId": "mrT5HL16jMwECnmw", "policyVersionId": "Jv4rpqtzDaz0WUJl"}, {"isAccepted": true, "localizedPolicyVersionId": "CfgwSPz14asyOdgn", "policyId": "77gN8K1FlNkgbFE8", "policyVersionId": "U4meK5grmPBsFH71"}, {"isAccepted": true, "localizedPolicyVersionId": "Alt08rrnG8y2ScXk", "policyId": "wjpAp82pGcxvXaG9", "policyVersionId": "LzHpMS53jllopwir"}], "authType": "EMAILPASSWD", "country": "o3A8WxnR0YaMsF3f", "dateOfBirth": "5KLtpTSsPMGDZTOw", "displayName": "EP5Bhh0NStWIggmh", "emailAddress": "fAzVdNYP7Ao1z7Fe", "password": "JM2fWXGk7JObSHks", "passwordMD5Sum": "RkabpmvRsc7ZYvXC", "username": "T6m6mRZAlLBczJVe", "verified": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'PublicCreateTestUserV4' test.out

#- 342 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "l7GbG1ISBCkcnpxK", "policyId": "UxLjmxhBS6YypRW7", "policyVersionId": "fNntaIEtDI6Mbhxk"}, {"isAccepted": false, "localizedPolicyVersionId": "dezbmf392ersoZ2K", "policyId": "bMb5jal0ruZmBXlG", "policyVersionId": "Sp85q6fuGfo5wSDH"}, {"isAccepted": false, "localizedPolicyVersionId": "LKPPIZx0zdNAagip", "policyId": "ZwiaBrFrXtGMjujf", "policyVersionId": "HZB1gMI1B8DXb37D"}], "authType": "EMAILPASSWD", "code": "CVldefonHJZAiX4a", "country": "bmqqi90KTWwZk0HG", "dateOfBirth": "eJNaBjVdMB5kMzKy", "displayName": "cYrhr4FnNzdT4pWw", "emailAddress": "IVXp9avUr6IydpXW", "password": "0MO0eT9okl6MlWOl", "passwordMD5Sum": "9feWO2bmOikTBJHT", "reachMinimumAge": true, "username": "hA9BXpKYgF9OuigD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'PublicCreateUserV4' test.out

#- 343 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "Vjmy7j2BrdCAm3sl", "policyId": "CwaBqHpE55sjxBGi", "policyVersionId": "jw0dQtZNonMrPkzU"}, {"isAccepted": false, "localizedPolicyVersionId": "ukycAUlkUSZKUrsx", "policyId": "NRzF3NaUuCyQyze6", "policyVersionId": "zPKu5sE89JW8UU0R"}, {"isAccepted": true, "localizedPolicyVersionId": "iMDTR7LxihuOn57i", "policyId": "o0d9dG3yzaNbGeAS", "policyVersionId": "X83SLiIbAP2qyUnH"}], "authType": "EMAILPASSWD", "country": "MxAndOj5O6IBwXJj", "dateOfBirth": "gQjgLoJyqwFVBd1Z", "displayName": "jaRXEdWgS12bSbPg", "password": "OCWUogizeWOPUMrq", "reachMinimumAge": false, "username": "eJe4n9eUlBQZ2UGe"}' \
    'PWXbAyGiXa9nUsHC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'CreateUserFromInvitationV4' test.out

#- 344 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "VicuJ7onrUXVlB6x", "country": "Nel4Bxb9KwFYqdhE", "dateOfBirth": "Vq3hbsApeASfR0lj", "displayName": "KxqZcLuhwNDvValv", "languageTag": "3bkoMXNzl1ywEPiu", "userName": "nixlEAHZzHs8x5oP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'PublicUpdateUserV4' test.out

#- 345 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "SkZFIV2feXnTRlzA", "emailAddress": "Jy9oFOHB2KEsIdto"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'PublicUpdateUserEmailAddressV4' test.out

#- 346 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "zVltBhoXE4wgcYT5", "country": "CdjaJuUzFIeqaVr1", "dateOfBirth": "CE1gu6cYuzC77J4i", "displayName": "rvZ9tktWLtDdlmVG", "emailAddress": "K6iolEw6IIpDc9X5", "password": "ijmtDGvd9ESdY0eT", "reachMinimumAge": false, "username": "Q2SaLd6M7TM3wnJy", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 347 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "sRN2ENn1RLi5iMPn", "password": "bg7o1zYpqUsliPyX", "username": "ZGYIW5ZDtWbdkzPP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicUpgradeHeadlessAccountV4' test.out

#- 348 PublicDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'PublicDisableMyAuthenticatorV4' test.out

#- 349 PublicEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'PublicEnableMyAuthenticatorV4' test.out

#- 350 PublicGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-public-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 351 PublicGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'PublicGetMyBackupCodesV4' test.out

#- 352 PublicGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'PublicGenerateMyBackupCodesV4' test.out

#- 353 PublicDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'PublicDisableMyBackupCodesV4' test.out

#- 354 PublicDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'PublicDownloadMyBackupCodesV4' test.out

#- 355 PublicEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'PublicEnableMyBackupCodesV4' test.out

#- 356 PublicRemoveTrustedDeviceV4
$PYTHON -m $MODULE 'iam-public-remove-trusted-device-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'PublicRemoveTrustedDeviceV4' test.out

#- 357 PublicSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-public-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'PublicSendMyMFAEmailCodeV4' test.out

#- 358 PublicDisableMyEmailV4
$PYTHON -m $MODULE 'iam-public-disable-my-email-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'PublicDisableMyEmailV4' test.out

#- 359 PublicEnableMyEmailV4
$PYTHON -m $MODULE 'iam-public-enable-my-email-v4' \
    '47RcUIi2CoNj4EG2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'PublicEnableMyEmailV4' test.out

#- 360 PublicGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-public-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'PublicGetMyEnabledFactorsV4' test.out

#- 361 PublicMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-public-make-factor-my-default-v4' \
    'emxKQk8cBrt5E8k8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'PublicMakeFactorMyDefaultV4' test.out

#- 362 PublicGetUserPublicInfoByUserIdV4
$PYTHON -m $MODULE 'iam-public-get-user-public-info-by-user-id-v4' \
    'rzDZ08j6ICP75cm8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 363 PublicInviteUserV4
$PYTHON -m $MODULE 'iam-public-invite-user-v4' \
    '{"additionalData": "YDChFi3zLvfQWC85", "emailAddress": "MxWxvW0veFl3uU1a", "namespace": "MD0mczWxc8f1s2QP", "namespaceDisplayName": "MMZsf2dvKZyHChRP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'PublicInviteUserV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
