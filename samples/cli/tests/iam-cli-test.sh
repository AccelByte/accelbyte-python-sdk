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
iam-admin-bulk-update-user-account-type-v4 '{"testAccount": false, "userIds": ["j7Yi2VvoQNW8Yc48", "1dYdvGxJAMDRA1LF", "7jdWlekFwO94VBCV"]}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["9qJhWva2FPBujX0g", "eYCpGJM4sqsPNJMi", "ZXXOFwmGWAvNF0Z0"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "GkwxUNYyNwGiKrkn", "country": "H0Y5mrQgLC6D2qsF", "dateOfBirth": "iQHglUQMZi5WjMZf", "displayName": "OadpgegCUjTdi1Eh", "languageTag": "r8OtqpNJ9R8TuNy4", "userName": "ejmVA3vMCsGyPd12"}' 'B8QNUz0hFFNbH6j2' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "W4roZM2UKAXEEsL5", "emailAddress": "D0oiFchQnVeq3g2A"}' 'B2WIRUQmauIY5HXC' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 'Z0W4XmWP0HzSdiyl' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 'LhVYszm8xY33OQbu' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["mu2QHLyZNuysyM4O", "fCzdQCXMAWnf87YP", "NOe9Eevf1fhMg1E2"], "roleId": "k7QLFrVgtX7y0fPO"}' 'ieDCow2zXyFFVpM8' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["7yqEwEacQMTlqN4L", "KkxJ5v3SBafnKNiM", "PbFkFGA85W3HJkqg"], "roleId": "S2B37wwoPYOHiIsx"}' 'msLBPBJuNLnWRrtW' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["870qD88ZcduZSe7W", "20UZcDaiq0nEZ7Py", "hqFJkDClOsKmfsgJ"], "roleId": "dmzsDPsWh1k0cQ08"}' 'NG6dX2TZkil67kRn' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "GeZsZVgbPzPFbrOM"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 'ZMgWkFN7Tpkx6Gcf' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 'yOg6ZUrrp9ubg9mn' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "mQafUs2bxYztOEyV"}' 'bKIf1ZbzgUwd8DHo' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 59, "resource": "lgjzIhpgOoIOD74V", "schedAction": 42, "schedCron": "HWDAfvXwdxbyp4HA", "schedRange": ["PbBbNPStVBUpKgOs", "sFkz0F36piDYXeHZ", "7FHls3nyvconqbHQ"]}, {"action": 33, "resource": "6GjCWaP8huTmnq3F", "schedAction": 66, "schedCron": "ncp5LrqbiKudv9z7", "schedRange": ["5SzoCV8ZMi2o1nR4", "82D6gNClk9c87hos", "aPFC5zBW3ZgVZCj9"]}, {"action": 84, "resource": "S029BiJWOG1m7MKc", "schedAction": 23, "schedCron": "5XTJTgCNNH7RtG5X", "schedRange": ["mo9Q0Wb07N17fkxZ", "Sc6VbE0AGcekjMNH", "uPXtz8tXxrmzafMU"]}]}' 'guyDoN91uc28HoSp' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 66, "resource": "NEGSW5TaW4to7QCY", "schedAction": 23, "schedCron": "NGGvi9kg3rMIzNmh", "schedRange": ["JTNQjKlwjfJ3TJ2x", "Vpge70WsLfgbZieR", "vJI5sT9DH3DfLCv8"]}, {"action": 34, "resource": "dqcKLa7LevxNHOSE", "schedAction": 14, "schedCron": "E9jlnTgtgW33wDwD", "schedRange": ["9RKvQX4yFQFdrRoM", "6FoqCYw7AlxO6qdF", "pc71sSck3ggZWJlS"]}, {"action": 22, "resource": "vvNtjJNQepUTGhwl", "schedAction": 84, "schedCron": "4lPzlsCR5rVsyfcH", "schedRange": ["7WjP7HuGz3b5WAEv", "dRF9bqMj4ro5B19V", "E838c7OydVw0zCqo"]}]}' 'MZvpIOO97DmQ5ZOz' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["x6iCJTu60IifzMhk", "k5PxsjqbCKpMv2Yk", "y9DYkD2sIllFtBtX"]' 'JKG3rqBmILhtWm8R' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'QvRUbUDSiefGEdLu' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["crtO2gCQD057DrDl", "gC2nzS9SiGUjVAw4", "v3q6JRHcn7KaoCEk"], "namespace": "Rdo6qHYIZWnXqQ1o", "userId": "HFJ9Q0vqsL9SomqW"}' 'sGA76yxi0QzZWfmP' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "2sx0KO5bEJaPnAFj", "userId": "sodyJQVVBrShGbII"}' 'uqK8C403HgoXCR6X' --login_with_auth "Bearer foo"
iam-admin-invite-user-new-v4 '{"assignedNamespaces": ["OMXwKdfqk8T4QHK3", "0EX0FclpDl5Hsura", "cO5MnjnxD1OXkxSh"], "emailAddresses": ["FVQTRekLfjmy8zos", "RCRgVwbrQKmb01yA", "7U7dGMjupZkZQY8C"], "isAdmin": true, "namespace": "3J34fiTxK63OHpnU", "roleId": "CGBVfpctNFUsUQ6Z"}' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "XQcb2o1J5euLAbBg", "country": "ejqc0apxqZ209ByS", "dateOfBirth": "n8aUaGlAyvIslt7N", "displayName": "1qcxKs4nlf1MfqUZ", "languageTag": "XkjHvcUOTlxNf09p", "userName": "efgFIiJssShBKsQj"}' --login_with_auth "Bearer foo"
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
iam-admin-enable-my-email-v4 'XvfQgQDt6ce8NDME' --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 'rA82FrR1GSogkewI' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "IxXKKIR6kPmswm5T", "policyId": "CAU1cKApdJDnE73G", "policyVersionId": "LmSZns5owBhoUg4L"}, {"isAccepted": true, "localizedPolicyVersionId": "AEAHQpBOgHEP5l94", "policyId": "s7CbIJ7eHnVWOboM", "policyVersionId": "kyB7FTexsOZ0b2p3"}, {"isAccepted": false, "localizedPolicyVersionId": "RGdmXxETLEQrr3KC", "policyId": "AV9alq3hK1G4kKoo", "policyVersionId": "SNNUZuiynZ64Iwnc"}], "authType": "EMAILPASSWD", "country": "S2FgarY903INGIyE", "dateOfBirth": "fRBEj7qms9AGQExP", "displayName": "hgr9gGfC0GjvpgJf", "emailAddress": "uBs1Vpqn47GVghTH", "password": "2wToOnq9U5lyW89X", "passwordMD5Sum": "wt3wmRTrDCjhnKvs", "username": "HezWTqgYPixtHk6l", "verified": true}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "U1eD1La16Bw3JbUn", "policyId": "UDh5yGjjv4Mwrv2v", "policyVersionId": "ancmR6Z7rb21A2E9"}, {"isAccepted": true, "localizedPolicyVersionId": "4JFVUdzA8bvXlDhG", "policyId": "7BrorbKIKuOXJPm5", "policyVersionId": "ztrr09CDA8Ij5bGK"}, {"isAccepted": true, "localizedPolicyVersionId": "tRVSO0js0hG9xmSn", "policyId": "zd7zgUxAogcnGkXk", "policyVersionId": "17QPkJHRhmLKQuQV"}], "authType": "EMAILPASSWD", "code": "SKiXl8G2uf6E8Eaj", "country": "XLSAS8MKMaxQ1QyJ", "dateOfBirth": "CpKedhuzI7G9NCKK", "displayName": "Xu1bqI2M5PmXfKnQ", "emailAddress": "7BYGjCUDMOrbmoRv", "password": "WnfmGFy0eUoOBd90", "passwordMD5Sum": "h9EDqSTOfoNewWjw", "reachMinimumAge": true, "username": "WDKEt6JhbJ0fwTDa"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "FlHm9N6owMHMtJy1", "policyId": "Oqn59tEGm9NYeUT5", "policyVersionId": "P0nx8TqSZdZ5C8mF"}, {"isAccepted": false, "localizedPolicyVersionId": "nvzEqBNMF9CZvPxT", "policyId": "5zbreMc9fBoU3RHN", "policyVersionId": "DFjLKFrepy56eW1k"}, {"isAccepted": false, "localizedPolicyVersionId": "tDBmTLH9kP9U53z6", "policyId": "joBAhAlJGI2YYb6a", "policyVersionId": "jBjgq6eY4PBNHKPx"}], "authType": "EMAILPASSWD", "country": "2tHxDb06ZFy3uglS", "dateOfBirth": "p2UxvF2uLXWilRD7", "displayName": "HD6LCgdFxRGj00RT", "password": "6LvcnGMJbJIYLssM", "reachMinimumAge": true, "username": "wKVXGPhEJsc7rZpx"}' 'aPHc9r8eToFmkHJ6' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "BPOKFLxIwKssw647", "country": "YwDudnGRufOUGfMj", "dateOfBirth": "TU226l07jPlcYaqY", "displayName": "M7YfBmhjI9Y28qVc", "languageTag": "eS9UX48dKPCFUIey", "userName": "YEymNXzNX6TGh4Ud"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "EweeBsJEvBbAvCml", "emailAddress": "h6Z1oz9BaixUUvmz"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "bajE2gjooiDnc1NU", "country": "b51lEgUwQ9tkWaMO", "dateOfBirth": "H47CAT7cBP0918Ja", "displayName": "EBQBP766LUnBBR84", "emailAddress": "iAO7sBQt6YJ2tWwF", "password": "7RnP1oK3c4RVfjB0", "reachMinimumAge": true, "username": "es36r1FgR70eNLHk", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"emailAddress": "rEFd8xArWJuCAIfN", "password": "BSHgpFNw9K9pmAIc", "username": "6VSfE9nbE2PMv12Z"}' --login_with_auth "Bearer foo"
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
iam-public-enable-my-email-v4 'SRJkujxbCu1HFaj6' --login_with_auth "Bearer foo"
iam-public-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-public-make-factor-my-default-v4 'Vxs3GuA4S1dS7H7y' --login_with_auth "Bearer foo"
iam-public-get-user-public-info-by-user-id-v4 'IS7b5TSDRIoMg7Dc' --login_with_auth "Bearer foo"
iam-public-invite-user-v4 '{"additionalData": "5APzfzXDELJFaIaE", "emailAddress": "MW5bhJyL72WDyhBs", "namespace": "CCbnfihnXKxGxaup", "namespaceDisplayName": "nTTq9ihZkvFKfSHQ"}' --login_with_auth "Bearer foo"
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
echo "1..367"

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
    '[{"field": "h8I9xk3sFl0cbuCR", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["c0aUvrKXDIjYC4df", "9qswSlpCI8DhjlxU", "yrs3OSesE5p0DwUj"], "preferRegex": true, "regex": "HKUvPYUcQBxMSdOO"}, "blockedWord": ["sn2Nd8Jpa19GJDK4", "6Eehx7xasqMY9aul", "sL6NOV5agpS6A5mk"], "description": [{"language": "ufBpWVxIK9D2bTcg", "message": ["aKoccaSwWcZmzCWG", "I1cIQcPWAShIhieS", "KUf3zKbyQk2vQTYX"]}, {"language": "1xsth28NZZgsXycu", "message": ["QNGIDeHlf6IcX1K9", "JrK6Or2xx7rLwrPo", "WiywnxuDLLuIaSxo"]}, {"language": "loIH1gBCWVFrvls0", "message": ["ZwosKhDlLfTKxpVO", "XvGSrdkqddI3ezqu", "6FB0sL2xt6fX9j7r"]}], "isCustomRegex": false, "letterCase": "egqVUaWMJBjrV0p9", "maxLength": 55, "maxRepeatingAlphaNum": 37, "maxRepeatingSpecialCharacter": 53, "minCharType": 39, "minLength": 63, "regex": "cHrV0MbJGr4drgkD", "specialCharacterLocation": "uWS05m0pGzazM2BU", "specialCharacters": ["XnzUEWTiKMJAf6Ag", "biEDMfCckWogE5gc", "fF8AMGZ2FBS93Mg6"]}}, {"field": "TKwdRMraDLrwh3d0", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["kgqUNIbJMJ9ABbKV", "WO2YEDiqkwKbpdk7", "wlDngNiPPjpSAlZw"], "preferRegex": false, "regex": "pea5ObBB49Km4ClI"}, "blockedWord": ["QmkIdLCvNhZ6P8aq", "Z2yfrC1V7ZpJZPHC", "MqvcYmeDLYEzs2SQ"], "description": [{"language": "UdKr6vgqkjycqclN", "message": ["lBORlC8ZkjsxYtgx", "plHTPLzynjFZgF3e", "rw7UsyHq4bBb0n1J"]}, {"language": "hPUS8BRPGV9n769z", "message": ["LJdKMexeJc7NvgTS", "gKjCxZjKf8NA4cGU", "aDfy9XnH2r0EKrk5"]}, {"language": "VlnKsWCPccAFn5CE", "message": ["PoH6opK5DSO8JyX4", "IE1z3rDwZ1HKsOpy", "q8agQuz86nc6jLF9"]}], "isCustomRegex": true, "letterCase": "7n1yaNCcjgFhS0UR", "maxLength": 56, "maxRepeatingAlphaNum": 15, "maxRepeatingSpecialCharacter": 22, "minCharType": 54, "minLength": 40, "regex": "L5FCbOn46W2B2uPQ", "specialCharacterLocation": "Lrt2t6bVpCgKvPXS", "specialCharacters": ["DufmKh783cV54JsV", "BRB0rY0xfWddACyH", "Smo4KX9TPO3K1k5Z"]}}, {"field": "M8btmGsgXNXbpqxh", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["dtVAo7w4e3v5mh6R", "um5pbgEt39uJQpgE", "tchTe3nt7t9ztprS"], "preferRegex": false, "regex": "5LKmkQ7YBhsOuJ0y"}, "blockedWord": ["pkkt2G4eFh2YNsdo", "xpLTBM9Q8t829Ido", "1JyveSRiBq23kyH9"], "description": [{"language": "jQbHWkcVk0X28GS5", "message": ["4vl7gIKBc7OYTylF", "RAJKySnC0cfPl3Z2", "zSBbs4PAV72u8AxE"]}, {"language": "2IQeoxYV4UcYzswA", "message": ["GpXqQxctuVaqPJGA", "HEZmuQrZ8GaQ4OZ2", "nDodm4TNs8mAj6IK"]}, {"language": "SYFdJwgZsRPOzwuD", "message": ["SdGl1A2vaNeDiSqT", "fmAVg50kOdJagEmT", "uaxlxgywkbdOsyxX"]}], "isCustomRegex": false, "letterCase": "tfW488oYUT4jyCVJ", "maxLength": 97, "maxRepeatingAlphaNum": 38, "maxRepeatingSpecialCharacter": 27, "minCharType": 29, "minLength": 49, "regex": "bTlGVThz4bm41oIc", "specialCharacterLocation": "V33yjPxibDjfF7Jk", "specialCharacters": ["jCVpZKMxkFkBtXMU", "6KRIm5xBoIi99ctg", "FXasxp5h780ktjQw"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    '2yXzaQWaF2PqUfbp' \
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
    '{"ageRestriction": 79, "enable": false}' \
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
    '{"ageRestriction": 88}' \
    '61TFjROYJm75VIuC' \
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
    '{"ban": "OCkt2W1DfI8QtgOD", "comment": "k9K6DcMnyCPn1Fyl", "endDate": "WdaNV1VaZTkbbuWi", "reason": "iA4UTDgS2SVEo5M8", "skipNotif": true, "userIds": ["bku9GYH4ijqOVM50", "tCqkZfsSxAbDJ7sH", "CLup8pmEosOXglQw"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "wdeLVpmXqRwVjc3W", "userId": "2ANmE3VVsQ1fm9EU"}, {"banId": "diaRjuLsKZoqnpKw", "userId": "hpZVdw5UMa8ymxtE"}, {"banId": "FLwELCY2vIddlxnA", "userId": "1VynioJcAPwVHUGc"}]}' \
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
    '{"audiences": ["s1ACMvoY4jWH9dFm", "OHW0j9suukPE4JwQ", "ONQ2vCbMn0Oia336"], "baseUri": "uiiMTAductvUfVwL", "clientId": "ahtRedh1SiZlOpIQ", "clientName": "8GL7jBF1R5OexAPz", "clientPermissions": [{"action": 59, "resource": "jcTEFXcTwEtnHxP5", "schedAction": 32, "schedCron": "M3J9G40Y62bCo941", "schedRange": ["ALznQuHVskfCjUK8", "GeX4Q0B2Cj0oOmBm", "Xu1KiTTiz7yrIvQj"]}, {"action": 74, "resource": "isN7bRwcr16lW5Yw", "schedAction": 13, "schedCron": "uhb4pUwnGptHUplx", "schedRange": ["zaDa9PDwhu31d8eO", "dtrfq6ECDD6OGkuL", "s9gNpNon6DKW9A6A"]}, {"action": 25, "resource": "6d3nuUZ41mSeS9Sn", "schedAction": 66, "schedCron": "MGLdbYEknHPKrZ7T", "schedRange": ["iNBE0HRsE0GHDOFj", "rfqJcyxT2a7fCFAU", "zLELiM573TdtWjfV"]}], "clientPlatform": "ciuLnLsBKGsALPuC", "deletable": true, "description": "rigIxAhbFMZfxazn", "namespace": "lDQbzTiFrQB1yUon", "oauthAccessTokenExpiration": 17, "oauthAccessTokenExpirationTimeUnit": "3DRWobEoGr8W97KB", "oauthClientType": "edcr6PM51z7i0wQ9", "oauthRefreshTokenExpiration": 9, "oauthRefreshTokenExpirationTimeUnit": "w8GENEJYPKxxOw7x", "parentNamespace": "NQ98IEbc9YITN98j", "redirectUri": "4P2AGeidXRRnIAJf", "scopes": ["KVjOn6rtILNJVv2D", "LLUyBt5hDs45siG3", "0Lv9iGa5mkZjnRXV"], "secret": "cg6AByNpBo2JYkwL", "twoFactorEnabled": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    '4IATSIefcqNEn4IZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    '0Dv6b8WtaMVvLbG0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["4KKnh3jvW0Qp3kTy", "L4CsLwiWUMcpxn4B", "6XoTNMuqZTHwo1IA"], "baseUri": "JQpb6r8ZeaSHwQui", "clientName": "H3Ozu4G6bXxp0gYZ", "clientPermissions": [{"action": 51, "resource": "k6iPdJ2boQqCCyJf", "schedAction": 94, "schedCron": "cDwBGyBiHewZkwEe", "schedRange": ["uzBBRSknxyWkZObu", "vig8sMuss76ezTrs", "DZNYUV48Oh6I45X7"]}, {"action": 68, "resource": "gY14iWk12Jffk8dw", "schedAction": 74, "schedCron": "QNHrjaboGomguUqe", "schedRange": ["uZh5qtrRbNnGejdT", "GvZgN5hshSe5YmZX", "KEQLkM6o3eGSP4Ht"]}, {"action": 26, "resource": "nNTLXHrsOFsbhRow", "schedAction": 79, "schedCron": "iaYKy0IjsDgbJ37D", "schedRange": ["N2lDvdh7okHl1wMh", "t2Izq7TCUJhDsDef", "AS09VyQB1vR1mx6K"]}], "clientPlatform": "17GL1CrO4ZuoGZSx", "deletable": false, "description": "zm8oMSPIHPtqzIWI", "namespace": "zg8pbjnt1iBV8Dpb", "oauthAccessTokenExpiration": 20, "oauthAccessTokenExpirationTimeUnit": "B96ndlO6iPGC9Rhz", "oauthRefreshTokenExpiration": 79, "oauthRefreshTokenExpirationTimeUnit": "ilty9NVlgxUmnfdO", "redirectUri": "Amu1dX1NqD20RUvv", "scopes": ["YeJZw6QZFN7wFCnq", "pvNesGiVnt9p2to7", "Yja1soDE1K0SvGrM"], "twoFactorEnabled": true}' \
    'wPmPXC2LfL2m5rP2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 54, "resource": "Zwkj1l6bf2F9EXOB"}, {"action": 19, "resource": "5diUlqgvY7dPPyah"}, {"action": 32, "resource": "KlwJTNL2UCWUtaAD"}]}' \
    '7ZZx1iefATWcDSqG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 90, "resource": "k9L5dREQbCqfh0gp"}, {"action": 55, "resource": "JC3CX0hpB1ZGMMo5"}, {"action": 60, "resource": "f9A6HjCnFRdSihcv"}]}' \
    'szzQLZBktk0siMup' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '12' \
    '1kyaFwwD7wecuQb4' \
    'GNQHVZMKGBnzh4su' \
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
    '{"blacklist": ["aGIzttTncVBf5g3o", "euHiNyLkfPQPmjUk", "vSs5YmIejozmG5Hl"]}' \
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
    'rIfMAvvpkAHRJHZy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 135 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "frXZmiJX4CjKCeIR", "AWSCognitoRegion": "Ir997KKpJXTLbYWp", "AWSCognitoUserPool": "qeXjaf1f5fjNMZjK", "AllowedClients": ["J05puX3197WrMnJt", "ovSMFw8X4zxbdfXg", "unt1oMNZ68eovHSH"], "AppId": "3xV3URIRVDYBd6hM", "AuthorizationEndpoint": "B0l7sg7IfMH5Tu1k", "ClientId": "y1ZYvyeHmfoFkUDP", "Environment": "864shbnQ3bVvuvps", "FederationMetadataURL": "DJXPCWkX4Kpi8CJ8", "GenericOauthFlow": false, "IsActive": false, "Issuer": "S85yTIRWvLRy58UK", "JWKSEndpoint": "WPv3F7S0wCVlYQi9", "KeyID": "cfMCeNnu6OIG1PPL", "NetflixCertificates": {"encryptedPrivateKey": "RDEXLXZWXvqNCHvN", "encryptedPrivateKeyName": "peMjMzguq6HFIqaq", "publicCertificate": "wH9J6JLb5f3SBMyJ", "publicCertificateName": "UdwEBRrHAWUFqToo", "rootCertificate": "GGnPEgY0t7QQWl42", "rootCertificateName": "byOwXgKyPhXmcysa"}, "OrganizationId": "e8HpWH4xiz3fWthJ", "PlatformName": "Su2pUIIuPLFAtcWh", "RedirectUri": "jAP57QbWvSSp71zE", "RegisteredDomains": [{"affectedClientIDs": ["PPfmAQiqRRC2caqu", "MRtQOILcaDqUITBH", "QR5ISNoFR3GUxdMu"], "domain": "vmL0UBfwzaaeP3Wd", "namespaces": ["0Wrb8s3GW0CY0vAf", "bq8xoCurq4lpHXrb", "VBh60NUA2aKQwnXr"], "roleId": "mi6ya8u4sQPvaf1A"}, {"affectedClientIDs": ["cweR7tJW3MLMob1h", "UnIzIpUM8KK1kGFN", "0NUNGKxdlAUDFQuG"], "domain": "PzAuT7M6OBrNwioK", "namespaces": ["nXPVZaDcXsV1TnsZ", "ioDiBgprzahPB0FK", "Ma0YeyNBQWUHDBnB"], "roleId": "eePkqg6Zt1Lr5BlO"}, {"affectedClientIDs": ["8K6LH4dSaa8XYHug", "51ZTogG0N7Hvnuq1", "kJ1kpHcQtnIc9z70"], "domain": "LFQMI0oZuEjY0rNB", "namespaces": ["bbB9txAvtRQvqJac", "XR2Rf4noXDFaEUkP", "UBnB0ZEJH3ebM71T"], "roleId": "g922xiBgHSka0Pz7"}], "Secret": "I1WkIa0oZ1nXpW1l", "TeamID": "70pcZgIn4lPghHyM", "TokenAuthenticationType": "EHBzArbyW10NkJFQ", "TokenClaimsMapping": {"xuMHnfOlX6HYVEia": "ereFCPJU2wEzUYUT", "mZ8JSMeNmRocp400": "RZe8Bzx9aGEI22BT", "CZs97TJI8GPrM24F": "3celFgM62HQtgzQh"}, "TokenEndpoint": "O3nR8j8DlP6OGbn8", "UserInfoEndpoint": "vmfMYGLt1AjKhh3J", "UserInfoHTTPMethod": "MX7xSrz1EH6X2SM3", "scopes": ["xzsNrJzWBcdFlo7o", "AsOlfLB1J19b5rTf", "iL2P3r1a8KIJH33a"]}' \
    'KkPuWD59MgTy1HA5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 136 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    '8Jt5NaROjSKFEuZo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 137 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "2ElXYSS4ezBRSiOy", "AWSCognitoRegion": "ReviDaxlPdhwmcH0", "AWSCognitoUserPool": "3yoMxzRR6xd9rTh3", "AllowedClients": ["ureaIbxM3Wev9pZQ", "jWAN0tny16ZHZtuS", "JGQCrM7JEMRPkdTc"], "AppId": "AzkIlndN5xeayr3v", "AuthorizationEndpoint": "UKMuIiz2MiAAKcvA", "ClientId": "XnxnH0QIhoJRY807", "Environment": "VmBT4wZXQZZrSsuY", "FederationMetadataURL": "iIPei0pXglJYnKko", "GenericOauthFlow": true, "IsActive": true, "Issuer": "s1Iyhwqk140MolIr", "JWKSEndpoint": "nlkRVbcX435TDYpk", "KeyID": "k2Gza6DrSycophHw", "NetflixCertificates": {"encryptedPrivateKey": "3EoEEClTO9SDKnMl", "encryptedPrivateKeyName": "nKW9jiNMu9QVrMeD", "publicCertificate": "4bD8gISE34yIAZQe", "publicCertificateName": "igiA3wBrmBYIlZeh", "rootCertificate": "eP72AB8EO3YrlyrW", "rootCertificateName": "owUpUDVLlTtuJJsH"}, "OrganizationId": "ZVsG6izJZruOJvSR", "PlatformName": "FLDSdj8elbtHvDU9", "RedirectUri": "1DmHzwiqVPCJ5j18", "RegisteredDomains": [{"affectedClientIDs": ["Ou3aY8nceFU5GKmc", "EKp8AQwqgJs6O0Qj", "0ccMkdz6zPz3BVHA"], "domain": "qp4O9XSjap24esyj", "namespaces": ["h6Wc3migf2n6iQyr", "5cb5YL6fwBiaVPmm", "n0T5uzlmi2NY26xr"], "roleId": "kPPdg3pXjmtpNfCr"}, {"affectedClientIDs": ["Ij9ntYo3dupUHNu8", "abrVVOKxr9Pa315F", "KDjG2ApSV94Jy6yC"], "domain": "SXBqJqjAbVwSaoj1", "namespaces": ["ugjr8mPkr3tZ506E", "RSVy5M3rrkxu0U9h", "9gCNVZxHGxhZqNXJ"], "roleId": "6JXSh0Z3SWISs1dY"}, {"affectedClientIDs": ["rJKmx1BT6iLFQejN", "ZJNF2hm0TqBQprHn", "3whPKU5abnqw8fFa"], "domain": "30pVbhr1BHh1arZA", "namespaces": ["yuLcZoEkPpqKhP2j", "WnRTglw0gdWoE4es", "uiDrquccz4J6fFQe"], "roleId": "zJ5E3iYHIknvPcJk"}], "Secret": "jRevVYfiExpAgoK9", "TeamID": "YDq1x3dkbJFDEBEO", "TokenAuthenticationType": "OvJ5BKeipIldsgB4", "TokenClaimsMapping": {"hOxb88WgKSLIpneD": "QCfwucHRL3o2Nstr", "L6TsJeRcE7GuwKn6": "3KIDTkUCqbbHGJGO", "TvKKRTHDntaFiufH": "2YR6QU7fj6w17arN"}, "TokenEndpoint": "s12hOoLVM7UFnuJD", "UserInfoEndpoint": "zeEkDxaVogxHrOon", "UserInfoHTTPMethod": "2OW4Zw5QwVKWNy2t", "scopes": ["nF2MifJR4hr4gdJD", "ujYnVnFK6gB6ZxC6", "yYUVUJYnQ3jOGmRO"]}' \
    'IqxqQ0gcNeTflyvU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 138 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["h3w5ZtfwmOCKpFSM", "F0tfGIZCTNiIRc9f", "EjkZhEpAJMCxMp2J"], "assignedNamespaces": ["0hDg2kMgkvhoQe9g", "D9tGN0nE7M36mI9u", "3EeZtLQij2JXsqdX"], "domain": "fhZTTaCeqGv7meuQ", "roleId": "hJuq1C6JHkWMSUbq"}' \
    'ByWN2BCnRz9w2nur' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 139 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "0B9jKaunAcylsau7"}' \
    'wRQmL4i3eRyIECED' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 140 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    'a1I4lwXqwPfq3VzH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'RetrieveSSOLoginPlatformCredential' test.out

#- 141 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "Qjtolx64w1gyvjac", "apiKey": "KtGqxMnoAXRlcq0m", "appId": "YWKQYlqMmu2pvF6r", "federationMetadataUrl": "P03bQaq1cT88H6RC", "isActive": true, "redirectUri": "8gJmGzDlqxtLsR2A", "secret": "GOiPhNt2IdH8aYYU", "ssoUrl": "T6mma833TDzk66ix"}' \
    '88sAUrXr7MXxCvyy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'AddSSOLoginPlatformCredential' test.out

#- 142 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    '7caxz4MQrODLNlxi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 143 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "EjQBCZx9DJ4V97SJ", "apiKey": "LlrwXmIGamRCARuF", "appId": "Lx4rV4CXVMrDYKe2", "federationMetadataUrl": "eTf1axo16GqT2vSL", "isActive": true, "redirectUri": "iMvcu39YZJypWzpN", "secret": "XgnoKIz8O8NglJtZ", "ssoUrl": "Th280vflFMxIhlIT"}' \
    '8AgyZJ16MMd2bzOr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'UpdateSSOPlatformCredential' test.out

#- 144 AdminListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["Tn2huwPgyUzBUWiK", "oNGtvyk5xEfrJDxK", "sw5Xl7ZZrDZdbuvC"]}' \
    'FBaVcohewKkVuGv9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 145 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'fQXkErF0drbYrrFQ' \
    'P6rW62CtetBW3pvA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'AdminGetUserByPlatformUserIDV3' test.out

#- 146 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'JJieHhveGg97PY0t' \
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
    '{"bulkUserId": ["xzvYwv7atn9EQv2O", "j8TFNeGtJGjKbMgC", "euAYuzrmbWofEaKS"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'AdminGetBulkUserBanV3' test.out

#- 149 AdminListUserIDByUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-user-i-ds-v3' \
    '{"userIds": ["tqdKu4ROnONpJ849", "chqeiUGQMwNwDlYS", "li3p8YaAdel3hHMS"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'AdminListUserIDByUserIDsV3' test.out

#- 150 AdminBulkGetUsersPlatform
$PYTHON -m $MODULE 'iam-admin-bulk-get-users-platform' \
    '{"userIds": ["LAiscGRWzkCl1ZKu", "PxjDUGRGcCEPjbUy", "7F82Adu9BYRHrVTe"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AdminBulkGetUsersPlatform' test.out

#- 151 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["hrqgvEtEs2LpE0qf", "bvdU8hlDoC9FnxqB", "lPBYJ7X6uVy7FWTS"], "isAdmin": false, "namespace": "Tt5YQGawcomPoiYo", "roles": ["Q1f1AYq306Pysv4V", "PaZWolXypwucUqqq", "ff2iWi4yP3uqNcig"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'AdminInviteUserV3' test.out

#- 152 AdminQueryThirdPlatformLinkHistoryV3
$PYTHON -m $MODULE 'iam-admin-query-third-platform-link-history-v3' \
    '6YcDA8Z3g62oGYwk' \
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
    '{"listEmailAddressRequest": ["rjLI4EHJEEWgki9f", "bdvUMDZeO4U55wdC", "pVpnENiTc9NESV22"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminGetBulkUserByEmailAddressV3' test.out

#- 156 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'eRBElD4K2Cy1tJcP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'AdminGetUserByUserIdV3' test.out

#- 157 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "AEkCeV29QsQk100e", "country": "u5UcxuXXpt0YSPX0", "dateOfBirth": "4uEIdAwgDobopbdJ", "displayName": "eVCiKs2vLyH9kcSB", "languageTag": "dk7MwQzn28Le5neo", "userName": "hqhCzroAzWQDve0Z"}' \
    '2G2N09VIbbsz24fQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'AdminUpdateUserV3' test.out

#- 158 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'KDZX6plErw0Gb0ce' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserBanV3' test.out

#- 159 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "CbphW4YMhJ0S50be", "comment": "z9ZLHW882riiPfRQ", "endDate": "3rJ0f5lwXvRNDBnm", "reason": "L1KQn77hiP1lzkzj", "skipNotif": true}' \
    'Dw6mLBordrJkD6vy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminBanUserV3' test.out

#- 160 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": true, "skipNotif": true}' \
    'T1Xw9K9Yb68a8ygY' \
    'x2TqkhlqMnE9Wj90' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserBanV3' test.out

#- 161 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "EQzOidrWnLrXqImg", "emailAddress": "Df3GaJsdCZND0wgY", "languageTag": "OilX1e1825iasunE"}' \
    'Sjcgr2drXG5NkKCy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminSendVerificationCodeV3' test.out

#- 162 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "SLA8cKCs0dFYRSa2", "ContactType": "OULZ0iOZJiOAh1Sp", "LanguageTag": "LhMF2Pav11FuU8iX", "validateOnly": true}' \
    'O9TiTPnIh2iaIBpY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminVerifyAccountV3' test.out

#- 163 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'C4txul6VKYlNYYlH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'GetUserVerificationCode' test.out

#- 164 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'PwKDpJmkeoAkp3Z4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserDeletionStatusV3' test.out

#- 165 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"deletionDate": 32, "enabled": false}' \
    'gyJYwclb4gd4QgQu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateUserDeletionStatusV3' test.out

#- 166 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "t2hiPuDdOPHcN9dr", "country": "wqytieXpIZfr5XDq", "dateOfBirth": "9dGLHjtgE2bTXJxC", "displayName": "CFqPNDqWrpkWnnov", "emailAddress": "a15WVuE5cYVP9tQS", "password": "a27BnPyq3I1BLtGE", "validateOnly": true}' \
    'DRNkk4DJUofJXK8R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminUpgradeHeadlessAccountV3' test.out

#- 167 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'GS0zCYRVmbfzwUms' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserInformationV3' test.out

#- 168 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'y0stUmKdXiiTObNd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserLoginHistoriesV3' test.out

#- 169 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "qkWa13g3pgHx6uPf", "newPassword": "6jQZcYerH933X7iX", "oldPassword": "EEM2KOusNEHcI95G"}' \
    'GdJvucDbs6UdccuM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminResetPasswordV3' test.out

#- 170 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 49, "Resource": "D4S1ilfgff7Et4uY", "SchedAction": 6, "SchedCron": "nlBwGNHgfgwZwVMv", "SchedRange": ["shGmsg6ZJYnkHDnH", "TlRugM7a2UZgeesi", "pbP027okM5E8tAaj"]}, {"Action": 98, "Resource": "61c0CJ7LzpFvOSF6", "SchedAction": 47, "SchedCron": "EdloYZBkatNLc42e", "SchedRange": ["q0O6VsXtOlQwj5xP", "vm7c5nPR0Y1sffUa", "Z64dFpiv8o9Gw4Qt"]}, {"Action": 76, "Resource": "3RnWR30MdBZezfwc", "SchedAction": 74, "SchedCron": "H0qSbMq4GLj8aGsH", "SchedRange": ["0qE5p601ak59yFSf", "dZIv8oYWPUS4Zu0S", "bTt6M2XizikCh6q0"]}]}' \
    'yq2WAHtL7IWE3MFq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminUpdateUserPermissionV3' test.out

#- 171 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 44, "Resource": "fDtOjW1iSYQbcebB", "SchedAction": 8, "SchedCron": "2U0syrGNhBmgT2q0", "SchedRange": ["kIbrJ2S5Pf1Lvg8k", "YEVylINJpxFY8E6p", "U8eHjh0aTjIOaQt0"]}, {"Action": 37, "Resource": "9CU3fjSRaXD4HDmd", "SchedAction": 44, "SchedCron": "zypjJiu7BIimNuwB", "SchedRange": ["3hBVhuSMHhf5R2Mk", "xQTAYGfE6hXZ7XLo", "WCGf0dZEeXBd6mGG"]}, {"Action": 7, "Resource": "SHcZbX2wNnT6A9zo", "SchedAction": 37, "SchedCron": "NLmPAUIMwa2wYq6D", "SchedRange": ["sUq38bYvaWLoKzHn", "ngdfFnOfY9stXH6L", "YXXMndxBPKmHVB7c"]}]}' \
    'NzHhvxc4xAPZ86WN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminAddUserPermissionsV3' test.out

#- 172 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 27, "Resource": "YMimVLzAP6aOzsTq"}, {"Action": 62, "Resource": "5HPsBU0Eo6QJ9vBR"}, {"Action": 72, "Resource": "OB0MThZW6LwcAg57"}]' \
    'BYBVCbi0ifdPyKf3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminDeleteUserPermissionBulkV3' test.out

#- 173 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '92' \
    '5yjtQSCJaOHzpb62' \
    '3EciYoYOPVg6DLEZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserPermissionV3' test.out

#- 174 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    '6DxpwBm2N8PdQ5mQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminGetUserPlatformAccountsV3' test.out

#- 175 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'aGXEbnmWR0H3EkrH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminGetListJusticePlatformAccounts' test.out

#- 176 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    'qaLNdfKszYZzOg11' \
    '3h6fIaHSx5bClxUO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminGetUserMapping' test.out

#- 177 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    'BmMwv5pmiIVnhlLo' \
    'Memsp7o3F2LQw7Y2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminCreateJusticeUser' test.out

#- 178 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "VdSxgXez7VvS0C9J", "platformUserId": "LVQQPa7PPx4Zi6Wa"}' \
    'C8wk7HMbJhNwZgf5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminLinkPlatformAccount' test.out

#- 179 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "nlMDORYuXnPNJgay"}' \
    'PFcyUnKXA3mcyMmX' \
    '6WF8jtNAVOYqSH53' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminPlatformUnlinkV3' test.out

#- 180 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    '3YlJ93CCGBXv4fP4' \
    'VPzhcH4UJrrCKvrO' \
    'Ai7lMgkVWJYzSCID' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AdminPlatformLinkV3' test.out

#- 181 AdminDeleteUserLinkingHistoryByPlatformIDV3
$PYTHON -m $MODULE 'iam-admin-delete-user-linking-history-by-platform-idv3' \
    'xWUxgOzeRNHIqK5P' \
    'T404mFw4HJv5T2kI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminDeleteUserLinkingHistoryByPlatformIDV3' test.out

#- 182 AdminGetThirdPartyPlatformTokenLinkStatusV3
$PYTHON -m $MODULE 'iam-admin-get-third-party-platform-token-link-status-v3' \
    'QOecfLsYKTmUnKlr' \
    'OsJmEwjGYN8VNPXN' \
    'smwTV8imJHNI0l6j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 183 AdminGetUserSinglePlatformAccount
$PYTHON -m $MODULE 'iam-admin-get-user-single-platform-account' \
    'JVzF1Oi2sQuWUBBH' \
    'ZonSmzF831vlCiZA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminGetUserSinglePlatformAccount' test.out

#- 184 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["ZHCWMXxVh8HTrKqV", "wnpPn8N5xMRgU7cP", "qNZrLCRRUysya4J3"]' \
    'rvTzMTMSwrNov2GW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminDeleteUserRolesV3' test.out

#- 185 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "9i54JY23AUWFTLq0", "roleId": "W1JqwKs1mO80L7IO"}, {"namespace": "Hlf6j8PZOzUiQKZq", "roleId": "z5NSp0B7LODN3Boi"}, {"namespace": "2sSAO2n4MZQt753X", "roleId": "QB93rOW0guPoQbYz"}]' \
    'c1RDVhs2lhdzxxgi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminSaveUserRoleV3' test.out

#- 186 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    'buqUuyW3cMz9Yydu' \
    'MomEHcU15St4v8ry' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminAddUserRoleV3' test.out

#- 187 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    '8IyqNVv0KVpXJTMx' \
    '3Y8Um1iqehObg3OZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminDeleteUserRoleV3' test.out

#- 188 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": false, "reason": "ENQopeHD6iKBGm5C"}' \
    'j7RqnJUmfDmofxvN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserStatusV3' test.out

#- 189 AdminTrustlyUpdateUserIdentity
$PYTHON -m $MODULE 'iam-admin-trustly-update-user-identity' \
    '{"emailAddress": "8pRGoUtmbWZbEjPy", "password": "q35BWDoc3qNcQFFy"}' \
    'Hv141NPqjRUMKSQj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminTrustlyUpdateUserIdentity' test.out

#- 190 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'FdjqTaZFsWzbqwTZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 191 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "QIN5jC6a8mEVCXHm"}' \
    'FnrSL0PJcZQaCeNL' \
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
    '{"adminRole": true, "deletable": false, "isWildcard": true, "managers": [{"displayName": "D9pqZ5rryiMMt6fQ", "namespace": "tLhzylaquioT3QBt", "userId": "29AiRASsuFM4ahGw"}, {"displayName": "7XcF1Qwzz606UGXP", "namespace": "hoNZlXMef7AvS3Tf", "userId": "Kx6ByTygbtOtcQS4"}, {"displayName": "Cmgw1wRUnIVYxY6O", "namespace": "hdkrYiCinoVOzo4P", "userId": "lv1IlTpEhjTFYdzs"}], "members": [{"displayName": "UNvQAn2LuMjLqwmV", "namespace": "z3zKsfjz1mFkyxoU", "userId": "zfMFoXCOguSq2A4R"}, {"displayName": "3wDdSkNfHJtA3QiX", "namespace": "9ZvtydbaVb0scd97", "userId": "A0GP6djn2Ps3IVT5"}, {"displayName": "hUZ3cnDq0ddZG0Ep", "namespace": "fGAqHKcSxUc2YgRp", "userId": "k2IFGIgIpscUpVAc"}], "permissions": [{"action": 18, "resource": "sH4aXCDhshvEF8rH", "schedAction": 7, "schedCron": "ZcvRKoaM4ozSAg8F", "schedRange": ["TLrByWOJhbocoGlP", "zdfxcC3rpWhSpq0I", "nxMLpP7n7M3JXjEv"]}, {"action": 37, "resource": "fLMFbvyI5PZGzVLc", "schedAction": 25, "schedCron": "1LX2ehcMnM6QtjzQ", "schedRange": ["jDlUMCGnxZwak7KH", "nzGASmVzePIroz41", "oQCuXeTRyJQrNLTc"]}, {"action": 33, "resource": "4seYCyiB4tDCWx3c", "schedAction": 62, "schedCron": "yxb1of79zVTWIfgd", "schedRange": ["Nphqe9fS1m77MAg4", "KoZQPLhDSJx9jzxa", "RKph4kiIFgS4fLql"]}], "roleName": "rKGiS3XxjkyNfj3X"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminCreateRoleV3' test.out

#- 194 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'gTRTjI9oNBzgQ4CR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminGetRoleV3' test.out

#- 195 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'wg0sKVeSpMny0Grv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminDeleteRoleV3' test.out

#- 196 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": true, "isWildcard": true, "roleName": "5EVB9ZFzLNsjdCFt"}' \
    'KY0KsxR0rCFkyiQZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminUpdateRoleV3' test.out

#- 197 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    'fMnTbKdwNhiIP7dp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminGetRoleAdminStatusV3' test.out

#- 198 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'J8B8VwFQnVco2oCn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'AdminUpdateAdminRoleStatusV3' test.out

#- 199 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    '1KvJmbjapW9UlEqt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'AdminRemoveRoleAdminV3' test.out

#- 200 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'zDd7SgxdxB5kvtM8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'AdminGetRoleManagersV3' test.out

#- 201 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "ah9bPsksceGUEX8E", "namespace": "RZcKSYLo6y7yJMow", "userId": "Q6LpHCvCYTgX9JQw"}, {"displayName": "ErzjtuP9pUUv7qef", "namespace": "NMFsZAIqak1zi0JS", "userId": "a5cRn31D8ubfdXi7"}, {"displayName": "BycDPckeGJUgU8bD", "namespace": "5mGFFmKTTUxG0mpm", "userId": "FxxDNXGlGJvHf558"}]}' \
    'h1ltyhiSGhfqXhxB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'AdminAddRoleManagersV3' test.out

#- 202 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "J7zLXioAGkWgSDdD", "namespace": "QvpRfGe3z2rtjWpJ", "userId": "AlKHF0ebxhJ1176C"}, {"displayName": "eD4dWCp4wqlQJcZr", "namespace": "oNQiefBnPluOIjZy", "userId": "vlGDQGv6pNNowEuV"}, {"displayName": "VZM28w4mnYvvlt1e", "namespace": "s7A4PFduN4gx0UC6", "userId": "eWKCFGS97Si6XyLV"}]}' \
    'PrkUxyZ1OH5Nn4nM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'AdminRemoveRoleManagersV3' test.out

#- 203 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'T8QOyTuUSD9ImtaP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'AdminGetRoleMembersV3' test.out

#- 204 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "AocOQcpBWSNrCjSN", "namespace": "EAdojkCMmYyTGO07", "userId": "foRZ6FujpIWo0qJt"}, {"displayName": "qp4Q6XgICLgMHcP1", "namespace": "eE6sjWQllYsONpp6", "userId": "QGW56CNiszHE69D1"}, {"displayName": "MMoaf6KlgRtwaM2I", "namespace": "oyY1wpIdjcAtTj1I", "userId": "Muuhxxlulfmya73h"}]}' \
    'X0a8Ri85PA9wNpmr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'AdminAddRoleMembersV3' test.out

#- 205 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "K5Y5heA2ewWnFcqH", "namespace": "xXP3kRhtrBcBofWT", "userId": "GYx2ihgioL8VvEzH"}, {"displayName": "GTt9emdCLmzJbdky", "namespace": "kVAnmnRfUilcKA84", "userId": "d9pMsl7zrNJvDiP2"}, {"displayName": "hNNEI8QrQ6H1ro5C", "namespace": "tU8UjgyCUpM1JBcT", "userId": "zf4dz1BojPoQg976"}]}' \
    '409vFd5z9r4nJWUv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'AdminRemoveRoleMembersV3' test.out

#- 206 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 77, "resource": "slUe94NxhXsVcqTY", "schedAction": 16, "schedCron": "3uIffkIpPmrWVxNZ", "schedRange": ["UvkiU2jXSwsBBRop", "Vl38d4NZGtk6EmWx", "C75M88TKhFYkA9aR"]}, {"action": 80, "resource": "DUV3yHurgOfba1Xe", "schedAction": 30, "schedCron": "9JA0ll1RimBCiQwu", "schedRange": ["yrI87uSyXP6C0jXS", "8au2wcWYyj3JvHqX", "p4JR7xI59Z9tfGVs"]}, {"action": 13, "resource": "rkWHNxiaNyqBfgw5", "schedAction": 69, "schedCron": "LIoshGnFSuHmrqej", "schedRange": ["8PRppYY1vlV0M2g6", "oreqyBzWzCgMMWZu", "D6tmIR28xVxbtpSK"]}]}' \
    'OfiIP3S6pypZqISn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'AdminUpdateRolePermissionsV3' test.out

#- 207 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 100, "resource": "msrykQFtW8QGKFZL", "schedAction": 36, "schedCron": "zuQcsjFehD6uTDYn", "schedRange": ["qyNgN7GoeMsezFZs", "TBHkgcJ0DcEt23pc", "i6xEljer6aGJx5OF"]}, {"action": 32, "resource": "84dt0TSTmy7XF26K", "schedAction": 12, "schedCron": "U7xttUz8nWKJjv06", "schedRange": ["PuffHghAQfAsYXVz", "BenLtaAoYyRfiCWr", "m3s1Ah3TII70MIcB"]}, {"action": 78, "resource": "fgsgBd7MYLLoPZrk", "schedAction": 20, "schedCron": "d7SwZw2UkjDzJ4Nu", "schedRange": ["MMgI13nplXaUQV5Q", "EvKElLfbB7gwwAR1", "xFrnyirw3iJt5iA3"]}]}' \
    'JS2xeaJ08JrSHPqd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'AdminAddRolePermissionsV3' test.out

#- 208 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["hKHn6ZjZMdr1C2TI", "QzRJY7UfYSrdN0JV", "z4U43EcV1FRyeeqe"]' \
    'hMNeRYKeMbL0G4v5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'AdminDeleteRolePermissionsV3' test.out

#- 209 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '61' \
    'jJTVFoFjxZjh5qUR' \
    '1Pq4a4uaMfd0SQAf' \
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
    'YIyzHL8jxakuVu5r' \
    '5B08VZxI4TU3apnZ' \
    'XoJ4gI4EQKO8xC4D' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 211 'UserAuthenticationV3' test.out

#- 212 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    '0FsUo3IB2kX5REQZ' \
    'sHyXzoIXNf0KbL9H' \
    'yJttdgfLGO3ummpl' \
    'lnV6B62P1Kazg73c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'AuthenticationWithPlatformLinkV3' test.out

#- 213 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    '6UpmA4ehxNIIlcrZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 214 RequestOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-request-one-time-linking-code-v3' \
    'zgameT2mLkkAMjHy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'RequestOneTimeLinkingCodeV3' test.out

#- 215 ValidateOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-validate-one-time-linking-code-v3' \
    'I0e2Axj0nZHjmoKH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'ValidateOneTimeLinkingCodeV3' test.out

#- 216 RequestTokenByOneTimeLinkCodeResponseV3
$PYTHON -m $MODULE 'iam-request-token-by-one-time-link-code-response-v3' \
    'JngwMe1AnQVj6QQj' \
    'ZtkNJCnDSrsSey2B' \
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
    'qOxgwCymCDYsuff3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'RequestTokenExchangeCodeV3' test.out

#- 220 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'b7G5FDX4mu0qPHb9' \
    'Ll2EFEb8GnsthmQ2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 221 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    'Y6ZGOiqrg3lpqN5b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'RevokeUserV3' test.out

#- 222 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    'OfnqJ5bzDRzbhMxf' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 222 'AuthorizeV3' test.out

#- 223 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'v66DyED4prRVibTA' \
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
    'Txd7Mzjv1gSj8kcN' \
    'hoqcRZRNATojM7da' \
    'V0VwR3yNKDtMqMrA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'SendMFAAuthenticationCode' test.out

#- 226 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    'GpdyF6WDHn3ePBxQ' \
    'Nz2IUEHMzl5jhwVD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'Change2faMethod' test.out

#- 227 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    'suzwJ4v50eoaIBrT' \
    'h0EKkJioUpvGnkcH' \
    'gCfaWzPUvCnfqsPG' \
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'Verify2faCode' test.out

#- 228 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'W1zvrKMRPvwA9k6y' \
    'Jz03NETdywPqYerr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 229 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'pOm4M2pM4fIfcHBW' \
    'ZM50aHbPXRns3qwY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'AuthCodeRequestV3' test.out

#- 230 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'L6LwGlZGF7XQPLAc' \
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
    'IL7FvAMWqhyyNZH1' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 232 'TokenRevocationV3' test.out

#- 233 SimultaneousLoginV3
$PYTHON -m $MODULE 'iam-simultaneous-login-v3' \
    'steam' \
    'TMhSaynVs05nZC4O' \
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
    'G4meKEabfVXBJPIZ' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 235 'VerifyTokenV3' test.out

#- 236 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'qZC5d6JuFdcfiNf0' \
    'DOHKwxDF5GJhCjVH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'PlatformAuthenticationV3' test.out

#- 237 PlatformTokenRefreshV3
$PYTHON -m $MODULE 'iam-platform-token-refresh-v3' \
    'iCn2hTefT8gPFJ4W' \
    'ndMpQhcLK0WTZbtm' \
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
    'QkwC8azx3IRWme3C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'PublicGetInputValidationByField' test.out

#- 240 PublicGetCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction-v3' \
    '6p2r4D3NQdjrjkX3' \
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
    'AMgK3JgZufzssA28' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 244 PublicListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["4mG7uAojLYBsx8oq", "MzbE0ljQaBtb47V6", "91j0FZp2vjOXptxz"]}' \
    'x6kkaZYpl52sQR9Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 245 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    'np5d1eSwrG2GBBEW' \
    'rDbQ1ZzhDuLHq9LT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'PublicGetUserByPlatformUserIDV3' test.out

#- 246 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    'BstguOdN0O7l3GbK' \
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
    '{"PasswordMD5Sum": "PHdDTQDEEE2mTsn1", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "wJ71szsNmnqZSWdE", "policyId": "yOVYrTdDq7IqbTVv", "policyVersionId": "8BLsqQW8HSrEm5Y7"}, {"isAccepted": false, "localizedPolicyVersionId": "XCK9dS5JTbdJEe6m", "policyId": "nkYAfw61kyKk0UXU", "policyVersionId": "F2523OTvOmfVNJND"}, {"isAccepted": false, "localizedPolicyVersionId": "edwIu1TSRr6r8mzf", "policyId": "MedpcKhvHPlvYanG", "policyVersionId": "qEkn9OEVwLWGT4MX"}], "authType": "hmzvRQb7c0vmjWq9", "code": "fQqzulLGfQMqSLQD", "country": "lRFYMVfiAMa6Pco7", "dateOfBirth": "MfvikslpyL9BYLVV", "displayName": "znF6hMYfksp8VQhY", "emailAddress": "SFeBOp0ilGQFwHUt", "password": "ZugblT3aIDKn9qJX", "reachMinimumAge": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'PublicCreateUserV3' test.out

#- 249 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'pq511jZcTK8zmMfy' \
    'shYk3b5cAFVo85r1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'CheckUserAvailability' test.out

#- 250 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["b8Yp2QnuhQuIdvZd", "j6AspWBfRnLcLbp7", "OmcrDJ7u1rrRPcnG"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'PublicBulkGetUsers' test.out

#- 251 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "89rnNW1Yjfn8lY4D", "languageTag": "nYRxY8ZhHeb0CaPF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'PublicSendRegistrationCode' test.out

#- 252 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "DjrSotKnpJWALpTo", "emailAddress": "j9rgr5RffM5JXvPd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'PublicVerifyRegistrationCode' test.out

#- 253 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "zEpDln04F8BQjzob", "languageTag": "hDa8VxKOrfVfBRIf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'PublicForgotPasswordV3' test.out

#- 254 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    'kStOqdXqhDMQ6tBL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'GetAdminInvitationV3' test.out

#- 255 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "OgDQAWhulbrDf7q4", "policyId": "cAnpmLiEu4CNtX2l", "policyVersionId": "nqi7cHTSdGoLZbC3"}, {"isAccepted": true, "localizedPolicyVersionId": "JruU4uIXBZsEYogF", "policyId": "WiH9z4E8zmaZ5cg0", "policyVersionId": "REtUWY4fVIdqwCWF"}, {"isAccepted": false, "localizedPolicyVersionId": "wmbOubTxAAeDCowR", "policyId": "3MeCNL1oNrF3Smgu", "policyVersionId": "dQusJLsPlW7ZyORF"}], "authType": "EMAILPASSWD", "country": "9VTK7tkJWFpHt7Md", "dateOfBirth": "Ku9Xwn5GHJDGatrY", "displayName": "OMO91CYEjX867n9P", "password": "T9fR7mMuBXPDKCri", "reachMinimumAge": true}' \
    'zTZ7TXAVRnUVbxEJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'CreateUserFromInvitationV3' test.out

#- 256 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "cKHE764EwhQfxFKI", "country": "OGT1WKSmLoA0ILaE", "dateOfBirth": "SC1GJXsoBwqh0TQX", "displayName": "a2j7v3zQJoQLTAlW", "languageTag": "75icIKUpXazsFrma", "userName": "GNoi3RPTgWotLNz0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'UpdateUserV3' test.out

#- 257 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "u8ySxA0yrjz4q7e0", "country": "EJnADXC2y0DY1E1S", "dateOfBirth": "MK9oA4vK56dsYI5S", "displayName": "KV5pDANyJ184miBh", "languageTag": "dVJt81fmLSyGuu5r", "userName": "bJVIwRMtwApGbXnR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'PublicPartialUpdateUserV3' test.out

#- 258 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "3yC6f2MHGGedk0Kz", "emailAddress": "XRclOXdPYZQxBntt", "languageTag": "u4yW5etl4Xk8Hd1l"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'PublicSendVerificationCodeV3' test.out

#- 259 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "RtoPMvsu9oswEPTv", "contactType": "zwwGnpbx8MCIjKzy", "languageTag": "lqW8auyseP9wEEyY", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'PublicUserVerificationV3' test.out

#- 260 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "K705ykRqSPYZgPm4", "country": "JLsXVtBOEetHsxAJ", "dateOfBirth": "8Ny1LRkPU9hrl5nk", "displayName": "pEdBe8bYWdok4UnU", "emailAddress": "EOyP0cPZf5OvolfI", "password": "0mqZctohLheRaQkf", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'PublicUpgradeHeadlessAccountV3' test.out

#- 261 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "FW9B7jHZro4hhwnA", "password": "NAGp8zGqNGrcQyoA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'PublicVerifyHeadlessAccountV3' test.out

#- 262 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "1TWPcy83iXfYXNdM", "newPassword": "kdg9TMwxNcQ6CkVi", "oldPassword": "8fqVPRqNbF5yLnYS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'PublicUpdatePasswordV3' test.out

#- 263 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'a8xFLvcYexMMMiDF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'PublicCreateJusticeUser' test.out

#- 264 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'h5RbW021cHN3QbzV' \
    'uJZH3k54cExxWKtd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'PublicPlatformLinkV3' test.out

#- 265 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "GTW4FILotv5ycTa0"}' \
    'i6ifYP1zfgjsy3VR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'PublicPlatformUnlinkV3' test.out

#- 266 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'jX4qA4g9OGoWw1qn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'PublicPlatformUnlinkAllV3' test.out

#- 267 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    'CAvdnAcokJ0rzqX2' \
    'KJcYHgiFDxclBXap' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'PublicForcePlatformLinkV3' test.out

#- 268 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    '6j73doCWxhubMXbx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'PublicWebLinkPlatform' test.out

#- 269 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'NvT6wAffv4uzKAwi' \
    'I4wTxNIefCmtrxWu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'PublicWebLinkPlatformEstablish' test.out

#- 270 PublicProcessWebLinkPlatformV3
$PYTHON -m $MODULE 'iam-public-process-web-link-platform-v3' \
    '293551nQBNKcqCkU' \
    'XRj8gQHEe4CO370O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'PublicProcessWebLinkPlatformV3' test.out

#- 271 PublicGetUsersPlatformInfosV3
$PYTHON -m $MODULE 'iam-public-get-users-platform-infos-v3' \
    '{"platformId": "sbzRKKPd6mjzLxll", "userIds": ["UrFYn7cSuO7NxKHU", "Hg0c4X7fHdITmN9o", "paF0kh3pCRB3infE"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'PublicGetUsersPlatformInfosV3' test.out

#- 272 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "VxArF7TB6A6a71zA", "emailAddress": "JpaPeudUtKPJUmAv", "newPassword": "xBxJNPlvvYZw4MWz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'ResetPasswordV3' test.out

#- 273 PublicGetUserByUserIdV3
eval_tap 0 273 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 274 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    'WFTuNPf5JCSDyYy4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'PublicGetUserBanHistoryV3' test.out

#- 275 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'e5qoTZxSoZbQUnUx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 276 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    'S6m68WL3HDL4yx5I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'PublicGetUserInformationV3' test.out

#- 277 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    '0euBsccHPA2v9XP9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'PublicGetUserLoginHistoriesV3' test.out

#- 278 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'enfEX7lloLgIYqxF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'PublicGetUserPlatformAccountsV3' test.out

#- 279 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    'fSNJlHCjxLNnYUlG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'PublicListJusticePlatformAccountsV3' test.out

#- 280 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "QsFpy9ZVlLIFwLgT", "platformUserId": "78nootfUs9559ilm"}' \
    '3cauhrw9Yn2z5cnb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'PublicLinkPlatformAccount' test.out

#- 281 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["m7z2Aa24yBTw3wfN", "GyWf3VujS7Bq5bcf", "PW4pPZB9YXltCxyz"], "requestId": "tUnj17t3gHBXvjvz"}' \
    'iexzOLbOWbtcJUxM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'PublicForceLinkPlatformWithProgression' test.out

#- 282 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    '3AWyDkA5LmART6ku' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'PublicGetPublisherUserV3' test.out

#- 283 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'lpM4SRtUE5P4kxmH' \
    'tFbjqurHix0QYycD' \
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
    'H5we2Mx0sYCnYPT4' \
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
    'i4mxc14iRfzJwKuc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 288 LinkHeadlessAccountToMyAccountV3
$PYTHON -m $MODULE 'iam-link-headless-account-to-my-account-v3' \
    '{"chosenNamespaces": ["7EpiQEzz5N5osRYO", "7wbYh7q02W8tkTUR", "UFmqNc8xhQqptccN"], "oneTimeLinkCode": "orRls7EC3nDnhFvD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'LinkHeadlessAccountToMyAccountV3' test.out

#- 289 PublicSendVerificationLinkV3
$PYTHON -m $MODULE 'iam-public-send-verification-link-v3' \
    '{"languageTag": "lFd7iyZpvWVJFK6Z"}' \
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
    'uvlzGCII156hIg0g' \
    '8HIxpzm9AcFhH4Zl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'PlatformAuthenticateSAMLV3Handler' test.out

#- 292 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'YY3rEuHMWwQNmCQm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'LoginSSOClient' test.out

#- 293 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'GCF963CbsOawlRBQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'LogoutSSOClient' test.out

#- 294 RequestTargetTokenResponseV3
$PYTHON -m $MODULE 'iam-request-target-token-response-v3' \
    'JH6fNekhk077gxaj' \
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
    '55huTA6AvmW0567B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'AdminGetUserDeviceBansV4' test.out

#- 299 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "FqbrPIuxKmBXLi6G", "deviceId": "pnqAeMvg3w0FQ152", "deviceType": "0WM3TxWXSdTiKdva", "enabled": false, "endDate": "UREoBSFtCLy2CqgC", "ext": {"G7JwJCDqkzOdFwLJ": {}, "pIPxzLE1V9U1NgpH": {}, "7Oc44yjRdfqZgv34": {}}, "reason": "GqqjelcN0GJmPwUT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'AdminBanDeviceV4' test.out

#- 300 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    'WMx0MiPAjnWIhFrq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'AdminGetDeviceBanV4' test.out

#- 301 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": false}' \
    'Wiyw17ogzmbj4SLY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'AdminUpdateDeviceBanV4' test.out

#- 302 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    'DrZJvDLGvn6qtroZ' \
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
    'cp16HKXX1ft5nBA9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'AdminGetDeviceBansV4' test.out

#- 305 AdminDecryptDeviceV4
$PYTHON -m $MODULE 'iam-admin-decrypt-device-v4' \
    'xNIJVuMz04evSdE2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'AdminDecryptDeviceV4' test.out

#- 306 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    'FMcKd7c94rEmIYuA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'AdminUnbanDeviceV4' test.out

#- 307 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    'T5OAcUwYHGmG5rND' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'AdminGetUsersByDeviceV4' test.out

#- 308 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"count": 56}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'AdminCreateTestUsersV4' test.out

#- 309 AdminBulkUpdateUserAccountTypeV4
$PYTHON -m $MODULE 'iam-admin-bulk-update-user-account-type-v4' \
    '{"testAccount": false, "userIds": ["1oU37vjfyX5YLaM0", "wmi0i1WABBbq8IzZ", "sMFLX9ZhFXcFtfBS"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 310 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["3ZIHofhwyM6Bw2sF", "GQ5DQoDwzrKPOZZn", "V3zR7YxSu6addocg"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'AdminBulkCheckValidUserIDV4' test.out

#- 311 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "10Hy9jx7gBHTOHHA", "country": "rjld0LnREsrrB2pJ", "dateOfBirth": "7V8BSrucjO3zvSM5", "displayName": "KeVNHU9GcOivIfcC", "languageTag": "Jt4U8VSgXoi9Fw25", "userName": "b9qXzlIK2G6AUjBC"}' \
    'df0Rp5e5IvFuN1oU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'AdminUpdateUserV4' test.out

#- 312 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "sCnBmGMx5F6EhM3d", "emailAddress": "KvIG9MR0hTINvq1V"}' \
    'R9SJUfQEX996Mh1s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'AdminUpdateUserEmailAddressV4' test.out

#- 313 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    'Q3Dw3uyjgQNAs918' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'AdminDisableUserMFAV4' test.out

#- 314 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    '8Qm3W1De2McGd10w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'AdminListUserRolesV4' test.out

#- 315 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["efF0CJlH55RLEgeA", "sSpQdcmGHZuRVQ8t", "zwqMayP8A3HGNI3B"], "roleId": "fjkFd6MHo6gGQ5mC"}' \
    'hYoKD7yqCR03RovQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'AdminUpdateUserRoleV4' test.out

#- 316 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["Zhwfjkq9iyTbyD3D", "01tRpuuyIagSSzEL", "8H4euLufhQj2KP3L"], "roleId": "Lxl9Hs2L2wlpKBVU"}' \
    'RxHefz77a9fntCNi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'AdminAddUserRoleV4' test.out

#- 317 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["HBRUNCPSre5GmZzC", "QwilS3IxSjlyvR9P", "xG9Lji2Vc88W8aLj"], "roleId": "IxVGpdOqguxvRwI9"}' \
    'ZBTipMRlhK9DMMaI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'AdminRemoveUserRoleV4' test.out

#- 318 AdminGetRolesV4
$PYTHON -m $MODULE 'iam-admin-get-roles-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'AdminGetRolesV4' test.out

#- 319 AdminCreateRoleV4
$PYTHON -m $MODULE 'iam-admin-create-role-v4' \
    '{"adminRole": false, "deletable": true, "isWildcard": true, "roleName": "94BrMSP31wAkVH75"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'AdminCreateRoleV4' test.out

#- 320 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'UcmNXK5RqcIo9lpz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'AdminGetRoleV4' test.out

#- 321 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    '9oM52vHPlwVV3jlP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'AdminDeleteRoleV4' test.out

#- 322 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "Or6wJDBwIDsJHNg6"}' \
    'TvNGjwI4TbTwBufU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'AdminUpdateRoleV4' test.out

#- 323 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 29, "resource": "O8U3W94Z8IW2MAL9", "schedAction": 12, "schedCron": "E9YugcupLxVBcRkf", "schedRange": ["hRuqkOTHSia7oFd1", "fEmDuyAsQGzwJR5p", "oI718RQnj4imu6XF"]}, {"action": 10, "resource": "jt04ZpyTTZG1LxLd", "schedAction": 51, "schedCron": "S4Yw8NmPaBeryzX2", "schedRange": ["hOPVVFqVqxjq1iG3", "TySOh8SI75oXbyq8", "FBbur80QwnlgAVfq"]}, {"action": 52, "resource": "gFWs5s0nT89A88GD", "schedAction": 82, "schedCron": "Aemh8lioBR7xTXcE", "schedRange": ["IFod3lCzvjHzDHOr", "SJ1vbB7LRHd96dGL", "gkfrZveFMWAFT7l0"]}]}' \
    'l1jaOAMCzbsoIgmK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'AdminUpdateRolePermissionsV4' test.out

#- 324 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 46, "resource": "T1Gofv4SuaZ8yCB9", "schedAction": 94, "schedCron": "0D4JRbNqO6IuP2PY", "schedRange": ["5hhX6uNah9JoHPj7", "jFWxSv1lYylYAiZ8", "c7Zd7EUoezOLw8C1"]}, {"action": 6, "resource": "wxobjxAbagqEmXn6", "schedAction": 96, "schedCron": "vtFuunQsvdXGlD40", "schedRange": ["xxIyVwYjn6dlC9Kf", "h9gHuloyce0cLJu4", "ljPWlCWTuGO8MnfO"]}, {"action": 88, "resource": "Hpi1JZJjIRtCfqDH", "schedAction": 92, "schedCron": "X7iW7VpCngWAv5DA", "schedRange": ["G8dPdkKgQqjyzUZR", "2rFIAuALNhNCyscs", "MBRLsWadk2OQ421q"]}]}' \
    '7Nb1vrKthVvU5on0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'AdminAddRolePermissionsV4' test.out

#- 325 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["65ApCkVN3QchuQ6p", "ntxB648ss7rBnvQH", "AM8gSdIybKUByHBz"]' \
    'fvgtRTPPzwJmKaLC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'AdminDeleteRolePermissionsV4' test.out

#- 326 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'x3gcidEALWe6RG5w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'AdminListAssignedUsersV4' test.out

#- 327 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["Wznu5AjwR1Z4fU7I", "CcaQtuuKUw3dUwWH", "hQW3I1y9tjRLVOXB"], "namespace": "Ma0JiIe1AY0tUA7E", "userId": "KASk3USNLhOBlxRB"}' \
    'Lgohp8ByTi2F6AyU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'AdminAssignUserToRoleV4' test.out

#- 328 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "X8w77riPlPgJcLbe", "userId": "Qf9MICxX7xKyCfgw"}' \
    'SPz14asyOdgn77gN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'AdminRevokeUserFromRoleV4' test.out

#- 329 AdminInviteUserNewV4
$PYTHON -m $MODULE 'iam-admin-invite-user-new-v4' \
    '{"assignedNamespaces": ["8K1FlNkgbFE8U4me", "K5grmPBsFH71Vrhs", "ISYtegQbNA2WQrHT"], "emailAddresses": ["kJT1VkChD3n0c1ry", "AkRvdPR8gx2rX5dc", "k8NFKPgT6LMehg04"], "isAdmin": false, "namespace": "tpTSsPMGDZTOwEP5", "roleId": "Bhh0NStWIggmhfAz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'AdminInviteUserNewV4' test.out

#- 330 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "VdNYP7Ao1z7FeJM2", "country": "fWXGk7JObSHksRka", "dateOfBirth": "bpmvRsc7ZYvXCT6m", "displayName": "6mRZAlLBczJVeil7", "languageTag": "GbG1ISBCkcnpxKUx", "userName": "LjmxhBS6YypRW7fN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'AdminUpdateMyUserV4' test.out

#- 331 AdminDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'AdminDisableMyAuthenticatorV4' test.out

#- 332 AdminEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'AdminEnableMyAuthenticatorV4' test.out

#- 333 AdminGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-admin-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 334 AdminGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'AdminGetMyBackupCodesV4' test.out

#- 335 AdminGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'AdminGenerateMyBackupCodesV4' test.out

#- 336 AdminDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'AdminDisableMyBackupCodesV4' test.out

#- 337 AdminDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'AdminDownloadMyBackupCodesV4' test.out

#- 338 AdminEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'AdminEnableMyBackupCodesV4' test.out

#- 339 AdminSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-admin-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'AdminSendMyMFAEmailCodeV4' test.out

#- 340 AdminDisableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-disable-my-email-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'AdminDisableMyEmailV4' test.out

#- 341 AdminEnableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-enable-my-email-v4' \
    'ntaIEtDI6MbhxkQd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'AdminEnableMyEmailV4' test.out

#- 342 AdminGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-admin-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'AdminGetMyEnabledFactorsV4' test.out

#- 343 AdminMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-admin-make-factor-my-default-v4' \
    'ezbmf392ersoZ2Kb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'AdminMakeFactorMyDefaultV4' test.out

#- 344 AdminInviteUserV4
eval_tap 0 344 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 345 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "8Jxp2zaItg9jTNZv", "policyId": "pFEUI21aSaIsMyLK", "policyVersionId": "PPIZx0zdNAagipZw"}, {"isAccepted": false, "localizedPolicyVersionId": "N1qyxpUzWIZWJTDz", "policyId": "Wguhujw1EoR58uCV", "policyVersionId": "ldefonHJZAiX4abm"}, {"isAccepted": true, "localizedPolicyVersionId": "e36SA5dxATLv5PkL", "policyId": "vraRzChdjDGdlk2A", "policyVersionId": "2jHbAPNGInvbnf4e"}], "authType": "EMAILPASSWD", "country": "p9avUr6IydpXW0MO", "dateOfBirth": "0eT9okl6MlWOl9fe", "displayName": "WO2bmOikTBJHTEm5", "emailAddress": "PSeyod5L6OooYoQn", "password": "9iHEqWO1cVCUIOx9", "passwordMD5Sum": "0FQdwLi3GOQkLtpu", "username": "RNeT1CULEMPaOU5n", "verified": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'PublicCreateTestUserV4' test.out

#- 346 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "SglAJGyZS0I8FevJ", "policyId": "iT98HUBp56Q4WETx", "policyVersionId": "tGMs5tPKPuK0K4Pi"}, {"isAccepted": true, "localizedPolicyVersionId": "dvrpmInhHYzVVlHG", "policyId": "FSwjby6rMYkVQnZD", "policyVersionId": "UAbINRKQsxUO1YMx"}, {"isAccepted": true, "localizedPolicyVersionId": "EdDfY4TTxu8goZgs", "policyId": "X4RwfM4qnUdcQqZ9", "policyVersionId": "F1uivPob0YZEuXQA"}], "authType": "EMAILPASSWD", "code": "UogizeWOPUMrqgEI", "country": "sMwNbfti0LoTBcNz", "dateOfBirth": "yoCSw1t653G3ydYm", "displayName": "Gzvx9bSqqyAPha5b", "emailAddress": "6PQTPTytHeeXo7gO", "password": "FVLZCBWuVIROZuqd", "passwordMD5Sum": "JBi8pkn98VtLNkaI", "reachMinimumAge": false, "username": "JfkFDhSeSGXtZU5S"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'PublicCreateUserV4' test.out

#- 347 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "EAHZzHs8x5oPSkZF", "policyId": "IV2feXnTRlzAJy9o", "policyVersionId": "FOHB2KEsIdtozVlt"}, {"isAccepted": true, "localizedPolicyVersionId": "7zeEpmSPO6KwlJQl", "policyId": "j9Ii2jARwzowk9Oo", "policyVersionId": "iPdnq9KBqBwiNCsn"}, {"isAccepted": false, "localizedPolicyVersionId": "8CcO1OHbpQZtwW3E", "policyId": "wLre1bL4dJnkRLJb", "policyVersionId": "MvOGSd7uMrmQ2SaL"}], "authType": "EMAILPASSWD", "country": "Qqsi5yOjvl5sRN2E", "dateOfBirth": "Nn1RLi5iMPnbg7o1", "displayName": "zYpqUsliPyXZGYIW", "password": "5ZDtWbdkzPP47RcU", "reachMinimumAge": false, "username": "H5AlYRAqCAC2gy1W"}' \
    'F9QLNgDxAkwgfB8j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'CreateUserFromInvitationV4' test.out

#- 348 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "IecOx5ugNCDd6jW6", "country": "fjtBcO3fWq9qfmBv", "dateOfBirth": "0XgJB6a7uykADFpi", "displayName": "nFcH2ZMSYijqEuMf", "languageTag": "uYFUS079tOpZYM1X", "userName": "V0Op0damycnTUOoM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'PublicUpdateUserV4' test.out

#- 349 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "kOppZNOkqxc42HKv", "emailAddress": "5wvtPJVsuzaBciSx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'PublicUpdateUserEmailAddressV4' test.out

#- 350 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "wzuIpGBYHTHoSVxg", "country": "QCbpZx5yMGIQ1ZxV", "dateOfBirth": "IefYlKBJyQMqUEfD", "displayName": "ikX6yOlgZrn0I6T0", "emailAddress": "hvcAFTaSWR4VOGIY", "password": "7hM6uhonkAe0FdTS", "reachMinimumAge": true, "username": "EluBxM47BTww3nBT", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 351 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "mBFZ6TIs9bTi2m7e", "password": "NsYEqKkeuLWDfeFe", "username": "ExlOFjRh8mLFTJLv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'PublicUpgradeHeadlessAccountV4' test.out

#- 352 PublicDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'PublicDisableMyAuthenticatorV4' test.out

#- 353 PublicEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'PublicEnableMyAuthenticatorV4' test.out

#- 354 PublicGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-public-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 355 PublicGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'PublicGetMyBackupCodesV4' test.out

#- 356 PublicGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'PublicGenerateMyBackupCodesV4' test.out

#- 357 PublicDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'PublicDisableMyBackupCodesV4' test.out

#- 358 PublicDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'PublicDownloadMyBackupCodesV4' test.out

#- 359 PublicEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'PublicEnableMyBackupCodesV4' test.out

#- 360 PublicRemoveTrustedDeviceV4
$PYTHON -m $MODULE 'iam-public-remove-trusted-device-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'PublicRemoveTrustedDeviceV4' test.out

#- 361 PublicSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-public-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'PublicSendMyMFAEmailCodeV4' test.out

#- 362 PublicDisableMyEmailV4
$PYTHON -m $MODULE 'iam-public-disable-my-email-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'PublicDisableMyEmailV4' test.out

#- 363 PublicEnableMyEmailV4
$PYTHON -m $MODULE 'iam-public-enable-my-email-v4' \
    'eQSDWnMQGaYRxFWi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'PublicEnableMyEmailV4' test.out

#- 364 PublicGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-public-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'PublicGetMyEnabledFactorsV4' test.out

#- 365 PublicMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-public-make-factor-my-default-v4' \
    'a7yJ2d87XjA0ajvb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'PublicMakeFactorMyDefaultV4' test.out

#- 366 PublicGetUserPublicInfoByUserIdV4
$PYTHON -m $MODULE 'iam-public-get-user-public-info-by-user-id-v4' \
    '7JcGUFgp6LkyXpxJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 367 PublicInviteUserV4
$PYTHON -m $MODULE 'iam-public-invite-user-v4' \
    '{"additionalData": "eFxhgTwyO51CUpcd", "emailAddress": "xL0a9VDhrqWCTXOx", "namespace": "QUpyFgZhNpOTE4to", "namespaceDisplayName": "H57yr01N33p1Gha8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'PublicInviteUserV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
