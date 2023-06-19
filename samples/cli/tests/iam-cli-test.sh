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
iam-admin-delete-user-roles-v3 '["00YBWCaVVmM45mfI", "ZsWhkS476dGGJwJ0", "0UH197MJ6zU7JLMQ"]' 'yMWzYQCAaPJgoxGJ' --login_with_auth "Bearer foo"
iam-admin-save-user-role-v3 '[{"namespace": "oJaSzUtY4ZD0Xtb0", "roleId": "U4pH16NUsVY21NVI"}, {"namespace": "s7NRen2Y3Ns0QJQe", "roleId": "aWytPfds1BYx0EaU"}, {"namespace": "Rydf8ZyyZeHAWGgJ", "roleId": "UbUJRMbkcTglbU86"}]' 'FyOjApNHBVfNOURc' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v3 'jY3YYT9oTynmfIuB' 'WgJTNFfM8M0IW4oe' --login_with_auth "Bearer foo"
iam-admin-delete-user-role-v3 '8KDgy0xZfAcNg14W' 's8TIP1LKiFQoLDvu' --login_with_auth "Bearer foo"
iam-admin-update-user-status-v3 '{"enabled": false, "reason": "VO4iKhDcJ7TCcNIs"}' 'Q3PuppUxDSK8aOTG' --login_with_auth "Bearer foo"
iam-admin-verify-user-without-verification-code-v3 'MudcxlCV4cNbJGQ5' --login_with_auth "Bearer foo"
iam-admin-update-client-secret-v3 '{"newSecret": "7lPdinpjS2DRfGt9"}' 'GlyZVQ4X67tPZSTp' --login_with_auth "Bearer foo"
iam-admin-get-roles-v3 --login_with_auth "Bearer foo"
iam-admin-create-role-v3 '{"adminRole": false, "deletable": true, "isWildcard": true, "managers": [{"displayName": "qTAjgqaTHf1ANTJ9", "namespace": "Yk997XkGOdC6ItxD", "userId": "T8p4n4XCFkD1AJLC"}, {"displayName": "wszbZxuHSgDOK8bj", "namespace": "oF7bL2635KbtZTGJ", "userId": "pqgl2IzNXGTuQPID"}, {"displayName": "por7t1aJLNNz6QIV", "namespace": "C9Mfuc8VOsnmnlVl", "userId": "jdWYmELe74p38vum"}], "members": [{"displayName": "nxAnYBTxaTIz0jcg", "namespace": "DI8Pkz96vd80msqI", "userId": "m5bufnBqrpLeqhwV"}, {"displayName": "hjnnjKMEmtbiWsAQ", "namespace": "HbMrKYi0Zxs5SWCq", "userId": "ZXHLLa31oQf7BULn"}, {"displayName": "ZDhutDM6BqguqD5x", "namespace": "xGxBWtnTKUe2znsq", "userId": "PzPkwCBo2SwCUsTa"}], "permissions": [{"action": 12, "resource": "2EQfY3XCv4hdOa6F", "schedAction": 6, "schedCron": "n8Onb1a9gMz0F2UB", "schedRange": ["RmMhAbUWmFhdYLWz", "Muv3zkUY0n0BAZkw", "bYkBLyO6A0Fqfhna"]}, {"action": 57, "resource": "HXGXku2YVuOzhxHm", "schedAction": 27, "schedCron": "XshuLUk5WdpxjZx5", "schedRange": ["noXPhPUTKbonoucN", "mzwOZOK56sDkci5r", "Z8iMlOuksQJCiRFi"]}, {"action": 45, "resource": "WwJ7NrTb1XTB9YQz", "schedAction": 95, "schedCron": "8qBWCQ9dLWYyS8zd", "schedRange": ["hMeBXH8x6HdVfZVD", "AiU6iJOF7JKZFNk2", "NKy59X8iOg2sVBiC"]}], "roleName": "oeC5weXJl7PeiMH8"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v3 'z8dVej8N2yv6VTnO' --login_with_auth "Bearer foo"
iam-admin-delete-role-v3 'K7xAvM7tuL81lsR7' --login_with_auth "Bearer foo"
iam-admin-update-role-v3 '{"deletable": true, "isWildcard": true, "roleName": "344RctmTozCi8HeV"}' '6jbalHmqBBfi7sSF' --login_with_auth "Bearer foo"
iam-admin-get-role-admin-status-v3 '5BoGiTCVsXsygWbj' --login_with_auth "Bearer foo"
iam-admin-update-admin-role-status-v3 'E2opXtdsJQeJ1too' --login_with_auth "Bearer foo"
iam-admin-remove-role-admin-v3 '0qvxphTLEEBGTtZy' --login_with_auth "Bearer foo"
iam-admin-get-role-managers-v3 'TjdKNKgYazujsmSm' --login_with_auth "Bearer foo"
iam-admin-add-role-managers-v3 '{"managers": [{"displayName": "ylT1YtxIq73aMb48", "namespace": "jISd97KORRhxSWLW", "userId": "LNfHRD3V15QaGGL4"}, {"displayName": "6LuxJF3sbeqWBdQu", "namespace": "WfgBAKx27MSBqabU", "userId": "XOGkkoMUZn1YXj5z"}, {"displayName": "FZeOCOR9NvBQZSJP", "namespace": "OIKrRBrYVzi9ui3l", "userId": "vozTt9TsH7A0TuU2"}]}' 'aL4bPkk11sys6Gdk' --login_with_auth "Bearer foo"
iam-admin-remove-role-managers-v3 '{"managers": [{"displayName": "Dcos5uVJ0BJfZ0jv", "namespace": "A54CSqZFDsO1skRj", "userId": "OU1SMfQVQa6blj9R"}, {"displayName": "dd85bdYUumPKVSZC", "namespace": "g3XTc9vQe0dHJfF6", "userId": "KIuvnRCa9JktyBdx"}, {"displayName": "kZKrEWFw9GYxjiiO", "namespace": "QAD77ci0vfWVZoRR", "userId": "MPi57HyKKz5nyI6u"}]}' 'lKNKoXa0dgx1JgjC' --login_with_auth "Bearer foo"
iam-admin-get-role-members-v3 '56pda3YhtQxpCYME' --login_with_auth "Bearer foo"
iam-admin-add-role-members-v3 '{"members": [{"displayName": "6x21pdX2QSPAd9sx", "namespace": "oLnWGP1PafIjLX8c", "userId": "e0KbNN7Ycl2JfmQp"}, {"displayName": "lvGjVQ4aebjfgGu4", "namespace": "72oWJlfglLM4xjfk", "userId": "NL4lU6jaGfsD1cfs"}, {"displayName": "wmeFpvtDtetoQVFL", "namespace": "8LNW11vtpaTxi7k4", "userId": "89jRCn48bvkCPfKo"}]}' 'fwXOIZZQAJza84lK' --login_with_auth "Bearer foo"
iam-admin-remove-role-members-v3 '{"members": [{"displayName": "KmVOaTS6xBbNrSUA", "namespace": "W2ak7ISDrBVg6NuD", "userId": "ZvPb1kuUfNfUDe4g"}, {"displayName": "7q6PHEaqbzHvDDl1", "namespace": "jiLw3XMGBA6JXDpA", "userId": "1tIC45C0oaGouFu4"}, {"displayName": "hXONgUwJnUpryDeR", "namespace": "cpUvlrw2MwC1uuok", "userId": "paIjL0Vxe5n9Lx3Q"}]}' 'cFo9gxOgvDc7xMrR' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v3 '{"permissions": [{"action": 75, "resource": "LddfdsUqjXVzW1Qq", "schedAction": 48, "schedCron": "lalCHtWlKxLpS8fL", "schedRange": ["WoQ5nuJhatQPxR7d", "vBVC5zgOKLTDmHe8", "c1eJ9sde7Ryt4udI"]}, {"action": 45, "resource": "K4QtEydPWLPBYiR3", "schedAction": 96, "schedCron": "FWy5cwNPI6aFo0MV", "schedRange": ["wDZCIXFNEL3uWVRz", "3V7YbJM3bNLWHAbC", "Zixe2cQ6O30lpzcB"]}, {"action": 87, "resource": "UcnkpU9oVzl2kBuL", "schedAction": 65, "schedCron": "oc4ZjiMY4H34B6wV", "schedRange": ["d8ipcKDwQeUWtjCC", "2UH6jzMO3AfmOS5m", "QNyRPZFPNP56l1AT"]}]}' '6OLKmZhCZxxPPdPw' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v3 '{"permissions": [{"action": 83, "resource": "pF7OvlBIEgjse5kd", "schedAction": 13, "schedCron": "GEDo08yq5E5HleLo", "schedRange": ["og4me2NBFp62xlXv", "VcJerTPW02PWsHiK", "YArAxnKBfBfDlrQQ"]}, {"action": 41, "resource": "oukWpnbz4ys7j6lx", "schedAction": 41, "schedCron": "tvhQIyLarjaLOKnX", "schedRange": ["51yAB8Pa3uNGKhaL", "lJzJMSnJIIgsAVma", "GYxUX1B9oVuzG2Cn"]}, {"action": 5, "resource": "YBF2g7TVtzYEHUod", "schedAction": 14, "schedCron": "pnnVfxPwc259HF9e", "schedRange": ["jHaILQruAuYyJLYG", "qMv824ouSgkpK70u", "JmUL0uzElixc023d"]}]}' 'IvDiA0tQWlHwBcTt' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v3 '["ztx3VAl6tXFbnATC", "zUOIzVcy9k3ie64V", "nwa0ClGQJultJe32"]' 'AiwKadEoIVmprwPs' --login_with_auth "Bearer foo"
iam-admin-delete-role-permission-v3 '1' 'iGTYgwWv5XldL6rO' 'VGcRAn51rVAQSxp4' --login_with_auth "Bearer foo"
iam-admin-get-my-user-v3 --login_with_auth "Bearer foo"
iam-user-authentication-v3 'qTB54mKA3V9DKlCe' 'Z7mLYsHooOIaxIpb' '1cIOJPS3lJ80YJ41' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-authentication-with-platform-link-v3 'U4ooQ980ywmg1pWp' 'Wit1QC7FKe0fnHUl' 'mU1unGKM0tgfeWy4' '7bbwMI4gGmvK9gW5' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v3 '96FwBNrFXt3TAuKB' --login_with_auth "Bearer foo"
iam-request-one-time-linking-code-v3 'wBcD12ae6r3hHwya' --login_with_auth "Bearer foo"
iam-validate-one-time-linking-code-v3 '4NpdOzg3hr6ucHf7' --login_with_auth "Bearer foo"
iam-request-token-by-one-time-link-code-response-v3 'dbh2iKNUl0qJqzoK' 'MRMG541PAiNjULsx' --login_with_auth "Bearer foo"
iam-get-country-location-v3 --login_with_auth "Bearer foo"
iam-logout --login_with_auth "Bearer foo"
iam-request-game-token-code-response-v3 '4SnKNXLMUaDSwwQl' --login_with_auth "Bearer foo"
iam-admin-retrieve-user-third-party-platform-token-v3 'nNRZJHBSB4fZWEFI' 'Zs28Ff1kZp1Zktx3' --login_with_auth "Bearer foo"
iam-revoke-user-v3 'N7WNMYIfcDKbLu8p' --login_with_auth "Bearer foo"
iam-authorize-v3 'nK34oA1keYXJvtgg' 'code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-introspection-v3 'TVYelIlGJg9wdc8b' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-jwksv3 --login_with_auth "Bearer foo"
iam-send-mfa-authentication-code 'ihhWjfZpfcFBUsnn' 'DJlmD1iEokbUiYzC' 'Qh2iNTwtnohddMzM' --login_with_auth "Bearer foo"
iam-change2fa-method 'TQ9P7sYLDWAJOA75' 'K4BYJ2fkqYJoF2FI' --login_with_auth "Bearer foo"
iam-verify2fa-code '3vyyqRzc20O7FdsJ' 'P1G9tyBTfERXdvgD' '1Qf7Ot2DkUt3yexZ' 'true' --login_with_auth "Bearer foo"
iam-retrieve-user-third-party-platform-token-v3 'cXejmeZtzT0qj0lt' 'sqfiZrthVvyX0OCK' --login_with_auth "Bearer foo"
iam-auth-code-request-v3 'DJE3RMUddwSSgxCu' '8zru1DhGAYOHR5BW' --login_with_auth "Bearer foo"
iam-platform-token-grant-v3 'a9VzIkaQEl1iUPro' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-revocation-list-v3 --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-revocation-v3 'NB6hI6IpGcToWgFv' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-grant-v3 'authorization_code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-verify-token-v3 'u06Q4veujxtyQENv' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-platform-authentication-v3 'JrBCqeg67d4RWOqO' '4U0bitNQLzwRoWnR' --login_with_auth "Bearer foo"
iam-public-get-input-validations --login_with_auth "Bearer foo"
iam-public-get-input-validation-by-field '0AbkCPY70FmvviVI' --login_with_auth "Bearer foo"
iam-public-get-country-age-restriction-v3 'BbcujF8Vk5qb8NhW' --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-public-v3 --login_with_auth "Bearer foo"
iam-retrieve-active-oidc-clients-public-v3 'WwaxyMchkt8l5IPS' --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["rwrJl7wYIVw13NCo", "9yXlbQ52FTHTCj6S", "EAzT7TOpyiuvvQUm"]}' '29Iacq4XRLaA643n' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv3 'TMtXSAyejnny0Ju1' '3b6o5uB2XM6IHy7E' --login_with_auth "Bearer foo"
iam-public-get-async-status 'EvHyLmcvrZZOdwe1' --login_with_auth "Bearer foo"
iam-public-search-user-v3 --login_with_auth "Bearer foo"
iam-public-create-user-v3 '{"PasswordMD5Sum": "x8RjU6Bi8JXE52sU", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "vgWSRxZ8N4UQ2fg3", "policyId": "V1o2x0hL5DuBDqMy", "policyVersionId": "IAzWze94MEdJFAy2"}, {"isAccepted": true, "localizedPolicyVersionId": "llJkRGB8jqJEd6eq", "policyId": "qsBVyONV0JRtozI0", "policyVersionId": "jpliCFQ6WgJpGPig"}, {"isAccepted": false, "localizedPolicyVersionId": "YeQZOzATNSV9E9yy", "policyId": "Nb7yaLXzAVYymOuh", "policyVersionId": "CkZu4htrsf8eIFSo"}], "authType": "vTGXaMsq8ePN1oco", "code": "2jx8Upe8SjMvpqM8", "country": "puggOEdG47gD5i2N", "dateOfBirth": "i6AnWn3NdEPhNHSH", "displayName": "7eKDfRcngEpTnRUQ", "emailAddress": "r3RLOM1vEx4gqDY6", "password": "jwyKRxhkLe5zohg9", "reachMinimumAge": true}' --login_with_auth "Bearer foo"
iam-check-user-availability '6m4KC07CnsZe32hq' 'EcB1ExYMBb3ckvoa' --login_with_auth "Bearer foo"
iam-public-bulk-get-users '{"userIds": ["JYdMqGegcg3eRvBZ", "XN3cjIXmFWRJnj8x", "N7HDPTUEDPN1Kb4U"]}' --login_with_auth "Bearer foo"
iam-public-send-registration-code '{"emailAddress": "TPWDXTSb55g8LSTs", "languageTag": "7Nf95lGlPrf6obId"}' --login_with_auth "Bearer foo"
iam-public-verify-registration-code '{"code": "nI6Ag7eUYcYJ4QzX", "emailAddress": "Cmqr6gmPGaHP5SVP"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v3 '{"emailAddress": "vRLiDi0mNHb6Lx8e", "languageTag": "q8SGNwEQO8dYXvBS"}' --login_with_auth "Bearer foo"
iam-get-admin-invitation-v3 'YvJBwb6CjZUMRf2V' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v3 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "etWsokvx3BHuTEcz", "policyId": "r9KjQ3ttz8MTBt1x", "policyVersionId": "k9IyssSA8nP5PQjp"}, {"isAccepted": true, "localizedPolicyVersionId": "tQmQN6eKAGiZFCft", "policyId": "T0RWECdjWYrnulxc", "policyVersionId": "CKAru8pOaAVLDB4k"}, {"isAccepted": true, "localizedPolicyVersionId": "zEGXmVBZLyrH9J7B", "policyId": "oysmaORLkP5hc2Fh", "policyVersionId": "04JTsqDTynCewqJl"}], "authType": "EMAILPASSWD", "country": "qXRqegIUicYXXzxs", "dateOfBirth": "BFrUs9BYp6TgCejB", "displayName": "d5o7iTST7R3KbbQG", "password": "ERMNpqWb51y5RUzv", "reachMinimumAge": false}' 'sBpCJBIXLGYcwWVR' --login_with_auth "Bearer foo"
iam-update-user-v3 '{"avatarUrl": "K6UKk5ozrXA4HZHN", "country": "yq9odanhR1Zrm3th", "dateOfBirth": "UvV87yfkycLSVdle", "displayName": "SaAylsmLYe2phYOg", "languageTag": "T5kDTyPl3dKF7NXE", "userName": "jrJMki8jvc3P8Gwj"}' --login_with_auth "Bearer foo"
iam-public-partial-update-user-v3 '{"avatarUrl": "g3IOH0SDHgYKqxJi", "country": "FJdrmj5vhzgsJwex", "dateOfBirth": "7wq8ZPlXNaUNgdY2", "displayName": "vfJuje5cPnmGjTvY", "languageTag": "a5Pqx1K7qcAoijBP", "userName": "Ap6EPb988NzxrDKV"}' --login_with_auth "Bearer foo"
iam-public-send-verification-code-v3 '{"context": "pULjjiw3NeVG4DJi", "emailAddress": "9DaMrc0WFgKjE945", "languageTag": "x2CPVYYG9WvoGmAm"}' --login_with_auth "Bearer foo"
iam-public-user-verification-v3 '{"code": "vaVV5YfxnUNcwjr7", "contactType": "gSGhnfuF4WZiQVIC", "languageTag": "VpWd3UM08gMXhdf3", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v3 '{"code": "Y0ilrNoFT98SgtJd", "country": "4Z5f8nfaKqdZFLbZ", "dateOfBirth": "EHxsDxeR6d7r1SQw", "displayName": "80JfMpPrSqYypRUn", "emailAddress": "q5o4ETeCUYG9ccTt", "password": "7Wxw8OQ13t3uTw6z", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-verify-headless-account-v3 '{"emailAddress": "uoZcXQpoTOxe8y1j", "password": "orNsg9ZKYCKoISyX"}' --login_with_auth "Bearer foo"
iam-public-update-password-v3 '{"languageTag": "tHzoWGdYohxMp3uO", "newPassword": "QIybqWfG9BJ6FVKl", "oldPassword": "bYHtbPtaxvagSlpG"}' --login_with_auth "Bearer foo"
iam-public-create-justice-user 'gVTF6VeDAPOGBwwe' --login_with_auth "Bearer foo"
iam-public-platform-link-v3 'yFfXEOEAEtbag82K' 'gBgyCd5vjkfz3eR4' --login_with_auth "Bearer foo"
iam-public-platform-unlink-v3 '{"platformNamespace": "DtNp129hzBw3xLUc"}' 'CEt0DzmkJq1sml5b' --login_with_auth "Bearer foo"
iam-public-platform-unlink-all-v3 'Yt76BNsi4giR9434' --login_with_auth "Bearer foo"
iam-public-force-platform-link-v3 'WpKKdzxoufCNlFoO' 'cWQQy4bjmQeEweoB' --login_with_auth "Bearer foo"
iam-public-web-link-platform 'HTdwAk7ZQnbqY1cQ' --login_with_auth "Bearer foo"
iam-public-web-link-platform-establish 'wVEtAr5kKKAo9MM2' 'Cqm84jVi9kIpqgrz' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"code": "pUkNOBWydXV0Fi02", "emailAddress": "aFr8CDapjwNOl4k8", "newPassword": "rVNrm8drv8QD2JOe"}' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 '2Ntz7EFvowPgIGue' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 'txFMqXCQMAqQ2ZRG' --login_with_auth "Bearer foo"
iam-public-get-user-information-v3 'zNtrThFa9XU8mosl' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 'uiHZJ7O8sAQ32wj9' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 'uaDzsr9xYiWRuuzQ' --login_with_auth "Bearer foo"
iam-public-list-justice-platform-accounts-v3 'JiLc1eI9w3JEhxPG' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "bEk7s7gw07FlounC", "platformUserId": "3vJKBC7SwgoViPeI"}' 'B4Ehy0Y5aSJVDgin' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["xAM77eY9C14FbfiI", "2NPvl1kCY5bEokxX", "xkWZbjf7GZxaossQ"], "requestId": "mjo69wohJFyTNk5F"}' 'GUPhR4LEZvz3EjFR' --login_with_auth "Bearer foo"
iam-public-get-publisher-user-v3 '7996Ug5m4axDV5uT' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 'cYsoahUrELQ1btjJ' 'OqQMgZWAU6E92nHJ' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 'zvw7tnYtGfv0EJyj' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-public-get-link-headless-account-to-my-account-conflict-v3 'Bu4EzwRjD7jmQJeF' --login_with_auth "Bearer foo"
iam-link-headless-account-to-my-account-v3 '{"chosenNamespaces": ["PghqamSc5y0X48eT", "7Mluexk87b9Z5BTs", "EA3EdmW8saabP4xR"], "oneTimeLinkCode": "owfNojzPXI2v0prR"}' --login_with_auth "Bearer foo"
iam-public-send-verification-link-v3 '{"languageTag": "3OEey0MkZwS6TYwN"}' --login_with_auth "Bearer foo"
iam-public-verify-user-by-link-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler 'N3UYhic03qGEg5fN' 'zBVrjo3g8CfRwtyl' --login_with_auth "Bearer foo"
iam-login-sso-client '1HeT7VEPgG40QyXz' --login_with_auth "Bearer foo"
iam-logout-sso-client 'sOzgck078IghoQBp' --login_with_auth "Bearer foo"
iam-request-game-token-response-v3 '2mWAOYksczxBS0OB' --login_with_auth "Bearer foo"
iam-admin-get-devices-by-user-v4 --login_with_auth "Bearer foo"
iam-admin-get-banned-devices-v4 --login_with_auth "Bearer foo"
iam-admin-get-user-device-bans-v4 'Ca2vWadLmQtYKmEM' --login_with_auth "Bearer foo"
iam-admin-ban-device-v4 '{"comment": "zicbuL2S3RiW8dLT", "deviceId": "CBfGUdVEdvdQL7sV", "deviceType": "wcZ2PofaJoSqtrEO", "enabled": true, "endDate": "XFGZ5PKdbabJIkNn", "ext": {"t9P1Tkm08luh4dpP": {}, "RMDbUXBWTbpAogG2": {}, "wlZkLhuU5FI8NijF": {}}, "reason": "I0GKwJ3vfXlsAMy2"}' --login_with_auth "Bearer foo"
iam-admin-get-device-ban-v4 'Zp2UAGxHnmSxvkG9' --login_with_auth "Bearer foo"
iam-admin-update-device-ban-v4 '{"enabled": true}' 'R5q9neoW6JBcGp9R' --login_with_auth "Bearer foo"
iam-admin-generate-report-v4 'x2RfcRhXpmeeHdvp' --login_with_auth "Bearer foo"
iam-admin-get-device-types-v4 --login_with_auth "Bearer foo"
iam-admin-get-device-bans-v4 'has9S7ivHEoLbUMM' --login_with_auth "Bearer foo"
iam-admin-decrypt-device-v4 '47f1UreUpxEkXIbE' --login_with_auth "Bearer foo"
iam-admin-unban-device-v4 '1ETzRJZKMavu4Ul2' --login_with_auth "Bearer foo"
iam-admin-get-users-by-device-v4 'IaieEbPSE7TGkeHs' --login_with_auth "Bearer foo"
iam-admin-create-test-users-v4 '{"count": 48}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["sW9oGBN1pYMBwbPZ", "TlMlUvFEiGprcNSQ", "9kEeXBZ6FVrBzyhy"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "hoS6a9oe0JaXFpff", "country": "28uYbe4Cf2HEHvVe", "dateOfBirth": "vhISjbtBJUK5fE3O", "displayName": "ufPSX3PdOU2V9yw9", "languageTag": "4oa8UJ34TIedV3Hy", "userName": "oX4VnO2LpBU08wfn"}' 'lHBXFIqFUmgUSMM5' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "au8GJT0mkVPI6zUt", "emailAddress": "f3QaJPGrTNcXXTUI"}' 'ggoH89QNmI17UDb1' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 '9R6H7r1ta3m7jK5p' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 'xe82pgFiAS6piIzm' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["c8rKrKEPGSAcong6", "eNERUf8kjci1Ctcc", "v9Gv4tOcbnuCqf0l"], "roleId": "m6WBkIzjoSV31tvm"}' 'MB6jzrpRGESmooHi' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["CV4GUOnXpapXQGRa", "kUbcG7PcR4eiU3Id", "i55jNrGNT2VHTKuI"], "roleId": "T5FwwHj0Ur5F2PWG"}' 'TTD81xhNP4t6kYBU' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["jyXAn3bWQF6QcAiJ", "pXIrgroixptZhckU", "TGkcBOE4qMcH1Kyi"], "roleId": "8ZFvGcV8DY0XOkDs"}' 'txZcY1HgAnZV4IOg' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "c481dYdvGxJAMDRA"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 '1LF7jdWlekFwO94V' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 'BCV9qJhWva2FPBuj' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "HVDsZBQgOnXuXsGT"}' 'hYZrmm0wrFMnPpWg' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 37, "resource": "kwxUNYyNwGiKrknH", "schedAction": 63, "schedCron": "Y5mrQgLC6D2qsFiQ", "schedRange": ["HglUQMZi5WjMZfOa", "dpgegCUjTdi1Ehr8", "OtqpNJ9R8TuNy4ej"]}, {"action": 25, "resource": "V7t73VnSFbuxd4KY", "schedAction": 81, "schedCron": "0jk0UZdhtnKu9oTc", "schedRange": ["8pVkiyGsj5JdXzRx", "fNEjUMTs8WIObJBT", "svsw76uISRX0bKVo"]}, {"action": 99, "resource": "XmWP0HzSdiylLhVY", "schedAction": 38, "schedCron": "US7Haa6unq1yQOSR", "schedRange": ["vyiLBRVtIDi2piIQ", "FVmzMidw70KSahpY", "ZdKZRyR9AX7JjxvN"]}]}' 'ZhM84DiZk6ySrB9S' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 98, "resource": "w2zXyFFVpM87yqEw", "schedAction": 63, "schedCron": "AtALFI3v8yha4pd5", "schedRange": ["A7MYcpBD6lKNb8Rx", "vN2u5J7baOeLH19f", "qBwNbNe1ffYRtIvQ"]}, {"action": 1, "resource": "JuNLnWRrtW870qD8", "schedAction": 79, "schedCron": "ZcduZSe7W20UZcDa", "schedRange": ["iq0nEZ7PyhqFJkDC", "lOsKmfsgJdmzsDPs", "Wh1k0cQ08NG6dX2T"]}, {"action": 0, "resource": "kil67kRngoUa83EC", "schedAction": 16, "schedCron": "bPzPFbrOMZMgWkFN", "schedRange": ["7Tpkx6GcfyOg6ZUr", "rp9ubg9mndW2JKmQ", "afUs2bxYztOEyVbK"]}]}' 'If1ZbzgUwd8DHoCQ' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["ykmXHYmkRlg7gYs6", "unPYQ9jNQN1di1ld", "hOh6HvjnYuV7NfC4"]' 'A2ODiZhbfb8QqCyK' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 '1XH9D6vl5eFdFfgK' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["46GjCWaP8huTmnq3", "FGQn3Ahu5wxq6oJq", "4mChmQHQhO9IKBXD"], "namespace": "FQfXFD58sG6uDhFY", "userId": "lrzJBYSeMuJfQecu"}' 'tjS029BiJWOG1m7M' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "Kclr5igjNTVItrH2", "userId": "X78hxJgaVfw5Vnyq"}' '8OzTE89WDNoMcOmb' --login_with_auth "Bearer foo"
iam-admin-invite-user-new-v4 '{"assignedNamespaces": ["fJrCJQIj1haAosKg", "lqaCXE9ytpIO8btO", "3OwNEGSW5TaW4to7"], "emailAddresses": ["QCY2NGGvi9kg3rMI", "zNmhJTNQjKlwjfJ3", "TJ2xVpge70WsLfgb"], "isAdmin": false, "namespace": "ByjbE8lOLAfTXKLz", "roleId": "brddqcKLa7LevxNH"}' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "OSEhQRZIp693lRwt", "country": "c43atCuCFxbfbz4a", "dateOfBirth": "QERziPL4dHhOqG5K", "displayName": "DdUvk0LEi26Ls7mj", "languageTag": "RxNmvvNtjJNQepUT", "userName": "GhwlY4lPzlsCR5rV"}' --login_with_auth "Bearer foo"
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
iam-admin-enable-my-email-v4 'syfcH7WjP7HuGz3b' --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 '5WAEvdRF9bqMj4ro' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "B19VE838c7OydVw0", "policyId": "zCqoMZvpIOO97DmQ", "policyVersionId": "5ZOzx6iCJTu60Iif"}, {"isAccepted": true, "localizedPolicyVersionId": "uoXNSoVEBG7VbBPU", "policyId": "Wipz9C05YabFX4FC", "policyVersionId": "K5ucTFsAFzaO3yJp"}, {"isAccepted": true, "localizedPolicyVersionId": "m8RQvRUbUDSiefGE", "policyId": "dLucrtO2gCQD057D", "policyVersionId": "rDlgC2nzS9SiGUjV"}], "authType": "EMAILPASSWD", "country": "oaP1K4CDuH1mMIfO", "dateOfBirth": "CDyVAHrHncR5dShq", "displayName": "iBUI9esSsXegSEhr", "emailAddress": "PpK2q8kxR4BuEksS", "password": "2A9VOA8H9VeHv0L2", "passwordMD5Sum": "Acm960EYQEuGJVl8", "username": "xs1WId9WlalqshF9", "verified": false}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "MXwKdfqk8T4QHK30", "policyId": "EX0FclpDl5Hsurac", "policyVersionId": "O5MnjnxD1OXkxShF"}, {"isAccepted": false, "localizedPolicyVersionId": "QTRekLfjmy8zosRC", "policyId": "RgVwbrQKmb01yA7U", "policyVersionId": "7dGMjupZkZQY8CNy"}, {"isAccepted": false, "localizedPolicyVersionId": "4fiTxK63OHpnUCGB", "policyId": "VfpctNFUsUQ6ZXQc", "policyVersionId": "b2o1J5euLAbBgejq"}], "authType": "EMAILPASSWD", "code": "g8Jg5VByeI3ycMcY", "country": "YBixKJXCISQdwec1", "dateOfBirth": "m8BusV9tUh74KVo6", "displayName": "Xqjz2xUKLNWSmYyV", "emailAddress": "vyelIJ8QgaLMqi83", "password": "6ULa7cfZl4VuY6rs", "passwordMD5Sum": "Zyo6CBRRnoOikIxX", "reachMinimumAge": false, "username": "IR6kPmswm5TCAU1c"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "3gNLIlTk3Bpclrk4", "policyId": "hIRn0znIKzAEAHQp", "policyVersionId": "BOgHEP5l94s7CbIJ"}, {"isAccepted": false, "localizedPolicyVersionId": "eHnVWOboMkyB7FTe", "policyId": "xsOZ0b2p3b63Krcw", "policyVersionId": "IcXMhGy83Xit6boO"}, {"isAccepted": false, "localizedPolicyVersionId": "GCcg16DqwdQPQ9Hk", "policyId": "SSV8e1MgTTLS2Fga", "policyVersionId": "rY903INGIyEfRBEj"}], "authType": "EMAILPASSWD", "country": "xo9OHgfHumyfuBNi", "dateOfBirth": "secYbcOpR45VDlvS", "displayName": "c0Mr7ImwCwGqOf0b", "password": "Ns97KvKyj3MqS7Dc", "reachMinimumAge": false, "username": "rDCjhnKvsHezWTqg"}' 'YPixtHk6lWq6tEeU' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "mU96FLEak0mJqjRY", "country": "ldcTpdeCD9XPRi4b", "dateOfBirth": "AQL7VE2wL8Y4JFVU", "displayName": "dzA8bvXlDhG7Bror", "languageTag": "bKIKuOXJPm5ztrr0", "userName": "9CDA8Ij5bGKSuopW"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "QbaCvdPSq8Z27Gpv", "emailAddress": "HCDx55JZ5z6gujpF"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "zlPspQD9IRIpDDub", "country": "ntPCFxfeoW2NdSWz", "dateOfBirth": "OXjO1NQUqWHBW78X", "displayName": "REZCiTNAxq26gZrP", "emailAddress": "qCsSDspvgM16sZ6r", "password": "jnkH4ExObppC6CMY", "reachMinimumAge": true, "username": "mGFy0eUoOBd90h9E", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"emailAddress": "UfmjtiVbqJnZcrqr", "password": "Pye7fCwi7Il2wIFl", "username": "Hm9N6owMHMtJy1Oq"}' --login_with_auth "Bearer foo"
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
iam-public-enable-my-email-v4 'n59tEGm9NYeUT5P0' --login_with_auth "Bearer foo"
iam-public-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-public-make-factor-my-default-v4 'nx8TqSZdZ5C8mFI9' --login_with_auth "Bearer foo"
iam-public-invite-user-v4 '{"emailAddress": "TnvzEqBNMF9CZvPx", "namespace": "T5zbreMc9fBoU3RH", "namespaceDisplayName": "NDFjLKFrepy56eW1"}' --login_with_auth "Bearer foo"
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
echo "1..350"

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
    '[{"field": "kmb15QeIQF51c4Mq", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["vELgBe6dboSdhkBz", "AzPkt1efGJeJaxyH", "YutgXucx85vHA009"], "preferRegex": true, "regex": "xvF2uLXWilRD7HD6"}, "blockedWord": ["LCgdFxRGj00RT6Lv", "cnGMJbJIYLssMvy9", "gkfTMRrXVRcAVRDX"], "description": [{"language": "6gmDfNfPGYYSTunM", "message": ["gt3C8hEguCqlMHiQ", "N3HWJw9zIWsiP2JQ", "24meDrwEuTyM2qoh"]}, {"language": "glzO8AEl6A9sh2x2", "message": ["ur2ccp7R7OqPqIjS", "4i0N9ytb3c8pVZ8G", "lU8962e6gtn5pUAR"]}, {"language": "JM1T8QwMNOAzXmyH", "message": ["EV4g9P6a280S5RNB", "5dVCsB7xL4axSPgP", "CiwLxCFLDixZwVtt"]}], "isCustomRegex": true, "letterCase": "RVTl0tR00oQgcHdG", "maxLength": 67, "maxRepeatingAlphaNum": 38, "maxRepeatingSpecialCharacter": 75, "minCharType": 57, "minLength": 87, "regex": "x76U1EIcklttmrpg", "specialCharacterLocation": "F5szl0sMY8es36r1", "specialCharacters": ["FgR70eNLHkVrEFd8", "xArWJuCAIfNBSHgp", "FNw9K9pmAIc6VSfE"]}}, {"field": "9nbE2PMv12ZSRJku", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["Cu1HFaj6Vxs3GuA4", "S1dS7H7yIS7b5TSD", "RIoMg7Dc5APzfzXD"], "preferRegex": true, "regex": "PxK1os4qR8LaQzEb"}, "blockedWord": ["39sZTdFfC8x5aHLs", "XHlm1RJTTy9JrNz1", "K5M1qgFddYvifGHa"], "description": [{"language": "wNx6yhniEHLbEQKc", "message": ["0aUvrKXDIjYC4df9", "qswSlpCI8DhjlxUy", "rs3OSesE5p0DwUj2"]}, {"language": "HKUvPYUcQBxMSdOO", "message": ["sn2Nd8Jpa19GJDK4", "6Eehx7xasqMY9aul", "sL6NOV5agpS6A5mk"]}, {"language": "ufBpWVxIK9D2bTcg", "message": ["aKoccaSwWcZmzCWG", "I1cIQcPWAShIhieS", "KUf3zKbyQk2vQTYX"]}], "isCustomRegex": true, "letterCase": "5Orya6LSSUlugIAk", "maxLength": 28, "maxRepeatingAlphaNum": 67, "maxRepeatingSpecialCharacter": 70, "minCharType": 4, "minLength": 60, "regex": "SaVYcAYp7qSiDvsf", "specialCharacterLocation": "MUOpWv46sXvpOjrp", "specialCharacters": ["Ro4mYrCeQUnYoID2", "UqO0iAXA9dB4ib8H", "DOJ8TNiP8KgEAj3d"]}}, {"field": "bRTI0i6dO3zkbDse", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["6fX9j7rhZCAlDlVK", "BsLZiBRXszE7CL1c", "QCSoqHvH7g63cOx6"], "preferRegex": true, "regex": "0pGzazM2BUXnzUEW"}, "blockedWord": ["TiKMJAf6AgbiEDMf", "CckWogE5gcfF8AMG", "Z2FBS93Mg6TKwdRM"], "description": [{"language": "raDLrwh3d0ykRGkg", "message": ["qUNIbJMJ9ABbKVWO", "2YEDiqkwKbpdk7wl", "DngNiPPjpSAlZwFG"]}, {"language": "pea5ObBB49Km4ClI", "message": ["QmkIdLCvNhZ6P8aq", "Z2yfrC1V7ZpJZPHC", "MqvcYmeDLYEzs2SQ"]}, {"language": "UdKr6vgqkjycqclN", "message": ["lBORlC8ZkjsxYtgx", "plHTPLzynjFZgF3e", "rw7UsyHq4bBb0n1J"]}], "isCustomRegex": false, "letterCase": "hzB52BDFopxUwkMu", "maxLength": 92, "maxRepeatingAlphaNum": 72, "maxRepeatingSpecialCharacter": 34, "minCharType": 7, "minLength": 87, "regex": "KMexeJc7NvgTSgKj", "specialCharacterLocation": "CxZjKf8NA4cGUaDf", "specialCharacters": ["y9XnH2r0EKrk5Vln", "KsWCPccAFn5CEPoH", "6opK5DSO8JyX4IE1"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    'z3rDwZ1HKsOpyq8a' \
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
    '{"ageRestriction": 13, "enable": false}' \
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
    'fnAdtkujxHff7n1y' \
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
    '{"ban": "aNCcjgFhS0URBhl0", "comment": "L5FCbOn46W2B2uPQ", "endDate": "Lrt2t6bVpCgKvPXS", "reason": "DufmKh783cV54JsV", "skipNotif": true, "userIds": ["o5oHzqY3DgykA8zB", "JX0rkOHUkY5aSlqh", "YoSXbn6l5xAzc1nc"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "3eFm950dtVAo7w4e", "userId": "3v5mh6Rum5pbgEt3"}, {"banId": "9uJQpgEtchTe3nt7", "userId": "t9ztprSfW9OutADr"}, {"banId": "NGBWSJ1zQKxVmRTa", "userId": "wjiZPMoZZcyGEHxA"}]}' \
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
    '{"audiences": ["KDQher3usApPdJPn", "9eIdhIBvTTupABJ4", "RwH3EdKmYtbqQHNf"], "baseUri": "IZwrMxf3EnzZVnkL", "clientId": "T0Lb85nmpdN26BY5", "clientName": "YI0jeO2zMDSy4kyq", "clientPermissions": [{"action": 50, "resource": "UcYzswAGpXqQxctu", "schedAction": 98, "schedCron": "iXu3iNvn7vLZ7h6a", "schedRange": ["lhJNGZF07lsPP5Of", "HbXzWnVO2U4uyzZo", "1rj0ZrLQjk4VoYfI"]}, {"action": 22, "resource": "eDiSqTfmAVg50kOd", "schedAction": 73, "schedCron": "U5iqhx6zv7EURTNI", "schedRange": ["oG1DBdoKH6sREmmf", "wUZLZZS7snx0Q2Gd", "8m7Y3wiNloJfey3H"]}, {"action": 48, "resource": "L6SjljNPTXA3qbg5", "schedAction": 49, "schedCron": "SyienCODZ0mnOpPT", "schedRange": ["VxEgBFzG8tlkxWKC", "U1XN4gl7yHvEqpJS", "rDXVwCkhOQ161TFj"]}], "clientPlatform": "ROYJm75VIuCOCkt2", "deletable": true, "description": "623WWn2ZJY3QvRa7", "namespace": "CDRTcsAHzD3dZyyW", "oauthAccessTokenExpiration": 3, "oauthAccessTokenExpirationTimeUnit": "ZTkbbuWiiA4UTDgS", "oauthClientType": "2SVEo5M80LLbku9G", "oauthRefreshTokenExpiration": 5, "oauthRefreshTokenExpirationTimeUnit": "H4ijqOVM50tCqkZf", "parentNamespace": "sSxAbDJ7sHCLup8p", "redirectUri": "mEosOXglQwwdeLVp", "scopes": ["mXqRwVjc3W2ANmE3", "VVsQ1fm9EUdiaRju", "LsKZoqnpKwhpZVdw"], "secret": "5UMa8ymxtEFLwELC", "twoFactorEnabled": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    'vIddlxnA1VynioJc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'APwVHUGcs1ACMvoY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["4jWH9dFmOHW0j9su", "ukPE4JwQONQ2vCbM", "n0Oia336uiiMTAdu"], "baseUri": "ctvUfVwLahtRedh1", "clientName": "SiZlOpIQ8GL7jBF1", "clientPermissions": [{"action": 89, "resource": "iKcF0bkfjcTEFXcT", "schedAction": 46, "schedCron": "c1636nbfM3J9G40Y", "schedRange": ["62bCo941ALznQuHV", "skfCjUK8GeX4Q0B2", "Cj0oOmBmXu1KiTTi"]}, {"action": 52, "resource": "XR1sDEDVKDINE3Hj", "schedAction": 59, "schedCron": "r16lW5YwgZpjlMMt", "schedRange": ["PWg8217m7qNkQiKp", "2oac8QTNEuBbeuQq", "m9wM7mgTtUdPVcQi"]}, {"action": 18, "resource": "6DKW9A6AmnQTNFid", "schedAction": 71, "schedCron": "1mSeS9SnGqhJOvyk", "schedRange": ["BcDpzD9zh6dtPK4f", "VHLMvrCsH3RYxH2U", "p9VthPjFrK7Hip0e"]}], "clientPlatform": "ONFDgUPShG8wwFKY", "deletable": true, "description": "GsALPuCOyphUUAV9", "namespace": "5708zaP0wpZgQEvF", "oauthAccessTokenExpiration": 52, "oauthAccessTokenExpirationTimeUnit": "rQB1yUonirH4URx3", "oauthRefreshTokenExpiration": 82, "oauthRefreshTokenExpirationTimeUnit": "Gr8W97KBedcr6PM5", "redirectUri": "1z7i0wQ9egK2t46E", "scopes": ["G8I2lTviKbOgVuN3", "nhkn6QIesNoYqvVs", "akylHikKkpOjqwgK"], "twoFactorEnabled": true}' \
    'ILNJVv2DLLUyBt5h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 60, "resource": "uw6q8FgqG46RsFK7"}, {"action": 9, "resource": "kZjnRXVcg6AByNpB"}, {"action": 30, "resource": "nZOn0tk4IATSIefc"}]}' \
    'qNEn4IZ0Dv6b8Wta' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 79, "resource": "OTHnbX9tC9PQlFAG"}, {"action": 3, "resource": "Qp3kTyL4CsLwiWUM"}, {"action": 5, "resource": "T2k0AzdgIunRkTxs"}]}' \
    'GdrpNELM8Lfkut0w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '27' \
    'HwQuiH3Ozu4G6bXx' \
    'p0gYZyF9fJBJkSOr' \
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
    'F9Dg4FcDwBGyBiHe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "wZkwEeuzBBRSknxy", "AWSCognitoRegion": "WkZObuvig8sMuss7", "AWSCognitoUserPool": "6ezTrsDZNYUV48Oh", "AllowedClients": ["6I45X7HvUtPYONZd", "Fk75lkjQNHrjaboG", "omguUqeuZh5qtrRb"], "AppId": "NnGejdTGvZgN5hsh", "AuthorizationEndpoint": "Se5YmZXKEQLkM6o3", "ClientId": "eGSP4Htmr90TqGf0", "Environment": "OyqJ9ibJMmRgoxNw", "FederationMetadataURL": "p1lGkYoq8HP1TM0t", "GenericOauthFlow": false, "IsActive": false, "Issuer": "fVQPWX1NPO5Wn7rN", "JWKSEndpoint": "G8rGp7Fadvo5EzpX", "KeyID": "0IttsRezyY9GB5sf", "NetflixCertificates": {"encryptedPrivateKey": "94ALBmvdncQkcZb8", "encryptedPrivateKeyName": "cWdVH9bww15zZsaY", "publicCertificate": "rJAe5Kd5QB96ndlO", "publicCertificateName": "6iPGC9RhzMC7V8BE", "rootCertificate": "phnRXnSpCzyb8Fko", "rootCertificateName": "xQbrPngi87K58pQs"}, "OrganizationId": "wqKLutINusOsa92F", "PlatformName": "6iwkJIYOLarmpWyv", "RedirectUri": "ib9CDW21ANrlpuXD", "RegisteredDomains": [{"affectedClientIDs": ["9H1u1CvzWPcZwkj1", "l6bf2F9EXOBj7v8L", "HYivmD0ekycMKlwJ"], "domain": "TNL2UCWUtaAD7ZZx", "namespaces": ["1iefATWcDSqGYRMd", "z07xEJ40epssgJJC", "3CX0hpB1ZGMMo5DS"], "roleId": "ozCuFsrBMtoOeLfM"}, {"affectedClientIDs": ["CYxSeeJOlxa395rg", "hZwGhdZJkkGhYvXY", "MIyaEMEqOpwetb82"], "domain": "b96rsH73hRfDgl29", "namespaces": ["GWKpItMt4GszRufk", "DFLYyNBPlMrkse9S", "GcMuV5phhU315LUC"], "roleId": "6HSMQ32UznXNd6ve"}, {"affectedClientIDs": ["29lqqtcLJW9eTJvK", "NDFrx6LabyDnqXjX", "KPIcxh0x7T6RQGnn"], "domain": "W4ugGX6mKBbgTD9x", "namespaces": ["L07ZzzIs3Jke34ZA", "UuLP897ooMLnemwK", "AvgDXNrFEE4Jf4hQ"], "roleId": "psLOcLtZw0efmEVc"}], "Secret": "W7mxbS5UOoICxQMi", "TeamID": "t8555Niy4NNFpRE5", "TokenAuthenticationType": "pS85yTIRWvLRy58U", "TokenClaimsMapping": {"KWPv3F7S0wCVlYQi": "9cfMCeNnu6OIG1PP", "LRDEXLXZWXvqNCHv": "NpeMjMzguq6HFIqa", "qwH9J6JLb5f3SBMy": "JUdwEBRrHAWUFqTo"}, "TokenEndpoint": "oGGnPEgY0t7QQWl4", "UserInfoEndpoint": "2byOwXgKyPhXmcys", "UserInfoHTTPMethod": "ae8HpWH4xiz3fWth", "scopes": ["JSu2pUIIuPLFAtcW", "hjAP57QbWvSSp71z", "EPPfmAQiqRRC2caq"]}' \
    'uMRtQOILcaDqUITB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    'HQR5ISNoFR3GUxdM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "uvmL0UBfwzaaeP3W", "AWSCognitoRegion": "d0Wrb8s3GW0CY0vA", "AWSCognitoUserPool": "fbq8xoCurq4lpHXr", "AllowedClients": ["bVBh60NUA2aKQwnX", "rmi6ya8u4sQPvaf1", "AcweR7tJW3MLMob1"], "AppId": "hUnIzIpUM8KK1kGF", "AuthorizationEndpoint": "N0NUNGKxdlAUDFQu", "ClientId": "GPzAuT7M6OBrNwio", "Environment": "KnXPVZaDcXsV1Tns", "FederationMetadataURL": "ZioDiBgprzahPB0F", "GenericOauthFlow": false, "IsActive": false, "Issuer": "gozmco41750xdYQg", "JWKSEndpoint": "34WUV0WpmsQnp1n4", "KeyID": "YGumTKOlDOy5vhSk", "NetflixCertificates": {"encryptedPrivateKey": "xERZ2AQ1jvXYBar5", "encryptedPrivateKeyName": "RMmmGdWl0wpj5tVf", "publicCertificate": "KU3D8WVPh0Z7YiGE", "publicCertificateName": "2cyzTMBY7Xd0OoEN", "rootCertificate": "g2Lw7uepmahXojVZ", "rootCertificateName": "Yz2zMU9jLzNV3GaG"}, "OrganizationId": "43R6nlRPrEAYqRBe", "PlatformName": "Sc5uShoj3dGHMeoi", "RedirectUri": "5DBOsQ0Gax0iX05I", "RegisteredDomains": [{"affectedClientIDs": ["T9Agsjl5NmnSHhxN", "mCe4txY0MsPc9EMg", "f9JCJiEvhL8ZfwCV"], "domain": "JW9yspUOyHC9eKeX", "namespaces": ["zrvzBllwzyC1aTWE", "mPgoy4TkpEw4Zeid", "4mRoFNxv10ckMQVj"], "roleId": "Kk3bWJ0ZuYSe3sI0"}, {"affectedClientIDs": ["x2hc8vaN1Off5gRZ", "ZMW3huAIzBPWBYKA", "EFTdlKNh6GTzKjsC"], "domain": "qxx24QM35bSkFrvG", "namespaces": ["ciNHb7OY5YIpOLJW", "52uz3c8pz63M0g4x", "XT5Ts4e0uR47OzUG"], "roleId": "HeBKtpvyRNgjZkdD"}, {"affectedClientIDs": ["ppvEJiUiDGXgh8BK", "cLqtRZ93LuR8OEyI", "CvwgwBFehwtdJLdn"], "domain": "3R2wo8beVQvgeP9q", "namespaces": ["OHaLwYnXxrz7sLmP", "70LxN0f3JA27Qz5S", "jzQfOLYu9O46OOzz"], "roleId": "9p57qSpHerzO87cg"}], "Secret": "7TqtMiQgi7Aj28qC", "TeamID": "RbwwZc4ZS1NMkrnH", "TokenAuthenticationType": "s1Iyhwqk140MolIr", "TokenClaimsMapping": {"nlkRVbcX435TDYpk": "k2Gza6DrSycophHw", "3EoEEClTO9SDKnMl": "nKW9jiNMu9QVrMeD", "4bD8gISE34yIAZQe": "igiA3wBrmBYIlZeh"}, "TokenEndpoint": "eP72AB8EO3YrlyrW", "UserInfoEndpoint": "owUpUDVLlTtuJJsH", "UserInfoHTTPMethod": "ZVsG6izJZruOJvSR", "scopes": ["FLDSdj8elbtHvDU9", "1DmHzwiqVPCJ5j18", "Ou3aY8nceFU5GKmc"]}' \
    'EKp8AQwqgJs6O0Qj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["0ccMkdz6zPz3BVHA", "qp4O9XSjap24esyj", "h6Wc3migf2n6iQyr"], "assignedNamespaces": ["5cb5YL6fwBiaVPmm", "n0T5uzlmi2NY26xr", "kPPdg3pXjmtpNfCr"], "domain": "Ij9ntYo3dupUHNu8", "roleId": "abrVVOKxr9Pa315F"}' \
    'KDjG2ApSV94Jy6yC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "SXBqJqjAbVwSaoj1"}' \
    'ugjr8mPkr3tZ506E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    'RSVy5M3rrkxu0U9h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "9gCNVZxHGxhZqNXJ", "apiKey": "6JXSh0Z3SWISs1dY", "appId": "rJKmx1BT6iLFQejN", "federationMetadataUrl": "ZJNF2hm0TqBQprHn", "isActive": true, "redirectUri": "eAmDxP23qstMuikK", "secret": "c6VNU8570siWm3V9", "ssoUrl": "sirE0JOQxWeHypqC"}' \
    'WMDPRI2cCk8zHR8V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'yCC0EQwE0cXokXbw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "KDtVmrYQu7hZvHfi", "apiKey": "T9s9pK8HuUY1QQHQ", "appId": "0NCEddJtx6GV01vD", "federationMetadataUrl": "7lNLxlpvqaB9P9Ga", "isActive": true, "redirectUri": "xb88WgKSLIpneDQC", "secret": "fwucHRL3o2NstrL6", "ssoUrl": "TsJeRcE7GuwKn63K"}' \
    'IDTkUCqbbHGJGOTv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'KKRTHDntaFiufH2Y' \
    'R6QU7fj6w17arNs1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    '2hOoLVM7UFnuJDze' \
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
    '{"userIds": ["EkDxaVogxHrOon2O", "W4Zw5QwVKWNy2tnF", "2MifJR4hr4gdJDuj"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["YnVnFK6gB6ZxC6yY", "UVUJYnQ3jOGmROIq", "xqQ0gcNeTflyvUh3"], "isAdmin": true, "namespace": "GJpwQZlXuzu3m9u6", "roles": ["7JjCDwg186hGWKfO", "9MnoT3t99HmcxzjD", "hTrcBKtU956hOg8o"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'AdminInviteUserV3' test.out

#- 146 AdminQueryThirdPlatformLinkHistoryV3
$PYTHON -m $MODULE 'iam-admin-query-third-platform-link-history-v3' \
    'ukDVdweG0sFHxTHa' \
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
    '{"listEmailAddressRequest": ["2k60SzCqUgq1gLbc", "IMevTmC631p7q794", "bu49lINFTtERAXT2"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'AdminGetBulkUserByEmailAddressV3' test.out

#- 150 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'h3hcQ2wV3ZbBTnNQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AdminGetUserByUserIdV3' test.out

#- 151 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "nVUhA5WnzVZdj8ts", "country": "yzC4QaLXp3o4TDra", "dateOfBirth": "EEaDNJbVd20FVHev", "displayName": "CjthJUb7jKuMrFao", "languageTag": "Lulzp3sZxImVK5yh", "userName": "2LcM8LaMW0ByjsRU"}' \
    'rAHNRkIcC4wNFzsb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserV3' test.out

#- 152 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'rtYvLh56AWXoMiow' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'AdminGetUserBanV3' test.out

#- 153 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "dWSs9DQ0VU1HED9C", "comment": "Go9aUXj3rh0UyqxV", "endDate": "WlIMY5tTJw4KV104", "reason": "MtMhKHmSjqPuQZX5", "skipNotif": false}' \
    'BCZx9DJ4V97SJLlr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AdminBanUserV3' test.out

#- 154 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": true, "skipNotif": false}' \
    'XmIGamRCARuFLx4r' \
    'V4CXVMrDYKe2eTf1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'AdminUpdateUserBanV3' test.out

#- 155 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "axo16GqT2vSLLiMv", "emailAddress": "cu39YZJypWzpNXgn", "languageTag": "oKIz8O8NglJtZTh2"}' \
    '80vflFMxIhlIT8Ag' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminSendVerificationCodeV3' test.out

#- 156 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "yZJ16MMd2bzOrTn2", "ContactType": "huwPgyUzBUWiKoNG", "LanguageTag": "tvyk5xEfrJDxKsw5", "validateOnly": false}' \
    'p8a1VqxXnRhDd9TG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'AdminVerifyAccountV3' test.out

#- 157 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'kO6aIYqftw1SrM2n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'GetUserVerificationCode' test.out

#- 158 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'hSEanfUYrMU6A43U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserDeletionStatusV3' test.out

#- 159 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"deletionDate": 75, "enabled": true}' \
    'pvC1cr5T1PSXhduT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminUpdateUserDeletionStatusV3' test.out

#- 160 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "WchzXDv3TAtBjP4H", "country": "SuiYCbG0UyYUJmNL", "dateOfBirth": "8p6AbdtU0CDrlQpK", "displayName": "B8qoel2QK3aSOYdm", "emailAddress": "MDikc3Fjm9HoQDem", "password": "tiQvURYZCeF30RT9", "validateOnly": true}' \
    'Adel3hHMSLAiscGR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminUpgradeHeadlessAccountV3' test.out

#- 161 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'WzkCl1ZKuPxjDUGR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminDeleteUserInformationV3' test.out

#- 162 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'GcCEPjbUy7F82Adu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminGetUserLoginHistoriesV3' test.out

#- 163 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "9BYRHrVTehrqgvEt", "newPassword": "Es2LpE0qfbvdU8hl", "oldPassword": "DoC9FnxqBlPBYJ7X"}' \
    '6uVy7FWTSfMi2CPV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AdminResetPasswordV3' test.out

#- 164 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 66, "Resource": "wcomPoiYoQ1f1AYq", "SchedAction": 51, "SchedCron": "6Pysv4VPaZWolXyp", "SchedRange": ["wucUqqqff2iWi4yP", "3uqNcig6YcDA8Z3g", "62oGYwkrjLI4EHJE"]}, {"Action": 62, "Resource": "KtfXCKOna8DdjtZh", "SchedAction": 16, "SchedCron": "U55wdCpVpnENiTc9", "SchedRange": ["NESV22eRBElD4K2C", "y1tJcPAEkCeV29Qs", "Qk100eu5UcxuXXpt"]}, {"Action": 62, "Resource": "YSPX04uEIdAwgDob", "SchedAction": 30, "SchedCron": "dddLWJWDuSYtCaIv", "SchedRange": ["4Lp91wYUJPbvzn8T", "YoMDAaUXSuBQdvdh", "JoT0WK5ngNUxDKfZ"]}]}' \
    'YofPGUbSaA00nKxQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserPermissionV3' test.out

#- 165 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 19, "Resource": "b0ceCbphW4YMhJ0S", "SchedAction": 50, "SchedCron": "0bez9ZLHW882riiP", "SchedRange": ["fRQ3rJ0f5lwXvRND", "BnmL1KQn77hiP1lz", "kzjYDw6mLBordrJk"]}, {"Action": 61, "Resource": "s2deMF8UAJIHEZv5", "SchedAction": 52, "SchedCron": "b68a8ygYx2Tqkhlq", "SchedRange": ["MnE9Wj90EQzOidrW", "nLrXqImgDf3GaJsd", "CZND0wgYOilX1e18"]}, {"Action": 75, "Resource": "5iasunESjcgr2drX", "SchedAction": 66, "SchedCron": "BUwBL28BqM8UzvKq", "SchedRange": ["eoTiNKGRUMrimGAz", "6OhmHOpCdr3WzDm3", "hJdd6uaO9TiTPnIh"]}]}' \
    '2iaIBpYC4txul6VK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminAddUserPermissionsV3' test.out

#- 166 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 19, "Resource": "lNYYlHPwKDpJmkeo"}, {"Action": 55, "Resource": "w1GqUjjFp6R8mYZw"}, {"Action": 76, "Resource": "d4QgQut2hiPuDdOP"}]' \
    'HcN9drwqytieXpIZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionBulkV3' test.out

#- 167 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '11' \
    'QCWMktmiKd9vLPP0' \
    'w52JRAZxMWdoleYN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserPermissionV3' test.out

#- 168 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'HXeOpaRDwYLge851' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserPlatformAccountsV3' test.out

#- 169 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'PbK2MFKvw5TWjAh4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminGetListJusticePlatformAccounts' test.out

#- 170 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    'gy41LLzQ2IjY5PeN' \
    'r4JmYxH2qs28hePJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminGetUserMapping' test.out

#- 171 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    'jMp0TKKUBfPNI9f2' \
    'oLWDPSZexfKVxqdx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminCreateJusticeUser' test.out

#- 172 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "mh5QWxuQuI7gdDTD", "platformUserId": "b3WdnOpzTrRzCCaf"}' \
    'ADJfWBspT3MLwJZq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminLinkPlatformAccount' test.out

#- 173 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "uMQSPp5XD4S1ilfg"}' \
    'ff7Et4uY8nlBwGNH' \
    'gfgwZwVMvshGmsg6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformUnlinkV3' test.out

#- 174 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'ZJYnkHDnHTlRugM7' \
    'a2UZgeesipbP027o' \
    'kM5E8tAajVSvLRj3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminPlatformLinkV3' test.out

#- 175 AdminGetThirdPartyPlatformTokenLinkStatusV3
$PYTHON -m $MODULE 'iam-admin-get-third-party-platform-token-link-status-v3' \
    '06RDuaSixXEdloYZ' \
    'BkatNLc42eq0O6Vs' \
    'XtOlQwj5xPvm7c5n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 176 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["PR0Y1sffUaZ64dFp", "iv8o9Gw4QtKgyIey", "SoUxoMrj2J4JGQZA"]' \
    'tyjTxnlmSyjEaFH2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminDeleteUserRolesV3' test.out

#- 177 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "DRN6HIEqIFEcS0yn", "roleId": "IMOYWpUYUQMooiKT"}, {"namespace": "57rmbjEnimeR7EFB", "roleId": "z43E9FkOPVu2fDtO"}, {"namespace": "jW1iSYQbcebBd5wb", "roleId": "5H3qppoCiHMD4iBK"}]' \
    '2O7qYtOHV5hnpjc5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminSaveUserRoleV3' test.out

#- 178 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    'CNLnnEvo25aEtdjl' \
    's5oadseJg7y4Q9CU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminAddUserRoleV3' test.out

#- 179 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    '3fjSRaXD4HDmdvhM' \
    'XxiKR29LKIhNU43K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminDeleteUserRoleV3' test.out

#- 180 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": false, "reason": "huSMHhf5R2MkxQTA"}' \
    'YGfE6hXZ7XLoWCGf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateUserStatusV3' test.out

#- 181 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    '0dZEeXBd6mGG6SHc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 182 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "ZbX2wNnT6A9zosmD"}' \
    'nXoncy7NZQ4PkAPX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateClientSecretV3' test.out

#- 183 AdminGetRolesV3
$PYTHON -m $MODULE 'iam-admin-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminGetRolesV3' test.out

#- 184 AdminCreateRoleV3
$PYTHON -m $MODULE 'iam-admin-create-role-v3' \
    '{"adminRole": true, "deletable": true, "isWildcard": false, "managers": [{"displayName": "bYvaWLoKzHnngdfF", "namespace": "nOfY9stXH6LYXXMn", "userId": "dxBPKmHVB7cNzHhv"}, {"displayName": "xc4xAPZ86WNnQOhu", "namespace": "sPn4466u8agb5HPs", "userId": "BU0Eo6QJ9vBRJ4UP"}, {"displayName": "09fabC01Thm9f4AW", "namespace": "pyiKVT3OvEujx5yj", "userId": "tQSCJaOHzpb623Ec"}], "members": [{"displayName": "iYoYOPVg6DLEZ6Dx", "namespace": "pwBm2N8PdQ5mQaGX", "userId": "EbnmWR0H3EkrHqaL"}, {"displayName": "NdfKszYZzOg113h6", "namespace": "fIaHSx5bClxUOBmM", "userId": "wv5pmiIVnhlLoMem"}, {"displayName": "sp7o3F2LQw7Y2VdS", "namespace": "xgXez7VvS0C9JLVQ", "userId": "QPa7PPx4Zi6WaC8w"}], "permissions": [{"action": 21, "resource": "LrILDLviUCzmDAaW", "schedAction": 83, "schedCron": "xz1c7ZuZXUCBYnkY", "schedRange": ["0LEBSYBdUSiTOrhB", "8hVs29WOKmZRTtgy", "cLzXz6lUMKi5mweM"]}, {"action": 63, "resource": "H4UJrrCKvrOAi7lM", "schedAction": 13, "schedCron": "3jAevOnES6YJLlb2", "schedRange": ["AfUEEBbqMMKvkOsR", "1fHUyirMVMOFES2J", "2OzNlJE3uqZz574g"]}, {"action": 19, "resource": "1cA0PwZxTIZVSGQy", "schedAction": 93, "schedCron": "mJHNI0l6jJVzF1Oi", "schedRange": ["2sQuWUBBHZonSmzF", "831vlCiZAZHCWMXx", "Vh8HTrKqVwnpPn8N"]}], "roleName": "5xMRgU7cPqNZrLCR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminCreateRoleV3' test.out

#- 185 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'RUysya4J3rvTzMTM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRoleV3' test.out

#- 186 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'SwrNov2GW9i54JY2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteRoleV3' test.out

#- 187 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": true, "isWildcard": true, "roleName": "UWFTLq0W1JqwKs1m"}' \
    'O80L7IOHlf6j8PZO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateRoleV3' test.out

#- 188 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    'zUiQKZqz5NSp0B7L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminGetRoleAdminStatusV3' test.out

#- 189 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'ODN3Boi2sSAO2n4M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateAdminRoleStatusV3' test.out

#- 190 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'ZQt753XQB93rOW0g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminRemoveRoleAdminV3' test.out

#- 191 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'uPoQbYzc1RDVhs2l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRoleManagersV3' test.out

#- 192 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "hdzxxgibuqUuyW3c", "namespace": "Mz9YyduMomEHcU15", "userId": "St4v8ry8IyqNVv0K"}, {"displayName": "VpXJTMx3Y8Um1iqe", "namespace": "hObg3OZ9j0HDtbqM", "userId": "FlgHKQIRtLfPngD8"}, {"displayName": "3roOeqE7fcCAeExe", "namespace": "QX43LpmdMiZeyIrA", "userId": "4QUKSJgECzvaWUCA"}]}' \
    '7wKru7ry3AQ2sEHv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminAddRoleManagersV3' test.out

#- 193 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "SxjWoM1rNJLM0OOV", "namespace": "G5cG6XxENbWqlX7i", "userId": "dzjpKDfwl6XlCF6Y"}, {"displayName": "xFMD8tJQwZvUVIno", "namespace": "s5RK100yH89i8ZDP", "userId": "XRL8cbTAntB1STaa"}, {"displayName": "b1UeibXg7RCe5BtK", "namespace": "cwj6PqqOgCimr3ZQ", "userId": "NBBkrXu9czsYr3cF"}]}' \
    'eVw70xdNTuOdLKK0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminRemoveRoleManagersV3' test.out

#- 194 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'M2B2hbqJin37P69t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminGetRoleMembersV3' test.out

#- 195 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "1KqeGz7qbPnXEuOz", "namespace": "zkoBmMR9C4qPqJrA", "userId": "dh1HIk7vCEq7FQ2S"}, {"displayName": "5VeW9ddxzLPV8wDj", "namespace": "snyPh5yNbYXmlAOi", "userId": "1SC3I1SjkH42LtyZ"}, {"displayName": "KrTJo0L5sHil4Q0m", "namespace": "qa8GatrjbJ5YT7uv", "userId": "qarTvrG1DXZAWlvz"}]}' \
    '3c3XALMresGFfsH4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminAddRoleMembersV3' test.out

#- 196 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "aXCDhshvEF8rHd25", "namespace": "0nyihcUVGHQczI5Z", "userId": "oTRUkjGoRkPs2SO9"}, {"displayName": "XrgXNIaU11cBXLwT", "namespace": "fopqeZtHJnRgaGfL", "userId": "MFbvyI5PZGzVLcmZ"}, {"displayName": "KKKYARape2tsNcza", "namespace": "m4Cdd1QYvww4XDok", "userId": "ltgq2vXtUnY6UhDJ"}]}' \
    '4pe0s0Cuhl3dU9b4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminRemoveRoleMembersV3' test.out

#- 197 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 38, "resource": "VTN5Qf4tjPGpu27y", "schedAction": 47, "schedCron": "8wTi1v2abpCWytPE", "schedRange": ["i9Ze0hL9rPkV5GkS", "rcl2O47XVzU7qlNV", "k7qnmBS3XKDhp1Ok"]}, {"action": 78, "resource": "GiS3XxjkyNfj3XgT", "schedAction": 90, "schedCron": "gQ94flh775AQfzNj", "schedRange": ["Q7IuMSY2epRDJjDy", "MDKQhuTjtQZyIiAm", "CL8bNTTfqLCv9DYB"]}, {"action": 84, "resource": "MnTbKdwNhiIP7dpJ", "schedAction": 73, "schedCron": "B8VwFQnVco2oCn1K", "schedRange": ["vJmbjapW9UlEqtzD", "d7SgxdxB5kvtM8ah", "9bPsksceGUEX8ERZ"]}]}' \
    'cKSYLo6y7yJMowQ6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateRolePermissionsV3' test.out

#- 198 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 76, "resource": "MgmdSvWp3h0xPsVY", "schedAction": 19, "schedCron": "qNwB2TY4v9NNfQSY", "schedRange": ["LFKSl3FNFFJnt3rI", "wZdW02Su6aCnL816", "aH6gOBUIMeL0GL3a"]}, {"action": 9, "resource": "FmKTTUxG0mpmFxxD", "schedAction": 81, "schedCron": "JMPkZmay4Csye3iJ", "schedRange": ["Ltjsu6ZJRCoDq3ge", "uHFFaZzPIjETqcKN", "1gaQ4Bn0cPPtKaJl"]}, {"action": 46, "resource": "0ebxhJ1176CeD4dW", "schedAction": 57, "schedCron": "KF0LLhO3lGZ7eGOP", "schedRange": ["j2XoFug8BUQUmPHn", "PumcazKAna0ji757", "aNDFeKnQP2j2WsQI"]}]}' \
    'mTwYkiuxzLrbJ0Bk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'AdminAddRolePermissionsV3' test.out

#- 199 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["GzCNgesQlZZHIZH0", "iks6kx0adnimPyyz", "ezsHdFftHHR6xbcV"]' \
    'Vonwz27DWfGRVhbZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'AdminDeleteRolePermissionsV3' test.out

#- 200 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '93' \
    'CMmYyTGO07foRZ6F' \
    'ujpIWo0qJtqp4Q6X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'AdminDeleteRolePermissionV3' test.out

#- 201 AdminGetMyUserV3
$PYTHON -m $MODULE 'iam-admin-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'AdminGetMyUserV3' test.out

#- 202 UserAuthenticationV3
$PYTHON -m $MODULE 'iam-user-authentication-v3' \
    'gICLgMHcP1eE6sjW' \
    'QllYsONpp6QGW56C' \
    'NiszHE69D1MMoaf6' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 202 'UserAuthenticationV3' test.out

#- 203 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    'KlgRtwaM2IoyY1wp' \
    'IdjcAtTj1IMuuhxx' \
    'lulfmya73hX0a8Ri' \
    '85PA9wNpmrK5Y5he' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'AuthenticationWithPlatformLinkV3' test.out

#- 204 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    'A2ewWnFcqHxXP3kR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 205 RequestOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-request-one-time-linking-code-v3' \
    'htrBcBofWTGYx2ih' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'RequestOneTimeLinkingCodeV3' test.out

#- 206 ValidateOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-validate-one-time-linking-code-v3' \
    'gioL8VvEzHGTt9em' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'ValidateOneTimeLinkingCodeV3' test.out

#- 207 RequestTokenByOneTimeLinkCodeResponseV3
$PYTHON -m $MODULE 'iam-request-token-by-one-time-link-code-response-v3' \
    'dCLmzJbdkykVAnmn' \
    'RfUilcKA84d9pMsl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 208 GetCountryLocationV3
$PYTHON -m $MODULE 'iam-get-country-location-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'GetCountryLocationV3' test.out

#- 209 Logout
$PYTHON -m $MODULE 'iam-logout' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'Logout' test.out

#- 210 RequestGameTokenCodeResponseV3
$PYTHON -m $MODULE 'iam-request-game-token-code-response-v3' \
    '7zrNJvDiP2hNNEI8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'RequestGameTokenCodeResponseV3' test.out

#- 211 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'QrQ6H1ro5CtU8Ujg' \
    'yCUpM1JBcTzf4dz1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 212 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    'BojPoQg976409vFd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'RevokeUserV3' test.out

#- 213 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    '5z9r4nJWUvLp1wxG' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 213 'AuthorizeV3' test.out

#- 214 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    '47468MXUq3uIffkI' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 214 'TokenIntrospectionV3' test.out

#- 215 GetJWKSV3
$PYTHON -m $MODULE 'iam-get-jwksv3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'GetJWKSV3' test.out

#- 216 SendMFAAuthenticationCode
$PYTHON -m $MODULE 'iam-send-mfa-authentication-code' \
    'pPmrWVxNZUvkiU2j' \
    'XSwsBBRopVl38d4N' \
    'ZGtk6EmWxC75M88T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'SendMFAAuthenticationCode' test.out

#- 217 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    'KhFYkA9aRNDe2IoP' \
    'MSQKcg0OTT9JA0ll' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'Change2faMethod' test.out

#- 218 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    '1RimBCiQwuyrI87u' \
    'SyXP6C0jXS8au2wc' \
    'WYyj3JvHqXp4JR7x' \
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'Verify2faCode' test.out

#- 219 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    '59Z9tfGVsglnOxOX' \
    'BfgBLuglkd9LIosh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'GnFSuHmrqej8PRpp' \
    'YY1vlV0M2g6oreqy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'AuthCodeRequestV3' test.out

#- 221 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'BzWzCgMMWZuD6tmI' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 221 'PlatformTokenGrantV3' test.out

#- 222 GetRevocationListV3
$PYTHON -m $MODULE 'iam-get-revocation-list-v3' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 222 'GetRevocationListV3' test.out

#- 223 TokenRevocationV3
$PYTHON -m $MODULE 'iam-token-revocation-v3' \
    'R28xVxbtpSKOfiIP' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 223 'TokenRevocationV3' test.out

#- 224 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'password' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 224 'TokenGrantV3' test.out

#- 225 VerifyTokenV3
$PYTHON -m $MODULE 'iam-verify-token-v3' \
    'pypZqISn3msrykQF' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 225 'VerifyTokenV3' test.out

#- 226 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'tW8QGKFZLrIfqrZu' \
    'u7IwKcT7sAsv2TKC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'PlatformAuthenticationV3' test.out

#- 227 PublicGetInputValidations
$PYTHON -m $MODULE 'iam-public-get-input-validations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'PublicGetInputValidations' test.out

#- 228 PublicGetInputValidationByField
$PYTHON -m $MODULE 'iam-public-get-input-validation-by-field' \
    'bYMVkXEHmsHwIGGs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'PublicGetInputValidationByField' test.out

#- 229 PublicGetCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction-v3' \
    'usS0zZRODEKPdudZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'PublicGetCountryAgeRestrictionV3' test.out

#- 230 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-public-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 231 RetrieveActiveOIDCClientsPublicV3
$PYTHON -m $MODULE 'iam-retrieve-active-oidc-clients-public-v3' \
    'sLaf8aZrXW84dt0T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 232 PublicListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["STmy7XF26K2U7xtt", "Uz8nWKJjv06PuffH", "ghAQfAsYXVzBenLt"]}' \
    'aAoYyRfiCWrm3s1A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 233 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    'h3TII70MIcBMJ045' \
    '08jKedx0CVRpd7Sw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'PublicGetUserByPlatformUserIDV3' test.out

#- 234 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    'Zw2UkjDzJ4NuMMgI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'PublicGetAsyncStatus' test.out

#- 235 PublicSearchUserV3
$PYTHON -m $MODULE 'iam-public-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'PublicSearchUserV3' test.out

#- 236 PublicCreateUserV3
$PYTHON -m $MODULE 'iam-public-create-user-v3' \
    '{"PasswordMD5Sum": "13nplXaUQV5QEvKE", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "3CGwtujkzxidLcAQ", "policyId": "WGVRg6DVso5TJCSu", "policyVersionId": "gdo4XTm8t1YTWqIt"}, {"isAccepted": false, "localizedPolicyVersionId": "ZjZMdr1C2TIQzRJY", "policyId": "7UfYSrdN0JVz4U43", "policyVersionId": "EcV1FRyeeqehMNeR"}, {"isAccepted": false, "localizedPolicyVersionId": "O03mnFSq9jJTVFoF", "policyId": "jxZjh5qUR1Pq4a4u", "policyVersionId": "aMfd0SQAfYIyzHL8"}], "authType": "jxakuVu5r5B08VZx", "code": "I4TU3apnZXoJ4gI4", "country": "EQKO8xC4D0FsUo3I", "dateOfBirth": "B2kX5REQZsHyXzoI", "displayName": "XNf0KbL9HyJttdgf", "emailAddress": "LGO3ummpllnV6B62", "password": "P1Kazg73c6UpmA4e", "reachMinimumAge": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'PublicCreateUserV3' test.out

#- 237 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    '2w5QytAmkanukAzA' \
    'MaRvIUhUwguGgbLL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'CheckUserAvailability' test.out

#- 238 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["N3O7CEYjxqElP5lA", "2FJ0iGLRTXGsC5mx", "xse4eeuMgEctVEux"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'PublicBulkGetUsers' test.out

#- 239 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "2MSuwsEHlwdeJyhs", "languageTag": "HS6YqPudWviQsULL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'PublicSendRegistrationCode' test.out

#- 240 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "1txfX9tqFSkGXoIc", "emailAddress": "FN5JL9M53Mg0MzWS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'PublicVerifyRegistrationCode' test.out

#- 241 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "9usxxnMhjv66DyED", "languageTag": "4prRVibTATxd7Mzj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'PublicForgotPasswordV3' test.out

#- 242 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    'v1gSj8kcNhoqcRZR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'GetAdminInvitationV3' test.out

#- 243 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "th479W8rXqwGVIRW", "policyId": "gTNHCka3Wb5kH1Br", "policyVersionId": "LWUetP7nmESQDV3B"}, {"isAccepted": true, "localizedPolicyVersionId": "l5jhwVDsuzwJ4v50", "policyId": "eoaIBrTh0EKkJioU", "policyVersionId": "pvGnkcHgCfaWzPUv"}, {"isAccepted": true, "localizedPolicyVersionId": "Jacwwu8W1zvrKMRP", "policyId": "vwA9k6yJz03NETdy", "policyVersionId": "wPqYerrpOm4M2pM4"}], "authType": "EMAILPASSWD", "country": "YjUt4F1ZVy2qFfSr", "dateOfBirth": "3psWjOyHLyKe2foq", "displayName": "sVIfgBTr8RcxRQR0", "password": "NYdJzf3TMhSaynVs", "reachMinimumAge": false}' \
    '5nZC4Os7hqIH2NgA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'CreateUserFromInvitationV3' test.out

#- 244 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "RSG3QQNGNH2K0UuJ", "country": "deGNquQnaXpDQ5rU", "dateOfBirth": "2taDWh9JV5oc5IFQ", "displayName": "srwHqFqwVA5mozee", "languageTag": "OjIFQfXV3YW3ug3n", "userName": "CXhD7FUz1iOe0pHa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'UpdateUserV3' test.out

#- 245 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "0LmseIRXeoerZAxb", "country": "DPXU5xJBhIpJ9b0A", "dateOfBirth": "p7CmSiKPjcwAw5Gd", "displayName": "xpvLfa4b4hTaZBGd", "languageTag": "X66DqPTdurR3MYda", "userName": "0Y0BCO4qPnvxERWj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'PublicPartialUpdateUserV3' test.out

#- 246 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "Kasq5zQ6uZNwKjnX", "emailAddress": "7vDIqpcjmaq5KBCs", "languageTag": "HlwNrfKJrkzwR40t"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'PublicSendVerificationCodeV3' test.out

#- 247 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "fd9GFXChtxB10d4Q", "contactType": "8nlBthUSu4WNfTvD", "languageTag": "5UcES1eLMZs9lSQV", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'PublicUserVerificationV3' test.out

#- 248 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "SrEm5Y7jI232Sjkt", "country": "ijiNzTUe8KdizXmr", "dateOfBirth": "mK0sCUsqxKocHomt", "displayName": "joU1kUqRedwIu1TS", "emailAddress": "Rr6r8mzfMedpcKhv", "password": "HPlvYanGqEkn9OEV", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'PublicUpgradeHeadlessAccountV3' test.out

#- 249 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "rqRZ124P7PauXTrp", "password": "WAjwatSvtPbAFn8o"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'PublicVerifyHeadlessAccountV3' test.out

#- 250 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "WQcmFkkRX6EqadAE", "newPassword": "Izxld80Ynss7hc3V", "oldPassword": "UxxZIgkTLqMeJPCb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'PublicUpdatePasswordV3' test.out

#- 251 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    's8jWmTteJhwNbwHG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'PublicCreateJusticeUser' test.out

#- 252 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'G39YAZJ4HuLfeTfF' \
    'BTOFFMJ9pq511jZc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'PublicPlatformLinkV3' test.out

#- 253 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "TK8zmMfyshYk3b5c"}' \
    'AFVo85r1b8Yp2Qnu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'PublicPlatformUnlinkV3' test.out

#- 254 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'hQuIdvZdj6AspWBf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'PublicPlatformUnlinkAllV3' test.out

#- 255 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    'RnLcLbp7OmcrDJ7u' \
    '1rrRPcnG89rnNW1Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'PublicForcePlatformLinkV3' test.out

#- 256 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'jfn8lY4DnYRxY8Zh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'PublicWebLinkPlatform' test.out

#- 257 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'Heb0CaPFDjrSotKn' \
    'pJWALpToj9rgr5Rf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'PublicWebLinkPlatformEstablish' test.out

#- 258 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "fM5JXvPdzEpDln04", "emailAddress": "F8BQjzobhDa8VxKO", "newPassword": "rfVfBRIfkStOqdXq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'ResetPasswordV3' test.out

#- 259 PublicGetUserByUserIdV3
eval_tap 0 259 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 260 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    'hDMQ6tBLljC7gcT3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'PublicGetUserBanHistoryV3' test.out

#- 261 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'M1DArk4L80aXFY7S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 262 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    'Qkym9KvKMHK5fbqi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'PublicGetUserInformationV3' test.out

#- 263 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'oeoRIplY0DIzRCNA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'PublicGetUserLoginHistoriesV3' test.out

#- 264 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'O6ZpqXJmPJso6M11' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'PublicGetUserPlatformAccountsV3' test.out

#- 265 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    'LLZWKgWxn9YL16HQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'PublicListJusticePlatformAccountsV3' test.out

#- 266 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "dtAneXGgxNg33ZIU", "platformUserId": "rIkfmdXVvaPQzzKd"}' \
    'Fg7N7piT8VcrXLZn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'PublicLinkPlatformAccount' test.out

#- 267 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["uMNpKEIs3GC9VTK7", "tkJWFpHt7MdKu9Xw", "n5GHJDGatrYOMO91"], "requestId": "CYEjX867n9PT9fR7"}' \
    'mMuBXPDKCriRKzTZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'PublicForceLinkPlatformWithProgression' test.out

#- 268 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    '7TXAVRnUVbxEJcKH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'PublicGetPublisherUserV3' test.out

#- 269 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'E764EwhQfxFKIOGT' \
    '1WKSmLoA0ILaESC1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 270 PublicGetRolesV3
$PYTHON -m $MODULE 'iam-public-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'PublicGetRolesV3' test.out

#- 271 PublicGetRoleV3
$PYTHON -m $MODULE 'iam-public-get-role-v3' \
    'GJXsoBwqh0TQXa2j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'PublicGetRoleV3' test.out

#- 272 PublicGetMyUserV3
$PYTHON -m $MODULE 'iam-public-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'PublicGetMyUserV3' test.out

#- 273 PublicGetLinkHeadlessAccountToMyAccountConflictV3
$PYTHON -m $MODULE 'iam-public-get-link-headless-account-to-my-account-conflict-v3' \
    '7v3zQJoQLTAlW75i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 274 LinkHeadlessAccountToMyAccountV3
$PYTHON -m $MODULE 'iam-link-headless-account-to-my-account-v3' \
    '{"chosenNamespaces": ["cIKUpXazsFrmaGNo", "i3RPTgWotLNz0u8y", "SxA0yrjz4q7e0EJn"], "oneTimeLinkCode": "ADXC2y0DY1E1SMK9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'LinkHeadlessAccountToMyAccountV3' test.out

#- 275 PublicSendVerificationLinkV3
$PYTHON -m $MODULE 'iam-public-send-verification-link-v3' \
    '{"languageTag": "oA4vK56dsYI5SKV5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'PublicSendVerificationLinkV3' test.out

#- 276 PublicVerifyUserByLinkV3
$PYTHON -m $MODULE 'iam-public-verify-user-by-link-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'PublicVerifyUserByLinkV3' test.out

#- 277 PlatformAuthenticateSAMLV3Handler
$PYTHON -m $MODULE 'iam-platform-authenticate-samlv3-handler' \
    'pDANyJ184miBhdVJ' \
    't81fmLSyGuu5rbJV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'PlatformAuthenticateSAMLV3Handler' test.out

#- 278 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'IwRMtwApGbXnR3yC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'LoginSSOClient' test.out

#- 279 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    '6f2MHGGedk0KzXRc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'LogoutSSOClient' test.out

#- 280 RequestGameTokenResponseV3
$PYTHON -m $MODULE 'iam-request-game-token-response-v3' \
    'lOXdPYZQxBnttu4y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'RequestGameTokenResponseV3' test.out

#- 281 AdminGetDevicesByUserV4
$PYTHON -m $MODULE 'iam-admin-get-devices-by-user-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'AdminGetDevicesByUserV4' test.out

#- 282 AdminGetBannedDevicesV4
$PYTHON -m $MODULE 'iam-admin-get-banned-devices-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'AdminGetBannedDevicesV4' test.out

#- 283 AdminGetUserDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-user-device-bans-v4' \
    'W5etl4Xk8Hd1lRto' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'AdminGetUserDeviceBansV4' test.out

#- 284 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "PMvsu9oswEPTvzww", "deviceId": "Gnpbx8MCIjKzylqW", "deviceType": "8auyseP9wEEyYAnH", "enabled": true, "endDate": "ykRqSPYZgPm4JLsX", "ext": {"VtBOEetHsxAJ8Ny1": {}, "LRkPU9hrl5nkpEdB": {}, "e8bYWdok4UnUEOyP": {}}, "reason": "0cPZf5OvolfI0mqZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'AdminBanDeviceV4' test.out

#- 285 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    'ctohLheRaQkfMLFW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'AdminGetDeviceBanV4' test.out

#- 286 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": true}' \
    'TjF0pD3NHU8iYUOt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'AdminUpdateDeviceBanV4' test.out

#- 287 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    'G5gbQSKW2MdgCH4b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'AdminGenerateReportV4' test.out

#- 288 AdminGetDeviceTypesV4
$PYTHON -m $MODULE 'iam-admin-get-device-types-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'AdminGetDeviceTypesV4' test.out

#- 289 AdminGetDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-device-bans-v4' \
    'WxRF6fBPa6GOuV5z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'AdminGetDeviceBansV4' test.out

#- 290 AdminDecryptDeviceV4
$PYTHON -m $MODULE 'iam-admin-decrypt-device-v4' \
    '0p8jaJs2duQqawPr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'AdminDecryptDeviceV4' test.out

#- 291 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    'xi6F4elhy9CZ94CA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'AdminUnbanDeviceV4' test.out

#- 292 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    'UVW8FoEf8tjCjWc2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'AdminGetUsersByDeviceV4' test.out

#- 293 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"count": 100}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'AdminCreateTestUsersV4' test.out

#- 294 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["qqDfNz59jHwSDQHa", "dmAo0lzhPm7RmaOr", "6TLwVyE42ApAb7CK"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'AdminBulkCheckValidUserIDV4' test.out

#- 295 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "t79wAopZL9Cw6K9h", "country": "55mwUvhdBOgumV4w", "dateOfBirth": "Asd4ifGd0bkWrlht", "displayName": "fTywRW4fmg6btk3m", "languageTag": "AO4EtB0hn2x1oTOX", "userName": "5gBQlVDx9neFHWhD"}' \
    'RJtyYEt7ygZleAoU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'AdminUpdateUserV4' test.out

#- 296 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "uVKneoO10ytPdJ8S", "emailAddress": "Y3qoogOxoPYvdIBJ"}' \
    'YyGURjEjnslEYM8n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'AdminUpdateUserEmailAddressV4' test.out

#- 297 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    'gVT1ewVxvgAocOqs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'AdminDisableUserMFAV4' test.out

#- 298 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'd5v5n7eXCo9gZWdx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'AdminListUserRolesV4' test.out

#- 299 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["fIdW8fNAM5YdHivK", "2Q0WwolQy037hJMO", "Ev5W0v25yAObZIbr"], "roleId": "A8XAKKWMDebehSjp"}' \
    't0wrfWPXaI1Jb75o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'AdminUpdateUserRoleV4' test.out

#- 300 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["2MFOa6xgPt69QROG", "DeJCyHvUsnLvXCSg", "QHvs25eiQO3oWdgX"], "roleId": "dm1IxL1OtleUBqBO"}' \
    '0Ze049k9W6ZLVJzR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'AdminAddUserRoleV4' test.out

#- 301 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["pUsITfVruDukun42", "zPZvOd4yZyMKyED3", "qDO5HXp5oVkhESbH"], "roleId": "Q7hvTlzf7XwQtVIY"}' \
    'U87NgjDMcJxfMfYF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'AdminRemoveUserRoleV4' test.out

#- 302 AdminGetRolesV4
$PYTHON -m $MODULE 'iam-admin-get-roles-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'AdminGetRolesV4' test.out

#- 303 AdminCreateRoleV4
$PYTHON -m $MODULE 'iam-admin-create-role-v4' \
    '{"adminRole": false, "deletable": true, "isWildcard": true, "roleName": "3JvDgMiyBGygWFTA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'AdminCreateRoleV4' test.out

#- 304 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'Y3Th5mOwPCPKVPlO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'AdminGetRoleV4' test.out

#- 305 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'GfFBlu2ZP0IkiYXG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'AdminDeleteRoleV4' test.out

#- 306 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "oBmSLi0R7zDFMoNT"}' \
    'QmlS8lMlY8UjprhC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'AdminUpdateRoleV4' test.out

#- 307 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 49, "resource": "0QYycDH5we2Mx0sY", "schedAction": 58, "schedCron": "VhxCVdjPutJ8dkAV", "schedRange": ["OJ5imghdfVhjnjd6", "6A1SQmWGSQLAVPAJ", "7zX5lB80k2smdkBS"]}, {"action": 32, "resource": "MaIP7PjngEFggq91", "schedAction": 4, "schedCron": "hFvDlFd7iyZpvWVJ", "schedRange": ["FK6ZuvlzGCII156h", "Ig0g8HIxpzm9AcFh", "H4ZlYY3rEuHMWwQN"]}, {"action": 25, "resource": "byJPQ1qdRcJjsme1", "schedAction": 84, "schedCron": "RBQJH6fNekhk077g", "schedRange": ["xaj55huTA6AvmW05", "67BFqbrPIuxKmBXL", "i6GpnqAeMvg3w0FQ"]}]}' \
    '1520WM3TxWXSdTiK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'AdminUpdateRolePermissionsV4' test.out

#- 308 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 8, "resource": "tedgFUzBm5vGA3it", "schedAction": 75, "schedCron": "qgCG7JwJCDqkzOdF", "schedRange": ["wLJpIPxzLE1V9U1N", "gpH7Oc44yjRdfqZg", "v34GqqjelcN0GJmP"]}, {"action": 47, "resource": "dSDd99DQZ7vnTx8H", "schedAction": 61, "schedCron": "rqSn4erXEtU1CaD8", "schedRange": ["AqsMCGBNhmUt6fzY", "Rn85brTu8F7cuCPh", "1TGZJmgWNHWnvOBR"]}, {"action": 59, "resource": "dE2FMcKd7c94rEmI", "schedAction": 14, "schedCron": "uAT5OAcUwYHGmG5r", "schedRange": ["NDBF1oU37vjfyX5Y", "LaM0wmi0i1WABBbq", "8IzZsMFLX9ZhFXcF"]}]}' \
    'tfBS3ZIHofhwyM6B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'AdminAddRolePermissionsV4' test.out

#- 309 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["w2sFGQ5DQoDwzrKP", "OZZnV3zR7YxSu6ad", "docg10Hy9jx7gBHT"]' \
    'OHHArjld0LnREsrr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'AdminDeleteRolePermissionsV4' test.out

#- 310 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'B2pJ7V8BSrucjO3z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'AdminListAssignedUsersV4' test.out

#- 311 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["vSM5KeVNHU9GcOiv", "IfcCJt4U8VSgXoi9", "Fw25b9qXzlIK2G6A"], "namespace": "UjBCdf0Rp5e5IvFu", "userId": "N1oUsCnBmGMx5F6E"}' \
    'hM3dKvIG9MR0hTIN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'AdminAssignUserToRoleV4' test.out

#- 312 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "vq1VR9SJUfQEX996", "userId": "Mh1sQ3Dw3uyjgQNA"}' \
    's9188Qm3W1De2McG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'AdminRevokeUserFromRoleV4' test.out

#- 313 AdminInviteUserNewV4
$PYTHON -m $MODULE 'iam-admin-invite-user-new-v4' \
    '{"assignedNamespaces": ["d10wefF0CJlH55RL", "EgeAsSpQdcmGHZuR", "VQ8tzwqMayP8A3HG"], "emailAddresses": ["NI3BfjkFd6MHo6gG", "Q5mChYoKD7yqCR03", "RovQZhwfjkq9iyTb"], "isAdmin": true, "namespace": "2yBJeCJghTrk68FW", "roleId": "FzuLBdlrKjUbgZQf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'AdminInviteUserNewV4' test.out

#- 314 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "w6Zys3mN8fIcC9Ck", "country": "harfqaoMsGyv1RuS", "dateOfBirth": "NdycDssUeHiVDXzS", "displayName": "J8kbFAyidbnXdMSw", "languageTag": "mkBkKC1h6h45u0wu", "userName": "h9pY0011jSmHFTtf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'AdminUpdateMyUserV4' test.out

#- 315 AdminDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'AdminDisableMyAuthenticatorV4' test.out

#- 316 AdminEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'AdminEnableMyAuthenticatorV4' test.out

#- 317 AdminGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-admin-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 318 AdminGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'AdminGetMyBackupCodesV4' test.out

#- 319 AdminGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'AdminGenerateMyBackupCodesV4' test.out

#- 320 AdminDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'AdminDisableMyBackupCodesV4' test.out

#- 321 AdminDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'AdminDownloadMyBackupCodesV4' test.out

#- 322 AdminEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'AdminEnableMyBackupCodesV4' test.out

#- 323 AdminSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-admin-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'AdminSendMyMFAEmailCodeV4' test.out

#- 324 AdminDisableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-disable-my-email-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'AdminDisableMyEmailV4' test.out

#- 325 AdminEnableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-enable-my-email-v4' \
    'M2mGUUpq3ix7Am7W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'AdminEnableMyEmailV4' test.out

#- 326 AdminGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-admin-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'AdminGetMyEnabledFactorsV4' test.out

#- 327 AdminMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-admin-make-factor-my-default-v4' \
    '1fwJnV94BrMSP31w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'AdminMakeFactorMyDefaultV4' test.out

#- 328 AdminInviteUserV4
eval_tap 0 328 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 329 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "Tfh9gEs6GF247cbB", "policyId": "LjUr5z03wxB3E9hr", "policyVersionId": "E9f9COFrOr6wJDBw"}, {"isAccepted": true, "localizedPolicyVersionId": "CvjRKKX1brmkJDfd", "policyId": "ngbQD3pO8U3W94Z8", "policyVersionId": "IW2MAL9gYHEV3wnT"}, {"isAccepted": true, "localizedPolicyVersionId": "TvYYf4ZFuV6L2Ald", "policyId": "oWWRN5wNYlFiliYm", "policyVersionId": "BrqrOc0NIligBrOk"}], "authType": "EMAILPASSWD", "country": "imu6XFfRcWDXhq1Y", "dateOfBirth": "mGeygr2S4Yw8NmPa", "displayName": "BeryzX2hOPVVFqVq", "emailAddress": "xjq1iG3TySOh8SI7", "password": "5oXbyq8FBbur80Qw", "passwordMD5Sum": "nlgAVfqz6gQJh8sn", "username": "0bVWRkvmAemh8lio", "verified": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'PublicCreateTestUserV4' test.out

#- 330 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "R7xTXcEIFod3lCzv", "policyId": "jHzDHOrSJ1vbB7LR", "policyVersionId": "Hd96dGLgkfrZveFM"}, {"isAccepted": true, "localizedPolicyVersionId": "AFT7l0l1jaOAMCzb", "policyId": "soIgmKwwMDQPjUIo", "policyVersionId": "sq1l6xo0D4JRbNqO"}, {"isAccepted": true, "localizedPolicyVersionId": "m71EC3ENuvD8OPsp", "policyId": "5Z3ez84KVB7HeWPn", "policyVersionId": "VeFdy5ezlCU6SGzk"}], "authType": "EMAILPASSWD", "code": "pTL2wxobjxAbagqE", "country": "mXn6U2VeV2emK3Je", "dateOfBirth": "cJA4skqCbPxRkIAF", "displayName": "Qh9yDdoLE2s7mrVr", "emailAddress": "mTJwtBTzQTrNo1Lc", "password": "WNf7xHpi1JZJjIRt", "passwordMD5Sum": "CfqDHSlo54zSnRN0", "reachMinimumAge": true, "username": "Av5DAG8dPdkKgQqj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'PublicCreateUserV4' test.out

#- 331 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "ic9AQOFWpdItLBhv", "policyId": "KJq9tWz9yui8a6jO", "policyVersionId": "flFJlZEhz1QDeh05"}, {"isAccepted": false, "localizedPolicyVersionId": "5on065ApCkVN3Qch", "policyId": "uQ6pntxB648ss7rB", "policyVersionId": "nvQHAM8gSdIybKUB"}, {"isAccepted": true, "localizedPolicyVersionId": "A9Umz3KPICya5Fk5", "policyId": "TPaEbX29cV8v7MXc", "policyVersionId": "tihtxMnIr4b7jyfL"}], "authType": "EMAILPASSWD", "country": "7ICcaQtuuKUw3dUw", "dateOfBirth": "WHhQW3I1y9tjRLVO", "displayName": "XBMa0JiIe1AY0tUA", "password": "7EKASk3USNLhOBlx", "reachMinimumAge": true, "username": "cYqwfIHPWMkOmrT5"}' \
    'HL16jMwECnmwJv4r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'CreateUserFromInvitationV4' test.out

#- 332 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "pqtzDaz0WUJlBCHz", "country": "J2v9K8c1zOlZg30p", "dateOfBirth": "agfP0FfOMBOpeQT4", "displayName": "zYIbU4i9mLyX46Al", "languageTag": "t08rrnG8y2ScXkwj", "userName": "pAp82pGcxvXaG9Lz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'PublicUpdateUserV4' test.out

#- 333 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "HpMS53jllopwirRo", "emailAddress": "3A8WxnR0YaMsF3f5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'PublicUpdateUserEmailAddressV4' test.out

#- 334 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "KLtpTSsPMGDZTOwE", "country": "P5Bhh0NStWIggmhf", "dateOfBirth": "AzVdNYP7Ao1z7FeJ", "displayName": "M2fWXGk7JObSHksR", "emailAddress": "kabpmvRsc7ZYvXCT", "password": "6m6mRZAlLBczJVei", "reachMinimumAge": false, "username": "VVMGkXNwMYwFyljy", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 335 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "bYQdQ87hUHA0FJZw", "password": "P8GslMpx3m7lEXTm", "username": "nTbtjK9RsyoqT3ad"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'PublicUpgradeHeadlessAccountV4' test.out

#- 336 PublicDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'PublicDisableMyAuthenticatorV4' test.out

#- 337 PublicEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'PublicEnableMyAuthenticatorV4' test.out

#- 338 PublicGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-public-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 339 PublicGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'PublicGetMyBackupCodesV4' test.out

#- 340 PublicGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'PublicGenerateMyBackupCodesV4' test.out

#- 341 PublicDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'PublicDisableMyBackupCodesV4' test.out

#- 342 PublicDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'PublicDownloadMyBackupCodesV4' test.out

#- 343 PublicEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'PublicEnableMyBackupCodesV4' test.out

#- 344 PublicRemoveTrustedDeviceV4
$PYTHON -m $MODULE 'iam-public-remove-trusted-device-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'PublicRemoveTrustedDeviceV4' test.out

#- 345 PublicSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-public-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'PublicSendMyMFAEmailCodeV4' test.out

#- 346 PublicDisableMyEmailV4
$PYTHON -m $MODULE 'iam-public-disable-my-email-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'PublicDisableMyEmailV4' test.out

#- 347 PublicEnableMyEmailV4
$PYTHON -m $MODULE 'iam-public-enable-my-email-v4' \
    'B48Jxp2zaItg9jTN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicEnableMyEmailV4' test.out

#- 348 PublicGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-public-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'PublicGetMyEnabledFactorsV4' test.out

#- 349 PublicMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-public-make-factor-my-default-v4' \
    'ZvpFEUI21aSaIsMy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'PublicMakeFactorMyDefaultV4' test.out

#- 350 PublicInviteUserV4
$PYTHON -m $MODULE 'iam-public-invite-user-v4' \
    '{"emailAddress": "LKPPIZx0zdNAagip", "namespace": "ZwiaBrFrXtGMjujf", "namespaceDisplayName": "HZB1gMI1B8DXb37D"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'PublicInviteUserV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
