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
iam-admin-delete-user-linking-history-by-platform-idv3 'PQbvLt2NRqJGIKzL' 'yH1y72L13Ornyx34' --login_with_auth "Bearer foo"
iam-admin-get-third-party-platform-token-link-status-v3 'luLdvtsTKXMjiw6g' 'YPvfn2Qt9iyq3Nyk' '8ncu2Z3eDHH9WaVO' --login_with_auth "Bearer foo"
iam-admin-get-user-single-platform-account '4iKhDcJ7TCcNIsQ3' 'PuppUxDSK8aOTGMu' --login_with_auth "Bearer foo"
iam-admin-delete-user-roles-v3 '["dcxlCV4cNbJGQ57l", "PdinpjS2DRfGt9Gl", "yZVQ4X67tPZSTpPq"]' '3xjrElvvDgw0ag7k' --login_with_auth "Bearer foo"
iam-admin-save-user-role-v3 '[{"namespace": "SWE0Hiqm5IuLryiE", "roleId": "XqvUWDjU1G0EVjVZ"}, {"namespace": "w1ToLuPakQN1MpOs", "roleId": "1RVFrcg2CXxepx78"}, {"namespace": "fvsyhE2BKtyTDSIM", "roleId": "7mkmvZ7Cmsh4US8o"}]' '4jfMANPpmZDdMiCx' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v3 'muCCVuFjS1GC1d2b' '92B4vEgj3HOmhcWm' --login_with_auth "Bearer foo"
iam-admin-delete-user-role-v3 '428XejRF94NIY9nM' 'rBZo0lNUBDShHD32' --login_with_auth "Bearer foo"
iam-admin-update-user-status-v3 '{"enabled": true, "reason": "VhjnnjKMEmtbiWsA"}' 'QHbMrKYi0Zxs5SWC' --login_with_auth "Bearer foo"
iam-admin-trustly-update-user-identity '{"emailAddress": "qZXHLLa31oQf7BUL", "password": "nZDhutDM6BqguqD5"}' 'xxGxBWtnTKUe2zns' --login_with_auth "Bearer foo"
iam-admin-verify-user-without-verification-code-v3 'qPzPkwCBo2SwCUsT' --login_with_auth "Bearer foo"
iam-admin-update-client-secret-v3 '{"newSecret": "ag4MLAo3m61P2xaN"}' 'fmn8Onb1a9gMz0F2' --login_with_auth "Bearer foo"
iam-admin-get-roles-v3 --login_with_auth "Bearer foo"
iam-admin-create-role-v3 '{"adminRole": true, "deletable": true, "isWildcard": true, "managers": [{"displayName": "RmMhAbUWmFhdYLWz", "namespace": "Muv3zkUY0n0BAZkw", "userId": "bYkBLyO6A0Fqfhna"}, {"displayName": "B3YxKNdOTacCcJfI", "namespace": "fXshuLUk5WdpxjZx", "userId": "5noXPhPUTKbonouc"}, {"displayName": "NmzwOZOK56sDkci5", "namespace": "rZ8iMlOuksQJCiRF", "userId": "iZWwJ7NrTb1XTB9Y"}], "members": [{"displayName": "QzUJ9XlYJ8BzP6EU", "namespace": "mUXGM5anIloyj9lh", "userId": "bvuQdW2jwKUckc79"}, {"displayName": "4ryY91lX8DD4MYXl", "namespace": "rJ81lHvv9rqvEoM8", "userId": "YmVjAkO3HKsEp6Kl"}, {"displayName": "qwW4djrexcbHdEto", "namespace": "QvpV344RctmTozCi", "userId": "8HeV6jbalHmqBBfi"}], "permissions": [{"action": 38, "resource": "6Iz8tne5dbguBF6G", "schedAction": 38, "schedCron": "bjE2opXtdsJQeJ1t", "schedRange": ["oo0qvxphTLEEBGTt", "ZyTjdKNKgYazujsm", "SmylT1YtxIq73aMb"]}, {"action": 17, "resource": "8jISd97KORRhxSWL", "schedAction": 100, "schedCron": "Nizk5UcPAGv6c1ES", "schedRange": ["C6hZYTYZbzf5aANN", "Ns5kgSZZNUHbIT9s", "zApmWJO5vzzXZj08"]}, {"action": 0, "resource": "FZeOCOR9NvBQZSJP", "schedAction": 84, "schedCron": "JZkDnEiyfa2LrnpZ", "schedRange": ["xNnLRH36bqS2oFY7", "6PU1AziBOHEAj1cT", "3u6Zc2FbrTFznTgD"]}], "roleName": "IwZIRWf6T3by2kYS"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v3 'CdnFKLc0xcTjqjdc' --login_with_auth "Bearer foo"
iam-admin-delete-role-v3 'EfU61OJYMnW49rWy' --login_with_auth "Bearer foo"
iam-admin-update-role-v3 '{"deletable": false, "isWildcard": false, "roleName": "XTc9vQe0dHJfF6KI"}' 'uvnRCa9JktyBdxkZ' --login_with_auth "Bearer foo"
iam-admin-get-role-admin-status-v3 'KrEWFw9GYxjiiOQA' --login_with_auth "Bearer foo"
iam-admin-update-admin-role-status-v3 'D77ci0vfWVZoRRMP' --login_with_auth "Bearer foo"
iam-admin-remove-role-admin-v3 'i57HyKKz5nyI6ulK' --login_with_auth "Bearer foo"
iam-admin-get-role-managers-v3 'NKoXa0dgx1JgjC56' --login_with_auth "Bearer foo"
iam-admin-add-role-managers-v3 '{"managers": [{"displayName": "pda3YhtQxpCYME6x", "namespace": "21pdX2QSPAd9sxoL", "userId": "nWGP1PafIjLX8ce0"}, {"displayName": "KbNN7Ycl2JfmQplv", "namespace": "GjVQ4aebjfgGu472", "userId": "oWJlfglLM4xjfkNL"}, {"displayName": "4lU6jaGfsD1cfswm", "namespace": "eFpvtDtetoQVFL8L", "userId": "NW11vtpaTxi7k489"}]}' 'jRCn48bvkCPfKofw' --login_with_auth "Bearer foo"
iam-admin-remove-role-managers-v3 '{"managers": [{"displayName": "XOIZZQAJza84lKKm", "namespace": "VOaTS6xBbNrSUAW2", "userId": "ak7ISDrBVg6NuDZv"}, {"displayName": "Pb1kuUfNfUDe4g7q", "namespace": "6PHEaqbzHvDDl1ji", "userId": "Lw3XMGBA6JXDpA1t"}, {"displayName": "IC45C0oaGouFu4hX", "namespace": "ONgUwJnUpryDeRcp", "userId": "Uvlrw2MwC1uuokpa"}]}' 'IjL0Vxe5n9Lx3QcF' --login_with_auth "Bearer foo"
iam-admin-get-role-members-v3 'o9gxOgvDc7xMrRKv' --login_with_auth "Bearer foo"
iam-admin-add-role-members-v3 '{"members": [{"displayName": "w8ISP2WKmCRRXBxl", "namespace": "alCHtWlKxLpS8fLW", "userId": "oQ5nuJhatQPxR7dv"}, {"displayName": "BVC5zgOKLTDmHe8c", "namespace": "1eJ9sde7Ryt4udIv", "userId": "22M18uux9xBomQFP"}, {"displayName": "FWy5cwNPI6aFo0MV", "namespace": "wDZCIXFNEL3uWVRz", "userId": "3V7YbJM3bNLWHAbC"}]}' 'Zixe2cQ6O30lpzcB' --login_with_auth "Bearer foo"
iam-admin-remove-role-members-v3 '{"members": [{"displayName": "QMAEcNcJqrKxnMzS", "namespace": "Yoc4ZjiMY4H34B6w", "userId": "Vd8ipcKDwQeUWtjC"}, {"displayName": "C2UH6jzMO3AfmOS5", "namespace": "mQNyRPZFPNP56l1A", "userId": "T6OLKmZhCZxxPPdP"}, {"displayName": "wOtEuWBSO2jJepUn", "namespace": "EEgja2mIE2kLTnJw", "userId": "c5XmkCuL5W4tKt6G"}]}' '3j9LYdG7xVPqBqe9' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v3 '{"permissions": [{"action": 90, "resource": "iKYArAxnKBfBfDlr", "schedAction": 86, "schedCron": "CcoukWpnbz4ys7j6", "schedRange": ["lxuU3u2HEG0qfKeg", "vFTD1sPykS8YLmwt", "YgWGcA0h4G1LZ1Ha"]}, {"action": 26, "resource": "5UBMbsF44VTsLDRz", "schedAction": 6, "schedCron": "nYX2YBF2g7TVtzYE", "schedRange": ["HUodh3iUfBthbepU", "CTWiZ1uqh7GAi4FE", "Iu44u83ZLRxYlYql"]}, {"action": 32, "resource": "K70uJmUL0uzElixc", "schedAction": 90, "schedCron": "23dIvDiA0tQWlHwB", "schedRange": ["cTtztx3VAl6tXFbn", "ATCzUOIzVcy9k3ie", "64Vnwa0ClGQJultJ"]}]}' 'e32AiwKadEoIVmpr' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v3 '{"permissions": [{"action": 45, "resource": "gKuiGTYgwWv5XldL", "schedAction": 31, "schedCron": "rOVGcRAn51rVAQSx", "schedRange": ["p4qTB54mKA3V9DKl", "CeZ7mLYsHooOIaxI", "pb1cIOJPS3lJ80YJ"]}, {"action": 61, "resource": "1U4ooQ980ywmg1pW", "schedAction": 31, "schedCron": "JYXsYgL7TfyIlAwj", "schedRange": ["TZdRZJJzWZwvTX2b", "amSCvX1nwvSWdDwD", "7WJHzgNZUKsI5y0m"]}, {"action": 89, "resource": "wBcD12ae6r3hHwya", "schedAction": 54, "schedCron": "NpdOzg3hr6ucHf7d", "schedRange": ["bh2iKNUl0qJqzoKM", "RMG541PAiNjULsx4", "SnKNXLMUaDSwwQln"]}]}' 'NRZJHBSB4fZWEFIZ' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v3 '["s28Ff1kZp1Zktx3N", "7WNMYIfcDKbLu8pn", "K34oA1keYXJvtggD"]' 'dXjbdjMBahFZZGMT' --login_with_auth "Bearer foo"
iam-admin-delete-role-permission-v3 '4' 'hhWjfZpfcFBUsnnD' 'JlmD1iEokbUiYzCQ' --login_with_auth "Bearer foo"
iam-admin-get-my-user-v3 --login_with_auth "Bearer foo"
iam-user-authentication-v3 'h2iNTwtnohddMzMT' 'Q9P7sYLDWAJOA75K' '4BYJ2fkqYJoF2FI3' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-authentication-with-platform-link-v3 'vyyqRzc20O7FdsJP' '1G9tyBTfERXdvgD1' 'Qf7Ot2DkUt3yexZB' 'RvxYnEBhXtAVxCd3' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v3 'meTrT7cF9oVCh89w' --login_with_auth "Bearer foo"
iam-request-one-time-linking-code-v3 'NOkKYssVejcL3kR3' --login_with_auth "Bearer foo"
iam-validate-one-time-linking-code-v3 'hCGNgaJmuALlMQl9' --login_with_auth "Bearer foo"
iam-request-token-by-one-time-link-code-response-v3 'RLrthbfp0VgweLlT' '2sY3SsTnDQY7kKU2' --login_with_auth "Bearer foo"
iam-get-country-location-v3 --login_with_auth "Bearer foo"
iam-logout --login_with_auth "Bearer foo"
iam-request-token-exchange-code-v3 'u06Q4veujxtyQENv' --login_with_auth "Bearer foo"
iam-admin-retrieve-user-third-party-platform-token-v3 'JrBCqeg67d4RWOqO' '4U0bitNQLzwRoWnR' --login_with_auth "Bearer foo"
iam-revoke-user-v3 '0AbkCPY70FmvviVI' --login_with_auth "Bearer foo"
iam-authorize-v3 'BbcujF8Vk5qb8NhW' 'code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-introspection-v3 'dBaKSLCgOOPXM6XT' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-jwksv3 --login_with_auth "Bearer foo"
iam-send-mfa-authentication-code 'Uh2dJ90yqHDNacl4' 'F9G6Dl5TFwBY6HKX' 'AblkT8VGgSH8MGZG' --login_with_auth "Bearer foo"
iam-change2fa-method 'wiVj7eDTaka9ABfX' '1IByPEOuPhGspRi3' --login_with_auth "Bearer foo"
iam-verify2fa-code 'bhPQvBBJI5Jxytpc' 'ubN4AUUPFPscZsXe' 'JOD4DMtqfIGiGJov' 'false' --login_with_auth "Bearer foo"
iam-retrieve-user-third-party-platform-token-v3 'q2SimQQoLbe5YOJv' 'xGRxUzrTwagH7BMT' --login_with_auth "Bearer foo"
iam-auth-code-request-v3 '1IZKTdNFVBQ1crBX' 'AupATO8uXsqVpdiW' --login_with_auth "Bearer foo"
iam-platform-token-grant-v3 'o8SjDAM0Riw8wLYW' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-revocation-list-v3 --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-revocation-v3 '3n4F3LD1EDwBXw5u' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-simultaneous-login-v3 'steam' 'dc5VyC4qvWjVac1c' --login_with_auth "Bearer foo"
iam-token-grant-v3 'password' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-verify-token-v3 'b7yaLXzAVYymOuhC' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-platform-authentication-v3 'kZu4htrsf8eIFSov' 'TGXaMsq8ePN1oco2' --login_with_auth "Bearer foo"
iam-platform-token-refresh-v3 'jx8Upe8SjMvpqM8p' 'uggOEdG47gD5i2Ni' --login_with_auth "Bearer foo"
iam-public-get-input-validations --login_with_auth "Bearer foo"
iam-public-get-input-validation-by-field '6AnWn3NdEPhNHSH7' --login_with_auth "Bearer foo"
iam-public-get-country-age-restriction-v3 'eKDfRcngEpTnRUQr' --login_with_auth "Bearer foo"
iam-public-get-country-list-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-public-v3 --login_with_auth "Bearer foo"
iam-retrieve-active-oidc-clients-public-v3 '3RLOM1vEx4gqDY6j' --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["wyKRxhkLe5zohg9s", "9utRQt28b6o3K0CO", "F74tz6aeXZOYwbwj"]}' 'MNdxKWlBfnRyFS0E' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv3 'd7gTM5AVrtBQiDTc' 'NnZa6Zuxk6u6HXXd' --login_with_auth "Bearer foo"
iam-public-get-async-status 'iC9ZDj4E4mv12FNX' --login_with_auth "Bearer foo"
iam-public-search-user-v3 --login_with_auth "Bearer foo"
iam-public-create-user-v3 '{"PasswordMD5Sum": "ypoOLl13j84P0Kqi", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "I6Ag7eUYcYJ4QzXC", "policyId": "mqr6gmPGaHP5SVPv", "policyVersionId": "RLiDi0mNHb6Lx8eq"}, {"isAccepted": true, "localizedPolicyVersionId": "SGNwEQO8dYXvBSYv", "policyId": "JBwb6CjZUMRf2VJe", "policyVersionId": "tWsokvx3BHuTEczr"}, {"isAccepted": true, "localizedPolicyVersionId": "KjQ3ttz8MTBt1xk9", "policyId": "IyssSA8nP5PQjpzk", "policyVersionId": "2Tb7iYdmNZWosrsV"}], "authType": "BPZ64j0HUONscofw", "code": "YLQcDvkaEIIPoJT8", "country": "3zEGXmVBZLyrH9J7", "dateOfBirth": "BoysmaORLkP5hc2F", "displayName": "h04JTsqDTynCewqJ", "emailAddress": "ligLlRxOelKykICR", "password": "xF6HtlER2txs4qrN", "reachMinimumAge": true}' --login_with_auth "Bearer foo"
iam-check-user-availability 'Bd5o7iTST7R3KbbQ' 'GERMNpqWb51y5RUz' --login_with_auth "Bearer foo"
iam-public-bulk-get-users '{"userIds": ["vMfTkPy0fGvTGgfL", "Ksg0b1Bq78cE5O5p", "mPnbiPJ9j4vxmbH3"]}' --login_with_auth "Bearer foo"
iam-public-send-registration-code '{"emailAddress": "rVaauufxkPHElug4", "languageTag": "8TgfNu0rqXUOyToL"}' --login_with_auth "Bearer foo"
iam-public-verify-registration-code '{"code": "PIREGIKlJt3EP9kK", "emailAddress": "wkENQ8VOHGwbADMf"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v3 '{"emailAddress": "uOmh0lciRhVZ2Deo", "languageTag": "ODXMzLSrzoiBnYi5"}' --login_with_auth "Bearer foo"
iam-get-admin-invitation-v3 'UWs3tYlYeMoCimJy' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v3 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "2vfJuje5cPnmGjTv", "policyId": "Ya5Pqx1K7qcAoijB", "policyVersionId": "PAp6EPb988NzxrDK"}, {"isAccepted": true, "localizedPolicyVersionId": "yxf6MLZJ2jZfZbpT", "policyId": "JezzriCDWXT59SRu", "policyVersionId": "0YqUxKDc84OMIzvT"}, {"isAccepted": false, "localizedPolicyVersionId": "cdbKBsAyJMz4ILND", "policyId": "vhB4Eoes9a6XaJeR", "policyVersionId": "bzTPwD3jxF7vxRUY"}], "authType": "EMAILPASSWD", "country": "W4JprIb3CJCAtvSG", "dateOfBirth": "8Cfa9dzOJDGCTHIO", "displayName": "FjeXbsSgR43kIDzx", "password": "BwqRJTzrHNZWUsq5", "reachMinimumAge": false}' '4ETeCUYG9ccTt7Wx' --login_with_auth "Bearer foo"
iam-update-user-v3 '{"avatarUrl": "w8OQ13t3uTw6zQuo", "country": "ZcXQpoTOxe8y1jor", "dateOfBirth": "Nsg9ZKYCKoISyXtH", "displayName": "zoWGdYohxMp3uOQI", "languageTag": "ybqWfG9BJ6FVKlbY", "userName": "HtbPtaxvagSlpGgV"}' --login_with_auth "Bearer foo"
iam-public-partial-update-user-v3 '{"avatarUrl": "TF6VeDAPOGBwweyF", "country": "fXEOEAEtbag82KgB", "dateOfBirth": "gyCd5vjkfz3eR4Dt", "displayName": "Np129hzBw3xLUcCE", "languageTag": "t0DzmkJq1sml5bYt", "userName": "76BNsi4giR9434Wp"}' --login_with_auth "Bearer foo"
iam-public-send-verification-code-v3 '{"context": "KKdzxoufCNlFoOcW", "emailAddress": "QQy4bjmQeEweoBHT", "languageTag": "dwAk7ZQnbqY1cQwV"}' --login_with_auth "Bearer foo"
iam-public-user-verification-v3 '{"code": "EtAr5kKKAo9MM2Cq", "contactType": "m84jVi9kIpqgrzpU", "languageTag": "kNOBWydXV0Fi02aF", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v3 '{"code": "3b8QM8Rr45ULqXQg", "country": "vwD3PsKDJiWxQBwa", "dateOfBirth": "S7rDBf2S54phbdyG", "displayName": "Dt47f9GWRlE9hqz6", "emailAddress": "rjDNo4rhjxUdMM83", "password": "WekqfWv04vvn9bk5", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-verify-headless-account-v3 '{"emailAddress": "zsr9xYiWRuuzQJiL", "password": "c1eI9w3JEhxPGbEk"}' --login_with_auth "Bearer foo"
iam-public-update-password-v3 '{"languageTag": "7s7gw07FlounC3vJ", "newPassword": "KBC7SwgoViPeIB4E", "oldPassword": "hy0Y5aSJVDginxAM"}' --login_with_auth "Bearer foo"
iam-public-create-justice-user '77eY9C14FbfiI2NP' --login_with_auth "Bearer foo"
iam-public-platform-link-v3 'vl1kCY5bEokxXxkW' 'Zbjf7GZxaossQmjo' --login_with_auth "Bearer foo"
iam-public-platform-unlink-v3 '{"platformNamespace": "69wohJFyTNk5FGUP"}' 'hR4LEZvz3EjFR799' --login_with_auth "Bearer foo"
iam-public-platform-unlink-all-v3 '6Ug5m4axDV5uTcYs' --login_with_auth "Bearer foo"
iam-public-force-platform-link-v3 'oahUrELQ1btjJOqQ' 'MgZWAU6E92nHJzvw' --login_with_auth "Bearer foo"
iam-public-web-link-platform '7tnYtGfv0EJyjBu4' --login_with_auth "Bearer foo"
iam-public-web-link-platform-establish 'EzwRjD7jmQJeFPgh' 'qamSc5y0X48eT7Ml' --login_with_auth "Bearer foo"
iam-public-process-web-link-platform-v3 'uexk87b9Z5BTsEA3' 'EdmW8saabP4xRowf' --login_with_auth "Bearer foo"
iam-public-get-users-platform-infos-v3 '{"platformId": "NojzPXI2v0prR3OE", "userIds": ["ey0MkZwS6TYwNN3U", "Yhic03qGEg5fNzBV", "rjo3g8CfRwtyl1He"]}' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"code": "T7VEPgG40QyXzsOz", "emailAddress": "gck078IghoQBp2mW", "newPassword": "AOYksczxBS0OBCa2"}' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 'vWadLmQtYKmEMzic' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 'buL2S3RiW8dLTCBf' --login_with_auth "Bearer foo"
iam-public-get-user-information-v3 'GUdVEdvdQL7sVwcZ' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 '2PofaJoSqtrEOqxH' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 '46fRTSZoDdT0fefo' --login_with_auth "Bearer foo"
iam-public-list-justice-platform-accounts-v3 '74eg3Nt2c0r4GqF0' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "NHglOVuNZ9LzNeJn", "platformUserId": "Burh54CWbYb0Peby"}' 't8b4DGscjwrizsFU' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["gYwbaLvqvQ2NbmDI", "TuymTBjn3d2sFzMS", "3QaVjZF7Ax6115Kg"], "requestId": "9U8vrQJXQxoIbVi2"}' 'CLEk277Ivjj1A647' --login_with_auth "Bearer foo"
iam-public-get-publisher-user-v3 'XQ3koaAfZIim0sFP' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 'm1YN27bojDVaZLpx' '4kEWYkO6KrKUMhJr' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 'ASBh61hmWKSSrF35' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-public-get-link-headless-account-to-my-account-conflict-v3 'anDGvur19V18oIrU' --login_with_auth "Bearer foo"
iam-link-headless-account-to-my-account-v3 '{"chosenNamespaces": ["KXttgAI2QdWJFLmo", "PEgd8EMspOs8nkic", "9gj5vyUMAAmIHYbs"], "oneTimeLinkCode": "xG5N066FXb88SbLO"}' --login_with_auth "Bearer foo"
iam-public-send-verification-link-v3 '{"languageTag": "a21DiSFsm0XXQJWs"}' --login_with_auth "Bearer foo"
iam-public-verify-user-by-link-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler 'zvTQEuALzDNp1SZ5' '8aDllwzTRHak1MXx' --login_with_auth "Bearer foo"
iam-login-sso-client 'j7Esrg7900nml5Bi' --login_with_auth "Bearer foo"
iam-logout-sso-client 'dsK9dCEzhVnOv0PQ' --login_with_auth "Bearer foo"
iam-request-target-token-response-v3 'bVIaKiHfoeorY7A1' --login_with_auth "Bearer foo"
iam-admin-get-devices-by-user-v4 --login_with_auth "Bearer foo"
iam-admin-get-banned-devices-v4 --login_with_auth "Bearer foo"
iam-admin-get-user-device-bans-v4 'otGFyv2SMjbEr50q' --login_with_auth "Bearer foo"
iam-admin-ban-device-v4 '{"comment": "GdCZIc6EFqBKxbS7", "deviceId": "Q2OgRucL1jwRXzfj", "deviceType": "DZZBmOau6syme06c", "enabled": true, "endDate": "Lc2mEC3IXl5XCbkO", "ext": {"fHaGr5kdazlypvt6": {}, "lSLfU7HByGXPMqxj": {}, "4hBgVY3YAxZLKbcO": {}}, "reason": "dyjqf6Q4oiwoJcaR"}' --login_with_auth "Bearer foo"
iam-admin-get-device-ban-v4 'MEb15LBlTVufc5Zy' --login_with_auth "Bearer foo"
iam-admin-update-device-ban-v4 '{"enabled": true}' 'DR2NVyn4PRqf3eRb' --login_with_auth "Bearer foo"
iam-admin-generate-report-v4 'ZqBAoKGcVCdMiSNV' --login_with_auth "Bearer foo"
iam-admin-get-device-types-v4 --login_with_auth "Bearer foo"
iam-admin-get-device-bans-v4 '4qBrt1kcLmRv6EJt' --login_with_auth "Bearer foo"
iam-admin-decrypt-device-v4 'l5xWnsb8oWq94RIm' --login_with_auth "Bearer foo"
iam-admin-unban-device-v4 'NWVIJnhhwFDV1Vit' --login_with_auth "Bearer foo"
iam-admin-get-users-by-device-v4 'aomvWTzdsW4N70wY' --login_with_auth "Bearer foo"
iam-admin-create-test-users-v4 '{"count": 90}' --login_with_auth "Bearer foo"
iam-admin-create-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "j7Yi2VvoQNW8Yc48", "policyId": "1dYdvGxJAMDRA1LF", "policyVersionId": "7jdWlekFwO94VBCV"}, {"isAccepted": true, "localizedPolicyVersionId": "FcEcvVAyId6Cp85H", "policyId": "VDsZBQgOnXuXsGTh", "policyVersionId": "YZrmm0wrFMnPpWgr"}, {"isAccepted": true, "localizedPolicyVersionId": "D4hEk0OLjYsnignE", "policyId": "7KcMF7fuDbzRRYMN", "policyVersionId": "XWUsp1tOibJY9aL9"}], "authType": "EMAILPASSWD", "code": "pgegCUjTdi1Ehr8O", "country": "tqpNJ9R8TuNy4ejm", "dateOfBirth": "VA3vMCsGyPd12B8Q", "displayName": "NUz0hFFNbH6j2W4r", "emailAddress": "oZM2UKAXEEsL5D0o", "password": "iFchQnVeq3g2AB2W", "passwordMD5Sum": "IRUQmauIY5HXCZ0W", "reachMinimumAge": true, "username": "mWP0HzSdiylLhVYs"}' --login_with_auth "Bearer foo"
iam-admin-bulk-update-user-account-type-v4 '{"testAccount": true, "userIds": ["S7Haa6unq1yQOSRv", "yiLBRVtIDi2piIQF", "VmzMidw70KSahpYZ"]}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["dKZRyR9AX7JjxvNZ", "hM84DiZk6ySrB9SV", "FctW7YS0OkL78XeE"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "AtALFI3v8yha4pd5", "country": "A7MYcpBD6lKNb8Rx", "dateOfBirth": "vN2u5J7baOeLH19f", "displayName": "qBwNbNe1ffYRtIvQ", "languageTag": "aKyevWYtZjK6J29v", "userName": "8MpBSpo3AKRmnJkz"}' 'JHAckUyBksYQfDm0' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "RNFwiz70tRVLMlHi", "emailAddress": "8i9gOVqajUWrgEsW"}' 'DtaKzn8dZwnnGeZs' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 'ZVgbPzPFbrOMZMgW' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 'kFN7Tpkx6GcfyOg6' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["ZUrrp9ubg9mndW2J", "KmQafUs2bxYztOEy", "VbKIf1ZbzgUwd8DH"], "roleId": "oCQykmXHYmkRlg7g"}' 'Ys6unPYQ9jNQN1di' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["1ldhOh6HvjnYuV7N", "fC4A2ODiZhbfb8Qq", "CyK1XH9D6vl5eFdF"], "roleId": "fgK46GjCWaP8huTm"}' 'nq3FGQn3Ahu5wxq6' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["oJq4mChmQHQhO9IK", "BXDFQfXFD58sG6uD", "hFYlrzJBYSeMuJfQ"], "roleId": "ecutjS029BiJWOG1"}' 'm7MKclr5igjNTVIt' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "hxJgaVfw5Vnyq8Oz"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 'TE89WDNoMcOmbfJr' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 'CJQIj1haAosKglqa' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "E9ytpIO8btO3OwNE"}' 'GSW5TaW4to7QCY2N' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 66, "resource": "kbgX9CWJKwXXSbv5", "schedAction": 8, "schedCron": "NQjKlwjfJ3TJ2xVp", "schedRange": ["ge70WsLfgbZieRvJ", "I5sT9DH3DfLCv8q4", "Thmq09bBgPAYxrBE"]}, {"action": 90, "resource": "jlnTgtgW33wDwD9R", "schedAction": 74, "schedCron": "uCFxbfbz4aQERziP", "schedRange": ["L4dHhOqG5KDdUvk0", "LEi26Ls7mjRxNmvv", "NtjJNQepUTGhwlY4"]}, {"action": 22, "resource": "psSNcpK1QkB2Sy8W", "schedAction": 47, "schedCron": "jP7HuGz3b5WAEvdR", "schedRange": ["F9bqMj4ro5B19VE8", "38c7OydVw0zCqoMZ", "vpIOO97DmQ5ZOzx6"]}]}' 'iCJTu60IifzMhkk5' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 86, "resource": "VEBG7VbBPUWipz9C", "schedAction": 20, "schedCron": "YabFX4FCK5ucTFsA", "schedRange": ["FzaO3yJpA3KMxBlr", "RytER1qdTelFAadM", "9y66Drf4SSGGt3Mi"]}, {"action": 56, "resource": "S9SiGUjVAw4v3q6J", "schedAction": 89, "schedCron": "uH1mMIfOCDyVAHrH", "schedRange": ["ncR5dShqiBUI9esS", "sXegSEhrPpK2q8kx", "R4BuEksS2A9VOA8H"]}, {"action": 97, "resource": "bEJaPnAFjsodyJQV", "schedAction": 98, "schedCron": "uGJVl8xs1WId9Wla", "schedRange": ["lqshF9Rh2o7GCQGP", "CxwEdkyuT3MgzReR", "q0112ISArROIodcm"]}]}' 'M6v2AEozWWaYvBLE' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["46bpuJip8JyxJ39v", "rtuWWrqTZbSqBSKp", "8AmgwhYzk33J34fi"]' 'TxK63OHpnUCGBVfp' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'ctNFUsUQ6ZXQcb2o' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["1J5euLAbBgejqc0a", "pxqZ209BySn8aUaG", "lAyvIslt7N1qcxKs"], "namespace": "4nlf1MfqUZXkjHvc", "userId": "UOTlxNf09pefgFIi"}' 'JssShBKsQjXvfQgQ' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "Dt6ce8NDMErA82Fr", "userId": "R1GSogkewIzTOqKk"}' 'cjRh3l2gAJOTCbx7' --login_with_auth "Bearer foo"
iam-admin-invite-user-new-v4 '{"assignedNamespaces": ["J3gNLIlTk3Bpclrk", "4hIRn0znIKzAEAHQ", "pBOgHEP5l94s7CbI"], "emailAddresses": ["J7eHnVWOboMkyB7F", "TexsOZ0b2p3b63Kr", "cwIcXMhGy83Xit6b"], "isAdmin": false, "namespace": "q3hK1G4kKooSNNUZ", "roleId": "uiynZ64IwncZPk82"}' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "GF3eTC0vzZUDj9dz", "country": "GgGVxo9OHgfHumyf", "dateOfBirth": "uBNisecYbcOpR45V", "displayName": "DlvSc0Mr7ImwCwGq", "languageTag": "Of0bNs97KvKyj3Mq", "userName": "S7Dcmtfh50eObbrm"}' --login_with_auth "Bearer foo"
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
iam-admin-enable-my-email-v4 'gjhWK0x0ZidAJ1CU' --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 '1eD1La16Bw3JbUnU' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "qjRYldcTpdeCD9XP", "policyId": "Ri4bAQL7VE2wL8Y4", "policyVersionId": "JFVUdzA8bvXlDhG7"}, {"isAccepted": true, "localizedPolicyVersionId": "T3fDSrSHrkoqv2mM", "policyId": "6soMaTvQq2a9YdFN", "policyVersionId": "tRVSO0js0hG9xmSn"}, {"isAccepted": true, "localizedPolicyVersionId": "GpvHCDx55JZ5z6gu", "policyId": "jpFzlPspQD9IRIpD", "policyVersionId": "DubntPCFxfeoW2Nd"}], "authType": "EMAILPASSWD", "country": "SAS8MKMaxQ1QyJCp", "dateOfBirth": "KedhuzI7G9NCKKXu", "displayName": "1bqI2M5PmXfKnQ7B", "emailAddress": "YGjCUDMOrbmoRvWn", "password": "fmGFy0eUoOBd90h9", "passwordMD5Sum": "EDqSTOfoNewWjwMW", "username": "DKEt6JhbJ0fwTDaq", "verified": false}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "Hm9N6owMHMtJy1Oq", "policyId": "n59tEGm9NYeUT5P0", "policyVersionId": "nx8TqSZdZ5C8mFI9"}, {"isAccepted": false, "localizedPolicyVersionId": "nvzEqBNMF9CZvPxT", "policyId": "5zbreMc9fBoU3RHN", "policyVersionId": "DFjLKFrepy56eW1k"}, {"isAccepted": false, "localizedPolicyVersionId": "tDBmTLH9kP9U53z6", "policyId": "joBAhAlJGI2YYb6a", "policyVersionId": "jBjgq6eY4PBNHKPx"}], "authType": "EMAILPASSWD", "code": "2tHxDb06ZFy3uglS", "country": "p2UxvF2uLXWilRD7", "dateOfBirth": "HD6LCgdFxRGj00RT", "displayName": "6LvcnGMJbJIYLssM", "emailAddress": "vy9gkfTMRrXVRcAV", "password": "RDX6gmDfNfPGYYST", "passwordMD5Sum": "unMgt3C8hEguCqlM", "reachMinimumAge": false, "username": "wDudnGRufOUGfMjT"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "l07jPlcYaqYM7YfB", "policyId": "mhjI9Y28qVceS9UX", "policyVersionId": "48dKPCFUIeyYEymN"}, {"isAccepted": true, "localizedPolicyVersionId": "9ytb3c8pVZ8GlU89", "policyId": "62e6gtn5pUARJM1T", "policyVersionId": "8QwMNOAzXmyHEV4g"}, {"isAccepted": false, "localizedPolicyVersionId": "P6a280S5RNB5dVCs", "policyId": "B7xL4axSPgPCiwLx", "policyVersionId": "CFLDixZwVtt3RVTl"}], "authType": "EMAILPASSWD", "country": "UnBBR84iAO7sBQt6", "dateOfBirth": "YJ2tWwF7RnP1oK3c", "displayName": "4RVfjB0zi3XrYZUi", "password": "N24ol1qqbalgizL9", "reachMinimumAge": true, "username": "JuCAIfNBSHgpFNw9"}' 'K9pmAIc6VSfE9nbE' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "2PMv12ZSRJkujxbC", "country": "u1HFaj6Vxs3GuA4S", "dateOfBirth": "1dS7H7yIS7b5TSDR", "displayName": "IoMg7Dc5APzfzXDE", "languageTag": "LJFaIaEMW5bhJyL7", "userName": "2WDyhBsCCbnfihnX"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "KxGxaupnTTq9ihZk", "emailAddress": "vFKfSHQh8I9xk3sF"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "l0cbuCRM69XKkLwi", "country": "oRaKnWhlh80BhYe2", "dateOfBirth": "fJDS6T75Q4ulonMF", "displayName": "jmYqE1wJhfogWg2A", "emailAddress": "pm0sUy18aWn65Co0", "password": "vdCk8so6JSaZAIad", "reachMinimumAge": true, "username": "DEZywonA2SrEdN2t", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"emailAddress": "6NOV5agpS6A5mkuf", "password": "BpWVxIK9D2bTcgaK", "username": "occaSwWcZmzCWGI1"}' --login_with_auth "Bearer foo"
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
iam-public-enable-my-email-v4 'cIQcPWAShIhieSKU' --login_with_auth "Bearer foo"
iam-public-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-public-make-factor-my-default-v4 'f3zKbyQk2vQTYX1x' --login_with_auth "Bearer foo"
iam-public-get-user-public-info-by-user-id-v4 'sth28NZZgsXycuQN' --login_with_auth "Bearer foo"
iam-public-invite-user-v4 '{"additionalData": "GIDeHlf6IcX1K9Jr", "emailAddress": "K6Or2xx7rLwrPoWi", "namespace": "ywnxuDLLuIaSxolo", "namespaceDisplayName": "IH1gBCWVFrvls0Zw"}' --login_with_auth "Bearer foo"
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
echo "1..368"

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
    '[{"field": "osKhDlLfTKxpVOXv", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["TI0i6dO3zkbDseh4", "tJdoGcwMBmegqVUa", "WMJBjrV0p9A7tcHr"], "preferRegex": false, "regex": "MbJGr4drgkDuWS05"}, "blockedWord": ["m0pGzazM2BUXnzUE", "WTiKMJAf6AgbiEDM", "fCckWogE5gcfF8AM"], "description": [{"language": "GZ2FBS93Mg6TKwdR", "message": ["MraDLrwh3d0ykRGk", "gqUNIbJMJ9ABbKVW", "O2YEDiqkwKbpdk7w"]}, {"language": "lDngNiPPjpSAlZwF", "message": ["Gpea5ObBB49Km4Cl", "IQmkIdLCvNhZ6P8a", "qZ2yfrC1V7ZpJZPH"]}, {"language": "CMqvcYmeDLYEzs2S", "message": ["QUdKr6vgqkjycqcl", "NlBORlC8ZkjsxYtg", "xplHTPLzynjFZgF3"]}], "isCustomRegex": false, "letterCase": "MTFJ6svTyo9RHget", "maxLength": 15, "maxRepeatingAlphaNum": 14, "maxRepeatingSpecialCharacter": 85, "minCharType": 52, "minLength": 95, "regex": "B52BDFopxUwkMuSq", "specialCharacterLocation": "QnKzDgDAtqE3kuyb", "specialCharacters": ["wTQFYEJjIYwqfSRy", "8GgVk77fd1GS5Yky", "hAiAItnWUmD225fp"]}}, {"field": "1egsx3ErheNwqd5p", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["lNNqLyrlzrJ4QHbf", "nAdtkujxHff7n1ya", "NCcjgFhS0URBhl0L"], "preferRegex": true, "regex": "CbOn46W2B2uPQLrt"}, "blockedWord": ["2t6bVpCgKvPXSDuf", "mKh783cV54JsVBRB", "0rY0xfWddACyHSmo"], "description": [{"language": "4KX9TPO3K1k5ZM8b", "message": ["tmGsgXNXbpqxh76A", "f5JSwjw2fE2g6jXV", "7oai2oDm9FaP0HJ9"]}, {"language": "8tE4UyoQg0b0sGOk", "message": ["zxVt15LKmkQ7YBhs", "OuJ0ypkkt2G4eFh2", "YNsdoxpLTBM9Q8t8"]}, {"language": "29Ido1JyveSRiBq2", "message": ["3kyH9jQbHWkcVk0X", "28GS54vl7gIKBc7O", "YTylFRAJKySnC0cf"]}], "isCustomRegex": false, "letterCase": "l3Z2zSBbs4PAV72u", "maxLength": 9, "maxRepeatingAlphaNum": 54, "maxRepeatingSpecialCharacter": 84, "minCharType": 49, "minLength": 63, "regex": "zMDSy4kyqyKgrtEP", "specialCharacterLocation": "dXXlt8geCdiXu3iN", "specialCharacters": ["vn7vLZ7h6alhJNGZ", "F07lsPP5OfHbXzWn", "VO2U4uyzZo1rj0Zr"]}}, {"field": "LQjk4VoYfIksth24", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["pdDFfvzeU5iqhx6z", "v7EURTNIoG1DBdoK", "H6sREmmfwUZLZZS7"], "preferRegex": true, "regex": "8obTlGVThz4bm41o"}, "blockedWord": ["IcV33yjPxibDjfF7", "JkjCVpZKMxkFkBtX", "MU6KRIm5xBoIi99c"], "description": [{"language": "tgFXasxp5h780ktj", "message": ["Qw2yXzaQWaF2PqUf", "bpMpRl6xRyV19cbo", "rUHeCpqnZ5NW623W"]}, {"language": "Wn2ZJY3QvRa7CDRT", "message": ["csAHzD3dZyyWbUQp", "bcv3IwmL7a1K3zIU", "YJmdF1YtWNSQlcMz"]}, {"language": "xfppNCrscDPbklTH", "message": ["cmgXsrVj3Mjml6Bp", "CODWGOLMmCZUeelX", "YyNrXweiCnDldRPR"]}], "isCustomRegex": false, "letterCase": "Q1fm9EUdiaRjuLsK", "maxLength": 40, "maxRepeatingAlphaNum": 30, "maxRepeatingSpecialCharacter": 0, "minCharType": 34, "minLength": 9, "regex": "npKwhpZVdw5UMa8y", "specialCharacterLocation": "mxtEFLwELCY2vIdd", "specialCharacters": ["lxnA1VynioJcAPwV", "HUGcs1ACMvoY4jWH", "9dFmOHW0j9suukPE"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    '4JwQONQ2vCbMn0Oi' \
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
    '{"ageRestriction": 1, "enable": false}' \
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
    '{"ageRestriction": 41}' \
    '36uiiMTAductvUfV' \
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
    '{"ban": "wLahtRedh1SiZlOp", "comment": "IQ8GL7jBF1R5OexA", "endDate": "PzCG6ZKQClGc1636", "reason": "nbfM3J9G40Y62bCo", "skipNotif": true, "userIds": ["ALznQuHVskfCjUK8", "GeX4Q0B2Cj0oOmBm", "Xu1KiTTiz7yrIvQj"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "2isN7bRwcr16lW5Y", "userId": "wgZpjlMMtPWg8217"}, {"banId": "m7qNkQiKp2oac8QT", "userId": "NEuBbeuQqm9wM7mg"}, {"banId": "TtUdPVcQijMBhs0k", "userId": "DP6d3nuUZ41mSeS9"}]}' \
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
    '{"audiences": ["SnGqhJOvykBcDpzD", "9zh6dtPK4fVHLMvr", "CsH3RYxH2Up9VthP"], "baseUri": "jFrK7Hip0eONFDgU", "clientId": "PShG8wwFKY9AMpcw", "clientName": "Jd4SrigIxAhbFMZf", "clientPermissions": [{"action": 47, "resource": "aP0wpZgQEvFzox9w", "schedAction": 69, "schedCron": "UonirH4URx3NkKQB", "schedRange": ["YrlUaMiFEWUT8cAF", "O5zEw8GENEJYPKxx", "Ow7xNQ98IEbc9YIT"]}, {"action": 81, "resource": "QIesNoYqvVsakylH", "schedAction": 17, "schedCron": "AJfKVjOn6rtILNJV", "schedRange": ["v2DLLUyBt5hDs45s", "iG30Lv9iGa5mkZjn", "RXVcg6AByNpBo2JY"]}, {"action": 22, "resource": "0tk4IATSIefcqNEn", "schedAction": 32, "schedCron": "IZ0Dv6b8WtaMVvLb", "schedRange": ["G04KKnh3jvW0Qp3k", "TyL4CsLwiWUMcpxn", "4B6XoTNMuqZTHwo1"]}], "clientPlatform": "IAJQpb6r8ZeaSHwQ", "deletable": true, "description": "wh59RGSbBMh7jpsz", "namespace": "uVk6iPdJ2boQqCCy", "oauthAccessTokenExpiration": 73, "oauthAccessTokenExpirationTimeUnit": "4FcDwBGyBiHewZkw", "oauthClientType": "EeuzBBRSknxyWkZO", "oauthRefreshTokenExpiration": 2, "oauthRefreshTokenExpirationTimeUnit": "G5OIVuGv47XJpkMi", "parentNamespace": "opQrVL3ZZTVxqa9X", "redirectUri": "M2gY14iWk12Jffk8", "scopes": ["dwKNPUOHNZxML3yo", "BM9qxd6PWz7sVnMx", "ge2inL8fBFP1ABaI"], "secret": "KrEt8d3o7cTS9OII", "twoFactorEnabled": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    'tmr90TqGf0OyqJ9i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'bJMmRgoxNwp1lGkY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["oq8HP1TM0tefVQPW", "X1NPO5Wn7rNG8rGp", "7Fadvo5EzpX0Itts"], "baseUri": "RezyY9GB5sf94ALB", "clientName": "mvdncQkcZb8cWdVH", "clientPermissions": [{"action": 71, "resource": "bww15zZsaYrJAe5K", "schedAction": 6, "schedCron": "pbjGts4UZDTfhAyZ", "schedRange": ["Khqilty9NVlgxUmn", "fdOAmu1dX1NqD20R", "UvvYeJZw6QZFN7wF"]}, {"action": 59, "resource": "NusOsa92F6iwkJIY", "schedAction": 84, "schedCron": "o7Yja1soDE1K0SvG", "schedRange": ["rMYwPmPXC2LfL2m5", "rP2A20t6foPPH94S", "UinY5diUlqgvY7dP"]}, {"action": 84, "resource": "kycMKlwJTNL2UCWU", "schedAction": 41, "schedCron": "00rS92594HLvWFsX", "schedRange": ["HtMP0k9L5dREQbCq", "fh0gpABFBER6WNcD", "OsRzBkf9A6HjCnFR"]}], "clientPlatform": "dSihcvszzQLZBktk", "deletable": true, "description": "siMup01kyaFwwD7w", "namespace": "ecuQb4GNQHVZMKGB", "oauthAccessTokenExpiration": 28, "oauthAccessTokenExpirationTimeUnit": "wetb82b96rsH73hR", "oauthRefreshTokenExpiration": 11, "oauthRefreshTokenExpirationTimeUnit": "f5g3oeuHiNyLkfPQ", "redirectUri": "PmjUkvSs5YmIejoz", "scopes": ["mG5HlrIfMAvvpkAH", "RJHZyfrXZmiJX4Cj", "KCeIRIr997KKpJXT"], "twoFactorEnabled": false}' \
    'bYWpqeXjaf1f5fjN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 79, "resource": "qXjXKPIcxh0x7T6R"}, {"action": 88, "resource": "nJtovSMFw8X4zxbd"}, {"action": 10, "resource": "D9xL07ZzzIs3Jke3"}]}' \
    '4ZAUuLP897ooMLne' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 25, "resource": "hMB0l7sg7IfMH5Tu"}, {"action": 16, "resource": "ky1ZYvyeHmfoFkUD"}, {"action": 86, "resource": "cW7mxbS5UOoICxQM"}]}' \
    'it8555Niy4NNFpRE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '31' \
    'aMPGFFAQZbfbmVTE' \
    'biRq5Juikmpat75r' \
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
    '{"blacklist": ["VbN9ZBtzJ33tCwv8", "H1f451FVZ630HNBY", "ZSrz7pMjESLLMPKD"]}' \
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
    'XLki6Oz5Bygt8Q0R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 135 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "jSf1srB7hGwGbUmQ", "AWSCognitoRegion": "mJHNffZENs9X0hFM", "AWSCognitoUserPool": "dzryvhc1YjHmmulS", "AllowedClients": ["BIElc2CdRvBb0aGn", "Mt625bWHb5sbX6as", "rjV7XJUOtHlzXNHE"], "AppId": "PpzlMlx7b2H2THLw", "AuthorizationEndpoint": "ZGikW7TFA9gE6SrY", "ClientId": "Kq6lcVOhPJIcEHbi", "Environment": "KHW7flVolAWEMmQS", "FederationMetadataURL": "PDTRqjlvwnnCA5tf", "GenericOauthFlow": false, "IsActive": true, "Issuer": "ushaKTPVjyOUpR3u", "JWKSEndpoint": "UdgNlyU4IJnqtrjC", "KeyID": "OsE8VjvzhJwNX4bh", "NetflixCertificates": {"encryptedPrivateKey": "qCjlwrmsSRV86iic", "encryptedPrivateKeyName": "1FIMyF7CcNu2DYn6", "publicCertificate": "E9Gk51kOTJZluTek", "publicCertificateName": "DMCGUJvERxNg8djS", "rootCertificate": "b4Vt2vKQ5vlCdI51", "rootCertificateName": "9Pf2iogwxM5DZM0d"}, "OrganizationId": "gozmco41750xdYQg", "PlatformName": "34WUV0WpmsQnp1n4", "RedirectUri": "YGumTKOlDOy5vhSk", "RegisteredDomains": [{"affectedClientIDs": ["xERZ2AQ1jvXYBar5", "RMmmGdWl0wpj5tVf", "KU3D8WVPh0Z7YiGE"], "domain": "2cyzTMBY7Xd0OoEN", "namespaces": ["g2Lw7uepmahXojVZ", "Yz2zMU9jLzNV3GaG", "43R6nlRPrEAYqRBe"], "roleId": "Sc5uShoj3dGHMeoi"}, {"affectedClientIDs": ["5DBOsQ0Gax0iX05I", "T9Agsjl5NmnSHhxN", "mCe4txY0MsPc9EMg"], "domain": "f9JCJiEvhL8ZfwCV", "namespaces": ["JW9yspUOyHC9eKeX", "zrvzBllwzyC1aTWE", "mPgoy4TkpEw4Zeid"], "roleId": "4mRoFNxv10ckMQVj"}, {"affectedClientIDs": ["Kk3bWJ0ZuYSe3sI0", "x2hc8vaN1Off5gRZ", "ZMW3huAIzBPWBYKA"], "domain": "EFTdlKNh6GTzKjsC", "namespaces": ["qxx24QM35bSkFrvG", "ciNHb7OY5YIpOLJW", "52uz3c8pz63M0g4x"], "roleId": "XT5Ts4e0uR47OzUG"}], "Secret": "HeBKtpvyRNgjZkdD", "TeamID": "ppvEJiUiDGXgh8BK", "TokenAuthenticationType": "cLqtRZ93LuR8OEyI", "TokenClaimsMapping": {"CvwgwBFehwtdJLdn": "3R2wo8beVQvgeP9q", "OHaLwYnXxrz7sLmP": "70LxN0f3JA27Qz5S", "jzQfOLYu9O46OOzz": "9p57qSpHerzO87cg"}, "TokenEndpoint": "7TqtMiQgi7Aj28qC", "UserInfoEndpoint": "RbwwZc4ZS1NMkrnH", "UserInfoHTTPMethod": "s1Iyhwqk140MolIr", "scopes": ["nlkRVbcX435TDYpk", "k2Gza6DrSycophHw", "3EoEEClTO9SDKnMl"]}' \
    'nKW9jiNMu9QVrMeD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 136 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    '4bD8gISE34yIAZQe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 137 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "igiA3wBrmBYIlZeh", "AWSCognitoRegion": "eP72AB8EO3YrlyrW", "AWSCognitoUserPool": "owUpUDVLlTtuJJsH", "AllowedClients": ["ZVsG6izJZruOJvSR", "FLDSdj8elbtHvDU9", "1DmHzwiqVPCJ5j18"], "AppId": "Ou3aY8nceFU5GKmc", "AuthorizationEndpoint": "EKp8AQwqgJs6O0Qj", "ClientId": "0ccMkdz6zPz3BVHA", "Environment": "qp4O9XSjap24esyj", "FederationMetadataURL": "h6Wc3migf2n6iQyr", "GenericOauthFlow": false, "IsActive": false, "Issuer": "b5YL6fwBiaVPmmn0", "JWKSEndpoint": "T5uzlmi2NY26xrkP", "KeyID": "Pdg3pXjmtpNfCrIj", "NetflixCertificates": {"encryptedPrivateKey": "9ntYo3dupUHNu8ab", "encryptedPrivateKeyName": "rVVOKxr9Pa315FKD", "publicCertificate": "jG2ApSV94Jy6yCSX", "publicCertificateName": "BqJqjAbVwSaoj1ug", "rootCertificate": "jr8mPkr3tZ506ERS", "rootCertificateName": "Vy5M3rrkxu0U9h9g"}, "OrganizationId": "CNVZxHGxhZqNXJ6J", "PlatformName": "XSh0Z3SWISs1dYrJ", "RedirectUri": "Kmx1BT6iLFQejNZJ", "RegisteredDomains": [{"affectedClientIDs": ["NF2hm0TqBQprHn3w", "hPKU5abnqw8fFa30", "pVbhr1BHh1arZAyu"], "domain": "LcZoEkPpqKhP2jWn", "namespaces": ["RTglw0gdWoE4esui", "Drquccz4J6fFQezJ", "5E3iYHIknvPcJkjR"], "roleId": "evVYfiExpAgoK9YD"}, {"affectedClientIDs": ["q1x3dkbJFDEBEOOv", "J5BKeipIldsgB4hO", "xb88WgKSLIpneDQC"], "domain": "fwucHRL3o2NstrL6", "namespaces": ["TsJeRcE7GuwKn63K", "IDTkUCqbbHGJGOTv", "KKRTHDntaFiufH2Y"], "roleId": "R6QU7fj6w17arNs1"}, {"affectedClientIDs": ["2hOoLVM7UFnuJDze", "EkDxaVogxHrOon2O", "W4Zw5QwVKWNy2tnF"], "domain": "2MifJR4hr4gdJDuj", "namespaces": ["YnVnFK6gB6ZxC6yY", "UVUJYnQ3jOGmROIq", "xqQ0gcNeTflyvUh3"], "roleId": "w5ZtfwmOCKpFSMF0"}], "Secret": "tfGIZCTNiIRc9fEj", "TeamID": "kZhEpAJMCxMp2J0h", "TokenAuthenticationType": "Dg2kMgkvhoQe9gD9", "TokenClaimsMapping": {"tGN0nE7M36mI9u3E": "eZtLQij2JXsqdXfh", "ZTTaCeqGv7meuQhJ": "uq1C6JHkWMSUbqBy", "WN2BCnRz9w2nur0B": "9jKaunAcylsau7wR"}, "TokenEndpoint": "QmL4i3eRyIECEDa1", "UserInfoEndpoint": "I4lwXqwPfq3VzHQj", "UserInfoHTTPMethod": "tolx64w1gyvjacKt", "scopes": ["GqxMnoAXRlcq0mYW", "KQYlqMmu2pvF6rP0", "3bQaq1cT88H6RCW8"]}' \
    'gJmGzDlqxtLsR2AG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 138 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["OiPhNt2IdH8aYYUT", "6mma833TDzk66ix8", "8sAUrXr7MXxCvyy7"], "assignedNamespaces": ["caxz4MQrODLNlxiE", "jQBCZx9DJ4V97SJL", "lrwXmIGamRCARuFL"], "domain": "x4rV4CXVMrDYKe2e", "roleId": "Tf1axo16GqT2vSLL"}' \
    'iMvcu39YZJypWzpN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 139 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "XgnoKIz8O8NglJtZ"}' \
    'Th280vflFMxIhlIT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 140 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    '8AgyZJ16MMd2bzOr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'RetrieveSSOLoginPlatformCredential' test.out

#- 141 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "Tn2huwPgyUzBUWiK", "apiKey": "oNGtvyk5xEfrJDxK", "appId": "sw5Xl7ZZrDZdbuvC", "federationMetadataUrl": "FBaVcohewKkVuGv9", "isActive": false, "redirectUri": "rM2nhSEanfUYrMU6", "secret": "A43UKGpvC1cr5T1P", "ssoUrl": "SXhduTWchzXDv3TA"}' \
    'tBjP4HSuiYCbG0Uy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'AddSSOLoginPlatformCredential' test.out

#- 142 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'YUJmNL8p6AbdtU0C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 143 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "DrlQpKB8qoel2QK3", "apiKey": "aSOYdmMDikc3Fjm9", "appId": "HoQDemtiQvURYZCe", "federationMetadataUrl": "F30RT9rBgM8o7lxX", "isActive": true, "redirectUri": "AiscGRWzkCl1ZKuP", "secret": "xjDUGRGcCEPjbUy7", "ssoUrl": "F82Adu9BYRHrVTeh"}' \
    'rqgvEtEs2LpE0qfb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'UpdateSSOPlatformCredential' test.out

#- 144 AdminListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["vdU8hlDoC9FnxqBl", "PBYJ7X6uVy7FWTSf", "Mi2CPVGxjcdpdCqV"]}' \
    'eePMSqb8y8qJTUQY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 145 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    '40Zrpn0vAD9YsPeD' \
    'WrAVQZSvgWuCuLsU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'AdminGetUserByPlatformUserIDV3' test.out

#- 146 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'GrVQAbhS54ZuQHKe' \
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
    '{"bulkUserId": ["rsDmJLUHAKtfXCKO", "na8DdjtZhh6ofsUo", "Rh6r0e0J6vyqPw7Y"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'AdminGetBulkUserBanV3' test.out

#- 149 AdminListUserIDByUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-user-i-ds-v3' \
    '{"userIds": ["lmV3kES0Hi88UYgS", "V40OvY7apPCrN5bE", "hmuHgKeWizEpw1zN"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'AdminListUserIDByUserIDsV3' test.out

#- 150 AdminBulkGetUsersPlatform
$PYTHON -m $MODULE 'iam-admin-bulk-get-users-platform' \
    '{"userIds": ["0mOYgGhHMz9dddLW", "JWDuSYtCaIv4Lp91", "wYUJPbvzn8TYoMDA"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AdminBulkGetUsersPlatform' test.out

#- 151 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["aUXSuBQdvdhJoT0W", "K5ngNUxDKfZYofPG", "UbSaA00nKxQjYU6K"], "isAdmin": false, "namespace": "bphW4YMhJ0S50bez", "roles": ["9ZLHW882riiPfRQ3", "rJ0f5lwXvRNDBnmL", "1KQn77hiP1lzkzjY"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'AdminInviteUserV3' test.out

#- 152 AdminQueryThirdPlatformLinkHistoryV3
$PYTHON -m $MODULE 'iam-admin-query-third-platform-link-history-v3' \
    'Dw6mLBordrJkD6vy' \
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
    '{"listEmailAddressRequest": ["60uRMT1Xw9K9Yb68", "a8ygYx2TqkhlqMnE", "9Wj90EQzOidrWnLr"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminGetBulkUserByEmailAddressV3' test.out

#- 156 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'XqImgDf3GaJsdCZN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'AdminGetUserByUserIdV3' test.out

#- 157 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "D0wgYOilX1e1825i", "country": "asunESjcgr2drXG5", "dateOfBirth": "NkKCySLA8cKCs0dF", "displayName": "YRSa2OULZ0iOZJiO", "languageTag": "Ah1SpLhMF2Pav11F", "userName": "uU8iXCRz8Kgqgwij"}' \
    'YxpGhsFArq6lolbj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'AdminUpdateUserV3' test.out

#- 158 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    '7QKvtVRCPMjr5M3v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserBanV3' test.out

#- 159 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "w1GqUjjFp6R8mYZw", "comment": "KftVqSECsypS42Nm", "endDate": "YQ8HlHbHnfs4tLVO", "reason": "YQCWMktmiKd9vLPP", "skipNotif": false}' \
    'w52JRAZxMWdoleYN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminBanUserV3' test.out

#- 160 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": false, "skipNotif": false}' \
    'nova15WVuE5cYVP9' \
    'tQSa27BnPyq3I1BL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserBanV3' test.out

#- 161 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "tGEZDRNkk4DJUofJ", "emailAddress": "XK8RGS0zCYRVmbfz", "languageTag": "wUmsy0stUmKdXiiT"}' \
    'ObNdqkWa13g3pgHx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminSendVerificationCodeV3' test.out

#- 162 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "6uPf6jQZcYerH933", "ContactType": "X7iXEEM2KOusNEHc", "LanguageTag": "I95GGdJvucDbs6Ud", "validateOnly": false}' \
    'SPp5XD4S1ilfgff7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminVerifyAccountV3' test.out

#- 163 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'Et4uY8nlBwGNHgfg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'GetUserVerificationCode' test.out

#- 164 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'wZwVMvshGmsg6ZJY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserDeletionStatusV3' test.out

#- 165 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"deletionDate": 28, "enabled": true}' \
    'kHDnHTlRugM7a2UZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateUserDeletionStatusV3' test.out

#- 166 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "geesipbP027okM5E", "country": "8tAajVSvLRj306RD", "dateOfBirth": "uaSixXEdloYZBkat", "displayName": "NLc42eq0O6VsXtOl", "emailAddress": "Qwj5xPvm7c5nPR0Y", "password": "1sffUaZ64dFpiv8o", "validateOnly": true}' \
    'rs4e3RnWR30MdBZe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminUpgradeHeadlessAccountV3' test.out

#- 167 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'zfwc3H0qSbMq4GLj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserInformationV3' test.out

#- 168 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    '8aGsH0qE5p601ak5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserLoginHistoriesV3' test.out

#- 169 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "9yFSfdZIv8oYWPUS", "newPassword": "4Zu0SbTt6M2Xizik", "oldPassword": "Ch6q0yq2WAHtL7IW"}' \
    'E3MFqvfDG5jvMOaX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminResetPasswordV3' test.out

#- 170 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 37, "Resource": "bcebBd5wb5H3qppo", "SchedAction": 58, "SchedCron": "gT2q0kIbrJ2S5Pf1", "SchedRange": ["Lvg8kYEVylINJpxF", "Y8E6pU8eHjh0aTjI", "OaQt0snbE0yMvqF7"]}, {"Action": 92, "Resource": "4HDmdvhMXxiKR29L", "SchedAction": 75, "SchedCron": "mNuwB3hBVhuSMHhf", "SchedRange": ["5R2MkxQTAYGfE6hX", "Z7XLoWCGf0dZEeXB", "d6mGG6SHcZbX2wNn"]}, {"Action": 94, "Resource": "RYV1oqNLmPAUIMwa", "SchedAction": 46, "SchedCron": "Q4PkAPXBCfkE1Fb0", "SchedRange": ["y94eP7yh0zsKhR60", "HZwUwk48XK7MXHbE", "wAvvpEeHhXiJcJqY"]}]}' \
    'SxVKUYMimVLzAP6a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminUpdateUserPermissionV3' test.out

#- 171 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 82, "Resource": "u8agb5HPsBU0Eo6Q", "SchedAction": 72, "SchedCron": "UqZydOB0MThZW6Lw", "SchedRange": ["cAg57BYBVCbi0ifd", "PyKf3SwHekWIz4rX", "lH5jw99HxCjXWcaX"]}, {"Action": 56, "Resource": "6DLEZ6DxpwBm2N8P", "SchedAction": 6, "SchedCron": "SYnVwXqF6K0WA76K", "SchedRange": ["l2mHHoz6qBQnEDgX", "49n1xTDFcmOm1sqd", "IWU6ERylESgf5dXM"]}, {"Action": 35, "Resource": "hlLoMemsp7o3F2LQ", "SchedAction": 46, "SchedCron": "2xYtDwflNGfufW5c", "SchedRange": ["Weg6eSCypsceITTk", "JGGCVF6LrILDLviU", "CzmDAaW5xz1c7ZuZ"]}]}' \
    'XUCBYnkY0LEBSYBd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminAddUserPermissionsV3' test.out

#- 172 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 95, "Resource": "MmX6WF8jtNAVOYqS"}, {"Action": 70, "Resource": "mZRTtgycLzXz6lUM"}, {"Action": 76, "Resource": "P4VPzhcH4UJrrCKv"}]' \
    'rOAi7lMgkVWJYzSC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminDeleteUserPermissionBulkV3' test.out

#- 173 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '71' \
    '6YJLlb2AfUEEBbqM' \
    'MKvkOsR1fHUyirMV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserPermissionV3' test.out

#- 174 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'MOFES2J2OzNlJE3u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminGetUserPlatformAccountsV3' test.out

#- 175 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'qZz574g31cA0PwZx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminGetListJusticePlatformAccounts' test.out

#- 176 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    'TIZVSGQyTzhs9Asy' \
    '4d629N4YnolVWA2d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminGetUserMapping' test.out

#- 177 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    'WxBs056jkPCUuE1p' \
    'gdHvlQKiR7SDQUDa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminCreateJusticeUser' test.out

#- 178 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "vOlKT5EIHNhJQq94", "platformUserId": "Re5IM1akNKz9IltQ"}' \
    'Uku3n32atB0QPQPE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminLinkPlatformAccount' test.out

#- 179 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "p5UtwUWGt6tooHP5"}' \
    'kAww01zalTddhAQ1' \
    'pwqnybvUIfuulmee' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminPlatformUnlinkV3' test.out

#- 180 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'gRwPPbn7lttd21cS' \
    '6IVE4fzwG3BHaRcZ' \
    '8NK4gkLmvEOaRcqT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AdminPlatformLinkV3' test.out

#- 181 AdminDeleteUserLinkingHistoryByPlatformIDV3
$PYTHON -m $MODULE 'iam-admin-delete-user-linking-history-by-platform-idv3' \
    'gF0xtQAXoDoFkmA3' \
    'fgzcwdgJMjIyGfiN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminDeleteUserLinkingHistoryByPlatformIDV3' test.out

#- 182 AdminGetThirdPartyPlatformTokenLinkStatusV3
$PYTHON -m $MODULE 'iam-admin-get-third-party-platform-token-link-status-v3' \
    'BQy41M1gzGCbaxw3' \
    '3rNbE4bbDU4FMTbQ' \
    'aANJOODGerDCWcl3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 183 AdminGetUserSinglePlatformAccount
$PYTHON -m $MODULE 'iam-admin-get-user-single-platform-account' \
    'VSJENQopeHD6iKBG' \
    'm5Cj7RqnJUmfDmof' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminGetUserSinglePlatformAccount' test.out

#- 184 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["xvN8pRGoUtmbWZbE", "jPyq35BWDoc3qNcQ", "FFyHv141NPqjRUMK"]' \
    'SQjFdjqTaZFsWzbq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminDeleteUserRolesV3' test.out

#- 185 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "wTZQIN5jC6a8mEVC", "roleId": "XHmFnrSL0PJcZQaC"}, {"namespace": "eNLYxMID9pqZ5rry", "roleId": "iMMt6fQtLhzylaqu"}, {"namespace": "ioT3QBt29AiRASsu", "roleId": "FM4ahGw7XcF1Qwzz"}]' \
    '606UGXPhoNZlXMef' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminSaveUserRoleV3' test.out

#- 186 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    '7AvS3TfKx6ByTygb' \
    'tOtcQS4Cmgw1wRUn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminAddUserRoleV3' test.out

#- 187 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'IVYxY6OhdkrYiCin' \
    'oVOzo4Plv1IlTpEh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminDeleteUserRoleV3' test.out

#- 188 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": false, "reason": "7qbPnXEuOzzkoBmM"}' \
    'R9C4qPqJrAdh1HIk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserStatusV3' test.out

#- 189 AdminTrustlyUpdateUserIdentity
$PYTHON -m $MODULE 'iam-admin-trustly-update-user-identity' \
    '{"emailAddress": "7vCEq7FQ2S5VeW9d", "password": "dxzLPV8wDjsnyPh5"}' \
    'yNbYXmlAOi1SC3I1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminTrustlyUpdateUserIdentity' test.out

#- 190 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'SjkH42LtyZKrTJo0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 191 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "L5sHil4Q0mqa8Gat"}' \
    'rjbJ5YT7uvqarTvr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminUpdateClientSecretV3' test.out

#- 192 AdminGetRolesV3
$PYTHON -m $MODULE 'iam-admin-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminGetRolesV3' test.out

#- 193 AdminCreateRoleV3
$PYTHON -m $MODULE 'iam-admin-create-role-v3' \
    '{"adminRole": false, "deletable": true, "isWildcard": false, "managers": [{"displayName": "ZAWlvz3c3XALMres", "namespace": "GFfsH4aXCDhshvEF", "userId": "8rHd250nyihcUVGH"}, {"displayName": "QczI5ZoTRUkjGoRk", "namespace": "Ps2SO9XrgXNIaU11", "userId": "cBXLwTfopqeZtHJn"}, {"displayName": "RgaGfLMFbvyI5PZG", "namespace": "zVLcmZKKKYARape2", "userId": "tsNczam4Cdd1QYvw"}], "members": [{"displayName": "w4XDokltgq2vXtUn", "namespace": "Y6UhDJ4pe0s0Cuhl", "userId": "3dU9b4seYCyiB4tD"}, {"displayName": "CWx3cEX8wTi1v2ab", "namespace": "pCWytPEi9Ze0hL9r", "userId": "PkV5GkSrcl2O47XV"}, {"displayName": "zU7qlNVk7qnmBS3X", "namespace": "KDhp1OkMcErmeH0l", "userId": "X1hj0LaXgQ94flh7"}], "permissions": [{"action": 13, "resource": "5AQfzNjQ7IuMSY2e", "schedAction": 31, "schedCron": "0GrvKI5EVB9ZFzLN", "schedRange": ["sjdCFtKY0KsxR0rC", "FkyiQZfMnTbKdwNh", "iIP7dpJ8B8VwFQnV"]}, {"action": 4, "resource": "Prq9I3XJWBxTLcOe", "schedAction": 12, "schedCron": "UlEqtzDd7SgxdxB5", "schedRange": ["kvtM8ah9bPsksceG", "UEX8ERZcKSYLo6y7", "yJMowQ6LpHCvCYTg"]}, {"action": 15, "resource": "9JQwErzjtuP9pUUv", "schedAction": 33, "schedCron": "NNfQSYLFKSl3FNFF", "schedRange": ["Jnt3rIwZdW02Su6a", "CnL816aH6gOBUIMe", "L0GL3aefSDME8X2M"]}], "roleName": "xILI42BJMPkZmay4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminCreateRoleV3' test.out

#- 194 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'Csye3iJLtjsu6ZJR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminGetRoleV3' test.out

#- 195 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'CoDq3geuHFFaZzPI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminDeleteRoleV3' test.out

#- 196 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": false, "isWildcard": false, "roleName": "ETqcKN1gaQ4Bn0cP"}' \
    'PtKaJlw31pdDrXQ4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminUpdateRoleV3' test.out

#- 197 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    '7WSGyDCKF0LLhO3l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminGetRoleAdminStatusV3' test.out

#- 198 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'GZ7eGOPj2XoFug8B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'AdminUpdateAdminRoleStatusV3' test.out

#- 199 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'UQUmPHnPumcazKAn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'AdminRemoveRoleAdminV3' test.out

#- 200 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'a0ji757aNDFeKnQP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'AdminGetRoleManagersV3' test.out

#- 201 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "2j2WsQImTwYkiuxz", "namespace": "LrbJ0BkGzCNgesQl", "userId": "ZZHIZH0iks6kx0ad"}, {"displayName": "nimPyyzezsHdFftH", "namespace": "HR6xbcVVonwz27DW", "userId": "fGRVhbZTvCPrrZCT"}, {"displayName": "U5WUJizF69PSsquW", "namespace": "UafwbFPX15633pFg", "userId": "A7i9tqvfHmFvUZiU"}]}' \
    'W5Y0CYw5OXSGwQkJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'AdminAddRoleManagersV3' test.out

#- 202 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "uy9oLFcHHcraLXR2", "namespace": "n9JQvq7NKWIHYsii", "userId": "3fCh7sieJjZPAkiW"}, {"displayName": "umllU31uXPwYxedG", "namespace": "HCIkmt4bfJOhNaIT", "userId": "0pv7XeqO8gY3c4Sr"}, {"displayName": "yWB4yRaDxvxwaLM8", "namespace": "HkVOW8PnLkgqkqYZ", "userId": "WPZTgKagTzdcYcko"}]}' \
    '7U3gH239LhRx2Laa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'AdminRemoveRoleManagersV3' test.out

#- 203 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    '2RdtVb6VgA5yFIH3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'AdminGetRoleMembersV3' test.out

#- 204 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "s9UyeaFi8OE7BCK4", "namespace": "FeVGrl5NpUG9zblW", "userId": "EiHaUjyTHb0sSlst"}, {"displayName": "b3slUe94NxhXsVcq", "namespace": "TYi1TMBMzaOrxuKv", "userId": "tUVtqbDWnJ2i9TRm"}, {"displayName": "JOqIl7U12hO5vpk9", "namespace": "DOSgbsdGVPLD9A5N", "userId": "muZDUV3yHurgOfba"}]}' \
    '1XeoHYTNoRol84Ul' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'AdminAddRoleMembersV3' test.out

#- 205 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "kxtP5Vok9sNK1ORg", "namespace": "3tChsS3fFpaS1uq1", "userId": "mH3oYfPK2QiAUhIf"}, {"displayName": "i17YrkWHNxiaNyqB", "namespace": "fgw58Hx0XYL0fJOP", "userId": "YpnPqGlPnhBDOWqD"}, {"displayName": "U8N3DjVUt0n0jfyD", "namespace": "btIXICLkK8ZvbnTg", "userId": "3znlg8nmzQx1RsYh"}]}' \
    'cRlv16Wwe8YK3lZF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'AdminRemoveRoleMembersV3' test.out

#- 206 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 38, "resource": "QGKFZLrIfqrZuu7I", "schedAction": 46, "schedCron": "6uTDYnqyNgN7GoeM", "schedRange": ["sezFZsTBHkgcJ0Dc", "Et23pci6xEljer6a", "GJx5OFp3jKEx4aSG"]}, {"action": 7, "resource": "7XF26K2U7xttUz8n", "schedAction": 100, "schedCron": "3F4vsohRWDyGYIVF", "schedRange": ["DbTvRYfpJ4wM9WZf", "OOxAzmsbhi5QJuc2", "SNBaOlXfgsgBd7MY"]}, {"action": 77, "resource": "dx0CVRpd7SwZw2Uk", "schedAction": 20, "schedCron": "XrISEaPZHLQkTHvn", "schedRange": ["dQsCKAO2JRz3CGwt", "ujkzxidLcAQWGVRg", "6DVso5TJCSugdo4X"]}]}' \
    'Tm8t1YTWqItjNWXm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'AdminUpdateRolePermissionsV3' test.out

#- 207 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 36, "resource": "sraeMA78YSRS2fPy", "schedAction": 7, "schedCron": "fpbbbMIu9lu18jIM", "schedRange": ["BUM77XmemN8LO03m", "nFSq9jJTVFoFjxZj", "h5qUR1Pq4a4uaMfd"]}, {"action": 92, "resource": "SQAfYIyzHL8jxaku", "schedAction": 98, "schedCron": "g3PO4hKAeF4GUV5m", "schedRange": ["96qcCJsVOWtu5RPs", "qd66ImBEuhnaxZVf", "6MD9r1y5Ihr531Ka"]}, {"action": 19, "resource": "L9HyJttdgfLGO3um", "schedAction": 24, "schedCron": "q1xsGpdobYun8hcO", "schedRange": ["55hVjfWyK02w5Qyt", "AmkanukAzAMaRvIU", "hUwguGgbLLN3O7CE"]}]}' \
    'YjxqElP5lA2FJ0iG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'AdminAddRolePermissionsV3' test.out

#- 208 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["LRTXGsC5mxxse4ee", "uMgEctVEux2MSuws", "EHlwdeJyhsHS6YqP"]' \
    'udWviQsULL1txfX9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'AdminDeleteRolePermissionsV3' test.out

#- 209 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '40' \
    'Q2Y6ZGOiqrg3lpqN' \
    '5bOfnqJ5bzDRzbhM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteRolePermissionV3' test.out

#- 210 AdminGetMyUserV3
$PYTHON -m $MODULE 'iam-admin-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'AdminGetMyUserV3' test.out

#- 211 UserAuthenticationV3
$PYTHON -m $MODULE 'iam-user-authentication-v3' \
    'xfEDE4TrtIHyyMq7' \
    '9EdB9MxaF8QHGM2I' \
    'uQYBO8m0HgTth479' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 211 'UserAuthenticationV3' test.out

#- 212 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    'W8rXqwGVIRWgTNHC' \
    'ka3Wb5kH1BrLWUet' \
    'P7nmESQDV3BD1nnE' \
    'zoUlUWqP4ElzL44K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'AuthenticationWithPlatformLinkV3' test.out

#- 213 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    'Em3uHBMCP5ckjphU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 214 RequestOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-request-one-time-linking-code-v3' \
    'Rs4ksgsKJ2R6Jacw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'RequestOneTimeLinkingCodeV3' test.out

#- 215 ValidateOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-validate-one-time-linking-code-v3' \
    'wu8W1zvrKMRPvwA9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'ValidateOneTimeLinkingCodeV3' test.out

#- 216 RequestTokenByOneTimeLinkCodeResponseV3
$PYTHON -m $MODULE 'iam-request-token-by-one-time-link-code-response-v3' \
    'k6yJz03NETdywPqY' \
    'errpOm4M2pM4fIfc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 217 GetCountryLocationV3
$PYTHON -m $MODULE 'iam-get-country-location-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'GetCountryLocationV3' test.out

#- 218 Logout
$PYTHON -m $MODULE 'iam-logout' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'Logout' test.out

#- 219 RequestTokenExchangeCodeV3
$PYTHON -m $MODULE 'iam-request-token-exchange-code-v3' \
    'HBWZM50aHbPXRns3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'RequestTokenExchangeCodeV3' test.out

#- 220 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'qwYL6LwGlZGF7XQP' \
    'LAcIL7FvAMWqhyyN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 221 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    'ZH1CducB5y5iMdeB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'RevokeUserV3' test.out

#- 222 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    'G7REG4meKEabfVXB' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 222 'AuthorizeV3' test.out

#- 223 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'GNH2K0UuJdeGNquQ' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 223 'TokenIntrospectionV3' test.out

#- 224 GetJWKSV3
$PYTHON -m $MODULE 'iam-get-jwksv3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'GetJWKSV3' test.out

#- 225 SendMFAAuthenticationCode
$PYTHON -m $MODULE 'iam-send-mfa-authentication-code' \
    'naXpDQ5rU2taDWh9' \
    'JV5oc5IFQsrwHqFq' \
    'wVA5mozeeOjIFQfX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'SendMFAAuthenticationCode' test.out

#- 226 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    'V3YW3ug3nCXhD7FU' \
    'z1iOe0pHa0LmseIR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'Change2faMethod' test.out

#- 227 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    'XeoerZAxbDPXU5xJ' \
    'BhIpJ9b0Ap7CmSiK' \
    'PjcwAw5GdxpvLfa4' \
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'Verify2faCode' test.out

#- 228 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    '1j0FZp2vjOXptxzx' \
    '6kkaZYpl52sQR9Zn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 229 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'p5d1eSwrG2GBBEWr' \
    'DbQ1ZzhDuLHq9LTB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'AuthCodeRequestV3' test.out

#- 230 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'stguOdN0O7l3GbKP' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 230 'PlatformTokenGrantV3' test.out

#- 231 GetRevocationListV3
$PYTHON -m $MODULE 'iam-get-revocation-list-v3' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 231 'GetRevocationListV3' test.out

#- 232 TokenRevocationV3
$PYTHON -m $MODULE 'iam-token-revocation-v3' \
    'HdDTQDEEE2mTsn1N' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 232 'TokenRevocationV3' test.out

#- 233 SimultaneousLoginV3
$PYTHON -m $MODULE 'iam-simultaneous-login-v3' \
    'steam' \
    'txB10d4Q8nlBthUS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'SimultaneousLoginV3' test.out

#- 234 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'password' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 234 'TokenGrantV3' test.out

#- 235 VerifyTokenV3
$PYTHON -m $MODULE 'iam-verify-token-v3' \
    'OVYrTdDq7IqbTVv8' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 235 'VerifyTokenV3' test.out

#- 236 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'BLsqQW8HSrEm5Y7j' \
    'I232SjktijiNzTUe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'PlatformAuthenticationV3' test.out

#- 237 PlatformTokenRefreshV3
$PYTHON -m $MODULE 'iam-platform-token-refresh-v3' \
    '8KdizXmrmK0sCUsq' \
    'xKocHomtjoU1kUqR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'PlatformTokenRefreshV3' test.out

#- 238 PublicGetInputValidations
$PYTHON -m $MODULE 'iam-public-get-input-validations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'PublicGetInputValidations' test.out

#- 239 PublicGetInputValidationByField
$PYTHON -m $MODULE 'iam-public-get-input-validation-by-field' \
    'edwIu1TSRr6r8mzf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'PublicGetInputValidationByField' test.out

#- 240 PublicGetCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction-v3' \
    'MedpcKhvHPlvYanG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'PublicGetCountryAgeRestrictionV3' test.out

#- 241 PublicGetCountryListV3
$PYTHON -m $MODULE 'iam-public-get-country-list-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'PublicGetCountryListV3' test.out

#- 242 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-public-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 243 RetrieveActiveOIDCClientsPublicV3
$PYTHON -m $MODULE 'iam-retrieve-active-oidc-clients-public-v3' \
    'qEkn9OEVwLWGT4MX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 244 PublicListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["hmzvRQb7c0vmjWq9", "fQqzulLGfQMqSLQD", "lRFYMVfiAMa6Pco7"]}' \
    'MfvikslpyL9BYLVV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 245 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    'znF6hMYfksp8VQhY' \
    'SFeBOp0ilGQFwHUt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'PublicGetUserByPlatformUserIDV3' test.out

#- 246 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    'ZugblT3aIDKn9qJX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'PublicGetAsyncStatus' test.out

#- 247 PublicSearchUserV3
$PYTHON -m $MODULE 'iam-public-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'PublicSearchUserV3' test.out

#- 248 PublicCreateUserV3
$PYTHON -m $MODULE 'iam-public-create-user-v3' \
    '{"PasswordMD5Sum": "ncm5igpAewbmnWk0", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "shYk3b5cAFVo85r1", "policyId": "b8Yp2QnuhQuIdvZd", "policyVersionId": "j6AspWBfRnLcLbp7"}, {"isAccepted": false, "localizedPolicyVersionId": "mcrDJ7u1rrRPcnG8", "policyId": "9rnNW1Yjfn8lY4Dn", "policyVersionId": "YRxY8ZhHeb0CaPFD"}, {"isAccepted": false, "localizedPolicyVersionId": "RpDP9xutntU8xHw4", "policyId": "yYJOCViHwunQwpC2", "policyVersionId": "eCFUAHZaYSvsWiNJ"}], "authType": "tqXltZF6aSRmHU5i", "code": "R3hXIbzWPKOkzftO", "country": "gDQAWhulbrDf7q4c", "dateOfBirth": "AnpmLiEu4CNtX2ln", "displayName": "qi7cHTSdGoLZbC3U", "emailAddress": "JruU4uIXBZsEYogF", "password": "WiH9z4E8zmaZ5cg0", "reachMinimumAge": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'PublicCreateUserV3' test.out

#- 249 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'L16HQdtAneXGgxNg' \
    '33ZIUrIkfmdXVvaP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'CheckUserAvailability' test.out

#- 250 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["QzzKdFg7N7piT8Vc", "rXLZnuMNpKEIs3GC", "9VTK7tkJWFpHt7Md"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'PublicBulkGetUsers' test.out

#- 251 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "Ku9Xwn5GHJDGatrY", "languageTag": "OMO91CYEjX867n9P"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'PublicSendRegistrationCode' test.out

#- 252 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "T9fR7mMuBXPDKCri", "emailAddress": "RKzTZ7TXAVRnUVbx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'PublicVerifyRegistrationCode' test.out

#- 253 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "EJcKHE764EwhQfxF", "languageTag": "KIOGT1WKSmLoA0IL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'PublicForgotPasswordV3' test.out

#- 254 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    'aESC1GJXsoBwqh0T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'GetAdminInvitationV3' test.out

#- 255 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "Xa2j7v3zQJoQLTAl", "policyId": "W75icIKUpXazsFrm", "policyVersionId": "aGNoi3RPTgWotLNz"}, {"isAccepted": true, "localizedPolicyVersionId": "EgE15XNuw6Y7sToQ", "policyId": "NkuZzJ1XBxw01iBB", "policyVersionId": "QukgQ94ZvPCWcMX0"}, {"isAccepted": false, "localizedPolicyVersionId": "V5pDANyJ184miBhd", "policyId": "VJt81fmLSyGuu5rb", "policyVersionId": "JVIwRMtwApGbXnR3"}], "authType": "EMAILPASSWD", "country": "xRNt6lKoMjCPtEKe", "dateOfBirth": "BWTm78Fn8TvZVTe4", "displayName": "L2lXrVPX6r5ZTcnV", "password": "VOKMApTcWsFRUlWB", "reachMinimumAge": false}' \
    'wGnpbx8MCIjKzylq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'CreateUserFromInvitationV3' test.out

#- 256 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "W8auyseP9wEEyYAn", "country": "HPp4XzVL5McglFCr", "dateOfBirth": "jxqqxAYqXG2V3baM", "displayName": "kZ9JCqBIkUID0EE9", "languageTag": "InZNLwwAhW2b5OHK", "userName": "tUv4lTkQNjxhXdj1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'UpdateUserV3' test.out

#- 257 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "CG0EBgst9Qu8Ofl2", "country": "oB8VTjF0pD3NHU8i", "dateOfBirth": "YUOtG5gbQSKW2Mdg", "displayName": "CH4bWxRF6fBPa6GO", "languageTag": "uV5z0p8jaJs2duQq", "userName": "awPrxi6F4elhy9CZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'PublicPartialUpdateUserV3' test.out

#- 258 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "94CAUVW8FoEf8tjC", "emailAddress": "jWc22qqDfNz59jHw", "languageTag": "SDQHadmAo0lzhPm7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'PublicSendVerificationCodeV3' test.out

#- 259 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "RmaOr6TLwVyE42Ap", "contactType": "Ab7CKt79wAopZL9C", "languageTag": "w6K9h55mwUvhdBOg", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'PublicUserVerificationV3' test.out

#- 260 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "CAvdnAcokJ0rzqX2", "country": "KJcYHgiFDxclBXap", "dateOfBirth": "6j73doCWxhubMXbx", "displayName": "NvT6wAffv4uzKAwi", "emailAddress": "I4wTxNIefCmtrxWu", "password": "293551nQBNKcqCkU", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'PublicUpgradeHeadlessAccountV3' test.out

#- 261 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "Rj8gQHEe4CO370Os", "password": "bzRKKPd6mjzLxllU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'PublicVerifyHeadlessAccountV3' test.out

#- 262 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "rFYn7cSuO7NxKHUH", "newPassword": "g0c4X7fHdITmN9op", "oldPassword": "aF0kh3pCRB3infEV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'PublicUpdatePasswordV3' test.out

#- 263 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'xArF7TB6A6a71zAJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'PublicCreateJusticeUser' test.out

#- 264 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'paPeudUtKPJUmAvx' \
    'BxJNPlvvYZw4MWzW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'PublicPlatformLinkV3' test.out

#- 265 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "FTuNPf5JCSDyYy4e"}' \
    '5qoTZxSoZbQUnUxS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'PublicPlatformUnlinkV3' test.out

#- 266 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    '6m68WL3HDL4yx5I0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'PublicPlatformUnlinkAllV3' test.out

#- 267 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    'euBsccHPA2v9XP9e' \
    'nfEX7lloLgIYqxFf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'PublicForcePlatformLinkV3' test.out

#- 268 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'SNJlHCjxLNnYUlGQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'PublicWebLinkPlatform' test.out

#- 269 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'sFpy9ZVlLIFwLgT7' \
    '8nootfUs9559ilm3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'PublicWebLinkPlatformEstablish' test.out

#- 270 PublicProcessWebLinkPlatformV3
$PYTHON -m $MODULE 'iam-public-process-web-link-platform-v3' \
    'cauhrw9Yn2z5cnbm' \
    '7z2Aa24yBTw3wfNG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'PublicProcessWebLinkPlatformV3' test.out

#- 271 PublicGetUsersPlatformInfosV3
$PYTHON -m $MODULE 'iam-public-get-users-platform-infos-v3' \
    '{"platformId": "yWf3VujS7Bq5bcfP", "userIds": ["W4pPZB9YXltCxyzt", "Unj17t3gHBXvjvzi", "exzOLbOWbtcJUxM3"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'PublicGetUsersPlatformInfosV3' test.out

#- 272 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "AWyDkA5LmART6kul", "emailAddress": "pM4SRtUE5P4kxmHt", "newPassword": "FbjqurHix0QYycDH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'ResetPasswordV3' test.out

#- 273 PublicGetUserByUserIdV3
eval_tap 0 273 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 274 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    '5we2Mx0sYCnYPT4i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'PublicGetUserBanHistoryV3' test.out

#- 275 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    '4mxc14iRfzJwKuc7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 276 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    'EpiQEzz5N5osRYO7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'PublicGetUserInformationV3' test.out

#- 277 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'wbYh7q02W8tkTURU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'PublicGetUserLoginHistoriesV3' test.out

#- 278 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'FmqNc8xhQqptccNo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'PublicGetUserPlatformAccountsV3' test.out

#- 279 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    'rRls7EC3nDnhFvDl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'PublicListJusticePlatformAccountsV3' test.out

#- 280 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "Fd7iyZpvWVJFK6Zu", "platformUserId": "vlzGCII156hIg0g8"}' \
    'HIxpzm9AcFhH4ZlY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'PublicLinkPlatformAccount' test.out

#- 281 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["Y3rEuHMWwQNmCQmG", "CF963CbsOawlRBQJ", "H6fNekhk077gxaj5"], "requestId": "5huTA6AvmW0567BF"}' \
    'qbrPIuxKmBXLi6Gp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'PublicForceLinkPlatformWithProgression' test.out

#- 282 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    'nqAeMvg3w0FQ1520' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'PublicGetPublisherUserV3' test.out

#- 283 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'WM3TxWXSdTiKdva2' \
    'UREoBSFtCLy2CqgC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 284 PublicGetRolesV3
$PYTHON -m $MODULE 'iam-public-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'PublicGetRolesV3' test.out

#- 285 PublicGetRoleV3
$PYTHON -m $MODULE 'iam-public-get-role-v3' \
    'G7JwJCDqkzOdFwLJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'PublicGetRoleV3' test.out

#- 286 PublicGetMyUserV3
$PYTHON -m $MODULE 'iam-public-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'PublicGetMyUserV3' test.out

#- 287 PublicGetLinkHeadlessAccountToMyAccountConflictV3
$PYTHON -m $MODULE 'iam-public-get-link-headless-account-to-my-account-conflict-v3' \
    'pIPxzLE1V9U1NgpH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 288 LinkHeadlessAccountToMyAccountV3
$PYTHON -m $MODULE 'iam-link-headless-account-to-my-account-v3' \
    '{"chosenNamespaces": ["7Oc44yjRdfqZgv34", "GqqjelcN0GJmPwUT", "WMx0MiPAjnWIhFrq"], "oneTimeLinkCode": "Sn4erXEtU1CaD8Aq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'LinkHeadlessAccountToMyAccountV3' test.out

#- 289 PublicSendVerificationLinkV3
$PYTHON -m $MODULE 'iam-public-send-verification-link-v3' \
    '{"languageTag": "sMCGBNhmUt6fzYRn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'PublicSendVerificationLinkV3' test.out

#- 290 PublicVerifyUserByLinkV3
$PYTHON -m $MODULE 'iam-public-verify-user-by-link-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'PublicVerifyUserByLinkV3' test.out

#- 291 PlatformAuthenticateSAMLV3Handler
$PYTHON -m $MODULE 'iam-platform-authenticate-samlv3-handler' \
    '85brTu8F7cuCPh1T' \
    'GZJmgWNHWnvOBRCt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'PlatformAuthenticateSAMLV3Handler' test.out

#- 292 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    '4onqRo2PnMSRarKg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'LoginSSOClient' test.out

#- 293 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    '4coy3AFpULIn21Nf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'LogoutSSOClient' test.out

#- 294 RequestTargetTokenResponseV3
$PYTHON -m $MODULE 'iam-request-target-token-response-v3' \
    '2FNgDWNC6yh7kgTH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'RequestTargetTokenResponseV3' test.out

#- 295 PlatformTokenRefreshV3Deprecate
eval_tap 0 295 'PlatformTokenRefreshV3Deprecate # SKIP deprecated' test.out

#- 296 AdminGetDevicesByUserV4
$PYTHON -m $MODULE 'iam-admin-get-devices-by-user-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'AdminGetDevicesByUserV4' test.out

#- 297 AdminGetBannedDevicesV4
$PYTHON -m $MODULE 'iam-admin-get-banned-devices-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'AdminGetBannedDevicesV4' test.out

#- 298 AdminGetUserDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-user-device-bans-v4' \
    'lrxKbsV4XtrI7SFB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'AdminGetUserDeviceBansV4' test.out

#- 299 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "EgkwHifMHYI581Hb", "deviceId": "F7fMX9lDXYxGRJM9", "deviceType": "2eX42WW2WKf5urEO", "enabled": false, "endDate": "ZZnV3zR7YxSu6add", "ext": {"ocg10Hy9jx7gBHTO": {}, "HHArjld0LnREsrrB": {}, "2pJ7V8BSrucjO3zv": {}}, "reason": "SM5KeVNHU9GcOivI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'AdminBanDeviceV4' test.out

#- 300 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    'fcCJt4U8VSgXoi9F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'AdminGetDeviceBanV4' test.out

#- 301 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": true}' \
    '0RQNaTEhMXMepgzY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'AdminUpdateDeviceBanV4' test.out

#- 302 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    '9jLiAdMiQ7eDMkeB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'AdminGenerateReportV4' test.out

#- 303 AdminGetDeviceTypesV4
$PYTHON -m $MODULE 'iam-admin-get-device-types-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'AdminGetDeviceTypesV4' test.out

#- 304 AdminGetDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-device-bans-v4' \
    'RMur18nCxiV9bQMH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'AdminGetDeviceBansV4' test.out

#- 305 AdminDecryptDeviceV4
$PYTHON -m $MODULE 'iam-admin-decrypt-device-v4' \
    'pPbvflI3LkRc1NgZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'AdminDecryptDeviceV4' test.out

#- 306 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    'aoYAaCCeRgtstsU3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'AdminUnbanDeviceV4' test.out

#- 307 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    'Qecxo4bQZO3P2f8T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'AdminGetUsersByDeviceV4' test.out

#- 308 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"count": 94}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'AdminCreateTestUsersV4' test.out

#- 309 AdminCreateUserV4
$PYTHON -m $MODULE 'iam-admin-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "Qm3W1De2McGd10we", "policyId": "fF0CJlH55RLEgeAs", "policyVersionId": "SpQdcmGHZuRVQ8tz"}, {"isAccepted": true, "localizedPolicyVersionId": "Dgf6eFAiqSkHi0BR", "policyId": "2ElF6z6eJKuOW61a", "policyVersionId": "kRFizqxCmudSXivA"}, {"isAccepted": true, "localizedPolicyVersionId": "3n478mhb2I2yBJeC", "policyId": "JghTrk68FWFzuLBd", "policyVersionId": "lrKjUbgZQfw6Zys3"}], "authType": "EMAILPASSWD", "code": "9Hs2L2wlpKBVURxH", "country": "efz77a9fntCNiHBR", "dateOfBirth": "UNCPSre5GmZzCQwi", "displayName": "lS3IxSjlyvR9PxG9", "emailAddress": "Lji2Vc88W8aLjIxV", "password": "GpdOqguxvRwI9ZBT", "passwordMD5Sum": "ipMRlhK9DMMaI4ry", "reachMinimumAge": true, "username": "BrMSP31wAkVH75Uc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'AdminCreateUserV4' test.out

#- 310 AdminBulkUpdateUserAccountTypeV4
$PYTHON -m $MODULE 'iam-admin-bulk-update-user-account-type-v4' \
    '{"testAccount": false, "userIds": ["GF247cbBLjUr5z03", "wxB3E9hrE9f9COFr", "Or6wJDBwIDsJHNg6"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 311 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["TvNGjwI4TbTwBufU", "orJouduhCEJ5XiKD", "IE9YugcupLxVBcRk"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'AdminBulkCheckValidUserIDV4' test.out

#- 312 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "fhRuqkOTHSia7oFd", "country": "1fEmDuyAsQGzwJR5", "dateOfBirth": "poI718RQnj4imu6X", "displayName": "FfRcWDXhq1YmGeyg", "languageTag": "r2S4Yw8NmPaBeryz", "userName": "X2hOPVVFqVqxjq1i"}' \
    'G3TySOh8SI75oXby' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'AdminUpdateUserV4' test.out

#- 313 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "q8FBbur80QwnlgAV", "emailAddress": "fqz6gQJh8sn0bVWR"}' \
    'kvmAemh8lioBR7xT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'AdminUpdateUserEmailAddressV4' test.out

#- 314 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    'XcEIFod3lCzvjHzD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'AdminDisableUserMFAV4' test.out

#- 315 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'HOrSJ1vbB7LRHd96' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'AdminListUserRolesV4' test.out

#- 316 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["dGLgkfrZveFMWAFT", "7l0l1jaOAMCzbsoI", "gmKwwMDQPjUIosq1"], "roleId": "l6xo0D4JRbNqO6Iu"}' \
    'P2PY5hhX6uNah9Jo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'AdminUpdateUserRoleV4' test.out

#- 317 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["HPj7jFWxSv1lYylY", "AiZ8c7Zd7EUoezOL", "w8C1c5bBB3XZ7Col"], "roleId": "KwlsNvtFuunQsvdX"}' \
    'GlD40xxIyVwYjn6d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'AdminAddUserRoleV4' test.out

#- 318 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["lC9Kfh9gHuloyce0", "cLJu4ljPWlCWTuGO", "8MnfOQu3wdT4Aodp"], "roleId": "95o1RkX7iW7VpCng"}' \
    'WAv5DAG8dPdkKgQq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'AdminRemoveUserRoleV4' test.out

#- 319 AdminGetRolesV4
$PYTHON -m $MODULE 'iam-admin-get-roles-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'AdminGetRolesV4' test.out

#- 320 AdminCreateRoleV4
$PYTHON -m $MODULE 'iam-admin-create-role-v4' \
    '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "zUZR2rFIAuALNhNC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'AdminCreateRoleV4' test.out

#- 321 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'yscsMBRLsWadk2OQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'AdminGetRoleV4' test.out

#- 322 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    '421q7Nb1vrKthVvU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'AdminDeleteRoleV4' test.out

#- 323 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "2bwVVxJ62Q5AOAOy"}' \
    'L65cPaOZA8BG8KcV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'AdminUpdateRoleV4' test.out

#- 324 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 100, "resource": "HAM8gSdIybKUByHB", "schedAction": 51, "schedCron": "mz3KPICya5Fk5TPa", "schedRange": ["EbX29cV8v7MXctih", "txMnIr4b7jyfL3zM", "kklGCPISlsnVA6z0"]}, {"action": 43, "resource": "hQW3I1y9tjRLVOXB", "schedAction": 78, "schedCron": "mswrToyBIQumxDfA", "schedRange": ["xNqCUtizYM97ebZc", "YqwfIHPWMkOmrT5H", "L16jMwECnmwJv4rp"]}, {"action": 33, "resource": "f9MICxX7xKyCfgwS", "schedAction": 85, "schedCron": "v9K8c1zOlZg30pag", "schedRange": ["fP0FfOMBOpeQT4zY", "IbU4i9mLyX46Alt0", "8rrnG8y2ScXkwjpA"]}]}' \
    'p82pGcxvXaG9LzHp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'AdminUpdateRolePermissionsV4' test.out

#- 325 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 80, "resource": "RvdPR8gx2rX5dck8", "schedAction": 80, "schedCron": "WxnR0YaMsF3f5KLt", "schedRange": ["pTSsPMGDZTOwEP5B", "hh0NStWIggmhfAzV", "dNYP7Ao1z7FeJM2f"]}, {"action": 59, "resource": "XGk7JObSHksRkabp", "schedAction": 26, "schedCron": "eL7EpWtPifmO0JK4", "schedRange": ["dP1aZFiSkmhwVVMG", "kXNwMYwFyljy5bYQ", "dQ87hUHA0FJZwP8G"]}, {"action": 37, "resource": "IEtDI6MbhxkQdezb", "schedAction": 25, "schedCron": "jK9RsyoqT3adB48J", "schedRange": ["xp2zaItg9jTNZvpF", "EUI21aSaIsMyLKPP", "IZx0zdNAagipZwia"]}]}' \
    'BrFrXtGMjujfHZB1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'AdminAddRolePermissionsV4' test.out

#- 326 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["gMI1B8DXb37DffTZ", "7yQz337LLNCjIySe", "36SA5dxATLv5PkLv"]' \
    'raRzChdjDGdlk2A2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'AdminDeleteRolePermissionsV4' test.out

#- 327 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'jHbAPNGInvbnf4ew' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'AdminListAssignedUsersV4' test.out

#- 328 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["KFFLoGggX4gQWyZo", "cvYfr0Rnl02R1IVN", "naK6KS71Xs1BphA9"], "namespace": "BXpKYgF9OuigDP0V", "userId": "jmy7j2BrdCAm3slC"}' \
    'waBqHpE55sjxBGij' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'AdminAssignUserToRoleV4' test.out

#- 329 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "w0dQtZNonMrPkzUe", "userId": "9SglAJGyZS0I8Fev"}' \
    'JiT98HUBp56Q4WET' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'AdminRevokeUserFromRoleV4' test.out

#- 330 AdminInviteUserNewV4
$PYTHON -m $MODULE 'iam-admin-invite-user-new-v4' \
    '{"assignedNamespaces": ["xtGMs5tPKPuK0K4P", "iMDTR7LxihuOn57i", "o0d9dG3yzaNbGeAS"], "emailAddresses": ["X83SLiIbAP2qyUnH", "nfrEdDfY4TTxu8go", "ZgsX4RwfM4qnUdcQ"], "isAdmin": true, "namespace": "jaRXEdWgS12bSbPg", "roleId": "OCWUogizeWOPUMrq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'AdminInviteUserNewV4' test.out

#- 331 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "gEIsMwNbfti0LoTB", "country": "cNzyoCSw1t653G3y", "dateOfBirth": "dYmGzvx9bSqqyAPh", "displayName": "a5b6PQTPTytHeeXo", "languageTag": "7gOFVLZCBWuVIROZ", "userName": "uqdJBi8pkn98VtLN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'AdminUpdateMyUserV4' test.out

#- 332 AdminDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'AdminDisableMyAuthenticatorV4' test.out

#- 333 AdminEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'AdminEnableMyAuthenticatorV4' test.out

#- 334 AdminGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-admin-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 335 AdminGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'AdminGetMyBackupCodesV4' test.out

#- 336 AdminGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'AdminGenerateMyBackupCodesV4' test.out

#- 337 AdminDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'AdminDisableMyBackupCodesV4' test.out

#- 338 AdminDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'AdminDownloadMyBackupCodesV4' test.out

#- 339 AdminEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'AdminEnableMyBackupCodesV4' test.out

#- 340 AdminSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-admin-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'AdminSendMyMFAEmailCodeV4' test.out

#- 341 AdminDisableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-disable-my-email-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'AdminDisableMyEmailV4' test.out

#- 342 AdminEnableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-enable-my-email-v4' \
    'kaIQJfkFDhSeSGXt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'AdminEnableMyEmailV4' test.out

#- 343 AdminGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-admin-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'AdminGetMyEnabledFactorsV4' test.out

#- 344 AdminMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-admin-make-factor-my-default-v4' \
    'ZU5SuIhMSaDRp17d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'AdminMakeFactorMyDefaultV4' test.out

#- 345 AdminInviteUserV4
eval_tap 0 345 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 346 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "Hcjrb6qNeKpOxPrl", "policyId": "G9svdqsiVTqPbzY1", "policyVersionId": "yxl7zeEpmSPO6Kwl"}, {"isAccepted": false, "localizedPolicyVersionId": "Qlj9Ii2jARwzowk9", "policyId": "OoiPdnq9KBqBwiNC", "policyVersionId": "snK8CcO1OHbpQZtw"}, {"isAccepted": false, "localizedPolicyVersionId": "3EwLre1bL4dJnkRL", "policyId": "JbMvOGSd7uMrmQ2S", "policyVersionId": "aLd6M7TM3wnJyExu"}], "authType": "EMAILPASSWD", "country": "2ENn1RLi5iMPnbg7", "dateOfBirth": "o1zYpqUsliPyXZGY", "displayName": "IW5ZDtWbdkzPP47R", "emailAddress": "cUIi2CoNj4EG2emx", "password": "KQk8cBrt5E8k8rzD", "passwordMD5Sum": "Z08j6ICP75cm8YDC", "username": "hFi3zLvfQWC85MxW", "verified": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'PublicCreateTestUserV4' test.out

#- 347 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "vW0veFl3uU1aMD0m", "policyId": "czWxc8f1s2QPMMZs", "policyVersionId": "f2dvKZyHChRPHvdk"}, {"isAccepted": false, "localizedPolicyVersionId": "1XV0Op0damycnTUO", "policyId": "oMkOppZNOkqxc42H", "policyVersionId": "Kv5wvtPJVsuzaBci"}, {"isAccepted": true, "localizedPolicyVersionId": "xwzuIpGBYHTHoSVx", "policyId": "gQCbpZx5yMGIQ1Zx", "policyVersionId": "VIefYlKBJyQMqUEf"}], "authType": "EMAILPASSWD", "code": "G48bk6PwH1tdEAJS", "country": "qXA0Wv0zWGvkc6by", "dateOfBirth": "p3mvyYT3GuaZVTxB", "displayName": "lw1IWeXKFT4rfSbb", "emailAddress": "SlDPGf9Fn32SJNPZ", "password": "kEfkAcJTMS4pVRcC", "passwordMD5Sum": "HIGfmCMTr9ACnI2s", "reachMinimumAge": true, "username": "veQSDWnMQGaYRxFW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicCreateUserV4' test.out

#- 348 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "lLGKjDHuXt358gzq", "policyId": "RMuMPrIekxq58fik", "policyVersionId": "q83hqJ7HP63Se6kV"}, {"isAccepted": true, "localizedPolicyVersionId": "5fkl60ImLBv6nUU0", "policyId": "r1rfX9stpvJUuyPd", "policyVersionId": "zx8BM2wEgTtLRT5s"}, {"isAccepted": true, "localizedPolicyVersionId": "wpagvERZI6Cqhckn", "policyId": "hecNv2Tw6YKhVrYk", "policyVersionId": "MqXkQ7qlaJjSYEse"}], "authType": "EMAILPASSWD", "country": "tJaRyDlP9qIZJ5Kr", "dateOfBirth": "x6KkHagEugKJxkU8", "displayName": "Y58COtTNjnNSikJD", "password": "g6ujKvq0CIa1YCK9", "reachMinimumAge": true, "username": "lMeQprfgLGkHX1td"}' \
    'BjKmCBXETZwqdzAX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'CreateUserFromInvitationV4' test.out

#- 349 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "28DikGk8cWiX44az", "country": "SHcwicUVq2XPljTZ", "dateOfBirth": "j5R0yZSVQ8SSeJ4q", "displayName": "y4PIKleuV271bwZ4", "languageTag": "niLSzQnv0C00dtNG", "userName": "GzbGYSYo9fY2EBZA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'PublicUpdateUserV4' test.out

#- 350 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "HQXc4Xcae7VKl0AR", "emailAddress": "zGEArlfE1NSmtcAD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'PublicUpdateUserEmailAddressV4' test.out

#- 351 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "oZvd0La7P4JI4H7u", "country": "DzkOHTdnUtdrRcs3", "dateOfBirth": "GeOsKPNlG7rEXi6L", "displayName": "EqJERpbxEq07txnv", "emailAddress": "ZZeAf7QBuZK5GJlB", "password": "ncg8tQnJOKHC16xj", "reachMinimumAge": true, "username": "4kiU3N8556ll2LQW", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 352 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "pnlam2EefVopbpPh", "password": "sana0uXG7GUTV1Bw", "username": "gkLDj4pjVktyoNSs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'PublicUpgradeHeadlessAccountV4' test.out

#- 353 PublicDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'PublicDisableMyAuthenticatorV4' test.out

#- 354 PublicEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'PublicEnableMyAuthenticatorV4' test.out

#- 355 PublicGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-public-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 356 PublicGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'PublicGetMyBackupCodesV4' test.out

#- 357 PublicGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'PublicGenerateMyBackupCodesV4' test.out

#- 358 PublicDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'PublicDisableMyBackupCodesV4' test.out

#- 359 PublicDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'PublicDownloadMyBackupCodesV4' test.out

#- 360 PublicEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'PublicEnableMyBackupCodesV4' test.out

#- 361 PublicRemoveTrustedDeviceV4
$PYTHON -m $MODULE 'iam-public-remove-trusted-device-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'PublicRemoveTrustedDeviceV4' test.out

#- 362 PublicSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-public-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'PublicSendMyMFAEmailCodeV4' test.out

#- 363 PublicDisableMyEmailV4
$PYTHON -m $MODULE 'iam-public-disable-my-email-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'PublicDisableMyEmailV4' test.out

#- 364 PublicEnableMyEmailV4
$PYTHON -m $MODULE 'iam-public-enable-my-email-v4' \
    'EHlzyd0SarkhltUx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'PublicEnableMyEmailV4' test.out

#- 365 PublicGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-public-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'PublicGetMyEnabledFactorsV4' test.out

#- 366 PublicMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-public-make-factor-my-default-v4' \
    'gbN5eElQNESFLD8h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'PublicMakeFactorMyDefaultV4' test.out

#- 367 PublicGetUserPublicInfoByUserIdV4
$PYTHON -m $MODULE 'iam-public-get-user-public-info-by-user-id-v4' \
    'Cc9onSNjbQEqFGwn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 368 PublicInviteUserV4
$PYTHON -m $MODULE 'iam-public-invite-user-v4' \
    '{"additionalData": "DG8kz4kvEv6tNjGR", "emailAddress": "hrmRAxRGeIKGlCJm", "namespace": "DXpjyvLSHB1y3klH", "namespaceDisplayName": "uAGnidOyGuS0OG7o"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'PublicInviteUserV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
