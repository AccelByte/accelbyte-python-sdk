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
iam-admin-get-devices-by-user-v4 --login_with_auth "Bearer foo"
iam-admin-get-banned-devices-v4 --login_with_auth "Bearer foo"
iam-admin-get-user-device-bans-v4 'm08luh4dpPRMDbUX' --login_with_auth "Bearer foo"
iam-admin-ban-device-v4 '{"comment": "BWTbpAogG2wlZkLh", "deviceId": "uU5FI8NijFI0GKwJ", "deviceType": "3vfXlsAMy2Zp2UAG", "enabled": true, "endDate": "aLvqvQ2NbmDITuym", "ext": {"TBjn3d2sFzMS3QaV": {}, "jZF7Ax6115Kg9U8v": {}, "rQJXQxoIbVi2CLEk": {}}, "reason": "277Ivjj1A647XQ3k"}' --login_with_auth "Bearer foo"
iam-admin-get-device-ban-v4 'oaAfZIim0sFPm1YN' --login_with_auth "Bearer foo"
iam-admin-update-device-ban-v4 '{"enabled": false}' 'E7TGkeHsYsW9oGBN' --login_with_auth "Bearer foo"
iam-admin-generate-report-v4 '1pYMBwbPZTlMlUvF' --login_with_auth "Bearer foo"
iam-admin-get-device-types-v4 --login_with_auth "Bearer foo"
iam-admin-get-device-bans-v4 'EiGprcNSQ9kEeXBZ' --login_with_auth "Bearer foo"
iam-admin-decrypt-device-v4 '6FVrBzyhyhoS6a9o' --login_with_auth "Bearer foo"
iam-admin-unban-device-v4 'e0JaXFpff28uYbe4' --login_with_auth "Bearer foo"
iam-admin-get-users-by-device-v4 'Cf2HEHvVevhISjbt' --login_with_auth "Bearer foo"
iam-admin-create-test-users-v4 '{"count": 57}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["MAAmIHYbsxG5N066", "FXb88SbLOa21DiSF", "sm0XXQJWszvTQEuA"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "LzDNp1SZ58aDllwz", "country": "TRHak1MXxj7Esrg7", "dateOfBirth": "900nml5BidsK9dCE", "displayName": "zhVnOv0PQbVIaKiH", "languageTag": "foeorY7A1otGFyv2", "userName": "SMjbEr50qGdCZIc6"}' 'EFqBKxbS7Q2OgRuc' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "L1jwRXzfjDZZBmOa", "emailAddress": "u6syme06c6SKLc2m"}' 'EC3IXl5XCbkOfHaG' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 'r5kdazlypvt6lSLf' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 'U7HByGXPMqxj4hBg' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["VY3YAxZLKbcOdyjq", "f6Q4oiwoJcaRMEb1", "5LBlTVufc5ZyODR2"], "roleId": "NVyn4PRqf3eRbZqB"}' 'AoKGcVCdMiSNV4qB' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["rt1kcLmRv6EJtl5x", "Wnsb8oWq94RImNWV", "IJnhhwFDV1Vitaom"], "roleId": "vWTzdsW4N70wYS4K"}' 'j7Yi2VvoQNW8Yc48' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["1dYdvGxJAMDRA1LF", "7jdWlekFwO94VBCV", "9qJhWva2FPBujX0g"], "roleId": "eYCpGJM4sqsPNJMi"}' 'ZXXOFwmGWAvNF0Z0' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "D4hEk0OLjYsnignE"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 '7KcMF7fuDbzRRYMN' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 'XWUsp1tOibJY9aL9' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "gegCUjTdi1Ehr8Ot"}' 'qpNJ9R8TuNy4ejmV' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 53, "resource": "t73VnSFbuxd4KYZ0", "schedAction": 19, "schedCron": "z0hFFNbH6j2W4roZ", "schedRange": ["M2UKAXEEsL5D0oiF", "chQnVeq3g2AB2WIR", "UQmauIY5HXCZ0W4X"]}, {"action": 26, "resource": "oUW1P7ocuBAldDSU", "schedAction": 92, "schedCron": "m8xY33OQbumu2QHL", "schedRange": ["yZNuysyM4OfCzdQC", "XMAWnf87YPNOe9Ee", "vf1fhMg1E2k7QLFr"]}, {"action": 97, "resource": "M84DiZk6ySrB9SVF", "schedAction": 5, "schedCron": "zXyFFVpM87yqEwEa", "schedRange": ["cQMTlqN4LKkxJ5v3", "SBafnKNiMPbFkFGA", "85W3HJkqgS2B37ww"]}]}' 'oPYOHiIsxmsLBPBJ' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 42, "resource": "yevWYtZjK6J29v8M", "schedAction": 31, "schedCron": "cduZSe7W20UZcDai", "schedRange": ["q0nEZ7PyhqFJkDCl", "OsKmfsgJdmzsDPsW", "h1k0cQ08NG6dX2TZ"]}, {"action": 22, "resource": "Kzn8dZwnnGeZsZVg", "schedAction": 3, "schedCron": "1gqPeS193TNNzot3", "schedRange": ["sVli3GN2XTrFibRA", "hzzEWzWlTY70qdgJ", "RvpZrSpWX3KEe2Bj"]}, {"action": 98, "resource": "f1ZbzgUwd8DHoCQy", "schedAction": 21, "schedCron": "zIhpgOoIOD74V21H", "schedRange": ["WDAfvXwdxbyp4HAP", "bBbNPStVBUpKgOss", "Fkz0F36piDYXeHZ7"]}]}' 'FHls3nyvconqbHQq' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["KLQKe3xmj6s0GqsW", "ncp5LrqbiKudv9z7", "5SzoCV8ZMi2o1nR4"]' '82D6gNClk9c87hos' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'aPFC5zBW3ZgVZCj9' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["ObVGT0Scwl4kNmCi", "15XTJTgCNNH7RtG5", "Xmo9Q0Wb07N17fkx"], "namespace": "ZSc6VbE0AGcekjMN", "userId": "HuPXtz8tXxrmzafM"}' 'UguyDoN91uc28HoS' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "pGt1g0GGbT4Hf2PP", "userId": "KOldkbgX9CWJKwXX"}' 'Sbv5eg9q86IaDFjj' --login_with_auth "Bearer foo"
iam-admin-invite-user-new-v4 '{"assignedNamespaces": ["x6uZerWbtwTX9gNR", "ByjbE8lOLAfTXKLz", "brddqcKLa7LevxNH"], "emailAddresses": ["OSEhQRZIp693lRwt", "c43atCuCFxbfbz4a", "QERziPL4dHhOqG5K"], "isAdmin": true, "namespace": "qdFpc71sSck3ggZW", "roleId": "JlSlCQMDji329PfV"}' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "rvMEPtpsSNcpK1Qk", "country": "B2Sy8Ww79LVeVskq", "dateOfBirth": "eUB7RSayqGFguhh3", "displayName": "bvadRthdbVApebRA", "languageTag": "09rW8i8krFWJhe03", "userName": "coRFok5d3AyGrZO8"}' --login_with_auth "Bearer foo"
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
iam-admin-enable-my-email-v4 'GuoXNSoVEBG7VbBP' --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 'UWipz9C05YabFX4F' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "tBtXJKG3rqBmILht", "policyId": "Wm8RQvRUbUDSiefG", "policyVersionId": "EdLucrtO2gCQD057"}, {"isAccepted": true, "localizedPolicyVersionId": "SSGGt3MiBKohow3k", "policyId": "KoaP1K4CDuH1mMIf", "policyVersionId": "OCDyVAHrHncR5dSh"}, {"isAccepted": true, "localizedPolicyVersionId": "Q1oHFJ9Q0vqsL9So", "policyId": "mqWsGA76yxi0QzZW", "policyVersionId": "fmP2sx0KO5bEJaPn"}], "authType": "EMAILPASSWD", "country": "Acm960EYQEuGJVl8", "dateOfBirth": "xs1WId9WlalqshF9", "displayName": "Rh2o7GCQGPCxwEdk", "emailAddress": "yuT3MgzReRq0112I", "password": "SArROIodcmM6v2AE", "passwordMD5Sum": "ozWWaYvBLE46bpuJ", "username": "ip8JyxJ39vrtuWWr", "verified": true}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "TZbSqBSKp8AmgwhY", "policyId": "zk33J34fiTxK63OH", "policyVersionId": "pnUCGBVfpctNFUsU"}, {"isAccepted": true, "localizedPolicyVersionId": "6ZXQcb2o1J5euLAb", "policyId": "Bgejqc0apxqZ209B", "policyVersionId": "ySn8aUaGlAyvIslt"}, {"isAccepted": false, "localizedPolicyVersionId": "N1qcxKs4nlf1MfqU", "policyId": "ZXkjHvcUOTlxNf09", "policyVersionId": "pefgFIiJssShBKsQ"}], "authType": "EMAILPASSWD", "code": "qi836ULa7cfZl4Vu", "country": "Y6rsZyo6CBRRnoOi", "dateOfBirth": "kIxXKKIR6kPmswm5", "displayName": "TCAU1cKApdJDnE73", "emailAddress": "GLmSZns5owBhoUg4", "password": "LsGP6KLPXkvUv2Xi", "passwordMD5Sum": "XaBzsmaxjTZPlLit", "reachMinimumAge": true, "username": "MkyB7FTexsOZ0b2p"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "b63KrcwIcXMhGy83", "policyId": "Xit6boOLGCcg16Dq", "policyVersionId": "wdQPQ9HkSSV8e1Mg"}, {"isAccepted": false, "localizedPolicyVersionId": "S2FgarY903INGIyE", "policyId": "fRBEj7qms9AGQExP", "policyVersionId": "hgr9gGfC0GjvpgJf"}, {"isAccepted": true, "localizedPolicyVersionId": "5VDlvSc0Mr7ImwCw", "policyId": "GqOf0bNs97KvKyj3", "policyVersionId": "MqS7Dcmtfh50eObb"}], "authType": "EMAILPASSWD", "country": "ezWTqgYPixtHk6lW", "dateOfBirth": "q6tEeUmU96FLEak0", "displayName": "mJqjRYldcTpdeCD9", "password": "XPRi4bAQL7VE2wL8", "reachMinimumAge": true, "username": "4JFVUdzA8bvXlDhG"}' '7BrorbKIKuOXJPm5' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "ztrr09CDA8Ij5bGK", "country": "SuopWQbaCvdPSq8Z", "dateOfBirth": "27GpvHCDx55JZ5z6", "displayName": "gujpFzlPspQD9IRI", "languageTag": "pDDubntPCFxfeoW2", "userName": "NdSWzOXjO1NQUqWH"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "BW78XREZCiTNAxq2", "emailAddress": "6gZrPqCsSDspvgM1"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "6sZ6rjnkH4ExObpp", "country": "C6CMYDm5ge659UDE", "dateOfBirth": "OF6gp5UfmjtiVbqJ", "displayName": "nZcrqrPye7fCwi7I", "emailAddress": "l2wIFlHm9N6owMHM", "password": "tJy1Oqn59tEGm9NY", "reachMinimumAge": false, "username": "Vc12r0DVUGgGHkap", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"emailAddress": "mFI9TnvzEqBNMF9C", "password": "ZvPxT5zbreMc9fBo", "username": "U3RHNDFjLKFrepy5"}' --login_with_auth "Bearer foo"
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
iam-public-enable-my-email-v4 '6eW1kmb15QeIQF51' --login_with_auth "Bearer foo"
iam-public-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-public-make-factor-my-default-v4 'c4MqJzDSvELgBe6d' --login_with_auth "Bearer foo"
iam-public-invite-user-v4 '{"emailAddress": "boSdhkBzAzPkt1ef", "namespace": "GJeJaxyHYutgXucx", "namespaceDisplayName": "85vHA009FAb21jxe"}' --login_with_auth "Bearer foo"
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
echo "1..352"

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
    '[{"field": "WXk80y9uxgVLGgK8", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["LvcnGMJbJIYLssMv", "y9gkfTMRrXVRcAVR", "DX6gmDfNfPGYYSTu"], "preferRegex": false, "regex": "POKFLxIwKssw647Y"}, "blockedWord": ["wDudnGRufOUGfMjT", "U226l07jPlcYaqYM", "7YfBmhjI9Y28qVce"], "description": [{"language": "S9UX48dKPCFUIeyY", "message": ["EymNXzNX6TGh4UdE", "weeBsJEvBbAvCmlh", "6Z1oz9BaixUUvmzb"]}, {"language": "ajE2gjooiDnc1NUb", "message": ["51lEgUwQ9tkWaMOH", "47CAT7cBP0918JaE", "BQBP766LUnBBR84i"]}, {"language": "AO7sBQt6YJ2tWwF7", "message": ["RnP1oK3c4RVfjB0z", "i3XrYZUiN24ol1qq", "balgizL97ycJV5Yq"]}], "isCustomRegex": true, "letterCase": "BSHgpFNw9K9pmAIc", "maxLength": 48, "maxRepeatingAlphaNum": 97, "maxRepeatingSpecialCharacter": 26, "minCharType": 92, "minLength": 55, "regex": "fE9nbE2PMv12ZSRJ", "specialCharacterLocation": "kujxbCu1HFaj6Vxs", "specialCharacters": ["3GuA4S1dS7H7yIS7", "b5TSDRIoMg7Dc5AP", "zfzXDELJFaIaEMW5"]}}, {"field": "bhJyL72WDyhBsCCb", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["LsXHlm1RJTTy9JrN", "z1K5M1qgFddYvifG", "HawNx6yhniEHLbEQ"], "preferRegex": true, "regex": "c0aUvrKXDIjYC4df"}, "blockedWord": ["9qswSlpCI8DhjlxU", "yrs3OSesE5p0DwUj", "2HKUvPYUcQBxMSdO"], "description": [{"language": "Osn2Nd8Jpa19GJDK", "message": ["46Eehx7xasqMY9au", "lsL6NOV5agpS6A5m", "kufBpWVxIK9D2bTc"]}, {"language": "gaKoccaSwWcZmzCW", "message": ["GI1cIQcPWAShIhie", "SKUf3zKbyQk2vQTY", "X1xsth28NZZgsXyc"]}, {"language": "uQNGIDeHlf6IcX1K", "message": ["9JrK6Or2xx7rLwrP", "oWiywnxuDLLuIaSx", "oloIH1gBCWVFrvls"]}], "isCustomRegex": false, "letterCase": "wosKhDlLfTKxpVOX", "maxLength": 44, "maxRepeatingAlphaNum": 18, "maxRepeatingSpecialCharacter": 66, "minCharType": 91, "minLength": 7, "regex": "rdkqddI3ezqu6FB0", "specialCharacterLocation": "sL2xt6fX9j7rhZCA", "specialCharacters": ["lDlVKBsLZiBRXszE", "7CL1cQCSoqHvH7g6", "3cOx6yrIw37pKOLr"]}}, {"field": "F5i3gr3Cc4M2O7Nr", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["dZDGwqx7T3l1ut2o", "yolliYsTJUmpscwL", "cUml3KuoMKh7tprn"], "preferRegex": false, "regex": "UNIbJMJ9ABbKVWO2"}, "blockedWord": ["YEDiqkwKbpdk7wlD", "ngNiPPjpSAlZwFGp", "ea5ObBB49Km4ClIQ"], "description": [{"language": "mkIdLCvNhZ6P8aqZ", "message": ["2yfrC1V7ZpJZPHCM", "qvcYmeDLYEzs2SQU", "dKr6vgqkjycqclNl"]}, {"language": "BORlC8ZkjsxYtgxp", "message": ["lHTPLzynjFZgF3er", "w7UsyHq4bBb0n1Jh", "PUS8BRPGV9n769zL"]}, {"language": "JdKMexeJc7NvgTSg", "message": ["KjCxZjKf8NA4cGUa", "Dfy9XnH2r0EKrk5V", "lnKsWCPccAFn5CEP"]}], "isCustomRegex": false, "letterCase": "p1egsx3ErheNwqd5", "maxLength": 31, "maxRepeatingAlphaNum": 36, "maxRepeatingSpecialCharacter": 53, "minCharType": 16, "minLength": 4, "regex": "rDwZ1HKsOpyq8agQ", "specialCharacterLocation": "uz86nc6jLF9DIW2n", "specialCharacters": ["cJJKpqmgvUTr8XAt", "pOqUQxzqJZiWi3KQ", "ffT5Tn61A1xW6okI"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    'qmd87ir9op4YfGTn' \
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
    '{"ageRestriction": 30, "enable": true}' \
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
    '{"ageRestriction": 29}' \
    '0rY0xfWddACyHSmo' \
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
    '{"ban": "4KX9TPO3K1k5ZM8b", "comment": "tmGsgXNXbpqxh76A", "endDate": "f5JSwjw2fE2g6jXV", "reason": "7oai2oDm9FaP0HJ9", "skipNotif": true, "userIds": ["pgEtchTe3nt7t9zt", "prSfW9OutADrNGBW", "SJ1zQKxVmRTawjiZ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "PMoZZcyGEHxAKDQh", "userId": "er3usApPdJPn9eId"}, {"banId": "hIBvTTupABJ4RwH3", "userId": "EdKmYtbqQHNfIZwr"}, {"banId": "Mxf3EnzZVnkLT0Lb", "userId": "85nmpdN26BY5YI0j"}]}' \
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
    '{"audiences": ["eO2zMDSy4kyqyKgr", "tEPdXXlt8geCdiXu", "3iNvn7vLZ7h6alhJ"], "baseUri": "NGZF07lsPP5OfHbX", "clientId": "zWnVO2U4uyzZo1rj", "clientName": "0ZrLQjk4VoYfIkst", "clientPermissions": [{"action": 15, "resource": "SqTfmAVg50kOdJag", "schedAction": 63, "schedCron": "qhx6zv7EURTNIoG1", "schedRange": ["DBdoKH6sREmmfwUZ", "LZZS7snx0Q2Gd8m7", "Y3wiNloJfey3HXL6"]}, {"action": 92, "resource": "DjfF7JkjCVpZKMxk", "schedAction": 64, "schedCron": "ienCODZ0mnOpPTVx", "schedRange": ["EgBFzG8tlkxWKCU1", "XN4gl7yHvEqpJSrD", "XVwCkhOQ161TFjRO"]}, {"action": 74, "resource": "cborUHeCpqnZ5NW6", "schedAction": 72, "schedCron": "3WWn2ZJY3QvRa7CD", "schedRange": ["RTcsAHzD3dZyyWbU", "Qpbcv3IwmL7a1K3z", "IUYJmdF1YtWNSQlc"]}], "clientPlatform": "MzxfppNCrscDPbkl", "deletable": true, "description": "cmgXsrVj3Mjml6Bp", "namespace": "CODWGOLMmCZUeelX", "oauthAccessTokenExpiration": 90, "oauthAccessTokenExpirationTimeUnit": "yNrXweiCnDldRPRf", "oauthClientType": "d6mLZ0GTJwEjoZrR", "oauthRefreshTokenExpiration": 40, "oauthRefreshTokenExpirationTimeUnit": "oqnpKwhpZVdw5UMa", "parentNamespace": "8ymxtEFLwELCY2vI", "redirectUri": "ddlxnA1VynioJcAP", "scopes": ["wVHUGcs1ACMvoY4j", "WH9dFmOHW0j9suuk", "PE4JwQONQ2vCbMn0"], "secret": "Oia336uiiMTAduct", "twoFactorEnabled": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    'sO6EyVqstpgZpbz7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    '7y88rUFum2ZcA8iK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["cF0bkfjcTEFXcTwE", "tnHxP5pVtN4jNVId", "ruEA39uCJzsE8WOb"], "baseUri": "t6t0w8LOBxE15JYj", "clientName": "4IqWK09l4wkrzahX", "clientPermissions": [{"action": 89, "resource": "yrIvQj2isN7bRwcr", "schedAction": 98, "schedCron": "6lW5YwgZpjlMMtPW", "schedRange": ["g8217m7qNkQiKp2o", "ac8QTNEuBbeuQqm9", "wM7mgTtUdPVcQijM"]}, {"action": 55, "resource": "KW9A6AmnQTNFidIm", "schedAction": 99, "schedCron": "SeS9SnGqhJOvykBc", "schedRange": ["DpzD9zh6dtPK4fVH", "LMvrCsH3RYxH2Up9", "VthPjFrK7Hip0eON"]}, {"action": 66, "resource": "dtWjfVciuLnLsBKG", "schedAction": 38, "schedCron": "pcwJd4SrigIxAhbF", "schedRange": ["MZfxaznlDQbzTiFr", "QB1yUonirH4URx3N", "kKQBYrlUaMiFEWUT"]}], "clientPlatform": "8cAFO5zEw8GENEJY", "deletable": true, "description": "2lTviKbOgVuN3nhk", "namespace": "n6QIesNoYqvVsaky", "oauthAccessTokenExpiration": 24, "oauthAccessTokenExpirationTimeUnit": "nIAJfKVjOn6rtILN", "oauthRefreshTokenExpiration": 72, "oauthRefreshTokenExpirationTimeUnit": "s8pDqm31AZSRkuw6", "redirectUri": "q8FgqG46RsFK7eYl", "scopes": ["SU3vYcHZZjFegVnZ", "On0tk4IATSIefcqN", "En4IZ0Dv6b8WtaMV"], "twoFactorEnabled": true}' \
    'HnbX9tC9PQlFAGbM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 39, "resource": "3kTyL4CsLwiWUMcp"}, {"action": 47, "resource": "k0AzdgIunRkTxsGd"}, {"action": 35, "resource": "1IAJQpb6r8ZeaSHw"}]}' \
    'QuiH3Ozu4G6bXxp0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 13, "resource": "zuVk6iPdJ2boQqCC"}, {"action": 49, "resource": "g4FcDwBGyBiHewZk"}, {"action": 46, "resource": "m74HlSZzp4aEW4Gk"}]}' \
    'HG5OIVuGv47XJpkM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '18' \
    'rsDZNYUV48Oh6I45' \
    'X7HvUtPYONZdFk75' \
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
    'lkjQNHrjaboGomgu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "UqeuZh5qtrRbNnGe", "AWSCognitoRegion": "jdTGvZgN5hshSe5Y", "AWSCognitoUserPool": "mZXKEQLkM6o3eGSP", "AllowedClients": ["4Htmr90TqGf0OyqJ", "9ibJMmRgoxNwp1lG", "kYoq8HP1TM0tefVQ"], "AppId": "PWX1NPO5Wn7rNG8r", "AuthorizationEndpoint": "Gp7Fadvo5EzpX0It", "ClientId": "tsRezyY9GB5sf94A", "Environment": "LBmvdncQkcZb8cWd", "FederationMetadataURL": "VH9bww15zZsaYrJA", "GenericOauthFlow": false, "IsActive": true, "Issuer": "d5QB96ndlO6iPGC9", "JWKSEndpoint": "RhzMC7V8BEphnRXn", "KeyID": "SpCzyb8FkoxQbrPn", "NetflixCertificates": {"encryptedPrivateKey": "gi87K58pQswqKLut", "encryptedPrivateKeyName": "INusOsa92F6iwkJI", "publicCertificate": "YOLarmpWyvib9CDW", "publicCertificateName": "21ANrlpuXD9H1u1C", "rootCertificate": "vzWPcZwkj1l6bf2F", "rootCertificateName": "9EXOBj7v8LHYivmD"}, "OrganizationId": "0ekycMKlwJTNL2UC", "PlatformName": "WUtaAD7ZZx1iefAT", "RedirectUri": "WcDSqGYRMdz07xEJ", "RegisteredDomains": [{"affectedClientIDs": ["40epssgJJC3CX0hp", "B1ZGMMo5DSozCuFs", "rBMtoOeLfMCYxSee"], "domain": "JOlxa395rghZwGhd", "namespaces": ["ZJkkGhYvXYMIyaEM", "EqOpwetb82b96rsH", "73hRfDgl29GWKpIt"], "roleId": "Mt4GszRufkDFLYyN"}, {"affectedClientIDs": ["BPlMrkse9SGcMuV5", "phhU315LUC6HSMQ3", "2UznXNd6ve29lqqt"], "domain": "cLJW9eTJvKNDFrx6", "namespaces": ["LabyDnqXjXKPIcxh", "0x7T6RQGnnW4ugGX", "6mKBbgTD9xL07Zzz"], "roleId": "Is3Jke34ZAUuLP89"}, {"affectedClientIDs": ["7ooMLnemwKAvgDXN", "rFEE4Jf4hQpsLOcL", "tZw0efmEVcW7mxbS"], "domain": "5UOoICxQMit8555N", "namespaces": ["iy4NNFpRE5pS85yT", "IRWvLRy58UKWPv3F", "7S0wCVlYQi9cfMCe"], "roleId": "Nnu6OIG1PPLRDEXL"}], "Secret": "XZWXvqNCHvNpeMjM", "TeamID": "zguq6HFIqaqwH9J6", "TokenAuthenticationType": "JLb5f3SBMyJUdwEB", "TokenClaimsMapping": {"RrHAWUFqTooGGnPE": "gY0t7QQWl42byOwX", "gKyPhXmcysae8HpW": "H4xiz3fWthJSu2pU", "IIuPLFAtcWhjAP57": "QbWvSSp71zEPPfmA"}, "TokenEndpoint": "QiqRRC2caquMRtQO", "UserInfoEndpoint": "ILcaDqUITBHQR5IS", "UserInfoHTTPMethod": "NoFR3GUxdMuvmL0U", "scopes": ["BfwzaaeP3Wd0Wrb8", "s3GW0CY0vAfbq8xo", "Curq4lpHXrbVBh60"]}' \
    'NUA2aKQwnXrmi6ya' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    '8u4sQPvaf1AcweR7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "tJW3MLMob1hUnIzI", "AWSCognitoRegion": "pUM8KK1kGFN0NUNG", "AWSCognitoUserPool": "KxdlAUDFQuGPzAuT", "AllowedClients": ["7M6OBrNwioKnXPVZ", "aDcXsV1TnsZioDiB", "gprzahPB0FKMa0Ye"], "AppId": "yNBQWUHDBnBeePkq", "AuthorizationEndpoint": "g6Zt1Lr5BlO8K6LH", "ClientId": "4dSaa8XYHug51ZTo", "Environment": "gG0N7Hvnuq1kJ1kp", "FederationMetadataURL": "HcQtnIc9z70LFQMI", "GenericOauthFlow": false, "IsActive": true, "Issuer": "Ph0Z7YiGE2cyzTMB", "JWKSEndpoint": "Y7Xd0OoENg2Lw7ue", "KeyID": "pmahXojVZYz2zMU9", "NetflixCertificates": {"encryptedPrivateKey": "jLzNV3GaG43R6nlR", "encryptedPrivateKeyName": "PrEAYqRBeSc5uSho", "publicCertificate": "j3dGHMeoi5DBOsQ0", "publicCertificateName": "Gax0iX05IT9Agsjl", "rootCertificate": "5NmnSHhxNmCe4txY", "rootCertificateName": "0MsPc9EMgf9JCJiE"}, "OrganizationId": "vhL8ZfwCVJW9yspU", "PlatformName": "OyHC9eKeXzrvzBll", "RedirectUri": "wzyC1aTWEmPgoy4T", "RegisteredDomains": [{"affectedClientIDs": ["kpEw4Zeid4mRoFNx", "v10ckMQVjKk3bWJ0", "ZuYSe3sI0x2hc8va"], "domain": "N1Off5gRZZMW3huA", "namespaces": ["IzBPWBYKAEFTdlKN", "h6GTzKjsCqxx24QM", "35bSkFrvGciNHb7O"], "roleId": "Y5YIpOLJW52uz3c8"}, {"affectedClientIDs": ["pz63M0g4xXT5Ts4e", "0uR47OzUGHeBKtpv", "yRNgjZkdDppvEJiU"], "domain": "iDGXgh8BKcLqtRZ9", "namespaces": ["3LuR8OEyICvwgwBF", "ehwtdJLdn3R2wo8b", "eVQvgeP9qOHaLwYn"], "roleId": "Xxrz7sLmP70LxN0f"}, {"affectedClientIDs": ["3JA27Qz5SjzQfOLY", "u9O46OOzz9p57qSp", "HerzO87cg7TqtMiQ"], "domain": "gi7Aj28qCRbwwZc4", "namespaces": ["ZS1NMkrnHs1Iyhwq", "k140MolIrnlkRVbc", "X435TDYpkk2Gza6D"], "roleId": "rSycophHw3EoEECl"}], "Secret": "TO9SDKnMlnKW9jiN", "TeamID": "Mu9QVrMeD4bD8gIS", "TokenAuthenticationType": "E34yIAZQeigiA3wB", "TokenClaimsMapping": {"rmBYIlZeheP72AB8": "EO3YrlyrWowUpUDV", "LlTtuJJsHZVsG6iz": "JZruOJvSRFLDSdj8", "elbtHvDU91DmHzwi": "qVPCJ5j18Ou3aY8n"}, "TokenEndpoint": "ceFU5GKmcEKp8AQw", "UserInfoEndpoint": "qgJs6O0Qj0ccMkdz", "UserInfoHTTPMethod": "6zPz3BVHAqp4O9XS", "scopes": ["jap24esyjh6Wc3mi", "gf2n6iQyr5cb5YL6", "fwBiaVPmmn0T5uzl"]}' \
    'mi2NY26xrkPPdg3p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["XjmtpNfCrIj9ntYo", "3dupUHNu8abrVVOK", "xr9Pa315FKDjG2Ap"], "assignedNamespaces": ["SV94Jy6yCSXBqJqj", "AbVwSaoj1ugjr8mP", "kr3tZ506ERSVy5M3"], "domain": "rrkxu0U9h9gCNVZx", "roleId": "HGxhZqNXJ6JXSh0Z"}' \
    '3SWISs1dYrJKmx1B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "T6iLFQejNZJNF2hm"}' \
    '0TqBQprHn3whPKU5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    'abnqw8fFa30pVbhr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "1BHh1arZAyuLcZoE", "apiKey": "kPpqKhP2jWnRTglw", "appId": "0gdWoE4esuiDrquc", "federationMetadataUrl": "cz4J6fFQezJ5E3iY", "isActive": false, "redirectUri": "u7hZvHfiT9s9pK8H", "secret": "uUY1QQHQ0NCEddJt", "ssoUrl": "x6GV01vD7lNLxlpv"}' \
    'qaB9P9GaukfCEIeS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'BLhTfzigzHcRuJgY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "aj4I8Dzyh1N0JEKN", "apiKey": "oMtHvjM7X1fjzknv", "appId": "2HZMIL2P2bh14Lro", "federationMetadataUrl": "FTnAuujPeP9N0vdV", "isActive": true, "redirectUri": "w17arNs12hOoLVM7", "secret": "UFnuJDzeEkDxaVog", "ssoUrl": "xHrOon2OW4Zw5QwV"}' \
    'KWNy2tnF2MifJR4h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'r4gdJDujYnVnFK6g' \
    'B6ZxC6yYUVUJYnQ3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'jOGmROIqxqQ0gcNe' \
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
    '{"bulkUserId": ["TflyvUh3w5ZtfwmO", "CKpFSMF0tfGIZCTN", "iIRc9fEjkZhEpAJM"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'AdminGetBulkUserBanV3' test.out

#- 145 AdminListUserIDByUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-user-i-ds-v3' \
    '{"userIds": ["CxMp2J0hDg2kMgkv", "hoQe9gD9tGN0nE7M", "36mI9u3EeZtLQij2"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'AdminListUserIDByUserIDsV3' test.out

#- 146 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["JXsqdXfhZTTaCeqG", "v7meuQhJuq1C6JHk", "WMSUbqByWN2BCnRz"], "isAdmin": true, "namespace": "ZbBTnNQnVUhA5Wnz", "roles": ["VZdj8tsyzC4QaLXp", "3o4TDraEEaDNJbVd", "20FVHevCjthJUb7j"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'AdminInviteUserV3' test.out

#- 147 AdminQueryThirdPlatformLinkHistoryV3
$PYTHON -m $MODULE 'iam-admin-query-third-platform-link-history-v3' \
    'KuMrFaoLulzp3sZx' \
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
    '{"listEmailAddressRequest": ["ImVK5yh2LcM8LaMW", "0ByjsRUrAHNRkIcC", "4wNFzsbrtYvLh56A"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AdminGetBulkUserByEmailAddressV3' test.out

#- 151 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'WXoMiowdWSs9DQ0V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'AdminGetUserByUserIdV3' test.out

#- 152 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "U1HED9CGo9aUXj3r", "country": "h0UyqxVWlIMY5tTJ", "dateOfBirth": "w4KV104MtMhKHmSj", "displayName": "qPuQZX5KjdNrEwfW", "languageTag": "o2MwulLg4bsO4YHE", "userName": "YLjTSNDf3zazm6p5"}' \
    'Y1tkG9WwU4Ty6Ch5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'AdminUpdateUserV3' test.out

#- 153 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'QYyFjuBquE7xssm4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AdminGetUserBanV3' test.out

#- 154 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "hxczskbSUbOZ9WNl", "comment": "3apJmNAbl1g5ZmTT", "endDate": "GYRbP4QVey9pEz1T", "reason": "V5cUtPBsw01i5Mf7", "skipNotif": true}' \
    'vbNSeeDNfUESLlwH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'AdminBanUserV3' test.out

#- 155 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": true, "skipNotif": true}' \
    '3JgteOLyKp8a1Vqx' \
    'XnRhDd9TGkO6aIYq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminUpdateUserBanV3' test.out

#- 156 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "ftw1SrM2nhSEanfU", "emailAddress": "YrMU6A43UKGpvC1c", "languageTag": "r5T1PSXhduTWchzX"}' \
    'Dv3TAtBjP4HSuiYC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'AdminSendVerificationCodeV3' test.out

#- 157 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "bG0UyYUJmNL8p6Ab", "ContactType": "dtU0CDrlQpKB8qoe", "LanguageTag": "l2QK3aSOYdmMDikc", "validateOnly": false}' \
    '49chqeiUGQMwNwDl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'AdminVerifyAccountV3' test.out

#- 158 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'YSli3p8YaAdel3hH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'GetUserVerificationCode' test.out

#- 159 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'MSLAiscGRWzkCl1Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminGetUserDeletionStatusV3' test.out

#- 160 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"deletionDate": 74, "enabled": true}' \
    'egrZddP8lLQo6tHj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserDeletionStatusV3' test.out

#- 161 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "4z4cAM4LMJfWNZIx", "country": "AgBpeubprKX68jTy", "dateOfBirth": "Rd3LrR1x6U1v6zSL", "displayName": "jm9zmzUW0vPj90jm", "emailAddress": "LTt5YQGawcomPoiY", "password": "oQ1f1AYq306Pysv4", "validateOnly": false}' \
    '0Zrpn0vAD9YsPeDW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminUpgradeHeadlessAccountV3' test.out

#- 162 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'rAVQZSvgWuCuLsUG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminDeleteUserInformationV3' test.out

#- 163 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'rVQAbhS54ZuQHKer' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AdminGetUserLoginHistoriesV3' test.out

#- 164 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "sDmJLUHAKtfXCKOn", "newPassword": "a8DdjtZhh6ofsUoR", "oldPassword": "h6r0e0J6vyqPw7Yl"}' \
    'mV3kES0Hi88UYgSV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminResetPasswordV3' test.out

#- 165 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 21, "Resource": "0OvY7apPCrN5bEhm", "SchedAction": 42, "SchedCron": "cxuXXpt0YSPX04uE", "SchedRange": ["IdAwgDobopbdJeVC", "iKs2vLyH9kcSBdk7", "MwQzn28Le5neohqh"]}, {"Action": 58, "Resource": "SuBQdvdhJoT0WK5n", "SchedAction": 14, "SchedCron": "09VIbbsz24fQKDZX", "SchedRange": ["6plErw0Gb0ceCbph", "W4YMhJ0S50bez9ZL", "HW882riiPfRQ3rJ0"]}, {"Action": 10, "Resource": "SZBvkehRn83B0nrW", "SchedAction": 34, "SchedCron": "7hiP1lzkzjYDw6mL", "SchedRange": ["BordrJkD6vy60uRM", "T1Xw9K9Yb68a8ygY", "x2TqkhlqMnE9Wj90"]}]}' \
    'EQzOidrWnLrXqImg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateUserPermissionV3' test.out

#- 166 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 61, "Resource": "0ni1YfIgLZ4YIzEl", "SchedAction": 36, "SchedCron": "ilX1e1825iasunES", "SchedRange": ["jcgr2drXG5NkKCyS", "LA8cKCs0dFYRSa2O", "ULZ0iOZJiOAh1SpL"]}, {"Action": 14, "Resource": "dr3WzDm3hJdd6uaO", "SchedAction": 52, "SchedCron": "TiTPnIh2iaIBpYC4", "SchedRange": ["txul6VKYlNYYlHPw", "KDpJmkeoAkp3Z4pg", "yJYwclb4gd4QgQut"]}, {"Action": 38, "Resource": "hiPuDdOPHcN9drwq", "SchedAction": 50, "SchedCron": "fs4tLVOYQCWMktmi", "SchedRange": ["Kd9vLPP0w52JRAZx", "MWdoleYNHXeOpaRD", "wYLge851PbK2MFKv"]}]}' \
    'w5TWjAh4gy41LLzQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminAddUserPermissionsV3' test.out

#- 167 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 81, "Resource": "IjY5PeNr4JmYxH2q"}, {"Action": 37, "Resource": "zCYRVmbfzwUmsy0s"}, {"Action": 39, "Resource": "PNI9f2oLWDPSZexf"}]' \
    'KVxqdxmh5QWxuQuI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserPermissionBulkV3' test.out

#- 168 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '5' \
    'gdDTDb3WdnOpzTrR' \
    'zCCafADJfWBspT3M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminDeleteUserPermissionV3' test.out

#- 169 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'LwJZquMQSPp5XD4S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminGetUserPlatformAccountsV3' test.out

#- 170 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    '1ilfgff7Et4uY8nl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminGetListJusticePlatformAccounts' test.out

#- 171 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    'BwGNHgfgwZwVMvsh' \
    'Gmsg6ZJYnkHDnHTl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminGetUserMapping' test.out

#- 172 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    'RugM7a2UZgeesipb' \
    'P027okM5E8tAajVS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminCreateJusticeUser' test.out

#- 173 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "vLRj306RDuaSixXE", "platformUserId": "dloYZBkatNLc42eq"}' \
    '0O6VsXtOlQwj5xPv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminLinkPlatformAccount' test.out

#- 174 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "m7c5nPR0Y1sffUaZ"}' \
    '64dFpiv8o9Gw4QtK' \
    'gyIeySoUxoMrj2J4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminPlatformUnlinkV3' test.out

#- 175 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'JGQZAtyjTxnlmSyj' \
    'EaFH2DRN6HIEqIFE' \
    'cS0ynIMOYWpUYUQM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminPlatformLinkV3' test.out

#- 176 AdminGetThirdPartyPlatformTokenLinkStatusV3
$PYTHON -m $MODULE 'iam-admin-get-third-party-platform-token-link-status-v3' \
    'ooiKT57rmbjEnime' \
    'R7EFBz43E9FkOPVu' \
    '2fDtOjW1iSYQbceb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 177 AdminGetUserSinglePlatformAccount
$PYTHON -m $MODULE 'iam-admin-get-user-single-platform-account' \
    'Bd5wb5H3qppoCiHM' \
    'D4iBK2O7qYtOHV5h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminGetUserSinglePlatformAccount' test.out

#- 178 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["npjc5CNLnnEvo25a", "Etdjls5oadseJg7y", "4Q9CU3fjSRaXD4HD"]' \
    'mdvhMXxiKR29LKIh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminDeleteUserRolesV3' test.out

#- 179 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "NU43K8bihdw3prp0", "roleId": "UHlWUxkBefhxRtrq"}, {"namespace": "bv56oqwnCLVc2qHZ", "roleId": "uuedbBOd19DqZJRY"}, {"namespace": "V1oqNLmPAUIMwa2w", "roleId": "Yq6DsUq38bYvaWLo"}]' \
    'KzHnngdfFnOfY9st' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminSaveUserRoleV3' test.out

#- 180 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    'XH6LYXXMndxBPKmH' \
    'VB7cNzHhvxc4xAPZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AdminAddUserRoleV3' test.out

#- 181 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    '86WNnQOhusPn4466' \
    'u8agb5HPsBU0Eo6Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminDeleteUserRoleV3' test.out

#- 182 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": true, "reason": "vBRJ4UP09fabC01T"}' \
    'hm9f4AWpyiKVT3Ov' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateUserStatusV3' test.out

#- 183 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'Eujx5yjtQSCJaOHz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 184 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "pb623EciYoYOPVg6"}' \
    'DLEZ6DxpwBm2N8Pd' \
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
    '{"adminRole": false, "deletable": false, "isWildcard": true, "managers": [{"displayName": "aGXEbnmWR0H3EkrH", "namespace": "qaLNdfKszYZzOg11", "userId": "3h6fIaHSx5bClxUO"}, {"displayName": "BmMwv5pmiIVnhlLo", "namespace": "Memsp7o3F2LQw7Y2", "userId": "VdSxgXez7VvS0C9J"}, {"displayName": "LVQQPa7PPx4Zi6Wa", "namespace": "C8wk7HMbJhNwZgf5", "userId": "nlMDORYuXnPNJgay"}], "members": [{"displayName": "PFcyUnKXA3mcyMmX", "namespace": "6WF8jtNAVOYqSH53", "userId": "3YlJ93CCGBXv4fP4"}, {"displayName": "VPzhcH4UJrrCKvrO", "namespace": "Ai7lMgkVWJYzSCID", "userId": "xWUxgOzeRNHIqK5P"}, {"displayName": "T404mFw4HJv5T2kI", "namespace": "QOecfLsYKTmUnKlr", "userId": "OsJmEwjGYN8VNPXN"}], "permissions": [{"action": 37, "resource": "ZVSGQyTzhs9Asy4d", "schedAction": 99, "schedCron": "29N4YnolVWA2dWxB", "schedRange": ["s056jkPCUuE1pgdH", "vlQKiR7SDQUDavOl", "KT5EIHNhJQq94Re5"]}, {"action": 70, "resource": "ZrLCRRUysya4J3rv", "schedAction": 93, "schedCron": "n32atB0QPQPEp5Ut", "schedRange": ["wUWGt6tooHP5kAww", "01zalTddhAQ1pwqn", "ybvUIfuulmeegRwP"]}, {"action": 86, "resource": "Sp0B7LODN3Boi2sS", "schedAction": 54, "schedCron": "fzwG3BHaRcZ8NK4g", "schedRange": ["kLmvEOaRcqTgF0xt", "QAXoDoFkmA3fgzcw", "dgJMjIyGfiNBQy41"]}], "roleName": "M1gzGCbaxw33rNbE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminCreateRoleV3' test.out

#- 187 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    '4bbDU4FMTbQaANJO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminGetRoleV3' test.out

#- 188 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'ODGerDCWcl3VSJEN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminDeleteRoleV3' test.out

#- 189 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": true, "isWildcard": false, "roleName": "tbqMFlgHKQIRtLfP"}' \
    'ngD83roOeqE7fcCA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateRoleV3' test.out

#- 190 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    'eExeQX43LpmdMiZe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminGetRoleAdminStatusV3' test.out

#- 191 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'yIrA4QUKSJgECzva' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminUpdateAdminRoleStatusV3' test.out

#- 192 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'WUCA7wKru7ry3AQ2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminRemoveRoleAdminV3' test.out

#- 193 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'sEHvSxjWoM1rNJLM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminGetRoleManagersV3' test.out

#- 194 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "0OOVG5cG6XxENbWq", "namespace": "lX7idzjpKDfwl6Xl", "userId": "CF6YxFMD8tJQwZvU"}, {"displayName": "VInos5RK100yH89i", "namespace": "8ZDPXRL8cbTAntB1", "userId": "STaab1UeibXg7RCe"}, {"displayName": "5BtKcwj6PqqOgCim", "namespace": "r3ZQNBBkrXu9czsY", "userId": "r3cFeVw70xdNTuOd"}]}' \
    'LKK0M2B2hbqJin37' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminAddRoleManagersV3' test.out

#- 195 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "P69t1KqeGz7qbPnX", "namespace": "EuOzzkoBmMR9C4qP", "userId": "qJrAdh1HIk7vCEq7"}, {"displayName": "FQ2S5VeW9ddxzLPV", "namespace": "8wDjsnyPh5yNbYXm", "userId": "lAOi1SC3I1SjkH42"}, {"displayName": "LtyZKrTJo0L5sHil", "namespace": "4Q0mqa8GatrjbJ5Y", "userId": "T7uvqarTvrG1DXZA"}]}' \
    'Wlvz3c3XALMresGF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminRemoveRoleManagersV3' test.out

#- 196 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'fsH4aXCDhshvEF8r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminGetRoleMembersV3' test.out

#- 197 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "Hd250nyihcUVGHQc", "namespace": "zI5ZoTRUkjGoRkPs", "userId": "2SO9XrgXNIaU11cB"}, {"displayName": "XLwTfopqeZtHJnRg", "namespace": "aGfLMFbvyI5PZGzV", "userId": "LcmZKKKYARape2ts"}, {"displayName": "Nczam4Cdd1QYvww4", "namespace": "XDokltgq2vXtUnY6", "userId": "UhDJ4pe0s0Cuhl3d"}]}' \
    'U9b4seYCyiB4tDCW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminAddRoleMembersV3' test.out

#- 198 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "x3cEX8wTi1v2abpC", "namespace": "WytPEi9Ze0hL9rPk", "userId": "V5GkSrcl2O47XVzU"}, {"displayName": "7qlNVk7qnmBS3XKD", "namespace": "hp1OkMcErmeH0lX1", "userId": "hj0LaXgQ94flh775"}, {"displayName": "AQfzNjQ7IuMSY2ep", "namespace": "RDJjDyMDKQhuTjtQ", "userId": "ZyIiAmCL8bNTTfqL"}]}' \
    'Cv9DYBOProN4UWbQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'AdminRemoveRoleMembersV3' test.out

#- 199 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 1, "resource": "IP7dpJ8B8VwFQnVc", "schedAction": 28, "schedCron": "rq9I3XJWBxTLcOef", "schedRange": ["8MgIwkrKFEtwESJC", "e2ksG3nZE13H2fIL", "FzOlAZbDQAEJLbVW"]}, {"action": 69, "resource": "JMowQ6LpHCvCYTgX", "schedAction": 72, "schedCron": "xPsVY8qNwB2TY4v9", "schedRange": ["NNfQSYLFKSl3FNFF", "Jnt3rIwZdW02Su6a", "CnL816aH6gOBUIMe"]}, {"action": 76, "resource": "bD5mGFFmKTTUxG0m", "schedAction": 31, "schedCron": "ILI42BJMPkZmay4C", "schedRange": ["sye3iJLtjsu6ZJRC", "oDq3geuHFFaZzPIj", "ETqcKN1gaQ4Bn0cP"]}]}' \
    'PtKaJlw31pdDrXQ4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'AdminUpdateRolePermissionsV3' test.out

#- 200 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 57, "resource": "WSGyDCKF0LLhO3lG", "schedAction": 30, "schedCron": "7eGOPj2XoFug8BUQ", "schedRange": ["UmPHnPumcazKAna0", "ji757aNDFeKnQP2j", "2WsQImTwYkiuxzLr"]}, {"action": 2, "resource": "WKCFGS97Si6XyLVP", "schedAction": 35, "schedCron": "IZH0iks6kx0adnim", "schedRange": ["PyyzezsHdFftHHR6", "xbcVVonwz27DWfGR", "VhbZTvCPrrZCTU5W"]}, {"action": 96, "resource": "RZ6FujpIWo0qJtqp", "schedAction": 3, "schedCron": "Q6XgICLgMHcP1eE6", "schedRange": ["sjWQllYsONpp6QGW", "56CNiszHE69D1MMo", "af6KlgRtwaM2IoyY"]}]}' \
    '1wpIdjcAtTj1IMuu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'AdminAddRolePermissionsV3' test.out

#- 201 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["hxxlulfmya73hX0a", "8Ri85PA9wNpmrK5Y", "5heA2ewWnFcqHxXP"]' \
    '3kRhtrBcBofWTGYx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'AdminDeleteRolePermissionsV3' test.out

#- 202 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '90' \
    'ihgioL8VvEzHGTt9' \
    'emdCLmzJbdkykVAn' \
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
    'mnRfUilcKA84d9pM' \
    'sl7zrNJvDiP2hNNE' \
    'I8QrQ6H1ro5CtU8U' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 204 'UserAuthenticationV3' test.out

#- 205 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    'jgyCUpM1JBcTzf4d' \
    'z1BojPoQg976409v' \
    'Fd5z9r4nJWUvLp1w' \
    'xGF747468MXUq3uI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'AuthenticationWithPlatformLinkV3' test.out

#- 206 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    'ffkIpPmrWVxNZUvk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 207 RequestOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-request-one-time-linking-code-v3' \
    'iU2jXSwsBBRopVl3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'RequestOneTimeLinkingCodeV3' test.out

#- 208 ValidateOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-validate-one-time-linking-code-v3' \
    '8d4NZGtk6EmWxC75' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'ValidateOneTimeLinkingCodeV3' test.out

#- 209 RequestTokenByOneTimeLinkCodeResponseV3
$PYTHON -m $MODULE 'iam-request-token-by-one-time-link-code-response-v3' \
    'M88TKhFYkA9aRNDe' \
    '2IoPMSQKcg0OTT9J' \
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
    'A0ll1RimBCiQwuyr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'RequestGameTokenCodeResponseV3' test.out

#- 213 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'I87uSyXP6C0jXS8a' \
    'u2wcWYyj3JvHqXp4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 214 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    'JR7xI59Z9tfGVsgl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'RevokeUserV3' test.out

#- 215 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    'nOxOXBfgBLuglkd9' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 215 'AuthorizeV3' test.out

#- 216 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'IoshGnFSuHmrqej8' \
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
    'PRppYY1vlV0M2g6o' \
    'reqyBzWzCgMMWZuD' \
    '6tmIR28xVxbtpSKO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'SendMFAAuthenticationCode' test.out

#- 219 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    'fiIP3S6pypZqISn3' \
    'msrykQFtW8QGKFZL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'Change2faMethod' test.out

#- 220 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    'rIfqrZuu7IwKcT7s' \
    'Asv2TKCbYMVkXEHm' \
    'sHwIGGsusS0zZROD' \
    'true' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'Verify2faCode' test.out

#- 221 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'i6xEljer6aGJx5OF' \
    'p3jKEx4aSGdwTPX4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 222 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'ig3NVFFkP7O3F4vs' \
    'ohRWDyGYIVFDbTvR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'AuthCodeRequestV3' test.out

#- 223 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'YfpJ4wM9WZfOOxAz' \
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
    'msbhi5QJuc2SNBaO' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 225 'TokenRevocationV3' test.out

#- 226 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'client_credentials' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 226 'TokenGrantV3' test.out

#- 227 VerifyTokenV3
$PYTHON -m $MODULE 'iam-verify-token-v3' \
    'BMJ04508jKedx0CV' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 227 'VerifyTokenV3' test.out

#- 228 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'Rpd7SwZw2UkjDzJ4' \
    'NuMMgI13nplXaUQV' \
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
    '5QEvKElLfbB7gwwA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'PublicGetInputValidationByField' test.out

#- 231 PublicGetCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction-v3' \
    'R1xFrnyirw3iJt5i' \
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
    'A3JS2xeaJ08JrSHP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 234 PublicListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["qdhKHn6ZjZMdr1C2", "TIQzRJY7UfYSrdN0", "JVz4U43EcV1FRyee"]}' \
    'qehMNeRYKeMbL0G4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 235 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    'v5D6ylZguO918X7r' \
    'LoexHBMBMMAYokSW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'PublicGetUserByPlatformUserIDV3' test.out

#- 236 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    'FwajRGUyklfLVY6g' \
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
    '{"PasswordMD5Sum": "3PO4hKAeF4GUV5m9", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "qcCJsVOWtu5RPsqd", "policyId": "66ImBEuhnaxZVf6M", "policyVersionId": "D9r1y5Ihr531Kajx"}, {"isAccepted": true, "localizedPolicyVersionId": "HyJttdgfLGO3ummp", "policyId": "llnV6B62P1Kazg73", "policyVersionId": "c6UpmA4ehxNIIlcr"}, {"isAccepted": false, "localizedPolicyVersionId": "zgameT2mLkkAMjHy", "policyId": "I0e2Axj0nZHjmoKH", "policyVersionId": "JngwMe1AnQVj6QQj"}], "authType": "ZtkNJCnDSrsSey2B", "code": "qOxgwCymCDYsuff3", "country": "b7G5FDX4mu0qPHb9", "dateOfBirth": "Ll2EFEb8GnsthmQ2", "displayName": "Y6ZGOiqrg3lpqN5b", "emailAddress": "OfnqJ5bzDRzbhMxf", "password": "EDE4TrtIHyyMq79E", "reachMinimumAge": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'PublicCreateUserV3' test.out

#- 239 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'Txd7Mzjv1gSj8kcN' \
    'hoqcRZRNATojM7da' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'CheckUserAvailability' test.out

#- 240 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["V0VwR3yNKDtMqMrA", "GpdyF6WDHn3ePBxQ", "Nz2IUEHMzl5jhwVD"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'PublicBulkGetUsers' test.out

#- 241 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "suzwJ4v50eoaIBrT", "languageTag": "h0EKkJioUpvGnkcH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'PublicSendRegistrationCode' test.out

#- 242 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "gCfaWzPUvCnfqsPG", "emailAddress": "gJZyRwigaMu07Zek"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'PublicVerifyRegistrationCode' test.out

#- 243 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "8WObpf0FHYfViEj7", "languageTag": "0KYKIfFt4GYjUt4F"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'PublicForgotPasswordV3' test.out

#- 244 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    '1ZVy2qFfSr3psWjO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'GetAdminInvitationV3' test.out

#- 245 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "L6LwGlZGF7XQPLAc", "policyId": "IL7FvAMWqhyyNZH1", "policyVersionId": "CducB5y5iMdeBG7R"}, {"isAccepted": true, "localizedPolicyVersionId": "s7hqIH2NgARSG3QQ", "policyId": "NGNH2K0UuJdeGNqu", "policyVersionId": "QnaXpDQ5rU2taDWh"}, {"isAccepted": false, "localizedPolicyVersionId": "JV5oc5IFQsrwHqFq", "policyId": "wVA5mozeeOjIFQfX", "policyVersionId": "V3YW3ug3nCXhD7FU"}], "authType": "EMAILPASSWD", "country": "p2r4D3NQdjrjkX3A", "dateOfBirth": "MgK3JgZufzssA284", "displayName": "mG7uAojLYBsx8oqM", "password": "zbE0ljQaBtb47V69", "reachMinimumAge": false}' \
    'hTaZBGdX66DqPTdu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'CreateUserFromInvitationV3' test.out

#- 246 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "rR3MYda0Y0BCO4qP", "country": "nvxERWjKasq5zQ6u", "dateOfBirth": "ZNwKjnX7vDIqpcjm", "displayName": "aq5KBCsHlwNrfKJr", "languageTag": "kzwR40tfd9GFXCht", "userName": "xB10d4Q8nlBthUSu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'UpdateUserV3' test.out

#- 247 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "4WNfTvD5UcES1eLM", "country": "Zs9lSQVDp16qVIqX", "dateOfBirth": "CK9dS5JTbdJEe6mn", "displayName": "kYAfw61kyKk0UXUF", "languageTag": "2523OTvOmfVNJNDa", "userName": "SO3FEkk4It6V8Bu7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'PublicPartialUpdateUserV3' test.out

#- 248 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "rIjGrxUMKbv60ixU", "emailAddress": "uUhopdqGrqRZ124P", "languageTag": "7PauXTrpWAjwatSv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'PublicSendVerificationCodeV3' test.out

#- 249 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "tPbAFn8oWQcmFkkR", "contactType": "X6EqadAEIzxld80Y", "languageTag": "nss7hc3VUxxZIgkT", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'PublicUserVerificationV3' test.out

#- 250 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "qMeJPCbs8jWmTteJ", "country": "hwNbwHGG39YAZJ4H", "dateOfBirth": "uLfeTfFBTOFFMJ9p", "displayName": "q511jZcTK8zmMfys", "emailAddress": "hYk3b5cAFVo85r1b", "password": "8Yp2QnuhQuIdvZdj", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'PublicUpgradeHeadlessAccountV3' test.out

#- 251 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "gYlJElgJ8kx1WEeD", "password": "bql13FtQMu41rnOz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'PublicVerifyHeadlessAccountV3' test.out

#- 252 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "bsFBqg6dziWvdNcw", "newPassword": "fUBMdNuTaiLxFMXR", "oldPassword": "pDP9xutntU8xHw4y"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'PublicUpdatePasswordV3' test.out

#- 253 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'YJOCViHwunQwpC2e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'PublicCreateJusticeUser' test.out

#- 254 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'CFUAHZaYSvsWiNJt' \
    'qXltZF6aSRmHU5iR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'PublicPlatformLinkV3' test.out

#- 255 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "3hXIbzWPKOkzftOg"}' \
    'DQAWhulbrDf7q4cA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'PublicPlatformUnlinkV3' test.out

#- 256 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'npmLiEu4CNtX2lnq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'PublicPlatformUnlinkAllV3' test.out

#- 257 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    'i7cHTSdGoLZbC3UJ' \
    'ruU4uIXBZsEYogFW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'PublicForcePlatformLinkV3' test.out

#- 258 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'iH9z4E8zmaZ5cg0R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'PublicWebLinkPlatform' test.out

#- 259 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'EtUWY4fVIdqwCWF5' \
    'wmbOubTxAAeDCowR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'PublicWebLinkPlatformEstablish' test.out

#- 260 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "3MeCNL1oNrF3Smgu", "emailAddress": "dQusJLsPlW7ZyORF", "newPassword": "kN9EbKbTbrDzNgVE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'ResetPasswordV3' test.out

#- 261 PublicGetUserByUserIdV3
eval_tap 0 261 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 262 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    'cw0lxRam16O6v4Vj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'PublicGetUserBanHistoryV3' test.out

#- 263 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'Jf40LjUdORELVXUF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 264 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    'QyVlt9jmxmxpfp41' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'PublicGetUserInformationV3' test.out

#- 265 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'k1uDg59PhdUXShab' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'PublicGetUserLoginHistoriesV3' test.out

#- 266 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'wyYCxTHrDel8oThv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'PublicGetUserPlatformAccountsV3' test.out

#- 267 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    'r8CUEzw4zL1QeR3E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'PublicListJusticePlatformAccountsV3' test.out

#- 268 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "YXBFpUX9y4tY7o5F", "platformUserId": "Fi1n10vDgyoHXIlr"}' \
    'Ml2RAukCL26ihdMy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'PublicLinkPlatformAccount' test.out

#- 269 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["9YCLNJEkvq6SUSt8", "xd8EgE15XNuw6Y7s", "ToQNkuZzJ1XBxw01"], "requestId": "iBBQukgQ94ZvPCWc"}' \
    'MX0ov3U2sKjIeyFS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'PublicForceLinkPlatformWithProgression' test.out

#- 270 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    '97dYD7LkcTKYpCfl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'PublicGetPublisherUserV3' test.out

#- 271 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    '6HPy5cJfAV5iOfzw' \
    't3bpxRNt6lKoMjCP' \
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
    'tEKeBWTm78Fn8TvZ' \
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
    'VTe4L2lXrVPX6r5Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 276 LinkHeadlessAccountToMyAccountV3
$PYTHON -m $MODULE 'iam-link-headless-account-to-my-account-v3' \
    '{"chosenNamespaces": ["TcnVVOKMApTcWsFR", "UlWBp4gBs9UufgsV", "bG6TUe3jbuQ7HMPO"], "oneTimeLinkCode": "4ozK705ykRqSPYZg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'LinkHeadlessAccountToMyAccountV3' test.out

#- 277 PublicSendVerificationLinkV3
$PYTHON -m $MODULE 'iam-public-send-verification-link-v3' \
    '{"languageTag": "Pm4JLsXVtBOEetHs"}' \
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
    'xAJ8Ny1LRkPU9hrl' \
    '5nkpEdBe8bYWdok4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'PlatformAuthenticateSAMLV3Handler' test.out

#- 280 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'UnUEOyP0cPZf5Ovo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'LoginSSOClient' test.out

#- 281 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'lfI0mqZctohLheRa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'LogoutSSOClient' test.out

#- 282 RequestGameTokenResponseV3
$PYTHON -m $MODULE 'iam-request-game-token-response-v3' \
    'QkfMLFW9B7jHZro4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'RequestGameTokenResponseV3' test.out

#- 283 AdminGetDevicesByUserV4
$PYTHON -m $MODULE 'iam-admin-get-devices-by-user-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'AdminGetDevicesByUserV4' test.out

#- 284 AdminGetBannedDevicesV4
$PYTHON -m $MODULE 'iam-admin-get-banned-devices-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'AdminGetBannedDevicesV4' test.out

#- 285 AdminGetUserDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-user-device-bans-v4' \
    'hhwnANAGp8zGqNGr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'AdminGetUserDeviceBansV4' test.out

#- 286 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "cQyoA1TWPcy83iXf", "deviceId": "YXNdMkdg9TMwxNcQ", "deviceType": "6CkVi8fqVPRqNbF5", "enabled": true, "endDate": "y9CZ94CAUVW8FoEf", "ext": {"8tjCjWc22qqDfNz5": {}, "9jHwSDQHadmAo0lz": {}, "hPm7RmaOr6TLwVyE": {}}, "reason": "42ApAb7CKt79wAop"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'AdminBanDeviceV4' test.out

#- 287 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    'ZL9Cw6K9h55mwUvh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'AdminGetDeviceBanV4' test.out

#- 288 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": false}' \
    'w1qnCAvdnAcokJ0r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'AdminUpdateDeviceBanV4' test.out

#- 289 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    'zqX2KJcYHgiFDxcl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'AdminGenerateReportV4' test.out

#- 290 AdminGetDeviceTypesV4
$PYTHON -m $MODULE 'iam-admin-get-device-types-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'AdminGetDeviceTypesV4' test.out

#- 291 AdminGetDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-device-bans-v4' \
    'BXap6j73doCWxhub' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'AdminGetDeviceBansV4' test.out

#- 292 AdminDecryptDeviceV4
$PYTHON -m $MODULE 'iam-admin-decrypt-device-v4' \
    'MXbxNvT6wAffv4uz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'AdminDecryptDeviceV4' test.out

#- 293 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    'KAwiI4wTxNIefCmt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'AdminUnbanDeviceV4' test.out

#- 294 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    'rxWu293551nQBNKc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'AdminGetUsersByDeviceV4' test.out

#- 295 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"count": 34}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'AdminCreateTestUsersV4' test.out

#- 296 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["0ytPdJ8SY3qoogOx", "oPYvdIBJYyGURjEj", "nslEYM8ngVT1ewVx"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'AdminBulkCheckValidUserIDV4' test.out

#- 297 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "vgAocOqsd5v5n7eX", "country": "Co9gZWdxfIdW8fNA", "dateOfBirth": "M5YdHivK2Q0WwolQ", "displayName": "y037hJMOEv5W0v25", "languageTag": "yAObZIbrA8XAKKWM", "userName": "DebehSjpt0wrfWPX"}' \
    'aI1Jb75o2MFOa6xg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'AdminUpdateUserV4' test.out

#- 298 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "Pt69QROGDeJCyHvU", "emailAddress": "snLvXCSgQHvs25ei"}' \
    'QO3oWdgXdm1IxL1O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateUserEmailAddressV4' test.out

#- 299 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    'tleUBqBO0Ze049k9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'AdminDisableUserMFAV4' test.out

#- 300 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'W6ZLVJzRpUsITfVr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'AdminListUserRolesV4' test.out

#- 301 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["uDukun42zPZvOd4y", "ZyMKyED3qDO5HXp5", "oVkhESbHQ7hvTlzf"], "roleId": "7XwQtVIYU87NgjDM"}' \
    'cJxfMfYFlt3JvDgM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'AdminUpdateUserRoleV4' test.out

#- 302 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["iyBGygWFTAY3Th5m", "OwPCPKVPlOGfFBlu", "2ZP0IkiYXGk6BoBm"], "roleId": "SLi0R7zDFMoNTQml"}' \
    'S8lMlY8UjprhCxhz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'AdminAddUserRoleV4' test.out

#- 303 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["W6ZM7LkTVrtVJZVh", "xCVdjPutJ8dkAVOJ", "5imghdfVhjnjd66A"], "roleId": "1SQmWGSQLAVPAJ7z"}' \
    'X5lB80k2smdkBS2M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'AdminRemoveUserRoleV4' test.out

#- 304 AdminGetRolesV4
$PYTHON -m $MODULE 'iam-admin-get-roles-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'AdminGetRolesV4' test.out

#- 305 AdminCreateRoleV4
$PYTHON -m $MODULE 'iam-admin-create-role-v4' \
    '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "P7PjngEFggq91cpg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'AdminCreateRoleV4' test.out

#- 306 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'voDBgYfLBdGNAZEv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'AdminGetRoleV4' test.out

#- 307 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'bvxqa0K7VUbjUnzi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'AdminDeleteRoleV4' test.out

#- 308 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "8HIxpzm9AcFhH4Zl"}' \
    'YY3rEuHMWwQNmCQm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'AdminUpdateRoleV4' test.out

#- 309 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 66, "resource": "Q1qdRcJjsme1OukI", "schedAction": 12, "schedCron": "H6fNekhk077gxaj5", "schedRange": ["5huTA6AvmW0567BF", "qbrPIuxKmBXLi6Gp", "nqAeMvg3w0FQ1520"]}, {"action": 99, "resource": "dhNCDWWpN3B6tedg", "schedAction": 64, "schedCron": "REoBSFtCLy2CqgCG", "schedRange": ["7JwJCDqkzOdFwLJp", "IPxzLE1V9U1NgpH7", "Oc44yjRdfqZgv34G"]}, {"action": 33, "resource": "8AQaCaw9UF7cdSDd", "schedAction": 47, "schedCron": "9DQZ7vnTx8HDXTJW", "schedRange": ["iyw17ogzmbj4SLYD", "rZJvDLGvn6qtroZc", "p16HKXX1ft5nBA9x"]}]}' \
    'NIJVuMz04evSdE2F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'AdminUpdateRolePermissionsV4' test.out

#- 310 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 80, "resource": "qRo2PnMSRarKg4co", "schedAction": 50, "schedCron": "OAcUwYHGmG5rNDBF", "schedRange": ["1oU37vjfyX5YLaM0", "wmi0i1WABBbq8IzZ", "sMFLX9ZhFXcFtfBS"]}, {"action": 71, "resource": "lDXYxGRJM92eX42W", "schedAction": 100, "schedCron": "DQoDwzrKPOZZnV3z", "schedRange": ["R7YxSu6addocg10H", "y9jx7gBHTOHHArjl", "d0LnREsrrB2pJ7V8"]}, {"action": 56, "resource": "hG5SilDDIsmj4h62", "schedAction": 69, "schedCron": "dIsMKWBxF9RAIrI8", "schedRange": ["1ZR2kNzh60RQNaTE", "hMXMepgzY9jLiAdM", "iQ7eDMkeBRMur18n"]}]}' \
    'CxiV9bQMHpPbvflI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'AdminAddRolePermissionsV4' test.out

#- 311 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["3LkRc1NgZaoYAaCC", "eRgtstsU3Qecxo4b", "QZO3P2f8TTOVf6jr"]' \
    'r1OL606QpqCgxt0N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'AdminDeleteRolePermissionsV4' test.out

#- 312 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'gDSj1T6EdeYFmrLT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'AdminListAssignedUsersV4' test.out

#- 313 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["0HbvS4kSSt3CyDgf", "6eFAiqSkHi0BR2El", "F6z6eJKuOW61akRF"], "namespace": "izqxCmudSXivAL3n", "userId": "478mhb2I2yBJeCJg"}' \
    'hTrk68FWFzuLBdlr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'AdminAssignUserToRoleV4' test.out

#- 314 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "KjUbgZQfw6Zys3mN", "userId": "8fIcC9CkharfqaoM"}' \
    'sGyv1RuSNdycDssU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'AdminRevokeUserFromRoleV4' test.out

#- 315 AdminInviteUserNewV4
$PYTHON -m $MODULE 'iam-admin-invite-user-new-v4' \
    '{"assignedNamespaces": ["eHiVDXzSJ8kbFAyi", "dbnXdMSwmkBkKC1h", "6h45u0wuh9pY0011"], "emailAddresses": ["jSmHFTtfM2mGUUpq", "3ix7Am7W1fwJnV94", "BrMSP31wAkVH75Uc"], "isAdmin": false, "namespace": "GF247cbBLjUr5z03", "roleId": "wxB3E9hrE9f9COFr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'AdminInviteUserNewV4' test.out

#- 316 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "Or6wJDBwIDsJHNg6", "country": "TvNGjwI4TbTwBufU", "dateOfBirth": "orJouduhCEJ5XiKD", "displayName": "IE9YugcupLxVBcRk", "languageTag": "fhRuqkOTHSia7oFd", "userName": "1fEmDuyAsQGzwJR5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'AdminUpdateMyUserV4' test.out

#- 317 AdminDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'AdminDisableMyAuthenticatorV4' test.out

#- 318 AdminEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'AdminEnableMyAuthenticatorV4' test.out

#- 319 AdminGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-admin-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 320 AdminGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'AdminGetMyBackupCodesV4' test.out

#- 321 AdminGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'AdminGenerateMyBackupCodesV4' test.out

#- 322 AdminDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'AdminDisableMyBackupCodesV4' test.out

#- 323 AdminDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'AdminDownloadMyBackupCodesV4' test.out

#- 324 AdminEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'AdminEnableMyBackupCodesV4' test.out

#- 325 AdminSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-admin-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'AdminSendMyMFAEmailCodeV4' test.out

#- 326 AdminDisableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-disable-my-email-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'AdminDisableMyEmailV4' test.out

#- 327 AdminEnableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-enable-my-email-v4' \
    'poI718RQnj4imu6X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'AdminEnableMyEmailV4' test.out

#- 328 AdminGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-admin-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'AdminGetMyEnabledFactorsV4' test.out

#- 329 AdminMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-admin-make-factor-my-default-v4' \
    'FfRcWDXhq1YmGeyg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'AdminMakeFactorMyDefaultV4' test.out

#- 330 AdminInviteUserV4
eval_tap 0 330 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 331 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "dySvyVqY8nxBZbHc", "policyId": "PHEFuEVP9bF07gnW", "policyVersionId": "DULkJPQR0UJMr8ou"}, {"isAccepted": false, "localizedPolicyVersionId": "8FBbur80QwnlgAVf", "policyId": "qz6gQJh8sn0bVWRk", "policyVersionId": "vmAemh8lioBR7xTX"}, {"isAccepted": false, "localizedPolicyVersionId": "6PkRoq5TO65KWh8z", "policyId": "tRJkXxUAj3jzZvEa", "policyVersionId": "Y103YUIMuSjDHz0z"}], "authType": "EMAILPASSWD", "country": "MZQNNP2JqQqhISTB", "dateOfBirth": "T1Gofv4SuaZ8yCB9", "displayName": "TVZnuzgvAZJRm71E", "emailAddress": "C3ENuvD8OPsp5Z3e", "password": "z84KVB7HeWPnVeFd", "passwordMD5Sum": "y5ezlCU6SGzkMpTL", "username": "2wxobjxAbagqEmXn", "verified": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'PublicCreateTestUserV4' test.out

#- 332 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "VeV2emK3JecJA4sk", "policyId": "qCbPxRkIAFQh9yDd", "policyVersionId": "oLE2s7mrVrmTJwtB"}, {"isAccepted": true, "localizedPolicyVersionId": "WlCWTuGO8MnfOQu3", "policyId": "wdT4Aodp95o1RkX7", "policyVersionId": "iW7VpCngWAv5DAG8"}, {"isAccepted": false, "localizedPolicyVersionId": "m1z3ZdetOic9AQOF", "policyId": "WpdItLBhvKJq9tWz", "policyVersionId": "9yui8a6jOflFJlZE"}], "authType": "EMAILPASSWD", "code": "1vrKthVvU5on065A", "country": "pCkVN3QchuQ6pntx", "dateOfBirth": "B648ss7rBnvQHAM8", "displayName": "gSdIybKUByHBzfvg", "emailAddress": "tRTPPzwJmKaLCx3g", "password": "cidEALWe6RG5wWzn", "passwordMD5Sum": "u5AjwR1Z4fU7ICca", "reachMinimumAge": true, "username": "tuuKUw3dUwWHhQW3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'PublicCreateUserV4' test.out

#- 333 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "1y9tjRLVOXBMa0Ji", "policyId": "Ie1AY0tUA7EKASk3", "policyVersionId": "USNLhOBlxRBLgohp"}, {"isAccepted": true, "localizedPolicyVersionId": "PWMkOmrT5HL16jMw", "policyId": "ECnmwJv4rpqtzDaz", "policyVersionId": "0WUJlBCHzJ2v9K8c"}, {"isAccepted": true, "localizedPolicyVersionId": "zOlZg30pagfP0FfO", "policyId": "MBOpeQT4zYIbU4i9", "policyVersionId": "mLyX46Alt08rrnG8"}], "authType": "EMAILPASSWD", "country": "NA2WQrHTkJT1VkCh", "dateOfBirth": "D3n0c1ryAkRvdPR8", "displayName": "gx2rX5dck8NFKPgT", "password": "6LMehg047axU5ktN", "reachMinimumAge": true, "username": "GDZTOwEP5Bhh0NSt"}' \
    'WIggmhfAzVdNYP7A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'CreateUserFromInvitationV4' test.out

#- 334 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "o1z7FeJM2fWXGk7J", "country": "ObSHksRkabpmvRsc", "dateOfBirth": "7ZYvXCT6m6mRZAlL", "displayName": "BczJVeil7GbG1ISB", "languageTag": "CkcnpxKUxLjmxhBS", "userName": "6YypRW7fNntaIEtD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'PublicUpdateUserV4' test.out

#- 335 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "I6MbhxkQdezbmf39", "emailAddress": "2ersoZ2KbMb5jal0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'PublicUpdateUserEmailAddressV4' test.out

#- 336 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "ruZmBXlGSp85q6fu", "country": "Gfo5wSDHnyabk493", "dateOfBirth": "I3pvHKDaWhTN1qyx", "displayName": "pUzWIZWJTDzWguhu", "emailAddress": "jw1EoR58uCVldefo", "password": "nHJZAiX4abmqqi90", "reachMinimumAge": false, "username": "WwZk0HGeJNaBjVdM", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 337 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "djDGdlk2A2jHbAPN", "password": "GInvbnf4ewKFFLoG", "username": "ggX4gQWyZocvYfr0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'PublicUpgradeHeadlessAccountV4' test.out

#- 338 PublicDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'PublicDisableMyAuthenticatorV4' test.out

#- 339 PublicEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'PublicEnableMyAuthenticatorV4' test.out

#- 340 PublicGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-public-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 341 PublicGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'PublicGetMyBackupCodesV4' test.out

#- 342 PublicGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'PublicGenerateMyBackupCodesV4' test.out

#- 343 PublicDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'PublicDisableMyBackupCodesV4' test.out

#- 344 PublicDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'PublicDownloadMyBackupCodesV4' test.out

#- 345 PublicEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'PublicEnableMyBackupCodesV4' test.out

#- 346 PublicRemoveTrustedDeviceV4
$PYTHON -m $MODULE 'iam-public-remove-trusted-device-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'PublicRemoveTrustedDeviceV4' test.out

#- 347 PublicSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-public-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicSendMyMFAEmailCodeV4' test.out

#- 348 PublicDisableMyEmailV4
$PYTHON -m $MODULE 'iam-public-disable-my-email-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'PublicDisableMyEmailV4' test.out

#- 349 PublicEnableMyEmailV4
$PYTHON -m $MODULE 'iam-public-enable-my-email-v4' \
    'Rnl02R1IVNnaK6KS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'PublicEnableMyEmailV4' test.out

#- 350 PublicGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-public-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'PublicGetMyEnabledFactorsV4' test.out

#- 351 PublicMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-public-make-factor-my-default-v4' \
    '71Xs1BphA9BXpKYg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'PublicMakeFactorMyDefaultV4' test.out

#- 352 PublicInviteUserV4
$PYTHON -m $MODULE 'iam-public-invite-user-v4' \
    '{"emailAddress": "F9OuigDP0Vjmy7j2", "namespace": "BrdCAm3slCwaBqHp", "namespaceDisplayName": "E55sjxBGijw0dQtZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'PublicInviteUserV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
