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
iam-admin-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["GxD9IPmmsLmu3kaP", "j0O4zd8Tb7cUNGPT", "BxiFFCrn7djjs69F"]}' 'TFVGUVhvKhJCmeis' --login_with_auth "Bearer foo"
iam-admin-get-user-by-platform-user-idv3 'ql14mUHVbMPimNhc' 'ZsU3VAdMDcb4qlki' --login_with_auth "Bearer foo"
iam-get-admin-users-by-role-id-v3 'FAamqvZI2KwjqPBi' --login_with_auth "Bearer foo"
iam-admin-get-user-by-email-address-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-ban-v3 '{"bulkUserId": ["WXade41s3rH34mB2", "yPlRpWjmHZAAvKTH", "8MuqIg0CzkguwuJC"]}' --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-user-i-ds-v3 '{"userIds": ["W7EEFB67AODbi9Bz", "upBsFpYc77GtRUcC", "FeY5g4XgBsbfzqxB"]}' --login_with_auth "Bearer foo"
iam-admin-bulk-get-users-platform '{"userIds": ["PNe8ae1Il4aAtEbu", "4IjGdqthRxTjQ7gk", "ZEY8rG0q0Q2Qd2Jz"]}' --login_with_auth "Bearer foo"
iam-admin-invite-user-v3 '{"emailAddresses": ["RbkF2I03dIjvBbA6", "bfbYaJCJjfk2TUvn", "95FhO7VW3mbDVMDu"], "isAdmin": true, "namespace": "1eym5ydC6p25xCWT", "roles": ["qUOYZENJ1QHZQxPR", "XH7uxBJEECQE1li3", "Bg7Jxc9pUnZmvhid"]}' --login_with_auth "Bearer foo"
iam-admin-query-third-platform-link-history-v3 'wCkZwqjYLfTiCO1N' --login_with_auth "Bearer foo"
iam-admin-list-users-v3 --login_with_auth "Bearer foo"
iam-admin-search-user-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-by-email-address-v3 '{"listEmailAddressRequest": ["DBvQvRPnAz4VzW0C", "poBCbyJsF5IjF1c0", "W338HS6CBgVRyihY"]}' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v3 'NZ84CVhziXV8HwSm' --login_with_auth "Bearer foo"
iam-admin-update-user-v3 '{"avatarUrl": "vcvcDKF19yVRafCj", "country": "OuSYht83AdvBaagT", "dateOfBirth": "iRJ8daGTVX3Bb7jl", "displayName": "z5IfHgKjI9mwJSrN", "languageTag": "8jkIykR2zbaI6PD7", "userName": "fEscShnGUGUtV9GJ"}' '279GDbLNwjm3FK0n' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v3 'nX2poMfZ1hDHtbh4' --login_with_auth "Bearer foo"
iam-admin-ban-user-v3 '{"ban": "HtMlFgvh2Dp2SoiI", "comment": "Pp1yvfAHS0VgLu11", "endDate": "A3HTovFi4tPAGfle", "reason": "yCA6jEtcqsnzoVIL", "skipNotif": false}' '7mpVI6eTYAjdPlCi' --login_with_auth "Bearer foo"
iam-admin-update-user-ban-v3 '{"enabled": true, "skipNotif": true}' '5cj4KyOVgvnWbfRJ' 'tsB7cUQZ2QUAxJrI' --login_with_auth "Bearer foo"
iam-admin-send-verification-code-v3 '{"context": "NPXppPNO3AfmXcgw", "emailAddress": "C3IN6tvKgLB9QmJI", "languageTag": "Oq9dP5szG71utjsQ"}' '4CrRb9gUCeVz7fWb' --login_with_auth "Bearer foo"
iam-admin-verify-account-v3 '{"Code": "ZIdhevfZvyV7Acod", "ContactType": "cZwKjYDdmJOlzwm9", "LanguageTag": "Su4FnS98QqftSjq7", "validateOnly": true}' 'CvDLil8wj9cKM3Ar' --login_with_auth "Bearer foo"
iam-get-user-verification-code '6MF35hCER4nGmWGg' --login_with_auth "Bearer foo"
iam-admin-get-user-deletion-status-v3 'TJfHlJl4tHGa4XfZ' --login_with_auth "Bearer foo"
iam-admin-update-user-deletion-status-v3 '{"deletionDate": 4, "enabled": true}' 'd9CVnGqMX9FieeEs' --login_with_auth "Bearer foo"
iam-admin-upgrade-headless-account-v3 '{"code": "sWEUl07bhwntCVqi", "country": "YOJf5KwMZQjzvjSo", "dateOfBirth": "zv6CTRDl0zp9CzHF", "displayName": "winkBNi4gvqgl6TZ", "emailAddress": "9TGVPmv34h6T7Esu", "password": "fmfxKYB4LM6H6QXm", "validateOnly": true}' 'hxXvCp9y7fLD2qfC' --login_with_auth "Bearer foo"
iam-admin-delete-user-information-v3 'XnlUnqxT1WsRNMZc' --login_with_auth "Bearer foo"
iam-admin-get-user-login-histories-v3 'A92hzC7MNa8vVe4M' --login_with_auth "Bearer foo"
iam-admin-reset-password-v3 '{"languageTag": "HX6AgMep90AyyUJy", "newPassword": "AK5PRMRMwdvl0hv6", "oldPassword": "g62GxBW2tQF5tkTj"}' 'gJaMYvNQOsDa4bkc' --login_with_auth "Bearer foo"
iam-admin-update-user-permission-v3 '{"Permissions": [{"Action": 14, "Resource": "lzGr7XjdyRJunZPk", "SchedAction": 31, "SchedCron": "GAak7Kaol01DK97D", "SchedRange": ["2xnik42miteR5eQA", "e1rzmmgqBPRmd6mO", "4oI8KDqebm83raNB"]}, {"Action": 72, "Resource": "pgSGSUOK68eqGJtW", "SchedAction": 12, "SchedCron": "GiBnNbn0zaf7CaOS", "SchedRange": ["lHXrUSA6sMJzA5mt", "qISQ83TTbtefXWzn", "De4LQdXfFBii2RAM"]}, {"Action": 62, "Resource": "r0sVZ6LJAOddIL2l", "SchedAction": 6, "SchedCron": "hPjNDKv2LWfXqjr8", "SchedRange": ["fS79En3wYowBdkaZ", "3y6i38XQjLDRqkpi", "FK5BtiQ272Uo9UBJ"]}]}' 'WodpdwsX1jorcyR0' --login_with_auth "Bearer foo"
iam-admin-add-user-permissions-v3 '{"Permissions": [{"Action": 47, "Resource": "rkzUvck3xTtmOFMe", "SchedAction": 3, "SchedCron": "s1Q2lzxl0yF5m77T", "SchedRange": ["Th4gUoj8u2WRcLiE", "tzVlnkflfn7pHY48", "F1dl1q92m3iRlfnB"]}, {"Action": 53, "Resource": "EcSqcE15u6D31DjO", "SchedAction": 37, "SchedCron": "HdGmxncCEr0Kcgeq", "SchedRange": ["zGbruNB72HHMkjzy", "BB4UFKiaoV0VOem2", "yqPsMFxKybPkbuS6"]}, {"Action": 47, "Resource": "LOq4ft5jGcMICPUY", "SchedAction": 27, "SchedCron": "r27fVMWuAfDqLMR9", "SchedRange": ["19IZPKOKiAVQXXOm", "qFHLbyXmgCNiXH8u", "enbC5CphgMweexsI"]}]}' 'AP5vHLjBJ9iqMcBL' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-bulk-v3 '[{"Action": 95, "Resource": "BzhDUjhKPwbwcvQU"}, {"Action": 23, "Resource": "kG8bXGFmPAnOkDiJ"}, {"Action": 34, "Resource": "zOj84O6tgohjtC7b"}]' 'zjPpucddXJ5zifF8' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-v3 '49' 'xpE7BYtzB0B4CxyQ' 'rUpIFvORxTi79DpS' --login_with_auth "Bearer foo"
iam-admin-get-user-platform-accounts-v3 'jb39ukcR6c2E2r3v' --login_with_auth "Bearer foo"
iam-admin-get-list-justice-platform-accounts 'k3IfAKEbqcNXSGCC' --login_with_auth "Bearer foo"
iam-admin-get-user-mapping 'vNowNmdpcJgF88yS' 'Nq4Mj7mulP4tQ6R1' --login_with_auth "Bearer foo"
iam-admin-create-justice-user 'OqKVOTniBgLsNhdg' 'Q0JWZjNRSzOTqcVN' --login_with_auth "Bearer foo"
iam-admin-link-platform-account '{"platformId": "X3ahvxw9gwwhTnjN", "platformUserId": "6wKZGW4y3f0R9s2k"}' 'ndhhZhwAiLsZs4pm' --login_with_auth "Bearer foo"
iam-admin-platform-unlink-v3 '{"platformNamespace": "LDIQch4IjDq9aT3q"}' 'ZyI0rYsWucAkXsVJ' 'bXi7eRZa7WwIc895' --login_with_auth "Bearer foo"
iam-admin-platform-link-v3 'ImqK6tVsaUq3stUh' '5J5Z9GiBiSAylX5c' 'S0IeHpWCugmfOL0Q' --login_with_auth "Bearer foo"
iam-admin-get-third-party-platform-token-link-status-v3 'QpxsuD8PGqku59eF' 'JrOXyDYz9vMUOPG0' 'iHDT8QbF7gHPTPQb' --login_with_auth "Bearer foo"
iam-admin-get-user-single-platform-account 'vLt2NRqJGIKzLyH1' 'y72L13Ornyx34luL' --login_with_auth "Bearer foo"
iam-admin-delete-user-roles-v3 '["dvtsTKXMjiw6gYPv", "fn2Qt9iyq3Nyk8nc", "u2Z3eDHH9WaVO4iK"]' 'hDcJ7TCcNIsQ3Pup' --login_with_auth "Bearer foo"
iam-admin-save-user-role-v3 '[{"namespace": "pUxDSK8aOTGMudcx", "roleId": "lCV4cNbJGQ57lPdi"}, {"namespace": "npjS2DRfGt9GlyZV", "roleId": "Q4X67tPZSTpPq3xj"}, {"namespace": "rElvvDgw0ag7kSWE", "roleId": "0Hiqm5IuLryiEXqv"}]' 'UWDjU1G0EVjVZw1T' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v3 'oLuPakQN1MpOs1RV' 'Frcg2CXxepx78fvs' --login_with_auth "Bearer foo"
iam-admin-delete-user-role-v3 'yhE2BKtyTDSIM7mk' 'mvZ7Cmsh4US8o4jf' --login_with_auth "Bearer foo"
iam-admin-update-user-status-v3 '{"enabled": true, "reason": "fuc8VOsnmnlVljdW"}' 'YmELe74p38vumnxA' --login_with_auth "Bearer foo"
iam-admin-verify-user-without-verification-code-v3 'nYBTxaTIz0jcgDI8' --login_with_auth "Bearer foo"
iam-admin-update-client-secret-v3 '{"newSecret": "Pkz96vd80msqIm5b"}' 'ufnBqrpLeqhwVhjn' --login_with_auth "Bearer foo"
iam-admin-get-roles-v3 --login_with_auth "Bearer foo"
iam-admin-create-role-v3 '{"adminRole": false, "deletable": false, "isWildcard": true, "managers": [{"displayName": "MEmtbiWsAQHbMrKY", "namespace": "i0Zxs5SWCqZXHLLa", "userId": "31oQf7BULnZDhutD"}, {"displayName": "M6BqguqD5xxGxBWt", "namespace": "nTKUe2znsqPzPkwC", "userId": "Bo2SwCUsTag4MLAo"}, {"displayName": "3m61P2xaNfmn8Onb", "namespace": "1a9gMz0F2UBRmMhA", "userId": "bUWmFhdYLWzMuv3z"}], "members": [{"displayName": "kUY0n0BAZkwbYkBL", "namespace": "yO6A0FqfhnaB3YxK", "userId": "NdOTacCcJfIfXshu"}, {"displayName": "LUk5WdpxjZx5noXP", "namespace": "hPUTKbonoucNmzwO", "userId": "ZOK56sDkci5rZ8iM"}, {"displayName": "lOuksQJCiRFiZWwJ", "namespace": "7NrTb1XTB9YQzUJ9", "userId": "XlYJ8BzP6EUmUXGM"}], "permissions": [{"action": 57, "resource": "anIloyj9lhbvuQdW", "schedAction": 17, "schedCron": "jwKUckc794ryY91l", "schedRange": ["X8DD4MYXlrJ81lHv", "v9rqvEoM8YmVjAkO", "3HKsEp6KlqwW4djr"]}, {"action": 10, "resource": "M7tuL81lsR7xxSVp", "schedAction": 5, "schedCron": "Gd2TK0HzYviTgYmx", "schedRange": ["82JVBRLPZ6Iz8tne", "5dbguBF6Gsvvdl8j", "Hz9x7XZIjU4IK9lO"]}, {"action": 77, "resource": "hTLEEBGTtZyTjdKN", "schedAction": 76, "schedCron": "JjoEEXBLIxGnNuho", "schedRange": ["JM3WWPvvCiCf33Vi", "EdqQpoGkUWNizk5U", "cPAGv6c1ESC6hZYT"]}], "roleName": "YZbzf5aANNNs5kgS"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v3 'ZZNUHbIT9szApmWJ' --login_with_auth "Bearer foo"
iam-admin-delete-role-v3 'O5vzzXZj08a6K1XR' --login_with_auth "Bearer foo"
iam-admin-update-role-v3 '{"deletable": false, "isWildcard": true, "roleName": "NvBQZSJPOIKrRBrY"}' 'Vzi9ui3lvozTt9Ts' --login_with_auth "Bearer foo"
iam-admin-get-role-admin-status-v3 'H7A0TuU2aL4bPkk1' --login_with_auth "Bearer foo"
iam-admin-update-admin-role-status-v3 '1sys6GdkDcos5uVJ' --login_with_auth "Bearer foo"
iam-admin-remove-role-admin-v3 '0BJfZ0jvA54CSqZF' --login_with_auth "Bearer foo"
iam-admin-get-role-managers-v3 'DsO1skRjOU1SMfQV' --login_with_auth "Bearer foo"
iam-admin-add-role-managers-v3 '{"managers": [{"displayName": "Qa6blj9Rdd85bdYU", "namespace": "umPKVSZCg3XTc9vQ", "userId": "e0dHJfF6KIuvnRCa"}, {"displayName": "9JktyBdxkZKrEWFw", "namespace": "9GYxjiiOQAD77ci0", "userId": "vfWVZoRRMPi57HyK"}, {"displayName": "Kz5nyI6ulKNKoXa0", "namespace": "dgx1JgjC56pda3Yh", "userId": "tQxpCYME6x21pdX2"}]}' 'QSPAd9sxoLnWGP1P' --login_with_auth "Bearer foo"
iam-admin-remove-role-managers-v3 '{"managers": [{"displayName": "afIjLX8ce0KbNN7Y", "namespace": "cl2JfmQplvGjVQ4a", "userId": "ebjfgGu472oWJlfg"}, {"displayName": "lLM4xjfkNL4lU6ja", "namespace": "GfsD1cfswmeFpvtD", "userId": "tetoQVFL8LNW11vt"}, {"displayName": "paTxi7k489jRCn48", "namespace": "bvkCPfKofwXOIZZQ", "userId": "AJza84lKKmVOaTS6"}]}' 'xBbNrSUAW2ak7ISD' --login_with_auth "Bearer foo"
iam-admin-get-role-members-v3 'rBVg6NuDZvPb1kuU' --login_with_auth "Bearer foo"
iam-admin-add-role-members-v3 '{"members": [{"displayName": "fNfUDe4g7q6PHEaq", "namespace": "bzHvDDl1jiLw3XMG", "userId": "BA6JXDpA1tIC45C0"}, {"displayName": "oaGouFu4hXONgUwJ", "namespace": "nUpryDeRcpUvlrw2", "userId": "MwC1uuokpaIjL0Vx"}, {"displayName": "e5n9Lx3QcFo9gxOg", "namespace": "vDc7xMrRKvw8ISP2", "userId": "WKmCRRXBxlalCHtW"}]}' 'lKxLpS8fLWoQ5nuJ' --login_with_auth "Bearer foo"
iam-admin-remove-role-members-v3 '{"members": [{"displayName": "hatQPxR7dvBVC5zg", "namespace": "OKLTDmHe8c1eJ9sd", "userId": "e7Ryt4udIv22M18u"}, {"displayName": "ux9xBomQFPFWy5cw", "namespace": "NPI6aFo0MVwDZCIX", "userId": "FNEL3uWVRz3V7YbJ"}, {"displayName": "M3bNLWHAbCZixe2c", "namespace": "Q6O30lpzcBQMAEcN", "userId": "cJqrKxnMzSYoc4Zj"}]}' 'iMY4H34B6wVd8ipc' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v3 '{"permissions": [{"action": 75, "resource": "cYHbrryHB6GO9zP3", "schedAction": 64, "schedCron": "MO3AfmOS5mQNyRPZ", "schedRange": ["FPNP56l1AT6OLKmZ", "hCZxxPPdPwOtEuWB", "SO2jJepUnEEgja2m"]}, {"action": 72, "resource": "8yq5E5HleLoog4me", "schedAction": 81, "schedCron": "W4tKt6G3j9LYdG7x", "schedRange": ["VPqBqe9RDQMBSYAF", "Lqp8PF5hCcoukWpn", "bz4ys7j6lxuU3u2H"]}, {"action": 63, "resource": "LarjaLOKnX51yAB8", "schedAction": 86, "schedCron": "S8YLmwtYgWGcA0h4", "schedRange": ["G1LZ1HaX5UBMbsF4", "4VTsLDRzdq22cbny", "K3ggFDh2kaZP7pnn"]}]}' 'VfxPwc259HF9ejHa' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v3 '{"permissions": [{"action": 71, "resource": "h7GAi4FEIu44u83Z", "schedAction": 77, "schedCron": "24ouSgkpK70uJmUL", "schedRange": ["0uzElixc023dIvDi", "A0tQWlHwBcTtztx3", "VAl6tXFbnATCzUOI"]}, {"action": 53, "resource": "mKgE8CZ4AELr5lra", "schedAction": 0, "schedCron": "lGQJultJe32AiwKa", "schedRange": ["dEoIVmprwPsa9YD9", "2CX0rITajpwHITGe", "HTnqRbzBB9ZFgJbQ"]}, {"action": 25, "resource": "Fj1umx4ItzkMJ7cu", "schedAction": 6, "schedCron": "HooOIaxIpb1cIOJP", "schedRange": ["S3lJ80YJ41U4ooQ9", "80ywmg1pWpWit1QC", "7FKe0fnHUlmU1unG"]}]}' 'KM0tgfeWy47bbwMI' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v3 '["4gGmvK9gW596FwBN", "rFXt3TAuKBwBcD12", "ae6r3hHwya4NpdOz"]' 'g3hr6ucHf7dbh2iK' --login_with_auth "Bearer foo"
iam-admin-delete-role-permission-v3 '81' '8lHEbVDwBAqanOls' 'cRIWw82k5K5VTkdu' --login_with_auth "Bearer foo"
iam-admin-get-my-user-v3 --login_with_auth "Bearer foo"
iam-user-authentication-v3 'bkOFldMCQ98JH4n0' 'JtgqzZv5kVu4S95m' 'j8YRvae4f4lhBPba' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-authentication-with-platform-link-v3 'rbWEm8bVtZcfVCPd' 'Qhim9QKUAFTVYelI' 'lGJg9wdc8bihhWjf' 'ZpfcFBUsnnDJlmD1' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v3 'iEokbUiYzCQh2iNT' --login_with_auth "Bearer foo"
iam-request-one-time-linking-code-v3 'wtnohddMzMTQ9P7s' --login_with_auth "Bearer foo"
iam-validate-one-time-linking-code-v3 'YLDWAJOA75K4BYJ2' --login_with_auth "Bearer foo"
iam-request-token-by-one-time-link-code-response-v3 'fkqYJoF2FI3vyyqR' 'zc20O7FdsJP1G9ty' --login_with_auth "Bearer foo"
iam-get-country-location-v3 --login_with_auth "Bearer foo"
iam-logout --login_with_auth "Bearer foo"
iam-request-game-token-code-response-v3 'BTfERXdvgD1Qf7Ot' --login_with_auth "Bearer foo"
iam-admin-retrieve-user-third-party-platform-token-v3 '2DkUt3yexZBRvxYn' 'EBhXtAVxCd3meTrT' --login_with_auth "Bearer foo"
iam-revoke-user-v3 '7cF9oVCh89wNOkKY' --login_with_auth "Bearer foo"
iam-authorize-v3 'ssVejcL3kR3hCGNg' 'code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-introspection-v3 'hGAYOHR5BWa9VzIk' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-jwksv3 --login_with_auth "Bearer foo"
iam-send-mfa-authentication-code 'aQEl1iUProNB6hI6' 'IpGcToWgFvdRhG9N' 'wV3zDuqVlVTypcYP' --login_with_auth "Bearer foo"
iam-change2fa-method 'K8IxrSZuxWl0Je4f' 'JIyFAm3DQht4JwnP' --login_with_auth "Bearer foo"
iam-verify2fa-code 'S2urJqerobWMZGVL' '5KLTxahWlS6XdBaK' 'SLCgOOPXM6XTUh2d' 'true' --login_with_auth "Bearer foo"
iam-retrieve-user-third-party-platform-token-v3 '90yqHDNacl4F9G6D' 'l5TFwBY6HKXAblkT' --login_with_auth "Bearer foo"
iam-auth-code-request-v3 '8VGgSH8MGZGwiVj7' 'eDTaka9ABfX1IByP' --login_with_auth "Bearer foo"
iam-platform-token-grant-v3 'EOuPhGspRi3bhPQv' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-revocation-list-v3 --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-revocation-v3 'BBJI5JxytpcubN4A' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-grant-v3 'password' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-verify-token-v3 'UPFPscZsXeJOD4DM' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-platform-authentication-v3 'tqfIGiGJovgWSRxZ' '8N4UQ2fg3V1o2x0h' --login_with_auth "Bearer foo"
iam-public-get-input-validations --login_with_auth "Bearer foo"
iam-public-get-input-validation-by-field 'L5DuBDqMyIAzWze9' --login_with_auth "Bearer foo"
iam-public-get-country-age-restriction-v3 '4MEdJFAy2JTllJkR' --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-public-v3 --login_with_auth "Bearer foo"
iam-retrieve-active-oidc-clients-public-v3 'GB8jqJEd6eqqsBVy' --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["ONV0JRtozI0jpliC", "FQ6WgJpGPigdc5Vy", "C4qvWjVac1cQvSxg"]}' 'TNIUzxDgBlIbuzm7' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv3 'DzJ20NFRJIhFXR2d' 'YprPmbpuptECGd5c' --login_with_auth "Bearer foo"
iam-public-get-async-status 'dXC2Sesc6y68whNB' --login_with_auth "Bearer foo"
iam-public-search-user-v3 --login_with_auth "Bearer foo"
iam-public-create-user-v3 '{"PasswordMD5Sum": "Yl9iCqfW6rqGOQny", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "ij4ysYPonb59gQff", "policyId": "kNOmubxEJr2qEAuJ", "policyVersionId": "bpZSrcbc4LWfKaY5"}, {"isAccepted": false, "localizedPolicyVersionId": "hkLe5zohg9s9utRQ", "policyId": "t28b6o3K0COF74tz", "policyVersionId": "6aeXZOYwbwjMNdxK"}, {"isAccepted": false, "localizedPolicyVersionId": "lBfnRyFS0Ed7gTM5", "policyId": "AVrtBQiDTcNnZa6Z", "policyVersionId": "uxk6u6HXXdiC9ZDj"}], "authType": "4E4mv12FNXypoOLl", "code": "13j84P0KqirJ4PkM", "country": "FtsnFfz8Ew0X8fBu", "dateOfBirth": "BSKLSQ4GvLtz50D3", "displayName": "rpBfBovqLwXBuT30", "emailAddress": "EYeRj17xGhaBKoUf", "password": "iHjGmCyPsKCJTv1i", "reachMinimumAge": false}' --login_with_auth "Bearer foo"
iam-check-user-availability 'vx3BHuTEczr9KjQ3' 'ttz8MTBt1xk9Iyss' --login_with_auth "Bearer foo"
iam-public-bulk-get-users '{"userIds": ["SA8nP5PQjpzk2Tb7", "iYdmNZWosrsVBPZ6", "4j0HUONscofwYLQc"]}' --login_with_auth "Bearer foo"
iam-public-send-registration-code '{"emailAddress": "DvkaEIIPoJT83zEG", "languageTag": "XmVBZLyrH9J7Boys"}' --login_with_auth "Bearer foo"
iam-public-verify-registration-code '{"code": "maORLkP5hc2Fh04J", "emailAddress": "TsqDTynCewqJligL"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v3 '{"emailAddress": "lRxOelKykICRxF6H", "languageTag": "tlER2txs4qrNARAT"}' --login_with_auth "Bearer foo"
iam-get-admin-invitation-v3 'n6KXOutlYBbLhL8K' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v3 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "pqWb51y5RUzvMfTk", "policyId": "Py0fGvTGgfLKsg0b", "policyVersionId": "1Bq78cE5O5pmPnbi"}, {"isAccepted": false, "localizedPolicyVersionId": "J9j4vxmbH3rVaauu", "policyId": "fxkPHElug48TgfNu", "policyVersionId": "0rqXUOyToLPIREGI"}, {"isAccepted": false, "localizedPolicyVersionId": "yPl3dKF7NXEjrJMk", "policyId": "i8jvc3P8Gwjg3IOH", "policyVersionId": "0SDHgYKqxJiFJdrm"}], "authType": "EMAILPASSWD", "country": "zoiBnYi5UWs3tYlY", "dateOfBirth": "eMoCimJySocRvUWD", "displayName": "OrFZKPNoN9AWtLK9", "password": "TFgi9j2XMh9Wpifq", "reachMinimumAge": false}' '988NzxrDKVpULjji' --login_with_auth "Bearer foo"
iam-update-user-v3 '{"avatarUrl": "w3NeVG4DJi9DaMrc", "country": "0WFgKjE945x2CPVY", "dateOfBirth": "YG9WvoGmAmvaVV5Y", "displayName": "fxnUNcwjr7gSGhnf", "languageTag": "uF4WZiQVICVpWd3U", "userName": "M08gMXhdf3juXW4J"}' --login_with_auth "Bearer foo"
iam-public-partial-update-user-v3 '{"avatarUrl": "prIb3CJCAtvSG8Cf", "country": "a9dzOJDGCTHIOFje", "dateOfBirth": "XbsSgR43kIDzxBwq", "displayName": "RJTzrHNZWUsq5lQo", "languageTag": "2jy29EJigqYhyVhU", "userName": "Rx1yPeczRpdk0HAT"}' --login_with_auth "Bearer foo"
iam-public-send-verification-code-v3 '{"context": "Gylx2JG2KNGfhzfC", "emailAddress": "TxxrsRRLee3TcJ7D", "languageTag": "QIi45aCDHN9mVug2"}' --login_with_auth "Bearer foo"
iam-public-user-verification-v3 '{"code": "zkVf6KgpKOcn3tMD", "contactType": "9UT67bOwugFDa6wU", "languageTag": "QvehKqwCh86XmRkC", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v3 '{"code": "OEAEtbag82KgBgyC", "country": "d5vjkfz3eR4DtNp1", "dateOfBirth": "29hzBw3xLUcCEt0D", "displayName": "zmkJq1sml5bYt76B", "emailAddress": "Nsi4giR9434WpKKd", "password": "zxoufCNlFoOcWQQy", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-verify-headless-account-v3 '{"emailAddress": "bjmQeEweoBHTdwAk", "password": "7ZQnbqY1cQwVEtAr"}' --login_with_auth "Bearer foo"
iam-public-update-password-v3 '{"languageTag": "5kKKAo9MM2Cqm84j", "newPassword": "Vi9kIpqgrzpUkNOB", "oldPassword": "WydXV0Fi02aFr8CD"}' --login_with_auth "Bearer foo"
iam-public-create-justice-user 'apjwNOl4k8rVNrm8' --login_with_auth "Bearer foo"
iam-public-platform-link-v3 'drv8QD2JOe2Ntz7E' 'FvowPgIGuetxFMqX' --login_with_auth "Bearer foo"
iam-public-platform-unlink-v3 '{"platformNamespace": "CQMAqQ2ZRGzNtrTh"}' 'Fa9XU8mosluiHZJ7' --login_with_auth "Bearer foo"
iam-public-platform-unlink-all-v3 'O8sAQ32wj9uaDzsr' --login_with_auth "Bearer foo"
iam-public-force-platform-link-v3 '9xYiWRuuzQJiLc1e' 'I9w3JEhxPGbEk7s7' --login_with_auth "Bearer foo"
iam-public-web-link-platform 'gw07FlounC3vJKBC' --login_with_auth "Bearer foo"
iam-public-web-link-platform-establish '7SwgoViPeIB4Ehy0' 'Y5aSJVDginxAM77e' --login_with_auth "Bearer foo"
iam-public-process-web-link-platform-v3 'Y9C14FbfiI2NPvl1' 'kCY5bEokxXxkWZbj' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"code": "f7GZxaossQmjo69w", "emailAddress": "ohJFyTNk5FGUPhR4", "newPassword": "LEZvz3EjFR7996Ug"}' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 '5m4axDV5uTcYsoah' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 'UrELQ1btjJOqQMgZ' --login_with_auth "Bearer foo"
iam-public-get-user-information-v3 'WAU6E92nHJzvw7tn' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 'YtGfv0EJyjBu4Ezw' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 'RjD7jmQJeFPghqam' --login_with_auth "Bearer foo"
iam-public-list-justice-platform-accounts-v3 'Sc5y0X48eT7Mluex' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "k87b9Z5BTsEA3Edm", "platformUserId": "W8saabP4xRowfNoj"}' 'zPXI2v0prR3OEey0' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["MkZwS6TYwNN3UYhi", "c03qGEg5fNzBVrjo", "3g8CfRwtyl1HeT7V"], "requestId": "EPgG40QyXzsOzgck"}' '078IghoQBp2mWAOY' --login_with_auth "Bearer foo"
iam-public-get-publisher-user-v3 'ksczxBS0OBCa2vWa' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 'dLmQtYKmEMzicbuL' '2S3RiW8dLTCBfGUd' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 'VEdvdQL7sVwcZ2Po' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-public-get-link-headless-account-to-my-account-conflict-v3 'faJoSqtrEOqxH46f' --login_with_auth "Bearer foo"
iam-link-headless-account-to-my-account-v3 '{"chosenNamespaces": ["RTSZoDdT0fefo74e", "g3Nt2c0r4GqF0NHg", "lOVuNZ9LzNeJnBur"], "oneTimeLinkCode": "h54CWbYb0Pebyt8b"}' --login_with_auth "Bearer foo"
iam-public-send-verification-link-v3 '{"languageTag": "4DGscjwrizsFUgYw"}' --login_with_auth "Bearer foo"
iam-public-verify-user-by-link-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler 'baLvqvQ2NbmDITuy' 'mTBjn3d2sFzMS3Qa' --login_with_auth "Bearer foo"
iam-login-sso-client 'VjZF7Ax6115Kg9U8' --login_with_auth "Bearer foo"
iam-logout-sso-client 'vrQJXQxoIbVi2CLE' --login_with_auth "Bearer foo"
iam-request-game-token-response-v3 'k277Ivjj1A647XQ3' --login_with_auth "Bearer foo"
iam-platform-token-refresh-v3 'koaAfZIim0sFPm1Y' 'N27bojDVaZLpx4kE' --login_with_auth "Bearer foo"
iam-admin-get-devices-by-user-v4 --login_with_auth "Bearer foo"
iam-admin-get-banned-devices-v4 --login_with_auth "Bearer foo"
iam-admin-get-user-device-bans-v4 'WYkO6KrKUMhJrASB' --login_with_auth "Bearer foo"
iam-admin-ban-device-v4 '{"comment": "h61hmWKSSrF35anD", "deviceId": "Gvur19V18oIrUKXt", "deviceType": "tgAI2QdWJFLmoPEg", "enabled": false, "endDate": "be4Cf2HEHvVevhIS", "ext": {"jbtBJUK5fE3OufPS": {}, "X3PdOU2V9yw94oa8": {}, "UJ34TIedV3HyoX4V": {}}, "reason": "nO2LpBU08wfnlHBX"}' --login_with_auth "Bearer foo"
iam-admin-get-device-ban-v4 'FIqFUmgUSMM5au8G' --login_with_auth "Bearer foo"
iam-admin-update-device-ban-v4 '{"enabled": true}' 'T0mkVPI6zUtf3QaJ' --login_with_auth "Bearer foo"
iam-admin-generate-report-v4 'PGrTNcXXTUIggoH8' --login_with_auth "Bearer foo"
iam-admin-get-device-types-v4 --login_with_auth "Bearer foo"
iam-admin-get-device-bans-v4 '9QNmI17UDb19R6H7' --login_with_auth "Bearer foo"
iam-admin-decrypt-device-v4 'r1ta3m7jK5pxe82p' --login_with_auth "Bearer foo"
iam-admin-unban-device-v4 'gFiAS6piIzmc8rKr' --login_with_auth "Bearer foo"
iam-admin-get-users-by-device-v4 'KEPGSAcong6eNERU' --login_with_auth "Bearer foo"
iam-admin-create-test-users-v4 '{"count": 11}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["Oau6syme06c6SKLc", "2mEC3IXl5XCbkOfH", "aGr5kdazlypvt6lS"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "LfU7HByGXPMqxj4h", "country": "BgVY3YAxZLKbcOdy", "dateOfBirth": "jqf6Q4oiwoJcaRME", "displayName": "b15LBlTVufc5ZyOD", "languageTag": "R2NVyn4PRqf3eRbZ", "userName": "qBAoKGcVCdMiSNV4"}' 'qBrt1kcLmRv6EJtl' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "5xWnsb8oWq94RImN", "emailAddress": "WVIJnhhwFDV1Vita"}' 'omvWTzdsW4N70wYS' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 '4Kj7Yi2VvoQNW8Yc' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 '481dYdvGxJAMDRA1' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["LF7jdWlekFwO94VB", "CV9qJhWva2FPBujX", "0geYCpGJM4sqsPNJ"], "roleId": "MiZXXOFwmGWAvNF0"}' 'Z0GkwxUNYyNwGiKr' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["knH0Y5mrQgLC6D2q", "sFiQHglUQMZi5WjM", "ZfOadpgegCUjTdi1"], "roleId": "Ehr8OtqpNJ9R8TuN"}' 'y4ejmVA3vMCsGyPd' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["12B8QNUz0hFFNbH6", "j2W4roZM2UKAXEEs", "L5D0oiFchQnVeq3g"], "roleId": "2AB2WIRUQmauIY5H"}' 'XCZ0W4XmWP0HzSdi' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "AldDSUS7Haa6unq1"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 'yQOSRvyiLBRVtIDi' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 '2piIQFVmzMidw70K' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "pYZdKZRyR9AX7Jjx"}' 'vNZhM84DiZk6ySrB' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 57, "resource": "SVFctW7YS0OkL78X", "schedAction": 9, "schedCron": "wEacQMTlqN4LKkxJ", "schedRange": ["5v3SBafnKNiMPbFk", "FGA85W3HJkqgS2B3", "7wwoPYOHiIsxmsLB"]}, {"action": 86, "resource": "QaKyevWYtZjK6J29", "schedAction": 43, "schedCron": "88ZcduZSe7W20UZc", "schedRange": ["Daiq0nEZ7PyhqFJk", "DClOsKmfsgJdmzsD", "PsWh1k0cQ08NG6dX"]}, {"action": 60, "resource": "TZkil67kRngoUa83", "schedAction": 63, "schedCron": "VgbPzPFbrOMZMgWk", "schedRange": ["FN7Tpkx6GcfyOg6Z", "Urrp9ubg9mndW2JK", "mQafUs2bxYztOEyV"]}]}' 'bKIf1ZbzgUwd8DHo' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 59, "resource": "lgjzIhpgOoIOD74V", "schedAction": 42, "schedCron": "HWDAfvXwdxbyp4HA", "schedRange": ["PbBbNPStVBUpKgOs", "sFkz0F36piDYXeHZ", "7FHls3nyvconqbHQ"]}, {"action": 33, "resource": "6GjCWaP8huTmnq3F", "schedAction": 66, "schedCron": "ncp5LrqbiKudv9z7", "schedRange": ["5SzoCV8ZMi2o1nR4", "82D6gNClk9c87hos", "aPFC5zBW3ZgVZCj9"]}, {"action": 84, "resource": "S029BiJWOG1m7MKc", "schedAction": 23, "schedCron": "5XTJTgCNNH7RtG5X", "schedRange": ["mo9Q0Wb07N17fkxZ", "Sc6VbE0AGcekjMNH", "uPXtz8tXxrmzafMU"]}]}' 'guyDoN91uc28HoSp' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["Gt1g0GGbT4Hf2PPK", "OldkbgX9CWJKwXXS", "bv5eg9q86IaDFjjx"]' '6uZerWbtwTX9gNRB' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'yjbE8lOLAfTXKLzb' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["rddqcKLa7LevxNHO", "SEhQRZIp693lRwtc", "43atCuCFxbfbz4aQ"], "namespace": "ERziPL4dHhOqG5KD", "userId": "dUvk0LEi26Ls7mjR"}' 'xNmvvNtjJNQepUTG' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "hwlY4lPzlsCR5rVs", "userId": "yfcH7WjP7HuGz3b5"}' 'WAEvdRF9bqMj4ro5' --login_with_auth "Bearer foo"
iam-admin-invite-user-new-v4 '{"assignedNamespaces": ["B19VE838c7OydVw0", "zCqoMZvpIOO97DmQ", "5ZOzx6iCJTu60Iif"], "emailAddresses": ["zMhkk5PxsjqbCKpM", "v2Yky9DYkD2sIllF", "tBtXJKG3rqBmILht"], "isAdmin": true, "namespace": "m8RQvRUbUDSiefGE", "roleId": "dLucrtO2gCQD057D"}' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "rDlgC2nzS9SiGUjV", "country": "Aw4v3q6JRHcn7Kao", "dateOfBirth": "CEkRdo6qHYIZWnXq", "displayName": "Q1oHFJ9Q0vqsL9So", "languageTag": "mqWsGA76yxi0QzZW", "userName": "fmP2sx0KO5bEJaPn"}' --login_with_auth "Bearer foo"
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
iam-admin-enable-my-email-v4 'AFjsodyJQVVBrShG' --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 'bIIuqK8C403HgoXC' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "XOMXwKdfqk8T4QHK", "policyId": "30EX0FclpDl5Hsur", "policyVersionId": "acO5MnjnxD1OXkxS"}, {"isAccepted": false, "localizedPolicyVersionId": "WWaYvBLE46bpuJip", "policyId": "8JyxJ39vrtuWWrqT", "policyVersionId": "ZbSqBSKp8AmgwhYz"}, {"isAccepted": false, "localizedPolicyVersionId": "NyT4k3DIbfT22G5N", "policyId": "pE130YWSgxpKWtdt", "policyVersionId": "dtVW9anENmxb9e7v"}], "authType": "EMAILPASSWD", "country": "ZV3ig8Jg5VByeI3y", "dateOfBirth": "cMcYYBixKJXCISQd", "displayName": "wec1m8BusV9tUh74", "emailAddress": "KVo6Xqjz2xUKLNWS", "password": "mYyVvyelIJ8QgaLM", "passwordMD5Sum": "qi836ULa7cfZl4Vu", "username": "Y6rsZyo6CBRRnoOi", "verified": false}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "IxXKKIR6kPmswm5T", "policyId": "CAU1cKApdJDnE73G", "policyVersionId": "LmSZns5owBhoUg4L"}, {"isAccepted": true, "localizedPolicyVersionId": "AEAHQpBOgHEP5l94", "policyId": "s7CbIJ7eHnVWOboM", "policyVersionId": "kyB7FTexsOZ0b2p3"}, {"isAccepted": false, "localizedPolicyVersionId": "RGdmXxETLEQrr3KC", "policyId": "AV9alq3hK1G4kKoo", "policyVersionId": "SNNUZuiynZ64Iwnc"}], "authType": "EMAILPASSWD", "code": "S2FgarY903INGIyE", "country": "fRBEj7qms9AGQExP", "dateOfBirth": "hgr9gGfC0GjvpgJf", "displayName": "uBs1Vpqn47GVghTH", "emailAddress": "2wToOnq9U5lyW89X", "password": "wt3wmRTrDCjhnKvs", "passwordMD5Sum": "HezWTqgYPixtHk6l", "reachMinimumAge": true, "username": "q6tEeUmU96FLEak0"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "UDh5yGjjv4Mwrv2v", "policyId": "ancmR6Z7rb21A2E9", "policyVersionId": "pX0BWCMqPsRk5htd"}, {"isAccepted": true, "localizedPolicyVersionId": "T3fDSrSHrkoqv2mM", "policyId": "6soMaTvQq2a9YdFN", "policyVersionId": "tRVSO0js0hG9xmSn"}, {"isAccepted": true, "localizedPolicyVersionId": "GpvHCDx55JZ5z6gu", "policyId": "jpFzlPspQD9IRIpD", "policyVersionId": "DubntPCFxfeoW2Nd"}], "authType": "EMAILPASSWD", "country": "SAS8MKMaxQ1QyJCp", "dateOfBirth": "KedhuzI7G9NCKKXu", "displayName": "1bqI2M5PmXfKnQ7B", "password": "YGjCUDMOrbmoRvWn", "reachMinimumAge": false, "username": "Dm5ge659UDEOF6gp"}' '5UfmjtiVbqJnZcrq' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "rPye7fCwi7Il2wIF", "country": "lHm9N6owMHMtJy1O", "dateOfBirth": "qn59tEGm9NYeUT5P", "displayName": "0nx8TqSZdZ5C8mFI", "languageTag": "9TnvzEqBNMF9CZvP", "userName": "xT5zbreMc9fBoU3R"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "HNDFjLKFrepy56eW", "emailAddress": "1kmb15QeIQF51c4M"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "qJzDSvELgBe6dboS", "country": "dhkBzAzPkt1efGJe", "dateOfBirth": "JaxyHYutgXucx85v", "displayName": "HA009FAb21jxeWXk", "emailAddress": "80y9uxgVLGgK8aVS", "password": "CN6oCETQ8gIDRdD2", "reachMinimumAge": true, "username": "ssMvy9gkfTMRrXVR", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"emailAddress": "ZpxaPHc9r8eToFmk", "password": "HJ6BPOKFLxIwKssw", "username": "647YwDudnGRufOUG"}' --login_with_auth "Bearer foo"
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
iam-public-enable-my-email-v4 'fMjTU226l07jPlcY' --login_with_auth "Bearer foo"
iam-public-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-public-make-factor-my-default-v4 'aqYM7YfBmhjI9Y28' --login_with_auth "Bearer foo"
iam-public-get-user-public-info-by-user-id-v4 'qVceS9UX48dKPCFU' --login_with_auth "Bearer foo"
iam-public-invite-user-v4 '{"emailAddress": "IeyYEymNXzNX6TGh", "namespace": "4UdEweeBsJEvBbAv", "namespaceDisplayName": "Cmlh6Z1oz9BaixUU"}' --login_with_auth "Bearer foo"
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
echo "1..357"

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
    '[{"field": "vmzbajE2gjooiDnc", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["VCsB7xL4axSPgPCi", "wLxCFLDixZwVtt3R", "VTl0tR00oQgcHdGG"], "preferRegex": true, "regex": "3x76U1EIcklttmrp"}, "blockedWord": ["gF5szl0sMY8es36r", "1FgR70eNLHkVrEFd", "8xArWJuCAIfNBSHg"], "description": [{"language": "pFNw9K9pmAIc6VSf", "message": ["E9nbE2PMv12ZSRJk", "ujxbCu1HFaj6Vxs3", "GuA4S1dS7H7yIS7b"]}, {"language": "5TSDRIoMg7Dc5APz", "message": ["fzXDELJFaIaEMW5b", "hJyL72WDyhBsCCbn", "fihnXKxGxaupnTTq"]}, {"language": "9ihZkvFKfSHQh8I9", "message": ["xk3sFl0cbuCRM69X", "KkLwioRaKnWhlh80", "BhYe2fJDS6T75Q4u"]}], "isCustomRegex": false, "letterCase": "lxUyrs3OSesE5p0D", "maxLength": 47, "maxRepeatingAlphaNum": 99, "maxRepeatingSpecialCharacter": 96, "minCharType": 14, "minLength": 20, "regex": "2Apm0sUy18aWn65C", "specialCharacterLocation": "o0vdCk8so6JSaZAI", "specialCharacters": ["adKDEZywonA2SrEd", "N2tmGuX6r0gBVUUe", "KKlPKtE6gnYxmkmC"]}}, {"field": "Wbs5qugklBUS6uwW", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["rg8tLAJWpcyNkUvq", "n6eXr6FNbKJ05Ory", "a6LSSUlugIAknXcS"], "preferRegex": false, "regex": "Hlf6IcX1K9JrK6Or"}, "blockedWord": ["2xx7rLwrPoWiywnx", "uDLLuIaSxoloIH1g", "BCWVFrvls0ZwosKh"], "description": [{"language": "DlLfTKxpVOXvGSrd", "message": ["kqddI3ezqu6FB0sL", "2xt6fX9j7rhZCAlD", "lVKBsLZiBRXszE7C"]}, {"language": "L1cQCSoqHvH7g63c", "message": ["Ox6yrIw37pKOLrF5", "i3gr3Cc4M2O7NrTQ", "O7KLdZDGwqx7T3l1"]}, {"language": "ut2oyolliYsTJUmp", "message": ["scwLcUml3KuoMKh7", "tprnacA34xmIOjFL", "gKR4LjEWhOScvtQ9"]}], "isCustomRegex": false, "letterCase": "wlDngNiPPjpSAlZw", "maxLength": 65, "maxRepeatingAlphaNum": 78, "maxRepeatingSpecialCharacter": 66, "minCharType": 29, "minLength": 31, "regex": "7GxxXdbYCRexPekT", "specialCharacterLocation": "sQxMTfaSot7aohFY", "specialCharacters": ["y4VxwHIJ9gzxqAw4", "vBGQAeh0VTiTP4PS", "rXUS6jYI9lsQFD43"]}}, {"field": "Df5qUZOFzpFd6b5J", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["ynjFZgF3erw7UsyH", "q4bBb0n1JhPUS8BR", "PGV9n769zLJdKMex"], "preferRegex": false, "regex": "gDAtqE3kuybwTQFY"}, "blockedWord": ["EJjIYwqfSRy8GgVk", "77fd1GS5YkyhAiAI", "tnWUmD225fp1egsx"], "description": [{"language": "3ErheNwqd5priclN", "message": ["NqLyrlzrJ4QHbfnA", "dtkujxHff7n1yaNC", "cjgFhS0URBhl0L5F"]}, {"language": "CbOn46W2B2uPQLrt", "message": ["2t6bVpCgKvPXSDuf", "mKh783cV54JsVBRB", "0rY0xfWddACyHSmo"]}, {"language": "4KX9TPO3K1k5ZM8b", "message": ["tmGsgXNXbpqxh76A", "f5JSwjw2fE2g6jXV", "7oai2oDm9FaP0HJ9"]}], "isCustomRegex": true, "letterCase": "pgEtchTe3nt7t9zt", "maxLength": 32, "maxRepeatingAlphaNum": 97, "maxRepeatingSpecialCharacter": 35, "minCharType": 39, "minLength": 92, "regex": "15LKmkQ7YBhsOuJ0", "specialCharacterLocation": "ypkkt2G4eFh2YNsd", "specialCharacters": ["oxpLTBM9Q8t829Id", "o1JyveSRiBq23kyH", "9jQbHWkcVk0X28GS"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    '54vl7gIKBc7OYTyl' \
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
    '{"ageRestriction": 65, "enable": true}' \
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
    '{"ageRestriction": 54}' \
    'nzZVnkLT0Lb85nmp' \
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
    '{"ban": "dN26BY5YI0jeO2zM", "comment": "DSy4kyqyKgrtEPdX", "endDate": "Xlt8geCdiXu3iNvn", "reason": "7vLZ7h6alhJNGZF0", "skipNotif": false, "userIds": ["lsPP5OfHbXzWnVO2", "U4uyzZo1rj0ZrLQj", "k4VoYfIksth24cZB"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "pdDFfvzeU5iqhx6z", "userId": "v7EURTNIoG1DBdoK"}, {"banId": "H6sREmmfwUZLZZS7", "userId": "snx0Q2Gd8m7Y3wiN"}, {"banId": "loJfey3HXL6SjljN", "userId": "PTXA3qbg55SyienC"}]}' \
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
    '{"audiences": ["ODZ0mnOpPTVxEgBF", "zG8tlkxWKCU1XN4g", "l7yHvEqpJSrDXVwC"], "baseUri": "khOQ161TFjROYJm7", "clientId": "5VIuCOCkt2W1DfI8", "clientName": "QtgODk9K6DcMnyCP", "clientPermissions": [{"action": 27, "resource": "csAHzD3dZyyWbUQp", "schedAction": 3, "schedCron": "buWiiA4UTDgS2SVE", "schedRange": ["o5M80LLbku9GYH4i", "jqOVM50tCqkZfsSx", "AbDJ7sHCLup8pmEo"]}, {"action": 37, "resource": "ODWGOLMmCZUeelXY", "schedAction": 49, "schedCron": "wVjc3W2ANmE3VVsQ", "schedRange": ["1fm9EUdiaRjuLsKZ", "oqnpKwhpZVdw5UMa", "8ymxtEFLwELCY2vI"]}, {"action": 7, "resource": "w7MHDwFVKUC2ecnp", "schedAction": 96, "schedCron": "VHUGcs1ACMvoY4jW", "schedRange": ["H9dFmOHW0j9suukP", "E4JwQONQ2vCbMn0O", "ia336uiiMTAductv"]}], "clientPlatform": "UfVwLahtRedh1SiZ", "deletable": false, "description": "y88rUFum2ZcA8iKc", "namespace": "F0bkfjcTEFXcTwEt", "oauthAccessTokenExpiration": 27, "oauthAccessTokenExpirationTimeUnit": "36nbfM3J9G40Y62b", "oauthClientType": "Co941ALznQuHVskf", "oauthRefreshTokenExpiration": 58, "oauthRefreshTokenExpirationTimeUnit": "t0w8LOBxE15JYj4I", "parentNamespace": "qWK09l4wkrzahXR1", "redirectUri": "sDEDVKDINE3HjCiV", "scopes": ["R1dQ8kuhb4pUwnGp", "tHUplxzaDa9PDwhu", "31d8eOdtrfq6ECDD"], "secret": "6OGkuLs9gNpNon6D", "twoFactorEnabled": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    'W9A6AmnQTNFidImW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'ONTvCPMGLdbYEknH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["PKrZ7TiNBE0HRsE0", "GHDOFjrfqJcyxT2a", "7fCFAUzLELiM573T"], "baseUri": "dtWjfVciuLnLsBKG", "clientName": "sALPuCOyphUUAV95", "clientPermissions": [{"action": 80, "resource": "08zaP0wpZgQEvFzo", "schedAction": 47, "schedCron": "B1yUonirH4URx3Nk", "schedRange": ["KQBYrlUaMiFEWUT8", "cAFO5zEw8GENEJYP", "KxxOw7xNQ98IEbc9"]}, {"action": 22, "resource": "ITN98j4P2AGeidXR", "schedAction": 90, "schedCron": "lHikKkpOjqwgKvfX", "schedRange": ["Xs8pDqm31AZSRkuw", "6q8FgqG46RsFK7eY", "lSU3vYcHZZjFegVn"]}, {"action": 73, "resource": "On0tk4IATSIefcqN", "schedAction": 63, "schedCron": "4KpYcb1AUsESaBOT", "schedRange": ["HnbX9tC9PQlFAGbM", "tEybfcAl0mnsAkRT", "2k0AzdgIunRkTxsG"]}], "clientPlatform": "drpNELM8Lfkut0wn", "deletable": true, "description": "24wh59RGSbBMh7jp", "namespace": "szuVk6iPdJ2boQqC", "oauthAccessTokenExpiration": 58, "oauthAccessTokenExpirationTimeUnit": "Dg4FcDwBGyBiHewZ", "oauthRefreshTokenExpiration": 21, "oauthRefreshTokenExpirationTimeUnit": "Mm74HlSZzp4aEW4G", "redirectUri": "kHG5OIVuGv47XJpk", "scopes": ["MiopQrVL3ZZTVxqa", "9XM2gY14iWk12Jff", "k8dwKNPUOHNZxML3"], "twoFactorEnabled": true}' \
    'uUqeuZh5qtrRbNnG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 8, "resource": "xge2inL8fBFP1ABa"}, {"action": 72, "resource": "mZXKEQLkM6o3eGSP"}, {"action": 80, "resource": "Htmr90TqGf0OyqJ9"}]}' \
    'ibJMmRgoxNwp1lGk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 30, "resource": "7DN2lDvdh7okHl1w"}, {"action": 80, "resource": "1NPO5Wn7rNG8rGp7"}, {"action": 64, "resource": "fAS09VyQB1vR1mx6"}]}' \
    'K17GL1CrO4ZuoGZS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '49' \
    'dncQkcZb8cWdVH9b' \
    'ww15zZsaYrJAe5Kd' \
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
    '5QB96ndlO6iPGC9R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "hzMC7V8BEphnRXnS", "AWSCognitoRegion": "pCzyb8FkoxQbrPng", "AWSCognitoUserPool": "i87K58pQswqKLutI", "AllowedClients": ["NusOsa92F6iwkJIY", "OLarmpWyvib9CDW2", "1ANrlpuXD9H1u1Cv"], "AppId": "zWPcZwkj1l6bf2F9", "AuthorizationEndpoint": "EXOBj7v8LHYivmD0", "ClientId": "ekycMKlwJTNL2UCW", "Environment": "UtaAD7ZZx1iefATW", "FederationMetadataURL": "cDSqGYRMdz07xEJ4", "GenericOauthFlow": true, "IsActive": false, "Issuer": "fh0gpABFBER6WNcD", "JWKSEndpoint": "OsRzBkf9A6HjCnFR", "KeyID": "dSihcvszzQLZBktk", "NetflixCertificates": {"encryptedPrivateKey": "0siMup01kyaFwwD7", "encryptedPrivateKeyName": "wecuQb4GNQHVZMKG", "publicCertificate": "Bnzh4suaGIzttTnc", "publicCertificateName": "VBf5g3oeuHiNyLkf", "rootCertificate": "PQPmjUkvSs5YmIej", "rootCertificateName": "ozmG5HlrIfMAvvpk"}, "OrganizationId": "AHRJHZyfrXZmiJX4", "PlatformName": "CjKCeIRIr997KKpJ", "RedirectUri": "XTLbYWpqeXjaf1f5", "RegisteredDomains": [{"affectedClientIDs": ["fjNMZjKJ05puX319", "7WrMnJtovSMFw8X4", "zxbdfXgunt1oMNZ6"], "domain": "8eovHSH3xV3URIRV", "namespaces": ["DYBd6hMB0l7sg7If", "MH5Tu1ky1ZYvyeHm", "foFkUDP864shbnQ3"], "roleId": "bVvuvpsDJXPCWkX4"}, {"affectedClientIDs": ["Kpi8CJ88aMPGFFAQ", "ZbfbmVTEbiRq5Jui", "kmpat75rVbN9ZBtz"], "domain": "J33tCwv8H1f451FV", "namespaces": ["Z630HNBYZSrz7pMj", "ESLLMPKDXLki6Oz5", "Bygt8Q0RjSf1srB7"], "roleId": "hGwGbUmQmJHNffZE"}, {"affectedClientIDs": ["Ns9X0hFMdzryvhc1", "YjHmmulSBIElc2Cd", "RvBb0aGnMt625bWH"], "domain": "b5sbX6asrjV7XJUO", "namespaces": ["tHlzXNHEPpzlMlx7", "b2H2THLwZGikW7TF", "A9gE6SrYKq6lcVOh"], "roleId": "PJIcEHbiKHW7flVo"}], "Secret": "lAWEMmQSPDTRqjlv", "TeamID": "wnnCA5tfK5ushaKT", "TokenAuthenticationType": "PVjyOUpR3uUdgNly", "TokenClaimsMapping": {"U4IJnqtrjCOsE8Vj": "vzhJwNX4bhqCjlwr", "msSRV86iic1FIMyF": "7CcNu2DYn6E9Gk51", "kOTJZluTekDMCGUJ": "vERxNg8djSb4Vt2v"}, "TokenEndpoint": "KQ5vlCdI519Pf2io", "UserInfoEndpoint": "gwxM5DZM0dgozmco", "UserInfoHTTPMethod": "41750xdYQg34WUV0", "scopes": ["WpmsQnp1n4YGumTK", "OlDOy5vhSkxERZ2A", "Q1jvXYBar5RMmmGd"]}' \
    'Wl0wpj5tVfKU3D8W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    'VPh0Z7YiGE2cyzTM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "BY7Xd0OoENg2Lw7u", "AWSCognitoRegion": "epmahXojVZYz2zMU", "AWSCognitoUserPool": "9jLzNV3GaG43R6nl", "AllowedClients": ["RPrEAYqRBeSc5uSh", "oj3dGHMeoi5DBOsQ", "0Gax0iX05IT9Agsj"], "AppId": "l5NmnSHhxNmCe4tx", "AuthorizationEndpoint": "Y0MsPc9EMgf9JCJi", "ClientId": "EvhL8ZfwCVJW9ysp", "Environment": "UOyHC9eKeXzrvzBl", "FederationMetadataURL": "lwzyC1aTWEmPgoy4", "GenericOauthFlow": false, "IsActive": true, "Issuer": "PrM24F3celFgM62H", "JWKSEndpoint": "QtgzQhO3nR8j8DlP", "KeyID": "6OGbn8vmfMYGLt1A", "NetflixCertificates": {"encryptedPrivateKey": "jKhh3JMX7xSrz1EH", "encryptedPrivateKeyName": "6X2SM3xzsNrJzWBc", "publicCertificate": "dFlo7oAsOlfLB1J1", "publicCertificateName": "9b5rTfiL2P3r1a8K", "rootCertificate": "IJH33aKkPuWD59Mg", "rootCertificateName": "Ty1HA58Jt5NaROjS"}, "OrganizationId": "KFEuZo2ElXYSS4ez", "PlatformName": "BRSiOyReviDaxlPd", "RedirectUri": "hwmcH03yoMxzRR6x", "RegisteredDomains": [{"affectedClientIDs": ["d9rTh3ureaIbxM3W", "ev9pZQjWAN0tny16", "ZHZtuSJGQCrM7JEM"], "domain": "RPkdTcAzkIlndN5x", "namespaces": ["eayr3vUKMuIiz2Mi", "AAKcvAXnxnH0QIho", "JRY807VmBT4wZXQZ"], "roleId": "ZrSsuYiIPei0pXgl"}, {"affectedClientIDs": ["JYnKkoCAZuolAWnx", "kImVbDP0QX31gI7V", "mnGIRMvXe6BiphIF"], "domain": "e2bzr6qQw6fSESkM", "namespaces": ["19OPMBb12gpmShlm", "It2nfhUaZGqjslu5", "9GT2E6AacmZRXZm6"], "roleId": "26POXWVj3KP1mX0i"}, {"affectedClientIDs": ["YHXBU3Uk2tQm307I", "ORTyHnLYDAAg1YA4", "kZURmoGgxVRMPf8g"], "domain": "1rbhfIMStMnSqrKW", "namespaces": ["YOuITlYS2RYaD9WN", "KGhbLhjz1v0RBIO2", "rkJGmPaK6HEVIQJd"], "roleId": "3930TGewjRyfo4nW"}], "Secret": "VZZbKFsKOmgEhjH2", "TeamID": "wFzCpxxJLfAg5cFT", "TokenAuthenticationType": "0gHAkltcR3eHFbiA", "TokenClaimsMapping": {"luHv7Hssd05pHBJX": "5ln8PZbYVD8RiaTs", "dD4d3kSbTkHPMUvO": "AUXkw36cr2WJQqS7", "Tq4YIyZAFQ6lZfa2": "jdNvpWf32JS1av9V"}, "TokenEndpoint": "NpVLT0LvqcfSdO1n", "UserInfoEndpoint": "AjY5FvADb3GUQgci", "UserInfoHTTPMethod": "632w6LUrHuKBoNTp", "scopes": ["PQXDNHto74GcmVf0", "fbCU9QdPuWeMEeL0", "EJG67g4W1eAmDxP2"]}' \
    '3qstMuikKc6VNU85' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["70siWm3V9sirE0JO", "QxWeHypqCWMDPRI2", "cCk8zHR8VyCC0EQw"], "assignedNamespaces": ["E0cXokXbwKDtVmrY", "Qu7hZvHfiT9s9pK8", "HuUY1QQHQ0NCEddJ"], "domain": "tx6GV01vD7lNLxlp", "roleId": "vqaB9P9GaukfCEIe"}' \
    'SBLhTfzigzHcRuJg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "Yaj4I8Dzyh1N0JEK"}' \
    'NoMtHvjM7X1fjzkn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    'v2HZMIL2P2bh14Lr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "oFTnAuujPeP9N0vd", "apiKey": "VB5a2XkS3XQfMuzZ", "appId": "h4AhZRe2hgU56xty", "federationMetadataUrl": "JtnbTDXu7FbleSP5", "isActive": false, "redirectUri": "KWNy2tnF2MifJR4h", "secret": "r4gdJDujYnVnFK6g", "ssoUrl": "B6ZxC6yYUVUJYnQ3"}' \
    'jOGmROIqxqQ0gcNe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'TflyvUh3w5ZtfwmO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "CKpFSMF0tfGIZCTN", "apiKey": "iIRc9fEjkZhEpAJM", "appId": "CxMp2J0hDg2kMgkv", "federationMetadataUrl": "hoQe9gD9tGN0nE7M", "isActive": true, "redirectUri": "mI9u3EeZtLQij2JX", "secret": "sqdXfhZTTaCeqGv7", "ssoUrl": "meuQhJuq1C6JHkWM"}' \
    'SUbqByWN2BCnRz9w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["2nur0B9jKaunAcyl", "sau7wRQmL4i3eRyI", "ECEDa1I4lwXqwPfq"]}' \
    '3VzHQjtolx64w1gy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 142 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'vjacKtGqxMnoAXRl' \
    'cq0mYWKQYlqMmu2p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'AdminGetUserByPlatformUserIDV3' test.out

#- 143 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'vF6rP03bQaq1cT88' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'GetAdminUsersByRoleIdV3' test.out

#- 144 AdminGetUserByEmailAddressV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-email-address-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'AdminGetUserByEmailAddressV3' test.out

#- 145 AdminGetBulkUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-bulk-user-ban-v3' \
    '{"bulkUserId": ["H6RCW8gJmGzDlqxt", "LsR2AGOiPhNt2IdH", "8aYYUT6mma833TDz"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'AdminGetBulkUserBanV3' test.out

#- 146 AdminListUserIDByUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-user-i-ds-v3' \
    '{"userIds": ["k66ix88sAUrXr7MX", "xCvyy7caxz4MQrOD", "LNlxiEjQBCZx9DJ4"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'AdminListUserIDByUserIDsV3' test.out

#- 147 AdminBulkGetUsersPlatform
$PYTHON -m $MODULE 'iam-admin-bulk-get-users-platform' \
    '{"userIds": ["V97SJLlrwXmIGamR", "CARuFLx4rV4CXVMr", "DYKe2eTf1axo16Gq"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'AdminBulkGetUsersPlatform' test.out

#- 148 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["T2vSLLiMvcu39YZJ", "ypWzpNXgnoKIz8O8", "NglJtZTh280vflFM"], "isAdmin": true, "namespace": "YRbP4QVey9pEz1TV", "roles": ["5cUtPBsw01i5Mf7W", "vbNSeeDNfUESLlwH", "v3JgteOLyKp8a1Vq"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'AdminInviteUserV3' test.out

#- 149 AdminQueryThirdPlatformLinkHistoryV3
$PYTHON -m $MODULE 'iam-admin-query-third-platform-link-history-v3' \
    'xXnRhDd9TGkO6aIY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 150 AdminListUsersV3
$PYTHON -m $MODULE 'iam-admin-list-users-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AdminListUsersV3' test.out

#- 151 AdminSearchUserV3
$PYTHON -m $MODULE 'iam-admin-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'AdminSearchUserV3' test.out

#- 152 AdminGetBulkUserByEmailAddressV3
$PYTHON -m $MODULE 'iam-admin-get-bulk-user-by-email-address-v3' \
    '{"listEmailAddressRequest": ["qftw1SrM2nhSEanf", "UYrMU6A43UKGpvC1", "cr5T1PSXhduTWchz"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'AdminGetBulkUserByEmailAddressV3' test.out

#- 153 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'XDv3TAtBjP4HSuiY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AdminGetUserByUserIdV3' test.out

#- 154 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "CbG0UyYUJmNL8p6A", "country": "bdtU0CDrlQpKB8qo", "dateOfBirth": "el2QK3aSOYdmMDik", "displayName": "c3Fjm9HoQDemtiQv", "languageTag": "URYZCeF30RT9rBgM", "userName": "8o7lxXq7TkdM7FVD"}' \
    'CBcvVegrZddP8lLQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'AdminUpdateUserV3' test.out

#- 155 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'o6tHj4z4cAM4LMJf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminGetUserBanV3' test.out

#- 156 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "WNZIxAgBpeubprKX", "comment": "68jTyRd3LrR1x6U1", "endDate": "v6zSLjm9zmzUW0vP", "reason": "j90jmLTt5YQGawco", "skipNotif": false}' \
    'dpdCqVeePMSqb8y8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'AdminBanUserV3' test.out

#- 157 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": true, "skipNotif": true}' \
    'JTUQY40Zrpn0vAD9' \
    'YsPeDWrAVQZSvgWu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'AdminUpdateUserBanV3' test.out

#- 158 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "CuLsUGrVQAbhS54Z", "emailAddress": "uQHKersDmJLUHAKt", "languageTag": "fXCKOna8DdjtZhh6"}' \
    'ofsUoRh6r0e0J6vy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminSendVerificationCodeV3' test.out

#- 159 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "qPw7YlmV3kES0Hi8", "ContactType": "8UYgSV40OvY7apPC", "LanguageTag": "rN5bEhmuHgKeWizE", "validateOnly": true}' \
    'SPX04uEIdAwgDobo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminVerifyAccountV3' test.out

#- 160 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'pbdJeVCiKs2vLyH9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'GetUserVerificationCode' test.out

#- 161 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'kcSBdk7MwQzn28Le' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminGetUserDeletionStatusV3' test.out

#- 162 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"deletionDate": 29, "enabled": false}' \
    'MDAaUXSuBQdvdhJo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminUpdateUserDeletionStatusV3' test.out

#- 163 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "T0WK5ngNUxDKfZYo", "country": "fPGUbSaA00nKxQjY", "dateOfBirth": "U6KlavIiLxU2I1Gy", "displayName": "JS48Hxu8Ju4XSAnl", "emailAddress": "XRYB9BgSZBvkehRn", "password": "83B0nrW1qx3NJTug", "validateOnly": true}' \
    'WXz8dv7BiEUqnzxs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AdminUpgradeHeadlessAccountV3' test.out

#- 164 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    '2deMF8UAJIHEZv5z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminDeleteUserInformationV3' test.out

#- 165 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'yUUyNJkvA5xF3zHt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminGetUserLoginHistoriesV3' test.out

#- 166 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "ZSd3QzXhkrN4pWry", "newPassword": "t4XTNwpp0ni1YfIg", "oldPassword": "LZ4YIzElrLZOBLHC"}' \
    'KmLBaIwlokbAFW8R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminResetPasswordV3' test.out

#- 167 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 12, "Resource": "G5NkKCySLA8cKCs0", "SchedAction": 6, "SchedCron": "eoTiNKGRUMrimGAz", "SchedRange": ["6OhmHOpCdr3WzDm3", "hJdd6uaO9TiTPnIh", "2iaIBpYC4txul6VK"]}, {"Action": 19, "Resource": "lNYYlHPwKDpJmkeo", "SchedAction": 55, "SchedCron": "w1GqUjjFp6R8mYZw", "SchedRange": ["KftVqSECsypS42Nm", "YQ8HlHbHnfs4tLVO", "YQCWMktmiKd9vLPP"]}, {"Action": 4, "Resource": "w52JRAZxMWdoleYN", "SchedAction": 68, "SchedCron": "Wnnova15WVuE5cYV", "SchedRange": ["P9tQSa27BnPyq3I1", "BLtGEZDRNkk4DJUo", "fJXK8RGS0zCYRVmb"]}]}' \
    'fzwUmsy0stUmKdXi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminUpdateUserPermissionV3' test.out

#- 168 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 17, "Resource": "LWDPSZexfKVxqdxm", "SchedAction": 14, "SchedCron": "x6uPf6jQZcYerH93", "SchedRange": ["3X7iXEEM2KOusNEH", "cI95GGdJvucDbs6U", "dccuM2ykRj3WnyAa"]}, {"Action": 96, "Resource": "7Et4uY8nlBwGNHgf", "SchedAction": 12, "SchedCron": "bQQ13FhD3NExUFip", "SchedRange": ["JsUiDawAjgHFQk0V", "zWRNFNiUn2yXMSCc", "HADYpS861c0CJ7Lz"]}, {"Action": 32, "Resource": "DuaSixXEdloYZBka", "SchedAction": 40, "SchedCron": "5dDwneac75C6S2eH", "SchedRange": ["sH4Y84hL75QboMHC", "tzEF9FSeg6WYgtfu", "qJHrs4e3RnWR30Md"]}]}' \
    'BZezfwc3H0qSbMq4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminAddUserPermissionsV3' test.out

#- 169 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 67, "Resource": "xnlmSyjEaFH2DRN6"}, {"Action": 68, "Resource": "k59yFSfdZIv8oYWP"}, {"Action": 96, "Resource": "pUYUQMooiKT57rmb"}]' \
    'jEnimeR7EFBz43E9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminDeleteUserPermissionBulkV3' test.out

#- 170 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '65' \
    'WE3MFqvfDG5jvMOa' \
    'XrDlEX42U0syrGNh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminDeleteUserPermissionV3' test.out

#- 171 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'BmgT2q0kIbrJ2S5P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminGetUserPlatformAccountsV3' test.out

#- 172 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'f1Lvg8kYEVylINJp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminGetListJusticePlatformAccounts' test.out

#- 173 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    'xFY8E6pU8eHjh0aT' \
    'jIOaQt0snbE0yMvq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminGetUserMapping' test.out

#- 174 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    'F7TJ9uB0zypjJiu7' \
    'BIimNuwB3hBVhuSM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminCreateJusticeUser' test.out

#- 175 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "Hhf5R2MkxQTAYGfE", "platformUserId": "6hXZ7XLoWCGf0dZE"}' \
    'eXBd6mGG6SHcZbX2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminLinkPlatformAccount' test.out

#- 176 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "wNnT6A9zosmDnXon"}' \
    'cy7NZQ4PkAPXBCfk' \
    'E1Fb0y94eP7yh0zs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminPlatformUnlinkV3' test.out

#- 177 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'KhR60HZwUwk48XK7' \
    'MXHbEwAvvpEeHhXi' \
    'JcJqYSxVKUYMimVL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminPlatformLinkV3' test.out

#- 178 AdminGetThirdPartyPlatformTokenLinkStatusV3
$PYTHON -m $MODULE 'iam-admin-get-third-party-platform-token-link-status-v3' \
    'zAP6aOzsTqEFXUhG' \
    'AwpYq1UqZydOB0MT' \
    'hZW6LwcAg57BYBVC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 179 AdminGetUserSinglePlatformAccount
$PYTHON -m $MODULE 'iam-admin-get-user-single-platform-account' \
    'bi0ifdPyKf3SwHek' \
    'WIz4rXlH5jw99HxC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminGetUserSinglePlatformAccount' test.out

#- 180 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["jXWcaXBcfXXeV7BX", "efsSgZxSYnVwXqF6", "K0WA76Kl2mHHoz6q"]' \
    'BQnEDgX49n1xTDFc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AdminDeleteUserRolesV3' test.out

#- 181 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "mOm1sqdIWU6ERylE", "roleId": "Sgf5dXMrPoYSohfr"}, {"namespace": "LyXMSrC62xYtDwfl", "roleId": "NGfufW5cWeg6eSCy"}, {"namespace": "psceITTkJGGCVF6L", "roleId": "rILDLviUCzmDAaW5"}]' \
    'xz1c7ZuZXUCBYnkY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminSaveUserRoleV3' test.out

#- 182 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    '0LEBSYBdUSiTOrhB' \
    '8hVs29WOKmZRTtgy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminAddUserRoleV3' test.out

#- 183 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'cLzXz6lUMKi5mweM' \
    'EZo2ZnL1Zg2JfH4f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminDeleteUserRoleV3' test.out

#- 184 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": false, "reason": "3jAevOnES6YJLlb2"}' \
    'AfUEEBbqMMKvkOsR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminUpdateUserStatusV3' test.out

#- 185 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    '1fHUyirMVMOFES2J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 186 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "2OzNlJE3uqZz574g"}' \
    '31cA0PwZxTIZVSGQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminUpdateClientSecretV3' test.out

#- 187 AdminGetRolesV3
$PYTHON -m $MODULE 'iam-admin-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminGetRolesV3' test.out

#- 188 AdminCreateRoleV3
$PYTHON -m $MODULE 'iam-admin-create-role-v3' \
    '{"adminRole": true, "deletable": false, "isWildcard": false, "managers": [{"displayName": "zhs9Asy4d629N4Yn", "namespace": "olVWA2dWxBs056jk", "userId": "PCUuE1pgdHvlQKiR"}, {"displayName": "7SDQUDavOlKT5EIH", "namespace": "NhJQq94Re5IM1akN", "userId": "Kz9IltQUku3n32at"}, {"displayName": "B0QPQPEp5UtwUWGt", "namespace": "6tooHP5kAww01zal", "userId": "TddhAQ1pwqnybvUI"}], "members": [{"displayName": "fuulmeegRwPPbn7l", "namespace": "ttd21cS6IVE4fzwG", "userId": "3BHaRcZ8NK4gkLmv"}, {"displayName": "EOaRcqTgF0xtQAXo", "namespace": "DoFkmA3fgzcwdgJM", "userId": "jIyGfiNBQy41M1gz"}, {"displayName": "GCbaxw33rNbE4bbD", "namespace": "U4FMTbQaANJOODGe", "userId": "rDCWcl3VSJENQope"}], "permissions": [{"action": 68, "resource": "MFlgHKQIRtLfPngD", "schedAction": 26, "schedCron": "3roOeqE7fcCAeExe", "schedRange": ["QX43LpmdMiZeyIrA", "4QUKSJgECzvaWUCA", "7wKru7ry3AQ2sEHv"]}, {"action": 92, "resource": "sWzbqwTZQIN5jC6a", "schedAction": 25, "schedCron": "cG6XxENbWqlX7idz", "schedRange": ["jpKDfwl6XlCF6YxF", "MD8tJQwZvUVInos5", "RK100yH89i8ZDPXR"]}, {"action": 76, "resource": "SsuFM4ahGw7XcF1Q", "schedAction": 45, "schedCron": "eibXg7RCe5BtKcwj", "schedRange": ["6PqqOgCimr3ZQNBB", "krXu9czsYr3cFeVw", "70xdNTuOdLKK0M2B"]}], "roleName": "2hbqJin37P69t1Kq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminCreateRoleV3' test.out

#- 189 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'eGz7qbPnXEuOzzko' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminGetRoleV3' test.out

#- 190 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'BmMR9C4qPqJrAdh1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminDeleteRoleV3' test.out

#- 191 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": true, "isWildcard": false, "roleName": "mFkyxoUzfMFoXCOg"}' \
    'uSq2A4R3wDdSkNfH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminUpdateRoleV3' test.out

#- 192 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    'JtA3QiX9ZvtydbaV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminGetRoleAdminStatusV3' test.out

#- 193 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'b0scd97A0GP6djn2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminUpdateAdminRoleStatusV3' test.out

#- 194 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'Ps3IVT5hUZ3cnDq0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminRemoveRoleAdminV3' test.out

#- 195 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'ddZG0EpfGAqHKcSx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminGetRoleManagersV3' test.out

#- 196 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "Uc2YgRpk2IFGIgIp", "namespace": "scUpVAciu2XPPUxz", "userId": "XHUvxhvTZcvRKoaM"}, {"displayName": "4ozSAg8FTLrByWOJ", "namespace": "hbocoGlPzdfxcC3r", "userId": "pWhSpq0InxMLpP7n"}, {"displayName": "7M3JXjEvsj5WcQ99", "namespace": "M1yuXeqV31LX2ehc", "userId": "MnM6QtjzQjDlUMCG"}]}' \
    'nxZwak7KHnzGASmV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminAddRoleManagersV3' test.out

#- 197 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "zePIroz41oQCuXeT", "namespace": "RyJQrNLTcqLVTN5Q", "userId": "f4tjPGpu27yxb1of"}, {"displayName": "79zVTWIfgdNphqe9", "namespace": "fS1m77MAg4KoZQPL", "userId": "hDSJx9jzxaRKph4k"}, {"displayName": "iIFgS4fLqlrKGiS3", "namespace": "XxjkyNfj3XgTRTjI", "userId": "9oNBzgQ4CRwg0sKV"}]}' \
    'eSpMny0GrvKI5EVB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminRemoveRoleManagersV3' test.out

#- 198 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    '9ZFzLNsjdCFtKY0K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'AdminGetRoleMembersV3' test.out

#- 199 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "sxR0rCFkyiQZfMnT", "namespace": "bKdwNhiIP7dpJ8B8", "userId": "VwFQnVco2oCn1KvJ"}, {"displayName": "mbjapW9UlEqtzDd7", "namespace": "SgxdxB5kvtM8ah9b", "userId": "PsksceGUEX8ERZcK"}, {"displayName": "SYLo6y7yJMowQ6Lp", "namespace": "HCvCYTgX9JQwErzj", "userId": "tuP9pUUv7qefNMFs"}]}' \
    'ZAIqak1zi0JSa5cR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'AdminAddRoleMembersV3' test.out

#- 200 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "n31D8ubfdXi7BycD", "namespace": "PckeGJUgU8bD5mGF", "userId": "FmKTTUxG0mpmFxxD"}, {"displayName": "NXGlGJvHf558h1lt", "namespace": "yhiSGhfqXhxBJ7zL", "userId": "XioAGkWgSDdDQvpR"}, {"displayName": "fGe3z2rtjWpJAlKH", "namespace": "F0ebxhJ1176CeD4d", "userId": "WCp4wqlQJcZroNQi"}]}' \
    'efBnPluOIjZyvlGD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'AdminRemoveRoleMembersV3' test.out

#- 201 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 87, "resource": "nPumcazKAna0ji75", "schedAction": 47, "schedCron": "aNDFeKnQP2j2WsQI", "schedRange": ["mTwYkiuxzLrbJ0Bk", "GzCNgesQlZZHIZH0", "iks6kx0adnimPyyz"]}, {"action": 8, "resource": "uUSD9ImtaPAocOQc", "schedAction": 31, "schedCron": "onwz27DWfGRVhbZT", "schedRange": ["vCPrrZCTU5WUJizF", "69PSsquWUafwbFPX", "15633pFgA7i9tqvf"]}, {"action": 69, "resource": "llYsONpp6QGW56CN", "schedAction": 17, "schedCron": "XSGwQkJuy9oLFcHH", "schedRange": ["craLXR2n9JQvq7NK", "WIHYsii3fCh7sieJ", "jZPAkiWumllU31uX"]}]}' \
    'PwYxedGHCIkmt4bf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'AdminUpdateRolePermissionsV3' test.out

#- 202 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 73, "resource": "ewWnFcqHxXP3kRht", "schedAction": 35, "schedCron": "Y3c4SryWB4yRaDxv", "schedRange": ["xwaLM8HkVOW8PnLk", "gqkqYZWPZTgKagTz", "dcYcko7U3gH239Lh"]}, {"action": 89, "resource": "NJvDiP2hNNEI8QrQ", "schedAction": 50, "schedCron": "H1ro5CtU8UjgyCUp", "schedRange": ["M1JBcTzf4dz1BojP", "oQg976409vFd5z9r", "4nJWUvLp1wxGF747"]}, {"action": 38, "resource": "68MXUq3uIffkIpPm", "schedAction": 36, "schedCron": "uKvtUVtqbDWnJ2i9", "schedRange": ["TRmJOqIl7U12hO5v", "pk9DOSgbsdGVPLD9", "A5NmuZDUV3yHurgO"]}]}' \
    'fba1XeoHYTNoRol8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'AdminAddRolePermissionsV3' test.out

#- 203 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["4UlkxtP5Vok9sNK1", "ORg3tChsS3fFpaS1", "uq1mH3oYfPK2QiAU"]' \
    'hIfi17YrkWHNxiaN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'AdminDeleteRolePermissionsV3' test.out

#- 204 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '50' \
    'BLuglkd9LIoshGnF' \
    'SuHmrqej8PRppYY1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'AdminDeleteRolePermissionV3' test.out

#- 205 AdminGetMyUserV3
$PYTHON -m $MODULE 'iam-admin-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'AdminGetMyUserV3' test.out

#- 206 UserAuthenticationV3
$PYTHON -m $MODULE 'iam-user-authentication-v3' \
    'vlV0M2g6oreqyBzW' \
    'zCgMMWZuD6tmIR28' \
    'xVxbtpSKOfiIP3S6' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 206 'UserAuthenticationV3' test.out

#- 207 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    'pypZqISn3msrykQF' \
    'tW8QGKFZLrIfqrZu' \
    'u7IwKcT7sAsv2TKC' \
    'bYMVkXEHmsHwIGGs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'AuthenticationWithPlatformLinkV3' test.out

#- 208 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    'usS0zZRODEKPdudZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 209 RequestOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-request-one-time-linking-code-v3' \
    'sLaf8aZrXW84dt0T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'RequestOneTimeLinkingCodeV3' test.out

#- 210 ValidateOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-validate-one-time-linking-code-v3' \
    'STmy7XF26K2U7xtt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'ValidateOneTimeLinkingCodeV3' test.out

#- 211 RequestTokenByOneTimeLinkCodeResponseV3
$PYTHON -m $MODULE 'iam-request-token-by-one-time-link-code-response-v3' \
    'Uz8nWKJjv06PuffH' \
    'ghAQfAsYXVzBenLt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 212 GetCountryLocationV3
$PYTHON -m $MODULE 'iam-get-country-location-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'GetCountryLocationV3' test.out

#- 213 Logout
$PYTHON -m $MODULE 'iam-logout' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'Logout' test.out

#- 214 RequestGameTokenCodeResponseV3
$PYTHON -m $MODULE 'iam-request-game-token-code-response-v3' \
    'aAoYyRfiCWrm3s1A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'RequestGameTokenCodeResponseV3' test.out

#- 215 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'h3TII70MIcBMJ045' \
    '08jKedx0CVRpd7Sw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 216 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    'Zw2UkjDzJ4NuMMgI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'RevokeUserV3' test.out

#- 217 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    '13nplXaUQV5QEvKE' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 217 'AuthorizeV3' test.out

#- 218 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    '3CGwtujkzxidLcAQ' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 218 'TokenIntrospectionV3' test.out

#- 219 GetJWKSV3
$PYTHON -m $MODULE 'iam-get-jwksv3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'GetJWKSV3' test.out

#- 220 SendMFAAuthenticationCode
$PYTHON -m $MODULE 'iam-send-mfa-authentication-code' \
    'WGVRg6DVso5TJCSu' \
    'gdo4XTm8t1YTWqIt' \
    'jNWXm9sraeMA78YS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'SendMFAAuthenticationCode' test.out

#- 221 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    'RS2fPy5fpbbbMIu9' \
    'lu18jIMBUM77Xmem' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'Change2faMethod' test.out

#- 222 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    'N8LO03mnFSq9jJTV' \
    'FoFjxZjh5qUR1Pq4' \
    'a4uaMfd0SQAfYIyz' \
    'true' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'Verify2faCode' test.out

#- 223 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'L8jxakuVu5r5B08V' \
    'ZxI4TU3apnZXoJ4g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 224 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'I4EQKO8xC4D0FsUo' \
    '3IB2kX5REQZsHyXz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'AuthCodeRequestV3' test.out

#- 225 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'oIXNf0KbL9HyJttd' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 225 'PlatformTokenGrantV3' test.out

#- 226 GetRevocationListV3
$PYTHON -m $MODULE 'iam-get-revocation-list-v3' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 226 'GetRevocationListV3' test.out

#- 227 TokenRevocationV3
$PYTHON -m $MODULE 'iam-token-revocation-v3' \
    'gfLGO3ummpllnV6B' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 227 'TokenRevocationV3' test.out

#- 228 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'authorization_code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 228 'TokenGrantV3' test.out

#- 229 VerifyTokenV3
$PYTHON -m $MODULE 'iam-verify-token-v3' \
    '2P1Kazg73c6UpmA4' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 229 'VerifyTokenV3' test.out

#- 230 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'ehxNIIlcrZzgameT' \
    '2mLkkAMjHyI0e2Ax' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'PlatformAuthenticationV3' test.out

#- 231 PublicGetInputValidations
$PYTHON -m $MODULE 'iam-public-get-input-validations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'PublicGetInputValidations' test.out

#- 232 PublicGetInputValidationByField
$PYTHON -m $MODULE 'iam-public-get-input-validation-by-field' \
    'j0nZHjmoKHJngwMe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'PublicGetInputValidationByField' test.out

#- 233 PublicGetCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction-v3' \
    '1AnQVj6QQjZtkNJC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'PublicGetCountryAgeRestrictionV3' test.out

#- 234 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-public-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 235 RetrieveActiveOIDCClientsPublicV3
$PYTHON -m $MODULE 'iam-retrieve-active-oidc-clients-public-v3' \
    'nDSrsSey2BqOxgwC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 236 PublicListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["ymCDYsuff3b7G5FD", "X4mu0qPHb9Ll2EFE", "b8GnsthmQ2Y6ZGOi"]}' \
    'qrg3lpqN5bOfnqJ5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 237 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    'bzDRzbhMxfEDE4Tr' \
    'tIHyyMq79EdB9Mxa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'PublicGetUserByPlatformUserIDV3' test.out

#- 238 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    'F8QHGM2IuQYBO8m0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'PublicGetAsyncStatus' test.out

#- 239 PublicSearchUserV3
$PYTHON -m $MODULE 'iam-public-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'PublicSearchUserV3' test.out

#- 240 PublicCreateUserV3
$PYTHON -m $MODULE 'iam-public-create-user-v3' \
    '{"PasswordMD5Sum": "HgTth479W8rXqwGV", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "RWgTNHCka3Wb5kH1", "policyId": "BrLWUetP7nmESQDV", "policyVersionId": "3BD1nnEzoUlUWqP4"}, {"isAccepted": true, "localizedPolicyVersionId": "50eoaIBrTh0EKkJi", "policyId": "oUpvGnkcHgCfaWzP", "policyVersionId": "UvCnfqsPGgJZyRwi"}, {"isAccepted": false, "localizedPolicyVersionId": "RPvwA9k6yJz03NET", "policyId": "dywPqYerrpOm4M2p", "policyVersionId": "M4fIfcHBWZM50aHb"}], "authType": "PXRns3qwYL6LwGlZ", "code": "GF7XQPLAcIL7FvAM", "country": "WqhyyNZH1CducB5y", "dateOfBirth": "5iMdeBG7REG4meKE", "displayName": "abfVXBJPIZqZC5d6", "emailAddress": "JuFdcfiNf0DOHKwx", "password": "DF5GJhCjVHiCn2hT", "reachMinimumAge": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'PublicCreateUserV3' test.out

#- 241 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'IFQsrwHqFqwVA5mo' \
    'zeeOjIFQfXV3YW3u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'CheckUserAvailability' test.out

#- 242 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["g3nCXhD7FUz1iOe0", "pHa0LmseIRXeoerZ", "AxbDPXU5xJBhIpJ9"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'PublicBulkGetUsers' test.out

#- 243 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "b0Ap7CmSiKPjcwAw", "languageTag": "5GdxpvLfa4b4hTaZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'PublicSendRegistrationCode' test.out

#- 244 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "BGdX66DqPTdurR3M", "emailAddress": "Yda0Y0BCO4qPnvxE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'PublicVerifyRegistrationCode' test.out

#- 245 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "RWjKasq5zQ6uZNwK", "languageTag": "jnX7vDIqpcjmaq5K"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'PublicForgotPasswordV3' test.out

#- 246 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    'BCsHlwNrfKJrkzwR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'GetAdminInvitationV3' test.out

#- 247 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "0tfd9GFXChtxB10d", "policyId": "4Q8nlBthUSu4WNfT", "policyVersionId": "vD5UcES1eLMZs9lS"}, {"isAccepted": true, "localizedPolicyVersionId": "SrEm5Y7jI232Sjkt", "policyId": "ijiNzTUe8KdizXmr", "policyVersionId": "mK0sCUsqxKocHomt"}, {"isAccepted": false, "localizedPolicyVersionId": "mfVNJNDaSO3FEkk4", "policyId": "It6V8Bu7rIjGrxUM", "policyVersionId": "Kbv60ixUuUhopdqG"}], "authType": "EMAILPASSWD", "country": "LWGT4MXhmzvRQb7c", "dateOfBirth": "0vmjWq9fQqzulLGf", "displayName": "QMqSLQDlRFYMVfiA", "password": "Ma6Pco7Mfvikslpy", "reachMinimumAge": true}' \
    '9BYLVVznF6hMYfks' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'CreateUserFromInvitationV3' test.out

#- 248 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "p8VQhYSFeBOp0ilG", "country": "QFwHUtZugblT3aID", "dateOfBirth": "Kn9qJXncm5igpAew", "displayName": "bmnWk0E7YaPblcWE", "languageTag": "yNgvs5LEZrQXzSQR", "userName": "WRs9EGnRPgYlJElg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'UpdateUserV3' test.out

#- 249 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "J8kx1WEeDbql13Ft", "country": "QMu41rnOzbsFBqg6", "dateOfBirth": "dziWvdNcwfUBMdNu", "displayName": "TaiLxFMXRpDP9xut", "languageTag": "ntU8xHw4yYJOCViH", "userName": "wunQwpC2eCFUAHZa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'PublicPartialUpdateUserV3' test.out

#- 250 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "YSvsWiNJtqXltZF6", "emailAddress": "aSRmHU5iR3hXIbzW", "languageTag": "PKOkzftOgDQAWhul"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'PublicSendVerificationCodeV3' test.out

#- 251 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "brDf7q4cAnpmLiEu", "contactType": "4CNtX2lnqi7cHTSd", "languageTag": "GoLZbC3UJruU4uIX", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'PublicUserVerificationV3' test.out

#- 252 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "ZpqXJmPJso6M11LL", "country": "ZWKgWxn9YL16HQdt", "dateOfBirth": "AneXGgxNg33ZIUrI", "displayName": "kfmdXVvaPQzzKdFg", "emailAddress": "7N7piT8VcrXLZnuM", "password": "NpKEIs3GC9VTK7tk", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'PublicUpgradeHeadlessAccountV3' test.out

#- 253 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "WFpHt7MdKu9Xwn5G", "password": "HJDGatrYOMO91CYE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'PublicVerifyHeadlessAccountV3' test.out

#- 254 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "jX867n9PT9fR7mMu", "newPassword": "BXPDKCriRKzTZ7TX", "oldPassword": "AVRnUVbxEJcKHE76"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'PublicUpdatePasswordV3' test.out

#- 255 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    '4EwhQfxFKIOGT1WK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'PublicCreateJusticeUser' test.out

#- 256 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'SmLoA0ILaESC1GJX' \
    'soBwqh0TQXa2j7v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'PublicPlatformLinkV3' test.out

#- 257 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "zQJoQLTAlW75icIK"}' \
    'UpXazsFrmaGNoi3R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'PublicPlatformUnlinkV3' test.out

#- 258 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'PTgWotLNz0u8ySxA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'PublicPlatformUnlinkAllV3' test.out

#- 259 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    '0yrjz4q7e0EJnADX' \
    'C2y0DY1E1SMK9oA4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'PublicForcePlatformLinkV3' test.out

#- 260 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'vK56dsYI5SKV5pDA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'PublicWebLinkPlatform' test.out

#- 261 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'NyJ184miBhdVJt81' \
    'fmLSyGuu5rbJVIwR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'PublicWebLinkPlatformEstablish' test.out

#- 262 PublicProcessWebLinkPlatformV3
$PYTHON -m $MODULE 'iam-public-process-web-link-platform-v3' \
    'MtwApGbXnR3yC6f2' \
    'MHGGedk0KzXRclOX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'PublicProcessWebLinkPlatformV3' test.out

#- 263 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "dPYZQxBnttu4yW5e", "emailAddress": "tl4Xk8Hd1lRtoPMv", "newPassword": "su9oswEPTvzwwGnp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'ResetPasswordV3' test.out

#- 264 PublicGetUserByUserIdV3
eval_tap 0 264 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 265 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    'bx8MCIjKzylqW8au' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'PublicGetUserBanHistoryV3' test.out

#- 266 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'yseP9wEEyYAnHPp4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 267 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    'XzVL5McglFCrjxqq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'PublicGetUserInformationV3' test.out

#- 268 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'xAYqXG2V3baMkZ9J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'PublicGetUserLoginHistoriesV3' test.out

#- 269 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'CqBIkUID0EE9InZN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'PublicGetUserPlatformAccountsV3' test.out

#- 270 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    'LwwAhW2b5OHKtUv4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'PublicListJusticePlatformAccountsV3' test.out

#- 271 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "lTkQNjxhXdj1CG0E", "platformUserId": "Bgst9Qu8Ofl2oB8V"}' \
    'TjF0pD3NHU8iYUOt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'PublicLinkPlatformAccount' test.out

#- 272 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["G5gbQSKW2MdgCH4b", "WxRF6fBPa6GOuV5z", "0p8jaJs2duQqawPr"], "requestId": "xi6F4elhy9CZ94CA"}' \
    'UVW8FoEf8tjCjWc2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'PublicForceLinkPlatformWithProgression' test.out

#- 273 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    '2qqDfNz59jHwSDQH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'PublicGetPublisherUserV3' test.out

#- 274 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'admAo0lzhPm7RmaO' \
    'r6TLwVyE42ApAb7C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 275 PublicGetRolesV3
$PYTHON -m $MODULE 'iam-public-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'PublicGetRolesV3' test.out

#- 276 PublicGetRoleV3
$PYTHON -m $MODULE 'iam-public-get-role-v3' \
    'Kt79wAopZL9Cw6K9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'PublicGetRoleV3' test.out

#- 277 PublicGetMyUserV3
$PYTHON -m $MODULE 'iam-public-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'PublicGetMyUserV3' test.out

#- 278 PublicGetLinkHeadlessAccountToMyAccountConflictV3
$PYTHON -m $MODULE 'iam-public-get-link-headless-account-to-my-account-conflict-v3' \
    'h55mwUvhdBOgumV4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 279 LinkHeadlessAccountToMyAccountV3
$PYTHON -m $MODULE 'iam-link-headless-account-to-my-account-v3' \
    '{"chosenNamespaces": ["wAsd4ifGd0bkWrlh", "tfTywRW4fmg6btk3", "mAO4EtB0hn2x1oTO"], "oneTimeLinkCode": "X5gBQlVDx9neFHWh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'LinkHeadlessAccountToMyAccountV3' test.out

#- 280 PublicSendVerificationLinkV3
$PYTHON -m $MODULE 'iam-public-send-verification-link-v3' \
    '{"languageTag": "DRJtyYEt7ygZleAo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'PublicSendVerificationLinkV3' test.out

#- 281 PublicVerifyUserByLinkV3
$PYTHON -m $MODULE 'iam-public-verify-user-by-link-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'PublicVerifyUserByLinkV3' test.out

#- 282 PlatformAuthenticateSAMLV3Handler
$PYTHON -m $MODULE 'iam-platform-authenticate-samlv3-handler' \
    'UuVKneoO10ytPdJ8' \
    'SY3qoogOxoPYvdIB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'PlatformAuthenticateSAMLV3Handler' test.out

#- 283 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'JYyGURjEjnslEYM8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'LoginSSOClient' test.out

#- 284 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'ngVT1ewVxvgAocOq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'LogoutSSOClient' test.out

#- 285 RequestGameTokenResponseV3
$PYTHON -m $MODULE 'iam-request-game-token-response-v3' \
    'sd5v5n7eXCo9gZWd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'RequestGameTokenResponseV3' test.out

#- 286 PlatformTokenRefreshV3
$PYTHON -m $MODULE 'iam-platform-token-refresh-v3' \
    'xfIdW8fNAM5YdHiv' \
    'K2Q0WwolQy037hJM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'PlatformTokenRefreshV3' test.out

#- 287 AdminGetDevicesByUserV4
$PYTHON -m $MODULE 'iam-admin-get-devices-by-user-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'AdminGetDevicesByUserV4' test.out

#- 288 AdminGetBannedDevicesV4
$PYTHON -m $MODULE 'iam-admin-get-banned-devices-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'AdminGetBannedDevicesV4' test.out

#- 289 AdminGetUserDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-user-device-bans-v4' \
    'OEv5W0v25yAObZIb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'AdminGetUserDeviceBansV4' test.out

#- 290 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "rA8XAKKWMDebehSj", "deviceId": "pt0wrfWPXaI1Jb75", "deviceType": "o2MFOa6xgPt69QRO", "enabled": true, "endDate": "WL3HDL4yx5I0euBs", "ext": {"ccHPA2v9XP9enfEX": {}, "7lloLgIYqxFfSNJl": {}, "HCjxLNnYUlGQsFpy": {}}, "reason": "9ZVlLIFwLgT78noo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'AdminBanDeviceV4' test.out

#- 291 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    'tfUs9559ilm3cauh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'AdminGetDeviceBanV4' test.out

#- 292 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": true}' \
    'DO5HXp5oVkhESbHQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'AdminUpdateDeviceBanV4' test.out

#- 293 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    '7hvTlzf7XwQtVIYU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'AdminGenerateReportV4' test.out

#- 294 AdminGetDeviceTypesV4
$PYTHON -m $MODULE 'iam-admin-get-device-types-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'AdminGetDeviceTypesV4' test.out

#- 295 AdminGetDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-device-bans-v4' \
    '87NgjDMcJxfMfYFl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'AdminGetDeviceBansV4' test.out

#- 296 AdminDecryptDeviceV4
$PYTHON -m $MODULE 'iam-admin-decrypt-device-v4' \
    't3JvDgMiyBGygWFT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'AdminDecryptDeviceV4' test.out

#- 297 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    'AY3Th5mOwPCPKVPl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'AdminUnbanDeviceV4' test.out

#- 298 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    'OGfFBlu2ZP0IkiYX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'AdminGetUsersByDeviceV4' test.out

#- 299 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"count": 68}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'AdminCreateTestUsersV4' test.out

#- 300 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["A5LmART6kulpM4SR", "tUE5P4kxmHtFbjqu", "rHix0QYycDH5we2M"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'AdminBulkCheckValidUserIDV4' test.out

#- 301 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "x0sYCnYPT4i4mxc1", "country": "4iRfzJwKuc7EpiQE", "dateOfBirth": "zz5N5osRYO7wbYh7", "displayName": "q02W8tkTURUFmqNc", "languageTag": "8xhQqptccNorRls7", "userName": "EC3nDnhFvDlFd7iy"}' \
    'ZpvWVJFK6ZuvlzGC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'AdminUpdateUserV4' test.out

#- 302 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "II156hIg0g8HIxpz", "emailAddress": "m9AcFhH4ZlYY3rEu"}' \
    'HMWwQNmCQmGCF963' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'AdminUpdateUserEmailAddressV4' test.out

#- 303 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    'CbsOawlRBQJH6fNe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'AdminDisableUserMFAV4' test.out

#- 304 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'khk077gxaj55huTA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'AdminListUserRolesV4' test.out

#- 305 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["6AvmW0567BFqbrPI", "uxKmBXLi6GpnqAeM", "vg3w0FQ1520WM3Tx"], "roleId": "WXSdTiKdva2UREoB"}' \
    'SFtCLy2CqgCG7JwJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'AdminUpdateUserRoleV4' test.out

#- 306 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["CDqkzOdFwLJpIPxz", "LE1V9U1NgpH7Oc44", "yjRdfqZgv34Gqqje"], "roleId": "lcN0GJmPwUTWMx0M"}' \
    'iPAjnWIhFrqSn4er' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'AdminAddUserRoleV4' test.out

#- 307 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["XEtU1CaD8AqsMCGB", "NhmUt6fzYRn85brT", "u8F7cuCPh1TGZJmg"], "roleId": "WNHWnvOBRCt4onqR"}' \
    'o2PnMSRarKg4coy3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'AdminRemoveUserRoleV4' test.out

#- 308 AdminGetRolesV4
$PYTHON -m $MODULE 'iam-admin-get-roles-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'AdminGetRolesV4' test.out

#- 309 AdminCreateRoleV4
$PYTHON -m $MODULE 'iam-admin-create-role-v4' \
    '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "wYHGmG5rNDBF1oU3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'AdminCreateRoleV4' test.out

#- 310 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    '7vjfyX5YLaM0wmi0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'AdminGetRoleV4' test.out

#- 311 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'i1WABBbq8IzZsMFL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'AdminDeleteRoleV4' test.out

#- 312 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "tfBS3ZIHofhwyM6B"}' \
    'w2sFGQ5DQoDwzrKP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'AdminUpdateRoleV4' test.out

#- 313 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 84, "resource": "pASBicX3ZwzZ7aVh", "schedAction": 36, "schedCron": "ocg10Hy9jx7gBHTO", "schedRange": ["HHArjld0LnREsrrB", "2pJ7V8BSrucjO3zv", "SM5KeVNHU9GcOivI"]}, {"action": 11, "resource": "9RAIrI81ZR2kNzh6", "schedAction": 90, "schedCron": "5b9qXzlIK2G6AUjB", "schedRange": ["Cdf0Rp5e5IvFuN1o", "UsCnBmGMx5F6EhM3", "dKvIG9MR0hTINvq1"]}, {"action": 98, "resource": "YAaCCeRgtstsU3Qe", "schedAction": 4, "schedCron": "Q3Dw3uyjgQNAs918", "schedRange": ["8Qm3W1De2McGd10w", "efF0CJlH55RLEgeA", "sSpQdcmGHZuRVQ8t"]}]}' \
    'zwqMayP8A3HGNI3B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'AdminUpdateRolePermissionsV4' test.out

#- 314 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 12, "resource": "R2ElF6z6eJKuOW61", "schedAction": 0, "schedCron": "YoKD7yqCR03RovQZ", "schedRange": ["hwfjkq9iyTbyD3D0", "1tRpuuyIagSSzEL8", "H4euLufhQj2KP3LL"]}, {"action": 47, "resource": "3mN8fIcC9Ckharfq", "schedAction": 1, "schedCron": "Hefz77a9fntCNiHB", "schedRange": ["RUNCPSre5GmZzCQw", "ilS3IxSjlyvR9PxG", "9Lji2Vc88W8aLjIx"]}, {"action": 97, "resource": "11jSmHFTtfM2mGUU", "schedAction": 32, "schedCron": "ipMRlhK9DMMaI4ry", "schedRange": ["VDvNaruZxwTfh9gE", "s6GF247cbBLjUr5z", "03wxB3E9hrE9f9CO"]}]}' \
    'FrOr6wJDBwIDsJHN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'AdminAddRolePermissionsV4' test.out

#- 315 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["g6TvNGjwI4TbTwBu", "fUorJouduhCEJ5Xi", "KDIE9YugcupLxVBc"]' \
    'RkfhRuqkOTHSia7o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'AdminDeleteRolePermissionsV4' test.out

#- 316 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'Fd1fEmDuyAsQGzwJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'AdminListAssignedUsersV4' test.out

#- 317 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["R5poI718RQnj4imu", "6XFfRcWDXhq1YmGe", "ygr2S4Yw8NmPaBer"], "namespace": "yzX2hOPVVFqVqxjq", "userId": "1iG3TySOh8SI75oX"}' \
    'byq8FBbur80Qwnlg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'AdminAssignUserToRoleV4' test.out

#- 318 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "AVfqz6gQJh8sn0bV", "userId": "WRkvmAemh8lioBR7"}' \
    'xTXcEIFod3lCzvjH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'AdminRevokeUserFromRoleV4' test.out

#- 319 AdminInviteUserNewV4
$PYTHON -m $MODULE 'iam-admin-invite-user-new-v4' \
    '{"assignedNamespaces": ["zDHOrSJ1vbB7LRHd", "96dGLgkfrZveFMWA", "FT7l0l1jaOAMCzbs"], "emailAddresses": ["oIgmKwwMDQPjUIos", "q1l6xo0D4JRbNqO6", "IuP2PY5hhX6uNah9"], "isAdmin": false, "namespace": "oHPj7jFWxSv1lYyl", "roleId": "YAiZ8c7Zd7EUoezO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'AdminInviteUserNewV4' test.out

#- 320 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "Lw8C1c5bBB3XZ7Co", "country": "lKwlsNvtFuunQsvd", "dateOfBirth": "XGlD40xxIyVwYjn6", "displayName": "dlC9Kfh9gHuloyce", "languageTag": "0cLJu4ljPWlCWTuG", "userName": "O8MnfOQu3wdT4Aod"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'AdminUpdateMyUserV4' test.out

#- 321 AdminDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'AdminDisableMyAuthenticatorV4' test.out

#- 322 AdminEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'AdminEnableMyAuthenticatorV4' test.out

#- 323 AdminGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-admin-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 324 AdminGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'AdminGetMyBackupCodesV4' test.out

#- 325 AdminGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'AdminGenerateMyBackupCodesV4' test.out

#- 326 AdminDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'AdminDisableMyBackupCodesV4' test.out

#- 327 AdminDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'AdminDownloadMyBackupCodesV4' test.out

#- 328 AdminEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'AdminEnableMyBackupCodesV4' test.out

#- 329 AdminSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-admin-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'AdminSendMyMFAEmailCodeV4' test.out

#- 330 AdminDisableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-disable-my-email-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'AdminDisableMyEmailV4' test.out

#- 331 AdminEnableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-enable-my-email-v4' \
    'p95o1RkX7iW7VpCn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'AdminEnableMyEmailV4' test.out

#- 332 AdminGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-admin-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'AdminGetMyEnabledFactorsV4' test.out

#- 333 AdminMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-admin-make-factor-my-default-v4' \
    'gWAv5DAG8dPdkKgQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'AdminMakeFactorMyDefaultV4' test.out

#- 334 AdminInviteUserV4
eval_tap 0 334 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 335 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "tOic9AQOFWpdItLB", "policyId": "hvKJq9tWz9yui8a6", "policyVersionId": "jOflFJlZEhz1QDeh"}, {"isAccepted": true, "localizedPolicyVersionId": "5hj92bwVVxJ62Q5A", "policyId": "OAOyL65cPaOZA8BG", "policyVersionId": "8KcVWOX9n3YsjJex"}, {"isAccepted": false, "localizedPolicyVersionId": "ByHBzfvgtRTPPzwJ", "policyId": "mKaLCx3gcidEALWe", "policyVersionId": "6RG5wWznu5AjwR1Z"}], "authType": "EMAILPASSWD", "country": "3zMkklGCPISlsnVA", "dateOfBirth": "6z0uSfNNpJUYzJxn", "displayName": "OyvqmswrToyBIQum", "emailAddress": "xDfAxNqCUtizYM97", "password": "ebZcYqwfIHPWMkOm", "passwordMD5Sum": "rT5HL16jMwECnmwJ", "username": "v4rpqtzDaz0WUJlB", "verified": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'PublicCreateTestUserV4' test.out

#- 336 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "HzJ2v9K8c1zOlZg3", "policyId": "0pagfP0FfOMBOpeQ", "policyVersionId": "T4zYIbU4i9mLyX46"}, {"isAccepted": true, "localizedPolicyVersionId": "hsISYtegQbNA2WQr", "policyId": "HTkJT1VkChD3n0c1", "policyVersionId": "ryAkRvdPR8gx2rX5"}, {"isAccepted": false, "localizedPolicyVersionId": "o3A8WxnR0YaMsF3f", "policyId": "5KLtpTSsPMGDZTOw", "policyVersionId": "EP5Bhh0NStWIggmh"}], "authType": "EMAILPASSWD", "code": "VdtMSews1TrU4FhA", "country": "fKDcDG5bMTba1tUl", "dateOfBirth": "FGcP6eL7EpWtPifm", "displayName": "O0JK4dP1aZFiSkmh", "emailAddress": "wVVMGkXNwMYwFylj", "password": "y5bYQdQ87hUHA0FJ", "passwordMD5Sum": "ZwP8GslMpx3m7lEX", "reachMinimumAge": false, "username": "dezbmf392ersoZ2K"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'PublicCreateUserV4' test.out

#- 337 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "B48Jxp2zaItg9jTN", "policyId": "ZvpFEUI21aSaIsMy", "policyVersionId": "LKPPIZx0zdNAagip"}, {"isAccepted": false, "localizedPolicyVersionId": "wiaBrFrXtGMjujfH", "policyId": "ZB1gMI1B8DXb37Df", "policyVersionId": "fTZ7yQz337LLNCjI"}, {"isAccepted": true, "localizedPolicyVersionId": "mqqi90KTWwZk0HGe", "policyId": "JNaBjVdMB5kMzKyc", "policyVersionId": "Yrhr4FnNzdT4pWwI"}], "authType": "EMAILPASSWD", "country": "Xp9avUr6IydpXW0M", "dateOfBirth": "O0eT9okl6MlWOl9f", "displayName": "eWO2bmOikTBJHTEm", "password": "5PSeyod5L6OooYoQ", "reachMinimumAge": false, "username": "Vjmy7j2BrdCAm3sl"}' \
    'CwaBqHpE55sjxBGi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'CreateUserFromInvitationV4' test.out

#- 338 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "jw0dQtZNonMrPkzU", "country": "e9SglAJGyZS0I8Fe", "dateOfBirth": "vJiT98HUBp56Q4WE", "displayName": "TxtGMs5tPKPuK0K4", "languageTag": "PiMDTR7LxihuOn57", "userName": "io0d9dG3yzaNbGeA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'PublicUpdateUserV4' test.out

#- 339 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "SX83SLiIbAP2qyUn", "emailAddress": "HnfrEdDfY4TTxu8g"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'PublicUpdateUserEmailAddressV4' test.out

#- 340 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "oZgsX4RwfM4qnUdc", "country": "QqZ9F1uivPob0YZE", "dateOfBirth": "uXQACDDQryNf9VGx", "displayName": "bOeJe4n9eUlBQZ2U", "emailAddress": "GePWXbAyGiXa9nUs", "password": "HCVicuJ7onrUXVlB", "reachMinimumAge": false, "username": "xNel4Bxb9KwFYqdh", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 341 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "7gOFVLZCBWuVIROZ", "password": "uqdJBi8pkn98VtLN", "username": "kaIQJfkFDhSeSGXt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'PublicUpgradeHeadlessAccountV4' test.out

#- 342 PublicDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'PublicDisableMyAuthenticatorV4' test.out

#- 343 PublicEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'PublicEnableMyAuthenticatorV4' test.out

#- 344 PublicGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-public-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 345 PublicGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'PublicGetMyBackupCodesV4' test.out

#- 346 PublicGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'PublicGenerateMyBackupCodesV4' test.out

#- 347 PublicDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicDisableMyBackupCodesV4' test.out

#- 348 PublicDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'PublicDownloadMyBackupCodesV4' test.out

#- 349 PublicEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'PublicEnableMyBackupCodesV4' test.out

#- 350 PublicRemoveTrustedDeviceV4
$PYTHON -m $MODULE 'iam-public-remove-trusted-device-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'PublicRemoveTrustedDeviceV4' test.out

#- 351 PublicSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-public-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'PublicSendMyMFAEmailCodeV4' test.out

#- 352 PublicDisableMyEmailV4
$PYTHON -m $MODULE 'iam-public-disable-my-email-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'PublicDisableMyEmailV4' test.out

#- 353 PublicEnableMyEmailV4
$PYTHON -m $MODULE 'iam-public-enable-my-email-v4' \
    'ZU5SuIhMSaDRp17d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'PublicEnableMyEmailV4' test.out

#- 354 PublicGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-public-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'PublicGetMyEnabledFactorsV4' test.out

#- 355 PublicMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-public-make-factor-my-default-v4' \
    'UWHcjrb6qNeKpOxP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'PublicMakeFactorMyDefaultV4' test.out

#- 356 PublicGetUserPublicInfoByUserIdV4
$PYTHON -m $MODULE 'iam-public-get-user-public-info-by-user-id-v4' \
    'rlG9svdqsiVTqPbz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 357 PublicInviteUserV4
$PYTHON -m $MODULE 'iam-public-invite-user-v4' \
    '{"emailAddress": "Y1yxl7zeEpmSPO6K", "namespace": "wlJQlj9Ii2jARwzo", "namespaceDisplayName": "wk9OoiPdnq9KBqBw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'PublicInviteUserV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
