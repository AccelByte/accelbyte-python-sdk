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
iam-simultaneous-login-v3 'steam' 'SjDAM0Riw8wLYW3n' --login_with_auth "Bearer foo"
iam-token-grant-v3 'client_credentials' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-verify-token-v3 'F3LD1EDwBXw5uBYe' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-platform-authentication-v3 'QZOzATNSV9E9yyNb' '7yaLXzAVYymOuhCk' --login_with_auth "Bearer foo"
iam-platform-token-refresh-v3 'Zu4htrsf8eIFSovT' 'GXaMsq8ePN1oco2j' --login_with_auth "Bearer foo"
iam-public-get-input-validations --login_with_auth "Bearer foo"
iam-public-get-input-validation-by-field 'x8Upe8SjMvpqM8pu' --login_with_auth "Bearer foo"
iam-public-get-country-age-restriction-v3 'ggOEdG47gD5i2Ni6' --login_with_auth "Bearer foo"
iam-public-get-country-list-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-public-v3 --login_with_auth "Bearer foo"
iam-retrieve-active-oidc-clients-public-v3 'AnWn3NdEPhNHSH7e' --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["KDfRcngEpTnRUQr3", "RLOM1vEx4gqDY6jw", "yKRxhkLe5zohg9s9"]}' 'utRQt28b6o3K0COF' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv3 '74tz6aeXZOYwbwjM' 'NdxKWlBfnRyFS0Ed' --login_with_auth "Bearer foo"
iam-public-get-async-status '7gTM5AVrtBQiDTcN' --login_with_auth "Bearer foo"
iam-public-search-user-v3 --login_with_auth "Bearer foo"
iam-public-create-user-v3 '{"PasswordMD5Sum": "nZa6Zuxk6u6HXXdi", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "WDXTSb55g8LSTs7N", "policyId": "f95lGlPrf6obIdnI", "policyVersionId": "6Ag7eUYcYJ4QzXCm"}, {"isAccepted": true, "localizedPolicyVersionId": "8fBuBSKLSQ4GvLtz", "policyId": "50D3rpBfBovqLwXB", "policyVersionId": "uT30EYeRj17xGhaB"}, {"isAccepted": true, "localizedPolicyVersionId": "oUfiHjGmCyPsKCJT", "policyId": "v1ic9gvagF2cSuzt", "policyVersionId": "sJ5tj64gV7nmDk29"}], "authType": "mcjSuz9vbNStqPtQ", "code": "mQN6eKAGiZFCftT0", "country": "RWECdjWYrnulxcCK", "dateOfBirth": "Aru8pOaAVLDB4k3J", "displayName": "wkdaxR7GJpYmuYCP", "emailAddress": "G181q9GA5DydC2D8", "password": "UT6KOc4VPDUR9aya", "reachMinimumAge": true}' --login_with_auth "Bearer foo"
iam-check-user-availability 'igLlRxOelKykICRx' 'F6HtlER2txs4qrNA' --login_with_auth "Bearer foo"
iam-public-bulk-get-users '{"userIds": ["RATn6KXOutlYBbLh", "L8KXx25FZfQIodVB", "qQsBpCJBIXLGYcwW"]}' --login_with_auth "Bearer foo"
iam-public-send-registration-code '{"emailAddress": "VRK6UKk5ozrXA4HZ", "languageTag": "HNyq9odanhR1Zrm3"}' --login_with_auth "Bearer foo"
iam-public-verify-registration-code '{"code": "thUvV87yfkycLSVd", "emailAddress": "leSaAylsmLYe2phY"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v3 '{"emailAddress": "OgT5kDTyPl3dKF7N", "languageTag": "XEjrJMki8jvc3P8G"}' --login_with_auth "Bearer foo"
iam-get-admin-invitation-v3 'wjg3IOH0SDHgYKqx' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v3 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "iFJdrmj5vhzgsJwe", "policyId": "x7wq8ZPlXNaUNgdY", "policyVersionId": "2vfJuje5cPnmGjTv"}, {"isAccepted": true, "localizedPolicyVersionId": "a5Pqx1K7qcAoijBP", "policyId": "Ap6EPb988NzxrDKV", "policyVersionId": "pULjjiw3NeVG4DJi"}, {"isAccepted": true, "localizedPolicyVersionId": "ezzriCDWXT59SRu0", "policyId": "YqUxKDc84OMIzvTS", "policyVersionId": "cdbKBsAyJMz4ILND"}], "authType": "EMAILPASSWD", "country": "GhnfuF4WZiQVICVp", "dateOfBirth": "Wd3UM08gMXhdf3ju", "displayName": "XW4JprIb3CJCAtvS", "password": "G8Cfa9dzOJDGCTHI", "reachMinimumAge": true}' 'FjeXbsSgR43kIDzx' --login_with_auth "Bearer foo"
iam-update-user-v3 '{"avatarUrl": "BwqRJTzrHNZWUsq5", "country": "lQo2jy29EJigqYhy", "dateOfBirth": "VhURx1yPeczRpdk0", "displayName": "HATGylx2JG2KNGfh", "languageTag": "zfCTxxrsRRLee3Tc", "userName": "J7DQIi45aCDHN9mV"}' --login_with_auth "Bearer foo"
iam-public-partial-update-user-v3 '{"avatarUrl": "ug2zkVf6KgpKOcn3", "country": "tMD9UT67bOwugFDa", "dateOfBirth": "6wUQvehKqwCh86Xm", "displayName": "RkCEcfHDCdl59Wp9", "languageTag": "A3tXGve6DdK6uvg8", "userName": "f2cIoByk9fxtvsge"}' --login_with_auth "Bearer foo"
iam-public-send-verification-code-v3 '{"context": "Axo57nKAbZpsbJ4I", "emailAddress": "u5KJ0ynxGBlacDCd", "languageTag": "Fe8ATUqVxcSthrpn"}' --login_with_auth "Bearer foo"
iam-public-user-verification-v3 '{"code": "MUBsnUfuQIcSbUt5", "contactType": "UGkInFGpuUsdtq4d", "languageTag": "OwNESzCEW9dUVhZj", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v3 '{"code": "ftC3sCS8CpLCqPD9", "country": "CeDEdCnnL6Kt1Bjj", "dateOfBirth": "3b8QM8Rr45ULqXQg", "displayName": "vwD3PsKDJiWxQBwa", "emailAddress": "S7rDBf2S54phbdyG", "password": "Dt47f9GWRlE9hqz6", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-verify-headless-account-v3 '{"emailAddress": "rThFa9XU8mosluiH", "password": "ZJ7O8sAQ32wj9uaD"}' --login_with_auth "Bearer foo"
iam-public-update-password-v3 '{"languageTag": "zsr9xYiWRuuzQJiL", "newPassword": "c1eI9w3JEhxPGbEk", "oldPassword": "7s7gw07FlounC3vJ"}' --login_with_auth "Bearer foo"
iam-public-create-justice-user 'KBC7SwgoViPeIB4E' --login_with_auth "Bearer foo"
iam-public-platform-link-v3 'hy0Y5aSJVDginxAM' '77eY9C14FbfiI2NP' --login_with_auth "Bearer foo"
iam-public-platform-unlink-v3 '{"platformNamespace": "vl1kCY5bEokxXxkW"}' 'Zbjf7GZxaossQmjo' --login_with_auth "Bearer foo"
iam-public-platform-unlink-all-v3 '69wohJFyTNk5FGUP' --login_with_auth "Bearer foo"
iam-public-force-platform-link-v3 'hR4LEZvz3EjFR799' '6Ug5m4axDV5uTcYs' --login_with_auth "Bearer foo"
iam-public-web-link-platform 'oahUrELQ1btjJOqQ' --login_with_auth "Bearer foo"
iam-public-web-link-platform-establish 'MgZWAU6E92nHJzvw' '7tnYtGfv0EJyjBu4' --login_with_auth "Bearer foo"
iam-public-process-web-link-platform-v3 'EzwRjD7jmQJeFPgh' 'qamSc5y0X48eT7Ml' --login_with_auth "Bearer foo"
iam-public-get-users-platform-infos-v3 '{"platformId": "uexk87b9Z5BTsEA3", "userIds": ["EdmW8saabP4xRowf", "NojzPXI2v0prR3OE", "ey0MkZwS6TYwNN3U"]}' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"code": "Yhic03qGEg5fNzBV", "emailAddress": "rjo3g8CfRwtyl1He", "newPassword": "T7VEPgG40QyXzsOz"}' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 'gck078IghoQBp2mW' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 'AOYksczxBS0OBCa2' --login_with_auth "Bearer foo"
iam-public-get-user-information-v3 'vWadLmQtYKmEMzic' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 'buL2S3RiW8dLTCBf' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 'GUdVEdvdQL7sVwcZ' --login_with_auth "Bearer foo"
iam-public-list-justice-platform-accounts-v3 '2PofaJoSqtrEOqxH' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "46fRTSZoDdT0fefo", "platformUserId": "74eg3Nt2c0r4GqF0"}' 'NHglOVuNZ9LzNeJn' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["Burh54CWbYb0Peby", "t8b4DGscjwrizsFU", "gYwbaLvqvQ2NbmDI"], "requestId": "TuymTBjn3d2sFzMS"}' '3QaVjZF7Ax6115Kg' --login_with_auth "Bearer foo"
iam-public-get-publisher-user-v3 '9U8vrQJXQxoIbVi2' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 'CLEk277Ivjj1A647' 'XQ3koaAfZIim0sFP' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 'm1YN27bojDVaZLpx' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-public-get-link-headless-account-to-my-account-conflict-v3 '4kEWYkO6KrKUMhJr' --login_with_auth "Bearer foo"
iam-link-headless-account-to-my-account-v3 '{"chosenNamespaces": ["ASBh61hmWKSSrF35", "anDGvur19V18oIrU", "KXttgAI2QdWJFLmo"], "oneTimeLinkCode": "PEgd8EMspOs8nkic"}' --login_with_auth "Bearer foo"
iam-public-send-verification-link-v3 '{"languageTag": "9gj5vyUMAAmIHYbs"}' --login_with_auth "Bearer foo"
iam-public-verify-user-by-link-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler 'xG5N066FXb88SbLO' 'a21DiSFsm0XXQJWs' --login_with_auth "Bearer foo"
iam-login-sso-client 'zvTQEuALzDNp1SZ5' --login_with_auth "Bearer foo"
iam-logout-sso-client '8aDllwzTRHak1MXx' --login_with_auth "Bearer foo"
iam-request-target-token-response-v3 'j7Esrg7900nml5Bi' --login_with_auth "Bearer foo"
iam-admin-get-devices-by-user-v4 --login_with_auth "Bearer foo"
iam-admin-get-banned-devices-v4 --login_with_auth "Bearer foo"
iam-admin-get-user-device-bans-v4 'dsK9dCEzhVnOv0PQ' --login_with_auth "Bearer foo"
iam-admin-ban-device-v4 '{"comment": "bVIaKiHfoeorY7A1", "deviceId": "otGFyv2SMjbEr50q", "deviceType": "GdCZIc6EFqBKxbS7", "enabled": true, "endDate": "OgRucL1jwRXzfjDZ", "ext": {"ZBmOau6syme06c6S": {}, "KLc2mEC3IXl5XCbk": {}, "OfHaGr5kdazlypvt": {}}, "reason": "6lSLfU7HByGXPMqx"}' --login_with_auth "Bearer foo"
iam-admin-get-device-ban-v4 'j4hBgVY3YAxZLKbc' --login_with_auth "Bearer foo"
iam-admin-update-device-ban-v4 '{"enabled": false}' 'dyjqf6Q4oiwoJcaR' --login_with_auth "Bearer foo"
iam-admin-generate-report-v4 'MEb15LBlTVufc5Zy' --login_with_auth "Bearer foo"
iam-admin-get-device-types-v4 --login_with_auth "Bearer foo"
iam-admin-get-device-bans-v4 'ODR2NVyn4PRqf3eR' --login_with_auth "Bearer foo"
iam-admin-decrypt-device-v4 'bZqBAoKGcVCdMiSN' --login_with_auth "Bearer foo"
iam-admin-unban-device-v4 'V4qBrt1kcLmRv6EJ' --login_with_auth "Bearer foo"
iam-admin-get-users-by-device-v4 'tl5xWnsb8oWq94RI' --login_with_auth "Bearer foo"
iam-admin-create-test-users-v4 '{"count": 25}' --login_with_auth "Bearer foo"
iam-admin-bulk-update-user-account-type-v4 '{"testAccount": true, "userIds": ["NWVIJnhhwFDV1Vit", "aomvWTzdsW4N70wY", "S4Kj7Yi2VvoQNW8Y"]}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["c481dYdvGxJAMDRA", "1LF7jdWlekFwO94V", "BCV9qJhWva2FPBuj"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "X0geYCpGJM4sqsPN", "country": "JMiZXXOFwmGWAvNF", "dateOfBirth": "0Z0GkwxUNYyNwGiK", "displayName": "rknH0Y5mrQgLC6D2", "languageTag": "qsFiQHglUQMZi5Wj", "userName": "MZfOadpgegCUjTdi"}' '1Ehr8OtqpNJ9R8Tu' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "Ny4ejmVA3vMCsGyP", "emailAddress": "d12B8QNUz0hFFNbH"}' '6j2W4roZM2UKAXEE' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 'sL5D0oiFchQnVeq3' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 'g2AB2WIRUQmauIY5' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["HXCZ0W4XmWP0HzSd", "iylLhVYszm8xY33O", "Qbumu2QHLyZNuysy"], "roleId": "M4OfCzdQCXMAWnf8"}' '7YPNOe9Eevf1fhMg' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["1E2k7QLFrVgtX7y0", "fPOieDCow2zXyFFV", "pM87yqEwEacQMTlq"], "roleId": "N4LKkxJ5v3SBafnK"}' 'NiMPbFkFGA85W3HJ' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["kqgS2B37wwoPYOHi", "IsxmsLBPBJuNLnWR", "rtW870qD88ZcduZS"], "roleId": "e7W20UZcDaiq0nEZ"}' '7PyhqFJkDClOsKmf' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "RVLMlHi8i9gOVqaj"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 'UWrgEsWDtaKzn8dZ' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 'wnnGeZsZVgbPzPFb' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "kFN7Tpkx6GcfyOg6"}' 'ZUrrp9ubg9mndW2J' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 74, "resource": "dgJRvpZrSpWX3KEe", "schedAction": 2, "schedCron": "BjV00ReCXFffjJJx", "schedRange": ["lgjzIhpgOoIOD74V", "21HWDAfvXwdxbyp4", "HAPbBbNPStVBUpKg"]}, {"action": 84, "resource": "4A2ODiZhbfb8QqCy", "schedAction": 75, "schedCron": "Z7FHls3nyvconqbH", "schedRange": ["QqKLQKe3xmj6s0Gq", "sWncp5LrqbiKudv9", "z75SzoCV8ZMi2o1n"]}, {"action": 90, "resource": "FQfXFD58sG6uDhFY", "schedAction": 23, "schedCron": "saPFC5zBW3ZgVZCj", "schedRange": ["9ObVGT0Scwl4kNmC", "i15XTJTgCNNH7RtG", "5Xmo9Q0Wb07N17fk"]}]}' 'xZSc6VbE0AGcekjM' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 82, "resource": "JrCJQIj1haAosKgl", "schedAction": 33, "schedCron": "UguyDoN91uc28HoS", "schedRange": ["pGt1g0GGbT4Hf2PP", "KOldkbgX9CWJKwXX", "Sbv5eg9q86IaDFjj"]}, {"action": 48, "resource": "2xVpge70WsLfgbZi", "schedAction": 9, "schedCron": "yjbE8lOLAfTXKLzb", "schedRange": ["rddqcKLa7LevxNHO", "SEhQRZIp693lRwtc", "43atCuCFxbfbz4aQ"]}, {"action": 63, "resource": "oM6FoqCYw7AlxO6q", "schedAction": 6, "schedCron": "Uvk0LEi26Ls7mjRx", "schedRange": ["NmvvNtjJNQepUTGh", "wlY4lPzlsCR5rVsy", "fcH7WjP7HuGz3b5W"]}]}' 'AEvdRF9bqMj4ro5B' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["19VE838c7OydVw0z", "CqoMZvpIOO97DmQ5", "ZOzx6iCJTu60Iifz"]' 'Mhkk5PxsjqbCKpMv' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 '2Yky9DYkD2sIllFt' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["BtXJKG3rqBmILhtW", "m8RQvRUbUDSiefGE", "dLucrtO2gCQD057D"], "namespace": "rDlgC2nzS9SiGUjV", "userId": "Aw4v3q6JRHcn7Kao"}' 'CEkRdo6qHYIZWnXq' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "Q1oHFJ9Q0vqsL9So", "userId": "mqWsGA76yxi0QzZW"}' 'fmP2sx0KO5bEJaPn' --login_with_auth "Bearer foo"
iam-admin-invite-user-new-v4 '{"assignedNamespaces": ["AFjsodyJQVVBrShG", "bIIuqK8C403HgoXC", "R6XOMXwKdfqk8T4Q"], "emailAddresses": ["HK30EX0FclpDl5Hs", "uracO5MnjnxD1OXk", "xShFVQTRekLfjmy8"], "isAdmin": true, "namespace": "ip8JyxJ39vrtuWWr", "roleId": "qTZbSqBSKp8Amgwh"}' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "Yzk33J34fiTxK63O", "country": "HpnUCGBVfpctNFUs", "dateOfBirth": "UQ6ZXQcb2o1J5euL", "displayName": "AbBgejqc0apxqZ20", "languageTag": "9BySn8aUaGlAyvIs", "userName": "lt7N1qcxKs4nlf1M"}' --login_with_auth "Bearer foo"
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
iam-admin-enable-my-email-v4 'fqUZXkjHvcUOTlxN' --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 'f09pefgFIiJssShB' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "sQjXvfQgQDt6ce8N", "policyId": "DMErA82FrR1GSogk", "policyVersionId": "ewIzTOqKkcjRh3l2"}, {"isAccepted": false, "localizedPolicyVersionId": "m5TCAU1cKApdJDnE", "policyId": "73GLmSZns5owBhoU", "policyVersionId": "g4LsGP6KLPXkvUv2"}, {"isAccepted": false, "localizedPolicyVersionId": "iXaBzsmaxjTZPlLi", "policyId": "tytGka7Kv5TacQKF", "policyVersionId": "4OlRGdmXxETLEQrr"}], "authType": "EMAILPASSWD", "country": "Xit6boOLGCcg16Dq", "dateOfBirth": "wdQPQ9HkSSV8e1Mg", "displayName": "TTLS2FgarY903ING", "emailAddress": "IyEfRBEj7qms9AGQ", "password": "ExPhgr9gGfC0Gjvp", "passwordMD5Sum": "gJfuBs1Vpqn47GVg", "username": "hTH2wToOnq9U5lyW", "verified": true}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "Xwt3wmRTrDCjhnKv", "policyId": "sHezWTqgYPixtHk6", "policyVersionId": "lWq6tEeUmU96FLEa"}, {"isAccepted": false, "localizedPolicyVersionId": "UnUDh5yGjjv4Mwrv", "policyId": "2vancmR6Z7rb21A2", "policyVersionId": "E9pX0BWCMqPsRk5h"}, {"isAccepted": true, "localizedPolicyVersionId": "hG7BrorbKIKuOXJP", "policyId": "m5ztrr09CDA8Ij5b", "policyVersionId": "GKSuopWQbaCvdPSq"}], "authType": "EMAILPASSWD", "code": "Z27GpvHCDx55JZ5z", "country": "6gujpFzlPspQD9IR", "dateOfBirth": "IpDDubntPCFxfeoW", "displayName": "2NdSWzOXjO1NQUqW", "emailAddress": "HBW78XREZCiTNAxq", "password": "26gZrPqCsSDspvgM", "passwordMD5Sum": "16sZ6rjnkH4ExObp", "reachMinimumAge": true, "username": "oRvWnfmGFy0eUoOB"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "OF6gp5UfmjtiVbqJ", "policyId": "nZcrqrPye7fCwi7I", "policyVersionId": "l2wIFlHm9N6owMHM"}, {"isAccepted": true, "localizedPolicyVersionId": "driXU9loOxpmEuwD", "policyId": "Vc12r0DVUGgGHkap", "policyVersionId": "TCafFMdvYiCBuzUU"}, {"isAccepted": true, "localizedPolicyVersionId": "CZvPxT5zbreMc9fB", "policyId": "oU3RHNDFjLKFrepy", "policyVersionId": "56eW1kmb15QeIQF5"}], "authType": "EMAILPASSWD", "country": "U53z6joBAhAlJGI2", "dateOfBirth": "YYb6ajBjgq6eY4PB", "displayName": "NHKPx62tHxDb06ZF", "password": "y3uglSp2UxvF2uLX", "reachMinimumAge": false, "username": "k80y9uxgVLGgK8aV"}' 'SCN6oCETQ8gIDRdD' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "2wwMXwKVXGPhEJsc", "country": "7rZpxaPHc9r8eToF", "dateOfBirth": "mkHJ6BPOKFLxIwKs", "displayName": "sw647YwDudnGRufO", "languageTag": "UGfMjTU226l07jPl", "userName": "cYaqYM7YfBmhjI9Y"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "28qVceS9UX48dKPC", "emailAddress": "FUIeyYEymNXzNX6T"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "Gh4UdEweeBsJEvBb", "country": "AvCmlh6Z1oz9Baix", "dateOfBirth": "UUvmzbajE2gjooiD", "displayName": "nc1NUb51lEgUwQ9t", "emailAddress": "kWaMOH47CAT7cBP0", "password": "918JaEBQBP766LUn", "reachMinimumAge": true, "username": "0oQgcHdGGK3x76U1", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"emailAddress": "tWwF7RnP1oK3c4RV", "password": "fjB0zi3XrYZUiN24", "username": "ol1qqbalgizL97yc"}' --login_with_auth "Bearer foo"
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
iam-public-enable-my-email-v4 'JV5YqE2myQzl7X9f' --login_with_auth "Bearer foo"
iam-public-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-public-make-factor-my-default-v4 'Hr6WvBxmBvNj3kta' --login_with_auth "Bearer foo"
iam-public-get-user-public-info-by-user-id-v4 'Df9B22HGgxakPt7I' --login_with_auth "Bearer foo"
iam-public-invite-user-v4 '{"additionalData": "YzaZUTmvsEzLPnnG", "emailAddress": "snfmBerp84qjwzWp", "namespace": "CF1vyamjsEzwtLPx", "namespaceDisplayName": "K1os4qR8LaQzEb39"}' --login_with_auth "Bearer foo"
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
echo "1..366"

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
    '[{"field": "sZTdFfC8x5aHLsXH", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["JTTy9JrNz1K5M1qg", "FddYvifGHawNx6yh", "niEHLbEQKc0aUvrK"], "preferRegex": false, "regex": "DIjYC4df9qswSlpC"}, "blockedWord": ["I8DhjlxUyrs3OSes", "E5p0DwUj2HKUvPYU", "cQBxMSdOOsn2Nd8J"], "description": [{"language": "pa19GJDK46Eehx7x", "message": ["asqMY9aulsL6NOV5", "agpS6A5mkufBpWVx", "IK9D2bTcgaKoccaS"]}, {"language": "wWcZmzCWGI1cIQcP", "message": ["WAShIhieSKUf3zKb", "yQk2vQTYX1xsth28", "NZZgsXycuQNGIDeH"]}, {"language": "lf6IcX1K9JrK6Or2", "message": ["xx7rLwrPoWiywnxu", "DLLuIaSxoloIH1gB", "CWVFrvls0ZwosKhD"]}], "isCustomRegex": false, "letterCase": "8TNiP8KgEAj3dbRT", "maxLength": 71, "maxRepeatingAlphaNum": 6, "maxRepeatingSpecialCharacter": 7, "minCharType": 16, "minLength": 71, "regex": "6dO3zkbDseh4tJdo", "specialCharacterLocation": "GcwMBmegqVUaWMJB", "specialCharacters": ["jrV0p9A7tcHrV0Mb", "JGr4drgkDuWS05m0", "pGzazM2BUXnzUEWT"]}}, {"field": "iKMJAf6AgbiEDMfC", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["gE5gcfF8AMGZ2FBS", "93Mg6TKwdRMraDLr", "wh3d0ykRGkgqUNIb"], "preferRegex": true, "regex": "MJ9ABbKVWO2YEDiq"}, "blockedWord": ["kwKbpdk7wlDngNiP", "PjpSAlZwFGpea5Ob", "BB49Km4ClIQmkIdL"], "description": [{"language": "CvNhZ6P8aqZ2yfrC", "message": ["1V7ZpJZPHCMqvcYm", "eDLYEzs2SQUdKr6v", "gqkjycqclNlBORlC"]}, {"language": "8ZkjsxYtgxplHTPL", "message": ["zynjFZgF3erw7Usy", "Hq4bBb0n1JhPUS8B", "RPGV9n769zLJdKMe"]}, {"language": "xeJc7NvgTSgKjCxZ", "message": ["jKf8NA4cGUaDfy9X", "nH2r0EKrk5VlnKsW", "CPccAFn5CEPoH6op"]}], "isCustomRegex": true, "letterCase": "5DSO8JyX4IE1z3rD", "maxLength": 47, "maxRepeatingAlphaNum": 82, "maxRepeatingSpecialCharacter": 34, "minCharType": 78, "minLength": 68, "regex": "yrlzrJ4QHbfnAdtk", "specialCharacterLocation": "ujxHff7n1yaNCcjg", "specialCharacters": ["FhS0URBhl0L5FCbO", "n46W2B2uPQLrt2t6", "bVpCgKvPXSDufmKh"]}}, {"field": "783cV54JsVBRB0rY", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["ykA8zBJX0rkOHUkY", "5aSlqhYoSXbn6l5x", "Azc1nc3eFm950dtV"], "preferRegex": true, "regex": "fE2g6jXV7oai2oDm"}, "blockedWord": ["9FaP0HJ98tE4UyoQ", "g0b0sGOkzxVt15LK", "mkQ7YBhsOuJ0ypkk"], "description": [{"language": "t2G4eFh2YNsdoxpL", "message": ["TBM9Q8t829Ido1Jy", "veSRiBq23kyH9jQb", "HWkcVk0X28GS54vl"]}, {"language": "7gIKBc7OYTylFRAJ", "message": ["KySnC0cfPl3Z2zSB", "bs4PAV72u8AxE2IQ", "eoxYV4UcYzswAGpX"]}, {"language": "qQxctuVaqPJGAHEZ", "message": ["muQrZ8GaQ4OZ2nDo", "dm4TNs8mAj6IKSYF", "dJwgZsRPOzwuDSdG"]}], "isCustomRegex": false, "letterCase": "4VoYfIksth24cZBp", "maxLength": 7, "maxRepeatingAlphaNum": 12, "maxRepeatingSpecialCharacter": 60, "minCharType": 65, "minLength": 11, "regex": "kOdJagEmTuaxlxgy", "specialCharacterLocation": "wkbdOsyxX1tfW488", "specialCharacters": ["oYUT4jyCVJ0V8obT", "lGVThz4bm41oIcV3", "3yjPxibDjfF7JkjC"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    'VpZKMxkFkBtXMU6K' \
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
    '{"ageRestriction": 89, "enable": false}' \
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
    '{"ageRestriction": 72}' \
    'OpPTVxEgBFzG8tlk' \
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
    '{"ban": "xWKCU1XN4gl7yHvE", "comment": "qpJSrDXVwCkhOQ16", "endDate": "1TFjROYJm75VIuCO", "reason": "Ckt2W1DfI8QtgODk", "skipNotif": true, "userIds": ["DcMnyCPn1FylWdaN", "V1VaZTkbbuWiiA4U", "TDgS2SVEo5M80LLb"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "ku9GYH4ijqOVM50t", "userId": "CqkZfsSxAbDJ7sHC"}, {"banId": "Lup8pmEosOXglQww", "userId": "deLVpmXqRwVjc3W2"}, {"banId": "ANmE3VVsQ1fm9EUd", "userId": "iaRjuLsKZoqnpKwh"}]}' \
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
    '{"audiences": ["pZVdw5UMa8ymxtEF", "LwELCY2vIddlxnA1", "VynioJcAPwVHUGcs"], "baseUri": "1ACMvoY4jWH9dFmO", "clientId": "HW0j9suukPE4JwQO", "clientName": "NQ2vCbMn0Oia336u", "clientPermissions": [{"action": 17, "resource": "HviBEWpbusO6EyVq", "schedAction": 37, "schedCron": "tRedh1SiZlOpIQ8G", "schedRange": ["L7jBF1R5OexAPzCG", "6ZKQClGc1636nbfM", "3J9G40Y62bCo941A"]}, {"action": 76, "resource": "JzsE8WObt6t0w8LO", "schedAction": 56, "schedCron": "X4Q0B2Cj0oOmBmXu", "schedRange": ["1KiTTiz7yrIvQj2i", "sN7bRwcr16lW5Ywg", "ZpjlMMtPWg8217m7"]}, {"action": 34, "resource": "aDa9PDwhu31d8eOd", "schedAction": 39, "schedCron": "BbeuQqm9wM7mgTtU", "schedRange": ["dPVcQijMBhs0kDP6", "d3nuUZ41mSeS9SnG", "qhJOvykBcDpzD9zh"]}], "clientPlatform": "6dtPK4fVHLMvrCsH", "deletable": false, "description": "RYxH2Up9VthPjFrK", "namespace": "7Hip0eONFDgUPShG", "oauthAccessTokenExpiration": 42, "oauthAccessTokenExpirationTimeUnit": "wwFKY9AMpcwJd4Sr", "oauthClientType": "igIxAhbFMZfxaznl", "oauthRefreshTokenExpiration": 59, "oauthRefreshTokenExpirationTimeUnit": "ZgQEvFzox9wHocX3", "parentNamespace": "DRWobEoGr8W97KBe", "redirectUri": "dcr6PM51z7i0wQ9e", "scopes": ["gK2t46EG8I2lTviK", "bOgVuN3nhkn6QIes", "NoYqvVsakylHikKk"], "secret": "pOjqwgKvfXXs8pDq", "twoFactorEnabled": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    'LUyBt5hDs45siG30' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'Lv9iGa5mkZjnRXVc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["g6AByNpBo2JYkwLd", "mR97u9MVUii4KpYc", "b1AUsESaBOTHnbX9"], "baseUri": "tC9PQlFAGbMtEybf", "clientName": "cAl0mnsAkRT2k0Az", "clientPermissions": [{"action": 6, "resource": "XoTNMuqZTHwo1IAJ", "schedAction": 88, "schedCron": "M8Lfkut0wnT24wh5", "schedRange": ["9RGSbBMh7jpszuVk", "6iPdJ2boQqCCyJfT", "hvCJieqRSGN8Mm74"]}, {"action": 68, "resource": "zBBRSknxyWkZObuv", "schedAction": 17, "schedCron": "IVuGv47XJpkMiopQ", "schedRange": ["rVL3ZZTVxqa9XM2g", "Y14iWk12Jffk8dwK", "NPUOHNZxML3yoBM9"]}, {"action": 34, "resource": "Zh5qtrRbNnGejdTG", "schedAction": 43, "schedCron": "nL8fBFP1ABaIKrEt", "schedRange": ["8d3o7cTS9OIIMErn", "NTLXHrsOFsbhRow4", "iaYKy0IjsDgbJ37D"]}], "clientPlatform": "N2lDvdh7okHl1wMh", "deletable": true, "description": "PO5Wn7rNG8rGp7Fa", "namespace": "dvo5EzpX0IttsRez", "oauthAccessTokenExpiration": 50, "oauthAccessTokenExpirationTimeUnit": "7GL1CrO4ZuoGZSxT", "oauthRefreshTokenExpiration": 52, "oauthRefreshTokenExpirationTimeUnit": "cQkcZb8cWdVH9bww", "redirectUri": "15zZsaYrJAe5Kd5Q", "scopes": ["B96ndlO6iPGC9Rhz", "MC7V8BEphnRXnSpC", "zyb8FkoxQbrPngi8"], "twoFactorEnabled": false}' \
    '58pQswqKLutINusO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 38, "resource": "NesGiVnt9p2to7Yj"}, {"action": 0, "resource": "pWyvib9CDW21ANrl"}, {"action": 31, "resource": "mPXC2LfL2m5rP2A2"}]}' \
    '0t6foPPH94SUinY5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 7, "resource": "v8LHYivmD0ekycMK"}, {"action": 24, "resource": "gxJhk4EdTZ000rS9"}, {"action": 48, "resource": "94HLvWFsXHtMP0k9"}]}' \
    'L5dREQbCqfh0gpAB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '64' \
    '3CX0hpB1ZGMMo5DS' \
    'ozCuFsrBMtoOeLfM' \
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
    '{"blacklist": ["CYxSeeJOlxa395rg", "hZwGhdZJkkGhYvXY", "MIyaEMEqOpwetb82"]}' \
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
    'b96rsH73hRfDgl29' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 135 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "GWKpItMt4GszRufk", "AWSCognitoRegion": "DFLYyNBPlMrkse9S", "AWSCognitoUserPool": "GcMuV5phhU315LUC", "AllowedClients": ["6HSMQ32UznXNd6ve", "29lqqtcLJW9eTJvK", "NDFrx6LabyDnqXjX"], "AppId": "KPIcxh0x7T6RQGnn", "AuthorizationEndpoint": "W4ugGX6mKBbgTD9x", "ClientId": "L07ZzzIs3Jke34ZA", "Environment": "UuLP897ooMLnemwK", "FederationMetadataURL": "AvgDXNrFEE4Jf4hQ", "GenericOauthFlow": false, "IsActive": true, "Issuer": "ZYvyeHmfoFkUDP86", "JWKSEndpoint": "4shbnQ3bVvuvpsDJ", "KeyID": "XPCWkX4Kpi8CJ88a", "NetflixCertificates": {"encryptedPrivateKey": "MPGFFAQZbfbmVTEb", "encryptedPrivateKeyName": "iRq5Juikmpat75rV", "publicCertificate": "bN9ZBtzJ33tCwv8H", "publicCertificateName": "1f451FVZ630HNBYZ", "rootCertificate": "Srz7pMjESLLMPKDX", "rootCertificateName": "Lki6Oz5Bygt8Q0Rj"}, "OrganizationId": "Sf1srB7hGwGbUmQm", "PlatformName": "JHNffZENs9X0hFMd", "RedirectUri": "zryvhc1YjHmmulSB", "RegisteredDomains": [{"affectedClientIDs": ["IElc2CdRvBb0aGnM", "t625bWHb5sbX6asr", "jV7XJUOtHlzXNHEP"], "domain": "pzlMlx7b2H2THLwZ", "namespaces": ["GikW7TFA9gE6SrYK", "q6lcVOhPJIcEHbiK", "HW7flVolAWEMmQSP"], "roleId": "DTRqjlvwnnCA5tfK"}, {"affectedClientIDs": ["5ushaKTPVjyOUpR3", "uUdgNlyU4IJnqtrj", "COsE8VjvzhJwNX4b"], "domain": "hqCjlwrmsSRV86ii", "namespaces": ["c1FIMyF7CcNu2DYn", "6E9Gk51kOTJZluTe", "kDMCGUJvERxNg8dj"], "roleId": "Sb4Vt2vKQ5vlCdI5"}, {"affectedClientIDs": ["19Pf2iogwxM5DZM0", "dgozmco41750xdYQ", "g34WUV0WpmsQnp1n"], "domain": "4YGumTKOlDOy5vhS", "namespaces": ["kxERZ2AQ1jvXYBar", "5RMmmGdWl0wpj5tV", "fKU3D8WVPh0Z7YiG"], "roleId": "E2cyzTMBY7Xd0OoE"}], "Secret": "Ng2Lw7uepmahXojV", "TeamID": "ZYz2zMU9jLzNV3Ga", "TokenAuthenticationType": "G43R6nlRPrEAYqRB", "TokenClaimsMapping": {"eSc5uShoj3dGHMeo": "i5DBOsQ0Gax0iX05", "IT9Agsjl5NmnSHhx": "NmCe4txY0MsPc9EM", "gf9JCJiEvhL8ZfwC": "VJW9yspUOyHC9eKe"}, "TokenEndpoint": "XzrvzBllwzyC1aTW", "UserInfoEndpoint": "EmPgoy4TkpEw4Zei", "UserInfoHTTPMethod": "d4mRoFNxv10ckMQV", "scopes": ["jKk3bWJ0ZuYSe3sI", "0x2hc8vaN1Off5gR", "ZZMW3huAIzBPWBYK"]}' \
    'AEFTdlKNh6GTzKjs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 136 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    'Cqxx24QM35bSkFrv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 137 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "GciNHb7OY5YIpOLJ", "AWSCognitoRegion": "W52uz3c8pz63M0g4", "AWSCognitoUserPool": "xXT5Ts4e0uR47OzU", "AllowedClients": ["GHeBKtpvyRNgjZkd", "DppvEJiUiDGXgh8B", "KcLqtRZ93LuR8OEy"], "AppId": "ICvwgwBFehwtdJLd", "AuthorizationEndpoint": "n3R2wo8beVQvgeP9", "ClientId": "qOHaLwYnXxrz7sLm", "Environment": "P70LxN0f3JA27Qz5", "FederationMetadataURL": "SjzQfOLYu9O46OOz", "GenericOauthFlow": true, "IsActive": false, "Issuer": "9p57qSpHerzO87cg", "JWKSEndpoint": "7TqtMiQgi7Aj28qC", "KeyID": "RbwwZc4ZS1NMkrnH", "NetflixCertificates": {"encryptedPrivateKey": "s1Iyhwqk140MolIr", "encryptedPrivateKeyName": "nlkRVbcX435TDYpk", "publicCertificate": "k2Gza6DrSycophHw", "publicCertificateName": "3EoEEClTO9SDKnMl", "rootCertificate": "nKW9jiNMu9QVrMeD", "rootCertificateName": "4bD8gISE34yIAZQe"}, "OrganizationId": "igiA3wBrmBYIlZeh", "PlatformName": "eP72AB8EO3YrlyrW", "RedirectUri": "owUpUDVLlTtuJJsH", "RegisteredDomains": [{"affectedClientIDs": ["ZVsG6izJZruOJvSR", "FLDSdj8elbtHvDU9", "1DmHzwiqVPCJ5j18"], "domain": "Ou3aY8nceFU5GKmc", "namespaces": ["EKp8AQwqgJs6O0Qj", "0ccMkdz6zPz3BVHA", "qp4O9XSjap24esyj"], "roleId": "h6Wc3migf2n6iQyr"}, {"affectedClientIDs": ["5cb5YL6fwBiaVPmm", "n0T5uzlmi2NY26xr", "kPPdg3pXjmtpNfCr"], "domain": "Ij9ntYo3dupUHNu8", "namespaces": ["abrVVOKxr9Pa315F", "KDjG2ApSV94Jy6yC", "SXBqJqjAbVwSaoj1"], "roleId": "ugjr8mPkr3tZ506E"}, {"affectedClientIDs": ["RSVy5M3rrkxu0U9h", "9gCNVZxHGxhZqNXJ", "6JXSh0Z3SWISs1dY"], "domain": "rJKmx1BT6iLFQejN", "namespaces": ["ZJNF2hm0TqBQprHn", "3whPKU5abnqw8fFa", "30pVbhr1BHh1arZA"], "roleId": "yuLcZoEkPpqKhP2j"}], "Secret": "WnRTglw0gdWoE4es", "TeamID": "uiDrquccz4J6fFQe", "TokenAuthenticationType": "zJ5E3iYHIknvPcJk", "TokenClaimsMapping": {"jRevVYfiExpAgoK9": "YDq1x3dkbJFDEBEO", "OvJ5BKeipIldsgB4": "hOxb88WgKSLIpneD", "QCfwucHRL3o2Nstr": "L6TsJeRcE7GuwKn6"}, "TokenEndpoint": "3KIDTkUCqbbHGJGO", "UserInfoEndpoint": "TvKKRTHDntaFiufH", "UserInfoHTTPMethod": "2YR6QU7fj6w17arN", "scopes": ["s12hOoLVM7UFnuJD", "zeEkDxaVogxHrOon", "2OW4Zw5QwVKWNy2t"]}' \
    'nF2MifJR4hr4gdJD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 138 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["ujYnVnFK6gB6ZxC6", "yYUVUJYnQ3jOGmRO", "IqxqQ0gcNeTflyvU"], "assignedNamespaces": ["h3w5ZtfwmOCKpFSM", "F0tfGIZCTNiIRc9f", "EjkZhEpAJMCxMp2J"], "domain": "0hDg2kMgkvhoQe9g", "roleId": "D9tGN0nE7M36mI9u"}' \
    '3EeZtLQij2JXsqdX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 139 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "fhZTTaCeqGv7meuQ"}' \
    'hJuq1C6JHkWMSUbq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 140 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    'ByWN2BCnRz9w2nur' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'RetrieveSSOLoginPlatformCredential' test.out

#- 141 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "0B9jKaunAcylsau7", "apiKey": "wRQmL4i3eRyIECED", "appId": "a1I4lwXqwPfq3VzH", "federationMetadataUrl": "Qjtolx64w1gyvjac", "isActive": false, "redirectUri": "tGqxMnoAXRlcq0mY", "secret": "WKQYlqMmu2pvF6rP", "ssoUrl": "03bQaq1cT88H6RCW"}' \
    '8gJmGzDlqxtLsR2A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'AddSSOLoginPlatformCredential' test.out

#- 142 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'GOiPhNt2IdH8aYYU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 143 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "T6mma833TDzk66ix", "apiKey": "88sAUrXr7MXxCvyy", "appId": "7caxz4MQrODLNlxi", "federationMetadataUrl": "EjQBCZx9DJ4V97SJ", "isActive": false, "redirectUri": "g4bsO4YHEYLjTSND", "secret": "f3zazm6p5Y1tkG9W", "ssoUrl": "wU4Ty6Ch5QYyFjuB"}' \
    'quE7xssm4hxczskb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'UpdateSSOPlatformCredential' test.out

#- 144 AdminListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["SUbOZ9WNl3apJmNA", "bl1g5ZmTTGYRbP4Q", "Vey9pEz1TV5cUtPB"]}' \
    'sw01i5Mf7WvbNSee' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 145 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'DNfUESLlwHv3Jgte' \
    'OLyKp8a1VqxXnRhD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'AdminGetUserByPlatformUserIDV3' test.out

#- 146 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'd9TGkO6aIYqftw1S' \
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
    '{"bulkUserId": ["rM2nhSEanfUYrMU6", "A43UKGpvC1cr5T1P", "SXhduTWchzXDv3TA"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'AdminGetBulkUserBanV3' test.out

#- 149 AdminListUserIDByUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-user-i-ds-v3' \
    '{"userIds": ["tBjP4HSuiYCbG0Uy", "YUJmNL8p6AbdtU0C", "DrlQpKB8qoel2QK3"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'AdminListUserIDByUserIDsV3' test.out

#- 150 AdminBulkGetUsersPlatform
$PYTHON -m $MODULE 'iam-admin-bulk-get-users-platform' \
    '{"userIds": ["aSOYdmMDikc3Fjm9", "HoQDemtiQvURYZCe", "F30RT9rBgM8o7lxX"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AdminBulkGetUsersPlatform' test.out

#- 151 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["q7TkdM7FVDCBcvVe", "grZddP8lLQo6tHj4", "z4cAM4LMJfWNZIxA"], "isAdmin": false, "namespace": "rqgvEtEs2LpE0qfb", "roles": ["vdU8hlDoC9FnxqBl", "PBYJ7X6uVy7FWTSf", "Mi2CPVGxjcdpdCqV"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'AdminInviteUserV3' test.out

#- 152 AdminQueryThirdPlatformLinkHistoryV3
$PYTHON -m $MODULE 'iam-admin-query-third-platform-link-history-v3' \
    'eePMSqb8y8qJTUQY' \
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
    '{"listEmailAddressRequest": ["40Zrpn0vAD9YsPeD", "WrAVQZSvgWuCuLsU", "GrVQAbhS54ZuQHKe"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminGetBulkUserByEmailAddressV3' test.out

#- 156 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'rsDmJLUHAKtfXCKO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'AdminGetUserByUserIdV3' test.out

#- 157 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "na8DdjtZhh6ofsUo", "country": "Rh6r0e0J6vyqPw7Y", "dateOfBirth": "lmV3kES0Hi88UYgS", "displayName": "V40OvY7apPCrN5bE", "languageTag": "hmuHgKeWizEpw1zN", "userName": "0mOYgGhHMz9dddLW"}' \
    'JWDuSYtCaIv4Lp91' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'AdminUpdateUserV3' test.out

#- 158 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'wYUJPbvzn8TYoMDA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserBanV3' test.out

#- 159 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "aUXSuBQdvdhJoT0W", "comment": "K5ngNUxDKfZYofPG", "endDate": "UbSaA00nKxQjYU6K", "reason": "lavIiLxU2I1GyJS4", "skipNotif": true}' \
    'LHW882riiPfRQ3rJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminBanUserV3' test.out

#- 160 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": false, "skipNotif": false}' \
    'SZBvkehRn83B0nrW' \
    '1qx3NJTugVWXz8dv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserBanV3' test.out

#- 161 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "7BiEUqnzxs2deMF8", "emailAddress": "UAJIHEZv5zyUUyNJ", "languageTag": "kvA5xF3zHtZSd3Qz"}' \
    'XhkrN4pWryt4XTNw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminSendVerificationCodeV3' test.out

#- 162 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "pp0ni1YfIgLZ4YIz", "ContactType": "ElrLZOBLHCKmLBaI", "LanguageTag": "wlokbAFW8RgBUwBL", "validateOnly": true}' \
    '8BqM8UzvKqeoTiNK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminVerifyAccountV3' test.out

#- 163 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'GRUMrimGAz6OhmHO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'GetUserVerificationCode' test.out

#- 164 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'pCdr3WzDm3hJdd6u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserDeletionStatusV3' test.out

#- 165 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"deletionDate": 1, "enabled": true}' \
    'O9TiTPnIh2iaIBpY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateUserDeletionStatusV3' test.out

#- 166 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "C4txul6VKYlNYYlH", "country": "PwKDpJmkeoAkp3Z4", "dateOfBirth": "pgyJYwclb4gd4QgQ", "displayName": "ut2hiPuDdOPHcN9d", "emailAddress": "rwqytieXpIZfr5XD", "password": "q9dGLHjtgE2bTXJx", "validateOnly": true}' \
    'AZxMWdoleYNHXeOp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminUpgradeHeadlessAccountV3' test.out

#- 167 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'aRDwYLge851PbK2M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserInformationV3' test.out

#- 168 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'FKvw5TWjAh4gy41L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserLoginHistoriesV3' test.out

#- 169 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "LzQ2IjY5PeNr4JmY", "newPassword": "xH2qs28hePJjMp0T", "oldPassword": "KKUBfPNI9f2oLWDP"}' \
    'SZexfKVxqdxmh5QW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminResetPasswordV3' test.out

#- 170 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 48, "Resource": "f6jQZcYerH933X7i", "SchedAction": 31, "SchedCron": "EEM2KOusNEHcI95G", "SchedRange": ["GdJvucDbs6UdccuM", "2ykRj3WnyAaUaQBK", "FedL2uduXvZUbQQ1"]}, {"Action": 78, "Resource": "FhD3NExUFipJsUiD", "SchedAction": 0, "SchedCron": "HTlRugM7a2UZgees", "SchedRange": ["ipbP027okM5E8tAa", "jVSvLRj306RDuaSi", "xXEdloYZBkatNLc4"]}, {"Action": 8, "Resource": "eq0O6VsXtOlQwj5x", "SchedAction": 85, "SchedCron": "hL75QboMHCtzEF9F", "SchedRange": ["Seg6WYgtfuqJHrs4", "e3RnWR30MdBZezfw", "c3H0qSbMq4GLj8aG"]}]}' \
    'sH0qE5p601ak59yF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminUpdateUserPermissionV3' test.out

#- 171 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 92, "Resource": "EcS0ynIMOYWpUYUQ", "SchedAction": 80, "SchedCron": "SbTt6M2XizikCh6q", "SchedRange": ["0yq2WAHtL7IWE3MF", "qvfDG5jvMOaXrDlE", "X42U0syrGNhBmgT2"]}, {"Action": 35, "Resource": "D4iBK2O7qYtOHV5h", "SchedAction": 27, "SchedCron": "kYEVylINJpxFY8E6", "SchedRange": ["pU8eHjh0aTjIOaQt", "0snbE0yMvqF7TJ9u", "B0zypjJiu7BIimNu"]}, {"Action": 45, "Resource": "U43K8bihdw3prp0U", "SchedAction": 69, "SchedCron": "kxQTAYGfE6hXZ7XL", "SchedRange": ["oWCGf0dZEeXBd6mG", "G6SHcZbX2wNnT6A9", "zosmDnXoncy7NZQ4"]}]}' \
    'PkAPXBCfkE1Fb0y9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminAddUserPermissionsV3' test.out

#- 172 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 70, "Resource": "eP7yh0zsKhR60HZw"}, {"Action": 96, "Resource": "LYXXMndxBPKmHVB7"}, {"Action": 5, "Resource": "pEeHhXiJcJqYSxVK"}]' \
    'UYMimVLzAP6aOzsT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminDeleteUserPermissionBulkV3' test.out

#- 173 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '33' \
    'b5HPsBU0Eo6QJ9vB' \
    'RJ4UP09fabC01Thm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserPermissionV3' test.out

#- 174 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    '9f4AWpyiKVT3OvEu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminGetUserPlatformAccountsV3' test.out

#- 175 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'jx5yjtQSCJaOHzpb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminGetListJusticePlatformAccounts' test.out

#- 176 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    '623EciYoYOPVg6DL' \
    'EZ6DxpwBm2N8PdQ5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminGetUserMapping' test.out

#- 177 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    'mQaGXEbnmWR0H3Ek' \
    'rHqaLNdfKszYZzOg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminCreateJusticeUser' test.out

#- 178 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "113h6fIaHSx5bClx", "platformUserId": "UOBmMwv5pmiIVnhl"}' \
    'LoMemsp7o3F2LQw7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminLinkPlatformAccount' test.out

#- 179 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "Y2VdSxgXez7VvS0C"}' \
    '9JLVQQPa7PPx4Zi6' \
    'WaC8wk7HMbJhNwZg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminPlatformUnlinkV3' test.out

#- 180 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'f5nlMDORYuXnPNJg' \
    'ayPFcyUnKXA3mcyM' \
    'mX6WF8jtNAVOYqSH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AdminPlatformLinkV3' test.out

#- 181 AdminGetThirdPartyPlatformTokenLinkStatusV3
$PYTHON -m $MODULE 'iam-admin-get-third-party-platform-token-link-status-v3' \
    '533YlJ93CCGBXv4f' \
    'P4VPzhcH4UJrrCKv' \
    'rOAi7lMgkVWJYzSC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 182 AdminGetUserSinglePlatformAccount
$PYTHON -m $MODULE 'iam-admin-get-user-single-platform-account' \
    'IDxWUxgOzeRNHIqK' \
    '5PT404mFw4HJv5T2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserSinglePlatformAccount' test.out

#- 183 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["kIQOecfLsYKTmUnK", "lrOsJmEwjGYN8VNP", "XNsmwTV8imJHNI0l"]' \
    '6jJVzF1Oi2sQuWUB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminDeleteUserRolesV3' test.out

#- 184 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "BHZonSmzF831vlCi", "roleId": "ZAZHCWMXxVh8HTrK"}, {"namespace": "qVwnpPn8N5xMRgU7", "roleId": "cPqNZrLCRRUysya4"}, {"namespace": "J3rvTzMTMSwrNov2", "roleId": "GW9i54JY23AUWFTL"}]' \
    'q0W1JqwKs1mO80L7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminSaveUserRoleV3' test.out

#- 185 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    'IOHlf6j8PZOzUiQK' \
    'Zqz5NSp0B7LODN3B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminAddUserRoleV3' test.out

#- 186 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'oi2sSAO2n4MZQt75' \
    '3XQB93rOW0guPoQb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteUserRoleV3' test.out

#- 187 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": false, "reason": "zc1RDVhs2lhdzxxg"}' \
    'ibuqUuyW3cMz9Yyd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateUserStatusV3' test.out

#- 188 AdminTrustlyUpdateUserIdentity
$PYTHON -m $MODULE 'iam-admin-trustly-update-user-identity' \
    '{"emailAddress": "uMomEHcU15St4v8r", "password": "y8IyqNVv0KVpXJTM"}' \
    'x3Y8Um1iqehObg3O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminTrustlyUpdateUserIdentity' test.out

#- 189 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'Z9j0HDtbqMFlgHKQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 190 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "IRtLfPngD83roOeq"}' \
    'E7fcCAeExeQX43Lp' \
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
    '{"adminRole": false, "deletable": false, "isWildcard": true, "managers": [{"displayName": "MiZeyIrA4QUKSJgE", "namespace": "CzvaWUCA7wKru7ry", "userId": "3AQ2sEHvSxjWoM1r"}, {"displayName": "NJLM0OOVG5cG6XxE", "namespace": "NbWqlX7idzjpKDfw", "userId": "l6XlCF6YxFMD8tJQ"}, {"displayName": "wZvUVInos5RK100y", "namespace": "H89i8ZDPXRL8cbTA", "userId": "ntB1STaab1UeibXg"}], "members": [{"displayName": "7RCe5BtKcwj6PqqO", "namespace": "gCimr3ZQNBBkrXu9", "userId": "czsYr3cFeVw70xdN"}, {"displayName": "TuOdLKK0M2B2hbqJ", "namespace": "in37P69t1KqeGz7q", "userId": "bPnXEuOzzkoBmMR9"}, {"displayName": "C4qPqJrAdh1HIk7v", "namespace": "CEq7FQ2S5VeW9ddx", "userId": "zLPV8wDjsnyPh5yN"}], "permissions": [{"action": 2, "resource": "3QiX9ZvtydbaVb0s", "schedAction": 5, "schedCron": "H42LtyZKrTJo0L5s", "schedRange": ["Hil4Q0mqa8Gatrjb", "J5YT7uvqarTvrG1D", "XZAWlvz3c3XALMre"]}, {"action": 38, "resource": "VAciu2XPPUxzXHUv", "schedAction": 48, "schedCron": "8rHd250nyihcUVGH", "schedRange": ["QczI5ZoTRUkjGoRk", "Ps2SO9XrgXNIaU11", "cBXLwTfopqeZtHJn"]}, {"action": 89, "resource": "jEvsj5WcQ99M1yuX", "schedAction": 9, "schedCron": "VLcmZKKKYARape2t", "schedRange": ["sNczam4Cdd1QYvww", "4XDokltgq2vXtUnY", "6UhDJ4pe0s0Cuhl3"]}], "roleName": "dU9b4seYCyiB4tDC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminCreateRoleV3' test.out

#- 193 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'Wx3cEX8wTi1v2abp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminGetRoleV3' test.out

#- 194 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'CWytPEi9Ze0hL9rP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminDeleteRoleV3' test.out

#- 195 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": false, "isWildcard": true, "roleName": "5GkSrcl2O47XVzU7"}' \
    'qlNVk7qnmBS3XKDh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminUpdateRoleV3' test.out

#- 196 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    'p1OkMcErmeH0lX1h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminGetRoleAdminStatusV3' test.out

#- 197 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'j0LaXgQ94flh775A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateAdminRoleStatusV3' test.out

#- 198 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'QfzNjQ7IuMSY2epR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'AdminRemoveRoleAdminV3' test.out

#- 199 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'DJjDyMDKQhuTjtQZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'AdminGetRoleManagersV3' test.out

#- 200 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "yIiAmCL8bNTTfqLC", "namespace": "v9DYBOProN4UWbQa", "userId": "KFrTv4JWElmOCxqP"}, {"displayName": "rq9I3XJWBxTLcOef", "namespace": "8MgIwkrKFEtwESJC", "userId": "e2ksG3nZE13H2fIL"}, {"displayName": "FzOlAZbDQAEJLbVW", "namespace": "H2XLIg3MgmdSvWp3", "userId": "h0xPsVY8qNwB2TY4"}]}' \
    'v9NNfQSYLFKSl3FN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'AdminAddRoleManagersV3' test.out

#- 201 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "FFJnt3rIwZdW02Su", "namespace": "6aCnL816aH6gOBUI", "userId": "MeL0GL3aefSDME8X"}, {"displayName": "2MxILI42BJMPkZma", "namespace": "y4Csye3iJLtjsu6Z", "userId": "JRCoDq3geuHFFaZz"}, {"displayName": "PIjETqcKN1gaQ4Bn", "namespace": "0cPPtKaJlw31pdDr", "userId": "XQ47WSGyDCKF0LLh"}]}' \
    'O3lGZ7eGOPj2XoFu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'AdminRemoveRoleManagersV3' test.out

#- 202 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'g8BUQUmPHnPumcaz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'AdminGetRoleMembersV3' test.out

#- 203 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "KAna0ji757aNDFeK", "namespace": "nQP2j2WsQImTwYki", "userId": "uxzLrbJ0BkGzCNge"}, {"displayName": "sQlZZHIZH0iks6kx", "namespace": "0adnimPyyzezsHdF", "userId": "ftHHR6xbcVVonwz2"}, {"displayName": "7DWfGRVhbZTvCPrr", "namespace": "ZCTU5WUJizF69PSs", "userId": "quWUafwbFPX15633"}]}' \
    'pFgA7i9tqvfHmFvU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'AdminAddRoleMembersV3' test.out

#- 204 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "ZiUW5Y0CYw5OXSGw", "namespace": "QkJuy9oLFcHHcraL", "userId": "XR2n9JQvq7NKWIHY"}, {"displayName": "sii3fCh7sieJjZPA", "namespace": "kiWumllU31uXPwYx", "userId": "edGHCIkmt4bfJOhN"}, {"displayName": "aIT0pv7XeqO8gY3c", "namespace": "4SryWB4yRaDxvxwa", "userId": "LM8HkVOW8PnLkgqk"}]}' \
    'qYZWPZTgKagTzdcY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'AdminRemoveRoleMembersV3' test.out

#- 205 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 5, "resource": "KA84d9pMsl7zrNJv", "schedAction": 60, "schedCron": "aa2RdtVb6VgA5yFI", "schedRange": ["H3s9UyeaFi8OE7BC", "K4FeVGrl5NpUG9zb", "lWEiHaUjyTHb0sSl"]}, {"action": 37, "resource": "WUvLp1wxGF747468", "schedAction": 78, "schedCron": "qTYi1TMBMzaOrxuK", "schedRange": ["vtUVtqbDWnJ2i9TR", "mJOqIl7U12hO5vpk", "9DOSgbsdGVPLD9A5"]}, {"action": 81, "resource": "9aRNDe2IoPMSQKcg", "schedAction": 84, "schedCron": "XeoHYTNoRol84Ulk", "schedRange": ["xtP5Vok9sNK1ORg3", "tChsS3fFpaS1uq1m", "H3oYfPK2QiAUhIfi"]}]}' \
    '17YrkWHNxiaNyqBf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'AdminUpdateRolePermissionsV3' test.out

#- 206 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 12, "resource": "lkd9LIoshGnFSuHm", "schedAction": 37, "schedCron": "nPqGlPnhBDOWqDU8", "schedRange": ["N3DjVUt0n0jfyDbt", "IXICLkK8ZvbnTg3z", "nlg8nmzQx1RsYhcR"]}, {"action": 23, "resource": "ISn3msrykQFtW8QG", "schedAction": 75, "schedCron": "CI9QzuQcsjFehD6u", "schedRange": ["TDYnqyNgN7GoeMse", "zFZsTBHkgcJ0DcEt", "23pci6xEljer6aGJ"]}, {"action": 47, "resource": "ZrXW84dt0TSTmy7X", "schedAction": 65, "schedCron": "PX4ig3NVFFkP7O3F", "schedRange": ["4vsohRWDyGYIVFDb", "TvRYfpJ4wM9WZfOO", "xAzmsbhi5QJuc2SN"]}]}' \
    'BaOlXfgsgBd7MYLL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'AdminAddRolePermissionsV3' test.out

#- 207 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["oPZrkjRm5Ki0orhX", "rISEaPZHLQkTHvnd", "QsCKAO2JRz3CGwtu"]' \
    'jkzxidLcAQWGVRg6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'AdminDeleteRolePermissionsV3' test.out

#- 208 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '60' \
    't5iA3JS2xeaJ08Jr' \
    'SHPqdhKHn6ZjZMdr' \
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
    '1C2TIQzRJY7UfYSr' \
    'dN0JVz4U43EcV1FR' \
    'yeeqehMNeRYKeMbL' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 210 'UserAuthenticationV3' test.out

#- 211 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    '0G4v5D6ylZguO918' \
    'X7rLoexHBMBMMAYo' \
    'kSWFwajRGUyklfLV' \
    'Y6g3PO4hKAeF4GUV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'AuthenticationWithPlatformLinkV3' test.out

#- 212 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    '5m96qcCJsVOWtu5R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 213 RequestOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-request-one-time-linking-code-v3' \
    'Psqd66ImBEuhnaxZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'RequestOneTimeLinkingCodeV3' test.out

#- 214 ValidateOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-validate-one-time-linking-code-v3' \
    'Vf6MD9r1y5Ihr531' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'ValidateOneTimeLinkingCodeV3' test.out

#- 215 RequestTokenByOneTimeLinkCodeResponseV3
$PYTHON -m $MODULE 'iam-request-token-by-one-time-link-code-response-v3' \
    'Kajxq7lzuVRVEvhK' \
    'Ibrq1xsGpdobYun8' \
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
    'hcO55hVjfWyK02w5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'RequestTokenExchangeCodeV3' test.out

#- 219 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'QytAmkanukAzAMaR' \
    'vIUhUwguGgbLLN3O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    '7CEYjxqElP5lA2FJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'RevokeUserV3' test.out

#- 221 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    '0iGLRTXGsC5mxxse' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 221 'AuthorizeV3' test.out

#- 222 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'ey2BqOxgwCymCDYs' \
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
    'uff3b7G5FDX4mu0q' \
    'PHb9Ll2EFEb8Gnst' \
    'hmQ2Y6ZGOiqrg3lp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'SendMFAAuthenticationCode' test.out

#- 225 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    'qN5bOfnqJ5bzDRzb' \
    'hMxfEDE4TrtIHyyM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'Change2faMethod' test.out

#- 226 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    'q79EdB9MxaF8QHGM' \
    '2IuQYBO8m0HgTth4' \
    '79W8rXqwGVIRWgTN' \
    'true' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'Verify2faCode' test.out

#- 227 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'Cka3Wb5kH1BrLWUe' \
    'tP7nmESQDV3BD1nn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 228 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'EzoUlUWqP4ElzL44' \
    'KEm3uHBMCP5ckjph' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'AuthCodeRequestV3' test.out

#- 229 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'URs4ksgsKJ2R6Jac' \
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
    'wwu8W1zvrKMRPvwA' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 231 'TokenRevocationV3' test.out

#- 232 SimultaneousLoginV3
$PYTHON -m $MODULE 'iam-simultaneous-login-v3' \
    'epicgames' \
    'ek8WObpf0FHYfViE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'SimultaneousLoginV3' test.out

#- 233 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'client_credentials' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 233 'TokenGrantV3' test.out

#- 234 VerifyTokenV3
$PYTHON -m $MODULE 'iam-verify-token-v3' \
    'rrpOm4M2pM4fIfcH' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 234 'VerifyTokenV3' test.out

#- 235 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'BWZM50aHbPXRns3q' \
    'wYL6LwGlZGF7XQPL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'PlatformAuthenticationV3' test.out

#- 236 PlatformTokenRefreshV3
$PYTHON -m $MODULE 'iam-platform-token-refresh-v3' \
    'AcIL7FvAMWqhyyNZ' \
    'H1CducB5y5iMdeBG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'PlatformTokenRefreshV3' test.out

#- 237 PublicGetInputValidations
$PYTHON -m $MODULE 'iam-public-get-input-validations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'PublicGetInputValidations' test.out

#- 238 PublicGetInputValidationByField
$PYTHON -m $MODULE 'iam-public-get-input-validation-by-field' \
    '7REG4meKEabfVXBJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'PublicGetInputValidationByField' test.out

#- 239 PublicGetCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction-v3' \
    'PIZqZC5d6JuFdcfi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'PublicGetCountryAgeRestrictionV3' test.out

#- 240 PublicGetCountryListV3
$PYTHON -m $MODULE 'iam-public-get-country-list-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'PublicGetCountryListV3' test.out

#- 241 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-public-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 242 RetrieveActiveOIDCClientsPublicV3
$PYTHON -m $MODULE 'iam-retrieve-active-oidc-clients-public-v3' \
    'Nf0DOHKwxDF5GJhC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 243 PublicListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["jVHiCn2hTefT8gPF", "J4WndMpQhcLK0WTZ", "btmQkwC8azx3IRWm"]}' \
    'e3C6p2r4D3NQdjrj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 244 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    'kX3AMgK3JgZufzss' \
    'A284mG7uAojLYBsx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'PublicGetUserByPlatformUserIDV3' test.out

#- 245 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    '8oqMzbE0ljQaBtb4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'PublicGetAsyncStatus' test.out

#- 246 PublicSearchUserV3
$PYTHON -m $MODULE 'iam-public-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'PublicSearchUserV3' test.out

#- 247 PublicCreateUserV3
$PYTHON -m $MODULE 'iam-public-create-user-v3' \
    '{"PasswordMD5Sum": "7V691j0FZp2vjOXp", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "qPTdurR3MYda0Y0B", "policyId": "CO4qPnvxERWjKasq", "policyVersionId": "5zQ6uZNwKjnX7vDI"}, {"isAccepted": true, "localizedPolicyVersionId": "LTBstguOdN0O7l3G", "policyId": "bKPHdDTQDEEE2mTs", "policyVersionId": "n1NwJ71szsNmnqZS"}, {"isAccepted": false, "localizedPolicyVersionId": "dEyOVYrTdDq7IqbT", "policyId": "Vv8BLsqQW8HSrEm5", "policyVersionId": "Y7jI232SjktijiNz"}], "authType": "TUe8KdizXmrmK0sC", "code": "UsqxKocHomtjoU1k", "country": "UqRedwIu1TSRr6r8", "dateOfBirth": "mzfMedpcKhvHPlvY", "displayName": "anGqEkn9OEVwLWGT", "emailAddress": "4MXhmzvRQb7c0vmj", "password": "Wq9fQqzulLGfQMqS", "reachMinimumAge": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'PublicCreateUserV3' test.out

#- 248 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'QDlRFYMVfiAMa6Pc' \
    'o7MfvikslpyL9BYL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'CheckUserAvailability' test.out

#- 249 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["VVznF6hMYfksp8VQ", "hYSFeBOp0ilGQFwH", "UtZugblT3aIDKn9q"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'PublicBulkGetUsers' test.out

#- 250 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "JXncm5igpAewbmnW", "languageTag": "k0E7YaPblcWEyNgv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'PublicSendRegistrationCode' test.out

#- 251 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "s5LEZrQXzSQRWRs9", "emailAddress": "EGnRPgYlJElgJ8kx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'PublicVerifyRegistrationCode' test.out

#- 252 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "1WEeDbql13FtQMu4", "languageTag": "1rnOzbsFBqg6dziW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'PublicForgotPasswordV3' test.out

#- 253 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    'vdNcwfUBMdNuTaiL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'GetAdminInvitationV3' test.out

#- 254 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "PFDjrSotKnpJWALp", "policyId": "Toj9rgr5RffM5JXv", "policyVersionId": "PdzEpDln04F8BQjz"}, {"isAccepted": false, "localizedPolicyVersionId": "iNJtqXltZF6aSRmH", "policyId": "U5iR3hXIbzWPKOkz", "policyVersionId": "ftOgDQAWhulbrDf7"}, {"isAccepted": true, "localizedPolicyVersionId": "L80aXFY7SQkym9Kv", "policyId": "KMHK5fbqioeoRIpl", "policyVersionId": "Y0DIzRCNAO6ZpqXJ"}], "authType": "EMAILPASSWD", "country": "gFWiH9z4E8zmaZ5c", "dateOfBirth": "g0REtUWY4fVIdqwC", "displayName": "WF5wmbOubTxAAeDC", "password": "owR3MeCNL1oNrF3S", "reachMinimumAge": false}' \
    '8VcrXLZnuMNpKEIs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'CreateUserFromInvitationV3' test.out

#- 255 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "3GC9VTK7tkJWFpHt", "country": "7MdKu9Xwn5GHJDGa", "dateOfBirth": "trYOMO91CYEjX867", "displayName": "n9PT9fR7mMuBXPDK", "languageTag": "CriRKzTZ7TXAVRnU", "userName": "VbxEJcKHE764EwhQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'UpdateUserV3' test.out

#- 256 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "fxFKIOGT1WKSmLoA", "country": "0ILaESC1GJXsoBwq", "dateOfBirth": "h0TQXa2j7v3zQJoQ", "displayName": "LTAlW75icIKUpXaz", "languageTag": "sFrmaGNoi3RPTgWo", "userName": "tLNz0u8ySxA0yrjz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'PublicPartialUpdateUserV3' test.out

#- 257 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "4q7e0EJnADXC2y0D", "emailAddress": "Y1E1SMK9oA4vK56d", "languageTag": "sYI5SKV5pDANyJ18"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'PublicSendVerificationCodeV3' test.out

#- 258 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "4miBhdVJt81fmLSy", "contactType": "Guu5rbJVIwRMtwAp", "languageTag": "GbXnR3yC6f2MHGGe", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'PublicUserVerificationV3' test.out

#- 259 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "CPtEKeBWTm78Fn8T", "country": "vZVTe4L2lXrVPX6r", "dateOfBirth": "5ZTcnVVOKMApTcWs", "displayName": "FRUlWBp4gBs9Uufg", "emailAddress": "sVbG6TUe3jbuQ7HM", "password": "PO4ozK705ykRqSPY", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'PublicUpgradeHeadlessAccountV3' test.out

#- 260 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "gPm4JLsXVtBOEetH", "password": "sxAJ8Ny1LRkPU9hr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'PublicVerifyHeadlessAccountV3' test.out

#- 261 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "l5nkpEdBe8bYWdok", "newPassword": "4UnUEOyP0cPZf5Ov", "oldPassword": "olfI0mqZctohLheR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'PublicUpdatePasswordV3' test.out

#- 262 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'aQkfMLFW9B7jHZro' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'PublicCreateJusticeUser' test.out

#- 263 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    '4hhwnANAGp8zGqNG' \
    'rcQyoA1TWPcy83iX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'PublicPlatformLinkV3' test.out

#- 264 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "fYXNdMkdg9TMwxNc"}' \
    'Q6CkVi8fqVPRqNbF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'PublicPlatformUnlinkV3' test.out

#- 265 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    '5yLnYSa8xFLvcYex' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'PublicPlatformUnlinkAllV3' test.out

#- 266 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    'MMMiDFh5RbW021cH' \
    'N3QbzVuJZH3k54cE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'PublicForcePlatformLinkV3' test.out

#- 267 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'xxWKtdGTW4FILotv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'PublicWebLinkPlatform' test.out

#- 268 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    '5ycTa0i6ifYP1zfg' \
    'jsy3VRjX4qA4g9OG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'PublicWebLinkPlatformEstablish' test.out

#- 269 PublicProcessWebLinkPlatformV3
$PYTHON -m $MODULE 'iam-public-process-web-link-platform-v3' \
    'oWw1qnCAvdnAcokJ' \
    '0rzqX2KJcYHgiFDx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'PublicProcessWebLinkPlatformV3' test.out

#- 270 PublicGetUsersPlatformInfosV3
$PYTHON -m $MODULE 'iam-public-get-users-platform-infos-v3' \
    '{"platformId": "clBXap6j73doCWxh", "userIds": ["ubMXbxNvT6wAffv4", "uzKAwiI4wTxNIefC", "mtrxWu293551nQBN"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'PublicGetUsersPlatformInfosV3' test.out

#- 271 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "KcqCkUXRj8gQHEe4", "emailAddress": "CO370OsbzRKKPd6m", "newPassword": "jzLxllUrFYn7cSuO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'ResetPasswordV3' test.out

#- 272 PublicGetUserByUserIdV3
eval_tap 0 272 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 273 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    '7NxKHUHg0c4X7fHd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'PublicGetUserBanHistoryV3' test.out

#- 274 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'ITmN9opaF0kh3pCR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 275 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    'B3infEVxArF7TB6A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'PublicGetUserInformationV3' test.out

#- 276 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    '6a71zAJpaPeudUtK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'PublicGetUserLoginHistoriesV3' test.out

#- 277 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'PJUmAvxBxJNPlvvY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'PublicGetUserPlatformAccountsV3' test.out

#- 278 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    'Zw4MWzWFTuNPf5JC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'PublicListJusticePlatformAccountsV3' test.out

#- 279 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "SDyYy4e5qoTZxSoZ", "platformUserId": "bQUnUxS6m68WL3HD"}' \
    'L4yx5I0euBsccHPA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'PublicLinkPlatformAccount' test.out

#- 280 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["2v9XP9enfEX7lloL", "gIYqxFfSNJlHCjxL", "NnYUlGQsFpy9ZVlL"], "requestId": "IFwLgT78nootfUs9"}' \
    '559ilm3cauhrw9Yn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'PublicForceLinkPlatformWithProgression' test.out

#- 281 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    '2z5cnbm7z2Aa24yB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'PublicGetPublisherUserV3' test.out

#- 282 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'Tw3wfNGyWf3VujS7' \
    'Bq5bcfPW4pPZB9YX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 283 PublicGetRolesV3
$PYTHON -m $MODULE 'iam-public-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'PublicGetRolesV3' test.out

#- 284 PublicGetRoleV3
$PYTHON -m $MODULE 'iam-public-get-role-v3' \
    'ltCxyztUnj17t3gH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'PublicGetRoleV3' test.out

#- 285 PublicGetMyUserV3
$PYTHON -m $MODULE 'iam-public-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'PublicGetMyUserV3' test.out

#- 286 PublicGetLinkHeadlessAccountToMyAccountConflictV3
$PYTHON -m $MODULE 'iam-public-get-link-headless-account-to-my-account-conflict-v3' \
    'BXvjvziexzOLbOWb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 287 LinkHeadlessAccountToMyAccountV3
$PYTHON -m $MODULE 'iam-link-headless-account-to-my-account-v3' \
    '{"chosenNamespaces": ["tcJUxM3AWyDkA5Lm", "ART6kulpM4SRtUE5", "P4kxmHtFbjqurHix"], "oneTimeLinkCode": "0QYycDH5we2Mx0sY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'LinkHeadlessAccountToMyAccountV3' test.out

#- 288 PublicSendVerificationLinkV3
$PYTHON -m $MODULE 'iam-public-send-verification-link-v3' \
    '{"languageTag": "CnYPT4i4mxc14iRf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'PublicSendVerificationLinkV3' test.out

#- 289 PublicVerifyUserByLinkV3
$PYTHON -m $MODULE 'iam-public-verify-user-by-link-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'PublicVerifyUserByLinkV3' test.out

#- 290 PlatformAuthenticateSAMLV3Handler
$PYTHON -m $MODULE 'iam-platform-authenticate-samlv3-handler' \
    'zJwKuc7EpiQEzz5N' \
    '5osRYO7wbYh7q02W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'PlatformAuthenticateSAMLV3Handler' test.out

#- 291 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    '8tkTURUFmqNc8xhQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'LoginSSOClient' test.out

#- 292 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'qptccNorRls7EC3n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'LogoutSSOClient' test.out

#- 293 RequestTargetTokenResponseV3
$PYTHON -m $MODULE 'iam-request-target-token-response-v3' \
    'DnhFvDlFd7iyZpvW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'RequestTargetTokenResponseV3' test.out

#- 294 PlatformTokenRefreshV3Deprecate
eval_tap 0 294 'PlatformTokenRefreshV3Deprecate # SKIP deprecated' test.out

#- 295 AdminGetDevicesByUserV4
$PYTHON -m $MODULE 'iam-admin-get-devices-by-user-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'AdminGetDevicesByUserV4' test.out

#- 296 AdminGetBannedDevicesV4
$PYTHON -m $MODULE 'iam-admin-get-banned-devices-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'AdminGetBannedDevicesV4' test.out

#- 297 AdminGetUserDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-user-device-bans-v4' \
    'VJFK6ZuvlzGCII15' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'AdminGetUserDeviceBansV4' test.out

#- 298 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "6hIg0g8HIxpzm9Ac", "deviceId": "FhH4ZlYY3rEuHMWw", "deviceType": "QNmCQmGCF963CbsO", "enabled": false, "endDate": "e1OukIfIZVH8q8sv", "ext": {"V5hMOSfpyJkJlmJm": {}, "TkFvB7wkY6nuUEGJ": {}, "3k0HGtpK43uORGRE": {}}, "reason": "OOwTuY8dhNCDWWpN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'AdminBanDeviceV4' test.out

#- 299 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    '3B6tedgFUzBm5vGA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'AdminGetDeviceBanV4' test.out

#- 300 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": true}' \
    'itKaF9z3WWuv3j8T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'AdminUpdateDeviceBanV4' test.out

#- 301 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    '9g1f6P3D3rVcC2g6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'AdminGenerateReportV4' test.out

#- 302 AdminGetDeviceTypesV4
$PYTHON -m $MODULE 'iam-admin-get-device-types-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'AdminGetDeviceTypesV4' test.out

#- 303 AdminGetDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-device-bans-v4' \
    't42jE1Wad232YV7A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'AdminGetDeviceBansV4' test.out

#- 304 AdminDecryptDeviceV4
$PYTHON -m $MODULE 'iam-admin-decrypt-device-v4' \
    '2zHFGbN8AQaCaw9U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'AdminDecryptDeviceV4' test.out

#- 305 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    'F7cdSDd99DQZ7vnT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'AdminUnbanDeviceV4' test.out

#- 306 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    'x8HDXTJWiyw17ogz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'AdminGetUsersByDeviceV4' test.out

#- 307 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"count": 26}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'AdminCreateTestUsersV4' test.out

#- 308 AdminBulkUpdateUserAccountTypeV4
$PYTHON -m $MODULE 'iam-admin-bulk-update-user-account-type-v4' \
    '{"testAccount": false, "userIds": ["bj4SLYDrZJvDLGvn", "6qtroZcp16HKXX1f", "t5nBA9xNIJVuMz04"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 309 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["evSdE2FMcKd7c94r", "EmIYuAT5OAcUwYHG", "mG5rNDBF1oU37vjf"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'AdminBulkCheckValidUserIDV4' test.out

#- 310 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "yX5YLaM0wmi0i1WA", "country": "BBbq8IzZsMFLX9Zh", "dateOfBirth": "FXcFtfBS3ZIHofhw", "displayName": "yM6Bw2sFGQ5DQoDw", "languageTag": "zrKPOZZnV3zR7YxS", "userName": "u6addocg10Hy9jx7"}' \
    'gBHTOHHArjld0LnR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'AdminUpdateUserV4' test.out

#- 311 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "EsrrB2pJ7V8BSruc", "emailAddress": "jO3zvSM5KeVNHU9G"}' \
    'cOivIfcCJt4U8VSg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'AdminUpdateUserEmailAddressV4' test.out

#- 312 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    'Xoi9Fw25b9qXzlIK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'AdminDisableUserMFAV4' test.out

#- 313 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    '2G6AUjBCdf0Rp5e5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'AdminListUserRolesV4' test.out

#- 314 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["IvFuN1oUsCnBmGMx", "5F6EhM3dKvIG9MR0", "hTINvq1VR9SJUfQE"], "roleId": "X996Mh1sQ3Dw3uyj"}' \
    'gQNAs9188Qm3W1De' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'AdminUpdateUserRoleV4' test.out

#- 315 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["2McGd10wefF0CJlH", "55RLEgeAsSpQdcmG", "HZuRVQ8tzwqMayP8"], "roleId": "A3HGNI3BfjkFd6MH"}' \
    'o6gGQ5mChYoKD7yq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'AdminAddUserRoleV4' test.out

#- 316 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["CR03RovQZhwfjkq9", "iyTbyD3D01tRpuuy", "IagSSzEL8H4euLuf"], "roleId": "hQj2KP3LLxl9Hs2L"}' \
    '2wlpKBVURxHefz77' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'AdminRemoveUserRoleV4' test.out

#- 317 AdminGetRolesV4
$PYTHON -m $MODULE 'iam-admin-get-roles-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'AdminGetRolesV4' test.out

#- 318 AdminCreateRoleV4
$PYTHON -m $MODULE 'iam-admin-create-role-v4' \
    '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "ntCNiHBRUNCPSre5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'AdminCreateRoleV4' test.out

#- 319 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'GmZzCQwilS3IxSjl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'AdminGetRoleV4' test.out

#- 320 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'yvR9PxG9Lji2Vc88' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'AdminDeleteRoleV4' test.out

#- 321 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "9pY0011jSmHFTtfM"}' \
    '2mGUUpq3ix7Am7W1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'AdminUpdateRoleV4' test.out

#- 322 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 11, "resource": "aI4ryVDvNaruZxwT", "schedAction": 12, "schedCron": "VH75UcmNXK5RqcIo", "schedRange": ["9lpz9oM52vHPlwVV", "3jlPKDEYahnlLJaL", "CvjRKKX1brmkJDfd"]}, {"action": 28, "resource": "TwBufUorJouduhCE", "schedAction": 74, "schedCron": "W2MAL9gYHEV3wnTZ", "schedRange": ["TvYYf4ZFuV6L2Ald", "oWWRN5wNYlFiliYm", "BrqrOc0NIligBrOk"]}, {"action": 57, "resource": "imu6XFfRcWDXhq1Y", "schedAction": 26, "schedCron": "G1LxLdySvyVqY8nx", "schedRange": ["BZbHcPHEFuEVP9bF", "07gnWDULkJPQR0UJ", "Mr8ouccGH0B4LCe2"]}]}' \
    'h0iFCCZgFWs5s0nT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'AdminUpdateRolePermissionsV4' test.out

#- 323 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 2, "resource": "9A88GDOUClGyzYgn", "schedAction": 94, "schedCron": "xTXcEIFod3lCzvjH", "schedRange": ["zDHOrSJ1vbB7LRHd", "96dGLgkfrZveFMWA", "FT7l0l1jaOAMCzbs"]}, {"action": 30, "resource": "hISTBT1Gofv4SuaZ", "schedAction": 50, "schedCron": "l6xo0D4JRbNqO6Iu", "schedRange": ["P2PY5hhX6uNah9Jo", "HPj7jFWxSv1lYylY", "AiZ8c7Zd7EUoezOL"]}, {"action": 46, "resource": "pTL2wxobjxAbagqE", "schedAction": 25, "schedCron": "wlsNvtFuunQsvdXG", "schedRange": ["lD40xxIyVwYjn6dl", "C9Kfh9gHuloyce0c", "LJu4ljPWlCWTuGO8"]}]}' \
    'MnfOQu3wdT4Aodp9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'AdminAddRolePermissionsV4' test.out

#- 324 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["5o1RkX7iW7VpCngW", "Av5DAG8dPdkKgQqj", "yzUZR2rFIAuALNhN"]' \
    'CyscsMBRLsWadk2O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'AdminDeleteRolePermissionsV4' test.out

#- 325 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'Q421q7Nb1vrKthVv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'AdminListAssignedUsersV4' test.out

#- 326 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["U5on065ApCkVN3Qc", "huQ6pntxB648ss7r", "BnvQHAM8gSdIybKU"], "namespace": "ByHBzfvgtRTPPzwJ", "userId": "mKaLCx3gcidEALWe"}' \
    '6RG5wWznu5AjwR1Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'AdminAssignUserToRoleV4' test.out

#- 327 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "4fU7ICcaQtuuKUw3", "userId": "dUwWHhQW3I1y9tjR"}' \
    'LVOXBMa0JiIe1AY0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'AdminRevokeUserFromRoleV4' test.out

#- 328 AdminInviteUserNewV4
$PYTHON -m $MODULE 'iam-admin-invite-user-new-v4' \
    '{"assignedNamespaces": ["tUA7EKASk3USNLhO", "BlxRBLgohp8ByTi2", "F6AyUX8w77riPlPg"], "emailAddresses": ["JcLbeQf9MICxX7xK", "yCfgwSPz14asyOdg", "n77gN8K1FlNkgbFE"], "isAdmin": false, "namespace": "U4meK5grmPBsFH71", "roleId": "VrhsISYtegQbNA2W"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'AdminInviteUserNewV4' test.out

#- 329 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "QrHTkJT1VkChD3n0", "country": "c1ryAkRvdPR8gx2r", "dateOfBirth": "X5dck8NFKPgT6LMe", "displayName": "hg047axU5ktNywRI", "languageTag": "vO2Sgz30hejqdktH", "userName": "IO1VdtMSews1TrU4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'AdminUpdateMyUserV4' test.out

#- 330 AdminDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'AdminDisableMyAuthenticatorV4' test.out

#- 331 AdminEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'AdminEnableMyAuthenticatorV4' test.out

#- 332 AdminGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-admin-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 333 AdminGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'AdminGetMyBackupCodesV4' test.out

#- 334 AdminGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'AdminGenerateMyBackupCodesV4' test.out

#- 335 AdminDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'AdminDisableMyBackupCodesV4' test.out

#- 336 AdminDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'AdminDownloadMyBackupCodesV4' test.out

#- 337 AdminEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'AdminEnableMyBackupCodesV4' test.out

#- 338 AdminSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-admin-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'AdminSendMyMFAEmailCodeV4' test.out

#- 339 AdminDisableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-disable-my-email-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'AdminDisableMyEmailV4' test.out

#- 340 AdminEnableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-enable-my-email-v4' \
    'FhAfKDcDG5bMTba1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'AdminEnableMyEmailV4' test.out

#- 341 AdminGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-admin-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'AdminGetMyEnabledFactorsV4' test.out

#- 342 AdminMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-admin-make-factor-my-default-v4' \
    'tUlFGcP6eL7EpWtP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'AdminMakeFactorMyDefaultV4' test.out

#- 343 AdminInviteUserV4
eval_tap 0 343 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 344 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "XCT6m6mRZAlLBczJ", "policyId": "Veil7GbG1ISBCkcn", "policyVersionId": "pxKUxLjmxhBS6Yyp"}, {"isAccepted": false, "localizedPolicyVersionId": "wP8GslMpx3m7lEXT", "policyId": "mnTbtjK9RsyoqT3a", "policyVersionId": "dB48Jxp2zaItg9jT"}, {"isAccepted": false, "localizedPolicyVersionId": "vpFEUI21aSaIsMyL", "policyId": "KPPIZx0zdNAagipZ", "policyVersionId": "wiaBrFrXtGMjujfH"}], "authType": "EMAILPASSWD", "country": "B1gMI1B8DXb37Dff", "dateOfBirth": "TZ7yQz337LLNCjIy", "displayName": "Se36SA5dxATLv5Pk", "emailAddress": "LvraRzChdjDGdlk2", "password": "A2jHbAPNGInvbnf4", "passwordMD5Sum": "ewKFFLoGggX4gQWy", "username": "ZocvYfr0Rnl02R1I", "verified": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'PublicCreateTestUserV4' test.out

#- 345 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "O2bmOikTBJHTEm5P", "policyId": "Seyod5L6OooYoQn9", "policyVersionId": "iHEqWO1cVCUIOx90"}, {"isAccepted": false, "localizedPolicyVersionId": "QdwLi3GOQkLtpuRN", "policyId": "eT1CULEMPaOU5nuk", "policyVersionId": "ycAUlkUSZKUrsxNR"}, {"isAccepted": true, "localizedPolicyVersionId": "T98HUBp56Q4WETxt", "policyId": "GMs5tPKPuK0K4PiM", "policyVersionId": "DTR7LxihuOn57io0"}], "authType": "EMAILPASSWD", "code": "FSwjby6rMYkVQnZD", "country": "UAbINRKQsxUO1YMx", "dateOfBirth": "AndOj5O6IBwXJjgQ", "displayName": "jgLoJyqwFVBd1Zja", "emailAddress": "RXEdWgS12bSbPgOC", "password": "WUogizeWOPUMrqgE", "passwordMD5Sum": "IsMwNbfti0LoTBcN", "reachMinimumAge": true, "username": "XbAyGiXa9nUsHCVi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'PublicCreateUserV4' test.out

#- 346 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "Gzvx9bSqqyAPha5b", "policyId": "6PQTPTytHeeXo7gO", "policyVersionId": "FVLZCBWuVIROZuqd"}, {"isAccepted": true, "localizedPolicyVersionId": "cLuhwNDvValv3bko", "policyId": "MXNzl1ywEPiunixl", "policyVersionId": "EAHZzHs8x5oPSkZF"}, {"isAccepted": true, "localizedPolicyVersionId": "V2feXnTRlzAJy9oF", "policyId": "OHB2KEsIdtozVltB", "policyVersionId": "hoXE4wgcYT5CdjaJ"}], "authType": "EMAILPASSWD", "country": "9Ii2jARwzowk9Ooi", "dateOfBirth": "Pdnq9KBqBwiNCsnK", "displayName": "8CcO1OHbpQZtwW3E", "password": "wLre1bL4dJnkRLJb", "reachMinimumAge": true, "username": "vOGSd7uMrmQ2SaLd"}' \
    '6M7TM3wnJyExuo5z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'CreateUserFromInvitationV4' test.out

#- 347 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "9RAcYgYZb7cAakJp", "country": "qN6eubdp49JFwXG0", "dateOfBirth": "EvoSHNC97eEyhnL1", "displayName": "QH5AlYRAqCAC2gy1", "languageTag": "WF9QLNgDxAkwgfB8", "userName": "jIecOx5ugNCDd6jW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicUpdateUserV4' test.out

#- 348 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "6fjtBcO3fWq9qfmB", "emailAddress": "v0XgJB6a7uykADFp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'PublicUpdateUserEmailAddressV4' test.out

#- 349 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "inFcH2ZMSYijqEuM", "country": "fuYFUS079tOpZYM1", "dateOfBirth": "XV0Op0damycnTUOo", "displayName": "MkOppZNOkqxc42HK", "emailAddress": "v5wvtPJVsuzaBciS", "password": "xwzuIpGBYHTHoSVx", "reachMinimumAge": false, "username": "H5xIuBTYOdsvNyk5", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 350 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "QFkVVEf36S7yPgG4", "password": "8bk6PwH1tdEAJSqX", "username": "A0Wv0zWGvkc6byp3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'PublicUpgradeHeadlessAccountV4' test.out

#- 351 PublicDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'PublicDisableMyAuthenticatorV4' test.out

#- 352 PublicEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'PublicEnableMyAuthenticatorV4' test.out

#- 353 PublicGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-public-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 354 PublicGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'PublicGetMyBackupCodesV4' test.out

#- 355 PublicGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'PublicGenerateMyBackupCodesV4' test.out

#- 356 PublicDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'PublicDisableMyBackupCodesV4' test.out

#- 357 PublicDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'PublicDownloadMyBackupCodesV4' test.out

#- 358 PublicEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'PublicEnableMyBackupCodesV4' test.out

#- 359 PublicRemoveTrustedDeviceV4
$PYTHON -m $MODULE 'iam-public-remove-trusted-device-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'PublicRemoveTrustedDeviceV4' test.out

#- 360 PublicSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-public-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'PublicSendMyMFAEmailCodeV4' test.out

#- 361 PublicDisableMyEmailV4
$PYTHON -m $MODULE 'iam-public-disable-my-email-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'PublicDisableMyEmailV4' test.out

#- 362 PublicEnableMyEmailV4
$PYTHON -m $MODULE 'iam-public-enable-my-email-v4' \
    'mvyYT3GuaZVTxBlw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'PublicEnableMyEmailV4' test.out

#- 363 PublicGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-public-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'PublicGetMyEnabledFactorsV4' test.out

#- 364 PublicMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-public-make-factor-my-default-v4' \
    '1IWeXKFT4rfSbbSl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'PublicMakeFactorMyDefaultV4' test.out

#- 365 PublicGetUserPublicInfoByUserIdV4
$PYTHON -m $MODULE 'iam-public-get-user-public-info-by-user-id-v4' \
    'DPGf9Fn32SJNPZkE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 366 PublicInviteUserV4
$PYTHON -m $MODULE 'iam-public-invite-user-v4' \
    '{"additionalData": "fkAcJTMS4pVRcCHI", "emailAddress": "GfmCMTr9ACnI2sMr", "namespace": "Egl7ZR1HCkf2Sw78", "namespaceDisplayName": "lLGKjDHuXt358gzq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'PublicInviteUserV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
