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
iam-request-game-token-code-response-v3 'VzIkaQEl1iUProNB' --login_with_auth "Bearer foo"
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
iam-request-game-token-response-v3 'jbtBJUK5fE3OufPS' --login_with_auth "Bearer foo"
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
iam-public-invite-user-v4 '{"emailAddress": "Vtt3RVTl0tR00oQg", "namespace": "cHdGGK3x76U1EIck", "namespaceDisplayName": "lttmrpgF5szl0sMY"}' --login_with_auth "Bearer foo"
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
    '[{"field": "8es36r1FgR70eNLH", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["EFd8xArWJuCAIfNB", "SHgpFNw9K9pmAIc6", "VSfE9nbE2PMv12ZS"], "preferRegex": false, "regex": "kujxbCu1HFaj6Vxs"}, "blockedWord": ["3GuA4S1dS7H7yIS7", "b5TSDRIoMg7Dc5AP", "zfzXDELJFaIaEMW5"], "description": [{"language": "bhJyL72WDyhBsCCb", "message": ["nfihnXKxGxaupnTT", "q9ihZkvFKfSHQh8I", "9xk3sFl0cbuCRM69"]}, {"language": "XKkLwioRaKnWhlh8", "message": ["0BhYe2fJDS6T75Q4", "ulonMFjmYqE1wJhf", "ogWg2Apm0sUy18aW"]}, {"language": "n65Co0vdCk8so6JS", "message": ["aZAIadKDEZywonA2", "SrEdN2tmGuX6r0gB", "VUUeKKlPKtE6gnYx"]}], "isCustomRegex": false, "letterCase": "2bTcgaKoccaSwWcZ", "maxLength": 25, "maxRepeatingAlphaNum": 42, "maxRepeatingSpecialCharacter": 53, "minCharType": 46, "minLength": 59, "regex": "WrCQt86Jrg8tLAJW", "specialCharacterLocation": "pcyNkUvqn6eXr6FN", "specialCharacters": ["bKJ05Orya6LSSUlu", "gIAknXcSaVYcAYp7", "qSiDvsfMUOpWv46s"]}}, {"field": "XvpOjrpRo4mYrCeQ", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["oIH1gBCWVFrvls0Z", "wosKhDlLfTKxpVOX", "vGSrdkqddI3ezqu6"], "preferRegex": true, "regex": "B0sL2xt6fX9j7rhZ"}, "blockedWord": ["CAlDlVKBsLZiBRXs", "zE7CL1cQCSoqHvH7", "g63cOx6yrIw37pKO"], "description": [{"language": "LrF5i3gr3Cc4M2O7", "message": ["NrTQO7KLdZDGwqx7", "T3l1ut2oyolliYsT", "JUmpscwLcUml3Kuo"]}, {"language": "MKh7tprnacA34xmI", "message": ["OjFLgKR4LjEWhOSc", "vtQ92iD02YMvEUNf", "oL7JCcMo7GxxXdbY"]}, {"language": "CRexPekTsQxMTfaS", "message": ["ot7aohFYy4VxwHIJ", "9gzxqAw4vBGQAeh0", "VTiTP4PSrXUS6jYI"]}], "isCustomRegex": false, "letterCase": "lsQFD43Df5qUZOFz", "maxLength": 31, "maxRepeatingAlphaNum": 37, "maxRepeatingSpecialCharacter": 64, "minCharType": 49, "minLength": 7, "regex": "YtgxplHTPLzynjFZ", "specialCharacterLocation": "gF3erw7UsyHq4bBb", "specialCharacters": ["0n1JhPUS8BRPGV9n", "769zLJdKMexeJc7N", "vgTSgKjCxZjKf8NA"]}}, {"field": "4cGUaDfy9XnH2r0E", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["nKsWCPccAFn5CEPo", "H6opK5DSO8JyX4IE", "1z3rDwZ1HKsOpyq8"], "preferRegex": false, "regex": "HbfnAdtkujxHff7n"}, "blockedWord": ["1yaNCcjgFhS0URBh", "l0L5FCbOn46W2B2u", "PQLrt2t6bVpCgKvP"], "description": [{"language": "XSDufmKh783cV54J", "message": ["sVBRB0rY0xfWddAC", "yHSmo4KX9TPO3K1k", "5ZM8btmGsgXNXbpq"]}, {"language": "xh76Af5JSwjw2fE2", "message": ["g6jXV7oai2oDm9Fa", "P0HJ98tE4UyoQg0b", "0sGOkzxVt15LKmkQ"]}, {"language": "7YBhsOuJ0ypkkt2G", "message": ["4eFh2YNsdoxpLTBM", "9Q8t829Ido1JyveS", "RiBq23kyH9jQbHWk"]}], "isCustomRegex": false, "letterCase": "J4RwH3EdKmYtbqQH", "maxLength": 82, "maxRepeatingAlphaNum": 56, "maxRepeatingSpecialCharacter": 11, "minCharType": 5, "minLength": 71, "regex": "7OYTylFRAJKySnC0", "specialCharacterLocation": "cfPl3Z2zSBbs4PAV", "specialCharacters": ["72u8AxE2IQeoxYV4", "UcYzswAGpXqQxctu", "VaqPJGAHEZmuQrZ8"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    'GaQ4OZ2nDodm4TNs' \
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
    '{"ageRestriction": 70, "enable": false}' \
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
    '{"ageRestriction": 3}' \
    'Aj6IKSYFdJwgZsRP' \
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
    '{"ban": "OzwuDSdGl1A2vaNe", "comment": "DiSqTfmAVg50kOdJ", "endDate": "agEmTuaxlxgywkbd", "reason": "OsyxX1tfW488oYUT", "skipNotif": false, "userIds": ["ZLZZS7snx0Q2Gd8m", "7Y3wiNloJfey3HXL", "6SjljNPTXA3qbg55"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "SyienCODZ0mnOpPT", "userId": "VxEgBFzG8tlkxWKC"}, {"banId": "U1XN4gl7yHvEqpJS", "userId": "rDXVwCkhOQ161TFj"}, {"banId": "ROYJm75VIuCOCkt2", "userId": "W1DfI8QtgODk9K6D"}]}' \
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
    '{"audiences": ["cMnyCPn1FylWdaNV", "1VaZTkbbuWiiA4UT", "DgS2SVEo5M80LLbk"], "baseUri": "u9GYH4ijqOVM50tC", "clientId": "qkZfsSxAbDJ7sHCL", "clientName": "up8pmEosOXglQwwd", "clientPermissions": [{"action": 10, "resource": "ZUeelXYyNrXweiCn", "schedAction": 60, "schedCron": "mE3VVsQ1fm9EUdia", "schedRange": ["RjuLsKZoqnpKwhpZ", "Vdw5UMa8ymxtEFLw", "ELCY2vIddlxnA1Vy"]}, {"action": 27, "resource": "UC2ecnpUDqvLQixP", "schedAction": 76, "schedCron": "MvoY4jWH9dFmOHW0", "schedRange": ["j9suukPE4JwQONQ2", "vCbMn0Oia336uiiM", "TAductvUfVwLahtR"]}, {"action": 8, "resource": "gZpbz77y88rUFum2", "schedAction": 56, "schedCron": "cA8iKcF0bkfjcTEF", "schedRange": ["XcTwEtnHxP5pVtN4", "jNVIdruEA39uCJzs", "E8WObt6t0w8LOBxE"]}], "clientPlatform": "15JYj4IqWK09l4wk", "deletable": true, "description": "TTiz7yrIvQj2isN7", "namespace": "bRwcr16lW5YwgZpj", "oauthAccessTokenExpiration": 23, "oauthAccessTokenExpirationTimeUnit": "pUwnGptHUplxzaDa", "oauthClientType": "9PDwhu31d8eOdtrf", "oauthRefreshTokenExpiration": 34, "oauthRefreshTokenExpirationTimeUnit": "uQqm9wM7mgTtUdPV", "parentNamespace": "cQijMBhs0kDP6d3n", "redirectUri": "uUZ41mSeS9SnGqhJ", "scopes": ["OvykBcDpzD9zh6dt", "PK4fVHLMvrCsH3RY", "xH2Up9VthPjFrK7H"], "secret": "ip0eONFDgUPShG8w", "twoFactorEnabled": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    'nLsBKGsALPuCOyph' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'UUAV95708zaP0wpZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["gQEvFzox9wHocX3D", "RWobEoGr8W97KBed", "cr6PM51z7i0wQ9eg"], "baseUri": "K2t46EG8I2lTviKb", "clientName": "OgVuN3nhkn6QIesN", "clientPermissions": [{"action": 30, "resource": "2AGeidXRRnIAJfKV", "schedAction": 20, "schedCron": "jqwgKvfXXs8pDqm3", "schedRange": ["1AZSRkuw6q8FgqG4", "6RsFK7eYlSU3vYcH", "ZZjFegVnZOn0tk4I"]}, {"action": 55, "resource": "97u9MVUii4KpYcb1", "schedAction": 53, "schedCron": "6b8WtaMVvLbG04KK", "schedRange": ["nh3jvW0Qp3kTyL4C", "sLwiWUMcpxn4B6Xo", "TNMuqZTHwo1IAJQp"]}, {"action": 2, "resource": "Lfkut0wnT24wh59R", "schedAction": 67, "schedCron": "u4G6bXxp0gYZyF9f", "schedRange": ["JBJkSOrF9Dg4FcDw", "BGyBiHewZkwEeuzB", "BRSknxyWkZObuvig"]}], "clientPlatform": "8sMuss76ezTrsDZN", "deletable": false, "description": "xqa9XM2gY14iWk12", "namespace": "Jffk8dwKNPUOHNZx", "oauthAccessTokenExpiration": 79, "oauthAccessTokenExpirationTimeUnit": "omguUqeuZh5qtrRb", "oauthRefreshTokenExpiration": 81, "oauthRefreshTokenExpirationTimeUnit": "VnMxge2inL8fBFP1", "redirectUri": "ABaIKrEt8d3o7cTS", "scopes": ["9OIIMErnNTLXHrsO", "FsbhRow4iaYKy0Ij", "sDgbJ37DN2lDvdh7"], "twoFactorEnabled": false}' \
    'fVQPWX1NPO5Wn7rN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 67, "resource": "JhDsDefAS09VyQB1"}, {"action": 43, "resource": "IttsRezyY9GB5sf9"}, {"action": 42, "resource": "ALBmvdncQkcZb8cW"}]}' \
    'dVH9bww15zZsaYrJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 53, "resource": "BV8DpbjGts4UZDTf"}, {"action": 15, "resource": "GC9RhzMC7V8BEphn"}, {"action": 89, "resource": "UmnfdOAmu1dX1NqD"}]}' \
    '20RUvvYeJZw6QZFN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '41' \
    'wFCnqpvNesGiVnt9' \
    'p2to7Yja1soDE1K0' \
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
    '{"blacklist": ["SvGrMYwPmPXC2LfL", "2m5rP2A20t6foPPH", "94SUinY5diUlqgvY"]}' \
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
    '7dPPyahppgxJhk4E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 135 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "dTZ000rS92594HLv", "AWSCognitoRegion": "WFsXHtMP0k9L5dRE", "AWSCognitoUserPool": "QbCqfh0gpABFBER6", "AllowedClients": ["WNcDOsRzBkf9A6Hj", "CnFRdSihcvszzQLZ", "Bktk0siMup01kyaF"], "AppId": "wwD7wecuQb4GNQHV", "AuthorizationEndpoint": "ZMKGBnzh4suaGIzt", "ClientId": "tTncVBf5g3oeuHiN", "Environment": "yLkfPQPmjUkvSs5Y", "FederationMetadataURL": "mIejozmG5HlrIfMA", "GenericOauthFlow": true, "IsActive": true, "Issuer": "phhU315LUC6HSMQ3", "JWKSEndpoint": "2UznXNd6ve29lqqt", "KeyID": "cLJW9eTJvKNDFrx6", "NetflixCertificates": {"encryptedPrivateKey": "LabyDnqXjXKPIcxh", "encryptedPrivateKeyName": "0x7T6RQGnnW4ugGX", "publicCertificate": "6mKBbgTD9xL07Zzz", "publicCertificateName": "Is3Jke34ZAUuLP89", "rootCertificate": "7ooMLnemwKAvgDXN", "rootCertificateName": "rFEE4Jf4hQpsLOcL"}, "OrganizationId": "tZw0efmEVcW7mxbS", "PlatformName": "5UOoICxQMit8555N", "RedirectUri": "iy4NNFpRE5pS85yT", "RegisteredDomains": [{"affectedClientIDs": ["IRWvLRy58UKWPv3F", "7S0wCVlYQi9cfMCe", "Nnu6OIG1PPLRDEXL"], "domain": "XZWXvqNCHvNpeMjM", "namespaces": ["zguq6HFIqaqwH9J6", "JLb5f3SBMyJUdwEB", "RrHAWUFqTooGGnPE"], "roleId": "gY0t7QQWl42byOwX"}, {"affectedClientIDs": ["gKyPhXmcysae8HpW", "H4xiz3fWthJSu2pU", "IIuPLFAtcWhjAP57"], "domain": "QbWvSSp71zEPPfmA", "namespaces": ["QiqRRC2caquMRtQO", "ILcaDqUITBHQR5IS", "NoFR3GUxdMuvmL0U"], "roleId": "BfwzaaeP3Wd0Wrb8"}, {"affectedClientIDs": ["s3GW0CY0vAfbq8xo", "Curq4lpHXrbVBh60", "NUA2aKQwnXrmi6ya"], "domain": "8u4sQPvaf1AcweR7", "namespaces": ["tJW3MLMob1hUnIzI", "pUM8KK1kGFN0NUNG", "KxdlAUDFQuGPzAuT"], "roleId": "7M6OBrNwioKnXPVZ"}], "Secret": "aDcXsV1TnsZioDiB", "TeamID": "gprzahPB0FKMa0Ye", "TokenAuthenticationType": "yNBQWUHDBnBeePkq", "TokenClaimsMapping": {"g6Zt1Lr5BlO8K6LH": "4dSaa8XYHug51ZTo", "gG0N7Hvnuq1kJ1kp": "HcQtnIc9z70LFQMI", "0oZuEjY0rNBbbB9t": "xAvtRQvqJacXR2Rf"}, "TokenEndpoint": "4noXDFaEUkPUBnB0", "UserInfoEndpoint": "ZEJH3ebM71Tg922x", "UserInfoHTTPMethod": "iBgHSka0Pz7I1WkI", "scopes": ["a0oZ1nXpW1l70pcZ", "gIn4lPghHyMEHBzA", "rbyW10NkJFQxuMHn"]}' \
    'fOlX6HYVEiaereFC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 136 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    'PJU2wEzUYUTmZ8JS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 137 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "MeNmRocp400RZe8B", "AWSCognitoRegion": "zx9aGEI22BTCZs97", "AWSCognitoUserPool": "TJI8GPrM24F3celF", "AllowedClients": ["gM62HQtgzQhO3nR8", "j8DlP6OGbn8vmfMY", "GLt1AjKhh3JMX7xS"], "AppId": "rz1EH6X2SM3xzsNr", "AuthorizationEndpoint": "JzWBcdFlo7oAsOlf", "ClientId": "LB1J19b5rTfiL2P3", "Environment": "r1a8KIJH33aKkPuW", "FederationMetadataURL": "D59MgTy1HA58Jt5N", "GenericOauthFlow": false, "IsActive": true, "Issuer": "ROjSKFEuZo2ElXYS", "JWKSEndpoint": "S4ezBRSiOyReviDa", "KeyID": "xlPdhwmcH03yoMxz", "NetflixCertificates": {"encryptedPrivateKey": "RR6xd9rTh3ureaIb", "encryptedPrivateKeyName": "xM3Wev9pZQjWAN0t", "publicCertificate": "ny16ZHZtuSJGQCrM", "publicCertificateName": "7JEMRPkdTcAzkIln", "rootCertificate": "dN5xeayr3vUKMuIi", "rootCertificateName": "z2MiAAKcvAXnxnH0"}, "OrganizationId": "QIhoJRY807VmBT4w", "PlatformName": "ZXQZZrSsuYiIPei0", "RedirectUri": "pXglJYnKkoCAZuol", "RegisteredDomains": [{"affectedClientIDs": ["AWnxkImVbDP0QX31", "gI7VmnGIRMvXe6Bi", "phIFe2bzr6qQw6fS"], "domain": "ESkM19OPMBb12gpm", "namespaces": ["ShlmIt2nfhUaZGqj", "slu59GT2E6AacmZR", "XZm626POXWVj3KP1"], "roleId": "mX0iYHXBU3Uk2tQm"}, {"affectedClientIDs": ["307IORTyHnLYDAAg", "1YA4kZURmoGgxVRM", "Pf8g1rbhfIMStMnS"], "domain": "qrKWYOuITlYS2RYa", "namespaces": ["D9WNKGhbLhjz1v0R", "BIO2rkJGmPaK6HEV", "IQJd3930TGewjRyf"], "roleId": "o4nWVZZbKFsKOmgE"}, {"affectedClientIDs": ["hjH2wFzCpxxJLfAg", "5cFT0gHAkltcR3eH", "FbiAluHv7Hssd05p"], "domain": "HBJX5ln8PZbYVD8R", "namespaces": ["iaTsdD4d3kSbTkHP", "MUvOAUXkw36cr2WJ", "QqS7Tq4YIyZAFQ6l"], "roleId": "Zfa2jdNvpWf32JS1"}], "Secret": "av9VNpVLT0LvqcfS", "TeamID": "dO1nAjY5FvADb3GU", "TokenAuthenticationType": "Qgci632w6LUrHuKB", "TokenClaimsMapping": {"oNTpPQXDNHto74Gc": "mVf0fbCU9QdPuWeM", "EeL0EJG67g4W1eAm": "DxP23qstMuikKc6V", "NU8570siWm3V9sir": "E0JOQxWeHypqCWMD"}, "TokenEndpoint": "PRI2cCk8zHR8VyCC", "UserInfoEndpoint": "0EQwE0cXokXbwKDt", "UserInfoHTTPMethod": "VmrYQu7hZvHfiT9s", "scopes": ["9pK8HuUY1QQHQ0NC", "EddJtx6GV01vD7lN", "LxlpvqaB9P9Gaukf"]}' \
    'CEIeSBLhTfzigzHc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 138 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["RuJgYaj4I8Dzyh1N", "0JEKNoMtHvjM7X1f", "jzknv2HZMIL2P2bh"], "assignedNamespaces": ["14LroFTnAuujPeP9", "N0vdVB5a2XkS3XQf", "MuzZh4AhZRe2hgU5"], "domain": "6xtyJtnbTDXu7Fbl", "roleId": "eSP5PcdOuq0m0rva"}' \
    'kR8rcwojLRjhcaJ5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 139 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "6nGlYZ2tod2BGBXj"}' \
    'NyRCtPOr1FU3QZy3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 140 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    'gdDms3kb1htW0UGJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'RetrieveSSOLoginPlatformCredential' test.out

#- 141 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "pwQZlXuzu3m9u67J", "apiKey": "jCDwg186hGWKfO9M", "appId": "noT3t99HmcxzjDhT", "federationMetadataUrl": "rcBKtU956hOg8ouk", "isActive": true, "redirectUri": "0nE7M36mI9u3EeZt", "secret": "LQij2JXsqdXfhZTT", "ssoUrl": "aCeqGv7meuQhJuq1"}' \
    'C6JHkWMSUbqByWN2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'AddSSOLoginPlatformCredential' test.out

#- 142 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'BCnRz9w2nur0B9jK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 143 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "aunAcylsau7wRQmL", "apiKey": "4i3eRyIECEDa1I4l", "appId": "wXqwPfq3VzHQjtol", "federationMetadataUrl": "x64w1gyvjacKtGqx", "isActive": true, "redirectUri": "noAXRlcq0mYWKQYl", "secret": "qMmu2pvF6rP03bQa", "ssoUrl": "q1cT88H6RCW8gJmG"}' \
    'zDlqxtLsR2AGOiPh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'UpdateSSOPlatformCredential' test.out

#- 144 AdminListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["Nt2IdH8aYYUT6mma", "833TDzk66ix88sAU", "rXr7MXxCvyy7caxz"]}' \
    '4MQrODLNlxiEjQBC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 145 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'Zx9DJ4V97SJLlrwX' \
    'mIGamRCARuFLx4rV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'AdminGetUserByPlatformUserIDV3' test.out

#- 146 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    '4CXVMrDYKe2eTf1a' \
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
    '{"bulkUserId": ["xo16GqT2vSLLiMvc", "u39YZJypWzpNXgno", "KIz8O8NglJtZTh28"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'AdminGetBulkUserBanV3' test.out

#- 149 AdminListUserIDByUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-user-i-ds-v3' \
    '{"userIds": ["0vflFMxIhlIT8Agy", "ZJ16MMd2bzOrTn2h", "uwPgyUzBUWiKoNGt"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'AdminListUserIDByUserIDsV3' test.out

#- 150 AdminBulkGetUsersPlatform
$PYTHON -m $MODULE 'iam-admin-bulk-get-users-platform' \
    '{"userIds": ["vyk5xEfrJDxKsw5X", "l7ZZrDZdbuvCFBaV", "cohewKkVuGv9fQXk"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AdminBulkGetUsersPlatform' test.out

#- 151 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["ErF0drbYrrFQP6rW", "62CtetBW3pvAJJie", "HhveGg97PY0txzvY"], "isAdmin": true, "namespace": "4HSuiYCbG0UyYUJm", "roles": ["NL8p6AbdtU0CDrlQ", "pKB8qoel2QK3aSOY", "dmMDikc3Fjm9HoQD"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'AdminInviteUserV3' test.out

#- 152 AdminQueryThirdPlatformLinkHistoryV3
$PYTHON -m $MODULE 'iam-admin-query-third-platform-link-history-v3' \
    'emtiQvURYZCeF30R' \
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
    '{"listEmailAddressRequest": ["T9rBgM8o7lxXq7Tk", "dM7FVDCBcvVegrZd", "dP8lLQo6tHj4z4cA"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminGetBulkUserByEmailAddressV3' test.out

#- 156 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'M4LMJfWNZIxAgBpe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'AdminGetUserByUserIdV3' test.out

#- 157 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "ubprKX68jTyRd3Lr", "country": "R1x6U1v6zSLjm9zm", "dateOfBirth": "zUW0vPj90jmLTt5Y", "displayName": "QGawcomPoiYoQ1f1", "languageTag": "AYq306Pysv4VPaZW", "userName": "olXypwucUqqqff2i"}' \
    'Wi4yP3uqNcig6YcD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'AdminUpdateUserV3' test.out

#- 158 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'A8Z3g62oGYwkrjLI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserBanV3' test.out

#- 159 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "4EHJEEWgki9fbdvU", "comment": "MDZeO4U55wdCpVpn", "endDate": "ENiTc9NESV22eRBE", "reason": "lD4K2Cy1tJcPAEkC", "skipNotif": false}' \
    'vY7apPCrN5bEhmuH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminBanUserV3' test.out

#- 160 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": false, "skipNotif": true}' \
    'KeWizEpw1zN0mOYg' \
    'GhHMz9dddLWJWDuS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserBanV3' test.out

#- 161 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "YtCaIv4Lp91wYUJP", "emailAddress": "bvzn8TYoMDAaUXSu", "languageTag": "BQdvdhJoT0WK5ngN"}' \
    'UxDKfZYofPGUbSaA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminSendVerificationCodeV3' test.out

#- 162 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "00nKxQjYU6KlavIi", "ContactType": "LxU2I1GyJS48Hxu8", "LanguageTag": "Ju4XSAnlXRYB9BgS", "validateOnly": false}' \
    'BvkehRn83B0nrW1q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminVerifyAccountV3' test.out

#- 163 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'x3NJTugVWXz8dv7B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'GetUserVerificationCode' test.out

#- 164 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'iEUqnzxs2deMF8UA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserDeletionStatusV3' test.out

#- 165 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"deletionDate": 73, "enabled": true}' \
    'EZv5zyUUyNJkvA5x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateUserDeletionStatusV3' test.out

#- 166 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "F3zHtZSd3QzXhkrN", "country": "4pWryt4XTNwpp0ni", "dateOfBirth": "1YfIgLZ4YIzElrLZ", "displayName": "OBLHCKmLBaIwlokb", "emailAddress": "AFW8RgBUwBL28BqM", "password": "8UzvKqeoTiNKGRUM", "validateOnly": true}' \
    '0iOZJiOAh1SpLhMF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminUpgradeHeadlessAccountV3' test.out

#- 167 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    '2Pav11FuU8iXCRz8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserInformationV3' test.out

#- 168 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'KgqgwijYxpGhsFAr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserLoginHistoriesV3' test.out

#- 169 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "q6lolbj7QKvtVRCP", "newPassword": "Mjr5M3vw1GqUjjFp", "oldPassword": "6R8mYZwKftVqSECs"}' \
    'ypS42NmYQ8HlHbHn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminResetPasswordV3' test.out

#- 170 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 12, "Resource": "tieXpIZfr5XDq9dG", "SchedAction": 77, "SchedCron": "d9vLPP0w52JRAZxM", "SchedRange": ["WdoleYNHXeOpaRDw", "YLge851PbK2MFKvw", "5TWjAh4gy41LLzQ2"]}, {"Action": 70, "Resource": "kk4DJUofJXK8RGS0", "SchedAction": 53, "SchedCron": "28hePJjMp0TKKUBf", "SchedRange": ["PNI9f2oLWDPSZexf", "KVxqdxmh5QWxuQuI", "7gdDTDb3WdnOpzTr"]}, {"Action": 89, "Resource": "KOusNEHcI95GGdJv", "SchedAction": 43, "SchedCron": "LwJZquMQSPp5XD4S", "SchedRange": ["1ilfgff7Et4uY8nl", "BwGNHgfgwZwVMvsh", "Gmsg6ZJYnkHDnHTl"]}]}' \
    'RugM7a2UZgeesipb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminUpdateUserPermissionV3' test.out

#- 171 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 86, "Resource": "2yXMSCcHADYpS861", "SchedAction": 5, "SchedCron": "LRj306RDuaSixXEd", "SchedRange": ["loYZBkatNLc42eq0", "O6VsXtOlQwj5xPvm", "7c5nPR0Y1sffUaZ6"]}, {"Action": 8, "Resource": "WYgtfuqJHrs4e3Rn", "SchedAction": 100, "SchedCron": "eySoUxoMrj2J4JGQ", "SchedRange": ["ZAtyjTxnlmSyjEaF", "H2DRN6HIEqIFEcS0", "ynIMOYWpUYUQMooi"]}, {"Action": 74, "Resource": "6M2XizikCh6q0yq2", "SchedAction": 99, "SchedCron": "Bz43E9FkOPVu2fDt", "SchedRange": ["OjW1iSYQbcebBd5w", "b5H3qppoCiHMD4iB", "K2O7qYtOHV5hnpjc"]}]}' \
    '5CNLnnEvo25aEtdj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminAddUserPermissionsV3' test.out

#- 172 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 23, "Resource": "Hjh0aTjIOaQt0snb"}, {"Action": 63, "Resource": "3fjSRaXD4HDmdvhM"}, {"Action": 19, "Resource": "xiKR29LKIhNU43K8"}]' \
    'bihdw3prp0UHlWUx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminDeleteUserPermissionBulkV3' test.out

#- 173 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '20' \
    'YGfE6hXZ7XLoWCGf' \
    '0dZEeXBd6mGG6SHc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserPermissionV3' test.out

#- 174 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'ZbX2wNnT6A9zosmD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminGetUserPlatformAccountsV3' test.out

#- 175 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'nXoncy7NZQ4PkAPX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminGetListJusticePlatformAccounts' test.out

#- 176 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    'BCfkE1Fb0y94eP7y' \
    'h0zsKhR60HZwUwk4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminGetUserMapping' test.out

#- 177 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    '8XK7MXHbEwAvvpEe' \
    'HhXiJcJqYSxVKUYM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminCreateJusticeUser' test.out

#- 178 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "imVLzAP6aOzsTqEF", "platformUserId": "XUhGAwpYq1UqZydO"}' \
    'B0MThZW6LwcAg57B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminLinkPlatformAccount' test.out

#- 179 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "YBVCbi0ifdPyKf3S"}' \
    'wHekWIz4rXlH5jw9' \
    '9HxCjXWcaXBcfXXe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminPlatformUnlinkV3' test.out

#- 180 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'V7BXefsSgZxSYnVw' \
    'XqF6K0WA76Kl2mHH' \
    'oz6qBQnEDgX49n1x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AdminPlatformLinkV3' test.out

#- 181 AdminGetThirdPartyPlatformTokenLinkStatusV3
$PYTHON -m $MODULE 'iam-admin-get-third-party-platform-token-link-status-v3' \
    'TDFcmOm1sqdIWU6E' \
    'RylESgf5dXMrPoYS' \
    'ohfrLyXMSrC62xYt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 182 AdminGetUserSinglePlatformAccount
$PYTHON -m $MODULE 'iam-admin-get-user-single-platform-account' \
    'DwflNGfufW5cWeg6' \
    'eSCypsceITTkJGGC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserSinglePlatformAccount' test.out

#- 183 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["VF6LrILDLviUCzmD", "AaW5xz1c7ZuZXUCB", "YnkY0LEBSYBdUSiT"]' \
    'OrhB8hVs29WOKmZR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminDeleteUserRolesV3' test.out

#- 184 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "TtgycLzXz6lUMKi5", "roleId": "mweMEZo2ZnL1Zg2J"}, {"namespace": "fH4f73jAevOnES6Y", "roleId": "JLlb2AfUEEBbqMMK"}, {"namespace": "vkOsR1fHUyirMVMO", "roleId": "FES2J2OzNlJE3uqZ"}]' \
    'z574g31cA0PwZxTI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminSaveUserRoleV3' test.out

#- 185 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    'ZVSGQyTzhs9Asy4d' \
    '629N4YnolVWA2dWx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminAddUserRoleV3' test.out

#- 186 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'Bs056jkPCUuE1pgd' \
    'HvlQKiR7SDQUDavO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteUserRoleV3' test.out

#- 187 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": false, "reason": "npPn8N5xMRgU7cPq"}' \
    'NZrLCRRUysya4J3r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateUserStatusV3' test.out

#- 188 AdminTrustlyUpdateUserIdentity
$PYTHON -m $MODULE 'iam-admin-trustly-update-user-identity' \
    '{"emailAddress": "vTzMTMSwrNov2GW9", "password": "i54JY23AUWFTLq0W"}' \
    '1JqwKs1mO80L7IOH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminTrustlyUpdateUserIdentity' test.out

#- 189 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'lf6j8PZOzUiQKZqz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 190 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "5NSp0B7LODN3Boi2"}' \
    'sSAO2n4MZQt753XQ' \
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
    '{"adminRole": true, "deletable": false, "isWildcard": false, "managers": [{"displayName": "rOW0guPoQbYzc1RD", "namespace": "Vhs2lhdzxxgibuqU", "userId": "uyW3cMz9YyduMomE"}, {"displayName": "HcU15St4v8ry8Iyq", "namespace": "NVv0KVpXJTMx3Y8U", "userId": "m1iqehObg3OZ9j0H"}, {"displayName": "DtbqMFlgHKQIRtLf", "namespace": "PngD83roOeqE7fcC", "userId": "AeExeQX43LpmdMiZ"}], "members": [{"displayName": "eyIrA4QUKSJgECzv", "namespace": "aWUCA7wKru7ry3AQ", "userId": "2sEHvSxjWoM1rNJL"}, {"displayName": "M0OOVG5cG6XxENbW", "namespace": "qlX7idzjpKDfwl6X", "userId": "lCF6YxFMD8tJQwZv"}, {"displayName": "UVInos5RK100yH89", "namespace": "i8ZDPXRL8cbTAntB", "userId": "1STaab1UeibXg7RC"}], "permissions": [{"action": 9, "resource": "PhoNZlXMef7AvS3T", "schedAction": 10, "schedCron": "r3ZQNBBkrXu9czsY", "schedRange": ["r3cFeVw70xdNTuOd", "LKK0M2B2hbqJin37", "P69t1KqeGz7qbPnX"]}, {"action": 62, "resource": "UNvQAn2LuMjLqwmV", "schedAction": 53, "schedCron": "JrAdh1HIk7vCEq7F", "schedRange": ["Q2S5VeW9ddxzLPV8", "wDjsnyPh5yNbYXml", "AOi1SC3I1SjkH42L"]}, {"action": 40, "resource": "0GP6djn2Ps3IVT5h", "schedAction": 96, "schedCron": "0mqa8GatrjbJ5YT7", "schedRange": ["uvqarTvrG1DXZAWl", "vz3c3XALMresGFfs", "H4aXCDhshvEF8rHd"]}], "roleName": "250nyihcUVGHQczI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminCreateRoleV3' test.out

#- 193 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    '5ZoTRUkjGoRkPs2S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminGetRoleV3' test.out

#- 194 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'O9XrgXNIaU11cBXL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminDeleteRoleV3' test.out

#- 195 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": true, "isWildcard": true, "roleName": "TfopqeZtHJnRgaGf"}' \
    'LMFbvyI5PZGzVLcm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminUpdateRoleV3' test.out

#- 196 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    'ZKKKYARape2tsNcz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminGetRoleAdminStatusV3' test.out

#- 197 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'am4Cdd1QYvww4XDo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateAdminRoleStatusV3' test.out

#- 198 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'kltgq2vXtUnY6UhD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'AdminRemoveRoleAdminV3' test.out

#- 199 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'J4pe0s0Cuhl3dU9b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'AdminGetRoleManagersV3' test.out

#- 200 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "4seYCyiB4tDCWx3c", "namespace": "EX8wTi1v2abpCWyt", "userId": "PEi9Ze0hL9rPkV5G"}, {"displayName": "kSrcl2O47XVzU7ql", "namespace": "NVk7qnmBS3XKDhp1", "userId": "OkMcErmeH0lX1hj0"}, {"displayName": "LaXgQ94flh775AQf", "namespace": "zNjQ7IuMSY2epRDJ", "userId": "jDyMDKQhuTjtQZyI"}]}' \
    'iAmCL8bNTTfqLCv9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'AdminAddRoleManagersV3' test.out

#- 201 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "DYBOProN4UWbQaKF", "namespace": "rTv4JWElmOCxqPrq", "userId": "9I3XJWBxTLcOef8M"}, {"displayName": "gIwkrKFEtwESJCe2", "namespace": "ksG3nZE13H2fILFz", "userId": "OlAZbDQAEJLbVWH2"}, {"displayName": "XLIg3MgmdSvWp3h0", "namespace": "xPsVY8qNwB2TY4v9", "userId": "NNfQSYLFKSl3FNFF"}]}' \
    'Jnt3rIwZdW02Su6a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'AdminRemoveRoleManagersV3' test.out

#- 202 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'CnL816aH6gOBUIMe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'AdminGetRoleMembersV3' test.out

#- 203 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "L0GL3aefSDME8X2M", "namespace": "xILI42BJMPkZmay4", "userId": "Csye3iJLtjsu6ZJR"}, {"displayName": "CoDq3geuHFFaZzPI", "namespace": "jETqcKN1gaQ4Bn0c", "userId": "PPtKaJlw31pdDrXQ"}, {"displayName": "47WSGyDCKF0LLhO3", "namespace": "lGZ7eGOPj2XoFug8", "userId": "BUQUmPHnPumcazKA"}]}' \
    'na0ji757aNDFeKnQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'AdminAddRoleMembersV3' test.out

#- 204 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "P2j2WsQImTwYkiux", "namespace": "zLrbJ0BkGzCNgesQ", "userId": "lZZHIZH0iks6kx0a"}, {"displayName": "dnimPyyzezsHdFft", "namespace": "HHR6xbcVVonwz27D", "userId": "WfGRVhbZTvCPrrZC"}, {"displayName": "TU5WUJizF69PSsqu", "namespace": "WUafwbFPX15633pF", "userId": "gA7i9tqvfHmFvUZi"}]}' \
    'UW5Y0CYw5OXSGwQk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'AdminRemoveRoleMembersV3' test.out

#- 205 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 73, "resource": "D1MMoaf6KlgRtwaM", "schedAction": 27, "schedCron": "IoyY1wpIdjcAtTj1", "schedRange": ["IMuuhxxlulfmya73", "hX0a8Ri85PA9wNpm", "rK5Y5heA2ewWnFcq"]}, {"action": 69, "resource": "pv7XeqO8gY3c4Sry", "schedAction": 100, "schedCron": "GYx2ihgioL8VvEzH", "schedRange": ["GTt9emdCLmzJbdky", "kVAnmnRfUilcKA84", "d9pMsl7zrNJvDiP2"]}, {"action": 16, "resource": "dtVb6VgA5yFIH3s9", "schedAction": 95, "schedCron": "U8UjgyCUpM1JBcTz", "schedRange": ["f4dz1BojPoQg9764", "09vFd5z9r4nJWUvL", "p1wxGF747468MXUq"]}]}' \
    '3uIffkIpPmrWVxNZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'AdminUpdateRolePermissionsV3' test.out

#- 206 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 96, "resource": "tqbDWnJ2i9TRmJOq", "schedAction": 70, "schedCron": "l38d4NZGtk6EmWxC", "schedRange": ["75M88TKhFYkA9aRN", "De2IoPMSQKcg0OTT", "9JA0ll1RimBCiQwu"]}, {"action": 49, "resource": "5Vok9sNK1ORg3tCh", "schedAction": 38, "schedCron": "au2wcWYyj3JvHqXp", "schedRange": ["4JR7xI59Z9tfGVsg", "lnOxOXBfgBLuglkd", "9LIoshGnFSuHmrqe"]}, {"action": 19, "resource": "GlPnhBDOWqDU8N3D", "schedAction": 20, "schedCron": "oreqyBzWzCgMMWZu", "schedRange": ["D6tmIR28xVxbtpSK", "OfiIP3S6pypZqISn", "3msrykQFtW8QGKFZ"]}]}' \
    'LrIfqrZuu7IwKcT7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'AdminAddRolePermissionsV3' test.out

#- 207 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["sAsv2TKCbYMVkXEH", "msHwIGGsusS0zZRO", "DEKPdudZsLaf8aZr"]' \
    'XW84dt0TSTmy7XF2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'AdminDeleteRolePermissionsV3' test.out

#- 208 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '75' \
    'ig3NVFFkP7O3F4vs' \
    'ohRWDyGYIVFDbTvR' \
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
    'YfpJ4wM9WZfOOxAz' \
    'msbhi5QJuc2SNBaO' \
    'lXfgsgBd7MYLLoPZ' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 210 'UserAuthenticationV3' test.out

#- 211 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    'rkjRm5Ki0orhXrIS' \
    'EaPZHLQkTHvndQsC' \
    'KAO2JRz3CGwtujkz' \
    'xidLcAQWGVRg6DVs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'AuthenticationWithPlatformLinkV3' test.out

#- 212 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    'o5TJCSugdo4XTm8t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 213 RequestOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-request-one-time-linking-code-v3' \
    '1YTWqItjNWXm9sra' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'RequestOneTimeLinkingCodeV3' test.out

#- 214 ValidateOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-validate-one-time-linking-code-v3' \
    'eMA78YSRS2fPy5fp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'ValidateOneTimeLinkingCodeV3' test.out

#- 215 RequestTokenByOneTimeLinkCodeResponseV3
$PYTHON -m $MODULE 'iam-request-token-by-one-time-link-code-response-v3' \
    'bbbMIu9lu18jIMBU' \
    'M77XmemN8LO03mnF' \
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

#- 218 RequestGameTokenCodeResponseV3
$PYTHON -m $MODULE 'iam-request-game-token-code-response-v3' \
    'Sq9jJTVFoFjxZjh5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'RequestGameTokenCodeResponseV3' test.out

#- 219 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'qUR1Pq4a4uaMfd0S' \
    'QAfYIyzHL8jxakuV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    'u5r5B08VZxI4TU3a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'RevokeUserV3' test.out

#- 221 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    'pnZXoJ4gI4EQKO8x' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 221 'AuthorizeV3' test.out

#- 222 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'd66ImBEuhnaxZVf6' \
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
    'MD9r1y5Ihr531Kaj' \
    'xq7lzuVRVEvhKIbr' \
    'q1xsGpdobYun8hcO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'SendMFAAuthenticationCode' test.out

#- 225 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    '55hVjfWyK02w5Qyt' \
    'AmkanukAzAMaRvIU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'Change2faMethod' test.out

#- 226 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    'hUwguGgbLLN3O7CE' \
    'YjxqElP5lA2FJ0iG' \
    'LRTXGsC5mxxse4ee' \
    'true' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'Verify2faCode' test.out

#- 227 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    '2BqOxgwCymCDYsuf' \
    'f3b7G5FDX4mu0qPH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 228 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'b9Ll2EFEb8Gnsthm' \
    'Q2Y6ZGOiqrg3lpqN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'AuthCodeRequestV3' test.out

#- 229 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    '5bOfnqJ5bzDRzbhM' \
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
    'xfEDE4TrtIHyyMq7' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 231 'TokenRevocationV3' test.out

#- 232 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'refresh_token' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 232 'TokenGrantV3' test.out

#- 233 VerifyTokenV3
$PYTHON -m $MODULE 'iam-verify-token-v3' \
    'ATxd7Mzjv1gSj8kc' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 233 'VerifyTokenV3' test.out

#- 234 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'NhoqcRZRNATojM7d' \
    'aV0VwR3yNKDtMqMr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'PlatformAuthenticationV3' test.out

#- 235 PlatformTokenRefreshV3
$PYTHON -m $MODULE 'iam-platform-token-refresh-v3' \
    'AGpdyF6WDHn3ePBx' \
    'QNz2IUEHMzl5jhwV' \
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
    'DsuzwJ4v50eoaIBr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'PublicGetInputValidationByField' test.out

#- 238 PublicGetCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction-v3' \
    'Th0EKkJioUpvGnkc' \
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
    'HgCfaWzPUvCnfqsP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 242 PublicListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["GgJZyRwigaMu07Ze", "k8WObpf0FHYfViEj", "70KYKIfFt4GYjUt4"]}' \
    'F1ZVy2qFfSr3psWj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 243 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    'OyHLyKe2foqsVIfg' \
    'BTr8RcxRQR0NYdJz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'PublicGetUserByPlatformUserIDV3' test.out

#- 244 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    'f3TMhSaynVs05nZC' \
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
    '{"PasswordMD5Sum": "4Os7hqIH2NgARSG3", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "GNH2K0UuJdeGNquQ", "policyId": "naXpDQ5rU2taDWh9", "policyVersionId": "JV5oc5IFQsrwHqFq"}, {"isAccepted": true, "localizedPolicyVersionId": "dMpQhcLK0WTZbtmQ", "policyId": "kwC8azx3IRWme3C6", "policyVersionId": "p2r4D3NQdjrjkX3A"}, {"isAccepted": false, "localizedPolicyVersionId": "gK3JgZufzssA284m", "policyId": "G7uAojLYBsx8oqMz", "policyVersionId": "bE0ljQaBtb47V691"}], "authType": "j0FZp2vjOXptxzx6", "code": "kkaZYpl52sQR9Znp", "country": "5d1eSwrG2GBBEWrD", "dateOfBirth": "bQ1ZzhDuLHq9LTBs", "displayName": "tguOdN0O7l3GbKPH", "emailAddress": "dDTQDEEE2mTsn1Nw", "password": "J71szsNmnqZSWdEy", "reachMinimumAge": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'PublicCreateUserV3' test.out

#- 247 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'fTvD5UcES1eLMZs9' \
    'lSQVDp16qVIqXCK9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'CheckUserAvailability' test.out

#- 248 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["dS5JTbdJEe6mnkYA", "fw61kyKk0UXUF252", "3OTvOmfVNJNDaSO3"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'PublicBulkGetUsers' test.out

#- 249 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "FEkk4It6V8Bu7rIj", "languageTag": "GrxUMKbv60ixUuUh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'PublicSendRegistrationCode' test.out

#- 250 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "opdqGrqRZ124P7Pa", "emailAddress": "uXTrpWAjwatSvtPb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'PublicVerifyRegistrationCode' test.out

#- 251 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "AFn8oWQcmFkkRX6E", "languageTag": "qadAEIzxld80Ynss"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'PublicForgotPasswordV3' test.out

#- 252 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    '7hc3VUxxZIgkTLqM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'GetAdminInvitationV3' test.out

#- 253 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "hMYfksp8VQhYSFeB", "policyId": "Op0ilGQFwHUtZugb", "policyVersionId": "lT3aIDKn9qJXncm5"}, {"isAccepted": false, "localizedPolicyVersionId": "1jZcTK8zmMfyshYk", "policyId": "3b5cAFVo85r1b8Yp", "policyVersionId": "2QnuhQuIdvZdj6As"}, {"isAccepted": false, "localizedPolicyVersionId": "lJElgJ8kx1WEeDbq", "policyId": "l13FtQMu41rnOzbs", "policyVersionId": "FBqg6dziWvdNcwfU"}], "authType": "EMAILPASSWD", "country": "8ZhHeb0CaPFDjrSo", "dateOfBirth": "tKnpJWALpToj9rgr", "displayName": "5RffM5JXvPdzEpDl", "password": "n04F8BQjzobhDa8V", "reachMinimumAge": true}' \
    'tZF6aSRmHU5iR3hX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'CreateUserFromInvitationV3' test.out

#- 254 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "IbzWPKOkzftOgDQA", "country": "WhulbrDf7q4cAnpm", "dateOfBirth": "LiEu4CNtX2lnqi7c", "displayName": "HTSdGoLZbC3UJruU", "languageTag": "4uIXBZsEYogFWiH9", "userName": "z4E8zmaZ5cg0REtU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'UpdateUserV3' test.out

#- 255 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "WY4fVIdqwCWF5wmb", "country": "OubTxAAeDCowR3Me", "dateOfBirth": "CNL1oNrF3SmgudQu", "displayName": "sJLsPlW7ZyORFkN9", "languageTag": "EbKbTbrDzNgVEcw0", "userName": "lxRam16O6v4VjJf4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'PublicPartialUpdateUserV3' test.out

#- 256 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "0LjUdORELVXUFQyV", "emailAddress": "lt9jmxmxpfp41k1u", "languageTag": "Dg59PhdUXShabwyY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'PublicSendVerificationCodeV3' test.out

#- 257 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "CxTHrDel8oThvr8C", "contactType": "UEzw4zL1QeR3EYXB", "languageTag": "FpUX9y4tY7o5FFi1", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'PublicUserVerificationV3' test.out

#- 258 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "2j7v3zQJoQLTAlW7", "country": "5icIKUpXazsFrmaG", "dateOfBirth": "Noi3RPTgWotLNz0u", "displayName": "8ySxA0yrjz4q7e0E", "emailAddress": "JnADXC2y0DY1E1SM", "password": "K9oA4vK56dsYI5SK", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'PublicUpgradeHeadlessAccountV3' test.out

#- 259 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "5pDANyJ184miBhdV", "password": "Jt81fmLSyGuu5rbJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'PublicVerifyHeadlessAccountV3' test.out

#- 260 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "VIwRMtwApGbXnR3y", "newPassword": "C6f2MHGGedk0KzXR", "oldPassword": "clOXdPYZQxBnttu4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'PublicUpdatePasswordV3' test.out

#- 261 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'yW5etl4Xk8Hd1lRt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'PublicCreateJusticeUser' test.out

#- 262 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'oPMvsu9oswEPTvzw' \
    'wGnpbx8MCIjKzylq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'PublicPlatformLinkV3' test.out

#- 263 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "W8auyseP9wEEyYAn"}' \
    'HPp4XzVL5McglFCr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'PublicPlatformUnlinkV3' test.out

#- 264 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'jxqqxAYqXG2V3baM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'PublicPlatformUnlinkAllV3' test.out

#- 265 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    'kZ9JCqBIkUID0EE9' \
    'InZNLwwAhW2b5OHK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'PublicForcePlatformLinkV3' test.out

#- 266 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'tUv4lTkQNjxhXdj1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'PublicWebLinkPlatform' test.out

#- 267 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'CG0EBgst9Qu8Ofl2' \
    'oB8VTjF0pD3NHU8i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'PublicWebLinkPlatformEstablish' test.out

#- 268 PublicProcessWebLinkPlatformV3
$PYTHON -m $MODULE 'iam-public-process-web-link-platform-v3' \
    'YUOtG5gbQSKW2Mdg' \
    'CH4bWxRF6fBPa6GO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'PublicProcessWebLinkPlatformV3' test.out

#- 269 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "uV5z0p8jaJs2duQq", "emailAddress": "awPrxi6F4elhy9CZ", "newPassword": "94CAUVW8FoEf8tjC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'ResetPasswordV3' test.out

#- 270 PublicGetUserByUserIdV3
eval_tap 0 270 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 271 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    'jWc22qqDfNz59jHw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'PublicGetUserBanHistoryV3' test.out

#- 272 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'SDQHadmAo0lzhPm7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 273 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    'RmaOr6TLwVyE42Ap' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'PublicGetUserInformationV3' test.out

#- 274 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'Ab7CKt79wAopZL9C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'PublicGetUserLoginHistoriesV3' test.out

#- 275 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'w6K9h55mwUvhdBOg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'PublicGetUserPlatformAccountsV3' test.out

#- 276 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    'umV4wAsd4ifGd0bk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'PublicListJusticePlatformAccountsV3' test.out

#- 277 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "WrlhtfTywRW4fmg6", "platformUserId": "btk3mAO4EtB0hn2x"}' \
    '1oTOX5gBQlVDx9ne' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'PublicLinkPlatformAccount' test.out

#- 278 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["FHWhDRJtyYEt7ygZ", "leAoUuVKneoO10yt", "PdJ8SY3qoogOxoPY"], "requestId": "vdIBJYyGURjEjnsl"}' \
    'EYM8ngVT1ewVxvgA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'PublicForceLinkPlatformWithProgression' test.out

#- 279 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    'ocOqsd5v5n7eXCo9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'PublicGetPublisherUserV3' test.out

#- 280 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'gZWdxfIdW8fNAM5Y' \
    'dHivK2Q0WwolQy03' \
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
    '7hJMOEv5W0v25yAO' \
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
    'bZIbrA8XAKKWMDeb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 285 LinkHeadlessAccountToMyAccountV3
$PYTHON -m $MODULE 'iam-link-headless-account-to-my-account-v3' \
    '{"chosenNamespaces": ["ehSjpt0wrfWPXaI1", "Jb75o2MFOa6xgPt6", "9QROGDeJCyHvUsnL"], "oneTimeLinkCode": "vXCSgQHvs25eiQO3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'LinkHeadlessAccountToMyAccountV3' test.out

#- 286 PublicSendVerificationLinkV3
$PYTHON -m $MODULE 'iam-public-send-verification-link-v3' \
    '{"languageTag": "oWdgXdm1IxL1Otle"}' \
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
    'UBqBO0Ze049k9W6Z' \
    'LVJzRpUsITfVruDu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'PlatformAuthenticateSAMLV3Handler' test.out

#- 289 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'kun42zPZvOd4yZyM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'LoginSSOClient' test.out

#- 290 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'KyED3qDO5HXp5oVk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'LogoutSSOClient' test.out

#- 291 RequestGameTokenResponseV3
$PYTHON -m $MODULE 'iam-request-game-token-response-v3' \
    'hESbHQ7hvTlzf7Xw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'RequestGameTokenResponseV3' test.out

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
    'QtVIYU87NgjDMcJx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'AdminGetUserDeviceBansV4' test.out

#- 296 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "fMfYFlt3JvDgMiyB", "deviceId": "GygWFTAY3Th5mOwP", "deviceType": "CPKVPlOGfFBlu2ZP", "enabled": true, "endDate": "kiYXGk6BoBmSLi0R", "ext": {"7zDFMoNTQmlS8lMl": {}, "Y8UjprhCxhzW6ZM7": {}, "LkTVrtVJZVhxCVdj": {}}, "reason": "PutJ8dkAVOJ5imgh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'AdminBanDeviceV4' test.out

#- 297 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    'dfVhjnjd66A1SQmW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'AdminGetDeviceBanV4' test.out

#- 298 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": false}' \
    'SQLAVPAJ7zX5lB80' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateDeviceBanV4' test.out

#- 299 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    'k2smdkBS2MaIP7Pj' \
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
    'ngEFggq91cpgvoDB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'AdminGetDeviceBansV4' test.out

#- 302 AdminDecryptDeviceV4
$PYTHON -m $MODULE 'iam-admin-decrypt-device-v4' \
    'gYfLBdGNAZEvbvxq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'AdminDecryptDeviceV4' test.out

#- 303 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    'a0K7VUbjUnzirnEs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'AdminUnbanDeviceV4' test.out

#- 304 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    'xSE4vBzG7VK8sWEs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'AdminGetUsersByDeviceV4' test.out

#- 305 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"count": 15}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'AdminCreateTestUsersV4' test.out

#- 306 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["rEuHMWwQNmCQmGCF", "963CbsOawlRBQJH6", "fNekhk077gxaj55h"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'AdminBulkCheckValidUserIDV4' test.out

#- 307 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "uTA6AvmW0567BFqb", "country": "rPIuxKmBXLi6Gpnq", "dateOfBirth": "AeMvg3w0FQ1520WM", "displayName": "3TxWXSdTiKdva2UR", "languageTag": "EoBSFtCLy2CqgCG7", "userName": "JwJCDqkzOdFwLJpI"}' \
    'PxzLE1V9U1NgpH7O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'AdminUpdateUserV4' test.out

#- 308 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "c44yjRdfqZgv34Gq", "emailAddress": "qjelcN0GJmPwUTWM"}' \
    'x0MiPAjnWIhFrqSn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'AdminUpdateUserEmailAddressV4' test.out

#- 309 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    '4erXEtU1CaD8AqsM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'AdminDisableUserMFAV4' test.out

#- 310 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'CGBNhmUt6fzYRn85' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'AdminListUserRolesV4' test.out

#- 311 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["brTu8F7cuCPh1TGZ", "JmgWNHWnvOBRCt4o", "nqRo2PnMSRarKg4c"], "roleId": "oy3AFpULIn21Nf2F"}' \
    'NgDWNC6yh7kgTHlr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'AdminUpdateUserRoleV4' test.out

#- 312 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["xKbsV4XtrI7SFBEg", "kwHifMHYI581HbF7", "fMX9lDXYxGRJM92e"], "roleId": "X42WW2WKf5urEOpA"}' \
    'SBicX3ZwzZ7aVhrk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'AdminAddUserRoleV4' test.out

#- 313 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["mhSOEozGOv8D0iVx", "zrec5kNwJAxm0Rdm", "9l6nIhG5SilDDIsm"], "roleId": "j4h625dIsMKWBxF9"}' \
    'RAIrI81ZR2kNzh60' \
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
    '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "TEhMXMepgzY9jLiA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'AdminCreateRoleV4' test.out

#- 316 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'dMiQ7eDMkeBRMur1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'AdminGetRoleV4' test.out

#- 317 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    '8nCxiV9bQMHpPbvf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'AdminDeleteRoleV4' test.out

#- 318 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "c1NgZaoYAaCCeRgt"}' \
    'stsU3Qecxo4bQZO3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'AdminUpdateRoleV4' test.out

#- 319 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 86, "resource": "QNAs9188Qm3W1De2", "schedAction": 79, "schedCron": "06QpqCgxt0NgDSj1", "schedRange": ["T6EdeYFmrLT0HbvS", "4kSSt3CyDgf6eFAi", "qSkHi0BR2ElF6z6e"]}, {"action": 73, "resource": "gGQ5mChYoKD7yqCR", "schedAction": 41, "schedCron": "3RovQZhwfjkq9iyT", "schedRange": ["byD3D01tRpuuyIag", "SSzEL8H4euLufhQj", "2KP3LLxl9Hs2L2wl"]}, {"action": 32, "resource": "kharfqaoMsGyv1Ru", "schedAction": 91, "schedCron": "tCNiHBRUNCPSre5G", "schedRange": ["mZzCQwilS3IxSjly", "vR9PxG9Lji2Vc88W", "8aLjIxVGpdOqguxv"]}]}' \
    'RwI9ZBTipMRlhK9D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'AdminUpdateRolePermissionsV4' test.out

#- 320 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 80, "resource": "1fwJnV94BrMSP31w", "schedAction": 55, "schedCron": "Tfh9gEs6GF247cbB", "schedRange": ["LjUr5z03wxB3E9hr", "E9f9COFrOr6wJDBw", "IDsJHNg6TvNGjwI4"]}, {"action": 93, "resource": "dngbQD3pO8U3W94Z", "schedAction": 63, "schedCron": "IW2MAL9gYHEV3wnT", "schedRange": ["ZTvYYf4ZFuV6L2Al", "doWWRN5wNYlFiliY", "mBrqrOc0NIligBrO"]}, {"action": 22, "resource": "4imu6XFfRcWDXhq1", "schedAction": 26, "schedCron": "G1LxLdySvyVqY8nx", "schedRange": ["BZbHcPHEFuEVP9bF", "07gnWDULkJPQR0UJ", "Mr8ouccGH0B4LCe2"]}]}' \
    'h0iFCCZgFWs5s0nT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'AdminAddRolePermissionsV4' test.out

#- 321 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["89A88GDOUClGyzYg", "nYTdim6PkRoq5TO6", "5KWh8ztRJkXxUAj3"]' \
    'jzZvEaY103YUIMuS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'AdminDeleteRolePermissionsV4' test.out

#- 322 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'jDHz0zPWMZQNNP2J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'AdminListAssignedUsersV4' test.out

#- 323 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["qQqhISTBT1Gofv4S", "uaZ8yCB9TVZnuzgv", "AZJRm71EC3ENuvD8"], "namespace": "OPsp5Z3ez84KVB7H", "userId": "eWPnVeFdy5ezlCU6"}' \
    'SGzkMpTL2wxobjxA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'AdminAssignUserToRoleV4' test.out

#- 324 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "bagqEmXn6U2VeV2e", "userId": "mK3JecJA4skqCbPx"}' \
    'RkIAFQh9yDdoLE2s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'AdminRevokeUserFromRoleV4' test.out

#- 325 AdminInviteUserNewV4
$PYTHON -m $MODULE 'iam-admin-invite-user-new-v4' \
    '{"assignedNamespaces": ["7mrVrmTJwtBTzQTr", "No1LcWNf7xHpi1JZ", "JjIRtCfqDHSlo54z"], "emailAddresses": ["SnRN0zGMworzym1z", "3ZdetOic9AQOFWpd", "ItLBhvKJq9tWz9yu"], "isAdmin": false, "namespace": "adk2OQ421q7Nb1vr", "roleId": "KthVvU5on065ApCk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'AdminInviteUserNewV4' test.out

#- 326 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "VN3QchuQ6pntxB64", "country": "8ss7rBnvQHAM8gSd", "dateOfBirth": "IybKUByHBzfvgtRT", "displayName": "PPzwJmKaLCx3gcid", "languageTag": "EALWe6RG5wWznu5A", "userName": "jwR1Z4fU7ICcaQtu"}' \
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
    'uKUw3dUwWHhQW3I1' \
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
    'y9tjRLVOXBMa0JiI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'AdminMakeFactorMyDefaultV4' test.out

#- 340 AdminInviteUserV4
eval_tap 0 340 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 341 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "yBIQumxDfAxNqCUt", "policyId": "izYM97ebZcYqwfIH", "policyVersionId": "PWMkOmrT5HL16jMw"}, {"isAccepted": true, "localizedPolicyVersionId": "PlPgJcLbeQf9MICx", "policyId": "X7xKyCfgwSPz14as", "policyVersionId": "yOdgn77gN8K1FlNk"}, {"isAccepted": false, "localizedPolicyVersionId": "MBOpeQT4zYIbU4i9", "policyId": "mLyX46Alt08rrnG8", "policyVersionId": "y2ScXkwjpAp82pGc"}], "authType": "EMAILPASSWD", "country": "D3n0c1ryAkRvdPR8", "dateOfBirth": "gx2rX5dck8NFKPgT", "displayName": "6LMehg047axU5ktN", "emailAddress": "ywRIvO2Sgz30hejq", "password": "dktHIO1VdtMSews1", "passwordMD5Sum": "TrU4FhAfKDcDG5bM", "username": "Tba1tUlFGcP6eL7E", "verified": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'PublicCreateTestUserV4' test.out

#- 342 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "YvXCT6m6mRZAlLBc", "policyId": "zJVeil7GbG1ISBCk", "policyVersionId": "cnpxKUxLjmxhBS6Y"}, {"isAccepted": true, "localizedPolicyVersionId": "A0FJZwP8GslMpx3m", "policyId": "7lEXTmnTbtjK9Rsy", "policyVersionId": "oqT3adB48Jxp2zaI"}, {"isAccepted": true, "localizedPolicyVersionId": "mBXlGSp85q6fuGfo", "policyId": "5wSDHnyabk493I3p", "policyVersionId": "vHKDaWhTN1qyxpUz"}], "authType": "EMAILPASSWD", "code": "ZWJTDzWguhujw1Eo", "country": "R58uCVldefonHJZA", "dateOfBirth": "iX4abmqqi90KTWwZ", "displayName": "k0HGeJNaBjVdMB5k", "emailAddress": "MzKycYrhr4FnNzdT", "password": "4pWwIVXp9avUr6Iy", "passwordMD5Sum": "dpXW0MO0eT9okl6M", "reachMinimumAge": false, "username": "02R1IVNnaK6KS71X"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'PublicCreateUserV4' test.out

#- 343 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "JHTEm5PSeyod5L6O", "policyId": "ooYoQn9iHEqWO1cV", "policyVersionId": "CUIOx90FQdwLi3GO"}, {"isAccepted": false, "localizedPolicyVersionId": "kLtpuRNeT1CULEMP", "policyId": "aOU5nukycAUlkUSZ", "policyVersionId": "KUrsxNRzF3NaUuCy"}, {"isAccepted": true, "localizedPolicyVersionId": "4WETxtGMs5tPKPuK", "policyId": "0K4PiMDTR7LxihuO", "policyVersionId": "n57io0d9dG3yzaNb"}], "authType": "EMAILPASSWD", "country": "eASX83SLiIbAP2qy", "dateOfBirth": "UnHnfrEdDfY4TTxu", "displayName": "8goZgsX4RwfM4qnU", "password": "dcQqZ9F1uivPob0Y", "reachMinimumAge": false, "username": "EuXQACDDQryNf9VG"}' \
    'xbOeJe4n9eUlBQZ2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'CreateUserFromInvitationV4' test.out

#- 344 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "UGePWXbAyGiXa9nU", "country": "sHCVicuJ7onrUXVl", "dateOfBirth": "B6xNel4Bxb9KwFYq", "displayName": "dhEVq3hbsApeASfR", "languageTag": "0ljKxqZcLuhwNDvV", "userName": "alv3bkoMXNzl1ywE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'PublicUpdateUserV4' test.out

#- 345 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "PiunixlEAHZzHs8x", "emailAddress": "5oPSkZFIV2feXnTR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'PublicUpdateUserEmailAddressV4' test.out

#- 346 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "lzAJy9oFOHB2KEsI", "country": "dtozVltBhoXE4wgc", "dateOfBirth": "YT5CdjaJuUzFIeqa", "displayName": "Vr1CE1gu6cYuzC77", "emailAddress": "J4irvZ9tktWLtDdl", "password": "mVGK6iolEw6IIpDc", "reachMinimumAge": false, "username": "X5ijmtDGvd9ESdY0", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 347 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "rmQ2SaLd6M7TM3wn", "password": "JyExuo5z9RAcYgYZ", "username": "b7cAakJpqN6eubdp"}' \
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
    '49JFwXG0EvoSHNC9' \
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
    '7eEyhnL1QH5AlYRA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'PublicMakeFactorMyDefaultV4' test.out

#- 362 PublicGetUserPublicInfoByUserIdV4
$PYTHON -m $MODULE 'iam-public-get-user-public-info-by-user-id-v4' \
    'qCAC2gy1WF9QLNgD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 363 PublicInviteUserV4
$PYTHON -m $MODULE 'iam-public-invite-user-v4' \
    '{"emailAddress": "xAkwgfB8jIecOx5u", "namespace": "gNCDd6jW6fjtBcO3", "namespaceDisplayName": "fWq9qfmBv0XgJB6a"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'PublicInviteUserV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
