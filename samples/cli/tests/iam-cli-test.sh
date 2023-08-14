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
iam-retrieve-all-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-sso-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-third-party-login-platform-credential-v3 'jyEgarAdNJOIG36I' --login_with_auth "Bearer foo"
iam-add-third-party-login-platform-credential-v3 '{"ACSURL": "6tRbRcrEveMdAdiP", "AWSCognitoRegion": "KDUVSC00PYeDcagg", "AWSCognitoUserPool": "inxnFIna3yddcbsP", "AllowedClients": ["heTH26IUJNvYuGRU", "vpZaHCuESOiIZsMf", "B4ZH3mtgWgU4pCAK"], "AppId": "xeE70CaunQNxot37", "AuthorizationEndpoint": "1W9G4AvQkqsGnmyo", "ClientId": "5JJTUVmb8GEXFTlE", "Environment": "MEsFzYqwgK1Np5no", "FederationMetadataURL": "dqpLm7FhJBNXzAFd", "GenericOauthFlow": false, "IsActive": false, "Issuer": "jvqhnUVLWu8olKdx", "JWKSEndpoint": "L6ozRmDD0jJvlfV5", "KeyID": "OemPYdYT7DROCjtu", "NetflixCertificates": {"encryptedPrivateKey": "zFMbAG9YI89hmguB", "encryptedPrivateKeyName": "8FOTjMLo4b9rIzqY", "publicCertificate": "kEpstyVTBcrM8rG0", "publicCertificateName": "rH0zcswwVeMK6MbG", "rootCertificate": "IVIu8vvwLc7KY3uV", "rootCertificateName": "oJXTIMtpgkieDyF9"}, "OrganizationId": "7lGdMiHKxbWCYzo8", "PlatformName": "yO2KTK9tmmOnYnOp", "RedirectUri": "as6ghP1y4Zi7s7QB", "RegisteredDomains": [{"affectedClientIDs": ["lk44Z44B1GZgKg4u", "KxaCgcGLuC3brWdT", "YCfHkIySok5DiXZt"], "domain": "LW87rGysryod3dNQ", "namespaces": ["rmsApRA6HX3RwrKt", "2ecozL0TOg54vCE4", "8L5oLF6M4lNa4JUM"], "roleId": "SHNgqRqCV7usamAN"}, {"affectedClientIDs": ["kZlOX9Sfo95HgXqK", "hTPkwfLM9uSybRzW", "ek2gZvRrvr0n9d9l"], "domain": "vccKMLhrTrcBE2It", "namespaces": ["BS3KtKZWe8aoFzAy", "BME74HUtipUWYhWV", "1qx8CzPML52faXUr"], "roleId": "9Sk4lq2faBcAXXKl"}, {"affectedClientIDs": ["hvyH8paOJtxqMPpc", "VfRwNj547fH0XrKE", "DpEY8VnocGAjci0V"], "domain": "3tBf2jnHGKXphn50", "namespaces": ["c9tNLDljhZ2jxLRX", "3z46OCaGBeMfPlNo", "s4yBRjrERHEonAZR"], "roleId": "8GmEu0q1p6QCyY6v"}], "Secret": "SkVFWdsbYuVEGVxY", "TeamID": "heR3j5mNZ6vwv7K8", "TokenAuthenticationType": "Asvt1j1Rx59hesNW", "TokenClaimsMapping": {"y2NvZ85DDKDAF8KD": "sBZOuYQJ03BAHZ7c", "53q7akMpcmnnx6RV": "Brop9v7aZK3h65hb", "N15zfQSfQrtfF3TQ": "N0OcNDLr36vzohZy"}, "TokenEndpoint": "jMQAg5mPYhrLTyU8", "UserInfoEndpoint": "OhgfY9JQYGF4bYXE", "UserInfoHTTPMethod": "cENx9xZlAchob44l", "scopes": ["ONDDwMvgI0HlyPR7", "wZNiVsF6xG2mXEQd", "bzIVy8alncV7vWgS"]}' 'Hdfo07UctPErqxyM' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-credential-v3 'yOK06MqQBErxgjVB' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-credential-v3 '{"ACSURL": "ycvU4PbmRDcrg0Dj", "AWSCognitoRegion": "QjBECXvea7H1m2lJ", "AWSCognitoUserPool": "FRZ3ZprZ60zMjhTH", "AllowedClients": ["eh94TSenE5hCFkIf", "5weqZ18MH57l2Zsr", "h90ETtYmGukz3Mnl"], "AppId": "rjcHp6B8Vj7rXFgD", "AuthorizationEndpoint": "nDkdZ9bpjb1tdA3Q", "ClientId": "hjCMW64f4XhIjSoT", "Environment": "B2NMKtezapPr2QEP", "FederationMetadataURL": "x3zTxBGtEJIYppuU", "GenericOauthFlow": true, "IsActive": true, "Issuer": "7Rry0KK5rgAGO0dW", "JWKSEndpoint": "8rX2MVUGKSZ4GcLk", "KeyID": "t4pK32sJxlZcCTpT", "NetflixCertificates": {"encryptedPrivateKey": "dRtCHvuk6B6XTmSL", "encryptedPrivateKeyName": "yn50sigBVZxiKdV5", "publicCertificate": "7GvRyd9UuL02Le8H", "publicCertificateName": "SCslsDd4M1F5qRIb", "rootCertificate": "lS7Nz81GRazPAANj", "rootCertificateName": "fBoldFOyqA2clJ5g"}, "OrganizationId": "EOaCgM6Yn6RugbNE", "PlatformName": "IpGBFUjOn5mM7k8n", "RedirectUri": "bLzvtCIW5ynMKquU", "RegisteredDomains": [{"affectedClientIDs": ["icAeIVXtoWAXhMlW", "4tLqX7OICf5oD1e6", "oI9FmYel0kOw72o8"], "domain": "Zkgk0jS6rDWUwfhK", "namespaces": ["vrf2AaH4yCWrHSpp", "nIZkNnTn3rzH5NvA", "tcvNedgS1fUfKmih"], "roleId": "Dbmu8ePWlQMVDXEH"}, {"affectedClientIDs": ["eiGTnwyEw6hIWDZr", "pP7rz3ISW510kHr4", "isTKWjmv67nuHCXW"], "domain": "fwnwGioVwVzmmBVV", "namespaces": ["Ffpqx1AeLtzcPJ3j", "tDYBo4FUTH7CGfKS", "yxgRR1DiCqSMzpqI"], "roleId": "FGLkDs7ACC1RgBfo"}, {"affectedClientIDs": ["NrHlFi2qJLgmBLE3", "5YhyiDV90SeI5ypp", "BHoytVznCgNyx9fb"], "domain": "T63ShEh8PbGikLjg", "namespaces": ["jcj34uulU6FYBZsW", "Fbr3RSP0W9nBhvhf", "8Q0DtJMcYQdN66bs"], "roleId": "wAgt65X4N1LQZmB6"}], "Secret": "1JMdtwCVUrYQue84", "TeamID": "dwmbwFEnAZaWsQJt", "TokenAuthenticationType": "RYoagRJK5PX9UcOv", "TokenClaimsMapping": {"hPyE11TRT2SKseoe": "8VLie0LBa36KNzjf", "005CXNGehQ2aTjTD": "fKFDXC7eGL5YhJDW", "h9YWqc0qgV6d9yOf": "IMLds2DbPcaoMdtR"}, "TokenEndpoint": "LTmSvTkQQgB7exYv", "UserInfoEndpoint": "mHMxr5hPCJJztJBg", "UserInfoHTTPMethod": "0tTJg46IewOXE2Ak", "scopes": ["Ch3QIZsUf8lGFXcm", "wTERHclOdxIwqejx", "e18rNdb8Otq6j1mq"]}' 'Uav7k05HAQltnSoj' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-domain-v3 '{"affectedClientIDs": ["V4jT65yclX2FtAz0", "vJjFIYWOaNdsimmk", "W2miH3xRHAKy4QxZ"], "assignedNamespaces": ["kaXZ7vmiEd0JPxVy", "QpshaDwNqTbbFMXA", "MfVXe0GZeMgsRsmH"], "domain": "1EQrYmkPKTPOlhTt", "roleId": "SiZNCxuogFteTHJe"}' '4BhSSQkQD6WmOt6D' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-domain-v3 '{"domain": "7ufFVTOhvQpfbBke"}' '8aEdd36xj6wySolt' --login_with_auth "Bearer foo"
iam-retrieve-sso-login-platform-credential 'DxsbzxrlaKEfkoYj' --login_with_auth "Bearer foo"
iam-add-sso-login-platform-credential '{"acsUrl": "Y2o6ouRW9UtNquwC", "apiKey": "3WgumrIz4NhGztZp", "appId": "r4U4fwQIiLXgmRas", "federationMetadataUrl": "vjO4lj8m3XEwP2b4", "isActive": false, "redirectUri": "cTuHHPB5S3DvPRCz", "secret": "BrVUxmDOj3cvRFaT", "ssoUrl": "C11W0TGTCm4fZWuk"}' '6pQxDQpKqxLGeMvr' --login_with_auth "Bearer foo"
iam-delete-sso-login-platform-credential-v3 '9TsvcMQ7dBsaIecR' --login_with_auth "Bearer foo"
iam-update-sso-platform-credential '{"acsUrl": "xIsZvD6rmzVr5XT1", "apiKey": "Nxw0v1dMQ9Rrbk6C", "appId": "2cVWf6ttvbU1PO6A", "federationMetadataUrl": "pCD2VXidT7w0Oc15", "isActive": false, "redirectUri": "8WXBPp17PAewqSm5", "secret": "x3B4t7WQnp8jXZed", "ssoUrl": "gt5cyNe27HLtwtVO"}' 'axgP6Jbct8puMybY' --login_with_auth "Bearer foo"
iam-admin-get-user-by-platform-user-idv3 'GxD9IPmmsLmu3kaP' 'j0O4zd8Tb7cUNGPT' --login_with_auth "Bearer foo"
iam-get-admin-users-by-role-id-v3 'BxiFFCrn7djjs69F' --login_with_auth "Bearer foo"
iam-admin-get-user-by-email-address-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-ban-v3 '{"bulkUserId": ["TFVGUVhvKhJCmeis", "ql14mUHVbMPimNhc", "ZsU3VAdMDcb4qlki"]}' --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-user-i-ds-v3 '{"userIds": ["FAamqvZI2KwjqPBi", "WXade41s3rH34mB2", "yPlRpWjmHZAAvKTH"]}' --login_with_auth "Bearer foo"
iam-admin-invite-user-v3 '{"emailAddresses": ["8MuqIg0CzkguwuJC", "W7EEFB67AODbi9Bz", "upBsFpYc77GtRUcC"], "isAdmin": true, "namespace": "eY5g4XgBsbfzqxBP", "roles": ["Ne8ae1Il4aAtEbu4", "IjGdqthRxTjQ7gkZ", "EY8rG0q0Q2Qd2JzR"]}' --login_with_auth "Bearer foo"
iam-admin-query-third-platform-link-history-v3 'bkF2I03dIjvBbA6b' --login_with_auth "Bearer foo"
iam-admin-list-users-v3 --login_with_auth "Bearer foo"
iam-admin-search-user-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-by-email-address-v3 '{"listEmailAddressRequest": ["fbYaJCJjfk2TUvn9", "5FhO7VW3mbDVMDu8", "7t0ldWf7iSGIiKFt"]}' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v3 'Wtn4Yr2svKM6pqLG' --login_with_auth "Bearer foo"
iam-admin-update-user-v3 '{"avatarUrl": "Z0TBujELAUK6mQ5i", "country": "Zgbwwm5iGzXtcknr", "dateOfBirth": "gidKupvXO6aj4hCm", "displayName": "TC34jxW4pIDwdqXp", "languageTag": "mRmut9H9XyWI8bp8", "userName": "fQxRuX91uYmtrHJb"}' 'EGTUj7YjERL1rEQG' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v3 '02zccA8wvLsWUNd6' --login_with_auth "Bearer foo"
iam-admin-ban-user-v3 '{"ban": "lPKvqDejvqklTSvD", "comment": "wuOrP9lzpiX0VuFp", "endDate": "Zum7izxe7NPzjOa8", "reason": "E7wY76PxLv9HBEUe", "skipNotif": false}' 'AwEw1HO4FnKtx4XL' --login_with_auth "Bearer foo"
iam-admin-update-user-ban-v3 '{"enabled": true, "skipNotif": false}' 'GDbLNwjm3FK0nnX2' 'poMfZ1hDHtbh4HtM' --login_with_auth "Bearer foo"
iam-admin-send-verification-code-v3 '{"context": "lFgvh2Dp2SoiIPp1", "emailAddress": "yvfAHS0VgLu11A3H", "languageTag": "TovFi4tPAGfleyCA"}' '6jEtcqsnzoVILjkw' --login_with_auth "Bearer foo"
iam-admin-verify-account-v3 '{"Code": "W61duF87aUyrdt4X", "ContactType": "SpWBAetsanzqP8ox", "LanguageTag": "frtbECD1CYPwaiBA", "validateOnly": true}' 'INPXppPNO3AfmXcg' --login_with_auth "Bearer foo"
iam-get-user-verification-code 'wC3IN6tvKgLB9QmJ' --login_with_auth "Bearer foo"
iam-admin-get-user-deletion-status-v3 'IOq9dP5szG71utjs' --login_with_auth "Bearer foo"
iam-admin-update-user-deletion-status-v3 '{"deletionDate": 87, "enabled": true}' 'CrRb9gUCeVz7fWbZ' --login_with_auth "Bearer foo"
iam-admin-upgrade-headless-account-v3 '{"code": "IdhevfZvyV7Acodc", "country": "ZwKjYDdmJOlzwm9S", "dateOfBirth": "u4FnS98QqftSjq7s", "displayName": "n8yreciPLfkVyyJs", "emailAddress": "bGpO6JgehDJxEN7J", "password": "lZc8LMq1o2jZWu4y", "validateOnly": true}' 'd9CVnGqMX9FieeEs' --login_with_auth "Bearer foo"
iam-admin-delete-user-information-v3 'sWEUl07bhwntCVqi' --login_with_auth "Bearer foo"
iam-admin-get-user-login-histories-v3 'YOJf5KwMZQjzvjSo' --login_with_auth "Bearer foo"
iam-admin-reset-password-v3 '{"languageTag": "zv6CTRDl0zp9CzHF", "newPassword": "winkBNi4gvqgl6TZ", "oldPassword": "9TGVPmv34h6T7Esu"}' 'fmfxKYB4LM6H6QXm' --login_with_auth "Bearer foo"
iam-admin-update-user-permission-v3 '{"Permissions": [{"Action": 32, "Resource": "hxXvCp9y7fLD2qfC", "SchedAction": 25, "SchedCron": "nlUnqxT1WsRNMZcA", "SchedRange": ["92hzC7MNa8vVe4MH", "X6AgMep90AyyUJyA", "K5PRMRMwdvl0hv6g"]}, {"Action": 61, "Resource": "2GxBW2tQF5tkTjgJ", "SchedAction": 0, "SchedCron": "4vtxk9hVKlG56Hlz", "SchedRange": ["Gr7XjdyRJunZPkp6", "ccIBnWyPw8mj7gyQ", "7XdIszGRj46COPip"]}, {"Action": 68, "Resource": "rzmmgqBPRmd6mO4o", "SchedAction": 71, "SchedCron": "JpZm9yEYWNGMy2pg", "SchedRange": ["SGSUOK68eqGJtWf1", "Ybgg8rdwY9bmrvHm", "O07KNqX9LM2IwEsd"]}]}' 'OGBXBwnzDX8v3xgC' --login_with_auth "Bearer foo"
iam-admin-add-user-permissions-v3 '{"Permissions": [{"Action": 66, "Resource": "LQdXfFBii2RAMEX5", "SchedAction": 90, "SchedCron": "VZ6LJAOddIL2l3hP", "SchedRange": ["jNDKv2LWfXqjr8fS", "79En3wYowBdkaZ3y", "6i38XQjLDRqkpiFK"]}, {"Action": 63, "Resource": "BtiQ272Uo9UBJWod", "SchedAction": 31, "SchedCron": "jAHyCK5tNanGBrkz", "SchedRange": ["Uvck3xTtmOFMebS4", "AdlNzwog2IhErkNh", "NcECWwchW6zL9Skb"]}, {"Action": 76, "Resource": "lnkflfn7pHY48F1d", "SchedAction": 22, "SchedCron": "WenURH48aJuALEcS", "SchedRange": ["qcE15u6D31DjOsrs", "3CUYATdqnQGbqiqO", "kNeATj7eGjodd7Cc"]}]}' 'JUrI6MAugK5kypNr' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-bulk-v3 '[{"Action": 31, "Resource": "sMFxKybPkbuS6x9c"}, {"Action": 78, "Resource": "4ft5jGcMICPUYnfG"}, {"Action": 12, "Resource": "jl9U4jReteIMgzIS"}]' 'omCsodJrhQW41q2O' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-v3 '37' 'byXmgCNiXH8uenbC' '5CphgMweexsIAP5v' --login_with_auth "Bearer foo"
iam-admin-get-user-platform-accounts-v3 'HLjBJ9iqMcBL4Bzh' --login_with_auth "Bearer foo"
iam-admin-get-list-justice-platform-accounts 'DUjhKPwbwcvQU5kG' --login_with_auth "Bearer foo"
iam-admin-get-user-mapping '8bXGFmPAnOkDiJq4' 'xQye7HqnVK3YVeOW' --login_with_auth "Bearer foo"
iam-admin-create-justice-user 's9mfVQh3jLBtn9px' 'pE7BYtzB0B4CxyQr' --login_with_auth "Bearer foo"
iam-admin-link-platform-account '{"platformId": "UpIFvORxTi79DpSj", "platformUserId": "b39ukcR6c2E2r3vk"}' '3IfAKEbqcNXSGCCv' --login_with_auth "Bearer foo"
iam-admin-platform-unlink-v3 '{"platformNamespace": "NowNmdpcJgF88ySN"}' 'q4Mj7mulP4tQ6R1O' 'qKVOTniBgLsNhdgQ' --login_with_auth "Bearer foo"
iam-admin-platform-link-v3 '0JWZjNRSzOTqcVNX' '3ahvxw9gwwhTnjN6' 'wKZGW4y3f0R9s2kn' --login_with_auth "Bearer foo"
iam-admin-get-third-party-platform-token-link-status-v3 'dhhZhwAiLsZs4pmL' 'DIQch4IjDq9aT3qZ' 'yI0rYsWucAkXsVJb' --login_with_auth "Bearer foo"
iam-admin-get-user-single-platform-account 'Xi7eRZa7WwIc895I' 'mqK6tVsaUq3stUh5' --login_with_auth "Bearer foo"
iam-admin-delete-user-roles-v3 '["J5Z9GiBiSAylX5cS", "0IeHpWCugmfOL0QQ", "pxsuD8PGqku59eFJ"]' 'rOXyDYz9vMUOPG0i' --login_with_auth "Bearer foo"
iam-admin-save-user-role-v3 '[{"namespace": "HDT8QbF7gHPTPQbv", "roleId": "Lt2NRqJGIKzLyH1y"}, {"namespace": "72L13Ornyx34luLd", "roleId": "vtsTKXMjiw6gYPvf"}, {"namespace": "n2Qt9iyq3Nyk8ncu", "roleId": "2Z3eDHH9WaVO4iKh"}]' 'DcJ7TCcNIsQ3Pupp' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v3 'UxDSK8aOTGMudcxl' 'CV4cNbJGQ57lPdin' --login_with_auth "Bearer foo"
iam-admin-delete-user-role-v3 'pjS2DRfGt9GlyZVQ' '4X67tPZSTpPq3xjr' --login_with_auth "Bearer foo"
iam-admin-update-user-status-v3 '{"enabled": true, "reason": "jgqaTHf1ANTJ9Yk9"}' '97XkGOdC6ItxDT8p' --login_with_auth "Bearer foo"
iam-admin-verify-user-without-verification-code-v3 '4n4XCFkD1AJLCwsz' --login_with_auth "Bearer foo"
iam-admin-update-client-secret-v3 '{"newSecret": "bZxuHSgDOK8bjoF7"}' 'bL2635KbtZTGJpqg' --login_with_auth "Bearer foo"
iam-admin-get-roles-v3 --login_with_auth "Bearer foo"
iam-admin-create-role-v3 '{"adminRole": false, "deletable": true, "isWildcard": true, "managers": [{"displayName": "zNXGTuQPIDpor7t1", "namespace": "aJLNNz6QIVC9Mfuc", "userId": "8VOsnmnlVljdWYmE"}, {"displayName": "Le74p38vumnxAnYB", "namespace": "TxaTIz0jcgDI8Pkz", "userId": "96vd80msqIm5bufn"}, {"displayName": "BqrpLeqhwVhjnnjK", "namespace": "MEmtbiWsAQHbMrKY", "userId": "i0Zxs5SWCqZXHLLa"}], "members": [{"displayName": "31oQf7BULnZDhutD", "namespace": "M6BqguqD5xxGxBWt", "userId": "nTKUe2znsqPzPkwC"}, {"displayName": "Bo2SwCUsTag4MLAo", "namespace": "3m61P2xaNfmn8Onb", "userId": "1a9gMz0F2UBRmMhA"}, {"displayName": "bUWmFhdYLWzMuv3z", "namespace": "kUY0n0BAZkwbYkBL", "userId": "yO6A0FqfhnaB3YxK"}], "permissions": [{"action": 80, "resource": "u2YVuOzhxHmnrrV9", "schedAction": 96, "schedCron": "GWrZ05sxe6A6RpmK", "schedRange": ["DebNkylbynkgT9va", "yLLiizac7Ge6zKJd", "lt7rjF5RaJwvkWVc"]}, {"action": 30, "resource": "rTb1XTB9YQzUJ9Xl", "schedAction": 88, "schedCron": "J8BzP6EUmUXGM5an", "schedRange": ["Iloyj9lhbvuQdW2j", "wKUckc794ryY91lX", "8DD4MYXlrJ81lHvv"]}, {"action": 35, "resource": "Jl7PeiMH8z8dVej8", "schedAction": 81, "schedCron": "sEp6KlqwW4djrexc", "schedRange": ["bHdEtoQvpV344Rct", "mTozCi8HeV6jbalH", "mqBBfi7sSF5BoGiT"]}], "roleName": "CVsXsygWbjE2opXt"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v3 'dsJQeJ1too0qvxph' --login_with_auth "Bearer foo"
iam-admin-delete-role-v3 'TLEEBGTtZyTjdKNK' --login_with_auth "Bearer foo"
iam-admin-update-role-v3 '{"deletable": false, "isWildcard": false, "roleName": "YazujsmSmylT1Ytx"}' 'Iq73aMb48jISd97K' --login_with_auth "Bearer foo"
iam-admin-get-role-admin-status-v3 'ORRhxSWLWLNfHRD3' --login_with_auth "Bearer foo"
iam-admin-update-admin-role-status-v3 'V15QaGGL46LuxJF3' --login_with_auth "Bearer foo"
iam-admin-remove-role-admin-v3 'sbeqWBdQuWfgBAKx' --login_with_auth "Bearer foo"
iam-admin-get-role-managers-v3 '27MSBqabUXOGkkoM' --login_with_auth "Bearer foo"
iam-admin-add-role-managers-v3 '{"managers": [{"displayName": "UZn1YXj5zFZeOCOR", "namespace": "9NvBQZSJPOIKrRBr", "userId": "YVzi9ui3lvozTt9T"}, {"displayName": "sH7A0TuU2aL4bPkk", "namespace": "11sys6GdkDcos5uV", "userId": "J0BJfZ0jvA54CSqZ"}, {"displayName": "FDsO1skRjOU1SMfQ", "namespace": "VQa6blj9Rdd85bdY", "userId": "UumPKVSZCg3XTc9v"}]}' 'Qe0dHJfF6KIuvnRC' --login_with_auth "Bearer foo"
iam-admin-remove-role-managers-v3 '{"managers": [{"displayName": "a9JktyBdxkZKrEWF", "namespace": "w9GYxjiiOQAD77ci", "userId": "0vfWVZoRRMPi57Hy"}, {"displayName": "KKz5nyI6ulKNKoXa", "namespace": "0dgx1JgjC56pda3Y", "userId": "htQxpCYME6x21pdX"}, {"displayName": "2QSPAd9sxoLnWGP1", "namespace": "PafIjLX8ce0KbNN7", "userId": "Ycl2JfmQplvGjVQ4"}]}' 'aebjfgGu472oWJlf' --login_with_auth "Bearer foo"
iam-admin-get-role-members-v3 'glLM4xjfkNL4lU6j' --login_with_auth "Bearer foo"
iam-admin-add-role-members-v3 '{"members": [{"displayName": "aGfsD1cfswmeFpvt", "namespace": "DtetoQVFL8LNW11v", "userId": "tpaTxi7k489jRCn4"}, {"displayName": "8bvkCPfKofwXOIZZ", "namespace": "QAJza84lKKmVOaTS", "userId": "6xBbNrSUAW2ak7IS"}, {"displayName": "DrBVg6NuDZvPb1ku", "namespace": "UfNfUDe4g7q6PHEa", "userId": "qbzHvDDl1jiLw3XM"}]}' 'GBA6JXDpA1tIC45C' --login_with_auth "Bearer foo"
iam-admin-remove-role-members-v3 '{"members": [{"displayName": "0oaGouFu4hXONgUw", "namespace": "JnUpryDeRcpUvlrw", "userId": "2MwC1uuokpaIjL0V"}, {"displayName": "xe5n9Lx3QcFo9gxO", "namespace": "gvDc7xMrRKvw8ISP", "userId": "2WKmCRRXBxlalCHt"}, {"displayName": "WlKxLpS8fLWoQ5nu", "namespace": "JhatQPxR7dvBVC5z", "userId": "gOKLTDmHe8c1eJ9s"}]}' 'de7Ryt4udIv22M18' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v3 '{"permissions": [{"action": 42, "resource": "dPWLPBYiR3UbJc1Z", "schedAction": 81, "schedCron": "apx7C477etqgfOJD", "schedRange": ["UT0uKAPrARya2IMl", "NiXpF4qvsUUpHqi3", "3TcBGkc0HjUcnkpU"]}, {"action": 72, "resource": "oVzl2kBuLFXIeCEK", "schedAction": 95, "schedCron": "4H34B6wVd8ipcKDw", "schedRange": ["QeUWtjCC2UH6jzMO", "3AfmOS5mQNyRPZFP", "NP56l1AT6OLKmZhC"]}, {"action": 97, "resource": "xxPPdPwOtEuWBSO2", "schedAction": 19, "schedCron": "gjse5kd6GEDo08yq", "schedRange": ["5E5HleLoog4me2NB", "Fp62xlXvVcJerTPW", "02PWsHiKYArAxnKB"]}]}' 'fBfDlrQQuAc10Djj' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v3 '{"permissions": [{"action": 45, "resource": "4ys7j6lxuU3u2HEG", "schedAction": 36, "schedCron": "qfKegvFTD1sPykS8", "schedRange": ["YLmwtYgWGcA0h4G1", "LZ1HaX5UBMbsF44V", "TsLDRzdq22cbnyK3"]}, {"action": 14, "resource": "TVtzYEHUodh3iUfB", "schedAction": 40, "schedCron": "Pwc259HF9ejHaILQ", "schedRange": ["ruAuYyJLYGqMv824", "ouSgkpK70uJmUL0u", "zElixc023dIvDiA0"]}, {"action": 40, "resource": "sj1AKGBjnHmaAu4Y", "schedAction": 75, "schedCron": "6tXFbnATCzUOIzVc", "schedRange": ["y9k3ie64Vnwa0ClG", "QJultJe32AiwKadE", "oIVmprwPsa9YD92C"]}]}' 'X0rITajpwHITGeHT' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v3 '["nqRbzBB9ZFgJbQ3F", "j1umx4ItzkMJ7cud", "f4r916GPrhn2etVI"]' 'QvRkQJAtDUH9tx60' --login_with_auth "Bearer foo"
iam-admin-delete-role-permission-v3 '53' '0ywmg1pWpWit1QC7' 'FKe0fnHUlmU1unGK' --login_with_auth "Bearer foo"
iam-admin-get-my-user-v3 --login_with_auth "Bearer foo"
iam-user-authentication-v3 'M0tgfeWy47bbwMI4' 'gGmvK9gW596FwBNr' 'FXt3TAuKBwBcD12a' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-authentication-with-platform-link-v3 'e6r3hHwya4NpdOzg' '3hr6ucHf7dbh2iKN' 'Ul0qJqzoKMRMG541' 'PAiNjULsx4SnKNXL' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v3 'MUaDSwwQlnNRZJHB' --login_with_auth "Bearer foo"
iam-request-one-time-linking-code-v3 'SB4fZWEFIZs28Ff1' --login_with_auth "Bearer foo"
iam-validate-one-time-linking-code-v3 'kZp1Zktx3N7WNMYI' --login_with_auth "Bearer foo"
iam-request-token-by-one-time-link-code-response-v3 'fcDKbLu8pnK34oA1' 'keYXJvtggDdXjbdj' --login_with_auth "Bearer foo"
iam-get-country-location-v3 --login_with_auth "Bearer foo"
iam-logout --login_with_auth "Bearer foo"
iam-request-game-token-code-response-v3 'MBahFZZGMTcqnWrI' --login_with_auth "Bearer foo"
iam-admin-retrieve-user-third-party-platform-token-v3 'prOv0BJ9Sgl7H1sd' 'H2RIJz1eI7Q5pu9P' --login_with_auth "Bearer foo"
iam-revoke-user-v3 'utLf6IrvZoBGQbO4' --login_with_auth "Bearer foo"
iam-authorize-v3 'S3rURGWUzPAE6SdV' 'code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-introspection-v3 'D5jftRl9rZmtQUvr' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-jwksv3 --login_with_auth "Bearer foo"
iam-send-mfa-authentication-code 'o8TWwXWsz9TVmdMK' 'EohKzuMYDUTLBeCi' 'dXjuGgx8ncXejmeZ' --login_with_auth "Bearer foo"
iam-change2fa-method 'tzT0qj0ltsqfiZrt' 'hVvyX0OCKDJE3RMU' --login_with_auth "Bearer foo"
iam-verify2fa-code 'ddwSSgxCu8zru1Dh' 'GAYOHR5BWa9VzIka' 'QEl1iUProNB6hI6I' 'true' --login_with_auth "Bearer foo"
iam-retrieve-user-third-party-platform-token-v3 'nDQY7kKU2u06Q4ve' 'ujxtyQENvJrBCqeg' --login_with_auth "Bearer foo"
iam-auth-code-request-v3 '67d4RWOqO4U0bitN' 'QLzwRoWnR0AbkCPY' --login_with_auth "Bearer foo"
iam-platform-token-grant-v3 '70FmvviVIBbcujF8' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-revocation-list-v3 --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-revocation-v3 'Vk5qb8NhWWwaxyMc' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-grant-v3 'authorization_code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-verify-token-v3 'CgOOPXM6XTUh2dJ9' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-platform-authentication-v3 '0yqHDNacl4F9G6Dl' '5TFwBY6HKXAblkT8' --login_with_auth "Bearer foo"
iam-public-get-input-validations --login_with_auth "Bearer foo"
iam-public-get-input-validation-by-field 'VGgSH8MGZGwiVj7e' --login_with_auth "Bearer foo"
iam-public-get-country-age-restriction-v3 'DTaka9ABfX1IByPE' --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-public-v3 --login_with_auth "Bearer foo"
iam-retrieve-active-oidc-clients-public-v3 'OuPhGspRi3bhPQvB' --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["BJI5JxytpcubN4AU", "UPFPscZsXeJOD4DM", "tqfIGiGJovgWSRxZ"]}' '8N4UQ2fg3V1o2x0h' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv3 'L5DuBDqMyIAzWze9' '4MEdJFAy2JTllJkR' --login_with_auth "Bearer foo"
iam-public-get-async-status 'GB8jqJEd6eqqsBVy' --login_with_auth "Bearer foo"
iam-public-search-user-v3 --login_with_auth "Bearer foo"
iam-public-create-user-v3 '{"PasswordMD5Sum": "ONV0JRtozI0jpliC", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "Q6WgJpGPigdc5VyC", "policyId": "4qvWjVac1cQvSxgT", "policyVersionId": "NIUzxDgBlIbuzm7D"}, {"isAccepted": true, "localizedPolicyVersionId": "trsf8eIFSovTGXaM", "policyId": "sq8ePN1oco2jx8Up", "policyVersionId": "e8SjMvpqM8puggOE"}, {"isAccepted": false, "localizedPolicyVersionId": "9iCqfW6rqGOQny4i", "policyId": "j4ysYPonb59gQffk", "policyVersionId": "NOmubxEJr2qEAuJb"}], "authType": "pZSrcbc4LWfKaY5c", "code": "1tP5TDuI5f6m4KC0", "country": "7CnsZe32hqEcB1Ex", "dateOfBirth": "YMBb3ckvoaJYdMqG", "displayName": "egcg3eRvBZXN3cjI", "emailAddress": "XmFWRJnj8xN7HDPT", "password": "UEDPN1Kb4UTPWDXT", "reachMinimumAge": false}' --login_with_auth "Bearer foo"
iam-check-user-availability 'E4mv12FNXypoOLl1' '3j84P0KqirJ4PkMF' --login_with_auth "Bearer foo"
iam-public-bulk-get-users '{"userIds": ["tsnFfz8Ew0X8fBuB", "SKLSQ4GvLtz50D3r", "pBfBovqLwXBuT30E"]}' --login_with_auth "Bearer foo"
iam-public-send-registration-code '{"emailAddress": "YeRj17xGhaBKoUfi", "languageTag": "HjGmCyPsKCJTv1ic"}' --login_with_auth "Bearer foo"
iam-public-verify-registration-code '{"code": "9gvagF2cSuztsJ5t", "emailAddress": "j64gV7nmDk29mcjS"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v3 '{"emailAddress": "uz9vbNStqPtQmQN6", "languageTag": "eKAGiZFCftT0RWEC"}' --login_with_auth "Bearer foo"
iam-get-admin-invitation-v3 'djWYrnulxcCKAru8' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v3 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "vkaEIIPoJT83zEGX", "policyId": "mVBZLyrH9J7Boysm", "policyVersionId": "aORLkP5hc2Fh04JT"}, {"isAccepted": true, "localizedPolicyVersionId": "c4VPDUR9ayazqXRq", "policyId": "egIUicYXXzxsBFrU", "policyVersionId": "s9BYp6TgCejBd5o7"}, {"isAccepted": false, "localizedPolicyVersionId": "KXOutlYBbLhL8KXx", "policyId": "25FZfQIodVBqQsBp", "policyVersionId": "CJBIXLGYcwWVRK6U"}], "authType": "EMAILPASSWD", "country": "k5ozrXA4HZHNyq9o", "dateOfBirth": "danhR1Zrm3thUvV8", "displayName": "7yfkycLSVdleSaAy", "password": "lsmLYe2phYOgT5kD", "reachMinimumAge": false}' 'yPl3dKF7NXEjrJMk' --login_with_auth "Bearer foo"
iam-update-user-v3 '{"avatarUrl": "i8jvc3P8Gwjg3IOH", "country": "0SDHgYKqxJiFJdrm", "dateOfBirth": "j5vhzgsJwex7wq8Z", "displayName": "PlXNaUNgdY2vfJuj", "languageTag": "e5cPnmGjTvYa5Pqx", "userName": "1K7qcAoijBPAp6EP"}' --login_with_auth "Bearer foo"
iam-public-partial-update-user-v3 '{"avatarUrl": "b988NzxrDKVpULjj", "country": "iw3NeVG4DJi9DaMr", "dateOfBirth": "c0WFgKjE945x2CPV", "displayName": "YYG9WvoGmAmvaVV5", "languageTag": "YfxnUNcwjr7gSGhn", "userName": "fuF4WZiQVICVpWd3"}' --login_with_auth "Bearer foo"
iam-public-send-verification-code-v3 '{"context": "UM08gMXhdf3juXW4", "emailAddress": "JprIb3CJCAtvSG8C", "languageTag": "fa9dzOJDGCTHIOFj"}' --login_with_auth "Bearer foo"
iam-public-user-verification-v3 '{"code": "eXbsSgR43kIDzxBw", "contactType": "qRJTzrHNZWUsq5lQ", "languageTag": "o2jy29EJigqYhyVh", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v3 '{"code": "13t3uTw6zQuoZcXQ", "country": "poTOxe8y1jorNsg9", "dateOfBirth": "ZKYCKoISyXtHzoWG", "displayName": "dYohxMp3uOQIybqW", "emailAddress": "fG9BJ6FVKlbYHtbP", "password": "taxvagSlpGgVTF6V", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-verify-headless-account-v3 '{"emailAddress": "ehKqwCh86XmRkCEc", "password": "fHDCdl59Wp9A3tXG"}' --login_with_auth "Bearer foo"
iam-public-update-password-v3 '{"languageTag": "ve6DdK6uvg8f2cIo", "newPassword": "Byk9fxtvsgeAxo57", "oldPassword": "nKAbZpsbJ4Iu5KJ0"}' --login_with_auth "Bearer foo"
iam-public-create-justice-user 'ynxGBlacDCdFe8AT' --login_with_auth "Bearer foo"
iam-public-platform-link-v3 'UqVxcSthrpnMUBsn' 'UfuQIcSbUt5UGkIn' --login_with_auth "Bearer foo"
iam-public-platform-unlink-v3 '{"platformNamespace": "FGpuUsdtq4dOwNES"}' 'zCEW9dUVhZjLftC3' --login_with_auth "Bearer foo"
iam-public-platform-unlink-all-v3 'sCS8CpLCqPD9CeDE' --login_with_auth "Bearer foo"
iam-public-force-platform-link-v3 'dCnnL6Kt1Bjj3b8Q' 'M8Rr45ULqXQgvwD3' --login_with_auth "Bearer foo"
iam-public-web-link-platform 'PsKDJiWxQBwaS7rD' --login_with_auth "Bearer foo"
iam-public-web-link-platform-establish 'Bf2S54phbdyGDt47' 'f9GWRlE9hqz6rjDN' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"code": "o4rhjxUdMM83Wekq", "emailAddress": "fWv04vvn9bk5qr8q", "newPassword": "s2mqtnGAqXUjNypF"}' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 '6MMqWpdEJsPoaIbY' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 'z8cK5jlpJdre5ur6' --login_with_auth "Bearer foo"
iam-public-get-user-information-v3 'yvWJDdvM7T7PX2va' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 'mIRZHzsIYOCUoiCX' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 'NjrdQL2jdx1eIba1' --login_with_auth "Bearer foo"
iam-public-list-justice-platform-accounts-v3 'sB0HsJ06DzfbzRYt' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "4OVUyumBeIqdQGZC", "platformUserId": "5kM03HHijsQRj7N8"}' 'IAjmsonjj0ZR50BQ' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["1U6aFD3O2kXQSc58", "zgZVl4gIF7v3qbZu", "9M3OxqVAT4H1lRZ9"], "requestId": "Z1JBrHRzEOtIxzPq"}' 'b6n73m0jiaDH86d9' --login_with_auth "Bearer foo"
iam-public-get-publisher-user-v3 'rsKgzCsMulpB8HZU' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 'tVVaJCiLgKOwrSfW' 'hT5B4WedopzwSluB' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 'tRFPKThyGnbjmPDK' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-public-get-link-headless-account-to-my-account-conflict-v3 'FS6u9FHuv1M3qfch' --login_with_auth "Bearer foo"
iam-link-headless-account-to-my-account-v3 '{"chosenNamespaces": ["4SqIV6LQPHlaeYl4", "csFq65cU66yJaj4o", "voKWE4EW0sw8v5pe"], "oneTimeLinkCode": "iuxoBJATauyD3XCX"}' --login_with_auth "Bearer foo"
iam-public-send-verification-link-v3 '{"languageTag": "VMiyEvMf9yilUEuj"}' --login_with_auth "Bearer foo"
iam-public-verify-user-by-link-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler 'k6oqYo1HQYTFzwdO' 'MdupwD4O3uNbcIDc' --login_with_auth "Bearer foo"
iam-login-sso-client 'IyvZbOy1T4hfwkuV' --login_with_auth "Bearer foo"
iam-logout-sso-client 'ykH4RpfmjIXFGZ5P' --login_with_auth "Bearer foo"
iam-request-game-token-response-v3 'KdbabJIkNnt9P1Tk' --login_with_auth "Bearer foo"
iam-platform-token-refresh-v3 'm08luh4dpPRMDbUX' 'BWTbpAogG2wlZkLh' --login_with_auth "Bearer foo"
iam-admin-get-devices-by-user-v4 --login_with_auth "Bearer foo"
iam-admin-get-banned-devices-v4 --login_with_auth "Bearer foo"
iam-admin-get-user-device-bans-v4 'uU5FI8NijFI0GKwJ' --login_with_auth "Bearer foo"
iam-admin-ban-device-v4 '{"comment": "3vfXlsAMy2Zp2UAG", "deviceId": "xHnmSxvkG9UR5q9n", "deviceType": "eoW6JBcGp9Rx2Rfc", "enabled": false, "endDate": "hXpmeeHdvphas9S7", "ext": {"ivHEoLbUMM47f1Ur": {}, "eUpxEkXIbE1ETzRJ": {}, "ZKMavu4Ul2IaieEb": {}}, "reason": "PSE7TGkeHsYsW9oG"}' --login_with_auth "Bearer foo"
iam-admin-get-device-ban-v4 'BN1pYMBwbPZTlMlU' --login_with_auth "Bearer foo"
iam-admin-update-device-ban-v4 '{"enabled": true}' '1hmWKSSrF35anDGv' --login_with_auth "Bearer foo"
iam-admin-generate-report-v4 'ur19V18oIrUKXttg' --login_with_auth "Bearer foo"
iam-admin-get-device-types-v4 --login_with_auth "Bearer foo"
iam-admin-get-device-bans-v4 'AI2QdWJFLmoPEgd8' --login_with_auth "Bearer foo"
iam-admin-decrypt-device-v4 'EMspOs8nkic9gj5v' --login_with_auth "Bearer foo"
iam-admin-unban-device-v4 'yUMAAmIHYbsxG5N0' --login_with_auth "Bearer foo"
iam-admin-get-users-by-device-v4 '66FXb88SbLOa21Di' --login_with_auth "Bearer foo"
iam-admin-create-test-users-v4 '{"count": 91}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["34TIedV3HyoX4VnO", "2LpBU08wfnlHBXFI", "qFUmgUSMM5au8GJT"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "0mkVPI6zUtf3QaJP", "country": "GrTNcXXTUIggoH89", "dateOfBirth": "QNmI17UDb19R6H7r", "displayName": "1ta3m7jK5pxe82pg", "languageTag": "FiAS6piIzmc8rKrK", "userName": "EPGSAcong6eNERUf"}' '8kjci1Ctccv9Gv4t' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "OcbnuCqf0lm6WBkI", "emailAddress": "zjoSV31tvmMB6jzr"}' 'pRGESmooHiCV4GUO' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 'nXpapXQGRakUbcG7' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 'PcR4eiU3Idi55jNr' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["GNT2VHTKuIT5FwwH", "j0Ur5F2PWGTTD81x", "hNP4t6kYBUjyXAn3"], "roleId": "bWQF6QcAiJpXIrgr"}' 'oixptZhckUTGkcBO' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["E4qMcH1Kyi8ZFvGc", "V8DY0XOkDstxZcY1", "HgAnZV4IOglVLqb9"], "roleId": "lGAJUg21Lt7JwgwM"}' 'USuC3Bajy3BcEMCt' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["Qs2FcEcvVAyId6Cp", "85HVDsZBQgOnXuXs", "GThYZrmm0wrFMnPp"], "roleId": "WgrQD4hEk0OLjYsn"}' 'ignE7KcMF7fuDbzR' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "Usp1tOibJY9aL9ie"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 '6vvMbiNURrlm88Ql' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 'Kyuoya4JgakZyUV7' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "nSFbuxd4KYZ0jk0U"}' 'ZdhtnKu9oTc8pVki' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 51, "resource": "AXEEsL5D0oiFchQn", "schedAction": 98, "schedCron": "Ts8WIObJBTsvsw76", "schedRange": ["uISRX0bKVoWtoUW1", "P7ocuBAldDSUS7Ha", "a6unq1yQOSRvyiLB"]}, {"action": 90, "resource": "ysyM4OfCzdQCXMAW", "schedAction": 28, "schedCron": "dw70KSahpYZdKZRy", "schedRange": ["R9AX7JjxvNZhM84D", "iZk6ySrB9SVFctW7", "YS0OkL78XeEAtALF"]}, {"action": 70, "resource": "lqN4LKkxJ5v3SBaf", "schedAction": 27, "schedCron": "BD6lKNb8RxvN2u5J", "schedRange": ["7baOeLH19fqBwNbN", "e1ffYRtIvQaKyevW", "YtZjK6J29v8MpBSp"]}]}' 'o3AKRmnJkzJHAckU' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 49, "resource": "Z7PyhqFJkDClOsKm", "schedAction": 12, "schedCron": "0tRVLMlHi8i9gOVq", "schedRange": ["ajUWrgEsWDtaKzn8", "dZwnnGeZsZVgbPzP", "FbrOMZMgWkFN7Tpk"]}, {"action": 47, "resource": "3GN2XTrFibRAhzzE", "schedAction": 99, "schedCron": "g9mndW2JKmQafUs2", "schedRange": ["bxYztOEyVbKIf1Zb", "zgUwd8DHoCQykmXH", "YmkRlg7gYs6unPYQ"]}, {"action": 44, "resource": "jNQN1di1ldhOh6Hv", "schedAction": 20, "schedCron": "StVBUpKgOssFkz0F", "schedRange": ["36piDYXeHZ7FHls3", "nyvconqbHQqKLQKe", "3xmj6s0GqsWncp5L"]}]}' 'rqbiKudv9z75SzoC' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["V8ZMi2o1nR482D6g", "NClk9c87hosaPFC5", "zBW3ZgVZCj9ObVGT"]' '0Scwl4kNmCi15XTJ' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'TgCNNH7RtG5Xmo9Q' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["0Wb07N17fkxZSc6V", "bE0AGcekjMNHuPXt", "z8tXxrmzafMUguyD"], "namespace": "oN91uc28HoSpGt1g", "userId": "0GGbT4Hf2PPKOldk"}' 'bgX9CWJKwXXSbv5e' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "g9q86IaDFjjx6uZe", "userId": "rWbtwTX9gNRByjbE"}' '8lOLAfTXKLzbrddq' --login_with_auth "Bearer foo"
iam-admin-invite-user-new-v4 '{"assignedNamespaces": ["cKLa7LevxNHOSEhQ", "RZIp693lRwtc43at", "CuCFxbfbz4aQERzi"], "emailAddresses": ["PL4dHhOqG5KDdUvk", "0LEi26Ls7mjRxNmv", "vNtjJNQepUTGhwlY"], "isAdmin": true, "namespace": "lPzlsCR5rVsyfcH7", "roleId": "WjP7HuGz3b5WAEvd"}' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "RF9bqMj4ro5B19VE", "country": "838c7OydVw0zCqoM", "dateOfBirth": "ZvpIOO97DmQ5ZOzx", "displayName": "6iCJTu60IifzMhkk", "languageTag": "5PxsjqbCKpMv2Yky", "userName": "9DYkD2sIllFtBtXJ"}' --login_with_auth "Bearer foo"
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
iam-admin-enable-my-email-v4 'KG3rqBmILhtWm8RQ' --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 'vRUbUDSiefGEdLuc' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "adM9y66Drf4SSGGt", "policyId": "3MiBKohow3kKoaP1", "policyVersionId": "K4CDuH1mMIfOCDyV"}, {"isAccepted": true, "localizedPolicyVersionId": "o6qHYIZWnXqQ1oHF", "policyId": "J9Q0vqsL9SomqWsG", "policyVersionId": "A76yxi0QzZWfmP2s"}, {"isAccepted": true, "localizedPolicyVersionId": "A8H9VeHv0L2Acm96", "policyId": "0EYQEuGJVl8xs1WI", "policyVersionId": "d9WlalqshF9Rh2o7"}], "authType": "EMAILPASSWD", "country": "CQGPCxwEdkyuT3Mg", "dateOfBirth": "zReRq0112ISArROI", "displayName": "odcmM6v2AEozWWaY", "emailAddress": "vBLE46bpuJip8Jyx", "password": "J39vrtuWWrqTZbSq", "passwordMD5Sum": "BSKp8AmgwhYzk33J", "username": "34fiTxK63OHpnUCG", "verified": true}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "WSgxpKWtdtdtVW9a", "policyId": "nENmxb9e7vXZV3ig", "policyVersionId": "8Jg5VByeI3ycMcYY"}, {"isAccepted": true, "localizedPolicyVersionId": "GlAyvIslt7N1qcxK", "policyId": "s4nlf1MfqUZXkjHv", "policyVersionId": "cUOTlxNf09pefgFI"}, {"isAccepted": false, "localizedPolicyVersionId": "elIJ8QgaLMqi836U", "policyId": "La7cfZl4VuY6rsZy", "policyVersionId": "o6CBRRnoOikIxXKK"}], "authType": "EMAILPASSWD", "code": "R6kPmswm5TCAU1cK", "country": "ApdJDnE73GLmSZns", "dateOfBirth": "5owBhoUg4LsGP6KL", "displayName": "PXkvUv2XiXaBzsma", "emailAddress": "xjTZPlLitytGka7K", "password": "v5TacQKF4OlRGdmX", "passwordMD5Sum": "xETLEQrr3KCAV9al", "reachMinimumAge": true, "username": "OLGCcg16DqwdQPQ9"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "kSSV8e1MgTTLS2Fg", "policyId": "arY903INGIyEfRBE", "policyVersionId": "j7qms9AGQExPhgr9"}, {"isAccepted": false, "localizedPolicyVersionId": "NisecYbcOpR45VDl", "policyId": "vSc0Mr7ImwCwGqOf", "policyVersionId": "0bNs97KvKyj3MqS7"}, {"isAccepted": true, "localizedPolicyVersionId": "RTrDCjhnKvsHezWT", "policyId": "qgYPixtHk6lWq6tE", "policyVersionId": "eUmU96FLEak0mJqj"}], "authType": "EMAILPASSWD", "country": "YldcTpdeCD9XPRi4", "dateOfBirth": "bAQL7VE2wL8Y4JFV", "displayName": "UdzA8bvXlDhG7Bro", "password": "rbKIKuOXJPm5ztrr", "reachMinimumAge": false, "username": "CDA8Ij5bGKSuopWQ"}' 'baCvdPSq8Z27GpvH' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "CDx55JZ5z6gujpFz", "country": "lPspQD9IRIpDDubn", "dateOfBirth": "tPCFxfeoW2NdSWzO", "displayName": "XjO1NQUqWHBW78XR", "languageTag": "EZCiTNAxq26gZrPq", "userName": "CsSDspvgM16sZ6rj"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "nkH4ExObppC6CMYD", "emailAddress": "m5ge659UDEOF6gp5"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "UfmjtiVbqJnZcrqr", "country": "Pye7fCwi7Il2wIFl", "dateOfBirth": "Hm9N6owMHMtJy1Oq", "displayName": "n59tEGm9NYeUT5P0", "emailAddress": "nx8TqSZdZ5C8mFI9", "password": "TnvzEqBNMF9CZvPx", "reachMinimumAge": false, "username": "5zbreMc9fBoU3RHN", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"emailAddress": "sKLxjt5srPFxBgpF", "password": "tDBmTLH9kP9U53z6", "username": "joBAhAlJGI2YYb6a"}' --login_with_auth "Bearer foo"
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
iam-public-enable-my-email-v4 'jBjgq6eY4PBNHKPx' --login_with_auth "Bearer foo"
iam-public-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-public-make-factor-my-default-v4 '62tHxDb06ZFy3ugl' --login_with_auth "Bearer foo"
iam-public-invite-user-v4 '{"emailAddress": "Sp2UxvF2uLXWilRD", "namespace": "7HD6LCgdFxRGj00R", "namespaceDisplayName": "T6LvcnGMJbJIYLss"}' --login_with_auth "Bearer foo"
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
echo "1..353"

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
    '[{"field": "Mvy9gkfTMRrXVRcA", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["9r8eToFmkHJ6BPOK", "FLxIwKssw647YwDu", "dnGRufOUGfMjTU22"], "preferRegex": false, "regex": "l07jPlcYaqYM7YfB"}, "blockedWord": ["mhjI9Y28qVceS9UX", "48dKPCFUIeyYEymN", "XzNX6TGh4UdEweeB"], "description": [{"language": "sJEvBbAvCmlh6Z1o", "message": ["z9BaixUUvmzbajE2", "gjooiDnc1NUb51lE", "gUwQ9tkWaMOH47CA"]}, {"language": "T7cBP0918JaEBQBP", "message": ["766LUnBBR84iAO7s", "BQt6YJ2tWwF7RnP1", "oK3c4RVfjB0zi3Xr"]}, {"language": "YZUiN24ol1qqbalg", "message": ["izL97ycJV5YqE2my", "Qzl7X9fHr6WvBxmB", "vNj3ktaDf9B22HGg"]}], "isCustomRegex": true, "letterCase": "ujxbCu1HFaj6Vxs3", "maxLength": 67, "maxRepeatingAlphaNum": 51, "maxRepeatingSpecialCharacter": 42, "minCharType": 76, "minLength": 54, "regex": "PnnGsnfmBerp84qj", "specialCharacterLocation": "wzWpCF1vyamjsEzw", "specialCharacters": ["tLPxK1os4qR8LaQz", "Eb39sZTdFfC8x5aH", "LsXHlm1RJTTy9JrN"]}}, {"field": "z1K5M1qgFddYvifG", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["cbuCRM69XKkLwioR", "aKnWhlh80BhYe2fJ", "DS6T75Q4ulonMFjm"], "preferRegex": true, "regex": "SesE5p0DwUj2HKUv"}, "blockedWord": ["PYUcQBxMSdOOsn2N", "d8Jpa19GJDK46Eeh", "x7xasqMY9aulsL6N"], "description": [{"language": "OV5agpS6A5mkufBp", "message": ["WVxIK9D2bTcgaKoc", "caSwWcZmzCWGI1cI", "QcPWAShIhieSKUf3"]}, {"language": "zKbyQk2vQTYX1xst", "message": ["h28NZZgsXycuQNGI", "DeHlf6IcX1K9JrK6", "Or2xx7rLwrPoWiyw"]}, {"language": "nxuDLLuIaSxoloIH", "message": ["1gBCWVFrvls0Zwos", "KhDlLfTKxpVOXvGS", "rdkqddI3ezqu6FB0"]}], "isCustomRegex": true, "letterCase": "h4tJdoGcwMBmegqV", "maxLength": 96, "maxRepeatingAlphaNum": 61, "maxRepeatingSpecialCharacter": 0, "minCharType": 23, "minLength": 100, "regex": "VKBsLZiBRXszE7CL", "specialCharacterLocation": "1cQCSoqHvH7g63cO", "specialCharacters": ["x6yrIw37pKOLrF5i", "3gr3Cc4M2O7NrTQO", "7KLdZDGwqx7T3l1u"]}}, {"field": "t2oyolliYsTJUmps", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["Uml3KuoMKh7tprna", "cA34xmIOjFLgKR4L", "jEWhOScvtQ92iD02"], "preferRegex": false, "regex": "MvEUNfoL7JCcMo7G"}, "blockedWord": ["xxXdbYCRexPekTsQ", "xMTfaSot7aohFYy4", "VxwHIJ9gzxqAw4vB"], "description": [{"language": "GQAeh0VTiTP4PSrX", "message": ["US6jYI9lsQFD43Df", "5qUZOFzpFd6b5Jc5", "TETHcup8GG0VCMTF"]}, {"language": "J6svTyo9RHget5hz", "message": ["B52BDFopxUwkMuSq", "QnKzDgDAtqE3kuyb", "wTQFYEJjIYwqfSRy"]}, {"language": "8GgVk77fd1GS5Yky", "message": ["hAiAItnWUmD225fp", "1egsx3ErheNwqd5p", "riclNNqLyrlzrJ4Q"]}], "isCustomRegex": false, "letterCase": "bfnAdtkujxHff7n1", "maxLength": 51, "maxRepeatingAlphaNum": 27, "maxRepeatingSpecialCharacter": 1, "minCharType": 4, "minLength": 80, "regex": "JJKpqmgvUTr8XAtp", "specialCharacterLocation": "OqUQxzqJZiWi3KQf", "specialCharacters": ["fT5Tn61A1xW6okIq", "md87ir9op4YfGTno", "5oHzqY3DgykA8zBJ"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    'X0rkOHUkY5aSlqhY' \
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
    '{"ageRestriction": 29, "enable": false}' \
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
    '{"ageRestriction": 92}' \
    'tmGsgXNXbpqxh76A' \
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
    '{"ban": "f5JSwjw2fE2g6jXV", "comment": "7oai2oDm9FaP0HJ9", "endDate": "8tE4UyoQg0b0sGOk", "reason": "zxVt15LKmkQ7YBhs", "skipNotif": true, "userIds": ["SJ1zQKxVmRTawjiZ", "PMoZZcyGEHxAKDQh", "er3usApPdJPn9eId"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "hIBvTTupABJ4RwH3", "userId": "EdKmYtbqQHNfIZwr"}, {"banId": "Mxf3EnzZVnkLT0Lb", "userId": "85nmpdN26BY5YI0j"}, {"banId": "eO2zMDSy4kyqyKgr", "userId": "tEPdXXlt8geCdiXu"}]}' \
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
    '{"audiences": ["3iNvn7vLZ7h6alhJ", "NGZF07lsPP5OfHbX", "zWnVO2U4uyzZo1rj"], "baseUri": "0ZrLQjk4VoYfIkst", "clientId": "h24cZBpdDFfvzeU5", "clientName": "iqhx6zv7EURTNIoG", "clientPermissions": [{"action": 51, "resource": "DBdoKH6sREmmfwUZ", "schedAction": 76, "schedCron": "CVJ0V8obTlGVThz4", "schedRange": ["bm41oIcV33yjPxib", "DjfF7JkjCVpZKMxk", "FkBtXMU6KRIm5xBo"]}, {"action": 71, "resource": "EgBFzG8tlkxWKCU1", "schedAction": 82, "schedCron": "ktjQw2yXzaQWaF2P", "schedRange": ["qUfbpMpRl6xRyV19", "cborUHeCpqnZ5NW6", "23WWn2ZJY3QvRa7C"]}, {"action": 61, "resource": "CPn1FylWdaNV1VaZ", "schedAction": 93, "schedCron": "Qpbcv3IwmL7a1K3z", "schedRange": ["IUYJmdF1YtWNSQlc", "MzxfppNCrscDPbkl", "THcmgXsrVj3Mjml6"]}], "clientPlatform": "BpCODWGOLMmCZUee", "deletable": false, "description": "XqRwVjc3W2ANmE3V", "namespace": "VsQ1fm9EUdiaRjuL", "oauthAccessTokenExpiration": 38, "oauthAccessTokenExpirationTimeUnit": "rRtaeWKMC8wsOByQ", "oauthClientType": "AMAgqFEzEt8umj5X", "oauthRefreshTokenExpiration": 15, "oauthRefreshTokenExpirationTimeUnit": "vIddlxnA1VynioJc", "parentNamespace": "APwVHUGcs1ACMvoY", "redirectUri": "4jWH9dFmOHW0j9su", "scopes": ["ukPE4JwQONQ2vCbM", "n0Oia336uiiMTAdu", "ctvUfVwLahtRedh1"], "secret": "SiZlOpIQ8GL7jBF1", "twoFactorEnabled": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    '5OexAPzCG6ZKQClG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'c1636nbfM3J9G40Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["62bCo941ALznQuHV", "skfCjUK8GeX4Q0B2", "Cj0oOmBmXu1KiTTi"], "baseUri": "z7yrIvQj2isN7bRw", "clientName": "cr16lW5YwgZpjlMM", "clientPermissions": [{"action": 39, "resource": "nGptHUplxzaDa9PD", "schedAction": 47, "schedCron": "2oac8QTNEuBbeuQq", "schedRange": ["m9wM7mgTtUdPVcQi", "jMBhs0kDP6d3nuUZ", "41mSeS9SnGqhJOvy"]}, {"action": 22, "resource": "knHPKrZ7TiNBE0HR", "schedAction": 38, "schedCron": "VHLMvrCsH3RYxH2U", "schedRange": ["p9VthPjFrK7Hip0e", "ONFDgUPShG8wwFKY", "9AMpcwJd4SrigIxA"]}, {"action": 14, "resource": "95708zaP0wpZgQEv", "schedAction": 64, "schedCron": "FrQB1yUonirH4URx", "schedRange": ["3NkKQBYrlUaMiFEW", "UT8cAFO5zEw8GENE", "JYPKxxOw7xNQ98IE"]}], "clientPlatform": "bc9YITN98j4P2AGe", "deletable": false, "description": "sakylHikKkpOjqwg", "namespace": "KvfXXs8pDqm31AZS", "oauthAccessTokenExpiration": 89, "oauthAccessTokenExpirationTimeUnit": "hDs45siG30Lv9iGa", "oauthRefreshTokenExpiration": 26, "oauthRefreshTokenExpirationTimeUnit": "eYlSU3vYcHZZjFeg", "redirectUri": "VnZOn0tk4IATSIef", "scopes": ["cqNEn4IZ0Dv6b8Wt", "aMVvLbG04KKnh3jv", "W0Qp3kTyL4CsLwiW"], "twoFactorEnabled": false}' \
    'Mcpxn4B6XoTNMuqZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 93, "resource": "sGdrpNELM8Lfkut0"}, {"action": 46, "resource": "SHwQuiH3Ozu4G6bX"}, {"action": 48, "resource": "jpszuVk6iPdJ2boQ"}]}' \
    'qCCyJfThvCJieqRS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 66, "resource": "wZkwEeuzBBRSknxy"}, {"action": 100, "resource": "4GkHG5OIVuGv47XJ"}, {"action": 32, "resource": "ezTrsDZNYUV48Oh6"}]}' \
    'I45X7HvUtPYONZdF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '21' \
    'fk8dwKNPUOHNZxML' \
    '3yoBM9qxd6PWz7sV' \
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
    'nMxge2inL8fBFP1A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "BaIKrEt8d3o7cTS9", "AWSCognitoRegion": "OIIMErnNTLXHrsOF", "AWSCognitoUserPool": "sbhRow4iaYKy0Ijs", "AllowedClients": ["DgbJ37DN2lDvdh7o", "kHl1wMht2Izq7TCU", "JhDsDefAS09VyQB1"], "AppId": "vR1mx6K17GL1CrO4", "AuthorizationEndpoint": "ZuoGZSxTzm8oMSPI", "ClientId": "HPtqzIWIzg8pbjnt", "Environment": "1iBV8DpbjGts4UZD", "FederationMetadataURL": "TfhAyZKhqilty9NV", "GenericOauthFlow": false, "IsActive": false, "Issuer": "gxUmnfdOAmu1dX1N", "JWKSEndpoint": "qD20RUvvYeJZw6QZ", "KeyID": "FN7wFCnqpvNesGiV", "NetflixCertificates": {"encryptedPrivateKey": "nt9p2to7Yja1soDE", "encryptedPrivateKeyName": "1K0SvGrMYwPmPXC2", "publicCertificate": "LfL2m5rP2A20t6fo", "publicCertificateName": "PPH94SUinY5diUlq", "rootCertificate": "gvY7dPPyahppgxJh", "rootCertificateName": "k4EdTZ000rS92594"}, "OrganizationId": "HLvWFsXHtMP0k9L5", "PlatformName": "dREQbCqfh0gpABFB", "RedirectUri": "ER6WNcDOsRzBkf9A", "RegisteredDomains": [{"affectedClientIDs": ["6HjCnFRdSihcvszz", "QLZBktk0siMup01k", "yaFwwD7wecuQb4GN"], "domain": "QHVZMKGBnzh4suaG", "namespaces": ["IzttTncVBf5g3oeu", "HiNyLkfPQPmjUkvS", "s5YmIejozmG5HlrI"], "roleId": "fMAvvpkAHRJHZyfr"}, {"affectedClientIDs": ["XZmiJX4CjKCeIRIr", "997KKpJXTLbYWpqe", "Xjaf1f5fjNMZjKJ0"], "domain": "5puX3197WrMnJtov", "namespaces": ["SMFw8X4zxbdfXgun", "t1oMNZ68eovHSH3x", "V3URIRVDYBd6hMB0"], "roleId": "l7sg7IfMH5Tu1ky1"}, {"affectedClientIDs": ["ZYvyeHmfoFkUDP86", "4shbnQ3bVvuvpsDJ", "XPCWkX4Kpi8CJ88a"], "domain": "MPGFFAQZbfbmVTEb", "namespaces": ["iRq5Juikmpat75rV", "bN9ZBtzJ33tCwv8H", "1f451FVZ630HNBYZ"], "roleId": "Srz7pMjESLLMPKDX"}], "Secret": "Lki6Oz5Bygt8Q0Rj", "TeamID": "Sf1srB7hGwGbUmQm", "TokenAuthenticationType": "JHNffZENs9X0hFMd", "TokenClaimsMapping": {"zryvhc1YjHmmulSB": "IElc2CdRvBb0aGnM", "t625bWHb5sbX6asr": "jV7XJUOtHlzXNHEP", "pzlMlx7b2H2THLwZ": "GikW7TFA9gE6SrYK"}, "TokenEndpoint": "q6lcVOhPJIcEHbiK", "UserInfoEndpoint": "HW7flVolAWEMmQSP", "UserInfoHTTPMethod": "DTRqjlvwnnCA5tfK", "scopes": ["5ushaKTPVjyOUpR3", "uUdgNlyU4IJnqtrj", "COsE8VjvzhJwNX4b"]}' \
    'hqCjlwrmsSRV86ii' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    'c1FIMyF7CcNu2DYn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "6E9Gk51kOTJZluTe", "AWSCognitoRegion": "kDMCGUJvERxNg8dj", "AWSCognitoUserPool": "Sb4Vt2vKQ5vlCdI5", "AllowedClients": ["19Pf2iogwxM5DZM0", "dgozmco41750xdYQ", "g34WUV0WpmsQnp1n"], "AppId": "4YGumTKOlDOy5vhS", "AuthorizationEndpoint": "kxERZ2AQ1jvXYBar", "ClientId": "5RMmmGdWl0wpj5tV", "Environment": "fKU3D8WVPh0Z7YiG", "FederationMetadataURL": "E2cyzTMBY7Xd0OoE", "GenericOauthFlow": false, "IsActive": false, "Issuer": "w7uepmahXojVZYz2", "JWKSEndpoint": "zMU9jLzNV3GaG43R", "KeyID": "6nlRPrEAYqRBeSc5", "NetflixCertificates": {"encryptedPrivateKey": "uShoj3dGHMeoi5DB", "encryptedPrivateKeyName": "OsQ0Gax0iX05IT9A", "publicCertificate": "gsjl5NmnSHhxNmCe", "publicCertificateName": "4txY0MsPc9EMgf9J", "rootCertificate": "CJiEvhL8ZfwCVJW9", "rootCertificateName": "yspUOyHC9eKeXzrv"}, "OrganizationId": "zBllwzyC1aTWEmPg", "PlatformName": "oy4TkpEw4Zeid4mR", "RedirectUri": "oFNxv10ckMQVjKk3", "RegisteredDomains": [{"affectedClientIDs": ["bWJ0ZuYSe3sI0x2h", "c8vaN1Off5gRZZMW", "3huAIzBPWBYKAEFT"], "domain": "dlKNh6GTzKjsCqxx", "namespaces": ["24QM35bSkFrvGciN", "Hb7OY5YIpOLJW52u", "z3c8pz63M0g4xXT5"], "roleId": "Ts4e0uR47OzUGHeB"}, {"affectedClientIDs": ["KtpvyRNgjZkdDppv", "EJiUiDGXgh8BKcLq", "tRZ93LuR8OEyICvw"], "domain": "gwBFehwtdJLdn3R2", "namespaces": ["wo8beVQvgeP9qOHa", "LwYnXxrz7sLmP70L", "xN0f3JA27Qz5SjzQ"], "roleId": "fOLYu9O46OOzz9p5"}, {"affectedClientIDs": ["7qSpHerzO87cg7Tq", "tMiQgi7Aj28qCRbw", "wZc4ZS1NMkrnHs1I"], "domain": "yhwqk140MolIrnlk", "namespaces": ["RVbcX435TDYpkk2G", "za6DrSycophHw3Eo", "EEClTO9SDKnMlnKW"], "roleId": "9jiNMu9QVrMeD4bD"}], "Secret": "8gISE34yIAZQeigi", "TeamID": "A3wBrmBYIlZeheP7", "TokenAuthenticationType": "2AB8EO3YrlyrWowU", "TokenClaimsMapping": {"pUDVLlTtuJJsHZVs": "G6izJZruOJvSRFLD", "Sdj8elbtHvDU91Dm": "HzwiqVPCJ5j18Ou3", "aY8nceFU5GKmcEKp": "8AQwqgJs6O0Qj0cc"}, "TokenEndpoint": "Mkdz6zPz3BVHAqp4", "UserInfoEndpoint": "O9XSjap24esyjh6W", "UserInfoHTTPMethod": "c3migf2n6iQyr5cb", "scopes": ["5YL6fwBiaVPmmn0T", "5uzlmi2NY26xrkPP", "dg3pXjmtpNfCrIj9"]}' \
    'ntYo3dupUHNu8abr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["VVOKxr9Pa315FKDj", "G2ApSV94Jy6yCSXB", "qJqjAbVwSaoj1ugj"], "assignedNamespaces": ["r8mPkr3tZ506ERSV", "y5M3rrkxu0U9h9gC", "NVZxHGxhZqNXJ6JX"], "domain": "Sh0Z3SWISs1dYrJK", "roleId": "mx1BT6iLFQejNZJN"}' \
    'F2hm0TqBQprHn3wh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "PKU5abnqw8fFa30p"}' \
    'Vbhr1BHh1arZAyuL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    'cZoEkPpqKhP2jWnR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "Tglw0gdWoE4esuiD", "apiKey": "rquccz4J6fFQezJ5", "appId": "E3iYHIknvPcJkjRe", "federationMetadataUrl": "vVYfiExpAgoK9YDq", "isActive": true, "redirectUri": "x3dkbJFDEBEOOvJ5", "secret": "BKeipIldsgB4hOxb", "ssoUrl": "88WgKSLIpneDQCfw"}' \
    'ucHRL3o2NstrL6Ts' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'JeRcE7GuwKn63KID' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "TkUCqbbHGJGOTvKK", "apiKey": "RTHDntaFiufH2YR6", "appId": "QU7fj6w17arNs12h", "federationMetadataUrl": "OoLVM7UFnuJDzeEk", "isActive": true, "redirectUri": "6xtyJtnbTDXu7Fbl", "secret": "eSP5PcdOuq0m0rva", "ssoUrl": "kR8rcwojLRjhcaJ5"}' \
    '6nGlYZ2tod2BGBXj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'NyRCtPOr1FU3QZy3' \
    'gdDms3kb1htW0UGJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'pwQZlXuzu3m9u67J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'GetAdminUsersByRoleIdV3' test.out

#- 143 AdminGetUserByEmailAddressV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-email-address-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'AdminGetUserByEmailAddressV3' test.out

#- 144 AdminGetBulkUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-bulk-user-ban-v3' \
    '{"bulkUserId": ["jCDwg186hGWKfO9M", "noT3t99HmcxzjDhT", "rcBKtU956hOg8ouk"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'AdminGetBulkUserBanV3' test.out

#- 145 AdminListUserIDByUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-user-i-ds-v3' \
    '{"userIds": ["DVdweG0sFHxTHa2k", "60SzCqUgq1gLbcIM", "evTmC631p7q794bu"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'AdminListUserIDByUserIDsV3' test.out

#- 146 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["49lINFTtERAXT2h3", "hcQ2wV3ZbBTnNQnV", "UhA5WnzVZdj8tsyz"], "isAdmin": true, "namespace": "4i3eRyIECEDa1I4l", "roles": ["wXqwPfq3VzHQjtol", "x64w1gyvjacKtGqx", "MnoAXRlcq0mYWKQY"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'AdminInviteUserV3' test.out

#- 147 AdminQueryThirdPlatformLinkHistoryV3
$PYTHON -m $MODULE 'iam-admin-query-third-platform-link-history-v3' \
    'lqMmu2pvF6rP03bQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 148 AdminListUsersV3
$PYTHON -m $MODULE 'iam-admin-list-users-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'AdminListUsersV3' test.out

#- 149 AdminSearchUserV3
$PYTHON -m $MODULE 'iam-admin-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'AdminSearchUserV3' test.out

#- 150 AdminGetBulkUserByEmailAddressV3
$PYTHON -m $MODULE 'iam-admin-get-bulk-user-by-email-address-v3' \
    '{"listEmailAddressRequest": ["aq1cT88H6RCW8gJm", "GzDlqxtLsR2AGOiP", "hNt2IdH8aYYUT6mm"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AdminGetBulkUserByEmailAddressV3' test.out

#- 151 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'a833TDzk66ix88sA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'AdminGetUserByUserIdV3' test.out

#- 152 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "UrXr7MXxCvyy7cax", "country": "z4MQrODLNlxiEjQB", "dateOfBirth": "CZx9DJ4V97SJLlrw", "displayName": "XmIGamRCARuFLx4r", "languageTag": "V4CXVMrDYKe2eTf1", "userName": "axo16GqT2vSLLiMv"}' \
    'cu39YZJypWzpNXgn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'AdminUpdateUserV3' test.out

#- 153 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'oKIz8O8NglJtZTh2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AdminGetUserBanV3' test.out

#- 154 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "80vflFMxIhlIT8Ag", "comment": "yZJ16MMd2bzOrTn2", "endDate": "huwPgyUzBUWiKoNG", "reason": "tvyk5xEfrJDxKsw5", "skipNotif": false}' \
    'p8a1VqxXnRhDd9TG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'AdminBanUserV3' test.out

#- 155 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": false, "skipNotif": false}' \
    'O6aIYqftw1SrM2nh' \
    'SEanfUYrMU6A43UK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminUpdateUserBanV3' test.out

#- 156 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "GpvC1cr5T1PSXhdu", "emailAddress": "TWchzXDv3TAtBjP4", "languageTag": "HSuiYCbG0UyYUJmN"}' \
    'L8p6AbdtU0CDrlQp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'AdminSendVerificationCodeV3' test.out

#- 157 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "KB8qoel2QK3aSOYd", "ContactType": "mMDikc3Fjm9HoQDe", "LanguageTag": "mtiQvURYZCeF30RT", "validateOnly": false}' \
    'rBgM8o7lxXq7TkdM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'AdminVerifyAccountV3' test.out

#- 158 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    '7FVDCBcvVegrZddP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'GetUserVerificationCode' test.out

#- 159 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    '8lLQo6tHj4z4cAM4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminGetUserDeletionStatusV3' test.out

#- 160 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"deletionDate": 77, "enabled": true}' \
    'JfWNZIxAgBpeubpr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserDeletionStatusV3' test.out

#- 161 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "KX68jTyRd3LrR1x6", "country": "U1v6zSLjm9zmzUW0", "dateOfBirth": "vPj90jmLTt5YQGaw", "displayName": "comPoiYoQ1f1AYq3", "emailAddress": "06Pysv4VPaZWolXy", "password": "pwucUqqqff2iWi4y", "validateOnly": false}' \
    '3uqNcig6YcDA8Z3g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminUpgradeHeadlessAccountV3' test.out

#- 162 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    '62oGYwkrjLI4EHJE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminDeleteUserInformationV3' test.out

#- 163 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'EWgki9fbdvUMDZeO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AdminGetUserLoginHistoriesV3' test.out

#- 164 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "4U55wdCpVpnENiTc", "newPassword": "9NESV22eRBElD4K2", "oldPassword": "Cy1tJcPAEkCeV29Q"}' \
    'sQk100eu5UcxuXXp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminResetPasswordV3' test.out

#- 165 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 41, "Resource": "zEpw1zN0mOYgGhHM", "SchedAction": 52, "SchedCron": "bopbdJeVCiKs2vLy", "SchedRange": ["H9kcSBdk7MwQzn28", "Le5neohqhCzroAzW", "QDve0Z2G2N09VIbb"]}, {"Action": 38, "Resource": "ZYofPGUbSaA00nKx", "SchedAction": 87, "SchedCron": "Gb0ceCbphW4YMhJ0", "SchedRange": ["S50bez9ZLHW882ri", "iPfRQ3rJ0f5lwXvR", "NDBnmL1KQn77hiP1"]}, {"Action": 24, "Resource": "ugVWXz8dv7BiEUqn", "SchedAction": 51, "SchedCron": "kD6vy60uRMT1Xw9K", "SchedRange": ["9Yb68a8ygYx2Tqkh", "lqMnE9Wj90EQzOid", "rWnLrXqImgDf3GaJ"]}]}' \
    'sdCZND0wgYOilX1e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateUserPermissionV3' test.out

#- 166 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 69, "Resource": "825iasunESjcgr2d", "SchedAction": 36, "SchedCron": "RgBUwBL28BqM8Uzv", "SchedRange": ["KqeoTiNKGRUMrimG", "Az6OhmHOpCdr3WzD", "m3hJdd6uaO9TiTPn"]}, {"Action": 71, "Resource": "wijYxpGhsFArq6lo", "SchedAction": 24, "SchedCron": "KYlNYYlHPwKDpJmk", "SchedRange": ["eoAkp3Z4pgyJYwcl", "b4gd4QgQut2hiPuD", "dOPHcN9drwqytieX"]}, {"Action": 32, "Resource": "VOYQCWMktmiKd9vL", "SchedAction": 85, "SchedCron": "E2bTXJxCCFqPNDqW", "SchedRange": ["rpkWnnova15WVuE5", "cYVP9tQSa27BnPyq", "3I1BLtGEZDRNkk4D"]}]}' \
    'JUofJXK8RGS0zCYR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminAddUserPermissionsV3' test.out

#- 167 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 98, "Resource": "PJjMp0TKKUBfPNI9"}, {"Action": 12, "Resource": "XiiTObNdqkWa13g3"}, {"Action": 31, "Resource": "xmh5QWxuQuI7gdDT"}]' \
    'Db3WdnOpzTrRzCCa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserPermissionBulkV3' test.out

#- 168 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '10' \
    'EHcI95GGdJvucDbs' \
    '6UdccuM2ykRj3Wny' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminDeleteUserPermissionV3' test.out

#- 169 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'AaUaQBKFedL2uduX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminGetUserPlatformAccountsV3' test.out

#- 170 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'vZUbQQ13FhD3NExU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminGetListJusticePlatformAccounts' test.out

#- 171 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    'FipJsUiDawAjgHFQ' \
    'k0VzWRNFNiUn2yXM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminGetUserMapping' test.out

#- 172 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    'SCcHADYpS861c0CJ' \
    '7LzpFvOSF6xKA6yr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminCreateJusticeUser' test.out

#- 173 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "nvXY5dDwneac75C6", "platformUserId": "S2eHsH4Y84hL75Qb"}' \
    'oMHCtzEF9FSeg6WY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminLinkPlatformAccount' test.out

#- 174 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "gtfuqJHrs4e3RnWR"}' \
    '30MdBZezfwc3H0qS' \
    'bMq4GLj8aGsH0qE5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminPlatformUnlinkV3' test.out

#- 175 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'p601ak59yFSfdZIv' \
    '8oYWPUS4Zu0SbTt6' \
    'M2XizikCh6q0yq2W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminPlatformLinkV3' test.out

#- 176 AdminGetThirdPartyPlatformTokenLinkStatusV3
$PYTHON -m $MODULE 'iam-admin-get-third-party-platform-token-link-status-v3' \
    'AHtL7IWE3MFqvfDG' \
    '5jvMOaXrDlEX42U0' \
    'syrGNhBmgT2q0kIb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 177 AdminGetUserSinglePlatformAccount
$PYTHON -m $MODULE 'iam-admin-get-user-single-platform-account' \
    'rJ2S5Pf1Lvg8kYEV' \
    'ylINJpxFY8E6pU8e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminGetUserSinglePlatformAccount' test.out

#- 178 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["Hjh0aTjIOaQt0snb", "E0yMvqF7TJ9uB0zy", "pjJiu7BIimNuwB3h"]' \
    'BVhuSMHhf5R2MkxQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminDeleteUserRolesV3' test.out

#- 179 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "TAYGfE6hXZ7XLoWC", "roleId": "Gf0dZEeXBd6mGG6S"}, {"namespace": "HcZbX2wNnT6A9zos", "roleId": "mDnXoncy7NZQ4PkA"}, {"namespace": "PXBCfkE1Fb0y94eP", "roleId": "7yh0zsKhR60HZwUw"}]' \
    'k48XK7MXHbEwAvvp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminSaveUserRoleV3' test.out

#- 180 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    'EeHhXiJcJqYSxVKU' \
    'YMimVLzAP6aOzsTq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AdminAddUserRoleV3' test.out

#- 181 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'EFXUhGAwpYq1UqZy' \
    'dOB0MThZW6LwcAg5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminDeleteUserRoleV3' test.out

#- 182 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": false, "reason": "BYBVCbi0ifdPyKf3"}' \
    'SwHekWIz4rXlH5jw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateUserStatusV3' test.out

#- 183 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    '99HxCjXWcaXBcfXX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 184 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "eV7BXefsSgZxSYnV"}' \
    'wXqF6K0WA76Kl2mH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminUpdateClientSecretV3' test.out

#- 185 AdminGetRolesV3
$PYTHON -m $MODULE 'iam-admin-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRolesV3' test.out

#- 186 AdminCreateRoleV3
$PYTHON -m $MODULE 'iam-admin-create-role-v3' \
    '{"adminRole": true, "deletable": false, "isWildcard": false, "managers": [{"displayName": "z6qBQnEDgX49n1xT", "namespace": "DFcmOm1sqdIWU6ER", "userId": "ylESgf5dXMrPoYSo"}, {"displayName": "hfrLyXMSrC62xYtD", "namespace": "wflNGfufW5cWeg6e", "userId": "SCypsceITTkJGGCV"}, {"displayName": "F6LrILDLviUCzmDA", "namespace": "aW5xz1c7ZuZXUCBY", "userId": "nkY0LEBSYBdUSiTO"}], "members": [{"displayName": "rhB8hVs29WOKmZRT", "namespace": "tgycLzXz6lUMKi5m", "userId": "weMEZo2ZnL1Zg2Jf"}, {"displayName": "H4f73jAevOnES6YJ", "namespace": "Llb2AfUEEBbqMMKv", "userId": "kOsR1fHUyirMVMOF"}, {"displayName": "ES2J2OzNlJE3uqZz", "namespace": "574g31cA0PwZxTIZ", "userId": "VSGQyTzhs9Asy4d6"}], "permissions": [{"action": 53, "resource": "9N4YnolVWA2dWxBs", "schedAction": 91, "schedCron": "56jkPCUuE1pgdHvl", "schedRange": ["QKiR7SDQUDavOlKT", "5EIHNhJQq94Re5IM", "1akNKz9IltQUku3n"]}, {"action": 80, "resource": "2atB0QPQPEp5UtwU", "schedAction": 99, "schedCron": "Y23AUWFTLq0W1Jqw", "schedRange": ["Ks1mO80L7IOHlf6j", "8PZOzUiQKZqz5NSp", "0B7LODN3Boi2sSAO"]}, {"action": 47, "resource": "n4MZQt753XQB93rO", "schedAction": 100, "schedCron": "vEOaRcqTgF0xtQAX", "schedRange": ["oDoFkmA3fgzcwdgJ", "MjIyGfiNBQy41M1g", "zGCbaxw33rNbE4bb"]}], "roleName": "DU4FMTbQaANJOODG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminCreateRoleV3' test.out

#- 187 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'erDCWcl3VSJENQop' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminGetRoleV3' test.out

#- 188 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'eHD6iKBGm5Cj7Rqn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminDeleteRoleV3' test.out

#- 189 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": true, "isWildcard": false, "roleName": "3roOeqE7fcCAeExe"}' \
    'QX43LpmdMiZeyIrA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateRoleV3' test.out

#- 190 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    '4QUKSJgECzvaWUCA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminGetRoleAdminStatusV3' test.out

#- 191 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    '7wKru7ry3AQ2sEHv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminUpdateAdminRoleStatusV3' test.out

#- 192 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'SxjWoM1rNJLM0OOV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminRemoveRoleAdminV3' test.out

#- 193 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'G5cG6XxENbWqlX7i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminGetRoleManagersV3' test.out

#- 194 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "dzjpKDfwl6XlCF6Y", "namespace": "xFMD8tJQwZvUVIno", "userId": "s5RK100yH89i8ZDP"}, {"displayName": "XRL8cbTAntB1STaa", "namespace": "b1UeibXg7RCe5BtK", "userId": "cwj6PqqOgCimr3ZQ"}, {"displayName": "NBBkrXu9czsYr3cF", "namespace": "eVw70xdNTuOdLKK0", "userId": "M2B2hbqJin37P69t"}]}' \
    '1KqeGz7qbPnXEuOz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminAddRoleManagersV3' test.out

#- 195 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "zkoBmMR9C4qPqJrA", "namespace": "dh1HIk7vCEq7FQ2S", "userId": "5VeW9ddxzLPV8wDj"}, {"displayName": "snyPh5yNbYXmlAOi", "namespace": "1SC3I1SjkH42LtyZ", "userId": "KrTJo0L5sHil4Q0m"}, {"displayName": "qa8GatrjbJ5YT7uv", "namespace": "qarTvrG1DXZAWlvz", "userId": "3c3XALMresGFfsH4"}]}' \
    'aXCDhshvEF8rHd25' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminRemoveRoleManagersV3' test.out

#- 196 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    '0nyihcUVGHQczI5Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminGetRoleMembersV3' test.out

#- 197 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "oTRUkjGoRkPs2SO9", "namespace": "XrgXNIaU11cBXLwT", "userId": "fopqeZtHJnRgaGfL"}, {"displayName": "MFbvyI5PZGzVLcmZ", "namespace": "KKKYARape2tsNcza", "userId": "m4Cdd1QYvww4XDok"}, {"displayName": "ltgq2vXtUnY6UhDJ", "namespace": "4pe0s0Cuhl3dU9b4", "userId": "seYCyiB4tDCWx3cE"}]}' \
    'X8wTi1v2abpCWytP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminAddRoleMembersV3' test.out

#- 198 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "Ei9Ze0hL9rPkV5Gk", "namespace": "Srcl2O47XVzU7qlN", "userId": "Vk7qnmBS3XKDhp1O"}, {"displayName": "kMcErmeH0lX1hj0L", "namespace": "aXgQ94flh775AQfz", "userId": "NjQ7IuMSY2epRDJj"}, {"displayName": "DyMDKQhuTjtQZyIi", "namespace": "AmCL8bNTTfqLCv9D", "userId": "YBOProN4UWbQaKFr"}]}' \
    'Tv4JWElmOCxqPrq9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'AdminRemoveRoleMembersV3' test.out

#- 199 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 70, "resource": "n1KvJmbjapW9UlEq", "schedAction": 40, "schedCron": "wkrKFEtwESJCe2ks", "schedRange": ["G3nZE13H2fILFzOl", "AZbDQAEJLbVWH2XL", "Ig3MgmdSvWp3h0xP"]}, {"action": 37, "resource": "ErzjtuP9pUUv7qef", "schedAction": 82, "schedCron": "QSYLFKSl3FNFFJnt", "schedRange": ["3rIwZdW02Su6aCnL", "816aH6gOBUIMeL0G", "L3aefSDME8X2MxIL"]}, {"action": 71, "resource": "xxDNXGlGJvHf558h", "schedAction": 24, "schedCron": "iJLtjsu6ZJRCoDq3", "schedRange": ["geuHFFaZzPIjETqc", "KN1gaQ4Bn0cPPtKa", "Jlw31pdDrXQ47WSG"]}]}' \
    'yDCKF0LLhO3lGZ7e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'AdminUpdateRolePermissionsV3' test.out

#- 200 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 66, "resource": "iefBnPluOIjZyvlG", "schedAction": 61, "schedCron": "HnPumcazKAna0ji7", "schedRange": ["57aNDFeKnQP2j2Ws", "QImTwYkiuxzLrbJ0", "BkGzCNgesQlZZHIZ"]}, {"action": 68, "resource": "xyZ1OH5Nn4nMT8QO", "schedAction": 50, "schedCron": "zezsHdFftHHR6xbc", "schedRange": ["VVonwz27DWfGRVhb", "ZTvCPrrZCTU5WUJi", "zF69PSsquWUafwbF"]}, {"action": 86, "resource": "XgICLgMHcP1eE6sj", "schedAction": 11, "schedCron": "QllYsONpp6QGW56C", "schedRange": ["NiszHE69D1MMoaf6", "KlgRtwaM2IoyY1wp", "IdjcAtTj1IMuuhxx"]}]}' \
    'lulfmya73hX0a8Ri' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'AdminAddRolePermissionsV3' test.out

#- 201 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["85PA9wNpmrK5Y5he", "A2ewWnFcqHxXP3kR", "htrBcBofWTGYx2ih"]' \
    'gioL8VvEzHGTt9em' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'AdminDeleteRolePermissionsV3' test.out

#- 202 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '7' \
    'LkgqkqYZWPZTgKag' \
    'TzdcYcko7U3gH239' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'AdminDeleteRolePermissionV3' test.out

#- 203 AdminGetMyUserV3
$PYTHON -m $MODULE 'iam-admin-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'AdminGetMyUserV3' test.out

#- 204 UserAuthenticationV3
$PYTHON -m $MODULE 'iam-user-authentication-v3' \
    'LhRx2Laa2RdtVb6V' \
    'gA5yFIH3s9UyeaFi' \
    '8OE7BCK4FeVGrl5N' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 204 'UserAuthenticationV3' test.out

#- 205 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    'pUG9zblWEiHaUjyT' \
    'Hb0sSlstb3slUe94' \
    'NxhXsVcqTYi1TMBM' \
    'zaOrxuKvtUVtqbDW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'AuthenticationWithPlatformLinkV3' test.out

#- 206 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    'nJ2i9TRmJOqIl7U1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 207 RequestOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-request-one-time-linking-code-v3' \
    '2hO5vpk9DOSgbsdG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'RequestOneTimeLinkingCodeV3' test.out

#- 208 ValidateOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-validate-one-time-linking-code-v3' \
    'VPLD9A5NmuZDUV3y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'ValidateOneTimeLinkingCodeV3' test.out

#- 209 RequestTokenByOneTimeLinkCodeResponseV3
$PYTHON -m $MODULE 'iam-request-token-by-one-time-link-code-response-v3' \
    'HurgOfba1XeoHYTN' \
    'oRol84UlkxtP5Vok' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 210 GetCountryLocationV3
$PYTHON -m $MODULE 'iam-get-country-location-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'GetCountryLocationV3' test.out

#- 211 Logout
$PYTHON -m $MODULE 'iam-logout' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'Logout' test.out

#- 212 RequestGameTokenCodeResponseV3
$PYTHON -m $MODULE 'iam-request-game-token-code-response-v3' \
    '9sNK1ORg3tChsS3f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'RequestGameTokenCodeResponseV3' test.out

#- 213 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'FpaS1uq1mH3oYfPK' \
    '2QiAUhIfi17YrkWH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 214 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    'NxiaNyqBfgw58Hx0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'RevokeUserV3' test.out

#- 215 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    'XYL0fJOPYpnPqGlP' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 215 'AuthorizeV3' test.out

#- 216 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'ppYY1vlV0M2g6ore' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 216 'TokenIntrospectionV3' test.out

#- 217 GetJWKSV3
$PYTHON -m $MODULE 'iam-get-jwksv3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'GetJWKSV3' test.out

#- 218 SendMFAAuthenticationCode
$PYTHON -m $MODULE 'iam-send-mfa-authentication-code' \
    'qyBzWzCgMMWZuD6t' \
    'mIR28xVxbtpSKOfi' \
    'IP3S6pypZqISn3ms' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'SendMFAAuthenticationCode' test.out

#- 219 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    'rykQFtW8QGKFZLrI' \
    'fqrZuu7IwKcT7sAs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'Change2faMethod' test.out

#- 220 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    'v2TKCbYMVkXEHmsH' \
    'wIGGsusS0zZRODEK' \
    'PdudZsLaf8aZrXW8' \
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'Verify2faCode' test.out

#- 221 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'dt0TSTmy7XF26K2U' \
    '7xttUz8nWKJjv06P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 222 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'uffHghAQfAsYXVzB' \
    'enLtaAoYyRfiCWrm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'AuthCodeRequestV3' test.out

#- 223 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    '3s1Ah3TII70MIcBM' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 223 'PlatformTokenGrantV3' test.out

#- 224 GetRevocationListV3
$PYTHON -m $MODULE 'iam-get-revocation-list-v3' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 224 'GetRevocationListV3' test.out

#- 225 TokenRevocationV3
$PYTHON -m $MODULE 'iam-token-revocation-v3' \
    'J04508jKedx0CVRp' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 225 'TokenRevocationV3' test.out

#- 226 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'authorization_code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 226 'TokenGrantV3' test.out

#- 227 VerifyTokenV3
$PYTHON -m $MODULE 'iam-verify-token-v3' \
    'Rm5Ki0orhXrISEaP' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 227 'VerifyTokenV3' test.out

#- 228 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'ZHLQkTHvndQsCKAO' \
    '2JRz3CGwtujkzxid' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'PlatformAuthenticationV3' test.out

#- 229 PublicGetInputValidations
$PYTHON -m $MODULE 'iam-public-get-input-validations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'PublicGetInputValidations' test.out

#- 230 PublicGetInputValidationByField
$PYTHON -m $MODULE 'iam-public-get-input-validation-by-field' \
    'LcAQWGVRg6DVso5T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'PublicGetInputValidationByField' test.out

#- 231 PublicGetCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction-v3' \
    'JCSugdo4XTm8t1YT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'PublicGetCountryAgeRestrictionV3' test.out

#- 232 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-public-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 233 RetrieveActiveOIDCClientsPublicV3
$PYTHON -m $MODULE 'iam-retrieve-active-oidc-clients-public-v3' \
    'WqItjNWXm9sraeMA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 234 PublicListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["78YSRS2fPy5fpbbb", "MIu9lu18jIMBUM77", "XmemN8LO03mnFSq9"]}' \
    'jJTVFoFjxZjh5qUR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 235 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    '1Pq4a4uaMfd0SQAf' \
    'YIyzHL8jxakuVu5r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'PublicGetUserByPlatformUserIDV3' test.out

#- 236 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    '5B08VZxI4TU3apnZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'PublicGetAsyncStatus' test.out

#- 237 PublicSearchUserV3
$PYTHON -m $MODULE 'iam-public-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'PublicSearchUserV3' test.out

#- 238 PublicCreateUserV3
$PYTHON -m $MODULE 'iam-public-create-user-v3' \
    '{"PasswordMD5Sum": "XoJ4gI4EQKO8xC4D", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "sUo3IB2kX5REQZsH", "policyId": "yXzoIXNf0KbL9HyJ", "policyVersionId": "ttdgfLGO3ummplln"}, {"isAccepted": false, "localizedPolicyVersionId": "6B62P1Kazg73c6Up", "policyId": "mA4ehxNIIlcrZzga", "policyVersionId": "meT2mLkkAMjHyI0e"}, {"isAccepted": false, "localizedPolicyVersionId": "Axj0nZHjmoKHJngw", "policyId": "Me1AnQVj6QQjZtkN", "policyVersionId": "JCnDSrsSey2BqOxg"}], "authType": "wCymCDYsuff3b7G5", "code": "FDX4mu0qPHb9Ll2E", "country": "FEb8GnsthmQ2Y6ZG", "dateOfBirth": "Oiqrg3lpqN5bOfnq", "displayName": "J5bzDRzbhMxfEDE4", "emailAddress": "TrtIHyyMq79EdB9M", "password": "xaF8QHGM2IuQYBO8", "reachMinimumAge": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'PublicCreateUserV3' test.out

#- 239 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'RZRNATojM7daV0Vw' \
    'R3yNKDtMqMrAGpdy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'CheckUserAvailability' test.out

#- 240 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["F6WDHn3ePBxQNz2I", "UEHMzl5jhwVDsuzw", "J4v50eoaIBrTh0EK"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'PublicBulkGetUsers' test.out

#- 241 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "kJioUpvGnkcHgCfa", "languageTag": "WzPUvCnfqsPGgJZy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'PublicSendRegistrationCode' test.out

#- 242 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "RwigaMu07Zek8WOb", "emailAddress": "pf0FHYfViEj70KYK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'PublicVerifyRegistrationCode' test.out

#- 243 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "IfFt4GYjUt4F1ZVy", "languageTag": "2qFfSr3psWjOyHLy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'PublicForgotPasswordV3' test.out

#- 244 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    'Ke2foqsVIfgBTr8R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'GetAdminInvitationV3' test.out

#- 245 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "vAMWqhyyNZH1Cduc", "policyId": "B5y5iMdeBG7REG4m", "policyVersionId": "eKEabfVXBJPIZqZC"}, {"isAccepted": false, "localizedPolicyVersionId": "K0UuJdeGNquQnaXp", "policyId": "DQ5rU2taDWh9JV5o", "policyVersionId": "c5IFQsrwHqFqwVA5"}, {"isAccepted": false, "localizedPolicyVersionId": "hcLK0WTZbtmQkwC8", "policyId": "azx3IRWme3C6p2r4", "policyVersionId": "D3NQdjrjkX3AMgK3"}], "authType": "EMAILPASSWD", "country": "AxbDPXU5xJBhIpJ9", "dateOfBirth": "b0Ap7CmSiKPjcwAw", "displayName": "5GdxpvLfa4b4hTaZ", "password": "BGdX66DqPTdurR3M", "reachMinimumAge": false}' \
    'da0Y0BCO4qPnvxER' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'CreateUserFromInvitationV3' test.out

#- 246 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "WjKasq5zQ6uZNwKj", "country": "nX7vDIqpcjmaq5KB", "dateOfBirth": "CsHlwNrfKJrkzwR4", "displayName": "0tfd9GFXChtxB10d", "languageTag": "4Q8nlBthUSu4WNfT", "userName": "vD5UcES1eLMZs9lS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'UpdateUserV3' test.out

#- 247 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "QVDp16qVIqXCK9dS", "country": "5JTbdJEe6mnkYAfw", "dateOfBirth": "61kyKk0UXUF2523O", "displayName": "TvOmfVNJNDaSO3FE", "languageTag": "kk4It6V8Bu7rIjGr", "userName": "xUMKbv60ixUuUhop"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'PublicPartialUpdateUserV3' test.out

#- 248 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "dqGrqRZ124P7PauX", "emailAddress": "TrpWAjwatSvtPbAF", "languageTag": "n8oWQcmFkkRX6Eqa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'PublicSendVerificationCodeV3' test.out

#- 249 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "dAEIzxld80Ynss7h", "contactType": "c3VUxxZIgkTLqMeJ", "languageTag": "PCbs8jWmTteJhwNb", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'PublicUserVerificationV3' test.out

#- 250 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "0ilGQFwHUtZugblT", "country": "3aIDKn9qJXncm5ig", "dateOfBirth": "pAewbmnWk0E7YaPb", "displayName": "lcWEyNgvs5LEZrQX", "emailAddress": "zSQRWRs9EGnRPgYl", "password": "JElgJ8kx1WEeDbql", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'PublicUpgradeHeadlessAccountV3' test.out

#- 251 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "FtQMu41rnOzbsFBq", "password": "g6dziWvdNcwfUBMd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'PublicVerifyHeadlessAccountV3' test.out

#- 252 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "NuTaiLxFMXRpDP9x", "newPassword": "utntU8xHw4yYJOCV", "oldPassword": "iHwunQwpC2eCFUAH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'PublicUpdatePasswordV3' test.out

#- 253 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'ZaYSvsWiNJtqXltZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'PublicCreateJusticeUser' test.out

#- 254 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'F6aSRmHU5iR3hXIb' \
    'zWPKOkzftOgDQAWh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'PublicPlatformLinkV3' test.out

#- 255 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "ulbrDf7q4cAnpmLi"}' \
    'Eu4CNtX2lnqi7cHT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'PublicPlatformUnlinkV3' test.out

#- 256 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'SdGoLZbC3UJruU4u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'PublicPlatformUnlinkAllV3' test.out

#- 257 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    'IXBZsEYogFWiH9z4' \
    'E8zmaZ5cg0REtUWY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'PublicForcePlatformLinkV3' test.out

#- 258 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    '4fVIdqwCWF5wmbOu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'PublicWebLinkPlatform' test.out

#- 259 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'bTxAAeDCowR3MeCN' \
    'L1oNrF3SmgudQusJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'PublicWebLinkPlatformEstablish' test.out

#- 260 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "LsPlW7ZyORFkN9Eb", "emailAddress": "KbTbrDzNgVEcw0lx", "newPassword": "Ram16O6v4VjJf40L"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'ResetPasswordV3' test.out

#- 261 PublicGetUserByUserIdV3
eval_tap 0 261 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 262 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    'jUdORELVXUFQyVlt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'PublicGetUserBanHistoryV3' test.out

#- 263 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    '9jmxmxpfp41k1uDg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 264 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    '59PhdUXShabwyYCx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'PublicGetUserInformationV3' test.out

#- 265 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'THrDel8oThvr8CUE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'PublicGetUserLoginHistoriesV3' test.out

#- 266 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'zw4zL1QeR3EYXBFp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'PublicGetUserPlatformAccountsV3' test.out

#- 267 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    'UX9y4tY7o5FFi1n1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'PublicListJusticePlatformAccountsV3' test.out

#- 268 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "0vDgyoHXIlrMl2RA", "platformUserId": "ukCL26ihdMy9YCLN"}' \
    'JEkvq6SUSt8xd8Eg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'PublicLinkPlatformAccount' test.out

#- 269 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["E15XNuw6Y7sToQNk", "uZzJ1XBxw01iBBQu", "kgQ94ZvPCWcMX0ov"], "requestId": "3U2sKjIeyFS97dYD"}' \
    '7LkcTKYpCfl6HPy5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'PublicForceLinkPlatformWithProgression' test.out

#- 270 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    'cJfAV5iOfzwt3bpx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'PublicGetPublisherUserV3' test.out

#- 271 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'RNt6lKoMjCPtEKeB' \
    'WTm78Fn8TvZVTe4L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 272 PublicGetRolesV3
$PYTHON -m $MODULE 'iam-public-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'PublicGetRolesV3' test.out

#- 273 PublicGetRoleV3
$PYTHON -m $MODULE 'iam-public-get-role-v3' \
    '2lXrVPX6r5ZTcnVV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'PublicGetRoleV3' test.out

#- 274 PublicGetMyUserV3
$PYTHON -m $MODULE 'iam-public-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'PublicGetMyUserV3' test.out

#- 275 PublicGetLinkHeadlessAccountToMyAccountConflictV3
$PYTHON -m $MODULE 'iam-public-get-link-headless-account-to-my-account-conflict-v3' \
    'OKMApTcWsFRUlWBp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 276 LinkHeadlessAccountToMyAccountV3
$PYTHON -m $MODULE 'iam-link-headless-account-to-my-account-v3' \
    '{"chosenNamespaces": ["4gBs9UufgsVbG6TU", "e3jbuQ7HMPO4ozK7", "05ykRqSPYZgPm4JL"], "oneTimeLinkCode": "sXVtBOEetHsxAJ8N"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'LinkHeadlessAccountToMyAccountV3' test.out

#- 277 PublicSendVerificationLinkV3
$PYTHON -m $MODULE 'iam-public-send-verification-link-v3' \
    '{"languageTag": "y1LRkPU9hrl5nkpE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'PublicSendVerificationLinkV3' test.out

#- 278 PublicVerifyUserByLinkV3
$PYTHON -m $MODULE 'iam-public-verify-user-by-link-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'PublicVerifyUserByLinkV3' test.out

#- 279 PlatformAuthenticateSAMLV3Handler
$PYTHON -m $MODULE 'iam-platform-authenticate-samlv3-handler' \
    'dBe8bYWdok4UnUEO' \
    'yP0cPZf5OvolfI0m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'PlatformAuthenticateSAMLV3Handler' test.out

#- 280 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'qZctohLheRaQkfML' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'LoginSSOClient' test.out

#- 281 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'FW9B7jHZro4hhwnA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'LogoutSSOClient' test.out

#- 282 RequestGameTokenResponseV3
$PYTHON -m $MODULE 'iam-request-game-token-response-v3' \
    'NAGp8zGqNGrcQyoA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'RequestGameTokenResponseV3' test.out

#- 283 PlatformTokenRefreshV3
$PYTHON -m $MODULE 'iam-platform-token-refresh-v3' \
    '1TWPcy83iXfYXNdM' \
    'kdg9TMwxNcQ6CkVi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'PlatformTokenRefreshV3' test.out

#- 284 AdminGetDevicesByUserV4
$PYTHON -m $MODULE 'iam-admin-get-devices-by-user-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'AdminGetDevicesByUserV4' test.out

#- 285 AdminGetBannedDevicesV4
$PYTHON -m $MODULE 'iam-admin-get-banned-devices-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'AdminGetBannedDevicesV4' test.out

#- 286 AdminGetUserDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-user-device-bans-v4' \
    '8fqVPRqNbF5yLnYS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'AdminGetUserDeviceBansV4' test.out

#- 287 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "a8xFLvcYexMMMiDF", "deviceId": "h5RbW021cHN3QbzV", "deviceType": "uJZH3k54cExxWKtd", "enabled": false, "endDate": "TW4FILotv5ycTa0i", "ext": {"6ifYP1zfgjsy3VRj": {}, "X4qA4g9OGoWw1qnC": {}, "AvdnAcokJ0rzqX2K": {}}, "reason": "JcYHgiFDxclBXap6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'AdminBanDeviceV4' test.out

#- 288 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    'j73doCWxhubMXbxN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'AdminGetDeviceBanV4' test.out

#- 289 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": true}' \
    'TOX5gBQlVDx9neFH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'AdminUpdateDeviceBanV4' test.out

#- 290 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    'WhDRJtyYEt7ygZle' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'AdminGenerateReportV4' test.out

#- 291 AdminGetDeviceTypesV4
$PYTHON -m $MODULE 'iam-admin-get-device-types-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'AdminGetDeviceTypesV4' test.out

#- 292 AdminGetDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-device-bans-v4' \
    'AoUuVKneoO10ytPd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'AdminGetDeviceBansV4' test.out

#- 293 AdminDecryptDeviceV4
$PYTHON -m $MODULE 'iam-admin-decrypt-device-v4' \
    'J8SY3qoogOxoPYvd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'AdminDecryptDeviceV4' test.out

#- 294 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    'IBJYyGURjEjnslEY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'AdminUnbanDeviceV4' test.out

#- 295 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    'M8ngVT1ewVxvgAoc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'AdminGetUsersByDeviceV4' test.out

#- 296 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"count": 83}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'AdminCreateTestUsersV4' test.out

#- 297 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["0c4X7fHdITmN9opa", "F0kh3pCRB3infEVx", "ArF7TB6A6a71zAJp"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'AdminBulkCheckValidUserIDV4' test.out

#- 298 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "aPeudUtKPJUmAvxB", "country": "xJNPlvvYZw4MWzWF", "dateOfBirth": "TuNPf5JCSDyYy4e5", "displayName": "qoTZxSoZbQUnUxS6", "languageTag": "m68WL3HDL4yx5I0e", "userName": "uBsccHPA2v9XP9en"}' \
    'fEX7lloLgIYqxFfS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateUserV4' test.out

#- 299 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "NJlHCjxLNnYUlGQs", "emailAddress": "Fpy9ZVlLIFwLgT78"}' \
    'nootfUs9559ilm3c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'AdminUpdateUserEmailAddressV4' test.out

#- 300 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    'auhrw9Yn2z5cnbm7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'AdminDisableUserMFAV4' test.out

#- 301 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'z2Aa24yBTw3wfNGy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'AdminListUserRolesV4' test.out

#- 302 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["Wf3VujS7Bq5bcfPW", "4pPZB9YXltCxyztU", "nj17t3gHBXvjvzie"], "roleId": "xzOLbOWbtcJUxM3A"}' \
    'WyDkA5LmART6kulp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'AdminUpdateUserRoleV4' test.out

#- 303 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["M4SRtUE5P4kxmHtF", "bjqurHix0QYycDH5", "we2Mx0sYCnYPT4i4"], "roleId": "mxc14iRfzJwKuc7E"}' \
    'piQEzz5N5osRYO7w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'AdminAddUserRoleV4' test.out

#- 304 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["bYh7q02W8tkTURUF", "mqNc8xhQqptccNor", "Rls7EC3nDnhFvDlF"], "roleId": "d7iyZpvWVJFK6Zuv"}' \
    'lzGCII156hIg0g8H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'AdminRemoveUserRoleV4' test.out

#- 305 AdminGetRolesV4
$PYTHON -m $MODULE 'iam-admin-get-roles-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'AdminGetRolesV4' test.out

#- 306 AdminCreateRoleV4
$PYTHON -m $MODULE 'iam-admin-create-role-v4' \
    '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "E4vBzG7VK8sWEshm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'AdminCreateRoleV4' test.out

#- 307 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'Zf5fEdvjbyJPQ1qd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'AdminGetRoleV4' test.out

#- 308 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'RcJjsme1OukIfIZV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'AdminDeleteRoleV4' test.out

#- 309 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "hk077gxaj55huTA6"}' \
    'AvmW0567BFqbrPIu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'AdminUpdateRoleV4' test.out

#- 310 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 48, "resource": "EGJ3k0HGtpK43uOR", "schedAction": 67, "schedCron": "3w0FQ1520WM3TxWX", "schedRange": ["SdTiKdva2UREoBSF", "tCLy2CqgCG7JwJCD", "qkzOdFwLJpIPxzLE"]}, {"action": 97, "resource": "g6t42jE1Wad232YV", "schedAction": 10, "schedCron": "A2zHFGbN8AQaCaw9", "schedRange": ["UF7cdSDd99DQZ7vn", "Tx8HDXTJWiyw17og", "zmbj4SLYDrZJvDLG"]}, {"action": 45, "resource": "6fzYRn85brTu8F7c", "schedAction": 42, "schedCron": "ft5nBA9xNIJVuMz0", "schedRange": ["4evSdE2FMcKd7c94", "rEmIYuAT5OAcUwYH", "GmG5rNDBF1oU37vj"]}]}' \
    'fyX5YLaM0wmi0i1W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'AdminUpdateRolePermissionsV4' test.out

#- 311 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 53, "resource": "I7SFBEgkwHifMHYI", "schedAction": 65, "schedCron": "81HbF7fMX9lDXYxG", "schedRange": ["RJM92eX42WW2WKf5", "urEOpASBicX3ZwzZ", "7aVhrkmhSOEozGOv"]}, {"action": 56, "resource": "D0iVxzrec5kNwJAx", "schedAction": 26, "schedCron": "rrB2pJ7V8BSrucjO", "schedRange": ["3zvSM5KeVNHU9GcO", "ivIfcCJt4U8VSgXo", "i9Fw25b9qXzlIK2G"]}, {"action": 12, "resource": "AUjBCdf0Rp5e5IvF", "schedAction": 41, "schedCron": "eBRMur18nCxiV9bQ", "schedRange": ["MHpPbvflI3LkRc1N", "gZaoYAaCCeRgtsts", "U3Qecxo4bQZO3P2f"]}]}' \
    '8TTOVf6jrr1OL606' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'AdminAddRolePermissionsV4' test.out

#- 312 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["QpqCgxt0NgDSj1T6", "EdeYFmrLT0HbvS4k", "SSt3CyDgf6eFAiqS"]' \
    'kHi0BR2ElF6z6eJK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'AdminDeleteRolePermissionsV4' test.out

#- 313 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'uOW61akRFizqxCmu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'AdminListAssignedUsersV4' test.out

#- 314 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["dSXivAL3n478mhb2", "I2yBJeCJghTrk68F", "WFzuLBdlrKjUbgZQ"], "namespace": "fw6Zys3mN8fIcC9C", "userId": "kharfqaoMsGyv1Ru"}' \
    'SNdycDssUeHiVDXz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'AdminAssignUserToRoleV4' test.out

#- 315 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "SJ8kbFAyidbnXdMS", "userId": "wmkBkKC1h6h45u0w"}' \
    'uh9pY0011jSmHFTt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'AdminRevokeUserFromRoleV4' test.out

#- 316 AdminInviteUserNewV4
$PYTHON -m $MODULE 'iam-admin-invite-user-new-v4' \
    '{"assignedNamespaces": ["fM2mGUUpq3ix7Am7", "W1fwJnV94BrMSP31", "wAkVH75UcmNXK5Rq"], "emailAddresses": ["cIo9lpz9oM52vHPl", "wVV3jlPKDEYahnlL", "JaLCvjRKKX1brmkJ"], "isAdmin": true, "namespace": "4TbTwBufUorJoudu", "roleId": "hCEJ5XiKDIE9Yugc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'AdminInviteUserNewV4' test.out

#- 317 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "upLxVBcRkfhRuqkO", "country": "THSia7oFd1fEmDuy", "dateOfBirth": "AsQGzwJR5poI718R", "displayName": "Qnj4imu6XFfRcWDX", "languageTag": "hq1YmGeygr2S4Yw8", "userName": "NmPaBeryzX2hOPVV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'AdminUpdateMyUserV4' test.out

#- 318 AdminDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'AdminDisableMyAuthenticatorV4' test.out

#- 319 AdminEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'AdminEnableMyAuthenticatorV4' test.out

#- 320 AdminGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-admin-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 321 AdminGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'AdminGetMyBackupCodesV4' test.out

#- 322 AdminGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'AdminGenerateMyBackupCodesV4' test.out

#- 323 AdminDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'AdminDisableMyBackupCodesV4' test.out

#- 324 AdminDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'AdminDownloadMyBackupCodesV4' test.out

#- 325 AdminEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'AdminEnableMyBackupCodesV4' test.out

#- 326 AdminSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-admin-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'AdminSendMyMFAEmailCodeV4' test.out

#- 327 AdminDisableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-disable-my-email-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'AdminDisableMyEmailV4' test.out

#- 328 AdminEnableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-enable-my-email-v4' \
    'FqVqxjq1iG3TySOh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'AdminEnableMyEmailV4' test.out

#- 329 AdminGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-admin-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'AdminGetMyEnabledFactorsV4' test.out

#- 330 AdminMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-admin-make-factor-my-default-v4' \
    '8SI75oXbyq8FBbur' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'AdminMakeFactorMyDefaultV4' test.out

#- 331 AdminInviteUserV4
eval_tap 0 331 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 332 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "QwnlgAVfqz6gQJh8", "policyId": "sn0bVWRkvmAemh8l", "policyVersionId": "ioBR7xTXcEIFod3l"}, {"isAccepted": true, "localizedPolicyVersionId": "O65KWh8ztRJkXxUA", "policyId": "j3jzZvEaY103YUIM", "policyVersionId": "uSjDHz0zPWMZQNNP"}, {"isAccepted": true, "localizedPolicyVersionId": "JqQqhISTBT1Gofv4", "policyId": "SuaZ8yCB9TVZnuzg", "policyVersionId": "vAZJRm71EC3ENuvD"}], "authType": "EMAILPASSWD", "country": "OPsp5Z3ez84KVB7H", "dateOfBirth": "eWPnVeFdy5ezlCU6", "displayName": "SGzkMpTL2wxobjxA", "emailAddress": "bagqEmXn6U2VeV2e", "password": "mK3JecJA4skqCbPx", "passwordMD5Sum": "RkIAFQh9yDdoLE2s", "username": "7mrVrmTJwtBTzQTr", "verified": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'PublicCreateTestUserV4' test.out

#- 333 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "1LcWNf7xHpi1JZJj", "policyId": "IRtCfqDHSlo54zSn", "policyVersionId": "RN0zGMworzym1z3Z"}, {"isAccepted": false, "localizedPolicyVersionId": "QqjyzUZR2rFIAuAL", "policyId": "NhNCyscsMBRLsWad", "policyVersionId": "k2OQ421q7Nb1vrKt"}, {"isAccepted": false, "localizedPolicyVersionId": "h05hj92bwVVxJ62Q", "policyId": "5AOAOyL65cPaOZA8", "policyVersionId": "BG8KcVWOX9n3YsjJ"}], "authType": "EMAILPASSWD", "code": "KUByHBzfvgtRTPPz", "country": "wJmKaLCx3gcidEAL", "dateOfBirth": "We6RG5wWznu5AjwR", "displayName": "1Z4fU7ICcaQtuuKU", "emailAddress": "w3dUwWHhQW3I1y9t", "password": "jRLVOXBMa0JiIe1A", "passwordMD5Sum": "Y0tUA7EKASk3USNL", "reachMinimumAge": false, "username": "M97ebZcYqwfIHPWM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'PublicCreateUserV4' test.out

#- 334 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "2F6AyUX8w77riPlP", "policyId": "gJcLbeQf9MICxX7x", "policyVersionId": "KyCfgwSPz14asyOd"}, {"isAccepted": false, "localizedPolicyVersionId": "Zg30pagfP0FfOMBO", "policyId": "peQT4zYIbU4i9mLy", "policyVersionId": "X46Alt08rrnG8y2S"}, {"isAccepted": false, "localizedPolicyVersionId": "WQrHTkJT1VkChD3n", "policyId": "0c1ryAkRvdPR8gx2", "policyVersionId": "rX5dck8NFKPgT6LM"}], "authType": "EMAILPASSWD", "country": "F3f5KLtpTSsPMGDZ", "dateOfBirth": "TOwEP5Bhh0NStWIg", "displayName": "gmhfAzVdNYP7Ao1z", "password": "7FeJM2fWXGk7JObS", "reachMinimumAge": true, "username": "ksRkabpmvRsc7ZYv"}' \
    'XCT6m6mRZAlLBczJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'CreateUserFromInvitationV4' test.out

#- 335 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "Veil7GbG1ISBCkcn", "country": "pxKUxLjmxhBS6Yyp", "dateOfBirth": "RW7fNntaIEtDI6Mb", "displayName": "hxkQdezbmf392ers", "languageTag": "oZ2KbMb5jal0ruZm", "userName": "BXlGSp85q6fuGfo5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'PublicUpdateUserV4' test.out

#- 336 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "wSDHnyabk493I3pv", "emailAddress": "HKDaWhTN1qyxpUzW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'PublicUpdateUserEmailAddressV4' test.out

#- 337 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "IZWJTDzWguhujw1E", "country": "oR58uCVldefonHJZ", "dateOfBirth": "AiX4abmqqi90KTWw", "displayName": "Zk0HGeJNaBjVdMB5", "emailAddress": "kMzKycYrhr4FnNzd", "password": "T4pWwIVXp9avUr6I", "reachMinimumAge": true, "username": "X4gQWyZocvYfr0Rn", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 338 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "lWOl9feWO2bmOikT", "password": "BJHTEm5PSeyod5L6", "username": "OooYoQn9iHEqWO1c"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'PublicUpgradeHeadlessAccountV4' test.out

#- 339 PublicDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'PublicDisableMyAuthenticatorV4' test.out

#- 340 PublicEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'PublicEnableMyAuthenticatorV4' test.out

#- 341 PublicGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-public-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 342 PublicGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'PublicGetMyBackupCodesV4' test.out

#- 343 PublicGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'PublicGenerateMyBackupCodesV4' test.out

#- 344 PublicDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'PublicDisableMyBackupCodesV4' test.out

#- 345 PublicDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'PublicDownloadMyBackupCodesV4' test.out

#- 346 PublicEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'PublicEnableMyBackupCodesV4' test.out

#- 347 PublicRemoveTrustedDeviceV4
$PYTHON -m $MODULE 'iam-public-remove-trusted-device-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicRemoveTrustedDeviceV4' test.out

#- 348 PublicSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-public-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'PublicSendMyMFAEmailCodeV4' test.out

#- 349 PublicDisableMyEmailV4
$PYTHON -m $MODULE 'iam-public-disable-my-email-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'PublicDisableMyEmailV4' test.out

#- 350 PublicEnableMyEmailV4
$PYTHON -m $MODULE 'iam-public-enable-my-email-v4' \
    'VCUIOx90FQdwLi3G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'PublicEnableMyEmailV4' test.out

#- 351 PublicGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-public-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'PublicGetMyEnabledFactorsV4' test.out

#- 352 PublicMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-public-make-factor-my-default-v4' \
    'OQkLtpuRNeT1CULE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'PublicMakeFactorMyDefaultV4' test.out

#- 353 PublicInviteUserV4
$PYTHON -m $MODULE 'iam-public-invite-user-v4' \
    '{"emailAddress": "MPaOU5nukycAUlkU", "namespace": "SZKUrsxNRzF3NaUu", "namespaceDisplayName": "CyQyze6zPKu5sE89"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'PublicInviteUserV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
