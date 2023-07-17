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
iam-admin-list-user-id-by-user-i-ds-v3 '{"userIds": ["TFVGUVhvKhJCmeis", "ql14mUHVbMPimNhc", "ZsU3VAdMDcb4qlki"]}' --login_with_auth "Bearer foo"
iam-admin-invite-user-v3 '{"emailAddresses": ["FAamqvZI2KwjqPBi", "WXade41s3rH34mB2", "yPlRpWjmHZAAvKTH"], "isAdmin": true, "namespace": "MuqIg0CzkguwuJCW", "roles": ["7EEFB67AODbi9Bzu", "pBsFpYc77GtRUcCF", "eY5g4XgBsbfzqxBP"]}' --login_with_auth "Bearer foo"
iam-admin-query-third-platform-link-history-v3 'Ne8ae1Il4aAtEbu4' --login_with_auth "Bearer foo"
iam-admin-list-users-v3 --login_with_auth "Bearer foo"
iam-admin-search-user-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-by-email-address-v3 '{"listEmailAddressRequest": ["IjGdqthRxTjQ7gkZ", "EY8rG0q0Q2Qd2JzR", "bkF2I03dIjvBbA6b"]}' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v3 'fbYaJCJjfk2TUvn9' --login_with_auth "Bearer foo"
iam-admin-update-user-v3 '{"avatarUrl": "5FhO7VW3mbDVMDu8", "country": "7t0ldWf7iSGIiKFt", "dateOfBirth": "Wtn4Yr2svKM6pqLG", "displayName": "Z0TBujELAUK6mQ5i", "languageTag": "Zgbwwm5iGzXtcknr", "userName": "gidKupvXO6aj4hCm"}' 'TC34jxW4pIDwdqXp' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v3 'mRmut9H9XyWI8bp8' --login_with_auth "Bearer foo"
iam-admin-ban-user-v3 '{"ban": "fQxRuX91uYmtrHJb", "comment": "EGTUj7YjERL1rEQG", "endDate": "02zccA8wvLsWUNd6", "reason": "lPKvqDejvqklTSvD", "skipNotif": true}' 'TiRJ8daGTVX3Bb7j' --login_with_auth "Bearer foo"
iam-admin-update-user-ban-v3 '{"enabled": false, "skipNotif": true}' 'z5IfHgKjI9mwJSrN' '8jkIykR2zbaI6PD7' --login_with_auth "Bearer foo"
iam-admin-send-verification-code-v3 '{"context": "fEscShnGUGUtV9GJ", "emailAddress": "279GDbLNwjm3FK0n", "languageTag": "nX2poMfZ1hDHtbh4"}' 'HtMlFgvh2Dp2SoiI' --login_with_auth "Bearer foo"
iam-admin-verify-account-v3 '{"Code": "Pp1yvfAHS0VgLu11", "ContactType": "A3HTovFi4tPAGfle", "LanguageTag": "yCA6jEtcqsnzoVIL", "validateOnly": false}' '7mpVI6eTYAjdPlCi' --login_with_auth "Bearer foo"
iam-get-user-verification-code 'QQC35cj4KyOVgvnW' --login_with_auth "Bearer foo"
iam-admin-get-user-deletion-status-v3 'bfRJtsB7cUQZ2QUA' --login_with_auth "Bearer foo"
iam-admin-update-user-deletion-status-v3 '{"deletionDate": 49, "enabled": true}' 'JrINPXppPNO3AfmX' --login_with_auth "Bearer foo"
iam-admin-upgrade-headless-account-v3 '{"code": "cgwC3IN6tvKgLB9Q", "country": "mJIOq9dP5szG71ut", "dateOfBirth": "jsQ4CrRb9gUCeVz7", "displayName": "fWbZIdhevfZvyV7A", "emailAddress": "codcZwKjYDdmJOlz", "password": "wm9Su4FnS98QqftS", "validateOnly": false}' '5PbCvDLil8wj9cKM' --login_with_auth "Bearer foo"
iam-admin-delete-user-information-v3 '3Ar6MF35hCER4nGm' --login_with_auth "Bearer foo"
iam-admin-get-user-login-histories-v3 'WGgTJfHlJl4tHGa4' --login_with_auth "Bearer foo"
iam-admin-reset-password-v3 '{"languageTag": "XfZcd9CVnGqMX9Fi", "newPassword": "eeEssWEUl07bhwnt", "oldPassword": "CVqiYOJf5KwMZQjz"}' 'vjSozv6CTRDl0zp9' --login_with_auth "Bearer foo"
iam-admin-update-user-permission-v3 '{"Permissions": [{"Action": 59, "Resource": "hhuiTnJarYYkHBDd", "SchedAction": 91, "SchedCron": "6TZ9TGVPmv34h6T7", "SchedRange": ["EsufmfxKYB4LM6H6", "QXmpZ9X3fUSR1l9x", "LPBsmAUrD9L1IiD6"]}, {"Action": 80, "Resource": "MZcA92hzC7MNa8vV", "SchedAction": 8, "SchedCron": "zOx2CXKlvIomU3pI", "SchedRange": ["xM9n8D2eLMe3lt9q", "fx2UDcgVE7L9FK6e", "0MrPc4vtxk9hVKlG"]}, {"Action": 21, "Resource": "6HlzGr7XjdyRJunZ", "SchedAction": 84, "SchedCron": "LTGAak7Kaol01DK9", "SchedRange": ["7D2xnik42miteR5e", "QAe1rzmmgqBPRmd6", "mO4oI8KDqebm83ra"]}]}' 'NBJ5y7axEkvI4oxZ' --login_with_auth "Bearer foo"
iam-admin-add-user-permissions-v3 '{"Permissions": [{"Action": 62, "Resource": "tWf1Ybgg8rdwY9bm", "SchedAction": 36, "SchedCron": "OSlHXrUSA6sMJzA5", "SchedRange": ["mtqISQ83TTbtefXW", "znDe4LQdXfFBii2R", "AMEX5RMjBFVZGYzQ"]}, {"Action": 33, "Resource": "2l3hPjNDKv2LWfXq", "SchedAction": 18, "SchedCron": "uNOmUSWw18T1IxVW", "SchedRange": ["CxdvPL9e4P01vxP8", "xj1LyEirURERnEMz", "pImW6sjAHyCK5tNa"]}, {"Action": 27, "Resource": "R0x3YiHF8ITGPRQB", "SchedAction": 58, "SchedCron": "MebS4AdlNzwog2Ih", "SchedRange": ["ErkNhNcECWwchW6z", "L9SkbLlrNXnGanMa", "zb8jvRWenURH48aJ"]}]}' 'uALEcSqcE15u6D31' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-bulk-v3 '[{"Action": 61, "Resource": "ssuHdGmxncCEr0Kc"}, {"Action": 13, "Resource": "bqiqOkNeATj7eGjo"}, {"Action": 7, "Resource": "zyBB4UFKiaoV0VOe"}]' 'm2yqPsMFxKybPkbu' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-v3 '91' 'K5LOq4ft5jGcMICP' 'UYnfG6jl9U4jRete' --login_with_auth "Bearer foo"
iam-admin-get-user-platform-accounts-v3 'IMgzISomCsodJrhQ' --login_with_auth "Bearer foo"
iam-admin-get-list-justice-platform-accounts 'W41q2OspCZbt3Uta' --login_with_auth "Bearer foo"
iam-admin-get-user-mapping '5I0uGcL1koyHjCH5' 'olYLETRpABAmO2EG' --login_with_auth "Bearer foo"
iam-admin-create-justice-user 'vJ4UMS93yOxNInDB' 'yhnoluO6ti0QP2ss' --login_with_auth "Bearer foo"
iam-admin-link-platform-account '{"platformId": "iJ66OzOj84O6tgoh", "platformUserId": "jtC7bzjPpucddXJ5"}' 'zifF8y959anrNSle' --login_with_auth "Bearer foo"
iam-admin-platform-unlink-v3 '{"platformNamespace": "ywHbHig6IKWVZ77K"}' 'eRWdECaFGzfZ2hxc' 'J2Fnemn7M23SzUo4' --login_with_auth "Bearer foo"
iam-admin-platform-link-v3 'hNBDh9ZFP1OW0nXO' 'ErQPS4VsRoYIK69y' 'g9ADCGiXaLs2xjHk' --login_with_auth "Bearer foo"
iam-admin-get-third-party-platform-token-link-status-v3 'inOD975nARHCmhNH' 'SXuqIHsxvaUoXDmw' 'WsukxncuD3QxCXMd' --login_with_auth "Bearer foo"
iam-admin-get-user-single-platform-account '00YBWCaVVmM45mfI' 'ZsWhkS476dGGJwJ0' --login_with_auth "Bearer foo"
iam-admin-delete-user-roles-v3 '["0UH197MJ6zU7JLMQ", "yMWzYQCAaPJgoxGJ", "oJaSzUtY4ZD0Xtb0"]' 'U4pH16NUsVY21NVI' --login_with_auth "Bearer foo"
iam-admin-save-user-role-v3 '[{"namespace": "s7NRen2Y3Ns0QJQe", "roleId": "aWytPfds1BYx0EaU"}, {"namespace": "Rydf8ZyyZeHAWGgJ", "roleId": "UbUJRMbkcTglbU86"}, {"namespace": "FyOjApNHBVfNOURc", "roleId": "jY3YYT9oTynmfIuB"}]' 'WgJTNFfM8M0IW4oe' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v3 '8KDgy0xZfAcNg14W' 's8TIP1LKiFQoLDvu' --login_with_auth "Bearer foo"
iam-admin-delete-user-role-v3 'mfqrgSfnx2h61X9d' 'N1MGRXBJ6mVV7JS9' --login_with_auth "Bearer foo"
iam-admin-update-user-status-v3 '{"enabled": true, "reason": "MudcxlCV4cNbJGQ5"}' '7lPdinpjS2DRfGt9' --login_with_auth "Bearer foo"
iam-admin-verify-user-without-verification-code-v3 'GlyZVQ4X67tPZSTp' --login_with_auth "Bearer foo"
iam-admin-update-client-secret-v3 '{"newSecret": "Pq3xjrElvvDgw0ag"}' '7kSWE0Hiqm5IuLry' --login_with_auth "Bearer foo"
iam-admin-get-roles-v3 --login_with_auth "Bearer foo"
iam-admin-create-role-v3 '{"adminRole": false, "deletable": true, "isWildcard": true, "managers": [{"displayName": "xDT8p4n4XCFkD1AJ", "namespace": "LCwszbZxuHSgDOK8", "userId": "bjoF7bL2635KbtZT"}, {"displayName": "GJpqgl2IzNXGTuQP", "namespace": "IDpor7t1aJLNNz6Q", "userId": "IVC9Mfuc8VOsnmnl"}, {"displayName": "VljdWYmELe74p38v", "namespace": "umnxAnYBTxaTIz0j", "userId": "cgDI8Pkz96vd80ms"}], "members": [{"displayName": "qIm5bufnBqrpLeqh", "namespace": "wVhjnnjKMEmtbiWs", "userId": "AQHbMrKYi0Zxs5SW"}, {"displayName": "CqZXHLLa31oQf7BU", "namespace": "LnZDhutDM6BqguqD", "userId": "5xxGxBWtnTKUe2zn"}, {"displayName": "sqPzPkwCBo2SwCUs", "namespace": "Tag4MLAo3m61P2xa", "userId": "Nfmn8Onb1a9gMz0F"}], "permissions": [{"action": 48, "resource": "UBRmMhAbUWmFhdYL", "schedAction": 99, "schedCron": "5GIDhNC66szbCCf7", "schedRange": ["3IFbRkPSSITz4TjC", "rJHXGXku2YVuOzhx", "HmnrrV9ZGWrZ05sx"]}, {"action": 9, "resource": "x5noXPhPUTKbonou", "schedAction": 5, "schedCron": "nkgT9vayLLiizac7", "schedRange": ["Ge6zKJdlt7rjF5Ra", "JwvkWVco2LTo5ijl", "vDF8qBWCQ9dLWYyS"]}, {"action": 26, "resource": "zdhMeBXH8x6HdVfZ", "schedAction": 98, "schedCron": "vuQdW2jwKUckc794", "schedRange": ["ryY91lX8DD4MYXlr", "J81lHvv9rqvEoM8Y", "mVjAkO3HKsEp6Klq"]}], "roleName": "wW4djrexcbHdEtoQ"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v3 'vpV344RctmTozCi8' --login_with_auth "Bearer foo"
iam-admin-delete-role-v3 'HeV6jbalHmqBBfi7' --login_with_auth "Bearer foo"
iam-admin-update-role-v3 '{"deletable": true, "isWildcard": true, "roleName": "5BoGiTCVsXsygWbj"}' 'E2opXtdsJQeJ1too' --login_with_auth "Bearer foo"
iam-admin-get-role-admin-status-v3 '0qvxphTLEEBGTtZy' --login_with_auth "Bearer foo"
iam-admin-update-admin-role-status-v3 'TjdKNKgYazujsmSm' --login_with_auth "Bearer foo"
iam-admin-remove-role-admin-v3 'ylT1YtxIq73aMb48' --login_with_auth "Bearer foo"
iam-admin-get-role-managers-v3 'jISd97KORRhxSWLW' --login_with_auth "Bearer foo"
iam-admin-add-role-managers-v3 '{"managers": [{"displayName": "LNfHRD3V15QaGGL4", "namespace": "6LuxJF3sbeqWBdQu", "userId": "WfgBAKx27MSBqabU"}, {"displayName": "XOGkkoMUZn1YXj5z", "namespace": "FZeOCOR9NvBQZSJP", "userId": "OIKrRBrYVzi9ui3l"}, {"displayName": "vozTt9TsH7A0TuU2", "namespace": "aL4bPkk11sys6Gdk", "userId": "Dcos5uVJ0BJfZ0jv"}]}' 'A54CSqZFDsO1skRj' --login_with_auth "Bearer foo"
iam-admin-remove-role-managers-v3 '{"managers": [{"displayName": "OU1SMfQVQa6blj9R", "namespace": "dd85bdYUumPKVSZC", "userId": "g3XTc9vQe0dHJfF6"}, {"displayName": "KIuvnRCa9JktyBdx", "namespace": "kZKrEWFw9GYxjiiO", "userId": "QAD77ci0vfWVZoRR"}, {"displayName": "MPi57HyKKz5nyI6u", "namespace": "lKNKoXa0dgx1JgjC", "userId": "56pda3YhtQxpCYME"}]}' '6x21pdX2QSPAd9sx' --login_with_auth "Bearer foo"
iam-admin-get-role-members-v3 'oLnWGP1PafIjLX8c' --login_with_auth "Bearer foo"
iam-admin-add-role-members-v3 '{"members": [{"displayName": "e0KbNN7Ycl2JfmQp", "namespace": "lvGjVQ4aebjfgGu4", "userId": "72oWJlfglLM4xjfk"}, {"displayName": "NL4lU6jaGfsD1cfs", "namespace": "wmeFpvtDtetoQVFL", "userId": "8LNW11vtpaTxi7k4"}, {"displayName": "89jRCn48bvkCPfKo", "namespace": "fwXOIZZQAJza84lK", "userId": "KmVOaTS6xBbNrSUA"}]}' 'W2ak7ISDrBVg6NuD' --login_with_auth "Bearer foo"
iam-admin-remove-role-members-v3 '{"members": [{"displayName": "ZvPb1kuUfNfUDe4g", "namespace": "7q6PHEaqbzHvDDl1", "userId": "jiLw3XMGBA6JXDpA"}, {"displayName": "1tIC45C0oaGouFu4", "namespace": "hXONgUwJnUpryDeR", "userId": "cpUvlrw2MwC1uuok"}, {"displayName": "paIjL0Vxe5n9Lx3Q", "namespace": "cFo9gxOgvDc7xMrR", "userId": "Kvw8ISP2WKmCRRXB"}]}' 'xlalCHtWlKxLpS8f' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v3 '{"permissions": [{"action": 76, "resource": "v5guycGiq9j2EyIk", "schedAction": 27, "schedCron": "vBVC5zgOKLTDmHe8", "schedRange": ["c1eJ9sde7Ryt4udI", "v22M18uux9xBomQF", "PFWy5cwNPI6aFo0M"]}, {"action": 98, "resource": "tqgfOJDUT0uKAPrA", "schedAction": 90, "schedCron": "3V7YbJM3bNLWHAbC", "schedRange": ["Zixe2cQ6O30lpzcB", "QMAEcNcJqrKxnMzS", "Yoc4ZjiMY4H34B6w"]}, {"action": 98, "resource": "Z5j24acYHbrryHB6", "schedAction": 67, "schedCron": "2UH6jzMO3AfmOS5m", "schedRange": ["QNyRPZFPNP56l1AT", "6OLKmZhCZxxPPdPw", "OtEuWBSO2jJepUnE"]}]}' 'Egja2mIE2kLTnJwc' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v3 '{"permissions": [{"action": 29, "resource": "XmkCuL5W4tKt6G3j", "schedAction": 97, "schedCron": "LYdG7xVPqBqe9RDQ", "schedRange": ["MBSYAFLqp8PF5hCc", "oukWpnbz4ys7j6lx", "uU3u2HEG0qfKegvF"]}, {"action": 93, "resource": "51yAB8Pa3uNGKhaL", "schedAction": 24, "schedCron": "GcA0h4G1LZ1HaX5U", "schedRange": ["BMbsF44VTsLDRzdq", "22cbnyK3ggFDh2ka", "ZP7pnnVfxPwc259H"]}, {"action": 64, "resource": "WiZ1uqh7GAi4FEIu", "schedAction": 66, "schedCron": "u83ZLRxYlYqlpq03", "schedRange": ["BGdIk4oEogFVGR71", "rJOBy6lsj1AKGBjn", "HmaAu4YK87DYAWWc"]}]}' 'bcbGWmKgE8CZ4AEL' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v3 '["r5lraa5v5P5Cj8hg", "FsqHC9h5JPiMEtgK", "uiGTYgwWv5XldL6r"]' 'OVGcRAn51rVAQSxp' --login_with_auth "Bearer foo"
iam-admin-delete-role-permission-v3 '65' 'qTB54mKA3V9DKlCe' 'Z7mLYsHooOIaxIpb' --login_with_auth "Bearer foo"
iam-admin-get-my-user-v3 --login_with_auth "Bearer foo"
iam-user-authentication-v3 '1cIOJPS3lJ80YJ41' 'U4ooQ980ywmg1pWp' 'Wit1QC7FKe0fnHUl' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-authentication-with-platform-link-v3 'mU1unGKM0tgfeWy4' '7bbwMI4gGmvK9gW5' '96FwBNrFXt3TAuKB' 'wBcD12ae6r3hHwya' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v3 '4NpdOzg3hr6ucHf7' --login_with_auth "Bearer foo"
iam-request-one-time-linking-code-v3 'dbh2iKNUl0qJqzoK' --login_with_auth "Bearer foo"
iam-validate-one-time-linking-code-v3 'MRMG541PAiNjULsx' --login_with_auth "Bearer foo"
iam-request-token-by-one-time-link-code-response-v3 '4SnKNXLMUaDSwwQl' 'nNRZJHBSB4fZWEFI' --login_with_auth "Bearer foo"
iam-get-country-location-v3 --login_with_auth "Bearer foo"
iam-logout --login_with_auth "Bearer foo"
iam-request-game-token-code-response-v3 'Zs28Ff1kZp1Zktx3' --login_with_auth "Bearer foo"
iam-admin-retrieve-user-third-party-platform-token-v3 'N7WNMYIfcDKbLu8p' 'nK34oA1keYXJvtgg' --login_with_auth "Bearer foo"
iam-revoke-user-v3 'DdXjbdjMBahFZZGM' --login_with_auth "Bearer foo"
iam-authorize-v3 'TcqnWrIprOv0BJ9S' 'code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-introspection-v3 'DJlmD1iEokbUiYzC' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-jwksv3 --login_with_auth "Bearer foo"
iam-send-mfa-authentication-code 'Qh2iNTwtnohddMzM' 'TQ9P7sYLDWAJOA75' 'K4BYJ2fkqYJoF2FI' --login_with_auth "Bearer foo"
iam-change2fa-method '3vyyqRzc20O7FdsJ' 'P1G9tyBTfERXdvgD' --login_with_auth "Bearer foo"
iam-verify2fa-code '1Qf7Ot2DkUt3yexZ' 'BRvxYnEBhXtAVxCd' '3meTrT7cF9oVCh89' 'true' --login_with_auth "Bearer foo"
iam-retrieve-user-third-party-platform-token-v3 'DJE3RMUddwSSgxCu' '8zru1DhGAYOHR5BW' --login_with_auth "Bearer foo"
iam-auth-code-request-v3 'a9VzIkaQEl1iUPro' 'NB6hI6IpGcToWgFv' --login_with_auth "Bearer foo"
iam-platform-token-grant-v3 'dRhG9NwV3zDuqVlV' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-revocation-list-v3 --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-revocation-v3 'TypcYPK8IxrSZuxW' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-grant-v3 'client_credentials' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-verify-token-v3 '4U0bitNQLzwRoWnR' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-platform-authentication-v3 '0AbkCPY70FmvviVI' 'BbcujF8Vk5qb8NhW' --login_with_auth "Bearer foo"
iam-public-get-input-validations --login_with_auth "Bearer foo"
iam-public-get-input-validation-by-field 'WwaxyMchkt8l5IPS' --login_with_auth "Bearer foo"
iam-public-get-country-age-restriction-v3 'rwrJl7wYIVw13NCo' --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-public-v3 --login_with_auth "Bearer foo"
iam-retrieve-active-oidc-clients-public-v3 '9yXlbQ52FTHTCj6S' --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["EAzT7TOpyiuvvQUm", "29Iacq4XRLaA643n", "TMtXSAyejnny0Ju1"]}' '3b6o5uB2XM6IHy7E' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv3 'EvHyLmcvrZZOdwe1' 'x8RjU6Bi8JXE52sU' --login_with_auth "Bearer foo"
iam-public-get-async-status 'BBq2SimQQoLbe5YO' --login_with_auth "Bearer foo"
iam-public-search-user-v3 --login_with_auth "Bearer foo"
iam-public-create-user-v3 '{"PasswordMD5Sum": "JvxGRxUzrTwagH7B", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "1IZKTdNFVBQ1crBX", "policyId": "AupATO8uXsqVpdiW", "policyVersionId": "o8SjDAM0Riw8wLYW"}, {"isAccepted": false, "localizedPolicyVersionId": "n4F3LD1EDwBXw5uB", "policyId": "YeQZOzATNSV9E9yy", "policyVersionId": "Nb7yaLXzAVYymOuh"}, {"isAccepted": true, "localizedPolicyVersionId": "uzm7DzJ20NFRJIhF", "policyId": "XR2dYprPmbpuptEC", "policyVersionId": "Gd5cdXC2Sesc6y68"}], "authType": "whNBYl9iCqfW6rqG", "code": "OQny4ij4ysYPonb5", "country": "9gQffkNOmubxEJr2", "dateOfBirth": "qEAuJbpZSrcbc4LW", "displayName": "fKaY5c1tP5TDuI5f", "emailAddress": "6m4KC07CnsZe32hq", "password": "EcB1ExYMBb3ckvoa", "reachMinimumAge": false}' --login_with_auth "Bearer foo"
iam-check-user-availability 'dxKWlBfnRyFS0Ed7' 'gTM5AVrtBQiDTcNn' --login_with_auth "Bearer foo"
iam-public-bulk-get-users '{"userIds": ["Za6Zuxk6u6HXXdiC", "9ZDj4E4mv12FNXyp", "oOLl13j84P0KqirJ"]}' --login_with_auth "Bearer foo"
iam-public-send-registration-code '{"emailAddress": "4PkMFtsnFfz8Ew0X", "languageTag": "8fBuBSKLSQ4GvLtz"}' --login_with_auth "Bearer foo"
iam-public-verify-registration-code '{"code": "50D3rpBfBovqLwXB", "emailAddress": "uT30EYeRj17xGhaB"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v3 '{"emailAddress": "KoUfiHjGmCyPsKCJ", "languageTag": "Tv1ic9gvagF2cSuz"}' --login_with_auth "Bearer foo"
iam-get-admin-invitation-v3 'tsJ5tj64gV7nmDk2' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v3 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "yssSA8nP5PQjpzk2", "policyId": "Tb7iYdmNZWosrsVB", "policyVersionId": "PZ64j0HUONscofwY"}, {"isAccepted": true, "localizedPolicyVersionId": "QcDvkaEIIPoJT83z", "policyId": "EGXmVBZLyrH9J7Bo", "policyVersionId": "ysmaORLkP5hc2Fh0"}, {"isAccepted": true, "localizedPolicyVersionId": "c4VPDUR9ayazqXRq", "policyId": "egIUicYXXzxsBFrU", "policyVersionId": "s9BYp6TgCejBd5o7"}], "authType": "EMAILPASSWD", "country": "KXOutlYBbLhL8KXx", "dateOfBirth": "25FZfQIodVBqQsBp", "displayName": "CJBIXLGYcwWVRK6U", "password": "Kk5ozrXA4HZHNyq9", "reachMinimumAge": false}' 'J9j4vxmbH3rVaauu' --login_with_auth "Bearer foo"
iam-update-user-v3 '{"avatarUrl": "fxkPHElug48TgfNu", "country": "0rqXUOyToLPIREGI", "dateOfBirth": "KlJt3EP9kKwkENQ8", "displayName": "VOHGwbADMfuOmh0l", "languageTag": "ciRhVZ2DeoODXMzL", "userName": "SrzoiBnYi5UWs3tY"}' --login_with_auth "Bearer foo"
iam-public-partial-update-user-v3 '{"avatarUrl": "lYeMoCimJySocRvU", "country": "WDOrFZKPNoN9AWtL", "dateOfBirth": "K9TFgi9j2XMh9Wpi", "displayName": "fqjNjLOtNQts2yxf", "languageTag": "6MLZJ2jZfZbpTJez", "userName": "zriCDWXT59SRu0Yq"}' --login_with_auth "Bearer foo"
iam-public-send-verification-code-v3 '{"context": "UxKDc84OMIzvTScd", "emailAddress": "bKBsAyJMz4ILNDvh", "languageTag": "B4Eoes9a6XaJeRbz"}' --login_with_auth "Bearer foo"
iam-public-user-verification-v3 '{"code": "TPwD3jxF7vxRUY0i", "contactType": "lrNoFT98SgtJd4Z5", "languageTag": "f8nfaKqdZFLbZEHx", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v3 '{"code": "jeXbsSgR43kIDzxB", "country": "wqRJTzrHNZWUsq5l", "dateOfBirth": "Qo2jy29EJigqYhyV", "displayName": "hURx1yPeczRpdk0H", "emailAddress": "ATGylx2JG2KNGfhz", "password": "fCTxxrsRRLee3TcJ", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-verify-headless-account-v3 '{"emailAddress": "DQIi45aCDHN9mVug", "password": "2zkVf6KgpKOcn3tM"}' --login_with_auth "Bearer foo"
iam-public-update-password-v3 '{"languageTag": "D9UT67bOwugFDa6w", "newPassword": "UQvehKqwCh86XmRk", "oldPassword": "CEcfHDCdl59Wp9A3"}' --login_with_auth "Bearer foo"
iam-public-create-justice-user 'tXGve6DdK6uvg8f2' --login_with_auth "Bearer foo"
iam-public-platform-link-v3 'cIoByk9fxtvsgeAx' 'o57nKAbZpsbJ4Iu5' --login_with_auth "Bearer foo"
iam-public-platform-unlink-v3 '{"platformNamespace": "KJ0ynxGBlacDCdFe"}' '8ATUqVxcSthrpnMU' --login_with_auth "Bearer foo"
iam-public-platform-unlink-all-v3 'BsnUfuQIcSbUt5UG' --login_with_auth "Bearer foo"
iam-public-force-platform-link-v3 'kInFGpuUsdtq4dOw' 'NESzCEW9dUVhZjLf' --login_with_auth "Bearer foo"
iam-public-web-link-platform 'tC3sCS8CpLCqPD9C' --login_with_auth "Bearer foo"
iam-public-web-link-platform-establish 'eDEdCnnL6Kt1Bjj3' 'b8QM8Rr45ULqXQgv' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"code": "wD3PsKDJiWxQBwaS", "emailAddress": "7rDBf2S54phbdyGD", "newPassword": "t47f9GWRlE9hqz6r"}' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 'jDNo4rhjxUdMM83W' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 'ekqfWv04vvn9bk5q' --login_with_auth "Bearer foo"
iam-public-get-user-information-v3 'r8qs2mqtnGAqXUjN' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 'ypF6MMqWpdEJsPoa' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 'IbYz8cK5jlpJdre5' --login_with_auth "Bearer foo"
iam-public-list-justice-platform-accounts-v3 'ur6yvWJDdvM7T7PX' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "2vamIRZHzsIYOCUo", "platformUserId": "iCXNjrdQL2jdx1eI"}' 'ba1sB0HsJ06Dzfbz' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["RYt4OVUyumBeIqdQ", "GZC5kM03HHijsQRj", "7N8IAjmsonjj0ZR5"], "requestId": "0BQ1U6aFD3O2kXQS"}' 'c58zgZVl4gIF7v3q' --login_with_auth "Bearer foo"
iam-public-get-publisher-user-v3 'bZu9M3OxqVAT4H1l' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 'RZ9Z1JBrHRzEOtIx' 'zPqb6n73m0jiaDH8' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 '6d9rsKgzCsMulpB8' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-public-get-link-headless-account-to-my-account-conflict-v3 'HZUtVVaJCiLgKOwr' --login_with_auth "Bearer foo"
iam-link-headless-account-to-my-account-v3 '{"chosenNamespaces": ["SfWhT5B4WedopzwS", "luBtRFPKThyGnbjm", "PDKFS6u9FHuv1M3q"], "oneTimeLinkCode": "fch4SqIV6LQPHlae"}' --login_with_auth "Bearer foo"
iam-public-send-verification-link-v3 '{"languageTag": "Yl4csFq65cU66yJa"}' --login_with_auth "Bearer foo"
iam-public-verify-user-by-link-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler 'j4ovoKWE4EW0sw8v' '5peiuxoBJATauyD3' --login_with_auth "Bearer foo"
iam-login-sso-client 'XCXVMiyEvMf9yilU' --login_with_auth "Bearer foo"
iam-logout-sso-client 'Eujk6oqYo1HQYTFz' --login_with_auth "Bearer foo"
iam-request-game-token-response-v3 'wdOMdupwD4O3uNbc' --login_with_auth "Bearer foo"
iam-admin-get-devices-by-user-v4 --login_with_auth "Bearer foo"
iam-admin-get-banned-devices-v4 --login_with_auth "Bearer foo"
iam-admin-get-user-device-bans-v4 'IDcIyvZbOy1T4hfw' --login_with_auth "Bearer foo"
iam-admin-ban-device-v4 '{"comment": "kuVykH4RpfmjIXFG", "deviceId": "Z5PKdbabJIkNnt9P", "deviceType": "1Tkm08luh4dpPRMD", "enabled": false, "endDate": "HglOVuNZ9LzNeJnB", "ext": {"urh54CWbYb0Pebyt": {}, "8b4DGscjwrizsFUg": {}, "YwbaLvqvQ2NbmDIT": {}}, "reason": "uymTBjn3d2sFzMS3"}' --login_with_auth "Bearer foo"
iam-admin-get-device-ban-v4 'QaVjZF7Ax6115Kg9' --login_with_auth "Bearer foo"
iam-admin-update-device-ban-v4 '{"enabled": true}' '7ivHEoLbUMM47f1U' --login_with_auth "Bearer foo"
iam-admin-generate-report-v4 'reUpxEkXIbE1ETzR' --login_with_auth "Bearer foo"
iam-admin-get-device-types-v4 --login_with_auth "Bearer foo"
iam-admin-get-device-bans-v4 'JZKMavu4Ul2IaieE' --login_with_auth "Bearer foo"
iam-admin-decrypt-device-v4 'bPSE7TGkeHsYsW9o' --login_with_auth "Bearer foo"
iam-admin-unban-device-v4 'GBN1pYMBwbPZTlMl' --login_with_auth "Bearer foo"
iam-admin-get-users-by-device-v4 'UvFEiGprcNSQ9kEe' --login_with_auth "Bearer foo"
iam-admin-create-test-users-v4 '{"count": 44}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["BZ6FVrBzyhyhoS6a", "9oe0JaXFpff28uYb", "e4Cf2HEHvVevhISj"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "btBJUK5fE3OufPSX", "country": "3PdOU2V9yw94oa8U", "dateOfBirth": "J34TIedV3HyoX4Vn", "displayName": "O2LpBU08wfnlHBXF", "languageTag": "IqFUmgUSMM5au8GJ", "userName": "T0mkVPI6zUtf3QaJ"}' 'PGrTNcXXTUIggoH8' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "9QNmI17UDb19R6H7", "emailAddress": "r1ta3m7jK5pxe82p"}' 'gFiAS6piIzmc8rKr' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 'KEPGSAcong6eNERU' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 'f8kjci1Ctccv9Gv4' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["tOcbnuCqf0lm6WBk", "IzjoSV31tvmMB6jz", "rpRGESmooHiCV4GU"], "roleId": "OnXpapXQGRakUbcG"}' '7PcR4eiU3Idi55jN' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["rGNT2VHTKuIT5Fww", "Hj0Ur5F2PWGTTD81", "xhNP4t6kYBUjyXAn"], "roleId": "3bWQF6QcAiJpXIrg"}' 'roixptZhckUTGkcB' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["OE4qMcH1Kyi8ZFvG", "cV8DY0XOkDstxZcY", "1HgAnZV4IOglVLqb"], "roleId": "9lGAJUg21Lt7Jwgw"}' 'MUSuC3Bajy3BcEMC' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "9qJhWva2FPBujX0g"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 'eYCpGJM4sqsPNJMi' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 'ZXXOFwmGWAvNF0Z0' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "D4hEk0OLjYsnignE"}' '7KcMF7fuDbzRRYMN' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 13, "resource": "WUsp1tOibJY9aL9i", "schedAction": 9, "schedCron": "gegCUjTdi1Ehr8Ot", "schedRange": ["qpNJ9R8TuNy4ejmV", "A3vMCsGyPd12B8QN", "Uz0hFFNbH6j2W4ro"]}, {"action": 32, "resource": "M2UKAXEEsL5D0oiF", "schedAction": 6, "schedCron": "EjUMTs8WIObJBTsv", "schedRange": ["sw76uISRX0bKVoWt", "oUW1P7ocuBAldDSU", "S7Haa6unq1yQOSRv"]}, {"action": 51, "resource": "yZNuysyM4OfCzdQC", "schedAction": 24, "schedCron": "MAWnf87YPNOe9Eev", "schedRange": ["f1fhMg1E2k7QLFrV", "gtX7y0fPOieDCow2", "zXyFFVpM87yqEwEa"]}]}' 'cQMTlqN4LKkxJ5v3' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 90, "resource": "MYcpBD6lKNb8RxvN", "schedAction": 42, "schedCron": "W3HJkqgS2B37wwoP", "schedRange": ["YOHiIsxmsLBPBJuN", "LnWRrtW870qD88Zc", "duZSe7W20UZcDaiq"]}, {"action": 21, "resource": "nEZ7PyhqFJkDClOs", "schedAction": 75, "schedCron": "z70tRVLMlHi8i9gO", "schedRange": ["VqajUWrgEsWDtaKz", "n8dZwnnGeZsZVgbP", "zPFbrOMZMgWkFN7T"]}, {"action": 31, "resource": "li3GN2XTrFibRAhz", "schedAction": 53, "schedCron": "ubg9mndW2JKmQafU", "schedRange": ["s2bxYztOEyVbKIf1", "ZbzgUwd8DHoCQykm", "XHYmkRlg7gYs6unP"]}]}' 'YQ9jNQN1di1ldhOh' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["6HvjnYuV7NfC4A2O", "DiZhbfb8QqCyK1XH", "9D6vl5eFdFfgK46G"]' 'jCWaP8huTmnq3FGQ' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'n3Ahu5wxq6oJq4mC' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["hmQHQhO9IKBXDFQf", "XFD58sG6uDhFYlrz", "JBYSeMuJfQecutjS"], "namespace": "029BiJWOG1m7MKcl", "userId": "r5igjNTVItrH2X78"}' 'hxJgaVfw5Vnyq8Oz' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "TE89WDNoMcOmbfJr", "userId": "CJQIj1haAosKglqa"}' 'CXE9ytpIO8btO3Ow' --login_with_auth "Bearer foo"
iam-admin-invite-user-new-v4 '{"assignedNamespaces": ["NEGSW5TaW4to7QCY", "2NGGvi9kg3rMIzNm", "hJTNQjKlwjfJ3TJ2"], "emailAddresses": ["xVpge70WsLfgbZie", "RvJI5sT9DH3DfLCv", "8q4Thmq09bBgPAYx"], "isAdmin": true, "namespace": "EhQRZIp693lRwtc4", "roleId": "3atCuCFxbfbz4aQE"}' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "RziPL4dHhOqG5KDd", "country": "Uvk0LEi26Ls7mjRx", "dateOfBirth": "NmvvNtjJNQepUTGh", "displayName": "wlY4lPzlsCR5rVsy", "languageTag": "fcH7WjP7HuGz3b5W", "userName": "AEvdRF9bqMj4ro5B"}' --login_with_auth "Bearer foo"
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
iam-admin-enable-my-email-v4 '19VE838c7OydVw0z' --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 'CqoMZvpIOO97DmQ5' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "ok5d3AyGrZO8GuoX", "policyId": "NSoVEBG7VbBPUWip", "policyVersionId": "z9C05YabFX4FCK5u"}, {"isAccepted": false, "localizedPolicyVersionId": "JKG3rqBmILhtWm8R", "policyId": "QvRUbUDSiefGEdLu", "policyVersionId": "crtO2gCQD057DrDl"}, {"isAccepted": false, "localizedPolicyVersionId": "t3MiBKohow3kKoaP", "policyId": "1K4CDuH1mMIfOCDy", "policyVersionId": "VAHrHncR5dShqiBU"}], "authType": "EMAILPASSWD", "country": "9Q0vqsL9SomqWsGA", "dateOfBirth": "76yxi0QzZWfmP2sx", "displayName": "0KO5bEJaPnAFjsod", "emailAddress": "yJQVVBrShGbIIuqK", "password": "8C403HgoXCR6XOMX", "passwordMD5Sum": "wKdfqk8T4QHK30EX", "username": "0FclpDl5HsuracO5", "verified": false}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "dcmM6v2AEozWWaYv", "policyId": "BLE46bpuJip8JyxJ", "policyVersionId": "39vrtuWWrqTZbSqB"}, {"isAccepted": false, "localizedPolicyVersionId": "p8AmgwhYzk33J34f", "policyId": "iTxK63OHpnUCGBVf", "policyVersionId": "pctNFUsUQ6ZXQcb2"}, {"isAccepted": false, "localizedPolicyVersionId": "ENmxb9e7vXZV3ig8", "policyId": "Jg5VByeI3ycMcYYB", "policyVersionId": "ixKJXCISQdwec1m8"}], "authType": "EMAILPASSWD", "code": "4nlf1MfqUZXkjHvc", "country": "UOTlxNf09pefgFIi", "dateOfBirth": "JssShBKsQjXvfQgQ", "displayName": "Dt6ce8NDMErA82Fr", "emailAddress": "R1GSogkewIzTOqKk", "password": "cjRh3l2gAJOTCbx7", "passwordMD5Sum": "J3gNLIlTk3Bpclrk", "reachMinimumAge": false, "username": "owBhoUg4LsGP6KLP"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "gHEP5l94s7CbIJ7e", "policyId": "HnVWOboMkyB7FTex", "policyVersionId": "sOZ0b2p3b63KrcwI"}, {"isAccepted": false, "localizedPolicyVersionId": "LEQrr3KCAV9alq3h", "policyId": "K1G4kKooSNNUZuiy", "policyVersionId": "nZ64IwncZPk82GF3"}, {"isAccepted": false, "localizedPolicyVersionId": "Y903INGIyEfRBEj7", "policyId": "qms9AGQExPhgr9gG", "policyVersionId": "fC0GjvpgJfuBs1Vp"}], "authType": "EMAILPASSWD", "country": "c0Mr7ImwCwGqOf0b", "dateOfBirth": "Ns97KvKyj3MqS7Dc", "displayName": "mtfh50eObbrmgjhW", "password": "K0x0ZidAJ1CU1eD1", "reachMinimumAge": false, "username": "a16Bw3JbUnUDh5yG"}' 'jjv4Mwrv2vancmR6' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "Z7rb21A2E9pX0BWC", "country": "MqPsRk5htdM5T3fD", "dateOfBirth": "SrSHrkoqv2mM6soM", "displayName": "aTvQq2a9YdFNtRVS", "languageTag": "O0js0hG9xmSnzd7z", "userName": "gUxAogcnGkXk17QP"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "kJHRhmLKQuQVFSKi", "emailAddress": "Xl8G2uf6E8EajXLS"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "AS8MKMaxQ1QyJCpK", "country": "edhuzI7G9NCKKXu1", "dateOfBirth": "bqI2M5PmXfKnQ7BY", "displayName": "GjCUDMOrbmoRvWnf", "emailAddress": "mGFy0eUoOBd90h9E", "password": "DqSTOfoNewWjwMWD", "reachMinimumAge": true, "username": "ye7fCwi7Il2wIFlH", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"emailAddress": "RpMwhWPtndriXU9l", "password": "oOxpmEuwDVc12r0D", "username": "VUGgGHkapTCafFMd"}' --login_with_auth "Bearer foo"
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
iam-public-enable-my-email-v4 'vYiCBuzUUwyI6Vtd' --login_with_auth "Bearer foo"
iam-public-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-public-make-factor-my-default-v4 '4v9k4fv3kMiuQ3Dh' --login_with_auth "Bearer foo"
iam-public-invite-user-v4 '{"emailAddress": "sKLxjt5srPFxBgpF", "namespace": "tDBmTLH9kP9U53z6", "namespaceDisplayName": "joBAhAlJGI2YYb6a"}' --login_with_auth "Bearer foo"
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
echo "1..351"

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
    '[{"field": "jBjgq6eY4PBNHKPx", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["Db06ZFy3uglSp2Ux", "vF2uLXWilRD7HD6L", "CgdFxRGj00RT6Lvc"], "preferRegex": false, "regex": "8gIDRdD2wwMXwKVX"}, "blockedWord": ["GPhEJsc7rZpxaPHc", "9r8eToFmkHJ6BPOK", "FLxIwKssw647YwDu"], "description": [{"language": "dnGRufOUGfMjTU22", "message": ["6l07jPlcYaqYM7Yf", "BmhjI9Y28qVceS9U", "X48dKPCFUIeyYEym"]}, {"language": "NXzNX6TGh4UdEwee", "message": ["BsJEvBbAvCmlh6Z1", "oz9BaixUUvmzbajE", "2gjooiDnc1NUb51l"]}, {"language": "EgUwQ9tkWaMOH47C", "message": ["AT7cBP0918JaEBQB", "P766LUnBBR84iAO7", "sBQt6YJ2tWwF7RnP"]}], "isCustomRegex": true, "letterCase": "oK3c4RVfjB0zi3Xr", "maxLength": 65, "maxRepeatingAlphaNum": 95, "maxRepeatingSpecialCharacter": 13, "minCharType": 18, "minLength": 89, "regex": "N24ol1qqbalgizL9", "specialCharacterLocation": "7ycJV5YqE2myQzl7", "specialCharacters": ["X9fHr6WvBxmBvNj3", "ktaDf9B22HGgxakP", "t7IYzaZUTmvsEzLP"]}}, {"field": "nnGsnfmBerp84qjw", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["1vyamjsEzwtLPxK1", "os4qR8LaQzEb39sZ", "TdFfC8x5aHLsXHlm"], "preferRegex": false, "regex": "RJTTy9JrNz1K5M1q"}, "blockedWord": ["gFddYvifGHawNx6y", "hniEHLbEQKc0aUvr", "KXDIjYC4df9qswSl"], "description": [{"language": "pCI8DhjlxUyrs3OS", "message": ["esE5p0DwUj2HKUvP", "YUcQBxMSdOOsn2Nd", "8Jpa19GJDK46Eehx"]}, {"language": "7xasqMY9aulsL6NO", "message": ["V5agpS6A5mkufBpW", "VxIK9D2bTcgaKocc", "aSwWcZmzCWGI1cIQ"]}, {"language": "cPWAShIhieSKUf3z", "message": ["KbyQk2vQTYX1xsth", "28NZZgsXycuQNGID", "eHlf6IcX1K9JrK6O"]}], "isCustomRegex": true, "letterCase": "UOpWv46sXvpOjrpR", "maxLength": 29, "maxRepeatingAlphaNum": 42, "maxRepeatingSpecialCharacter": 61, "minCharType": 24, "minLength": 77, "regex": "YrCeQUnYoID2UqO0", "specialCharacterLocation": "iAXA9dB4ib8HDOJ8", "specialCharacters": ["TNiP8KgEAj3dbRTI", "0i6dO3zkbDseh4tJ", "doGcwMBmegqVUaWM"]}}, {"field": "JBjrV0p9A7tcHrV0", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["4drgkDuWS05m0pGz", "azM2BUXnzUEWTiKM", "JAf6AgbiEDMfCckW"], "preferRegex": false, "regex": "wqx7T3l1ut2oyoll"}, "blockedWord": ["iYsTJUmpscwLcUml", "3KuoMKh7tprnacA3", "4xmIOjFLgKR4LjEW"], "description": [{"language": "hOScvtQ92iD02YMv", "message": ["EUNfoL7JCcMo7Gxx", "XdbYCRexPekTsQxM", "TfaSot7aohFYy4Vx"]}, {"language": "wHIJ9gzxqAw4vBGQ", "message": ["Aeh0VTiTP4PSrXUS", "6jYI9lsQFD43Df5q", "UZOFzpFd6b5Jc5TE"]}, {"language": "THcup8GG0VCMTFJ6", "message": ["svTyo9RHget5hzB5", "2BDFopxUwkMuSqQn", "KzDgDAtqE3kuybwT"]}], "isCustomRegex": false, "letterCase": "YEJjIYwqfSRy8GgV", "maxLength": 22, "maxRepeatingAlphaNum": 68, "maxRepeatingSpecialCharacter": 36, "minCharType": 11, "minLength": 8, "regex": "EKrk5VlnKsWCPccA", "specialCharacterLocation": "Fn5CEPoH6opK5DSO", "specialCharacters": ["8JyX4IE1z3rDwZ1H", "KsOpyq8agQuz86nc", "6jLF9DIW2ncJJKpq"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    'mgvUTr8XAtpOqUQx' \
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
    '{"ageRestriction": 51, "enable": true}' \
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
    '{"ageRestriction": 73}' \
    'W2B2uPQLrt2t6bVp' \
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
    '{"ban": "CgKvPXSDufmKh783", "comment": "cV54JsVBRB0rY0xf", "endDate": "WddACyHSmo4KX9TP", "reason": "O3K1k5ZM8btmGsgX", "skipNotif": true, "userIds": ["Xbpqxh76Af5JSwjw", "2fE2g6jXV7oai2oD", "m9FaP0HJ98tE4Uyo"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "Qg0b0sGOkzxVt15L", "userId": "KmkQ7YBhsOuJ0ypk"}, {"banId": "kt2G4eFh2YNsdoxp", "userId": "LTBM9Q8t829Ido1J"}, {"banId": "yveSRiBq23kyH9jQ", "userId": "bHWkcVk0X28GS54v"}]}' \
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
    '{"audiences": ["l7gIKBc7OYTylFRA", "JKySnC0cfPl3Z2zS", "Bbs4PAV72u8AxE2I"], "baseUri": "QeoxYV4UcYzswAGp", "clientId": "XqQxctuVaqPJGAHE", "clientName": "ZmuQrZ8GaQ4OZ2nD", "clientPermissions": [{"action": 29, "resource": "lsPP5OfHbXzWnVO2", "schedAction": 94, "schedCron": "dJwgZsRPOzwuDSdG", "schedRange": ["l1A2vaNeDiSqTfmA", "Vg50kOdJagEmTuax", "lxgywkbdOsyxX1tf"]}, {"action": 100, "resource": "6sREmmfwUZLZZS7s", "schedAction": 27, "schedCron": "obTlGVThz4bm41oI", "schedRange": ["cV33yjPxibDjfF7J", "kjCVpZKMxkFkBtXM", "U6KRIm5xBoIi99ct"]}, {"action": 12, "resource": "8tlkxWKCU1XN4gl7", "schedAction": 51, "schedCron": "2yXzaQWaF2PqUfbp", "schedRange": ["MpRl6xRyV19cborU", "HeCpqnZ5NW623WWn", "2ZJY3QvRa7CDRTcs"]}], "clientPlatform": "AHzD3dZyyWbUQpbc", "deletable": true, "description": "WiiA4UTDgS2SVEo5", "namespace": "M80LLbku9GYH4ijq", "oauthAccessTokenExpiration": 82, "oauthAccessTokenExpirationTimeUnit": "pNCrscDPbklTHcmg", "oauthClientType": "XsrVj3Mjml6BpCOD", "oauthRefreshTokenExpiration": 99, "oauthRefreshTokenExpirationTimeUnit": "glQwwdeLVpmXqRwV", "parentNamespace": "jc3W2ANmE3VVsQ1f", "redirectUri": "m9EUdiaRjuLsKZoq", "scopes": ["npKwhpZVdw5UMa8y", "mxtEFLwELCY2vIdd", "lxnA1VynioJcAPwV"], "secret": "HUGcs1ACMvoY4jWH", "twoFactorEnabled": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    'dFmOHW0j9suukPE4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'JwQONQ2vCbMn0Oia' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["336uiiMTAductvUf", "VwLahtRedh1SiZlO", "pIQ8GL7jBF1R5Oex"], "baseUri": "APzCG6ZKQClGc163", "clientName": "6nbfM3J9G40Y62bC", "clientPermissions": [{"action": 29, "resource": "A39uCJzsE8WObt6t", "schedAction": 96, "schedCron": "w8LOBxE15JYj4IqW", "schedRange": ["K09l4wkrzahXR1sD", "EDVKDINE3HjCiVR1", "dQ8kuhb4pUwnGptH"]}, {"action": 95, "resource": "17m7qNkQiKp2oac8", "schedAction": 87, "schedCron": "8eOdtrfq6ECDD6OG", "schedRange": ["kuLs9gNpNon6DKW9", "A6AmnQTNFidImWON", "TvCPMGLdbYEknHPK"]}, {"action": 36, "resource": "D9zh6dtPK4fVHLMv", "schedAction": 36, "schedCron": "OFjrfqJcyxT2a7fC", "schedRange": ["FAUzLELiM573TdtW", "jfVciuLnLsBKGsAL", "PuCOyphUUAV95708"]}], "clientPlatform": "zaP0wpZgQEvFzox9", "deletable": true, "description": "yUonirH4URx3NkKQ", "namespace": "BYrlUaMiFEWUT8cA", "oauthAccessTokenExpiration": 64, "oauthAccessTokenExpirationTimeUnit": "0wQ9egK2t46EG8I2", "oauthRefreshTokenExpiration": 23, "oauthRefreshTokenExpirationTimeUnit": "Ow7xNQ98IEbc9YIT", "redirectUri": "N98j4P2AGeidXRRn", "scopes": ["IAJfKVjOn6rtILNJ", "Vv2DLLUyBt5hDs45", "siG30Lv9iGa5mkZj"], "twoFactorEnabled": false}' \
    'U3vYcHZZjFegVnZO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 27, "resource": "kwLdmR97u9MVUii4"}, {"action": 74, "resource": "4IZ0Dv6b8WtaMVvL"}, {"action": 3, "resource": "bX9tC9PQlFAGbMtE"}]}' \
    'ybfcAl0mnsAkRT2k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 54, "resource": "B6XoTNMuqZTHwo1I"}, {"action": 55, "resource": "ELM8Lfkut0wnT24w"}, {"action": 15, "resource": "H3Ozu4G6bXxp0gYZ"}]}' \
    'yF9fJBJkSOrF9Dg4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '65' \
    'ThvCJieqRSGN8Mm7' \
    '4HlSZzp4aEW4GkHG' \
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
    '5OIVuGv47XJpkMio' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "pQrVL3ZZTVxqa9XM", "AWSCognitoRegion": "2gY14iWk12Jffk8d", "AWSCognitoUserPool": "wKNPUOHNZxML3yoB", "AllowedClients": ["M9qxd6PWz7sVnMxg", "e2inL8fBFP1ABaIK", "rEt8d3o7cTS9OIIM"], "AppId": "ErnNTLXHrsOFsbhR", "AuthorizationEndpoint": "ow4iaYKy0IjsDgbJ", "ClientId": "37DN2lDvdh7okHl1", "Environment": "wMht2Izq7TCUJhDs", "FederationMetadataURL": "DefAS09VyQB1vR1m", "GenericOauthFlow": true, "IsActive": false, "Issuer": "K17GL1CrO4ZuoGZS", "JWKSEndpoint": "xTzm8oMSPIHPtqzI", "KeyID": "WIzg8pbjnt1iBV8D", "NetflixCertificates": {"encryptedPrivateKey": "pbjGts4UZDTfhAyZ", "encryptedPrivateKeyName": "Khqilty9NVlgxUmn", "publicCertificate": "fdOAmu1dX1NqD20R", "publicCertificateName": "UvvYeJZw6QZFN7wF", "rootCertificate": "CnqpvNesGiVnt9p2", "rootCertificateName": "to7Yja1soDE1K0Sv"}, "OrganizationId": "GrMYwPmPXC2LfL2m", "PlatformName": "5rP2A20t6foPPH94", "RedirectUri": "SUinY5diUlqgvY7d", "RegisteredDomains": [{"affectedClientIDs": ["PPyahppgxJhk4EdT", "Z000rS92594HLvWF", "sXHtMP0k9L5dREQb"], "domain": "Cqfh0gpABFBER6WN", "namespaces": ["cDOsRzBkf9A6HjCn", "FRdSihcvszzQLZBk", "tk0siMup01kyaFww"], "roleId": "D7wecuQb4GNQHVZM"}, {"affectedClientIDs": ["KGBnzh4suaGIzttT", "ncVBf5g3oeuHiNyL", "kfPQPmjUkvSs5YmI"], "domain": "ejozmG5HlrIfMAvv", "namespaces": ["pkAHRJHZyfrXZmiJ", "X4CjKCeIRIr997KK", "pJXTLbYWpqeXjaf1"], "roleId": "f5fjNMZjKJ05puX3"}, {"affectedClientIDs": ["197WrMnJtovSMFw8", "X4zxbdfXgunt1oMN", "Z68eovHSH3xV3URI"], "domain": "RVDYBd6hMB0l7sg7", "namespaces": ["IfMH5Tu1ky1ZYvye", "HmfoFkUDP864shbn", "Q3bVvuvpsDJXPCWk"], "roleId": "X4Kpi8CJ88aMPGFF"}], "Secret": "AQZbfbmVTEbiRq5J", "TeamID": "uikmpat75rVbN9ZB", "TokenAuthenticationType": "tzJ33tCwv8H1f451", "TokenClaimsMapping": {"FVZ630HNBYZSrz7p": "MjESLLMPKDXLki6O", "z5Bygt8Q0RjSf1sr": "B7hGwGbUmQmJHNff", "ZENs9X0hFMdzryvh": "c1YjHmmulSBIElc2"}, "TokenEndpoint": "CdRvBb0aGnMt625b", "UserInfoEndpoint": "WHb5sbX6asrjV7XJ", "UserInfoHTTPMethod": "UOtHlzXNHEPpzlMl", "scopes": ["x7b2H2THLwZGikW7", "TFA9gE6SrYKq6lcV", "OhPJIcEHbiKHW7fl"]}' \
    'VolAWEMmQSPDTRqj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    'lvwnnCA5tfK5usha' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "KTPVjyOUpR3uUdgN", "AWSCognitoRegion": "lyU4IJnqtrjCOsE8", "AWSCognitoUserPool": "VjvzhJwNX4bhqCjl", "AllowedClients": ["wrmsSRV86iic1FIM", "yF7CcNu2DYn6E9Gk", "51kOTJZluTekDMCG"], "AppId": "UJvERxNg8djSb4Vt", "AuthorizationEndpoint": "2vKQ5vlCdI519Pf2", "ClientId": "iogwxM5DZM0dgozm", "Environment": "co41750xdYQg34WU", "FederationMetadataURL": "V0WpmsQnp1n4YGum", "GenericOauthFlow": false, "IsActive": false, "Issuer": "lDOy5vhSkxERZ2AQ", "JWKSEndpoint": "1jvXYBar5RMmmGdW", "KeyID": "l0wpj5tVfKU3D8WV", "NetflixCertificates": {"encryptedPrivateKey": "Ph0Z7YiGE2cyzTMB", "encryptedPrivateKeyName": "Y7Xd0OoENg2Lw7ue", "publicCertificate": "pmahXojVZYz2zMU9", "publicCertificateName": "jLzNV3GaG43R6nlR", "rootCertificate": "PrEAYqRBeSc5uSho", "rootCertificateName": "j3dGHMeoi5DBOsQ0"}, "OrganizationId": "Gax0iX05IT9Agsjl", "PlatformName": "5NmnSHhxNmCe4txY", "RedirectUri": "0MsPc9EMgf9JCJiE", "RegisteredDomains": [{"affectedClientIDs": ["vhL8ZfwCVJW9yspU", "OyHC9eKeXzrvzBll", "wzyC1aTWEmPgoy4T"], "domain": "kpEw4Zeid4mRoFNx", "namespaces": ["v10ckMQVjKk3bWJ0", "ZuYSe3sI0x2hc8va", "N1Off5gRZZMW3huA"], "roleId": "IzBPWBYKAEFTdlKN"}, {"affectedClientIDs": ["h6GTzKjsCqxx24QM", "35bSkFrvGciNHb7O", "Y5YIpOLJW52uz3c8"], "domain": "pz63M0g4xXT5Ts4e", "namespaces": ["0uR47OzUGHeBKtpv", "yRNgjZkdDppvEJiU", "iDGXgh8BKcLqtRZ9"], "roleId": "3LuR8OEyICvwgwBF"}, {"affectedClientIDs": ["ehwtdJLdn3R2wo8b", "eVQvgeP9qOHaLwYn", "Xxrz7sLmP70LxN0f"], "domain": "3JA27Qz5SjzQfOLY", "namespaces": ["u9O46OOzz9p57qSp", "HerzO87cg7TqtMiQ", "gi7Aj28qCRbwwZc4"], "roleId": "ZS1NMkrnHs1Iyhwq"}], "Secret": "k140MolIrnlkRVbc", "TeamID": "X435TDYpkk2Gza6D", "TokenAuthenticationType": "rSycophHw3EoEECl", "TokenClaimsMapping": {"TO9SDKnMlnKW9jiN": "Mu9QVrMeD4bD8gIS", "E34yIAZQeigiA3wB": "rmBYIlZeheP72AB8", "EO3YrlyrWowUpUDV": "LlTtuJJsHZVsG6iz"}, "TokenEndpoint": "JZruOJvSRFLDSdj8", "UserInfoEndpoint": "elbtHvDU91DmHzwi", "UserInfoHTTPMethod": "qVPCJ5j18Ou3aY8n", "scopes": ["ceFU5GKmcEKp8AQw", "qgJs6O0Qj0ccMkdz", "6zPz3BVHAqp4O9XS"]}' \
    'jap24esyjh6Wc3mi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["gf2n6iQyr5cb5YL6", "fwBiaVPmmn0T5uzl", "mi2NY26xrkPPdg3p"], "assignedNamespaces": ["XjmtpNfCrIj9ntYo", "3dupUHNu8abrVVOK", "xr9Pa315FKDjG2Ap"], "domain": "SV94Jy6yCSXBqJqj", "roleId": "AbVwSaoj1ugjr8mP"}' \
    'kr3tZ506ERSVy5M3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "rrkxu0U9h9gCNVZx"}' \
    'HGxhZqNXJ6JXSh0Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    '3SWISs1dYrJKmx1B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "T6iLFQejNZJNF2hm", "apiKey": "0TqBQprHn3whPKU5", "appId": "abnqw8fFa30pVbhr", "federationMetadataUrl": "1BHh1arZAyuLcZoE", "isActive": false, "redirectUri": "OQxWeHypqCWMDPRI", "secret": "2cCk8zHR8VyCC0EQ", "ssoUrl": "wE0cXokXbwKDtVmr"}' \
    'YQu7hZvHfiT9s9pK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    '8HuUY1QQHQ0NCEdd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "Jtx6GV01vD7lNLxl", "apiKey": "pvqaB9P9GaukfCEI", "appId": "eSBLhTfzigzHcRuJ", "federationMetadataUrl": "gYaj4I8Dzyh1N0JE", "isActive": true, "redirectUri": "NoMtHvjM7X1fjzkn", "secret": "v2HZMIL2P2bh14Lr", "ssoUrl": "oFTnAuujPeP9N0vd"}' \
    'VB5a2XkS3XQfMuzZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'h4AhZRe2hgU56xty' \
    'JtnbTDXu7FbleSP5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'PcdOuq0m0rvakR8r' \
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
    '{"userIds": ["cwojLRjhcaJ56nGl", "YZ2tod2BGBXjNyRC", "tPOr1FU3QZy3gdDm"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["s3kb1htW0UGJpwQZ", "lXuzu3m9u67JjCDw", "g186hGWKfO9MnoT3"], "isAdmin": true, "namespace": "MCxMp2J0hDg2kMgk", "roles": ["vhoQe9gD9tGN0nE7", "M36mI9u3EeZtLQij", "2JXsqdXfhZTTaCeq"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'AdminInviteUserV3' test.out

#- 146 AdminQueryThirdPlatformLinkHistoryV3
$PYTHON -m $MODULE 'iam-admin-query-third-platform-link-history-v3' \
    'Gv7meuQhJuq1C6JH' \
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
    '{"listEmailAddressRequest": ["kWMSUbqByWN2BCnR", "z9w2nur0B9jKaunA", "cylsau7wRQmL4i3e"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'AdminGetBulkUserByEmailAddressV3' test.out

#- 150 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'RyIECEDa1I4lwXqw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AdminGetUserByUserIdV3' test.out

#- 151 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "Pfq3VzHQjtolx64w", "country": "1gyvjacKtGqxMnoA", "dateOfBirth": "XRlcq0mYWKQYlqMm", "displayName": "u2pvF6rP03bQaq1c", "languageTag": "T88H6RCW8gJmGzDl", "userName": "qxtLsR2AGOiPhNt2"}' \
    'IdH8aYYUT6mma833' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserV3' test.out

#- 152 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'TDzk66ix88sAUrXr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'AdminGetUserBanV3' test.out

#- 153 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "7MXxCvyy7caxz4MQ", "comment": "rODLNlxiEjQBCZx9", "endDate": "DJ4V97SJLlrwXmIG", "reason": "amRCARuFLx4rV4CX", "skipNotif": true}' \
    'MrDYKe2eTf1axo16' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AdminBanUserV3' test.out

#- 154 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": true, "skipNotif": true}' \
    'vSLLiMvcu39YZJyp' \
    'WzpNXgnoKIz8O8Ng' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'AdminUpdateUserBanV3' test.out

#- 155 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "lJtZTh280vflFMxI", "emailAddress": "hlIT8AgyZJ16MMd2", "languageTag": "bzOrTn2huwPgyUzB"}' \
    'UWiKoNGtvyk5xEfr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminSendVerificationCodeV3' test.out

#- 156 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "JDxKsw5Xl7ZZrDZd", "ContactType": "buvCFBaVcohewKkV", "LanguageTag": "uGv9fQXkErF0drbY", "validateOnly": true}' \
    'rMU6A43UKGpvC1cr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'AdminVerifyAccountV3' test.out

#- 157 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    '5T1PSXhduTWchzXD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'GetUserVerificationCode' test.out

#- 158 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'v3TAtBjP4HSuiYCb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserDeletionStatusV3' test.out

#- 159 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"deletionDate": 66, "enabled": true}' \
    '0UyYUJmNL8p6Abdt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminUpdateUserDeletionStatusV3' test.out

#- 160 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "U0CDrlQpKB8qoel2", "country": "QK3aSOYdmMDikc3F", "dateOfBirth": "jm9HoQDemtiQvURY", "displayName": "ZCeF30RT9rBgM8o7", "emailAddress": "lxXq7TkdM7FVDCBc", "password": "vVegrZddP8lLQo6t", "validateOnly": false}' \
    'y7F82Adu9BYRHrVT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminUpgradeHeadlessAccountV3' test.out

#- 161 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'ehrqgvEtEs2LpE0q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminDeleteUserInformationV3' test.out

#- 162 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'fbvdU8hlDoC9Fnxq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminGetUserLoginHistoriesV3' test.out

#- 163 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "BlPBYJ7X6uVy7FWT", "newPassword": "SfMi2CPVGxjcdpdC", "oldPassword": "qVeePMSqb8y8qJTU"}' \
    'QY40Zrpn0vAD9YsP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AdminResetPasswordV3' test.out

#- 164 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 8, "Resource": "qff2iWi4yP3uqNci", "SchedAction": 14, "SchedCron": "UGrVQAbhS54ZuQHK", "SchedRange": ["ersDmJLUHAKtfXCK", "Ona8DdjtZhh6ofsU", "oRh6r0e0J6vyqPw7"]}, {"Action": 9, "Resource": "lmV3kES0Hi88UYgS", "SchedAction": 98, "SchedCron": "EkCeV29QsQk100eu", "SchedRange": ["5UcxuXXpt0YSPX04", "uEIdAwgDobopbdJe", "VCiKs2vLyH9kcSBd"]}, {"Action": 21, "Resource": "YUJPbvzn8TYoMDAa", "SchedAction": 95, "SchedCron": "hCzroAzWQDve0Z2G", "SchedRange": ["2N09VIbbsz24fQKD", "ZX6plErw0Gb0ceCb", "phW4YMhJ0S50bez9"]}]}' \
    'ZLHW882riiPfRQ3r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserPermissionV3' test.out

#- 165 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 73, "Resource": "BgSZBvkehRn83B0n", "SchedAction": 35, "SchedCron": "Qn77hiP1lzkzjYDw", "SchedRange": ["6mLBordrJkD6vy60", "uRMT1Xw9K9Yb68a8", "ygYx2TqkhlqMnE9W"]}, {"Action": 20, "Resource": "zXhkrN4pWryt4XTN", "SchedAction": 45, "SchedCron": "mgDf3GaJsdCZND0w", "SchedRange": ["gYOilX1e1825iasu", "nESjcgr2drXG5NkK", "CySLA8cKCs0dFYRS"]}, {"Action": 0, "Resource": "KGRUMrimGAz6OhmH", "SchedAction": 83, "SchedCron": "pLhMF2Pav11FuU8i", "SchedRange": ["XCRz8KgqgwijYxpG", "hsFArq6lolbj7QKv", "tVRCPMjr5M3vw1Gq"]}]}' \
    'UjjFp6R8mYZwKftV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminAddUserPermissionsV3' test.out

#- 166 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 33, "Resource": "Qut2hiPuDdOPHcN9"}, {"Action": 7, "Resource": "HbHnfs4tLVOYQCWM"}, {"Action": 22, "Resource": "q9dGLHjtgE2bTXJx"}]' \
    'CCFqPNDqWrpkWnno' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionBulkV3' test.out

#- 167 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '45' \
    'aRDwYLge851PbK2M' \
    'FKvw5TWjAh4gy41L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserPermissionV3' test.out

#- 168 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'LzQ2IjY5PeNr4JmY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserPlatformAccountsV3' test.out

#- 169 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'xH2qs28hePJjMp0T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminGetListJusticePlatformAccounts' test.out

#- 170 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    'KKUBfPNI9f2oLWDP' \
    'SZexfKVxqdxmh5QW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminGetUserMapping' test.out

#- 171 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    'xuQuI7gdDTDb3Wdn' \
    'OpzTrRzCCafADJfW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminCreateJusticeUser' test.out

#- 172 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "BspT3MLwJZquMQSP", "platformUserId": "p5XD4S1ilfgff7Et"}' \
    '4uY8nlBwGNHgfgwZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminLinkPlatformAccount' test.out

#- 173 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "wVMvshGmsg6ZJYnk"}' \
    'HDnHTlRugM7a2UZg' \
    'eesipbP027okM5E8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformUnlinkV3' test.out

#- 174 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'tAajVSvLRj306RDu' \
    'aSixXEdloYZBkatN' \
    'Lc42eq0O6VsXtOlQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminPlatformLinkV3' test.out

#- 175 AdminGetThirdPartyPlatformTokenLinkStatusV3
$PYTHON -m $MODULE 'iam-admin-get-third-party-platform-token-link-status-v3' \
    'wj5xPvm7c5nPR0Y1' \
    'sffUaZ64dFpiv8o9' \
    'Gw4QtKgyIeySoUxo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 176 AdminGetUserSinglePlatformAccount
$PYTHON -m $MODULE 'iam-admin-get-user-single-platform-account' \
    'Mrj2J4JGQZAtyjTx' \
    'nlmSyjEaFH2DRN6H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminGetUserSinglePlatformAccount' test.out

#- 177 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["IEqIFEcS0ynIMOYW", "pUYUQMooiKT57rmb", "jEnimeR7EFBz43E9"]' \
    'FkOPVu2fDtOjW1iS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminDeleteUserRolesV3' test.out

#- 178 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "YQbcebBd5wb5H3qp", "roleId": "poCiHMD4iBK2O7qY"}, {"namespace": "tOHV5hnpjc5CNLnn", "roleId": "Evo25aEtdjls5oad"}, {"namespace": "seJg7y4Q9CU3fjSR", "roleId": "aXD4HDmdvhMXxiKR"}]' \
    '29LKIhNU43K8bihd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminSaveUserRoleV3' test.out

#- 179 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    'w3prp0UHlWUxkBef' \
    'hxRtrqbv56oqwnCL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminAddUserRoleV3' test.out

#- 180 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'Vc2qHZuuedbBOd19' \
    'DqZJRYV1oqNLmPAU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AdminDeleteUserRoleV3' test.out

#- 181 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": false, "reason": "Mwa2wYq6DsUq38bY"}' \
    'vaWLoKzHnngdfFnO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminUpdateUserStatusV3' test.out

#- 182 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'fY9stXH6LYXXMndx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 183 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "BPKmHVB7cNzHhvxc"}' \
    '4xAPZ86WNnQOhusP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminUpdateClientSecretV3' test.out

#- 184 AdminGetRolesV3
$PYTHON -m $MODULE 'iam-admin-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminGetRolesV3' test.out

#- 185 AdminCreateRoleV3
$PYTHON -m $MODULE 'iam-admin-create-role-v3' \
    '{"adminRole": false, "deletable": true, "isWildcard": false, "managers": [{"displayName": "6u8agb5HPsBU0Eo6", "namespace": "QJ9vBRJ4UP09fabC", "userId": "01Thm9f4AWpyiKVT"}, {"displayName": "3OvEujx5yjtQSCJa", "namespace": "OHzpb623EciYoYOP", "userId": "Vg6DLEZ6DxpwBm2N"}, {"displayName": "8PdQ5mQaGXEbnmWR", "namespace": "0H3EkrHqaLNdfKsz", "userId": "YZzOg113h6fIaHSx"}], "members": [{"displayName": "5bClxUOBmMwv5pmi", "namespace": "IVnhlLoMemsp7o3F", "userId": "2LQw7Y2VdSxgXez7"}, {"displayName": "VvS0C9JLVQQPa7PP", "namespace": "x4Zi6WaC8wk7HMbJ", "userId": "hNwZgf5nlMDORYuX"}, {"displayName": "nPNJgayPFcyUnKXA", "namespace": "3mcyMmX6WF8jtNAV", "userId": "OYqSH533YlJ93CCG"}], "permissions": [{"action": 55, "resource": "6lUMKi5mweMEZo2Z", "schedAction": 27, "schedCron": "rCKvrOAi7lMgkVWJ", "schedRange": ["YzSCIDxWUxgOzeRN", "HIqK5PT404mFw4HJ", "v5T2kIQOecfLsYKT"]}, {"action": 25, "resource": "JE3uqZz574g31cA0", "schedAction": 85, "schedCron": "VNPXNsmwTV8imJHN", "schedRange": ["I0l6jJVzF1Oi2sQu", "WUBBHZonSmzF831v", "lCiZAZHCWMXxVh8H"]}, {"action": 94, "resource": "UDavOlKT5EIHNhJQ", "schedAction": 34, "schedCron": "U7cPqNZrLCRRUysy", "schedRange": ["a4J3rvTzMTMSwrNo", "v2GW9i54JY23AUWF", "TLq0W1JqwKs1mO80"]}], "roleName": "L7IOHlf6j8PZOzUi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminCreateRoleV3' test.out

#- 186 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'QKZqz5NSp0B7LODN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminGetRoleV3' test.out

#- 187 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    '3Boi2sSAO2n4MZQt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminDeleteRoleV3' test.out

#- 188 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": false, "isWildcard": true, "roleName": "4gkLmvEOaRcqTgF0"}' \
    'xtQAXoDoFkmA3fgz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateRoleV3' test.out

#- 189 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    'cwdgJMjIyGfiNBQy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminGetRoleAdminStatusV3' test.out

#- 190 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    '41M1gzGCbaxw33rN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminUpdateAdminRoleStatusV3' test.out

#- 191 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'bE4bbDU4FMTbQaAN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminRemoveRoleAdminV3' test.out

#- 192 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'JOODGerDCWcl3VSJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminGetRoleManagersV3' test.out

#- 193 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "ENQopeHD6iKBGm5C", "namespace": "j7RqnJUmfDmofxvN", "userId": "8pRGoUtmbWZbEjPy"}, {"displayName": "q35BWDoc3qNcQFFy", "namespace": "Hv141NPqjRUMKSQj", "userId": "FdjqTaZFsWzbqwTZ"}, {"displayName": "QIN5jC6a8mEVCXHm", "namespace": "FnrSL0PJcZQaCeNL", "userId": "YxMID9pqZ5rryiMM"}]}' \
    't6fQtLhzylaquioT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminAddRoleManagersV3' test.out

#- 194 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "3QBt29AiRASsuFM4", "namespace": "ahGw7XcF1Qwzz606", "userId": "UGXPhoNZlXMef7Av"}, {"displayName": "S3TfKx6ByTygbtOt", "namespace": "cQS4Cmgw1wRUnIVY", "userId": "xY6OhdkrYiCinoVO"}, {"displayName": "zo4Plv1IlTpEhjTF", "namespace": "YdzsUNvQAn2LuMjL", "userId": "qwmVz3zKsfjz1mFk"}]}' \
    'yxoUzfMFoXCOguSq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminRemoveRoleManagersV3' test.out

#- 195 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    '2A4R3wDdSkNfHJtA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminGetRoleMembersV3' test.out

#- 196 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "3QiX9ZvtydbaVb0s", "namespace": "cd97A0GP6djn2Ps3", "userId": "IVT5hUZ3cnDq0ddZ"}, {"displayName": "G0EpfGAqHKcSxUc2", "namespace": "YgRpk2IFGIgIpscU", "userId": "pVAciu2XPPUxzXHU"}, {"displayName": "vxhvTZcvRKoaM4oz", "namespace": "SAg8FTLrByWOJhbo", "userId": "coGlPzdfxcC3rpWh"}]}' \
    'Spq0InxMLpP7n7M3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminAddRoleMembersV3' test.out

#- 197 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "JXjEvsj5WcQ99M1y", "namespace": "uXeqV31LX2ehcMnM", "userId": "6QtjzQjDlUMCGnxZ"}, {"displayName": "wak7KHnzGASmVzeP", "namespace": "Iroz41oQCuXeTRyJ", "userId": "QrNLTcqLVTN5Qf4t"}, {"displayName": "jPGpu27yxb1of79z", "namespace": "VTWIfgdNphqe9fS1", "userId": "m77MAg4KoZQPLhDS"}]}' \
    'Jx9jzxaRKph4kiIF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminRemoveRoleMembersV3' test.out

#- 198 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 12, "resource": "XKDhp1OkMcErmeH0", "schedAction": 24, "schedCron": "yNfj3XgTRTjI9oNB", "schedRange": ["zgQ4CRwg0sKVeSpM", "ny0GrvKI5EVB9ZFz", "LNsjdCFtKY0KsxR0"]}, {"action": 35, "resource": "qLCv9DYBOProN4UW", "schedAction": 3, "schedCron": "hiIP7dpJ8B8VwFQn", "schedRange": ["Vco2oCn1KvJmbjap", "W9UlEqtzDd7Sgxdx", "B5kvtM8ah9bPsksc"]}, {"action": 10, "resource": "ILFzOlAZbDQAEJLb", "schedAction": 97, "schedCron": "7yJMowQ6LpHCvCYT", "schedRange": ["gX9JQwErzjtuP9pU", "Uv7qefNMFsZAIqak", "1zi0JSa5cRn31D8u"]}]}' \
    'bfdXi7BycDPckeGJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'AdminUpdateRolePermissionsV3' test.out

#- 199 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 96, "resource": "IMeL0GL3aefSDME8", "schedAction": 68, "schedCron": "2MxILI42BJMPkZma", "schedRange": ["y4Csye3iJLtjsu6Z", "JRCoDq3geuHFFaZz", "PIjETqcKN1gaQ4Bn"]}, {"action": 20, "resource": "cPPtKaJlw31pdDrX", "schedAction": 87, "schedCron": "76CeD4dWCp4wqlQJ", "schedRange": ["cZroNQiefBnPluOI", "jZyvlGDQGv6pNNow", "EuVVZM28w4mnYvvl"]}, {"action": 39, "resource": "P2j2WsQImTwYkiux", "schedAction": 53, "schedCron": "C6eWKCFGS97Si6Xy", "schedRange": ["LVPrkUxyZ1OH5Nn4", "nMT8QOyTuUSD9Imt", "aPAocOQcpBWSNrCj"]}]}' \
    'SNEAdojkCMmYyTGO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'AdminAddRolePermissionsV3' test.out

#- 200 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["07foRZ6FujpIWo0q", "Jtqp4Q6XgICLgMHc", "P1eE6sjWQllYsONp"]' \
    'p6QGW56CNiszHE69' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'AdminDeleteRolePermissionsV3' test.out

#- 201 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '61' \
    'uy9oLFcHHcraLXR2' \
    'n9JQvq7NKWIHYsii' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'AdminDeleteRolePermissionV3' test.out

#- 202 AdminGetMyUserV3
$PYTHON -m $MODULE 'iam-admin-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'AdminGetMyUserV3' test.out

#- 203 UserAuthenticationV3
$PYTHON -m $MODULE 'iam-user-authentication-v3' \
    '3fCh7sieJjZPAkiW' \
    'umllU31uXPwYxedG' \
    'HCIkmt4bfJOhNaIT' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 203 'UserAuthenticationV3' test.out

#- 204 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    '0pv7XeqO8gY3c4Sr' \
    'yWB4yRaDxvxwaLM8' \
    'HkVOW8PnLkgqkqYZ' \
    'WPZTgKagTzdcYcko' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'AuthenticationWithPlatformLinkV3' test.out

#- 205 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    '7U3gH239LhRx2Laa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 206 RequestOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-request-one-time-linking-code-v3' \
    '2RdtVb6VgA5yFIH3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'RequestOneTimeLinkingCodeV3' test.out

#- 207 ValidateOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-validate-one-time-linking-code-v3' \
    's9UyeaFi8OE7BCK4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'ValidateOneTimeLinkingCodeV3' test.out

#- 208 RequestTokenByOneTimeLinkCodeResponseV3
$PYTHON -m $MODULE 'iam-request-token-by-one-time-link-code-response-v3' \
    'FeVGrl5NpUG9zblW' \
    'EiHaUjyTHb0sSlst' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 209 GetCountryLocationV3
$PYTHON -m $MODULE 'iam-get-country-location-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'GetCountryLocationV3' test.out

#- 210 Logout
$PYTHON -m $MODULE 'iam-logout' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'Logout' test.out

#- 211 RequestGameTokenCodeResponseV3
$PYTHON -m $MODULE 'iam-request-game-token-code-response-v3' \
    'b3slUe94NxhXsVcq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'RequestGameTokenCodeResponseV3' test.out

#- 212 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'TYi1TMBMzaOrxuKv' \
    'tUVtqbDWnJ2i9TRm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 213 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    'JOqIl7U12hO5vpk9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'RevokeUserV3' test.out

#- 214 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    'DOSgbsdGVPLD9A5N' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 214 'AuthorizeV3' test.out

#- 215 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'aRNDe2IoPMSQKcg0' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 215 'TokenIntrospectionV3' test.out

#- 216 GetJWKSV3
$PYTHON -m $MODULE 'iam-get-jwksv3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'GetJWKSV3' test.out

#- 217 SendMFAAuthenticationCode
$PYTHON -m $MODULE 'iam-send-mfa-authentication-code' \
    'OTT9JA0ll1RimBCi' \
    'QwuyrI87uSyXP6C0' \
    'jXS8au2wcWYyj3Jv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'SendMFAAuthenticationCode' test.out

#- 218 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    'HqXp4JR7xI59Z9tf' \
    'GVsglnOxOXBfgBLu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'Change2faMethod' test.out

#- 219 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    'glkd9LIoshGnFSuH' \
    'mrqej8PRppYY1vlV' \
    '0M2g6oreqyBzWzCg' \
    'true' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'Verify2faCode' test.out

#- 220 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'MWZuD6tmIR28xVxb' \
    'tpSKOfiIP3S6pypZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 221 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'qISn3msrykQFtW8Q' \
    'GKFZLrIfqrZuu7Iw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'AuthCodeRequestV3' test.out

#- 222 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'KcT7sAsv2TKCbYMV' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 222 'PlatformTokenGrantV3' test.out

#- 223 GetRevocationListV3
$PYTHON -m $MODULE 'iam-get-revocation-list-v3' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 223 'GetRevocationListV3' test.out

#- 224 TokenRevocationV3
$PYTHON -m $MODULE 'iam-token-revocation-v3' \
    'kXEHmsHwIGGsusS0' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 224 'TokenRevocationV3' test.out

#- 225 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'refresh_token' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 225 'TokenGrantV3' test.out

#- 226 VerifyTokenV3
$PYTHON -m $MODULE 'iam-verify-token-v3' \
    't23pci6xEljer6aG' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 226 'VerifyTokenV3' test.out

#- 227 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'Jx5OFp3jKEx4aSGd' \
    'wTPX4ig3NVFFkP7O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'PlatformAuthenticationV3' test.out

#- 228 PublicGetInputValidations
$PYTHON -m $MODULE 'iam-public-get-input-validations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'PublicGetInputValidations' test.out

#- 229 PublicGetInputValidationByField
$PYTHON -m $MODULE 'iam-public-get-input-validation-by-field' \
    '3F4vsohRWDyGYIVF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'PublicGetInputValidationByField' test.out

#- 230 PublicGetCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction-v3' \
    'DbTvRYfpJ4wM9WZf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'PublicGetCountryAgeRestrictionV3' test.out

#- 231 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-public-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 232 RetrieveActiveOIDCClientsPublicV3
$PYTHON -m $MODULE 'iam-retrieve-active-oidc-clients-public-v3' \
    'OOxAzmsbhi5QJuc2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 233 PublicListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["SNBaOlXfgsgBd7MY", "LLoPZrkjRm5Ki0or", "hXrISEaPZHLQkTHv"]}' \
    'ndQsCKAO2JRz3CGw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 234 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    'tujkzxidLcAQWGVR' \
    'g6DVso5TJCSugdo4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'PublicGetUserByPlatformUserIDV3' test.out

#- 235 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    'XTm8t1YTWqItjNWX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'PublicGetAsyncStatus' test.out

#- 236 PublicSearchUserV3
$PYTHON -m $MODULE 'iam-public-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'PublicSearchUserV3' test.out

#- 237 PublicCreateUserV3
$PYTHON -m $MODULE 'iam-public-create-user-v3' \
    '{"PasswordMD5Sum": "m9sraeMA78YSRS2f", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "rdN0JVz4U43EcV1F", "policyId": "RyeeqehMNeRYKeMb", "policyVersionId": "L0G4v5D6ylZguO91"}, {"isAccepted": false, "localizedPolicyVersionId": "X7rLoexHBMBMMAYo", "policyId": "kSWFwajRGUyklfLV", "policyVersionId": "Y6g3PO4hKAeF4GUV"}, {"isAccepted": false, "localizedPolicyVersionId": "apnZXoJ4gI4EQKO8", "policyId": "xC4D0FsUo3IB2kX5", "policyVersionId": "REQZsHyXzoIXNf0K"}], "authType": "bL9HyJttdgfLGO3u", "code": "mmpllnV6B62P1Kaz", "country": "g73c6UpmA4ehxNII", "dateOfBirth": "lcrZzgameT2mLkkA", "displayName": "MjHyI0e2Axj0nZHj", "emailAddress": "moKHJngwMe1AnQVj", "password": "6QQjZtkNJCnDSrsS", "reachMinimumAge": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'PublicCreateUserV3' test.out

#- 238 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'euMgEctVEux2MSuw' \
    'sEHlwdeJyhsHS6Yq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'CheckUserAvailability' test.out

#- 239 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["PudWviQsULL1txfX", "9tqFSkGXoIcFN5JL", "9M53Mg0MzWS9usxx"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'PublicBulkGetUsers' test.out

#- 240 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "nMhjv66DyED4prRV", "languageTag": "ibTATxd7Mzjv1gSj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'PublicSendRegistrationCode' test.out

#- 241 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "8kcNhoqcRZRNAToj", "emailAddress": "M7daV0VwR3yNKDtM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'PublicVerifyRegistrationCode' test.out

#- 242 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "qMrAGpdyF6WDHn3e", "languageTag": "PBxQNz2IUEHMzl5j"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'PublicForgotPasswordV3' test.out

#- 243 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    'hwVDsuzwJ4v50eoa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'GetAdminInvitationV3' test.out

#- 244 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "Em3uHBMCP5ckjphU", "policyId": "Rs4ksgsKJ2R6Jacw", "policyVersionId": "wu8W1zvrKMRPvwA9"}, {"isAccepted": false, "localizedPolicyVersionId": "ek8WObpf0FHYfViE", "policyId": "j70KYKIfFt4GYjUt", "policyVersionId": "4F1ZVy2qFfSr3psW"}, {"isAccepted": false, "localizedPolicyVersionId": "wYL6LwGlZGF7XQPL", "policyId": "AcIL7FvAMWqhyyNZ", "policyVersionId": "H1CducB5y5iMdeBG"}], "authType": "EMAILPASSWD", "country": "s7hqIH2NgARSG3QQ", "dateOfBirth": "NGNH2K0UuJdeGNqu", "displayName": "QnaXpDQ5rU2taDWh", "password": "9JV5oc5IFQsrwHqF", "reachMinimumAge": true}' \
    'ndMpQhcLK0WTZbtm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'CreateUserFromInvitationV3' test.out

#- 245 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "QkwC8azx3IRWme3C", "country": "6p2r4D3NQdjrjkX3", "dateOfBirth": "AMgK3JgZufzssA28", "displayName": "4mG7uAojLYBsx8oq", "languageTag": "MzbE0ljQaBtb47V6", "userName": "91j0FZp2vjOXptxz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'UpdateUserV3' test.out

#- 246 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "x6kkaZYpl52sQR9Z", "country": "np5d1eSwrG2GBBEW", "dateOfBirth": "rDbQ1ZzhDuLHq9LT", "displayName": "BstguOdN0O7l3GbK", "languageTag": "PHdDTQDEEE2mTsn1", "userName": "NwJ71szsNmnqZSWd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'PublicPartialUpdateUserV3' test.out

#- 247 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "EyOVYrTdDq7IqbTV", "emailAddress": "v8BLsqQW8HSrEm5Y", "languageTag": "7jI232SjktijiNzT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'PublicSendVerificationCodeV3' test.out

#- 248 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "Ue8KdizXmrmK0sCU", "contactType": "sqxKocHomtjoU1kU", "languageTag": "qRedwIu1TSRr6r8m", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'PublicUserVerificationV3' test.out

#- 249 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "u7rIjGrxUMKbv60i", "country": "xUuUhopdqGrqRZ12", "dateOfBirth": "4P7PauXTrpWAjwat", "displayName": "SvtPbAFn8oWQcmFk", "emailAddress": "kRX6EqadAEIzxld8", "password": "0Ynss7hc3VUxxZIg", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'PublicUpgradeHeadlessAccountV3' test.out

#- 250 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "VznF6hMYfksp8VQh", "password": "YSFeBOp0ilGQFwHU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'PublicVerifyHeadlessAccountV3' test.out

#- 251 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "tZugblT3aIDKn9qJ", "newPassword": "Xncm5igpAewbmnWk", "oldPassword": "0E7YaPblcWEyNgvs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'PublicUpdatePasswordV3' test.out

#- 252 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    '5LEZrQXzSQRWRs9E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'PublicCreateJusticeUser' test.out

#- 253 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'GnRPgYlJElgJ8kx1' \
    'WEeDbql13FtQMu41' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'PublicPlatformLinkV3' test.out

#- 254 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "rnOzbsFBqg6dziWv"}' \
    'dNcwfUBMdNuTaiLx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'PublicPlatformUnlinkV3' test.out

#- 255 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'FMXRpDP9xutntU8x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'PublicPlatformUnlinkAllV3' test.out

#- 256 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    'Hw4yYJOCViHwunQw' \
    'pC2eCFUAHZaYSvsW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'PublicForcePlatformLinkV3' test.out

#- 257 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'iNJtqXltZF6aSRmH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'PublicWebLinkPlatform' test.out

#- 258 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'U5iR3hXIbzWPKOkz' \
    'ftOgDQAWhulbrDf7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'PublicWebLinkPlatformEstablish' test.out

#- 259 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "q4cAnpmLiEu4CNtX", "emailAddress": "2lnqi7cHTSdGoLZb", "newPassword": "C3UJruU4uIXBZsEY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'ResetPasswordV3' test.out

#- 260 PublicGetUserByUserIdV3
eval_tap 0 260 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 261 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    'ogFWiH9z4E8zmaZ5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'PublicGetUserBanHistoryV3' test.out

#- 262 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'cg0REtUWY4fVIdqw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 263 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    'CWF5wmbOubTxAAeD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'PublicGetUserInformationV3' test.out

#- 264 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'CowR3MeCNL1oNrF3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'PublicGetUserLoginHistoriesV3' test.out

#- 265 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'SmgudQusJLsPlW7Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'PublicGetUserPlatformAccountsV3' test.out

#- 266 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    'yORFkN9EbKbTbrDz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'PublicListJusticePlatformAccountsV3' test.out

#- 267 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "NgVEcw0lxRam16O6", "platformUserId": "v4VjJf40LjUdOREL"}' \
    'VXUFQyVlt9jmxmxp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'PublicLinkPlatformAccount' test.out

#- 268 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["fp41k1uDg59PhdUX", "ShabwyYCxTHrDel8", "oThvr8CUEzw4zL1Q"], "requestId": "eR3EYXBFpUX9y4tY"}' \
    '7o5FFi1n10vDgyoH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'PublicForceLinkPlatformWithProgression' test.out

#- 269 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    'XIlrMl2RAukCL26i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'PublicGetPublisherUserV3' test.out

#- 270 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'hdMy9YCLNJEkvq6S' \
    'USt8xd8EgE15XNuw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 271 PublicGetRolesV3
$PYTHON -m $MODULE 'iam-public-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'PublicGetRolesV3' test.out

#- 272 PublicGetRoleV3
$PYTHON -m $MODULE 'iam-public-get-role-v3' \
    '6Y7sToQNkuZzJ1XB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'PublicGetRoleV3' test.out

#- 273 PublicGetMyUserV3
$PYTHON -m $MODULE 'iam-public-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'PublicGetMyUserV3' test.out

#- 274 PublicGetLinkHeadlessAccountToMyAccountConflictV3
$PYTHON -m $MODULE 'iam-public-get-link-headless-account-to-my-account-conflict-v3' \
    'xw01iBBQukgQ94Zv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 275 LinkHeadlessAccountToMyAccountV3
$PYTHON -m $MODULE 'iam-link-headless-account-to-my-account-v3' \
    '{"chosenNamespaces": ["PCWcMX0ov3U2sKjI", "eyFS97dYD7LkcTKY", "pCfl6HPy5cJfAV5i"], "oneTimeLinkCode": "Ofzwt3bpxRNt6lKo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'LinkHeadlessAccountToMyAccountV3' test.out

#- 276 PublicSendVerificationLinkV3
$PYTHON -m $MODULE 'iam-public-send-verification-link-v3' \
    '{"languageTag": "MjCPtEKeBWTm78Fn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'PublicSendVerificationLinkV3' test.out

#- 277 PublicVerifyUserByLinkV3
$PYTHON -m $MODULE 'iam-public-verify-user-by-link-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'PublicVerifyUserByLinkV3' test.out

#- 278 PlatformAuthenticateSAMLV3Handler
$PYTHON -m $MODULE 'iam-platform-authenticate-samlv3-handler' \
    '8TvZVTe4L2lXrVPX' \
    '6r5ZTcnVVOKMApTc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'PlatformAuthenticateSAMLV3Handler' test.out

#- 279 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'WsFRUlWBp4gBs9Uu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'LoginSSOClient' test.out

#- 280 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'fgsVbG6TUe3jbuQ7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'LogoutSSOClient' test.out

#- 281 RequestGameTokenResponseV3
$PYTHON -m $MODULE 'iam-request-game-token-response-v3' \
    'HMPO4ozK705ykRqS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'RequestGameTokenResponseV3' test.out

#- 282 AdminGetDevicesByUserV4
$PYTHON -m $MODULE 'iam-admin-get-devices-by-user-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'AdminGetDevicesByUserV4' test.out

#- 283 AdminGetBannedDevicesV4
$PYTHON -m $MODULE 'iam-admin-get-banned-devices-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'AdminGetBannedDevicesV4' test.out

#- 284 AdminGetUserDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-user-device-bans-v4' \
    'PYZgPm4JLsXVtBOE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'AdminGetUserDeviceBansV4' test.out

#- 285 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "etHsxAJ8Ny1LRkPU", "deviceId": "9hrl5nkpEdBe8bYW", "deviceType": "dok4UnUEOyP0cPZf", "enabled": false, "endDate": "volfI0mqZctohLhe", "ext": {"RaQkfMLFW9B7jHZr": {}, "o4hhwnANAGp8zGqN": {}, "GrcQyoA1TWPcy83i": {}}, "reason": "XfYXNdMkdg9TMwxN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'AdminBanDeviceV4' test.out

#- 286 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    'cQ6CkVi8fqVPRqNb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'AdminGetDeviceBanV4' test.out

#- 287 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": false}' \
    '5yLnYSa8xFLvcYex' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'AdminUpdateDeviceBanV4' test.out

#- 288 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    'MMMiDFh5RbW021cH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'AdminGenerateReportV4' test.out

#- 289 AdminGetDeviceTypesV4
$PYTHON -m $MODULE 'iam-admin-get-device-types-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'AdminGetDeviceTypesV4' test.out

#- 290 AdminGetDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-device-bans-v4' \
    'N3QbzVuJZH3k54cE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'AdminGetDeviceBansV4' test.out

#- 291 AdminDecryptDeviceV4
$PYTHON -m $MODULE 'iam-admin-decrypt-device-v4' \
    'xxWKtdGTW4FILotv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'AdminDecryptDeviceV4' test.out

#- 292 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    '5ycTa0i6ifYP1zfg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'AdminUnbanDeviceV4' test.out

#- 293 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    'jsy3VRjX4qA4g9OG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'AdminGetUsersByDeviceV4' test.out

#- 294 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"count": 29}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'AdminCreateTestUsersV4' test.out

#- 295 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["hdBOgumV4wAsd4if", "Gd0bkWrlhtfTywRW", "4fmg6btk3mAO4EtB"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'AdminBulkCheckValidUserIDV4' test.out

#- 296 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "0hn2x1oTOX5gBQlV", "country": "Dx9neFHWhDRJtyYE", "dateOfBirth": "t7ygZleAoUuVKneo", "displayName": "O10ytPdJ8SY3qoog", "languageTag": "OxoPYvdIBJYyGURj", "userName": "EjnslEYM8ngVT1ew"}' \
    'VxvgAocOqsd5v5n7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'AdminUpdateUserV4' test.out

#- 297 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "eXCo9gZWdxfIdW8f", "emailAddress": "NAM5YdHivK2Q0Wwo"}' \
    'lQy037hJMOEv5W0v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'AdminUpdateUserEmailAddressV4' test.out

#- 298 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    '25yAObZIbrA8XAKK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'AdminDisableUserMFAV4' test.out

#- 299 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'WMDebehSjpt0wrfW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'AdminListUserRolesV4' test.out

#- 300 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["PXaI1Jb75o2MFOa6", "xgPt69QROGDeJCyH", "vUsnLvXCSgQHvs25"], "roleId": "eiQO3oWdgXdm1IxL"}' \
    '1OtleUBqBO0Ze049' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'AdminUpdateUserRoleV4' test.out

#- 301 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["k9W6ZLVJzRpUsITf", "VruDukun42zPZvOd", "4yZyMKyED3qDO5HX"], "roleId": "p5oVkhESbHQ7hvTl"}' \
    'zf7XwQtVIYU87Ngj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'AdminAddUserRoleV4' test.out

#- 302 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["DMcJxfMfYFlt3JvD", "gMiyBGygWFTAY3Th", "5mOwPCPKVPlOGfFB"], "roleId": "lu2ZP0IkiYXGk6Bo"}' \
    'BmSLi0R7zDFMoNTQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'AdminRemoveUserRoleV4' test.out

#- 303 AdminGetRolesV4
$PYTHON -m $MODULE 'iam-admin-get-roles-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'AdminGetRolesV4' test.out

#- 304 AdminCreateRoleV4
$PYTHON -m $MODULE 'iam-admin-create-role-v4' \
    '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "S8lMlY8UjprhCxhz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'AdminCreateRoleV4' test.out

#- 305 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'W6ZM7LkTVrtVJZVh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'AdminGetRoleV4' test.out

#- 306 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'xCVdjPutJ8dkAVOJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'AdminDeleteRoleV4' test.out

#- 307 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "c7EpiQEzz5N5osRY"}' \
    'O7wbYh7q02W8tkTU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'AdminUpdateRoleV4' test.out

#- 308 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 90, "resource": "B80k2smdkBS2MaIP", "schedAction": 30, "schedCron": "PjngEFggq91cpgvo", "schedRange": ["DBgYfLBdGNAZEvbv", "xqa0K7VUbjUnzirn", "EsxSE4vBzG7VK8sW"]}, {"action": 62, "resource": "Y3rEuHMWwQNmCQmG", "schedAction": 57, "schedCron": "1qdRcJjsme1OukIf", "schedRange": ["IZVH8q8svV5hMOSf", "pyJkJlmJmTkFvB7w", "kY6nuUEGJ3k0HGtp"]}, {"action": 75, "resource": "qAeMvg3w0FQ1520W", "schedAction": 79, "schedCron": "hNCDWWpN3B6tedgF", "schedRange": ["UzBm5vGA3itKaF9z", "3WWuv3j8T9g1f6P3", "D3rVcC2g6t42jE1W"]}]}' \
    'ad232YV7A2zHFGbN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'AdminUpdateRolePermissionsV4' test.out

#- 309 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 34, "resource": "AQaCaw9UF7cdSDd9", "schedAction": 60, "schedCron": "MiPAjnWIhFrqSn4e", "schedRange": ["rXEtU1CaD8AqsMCG", "BNhmUt6fzYRn85br", "Tu8F7cuCPh1TGZJm"]}, {"action": 13, "resource": "JVuMz04evSdE2FMc", "schedAction": 74, "schedCron": "o2PnMSRarKg4coy3", "schedRange": ["AFpULIn21Nf2FNgD", "WNC6yh7kgTHlrxKb", "sV4XtrI7SFBEgkwH"]}, {"action": 17, "resource": "FLX9ZhFXcFtfBS3Z", "schedAction": 71, "schedCron": "lDXYxGRJM92eX42W", "schedRange": ["W2WKf5urEOpASBic", "X3ZwzZ7aVhrkmhSO", "EozGOv8D0iVxzrec"]}]}' \
    '5kNwJAxm0Rdm9l6n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'AdminAddRolePermissionsV4' test.out

#- 310 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["IhG5SilDDIsmj4h6", "25dIsMKWBxF9RAIr", "I81ZR2kNzh60RQNa"]' \
    'TEhMXMepgzY9jLiA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'AdminDeleteRolePermissionsV4' test.out

#- 311 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'dMiQ7eDMkeBRMur1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'AdminListAssignedUsersV4' test.out

#- 312 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["8nCxiV9bQMHpPbvf", "lI3LkRc1NgZaoYAa", "CCeRgtstsU3Qecxo"], "namespace": "4bQZO3P2f8TTOVf6", "userId": "jrr1OL606QpqCgxt"}' \
    '0NgDSj1T6EdeYFmr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'AdminAssignUserToRoleV4' test.out

#- 313 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "LT0HbvS4kSSt3CyD", "userId": "gf6eFAiqSkHi0BR2"}' \
    'ElF6z6eJKuOW61ak' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'AdminRevokeUserFromRoleV4' test.out

#- 314 AdminInviteUserNewV4
$PYTHON -m $MODULE 'iam-admin-invite-user-new-v4' \
    '{"assignedNamespaces": ["RFizqxCmudSXivAL", "3n478mhb2I2yBJeC", "JghTrk68FWFzuLBd"], "emailAddresses": ["lrKjUbgZQfw6Zys3", "mN8fIcC9Ckharfqa", "oMsGyv1RuSNdycDs"], "isAdmin": true, "namespace": "UNCPSre5GmZzCQwi", "roleId": "lS3IxSjlyvR9PxG9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'AdminInviteUserNewV4' test.out

#- 315 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "Lji2Vc88W8aLjIxV", "country": "GpdOqguxvRwI9ZBT", "dateOfBirth": "ipMRlhK9DMMaI4ry", "displayName": "VDvNaruZxwTfh9gE", "languageTag": "s6GF247cbBLjUr5z", "userName": "03wxB3E9hrE9f9CO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'AdminUpdateMyUserV4' test.out

#- 316 AdminDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'AdminDisableMyAuthenticatorV4' test.out

#- 317 AdminEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'AdminEnableMyAuthenticatorV4' test.out

#- 318 AdminGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-admin-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 319 AdminGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'AdminGetMyBackupCodesV4' test.out

#- 320 AdminGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'AdminGenerateMyBackupCodesV4' test.out

#- 321 AdminDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'AdminDisableMyBackupCodesV4' test.out

#- 322 AdminDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'AdminDownloadMyBackupCodesV4' test.out

#- 323 AdminEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'AdminEnableMyBackupCodesV4' test.out

#- 324 AdminSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-admin-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'AdminSendMyMFAEmailCodeV4' test.out

#- 325 AdminDisableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-disable-my-email-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'AdminDisableMyEmailV4' test.out

#- 326 AdminEnableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-enable-my-email-v4' \
    'FrOr6wJDBwIDsJHN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'AdminEnableMyEmailV4' test.out

#- 327 AdminGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-admin-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'AdminGetMyEnabledFactorsV4' test.out

#- 328 AdminMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-admin-make-factor-my-default-v4' \
    'g6TvNGjwI4TbTwBu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'AdminMakeFactorMyDefaultV4' test.out

#- 329 AdminInviteUserV4
eval_tap 0 329 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 330 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "3pO8U3W94Z8IW2MA", "policyId": "L9gYHEV3wnTZTvYY", "policyVersionId": "f4ZFuV6L2AldoWWR"}, {"isAccepted": false, "localizedPolicyVersionId": "5wNYlFiliYmBrqrO", "policyId": "c0NIligBrOkBljwR", "policyVersionId": "ENjt04ZpyTTZG1Lx"}, {"isAccepted": true, "localizedPolicyVersionId": "dySvyVqY8nxBZbHc", "policyId": "PHEFuEVP9bF07gnW", "policyVersionId": "DULkJPQR0UJMr8ou"}], "authType": "EMAILPASSWD", "country": "8FBbur80QwnlgAVf", "dateOfBirth": "qz6gQJh8sn0bVWRk", "displayName": "vmAemh8lioBR7xTX", "emailAddress": "cEIFod3lCzvjHzDH", "password": "OrSJ1vbB7LRHd96d", "passwordMD5Sum": "GLgkfrZveFMWAFT7", "username": "l0l1jaOAMCzbsoIg", "verified": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'PublicCreateTestUserV4' test.out

#- 331 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "wwMDQPjUIosq1l6x", "policyId": "o0D4JRbNqO6IuP2P", "policyVersionId": "Y5hhX6uNah9JoHPj"}, {"isAccepted": true, "localizedPolicyVersionId": "jFWxSv1lYylYAiZ8", "policyId": "c7Zd7EUoezOLw8C1", "policyVersionId": "c5bBB3XZ7ColKwls"}, {"isAccepted": true, "localizedPolicyVersionId": "2VeV2emK3JecJA4s", "policyId": "kqCbPxRkIAFQh9yD", "policyVersionId": "doLE2s7mrVrmTJwt"}], "authType": "EMAILPASSWD", "code": "jPWlCWTuGO8MnfOQ", "country": "u3wdT4Aodp95o1Rk", "dateOfBirth": "X7iW7VpCngWAv5DA", "displayName": "G8dPdkKgQqjyzUZR", "emailAddress": "2rFIAuALNhNCyscs", "password": "MBRLsWadk2OQ421q", "passwordMD5Sum": "7Nb1vrKthVvU5on0", "reachMinimumAge": true, "username": "5ApCkVN3QchuQ6pn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'PublicCreateUserV4' test.out

#- 332 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "cPaOZA8BG8KcVWOX", "policyId": "9n3YsjJexnFA9Umz", "policyVersionId": "3KPICya5Fk5TPaEb"}, {"isAccepted": false, "localizedPolicyVersionId": "29cV8v7MXctihtxM", "policyId": "nIr4b7jyfL3zMkkl", "policyVersionId": "GCPISlsnVA6z0uSf"}, {"isAccepted": true, "localizedPolicyVersionId": "1y9tjRLVOXBMa0Ji", "policyId": "Ie1AY0tUA7EKASk3", "policyVersionId": "USNLhOBlxRBLgohp"}], "authType": "EMAILPASSWD", "country": "PWMkOmrT5HL16jMw", "dateOfBirth": "ECnmwJv4rpqtzDaz", "displayName": "0WUJlBCHzJ2v9K8c", "password": "1zOlZg30pagfP0Ff", "reachMinimumAge": false, "username": "MBOpeQT4zYIbU4i9"}' \
    'mLyX46Alt08rrnG8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'CreateUserFromInvitationV4' test.out

#- 333 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "y2ScXkwjpAp82pGc", "country": "xvXaG9LzHpMS53jl", "dateOfBirth": "lopwirRo3A8WxnR0", "displayName": "YaMsF3f5KLtpTSsP", "languageTag": "MGDZTOwEP5Bhh0NS", "userName": "tWIggmhfAzVdNYP7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'PublicUpdateUserV4' test.out

#- 334 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "Ao1z7FeJM2fWXGk7", "emailAddress": "JObSHksRkabpmvRs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'PublicUpdateUserEmailAddressV4' test.out

#- 335 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "c7ZYvXCT6m6mRZAl", "country": "LBczJVeil7GbG1IS", "dateOfBirth": "BCkcnpxKUxLjmxhB", "displayName": "S6YypRW7fNntaIEt", "emailAddress": "DI6MbhxkQdezbmf3", "password": "92ersoZ2KbMb5jal", "reachMinimumAge": true, "username": "ruZmBXlGSp85q6fu", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 336 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "aSaIsMyLKPPIZx0z", "password": "dNAagipZwiaBrFrX", "username": "tGMjujfHZB1gMI1B"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'PublicUpgradeHeadlessAccountV4' test.out

#- 337 PublicDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'PublicDisableMyAuthenticatorV4' test.out

#- 338 PublicEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'PublicEnableMyAuthenticatorV4' test.out

#- 339 PublicGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-public-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 340 PublicGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'PublicGetMyBackupCodesV4' test.out

#- 341 PublicGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'PublicGenerateMyBackupCodesV4' test.out

#- 342 PublicDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'PublicDisableMyBackupCodesV4' test.out

#- 343 PublicDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'PublicDownloadMyBackupCodesV4' test.out

#- 344 PublicEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'PublicEnableMyBackupCodesV4' test.out

#- 345 PublicRemoveTrustedDeviceV4
$PYTHON -m $MODULE 'iam-public-remove-trusted-device-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'PublicRemoveTrustedDeviceV4' test.out

#- 346 PublicSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-public-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'PublicSendMyMFAEmailCodeV4' test.out

#- 347 PublicDisableMyEmailV4
$PYTHON -m $MODULE 'iam-public-disable-my-email-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicDisableMyEmailV4' test.out

#- 348 PublicEnableMyEmailV4
$PYTHON -m $MODULE 'iam-public-enable-my-email-v4' \
    '8DXb37DffTZ7yQz3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'PublicEnableMyEmailV4' test.out

#- 349 PublicGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-public-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'PublicGetMyEnabledFactorsV4' test.out

#- 350 PublicMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-public-make-factor-my-default-v4' \
    '37LLNCjIySe36SA5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'PublicMakeFactorMyDefaultV4' test.out

#- 351 PublicInviteUserV4
$PYTHON -m $MODULE 'iam-public-invite-user-v4' \
    '{"emailAddress": "dxATLv5PkLvraRzC", "namespace": "hdjDGdlk2A2jHbAP", "namespaceDisplayName": "NGInvbnf4ewKFFLo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'PublicInviteUserV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
