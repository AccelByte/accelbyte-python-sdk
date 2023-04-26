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
iam-admin-update-input-validations '[{"field": "EAxcVpFrttufHIRd", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "blockedWord": ["W0Oaiw9B0D7eHpzS", "n3ZPUdc0qh4n8mzZ", "0m8SAMTwE6I56IaR"], "description": [{"language": "DBXxyaNoMR6hkspI", "message": ["nrAip6lyzSxwElFH", "Hdgs21Jub74CUkNm", "KJfh5pUkHODpoMF7"]}, {"language": "8NY4YkHs1cnz1JSD", "message": ["gY1TXp38zsCTCrbC", "bPOyNQkT7NvyE3cw", "yALczNIicXm7agSr"]}, {"language": "jJW2OQNOs1PXhT5F", "message": ["vdiRilZ7oFgx4c8O", "umKtPDKJDXn7Z4U6", "8su8XfqlqNiTvB6S"]}], "isCustomRegex": false, "letterCase": "AorKsxwkosAVerXp", "maxLength": 5, "maxRepeatingAlphaNum": 17, "maxRepeatingSpecialCharacter": 58, "minCharType": 36, "minLength": 88, "regex": "fwHuKeb9l3rGN9A3", "specialCharacterLocation": "sNm84hddSpHt0P7M", "specialCharacters": ["IIR7CkyF6C7duuyZ", "0GhDogqrhBRd8lDR", "6qVNPRZYdFLIAjGG"]}}, {"field": "JddVCvu9vx5KQ7KY", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "blockedWord": ["uI9a2I9u6Vpbsx5w", "8hqUI06UpOXGSLmC", "VuHOPlLlkvR8sKgn"], "description": [{"language": "uRkgghGoYupD391C", "message": ["2qtPYokahFjkQsfC", "aTmt1d67FXGk2s9Q", "0mPVo3twu0MesTCf"]}, {"language": "9x4rt69lna7qxNeI", "message": ["xPz6MbwL6IY69z1U", "aLqYSYWytLPziZMd", "jxcBZufQxGiHPllG"]}, {"language": "4cYEzfTD1ZBm3MqH", "message": ["cUmLZZbSqb8RwNmn", "9HrNQy4uZAAiE0mi", "t9RGCCHYzUOcEdsc"]}], "isCustomRegex": false, "letterCase": "PEqgA8yu7Vk6Jt4Y", "maxLength": 25, "maxRepeatingAlphaNum": 16, "maxRepeatingSpecialCharacter": 30, "minCharType": 38, "minLength": 44, "regex": "9Jcdos4fYcTVU6RB", "specialCharacterLocation": "t0zYoMcHyCUEXlAv", "specialCharacters": ["xJMdalwSyliWMNW5", "NyLu0M3VHh2EI8Jl", "DbPWbQ6Q9lNmqRBa"]}}, {"field": "AkLnvxkT1X68cmDc", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "blockedWord": ["8MyKrQpM4hkkK6KK", "XNB3Gv0IqmF51Tkh", "jYnaq6foWvXa3bMr"], "description": [{"language": "XsDr6kILsSSyDdmy", "message": ["kmoPYgc2L4jk4Lo0", "LSP0pf4IxjUkl535", "X3ateEKDpADz1x3p"]}, {"language": "oD3Qgb3boLQQ1MzH", "message": ["7Qm8bwbmXgdAPh1E", "ThG96gAFKK2WDgCc", "xvONZm3EeERmDnye"]}, {"language": "FoF7VSZ6pf3vneSD", "message": ["2Tb3g7mSQUhAEtrm", "jqU6YE3p4lSck0ZH", "n5GI39YBHqaTHeKt"]}], "isCustomRegex": false, "letterCase": "8iGeUlc9d9sogWa2", "maxLength": 61, "maxRepeatingAlphaNum": 59, "maxRepeatingSpecialCharacter": 76, "minCharType": 76, "minLength": 80, "regex": "7vIYhGGSyEW4ZJJ4", "specialCharacterLocation": "2d3PBddN8S48l9ly", "specialCharacters": ["NApflxqMrj3oZk03", "QXcKMDYDDxHSZjtq", "XyJ58f7Gc26SaiGV"]}}]' --login_with_auth "Bearer foo"
iam-admin-reset-input-validations 'kydwYWQG26yUZNmT' --login_with_auth "Bearer foo"
iam-list-admins-v3 --login_with_auth "Bearer foo"
iam-admin-get-age-restriction-status-v3 --login_with_auth "Bearer foo"
iam-admin-update-age-restriction-config-v3 '{"ageRestriction": 57, "enable": false}' --login_with_auth "Bearer foo"
iam-admin-get-list-country-age-restriction-v3 --login_with_auth "Bearer foo"
iam-admin-update-country-age-restriction-v3 '{"ageRestriction": 5}' 'pFDcSDG8aMVGLiBN' --login_with_auth "Bearer foo"
iam-admin-get-banned-users-v3 --login_with_auth "Bearer foo"
iam-admin-ban-user-bulk-v3 '{"ban": "rDjqoxcwgGLXpUL4", "comment": "pp2ncYAHdNzDmeIP", "endDate": "6rOvDz9KOsb392k6", "reason": "YmJFfRByjlBiuFM3", "skipNotif": false, "userIds": ["oVk8T3GpAnkCmBUq", "g2SCnqntX9y1aZSW", "MiVi10sG6vxkfUcm"]}' --login_with_auth "Bearer foo"
iam-admin-unban-user-bulk-v3 '{"bans": [{"banId": "qRRbceJ5i0EeDxOg", "userId": "BnhhqElIaDml48wd"}, {"banId": "NFLTm5T50x9WT0Gf", "userId": "H2rtOa4EXsXzOXQA"}, {"banId": "k4mqrxzTtuLl4Xlb", "userId": "GL8QOxtjzm8y2wNh"}]}' --login_with_auth "Bearer foo"
iam-admin-get-bans-type-with-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-get-clients-by-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-create-client-v3 '{"audiences": ["mwoYZyI4EFZKBcYr", "CEAE7WIsfmx40NLR", "c6m8heKnWhzfe2Nu"], "baseUri": "beoKFeIaFQCYoDPI", "clientId": "CpnduEEQlULdJz4m", "clientName": "nRBkMNxvvKgAT8mJ", "clientPermissions": [{"action": 36, "resource": "AgIUXiI07A68eaqC", "schedAction": 4, "schedCron": "J9jyEW6GLbc0NaKD", "schedRange": ["UL3sa13lk1dQBHO8", "6IlBhnetU4RwTqUX", "lTDBzOuYsaZA2yyd"]}, {"action": 37, "resource": "mbqoOfADMMAXFaY9", "schedAction": 9, "schedCron": "C9XIBudfZgrbHDID", "schedRange": ["m4hMzF4TxodenSrU", "TvfqU0bfoMm5cTtF", "WbotQyXJRcQWsmqP"]}, {"action": 81, "resource": "mDg7VYPXIuvUYTZB", "schedAction": 89, "schedCron": "reSvf9699mCEHThU", "schedRange": ["JkETAsSp7gh4TeUT", "kOkAYfJB8AT9t4Tv", "207Y2QD3oD5fLCr3"]}], "clientPlatform": "OOlXVv8ZGF7uYnGz", "deletable": false, "description": "zGYY7KQI1AeFgPqa", "namespace": "Okvo1aolB4lkKB4E", "oauthAccessTokenExpiration": 20, "oauthAccessTokenExpirationTimeUnit": "OkQ1jMD3cym8xIfk", "oauthClientType": "OVW2grREOLx0KOww", "oauthRefreshTokenExpiration": 55, "oauthRefreshTokenExpirationTimeUnit": "HICQLfl7MUBG7qtP", "parentNamespace": "u64yAtURKLRkb738", "redirectUri": "HGS6rDgMdIIlhS1f", "scopes": ["SiM9331m7Ta1PsKc", "50Kv6ecnEevcAx2K", "2zkRenmPZnGBt4P7"], "secret": "WnbdSJtjX7ZshZyZ", "twoFactorEnabled": false}' --login_with_auth "Bearer foo"
iam-admin-get-clientsby-namespaceby-idv3 '2rIizGdKvOPdq5xr' --login_with_auth "Bearer foo"
iam-admin-delete-client-v3 'gxSmy1DN9LFkYW5D' --login_with_auth "Bearer foo"
iam-admin-update-client-v3 '{"audiences": ["Qyj4bj5Ro2ogaKt2", "ujQSa3Zdb65UXmy0", "Zp6iIaTIKUkmkk9Q"], "baseUri": "M0NBMA9ORxpzwLR2", "clientName": "AK6eXUGPJsw1fiP8", "clientPermissions": [{"action": 37, "resource": "G9Pclxcft2ulIJzP", "schedAction": 51, "schedCron": "rQDXuNFviMarv8mn", "schedRange": ["fHK8CCmE2lPnsbD3", "SGEdlwuUccE536ug", "Bp3HBvepnDCjgyJl"]}, {"action": 100, "resource": "e36mgWjLfFmteue9", "schedAction": 26, "schedCron": "zKsDwG2omOR2nvYI", "schedRange": ["9TVqJdvzcWbfUpaX", "p5JMl5LL4bTxBmZj", "drrIxsB0NRsB1fPq"]}, {"action": 33, "resource": "WwNTAhd2wrS0uPdj", "schedAction": 14, "schedCron": "WwRVnwVBOqOHi8pW", "schedRange": ["Gd1juYhiqjRJOqB5", "F93zFQbJndUDpdON", "neAczbBdHb2slt71"]}], "clientPlatform": "B1SmZp2JZp50CnPb", "deletable": false, "description": "1ORYcmQbTU5JX8cc", "namespace": "LjMXJRk0eaKQDOJv", "oauthAccessTokenExpiration": 36, "oauthAccessTokenExpirationTimeUnit": "xi4YKlONk2Q5Y4Jv", "oauthRefreshTokenExpiration": 0, "oauthRefreshTokenExpirationTimeUnit": "aCNYIWekp18lOC3m", "redirectUri": "NqF7Bl0LcghVHfPE", "scopes": ["spxwhRON0bc1eMbE", "IjowLqc3ecjXJbZD", "KKoxLE1Y3Dymtj3g"], "twoFactorEnabled": false}' 'rYaT5hOPjaf3H0tY' --login_with_auth "Bearer foo"
iam-admin-update-client-permission-v3 '{"permissions": [{"action": 18, "resource": "hkg1yLVbLFzHEP8c"}, {"action": 78, "resource": "SiPW3VgsZXiR1DJ7"}, {"action": 69, "resource": "2WKi6tArAURt9plC"}]}' 'SVq8PdH6hJPUAc0R' --login_with_auth "Bearer foo"
iam-admin-add-client-permissions-v3 '{"permissions": [{"action": 97, "resource": "AXI66bQ71w0deoV9"}, {"action": 77, "resource": "i6BqPg4xr0lCancU"}, {"action": 51, "resource": "GCHsZYoLfR1KtOv7"}]}' 'Zy0b65uvuKNuy0yt' --login_with_auth "Bearer foo"
iam-admin-delete-client-permission-v3 '0' 'Q7M6Nzy1adnSKOLF' 'Kx1dX4LuWJu3pDMU' --login_with_auth "Bearer foo"
iam-retrieve-all-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-sso-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-third-party-login-platform-credential-v3 'AeeZ97SBROPYuG6X' --login_with_auth "Bearer foo"
iam-add-third-party-login-platform-credential-v3 '{"ACSURL": "qP6oo7G73zdxTgOf", "AWSCognitoRegion": "nwIdlNa29fDLh741", "AWSCognitoUserPool": "IslKHzGlLKWUtDQs", "AllowedClients": ["61OQAoxyyQpRWCii", "PDGQhNPEwiJCf2XJ", "VrlzqQls1ozhLVA3"], "AppId": "kE8jKvgatOEBM70T", "AuthorizationEndpoint": "dlNBJYOmpu1VCarz", "ClientId": "BsV6xnZ5Jrzzjrca", "Environment": "ug6CWVG8SWP3glU6", "FederationMetadataURL": "muswVJnNnN7kAa7j", "GenericOauthFlow": true, "IsActive": true, "Issuer": "garAdNJOIG36I6tR", "JWKSEndpoint": "bRcrEveMdAdiPKDU", "KeyID": "VSC00PYeDcagginx", "NetflixCertificates": {"encryptedPrivateKey": "nFIna3yddcbsPheT", "encryptedPrivateKeyName": "H26IUJNvYuGRUvpZ", "publicCertificate": "aHCuESOiIZsMfB4Z", "publicCertificateName": "H3mtgWgU4pCAKxeE", "rootCertificate": "70CaunQNxot371W9", "rootCertificateName": "G4AvQkqsGnmyo5JJ"}, "OrganizationId": "TUVmb8GEXFTlEMEs", "PlatformName": "FzYqwgK1Np5nodqp", "RedirectUri": "Lm7FhJBNXzAFdO0K", "RegisteredDomains": [{"affectedClientIDs": ["hqf6kiTdSGv2LFjA", "KY7CbgsWqFWZX7kP", "Bom8F9GLLTG8phc3"], "domain": "n4iLoIllKlpO2pqi", "namespaces": ["XJF3WGRaoQomSJC4", "DdrKF7SUQPLG59e0", "k5ZtX6wK7PpUlcIW"], "roleId": "32iK7MGt1ixY5rA1"}, {"affectedClientIDs": ["WoVeJIePF8ZrQzP4", "zvtdxdbZUpd6FJtH", "J1pyVwyKQLY6FEO6"], "domain": "5Rb3z7CYLM8IlsHq", "namespaces": ["ffnrfsGlfPaZKBwa", "3Ddb60ufPpzwj1QG", "IFmlVf4jvapseE9L"], "roleId": "N9bvhOrHflIOd6X3"}, {"affectedClientIDs": ["viLvtEk4mTIpUA9g", "xo8SV38nEhoXmM2W", "7l6jHMA2rG3nakop"], "domain": "Aywelu01nryEJ0Nq", "namespaces": ["oTow0qiOiC4j0ikt", "m0ZPLkLOsp0LZ5nj", "N86Hl8kUXzt6bSc6"], "roleId": "bWvgpVyW9dD1kOmv"}], "Secret": "rAejcq2LgkQuaS7R", "TeamID": "Bx3vim02jBOxrZDy", "TokenAuthenticationType": "vpcLYOWA8NjxOnaE", "TokenClaimsMapping": {"ok4nOOCzfsflhjbn": "gJOUn18G5MlfDTk8", "aG40NlncceIZSwgA": "Ikgzh4pTU0Am4DZh", "l0bQxFJ3sWCqQpQ2": "FbKPFMycMSQ4qfAa"}, "TokenEndpoint": "cR0LgB5BUXvjcu2s", "UserInfoEndpoint": "6w3VifnKqmTSoGH1", "UserInfoHTTPMethod": "XEfY6QAYn6WQ5UBE", "scopes": ["U1QAOHfZiGhxOdcu", "DXSxSc3aZPV87pna", "08gxefTYKhuxaEc7"]}' 'M4P7UckSC6ePeN8i' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-credential-v3 '4GrFES9z7xueHpAT' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-credential-v3 '{"ACSURL": "Hccee9GXhKcjmSEw", "AWSCognitoRegion": "drkEnnqKzFsLfYal", "AWSCognitoUserPool": "UlfwEQKjU7eHGebS", "AllowedClients": ["Vu0LQ40kepEaC4df", "iOMZfEhHr39pysFO", "3Zvc1BZG99LyvfvH"], "AppId": "EsJKQQewVLMUoAna", "AuthorizationEndpoint": "RcYp7FUjfIGaffof", "ClientId": "lEIByYqeKN0meGel", "Environment": "YF5wWaDhukU4khGG", "FederationMetadataURL": "4vZFTYnPkmSu4PWa", "GenericOauthFlow": false, "IsActive": true, "Issuer": "1jxR7SETWjteoc8f", "JWKSEndpoint": "gvZDDhoO05oKqymx", "KeyID": "LD1Lcvw6T6mZEiwx", "NetflixCertificates": {"encryptedPrivateKey": "xElpMYSWIeVzm7z9", "encryptedPrivateKeyName": "noowmlTIKVowi0RY", "publicCertificate": "2VN4ZONJREdUQ3z9", "publicCertificateName": "F1BxNNgnke4akncw", "rootCertificate": "7wu9TmXfJWBPrx9N", "rootCertificateName": "s8eLzYEvwSWTaLQj"}, "OrganizationId": "ctvrK2jhsYpKPlXn", "PlatformName": "77AtYoFzLAATPY8P", "RedirectUri": "8P3cfoivvQxevecW", "RegisteredDomains": [{"affectedClientIDs": ["w7Rry0KK5rgAGO0d", "W8rX2MVUGKSZ4GcL", "kt4pK32sJxlZcCTp"], "domain": "TdRtCHvuk6B6XTmS", "namespaces": ["Lyn50sigBVZxiKdV", "57GvRyd9UuL02Le8", "HSCslsDd4M1F5qRI"], "roleId": "blS7Nz81GRazPAAN"}, {"affectedClientIDs": ["jfBoldFOyqA2clJ5", "gEOaCgM6Yn6RugbN", "EIpGBFUjOn5mM7k8"], "domain": "nbLzvtCIW5ynMKqu", "namespaces": ["UicAeIVXtoWAXhMl", "W4tLqX7OICf5oD1e", "6oI9FmYel0kOw72o"], "roleId": "8Zkgk0jS6rDWUwfh"}, {"affectedClientIDs": ["Kvrf2AaH4yCWrHSp", "pnIZkNnTn3rzH5Nv", "AtcvNedgS1fUfKmi"], "domain": "hDbmu8ePWlQMVDXE", "namespaces": ["HeiGTnwyEw6hIWDZ", "rpP7rz3ISW510kHr", "4isTKWjmv67nuHCX"], "roleId": "WfwnwGioVwVzmmBV"}], "Secret": "VFfpqx1AeLtzcPJ3", "TeamID": "jtDYBo4FUTH7CGfK", "TokenAuthenticationType": "SyxgRR1DiCqSMzpq", "TokenClaimsMapping": {"IFGLkDs7ACC1RgBf": "oNrHlFi2qJLgmBLE", "35YhyiDV90SeI5yp": "pBHoytVznCgNyx9f", "bT63ShEh8PbGikLj": "gjcj34uulU6FYBZs"}, "TokenEndpoint": "WFbr3RSP0W9nBhvh", "UserInfoEndpoint": "f8Q0DtJMcYQdN66b", "UserInfoHTTPMethod": "swAgt65X4N1LQZmB", "scopes": ["61JMdtwCVUrYQue8", "4dwmbwFEnAZaWsQJ", "tRYoagRJK5PX9UcO"]}' 'vhPyE11TRT2SKseo' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-domain-v3 '{"affectedClientIDs": ["e8VLie0LBa36KNzj", "f005CXNGehQ2aTjT", "DfKFDXC7eGL5YhJD"], "assignedNamespaces": ["Wh9YWqc0qgV6d9yO", "fIMLds2DbPcaoMdt", "RLTmSvTkQQgB7exY"], "domain": "vmHMxr5hPCJJztJB", "roleId": "g0tTJg46IewOXE2A"}' 'kCh3QIZsUf8lGFXc' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-domain-v3 '{"domain": "mwTERHclOdxIwqej"}' 'xe18rNdb8Otq6j1m' --login_with_auth "Bearer foo"
iam-retrieve-sso-login-platform-credential 'qUav7k05HAQltnSo' --login_with_auth "Bearer foo"
iam-add-sso-login-platform-credential '{"acsUrl": "jV4jT65yclX2FtAz", "apiKey": "0vJjFIYWOaNdsimm", "appId": "kW2miH3xRHAKy4Qx", "federationMetadataUrl": "ZkaXZ7vmiEd0JPxV", "isActive": true, "redirectUri": "s3ztUIV0dS6hIH9c", "secret": "4VfkyrwpuXxbaERb", "ssoUrl": "fgPmi0eHkt1mr9EO"}' 'IFg0dnWIYN2NVL70' --login_with_auth "Bearer foo"
iam-delete-sso-login-platform-credential-v3 'Iw157g00jr9b8MuY' --login_with_auth "Bearer foo"
iam-update-sso-platform-credential '{"acsUrl": "mmeKTmBNvGYxEQdf", "apiKey": "3ewoGGoY7xmFNAmj", "appId": "DDCvs78mcMdiS76Y", "federationMetadataUrl": "ApGJ9ufwLYkqIgLu", "isActive": false, "redirectUri": "hsQryiEtOAbpeUNf", "secret": "26UqkCfgCUYBn2xa", "ssoUrl": "OBdPF0JmX8qwU1cT"}' 'uHHPB5S3DvPRCzBr' --login_with_auth "Bearer foo"
iam-admin-get-user-by-platform-user-idv3 'VUxmDOj3cvRFaTC1' '1W0TGTCm4fZWuk6p' --login_with_auth "Bearer foo"
iam-get-admin-users-by-role-id-v3 'QxDQpKqxLGeMvr9T' --login_with_auth "Bearer foo"
iam-admin-get-user-by-email-address-v3 --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-user-i-ds-v3 '{"userIds": ["svcMQ7dBsaIecRxI", "sZvD6rmzVr5XT1Nx", "w0v1dMQ9Rrbk6C2c"]}' --login_with_auth "Bearer foo"
iam-admin-invite-user-v3 '{"emailAddresses": ["VWf6ttvbU1PO6ApC", "D2VXidT7w0Oc15N8", "WXBPp17PAewqSm5x"], "isAdmin": true, "namespace": "B4t7WQnp8jXZedgt", "roles": ["5cyNe27HLtwtVOax", "gP6Jbct8puMybYGx", "D9IPmmsLmu3kaPj0"]}' --login_with_auth "Bearer foo"
iam-admin-query-third-platform-link-history-v3 'O4zd8Tb7cUNGPTBx' --login_with_auth "Bearer foo"
iam-admin-list-users-v3 --login_with_auth "Bearer foo"
iam-admin-search-user-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-by-email-address-v3 '{"listEmailAddressRequest": ["iFFCrn7djjs69FTF", "VGUVhvKhJCmeisql", "14mUHVbMPimNhcZs"]}' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v3 'U3VAdMDcb4qlkiFA' --login_with_auth "Bearer foo"
iam-admin-update-user-v3 '{"avatarUrl": "amqvZI2KwjqPBiWX", "country": "ade41s3rH34mB2yP", "dateOfBirth": "lRpWjmHZAAvKTH8M", "displayName": "uqIg0CzkguwuJCW7", "languageTag": "EEFB67AODbi9Bzup", "userName": "BsFpYc77GtRUcCFe"}' 'Y5g4XgBsbfzqxBPN' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v3 'e8ae1Il4aAtEbu4I' --login_with_auth "Bearer foo"
iam-admin-ban-user-v3 '{"ban": "jGdqthRxTjQ7gkZE", "comment": "Y8rG0q0Q2Qd2JzRb", "endDate": "kF2I03dIjvBbA6bf", "reason": "bYaJCJjfk2TUvn95", "skipNotif": false}' 'tU6TDm5GloFSKWM1' --login_with_auth "Bearer foo"
iam-admin-update-user-ban-v3 '{"enabled": false, "skipNotif": false}' 'ym5ydC6p25xCWTqU' 'OYZENJ1QHZQxPRXH' --login_with_auth "Bearer foo"
iam-admin-send-verification-code-v3 '{"context": "7uxBJEECQE1li3Bg", "emailAddress": "7Jxc9pUnZmvhidwC", "languageTag": "kZwqjYLfTiCO1NDB"}' 'vQvRPnAz4VzW0Cpo' --login_with_auth "Bearer foo"
iam-admin-verify-account-v3 '{"Code": "BCbyJsF5IjF1c0W3", "ContactType": "38HS6CBgVRyihYNZ", "LanguageTag": "84CVhziXV8HwSmvc", "validateOnly": true}' 'cA8wvLsWUNd6lPKv' --login_with_auth "Bearer foo"
iam-get-user-verification-code 'qDejvqklTSvDwuOr' --login_with_auth "Bearer foo"
iam-admin-get-user-deletion-status-v3 'P9lzpiX0VuFpZum7' --login_with_auth "Bearer foo"
iam-admin-update-user-deletion-status-v3 '{"enabled": false}' 'fHgKjI9mwJSrN8jk' --login_with_auth "Bearer foo"
iam-admin-upgrade-headless-account-v3 '{"code": "IykR2zbaI6PD7fEs", "country": "cShnGUGUtV9GJ279", "dateOfBirth": "GDbLNwjm3FK0nnX2", "displayName": "poMfZ1hDHtbh4HtM", "emailAddress": "lFgvh2Dp2SoiIPp1", "password": "yvfAHS0VgLu11A3H", "validateOnly": false}' 'ovFi4tPAGfleyCA6' --login_with_auth "Bearer foo"
iam-admin-delete-user-information-v3 'jEtcqsnzoVILjkwW' --login_with_auth "Bearer foo"
iam-admin-get-user-login-histories-v3 '61duF87aUyrdt4XS' --login_with_auth "Bearer foo"
iam-admin-reset-password-v3 '{"languageTag": "pWBAetsanzqP8oxf", "newPassword": "rtbECD1CYPwaiBAx", "oldPassword": "fYL8Avt70ZUT2fSk"}' '3LL0calqxEewuGS4' --login_with_auth "Bearer foo"
iam-admin-update-user-permission-v3 '{"Permissions": [{"Action": 83, "Resource": "9k2hG0WKt4sUmanY", "SchedAction": 47, "SchedCron": "CrRb9gUCeVz7fWbZ", "SchedRange": ["IdhevfZvyV7Acodc", "ZwKjYDdmJOlzwm9S", "u4FnS98QqftSjq7s"]}, {"Action": 27, "Resource": "vDLil8wj9cKM3Ar6", "SchedAction": 80, "SchedCron": "GpO6JgehDJxEN7Jl", "SchedRange": ["Zc8LMq1o2jZWu4yA", "3r0u4q1bTHXIjfJK", "yFlM0u1uuoVdn9yV"]}, {"Action": 30, "Resource": "OJf5KwMZQjzvjSoz", "SchedAction": 44, "SchedCron": "GPGdqLE8SohhhuiT", "SchedRange": ["nJarYYkHBDdSzBXd", "xapwhd5IQYBQuxLv", "PuWYvE3fsNy9Z9Oh"]}]}' 'xXvCp9y7fLD2qfCX' --login_with_auth "Bearer foo"
iam-admin-add-user-permissions-v3 '{"Permissions": [{"Action": 26, "Resource": "AUrD9L1IiD6MlcEP", "SchedAction": 15, "SchedCron": "2hzC7MNa8vVe4MHX", "SchedRange": ["6AgMep90AyyUJyAK", "5PRMRMwdvl0hv6g6", "2GxBW2tQF5tkTjgJ"]}, {"Action": 0, "Resource": "4vtxk9hVKlG56Hlz", "SchedAction": 66, "SchedCron": "qtxjbrztee7QLTGA", "SchedRange": ["ak7Kaol01DK97D2x", "nik42miteR5eQAe1", "rzmmgqBPRmd6mO4o"]}, {"Action": 71, "Resource": "JpZm9yEYWNGMy2pg", "SchedAction": 92, "SchedCron": "7axEkvI4oxZEDxGi", "SchedRange": ["BnNbn0zaf7CaOSlH", "XrUSA6sMJzA5mtqI", "SQ83TTbtefXWznDe"]}]}' '4LQdXfFBii2RAMEX' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-bulk-v3 '[{"Action": 37, "Resource": "RMjBFVZGYzQqV8d9"}, {"Action": 26, "Resource": "jNDKv2LWfXqjr8fS"}, {"Action": 91, "Resource": "9En3wYowBdkaZ3y6"}]' 'i38XQjLDRqkpiFK5' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-v3 '57' 'irURERnEMzpImW6s' 'jAHyCK5tNanGBrkz' --login_with_auth "Bearer foo"
iam-admin-get-user-platform-accounts-v3 'Uvck3xTtmOFMebS4' --login_with_auth "Bearer foo"
iam-admin-get-list-justice-platform-accounts 'AdlNzwog2IhErkNh' --login_with_auth "Bearer foo"
iam-admin-get-user-mapping 'NcECWwchW6zL9Skb' 'LlrNXnGanMazb8jv' --login_with_auth "Bearer foo"
iam-admin-create-justice-user 'RWenURH48aJuALEc' 'SqcE15u6D31DjOsr' --login_with_auth "Bearer foo"
iam-admin-link-platform-account '{"platformId": "s3CUYATdqnQGbqiq", "platformUserId": "OkNeATj7eGjodd7C"}' 'cJUrI6MAugK5kypN' --login_with_auth "Bearer foo"
iam-admin-platform-unlink-v3 '{"platformNamespace": "rp2nFe9FmN86sK5L"}' 'Oq4ft5jGcMICPUYn' 'fG6jl9U4jReteIMg' --login_with_auth "Bearer foo"
iam-admin-platform-link-v3 'zISomCsodJrhQW41' 'q2OspCZbt3Uta5I0' 'uGcL1koyHjCH5olY' --login_with_auth "Bearer foo"
iam-admin-get-third-party-platform-token-link-status-v3 'LETRpABAmO2EGvJ4' 'UMS93yOxNInDByhn' 'oluO6ti0QP2ssiJ6' --login_with_auth "Bearer foo"
iam-admin-delete-user-roles-v3 '["6OzOj84O6tgohjtC", "7bzjPpucddXJ5zif", "F8y959anrNSleywH"]' 'bHig6IKWVZ77KeRW' --login_with_auth "Bearer foo"
iam-admin-save-user-role-v3 '[{"namespace": "dECaFGzfZ2hxcJ2F", "roleId": "nemn7M23SzUo4hNB"}, {"namespace": "Dh9ZFP1OW0nXOErQ", "roleId": "PS4VsRoYIK69yg9A"}, {"namespace": "DCGiXaLs2xjHkinO", "roleId": "D975nARHCmhNHSXu"}]' 'qIHsxvaUoXDmwWsu' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v3 'kxncuD3QxCXMd00Y' 'BWCaVVmM45mfIZsW' --login_with_auth "Bearer foo"
iam-admin-delete-user-role-v3 'hkS476dGGJwJ00UH' '197MJ6zU7JLMQyMW' --login_with_auth "Bearer foo"
iam-admin-update-user-status-v3 '{"enabled": true, "reason": "VJbXi7eRZa7WwIc8"}' '95ImqK6tVsaUq3st' --login_with_auth "Bearer foo"
iam-admin-verify-user-without-verification-code-v3 'Uh5J5Z9GiBiSAylX' --login_with_auth "Bearer foo"
iam-admin-update-client-secret-v3 '{"newSecret": "5cS0IeHpWCugmfOL"}' '0QQpxsuD8PGqku59' --login_with_auth "Bearer foo"
iam-admin-get-roles-v3 --login_with_auth "Bearer foo"
iam-admin-create-role-v3 '{"adminRole": false, "deletable": true, "isWildcard": true, "managers": [{"displayName": "yZeHAWGgJUbUJRMb", "namespace": "kcTglbU86FyOjApN", "userId": "HBVfNOURcjY3YYT9"}, {"displayName": "oTynmfIuBWgJTNFf", "namespace": "M8M0IW4oe8KDgy0x", "userId": "ZfAcNg14Ws8TIP1L"}, {"displayName": "KiFQoLDvumfqrgSf", "namespace": "nx2h61X9dN1MGRXB", "userId": "J6mVV7JS9qjNLwvI"}], "members": [{"displayName": "8JdiY3RRiLilmOGF", "namespace": "6dLLIeIVIjMcdlbd", "userId": "RXTGIrdNL5gJPqTA"}, {"displayName": "jgqaTHf1ANTJ9Yk9", "namespace": "97XkGOdC6ItxDT8p", "userId": "4n4XCFkD1AJLCwsz"}, {"displayName": "bZxuHSgDOK8bjoF7", "namespace": "bL2635KbtZTGJpqg", "userId": "l2IzNXGTuQPIDpor"}], "permissions": [{"action": 39, "resource": "7Cmsh4US8o4jfMAN", "schedAction": 86, "schedCron": "c8VOsnmnlVljdWYm", "schedRange": ["ELe74p38vumnxAnY", "BTxaTIz0jcgDI8Pk", "z96vd80msqIm5buf"]}, {"action": 27, "resource": "UBDShHD32vvL28FP", "schedAction": 46, "schedCron": "MEmtbiWsAQHbMrKY", "schedRange": ["i0Zxs5SWCqZXHLLa", "31oQf7BULnZDhutD", "M6BqguqD5xxGxBWt"]}, {"action": 27, "resource": "u6opxQGRt6PqlkL0", "schedAction": 7, "schedCron": "o2SwCUsTag4MLAo3", "schedRange": ["m61P2xaNfmn8Onb1", "a9gMz0F2UBRmMhAb", "UWmFhdYLWzMuv3zk"]}], "roleName": "UY0n0BAZkwbYkBLy"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v3 'O6A0FqfhnaB3YxKN' --login_with_auth "Bearer foo"
iam-admin-delete-role-v3 'dOTacCcJfIfXshuL' --login_with_auth "Bearer foo"
iam-admin-update-role-v3 '{"deletable": false, "isWildcard": true, "roleName": "WdpxjZx5noXPhPUT"}' 'KbonoucNmzwOZOK5' --login_with_auth "Bearer foo"
iam-admin-get-role-admin-status-v3 '6sDkci5rZ8iMlOuk' --login_with_auth "Bearer foo"
iam-admin-update-admin-role-status-v3 'sQJCiRFiZWwJ7NrT' --login_with_auth "Bearer foo"
iam-admin-remove-role-admin-v3 'b1XTB9YQzUJ9XlYJ' --login_with_auth "Bearer foo"
iam-admin-get-role-managers-v3 '8BzP6EUmUXGM5anI' --login_with_auth "Bearer foo"
iam-admin-add-role-managers-v3 '{"managers": [{"displayName": "loyj9lhbvuQdW2jw", "namespace": "KUckc794ryY91lX8", "userId": "DD4MYXlrJ81lHvv9"}, {"displayName": "rqvEoM8YmVjAkO3H", "namespace": "KsEp6KlqwW4djrex", "userId": "cbHdEtoQvpV344Rc"}, {"displayName": "tmTozCi8HeV6jbal", "namespace": "HmqBBfi7sSF5BoGi", "userId": "TCVsXsygWbjE2opX"}]}' 'tdsJQeJ1too0qvxp' --login_with_auth "Bearer foo"
iam-admin-remove-role-managers-v3 '{"managers": [{"displayName": "hTLEEBGTtZyTjdKN", "namespace": "KgYazujsmSmylT1Y", "userId": "txIq73aMb48jISd9"}, {"displayName": "7KORRhxSWLWLNfHR", "namespace": "D3V15QaGGL46LuxJ", "userId": "F3sbeqWBdQuWfgBA"}, {"displayName": "Kx27MSBqabUXOGkk", "namespace": "oMUZn1YXj5zFZeOC", "userId": "OR9NvBQZSJPOIKrR"}]}' 'BrYVzi9ui3lvozTt' --login_with_auth "Bearer foo"
iam-admin-get-role-members-v3 '9TsH7A0TuU2aL4bP' --login_with_auth "Bearer foo"
iam-admin-add-role-members-v3 '{"members": [{"displayName": "kk11sys6GdkDcos5", "namespace": "uVJ0BJfZ0jvA54CS", "userId": "qZFDsO1skRjOU1SM"}, {"displayName": "fQVQa6blj9Rdd85b", "namespace": "dYUumPKVSZCg3XTc", "userId": "9vQe0dHJfF6KIuvn"}, {"displayName": "RCa9JktyBdxkZKrE", "namespace": "WFw9GYxjiiOQAD77", "userId": "ci0vfWVZoRRMPi57"}]}' 'HyKKz5nyI6ulKNKo' --login_with_auth "Bearer foo"
iam-admin-remove-role-members-v3 '{"members": [{"displayName": "Xa0dgx1JgjC56pda", "namespace": "3YhtQxpCYME6x21p", "userId": "dX2QSPAd9sxoLnWG"}, {"displayName": "P1PafIjLX8ce0KbN", "namespace": "N7Ycl2JfmQplvGjV", "userId": "Q4aebjfgGu472oWJ"}, {"displayName": "lfglLM4xjfkNL4lU", "namespace": "6jaGfsD1cfswmeFp", "userId": "vtDtetoQVFL8LNW1"}]}' '1vtpaTxi7k489jRC' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v3 '{"permissions": [{"action": 27, "resource": "Vs3qFTi1t530Wj1W", "schedAction": 12, "schedCron": "ZQAJza84lKKmVOaT", "schedRange": ["S6xBbNrSUAW2ak7I", "SDrBVg6NuDZvPb1k", "uUfNfUDe4g7q6PHE"]}, {"action": 0, "resource": "xnKfV3869IN4V1Od", "schedAction": 14, "schedCron": "GBA6JXDpA1tIC45C", "schedRange": ["0oaGouFu4hXONgUw", "JnUpryDeRcpUvlrw", "2MwC1uuokpaIjL0V"]}, {"action": 48, "resource": "Fa05Xl5TPC5GODS4", "schedAction": 43, "schedCron": "bmm7jPdKLddfdsUq", "schedRange": ["jXVzW1QqxnWR5she", "LgsAF4ctv5guycGi", "q9j2EyIknfLDpgHn"]}]}' 'MOn8nc3gUZ8ZFyyE' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v3 '{"permissions": [{"action": 36, "resource": "7Ryt4udIv22M18uu", "schedAction": 49, "schedCron": "WLPBYiR3UbJc1ZYa", "schedRange": ["px7C477etqgfOJDU", "T0uKAPrARya2IMlN", "iXpF4qvsUUpHqi33"]}, {"action": 93, "resource": "O30lpzcBQMAEcNcJ", "schedAction": 34, "schedCron": "Vzl2kBuLFXIeCEKZ", "schedRange": ["UTz3GvCAZ5j24acY", "HbrryHB6GO9zP3Fa", "epA3b3YJ9nJM6vtT"]}, {"action": 80, "resource": "7xv85K5MU2qmbeqa", "schedAction": 97, "schedCron": "xxPPdPwOtEuWBSO2", "schedRange": ["jJepUnEEgja2mIE2", "kLTnJwc5XmkCuL5W", "4tKt6G3j9LYdG7xV"]}]}' 'PqBqe9RDQMBSYAFL' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v3 '["qp8PF5hCcoukWpnb", "z4ys7j6lxuU3u2HE", "G0qfKegvFTD1sPyk"]' 'S8YLmwtYgWGcA0h4' --login_with_auth "Bearer foo"
iam-admin-delete-role-permission-v3 '67' 'JIIgsAVmaGYxUX1B' '9oVuzG2CnYX2YBF2' --login_with_auth "Bearer foo"
iam-admin-get-my-user-v3 --login_with_auth "Bearer foo"
iam-user-authentication-v3 'g7TVtzYEHUodh3iU' 'fBthbepUCTWiZ1uq' 'h7GAi4FEIu44u83Z' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-authentication-with-platform-link-v3 'LRxYlYqlpq03BGdI' 'k4oEogFVGR71rJOB' 'y6lsj1AKGBjnHmaA' 'u4YK87DYAWWcbcbG' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v3 'WmKgE8CZ4AELr5lr' --login_with_auth "Bearer foo"
iam-request-one-time-linking-code-v3 'aa5v5P5Cj8hgFsqH' --login_with_auth "Bearer foo"
iam-validate-one-time-linking-code-v3 'C9h5JPiMEtgKuiGT' --login_with_auth "Bearer foo"
iam-request-token-by-one-time-link-code-response-v3 'YgwWv5XldL6rOVGc' 'RAn51rVAQSxp4qTB' --login_with_auth "Bearer foo"
iam-get-country-location-v3 --login_with_auth "Bearer foo"
iam-logout --login_with_auth "Bearer foo"
iam-request-game-token-code-response-v3 '54mKA3V9DKlCeZ7m' --login_with_auth "Bearer foo"
iam-admin-retrieve-user-third-party-platform-token-v3 'LYsHooOIaxIpb1cI' 'OJPS3lJ80YJ41U4o' --login_with_auth "Bearer foo"
iam-revoke-user-v3 'oQ980ywmg1pWpWit' --login_with_auth "Bearer foo"
iam-authorize-v3 '1QC7FKe0fnHUlmU1' 'code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-introspection-v3 'ZJJzWZwvTX2bamSC' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-jwksv3 --login_with_auth "Bearer foo"
iam-send-mfa-authentication-code 'vX1nwvSWdDwD7WJH' 'zgNZUKsI5y0mR3zM' 'yTsftKqnsIJctAdx' --login_with_auth "Bearer foo"
iam-change2fa-method 'yZVKHA9DkaSOWgtg' '8yw8lHEbVDwBAqan' --login_with_auth "Bearer foo"
iam-verify2fa-code 'OlscRIWw82k5K5VT' 'kdubkOFldMCQ98JH' '4n0JtgqzZv5kVu4S' 'false' --login_with_auth "Bearer foo"
iam-retrieve-user-third-party-platform-token-v3 'mj8YRvae4f4lhBPb' 'arbWEm8bVtZcfVCP' --login_with_auth "Bearer foo"
iam-auth-code-request-v3 'dQhim9QKUAFTVYel' 'IlGJg9wdc8bihhWj' --login_with_auth "Bearer foo"
iam-platform-token-grant-v3 'fZpfcFBUsnnDJlmD' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-revocation-list-v3 --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-revocation-v3 '1iEokbUiYzCQh2iN' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-grant-v3 'password' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-verify-token-v3 'utLf6IrvZoBGQbO4' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-platform-authentication-v3 'S3rURGWUzPAE6SdV' '4D5jftRl9rZmtQUv' --login_with_auth "Bearer foo"
iam-public-get-input-validations --login_with_auth "Bearer foo"
iam-public-get-country-age-restriction-v3 'ro8TWwXWsz9TVmdM' --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-public-v3 --login_with_auth "Bearer foo"
iam-retrieve-active-oidc-clients-public-v3 'KEohKzuMYDUTLBeC' --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["idXjuGgx8ncXejme", "ZtzT0qj0ltsqfiZr", "thVvyX0OCKDJE3RM"]}' 'UddwSSgxCu8zru1D' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv3 'hGAYOHR5BWa9VzIk' 'aQEl1iUProNB6hI6' --login_with_auth "Bearer foo"
iam-public-get-async-status 'IpGcToWgFvdRhG9N' --login_with_auth "Bearer foo"
iam-public-search-user-v3 --login_with_auth "Bearer foo"
iam-public-create-user-v3 '{"PasswordMD5Sum": "wV3zDuqVlVTypcYP", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "8IxrSZuxWl0Je4fJ", "policyId": "IyFAm3DQht4JwnPS", "policyVersionId": "2urJqerobWMZGVL5"}, {"isAccepted": false, "localizedPolicyVersionId": "TxahWlS6XdBaKSLC", "policyId": "gOOPXM6XTUh2dJ90", "policyVersionId": "yqHDNacl4F9G6Dl5"}, {"isAccepted": true, "localizedPolicyVersionId": "TCj6SEAzT7TOpyiu", "policyId": "vvQUm29Iacq4XRLa", "policyVersionId": "A643nTMtXSAyejnn"}], "authType": "y0Ju13b6o5uB2XM6", "code": "IHy7EEvHyLmcvrZZ", "country": "Odwe1x8RjU6Bi8JX", "dateOfBirth": "E52sUBBq2SimQQoL", "displayName": "be5YOJvxGRxUzrTw", "emailAddress": "agH7BMT1IZKTdNFV", "password": "BQ1crBXAupATO8uX", "reachMinimumAge": true}' --login_with_auth "Bearer foo"
iam-check-user-availability 'qJEd6eqqsBVyONV0' 'JRtozI0jpliCFQ6W' --login_with_auth "Bearer foo"
iam-public-bulk-get-users '{"userIds": ["gJpGPigdc5VyC4qv", "WjVac1cQvSxgTNIU", "zxDgBlIbuzm7DzJ2"]}' --login_with_auth "Bearer foo"
iam-public-send-registration-code '{"emailAddress": "0NFRJIhFXR2dYprP", "languageTag": "mbpuptECGd5cdXC2"}' --login_with_auth "Bearer foo"
iam-public-verify-registration-code '{"code": "Sesc6y68whNBYl9i", "emailAddress": "CqfW6rqGOQny4ij4"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v3 '{"emailAddress": "ysYPonb59gQffkNO", "languageTag": "mubxEJr2qEAuJbpZ"}' --login_with_auth "Bearer foo"
iam-get-admin-invitation-v3 'Srcbc4LWfKaY5c1t' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v3 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "5TDuI5f6m4KC07Cn", "policyId": "sZe32hqEcB1ExYMB", "policyVersionId": "b3ckvoaJYdMqGegc"}, {"isAccepted": false, "localizedPolicyVersionId": "nRyFS0Ed7gTM5AVr", "policyId": "tBQiDTcNnZa6Zuxk", "policyVersionId": "6u6HXXdiC9ZDj4E4"}, {"isAccepted": false, "localizedPolicyVersionId": "g8LSTs7Nf95lGlPr", "policyId": "f6obIdnI6Ag7eUYc", "policyVersionId": "YJ4QzXCmqr6gmPGa"}], "authType": "EMAILPASSWD", "country": "PvRLiDi0mNHb6Lx8", "dateOfBirth": "eq8SGNwEQO8dYXvB", "displayName": "SYvJBwb6CjZUMRf2", "password": "VJetWsokvx3BHuTE", "reachMinimumAge": false}' 'SuztsJ5tj64gV7nm' --login_with_auth "Bearer foo"
iam-update-user-v3 '{"avatarUrl": "Dk29mcjSuz9vbNSt", "country": "qPtQmQN6eKAGiZFC", "dateOfBirth": "ftT0RWECdjWYrnul", "displayName": "xcCKAru8pOaAVLDB", "languageTag": "4k3JwkdaxR7GJpYm", "userName": "uYCPG181q9GA5Dyd"}' --login_with_auth "Bearer foo"
iam-public-partial-update-user-v3 '{"avatarUrl": "C2D8UT6KOc4VPDUR", "country": "9ayazqXRqegIUicY", "dateOfBirth": "XXzxsBFrUs9BYp6T", "displayName": "gCejBd5o7iTST7R3", "languageTag": "KbbQGERMNpqWb51y", "userName": "5RUzvMfTkPy0fGvT"}' --login_with_auth "Bearer foo"
iam-public-send-verification-code-v3 '{"context": "GgfLKsg0b1Bq78cE", "emailAddress": "5O5pmPnbiPJ9j4vx", "languageTag": "mbH3rVaauufxkPHE"}' --login_with_auth "Bearer foo"
iam-public-user-verification-v3 '{"code": "lug48TgfNu0rqXUO", "contactType": "yToLPIREGIKlJt3E", "languageTag": "P9kKwkENQ8VOHGwb", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v3 '{"code": "3P8Gwjg3IOH0SDHg", "country": "YKqxJiFJdrmj5vhz", "dateOfBirth": "gsJwex7wq8ZPlXNa", "displayName": "UNgdY2vfJuje5cPn", "emailAddress": "mGjTvYa5Pqx1K7qc", "password": "AoijBPAp6EPb988N", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-verify-headless-account-v3 '{"emailAddress": "tNQts2yxf6MLZJ2j", "password": "ZfZbpTJezzriCDWX"}' --login_with_auth "Bearer foo"
iam-public-update-password-v3 '{"languageTag": "T59SRu0YqUxKDc84", "newPassword": "OMIzvTScdbKBsAyJ", "oldPassword": "Mz4ILNDvhB4Eoes9"}' --login_with_auth "Bearer foo"
iam-public-create-justice-user 'a6XaJeRbzTPwD3jx' --login_with_auth "Bearer foo"
iam-public-platform-link-v3 'F7vxRUY0ilrNoFT9' '8SgtJd4Z5f8nfaKq' --login_with_auth "Bearer foo"
iam-public-platform-unlink-v3 '{"platformNamespace": "dZFLbZEHxsDxeR6d"}' '7r1SQw80JfMpPrSq' --login_with_auth "Bearer foo"
iam-public-platform-unlink-all-v3 'YypRUnq5o4ETeCUY' --login_with_auth "Bearer foo"
iam-public-force-platform-link-v3 'G9ccTt7Wxw8OQ13t' '3uTw6zQuoZcXQpoT' --login_with_auth "Bearer foo"
iam-public-web-link-platform 'Oxe8y1jorNsg9ZKY' --login_with_auth "Bearer foo"
iam-public-web-link-platform-establish 'CKoISyXtHzoWGdYo' 'hxMp3uOQIybqWfG9' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"code": "BJ6FVKlbYHtbPtax", "emailAddress": "vagSlpGgVTF6VeDA", "newPassword": "POGBwweyFfXEOEAE"}' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 'tbag82KgBgyCd5vj' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 'kfz3eR4DtNp129hz' --login_with_auth "Bearer foo"
iam-public-get-user-information-v3 'Bw3xLUcCEt0DzmkJ' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 'q1sml5bYt76BNsi4' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 'giR9434WpKKdzxou' --login_with_auth "Bearer foo"
iam-public-list-justice-platform-accounts-v3 'fCNlFoOcWQQy4bjm' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "QeEweoBHTdwAk7ZQ", "platformUserId": "nbqY1cQwVEtAr5kK"}' 'KAo9MM2Cqm84jVi9' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["kIpqgrzpUkNOBWyd", "XV0Fi02aFr8CDapj", "wNOl4k8rVNrm8drv"], "requestId": "8QD2JOe2Ntz7EFvo"}' 'wPgIGuetxFMqXCQM' --login_with_auth "Bearer foo"
iam-public-get-publisher-user-v3 'AqQ2ZRGzNtrThFa9' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 'XU8mosluiHZJ7O8s' 'AQ32wj9uaDzsr9xY' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 'iWRuuzQJiLc1eI9w' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-public-get-link-headless-account-to-my-account-conflict-v3 '3JEhxPGbEk7s7gw0' --login_with_auth "Bearer foo"
iam-link-headless-account-to-my-account-v3 '{"chosenNamespaces": ["7FlounC3vJKBC7Sw", "goViPeIB4Ehy0Y5a", "SJVDginxAM77eY9C"], "oneTimeLinkCode": "14FbfiI2NPvl1kCY"}' --login_with_auth "Bearer foo"
iam-public-send-verification-link-v3 '{"languageTag": "5bEokxXxkWZbjf7G"}' --login_with_auth "Bearer foo"
iam-public-verify-user-by-link-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler 'ZxaossQmjo69wohJ' 'FyTNk5FGUPhR4LEZ' --login_with_auth "Bearer foo"
iam-login-sso-client 'vz3EjFR7996Ug5m4' --login_with_auth "Bearer foo"
iam-logout-sso-client 'axDV5uTcYsoahUrE' --login_with_auth "Bearer foo"
iam-request-game-token-response-v3 'LQ1btjJOqQMgZWAU' --login_with_auth "Bearer foo"
iam-admin-get-devices-by-user-v4 --login_with_auth "Bearer foo"
iam-admin-get-banned-devices-v4 --login_with_auth "Bearer foo"
iam-admin-get-user-device-bans-v4 '6E92nHJzvw7tnYtG' --login_with_auth "Bearer foo"
iam-admin-ban-device-v4 '{"comment": "fv0EJyjBu4EzwRjD", "deviceId": "7jmQJeFPghqamSc5", "deviceType": "y0X48eT7Mluexk87", "enabled": false, "endDate": "aJCiLgKOwrSfWhT5", "ext": {"B4WedopzwSluBtRF": {}, "PKThyGnbjmPDKFS6": {}, "u9FHuv1M3qfch4Sq": {}}, "reason": "IV6LQPHlaeYl4csF"}' --login_with_auth "Bearer foo"
iam-admin-get-device-ban-v4 'q65cU66yJaj4ovoK' --login_with_auth "Bearer foo"
iam-admin-update-device-ban-v4 '{"enabled": true}' '0QyXzsOzgck078Ig' --login_with_auth "Bearer foo"
iam-admin-generate-report-v4 'hoQBp2mWAOYksczx' --login_with_auth "Bearer foo"
iam-admin-get-device-types-v4 --login_with_auth "Bearer foo"
iam-admin-get-device-bans-v4 'BS0OBCa2vWadLmQt' --login_with_auth "Bearer foo"
iam-admin-decrypt-device-v4 'YKmEMzicbuL2S3Ri' --login_with_auth "Bearer foo"
iam-admin-unban-device-v4 'W8dLTCBfGUdVEdvd' --login_with_auth "Bearer foo"
iam-admin-get-users-by-device-v4 'QL7sVwcZ2PofaJoS' --login_with_auth "Bearer foo"
iam-admin-create-test-users-v4 '{"count": 34}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["pfmjIXFGZ5PKdbab", "JIkNnt9P1Tkm08lu", "h4dpPRMDbUXBWTbp"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "AogG2wlZkLhuU5FI", "country": "8NijFI0GKwJ3vfXl", "dateOfBirth": "sAMy2Zp2UAGxHnmS", "displayName": "xvkG9UR5q9neoW6J", "languageTag": "BcGp9Rx2RfcRhXpm", "userName": "eeHdvphas9S7ivHE"}' 'oLbUMM47f1UreUpx' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "EkXIbE1ETzRJZKMa", "emailAddress": "vu4Ul2IaieEbPSE7"}' 'TGkeHsYsW9oGBN1p' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 'YMBwbPZTlMlUvFEi' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 'GprcNSQ9kEeXBZ6F' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["VrBzyhyhoS6a9oe0", "JaXFpff28uYbe4Cf", "2HEHvVevhISjbtBJ"], "roleId": "UK5fE3OufPSX3PdO"}' 'U2V9yw94oa8UJ34T' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["IedV3HyoX4VnO2Lp", "BU08wfnlHBXFIqFU", "mgUSMM5au8GJT0mk"], "roleId": "VPI6zUtf3QaJPGrT"}' 'NcXXTUIggoH89QNm' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["I17UDb19R6H7r1ta", "3m7jK5pxe82pgFiA", "S6piIzmc8rKrKEPG"], "roleId": "SAcong6eNERUf8kj"}' 'ci1Ctccv9Gv4tOcb' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": false, "deletable": true, "isWildcard": true, "roleName": "Xl5XCbkOfHaGr5kd"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 'azlypvt6lSLfU7HB' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 'yGXPMqxj4hBgVY3Y' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "KbcOdyjqf6Q4oiwo"}' 'JcaRMEb15LBlTVuf' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 5, "resource": "T5FwwHj0Ur5F2PWG", "schedAction": 94, "schedCron": "3eRbZqBAoKGcVCdM", "schedRange": ["iSNV4qBrt1kcLmRv", "6EJtl5xWnsb8oWq9", "4RImNWVIJnhhwFDV"]}, {"action": 98, "resource": "FvGcV8DY0XOkDstx", "schedAction": 46, "schedCron": "cY1HgAnZV4IOglVL", "schedRange": ["qb9lGAJUg21Lt7Jw", "gwMUSuC3Bajy3BcE", "MCtQs2FcEcvVAyId"]}, {"action": 19, "resource": "Cp85HVDsZBQgOnXu", "schedAction": 72, "schedCron": "sGThYZrmm0wrFMnP", "schedRange": ["pWgrQD4hEk0OLjYs", "nignE7KcMF7fuDbz", "RRYMNXWUsp1tOibJ"]}]}' 'Y9aL9ie6vvMbiNUR' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 35, "resource": "Ehr8OtqpNJ9R8TuN", "schedAction": 50, "schedCron": "kZyUV7t73VnSFbux", "schedRange": ["d4KYZ0jk0UZdhtnK", "u9oTc8pVkiyGsj5J", "dXzRxfNEjUMTs8WI"]}, {"action": 84, "resource": "AB2WIRUQmauIY5HX", "schedAction": 59, "schedCron": "bKVoWtoUW1P7ocuB", "schedRange": ["AldDSUS7Haa6unq1", "yQOSRvyiLBRVtIDi", "2piIQFVmzMidw70K"]}, {"action": 92, "resource": "NOe9Eevf1fhMg1E2", "schedAction": 21, "schedCron": "jxvNZhM84DiZk6yS", "schedRange": ["rB9SVFctW7YS0OkL", "78XeEAtALFI3v8yh", "a4pd5A7MYcpBD6lK"]}]}' 'Nb8RxvN2u5J7baOe' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["LH19fqBwNbNe1ffY", "RtIvQaKyevWYtZjK", "6J29v8MpBSpo3AKR"]' 'mnJkzJHAckUyBksY' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'QfDm0RNFwiz70tRV' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["LMlHi8i9gOVqajUW", "rgEsWDtaKzn8dZwn", "nGeZsZVgbPzPFbrO"], "namespace": "MZMgWkFN7Tpkx6Gc", "userId": "fyOg6ZUrrp9ubg9m"}' 'ndW2JKmQafUs2bxY' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "ztOEyVbKIf1ZbzgU", "userId": "wd8DHoCQykmXHYmk"}' 'Rlg7gYs6unPYQ9jN' --login_with_auth "Bearer foo"
iam-admin-invite-user-new-v4 '{"assignedNamespaces": ["QN1di1ldhOh6Hvjn", "YuV7NfC4A2ODiZhb", "fb8QqCyK1XH9D6vl"], "emailAddresses": ["5eFdFfgK46GjCWaP", "8huTmnq3FGQn3Ahu", "5wxq6oJq4mChmQHQ"], "isAdmin": false, "namespace": "ZMi2o1nR482D6gNC", "roleId": "lk9c87hosaPFC5zB"}' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "W3ZgVZCj9ObVGT0S", "country": "cwl4kNmCi15XTJTg", "dateOfBirth": "CNNH7RtG5Xmo9Q0W", "displayName": "b07N17fkxZSc6VbE", "languageTag": "0AGcekjMNHuPXtz8", "userName": "tXxrmzafMUguyDoN"}' --login_with_auth "Bearer foo"
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
iam-admin-enable-my-email-v4 '91uc28HoSpGt1g0G' --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 'GbT4Hf2PPKOldkbg' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "CWJKwXXSbv5eg9q8", "policyId": "6IaDFjjx6uZerWbt", "policyVersionId": "wTX9gNRByjbE8lOL"}, {"isAccepted": true, "localizedPolicyVersionId": "DH3DfLCv8q4Thmq0", "policyId": "9bBgPAYxrBE9jlnT", "policyVersionId": "gtgW33wDwD9RKvQX"}, {"isAccepted": false, "localizedPolicyVersionId": "yFQFdrRoM6FoqCYw", "policyId": "7AlxO6qdFpc71sSc", "policyVersionId": "k3ggZWJlSlCQMDji"}], "authType": "EMAILPASSWD", "country": "9PfVrvMEPtpsSNcp", "dateOfBirth": "K1QkB2Sy8Ww79LVe", "displayName": "VskqeUB7RSayqGFg", "emailAddress": "uhh3bvadRthdbVAp", "password": "ebRA09rW8i8krFWJ", "passwordMD5Sum": "he03coRFok5d3AyG", "username": "rZO8GuoXNSoVEBG7", "verified": true}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "KpMv2Yky9DYkD2sI", "policyId": "llFtBtXJKG3rqBmI", "policyVersionId": "LhtWm8RQvRUbUDSi"}, {"isAccepted": false, "localizedPolicyVersionId": "1qdTelFAadM9y66D", "policyId": "rf4SSGGt3MiBKoho", "policyVersionId": "w3kKoaP1K4CDuH1m"}, {"isAccepted": false, "localizedPolicyVersionId": "fOCDyVAHrHncR5dS", "policyId": "hqiBUI9esSsXegSE", "policyVersionId": "hrPpK2q8kxR4BuEk"}], "authType": "EMAILPASSWD", "code": "WfmP2sx0KO5bEJaP", "country": "nAFjsodyJQVVBrSh", "dateOfBirth": "GbIIuqK8C403HgoX", "displayName": "CR6XOMXwKdfqk8T4", "emailAddress": "QHK30EX0FclpDl5H", "password": "suracO5MnjnxD1OX", "passwordMD5Sum": "kxShFVQTRekLfjmy", "reachMinimumAge": true, "username": "ip8JyxJ39vrtuWWr"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "yA7U7dGMjupZkZQY", "policyId": "8CNyT4k3DIbfT22G", "policyVersionId": "5NpE130YWSgxpKWt"}, {"isAccepted": false, "localizedPolicyVersionId": "Q6ZXQcb2o1J5euLA", "policyId": "bBgejqc0apxqZ209", "policyVersionId": "BySn8aUaGlAyvIsl"}, {"isAccepted": true, "localizedPolicyVersionId": "Qdwec1m8BusV9tUh", "policyId": "74KVo6Xqjz2xUKLN", "policyVersionId": "WSmYyVvyelIJ8Qga"}], "authType": "EMAILPASSWD", "country": "qi836ULa7cfZl4Vu", "dateOfBirth": "Y6rsZyo6CBRRnoOi", "displayName": "kIxXKKIR6kPmswm5", "password": "TCAU1cKApdJDnE73", "reachMinimumAge": true, "username": "LmSZns5owBhoUg4L"}' 'sGP6KLPXkvUv2XiX' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "aBzsmaxjTZPlLity", "country": "tGka7Kv5TacQKF4O", "dateOfBirth": "lRGdmXxETLEQrr3K", "displayName": "CAV9alq3hK1G4kKo", "languageTag": "oSNNUZuiynZ64Iwn", "userName": "cZPk82GF3eTC0vzZ"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "UDj9dzGgGVxo9OHg", "emailAddress": "fHumyfuBNisecYbc"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "OpR45VDlvSc0Mr7I", "country": "mwCwGqOf0bNs97Kv", "dateOfBirth": "Kyj3MqS7Dcmtfh50", "displayName": "eObbrmgjhWK0x0Zi", "emailAddress": "dAJ1CU1eD1La16Bw", "password": "3JbUnUDh5yGjjv4M", "reachMinimumAge": true, "username": "eCD9XPRi4bAQL7VE", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"emailAddress": "wL8Y4JFVUdzA8bvX", "password": "lDhG7BrorbKIKuOX", "username": "JPm5ztrr09CDA8Ij"}' --login_with_auth "Bearer foo"
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
iam-public-enable-my-email-v4 '5bGKSuopWQbaCvdP' --login_with_auth "Bearer foo"
iam-public-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-public-make-factor-my-default-v4 'Sq8Z27GpvHCDx55J' --login_with_auth "Bearer foo"
iam-public-invite-user-v4 '{"emailAddress": "Z5z6gujpFzlPspQD", "namespace": "9IRIpDDubntPCFxf", "namespaceDisplayName": "eoW2NdSWzOXjO1NQ"}' --login_with_auth "Bearer foo"
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
echo "1..349"

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
    '[{"field": "UqWHBW78XREZCiTN", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "blockedWord": ["KXu1bqI2M5PmXfKn", "Q7BYGjCUDMOrbmoR", "vWnfmGFy0eUoOBd9"], "description": [{"language": "0h9EDqSTOfoNewWj", "message": ["wMWDKEt6JhbJ0fwT", "Daq6b5RpMwhWPtnd", "riXU9loOxpmEuwDV"]}, {"language": "c12r0DVUGgGHkapT", "message": ["CafFMdvYiCBuzUUw", "yI6Vtd4v9k4fv3kM", "iuQ3DhsKLxjt5srP"]}, {"language": "FxBgpFtDBmTLH9kP", "message": ["9U53z6joBAhAlJGI", "2YYb6ajBjgq6eY4P", "BNHKPx62tHxDb06Z"]}], "isCustomRegex": true, "letterCase": "5vHA009FAb21jxeW", "maxLength": 17, "maxRepeatingAlphaNum": 22, "maxRepeatingSpecialCharacter": 23, "minCharType": 89, "minLength": 60, "regex": "y9uxgVLGgK8aVSCN", "specialCharacterLocation": "6oCETQ8gIDRdD2ww", "specialCharacters": ["MXwKVXGPhEJsc7rZ", "pxaPHc9r8eToFmkH", "J6BPOKFLxIwKssw6"]}}, {"field": "47YwDudnGRufOUGf", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "blockedWord": ["7jPlcYaqYM7YfBmh", "jI9Y28qVceS9UX48", "dKPCFUIeyYEymNXz"], "description": [{"language": "NX6TGh4UdEweeBsJ", "message": ["EvBbAvCmlh6Z1oz9", "BaixUUvmzbajE2gj", "ooiDnc1NUb51lEgU"]}, {"language": "wQ9tkWaMOH47CAT7", "message": ["cBP0918JaEBQBP76", "6LUnBBR84iAO7sBQ", "t6YJ2tWwF7RnP1oK"]}, {"language": "3c4RVfjB0zi3XrYZ", "message": ["UiN24ol1qqbalgiz", "L97ycJV5YqE2myQz", "l7X9fHr6WvBxmBvN"]}], "isCustomRegex": false, "letterCase": "nbE2PMv12ZSRJkuj", "maxLength": 49, "maxRepeatingAlphaNum": 84, "maxRepeatingSpecialCharacter": 3, "minCharType": 41, "minLength": 59, "regex": "7IYzaZUTmvsEzLPn", "specialCharacterLocation": "nGsnfmBerp84qjwz", "specialCharacters": ["WpCF1vyamjsEzwtL", "PxK1os4qR8LaQzEb", "39sZTdFfC8x5aHLs"]}}, {"field": "XHlm1RJTTy9JrNz1", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "blockedWord": ["h8I9xk3sFl0cbuCR", "M69XKkLwioRaKnWh", "lh80BhYe2fJDS6T7"], "description": [{"language": "5Q4ulonMFjmYqE1w", "message": ["JhfogWg2Apm0sUy1", "8aWn65Co0vdCk8so", "6JSaZAIadKDEZywo"]}, {"language": "nA2SrEdN2tmGuX6r", "message": ["0gBVUUeKKlPKtE6g", "nYxmkmCWbs5qugkl", "BUS6uwWrCQt86Jrg"]}, {"language": "8tLAJWpcyNkUvqn6", "message": ["eXr6FNbKJ05Orya6", "LSSUlugIAknXcSaV", "YcAYp7qSiDvsfMUO"]}], "isCustomRegex": true, "letterCase": "x7rLwrPoWiywnxuD", "maxLength": 77, "maxRepeatingAlphaNum": 78, "maxRepeatingSpecialCharacter": 35, "minCharType": 42, "minLength": 59, "regex": "IaSxoloIH1gBCWVF", "specialCharacterLocation": "rvls0ZwosKhDlLfT", "specialCharacters": ["KxpVOXvGSrdkqddI", "3ezqu6FB0sL2xt6f", "X9j7rhZCAlDlVKBs"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    'LZiBRXszE7CL1cQC' \
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
    '{"ageRestriction": 91, "enable": false}' \
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
    '{"ageRestriction": 36}' \
    'qHvH7g63cOx6yrIw' \
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
    '{"ban": "37pKOLrF5i3gr3Cc", "comment": "4M2O7NrTQO7KLdZD", "endDate": "Gwqx7T3l1ut2oyol", "reason": "liYsTJUmpscwLcUm", "skipNotif": false, "userIds": ["rwh3d0ykRGkgqUNI", "bJMJ9ABbKVWO2YED", "iqkwKbpdk7wlDngN"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "iPPjpSAlZwFGpea5", "userId": "ObBB49Km4ClIQmkI"}, {"banId": "dLCvNhZ6P8aqZ2yf", "userId": "rC1V7ZpJZPHCMqvc"}, {"banId": "YmeDLYEzs2SQUdKr", "userId": "6vgqkjycqclNlBOR"}]}' \
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
    '{"audiences": ["lC8ZkjsxYtgxplHT", "PLzynjFZgF3erw7U", "syHq4bBb0n1JhPUS"], "baseUri": "8BRPGV9n769zLJdK", "clientId": "MexeJc7NvgTSgKjC", "clientName": "xZjKf8NA4cGUaDfy", "clientPermissions": [{"action": 13, "resource": "XnH2r0EKrk5VlnKs", "schedAction": 100, "schedCron": "AItnWUmD225fp1eg", "schedRange": ["sx3ErheNwqd5pric", "lNNqLyrlzrJ4QHbf", "nAdtkujxHff7n1ya"]}, {"action": 80, "resource": "JJKpqmgvUTr8XAtp", "schedAction": 83, "schedCron": "FCbOn46W2B2uPQLr", "schedRange": ["t2t6bVpCgKvPXSDu", "fmKh783cV54JsVBR", "B0rY0xfWddACyHSm"]}, {"action": 30, "resource": "0rkOHUkY5aSlqhYo", "schedAction": 92, "schedCron": "tmGsgXNXbpqxh76A", "schedRange": ["f5JSwjw2fE2g6jXV", "7oai2oDm9FaP0HJ9", "8tE4UyoQg0b0sGOk"]}], "clientPlatform": "zxVt15LKmkQ7YBhs", "deletable": true, "description": "SJ1zQKxVmRTawjiZ", "namespace": "PMoZZcyGEHxAKDQh", "oauthAccessTokenExpiration": 9, "oauthAccessTokenExpirationTimeUnit": "Ido1JyveSRiBq23k", "oauthClientType": "yH9jQbHWkcVk0X28", "oauthRefreshTokenExpiration": 66, "oauthRefreshTokenExpirationTimeUnit": "dKmYtbqQHNfIZwrM", "parentNamespace": "xf3EnzZVnkLT0Lb8", "redirectUri": "5nmpdN26BY5YI0je", "scopes": ["O2zMDSy4kyqyKgrt", "EPdXXlt8geCdiXu3", "iNvn7vLZ7h6alhJN"], "secret": "GZF07lsPP5OfHbXz", "twoFactorEnabled": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    'KSYFdJwgZsRPOzwu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'DSdGl1A2vaNeDiSq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["TfmAVg50kOdJagEm", "TuaxlxgywkbdOsyx", "X1tfW488oYUT4jyC"], "baseUri": "VJ0V8obTlGVThz4b", "clientName": "m41oIcV33yjPxibD", "clientPermissions": [{"action": 20, "resource": "ljNPTXA3qbg55Syi", "schedAction": 8, "schedCron": "BtXMU6KRIm5xBoIi", "schedRange": ["99ctgFXasxp5h780", "ktjQw2yXzaQWaF2P", "qUfbpMpRl6xRyV19"]}, {"action": 5, "resource": "m75VIuCOCkt2W1Df", "schedAction": 72, "schedCron": "3WWn2ZJY3QvRa7CD", "schedRange": ["RTcsAHzD3dZyyWbU", "Qpbcv3IwmL7a1K3z", "IUYJmdF1YtWNSQlc"]}, {"action": 79, "resource": "4ijqOVM50tCqkZfs", "schedAction": 91, "schedCron": "HcmgXsrVj3Mjml6B", "schedRange": ["pCODWGOLMmCZUeel", "XYyNrXweiCnDldRP", "Rfd6mLZ0GTJwEjoZ"]}], "clientPlatform": "rRtaeWKMC8wsOByQ", "deletable": true, "description": "Ma8ymxtEFLwELCY2", "namespace": "vIddlxnA1VynioJc", "oauthAccessTokenExpiration": 55, "oauthAccessTokenExpirationTimeUnit": "npUDqvLQixPKVSmW", "oauthRefreshTokenExpiration": 0, "oauthRefreshTokenExpirationTimeUnit": "jWH9dFmOHW0j9suu", "redirectUri": "kPE4JwQONQ2vCbMn", "scopes": ["0Oia336uiiMTAduc", "tvUfVwLahtRedh1S", "iZlOpIQ8GL7jBF1R"], "twoFactorEnabled": false}' \
    'exAPzCG6ZKQClGc1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 27, "resource": "36nbfM3J9G40Y62b"}, {"action": 59, "resource": "EA39uCJzsE8WObt6"}, {"action": 39, "resource": "jUK8GeX4Q0B2Cj0o"}]}' \
    'OmBmXu1KiTTiz7yr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 70, "resource": "DEDVKDINE3HjCiVR"}, {"action": 99, "resource": "dQ8kuhb4pUwnGptH"}, {"action": 95, "resource": "17m7qNkQiKp2oac8"}]}' \
    'QTNEuBbeuQqm9wM7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '25' \
    'kuLs9gNpNon6DKW9' \
    'A6AmnQTNFidImWON' \
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
    'TvCPMGLdbYEknHPK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "rZ7TiNBE0HRsE0GH", "AWSCognitoRegion": "DOFjrfqJcyxT2a7f", "AWSCognitoUserPool": "CFAUzLELiM573Tdt", "AllowedClients": ["WjfVciuLnLsBKGsA", "LPuCOyphUUAV9570", "8zaP0wpZgQEvFzox"], "AppId": "9wHocX3DRWobEoGr", "AuthorizationEndpoint": "8W97KBedcr6PM51z", "ClientId": "7i0wQ9egK2t46EG8", "Environment": "I2lTviKbOgVuN3nh", "FederationMetadataURL": "kn6QIesNoYqvVsak", "GenericOauthFlow": true, "IsActive": false, "Issuer": "nIAJfKVjOn6rtILN", "JWKSEndpoint": "JVv2DLLUyBt5hDs4", "KeyID": "5siG30Lv9iGa5mkZ", "NetflixCertificates": {"encryptedPrivateKey": "jnRXVcg6AByNpBo2", "encryptedPrivateKeyName": "JYkwLdmR97u9MVUi", "publicCertificate": "i4KpYcb1AUsESaBO", "publicCertificateName": "THnbX9tC9PQlFAGb", "rootCertificate": "MtEybfcAl0mnsAkR", "rootCertificateName": "T2k0AzdgIunRkTxs"}, "OrganizationId": "GdrpNELM8Lfkut0w", "PlatformName": "nT24wh59RGSbBMh7", "RedirectUri": "jpszuVk6iPdJ2boQ", "RegisteredDomains": [{"affectedClientIDs": ["qCCyJfThvCJieqRS", "GN8Mm74HlSZzp4aE", "W4GkHG5OIVuGv47X"], "domain": "JpkMiopQrVL3ZZTV", "namespaces": ["xqa9XM2gY14iWk12", "Jffk8dwKNPUOHNZx", "ML3yoBM9qxd6PWz7"], "roleId": "sVnMxge2inL8fBFP"}, {"affectedClientIDs": ["1ABaIKrEt8d3o7cT", "S9OIIMErnNTLXHrs", "OFsbhRow4iaYKy0I"], "domain": "jsDgbJ37DN2lDvdh", "namespaces": ["7okHl1wMht2Izq7T", "CUJhDsDefAS09VyQ", "B1vR1mx6K17GL1Cr"], "roleId": "O4ZuoGZSxTzm8oMS"}, {"affectedClientIDs": ["PIHPtqzIWIzg8pbj", "nt1iBV8DpbjGts4U", "ZDTfhAyZKhqilty9"], "domain": "NVlgxUmnfdOAmu1d", "namespaces": ["X1NqD20RUvvYeJZw", "6QZFN7wFCnqpvNes", "GiVnt9p2to7Yja1s"], "roleId": "oDE1K0SvGrMYwPmP"}], "Secret": "XC2LfL2m5rP2A20t", "TeamID": "6foPPH94SUinY5di", "TokenAuthenticationType": "UlqgvY7dPPyahppg", "TokenClaimsMapping": {"xJhk4EdTZ000rS92": "594HLvWFsXHtMP0k", "9L5dREQbCqfh0gpA": "BFBER6WNcDOsRzBk", "f9A6HjCnFRdSihcv": "szzQLZBktk0siMup"}, "TokenEndpoint": "01kyaFwwD7wecuQb", "UserInfoEndpoint": "4GNQHVZMKGBnzh4s", "UserInfoHTTPMethod": "uaGIzttTncVBf5g3", "scopes": ["oeuHiNyLkfPQPmjU", "kvSs5YmIejozmG5H", "lrIfMAvvpkAHRJHZ"]}' \
    'yfrXZmiJX4CjKCeI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    'RIr997KKpJXTLbYW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "pqeXjaf1f5fjNMZj", "AWSCognitoRegion": "KJ05puX3197WrMnJ", "AWSCognitoUserPool": "tovSMFw8X4zxbdfX", "AllowedClients": ["gunt1oMNZ68eovHS", "H3xV3URIRVDYBd6h", "MB0l7sg7IfMH5Tu1"], "AppId": "ky1ZYvyeHmfoFkUD", "AuthorizationEndpoint": "P864shbnQ3bVvuvp", "ClientId": "sDJXPCWkX4Kpi8CJ", "Environment": "88aMPGFFAQZbfbmV", "FederationMetadataURL": "TEbiRq5Juikmpat7", "GenericOauthFlow": false, "IsActive": true, "Issuer": "9cfMCeNnu6OIG1PP", "JWKSEndpoint": "LRDEXLXZWXvqNCHv", "KeyID": "NpeMjMzguq6HFIqa", "NetflixCertificates": {"encryptedPrivateKey": "qwH9J6JLb5f3SBMy", "encryptedPrivateKeyName": "JUdwEBRrHAWUFqTo", "publicCertificate": "oGGnPEgY0t7QQWl4", "publicCertificateName": "2byOwXgKyPhXmcys", "rootCertificate": "ae8HpWH4xiz3fWth", "rootCertificateName": "JSu2pUIIuPLFAtcW"}, "OrganizationId": "hjAP57QbWvSSp71z", "PlatformName": "EPPfmAQiqRRC2caq", "RedirectUri": "uMRtQOILcaDqUITB", "RegisteredDomains": [{"affectedClientIDs": ["HQR5ISNoFR3GUxdM", "uvmL0UBfwzaaeP3W", "d0Wrb8s3GW0CY0vA"], "domain": "fbq8xoCurq4lpHXr", "namespaces": ["bVBh60NUA2aKQwnX", "rmi6ya8u4sQPvaf1", "AcweR7tJW3MLMob1"], "roleId": "hUnIzIpUM8KK1kGF"}, {"affectedClientIDs": ["N0NUNGKxdlAUDFQu", "GPzAuT7M6OBrNwio", "KnXPVZaDcXsV1Tns"], "domain": "ZioDiBgprzahPB0F", "namespaces": ["KMa0YeyNBQWUHDBn", "BeePkqg6Zt1Lr5Bl", "O8K6LH4dSaa8XYHu"], "roleId": "g51ZTogG0N7Hvnuq"}, {"affectedClientIDs": ["1kJ1kpHcQtnIc9z7", "0LFQMI0oZuEjY0rN", "BbbB9txAvtRQvqJa"], "domain": "cXR2Rf4noXDFaEUk", "namespaces": ["PUBnB0ZEJH3ebM71", "Tg922xiBgHSka0Pz", "7I1WkIa0oZ1nXpW1"], "roleId": "l70pcZgIn4lPghHy"}], "Secret": "MEHBzArbyW10NkJF", "TeamID": "QxuMHnfOlX6HYVEi", "TokenAuthenticationType": "aereFCPJU2wEzUYU", "TokenClaimsMapping": {"TmZ8JSMeNmRocp40": "0RZe8Bzx9aGEI22B", "TCZs97TJI8GPrM24": "F3celFgM62HQtgzQ", "hO3nR8j8DlP6OGbn": "8vmfMYGLt1AjKhh3"}, "TokenEndpoint": "JMX7xSrz1EH6X2SM", "UserInfoEndpoint": "3xzsNrJzWBcdFlo7", "UserInfoHTTPMethod": "oAsOlfLB1J19b5rT", "scopes": ["fiL2P3r1a8KIJH33", "aKkPuWD59MgTy1HA", "58Jt5NaROjSKFEuZ"]}' \
    'o2ElXYSS4ezBRSiO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["yReviDaxlPdhwmcH", "03yoMxzRR6xd9rTh", "3ureaIbxM3Wev9pZ"], "assignedNamespaces": ["QjWAN0tny16ZHZtu", "SJGQCrM7JEMRPkdT", "cAzkIlndN5xeayr3"], "domain": "vUKMuIiz2MiAAKcv", "roleId": "AXnxnH0QIhoJRY80"}' \
    '7VmBT4wZXQZZrSsu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "YiIPei0pXglJYnKk"}' \
    'oCAZuolAWnxkImVb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    'DP0QX31gI7VmnGIR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "MvXe6BiphIFe2bzr", "apiKey": "6qQw6fSESkM19OPM", "appId": "Bb12gpmShlmIt2nf", "federationMetadataUrl": "hUaZGqjslu59GT2E", "isActive": true, "redirectUri": "eigiA3wBrmBYIlZe", "secret": "heP72AB8EO3Yrlyr", "ssoUrl": "WowUpUDVLlTtuJJs"}' \
    'HZVsG6izJZruOJvS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'RFLDSdj8elbtHvDU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "91DmHzwiqVPCJ5j1", "apiKey": "8Ou3aY8nceFU5GKm", "appId": "cEKp8AQwqgJs6O0Q", "federationMetadataUrl": "j0ccMkdz6zPz3BVH", "isActive": true, "redirectUri": "wjRyfo4nWVZZbKFs", "secret": "KOmgEhjH2wFzCpxx", "ssoUrl": "JLfAg5cFT0gHAklt"}' \
    'cR3eHFbiAluHv7Hs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'sd05pHBJX5ln8PZb' \
    'YVD8RiaTsdD4d3kS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'bTkHPMUvOAUXkw36' \
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
    '{"userIds": ["cr2WJQqS7Tq4YIyZ", "AFQ6lZfa2jdNvpWf", "32JS1av9VNpVLT0L"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["vqcfSdO1nAjY5FvA", "Db3GUQgci632w6LU", "rHuKBoNTpPQXDNHt"], "isAdmin": false, "namespace": "rJKmx1BT6iLFQejN", "roles": ["ZJNF2hm0TqBQprHn", "3whPKU5abnqw8fFa", "30pVbhr1BHh1arZA"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'AdminInviteUserV3' test.out

#- 146 AdminQueryThirdPlatformLinkHistoryV3
$PYTHON -m $MODULE 'iam-admin-query-third-platform-link-history-v3' \
    'yuLcZoEkPpqKhP2j' \
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
    '{"listEmailAddressRequest": ["WnRTglw0gdWoE4es", "uiDrquccz4J6fFQe", "zJ5E3iYHIknvPcJk"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'AdminGetBulkUserByEmailAddressV3' test.out

#- 150 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'jRevVYfiExpAgoK9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AdminGetUserByUserIdV3' test.out

#- 151 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "YDq1x3dkbJFDEBEO", "country": "OvJ5BKeipIldsgB4", "dateOfBirth": "hOxb88WgKSLIpneD", "displayName": "QCfwucHRL3o2Nstr", "languageTag": "L6TsJeRcE7GuwKn6", "userName": "3KIDTkUCqbbHGJGO"}' \
    'TvKKRTHDntaFiufH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserV3' test.out

#- 152 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    '2YR6QU7fj6w17arN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'AdminGetUserBanV3' test.out

#- 153 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "s12hOoLVM7UFnuJD", "comment": "zeEkDxaVogxHrOon", "endDate": "2OW4Zw5QwVKWNy2t", "reason": "nF2MifJR4hr4gdJD", "skipNotif": true}' \
    'caJ56nGlYZ2tod2B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AdminBanUserV3' test.out

#- 154 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": true, "skipNotif": false}' \
    'UJYnQ3jOGmROIqxq' \
    'Q0gcNeTflyvUh3w5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'AdminUpdateUserBanV3' test.out

#- 155 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "ZtfwmOCKpFSMF0tf", "emailAddress": "GIZCTNiIRc9fEjkZ", "languageTag": "hEpAJMCxMp2J0hDg"}' \
    '2kMgkvhoQe9gD9tG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminSendVerificationCodeV3' test.out

#- 156 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "N0nE7M36mI9u3EeZ", "ContactType": "tLQij2JXsqdXfhZT", "LanguageTag": "TaCeqGv7meuQhJuq", "validateOnly": true}' \
    '9lINFTtERAXT2h3h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'AdminVerifyAccountV3' test.out

#- 157 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'cQ2wV3ZbBTnNQnVU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'GetUserVerificationCode' test.out

#- 158 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'hA5WnzVZdj8tsyzC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserDeletionStatusV3' test.out

#- 159 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"enabled": false}' \
    'QaLXp3o4TDraEEaD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminUpdateUserDeletionStatusV3' test.out

#- 160 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "NJbVd20FVHevCjth", "country": "JUb7jKuMrFaoLulz", "dateOfBirth": "p3sZxImVK5yh2LcM", "displayName": "8LaMW0ByjsRUrAHN", "emailAddress": "RkIcC4wNFzsbrtYv", "password": "Lh56AWXoMiowdWSs", "validateOnly": true}' \
    'DQ0VU1HED9CGo9aU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminUpgradeHeadlessAccountV3' test.out

#- 161 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'Xj3rh0UyqxVWlIMY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminDeleteUserInformationV3' test.out

#- 162 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    '5tTJw4KV104MtMhK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminGetUserLoginHistoriesV3' test.out

#- 163 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "HmSjqPuQZX5KjdNr", "newPassword": "EwfWo2MwulLg4bsO", "oldPassword": "4YHEYLjTSNDf3zaz"}' \
    'm6p5Y1tkG9WwU4Ty' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AdminResetPasswordV3' test.out

#- 164 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 58, "Resource": "6GqT2vSLLiMvcu39", "SchedAction": 26, "SchedCron": "ZJypWzpNXgnoKIz8", "SchedRange": ["O8NglJtZTh280vfl", "FMxIhlIT8AgyZJ16", "MMd2bzOrTn2huwPg"]}, {"Action": 50, "Resource": "7WvbNSeeDNfUESLl", "SchedAction": 47, "SchedCron": "EfrJDxKsw5Xl7ZZr", "SchedRange": ["DZdbuvCFBaVcohew", "KkVuGv9fQXkErF0d", "rbYrrFQP6rW62Cte"]}, {"Action": 40, "Resource": "1cr5T1PSXhduTWch", "SchedAction": 53, "SchedCron": "97PY0txzvYwv7atn", "SchedRange": ["9EQv2Oj8TFNeGtJG", "jKbMgCeuAYuzrmbW", "ofEaKStqdKu4ROnO"]}]}' \
    'NpJ849chqeiUGQMw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserPermissionV3' test.out

#- 165 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 80, "Resource": "URYZCeF30RT9rBgM", "SchedAction": 29, "SchedCron": "hHMSLAiscGRWzkCl", "SchedRange": ["1ZKuPxjDUGRGcCEP", "jbUy7F82Adu9BYRH", "rVTehrqgvEtEs2Lp"]}, {"Action": 62, "Resource": "jTyRd3LrR1x6U1v6", "SchedAction": 51, "SchedCron": "xqBlPBYJ7X6uVy7F", "SchedRange": ["WTSfMi2CPVGxjcdp", "dCqVeePMSqb8y8qJ", "TUQY40Zrpn0vAD9Y"]}, {"Action": 37, "Resource": "qqqff2iWi4yP3uqN", "SchedAction": 4, "SchedCron": "LsUGrVQAbhS54ZuQ", "SchedRange": ["HKersDmJLUHAKtfX", "CKOna8DdjtZhh6of", "sUoRh6r0e0J6vyqP"]}]}' \
    'w7YlmV3kES0Hi88U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminAddUserPermissionsV3' test.out

#- 166 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 4, "Resource": "gSV40OvY7apPCrN5"}, {"Action": 2, "Resource": "eu5UcxuXXpt0YSPX"}, {"Action": 81, "Resource": "4uEIdAwgDobopbdJ"}]' \
    'eVCiKs2vLyH9kcSB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionBulkV3' test.out

#- 167 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '7' \
    'wYUJPbvzn8TYoMDA' \
    'aUXSuBQdvdhJoT0W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserPermissionV3' test.out

#- 168 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'K5ngNUxDKfZYofPG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserPlatformAccountsV3' test.out

#- 169 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'UbSaA00nKxQjYU6K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminGetListJusticePlatformAccounts' test.out

#- 170 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    'lavIiLxU2I1GyJS4' \
    '8Hxu8Ju4XSAnlXRY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminGetUserMapping' test.out

#- 171 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    'B9BgSZBvkehRn83B' \
    '0nrW1qx3NJTugVWX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminCreateJusticeUser' test.out

#- 172 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "z8dv7BiEUqnzxs2d", "platformUserId": "eMF8UAJIHEZv5zyU"}' \
    'UyNJkvA5xF3zHtZS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminLinkPlatformAccount' test.out

#- 173 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "d3QzXhkrN4pWryt4"}' \
    'XTNwpp0ni1YfIgLZ' \
    '4YIzElrLZOBLHCKm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformUnlinkV3' test.out

#- 174 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'LBaIwlokbAFW8RgB' \
    'UwBL28BqM8UzvKqe' \
    'oTiNKGRUMrimGAz6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminPlatformLinkV3' test.out

#- 175 AdminGetThirdPartyPlatformTokenLinkStatusV3
$PYTHON -m $MODULE 'iam-admin-get-third-party-platform-token-link-status-v3' \
    'OhmHOpCdr3WzDm3h' \
    'Jdd6uaO9TiTPnIh2' \
    'iaIBpYC4txul6VKY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 176 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["lNYYlHPwKDpJmkeo", "Akp3Z4pgyJYwclb4", "gd4QgQut2hiPuDdO"]' \
    'PHcN9drwqytieXpI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminDeleteUserRolesV3' test.out

#- 177 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "Zfr5XDq9dGLHjtgE", "roleId": "2bTXJxCCFqPNDqWr"}, {"namespace": "pkWnnova15WVuE5c", "roleId": "YVP9tQSa27BnPyq3"}, {"namespace": "I1BLtGEZDRNkk4DJ", "roleId": "UofJXK8RGS0zCYRV"}]' \
    'mbfzwUmsy0stUmKd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminSaveUserRoleV3' test.out

#- 178 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    'XiiTObNdqkWa13g3' \
    'pgHx6uPf6jQZcYer' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminAddUserRoleV3' test.out

#- 179 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'H933X7iXEEM2KOus' \
    'NEHcI95GGdJvucDb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminDeleteUserRoleV3' test.out

#- 180 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": true, "reason": "quMQSPp5XD4S1ilf"}' \
    'gff7Et4uY8nlBwGN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateUserStatusV3' test.out

#- 181 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'HgfgwZwVMvshGmsg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 182 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "6ZJYnkHDnHTlRugM"}' \
    '7a2UZgeesipbP027' \
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
    '{"adminRole": false, "deletable": false, "isWildcard": true, "managers": [{"displayName": "M5E8tAajVSvLRj30", "namespace": "6RDuaSixXEdloYZB", "userId": "katNLc42eq0O6VsX"}, {"displayName": "tOlQwj5xPvm7c5nP", "namespace": "R0Y1sffUaZ64dFpi", "userId": "v8o9Gw4QtKgyIeyS"}, {"displayName": "oUxoMrj2J4JGQZAt", "namespace": "yjTxnlmSyjEaFH2D", "userId": "RN6HIEqIFEcS0ynI"}], "members": [{"displayName": "MOYWpUYUQMooiKT5", "namespace": "7rmbjEnimeR7EFBz", "userId": "43E9FkOPVu2fDtOj"}, {"displayName": "W1iSYQbcebBd5wb5", "namespace": "H3qppoCiHMD4iBK2", "userId": "O7qYtOHV5hnpjc5C"}, {"displayName": "NLnnEvo25aEtdjls", "namespace": "5oadseJg7y4Q9CU3", "userId": "fjSRaXD4HDmdvhMX"}], "permissions": [{"action": 49, "resource": "Jiu7BIimNuwB3hBV", "schedAction": 16, "schedCron": "ihdw3prp0UHlWUxk", "schedRange": ["BefhxRtrqbv56oqw", "nCLVc2qHZuuedbBO", "d19DqZJRYV1oqNLm"]}, {"action": 85, "resource": "Xoncy7NZQ4PkAPXB", "schedAction": 58, "schedCron": "8bYvaWLoKzHnngdf", "schedRange": ["FnOfY9stXH6LYXXM", "ndxBPKmHVB7cNzHh", "vxc4xAPZ86WNnQOh"]}, {"action": 42, "resource": "VLzAP6aOzsTqEFXU", "schedAction": 14, "schedCron": "BU0Eo6QJ9vBRJ4UP", "schedRange": ["09fabC01Thm9f4AW", "pyiKVT3OvEujx5yj", "tQSCJaOHzpb623Ec"]}], "roleName": "iYoYOPVg6DLEZ6Dx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminCreateRoleV3' test.out

#- 185 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'pwBm2N8PdQ5mQaGX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRoleV3' test.out

#- 186 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'EbnmWR0H3EkrHqaL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteRoleV3' test.out

#- 187 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": true, "isWildcard": false, "roleName": "BQnEDgX49n1xTDFc"}' \
    'mOm1sqdIWU6ERylE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateRoleV3' test.out

#- 188 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    'Sgf5dXMrPoYSohfr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminGetRoleAdminStatusV3' test.out

#- 189 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'LyXMSrC62xYtDwfl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateAdminRoleStatusV3' test.out

#- 190 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'NGfufW5cWeg6eSCy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminRemoveRoleAdminV3' test.out

#- 191 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'psceITTkJGGCVF6L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRoleManagersV3' test.out

#- 192 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "rILDLviUCzmDAaW5", "namespace": "xz1c7ZuZXUCBYnkY", "userId": "0LEBSYBdUSiTOrhB"}, {"displayName": "8hVs29WOKmZRTtgy", "namespace": "cLzXz6lUMKi5mweM", "userId": "EZo2ZnL1Zg2JfH4f"}, {"displayName": "73jAevOnES6YJLlb", "namespace": "2AfUEEBbqMMKvkOs", "userId": "R1fHUyirMVMOFES2"}]}' \
    'J2OzNlJE3uqZz574' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminAddRoleManagersV3' test.out

#- 193 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "g31cA0PwZxTIZVSG", "namespace": "QyTzhs9Asy4d629N", "userId": "4YnolVWA2dWxBs05"}, {"displayName": "6jkPCUuE1pgdHvlQ", "namespace": "KiR7SDQUDavOlKT5", "userId": "EIHNhJQq94Re5IM1"}, {"displayName": "akNKz9IltQUku3n3", "namespace": "2atB0QPQPEp5UtwU", "userId": "WGt6tooHP5kAww01"}]}' \
    'zalTddhAQ1pwqnyb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminRemoveRoleManagersV3' test.out

#- 194 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'vUIfuulmeegRwPPb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminGetRoleMembersV3' test.out

#- 195 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "n7lttd21cS6IVE4f", "namespace": "zwG3BHaRcZ8NK4gk", "userId": "LmvEOaRcqTgF0xtQ"}, {"displayName": "AXoDoFkmA3fgzcwd", "namespace": "gJMjIyGfiNBQy41M", "userId": "1gzGCbaxw33rNbE4"}, {"displayName": "bbDU4FMTbQaANJOO", "namespace": "DGerDCWcl3VSJENQ", "userId": "opeHD6iKBGm5Cj7R"}]}' \
    'qnJUmfDmofxvN8pR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminAddRoleMembersV3' test.out

#- 196 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "GoUtmbWZbEjPyq35", "namespace": "BWDoc3qNcQFFyHv1", "userId": "41NPqjRUMKSQjFdj"}, {"displayName": "qTaZFsWzbqwTZQIN", "namespace": "5jC6a8mEVCXHmFnr", "userId": "SL0PJcZQaCeNLYxM"}, {"displayName": "ID9pqZ5rryiMMt6f", "namespace": "QtLhzylaquioT3QB", "userId": "t29AiRASsuFM4ahG"}]}' \
    'w7XcF1Qwzz606UGX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminRemoveRoleMembersV3' test.out

#- 197 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 86, "resource": "5BtKcwj6PqqOgCim", "schedAction": 35, "schedCron": "Kx6ByTygbtOtcQS4", "schedRange": ["Cmgw1wRUnIVYxY6O", "hdkrYiCinoVOzo4P", "lv1IlTpEhjTFYdzs"]}, {"action": 95, "resource": "uOzzkoBmMR9C4qPq", "schedAction": 72, "schedCron": "3zKsfjz1mFkyxoUz", "schedRange": ["fMFoXCOguSq2A4R3", "wDdSkNfHJtA3QiX9", "ZvtydbaVb0scd97A"]}, {"action": 49, "resource": "GP6djn2Ps3IVT5hU", "schedAction": 26, "schedCron": "3cnDq0ddZG0EpfGA", "schedRange": ["qHKcSxUc2YgRpk2I", "FGIgIpscUpVAciu2", "XPPUxzXHUvxhvTZc"]}]}' \
    'vRKoaM4ozSAg8FTL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateRolePermissionsV3' test.out

#- 198 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 35, "resource": "oTRUkjGoRkPs2SO9", "schedAction": 49, "schedCron": "rgXNIaU11cBXLwTf", "schedRange": ["opqeZtHJnRgaGfLM", "FbvyI5PZGzVLcmZK", "KKYARape2tsNczam"]}, {"action": 95, "resource": "Cdd1QYvww4XDoklt", "schedAction": 12, "schedCron": "SmVzePIroz41oQCu", "schedRange": ["XeTRyJQrNLTcqLVT", "N5Qf4tjPGpu27yxb", "1of79zVTWIfgdNph"]}, {"action": 34, "resource": "Ze0hL9rPkV5GkSrc", "schedAction": 24, "schedCron": "PLhDSJx9jzxaRKph", "schedRange": ["4kiIFgS4fLqlrKGi", "S3XxjkyNfj3XgTRT", "jI9oNBzgQ4CRwg0s"]}]}' \
    'KVeSpMny0GrvKI5E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'AdminAddRolePermissionsV3' test.out

#- 199 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["VB9ZFzLNsjdCFtKY", "0KsxR0rCFkyiQZfM", "nTbKdwNhiIP7dpJ8"]' \
    'B8VwFQnVco2oCn1K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'AdminDeleteRolePermissionsV3' test.out

#- 200 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '44' \
    'WBxTLcOef8MgIwkr' \
    'KFEtwESJCe2ksG3n' \
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
    'ZE13H2fILFzOlAZb' \
    'DQAEJLbVWH2XLIg3' \
    'MgmdSvWp3h0xPsVY' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 202 'UserAuthenticationV3' test.out

#- 203 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    '8qNwB2TY4v9NNfQS' \
    'YLFKSl3FNFFJnt3r' \
    'IwZdW02Su6aCnL81' \
    '6aH6gOBUIMeL0GL3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'AuthenticationWithPlatformLinkV3' test.out

#- 204 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    'aefSDME8X2MxILI4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 205 RequestOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-request-one-time-linking-code-v3' \
    '2BJMPkZmay4Csye3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'RequestOneTimeLinkingCodeV3' test.out

#- 206 ValidateOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-validate-one-time-linking-code-v3' \
    'iJLtjsu6ZJRCoDq3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'ValidateOneTimeLinkingCodeV3' test.out

#- 207 RequestTokenByOneTimeLinkCodeResponseV3
$PYTHON -m $MODULE 'iam-request-token-by-one-time-link-code-response-v3' \
    'geuHFFaZzPIjETqc' \
    'KN1gaQ4Bn0cPPtKa' \
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
    'Jlw31pdDrXQ47WSG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'RequestGameTokenCodeResponseV3' test.out

#- 211 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'yDCKF0LLhO3lGZ7e' \
    'GOPj2XoFug8BUQUm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 212 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    'PHnPumcazKAna0ji' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'RevokeUserV3' test.out

#- 213 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    '757aNDFeKnQP2j2W' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 213 'AuthorizeV3' test.out

#- 214 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    '4PFduN4gx0UC6eWK' \
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
    'CFGS97Si6XyLVPrk' \
    'UxyZ1OH5Nn4nMT8Q' \
    'OyTuUSD9ImtaPAoc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'SendMFAAuthenticationCode' test.out

#- 217 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    'OQcpBWSNrCjSNEAd' \
    'ojkCMmYyTGO07foR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'Change2faMethod' test.out

#- 218 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    'Z6FujpIWo0qJtqp4' \
    'Q6XgICLgMHcP1eE6' \
    'sjWQllYsONpp6QGW' \
    'true' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'Verify2faCode' test.out

#- 219 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'CNiszHE69D1MMoaf' \
    '6KlgRtwaM2IoyY1w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'pIdjcAtTj1IMuuhx' \
    'xlulfmya73hX0a8R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'AuthCodeRequestV3' test.out

#- 221 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'i85PA9wNpmrK5Y5h' \
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
    'eA2ewWnFcqHxXP3k' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 223 'TokenRevocationV3' test.out

#- 224 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'client_credentials' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 224 'TokenGrantV3' test.out

#- 225 VerifyTokenV3
$PYTHON -m $MODULE 'iam-verify-token-v3' \
    '8gY3c4SryWB4yRaD' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 225 'VerifyTokenV3' test.out

#- 226 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'xvxwaLM8HkVOW8Pn' \
    'LkgqkqYZWPZTgKag' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'PlatformAuthenticationV3' test.out

#- 227 PublicGetInputValidations
$PYTHON -m $MODULE 'iam-public-get-input-validations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'PublicGetInputValidations' test.out

#- 228 PublicGetCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction-v3' \
    'TzdcYcko7U3gH239' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'PublicGetCountryAgeRestrictionV3' test.out

#- 229 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-public-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 230 RetrieveActiveOIDCClientsPublicV3
$PYTHON -m $MODULE 'iam-retrieve-active-oidc-clients-public-v3' \
    'LhRx2Laa2RdtVb6V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 231 PublicListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["gA5yFIH3s9UyeaFi", "8OE7BCK4FeVGrl5N", "pUG9zblWEiHaUjyT"]}' \
    'Hb0sSlstb3slUe94' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 232 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    'NxhXsVcqTYi1TMBM' \
    'zaOrxuKvtUVtqbDW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'PublicGetUserByPlatformUserIDV3' test.out

#- 233 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    'nJ2i9TRmJOqIl7U1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'PublicGetAsyncStatus' test.out

#- 234 PublicSearchUserV3
$PYTHON -m $MODULE 'iam-public-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'PublicSearchUserV3' test.out

#- 235 PublicCreateUserV3
$PYTHON -m $MODULE 'iam-public-create-user-v3' \
    '{"PasswordMD5Sum": "2hO5vpk9DOSgbsdG", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "D9A5NmuZDUV3yHur", "policyId": "gOfba1XeoHYTNoRo", "policyVersionId": "l84UlkxtP5Vok9sN"}, {"isAccepted": true, "localizedPolicyVersionId": "g3tChsS3fFpaS1uq", "policyId": "1mH3oYfPK2QiAUhI", "policyVersionId": "fi17YrkWHNxiaNyq"}, {"isAccepted": true, "localizedPolicyVersionId": "uglkd9LIoshGnFSu", "policyId": "Hmrqej8PRppYY1vl", "policyVersionId": "V0M2g6oreqyBzWzC"}], "authType": "gMMWZuD6tmIR28xV", "code": "xbtpSKOfiIP3S6py", "country": "pZqISn3msrykQFtW", "dateOfBirth": "8QGKFZLrIfqrZuu7", "displayName": "IwKcT7sAsv2TKCbY", "emailAddress": "MVkXEHmsHwIGGsus", "password": "S0zZRODEKPdudZsL", "reachMinimumAge": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'PublicCreateUserV3' test.out

#- 236 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'aGJx5OFp3jKEx4aS' \
    'GdwTPX4ig3NVFFkP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'CheckUserAvailability' test.out

#- 237 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["7O3F4vsohRWDyGYI", "VFDbTvRYfpJ4wM9W", "ZfOOxAzmsbhi5QJu"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'PublicBulkGetUsers' test.out

#- 238 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "c2SNBaOlXfgsgBd7", "languageTag": "MYLLoPZrkjRm5Ki0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'PublicSendRegistrationCode' test.out

#- 239 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "orhXrISEaPZHLQkT", "emailAddress": "HvndQsCKAO2JRz3C"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'PublicVerifyRegistrationCode' test.out

#- 240 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "GwtujkzxidLcAQWG", "languageTag": "VRg6DVso5TJCSugd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'PublicForgotPasswordV3' test.out

#- 241 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    'o4XTm8t1YTWqItjN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'GetAdminInvitationV3' test.out

#- 242 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "dr1C2TIQzRJY7UfY", "policyId": "SrdN0JVz4U43EcV1", "policyVersionId": "FRyeeqehMNeRYKeM"}, {"isAccepted": false, "localizedPolicyVersionId": "3mnFSq9jJTVFoFjx", "policyId": "Zjh5qUR1Pq4a4uaM", "policyVersionId": "fd0SQAfYIyzHL8jx"}, {"isAccepted": false, "localizedPolicyVersionId": "VY6g3PO4hKAeF4GU", "policyId": "V5m96qcCJsVOWtu5", "policyVersionId": "RPsqd66ImBEuhnax"}], "authType": "EMAILPASSWD", "country": "REQZsHyXzoIXNf0K", "dateOfBirth": "bL9HyJttdgfLGO3u", "displayName": "mmpllnV6B62P1Kaz", "password": "g73c6UpmA4ehxNII", "reachMinimumAge": false}' \
    'tAmkanukAzAMaRvI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'CreateUserFromInvitationV3' test.out

#- 243 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "UhUwguGgbLLN3O7C", "country": "EYjxqElP5lA2FJ0i", "dateOfBirth": "GLRTXGsC5mxxse4e", "displayName": "euMgEctVEux2MSuw", "languageTag": "sEHlwdeJyhsHS6Yq", "userName": "PudWviQsULL1txfX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'UpdateUserV3' test.out

#- 244 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "9tqFSkGXoIcFN5JL", "country": "9M53Mg0MzWS9usxx", "dateOfBirth": "nMhjv66DyED4prRV", "displayName": "ibTATxd7Mzjv1gSj", "languageTag": "8kcNhoqcRZRNAToj", "userName": "M7daV0VwR3yNKDtM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'PublicPartialUpdateUserV3' test.out

#- 245 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "qMrAGpdyF6WDHn3e", "emailAddress": "PBxQNz2IUEHMzl5j", "languageTag": "hwVDsuzwJ4v50eoa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'PublicSendVerificationCodeV3' test.out

#- 246 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "IBrTh0EKkJioUpvG", "contactType": "nkcHgCfaWzPUvCnf", "languageTag": "qsPGgJZyRwigaMu0", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'PublicUserVerificationV3' test.out

#- 247 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "ek8WObpf0FHYfViE", "country": "j70KYKIfFt4GYjUt", "dateOfBirth": "4F1ZVy2qFfSr3psW", "displayName": "jOyHLyKe2foqsVIf", "emailAddress": "gBTr8RcxRQR0NYdJ", "password": "zf3TMhSaynVs05nZ", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'PublicUpgradeHeadlessAccountV3' test.out

#- 248 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "7REG4meKEabfVXBJ", "password": "PIZqZC5d6JuFdcfi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'PublicVerifyHeadlessAccountV3' test.out

#- 249 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "Nf0DOHKwxDF5GJhC", "newPassword": "jVHiCn2hTefT8gPF", "oldPassword": "J4WndMpQhcLK0WTZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'PublicUpdatePasswordV3' test.out

#- 250 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'btmQkwC8azx3IRWm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'PublicCreateJusticeUser' test.out

#- 251 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'e3C6p2r4D3NQdjrj' \
    'kX3AMgK3JgZufzss' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'PublicPlatformLinkV3' test.out

#- 252 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "A284mG7uAojLYBsx"}' \
    '8oqMzbE0ljQaBtb4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'PublicPlatformUnlinkV3' test.out

#- 253 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    '7V691j0FZp2vjOXp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'PublicPlatformUnlinkAllV3' test.out

#- 254 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    'txzx6kkaZYpl52sQ' \
    'R9Znp5d1eSwrG2GB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'PublicForcePlatformLinkV3' test.out

#- 255 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'BEWrDbQ1ZzhDuLHq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'PublicWebLinkPlatform' test.out

#- 256 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    '9LTBstguOdN0O7l3' \
    'GbKPHdDTQDEEE2mT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'PublicWebLinkPlatformEstablish' test.out

#- 257 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "sn1NwJ71szsNmnqZ", "emailAddress": "SWdEyOVYrTdDq7Iq", "newPassword": "bTVv8BLsqQW8HSrE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'ResetPasswordV3' test.out

#- 258 PublicGetUserByUserIdV3
eval_tap 0 258 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 259 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    'm5Y7jI232Sjktiji' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'PublicGetUserBanHistoryV3' test.out

#- 260 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'NzTUe8KdizXmrmK0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 261 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    'sCUsqxKocHomtjoU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'PublicGetUserInformationV3' test.out

#- 262 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    '1kUqRedwIu1TSRr6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'PublicGetUserLoginHistoriesV3' test.out

#- 263 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'r8mzfMedpcKhvHPl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'PublicGetUserPlatformAccountsV3' test.out

#- 264 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    'vYanGqEkn9OEVwLW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'PublicListJusticePlatformAccountsV3' test.out

#- 265 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "GT4MXhmzvRQb7c0v", "platformUserId": "mjWq9fQqzulLGfQM"}' \
    'qSLQDlRFYMVfiAMa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'PublicLinkPlatformAccount' test.out

#- 266 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["6Pco7MfvikslpyL9", "BYLVVznF6hMYfksp", "8VQhYSFeBOp0ilGQ"], "requestId": "FwHUtZugblT3aIDK"}' \
    'n9qJXncm5igpAewb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'PublicForceLinkPlatformWithProgression' test.out

#- 267 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    'mnWk0E7YaPblcWEy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'PublicGetPublisherUserV3' test.out

#- 268 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'Ngvs5LEZrQXzSQRW' \
    'Rs9EGnRPgYlJElgJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 269 PublicGetRolesV3
$PYTHON -m $MODULE 'iam-public-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'PublicGetRolesV3' test.out

#- 270 PublicGetRoleV3
$PYTHON -m $MODULE 'iam-public-get-role-v3' \
    '8kx1WEeDbql13FtQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'PublicGetRoleV3' test.out

#- 271 PublicGetMyUserV3
$PYTHON -m $MODULE 'iam-public-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'PublicGetMyUserV3' test.out

#- 272 PublicGetLinkHeadlessAccountToMyAccountConflictV3
$PYTHON -m $MODULE 'iam-public-get-link-headless-account-to-my-account-conflict-v3' \
    'Mu41rnOzbsFBqg6d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 273 LinkHeadlessAccountToMyAccountV3
$PYTHON -m $MODULE 'iam-link-headless-account-to-my-account-v3' \
    '{"chosenNamespaces": ["ziWvdNcwfUBMdNuT", "aiLxFMXRpDP9xutn", "tU8xHw4yYJOCViHw"], "oneTimeLinkCode": "unQwpC2eCFUAHZaY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'LinkHeadlessAccountToMyAccountV3' test.out

#- 274 PublicSendVerificationLinkV3
$PYTHON -m $MODULE 'iam-public-send-verification-link-v3' \
    '{"languageTag": "SvsWiNJtqXltZF6a"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'PublicSendVerificationLinkV3' test.out

#- 275 PublicVerifyUserByLinkV3
$PYTHON -m $MODULE 'iam-public-verify-user-by-link-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'PublicVerifyUserByLinkV3' test.out

#- 276 PlatformAuthenticateSAMLV3Handler
$PYTHON -m $MODULE 'iam-platform-authenticate-samlv3-handler' \
    'SRmHU5iR3hXIbzWP' \
    'KOkzftOgDQAWhulb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'PlatformAuthenticateSAMLV3Handler' test.out

#- 277 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'rDf7q4cAnpmLiEu4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'LoginSSOClient' test.out

#- 278 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'CNtX2lnqi7cHTSdG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'LogoutSSOClient' test.out

#- 279 RequestGameTokenResponseV3
$PYTHON -m $MODULE 'iam-request-game-token-response-v3' \
    'oLZbC3UJruU4uIXB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'RequestGameTokenResponseV3' test.out

#- 280 AdminGetDevicesByUserV4
$PYTHON -m $MODULE 'iam-admin-get-devices-by-user-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'AdminGetDevicesByUserV4' test.out

#- 281 AdminGetBannedDevicesV4
$PYTHON -m $MODULE 'iam-admin-get-banned-devices-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'AdminGetBannedDevicesV4' test.out

#- 282 AdminGetUserDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-user-device-bans-v4' \
    'ZsEYogFWiH9z4E8z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'AdminGetUserDeviceBansV4' test.out

#- 283 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "maZ5cg0REtUWY4fV", "deviceId": "IdqwCWF5wmbOubTx", "deviceType": "AAeDCowR3MeCNL1o", "enabled": true, "endDate": "7piT8VcrXLZnuMNp", "ext": {"KEIs3GC9VTK7tkJW": {}, "FpHt7MdKu9Xwn5GH": {}, "JDGatrYOMO91CYEj": {}}, "reason": "X867n9PT9fR7mMuB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'AdminBanDeviceV4' test.out

#- 284 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    'XPDKCriRKzTZ7TXA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'AdminGetDeviceBanV4' test.out

#- 285 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": false}' \
    'ShabwyYCxTHrDel8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'AdminUpdateDeviceBanV4' test.out

#- 286 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    'oThvr8CUEzw4zL1Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'AdminGenerateReportV4' test.out

#- 287 AdminGetDeviceTypesV4
$PYTHON -m $MODULE 'iam-admin-get-device-types-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'AdminGetDeviceTypesV4' test.out

#- 288 AdminGetDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-device-bans-v4' \
    'eR3EYXBFpUX9y4tY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'AdminGetDeviceBansV4' test.out

#- 289 AdminDecryptDeviceV4
$PYTHON -m $MODULE 'iam-admin-decrypt-device-v4' \
    '7o5FFi1n10vDgyoH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'AdminDecryptDeviceV4' test.out

#- 290 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    'XIlrMl2RAukCL26i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'AdminUnbanDeviceV4' test.out

#- 291 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    'hdMy9YCLNJEkvq6S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'AdminGetUsersByDeviceV4' test.out

#- 292 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"count": 95}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'AdminCreateTestUsersV4' test.out

#- 293 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["otLNz0u8ySxA0yrj", "z4q7e0EJnADXC2y0", "DY1E1SMK9oA4vK56"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'AdminBulkCheckValidUserIDV4' test.out

#- 294 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "dsYI5SKV5pDANyJ1", "country": "84miBhdVJt81fmLS", "dateOfBirth": "yGuu5rbJVIwRMtwA", "displayName": "pGbXnR3yC6f2MHGG", "languageTag": "edk0KzXRclOXdPYZ", "userName": "QxBnttu4yW5etl4X"}' \
    'k8Hd1lRtoPMvsu9o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'AdminUpdateUserV4' test.out

#- 295 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "swEPTvzwwGnpbx8M", "emailAddress": "CIjKzylqW8auyseP"}' \
    '9wEEyYAnHPp4XzVL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'AdminUpdateUserEmailAddressV4' test.out

#- 296 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    '5McglFCrjxqqxAYq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'AdminDisableUserMFAV4' test.out

#- 297 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'XG2V3baMkZ9JCqBI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'AdminListUserRolesV4' test.out

#- 298 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["kUID0EE9InZNLwwA", "hW2b5OHKtUv4lTkQ", "NjxhXdj1CG0EBgst"], "roleId": "9Qu8Ofl2oB8VTjF0"}' \
    'pD3NHU8iYUOtG5gb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateUserRoleV4' test.out

#- 299 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["QSKW2MdgCH4bWxRF", "6fBPa6GOuV5z0p8j", "aJs2duQqawPrxi6F"], "roleId": "4elhy9CZ94CAUVW8"}' \
    'FoEf8tjCjWc22qqD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'AdminAddUserRoleV4' test.out

#- 300 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["fNz59jHwSDQHadmA", "o0lzhPm7RmaOr6TL", "wVyE42ApAb7CKt79"], "roleId": "wAopZL9Cw6K9h55m"}' \
    'wUvhdBOgumV4wAsd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'AdminRemoveUserRoleV4' test.out

#- 301 AdminGetRolesV4
$PYTHON -m $MODULE 'iam-admin-get-roles-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'AdminGetRolesV4' test.out

#- 302 AdminCreateRoleV4
$PYTHON -m $MODULE 'iam-admin-create-role-v4' \
    '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "0rzqX2KJcYHgiFDx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'AdminCreateRoleV4' test.out

#- 303 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'clBXap6j73doCWxh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'AdminGetRoleV4' test.out

#- 304 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'ubMXbxNvT6wAffv4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'AdminDeleteRoleV4' test.out

#- 305 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "x9neFHWhDRJtyYEt"}' \
    '7ygZleAoUuVKneoO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'AdminUpdateRoleV4' test.out

#- 306 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 34, "resource": "0ytPdJ8SY3qoogOx", "schedAction": 29, "schedCron": "70OsbzRKKPd6mjzL", "schedRange": ["xllUrFYn7cSuO7Nx", "KHUHg0c4X7fHdITm", "N9opaF0kh3pCRB3i"]}, {"action": 27, "resource": "5YdHivK2Q0WwolQy", "schedAction": 52, "schedCron": "37hJMOEv5W0v25yA", "schedRange": ["ObZIbrA8XAKKWMDe", "behSjpt0wrfWPXaI", "1Jb75o2MFOa6xgPt"]}, {"action": 47, "resource": "9QROGDeJCyHvUsnL", "schedAction": 45, "schedCron": "0euBsccHPA2v9XP9", "schedRange": ["enfEX7lloLgIYqxF", "fSNJlHCjxLNnYUlG", "QsFpy9ZVlLIFwLgT"]}]}' \
    '78nootfUs9559ilm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'AdminUpdateRolePermissionsV4' test.out

#- 307 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 51, "resource": "cauhrw9Yn2z5cnbm", "schedAction": 92, "schedCron": "z2Aa24yBTw3wfNGy", "schedRange": ["Wf3VujS7Bq5bcfPW", "4pPZB9YXltCxyztU", "nj17t3gHBXvjvzie"]}, {"action": 47, "resource": "VPlOGfFBlu2ZP0Ik", "schedAction": 17, "schedCron": "yDkA5LmART6kulpM", "schedRange": ["4SRtUE5P4kxmHtFb", "jqurHix0QYycDH5w", "e2Mx0sYCnYPT4i4m"]}, {"action": 47, "resource": "tJ8dkAVOJ5imghdf", "schedAction": 98, "schedCron": "QEzz5N5osRYO7wbY", "schedRange": ["h7q02W8tkTURUFmq", "Nc8xhQqptccNorRl", "s7EC3nDnhFvDlFd7"]}]}' \
    'iyZpvWVJFK6Zuvlz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'AdminAddRolePermissionsV4' test.out

#- 308 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["GCII156hIg0g8HIx", "pzm9AcFhH4ZlYY3r", "EuHMWwQNmCQmGCF9"]' \
    '63CbsOawlRBQJH6f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'AdminDeleteRolePermissionsV4' test.out

#- 309 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'Nekhk077gxaj55hu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'AdminListAssignedUsersV4' test.out

#- 310 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["TA6AvmW0567BFqbr", "PIuxKmBXLi6GpnqA", "eMvg3w0FQ1520WM3"], "namespace": "TxWXSdTiKdva2URE", "userId": "oBSFtCLy2CqgCG7J"}' \
    'wJCDqkzOdFwLJpIP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'AdminAssignUserToRoleV4' test.out

#- 311 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "xzLE1V9U1NgpH7Oc", "userId": "44yjRdfqZgv34Gqq"}' \
    'jelcN0GJmPwUTWMx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'AdminRevokeUserFromRoleV4' test.out

#- 312 AdminInviteUserNewV4
$PYTHON -m $MODULE 'iam-admin-invite-user-new-v4' \
    '{"assignedNamespaces": ["0MiPAjnWIhFrqSn4", "erXEtU1CaD8AqsMC", "GBNhmUt6fzYRn85b"], "emailAddresses": ["rTu8F7cuCPh1TGZJ", "mgWNHWnvOBRCt4on", "qRo2PnMSRarKg4co"], "isAdmin": true, "namespace": "OAcUwYHGmG5rNDBF", "roleId": "1oU37vjfyX5YLaM0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'AdminInviteUserNewV4' test.out

#- 313 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "wmi0i1WABBbq8IzZ", "country": "sMFLX9ZhFXcFtfBS", "dateOfBirth": "3ZIHofhwyM6Bw2sF", "displayName": "GQ5DQoDwzrKPOZZn", "languageTag": "V3zR7YxSu6addocg", "userName": "10Hy9jx7gBHTOHHA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'AdminUpdateMyUserV4' test.out

#- 314 AdminDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'AdminDisableMyAuthenticatorV4' test.out

#- 315 AdminEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'AdminEnableMyAuthenticatorV4' test.out

#- 316 AdminGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-admin-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 317 AdminGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'AdminGetMyBackupCodesV4' test.out

#- 318 AdminGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'AdminGenerateMyBackupCodesV4' test.out

#- 319 AdminDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'AdminDisableMyBackupCodesV4' test.out

#- 320 AdminDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'AdminDownloadMyBackupCodesV4' test.out

#- 321 AdminEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'AdminEnableMyBackupCodesV4' test.out

#- 322 AdminSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-admin-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'AdminSendMyMFAEmailCodeV4' test.out

#- 323 AdminDisableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-disable-my-email-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'AdminDisableMyEmailV4' test.out

#- 324 AdminEnableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-enable-my-email-v4' \
    'rjld0LnREsrrB2pJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'AdminEnableMyEmailV4' test.out

#- 325 AdminGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-admin-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'AdminGetMyEnabledFactorsV4' test.out

#- 326 AdminMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-admin-make-factor-my-default-v4' \
    '7V8BSrucjO3zvSM5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'AdminMakeFactorMyDefaultV4' test.out

#- 327 AdminInviteUserV4
eval_tap 0 327 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 328 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "eVNHU9GcOivIfcCJ", "policyId": "t4U8VSgXoi9Fw25b", "policyVersionId": "9qXzlIK2G6AUjBCd"}, {"isAccepted": false, "localizedPolicyVersionId": "AdMiQ7eDMkeBRMur", "policyId": "18nCxiV9bQMHpPbv", "policyVersionId": "flI3LkRc1NgZaoYA"}, {"isAccepted": false, "localizedPolicyVersionId": "SJUfQEX996Mh1sQ3", "policyId": "Dw3uyjgQNAs9188Q", "policyVersionId": "m3W1De2McGd10wef"}], "authType": "EMAILPASSWD", "country": "gDSj1T6EdeYFmrLT", "dateOfBirth": "0HbvS4kSSt3CyDgf", "displayName": "6eFAiqSkHi0BR2El", "emailAddress": "F6z6eJKuOW61akRF", "password": "izqxCmudSXivAL3n", "passwordMD5Sum": "478mhb2I2yBJeCJg", "username": "hTrk68FWFzuLBdlr", "verified": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'PublicCreateTestUserV4' test.out

#- 329 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "UbgZQfw6Zys3mN8f", "policyId": "IcC9CkharfqaoMsG", "policyVersionId": "yv1RuSNdycDssUeH"}, {"isAccepted": false, "localizedPolicyVersionId": "Sre5GmZzCQwilS3I", "policyId": "xSjlyvR9PxG9Lji2", "policyVersionId": "Vc88W8aLjIxVGpdO"}, {"isAccepted": true, "localizedPolicyVersionId": "HFTtfM2mGUUpq3ix", "policyId": "7Am7W1fwJnV94BrM", "policyVersionId": "SP31wAkVH75UcmNX"}], "authType": "EMAILPASSWD", "code": "qcIo9lpz9oM52vHP", "country": "lwVV3jlPKDEYahnl", "dateOfBirth": "LJaLCvjRKKX1brmk", "displayName": "JDfdngbQD3pO8U3W", "emailAddress": "94Z8IW2MAL9gYHEV", "password": "3wnTZTvYYf4ZFuV6", "passwordMD5Sum": "L2AldoWWRN5wNYlF", "reachMinimumAge": false, "username": "yAsQGzwJR5poI718"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'PublicCreateUserV4' test.out

#- 330 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "Qnj4imu6XFfRcWDX", "policyId": "hq1YmGeygr2S4Yw8", "policyVersionId": "NmPaBeryzX2hOPVV"}, {"isAccepted": true, "localizedPolicyVersionId": "9bF07gnWDULkJPQR", "policyId": "0UJMr8ouccGH0B4L", "policyVersionId": "Ce2h0iFCCZgFWs5s"}, {"isAccepted": true, "localizedPolicyVersionId": "nT89A88GDOUClGyz", "policyId": "YgnYTdim6PkRoq5T", "policyVersionId": "O65KWh8ztRJkXxUA"}], "authType": "EMAILPASSWD", "country": "LRHd96dGLgkfrZve", "dateOfBirth": "FMWAFT7l0l1jaOAM", "displayName": "CzbsoIgmKwwMDQPj", "password": "UIosq1l6xo0D4JRb", "reachMinimumAge": true, "username": "qO6IuP2PY5hhX6uN"}' \
    'ah9JoHPj7jFWxSv1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'CreateUserFromInvitationV4' test.out

#- 331 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "lYylYAiZ8c7Zd7EU", "country": "oezOLw8C1c5bBB3X", "dateOfBirth": "Z7ColKwlsNvtFuun", "displayName": "QsvdXGlD40xxIyVw", "languageTag": "Yjn6dlC9Kfh9gHul", "userName": "oyce0cLJu4ljPWlC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'PublicUpdateUserV4' test.out

#- 332 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "WTuGO8MnfOQu3wdT", "emailAddress": "4Aodp95o1RkX7iW7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'PublicUpdateUserEmailAddressV4' test.out

#- 333 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "VpCngWAv5DAG8dPd", "country": "kKgQqjyzUZR2rFIA", "dateOfBirth": "uALNhNCyscsMBRLs", "displayName": "Wadk2OQ421q7Nb1v", "emailAddress": "rKthVvU5on065ApC", "password": "kVN3QchuQ6pntxB6", "reachMinimumAge": true, "username": "ss7rBnvQHAM8gSdI", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 334 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "JexnFA9Umz3KPICy", "password": "a5Fk5TPaEbX29cV8", "username": "v7MXctihtxMnIr4b"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'PublicUpgradeHeadlessAccountV4' test.out

#- 335 PublicDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'PublicDisableMyAuthenticatorV4' test.out

#- 336 PublicEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'PublicEnableMyAuthenticatorV4' test.out

#- 337 PublicGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-public-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 338 PublicGetMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-get-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'PublicGetMyBackupCodesV4' test.out

#- 339 PublicGenerateMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-generate-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'PublicGenerateMyBackupCodesV4' test.out

#- 340 PublicDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'PublicDisableMyBackupCodesV4' test.out

#- 341 PublicDownloadMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-download-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'PublicDownloadMyBackupCodesV4' test.out

#- 342 PublicEnableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-enable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'PublicEnableMyBackupCodesV4' test.out

#- 343 PublicRemoveTrustedDeviceV4
$PYTHON -m $MODULE 'iam-public-remove-trusted-device-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'PublicRemoveTrustedDeviceV4' test.out

#- 344 PublicSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-public-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'PublicSendMyMFAEmailCodeV4' test.out

#- 345 PublicDisableMyEmailV4
$PYTHON -m $MODULE 'iam-public-disable-my-email-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'PublicDisableMyEmailV4' test.out

#- 346 PublicEnableMyEmailV4
$PYTHON -m $MODULE 'iam-public-enable-my-email-v4' \
    '7jyfL3zMkklGCPIS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'PublicEnableMyEmailV4' test.out

#- 347 PublicGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-public-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicGetMyEnabledFactorsV4' test.out

#- 348 PublicMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-public-make-factor-my-default-v4' \
    'lsnVA6z0uSfNNpJU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'PublicMakeFactorMyDefaultV4' test.out

#- 349 PublicInviteUserV4
$PYTHON -m $MODULE 'iam-public-invite-user-v4' \
    '{"emailAddress": "YzJxnOyvqmswrToy", "namespace": "BIQumxDfAxNqCUti", "namespaceDisplayName": "zYM97ebZcYqwfIHP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'PublicInviteUserV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
