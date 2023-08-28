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
iam-public-process-web-link-platform-v3 'o4rhjxUdMM83Wekq' 'fWv04vvn9bk5qr8q' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"code": "s2mqtnGAqXUjNypF", "emailAddress": "6MMqWpdEJsPoaIbY", "newPassword": "z8cK5jlpJdre5ur6"}' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 'yvWJDdvM7T7PX2va' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 'mIRZHzsIYOCUoiCX' --login_with_auth "Bearer foo"
iam-public-get-user-information-v3 'NjrdQL2jdx1eIba1' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 'sB0HsJ06DzfbzRYt' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 '4OVUyumBeIqdQGZC' --login_with_auth "Bearer foo"
iam-public-list-justice-platform-accounts-v3 '5kM03HHijsQRj7N8' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "IAjmsonjj0ZR50BQ", "platformUserId": "1U6aFD3O2kXQSc58"}' 'zgZVl4gIF7v3qbZu' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["9M3OxqVAT4H1lRZ9", "Z1JBrHRzEOtIxzPq", "b6n73m0jiaDH86d9"], "requestId": "rsKgzCsMulpB8HZU"}' 'tVVaJCiLgKOwrSfW' --login_with_auth "Bearer foo"
iam-public-get-publisher-user-v3 'hT5B4WedopzwSluB' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 'tRFPKThyGnbjmPDK' 'FS6u9FHuv1M3qfch' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 '4SqIV6LQPHlaeYl4' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-public-get-link-headless-account-to-my-account-conflict-v3 'csFq65cU66yJaj4o' --login_with_auth "Bearer foo"
iam-link-headless-account-to-my-account-v3 '{"chosenNamespaces": ["voKWE4EW0sw8v5pe", "iuxoBJATauyD3XCX", "VMiyEvMf9yilUEuj"], "oneTimeLinkCode": "k6oqYo1HQYTFzwdO"}' --login_with_auth "Bearer foo"
iam-public-send-verification-link-v3 '{"languageTag": "MdupwD4O3uNbcIDc"}' --login_with_auth "Bearer foo"
iam-public-verify-user-by-link-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler 'IyvZbOy1T4hfwkuV' 'ykH4RpfmjIXFGZ5P' --login_with_auth "Bearer foo"
iam-login-sso-client 'KdbabJIkNnt9P1Tk' --login_with_auth "Bearer foo"
iam-logout-sso-client 'm08luh4dpPRMDbUX' --login_with_auth "Bearer foo"
iam-request-game-token-response-v3 'BWTbpAogG2wlZkLh' --login_with_auth "Bearer foo"
iam-platform-token-refresh-v3 'uU5FI8NijFI0GKwJ' '3vfXlsAMy2Zp2UAG' --login_with_auth "Bearer foo"
iam-admin-get-devices-by-user-v4 --login_with_auth "Bearer foo"
iam-admin-get-banned-devices-v4 --login_with_auth "Bearer foo"
iam-admin-get-user-device-bans-v4 'xHnmSxvkG9UR5q9n' --login_with_auth "Bearer foo"
iam-admin-ban-device-v4 '{"comment": "eoW6JBcGp9Rx2Rfc", "deviceId": "RhXpmeeHdvphas9S", "deviceType": "7ivHEoLbUMM47f1U", "enabled": true, "endDate": "277Ivjj1A647XQ3k", "ext": {"oaAfZIim0sFPm1YN": {}, "27bojDVaZLpx4kEW": {}, "YkO6KrKUMhJrASBh": {}}, "reason": "61hmWKSSrF35anDG"}' --login_with_auth "Bearer foo"
iam-admin-get-device-ban-v4 'vur19V18oIrUKXtt' --login_with_auth "Bearer foo"
iam-admin-update-device-ban-v4 '{"enabled": false}' '9oe0JaXFpff28uYb' --login_with_auth "Bearer foo"
iam-admin-generate-report-v4 'e4Cf2HEHvVevhISj' --login_with_auth "Bearer foo"
iam-admin-get-device-types-v4 --login_with_auth "Bearer foo"
iam-admin-get-device-bans-v4 'btBJUK5fE3OufPSX' --login_with_auth "Bearer foo"
iam-admin-decrypt-device-v4 '3PdOU2V9yw94oa8U' --login_with_auth "Bearer foo"
iam-admin-unban-device-v4 'J34TIedV3HyoX4Vn' --login_with_auth "Bearer foo"
iam-admin-get-users-by-device-v4 'O2LpBU08wfnlHBXF' --login_with_auth "Bearer foo"
iam-admin-create-test-users-v4 '{"count": 71}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["wzTRHak1MXxj7Esr", "g7900nml5BidsK9d", "CEzhVnOv0PQbVIaK"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "iHfoeorY7A1otGFy", "country": "v2SMjbEr50qGdCZI", "dateOfBirth": "c6EFqBKxbS7Q2OgR", "displayName": "ucL1jwRXzfjDZZBm", "languageTag": "Oau6syme06c6SKLc", "userName": "2mEC3IXl5XCbkOfH"}' 'aGr5kdazlypvt6lS' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "LfU7HByGXPMqxj4h", "emailAddress": "BgVY3YAxZLKbcOdy"}' 'jqf6Q4oiwoJcaRME' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 'b15LBlTVufc5ZyOD' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 'R2NVyn4PRqf3eRbZ' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["qBAoKGcVCdMiSNV4", "qBrt1kcLmRv6EJtl", "5xWnsb8oWq94RImN"], "roleId": "WVIJnhhwFDV1Vita"}' 'omvWTzdsW4N70wYS' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["4Kj7Yi2VvoQNW8Yc", "481dYdvGxJAMDRA1", "LF7jdWlekFwO94VB"], "roleId": "CV9qJhWva2FPBujX"}' '0geYCpGJM4sqsPNJ' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["MiZXXOFwmGWAvNF0", "Z0GkwxUNYyNwGiKr", "knH0Y5mrQgLC6D2q"], "roleId": "sFiQHglUQMZi5WjM"}' 'ZfOadpgegCUjTdi1' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "m88QlKyuoya4Jgak"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 'ZyUV7t73VnSFbuxd' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 '4KYZ0jk0UZdhtnKu' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "oZM2UKAXEEsL5D0o"}' 'iFchQnVeq3g2AB2W' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 70, "resource": "svsw76uISRX0bKVo", "schedAction": 99, "schedCron": "XmWP0HzSdiylLhVY", "schedRange": ["szm8xY33OQbumu2Q", "HLyZNuysyM4OfCzd", "QCXMAWnf87YPNOe9"]}, {"action": 63, "resource": "ZdKZRyR9AX7JjxvN", "schedAction": 35, "schedCron": "hM84DiZk6ySrB9SV", "schedRange": ["FctW7YS0OkL78XeE", "AtALFI3v8yha4pd5", "A7MYcpBD6lKNb8Rx"]}, {"action": 45, "resource": "A85W3HJkqgS2B37w", "schedAction": 47, "schedCron": "BwNbNe1ffYRtIvQa", "schedRange": ["KyevWYtZjK6J29v8", "MpBSpo3AKRmnJkzJ", "HAckUyBksYQfDm0R"]}]}' 'NFwiz70tRVLMlHi8' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 16, "resource": "Wh1k0cQ08NG6dX2T", "schedAction": 0, "schedCron": "kil67kRngoUa83EC", "schedRange": ["h1gqPeS193TNNzot", "3sVli3GN2XTrFibR", "AhzzEWzWlTY70qdg"]}, {"action": 72, "resource": "afUs2bxYztOEyVbK", "schedAction": 72, "schedCron": "V00ReCXFffjJJxlg", "schedRange": ["jzIhpgOoIOD74V21", "HWDAfvXwdxbyp4HA", "PbBbNPStVBUpKgOs"]}, {"action": 38, "resource": "2ODiZhbfb8QqCyK1", "schedAction": 64, "schedCron": "H9D6vl5eFdFfgK46", "schedRange": ["GjCWaP8huTmnq3FG", "Qn3Ahu5wxq6oJq4m", "ChmQHQhO9IKBXDFQ"]}]}' 'fXFD58sG6uDhFYlr' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["zJBYSeMuJfQecutj", "S029BiJWOG1m7MKc", "lr5igjNTVItrH2X7"]' '8hxJgaVfw5Vnyq8O' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'zTE89WDNoMcOmbfJ' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["rCJQIj1haAosKglq", "aCXE9ytpIO8btO3O", "wNEGSW5TaW4to7QC"], "namespace": "Y2NGGvi9kg3rMIzN", "userId": "mhJTNQjKlwjfJ3TJ"}' '2xVpge70WsLfgbZi' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "eRvJI5sT9DH3DfLC", "userId": "v8q4Thmq09bBgPAY"}' 'xrBE9jlnTgtgW33w' --login_with_auth "Bearer foo"
iam-admin-invite-user-new-v4 '{"assignedNamespaces": ["DwD9RKvQX4yFQFdr", "RoM6FoqCYw7AlxO6", "qdFpc71sSck3ggZW"], "emailAddresses": ["JlSlCQMDji329PfV", "rvMEPtpsSNcpK1Qk", "B2Sy8Ww79LVeVskq"], "isAdmin": false, "namespace": "WAEvdRF9bqMj4ro5", "roleId": "B19VE838c7OydVw0"}' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "zCqoMZvpIOO97DmQ", "country": "5ZOzx6iCJTu60Iif", "dateOfBirth": "zMhkk5PxsjqbCKpM", "displayName": "v2Yky9DYkD2sIllF", "languageTag": "tBtXJKG3rqBmILht", "userName": "Wm8RQvRUbUDSiefG"}' --login_with_auth "Bearer foo"
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
iam-admin-enable-my-email-v4 'EdLucrtO2gCQD057' --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 'DrDlgC2nzS9SiGUj' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "oaP1K4CDuH1mMIfO", "policyId": "CDyVAHrHncR5dShq", "policyVersionId": "iBUI9esSsXegSEhr"}, {"isAccepted": true, "localizedPolicyVersionId": "pK2q8kxR4BuEksS2", "policyId": "A9VOA8H9VeHv0L2A", "policyVersionId": "cm960EYQEuGJVl8x"}, {"isAccepted": true, "localizedPolicyVersionId": "IuqK8C403HgoXCR6", "policyId": "XOMXwKdfqk8T4QHK", "policyVersionId": "30EX0FclpDl5Hsur"}], "authType": "EMAILPASSWD", "country": "rROIodcmM6v2AEoz", "dateOfBirth": "WWaYvBLE46bpuJip", "displayName": "8JyxJ39vrtuWWrqT", "emailAddress": "ZbSqBSKp8AmgwhYz", "password": "k33J34fiTxK63OHp", "passwordMD5Sum": "nUCGBVfpctNFUsUQ", "username": "6ZXQcb2o1J5euLAb", "verified": true}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "ZV3ig8Jg5VByeI3y", "policyId": "cMcYYBixKJXCISQd", "policyVersionId": "wec1m8BusV9tUh74"}, {"isAccepted": false, "localizedPolicyVersionId": "o6Xqjz2xUKLNWSmY", "policyId": "yVvyelIJ8QgaLMqi", "policyVersionId": "836ULa7cfZl4VuY6"}, {"isAccepted": true, "localizedPolicyVersionId": "82FrR1GSogkewIzT", "policyId": "OqKkcjRh3l2gAJOT", "policyVersionId": "Cbx7J3gNLIlTk3Bp"}], "authType": "EMAILPASSWD", "code": "SZns5owBhoUg4LsG", "country": "P6KLPXkvUv2XiXaB", "dateOfBirth": "zsmaxjTZPlLitytG", "displayName": "ka7Kv5TacQKF4OlR", "emailAddress": "GdmXxETLEQrr3KCA", "password": "V9alq3hK1G4kKooS", "passwordMD5Sum": "NNUZuiynZ64IwncZ", "reachMinimumAge": false, "username": "S2FgarY903INGIyE"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "dzGgGVxo9OHgfHum", "policyId": "yfuBNisecYbcOpR4", "policyVersionId": "5VDlvSc0Mr7ImwCw"}, {"isAccepted": true, "localizedPolicyVersionId": "qOf0bNs97KvKyj3M", "policyId": "qS7Dcmtfh50eObbr", "policyVersionId": "mgjhWK0x0ZidAJ1C"}, {"isAccepted": true, "localizedPolicyVersionId": "eD1La16Bw3JbUnUD", "policyId": "h5yGjjv4Mwrv2van", "policyVersionId": "cmR6Z7rb21A2E9pX"}], "authType": "EMAILPASSWD", "country": "VUdzA8bvXlDhG7Br", "dateOfBirth": "orbKIKuOXJPm5ztr", "displayName": "r09CDA8Ij5bGKSuo", "password": "pWQbaCvdPSq8Z27G", "reachMinimumAge": false, "username": "7zgUxAogcnGkXk17"}' 'QPkJHRhmLKQuQVFS' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "KiXl8G2uf6E8EajX", "country": "LSAS8MKMaxQ1QyJC", "dateOfBirth": "pKedhuzI7G9NCKKX", "displayName": "u1bqI2M5PmXfKnQ7", "languageTag": "BYGjCUDMOrbmoRvW", "userName": "nfmGFy0eUoOBd90h"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "9EDqSTOfoNewWjwM", "emailAddress": "WDKEt6JhbJ0fwTDa"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "q6b5RpMwhWPtndri", "country": "XU9loOxpmEuwDVc1", "dateOfBirth": "2r0DVUGgGHkapTCa", "displayName": "fFMdvYiCBuzUUwyI", "emailAddress": "6Vtd4v9k4fv3kMiu", "password": "Q3DhsKLxjt5srPFx", "reachMinimumAge": true, "username": "W1kmb15QeIQF51c4", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"emailAddress": "z6joBAhAlJGI2YYb", "password": "6ajBjgq6eY4PBNHK", "username": "Px62tHxDb06ZFy3u"}' --login_with_auth "Bearer foo"
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
iam-public-enable-my-email-v4 'glSp2UxvF2uLXWil' --login_with_auth "Bearer foo"
iam-public-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-public-make-factor-my-default-v4 'RD7HD6LCgdFxRGj0' --login_with_auth "Bearer foo"
iam-public-get-user-public-info-by-user-id-v4 '0RT6LvcnGMJbJIYL' --login_with_auth "Bearer foo"
iam-public-invite-user-v4 '{"emailAddress": "ssMvy9gkfTMRrXVR", "namespace": "cAVRDX6gmDfNfPGY", "namespaceDisplayName": "YSTunMgt3C8hEguC"}' --login_with_auth "Bearer foo"
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
echo "1..355"

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
    '[{"field": "qlMHiQN3HWJw9zIW", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["l07jPlcYaqYM7YfB", "mhjI9Y28qVceS9UX", "48dKPCFUIeyYEymN"], "preferRegex": true, "regex": "9ytb3c8pVZ8GlU89"}, "blockedWord": ["62e6gtn5pUARJM1T", "8QwMNOAzXmyHEV4g", "9P6a280S5RNB5dVC"], "description": [{"language": "sB7xL4axSPgPCiwL", "message": ["xCFLDixZwVtt3RVT", "l0tR00oQgcHdGGK3", "x76U1EIcklttmrpg"]}, {"language": "F5szl0sMY8es36r1", "message": ["FgR70eNLHkVrEFd8", "xArWJuCAIfNBSHgp", "FNw9K9pmAIc6VSfE"]}, {"language": "9nbE2PMv12ZSRJku", "message": ["jxbCu1HFaj6Vxs3G", "uA4S1dS7H7yIS7b5", "TSDRIoMg7Dc5APzf"]}], "isCustomRegex": true, "letterCase": "wtLPxK1os4qR8LaQ", "maxLength": 52, "maxRepeatingAlphaNum": 51, "maxRepeatingSpecialCharacter": 63, "minCharType": 76, "minLength": 2, "regex": "72WDyhBsCCbnfihn", "specialCharacterLocation": "XKxGxaupnTTq9ihZ", "specialCharacters": ["kvFKfSHQh8I9xk3s", "Fl0cbuCRM69XKkLw", "ioRaKnWhlh80BhYe"]}}, {"field": "2fJDS6T75Q4ulonM", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["SesE5p0DwUj2HKUv", "PYUcQBxMSdOOsn2N", "d8Jpa19GJDK46Eeh"], "preferRegex": true, "regex": "ywonA2SrEdN2tmGu"}, "blockedWord": ["X6r0gBVUUeKKlPKt", "E6gnYxmkmCWbs5qu", "gklBUS6uwWrCQt86"], "description": [{"language": "Jrg8tLAJWpcyNkUv", "message": ["qn6eXr6FNbKJ05Or", "ya6LSSUlugIAknXc", "SaVYcAYp7qSiDvsf"]}, {"language": "MUOpWv46sXvpOjrp", "message": ["Ro4mYrCeQUnYoID2", "UqO0iAXA9dB4ib8H", "DOJ8TNiP8KgEAj3d"]}, {"language": "bRTI0i6dO3zkbDse", "message": ["h4tJdoGcwMBmegqV", "UaWMJBjrV0p9A7tc", "HrV0MbJGr4drgkDu"]}], "isCustomRegex": false, "letterCase": "S05m0pGzazM2BUXn", "maxLength": 53, "maxRepeatingAlphaNum": 17, "maxRepeatingSpecialCharacter": 96, "minCharType": 63, "minLength": 13, "regex": "WTiKMJAf6AgbiEDM", "specialCharacterLocation": "fCckWogE5gcfF8AM", "specialCharacters": ["GZ2FBS93Mg6TKwdR", "MraDLrwh3d0ykRGk", "gqUNIbJMJ9ABbKVW"]}}, {"field": "O2YEDiqkwKbpdk7w", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["iPPjpSAlZwFGpea5", "ObBB49Km4ClIQmkI", "dLCvNhZ6P8aqZ2yf"], "preferRegex": true, "regex": "wHIJ9gzxqAw4vBGQ"}, "blockedWord": ["Aeh0VTiTP4PSrXUS", "6jYI9lsQFD43Df5q", "UZOFzpFd6b5Jc5TE"], "description": [{"language": "THcup8GG0VCMTFJ6", "message": ["svTyo9RHget5hzB5", "2BDFopxUwkMuSqQn", "KzDgDAtqE3kuybwT"]}, {"language": "QFYEJjIYwqfSRy8G", "message": ["gVk77fd1GS5YkyhA", "iAItnWUmD225fp1e", "gsx3ErheNwqd5pri"]}, {"language": "clNNqLyrlzrJ4QHb", "message": ["fnAdtkujxHff7n1y", "aNCcjgFhS0URBhl0", "L5FCbOn46W2B2uPQ"]}], "isCustomRegex": false, "letterCase": "rt2t6bVpCgKvPXSD", "maxLength": 42, "maxRepeatingAlphaNum": 25, "maxRepeatingSpecialCharacter": 10, "minCharType": 7, "minLength": 26, "regex": "87ir9op4YfGTno5o", "specialCharacterLocation": "HzqY3DgykA8zBJX0", "specialCharacters": ["rkOHUkY5aSlqhYoS", "Xbn6l5xAzc1nc3eF", "m950dtVAo7w4e3v5"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    'mh6Rum5pbgEt39uJ' \
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
    '{"ageRestriction": 87, "enable": true}' \
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
    '{"ageRestriction": 32}' \
    'E4UyoQg0b0sGOkzx' \
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
    '{"ban": "Vt15LKmkQ7YBhsOu", "comment": "J0ypkkt2G4eFh2YN", "endDate": "sdoxpLTBM9Q8t829", "reason": "Ido1JyveSRiBq23k", "skipNotif": true, "userIds": ["IBvTTupABJ4RwH3E", "dKmYtbqQHNfIZwrM", "xf3EnzZVnkLT0Lb8"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "5nmpdN26BY5YI0je", "userId": "O2zMDSy4kyqyKgrt"}, {"banId": "EPdXXlt8geCdiXu3", "userId": "iNvn7vLZ7h6alhJN"}, {"banId": "GZF07lsPP5OfHbXz", "userId": "WnVO2U4uyzZo1rj0"}]}' \
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
    '{"audiences": ["ZrLQjk4VoYfIksth", "24cZBpdDFfvzeU5i", "qhx6zv7EURTNIoG1"], "baseUri": "DBdoKH6sREmmfwUZ", "clientId": "LZZS7snx0Q2Gd8m7", "clientName": "Y3wiNloJfey3HXL6", "clientPermissions": [{"action": 92, "resource": "DjfF7JkjCVpZKMxk", "schedAction": 64, "schedCron": "ienCODZ0mnOpPTVx", "schedRange": ["EgBFzG8tlkxWKCU1", "XN4gl7yHvEqpJSrD", "XVwCkhOQ161TFjRO"]}, {"action": 74, "resource": "cborUHeCpqnZ5NW6", "schedAction": 72, "schedCron": "3WWn2ZJY3QvRa7CD", "schedRange": ["RTcsAHzD3dZyyWbU", "Qpbcv3IwmL7a1K3z", "IUYJmdF1YtWNSQlc"]}, {"action": 79, "resource": "4ijqOVM50tCqkZfs", "schedAction": 91, "schedCron": "HcmgXsrVj3Mjml6B", "schedRange": ["pCODWGOLMmCZUeel", "XYyNrXweiCnDldRP", "Rfd6mLZ0GTJwEjoZ"]}], "clientPlatform": "rRtaeWKMC8wsOByQ", "deletable": true, "description": "Ma8ymxtEFLwELCY2", "namespace": "vIddlxnA1VynioJc", "oauthAccessTokenExpiration": 55, "oauthAccessTokenExpirationTimeUnit": "npUDqvLQixPKVSmW", "oauthClientType": "a8TGko16XTqHc0cM", "oauthRefreshTokenExpiration": 21, "oauthRefreshTokenExpirationTimeUnit": "ixq8Tjnxp5Cl8gga", "parentNamespace": "EmCcuK2hHviBEWpb", "redirectUri": "usO6EyVqstpgZpbz", "scopes": ["77y88rUFum2ZcA8i", "KcF0bkfjcTEFXcTw", "EtnHxP5pVtN4jNVI"], "secret": "druEA39uCJzsE8WO", "twoFactorEnabled": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    'kfCjUK8GeX4Q0B2C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'j0oOmBmXu1KiTTiz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["7yrIvQj2isN7bRwc", "r16lW5YwgZpjlMMt", "PWg8217m7qNkQiKp"], "baseUri": "2oac8QTNEuBbeuQq", "clientName": "m9wM7mgTtUdPVcQi", "clientPermissions": [{"action": 18, "resource": "6DKW9A6AmnQTNFid", "schedAction": 71, "schedCron": "1mSeS9SnGqhJOvyk", "schedRange": ["BcDpzD9zh6dtPK4f", "VHLMvrCsH3RYxH2U", "p9VthPjFrK7Hip0e"]}, {"action": 82, "resource": "3TdtWjfVciuLnLsB", "schedAction": 76, "schedCron": "AMpcwJd4SrigIxAh", "schedRange": ["bFMZfxaznlDQbzTi", "FrQB1yUonirH4URx", "3NkKQBYrlUaMiFEW"]}, {"action": 95, "resource": "51z7i0wQ9egK2t46", "schedAction": 63, "schedCron": "YPKxxOw7xNQ98IEb", "schedRange": ["c9YITN98j4P2AGei", "dXRRnIAJfKVjOn6r", "tILNJVv2DLLUyBt5"]}], "clientPlatform": "hDs45siG30Lv9iGa", "deletable": false, "description": "eYlSU3vYcHZZjFeg", "namespace": "VnZOn0tk4IATSIef", "oauthAccessTokenExpiration": 4, "oauthAccessTokenExpirationTimeUnit": "Uii4KpYcb1AUsESa", "oauthRefreshTokenExpiration": 57, "oauthRefreshTokenExpirationTimeUnit": "MVvLbG04KKnh3jvW", "redirectUri": "0Qp3kTyL4CsLwiWU", "scopes": ["Mcpxn4B6XoTNMuqZ", "THwo1IAJQpb6r8Ze", "aSHwQuiH3Ozu4G6b"], "twoFactorEnabled": true}' \
    'jpszuVk6iPdJ2boQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 33, "resource": "F9Dg4FcDwBGyBiHe"}, {"action": 47, "resource": "N8Mm74HlSZzp4aEW"}, {"action": 20, "resource": "GkHG5OIVuGv47XJp"}]}' \
    'kMiopQrVL3ZZTVxq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 0, "resource": "45X7HvUtPYONZdFk"}, {"action": 21, "resource": "5lkjQNHrjaboGomg"}, {"action": 41, "resource": "oBM9qxd6PWz7sVnM"}]}' \
    'xge2inL8fBFP1ABa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '72' \
    'mZXKEQLkM6o3eGSP' \
    '4Htmr90TqGf0OyqJ' \
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
    '9ibJMmRgoxNwp1lG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "kYoq8HP1TM0tefVQ", "AWSCognitoRegion": "PWX1NPO5Wn7rNG8r", "AWSCognitoUserPool": "Gp7Fadvo5EzpX0It", "AllowedClients": ["tsRezyY9GB5sf94A", "LBmvdncQkcZb8cWd", "VH9bww15zZsaYrJA"], "AppId": "e5Kd5QB96ndlO6iP", "AuthorizationEndpoint": "GC9RhzMC7V8BEphn", "ClientId": "RXnSpCzyb8FkoxQb", "Environment": "rPngi87K58pQswqK", "FederationMetadataURL": "LutINusOsa92F6iw", "GenericOauthFlow": false, "IsActive": true, "Issuer": "IYOLarmpWyvib9CD", "JWKSEndpoint": "W21ANrlpuXD9H1u1", "KeyID": "CvzWPcZwkj1l6bf2", "NetflixCertificates": {"encryptedPrivateKey": "F9EXOBj7v8LHYivm", "encryptedPrivateKeyName": "D0ekycMKlwJTNL2U", "publicCertificate": "CWUtaAD7ZZx1iefA", "publicCertificateName": "TWcDSqGYRMdz07xE", "rootCertificate": "J40epssgJJC3CX0h", "rootCertificateName": "pB1ZGMMo5DSozCuF"}, "OrganizationId": "srBMtoOeLfMCYxSe", "PlatformName": "eJOlxa395rghZwGh", "RedirectUri": "dZJkkGhYvXYMIyaE", "RegisteredDomains": [{"affectedClientIDs": ["MEqOpwetb82b96rs", "H73hRfDgl29GWKpI", "tMt4GszRufkDFLYy"], "domain": "NBPlMrkse9SGcMuV", "namespaces": ["5phhU315LUC6HSMQ", "32UznXNd6ve29lqq", "tcLJW9eTJvKNDFrx"], "roleId": "6LabyDnqXjXKPIcx"}, {"affectedClientIDs": ["h0x7T6RQGnnW4ugG", "X6mKBbgTD9xL07Zz", "zIs3Jke34ZAUuLP8"], "domain": "97ooMLnemwKAvgDX", "namespaces": ["NrFEE4Jf4hQpsLOc", "LtZw0efmEVcW7mxb", "S5UOoICxQMit8555"], "roleId": "Niy4NNFpRE5pS85y"}, {"affectedClientIDs": ["TIRWvLRy58UKWPv3", "F7S0wCVlYQi9cfMC", "eNnu6OIG1PPLRDEX"], "domain": "LXZWXvqNCHvNpeMj", "namespaces": ["Mzguq6HFIqaqwH9J", "6JLb5f3SBMyJUdwE", "BRrHAWUFqTooGGnP"], "roleId": "EgY0t7QQWl42byOw"}], "Secret": "XgKyPhXmcysae8Hp", "TeamID": "WH4xiz3fWthJSu2p", "TokenAuthenticationType": "UIIuPLFAtcWhjAP5", "TokenClaimsMapping": {"7QbWvSSp71zEPPfm": "AQiqRRC2caquMRtQ", "OILcaDqUITBHQR5I": "SNoFR3GUxdMuvmL0", "UBfwzaaeP3Wd0Wrb": "8s3GW0CY0vAfbq8x"}, "TokenEndpoint": "oCurq4lpHXrbVBh6", "UserInfoEndpoint": "0NUA2aKQwnXrmi6y", "UserInfoHTTPMethod": "a8u4sQPvaf1AcweR", "scopes": ["7tJW3MLMob1hUnIz", "IpUM8KK1kGFN0NUN", "GKxdlAUDFQuGPzAu"]}' \
    'T7M6OBrNwioKnXPV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    'ZaDcXsV1TnsZioDi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "BgprzahPB0FKMa0Y", "AWSCognitoRegion": "eyNBQWUHDBnBeePk", "AWSCognitoUserPool": "qg6Zt1Lr5BlO8K6L", "AllowedClients": ["H4dSaa8XYHug51ZT", "ogG0N7Hvnuq1kJ1k", "pHcQtnIc9z70LFQM"], "AppId": "I0oZuEjY0rNBbbB9", "AuthorizationEndpoint": "txAvtRQvqJacXR2R", "ClientId": "f4noXDFaEUkPUBnB", "Environment": "0ZEJH3ebM71Tg922", "FederationMetadataURL": "xiBgHSka0Pz7I1Wk", "GenericOauthFlow": true, "IsActive": false, "Issuer": "Shoj3dGHMeoi5DBO", "JWKSEndpoint": "sQ0Gax0iX05IT9Ag", "KeyID": "sjl5NmnSHhxNmCe4", "NetflixCertificates": {"encryptedPrivateKey": "txY0MsPc9EMgf9JC", "encryptedPrivateKeyName": "JiEvhL8ZfwCVJW9y", "publicCertificate": "spUOyHC9eKeXzrvz", "publicCertificateName": "BllwzyC1aTWEmPgo", "rootCertificate": "y4TkpEw4Zeid4mRo", "rootCertificateName": "FNxv10ckMQVjKk3b"}, "OrganizationId": "WJ0ZuYSe3sI0x2hc", "PlatformName": "8vaN1Off5gRZZMW3", "RedirectUri": "huAIzBPWBYKAEFTd", "RegisteredDomains": [{"affectedClientIDs": ["lKNh6GTzKjsCqxx2", "4QM35bSkFrvGciNH", "b7OY5YIpOLJW52uz"], "domain": "3c8pz63M0g4xXT5T", "namespaces": ["s4e0uR47OzUGHeBK", "tpvyRNgjZkdDppvE", "JiUiDGXgh8BKcLqt"], "roleId": "RZ93LuR8OEyICvwg"}, {"affectedClientIDs": ["wBFehwtdJLdn3R2w", "o8beVQvgeP9qOHaL", "wYnXxrz7sLmP70Lx"], "domain": "N0f3JA27Qz5SjzQf", "namespaces": ["OLYu9O46OOzz9p57", "qSpHerzO87cg7Tqt", "MiQgi7Aj28qCRbww"], "roleId": "Zc4ZS1NMkrnHs1Iy"}, {"affectedClientIDs": ["hwqk140MolIrnlkR", "VbcX435TDYpkk2Gz", "a6DrSycophHw3EoE"], "domain": "EClTO9SDKnMlnKW9", "namespaces": ["jiNMu9QVrMeD4bD8", "gISE34yIAZQeigiA", "3wBrmBYIlZeheP72"], "roleId": "AB8EO3YrlyrWowUp"}], "Secret": "UDVLlTtuJJsHZVsG", "TeamID": "6izJZruOJvSRFLDS", "TokenAuthenticationType": "dj8elbtHvDU91DmH", "TokenClaimsMapping": {"zwiqVPCJ5j18Ou3a": "Y8nceFU5GKmcEKp8", "AQwqgJs6O0Qj0ccM": "kdz6zPz3BVHAqp4O", "9XSjap24esyjh6Wc": "3migf2n6iQyr5cb5"}, "TokenEndpoint": "YL6fwBiaVPmmn0T5", "UserInfoEndpoint": "uzlmi2NY26xrkPPd", "UserInfoHTTPMethod": "g3pXjmtpNfCrIj9n", "scopes": ["tYo3dupUHNu8abrV", "VOKxr9Pa315FKDjG", "2ApSV94Jy6yCSXBq"]}' \
    'JqjAbVwSaoj1ugjr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["8mPkr3tZ506ERSVy", "5M3rrkxu0U9h9gCN", "VZxHGxhZqNXJ6JXS"], "assignedNamespaces": ["h0Z3SWISs1dYrJKm", "x1BT6iLFQejNZJNF", "2hm0TqBQprHn3whP"], "domain": "KU5abnqw8fFa30pV", "roleId": "bhr1BHh1arZAyuLc"}' \
    'ZoEkPpqKhP2jWnRT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "glw0gdWoE4esuiDr"}' \
    'quccz4J6fFQezJ5E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    '3iYHIknvPcJkjRev' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "VYfiExpAgoK9YDq1", "apiKey": "x3dkbJFDEBEOOvJ5", "appId": "BKeipIldsgB4hOxb", "federationMetadataUrl": "88WgKSLIpneDQCfw", "isActive": true, "redirectUri": "RuJgYaj4I8Dzyh1N", "secret": "0JEKNoMtHvjM7X1f", "ssoUrl": "jzknv2HZMIL2P2bh"}' \
    '14LroFTnAuujPeP9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'N0vdVB5a2XkS3XQf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "MuzZh4AhZRe2hgU5", "apiKey": "6xtyJtnbTDXu7Fbl", "appId": "eSP5PcdOuq0m0rva", "federationMetadataUrl": "kR8rcwojLRjhcaJ5", "isActive": false, "redirectUri": "nGlYZ2tod2BGBXjN", "secret": "yRCtPOr1FU3QZy3g", "ssoUrl": "dDms3kb1htW0UGJp"}' \
    'wQZlXuzu3m9u67Jj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'CDwg186hGWKfO9Mn' \
    'oT3t99HmcxzjDhTr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'cBKtU956hOg8oukD' \
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
    '{"bulkUserId": ["VdweG0sFHxTHa2k6", "0SzCqUgq1gLbcIMe", "vTmC631p7q794bu4"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'AdminGetBulkUserBanV3' test.out

#- 145 AdminListUserIDByUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-user-i-ds-v3' \
    '{"userIds": ["9lINFTtERAXT2h3h", "cQ2wV3ZbBTnNQnVU", "hA5WnzVZdj8tsyzC"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'AdminListUserIDByUserIDsV3' test.out

#- 146 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["4QaLXp3o4TDraEEa", "DNJbVd20FVHevCjt", "hJUb7jKuMrFaoLul"], "isAdmin": true, "namespace": "noAXRlcq0mYWKQYl", "roles": ["qMmu2pvF6rP03bQa", "q1cT88H6RCW8gJmG", "zDlqxtLsR2AGOiPh"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'AdminInviteUserV3' test.out

#- 147 AdminQueryThirdPlatformLinkHistoryV3
$PYTHON -m $MODULE 'iam-admin-query-third-platform-link-history-v3' \
    'Nt2IdH8aYYUT6mma' \
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
    '{"listEmailAddressRequest": ["833TDzk66ix88sAU", "rXr7MXxCvyy7caxz", "4MQrODLNlxiEjQBC"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AdminGetBulkUserByEmailAddressV3' test.out

#- 151 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'Zx9DJ4V97SJLlrwX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'AdminGetUserByUserIdV3' test.out

#- 152 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "mIGamRCARuFLx4rV", "country": "4CXVMrDYKe2eTf1a", "dateOfBirth": "xo16GqT2vSLLiMvc", "displayName": "u39YZJypWzpNXgno", "languageTag": "KIz8O8NglJtZTh28", "userName": "0vflFMxIhlIT8Agy"}' \
    'ZJ16MMd2bzOrTn2h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'AdminUpdateUserV3' test.out

#- 153 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'uwPgyUzBUWiKoNGt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AdminGetUserBanV3' test.out

#- 154 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "vyk5xEfrJDxKsw5X", "comment": "l7ZZrDZdbuvCFBaV", "endDate": "cohewKkVuGv9fQXk", "reason": "ErF0drbYrrFQP6rW", "skipNotif": true}' \
    'pvC1cr5T1PSXhduT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'AdminBanUserV3' test.out

#- 155 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": false, "skipNotif": false}' \
    'Gg97PY0txzvYwv7a' \
    'tn9EQv2Oj8TFNeGt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminUpdateUserBanV3' test.out

#- 156 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "JGjKbMgCeuAYuzrm", "emailAddress": "bWofEaKStqdKu4RO", "languageTag": "nONpJ849chqeiUGQ"}' \
    'MwNwDlYSli3p8YaA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'AdminSendVerificationCodeV3' test.out

#- 157 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "del3hHMSLAiscGRW", "ContactType": "zkCl1ZKuPxjDUGRG", "LanguageTag": "cCEPjbUy7F82Adu9", "validateOnly": true}' \
    'JfWNZIxAgBpeubpr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'AdminVerifyAccountV3' test.out

#- 158 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'KX68jTyRd3LrR1x6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'GetUserVerificationCode' test.out

#- 159 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'U1v6zSLjm9zmzUW0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminGetUserDeletionStatusV3' test.out

#- 160 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"deletionDate": 44, "enabled": true}' \
    'j90jmLTt5YQGawco' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserDeletionStatusV3' test.out

#- 161 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "mPoiYoQ1f1AYq306", "country": "Pysv4VPaZWolXypw", "dateOfBirth": "ucUqqqff2iWi4yP3", "displayName": "uqNcig6YcDA8Z3g6", "emailAddress": "2oGYwkrjLI4EHJEE", "password": "Wgki9fbdvUMDZeO4", "validateOnly": false}' \
    '5wdCpVpnENiTc9NE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminUpgradeHeadlessAccountV3' test.out

#- 162 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'SV22eRBElD4K2Cy1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminDeleteUserInformationV3' test.out

#- 163 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'tJcPAEkCeV29QsQk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AdminGetUserLoginHistoriesV3' test.out

#- 164 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "100eu5UcxuXXpt0Y", "newPassword": "SPX04uEIdAwgDobo", "oldPassword": "pbdJeVCiKs2vLyH9"}' \
    'kcSBdk7MwQzn28Le' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminResetPasswordV3' test.out

#- 165 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 29, "Resource": "neohqhCzroAzWQDv", "SchedAction": 9, "SchedCron": "T0WK5ngNUxDKfZYo", "SchedRange": ["fPGUbSaA00nKxQjY", "U6KlavIiLxU2I1Gy", "JS48Hxu8Ju4XSAnl"]}, {"Action": 88, "Resource": "RYB9BgSZBvkehRn8", "SchedAction": 26, "SchedCron": "B0nrW1qx3NJTugVW", "SchedRange": ["Xz8dv7BiEUqnzxs2", "deMF8UAJIHEZv5zy", "UUyNJkvA5xF3zHtZ"]}, {"Action": 91, "Resource": "E9Wj90EQzOidrWnL", "SchedAction": 36, "SchedCron": "XTNwpp0ni1YfIgLZ", "SchedRange": ["4YIzElrLZOBLHCKm", "LBaIwlokbAFW8RgB", "UwBL28BqM8UzvKqe"]}]}' \
    'oTiNKGRUMrimGAz6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateUserPermissionV3' test.out

#- 166 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 82, "Resource": "Ah1SpLhMF2Pav11F", "SchedAction": 41, "SchedCron": "dd6uaO9TiTPnIh2i", "SchedRange": ["aIBpYC4txul6VKYl", "NYYlHPwKDpJmkeoA", "kp3Z4pgyJYwclb4g"]}, {"Action": 7, "Resource": "ftVqSECsypS42NmY", "SchedAction": 87, "SchedCron": "cN9drwqytieXpIZf", "SchedRange": ["r5XDq9dGLHjtgE2b", "TXJxCCFqPNDqWrpk", "Wnnova15WVuE5cYV"]}, {"Action": 85, "Resource": "bK2MFKvw5TWjAh4g", "SchedAction": 51, "SchedCron": "LtGEZDRNkk4DJUof", "SchedRange": ["JXK8RGS0zCYRVmbf", "zwUmsy0stUmKdXii", "TObNdqkWa13g3pgH"]}]}' \
    'x6uPf6jQZcYerH93' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminAddUserPermissionsV3' test.out

#- 167 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 99, "Resource": "X7iXEEM2KOusNEHc"}, {"Action": 70, "Resource": "fWBspT3MLwJZquMQ"}, {"Action": 92, "Resource": "cuM2ykRj3WnyAaUa"}]' \
    'QBKFedL2uduXvZUb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserPermissionBulkV3' test.out

#- 168 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '87' \
    'ZwVMvshGmsg6ZJYn' \
    'kHDnHTlRugM7a2UZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminDeleteUserPermissionV3' test.out

#- 169 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'geesipbP027okM5E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminGetUserPlatformAccountsV3' test.out

#- 170 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    '8tAajVSvLRj306RD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminGetListJusticePlatformAccounts' test.out

#- 171 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    'uaSixXEdloYZBkat' \
    'NLc42eq0O6VsXtOl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminGetUserMapping' test.out

#- 172 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    'Qwj5xPvm7c5nPR0Y' \
    '1sffUaZ64dFpiv8o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminCreateJusticeUser' test.out

#- 173 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "9Gw4QtKgyIeySoUx", "platformUserId": "oMrj2J4JGQZAtyjT"}' \
    'xnlmSyjEaFH2DRN6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminLinkPlatformAccount' test.out

#- 174 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "HIEqIFEcS0ynIMOY"}' \
    'WpUYUQMooiKT57rm' \
    'bjEnimeR7EFBz43E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminPlatformUnlinkV3' test.out

#- 175 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    '9FkOPVu2fDtOjW1i' \
    'SYQbcebBd5wb5H3q' \
    'ppoCiHMD4iBK2O7q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminPlatformLinkV3' test.out

#- 176 AdminGetThirdPartyPlatformTokenLinkStatusV3
$PYTHON -m $MODULE 'iam-admin-get-third-party-platform-token-link-status-v3' \
    'YtOHV5hnpjc5CNLn' \
    'nEvo25aEtdjls5oa' \
    'dseJg7y4Q9CU3fjS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 177 AdminGetUserSinglePlatformAccount
$PYTHON -m $MODULE 'iam-admin-get-user-single-platform-account' \
    'RaXD4HDmdvhMXxiK' \
    'R29LKIhNU43K8bih' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminGetUserSinglePlatformAccount' test.out

#- 178 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["dw3prp0UHlWUxkBe", "fhxRtrqbv56oqwnC", "LVc2qHZuuedbBOd1"]' \
    '9DqZJRYV1oqNLmPA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminDeleteUserRolesV3' test.out

#- 179 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "UIMwa2wYq6DsUq38", "roleId": "bYvaWLoKzHnngdfF"}, {"namespace": "nOfY9stXH6LYXXMn", "roleId": "dxBPKmHVB7cNzHhv"}, {"namespace": "xc4xAPZ86WNnQOhu", "roleId": "sPn4466u8agb5HPs"}]' \
    'BU0Eo6QJ9vBRJ4UP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminSaveUserRoleV3' test.out

#- 180 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    '09fabC01Thm9f4AW' \
    'pyiKVT3OvEujx5yj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AdminAddUserRoleV3' test.out

#- 181 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'tQSCJaOHzpb623Ec' \
    'iYoYOPVg6DLEZ6Dx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminDeleteUserRoleV3' test.out

#- 182 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": false, "reason": "XefsSgZxSYnVwXqF"}' \
    '6K0WA76Kl2mHHoz6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateUserStatusV3' test.out

#- 183 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'qBQnEDgX49n1xTDF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 184 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "cmOm1sqdIWU6ERyl"}' \
    'ESgf5dXMrPoYSohf' \
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
    '{"adminRole": true, "deletable": true, "isWildcard": true, "managers": [{"displayName": "o3F2LQw7Y2VdSxgX", "namespace": "ez7VvS0C9JLVQQPa", "userId": "7PPx4Zi6WaC8wk7H"}, {"displayName": "MbJhNwZgf5nlMDOR", "namespace": "YuXnPNJgayPFcyUn", "userId": "KXA3mcyMmX6WF8jt"}, {"displayName": "NAVOYqSH533YlJ93", "namespace": "CCGBXv4fP4VPzhcH", "userId": "4UJrrCKvrOAi7lMg"}], "members": [{"displayName": "kVWJYzSCIDxWUxgO", "namespace": "zeRNHIqK5PT404mF", "userId": "w4HJv5T2kIQOecfL"}, {"displayName": "sYKTmUnKlrOsJmEw", "namespace": "jGYN8VNPXNsmwTV8", "userId": "imJHNI0l6jJVzF1O"}, {"displayName": "i2sQuWUBBHZonSmz", "namespace": "F831vlCiZAZHCWMX", "userId": "xVh8HTrKqVwnpPn8"}], "permissions": [{"action": 81, "resource": "HNhJQq94Re5IM1ak", "schedAction": 82, "schedCron": "RUysya4J3rvTzMTM", "schedRange": ["SwrNov2GW9i54JY2", "3AUWFTLq0W1JqwKs", "1mO80L7IOHlf6j8P"]}, {"action": 11, "resource": "OzUiQKZqz5NSp0B7", "schedAction": 77, "schedCron": "td21cS6IVE4fzwG3", "schedRange": ["BHaRcZ8NK4gkLmvE", "OaRcqTgF0xtQAXoD", "oFkmA3fgzcwdgJMj"]}, {"action": 70, "resource": "Mz9YyduMomEHcU15", "schedAction": 91, "schedCron": "baxw33rNbE4bbDU4", "schedRange": ["FMTbQaANJOODGerD", "CWcl3VSJENQopeHD", "6iKBGm5Cj7RqnJUm"]}], "roleName": "fDmofxvN8pRGoUtm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminCreateRoleV3' test.out

#- 187 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'bWZbEjPyq35BWDoc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminGetRoleV3' test.out

#- 188 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    '3qNcQFFyHv141NPq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminDeleteRoleV3' test.out

#- 189 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": false, "isWildcard": true, "roleName": "RUMKSQjFdjqTaZFs"}' \
    'WzbqwTZQIN5jC6a8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateRoleV3' test.out

#- 190 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    'mEVCXHmFnrSL0PJc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminGetRoleAdminStatusV3' test.out

#- 191 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'ZQaCeNLYxMID9pqZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminUpdateAdminRoleStatusV3' test.out

#- 192 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    '5rryiMMt6fQtLhzy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminRemoveRoleAdminV3' test.out

#- 193 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'laquioT3QBt29AiR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminGetRoleManagersV3' test.out

#- 194 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "ASsuFM4ahGw7XcF1", "namespace": "Qwzz606UGXPhoNZl", "userId": "XMef7AvS3TfKx6By"}, {"displayName": "TygbtOtcQS4Cmgw1", "namespace": "wRUnIVYxY6OhdkrY", "userId": "iCinoVOzo4Plv1Il"}, {"displayName": "TpEhjTFYdzsUNvQA", "namespace": "n2LuMjLqwmVz3zKs", "userId": "fjz1mFkyxoUzfMFo"}]}' \
    'XCOguSq2A4R3wDdS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminAddRoleManagersV3' test.out

#- 195 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "kNfHJtA3QiX9Zvty", "namespace": "dbaVb0scd97A0GP6", "userId": "djn2Ps3IVT5hUZ3c"}, {"displayName": "nDq0ddZG0EpfGAqH", "namespace": "KcSxUc2YgRpk2IFG", "userId": "IgIpscUpVAciu2XP"}, {"displayName": "PUxzXHUvxhvTZcvR", "namespace": "KoaM4ozSAg8FTLrB", "userId": "yWOJhbocoGlPzdfx"}]}' \
    'cC3rpWhSpq0InxML' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminRemoveRoleManagersV3' test.out

#- 196 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'pP7n7M3JXjEvsj5W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminGetRoleMembersV3' test.out

#- 197 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "cQ99M1yuXeqV31LX", "namespace": "2ehcMnM6QtjzQjDl", "userId": "UMCGnxZwak7KHnzG"}, {"displayName": "ASmVzePIroz41oQC", "namespace": "uXeTRyJQrNLTcqLV", "userId": "TN5Qf4tjPGpu27yx"}, {"displayName": "b1of79zVTWIfgdNp", "namespace": "hqe9fS1m77MAg4Ko", "userId": "ZQPLhDSJx9jzxaRK"}]}' \
    'ph4kiIFgS4fLqlrK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminAddRoleMembersV3' test.out

#- 198 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "GiS3XxjkyNfj3XgT", "namespace": "RTjI9oNBzgQ4CRwg", "userId": "0sKVeSpMny0GrvKI"}, {"displayName": "5EVB9ZFzLNsjdCFt", "namespace": "KY0KsxR0rCFkyiQZ", "userId": "fMnTbKdwNhiIP7dp"}, {"displayName": "J8B8VwFQnVco2oCn", "namespace": "1KvJmbjapW9UlEqt", "userId": "zDd7SgxdxB5kvtM8"}]}' \
    'ah9bPsksceGUEX8E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'AdminRemoveRoleMembersV3' test.out

#- 199 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 89, "resource": "ZbDQAEJLbVWH2XLI", "schedAction": 13, "schedCron": "6LpHCvCYTgX9JQwE", "schedRange": ["rzjtuP9pUUv7qefN", "MFsZAIqak1zi0JSa", "5cRn31D8ubfdXi7B"]}, {"action": 51, "resource": "16aH6gOBUIMeL0GL", "schedAction": 67, "schedCron": "aefSDME8X2MxILI4", "schedRange": ["2BJMPkZmay4Csye3", "iJLtjsu6ZJRCoDq3", "geuHFFaZzPIjETqc"]}, {"action": 75, "resource": "RfGe3z2rtjWpJAlK", "schedAction": 69, "schedCron": "lw31pdDrXQ47WSGy", "schedRange": ["DCKF0LLhO3lGZ7eG", "OPj2XoFug8BUQUmP", "HnPumcazKAna0ji7"]}]}' \
    '57aNDFeKnQP2j2Ws' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'AdminUpdateRolePermissionsV3' test.out

#- 200 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 87, "resource": "PFduN4gx0UC6eWKC", "schedAction": 65, "schedCron": "kGzCNgesQlZZHIZH", "schedRange": ["0iks6kx0adnimPyy", "zezsHdFftHHR6xbc", "VVonwz27DWfGRVhb"]}, {"action": 21, "resource": "TvCPrrZCTU5WUJiz", "schedAction": 64, "schedCron": "ujpIWo0qJtqp4Q6X", "schedRange": ["gICLgMHcP1eE6sjW", "QllYsONpp6QGW56C", "NiszHE69D1MMoaf6"]}, {"action": 75, "resource": "HcraLXR2n9JQvq7N", "schedAction": 74, "schedCron": "djcAtTj1IMuuhxxl", "schedRange": ["ulfmya73hX0a8Ri8", "5PA9wNpmrK5Y5heA", "2ewWnFcqHxXP3kRh"]}]}' \
    'trBcBofWTGYx2ihg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'AdminAddRolePermissionsV3' test.out

#- 201 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["ioL8VvEzHGTt9emd", "CLmzJbdkykVAnmnR", "fUilcKA84d9pMsl7"]' \
    'zrNJvDiP2hNNEI8Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'AdminDeleteRolePermissionsV3' test.out

#- 202 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '37' \
    'A5yFIH3s9UyeaFi8' \
    'OE7BCK4FeVGrl5Np' \
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
    'UG9zblWEiHaUjyTH' \
    'b0sSlstb3slUe94N' \
    'xhXsVcqTYi1TMBMz' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 204 'UserAuthenticationV3' test.out

#- 205 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    'aOrxuKvtUVtqbDWn' \
    'J2i9TRmJOqIl7U12' \
    'hO5vpk9DOSgbsdGV' \
    'PLD9A5NmuZDUV3yH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'AuthenticationWithPlatformLinkV3' test.out

#- 206 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    'urgOfba1XeoHYTNo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 207 RequestOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-request-one-time-linking-code-v3' \
    'Rol84UlkxtP5Vok9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'RequestOneTimeLinkingCodeV3' test.out

#- 208 ValidateOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-validate-one-time-linking-code-v3' \
    'sNK1ORg3tChsS3fF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'ValidateOneTimeLinkingCodeV3' test.out

#- 209 RequestTokenByOneTimeLinkCodeResponseV3
$PYTHON -m $MODULE 'iam-request-token-by-one-time-link-code-response-v3' \
    'paS1uq1mH3oYfPK2' \
    'QiAUhIfi17YrkWHN' \
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
    'xiaNyqBfgw58Hx0X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'RequestGameTokenCodeResponseV3' test.out

#- 213 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'YL0fJOPYpnPqGlPn' \
    'hBDOWqDU8N3DjVUt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 214 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    '0n0jfyDbtIXICLkK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'RevokeUserV3' test.out

#- 215 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    '8ZvbnTg3znlg8nmz' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 215 'AuthorizeV3' test.out

#- 216 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    '3S6pypZqISn3msry' \
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
    'kQFtW8QGKFZLrIfq' \
    'rZuu7IwKcT7sAsv2' \
    'TKCbYMVkXEHmsHwI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'SendMFAAuthenticationCode' test.out

#- 219 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    'GGsusS0zZRODEKPd' \
    'udZsLaf8aZrXW84d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'Change2faMethod' test.out

#- 220 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    't0TSTmy7XF26K2U7' \
    'xttUz8nWKJjv06Pu' \
    'ffHghAQfAsYXVzBe' \
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'Verify2faCode' test.out

#- 221 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    '4wM9WZfOOxAzmsbh' \
    'i5QJuc2SNBaOlXfg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 222 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'sgBd7MYLLoPZrkjR' \
    'm5Ki0orhXrISEaPZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'AuthCodeRequestV3' test.out

#- 223 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'HLQkTHvndQsCKAO2' \
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
    'JRz3CGwtujkzxidL' \
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
    'rnyirw3iJt5iA3JS' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 227 'VerifyTokenV3' test.out

#- 228 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    '2xeaJ08JrSHPqdhK' \
    'Hn6ZjZMdr1C2TIQz' \
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
    'RJY7UfYSrdN0JVz4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'PublicGetInputValidationByField' test.out

#- 231 PublicGetCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction-v3' \
    'U43EcV1FRyeeqehM' \
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
    'NeRYKeMbL0G4v5D6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 234 PublicListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["ylZguO918X7rLoex", "HBMBMMAYokSWFwaj", "RGUyklfLVY6g3PO4"]}' \
    'hKAeF4GUV5m96qcC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 235 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    'JsVOWtu5RPsqd66I' \
    'mBEuhnaxZVf6MD9r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'PublicGetUserByPlatformUserIDV3' test.out

#- 236 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    '1y5Ihr531Kajxq7l' \
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
    '{"PasswordMD5Sum": "zuVRVEvhKIbrq1xs", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "6B62P1Kazg73c6Up", "policyId": "mA4ehxNIIlcrZzga", "policyVersionId": "meT2mLkkAMjHyI0e"}, {"isAccepted": false, "localizedPolicyVersionId": "Axj0nZHjmoKHJngw", "policyId": "Me1AnQVj6QQjZtkN", "policyVersionId": "JCnDSrsSey2BqOxg"}, {"isAccepted": true, "localizedPolicyVersionId": "Eux2MSuwsEHlwdeJ", "policyId": "yhsHS6YqPudWviQs", "policyVersionId": "ULL1txfX9tqFSkGX"}], "authType": "oIcFN5JL9M53Mg0M", "code": "zWS9usxxnMhjv66D", "country": "yED4prRVibTATxd7", "dateOfBirth": "Mzjv1gSj8kcNhoqc", "displayName": "RZRNATojM7daV0Vw", "emailAddress": "R3yNKDtMqMrAGpdy", "password": "F6WDHn3ePBxQNz2I", "reachMinimumAge": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'PublicCreateUserV3' test.out

#- 239 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'EHMzl5jhwVDsuzwJ' \
    '4v50eoaIBrTh0EKk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'CheckUserAvailability' test.out

#- 240 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["JioUpvGnkcHgCfaW", "zPUvCnfqsPGgJZyR", "wigaMu07Zek8WObp"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'PublicBulkGetUsers' test.out

#- 241 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "f0FHYfViEj70KYKI", "languageTag": "fFt4GYjUt4F1ZVy2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'PublicSendRegistrationCode' test.out

#- 242 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "qFfSr3psWjOyHLyK", "emailAddress": "e2foqsVIfgBTr8Rc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'PublicVerifyRegistrationCode' test.out

#- 243 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "xRQR0NYdJzf3TMhS", "languageTag": "aynVs05nZC4Os7hq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'PublicForgotPasswordV3' test.out

#- 244 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    'IH2NgARSG3QQNGNH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'GetAdminInvitationV3' test.out

#- 245 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "K0UuJdeGNquQnaXp", "policyId": "DQ5rU2taDWh9JV5o", "policyVersionId": "c5IFQsrwHqFqwVA5"}, {"isAccepted": false, "localizedPolicyVersionId": "hcLK0WTZbtmQkwC8", "policyId": "azx3IRWme3C6p2r4", "policyVersionId": "D3NQdjrjkX3AMgK3"}, {"isAccepted": false, "localizedPolicyVersionId": "AxbDPXU5xJBhIpJ9", "policyId": "b0Ap7CmSiKPjcwAw", "policyVersionId": "5GdxpvLfa4b4hTaZ"}], "authType": "EMAILPASSWD", "country": "2vjOXptxzx6kkaZY", "dateOfBirth": "pl52sQR9Znp5d1eS", "displayName": "wrG2GBBEWrDbQ1Zz", "password": "hDuLHq9LTBstguOd", "reachMinimumAge": true}' \
    '0O7l3GbKPHdDTQDE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'CreateUserFromInvitationV3' test.out

#- 246 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "EE2mTsn1NwJ71szs", "country": "NmnqZSWdEyOVYrTd", "dateOfBirth": "Dq7IqbTVv8BLsqQW", "displayName": "8HSrEm5Y7jI232Sj", "languageTag": "ktijiNzTUe8KdizX", "userName": "mrmK0sCUsqxKocHo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'UpdateUserV3' test.out

#- 247 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "mtjoU1kUqRedwIu1", "country": "TSRr6r8mzfMedpcK", "dateOfBirth": "hvHPlvYanGqEkn9O", "displayName": "EVwLWGT4MXhmzvRQ", "languageTag": "b7c0vmjWq9fQqzul", "userName": "LGfQMqSLQDlRFYMV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'PublicPartialUpdateUserV3' test.out

#- 248 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "fiAMa6Pco7Mfviks", "emailAddress": "lpyL9BYLVVznF6hM", "languageTag": "Yfksp8VQhYSFeBOp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'PublicSendVerificationCodeV3' test.out

#- 249 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "0ilGQFwHUtZugblT", "contactType": "3aIDKn9qJXncm5ig", "languageTag": "pAewbmnWk0E7YaPb", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'PublicUserVerificationV3' test.out

#- 250 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "5cAFVo85r1b8Yp2Q", "country": "nuhQuIdvZdj6AspW", "dateOfBirth": "BfRnLcLbp7OmcrDJ", "displayName": "7u1rrRPcnG89rnNW", "emailAddress": "1Yjfn8lY4DnYRxY8", "password": "ZhHeb0CaPFDjrSot", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'PublicUpgradeHeadlessAccountV3' test.out

#- 251 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "npJWALpToj9rgr5R", "password": "ffM5JXvPdzEpDln0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'PublicVerifyHeadlessAccountV3' test.out

#- 252 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "4F8BQjzobhDa8VxK", "newPassword": "OrfVfBRIfkStOqdX", "oldPassword": "qhDMQ6tBLljC7gcT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'PublicUpdatePasswordV3' test.out

#- 253 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    '3M1DArk4L80aXFY7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'PublicCreateJusticeUser' test.out

#- 254 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'SQkym9KvKMHK5fbq' \
    'ioeoRIplY0DIzRCN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'PublicPlatformLinkV3' test.out

#- 255 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "AO6ZpqXJmPJso6M1"}' \
    '1LLZWKgWxn9YL16H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'PublicPlatformUnlinkV3' test.out

#- 256 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'QdtAneXGgxNg33ZI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'PublicPlatformUnlinkAllV3' test.out

#- 257 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    'UrIkfmdXVvaPQzzK' \
    'dFg7N7piT8VcrXLZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'PublicForcePlatformLinkV3' test.out

#- 258 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'nuMNpKEIs3GC9VTK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'PublicWebLinkPlatform' test.out

#- 259 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    '7tkJWFpHt7MdKu9X' \
    'wn5GHJDGatrYOMO9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'PublicWebLinkPlatformEstablish' test.out

#- 260 PublicProcessWebLinkPlatformV3
$PYTHON -m $MODULE 'iam-public-process-web-link-platform-v3' \
    '1CYEjX867n9PT9fR' \
    '7mMuBXPDKCriRKzT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'PublicProcessWebLinkPlatformV3' test.out

#- 261 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "Z7TXAVRnUVbxEJcK", "emailAddress": "HE764EwhQfxFKIOG", "newPassword": "T1WKSmLoA0ILaESC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'ResetPasswordV3' test.out

#- 262 PublicGetUserByUserIdV3
eval_tap 0 262 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 263 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    '1GJXsoBwqh0TQXa2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'PublicGetUserBanHistoryV3' test.out

#- 264 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'j7v3zQJoQLTAlW75' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 265 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    'icIKUpXazsFrmaGN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'PublicGetUserInformationV3' test.out

#- 266 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'oi3RPTgWotLNz0u8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'PublicGetUserLoginHistoriesV3' test.out

#- 267 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'ySxA0yrjz4q7e0EJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'PublicGetUserPlatformAccountsV3' test.out

#- 268 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    'nADXC2y0DY1E1SMK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'PublicListJusticePlatformAccountsV3' test.out

#- 269 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "9oA4vK56dsYI5SKV", "platformUserId": "5pDANyJ184miBhdV"}' \
    'Jt81fmLSyGuu5rbJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'PublicLinkPlatformAccount' test.out

#- 270 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["VIwRMtwApGbXnR3y", "C6f2MHGGedk0KzXR", "clOXdPYZQxBnttu4"], "requestId": "yW5etl4Xk8Hd1lRt"}' \
    'oPMvsu9oswEPTvzw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'PublicForceLinkPlatformWithProgression' test.out

#- 271 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    'wGnpbx8MCIjKzylq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'PublicGetPublisherUserV3' test.out

#- 272 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'W8auyseP9wEEyYAn' \
    'HPp4XzVL5McglFCr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 273 PublicGetRolesV3
$PYTHON -m $MODULE 'iam-public-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'PublicGetRolesV3' test.out

#- 274 PublicGetRoleV3
$PYTHON -m $MODULE 'iam-public-get-role-v3' \
    'jxqqxAYqXG2V3baM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'PublicGetRoleV3' test.out

#- 275 PublicGetMyUserV3
$PYTHON -m $MODULE 'iam-public-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'PublicGetMyUserV3' test.out

#- 276 PublicGetLinkHeadlessAccountToMyAccountConflictV3
$PYTHON -m $MODULE 'iam-public-get-link-headless-account-to-my-account-conflict-v3' \
    'kZ9JCqBIkUID0EE9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 277 LinkHeadlessAccountToMyAccountV3
$PYTHON -m $MODULE 'iam-link-headless-account-to-my-account-v3' \
    '{"chosenNamespaces": ["InZNLwwAhW2b5OHK", "tUv4lTkQNjxhXdj1", "CG0EBgst9Qu8Ofl2"], "oneTimeLinkCode": "oB8VTjF0pD3NHU8i"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'LinkHeadlessAccountToMyAccountV3' test.out

#- 278 PublicSendVerificationLinkV3
$PYTHON -m $MODULE 'iam-public-send-verification-link-v3' \
    '{"languageTag": "YUOtG5gbQSKW2Mdg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'PublicSendVerificationLinkV3' test.out

#- 279 PublicVerifyUserByLinkV3
$PYTHON -m $MODULE 'iam-public-verify-user-by-link-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'PublicVerifyUserByLinkV3' test.out

#- 280 PlatformAuthenticateSAMLV3Handler
$PYTHON -m $MODULE 'iam-platform-authenticate-samlv3-handler' \
    'CH4bWxRF6fBPa6GO' \
    'uV5z0p8jaJs2duQq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'PlatformAuthenticateSAMLV3Handler' test.out

#- 281 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'awPrxi6F4elhy9CZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'LoginSSOClient' test.out

#- 282 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    '94CAUVW8FoEf8tjC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'LogoutSSOClient' test.out

#- 283 RequestGameTokenResponseV3
$PYTHON -m $MODULE 'iam-request-game-token-response-v3' \
    'jWc22qqDfNz59jHw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'RequestGameTokenResponseV3' test.out

#- 284 PlatformTokenRefreshV3
$PYTHON -m $MODULE 'iam-platform-token-refresh-v3' \
    'SDQHadmAo0lzhPm7' \
    'RmaOr6TLwVyE42Ap' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'PlatformTokenRefreshV3' test.out

#- 285 AdminGetDevicesByUserV4
$PYTHON -m $MODULE 'iam-admin-get-devices-by-user-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'AdminGetDevicesByUserV4' test.out

#- 286 AdminGetBannedDevicesV4
$PYTHON -m $MODULE 'iam-admin-get-banned-devices-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'AdminGetBannedDevicesV4' test.out

#- 287 AdminGetUserDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-user-device-bans-v4' \
    'Ab7CKt79wAopZL9C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'AdminGetUserDeviceBansV4' test.out

#- 288 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "w6K9h55mwUvhdBOg", "deviceId": "umV4wAsd4ifGd0bk", "deviceType": "WrlhtfTywRW4fmg6", "enabled": false, "endDate": "6j73doCWxhubMXbx", "ext": {"NvT6wAffv4uzKAwi": {}, "I4wTxNIefCmtrxWu": {}, "293551nQBNKcqCkU": {}}, "reason": "XRj8gQHEe4CO370O"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'AdminBanDeviceV4' test.out

#- 289 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    'sbzRKKPd6mjzLxll' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'AdminGetDeviceBanV4' test.out

#- 290 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": true}' \
    'M8ngVT1ewVxvgAoc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'AdminUpdateDeviceBanV4' test.out

#- 291 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    'Oqsd5v5n7eXCo9gZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'AdminGenerateReportV4' test.out

#- 292 AdminGetDeviceTypesV4
$PYTHON -m $MODULE 'iam-admin-get-device-types-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'AdminGetDeviceTypesV4' test.out

#- 293 AdminGetDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-device-bans-v4' \
    'WdxfIdW8fNAM5YdH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'AdminGetDeviceBansV4' test.out

#- 294 AdminDecryptDeviceV4
$PYTHON -m $MODULE 'iam-admin-decrypt-device-v4' \
    'ivK2Q0WwolQy037h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'AdminDecryptDeviceV4' test.out

#- 295 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    'JMOEv5W0v25yAObZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'AdminUnbanDeviceV4' test.out

#- 296 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    'IbrA8XAKKWMDebeh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'AdminGetUsersByDeviceV4' test.out

#- 297 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"count": 91}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'AdminCreateTestUsersV4' test.out

#- 298 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["TuNPf5JCSDyYy4e5", "qoTZxSoZbQUnUxS6", "m68WL3HDL4yx5I0e"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'AdminBulkCheckValidUserIDV4' test.out

#- 299 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "uBsccHPA2v9XP9en", "country": "fEX7lloLgIYqxFfS", "dateOfBirth": "NJlHCjxLNnYUlGQs", "displayName": "Fpy9ZVlLIFwLgT78", "languageTag": "nootfUs9559ilm3c", "userName": "auhrw9Yn2z5cnbm7"}' \
    'z2Aa24yBTw3wfNGy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'AdminUpdateUserV4' test.out

#- 300 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "Wf3VujS7Bq5bcfPW", "emailAddress": "4pPZB9YXltCxyztU"}' \
    'nj17t3gHBXvjvzie' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'AdminUpdateUserEmailAddressV4' test.out

#- 301 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    'xzOLbOWbtcJUxM3A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'AdminDisableUserMFAV4' test.out

#- 302 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'WyDkA5LmART6kulp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'AdminListUserRolesV4' test.out

#- 303 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["M4SRtUE5P4kxmHtF", "bjqurHix0QYycDH5", "we2Mx0sYCnYPT4i4"], "roleId": "mxc14iRfzJwKuc7E"}' \
    'piQEzz5N5osRYO7w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'AdminUpdateUserRoleV4' test.out

#- 304 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["bYh7q02W8tkTURUF", "mqNc8xhQqptccNor", "Rls7EC3nDnhFvDlF"], "roleId": "d7iyZpvWVJFK6Zuv"}' \
    'lzGCII156hIg0g8H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'AdminAddUserRoleV4' test.out

#- 305 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["Ixpzm9AcFhH4ZlYY", "3rEuHMWwQNmCQmGC", "F963CbsOawlRBQJH"], "roleId": "6fNekhk077gxaj55"}' \
    'huTA6AvmW0567BFq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'AdminRemoveUserRoleV4' test.out

#- 306 AdminGetRolesV4
$PYTHON -m $MODULE 'iam-admin-get-roles-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'AdminGetRolesV4' test.out

#- 307 AdminCreateRoleV4
$PYTHON -m $MODULE 'iam-admin-create-role-v4' \
    '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "IuxKmBXLi6GpnqAe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'AdminCreateRoleV4' test.out

#- 308 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'Mvg3w0FQ1520WM3T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'AdminGetRoleV4' test.out

#- 309 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'xWXSdTiKdva2UREo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'AdminDeleteRoleV4' test.out

#- 310 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "tCLy2CqgCG7JwJCD"}' \
    'qkzOdFwLJpIPxzLE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'AdminUpdateRoleV4' test.out

#- 311 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 97, "resource": "g6t42jE1Wad232YV", "schedAction": 10, "schedCron": "A2zHFGbN8AQaCaw9", "schedRange": ["UF7cdSDd99DQZ7vn", "Tx8HDXTJWiyw17og", "zmbj4SLYDrZJvDLG"]}, {"action": 45, "resource": "6fzYRn85brTu8F7c", "schedAction": 42, "schedCron": "ft5nBA9xNIJVuMz0", "schedRange": ["4evSdE2FMcKd7c94", "rEmIYuAT5OAcUwYH", "GmG5rNDBF1oU37vj"]}, {"action": 10, "resource": "7kgTHlrxKbsV4Xtr", "schedAction": 70, "schedCron": "BBbq8IzZsMFLX9Zh", "schedRange": ["FXcFtfBS3ZIHofhw", "yM6Bw2sFGQ5DQoDw", "zrKPOZZnV3zR7YxS"]}]}' \
    'u6addocg10Hy9jx7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'AdminUpdateRolePermissionsV4' test.out

#- 312 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 13, "resource": "8D0iVxzrec5kNwJA", "schedAction": 49, "schedCron": "srrB2pJ7V8BSrucj", "schedRange": ["O3zvSM5KeVNHU9Gc", "OivIfcCJt4U8VSgX", "oi9Fw25b9qXzlIK2"]}, {"action": 67, "resource": "pgzY9jLiAdMiQ7eD", "schedAction": 79, "schedCron": "FuN1oUsCnBmGMx5F", "schedRange": ["6EhM3dKvIG9MR0hT", "INvq1VR9SJUfQEX9", "96Mh1sQ3Dw3uyjgQ"]}, {"action": 82, "resource": "f8TTOVf6jrr1OL60", "schedAction": 66, "schedCron": "QpqCgxt0NgDSj1T6", "schedRange": ["EdeYFmrLT0HbvS4k", "SSt3CyDgf6eFAiqS", "kHi0BR2ElF6z6eJK"]}]}' \
    'uOW61akRFizqxCmu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'AdminAddRolePermissionsV4' test.out

#- 313 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["dSXivAL3n478mhb2", "I2yBJeCJghTrk68F", "WFzuLBdlrKjUbgZQ"]' \
    'fw6Zys3mN8fIcC9C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'AdminDeleteRolePermissionsV4' test.out

#- 314 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'kharfqaoMsGyv1Ru' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'AdminListAssignedUsersV4' test.out

#- 315 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["SNdycDssUeHiVDXz", "SJ8kbFAyidbnXdMS", "wmkBkKC1h6h45u0w"], "namespace": "uh9pY0011jSmHFTt", "userId": "fM2mGUUpq3ix7Am7"}' \
    'W1fwJnV94BrMSP31' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'AdminAssignUserToRoleV4' test.out

#- 316 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "wAkVH75UcmNXK5Rq", "userId": "cIo9lpz9oM52vHPl"}' \
    'wVV3jlPKDEYahnlL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'AdminRevokeUserFromRoleV4' test.out

#- 317 AdminInviteUserNewV4
$PYTHON -m $MODULE 'iam-admin-invite-user-new-v4' \
    '{"assignedNamespaces": ["JaLCvjRKKX1brmkJ", "DfdngbQD3pO8U3W9", "4Z8IW2MAL9gYHEV3"], "emailAddresses": ["wnTZTvYYf4ZFuV6L", "2AldoWWRN5wNYlFi", "liYmBrqrOc0NIlig"], "isAdmin": true, "namespace": "Qnj4imu6XFfRcWDX", "roleId": "hq1YmGeygr2S4Yw8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'AdminInviteUserNewV4' test.out

#- 318 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "NmPaBeryzX2hOPVV", "country": "FqVqxjq1iG3TySOh", "dateOfBirth": "8SI75oXbyq8FBbur", "displayName": "80QwnlgAVfqz6gQJ", "languageTag": "h8sn0bVWRkvmAemh", "userName": "8lioBR7xTXcEIFod"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'AdminUpdateMyUserV4' test.out

#- 319 AdminDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'AdminDisableMyAuthenticatorV4' test.out

#- 320 AdminEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'AdminEnableMyAuthenticatorV4' test.out

#- 321 AdminGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-admin-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 322 AdminGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'AdminGetMyBackupCodesV4' test.out

#- 323 AdminGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'AdminGenerateMyBackupCodesV4' test.out

#- 324 AdminDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'AdminDisableMyBackupCodesV4' test.out

#- 325 AdminDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'AdminDownloadMyBackupCodesV4' test.out

#- 326 AdminEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'AdminEnableMyBackupCodesV4' test.out

#- 327 AdminSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-admin-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'AdminSendMyMFAEmailCodeV4' test.out

#- 328 AdminDisableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-disable-my-email-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'AdminDisableMyEmailV4' test.out

#- 329 AdminEnableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-enable-my-email-v4' \
    '3lCzvjHzDHOrSJ1v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'AdminEnableMyEmailV4' test.out

#- 330 AdminGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-admin-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'AdminGetMyEnabledFactorsV4' test.out

#- 331 AdminMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-admin-make-factor-my-default-v4' \
    'bB7LRHd96dGLgkfr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'AdminMakeFactorMyDefaultV4' test.out

#- 332 AdminInviteUserV4
eval_tap 0 332 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 333 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "MuSjDHz0zPWMZQNN", "policyId": "P2JqQqhISTBT1Gof", "policyVersionId": "v4SuaZ8yCB9TVZnu"}, {"isAccepted": true, "localizedPolicyVersionId": "bNqO6IuP2PY5hhX6", "policyId": "uNah9JoHPj7jFWxS", "policyVersionId": "v1lYylYAiZ8c7Zd7"}, {"isAccepted": true, "localizedPolicyVersionId": "U6SGzkMpTL2wxobj", "policyId": "xAbagqEmXn6U2VeV", "policyVersionId": "2emK3JecJA4skqCb"}], "authType": "EMAILPASSWD", "country": "xRkIAFQh9yDdoLE2", "dateOfBirth": "s7mrVrmTJwtBTzQT", "displayName": "rNo1LcWNf7xHpi1J", "emailAddress": "ZJjIRtCfqDHSlo54", "password": "zSnRN0zGMworzym1", "passwordMD5Sum": "z3ZdetOic9AQOFWp", "username": "dItLBhvKJq9tWz9y", "verified": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'PublicCreateTestUserV4' test.out

#- 334 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "adk2OQ421q7Nb1vr", "policyId": "KthVvU5on065ApCk", "policyVersionId": "VN3QchuQ6pntxB64"}, {"isAccepted": true, "localizedPolicyVersionId": "ss7rBnvQHAM8gSdI", "policyId": "ybKUByHBzfvgtRTP", "policyVersionId": "PzwJmKaLCx3gcidE"}, {"isAccepted": true, "localizedPolicyVersionId": "v7MXctihtxMnIr4b", "policyId": "7jyfL3zMkklGCPIS", "policyVersionId": "lsnVA6z0uSfNNpJU"}], "authType": "EMAILPASSWD", "code": "zJxnOyvqmswrToyB", "country": "IQumxDfAxNqCUtiz", "dateOfBirth": "YM97ebZcYqwfIHPW", "displayName": "MkOmrT5HL16jMwEC", "emailAddress": "nmwJv4rpqtzDaz0W", "password": "UJlBCHzJ2v9K8c1z", "passwordMD5Sum": "OlZg30pagfP0FfOM", "reachMinimumAge": true, "username": "FE8U4meK5grmPBsF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'PublicCreateUserV4' test.out

#- 335 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "71VrhsISYtegQbNA", "policyId": "2WQrHTkJT1VkChD3", "policyVersionId": "n0c1ryAkRvdPR8gx"}, {"isAccepted": true, "localizedPolicyVersionId": "rX5dck8NFKPgT6LM", "policyId": "ehg047axU5ktNywR", "policyVersionId": "IvO2Sgz30hejqdkt"}, {"isAccepted": false, "localizedPolicyVersionId": "IO1VdtMSews1TrU4", "policyId": "FhAfKDcDG5bMTba1", "policyVersionId": "tUlFGcP6eL7EpWtP"}], "authType": "EMAILPASSWD", "country": "XCT6m6mRZAlLBczJ", "dateOfBirth": "Veil7GbG1ISBCkcn", "displayName": "pxKUxLjmxhBS6Yyp", "password": "RW7fNntaIEtDI6Mb", "reachMinimumAge": false, "username": "EXTmnTbtjK9Rsyoq"}' \
    'T3adB48Jxp2zaItg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'CreateUserFromInvitationV4' test.out

#- 336 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "9jTNZvpFEUI21aSa", "country": "IsMyLKPPIZx0zdNA", "dateOfBirth": "agipZwiaBrFrXtGM", "displayName": "jujfHZB1gMI1B8DX", "languageTag": "b37DffTZ7yQz337L", "userName": "LNCjIySe36SA5dxA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'PublicUpdateUserV4' test.out

#- 337 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "TLv5PkLvraRzChdj", "emailAddress": "DGdlk2A2jHbAPNGI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'PublicUpdateUserEmailAddressV4' test.out

#- 338 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "nvbnf4ewKFFLoGgg", "country": "X4gQWyZocvYfr0Rn", "dateOfBirth": "l02R1IVNnaK6KS71", "displayName": "Xs1BphA9BXpKYgF9", "emailAddress": "OuigDP0Vjmy7j2Br", "password": "dCAm3slCwaBqHpE5", "reachMinimumAge": true, "username": "QkLtpuRNeT1CULEM", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 339 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "aOU5nukycAUlkUSZ", "password": "KUrsxNRzF3NaUuCy", "username": "Qyze6zPKu5sE89JW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'PublicUpgradeHeadlessAccountV4' test.out

#- 340 PublicDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'PublicDisableMyAuthenticatorV4' test.out

#- 341 PublicEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'PublicEnableMyAuthenticatorV4' test.out

#- 342 PublicGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-public-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 343 PublicGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'PublicGetMyBackupCodesV4' test.out

#- 344 PublicGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'PublicGenerateMyBackupCodesV4' test.out

#- 345 PublicDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'PublicDisableMyBackupCodesV4' test.out

#- 346 PublicDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'PublicDownloadMyBackupCodesV4' test.out

#- 347 PublicEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicEnableMyBackupCodesV4' test.out

#- 348 PublicRemoveTrustedDeviceV4
$PYTHON -m $MODULE 'iam-public-remove-trusted-device-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'PublicRemoveTrustedDeviceV4' test.out

#- 349 PublicSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-public-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'PublicSendMyMFAEmailCodeV4' test.out

#- 350 PublicDisableMyEmailV4
$PYTHON -m $MODULE 'iam-public-disable-my-email-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'PublicDisableMyEmailV4' test.out

#- 351 PublicEnableMyEmailV4
$PYTHON -m $MODULE 'iam-public-enable-my-email-v4' \
    '8UU0RsB6dvrpmInh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'PublicEnableMyEmailV4' test.out

#- 352 PublicGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-public-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'PublicGetMyEnabledFactorsV4' test.out

#- 353 PublicMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-public-make-factor-my-default-v4' \
    'HYzVVlHGFSwjby6r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'PublicMakeFactorMyDefaultV4' test.out

#- 354 PublicGetUserPublicInfoByUserIdV4
$PYTHON -m $MODULE 'iam-public-get-user-public-info-by-user-id-v4' \
    'MYkVQnZDUAbINRKQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 355 PublicInviteUserV4
$PYTHON -m $MODULE 'iam-public-invite-user-v4' \
    '{"emailAddress": "sxUO1YMxAndOj5O6", "namespace": "IBwXJjgQjgLoJyqw", "namespaceDisplayName": "FVBd1ZjaRXEdWgS1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'PublicInviteUserV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
