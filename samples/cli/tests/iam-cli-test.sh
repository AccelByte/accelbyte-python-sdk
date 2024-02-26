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
iam-admin-list-client-available-permissions --login_with_auth "Bearer foo"
iam-admin-update-available-permissions-by-module '{"modules": [{"docLink": "EAxcVpFrttufHIRd", "groups": [{"group": "H9UzVRiXbqlAw7r6", "groupId": "W2ktQG0h5JAav5kR", "permissions": [{"allowedActions": [0, 27, 100], "resource": "mzZ0m8SAMTwE6I56"}, {"allowedActions": [70, 0, 77], "resource": "RDBXxyaNoMR6hksp"}, {"allowedActions": [71, 2, 27], "resource": "PngUNB1vRodwpzS6"}]}, {"group": "DaDpv8N7ZQVqGj6o", "groupId": "DLjWjkY1aXlFcDtg", "permissions": [{"allowedActions": [83, 81, 18], "resource": "Y4YkHs1cnz1JSDgY"}, {"allowedActions": [93, 29, 23], "resource": "p38zsCTCrbCbPOyN"}, {"allowedActions": [86, 23, 21], "resource": "y6XM4OI18mAQLnzj"}]}, {"group": "Mf8GZ2WBZqxYG3aR", "groupId": "EAu2D6QVKNCWP75T", "permissions": [{"allowedActions": [57, 30, 18], "resource": "Fgx4c8OumKtPDKJD"}, {"allowedActions": [67, 28, 25], "resource": "Z4U68su8XfqlqNiT"}, {"allowedActions": [43, 0, 56], "resource": "vj7AorKsxwkosAVe"}]}], "module": "rXpc1C8XfwHuKeb9", "moduleId": "l3rGN9A3sNm84hdd"}, {"docLink": "SpHt0P7MIIR7CkyF", "groups": [{"group": "6C7duuyZ0GhDogqr", "groupId": "hBRd8lDR6qVNPRZY", "permissions": [{"allowedActions": [6, 80, 65], "resource": "Rljv7IPrDQQRgat0"}, {"allowedActions": [91, 9, 76], "resource": "vkLGMS0lyuI9a2I9"}, {"allowedActions": [42, 52, 86], "resource": "Vpbsx5w8hqUI06Up"}]}, {"group": "OXGSLmCVuHOPlLlk", "groupId": "vR8sKgnuRkgghGoY", "permissions": [{"allowedActions": [42, 17, 31], "resource": "ljvjKoyD6SCwGrnc"}, {"allowedActions": [34, 21, 25], "resource": "QsfCaTmt1d67FXGk"}, {"allowedActions": [77, 37, 17], "resource": "9Q0mPVo3twu0MesT"}]}, {"group": "Cf9x4rt69lna7qxN", "groupId": "eIxPz6MbwL6IY69z", "permissions": [{"allowedActions": [100, 95, 11], "resource": "aLqYSYWytLPziZMd"}, {"allowedActions": [19, 89, 49], "resource": "Kd3IL5TAQ6iiPlSC"}, {"allowedActions": [42, 62, 63], "resource": "zfTD1ZBm3MqHcUmL"}]}], "module": "ZZbSqb8RwNmn9HrN", "moduleId": "Qy4uZAAiE0mit9RG"}, {"docLink": "CCHYzUOcEdscKHPE", "groups": [{"group": "qgA8yu7Vk6Jt4Ymo", "groupId": "s9Jcdos4fYcTVU6R", "permissions": [{"allowedActions": [56, 44, 39], "resource": "CkGZ5dAgqxpBFmaL"}, {"allowedActions": [29, 73, 49], "resource": "MdalwSyliWMNW5Ny"}, {"allowedActions": [77, 43, 41], "resource": "qtlB2jJCSQT279ZZ"}]}, {"group": "PYGu0rdlgdWyOtXi", "groupId": "3choQrpOsDBU5Sep", "permissions": [{"allowedActions": [19, 59, 79], "resource": "hB3V0v52Dlym6puQ"}, {"allowedActions": [57, 48, 66], "resource": "oJ8aeCnaLpUKp44Y"}, {"allowedActions": [96, 60, 11], "resource": "jasWIPUvmEejtGeo"}]}, {"group": "yIPa8ZRrvjj7il35", "groupId": "MXbN9oCMNqq98SjT", "permissions": [{"allowedActions": [45, 70, 15], "resource": "xjUkl535X3ateEKD"}, {"allowedActions": [31, 58, 53], "resource": "9b6i5lZC9xv32e8c"}, {"allowedActions": [88, 4, 88], "resource": "sSovoqsZNBdte9ND"}]}], "module": "UPVJf6c2Z0QZxfgP", "moduleId": "ubTDIHrvqAThuwjR"}]}' --login_with_auth "Bearer foo"
iam-admin-delete-config-permissions-by-group '{"groupId": "HpKKTlmVr9XuoJbR", "moduleId": "FQSKVPHbn4Xxtu7L"}' --login_with_auth "Bearer foo"
iam-admin-list-client-templates --login_with_auth "Bearer foo"
iam-admin-get-input-validations --login_with_auth "Bearer foo"
iam-admin-update-input-validations '[{"field": "QRENjEEztx1WsYSi", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["nSBJroav91GXlvPG", "6bFYReVHQipcCx9Z", "w5D2L7vIYhGGSyEW"], "preferRegex": true, "regex": "ZJJ42d3PBddN8S48"}, "blockedWord": ["l9lyNApflxqMrj3o", "Zk03QXcKMDYDDxHS", "ZjtqXyJ58f7Gc26S"], "description": [{"language": "aiGVkydwYWQG26yU", "message": ["ZNmTBcvrbYCwZtxF", "HyPLtI8ilbyDPUIj", "88cekdqCt81P1ktf"]}, {"language": "Iovmv9gsR5cJcHm3", "message": ["SZLxoRDFuuuySj29", "a9LJE8HoRS1X2PFA", "AMwzHPxB1UskYs4Y"]}, {"language": "w20DOqOBSC2DKHRu", "message": ["PMMWH8Yb33T5UBJC", "jfcnLRfxeCSz9WEi", "8KlloeH0JT1yduat"]}], "isCustomRegex": true, "letterCase": "vQR3biBfsu4jmsRE", "maxLength": 47, "maxRepeatingAlphaNum": 53, "maxRepeatingSpecialCharacter": 82, "minCharType": 50, "minLength": 63, "regex": "QAk4mqrxzTtuLl4X", "specialCharacterLocation": "lbGL8QOxtjzm8y2w", "specialCharacters": ["NhmwoYZyI4EFZKBc", "YrCEAE7WIsfmx40N", "LRc6m8heKnWhzfe2"]}}, {"field": "NubeoKFeIaFQCYoD", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["gJjBbEDoNf3n0hEo", "RCAcf80zfFyabWAg", "IUXiI07A68eaqC2J"], "preferRegex": false, "regex": "y9XzjjI5YbsKoADk"}, "blockedWord": ["zJEN2VHzih3bit0V", "Wn3CO39PXDNxtXge", "O3FgkXhjDzaQY3sn"], "description": [{"language": "n2ZkP7cFdP43e5dC", "message": ["9XIBudfZgrbHDIDm", "4hMzF4TxodenSrUT", "vfqU0bfoMm5cTtFW"]}, {"language": "botQyXJRcQWsmqPN", "message": ["s92epxk0i8VxsZNe", "reSvf9699mCEHThU", "JkETAsSp7gh4TeUT"]}, {"language": "kOkAYfJB8AT9t4Tv", "message": ["207Y2QD3oD5fLCr3", "OOlXVv8ZGF7uYnGz", "pipNDigNJma1Mbqq"]}], "isCustomRegex": true, "letterCase": "kvo1aolB4lkKB4EY", "maxLength": 82, "maxRepeatingAlphaNum": 81, "maxRepeatingSpecialCharacter": 21, "minCharType": 80, "minLength": 87, "regex": "lWkD9eOziYRFOn0j", "specialCharacterLocation": "JLHC9LxhvNXTwGBC", "specialCharacters": ["tohLtl9Zuhytm5UD", "rT6QXCs5SPBbRPZT", "F6oQAXVG7tnsZg5Q"]}}, {"field": "gXjvyGJPN4eXbJE5", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["yomQoIXimBJehyxl", "NsjUgxBkF6wFPoJe", "QediogEhhM2rIizG"], "preferRegex": false, "regex": "BHUTrDzZSKscfOcY"}, "blockedWord": ["u3dpCROYqUiGKXVF", "Cmpo6sPwVOEDSJsE", "K5QpNhlI2iS5EpGh"], "description": [{"language": "hvXYck0upMzUYnb7", "message": ["6tFkEORV3bu1bNCt", "X7W40V6Do5sYadCC", "FrHHC3DpZxkrQDXu"]}, {"language": "NFviMarv8mnfHK8C", "message": ["CmE2lPnsbD3SGEdl", "wuUccE536ugBp3HB", "vepnDCjgyJlXe36m"]}, {"language": "gWjLfFmteue9nzJ6", "message": ["fH24T805tVg8JqU0", "jZpjvsugAOS7u8Ri", "WyerCSa8SRgwsAj1"]}], "isCustomRegex": false, "letterCase": "xsB0NRsB1fPqqRRu", "maxLength": 23, "maxRepeatingAlphaNum": 54, "maxRepeatingSpecialCharacter": 32, "minCharType": 16, "minLength": 34, "regex": "d2wrS0uPdjhdinpn", "specialCharacterLocation": "g5BLy8wbhMssAHja", "specialCharacters": ["pIkY9Rf4wP57dBZN", "R88YbCtmKy8M9zVr", "jfGXZnqAQUoY1Gjl"]}}]' --login_with_auth "Bearer foo"
iam-admin-reset-input-validations 'IIk0iKoTTS1j02o7' --login_with_auth "Bearer foo"
iam-list-admins-v3 --login_with_auth "Bearer foo"
iam-admin-get-age-restriction-status-v3 --login_with_auth "Bearer foo"
iam-admin-update-age-restriction-config-v3 '{"ageRestriction": 73, "enable": false}' --login_with_auth "Bearer foo"
iam-admin-get-list-country-age-restriction-v3 --login_with_auth "Bearer foo"
iam-admin-update-country-age-restriction-v3 '{"ageRestriction": 19}' 'QbTU5JX8ccLjMXJR' --login_with_auth "Bearer foo"
iam-admin-get-banned-users-v3 --login_with_auth "Bearer foo"
iam-admin-ban-user-bulk-v3 '{"ban": "k0eaKQDOJvrTefgl", "comment": "Ss6g4iY9u02aCNYI", "endDate": "Wekp18lOC3mNqF7B", "reason": "l0LcghVHfPEspxwh", "skipNotif": false, "userIds": ["0bc1eMbEIjowLqc3", "ecjXJbZDKKoxLE1Y", "3Dymtj3giPg4x4yi"]}' --login_with_auth "Bearer foo"
iam-admin-unban-user-bulk-v3 '{"bans": [{"banId": "PX6ues1Hhhkg1yLV", "userId": "bLFzHEP8cM4NTwr0"}, {"banId": "KHaAsmTej52WKi6t", "userId": "ArAURt9plCSVq8Pd"}, {"banId": "H6hJPUAc0RVwXgAg", "userId": "ntLMCuaXBWQi6BqP"}]}' --login_with_auth "Bearer foo"
iam-admin-get-bans-type-with-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-get-clients-by-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-create-client-v3 '{"audiences": ["g4xr0lCancUZGCHs", "ZYoLfR1KtOv7Zy0b", "65uvuKNuy0ytZQ7M"], "baseUri": "6Nzy1adnSKOLFKx1", "clientId": "dX4LuWJu3pDMUAee", "clientName": "Z97SBROPYuG6XqP6", "clientPermissions": [{"action": 30, "resource": "ec0z8eBeeoip68J1", "schedAction": 26, "schedCron": "lNa29fDLh741IslK", "schedRange": ["HzGlLKWUtDQs61OQ", "AoxyyQpRWCiiPDGQ", "hNPEwiJCf2XJVrlz"]}, {"action": 34, "resource": "ca5afj12K2IzrBvv", "schedAction": 100, "schedCron": "vgatOEBM70TdlNBJ", "schedRange": ["YOmpu1VCarzBsV6x", "nZ5Jrzzjrcaug6CW", "VG8SWP3glU6muswV"]}, {"action": 72, "resource": "GhCUr6iTrjyEgarA", "schedAction": 7, "schedCron": "HTHQIoVsGo7dwV9D", "schedRange": ["BqFKHQkETJyTlUrw", "DTnoujQD4IEiH9Z5", "qXn3aoRtlqOECohV"]}], "clientPlatform": "iHA5CzgFSy8X1A3P", "deletable": true, "description": "SOiIZsMfB4ZH3mtg", "modulePermissions": [{"moduleId": "WgU4pCAKxeE70Cau", "selectedGroups": [{"groupId": "nQNxot371W9G4AvQ", "selectedActions": [21, 34, 92]}, {"groupId": "sGnmyo5JJTUVmb8G", "selectedActions": [62, 46, 0]}, {"groupId": "FTlEMEsFzYqwgK1N", "selectedActions": [31, 5, 99]}]}, {"moduleId": "nodqpLm7FhJBNXzA", "selectedGroups": [{"groupId": "FdO0Khqf6kiTdSGv", "selectedActions": [30, 78, 23]}, {"groupId": "FjAKY7CbgsWqFWZX", "selectedActions": [11, 22, 98]}, {"groupId": "PBom8F9GLLTG8phc", "selectedActions": [43, 27, 51]}]}, {"moduleId": "4iLoIllKlpO2pqiX", "selectedGroups": [{"groupId": "JF3WGRaoQomSJC4D", "selectedActions": [6, 63, 35]}, {"groupId": "pstyVTBcrM8rG0rH", "selectedActions": [39, 52, 5]}, {"groupId": "6wK7PpUlcIW32iK7", "selectedActions": [79, 43, 67]}]}], "namespace": "vwLc7KY3uVoJXTIM", "oauthAccessTokenExpiration": 39, "oauthAccessTokenExpirationTimeUnit": "PF8ZrQzP4zvtdxdb", "oauthClientType": "ZUpd6FJtHJ1pyVwy", "oauthRefreshTokenExpiration": 76, "oauthRefreshTokenExpirationTimeUnit": "tmmOnYnOpas6ghP1", "parentNamespace": "y4Zi7s7QBlk44Z44", "redirectUri": "B1GZgKg4uKxaCgcG", "scopes": ["LuC3brWdTYCfHkIy", "Sok5DiXZtLW87rGy", "sryod3dNQrmsApRA"], "secret": "6HX3RwrKt2ecozL0", "skipLoginQueue": true, "twoFactorEnabled": false}' --login_with_auth "Bearer foo"
iam-admin-get-clientsby-namespaceby-idv3 'g54vCE48L5oLF6M4' --login_with_auth "Bearer foo"
iam-admin-delete-client-v3 'lNa4JUMSHNgqRqCV' --login_with_auth "Bearer foo"
iam-admin-update-client-v3 '{"audiences": ["7usamANkZlOX9Sfo", "95HgXqKhTPkwfLM9", "uSybRzWek2gZvRrv"], "baseUri": "r0n9d9lvccKMLhrT", "clientName": "rcBE2ItBS3KtKZWe", "clientPermissions": [{"action": 87, "resource": "aoFzAyBME74HUtip", "schedAction": 95, "schedCron": "xrZDyvpcLYOWA8Nj", "schedRange": ["xOnaEok4nOOCzfsf", "lhjbngJOUn18G5Ml", "fDTk8aG40NlncceI"]}, {"action": 91, "resource": "XrKEDpEY8VnocGAj", "schedAction": 5, "schedCron": "DZhl0bQxFJ3sWCqQ", "schedRange": ["pQ2FbKPFMycMSQ4q", "fAacR0LgB5BUXvjc", "u2s6w3VifnKqmTSo"]}, {"action": 66, "resource": "AZR8GmEu0q1p6QCy", "schedAction": 56, "schedCron": "6vSkVFWdsbYuVEGV", "schedRange": ["xYheR3j5mNZ6vwv7", "K8Asvt1j1Rx59hes", "NWy2NvZ85DDKDAF8"]}], "clientPlatform": "KDsBZOuYQJ03BAHZ", "deletable": false, "description": "Hccee9GXhKcjmSEw", "modulePermissions": [{"moduleId": "drkEnnqKzFsLfYal", "selectedGroups": [{"groupId": "UlfwEQKjU7eHGebS", "selectedActions": [98, 80, 42]}, {"groupId": "0OcNDLr36vzohZyj", "selectedActions": [79, 79, 88]}, {"groupId": "ZfEhHr39pysFO3Zv", "selectedActions": [4, 11, 56]}]}, {"moduleId": "9JQYGF4bYXEcENx9", "selectedGroups": [{"groupId": "xZlAchob44lONDDw", "selectedActions": [79, 95, 44]}, {"groupId": "jfIGaffoflEIByYq", "selectedActions": [8, 75, 48]}, {"groupId": "N0meGelYF5wWaDhu", "selectedActions": [21, 5, 96]}]}, {"moduleId": "V7vWgSHdfo07UctP", "selectedGroups": [{"groupId": "ErqxyMyOK06MqQBE", "selectedActions": [35, 40, 47]}, {"groupId": "eoc8fgvZDDhoO05o", "selectedActions": [75, 13, 34]}, {"groupId": "0DjQjBECXvea7H1m", "selectedActions": [18, 22, 45]}]}], "namespace": "JFRZ3ZprZ60zMjhT", "oauthAccessTokenExpiration": 69, "oauthAccessTokenExpirationTimeUnit": "9noowmlTIKVowi0R", "oauthRefreshTokenExpiration": 45, "oauthRefreshTokenExpirationTimeUnit": "VN4ZONJREdUQ3z9F", "redirectUri": "1BxNNgnke4akncw7", "scopes": ["wu9TmXfJWBPrx9Ns", "8eLzYEvwSWTaLQjc", "tvrK2jhsYpKPlXn7"], "skipLoginQueue": true, "twoFactorEnabled": true}' 'KtezapPr2QEPx3zT' --login_with_auth "Bearer foo"
iam-admin-update-client-permission-v3 '{"permissions": [{"action": 49, "resource": "foivvQxevecWw7Rr"}, {"action": 49, "resource": "w2hyd12uSE7BEv3a"}, {"action": 8, "resource": "MVUGKSZ4GcLkt4pK"}]}' '32sJxlZcCTpTdRtC' --login_with_auth "Bearer foo"
iam-admin-add-client-permissions-v3 '{"permissions": [{"action": 69, "resource": "cunsS1lnaO2m9vqj"}, {"action": 14, "resource": "igBVZxiKdV57GvRy"}, {"action": 7, "resource": "5R3hLiD5sf5y1Jsx"}]}' 'JNGmyt0SQDUDoWBZ' --login_with_auth "Bearer foo"
iam-admin-delete-client-permission-v3 '98' '1GRazPAANjfBoldF' 'OyqA2clJ5gEOaCgM' --login_with_auth "Bearer foo"
iam-admin-get-config-value-v3 '6Yn6RugbNEIpGBFU' --login_with_auth "Bearer foo"
iam-admin-get-country-list-v3 --login_with_auth "Bearer foo"
iam-admin-get-country-blacklist-v3 --login_with_auth "Bearer foo"
iam-admin-add-country-blacklist-v3 '{"blacklist": ["jOn5mM7k8nbLzvtC", "IW5ynMKquUicAeIV", "XtoWAXhMlW4tLqX7"]}' --login_with_auth "Bearer foo"
iam-retrieve-all-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-sso-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-third-party-login-platform-credential-v3 'OICf5oD1e6oI9FmY' --login_with_auth "Bearer foo"
iam-add-third-party-login-platform-credential-v3 '{"ACSURL": "el0kOw72o8Zkgk0j", "AWSCognitoRegion": "S6rDWUwfhKvrf2Aa", "AWSCognitoUserPool": "H4yCWrHSppnIZkNn", "AllowedClients": ["Tn3rzH5NvAtcvNed", "gS1fUfKmihDbmu8e", "PWlQMVDXEHeiGTnw"], "AppId": "yEw6hIWDZrpP7rz3", "AuthorizationEndpoint": "ISW510kHr4isTKWj", "ClientId": "mv67nuHCXWfwnwGi", "Environment": "oVwVzmmBVVFfpqx1", "FederationMetadataURL": "AeLtzcPJ3jtDYBo4", "GenericOauthFlow": true, "IsActive": true, "Issuer": "OYKiqaZD63xe5rru", "JWKSEndpoint": "JVfLGea0ZtlzUcuH", "KeyID": "AXz0UV31MfuGaXsA", "NetflixCertificates": {"encryptedPrivateKey": "uGsZaSHevO0TQNEI", "encryptedPrivateKeyName": "3kfabxJWWSI1ECUo", "publicCertificate": "1NPpeFhUztXDgB7n", "publicCertificateName": "4C97uAPP8PATLpUp", "rootCertificate": "xeJlsBJT6Hh3OMjA", "rootCertificateName": "jq2mK8lbSEEelxnb"}, "OrganizationId": "5QxWG2HFnZlA6HKW", "PlatformName": "W4fI1IQcoBQELcNl", "RedirectUri": "ZkqTZrKgXNwvm4e5", "RegisteredDomains": [{"affectedClientIDs": ["GX6H742OixhtAoKi", "Vm6URT95XhnUcvWB", "28MpusuhhDJ5slzg"], "domain": "iWZEtyd56LfxnbY9", "namespaces": ["7jjYgXchCbkXX26u", "EdCfQaMAQuTKfC0I", "2kNjCMDtDMrentgn"], "roleId": "3DhqciwIeShF9RKb"}, {"affectedClientIDs": ["9vvxuJlhXbWhbwPw", "ToC6knjVwVnzaqSf", "JiQFC2gXoda0kg16"], "domain": "yUSpSOAjHJWwfCjY", "namespaces": ["wWkLob9gKLqs2nEZ", "hpByfHZinxNfgPAw", "kMBsznlBUqnLT4Ab"], "roleId": "GptKaWNvPbpg7yrR"}, {"affectedClientIDs": ["vXfZ6rvgvEY3Hht1", "SwqTsKKKo37NHDOQ", "e91Ps3ztUIV0dS6h"], "domain": "IH9c4VfkyrwpuXxb", "namespaces": ["aERbfgPmi0eHkt1m", "r9EOIFg0dnWIYN2N", "VL70Iw157g00jr9b"], "roleId": "8MuYmmeKTmBNvGYx"}], "Secret": "EQdf3ewoGGoY7xmF", "TeamID": "NAmjDDCvs78mcMdi", "TokenAuthenticationType": "S76YApGJ9ufwLYkq", "TokenClaimsMapping": {"IgLuZS6hsQryiEtO": "AbpeUNf26UqkCfgC", "UYBn2xaOBdPF0JmX": "8qwU1cTuHHPB5S3D", "vPRCzBrVUxmDOj3c": "vRFaTC11W0TGTCm4"}, "TokenEndpoint": "fZWuk6pQxDQpKqxL", "UserInfoEndpoint": "GeMvr9TsvcMQ7dBs", "UserInfoHTTPMethod": "aIecRxIsZvD6rmzV", "scopes": ["r5XT1Nxw0v1dMQ9R", "rbk6C2cVWf6ttvbU", "1PO6ApCD2VXidT7w"]}' '0Oc15N8WXBPp17PA' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-credential-v3 'ewqSm5x3B4t7WQnp' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-credential-v3 '{"ACSURL": "8jXZedgt5cyNe27H", "AWSCognitoRegion": "LtwtVOaxgP6Jbct8", "AWSCognitoUserPool": "puMybYGxD9IPmmsL", "AllowedClients": ["mu3kaPj0O4zd8Tb7", "cUNGPTBxiFFCrn7d", "jjs69FTFVGUVhvKh"], "AppId": "JCmeisql14mUHVbM", "AuthorizationEndpoint": "PimNhcZsU3VAdMDc", "ClientId": "b4qlkiFAamqvZI2K", "Environment": "wjqPBiWXade41s3r", "FederationMetadataURL": "H34mB2yPlRpWjmHZ", "GenericOauthFlow": true, "IsActive": true, "Issuer": "5duE5p4cfs2E41cK", "JWKSEndpoint": "8QTwiIAvxSvNDlmM", "KeyID": "5nQFMGzs7fzjgyc4", "NetflixCertificates": {"encryptedPrivateKey": "4mEh9tRk8knYSV30", "encryptedPrivateKeyName": "lnroQehMDli6t9un", "publicCertificate": "QLYXxm09wpGAbpEm", "publicCertificateName": "DY9vLh3u6EDsUmrV", "rootCertificate": "6kH4OotKwG3UC6XC", "rootCertificateName": "nnZxF8CmQr17W65b"}, "OrganizationId": "r34rBBN9tU6TDm5G", "PlatformName": "loFSKWM1eym5ydC6", "RedirectUri": "p25xCWTqUOYZENJ1", "RegisteredDomains": [{"affectedClientIDs": ["QHZQxPRXH7uxBJEE", "CQE1li3Bg7Jxc9pU", "nZmvhidwCkZwqjYL"], "domain": "fTiCO1NDBvQvRPnA", "namespaces": ["z4VzW0CpoBCbyJsF", "5IjF1c0W338HS6CB", "gVRyihYNZ84CVhzi"], "roleId": "XV8HwSmvcvcDKF19"}, {"affectedClientIDs": ["yVRafCjOuSYht83A", "dvBaagTiRJ8daGTV", "X3Bb7jlz5IfHgKjI"], "domain": "9mwJSrN8jkIykR2z", "namespaces": ["baI6PD7fEscShnGU", "GUtV9GJ279GDbLNw", "jm3FK0nnX2poMfZ1"], "roleId": "hDHtbh4HtMlFgvh2"}, {"affectedClientIDs": ["Dp2SoiIPp1yvfAHS", "0VgLu11A3HTovFi4", "tPAGfleyCA6jEtcq"], "domain": "snzoVILjkwW61duF", "namespaces": ["87aUyrdt4XSpWBAe", "tsanzqP8oxfrtbEC", "D1CYPwaiBAxfYL8A"], "roleId": "vt70ZUT2fSk3LL0c"}], "Secret": "alqxEewuGS469k2h", "TeamID": "G0WKt4sUmanYxM0U", "TokenAuthenticationType": "HZVNYzGMNIpWoSLk", "TokenClaimsMapping": {"Urfuf4U3WeYeA9t2": "ENKKWrFtHIi1CMgK", "AOG5iDcCR5PbCvDL": "il8wj9cKM3Ar6MF3", "5hCER4nGmWGgTJfH": "lJl4tHGa4XfZcd9C"}, "TokenEndpoint": "VnGqMX9FieeEssWE", "UserInfoEndpoint": "Ul07bhwntCVqiYOJ", "UserInfoHTTPMethod": "f5KwMZQjzvjSozv6", "scopes": ["CTRDl0zp9CzHFwin", "kBNi4gvqgl6TZ9TG", "VPmv34h6T7Esufmf"]}' 'xKYB4LM6H6QXmpZ9' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-domain-v3 '{"affectedClientIDs": ["X3fUSR1l9xLPBsmA", "UrD9L1IiD6MlcEPh", "MDFzjHZ3sIhzOx2C"], "assignedNamespaces": ["XKlvIomU3pIxM9n8", "D2eLMe3lt9qfx2UD", "cgVE7L9FK6e0MrPc"], "domain": "4vtxk9hVKlG56Hlz", "roleId": "Gr7XjdyRJunZPkp6"}' 'ccIBnWyPw8mj7gyQ' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-domain-v3 '{"domain": "7XdIszGRj46COPip"}' 'H1MWVTHG0qHJCWEf' --login_with_auth "Bearer foo"
iam-retrieve-sso-login-platform-credential 'OJpZm9yEYWNGMy2p' --login_with_auth "Bearer foo"
iam-add-sso-login-platform-credential '{"acsUrl": "gSGSUOK68eqGJtWf", "apiKey": "1Ybgg8rdwY9bmrvH", "appId": "mO07KNqX9LM2IwEs", "federationMetadataUrl": "dOGBXBwnzDX8v3xg", "isActive": true, "redirectUri": "e4LQdXfFBii2RAME", "secret": "X5RMjBFVZGYzQqV8", "ssoUrl": "d9mDdUIoiIJFNxuN"}' 'OmUSWw18T1IxVWCx' --login_with_auth "Bearer foo"
iam-delete-sso-login-platform-credential-v3 'dvPL9e4P01vxP8xj' --login_with_auth "Bearer foo"
iam-update-sso-platform-credential '{"acsUrl": "1LyEirURERnEMzpI", "apiKey": "mW6sjAHyCK5tNanG", "appId": "BrkzUvck3xTtmOFM", "federationMetadataUrl": "ebS4AdlNzwog2IhE", "isActive": true, "redirectUri": "TTh4gUoj8u2WRcLi", "secret": "EtzVlnkflfn7pHY4", "ssoUrl": "8F1dl1q92m3iRlfn"}' 'BAk0CwiAsR65yQ9s' --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["suHdGmxncCEr0Kcg", "eqzGbruNB72HHMkj", "zyBB4UFKiaoV0VOe"]}' 'm2yqPsMFxKybPkbu' --login_with_auth "Bearer foo"
iam-admin-get-user-by-platform-user-idv3 'S6x9cLJ1APnNlsa2' 'bRBr27fVMWuAfDqL' --login_with_auth "Bearer foo"
iam-get-admin-users-by-role-id-v3 'MR919IZPKOKiAVQX' --login_with_auth "Bearer foo"
iam-admin-get-user-by-email-address-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-ban-v3 '{"bulkUserId": ["XOmqFHLbyXmgCNiX", "H8uenbC5CphgMwee", "xsIAP5vHLjBJ9iqM"]}' --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-user-i-ds-v3 '{"userIds": ["cBL4BzhDUjhKPwbw", "cvQU5kG8bXGFmPAn", "OkDiJq4xQye7HqnV"]}' --login_with_auth "Bearer foo"
iam-admin-bulk-get-users-platform '{"userIds": ["K3YVeOWs9mfVQh3j", "LBtn9pxpE7BYtzB0", "B4CxyQrUpIFvORxT"]}' --login_with_auth "Bearer foo"
iam-admin-invite-user-v3 '{"emailAddresses": ["i79DpSjb39ukcR6c", "2E2r3vk3IfAKEbqc", "NXSGCCvNowNmdpcJ"], "isAdmin": false, "namespace": "ErQPS4VsRoYIK69y", "roles": ["g9ADCGiXaLs2xjHk", "inOD975nARHCmhNH", "SXuqIHsxvaUoXDmw"]}' --login_with_auth "Bearer foo"
iam-admin-query-third-platform-link-history-v3 'WsukxncuD3QxCXMd' --login_with_auth "Bearer foo"
iam-admin-list-users-v3 --login_with_auth "Bearer foo"
iam-admin-search-user-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-by-email-address-v3 '{"listEmailAddressRequest": ["00YBWCaVVmM45mfI", "ZsWhkS476dGGJwJ0", "0UH197MJ6zU7JLMQ"]}' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v3 'yMWzYQCAaPJgoxGJ' --login_with_auth "Bearer foo"
iam-admin-update-user-v3 '{"avatarUrl": "oJaSzUtY4ZD0Xtb0", "country": "U4pH16NUsVY21NVI", "dateOfBirth": "s7NRen2Y3Ns0QJQe", "displayName": "aWytPfds1BYx0EaU", "languageTag": "Rydf8ZyyZeHAWGgJ", "skipLoginQueue": false, "uniqueDisplayName": "OPG0iHDT8QbF7gHP", "userName": "TPQbvLt2NRqJGIKz"}' 'LyH1y72L13Ornyx3' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v3 '4luLdvtsTKXMjiw6' --login_with_auth "Bearer foo"
iam-admin-ban-user-v3 '{"ban": "gYPvfn2Qt9iyq3Ny", "comment": "k8ncu2Z3eDHH9WaV", "endDate": "O4iKhDcJ7TCcNIsQ", "reason": "3PuppUxDSK8aOTGM", "skipNotif": true}' 'NLwvI8JdiY3RRiLi' --login_with_auth "Bearer foo"
iam-admin-update-user-ban-v3 '{"enabled": false, "skipNotif": false}' 'dinpjS2DRfGt9Gly' 'ZVQ4X67tPZSTpPq3' --login_with_auth "Bearer foo"
iam-admin-send-verification-code-v3 '{"context": "xjrElvvDgw0ag7kS", "emailAddress": "WE0Hiqm5IuLryiEX", "languageTag": "qvUWDjU1G0EVjVZw"}' '1ToLuPakQN1MpOs1' --login_with_auth "Bearer foo"
iam-admin-verify-account-v3 '{"Code": "RVFrcg2CXxepx78f", "ContactType": "vsyhE2BKtyTDSIM7", "LanguageTag": "mkmvZ7Cmsh4US8o4", "validateOnly": false}' 'C9Mfuc8VOsnmnlVl' --login_with_auth "Bearer foo"
iam-get-user-verification-code 'jdWYmELe74p38vum' --login_with_auth "Bearer foo"
iam-admin-get-user-deletion-status-v3 'nxAnYBTxaTIz0jcg' --login_with_auth "Bearer foo"
iam-admin-update-user-deletion-status-v3 '{"deletionDate": 61, "enabled": false}' 'Pkz96vd80msqIm5b' --login_with_auth "Bearer foo"
iam-admin-upgrade-headless-account-v3 '{"code": "ufnBqrpLeqhwVhjn", "country": "njKMEmtbiWsAQHbM", "dateOfBirth": "rKYi0Zxs5SWCqZXH", "displayName": "LLa31oQf7BULnZDh", "emailAddress": "utDM6BqguqD5xxGx", "password": "BWtnTKUe2znsqPzP", "uniqueDisplayName": "kwCBo2SwCUsTag4M", "validateOnly": false}' 'Ao3m61P2xaNfmn8O' --login_with_auth "Bearer foo"
iam-admin-delete-user-information-v3 'nb1a9gMz0F2UBRmM' --login_with_auth "Bearer foo"
iam-admin-get-user-login-histories-v3 'hAbUWmFhdYLWzMuv' --login_with_auth "Bearer foo"
iam-admin-reset-password-v3 '{"languageTag": "3zkUY0n0BAZkwbYk", "newPassword": "BLyO6A0FqfhnaB3Y", "oldPassword": "xKNdOTacCcJfIfXs"}' 'huLUk5WdpxjZx5no' --login_with_auth "Bearer foo"
iam-admin-update-user-permission-v3 '{"Permissions": [{"Action": 32, "Resource": "PhPUTKbonoucNmzw", "SchedAction": 84, "SchedCron": "vayLLiizac7Ge6zK", "SchedRange": ["Jdlt7rjF5RaJwvkW", "Vco2LTo5ijlvDF8q", "BWCQ9dLWYyS8zdhM"]}, {"Action": 9, "Resource": "5anIloyj9lhbvuQd", "SchedAction": 100, "SchedCron": "6iJOF7JKZFNk2NKy", "SchedRange": ["59X8iOg2sVBiCoeC", "5weXJl7PeiMH8z8d", "Vej8N2yv6VTnOK7x"]}, {"Action": 55, "Resource": "rexcbHdEtoQvpV34", "SchedAction": 31, "SchedCron": "RctmTozCi8HeV6jb", "SchedRange": ["alHmqBBfi7sSF5Bo", "GiTCVsXsygWbjE2o", "pXtdsJQeJ1too0qv"]}]}' 'xphTLEEBGTtZyTjd' --login_with_auth "Bearer foo"
iam-admin-add-user-permissions-v3 '{"Permissions": [{"Action": 75, "Resource": "heJjoEEXBLIxGnNu", "SchedAction": 16, "SchedCron": "YtxIq73aMb48jISd", "SchedRange": ["97KORRhxSWLWLNfH", "RD3V15QaGGL46Lux", "JF3sbeqWBdQuWfgB"]}, {"Action": 55, "Resource": "SZZNUHbIT9szApmW", "SchedAction": 72, "SchedCron": "oMUZn1YXj5zFZeOC", "SchedRange": ["OR9NvBQZSJPOIKrR", "BrYVzi9ui3lvozTt", "9TsH7A0TuU2aL4bP"]}, {"Action": 20, "Resource": "ziBOHEAj1cT3u6Zc", "SchedAction": 97, "SchedCron": "FbrTFznTgDIwZIRW", "SchedRange": ["f6T3by2kYSCdnFKL", "c0xcTjqjdcEfU61O", "JYMnW49rWynp1ck1"]}]}' 'vT90C6o86cSRL9cg' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-bulk-v3 '[{"Action": 2, "Resource": "a9JktyBdxkZKrEWF"}, {"Action": 45, "Resource": "drxVhrtwSd9QWVMY"}, {"Action": 52, "Resource": "vfWVZoRRMPi57HyK"}]' 'Kz5nyI6ulKNKoXa0' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-v3 '6' '5nXJ7hLi6HweweRm' 'yo91dIn7QqXBDXJc' --login_with_auth "Bearer foo"
iam-admin-get-user-platform-accounts-v3 'rqKmXDwoEV6tCdrx' --login_with_auth "Bearer foo"
iam-admin-get-list-justice-platform-accounts 'w1KOPhuvHuYrGWDK' --login_with_auth "Bearer foo"
iam-admin-get-user-mapping '41uMOC0mRvSoaGk4' 'ktF5wnJDg9Q3WXiy' --login_with_auth "Bearer foo"
iam-admin-create-justice-user 'dCOInVolsr6CHmj7' '63vLwtYEJTSiXjcY' --login_with_auth "Bearer foo"
iam-admin-link-platform-account '{"platformId": "5ZPkv90lyKSTWLxS", "platformUserId": "FZ0LpupEi5DbkVs3"}' 'qFTi1t530Wj1WfzI' --login_with_auth "Bearer foo"
iam-admin-platform-unlink-v3 '{"platformNamespace": "vc3VlSXrA3XUGud4"}' 'tVjmxEf4XvVhFJTx' 'FHITBg9x4unq3eOM' --login_with_auth "Bearer foo"
iam-admin-platform-link-v3 'HIKeTyBG5dCUoExn' 'KfV3869IN4V1OdhH' '4GVU7Exlkmc4xYiL' --login_with_auth "Bearer foo"
iam-admin-delete-user-linking-history-by-platform-idv3 'jLyZrXr9Bhtzn8jA' 'dTn6xBhrciryLm67' --login_with_auth "Bearer foo"
iam-admin-get-third-party-platform-token-link-status-v3 'rkadH5Y41SLjCPrF' 'a05Xl5TPC5GODS44' 'bmm7jPdKLddfdsUq' --login_with_auth "Bearer foo"
iam-admin-get-user-single-platform-account 'jXVzW1QqxnWR5she' 'LgsAF4ctv5guycGi' --login_with_auth "Bearer foo"
iam-admin-delete-user-roles-v3 '["q9j2EyIknfLDpgHn", "MOn8nc3gUZ8ZFyyE", "r0KBXuJBqK4QtEyd"]' 'PWLPBYiR3UbJc1ZY' --login_with_auth "Bearer foo"
iam-admin-save-user-role-v3 '[{"namespace": "apx7C477etqgfOJD", "roleId": "UT0uKAPrARya2IMl"}, {"namespace": "NiXpF4qvsUUpHqi3", "roleId": "3TcBGkc0HjUcnkpU"}, {"namespace": "9oVzl2kBuLFXIeCE", "roleId": "KZUTz3GvCAZ5j24a"}]' 'cYHbrryHB6GO9zP3' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v3 'FaepA3b3YJ9nJM6v' 'tT27xv85K5MU2qmb' --login_with_auth "Bearer foo"
iam-admin-delete-user-role-v3 'eqaVemINdClpF7Ov' 'lBIEgjse5kd6GEDo' --login_with_auth "Bearer foo"
iam-admin-update-user-status-v3 '{"enabled": true, "reason": "yq5E5HleLoog4me2"}' 'NBFp62xlXvVcJerT' --login_with_auth "Bearer foo"
iam-admin-trustly-update-user-identity '{"emailAddress": "PW02PWsHiKYArAxn", "password": "KBfBfDlrQQuAc10D"}' 'jjwMv4vrIPRtvhQI' --login_with_auth "Bearer foo"
iam-admin-verify-user-without-verification-code-v3 'yLarjaLOKnX51yAB' --login_with_auth "Bearer foo"
iam-admin-update-client-secret-v3 '{"newSecret": "8Pa3uNGKhaLlJzJM"}' 'SnJIIgsAVmaGYxUX' --login_with_auth "Bearer foo"
iam-admin-get-roles-v3 --login_with_auth "Bearer foo"
iam-admin-create-role-v3 '{"adminRole": true, "deletable": false, "isWildcard": true, "managers": [{"displayName": "uzG2CnYX2YBF2g7T", "namespace": "VtzYEHUodh3iUfBt", "userId": "hbepUCTWiZ1uqh7G"}, {"displayName": "Ai4FEIu44u83ZLRx", "namespace": "YlYqlpq03BGdIk4o", "userId": "EogFVGR71rJOBy6l"}, {"displayName": "sj1AKGBjnHmaAu4Y", "namespace": "K87DYAWWcbcbGWmK", "userId": "gE8CZ4AELr5lraa5"}], "members": [{"displayName": "v5P5Cj8hgFsqHC9h", "namespace": "5JPiMEtgKuiGTYgw", "userId": "Wv5XldL6rOVGcRAn"}, {"displayName": "51rVAQSxp4qTB54m", "namespace": "KA3V9DKlCeZ7mLYs", "userId": "HooOIaxIpb1cIOJP"}, {"displayName": "S3lJ80YJ41U4ooQ9", "namespace": "80ywmg1pWpWit1QC", "userId": "7FKe0fnHUlmU1unG"}], "permissions": [{"action": 75, "resource": "zWZwvTX2bamSCvX1", "schedAction": 27, "schedCron": "gGmvK9gW596FwBNr", "schedRange": ["FXt3TAuKBwBcD12a", "e6r3hHwya4NpdOzg", "3hr6ucHf7dbh2iKN"]}, {"action": 95, "resource": "lHEbVDwBAqanOlsc", "schedAction": 90, "schedCron": "AiNjULsx4SnKNXLM", "schedRange": ["UaDSwwQlnNRZJHBS", "B4fZWEFIZs28Ff1k", "Zp1Zktx3N7WNMYIf"]}, {"action": 5, "resource": "WEm8bVtZcfVCPdQh", "schedAction": 17, "schedCron": "YXJvtggDdXjbdjMB", "schedRange": ["ahFZZGMTcqnWrIpr", "Ov0BJ9Sgl7H1sdH2", "RIJz1eI7Q5pu9Put"]}], "roleName": "Lf6IrvZoBGQbO4S3"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v3 'rURGWUzPAE6SdV4D' --login_with_auth "Bearer foo"
iam-admin-delete-role-v3 '5jftRl9rZmtQUvro' --login_with_auth "Bearer foo"
iam-admin-update-role-v3 '{"deletable": true, "isWildcard": false, "roleName": "Wsz9TVmdMKEohKzu"}' 'MYDUTLBeCidXjuGg' --login_with_auth "Bearer foo"
iam-admin-get-role-admin-status-v3 'x8ncXejmeZtzT0qj' --login_with_auth "Bearer foo"
iam-admin-update-admin-role-status-v3 '0ltsqfiZrthVvyX0' --login_with_auth "Bearer foo"
iam-admin-remove-role-admin-v3 'OCKDJE3RMUddwSSg' --login_with_auth "Bearer foo"
iam-admin-get-role-managers-v3 'xCu8zru1DhGAYOHR' --login_with_auth "Bearer foo"
iam-admin-add-role-managers-v3 '{"managers": [{"displayName": "5BWa9VzIkaQEl1iU", "namespace": "ProNB6hI6IpGcToW", "userId": "gFvdRhG9NwV3zDuq"}, {"displayName": "VlVTypcYPK8IxrSZ", "namespace": "uxWl0Je4fJIyFAm3", "userId": "DQht4JwnPS2urJqe"}, {"displayName": "robWMZGVL5KLTxah", "namespace": "WlS6XdBaKSLCgOOP", "userId": "XM6XTUh2dJ90yqHD"}]}' 'Nacl4F9G6Dl5TFwB' --login_with_auth "Bearer foo"
iam-admin-remove-role-managers-v3 '{"managers": [{"displayName": "Y6HKXAblkT8VGgSH", "namespace": "8MGZGwiVj7eDTaka", "userId": "9ABfX1IByPEOuPhG"}, {"displayName": "spRi3bhPQvBBJI5J", "namespace": "xytpcubN4AUUPFPs", "userId": "cZsXeJOD4DMtqfIG"}, {"displayName": "iGJovgWSRxZ8N4UQ", "namespace": "2fg3V1o2x0hL5DuB", "userId": "DqMyIAzWze94MEdJ"}]}' 'FAy2JTllJkRGB8jq' --login_with_auth "Bearer foo"
iam-admin-get-role-members-v3 'JEd6eqqsBVyONV0J' --login_with_auth "Bearer foo"
iam-admin-add-role-members-v3 '{"members": [{"displayName": "RtozI0jpliCFQ6Wg", "namespace": "JpGPigdc5VyC4qvW", "userId": "jVac1cQvSxgTNIUz"}, {"displayName": "xDgBlIbuzm7DzJ20", "namespace": "NFRJIhFXR2dYprPm", "userId": "bpuptECGd5cdXC2S"}, {"displayName": "esc6y68whNBYl9iC", "namespace": "qfW6rqGOQny4ij4y", "userId": "sYPonb59gQffkNOm"}]}' 'ubxEJr2qEAuJbpZS' --login_with_auth "Bearer foo"
iam-admin-remove-role-members-v3 '{"members": [{"displayName": "rcbc4LWfKaY5c1tP", "namespace": "5TDuI5f6m4KC07Cn", "userId": "sZe32hqEcB1ExYMB"}, {"displayName": "b3ckvoaJYdMqGegc", "namespace": "g3eRvBZXN3cjIXmF", "userId": "WRJnj8xN7HDPTUED"}, {"displayName": "PN1Kb4UTPWDXTSb5", "namespace": "5g8LSTs7Nf95lGlP", "userId": "rf6obIdnI6Ag7eUY"}]}' 'cYJ4QzXCmqr6gmPG' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v3 '{"permissions": [{"action": 0, "resource": "LSQ4GvLtz50D3rpB", "schedAction": 10, "schedCron": "b6Lx8eq8SGNwEQO8", "schedRange": ["dYXvBSYvJBwb6CjZ", "UMRf2VJetWsokvx3", "BHuTEczr9KjQ3ttz"]}, {"action": 12, "resource": "MTBt1xk9IyssSA8n", "schedAction": 85, "schedCron": "bNStqPtQmQN6eKAG", "schedRange": ["iZFCftT0RWECdjWY", "rnulxcCKAru8pOaA", "VLDB4k3JwkdaxR7G"]}, {"action": 72, "resource": "LyrH9J7BoysmaORL", "schedAction": 21, "schedCron": "DydC2D8UT6KOc4VP", "schedRange": ["DUR9ayazqXRqegIU", "icYXXzxsBFrUs9BY", "p6TgCejBd5o7iTST"]}]}' '7R3KbbQGERMNpqWb' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v3 '{"permissions": [{"action": 11, "resource": "1y5RUzvMfTkPy0fG", "schedAction": 44, "schedCron": "LGYcwWVRK6UKk5oz", "schedRange": ["rXA4HZHNyq9odanh", "R1Zrm3thUvV87yfk", "ycLSVdleSaAylsmL"]}, {"action": 84, "resource": "e2phYOgT5kDTyPl3", "schedAction": 7, "schedCron": "P9kKwkENQ8VOHGwb", "schedRange": ["ADMfuOmh0lciRhVZ", "2DeoODXMzLSrzoiB", "nYi5UWs3tYlYeMoC"]}, {"action": 17, "resource": "UNgdY2vfJuje5cPn", "schedAction": 24, "schedCron": "PNoN9AWtLK9TFgi9", "schedRange": ["j2XMh9WpifqjNjLO", "tNQts2yxf6MLZJ2j", "ZfZbpTJezzriCDWX"]}]}' 'T59SRu0YqUxKDc84' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v3 '["OMIzvTScdbKBsAyJ", "Mz4ILNDvhB4Eoes9", "a6XaJeRbzTPwD3jx"]' 'F7vxRUY0ilrNoFT9' --login_with_auth "Bearer foo"
iam-admin-delete-role-permission-v3 '58' 'SgtJd4Z5f8nfaKqd' 'ZFLbZEHxsDxeR6d7' --login_with_auth "Bearer foo"
iam-admin-get-my-user-v3 --login_with_auth "Bearer foo"
iam-user-authentication-v3 'r1SQw80JfMpPrSqY' 'ypRUnq5o4ETeCUYG' '9ccTt7Wxw8OQ13t3' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-authentication-with-platform-link-v3 'uTw6zQuoZcXQpoTO' 'xe8y1jorNsg9ZKYC' 'KoISyXtHzoWGdYoh' 'xMp3uOQIybqWfG9B' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v3 'J6FVKlbYHtbPtaxv' --login_with_auth "Bearer foo"
iam-request-one-time-linking-code-v3 'agSlpGgVTF6VeDAP' --login_with_auth "Bearer foo"
iam-validate-one-time-linking-code-v3 'OGBwweyFfXEOEAEt' --login_with_auth "Bearer foo"
iam-request-token-by-one-time-link-code-response-v3 'bag82KgBgyCd5vjk' 'fz3eR4DtNp129hzB' --login_with_auth "Bearer foo"
iam-get-country-location-v3 --login_with_auth "Bearer foo"
iam-logout --login_with_auth "Bearer foo"
iam-request-token-exchange-code-v3 'w3xLUcCEt0DzmkJq' --login_with_auth "Bearer foo"
iam-admin-retrieve-user-third-party-platform-token-v3 '1sml5bYt76BNsi4g' 'iR9434WpKKdzxouf' --login_with_auth "Bearer foo"
iam-revoke-user-v3 'CNlFoOcWQQy4bjmQ' --login_with_auth "Bearer foo"
iam-authorize-v3 'eEweoBHTdwAk7ZQn' 'code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-introspection-v3 'Usdtq4dOwNESzCEW' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-jwksv3 --login_with_auth "Bearer foo"
iam-send-mfa-authentication-code '9dUVhZjLftC3sCS8' 'CpLCqPD9CeDEdCnn' 'L6Kt1Bjj3b8QM8Rr' --login_with_auth "Bearer foo"
iam-change2fa-method '45ULqXQgvwD3PsKD' 'JiWxQBwaS7rDBf2S' --login_with_auth "Bearer foo"
iam-verify2fa-code '54phbdyGDt47f9GW' 'RlE9hqz6rjDNo4rh' 'jxUdMM83WekqfWv0' 'true' --login_with_auth "Bearer foo"
iam-retrieve-user-third-party-platform-token-v3 '2wj9uaDzsr9xYiWR' 'uuzQJiLc1eI9w3JE' --login_with_auth "Bearer foo"
iam-auth-code-request-v3 'hxPGbEk7s7gw07Fl' 'ounC3vJKBC7SwgoV' --login_with_auth "Bearer foo"
iam-platform-token-grant-v3 'iPeIB4Ehy0Y5aSJV' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-revocation-list-v3 --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-revocation-v3 'DginxAM77eY9C14F' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-simultaneous-login-v3 'epicgames' '2jdx1eIba1sB0HsJ' --login_with_auth "Bearer foo"
iam-token-grant-v3 'client_credentials' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-verify-token-v3 '6DzfbzRYt4OVUyum' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-platform-authentication-v3 'BeIqdQGZC5kM03HH' 'ijsQRj7N8IAjmson' --login_with_auth "Bearer foo"
iam-platform-token-refresh-v3 'jj0ZR50BQ1U6aFD3' 'O2kXQSc58zgZVl4g' --login_with_auth "Bearer foo"
iam-public-get-input-validations --login_with_auth "Bearer foo"
iam-public-get-input-validation-by-field 'IF7v3qbZu9M3OxqV' --login_with_auth "Bearer foo"
iam-public-get-country-age-restriction-v3 'AT4H1lRZ9Z1JBrHR' --login_with_auth "Bearer foo"
iam-public-get-config-value-v3 'zEOtIxzPqb6n73m0' --login_with_auth "Bearer foo"
iam-public-get-country-list-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-public-v3 --login_with_auth "Bearer foo"
iam-retrieve-active-oidc-clients-public-v3 'jiaDH86d9rsKgzCs' --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["MulpB8HZUtVVaJCi", "LgKOwrSfWhT5B4We", "dopzwSluBtRFPKTh"]}' 'yGnbjmPDKFS6u9FH' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv3 'uv1M3qfch4SqIV6L' 'QPHlaeYl4csFq65c' --login_with_auth "Bearer foo"
iam-public-get-async-status 'U66yJaj4ovoKWE4E' --login_with_auth "Bearer foo"
iam-public-search-user-v3 --login_with_auth "Bearer foo"
iam-public-create-user-v3 '{"PasswordMD5Sum": "W0sw8v5peiuxoBJA", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "auyD3XCXVMiyEvMf", "policyId": "9yilUEujk6oqYo1H", "policyVersionId": "QYTFzwdOMdupwD4O"}, {"isAccepted": true, "localizedPolicyVersionId": "CBfGUdVEdvdQL7sV", "policyId": "wcZ2PofaJoSqtrEO", "policyVersionId": "qxH46fRTSZoDdT0f"}, {"isAccepted": false, "localizedPolicyVersionId": "t9P1Tkm08luh4dpP", "policyId": "RMDbUXBWTbpAogG2", "policyVersionId": "wlZkLhuU5FI8NijF"}], "authType": "I0GKwJ3vfXlsAMy2", "code": "Zp2UAGxHnmSxvkG9", "country": "UR5q9neoW6JBcGp9", "dateOfBirth": "Rx2RfcRhXpmeeHdv", "displayName": "phas9S7ivHEoLbUM", "emailAddress": "M47f1UreUpxEkXIb", "password": "E1ETzRJZKMavu4Ul", "reachMinimumAge": false, "uniqueDisplayName": "m1YN27bojDVaZLpx"}' --login_with_auth "Bearer foo"
iam-check-user-availability '4kEWYkO6KrKUMhJr' 'ASBh61hmWKSSrF35' --login_with_auth "Bearer foo"
iam-public-bulk-get-users '{"userIds": ["anDGvur19V18oIrU", "KXttgAI2QdWJFLmo", "PEgd8EMspOs8nkic"]}' --login_with_auth "Bearer foo"
iam-public-send-registration-code '{"emailAddress": "9gj5vyUMAAmIHYbs", "languageTag": "xG5N066FXb88SbLO"}' --login_with_auth "Bearer foo"
iam-public-verify-registration-code '{"code": "a21DiSFsm0XXQJWs", "emailAddress": "zvTQEuALzDNp1SZ5"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v3 '{"emailAddress": "8aDllwzTRHak1MXx", "languageTag": "j7Esrg7900nml5Bi"}' --login_with_auth "Bearer foo"
iam-get-admin-invitation-v3 'dsK9dCEzhVnOv0PQ' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v3 '{"PasswordMD5Sum": "bVIaKiHfoeorY7A1", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "R6H7r1ta3m7jK5px", "policyId": "e82pgFiAS6piIzmc", "policyVersionId": "8rKrKEPGSAcong6e"}, {"isAccepted": true, "localizedPolicyVersionId": "ZBmOau6syme06c6S", "policyId": "KLc2mEC3IXl5XCbk", "policyVersionId": "OfHaGr5kdazlypvt"}, {"isAccepted": false, "localizedPolicyVersionId": "lSLfU7HByGXPMqxj", "policyId": "4hBgVY3YAxZLKbcO", "policyVersionId": "dyjqf6Q4oiwoJcaR"}], "authType": "MEb15LBlTVufc5Zy", "code": "ODR2NVyn4PRqf3eR", "country": "bZqBAoKGcVCdMiSN", "dateOfBirth": "V4qBrt1kcLmRv6EJ", "displayName": "tl5xWnsb8oWq94RI", "emailAddress": "mNWVIJnhhwFDV1Vi", "password": "taomvWTzdsW4N70w", "reachMinimumAge": false, "uniqueDisplayName": "j7Yi2VvoQNW8Yc48"}' '1dYdvGxJAMDRA1LF' --login_with_auth "Bearer foo"
iam-update-user-v3 '{"avatarUrl": "7jdWlekFwO94VBCV", "country": "9qJhWva2FPBujX0g", "dateOfBirth": "eYCpGJM4sqsPNJMi", "displayName": "ZXXOFwmGWAvNF0Z0", "languageTag": "GkwxUNYyNwGiKrkn", "uniqueDisplayName": "H0Y5mrQgLC6D2qsF", "userName": "iQHglUQMZi5WjMZf"}' --login_with_auth "Bearer foo"
iam-public-partial-update-user-v3 '{"avatarUrl": "OadpgegCUjTdi1Eh", "country": "r8OtqpNJ9R8TuNy4", "dateOfBirth": "ejmVA3vMCsGyPd12", "displayName": "B8QNUz0hFFNbH6j2", "languageTag": "W4roZM2UKAXEEsL5", "uniqueDisplayName": "D0oiFchQnVeq3g2A", "userName": "B2WIRUQmauIY5HXC"}' --login_with_auth "Bearer foo"
iam-public-send-verification-code-v3 '{"context": "Z0W4XmWP0HzSdiyl", "emailAddress": "LhVYszm8xY33OQbu", "languageTag": "mu2QHLyZNuysyM4O"}' --login_with_auth "Bearer foo"
iam-public-user-verification-v3 '{"code": "fCzdQCXMAWnf87YP", "contactType": "NOe9Eevf1fhMg1E2", "languageTag": "k7QLFrVgtX7y0fPO", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v3 '{"code": "rB9SVFctW7YS0OkL", "country": "78XeEAtALFI3v8yh", "dateOfBirth": "a4pd5A7MYcpBD6lK", "displayName": "Nb8RxvN2u5J7baOe", "emailAddress": "LH19fqBwNbNe1ffY", "password": "RtIvQaKyevWYtZjK", "uniqueDisplayName": "6J29v8MpBSpo3AKR", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-verify-headless-account-v3 '{"emailAddress": "0UZcDaiq0nEZ7Pyh", "password": "qFJkDClOsKmfsgJd"}' --login_with_auth "Bearer foo"
iam-public-update-password-v3 '{"languageTag": "mzsDPsWh1k0cQ08N", "newPassword": "G6dX2TZkil67kRng", "oldPassword": "oUa83ECh1gqPeS19"}' --login_with_auth "Bearer foo"
iam-public-create-justice-user '3TNNzot3sVli3GN2' --login_with_auth "Bearer foo"
iam-public-platform-link-v3 'XTrFibRAhzzEWzWl' 'TY70qdgJRvpZrSpW' --login_with_auth "Bearer foo"
iam-public-platform-unlink-v3 '{"platformNamespace": "X3KEe2BjV00ReCXF"}' 'ffjJJxlgjzIhpgOo' --login_with_auth "Bearer foo"
iam-public-platform-unlink-all-v3 'IOD74V21HWDAfvXw' --login_with_auth "Bearer foo"
iam-public-force-platform-link-v3 'dxbyp4HAPbBbNPSt' 'VBUpKgOssFkz0F36' --login_with_auth "Bearer foo"
iam-public-web-link-platform 'piDYXeHZ7FHls3ny' --login_with_auth "Bearer foo"
iam-public-web-link-platform-establish 'vconqbHQqKLQKe3x' 'mj6s0GqsWncp5Lrq' --login_with_auth "Bearer foo"
iam-public-process-web-link-platform-v3 'biKudv9z75SzoCV8' 'ZMi2o1nR482D6gNC' --login_with_auth "Bearer foo"
iam-public-get-users-platform-infos-v3 '{"platformId": "lk9c87hosaPFC5zB", "userIds": ["W3ZgVZCj9ObVGT0S", "cwl4kNmCi15XTJTg", "CNNH7RtG5Xmo9Q0W"]}' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"code": "b07N17fkxZSc6VbE", "emailAddress": "0AGcekjMNHuPXtz8", "newPassword": "tXxrmzafMUguyDoN"}' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 '91uc28HoSpGt1g0G' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 'GbT4Hf2PPKOldkbg' --login_with_auth "Bearer foo"
iam-public-get-user-information-v3 'X9CWJKwXXSbv5eg9' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 'q86IaDFjjx6uZerW' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 'btwTX9gNRByjbE8l' --login_with_auth "Bearer foo"
iam-public-list-justice-platform-accounts-v3 'OLAfTXKLzbrddqcK' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "La7LevxNHOSEhQRZ", "platformUserId": "Ip693lRwtc43atCu"}' 'CFxbfbz4aQERziPL' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["4dHhOqG5KDdUvk0L", "Ei26Ls7mjRxNmvvN", "tjJNQepUTGhwlY4l"], "requestId": "PzlsCR5rVsyfcH7W"}' 'jP7HuGz3b5WAEvdR' --login_with_auth "Bearer foo"
iam-public-get-publisher-user-v3 'F9bqMj4ro5B19VE8' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 '38c7OydVw0zCqoMZ' 'vpIOO97DmQ5ZOzx6' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 'iCJTu60IifzMhkk5' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-public-get-link-headless-account-to-my-account-conflict-v3 'PxsjqbCKpMv2Yky9' --login_with_auth "Bearer foo"
iam-link-headless-account-to-my-account-v3 '{"chosenNamespaces": ["DYkD2sIllFtBtXJK", "G3rqBmILhtWm8RQv", "RUbUDSiefGEdLucr"], "oneTimeLinkCode": "tO2gCQD057DrDlgC"}' --login_with_auth "Bearer foo"
iam-public-send-verification-link-v3 '{"languageTag": "2nzS9SiGUjVAw4v3"}' --login_with_auth "Bearer foo"
iam-public-verify-user-by-link-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler 'q6JRHcn7KaoCEkRd' 'o6qHYIZWnXqQ1oHF' --login_with_auth "Bearer foo"
iam-login-sso-client 'J9Q0vqsL9SomqWsG' --login_with_auth "Bearer foo"
iam-logout-sso-client 'A76yxi0QzZWfmP2s' --login_with_auth "Bearer foo"
iam-request-target-token-response-v3 'x0KO5bEJaPnAFjso' --login_with_auth "Bearer foo"
iam-admin-get-devices-by-user-v4 --login_with_auth "Bearer foo"
iam-admin-get-banned-devices-v4 --login_with_auth "Bearer foo"
iam-admin-get-user-device-bans-v4 'dyJQVVBrShGbIIuq' --login_with_auth "Bearer foo"
iam-admin-ban-device-v4 '{"comment": "K8C403HgoXCR6XOM", "deviceId": "XwKdfqk8T4QHK30E", "deviceType": "X0FclpDl5HsuracO", "enabled": false, "endDate": "njnxD1OXkxShFVQT", "ext": {"RekLfjmy8zosRCRg": {}, "VwbrQKmb01yA7U7d": {}, "GMjupZkZQY8CNyT4": {}}, "reason": "k3DIbfT22G5NpE13"}' --login_with_auth "Bearer foo"
iam-admin-get-device-ban-v4 '0YWSgxpKWtdtdtVW' --login_with_auth "Bearer foo"
iam-admin-update-device-ban-v4 '{"enabled": false}' 'anENmxb9e7vXZV3i' --login_with_auth "Bearer foo"
iam-admin-generate-report-v4 'g8Jg5VByeI3ycMcY' --login_with_auth "Bearer foo"
iam-admin-get-device-types-v4 --login_with_auth "Bearer foo"
iam-admin-get-device-bans-v4 'YBixKJXCISQdwec1' --login_with_auth "Bearer foo"
iam-admin-decrypt-device-v4 'm8BusV9tUh74KVo6' --login_with_auth "Bearer foo"
iam-admin-unban-device-v4 'Xqjz2xUKLNWSmYyV' --login_with_auth "Bearer foo"
iam-admin-get-users-by-device-v4 'vyelIJ8QgaLMqi83' --login_with_auth "Bearer foo"
iam-admin-create-test-users-v4 '{"count": 13}' --login_with_auth "Bearer foo"
iam-admin-create-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "a7cfZl4VuY6rsZyo", "policyId": "6CBRRnoOikIxXKKI", "policyVersionId": "R6kPmswm5TCAU1cK"}, {"isAccepted": true, "localizedPolicyVersionId": "3gNLIlTk3Bpclrk4", "policyId": "hIRn0znIKzAEAHQp", "policyVersionId": "BOgHEP5l94s7CbIJ"}, {"isAccepted": false, "localizedPolicyVersionId": "eHnVWOboMkyB7FTe", "policyId": "xsOZ0b2p3b63Krcw", "policyVersionId": "IcXMhGy83Xit6boO"}], "authType": "EMAILPASSWD", "code": "GCcg16DqwdQPQ9Hk", "country": "SSV8e1MgTTLS2Fga", "dateOfBirth": "rY903INGIyEfRBEj", "displayName": "7qms9AGQExPhgr9g", "emailAddress": "GfC0GjvpgJfuBs1V", "password": "pqn47GVghTH2wToO", "passwordMD5Sum": "nq9U5lyW89Xwt3wm", "reachMinimumAge": false, "uniqueDisplayName": "TrDCjhnKvsHezWTq", "username": "gYPixtHk6lWq6tEe"}' --login_with_auth "Bearer foo"
iam-admin-bulk-update-user-account-type-v4 '{"testAccount": false, "userIds": ["a16Bw3JbUnUDh5yG", "jjv4Mwrv2vancmR6", "Z7rb21A2E9pX0BWC"]}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["MqPsRk5htdM5T3fD", "SrSHrkoqv2mM6soM", "aTvQq2a9YdFNtRVS"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "O0js0hG9xmSnzd7z", "country": "gUxAogcnGkXk17QP", "dateOfBirth": "kJHRhmLKQuQVFSKi", "displayName": "Xl8G2uf6E8EajXLS", "languageTag": "AS8MKMaxQ1QyJCpK", "skipLoginQueue": false, "uniqueDisplayName": "EZCiTNAxq26gZrPq", "userName": "CsSDspvgM16sZ6rj"}' 'nkH4ExObppC6CMYD' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "m5ge659UDEOF6gp5", "emailAddress": "UfmjtiVbqJnZcrqr"}' 'Pye7fCwi7Il2wIFl' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 'Hm9N6owMHMtJy1Oq' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 'n59tEGm9NYeUT5P0' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["nx8TqSZdZ5C8mFI9", "TnvzEqBNMF9CZvPx", "T5zbreMc9fBoU3RH"], "roleId": "NDFjLKFrepy56eW1"}' 'kmb15QeIQF51c4Mq' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["JzDSvELgBe6dboSd", "hkBzAzPkt1efGJeJ", "axyHYutgXucx85vH"], "roleId": "A009FAb21jxeWXk8"}' '0y9uxgVLGgK8aVSC' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["N6oCETQ8gIDRdD2w", "wMXwKVXGPhEJsc7r", "ZpxaPHc9r8eToFmk"], "roleId": "HJ6BPOKFLxIwKssw"}' '647YwDudnGRufOUG' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "2JQ24meDrwEuTyM2"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 'qohglzO8AEl6A9sh' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 '2x2ur2ccp7R7OqPq' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": false, "deletable": true, "isWildcard": true, "roleName": "4i0N9ytb3c8pVZ8G"}' 'lU8962e6gtn5pUAR' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 72, "resource": "1oz9BaixUUvmzbaj", "schedAction": 63, "schedCron": "V4g9P6a280S5RNB5", "schedRange": ["dVCsB7xL4axSPgPC", "iwLxCFLDixZwVtt3", "RVTl0tR00oQgcHdG"]}, {"action": 67, "resource": "sBQt6YJ2tWwF7RnP", "schedAction": 32, "schedCron": "oK3c4RVfjB0zi3Xr", "schedRange": ["YZUiN24ol1qqbalg", "izL97ycJV5YqE2my", "Qzl7X9fHr6WvBxmB"]}, {"action": 44, "resource": "E9nbE2PMv12ZSRJk", "schedAction": 43, "schedCron": "akPt7IYzaZUTmvsE", "schedRange": ["zLPnnGsnfmBerp84", "qjwzWpCF1vyamjsE", "zwtLPxK1os4qR8La"]}]}' 'QzEb39sZTdFfC8x5' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 1, "resource": "ihnXKxGxaupnTTq9", "schedAction": 17, "schedCron": "Nz1K5M1qgFddYvif", "schedRange": ["GHawNx6yhniEHLbE", "QKc0aUvrKXDIjYC4", "df9qswSlpCI8Dhjl"]}, {"action": 49, "resource": "nMFjmYqE1wJhfogW", "schedAction": 14, "schedCron": "j2HKUvPYUcQBxMSd", "schedRange": ["OOsn2Nd8Jpa19GJD", "K46Eehx7xasqMY9a", "ulsL6NOV5agpS6A5"]}, {"action": 24, "resource": "KKlPKtE6gnYxmkmC", "schedAction": 99, "schedCron": "gaKoccaSwWcZmzCW", "schedRange": ["GI1cIQcPWAShIhie", "SKUf3zKbyQk2vQTY", "X1xsth28NZZgsXyc"]}]}' 'uQNGIDeHlf6IcX1K' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["9JrK6Or2xx7rLwrP", "oWiywnxuDLLuIaSx", "oloIH1gBCWVFrvls"]' '0ZwosKhDlLfTKxpV' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'OXvGSrdkqddI3ezq' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["u6FB0sL2xt6fX9j7", "rhZCAlDlVKBsLZiB", "RXszE7CL1cQCSoqH"], "namespace": "vH7g63cOx6yrIw37", "userId": "pKOLrF5i3gr3Cc4M"}' '2O7NrTQO7KLdZDGw' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "qx7T3l1ut2oyolli", "userId": "YsTJUmpscwLcUml3"}' 'KuoMKh7tprnacA34' --login_with_auth "Bearer foo"
iam-admin-invite-user-new-v4 '{"assignedNamespaces": ["xmIOjFLgKR4LjEWh", "OScvtQ92iD02YMvE", "UNfoL7JCcMo7GxxX"], "emailAddresses": ["dbYCRexPekTsQxMT", "faSot7aohFYy4Vxw", "HIJ9gzxqAw4vBGQA"], "isAdmin": false, "isNewStudio": false, "namespace": "h0VTiTP4PSrXUS6j", "roleId": "YI9lsQFD43Df5qUZ"}' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "OFzpFd6b5Jc5TETH", "country": "cup8GG0VCMTFJ6sv", "dateOfBirth": "Tyo9RHget5hzB52B", "displayName": "DFopxUwkMuSqQnKz", "languageTag": "DgDAtqE3kuybwTQF", "skipLoginQueue": true, "uniqueDisplayName": "f8NA4cGUaDfy9XnH", "userName": "2r0EKrk5VlnKsWCP"}' --login_with_auth "Bearer foo"
iam-admin-disable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-admin-enable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-admin-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-get-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-generate-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-enable-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-send-my-mfa-email-code-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-email-v4 --login_with_auth "Bearer foo"
iam-admin-enable-my-email-v4 'ccAFn5CEPoH6opK5' --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 'DSO8JyX4IE1z3rDw' --login_with_auth "Bearer foo"
iam-authentication-with-platform-link-v4 'Z1HKsOpyq8agQuz8' '6nc6jLF9DIW2ncJJ' 'KpqmgvUTr8XAtpOq' 'UQxzqJZiWi3KQffT' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v4 '5Tn61A1xW6okIqmd' --login_with_auth "Bearer foo"
iam-verify2fa-code-v4 '87ir9op4YfGTno5o' 'HzqY3DgykA8zBJX0' 'rkOHUkY5aSlqhYoS' 'false' --login_with_auth "Bearer foo"
iam-platform-token-grant-v4 'bn6l5xAzc1nc3eFm' --login_with_auth "Bearer foo"
iam-simultaneous-login-v4 'steam' 'dtVAo7w4e3v5mh6R' --login_with_auth "Bearer foo"
iam-token-grant-v4 'password' --login_with_auth "Bearer foo"
iam-request-target-token-response-v4 'oDm9FaP0HJ98tE4U' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "chTe3nt7t9ztprSf", "policyId": "W9OutADrNGBWSJ1z", "policyVersionId": "QKxVmRTawjiZPMoZ"}, {"isAccepted": true, "localizedPolicyVersionId": "cyGEHxAKDQher3us", "policyId": "ApPdJPn9eIdhIBvT", "policyVersionId": "TupABJ4RwH3EdKmY"}, {"isAccepted": true, "localizedPolicyVersionId": "l7gIKBc7OYTylFRA", "policyId": "JKySnC0cfPl3Z2zS", "policyVersionId": "Bbs4PAV72u8AxE2I"}], "authType": "EMAILPASSWD", "country": "y4kyqyKgrtEPdXXl", "dateOfBirth": "t8geCdiXu3iNvn7v", "displayName": "LZ7h6alhJNGZF07l", "emailAddress": "sPP5OfHbXzWnVO2U", "password": "4uyzZo1rj0ZrLQjk", "passwordMD5Sum": "4VoYfIksth24cZBp", "uniqueDisplayName": "dDFfvzeU5iqhx6zv", "username": "7EURTNIoG1DBdoKH", "verified": true}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "oYUT4jyCVJ0V8obT", "policyId": "lGVThz4bm41oIcV3", "policyVersionId": "3yjPxibDjfF7JkjC"}, {"isAccepted": true, "localizedPolicyVersionId": "pZKMxkFkBtXMU6KR", "policyId": "Im5xBoIi99ctgFXa", "policyVersionId": "sxp5h780ktjQw2yX"}, {"isAccepted": true, "localizedPolicyVersionId": "qpJSrDXVwCkhOQ16", "policyId": "1TFjROYJm75VIuCO", "policyVersionId": "Ckt2W1DfI8QtgODk"}], "authType": "EMAILPASSWD", "code": "DcMnyCPn1FylWdaN", "country": "V1VaZTkbbuWiiA4U", "dateOfBirth": "TDgS2SVEo5M80LLb", "displayName": "ku9GYH4ijqOVM50t", "emailAddress": "CqkZfsSxAbDJ7sHC", "password": "Lup8pmEosOXglQww", "passwordMD5Sum": "deLVpmXqRwVjc3W2", "reachMinimumAge": true, "uniqueDisplayName": "nDldRPRfd6mLZ0GT", "username": "JwEjoZrRtaeWKMC8"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "ZVdw5UMa8ymxtEFL", "policyId": "wELCY2vIddlxnA1V", "policyVersionId": "ynioJcAPwVHUGcs1"}, {"isAccepted": true, "localizedPolicyVersionId": "PKVSmWa8TGko16XT", "policyId": "qHc0cM7ixq8Tjnxp", "policyVersionId": "5Cl8ggaEmCcuK2hH"}, {"isAccepted": true, "localizedPolicyVersionId": "MTAductvUfVwLaht", "policyId": "Redh1SiZlOpIQ8GL", "policyVersionId": "7jBF1R5OexAPzCG6"}], "authType": "EMAILPASSWD", "code": "KQClGc1636nbfM3J", "country": "9G40Y62bCo941ALz", "dateOfBirth": "nQuHVskfCjUK8GeX", "displayName": "4Q0B2Cj0oOmBmXu1", "emailAddress": "KiTTiz7yrIvQj2is", "password": "N7bRwcr16lW5YwgZ", "passwordMD5Sum": "pjlMMtPWg8217m7q", "reachMinimumAge": true, "uniqueDisplayName": "kQiKp2oac8QTNEuB", "username": "beuQqm9wM7mgTtUd"}' 'PVcQijMBhs0kDP6d' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "3nuUZ41mSeS9SnGq", "country": "hJOvykBcDpzD9zh6", "dateOfBirth": "dtPK4fVHLMvrCsH3", "displayName": "RYxH2Up9VthPjFrK", "languageTag": "7Hip0eONFDgUPShG", "uniqueDisplayName": "8wwFKY9AMpcwJd4S", "userName": "rigIxAhbFMZfxazn"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "lDQbzTiFrQB1yUon", "emailAddress": "irH4URx3NkKQBYrl"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "UaMiFEWUT8cAFO5z", "country": "Ew8GENEJYPKxxOw7", "dateOfBirth": "xNQ98IEbc9YITN98", "displayName": "j4P2AGeidXRRnIAJ", "emailAddress": "fKVjOn6rtILNJVv2", "password": "DLLUyBt5hDs45siG", "reachMinimumAge": true, "uniqueDisplayName": "0Lv9iGa5mkZjnRXV", "username": "cg6AByNpBo2JYkwL", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"emailAddress": "4IATSIefcqNEn4IZ", "password": "0Dv6b8WtaMVvLbG0", "username": "4KKnh3jvW0Qp3kTy"}' --login_with_auth "Bearer foo"
iam-public-disable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-public-enable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-public-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-public-disable-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-get-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-generate-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-enable-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-remove-trusted-device-v4 --login_with_auth "Bearer foo"
iam-public-send-my-mfa-email-code-v4 --login_with_auth "Bearer foo"
iam-public-disable-my-email-v4 --login_with_auth "Bearer foo"
iam-public-enable-my-email-v4 'L4CsLwiWUMcpxn4B' --login_with_auth "Bearer foo"
iam-public-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-public-make-factor-my-default-v4 '6XoTNMuqZTHwo1IA' --login_with_auth "Bearer foo"
iam-public-get-user-public-info-by-user-id-v4 'JQpb6r8ZeaSHwQui' --login_with_auth "Bearer foo"
iam-public-invite-user-v4 '{"additionalData": "H3Ozu4G6bXxp0gYZ", "emailAddress": "yF9fJBJkSOrF9Dg4", "namespace": "FcDwBGyBiHewZkwE", "namespaceDisplayName": "euzBBRSknxyWkZOb"}' --login_with_auth "Bearer foo"
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
echo "1..386"

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

#- 108 AdminListClientAvailablePermissions
$PYTHON -m $MODULE 'iam-admin-list-client-available-permissions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'AdminListClientAvailablePermissions' test.out

#- 109 AdminUpdateAvailablePermissionsByModule
$PYTHON -m $MODULE 'iam-admin-update-available-permissions-by-module' \
    '{"modules": [{"docLink": "uvig8sMuss76ezTr", "groups": [{"group": "sDZNYUV48Oh6I45X", "groupId": "7HvUtPYONZdFk75l", "permissions": [{"allowedActions": [22, 46, 19], "resource": "KNPUOHNZxML3yoBM"}, {"allowedActions": [42, 34, 48], "resource": "h5qtrRbNnGejdTGv"}, {"allowedActions": [77, 13, 81], "resource": "fBFP1ABaIKrEt8d3"}]}, {"group": "o7cTS9OIIMErnNTL", "groupId": "XHrsOFsbhRow4iaY", "permissions": [{"allowedActions": [76, 29, 50], "resource": "xNwp1lGkYoq8HP1T"}, {"allowedActions": [79, 6, 14], "resource": "tefVQPWX1NPO5Wn7"}, {"allowedActions": [36, 58, 81], "resource": "UJhDsDefAS09VyQB"}]}, {"group": "1vR1mx6K17GL1CrO", "groupId": "4ZuoGZSxTzm8oMSP", "permissions": [{"allowedActions": [70, 4, 70], "resource": "WdVH9bww15zZsaYr"}, {"allowedActions": [73, 18, 53], "resource": "BV8DpbjGts4UZDTf"}, {"allowedActions": [15, 66, 55], "resource": "C9RhzMC7V8BEphnR"}]}], "module": "XnSpCzyb8FkoxQbr", "moduleId": "Pngi87K58pQswqKL"}, {"docLink": "utINusOsa92F6iwk", "groups": [{"group": "JIYOLarmpWyvib9C", "groupId": "DW21ANrlpuXD9H1u", "permissions": [{"allowedActions": [58, 25, 43], "resource": "5rP2A20t6foPPH94"}, {"allowedActions": [92, 62, 95], "resource": "XOBj7v8LHYivmD0e"}, {"allowedActions": [21, 51, 50], "resource": "ahppgxJhk4EdTZ00"}]}, {"group": "0rS92594HLvWFsXH", "groupId": "tMP0k9L5dREQbCqf", "permissions": [{"allowedActions": [14, 38, 38], "resource": "gpABFBER6WNcDOsR"}, {"allowedActions": [51, 30, 56], "resource": "5DSozCuFsrBMtoOe"}, {"allowedActions": [77, 44, 11], "resource": "szzQLZBktk0siMup"}]}, {"group": "01kyaFwwD7wecuQb", "groupId": "4GNQHVZMKGBnzh4s", "permissions": [{"allowedActions": [43, 1, 3], "resource": "GIzttTncVBf5g3oe"}, {"allowedActions": [42, 100, 69], "resource": "KpItMt4GszRufkDF"}, {"allowedActions": [78, 49, 25], "resource": "NBPlMrkse9SGcMuV"}]}], "module": "5phhU315LUC6HSMQ", "moduleId": "32UznXNd6ve29lqq"}, {"docLink": "tcLJW9eTJvKNDFrx", "groups": [{"group": "6LabyDnqXjXKPIcx", "groupId": "h0x7T6RQGnnW4ugG", "permissions": [{"allowedActions": [26, 75, 52], "resource": "BbgTD9xL07ZzzIs3"}, {"allowedActions": [72, 9, 22], "resource": "ovHSH3xV3URIRVDY"}, {"allowedActions": [57, 28, 7], "resource": "emwKAvgDXNrFEE4J"}]}, {"group": "f4hQpsLOcLtZw0ef", "groupId": "mEVcW7mxbS5UOoIC", "permissions": [{"allowedActions": [49, 44, 88], "resource": "psDJXPCWkX4Kpi8C"}, {"allowedActions": [73, 63, 31], "resource": "aMPGFFAQZbfbmVTE"}, {"allowedActions": [3, 100, 18], "resource": "Pv3F7S0wCVlYQi9c"}]}, {"group": "fMCeNnu6OIG1PPLR", "groupId": "DEXLXZWXvqNCHvNp", "permissions": [{"allowedActions": [9, 36, 79], "resource": "z7pMjESLLMPKDXLk"}, {"allowedActions": [18, 73, 84], "resource": "JLb5f3SBMyJUdwEB"}, {"allowedActions": [90, 55, 35], "resource": "7hGwGbUmQmJHNffZ"}]}], "module": "ENs9X0hFMdzryvhc", "moduleId": "1YjHmmulSBIElc2C"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
$PYTHON -m $MODULE 'iam-admin-delete-config-permissions-by-group' \
    '{"groupId": "dRvBb0aGnMt625bW", "moduleId": "Hb5sbX6asrjV7XJU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'AdminDeleteConfigPermissionsByGroup' test.out

#- 111 AdminListClientTemplates
$PYTHON -m $MODULE 'iam-admin-list-client-templates' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'AdminListClientTemplates' test.out

#- 112 AdminGetInputValidations
$PYTHON -m $MODULE 'iam-admin-get-input-validations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 112 'AdminGetInputValidations' test.out

#- 113 AdminUpdateInputValidations
$PYTHON -m $MODULE 'iam-admin-update-input-validations' \
    '[{"field": "OtHlzXNHEPpzlMlx", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["LwZGikW7TFA9gE6S", "rYKq6lcVOhPJIcEH", "biKHW7flVolAWEMm"], "preferRegex": false, "regex": "PDTRqjlvwnnCA5tf"}, "blockedWord": ["K5ushaKTPVjyOUpR", "3uUdgNlyU4IJnqtr", "jCOsE8VjvzhJwNX4"], "description": [{"language": "bhqCjlwrmsSRV86i", "message": ["ic1FIMyF7CcNu2DY", "n6E9Gk51kOTJZluT", "ekDMCGUJvERxNg8d"]}, {"language": "jSb4Vt2vKQ5vlCdI", "message": ["519Pf2iogwxM5DZM", "0dgozmco41750xdY", "Qg34WUV0WpmsQnp1"]}, {"language": "n4YGumTKOlDOy5vh", "message": ["SkxERZ2AQ1jvXYBa", "r5RMmmGdWl0wpj5t", "VfKU3D8WVPh0Z7Yi"]}], "isCustomRegex": false, "letterCase": "E2cyzTMBY7Xd0OoE", "maxLength": 80, "maxRepeatingAlphaNum": 89, "maxRepeatingSpecialCharacter": 13, "minCharType": 89, "minLength": 78, "regex": "f4noXDFaEUkPUBnB", "specialCharacterLocation": "0ZEJH3ebM71Tg922", "specialCharacters": ["xiBgHSka0Pz7I1Wk", "Ia0oZ1nXpW1l70pc", "ZgIn4lPghHyMEHBz"]}}, {"field": "ArbyW10NkJFQxuMH", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["Y0MsPc9EMgf9JCJi", "EvhL8ZfwCVJW9ysp", "UOyHC9eKeXzrvzBl"], "preferRegex": false, "regex": "aGEI22BTCZs97TJI"}, "blockedWord": ["8GPrM24F3celFgM6", "2HQtgzQhO3nR8j8D", "lP6OGbn8vmfMYGLt"], "description": [{"language": "1AjKhh3JMX7xSrz1", "message": ["EH6X2SM3xzsNrJzW", "BcdFlo7oAsOlfLB1", "J19b5rTfiL2P3r1a"]}, {"language": "8KIJH33aKkPuWD59", "message": ["MgTy1HA58Jt5NaRO", "jSKFEuZo2ElXYSS4", "ezBRSiOyReviDaxl"]}, {"language": "PdhwmcH03yoMxzRR", "message": ["6xd9rTh3ureaIbxM", "3Wev9pZQjWAN0tny", "16ZHZtuSJGQCrM7J"]}], "isCustomRegex": true, "letterCase": "Xxrz7sLmP70LxN0f", "maxLength": 49, "maxRepeatingAlphaNum": 73, "maxRepeatingSpecialCharacter": 9, "minCharType": 54, "minLength": 1, "regex": "27Qz5SjzQfOLYu9O", "specialCharacterLocation": "46OOzz9p57qSpHer", "specialCharacters": ["zO87cg7TqtMiQgi7", "Aj28qCRbwwZc4ZS1", "NMkrnHs1Iyhwqk14"]}}, {"field": "0MolIrnlkRVbcX43", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["e6BiphIFe2bzr6qQ", "w6fSESkM19OPMBb1", "2gpmShlmIt2nfhUa"], "preferRegex": false, "regex": "Gqjslu59GT2E6Aac"}, "blockedWord": ["mZRXZm626POXWVj3", "KP1mX0iYHXBU3Uk2", "tQm307IORTyHnLYD"], "description": [{"language": "AAg1YA4kZURmoGgx", "message": ["VRMPf8g1rbhfIMSt", "MnSqrKWYOuITlYS2", "RYaD9WNKGhbLhjz1"]}, {"language": "v0RBIO2rkJGmPaK6", "message": ["HEVIQJd3930TGewj", "Ryfo4nWVZZbKFsKO", "mgEhjH2wFzCpxxJL"]}, {"language": "fAg5cFT0gHAkltcR", "message": ["3eHFbiAluHv7Hssd", "05pHBJX5ln8PZbYV", "D8RiaTsdD4d3kSbT"]}], "isCustomRegex": false, "letterCase": "rVVOKxr9Pa315FKD", "maxLength": 19, "maxRepeatingAlphaNum": 99, "maxRepeatingSpecialCharacter": 67, "minCharType": 73, "minLength": 87, "regex": "ApSV94Jy6yCSXBqJ", "specialCharacterLocation": "qjAbVwSaoj1ugjr8", "specialCharacters": ["mPkr3tZ506ERSVy5", "M3rrkxu0U9h9gCNV", "ZxHGxhZqNXJ6JXSh"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    '0Z3SWISs1dYrJKmx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
$PYTHON -m $MODULE 'iam-list-admins-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'ListAdminsV3' test.out

#- 116 AdminGetAgeRestrictionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-age-restriction-status-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'AdminGetAgeRestrictionStatusV3' test.out

#- 117 AdminUpdateAgeRestrictionConfigV3
$PYTHON -m $MODULE 'iam-admin-update-age-restriction-config-v3' \
    '{"ageRestriction": 98, "enable": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-admin-get-list-country-age-restriction-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-admin-update-country-age-restriction-v3' \
    '{"ageRestriction": 12}' \
    'T6iLFQejNZJNF2hm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
$PYTHON -m $MODULE 'iam-admin-get-banned-users-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-ban-user-bulk-v3' \
    '{"ban": "0TqBQprHn3whPKU5", "comment": "abnqw8fFa30pVbhr", "endDate": "1BHh1arZAyuLcZoE", "reason": "kPpqKhP2jWnRTglw", "skipNotif": false, "userIds": ["cCk8zHR8VyCC0EQw", "E0cXokXbwKDtVmrY", "Qu7hZvHfiT9s9pK8"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "HuUY1QQHQ0NCEddJ", "userId": "tx6GV01vD7lNLxlp"}, {"banId": "vqaB9P9GaukfCEIe", "userId": "SBLhTfzigzHcRuJg"}, {"banId": "Yaj4I8Dzyh1N0JEK", "userId": "NoMtHvjM7X1fjzkn"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AdminUnbanUserBulkV3' test.out

#- 123 AdminGetBansTypeWithNamespaceV3
$PYTHON -m $MODULE 'iam-admin-get-bans-type-with-namespace-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminGetBansTypeWithNamespaceV3' test.out

#- 124 AdminGetClientsByNamespaceV3
$PYTHON -m $MODULE 'iam-admin-get-clients-by-namespace-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminCreateClientV3
$PYTHON -m $MODULE 'iam-admin-create-client-v3' \
    '{"audiences": ["v2HZMIL2P2bh14Lr", "oFTnAuujPeP9N0vd", "VB5a2XkS3XQfMuzZ"], "baseUri": "h4AhZRe2hgU56xty", "clientId": "JtnbTDXu7FbleSP5", "clientName": "PcdOuq0m0rvakR8r", "clientPermissions": [{"action": 5, "resource": "hr4gdJDujYnVnFK6", "schedAction": 13, "schedCron": "Z2tod2BGBXjNyRCt", "schedRange": ["POr1FU3QZy3gdDms", "3kb1htW0UGJpwQZl", "Xuzu3m9u67JjCDwg"]}, {"action": 17, "resource": "86hGWKfO9MnoT3t9", "schedAction": 48, "schedCron": "HmcxzjDhTrcBKtU9", "schedRange": ["56hOg8oukDVdweG0", "sFHxTHa2k60SzCqU", "gq1gLbcIMevTmC63"]}, {"action": 25, "resource": "p7q794bu49lINFTt", "schedAction": 62, "schedCron": "UbqByWN2BCnRz9w2", "schedRange": ["nur0B9jKaunAcyls", "au7wRQmL4i3eRyIE", "CEDa1I4lwXqwPfq3"]}], "clientPlatform": "VzHQjtolx64w1gyv", "deletable": false, "description": "MrFaoLulzp3sZxIm", "modulePermissions": [{"moduleId": "VK5yh2LcM8LaMW0B", "selectedGroups": [{"groupId": "yjsRUrAHNRkIcC4w", "selectedActions": [80, 90, 64]}, {"groupId": "CW8gJmGzDlqxtLsR", "selectedActions": [18, 55, 30]}, {"groupId": "GOiPhNt2IdH8aYYU", "selectedActions": [93, 58, 66]}]}, {"moduleId": "mma833TDzk66ix88", "selectedGroups": [{"groupId": "sAUrXr7MXxCvyy7c", "selectedActions": [1, 40, 48]}, {"groupId": "MhKHmSjqPuQZX5Kj", "selectedActions": [7, 58, 81]}, {"groupId": "Zx9DJ4V97SJLlrwX", "selectedActions": [25, 83, 70]}]}, {"moduleId": "4YHEYLjTSNDf3zaz", "selectedGroups": [{"groupId": "m6p5Y1tkG9WwU4Ty", "selectedActions": [58, 15, 67]}, {"groupId": "5QYyFjuBquE7xssm", "selectedActions": [73, 15, 50]}, {"groupId": "xczskbSUbOZ9WNl3", "selectedActions": [0, 14, 31]}]}], "namespace": "lJtZTh280vflFMxI", "oauthAccessTokenExpiration": 16, "oauthAccessTokenExpirationTimeUnit": "bP4QVey9pEz1TV5c", "oauthClientType": "UtPBsw01i5Mf7Wvb", "oauthRefreshTokenExpiration": 81, "oauthRefreshTokenExpirationTimeUnit": "WiKoNGtvyk5xEfrJ", "parentNamespace": "DxKsw5Xl7ZZrDZdb", "redirectUri": "uvCFBaVcohewKkVu", "scopes": ["Gv9fQXkErF0drbYr", "rFQP6rW62CtetBW3", "pvAJJieHhveGg97P"], "secret": "Y0txzvYwv7atn9EQ", "skipLoginQueue": true, "twoFactorEnabled": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminCreateClientV3' test.out

#- 126 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    'j8TFNeGtJGjKbMgC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 127 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'euAYuzrmbWofEaKS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteClientV3' test.out

#- 128 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["tqdKu4ROnONpJ849", "chqeiUGQMwNwDlYS", "li3p8YaAdel3hHMS"], "baseUri": "LAiscGRWzkCl1ZKu", "clientName": "PxjDUGRGcCEPjbUy", "clientPermissions": [{"action": 52, "resource": "F82Adu9BYRHrVTeh", "schedAction": 35, "schedCron": "BpeubprKX68jTyRd", "schedRange": ["3LrR1x6U1v6zSLjm", "9zmzUW0vPj90jmLT", "t5YQGawcomPoiYoQ"]}, {"action": 9, "resource": "f1AYq306Pysv4VPa", "schedAction": 99, "schedCron": "rpn0vAD9YsPeDWrA", "schedRange": ["VQZSvgWuCuLsUGrV", "QAbhS54ZuQHKersD", "mJLUHAKtfXCKOna8"]}, {"action": 59, "resource": "MDZeO4U55wdCpVpn", "schedAction": 62, "schedCron": "0e0J6vyqPw7YlmV3", "schedRange": ["kES0Hi88UYgSV40O", "vY7apPCrN5bEhmuH", "gKeWizEpw1zN0mOY"]}], "clientPlatform": "gGhHMz9dddLWJWDu", "deletable": true, "description": "YtCaIv4Lp91wYUJP", "modulePermissions": [{"moduleId": "bvzn8TYoMDAaUXSu", "selectedGroups": [{"groupId": "BQdvdhJoT0WK5ngN", "selectedActions": [95, 97, 48]}, {"groupId": "Ibbsz24fQKDZX6pl", "selectedActions": [62, 27, 36]}, {"groupId": "KxQjYU6KlavIiLxU", "selectedActions": [72, 70, 91]}]}, {"moduleId": "GyJS48Hxu8Ju4XSA", "selectedGroups": [{"groupId": "nlXRYB9BgSZBvkeh", "selectedActions": [90, 60, 27]}, {"groupId": "BnmL1KQn77hiP1lz", "selectedActions": [21, 98, 53]}, {"groupId": "WXz8dv7BiEUqnzxs", "selectedActions": [44, 7, 50]}]}, {"moduleId": "eMF8UAJIHEZv5zyU", "selectedGroups": [{"groupId": "UyNJkvA5xF3zHtZS", "selectedActions": [7, 99, 87]}, {"groupId": "j90EQzOidrWnLrXq", "selectedActions": [71, 45, 25]}, {"groupId": "pp0ni1YfIgLZ4YIz", "selectedActions": [62, 23, 83]}]}], "namespace": "rLZOBLHCKmLBaIwl", "oauthAccessTokenExpiration": 28, "oauthAccessTokenExpirationTimeUnit": "jcgr2drXG5NkKCyS", "oauthRefreshTokenExpiration": 78, "oauthRefreshTokenExpirationTimeUnit": "qM8UzvKqeoTiNKGR", "redirectUri": "UMrimGAz6OhmHOpC", "scopes": ["dr3WzDm3hJdd6uaO", "9TiTPnIh2iaIBpYC", "4txul6VKYlNYYlHP"], "skipLoginQueue": true, "twoFactorEnabled": true}' \
    'KDpJmkeoAkp3Z4pg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateClientV3' test.out

#- 129 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 50, "resource": "p6R8mYZwKftVqSEC"}, {"action": 38, "resource": "hiPuDdOPHcN9drwq"}, {"action": 50, "resource": "fs4tLVOYQCWMktmi"}]}' \
    'Kd9vLPP0w52JRAZx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientPermissionV3' test.out

#- 130 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 79, "resource": "PNDqWrpkWnnova15"}, {"action": 99, "resource": "YLge851PbK2MFKvw"}, {"action": 26, "resource": "TWjAh4gy41LLzQ2I"}]}' \
    'jY5PeNr4JmYxH2qs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'AdminAddClientPermissionsV3' test.out

#- 131 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '58' \
    '8hePJjMp0TKKUBfP' \
    'NI9f2oLWDPSZexfK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'AdminDeleteClientPermissionV3' test.out

#- 132 AdminGetConfigValueV3
$PYTHON -m $MODULE 'iam-admin-get-config-value-v3' \
    'Vxqdxmh5QWxuQuI7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'AdminGetConfigValueV3' test.out

#- 133 AdminGetCountryListV3
$PYTHON -m $MODULE 'iam-admin-get-country-list-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'AdminGetCountryListV3' test.out

#- 134 AdminGetCountryBlacklistV3
$PYTHON -m $MODULE 'iam-admin-get-country-blacklist-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'AdminGetCountryBlacklistV3' test.out

#- 135 AdminAddCountryBlacklistV3
$PYTHON -m $MODULE 'iam-admin-add-country-blacklist-v3' \
    '{"blacklist": ["gdDTDb3WdnOpzTrR", "zCCafADJfWBspT3M", "LwJZquMQSPp5XD4S"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'AdminAddCountryBlacklistV3' test.out

#- 136 RetrieveAllThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-all-third-party-login-platform-credential-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'RetrieveAllThirdPartyLoginPlatformCredentialV3' test.out

#- 137 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3' test.out

#- 138 RetrieveAllSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-all-sso-login-platform-credential-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 139 RetrieveThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-third-party-login-platform-credential-v3' \
    '1ilfgff7Et4uY8nl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 140 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "BwGNHgfgwZwVMvsh", "AWSCognitoRegion": "Gmsg6ZJYnkHDnHTl", "AWSCognitoUserPool": "RugM7a2UZgeesipb", "AllowedClients": ["P027okM5E8tAajVS", "vLRj306RDuaSixXE", "dloYZBkatNLc42eq"], "AppId": "0O6VsXtOlQwj5xPv", "AuthorizationEndpoint": "m7c5nPR0Y1sffUaZ", "ClientId": "64dFpiv8o9Gw4QtK", "Environment": "gyIeySoUxoMrj2J4", "FederationMetadataURL": "JGQZAtyjTxnlmSyj", "GenericOauthFlow": true, "IsActive": false, "Issuer": "qE5p601ak59yFSfd", "JWKSEndpoint": "ZIv8oYWPUS4Zu0Sb", "KeyID": "Tt6M2XizikCh6q0y", "NetflixCertificates": {"encryptedPrivateKey": "q2WAHtL7IWE3MFqv", "encryptedPrivateKeyName": "fDG5jvMOaXrDlEX4", "publicCertificate": "2U0syrGNhBmgT2q0", "publicCertificateName": "kIbrJ2S5Pf1Lvg8k", "rootCertificate": "YEVylINJpxFY8E6p", "rootCertificateName": "U8eHjh0aTjIOaQt0"}, "OrganizationId": "snbE0yMvqF7TJ9uB", "PlatformName": "0zypjJiu7BIimNuw", "RedirectUri": "B3hBVhuSMHhf5R2M", "RegisteredDomains": [{"affectedClientIDs": ["kxQTAYGfE6hXZ7XL", "oWCGf0dZEeXBd6mG", "G6SHcZbX2wNnT6A9"], "domain": "zosmDnXoncy7NZQ4", "namespaces": ["PkAPXBCfkE1Fb0y9", "4eP7yh0zsKhR60HZ", "wUwk48XK7MXHbEwA"], "roleId": "vvpEeHhXiJcJqYSx"}, {"affectedClientIDs": ["VKUYMimVLzAP6aOz", "sTqEFXUhGAwpYq1U", "qZydOB0MThZW6Lwc"], "domain": "Ag57BYBVCbi0ifdP", "namespaces": ["yKf3SwHekWIz4rXl", "H5jw99HxCjXWcaXB", "cfXXeV7BXefsSgZx"], "roleId": "SYnVwXqF6K0WA76K"}, {"affectedClientIDs": ["l2mHHoz6qBQnEDgX", "49n1xTDFcmOm1sqd", "IWU6ERylESgf5dXM"], "domain": "rPoYSohfrLyXMSrC", "namespaces": ["62xYtDwflNGfufW5", "cWeg6eSCypsceITT", "kJGGCVF6LrILDLvi"], "roleId": "UCzmDAaW5xz1c7Zu"}], "Secret": "ZXUCBYnkY0LEBSYB", "TeamID": "dUSiTOrhB8hVs29W", "TokenAuthenticationType": "OKmZRTtgycLzXz6l", "TokenClaimsMapping": {"UMKi5mweMEZo2ZnL": "1Zg2JfH4f73jAevO", "nES6YJLlb2AfUEEB": "bqMMKvkOsR1fHUyi", "rMVMOFES2J2OzNlJ": "E3uqZz574g31cA0P"}, "TokenEndpoint": "wZxTIZVSGQyTzhs9", "UserInfoEndpoint": "Asy4d629N4YnolVW", "UserInfoHTTPMethod": "A2dWxBs056jkPCUu", "scopes": ["E1pgdHvlQKiR7SDQ", "UDavOlKT5EIHNhJQ", "q94Re5IM1akNKz9I"]}' \
    'ltQUku3n32atB0QP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 141 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    'QPEp5UtwUWGt6too' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 142 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "HP5kAww01zalTddh", "AWSCognitoRegion": "AQ1pwqnybvUIfuul", "AWSCognitoUserPool": "meegRwPPbn7lttd2", "AllowedClients": ["1cS6IVE4fzwG3BHa", "RcZ8NK4gkLmvEOaR", "cqTgF0xtQAXoDoFk"], "AppId": "mA3fgzcwdgJMjIyG", "AuthorizationEndpoint": "fiNBQy41M1gzGCba", "ClientId": "xw33rNbE4bbDU4FM", "Environment": "TbQaANJOODGerDCW", "FederationMetadataURL": "cl3VSJENQopeHD6i", "GenericOauthFlow": true, "IsActive": false, "Issuer": "IRtLfPngD83roOeq", "JWKSEndpoint": "E7fcCAeExeQX43Lp", "KeyID": "mdMiZeyIrA4QUKSJ", "NetflixCertificates": {"encryptedPrivateKey": "gECzvaWUCA7wKru7", "encryptedPrivateKeyName": "ry3AQ2sEHvSxjWoM", "publicCertificate": "1rNJLM0OOVG5cG6X", "publicCertificateName": "xENbWqlX7idzjpKD", "rootCertificate": "fwl6XlCF6YxFMD8t", "rootCertificateName": "JQwZvUVInos5RK10"}, "OrganizationId": "0yH89i8ZDPXRL8cb", "PlatformName": "TAntB1STaab1Ueib", "RedirectUri": "Xg7RCe5BtKcwj6Pq", "RegisteredDomains": [{"affectedClientIDs": ["qOgCimr3ZQNBBkrX", "u9czsYr3cFeVw70x", "dNTuOdLKK0M2B2hb"], "domain": "qJin37P69t1KqeGz", "namespaces": ["7qbPnXEuOzzkoBmM", "R9C4qPqJrAdh1HIk", "7vCEq7FQ2S5VeW9d"], "roleId": "dxzLPV8wDjsnyPh5"}, {"affectedClientIDs": ["yNbYXmlAOi1SC3I1", "SjkH42LtyZKrTJo0", "L5sHil4Q0mqa8Gat"], "domain": "rjbJ5YT7uvqarTvr", "namespaces": ["G1DXZAWlvz3c3XAL", "MresGFfsH4aXCDhs", "hvEF8rHd250nyihc"], "roleId": "UVGHQczI5ZoTRUkj"}, {"affectedClientIDs": ["GoRkPs2SO9XrgXNI", "aU11cBXLwTfopqeZ", "tHJnRgaGfLMFbvyI"], "domain": "5PZGzVLcmZKKKYAR", "namespaces": ["ape2tsNczam4Cdd1", "QYvww4XDokltgq2v", "XtUnY6UhDJ4pe0s0"], "roleId": "Cuhl3dU9b4seYCyi"}], "Secret": "B4tDCWx3cEX8wTi1", "TeamID": "v2abpCWytPEi9Ze0", "TokenAuthenticationType": "hL9rPkV5GkSrcl2O", "TokenClaimsMapping": {"47XVzU7qlNVk7qnm": "BS3XKDhp1OkMcErm", "eH0lX1hj0LaXgQ94": "flh775AQfzNjQ7Iu", "MSY2epRDJjDyMDKQ": "huTjtQZyIiAmCL8b"}, "TokenEndpoint": "NTTfqLCv9DYBOPro", "UserInfoEndpoint": "N4UWbQaKFrTv4JWE", "UserInfoHTTPMethod": "lmOCxqPrq9I3XJWB", "scopes": ["xTLcOef8MgIwkrKF", "EtwESJCe2ksG3nZE", "13H2fILFzOlAZbDQ"]}' \
    'AEJLbVWH2XLIg3Mg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 143 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["mdSvWp3h0xPsVY8q", "NwB2TY4v9NNfQSYL", "FKSl3FNFFJnt3rIw"], "assignedNamespaces": ["ZdW02Su6aCnL816a", "H6gOBUIMeL0GL3ae", "fSDME8X2MxILI42B"], "domain": "JMPkZmay4Csye3iJ", "roleId": "Ltjsu6ZJRCoDq3ge"}' \
    'uHFFaZzPIjETqcKN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 144 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "1gaQ4Bn0cPPtKaJl"}' \
    'w31pdDrXQ47WSGyD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 145 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    'CKF0LLhO3lGZ7eGO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'RetrieveSSOLoginPlatformCredential' test.out

#- 146 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "Pj2XoFug8BUQUmPH", "apiKey": "nPumcazKAna0ji75", "appId": "7aNDFeKnQP2j2WsQ", "federationMetadataUrl": "ImTwYkiuxzLrbJ0B", "isActive": false, "redirectUri": "GS97Si6XyLVPrkUx", "secret": "yZ1OH5Nn4nMT8QOy", "ssoUrl": "TuUSD9ImtaPAocOQ"}' \
    'cpBWSNrCjSNEAdoj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'AddSSOLoginPlatformCredential' test.out

#- 147 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'kCMmYyTGO07foRZ6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 148 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "FujpIWo0qJtqp4Q6", "apiKey": "XgICLgMHcP1eE6sj", "appId": "WQllYsONpp6QGW56", "federationMetadataUrl": "CNiszHE69D1MMoaf", "isActive": false, "redirectUri": "craLXR2n9JQvq7NK", "secret": "WIHYsii3fCh7sieJ", "ssoUrl": "jZPAkiWumllU31uX"}' \
    'PwYxedGHCIkmt4bf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'UpdateSSOPlatformCredential' test.out

#- 149 AdminListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["JOhNaIT0pv7XeqO8", "gY3c4SryWB4yRaDx", "vxwaLM8HkVOW8PnL"]}' \
    'kgqkqYZWPZTgKagT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 150 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'zdcYcko7U3gH239L' \
    'hRx2Laa2RdtVb6Vg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AdminGetUserByPlatformUserIDV3' test.out

#- 151 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'A5yFIH3s9UyeaFi8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'GetAdminUsersByRoleIdV3' test.out

#- 152 AdminGetUserByEmailAddressV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-email-address-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'AdminGetUserByEmailAddressV3' test.out

#- 153 AdminGetBulkUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-bulk-user-ban-v3' \
    '{"bulkUserId": ["OE7BCK4FeVGrl5Np", "UG9zblWEiHaUjyTH", "b0sSlstb3slUe94N"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AdminGetBulkUserBanV3' test.out

#- 154 AdminListUserIDByUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-user-i-ds-v3' \
    '{"userIds": ["xhXsVcqTYi1TMBMz", "aOrxuKvtUVtqbDWn", "J2i9TRmJOqIl7U12"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'AdminListUserIDByUserIDsV3' test.out

#- 155 AdminBulkGetUsersPlatform
$PYTHON -m $MODULE 'iam-admin-bulk-get-users-platform' \
    '{"userIds": ["hO5vpk9DOSgbsdGV", "PLD9A5NmuZDUV3yH", "urgOfba1XeoHYTNo"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminBulkGetUsersPlatform' test.out

#- 156 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["Rol84UlkxtP5Vok9", "sNK1ORg3tChsS3fF", "paS1uq1mH3oYfPK2"], "isAdmin": false, "namespace": "59Z9tfGVsglnOxOX", "roles": ["BfgBLuglkd9LIosh", "GnFSuHmrqej8PRpp", "YY1vlV0M2g6oreqy"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'AdminInviteUserV3' test.out

#- 157 AdminQueryThirdPlatformLinkHistoryV3
$PYTHON -m $MODULE 'iam-admin-query-third-platform-link-history-v3' \
    'BzWzCgMMWZuD6tmI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 158 AdminListUsersV3
$PYTHON -m $MODULE 'iam-admin-list-users-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminListUsersV3' test.out

#- 159 AdminSearchUserV3
$PYTHON -m $MODULE 'iam-admin-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminSearchUserV3' test.out

#- 160 AdminGetBulkUserByEmailAddressV3
$PYTHON -m $MODULE 'iam-admin-get-bulk-user-by-email-address-v3' \
    '{"listEmailAddressRequest": ["R28xVxbtpSKOfiIP", "3S6pypZqISn3msry", "kQFtW8QGKFZLrIfq"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminGetBulkUserByEmailAddressV3' test.out

#- 161 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'rZuu7IwKcT7sAsv2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminGetUserByUserIdV3' test.out

#- 162 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "TKCbYMVkXEHmsHwI", "country": "GGsusS0zZRODEKPd", "dateOfBirth": "udZsLaf8aZrXW84d", "displayName": "t0TSTmy7XF26K2U7", "languageTag": "xttUz8nWKJjv06Pu", "skipLoginQueue": false, "uniqueDisplayName": "DyGYIVFDbTvRYfpJ", "userName": "4wM9WZfOOxAzmsbh"}' \
    'i5QJuc2SNBaOlXfg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminUpdateUserV3' test.out

#- 163 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'sgBd7MYLLoPZrkjR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AdminGetUserBanV3' test.out

#- 164 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "m5Ki0orhXrISEaPZ", "comment": "HLQkTHvndQsCKAO2", "endDate": "JRz3CGwtujkzxidL", "reason": "cAQWGVRg6DVso5TJ", "skipNotif": true}' \
    '2xeaJ08JrSHPqdhK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminBanUserV3' test.out

#- 165 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": false, "skipNotif": true}' \
    '6ZjZMdr1C2TIQzRJ' \
    'Y7UfYSrdN0JVz4U4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateUserBanV3' test.out

#- 166 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "3EcV1FRyeeqehMNe", "emailAddress": "RYKeMbL0G4v5D6yl", "languageTag": "ZguO918X7rLoexHB"}' \
    'MBMMAYokSWFwajRG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminSendVerificationCodeV3' test.out

#- 167 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "UyklfLVY6g3PO4hK", "ContactType": "AeF4GUV5m96qcCJs", "LanguageTag": "VOWtu5RPsqd66ImB", "validateOnly": true}' \
    'o3IB2kX5REQZsHyX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminVerifyAccountV3' test.out

#- 168 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'zoIXNf0KbL9HyJtt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'GetUserVerificationCode' test.out

#- 169 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'dgfLGO3ummpllnV6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminGetUserDeletionStatusV3' test.out

#- 170 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"deletionDate": 57, "enabled": false}' \
    '62P1Kazg73c6UpmA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminUpdateUserDeletionStatusV3' test.out

#- 171 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "4ehxNIIlcrZzgame", "country": "T2mLkkAMjHyI0e2A", "dateOfBirth": "xj0nZHjmoKHJngwM", "displayName": "e1AnQVj6QQjZtkNJ", "emailAddress": "CnDSrsSey2BqOxgw", "password": "CymCDYsuff3b7G5F", "uniqueDisplayName": "DX4mu0qPHb9Ll2EF", "validateOnly": true}' \
    'LL1txfX9tqFSkGXo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminUpgradeHeadlessAccountV3' test.out

#- 172 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'IcFN5JL9M53Mg0Mz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminDeleteUserInformationV3' test.out

#- 173 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'WS9usxxnMhjv66Dy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminGetUserLoginHistoriesV3' test.out

#- 174 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "ED4prRVibTATxd7M", "newPassword": "zjv1gSj8kcNhoqcR", "oldPassword": "ZRNATojM7daV0VwR"}' \
    '3yNKDtMqMrAGpdyF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminResetPasswordV3' test.out

#- 175 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 99, "Resource": "BrLWUetP7nmESQDV", "SchedAction": 80, "SchedCron": "BD1nnEzoUlUWqP4E", "SchedRange": ["lzL44KEm3uHBMCP5", "ckjphURs4ksgsKJ2", "R6Jacwwu8W1zvrKM"]}, {"Action": 90, "Resource": "aMu07Zek8WObpf0F", "SchedAction": 69, "SchedCron": "ywPqYerrpOm4M2pM", "SchedRange": ["4fIfcHBWZM50aHbP", "XRns3qwYL6LwGlZG", "F7XQPLAcIL7FvAMW"]}, {"Action": 33, "Resource": "0NYdJzf3TMhSaynV", "SchedAction": 38, "SchedCron": "MdeBG7REG4meKEab", "SchedRange": ["fVXBJPIZqZC5d6Ju", "FdcfiNf0DOHKwxDF", "5GJhCjVHiCn2hTef"]}]}' \
    'T8gPFJ4WndMpQhcL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminUpdateUserPermissionV3' test.out

#- 176 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 75, "Resource": "eOjIFQfXV3YW3ug3", "SchedAction": 27, "SchedCron": "IRWme3C6p2r4D3NQ", "SchedRange": ["djrjkX3AMgK3JgZu", "fzssA284mG7uAojL", "YBsx8oqMzbE0ljQa"]}, {"Action": 56, "Resource": "xpvLfa4b4hTaZBGd", "SchedAction": 84, "SchedCron": "66DqPTdurR3MYda0", "SchedRange": ["Y0BCO4qPnvxERWjK", "asq5zQ6uZNwKjnX7", "vDIqpcjmaq5KBCsH"]}, {"Action": 23, "Resource": "l3GbKPHdDTQDEEE2", "SchedAction": 26, "SchedCron": "9GFXChtxB10d4Q8n", "SchedRange": ["lBthUSu4WNfTvD5U", "cES1eLMZs9lSQVDp", "16qVIqXCK9dS5JTb"]}]}' \
    'dJEe6mnkYAfw61ky' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminAddUserPermissionsV3' test.out

#- 177 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 76, "Resource": "0sCUsqxKocHomtjo"}, {"Action": 95, "Resource": "VNJNDaSO3FEkk4It"}, {"Action": 36, "Resource": "V8Bu7rIjGrxUMKbv"}]' \
    '60ixUuUhopdqGrqR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminDeleteUserPermissionBulkV3' test.out

#- 178 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '94' \
    '124P7PauXTrpWAjw' \
    'atSvtPbAFn8oWQcm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminDeleteUserPermissionV3' test.out

#- 179 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'FkkRX6EqadAEIzxl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminGetUserPlatformAccountsV3' test.out

#- 180 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'd80Ynss7hc3VUxxZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AdminGetListJusticePlatformAccounts' test.out

#- 181 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    'IgkTLqMeJPCbs8jW' \
    'mTteJhwNbwHGG39Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminGetUserMapping' test.out

#- 182 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    'AZJ4HuLfeTfFBTOF' \
    'FMJ9pq511jZcTK8z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminCreateJusticeUser' test.out

#- 183 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "mMfyshYk3b5cAFVo", "platformUserId": "85r1b8Yp2QnuhQuI"}' \
    'dvZdj6AspWBfRnLc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminLinkPlatformAccount' test.out

#- 184 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "Lbp7OmcrDJ7u1rrR"}' \
    'PcnG89rnNW1Yjfn8' \
    'lY4DnYRxY8ZhHeb0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminPlatformUnlinkV3' test.out

#- 185 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'CaPFDjrSotKnpJWA' \
    'LpToj9rgr5RffM5J' \
    'XvPdzEpDln04F8BQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminPlatformLinkV3' test.out

#- 186 AdminDeleteUserLinkingHistoryByPlatformIDV3
$PYTHON -m $MODULE 'iam-admin-delete-user-linking-history-by-platform-idv3' \
    'jzobhDa8VxKOrfVf' \
    'BRIfkStOqdXqhDMQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteUserLinkingHistoryByPlatformIDV3' test.out

#- 187 AdminGetThirdPartyPlatformTokenLinkStatusV3
$PYTHON -m $MODULE 'iam-admin-get-third-party-platform-token-link-status-v3' \
    '6tBLljC7gcT3M1DA' \
    'rk4L80aXFY7SQkym' \
    '9KvKMHK5fbqioeoR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 188 AdminGetUserSinglePlatformAccount
$PYTHON -m $MODULE 'iam-admin-get-user-single-platform-account' \
    'IplY0DIzRCNAO6Zp' \
    'qXJmPJso6M11LLZW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminGetUserSinglePlatformAccount' test.out

#- 189 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["KgWxn9YL16HQdtAn", "eXGgxNg33ZIUrIkf", "mdXVvaPQzzKdFg7N"]' \
    '7piT8VcrXLZnuMNp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminDeleteUserRolesV3' test.out

#- 190 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "KEIs3GC9VTK7tkJW", "roleId": "FpHt7MdKu9Xwn5GH"}, {"namespace": "JDGatrYOMO91CYEj", "roleId": "X867n9PT9fR7mMuB"}, {"namespace": "XPDKCriRKzTZ7TXA", "roleId": "VRnUVbxEJcKHE764"}]' \
    'EwhQfxFKIOGT1WKS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminSaveUserRoleV3' test.out

#- 191 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    'mLoA0ILaESC1GJXs' \
    'oBwqh0TQXa2j7v3z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminAddUserRoleV3' test.out

#- 192 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'QJoQLTAlW75icIKU' \
    'pXazsFrmaGNoi3RP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminDeleteUserRoleV3' test.out

#- 193 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": false, "reason": "SUSt8xd8EgE15XNu"}' \
    'w6Y7sToQNkuZzJ1X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminUpdateUserStatusV3' test.out

#- 194 AdminTrustlyUpdateUserIdentity
$PYTHON -m $MODULE 'iam-admin-trustly-update-user-identity' \
    '{"emailAddress": "Bxw01iBBQukgQ94Z", "password": "vPCWcMX0ov3U2sKj"}' \
    'IeyFS97dYD7LkcTK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminTrustlyUpdateUserIdentity' test.out

#- 195 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'YpCfl6HPy5cJfAV5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 196 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "iOfzwt3bpxRNt6lK"}' \
    'oMjCPtEKeBWTm78F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminUpdateClientSecretV3' test.out

#- 197 AdminGetRolesV3
$PYTHON -m $MODULE 'iam-admin-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminGetRolesV3' test.out

#- 198 AdminCreateRoleV3
$PYTHON -m $MODULE 'iam-admin-create-role-v3' \
    '{"adminRole": false, "deletable": true, "isWildcard": true, "managers": [{"displayName": "Bnttu4yW5etl4Xk8", "namespace": "Hd1lRtoPMvsu9osw", "userId": "EPTvzwwGnpbx8MCI"}, {"displayName": "jKzylqW8auyseP9w", "namespace": "EEyYAnHPp4XzVL5M", "userId": "cglFCrjxqqxAYqXG"}, {"displayName": "2V3baMkZ9JCqBIkU", "namespace": "ID0EE9InZNLwwAhW", "userId": "2b5OHKtUv4lTkQNj"}], "members": [{"displayName": "xhXdj1CG0EBgst9Q", "namespace": "u8Ofl2oB8VTjF0pD", "userId": "3NHU8iYUOtG5gbQS"}, {"displayName": "KW2MdgCH4bWxRF6f", "namespace": "BPa6GOuV5z0p8jaJ", "userId": "s2duQqawPrxi6F4e"}, {"displayName": "lhy9CZ94CAUVW8Fo", "namespace": "Ef8tjCjWc22qqDfN", "userId": "z59jHwSDQHadmAo0"}], "permissions": [{"action": 24, "resource": "xxWKtdGTW4FILotv", "schedAction": 63, "schedCron": "ycTa0i6ifYP1zfgj", "schedRange": ["sy3VRjX4qA4g9OGo", "Ww1qnCAvdnAcokJ0", "rzqX2KJcYHgiFDxc"]}, {"action": 24, "resource": "fmg6btk3mAO4EtB0", "schedAction": 15, "schedCron": "MXbxNvT6wAffv4uz", "schedRange": ["KAwiI4wTxNIefCmt", "rxWu293551nQBNKc", "qCkUXRj8gQHEe4CO"]}, {"action": 29, "resource": "70OsbzRKKPd6mjzL", "schedAction": 48, "schedCron": "slEYM8ngVT1ewVxv", "schedRange": ["gAocOqsd5v5n7eXC", "o9gZWdxfIdW8fNAM", "5YdHivK2Q0WwolQy"]}], "roleName": "037hJMOEv5W0v25y"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'AdminCreateRoleV3' test.out

#- 199 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'AObZIbrA8XAKKWMD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'AdminGetRoleV3' test.out

#- 200 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'ebehSjpt0wrfWPXa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'AdminDeleteRoleV3' test.out

#- 201 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": true, "isWildcard": false, "roleName": "b75o2MFOa6xgPt69"}' \
    'QROGDeJCyHvUsnLv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'AdminUpdateRoleV3' test.out

#- 202 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    'XCSgQHvs25eiQO3o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'AdminGetRoleAdminStatusV3' test.out

#- 203 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'WdgXdm1IxL1OtleU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'AdminUpdateAdminRoleStatusV3' test.out

#- 204 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'BqBO0Ze049k9W6ZL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'AdminRemoveRoleAdminV3' test.out

#- 205 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'VJzRpUsITfVruDuk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'AdminGetRoleManagersV3' test.out

#- 206 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "un42zPZvOd4yZyMK", "namespace": "yED3qDO5HXp5oVkh", "userId": "ESbHQ7hvTlzf7XwQ"}, {"displayName": "tVIYU87NgjDMcJxf", "namespace": "MfYFlt3JvDgMiyBG", "userId": "ygWFTAY3Th5mOwPC"}, {"displayName": "PKVPlOGfFBlu2ZP0", "namespace": "IkiYXGk6BoBmSLi0", "userId": "R7zDFMoNTQmlS8lM"}]}' \
    'lY8UjprhCxhzW6ZM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'AdminAddRoleManagersV3' test.out

#- 207 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "7LkTVrtVJZVhxCVd", "namespace": "jPutJ8dkAVOJ5img", "userId": "hdfVhjnjd66A1SQm"}, {"displayName": "WGSQLAVPAJ7zX5lB", "namespace": "80k2smdkBS2MaIP7", "userId": "PjngEFggq91cpgvo"}, {"displayName": "DBgYfLBdGNAZEvbv", "namespace": "xqa0K7VUbjUnzirn", "userId": "EsxSE4vBzG7VK8sW"}]}' \
    'EshmZf5fEdvjbyJP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'AdminRemoveRoleManagersV3' test.out

#- 208 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'Q1qdRcJjsme1OukI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'AdminGetRoleMembersV3' test.out

#- 209 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "fIZVH8q8svV5hMOS", "namespace": "fpyJkJlmJmTkFvB7", "userId": "wkY6nuUEGJ3k0HGt"}, {"displayName": "pK43uORGREOOwTuY", "namespace": "8dhNCDWWpN3B6ted", "userId": "gFUzBm5vGA3itKaF"}, {"displayName": "9z3WWuv3j8T9g1f6", "namespace": "P3D3rVcC2g6t42jE", "userId": "1Wad232YV7A2zHFG"}]}' \
    'bN8AQaCaw9UF7cdS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'AdminAddRoleMembersV3' test.out

#- 210 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "Dd99DQZ7vnTx8HDX", "namespace": "TJWiyw17ogzmbj4S", "userId": "LYDrZJvDLGvn6qtr"}, {"displayName": "oZcp16HKXX1ft5nB", "namespace": "A9xNIJVuMz04evSd", "userId": "E2FMcKd7c94rEmIY"}, {"displayName": "uAT5OAcUwYHGmG5r", "namespace": "NDBF1oU37vjfyX5Y", "userId": "LaM0wmi0i1WABBbq"}]}' \
    '8IzZsMFLX9ZhFXcF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'AdminRemoveRoleMembersV3' test.out

#- 211 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 40, "resource": "F7fMX9lDXYxGRJM9", "schedAction": 9, "schedCron": "sFGQ5DQoDwzrKPOZ", "schedRange": ["ZnV3zR7YxSu6addo", "cg10Hy9jx7gBHTOH", "HArjld0LnREsrrB2"]}, {"action": 31, "resource": "9l6nIhG5SilDDIsm", "schedAction": 19, "schedCron": "5KeVNHU9GcOivIfc", "schedRange": ["CJt4U8VSgXoi9Fw2", "5b9qXzlIK2G6AUjB", "Cdf0Rp5e5IvFuN1o"]}, {"action": 96, "resource": "ur18nCxiV9bQMHpP", "schedAction": 3, "schedCron": "KvIG9MR0hTINvq1V", "schedRange": ["R9SJUfQEX996Mh1s", "Q3Dw3uyjgQNAs918", "8Qm3W1De2McGd10w"]}]}' \
    'efF0CJlH55RLEgeA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'AdminUpdateRolePermissionsV3' test.out

#- 212 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 38, "resource": "mrLT0HbvS4kSSt3C", "schedAction": 49, "schedCron": "wqMayP8A3HGNI3Bf", "schedRange": ["jkFd6MHo6gGQ5mCh", "YoKD7yqCR03RovQZ", "hwfjkq9iyTbyD3D0"]}, {"action": 59, "resource": "tRpuuyIagSSzEL8H", "schedAction": 23, "schedCron": "euLufhQj2KP3LLxl", "schedRange": ["9Hs2L2wlpKBVURxH", "efz77a9fntCNiHBR", "UNCPSre5GmZzCQwi"]}, {"action": 22, "resource": "idbnXdMSwmkBkKC1", "schedAction": 15, "schedCron": "ji2Vc88W8aLjIxVG", "schedRange": ["pdOqguxvRwI9ZBTi", "pMRlhK9DMMaI4ryV", "DvNaruZxwTfh9gEs"]}]}' \
    '6GF247cbBLjUr5z0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'AdminAddRolePermissionsV3' test.out

#- 213 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["3wxB3E9hrE9f9COF", "rOr6wJDBwIDsJHNg", "6TvNGjwI4TbTwBuf"]' \
    'UorJouduhCEJ5XiK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'AdminDeleteRolePermissionsV3' test.out

#- 214 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '60' \
    '9gYHEV3wnTZTvYYf' \
    '4ZFuV6L2AldoWWRN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'AdminDeleteRolePermissionV3' test.out

#- 215 AdminGetMyUserV3
$PYTHON -m $MODULE 'iam-admin-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'AdminGetMyUserV3' test.out

#- 216 UserAuthenticationV3
$PYTHON -m $MODULE 'iam-user-authentication-v3' \
    '5wNYlFiliYmBrqrO' \
    'c0NIligBrOkBljwR' \
    'ENjt04ZpyTTZG1Lx' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 216 'UserAuthenticationV3' test.out

#- 217 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    'LdySvyVqY8nxBZbH' \
    'cPHEFuEVP9bF07gn' \
    'WDULkJPQR0UJMr8o' \
    'uccGH0B4LCe2h0iF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'AuthenticationWithPlatformLinkV3' test.out

#- 218 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    'CCZgFWs5s0nT89A8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 219 RequestOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-request-one-time-linking-code-v3' \
    '8GDOUClGyzYgnYTd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'RequestOneTimeLinkingCodeV3' test.out

#- 220 ValidateOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-validate-one-time-linking-code-v3' \
    'im6PkRoq5TO65KWh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'ValidateOneTimeLinkingCodeV3' test.out

#- 221 RequestTokenByOneTimeLinkCodeResponseV3
$PYTHON -m $MODULE 'iam-request-token-by-one-time-link-code-response-v3' \
    '8ztRJkXxUAj3jzZv' \
    'EaY103YUIMuSjDHz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 222 GetCountryLocationV3
$PYTHON -m $MODULE 'iam-get-country-location-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'GetCountryLocationV3' test.out

#- 223 Logout
$PYTHON -m $MODULE 'iam-logout' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'Logout' test.out

#- 224 RequestTokenExchangeCodeV3
$PYTHON -m $MODULE 'iam-request-token-exchange-code-v3' \
    '0zPWMZQNNP2JqQqh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'RequestTokenExchangeCodeV3' test.out

#- 225 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'ISTBT1Gofv4SuaZ8' \
    'yCB9TVZnuzgvAZJR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 226 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    'm71EC3ENuvD8OPsp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'RevokeUserV3' test.out

#- 227 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    '5Z3ez84KVB7HeWPn' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 227 'AuthorizeV3' test.out

#- 228 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'eFdy5ezlCU6SGzkM' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 228 'TokenIntrospectionV3' test.out

#- 229 GetJWKSV3
$PYTHON -m $MODULE 'iam-get-jwksv3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'GetJWKSV3' test.out

#- 230 SendMFAAuthenticationCode
$PYTHON -m $MODULE 'iam-send-mfa-authentication-code' \
    'pTL2wxobjxAbagqE' \
    'mXn6U2VeV2emK3Je' \
    'cJA4skqCbPxRkIAF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'SendMFAAuthenticationCode' test.out

#- 231 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    'Qh9yDdoLE2s7mrVr' \
    'mTJwtBTzQTrNo1Lc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'Change2faMethod' test.out

#- 232 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    'WNf7xHpi1JZJjIRt' \
    'CfqDHSlo54zSnRN0' \
    'zGMworzym1z3Zdet' \
    'true' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'Verify2faCode' test.out

#- 233 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'ic9AQOFWpdItLBhv' \
    'KJq9tWz9yui8a6jO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 234 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'flFJlZEhz1QDeh05' \
    'hj92bwVVxJ62Q5AO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'AuthCodeRequestV3' test.out

#- 235 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'AOyL65cPaOZA8BG8' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 235 'PlatformTokenGrantV3' test.out

#- 236 GetRevocationListV3
$PYTHON -m $MODULE 'iam-get-revocation-list-v3' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 236 'GetRevocationListV3' test.out

#- 237 TokenRevocationV3
$PYTHON -m $MODULE 'iam-token-revocation-v3' \
    'KcVWOX9n3YsjJexn' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 237 'TokenRevocationV3' test.out

#- 238 SimultaneousLoginV3
$PYTHON -m $MODULE 'iam-simultaneous-login-v3' \
    'steam' \
    'A9Umz3KPICya5Fk5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'SimultaneousLoginV3' test.out

#- 239 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'authorization_code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 239 'TokenGrantV3' test.out

#- 240 VerifyTokenV3
$PYTHON -m $MODULE 'iam-verify-token-v3' \
    'PaEbX29cV8v7MXct' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 240 'VerifyTokenV3' test.out

#- 241 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'ihtxMnIr4b7jyfL3' \
    'zMkklGCPISlsnVA6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'PlatformAuthenticationV3' test.out

#- 242 PlatformTokenRefreshV3
$PYTHON -m $MODULE 'iam-platform-token-refresh-v3' \
    'z0uSfNNpJUYzJxnO' \
    'yvqmswrToyBIQumx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'PlatformTokenRefreshV3' test.out

#- 243 PublicGetInputValidations
$PYTHON -m $MODULE 'iam-public-get-input-validations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'PublicGetInputValidations' test.out

#- 244 PublicGetInputValidationByField
$PYTHON -m $MODULE 'iam-public-get-input-validation-by-field' \
    'DfAxNqCUtizYM97e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'PublicGetInputValidationByField' test.out

#- 245 PublicGetCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction-v3' \
    'bZcYqwfIHPWMkOmr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'PublicGetCountryAgeRestrictionV3' test.out

#- 246 PublicGetConfigValueV3
$PYTHON -m $MODULE 'iam-public-get-config-value-v3' \
    'T5HL16jMwECnmwJv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'PublicGetConfigValueV3' test.out

#- 247 PublicGetCountryListV3
$PYTHON -m $MODULE 'iam-public-get-country-list-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'PublicGetCountryListV3' test.out

#- 248 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-public-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 249 RetrieveActiveOIDCClientsPublicV3
$PYTHON -m $MODULE 'iam-retrieve-active-oidc-clients-public-v3' \
    '4rpqtzDaz0WUJlBC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 250 PublicListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["HzJ2v9K8c1zOlZg3", "0pagfP0FfOMBOpeQ", "T4zYIbU4i9mLyX46"]}' \
    'Alt08rrnG8y2ScXk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 251 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    'wjpAp82pGcxvXaG9' \
    'LzHpMS53jllopwir' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'PublicGetUserByPlatformUserIDV3' test.out

#- 252 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    'Ro3A8WxnR0YaMsF3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'PublicGetAsyncStatus' test.out

#- 253 PublicSearchUserV3
$PYTHON -m $MODULE 'iam-public-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'PublicSearchUserV3' test.out

#- 254 PublicCreateUserV3
$PYTHON -m $MODULE 'iam-public-create-user-v3' \
    '{"PasswordMD5Sum": "f5KLtpTSsPMGDZTO", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "2Sgz30hejqdktHIO", "policyId": "1VdtMSews1TrU4Fh", "policyVersionId": "AfKDcDG5bMTba1tU"}, {"isAccepted": false, "localizedPolicyVersionId": "RkabpmvRsc7ZYvXC", "policyId": "T6m6mRZAlLBczJVe", "policyVersionId": "il7GbG1ISBCkcnpx"}, {"isAccepted": true, "localizedPolicyVersionId": "UxLjmxhBS6YypRW7", "policyId": "fNntaIEtDI6Mbhxk", "policyVersionId": "Qdezbmf392ersoZ2"}], "authType": "KbMb5jal0ruZmBXl", "code": "GSp85q6fuGfo5wSD", "country": "Hnyabk493I3pvHKD", "dateOfBirth": "aWhTN1qyxpUzWIZW", "displayName": "JTDzWguhujw1EoR5", "emailAddress": "8uCVldefonHJZAiX", "password": "4abmqqi90KTWwZk0", "reachMinimumAge": false, "uniqueDisplayName": "kLvraRzChdjDGdlk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'PublicCreateUserV3' test.out

#- 255 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    '2A2jHbAPNGInvbnf' \
    '4ewKFFLoGggX4gQW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'CheckUserAvailability' test.out

#- 256 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["yZocvYfr0Rnl02R1", "IVNnaK6KS71Xs1Bp", "hA9BXpKYgF9OuigD"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'PublicBulkGetUsers' test.out

#- 257 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "P0Vjmy7j2BrdCAm3", "languageTag": "slCwaBqHpE55sjxB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'PublicSendRegistrationCode' test.out

#- 258 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "Gijw0dQtZNonMrPk", "emailAddress": "zUe9SglAJGyZS0I8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'PublicVerifyRegistrationCode' test.out

#- 259 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "FevJiT98HUBp56Q4", "languageTag": "WETxtGMs5tPKPuK0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'PublicForgotPasswordV3' test.out

#- 260 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    'K4PiMDTR7LxihuOn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'GetAdminInvitationV3' test.out

#- 261 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"PasswordMD5Sum": "57io0d9dG3yzaNbG", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "VQnZDUAbINRKQsxU", "policyId": "O1YMxAndOj5O6IBw", "policyVersionId": "XJjgQjgLoJyqwFVB"}, {"isAccepted": false, "localizedPolicyVersionId": "cQqZ9F1uivPob0YZ", "policyId": "EuXQACDDQryNf9VG", "policyVersionId": "xbOeJe4n9eUlBQZ2"}, {"isAccepted": true, "localizedPolicyVersionId": "ePWXbAyGiXa9nUsH", "policyId": "CVicuJ7onrUXVlB6", "policyVersionId": "xNel4Bxb9KwFYqdh"}], "authType": "EVq3hbsApeASfR0l", "code": "jKxqZcLuhwNDvVal", "country": "v3bkoMXNzl1ywEPi", "dateOfBirth": "unixlEAHZzHs8x5o", "displayName": "PSkZFIV2feXnTRlz", "emailAddress": "AJy9oFOHB2KEsIdt", "password": "ozVltBhoXE4wgcYT", "reachMinimumAge": true, "uniqueDisplayName": "CdjaJuUzFIeqaVr1"}' \
    'CE1gu6cYuzC77J4i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'CreateUserFromInvitationV3' test.out

#- 262 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "rvZ9tktWLtDdlmVG", "country": "K6iolEw6IIpDc9X5", "dateOfBirth": "ijmtDGvd9ESdY0eT", "displayName": "kBWA44Qqsi5yOjvl", "languageTag": "5sRN2ENn1RLi5iMP", "uniqueDisplayName": "nbg7o1zYpqUsliPy", "userName": "XZGYIW5ZDtWbdkzP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'UpdateUserV3' test.out

#- 263 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "P47RcUIi2CoNj4EG", "country": "2emxKQk8cBrt5E8k", "dateOfBirth": "8rzDZ08j6ICP75cm", "displayName": "8YDChFi3zLvfQWC8", "languageTag": "5MxWxvW0veFl3uU1", "uniqueDisplayName": "aMD0mczWxc8f1s2Q", "userName": "PMMZsf2dvKZyHChR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'PublicPartialUpdateUserV3' test.out

#- 264 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "PHvdkcKW21B5EFtD", "emailAddress": "2pYaKTz1gcE2XCwT", "languageTag": "kRUIX6IFHNmB9mYB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'PublicSendVerificationCodeV3' test.out

#- 265 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "vtOwxjqyrjDApeN5", "contactType": "eAfRqSgH5xIuBTYO", "languageTag": "dsvNyk52MQFkVVEf", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'PublicUserVerificationV3' test.out

#- 266 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "7yPgG48bk6PwH1td", "country": "EAJSqXA0Wv0zWGvk", "dateOfBirth": "c6byp3mvyYT3GuaZ", "displayName": "VTxBlw1IWeXKFT4r", "emailAddress": "fSbbSlDPGf9Fn32S", "password": "JNPZkEfkAcJTMS4p", "uniqueDisplayName": "VRcCHIGfmCMTr9AC", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'PublicUpgradeHeadlessAccountV3' test.out

#- 267 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "LFTJLveQSDWnMQGa", "password": "YRxFWia7yJ2d87Xj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'PublicVerifyHeadlessAccountV3' test.out

#- 268 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "A0ajvb7JcGUFgp6L", "newPassword": "kyXpxJeFxhgTwyO5", "oldPassword": "1CUpcdxL0a9VDhrq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'PublicUpdatePasswordV3' test.out

#- 269 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'WCTXOxQUpyFgZhNp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'PublicCreateJusticeUser' test.out

#- 270 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'OTE4toH57yr01N33' \
    'p1Gha8HwpagvERZI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'PublicPlatformLinkV3' test.out

#- 271 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "6CqhcknhecNv2Tw6"}' \
    'YKhVrYkMqXkQ7qla' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'PublicPlatformUnlinkV3' test.out

#- 272 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'JjSYEseBYCFGoKpX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'PublicPlatformUnlinkAllV3' test.out

#- 273 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    'x60GmEX9x2BYpyKE' \
    'BQ7TW7lZvDbwFJJh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'PublicForcePlatformLinkV3' test.out

#- 274 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'BRdq8BgAI81k4Gr7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'PublicWebLinkPlatform' test.out

#- 275 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'jVVx5l3yrH9HR4re' \
    'G0HwUXxQTf5YpDUG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'PublicWebLinkPlatformEstablish' test.out

#- 276 PublicProcessWebLinkPlatformV3
$PYTHON -m $MODULE 'iam-public-process-web-link-platform-v3' \
    'YsJBEkYUrLv4qUiT' \
    'kFcLBrg2JB0WiCpV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'PublicProcessWebLinkPlatformV3' test.out

#- 277 PublicGetUsersPlatformInfosV3
$PYTHON -m $MODULE 'iam-public-get-users-platform-infos-v3' \
    '{"platformId": "BwvAffJ3btt0PpQY", "userIds": ["3Pnnic80yEO8dL6J", "h10XMUGeDavCKrad", "JmJFUsU418vAlmfG"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'PublicGetUsersPlatformInfosV3' test.out

#- 278 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "g9NO1Z2DvnAxH3pS", "emailAddress": "3jyCkGKltBNE2Ubh", "newPassword": "NtH3yYg4Qnn2uhdw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'ResetPasswordV3' test.out

#- 279 PublicGetUserByUserIdV3
eval_tap 0 279 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 280 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    '7C9Bx1LQOTCbAPLC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'PublicGetUserBanHistoryV3' test.out

#- 281 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    '3iqrkyJFOVaewFcv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 282 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    '9h31YxuZnoSesWpL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'PublicGetUserInformationV3' test.out

#- 283 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'UHjGaIcZN28gH4Cd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'PublicGetUserLoginHistoriesV3' test.out

#- 284 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    '9xTdt2K1CzpQWslN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'PublicGetUserPlatformAccountsV3' test.out

#- 285 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    'GnLYUYR0yOvJhUjz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'PublicListJusticePlatformAccountsV3' test.out

#- 286 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "cMtwINUlrhIpnlam", "platformUserId": "2EefVopbpPhsana0"}' \
    'uXG7GUTV1BwgkLDj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'PublicLinkPlatformAccount' test.out

#- 287 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["4pjVktyoNSsEHlzy", "d0SarkhltUxgbN5e", "ElQNESFLD8hCc9on"], "requestId": "SNjbQEqFGwnDG8kz"}' \
    '4kvEv6tNjGRhrmRA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'PublicForceLinkPlatformWithProgression' test.out

#- 288 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    'xRGeIKGlCJmDXpjy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'PublicGetPublisherUserV3' test.out

#- 289 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'vLSHB1y3klHuAGni' \
    'dOyGuS0OG7ohiL29' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 290 PublicGetRolesV3
$PYTHON -m $MODULE 'iam-public-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'PublicGetRolesV3' test.out

#- 291 PublicGetRoleV3
$PYTHON -m $MODULE 'iam-public-get-role-v3' \
    '43ClrNhEdxd24ZKf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'PublicGetRoleV3' test.out

#- 292 PublicGetMyUserV3
$PYTHON -m $MODULE 'iam-public-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'PublicGetMyUserV3' test.out

#- 293 PublicGetLinkHeadlessAccountToMyAccountConflictV3
$PYTHON -m $MODULE 'iam-public-get-link-headless-account-to-my-account-conflict-v3' \
    'vMf1T5FzYMf1jaCg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 294 LinkHeadlessAccountToMyAccountV3
$PYTHON -m $MODULE 'iam-link-headless-account-to-my-account-v3' \
    '{"chosenNamespaces": ["ZosntPzP1vXXB92q", "150WEIetOXMt37MX", "y7Fp7lUfQqXrqGad"], "oneTimeLinkCode": "wvKlJFX1ZHV9yo9U"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'LinkHeadlessAccountToMyAccountV3' test.out

#- 295 PublicSendVerificationLinkV3
$PYTHON -m $MODULE 'iam-public-send-verification-link-v3' \
    '{"languageTag": "r1hfhmGEKuVUZdCa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'PublicSendVerificationLinkV3' test.out

#- 296 PublicVerifyUserByLinkV3
$PYTHON -m $MODULE 'iam-public-verify-user-by-link-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'PublicVerifyUserByLinkV3' test.out

#- 297 PlatformAuthenticateSAMLV3Handler
$PYTHON -m $MODULE 'iam-platform-authenticate-samlv3-handler' \
    'cRGataPrcgTcA71d' \
    'tqtSUN4zvBzGh3mh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'PlatformAuthenticateSAMLV3Handler' test.out

#- 298 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'IDNuMBZegHtB9uTC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'LoginSSOClient' test.out

#- 299 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'iiIoMZCjGiOZJpUf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'LogoutSSOClient' test.out

#- 300 RequestTargetTokenResponseV3
$PYTHON -m $MODULE 'iam-request-target-token-response-v3' \
    '9RpcfEQn0O6D8PGQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'RequestTargetTokenResponseV3' test.out

#- 301 AdminGetDevicesByUserV4
$PYTHON -m $MODULE 'iam-admin-get-devices-by-user-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'AdminGetDevicesByUserV4' test.out

#- 302 AdminGetBannedDevicesV4
$PYTHON -m $MODULE 'iam-admin-get-banned-devices-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'AdminGetBannedDevicesV4' test.out

#- 303 AdminGetUserDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-user-device-bans-v4' \
    'uazAypgWhTED5YmP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'AdminGetUserDeviceBansV4' test.out

#- 304 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "TBUkm2FyvdguCYVq", "deviceId": "FyIKh1YtTY4AejyQ", "deviceType": "c5Dac7hSLldWx5Dy", "enabled": false, "endDate": "uLBZiVRYIyQLcslT", "ext": {"EqgVNG8AqktgvjwN": {}, "JAwIpEy2ZNpojZ24": {}, "I2n25smsrmJFHGiY": {}}, "reason": "nyhbqxLuTZIxgiUa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'AdminBanDeviceV4' test.out

#- 305 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    'iyy0aWrshpmb1C9A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'AdminGetDeviceBanV4' test.out

#- 306 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": false}' \
    'mYdyge6DroOywOxI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'AdminUpdateDeviceBanV4' test.out

#- 307 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    '4G6jZzoYIFAvYfT8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'AdminGenerateReportV4' test.out

#- 308 AdminGetDeviceTypesV4
$PYTHON -m $MODULE 'iam-admin-get-device-types-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'AdminGetDeviceTypesV4' test.out

#- 309 AdminGetDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-device-bans-v4' \
    'XQw2EOq6BFjmN4Oq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'AdminGetDeviceBansV4' test.out

#- 310 AdminDecryptDeviceV4
$PYTHON -m $MODULE 'iam-admin-decrypt-device-v4' \
    'KGLRpNWzKZtZnxgy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'AdminDecryptDeviceV4' test.out

#- 311 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    'wmr4CYNGm7Tk1mMy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'AdminUnbanDeviceV4' test.out

#- 312 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    'eNRsjQuDEgO3MEQN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'AdminGetUsersByDeviceV4' test.out

#- 313 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"count": 77}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'AdminCreateTestUsersV4' test.out

#- 314 AdminCreateUserV4
$PYTHON -m $MODULE 'iam-admin-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "6ijLRvQOgoaBooTa", "policyId": "wHLMxhx9nC3o6pXU", "policyVersionId": "5MDJLCB6WbXWIRpg"}, {"isAccepted": false, "localizedPolicyVersionId": "dTnGrwHeWoQXPFWF", "policyId": "aKbDgrGkv8SVwLyS", "policyVersionId": "4VbHJvD0lL7aZUY9"}, {"isAccepted": false, "localizedPolicyVersionId": "CYjCHniVSn1gYGal", "policyId": "5NrBtT0om9OlGzpF", "policyVersionId": "25qu98RhktX6qwkX"}], "authType": "EMAILPASSWD", "code": "qHHGlnAnEu6EKYce", "country": "TEqYudHlA4AxeEIf", "dateOfBirth": "UxJ2xMSNNBxCeN3p", "displayName": "Gn46fGvodt413MRd", "emailAddress": "G8qAPiANv2Ar8yXV", "password": "6qf6v5SgcJPZPUh2", "passwordMD5Sum": "nHQwpWi8HZ6C0VJ0", "reachMinimumAge": false, "uniqueDisplayName": "dEBVAU3rbkv8V98c", "username": "upW0L5WsiuITRMSP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'AdminCreateUserV4' test.out

#- 315 AdminBulkUpdateUserAccountTypeV4
$PYTHON -m $MODULE 'iam-admin-bulk-update-user-account-type-v4' \
    '{"testAccount": false, "userIds": ["UfWQwr4PYf48r66M", "aToxBiliy2vtRkpq", "L6KrVcNz83J57t6O"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 316 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["cYPQ5bk5IeuAi3zW", "FGorCbncoj5RvEtX", "iKyUGdNfMiwgSvsT"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'AdminBulkCheckValidUserIDV4' test.out

#- 317 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "RmJsOm0wVFyHvFhR", "country": "MCFJuA0DEMgykqqj", "dateOfBirth": "oHTpIPMSRAuPI7mS", "displayName": "ZQ5UDm1q51PlW2HG", "languageTag": "8LAiIzuo321Ll90I", "skipLoginQueue": true, "uniqueDisplayName": "IxTIGI5EssYllIqj", "userName": "JzuQ8GglVgxjOGQG"}' \
    'lHm8VTN56tJKwD8O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'AdminUpdateUserV4' test.out

#- 318 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "07L9GG1uenDihcea", "emailAddress": "LdgPZI0fKW8LeQxI"}' \
    'taK6s3Hha69MgxjG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'AdminUpdateUserEmailAddressV4' test.out

#- 319 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    'Jx62mkfVlu4bGB1p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'AdminDisableUserMFAV4' test.out

#- 320 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'yk0PpxXZDy5Pmbu7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'AdminListUserRolesV4' test.out

#- 321 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["RrD9a5mdlXTCL467", "xHbAiD3Pr3mXZO1P", "nbSlfVRlAI8F2f3m"], "roleId": "Ev09kAA5hnQtd4bc"}' \
    'ivHGIEplRpcHDWcI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'AdminUpdateUserRoleV4' test.out

#- 322 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["oJ45L0Ze3YamxKDS", "ZTl4UiJSCbG4UmG3", "TkMTzOcBIciiKwRs"], "roleId": "1E7sH2G9MJ6F7Rr7"}' \
    'O15jqeKssQpme6ey' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'AdminAddUserRoleV4' test.out

#- 323 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["M48tE7eJRsXNeveQ", "XqnFRYmEIX40XOUo", "LOa7oDz00gxcoaH6"], "roleId": "u9TVf4DvEzpoPRiC"}' \
    'lZ6rlwX99AHMLHqg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'AdminRemoveUserRoleV4' test.out

#- 324 AdminGetRolesV4
$PYTHON -m $MODULE 'iam-admin-get-roles-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'AdminGetRolesV4' test.out

#- 325 AdminCreateRoleV4
$PYTHON -m $MODULE 'iam-admin-create-role-v4' \
    '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "umFvPKqupHj72TlL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'AdminCreateRoleV4' test.out

#- 326 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    's964iABOgTKtnaA7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'AdminGetRoleV4' test.out

#- 327 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'O35Iaytd9CsAMTZC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'AdminDeleteRoleV4' test.out

#- 328 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "PXxnfggnZ3EZp6wS"}' \
    'AufwYirs9lwvPKd9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'AdminUpdateRoleV4' test.out

#- 329 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 0, "resource": "5u3fFLV0YeMrVaYS", "schedAction": 94, "schedCron": "OU0hHnsCl5k6Jxh5", "schedRange": ["mkmQzKg0jWCjpGwh", "7pLAi5JmzvM6JFKB", "8ikHpl3sNRaDEC2O"]}, {"action": 21, "resource": "gNfTHu3vkZt9FgWc", "schedAction": 21, "schedCron": "ibQNBz81zRPntxpg", "schedRange": ["i7tXIcNEcGJjOCXp", "uix5vnPeTu9evbRo", "v7Bm40CtZiAxk43D"]}, {"action": 66, "resource": "YCV8agvwOI2LlOQN", "schedAction": 89, "schedCron": "MtpRMWSQ8Szi1IrG", "schedRange": ["idRmR5BGRJhFwxmk", "GfPI3j4luXQuuLtY", "a86kvL6cBZQssUUX"]}]}' \
    'OsXMNdvW1hbvGenR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'AdminUpdateRolePermissionsV4' test.out

#- 330 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 3, "resource": "bcycXmBcrJLb7lab", "schedAction": 49, "schedCron": "YrmeMIHLS8egV8Xh", "schedRange": ["gDjbrum8UxcutmVg", "8APWKxoj6MF68VuK", "DoklYmkytCAH8Jiq"]}, {"action": 9, "resource": "y1PVriIyv9kjuiAG", "schedAction": 16, "schedCron": "Kgew2mHDksA6Mv9N", "schedRange": ["zs19eBq9a1L8S1yd", "uOwscICro6P8FWIP", "eqaBeD2uBAvIXEc2"]}, {"action": 58, "resource": "IALI8JNIII4jrzrP", "schedAction": 37, "schedCron": "bCOiBWdw2b031dm4", "schedRange": ["N41MOpmm04BlZUAl", "YnCT11qD03er5mdr", "aK47FdxXisVlo3aV"]}]}' \
    'OGARFDJcGWy826il' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'AdminAddRolePermissionsV4' test.out

#- 331 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["CxAxQUM5DyrPfBmp", "ZIzSFUZqVR5FWGfH", "66eFCMTsLA8vYVvr"]' \
    'IAEehUV0jsjAyVgx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'AdminDeleteRolePermissionsV4' test.out

#- 332 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'S54NNs3XdhMbQX9D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'AdminListAssignedUsersV4' test.out

#- 333 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["1znEWw9p7g4UsQCT", "KDh5n9yc34xF8qFl", "lM1LTrl4MP3Nl4T3"], "namespace": "ujvV7W6ADLtn7oIn", "userId": "n1Bz3wM3BI51etn1"}' \
    '7OcmSVHZ6wtPVAwg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'AdminAssignUserToRoleV4' test.out

#- 334 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "vxYxXJTduZp1nNYH", "userId": "REmm1cBuaRaGeM8y"}' \
    'xRfejqSbVgLd1Foy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'AdminRevokeUserFromRoleV4' test.out

#- 335 AdminInviteUserNewV4
$PYTHON -m $MODULE 'iam-admin-invite-user-new-v4' \
    '{"assignedNamespaces": ["NFGpu5r2K0IvVg5L", "wUygH98dzTL8azKC", "CNBZpwRFNYxx2dr6"], "emailAddresses": ["DDuDHXcfvXPXJURX", "3XwhOlgcpcOIxqCM", "SpZxby2J9vGOUeSe"], "isAdmin": true, "isNewStudio": false, "namespace": "JtWPRteszMTd0R5F", "roleId": "srf9xbVfgvG617Gm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'AdminInviteUserNewV4' test.out

#- 336 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "xzClkR3M6Twpwq3n", "country": "LwxnJKjOo9fvfXF1", "dateOfBirth": "VsikD3IphQQiRcOt", "displayName": "sthUwgQzNHUZ0l1F", "languageTag": "RfOjJUmCbi2llksf", "skipLoginQueue": true, "uniqueDisplayName": "mrSvQdsAdTUGpd8K", "userName": "FrXKFA2gdjQCYoE8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'AdminUpdateMyUserV4' test.out

#- 337 AdminDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'AdminDisableMyAuthenticatorV4' test.out

#- 338 AdminEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'AdminEnableMyAuthenticatorV4' test.out

#- 339 AdminGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-admin-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 340 AdminGetMyBackupCodesV4
eval_tap 0 340 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 341 AdminGenerateMyBackupCodesV4
eval_tap 0 341 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 342 AdminDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'AdminDisableMyBackupCodesV4' test.out

#- 343 AdminDownloadMyBackupCodesV4
eval_tap 0 343 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 344 AdminEnableMyBackupCodesV4
eval_tap 0 344 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 345 AdminGetBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-get-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'AdminGetBackupCodesV4' test.out

#- 346 AdminGenerateBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-generate-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'AdminGenerateBackupCodesV4' test.out

#- 347 AdminEnableBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-enable-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'AdminEnableBackupCodesV4' test.out

#- 348 AdminSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-admin-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'AdminSendMyMFAEmailCodeV4' test.out

#- 349 AdminDisableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-disable-my-email-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'AdminDisableMyEmailV4' test.out

#- 350 AdminEnableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-enable-my-email-v4' \
    'b0CZetLfpFNyp737' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'AdminEnableMyEmailV4' test.out

#- 351 AdminGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-admin-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'AdminGetMyEnabledFactorsV4' test.out

#- 352 AdminMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-admin-make-factor-my-default-v4' \
    '5rhOmR4zFjoJZVKZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'AdminMakeFactorMyDefaultV4' test.out

#- 353 AdminInviteUserV4
eval_tap 0 353 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 354 AuthenticationWithPlatformLinkV4
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v4' \
    'jOD2ePKAKYjJMVnY' \
    'j2yKqavWpydepM3a' \
    'p069B9Okr0xJ5XRZ' \
    'VoxPGOLVBIlFgTAs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'AuthenticationWithPlatformLinkV4' test.out

#- 355 GenerateTokenByNewHeadlessAccountV4
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v4' \
    'Xgqx3mfB5ZwV25N7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 356 Verify2faCodeV4
$PYTHON -m $MODULE 'iam-verify2fa-code-v4' \
    'NAvZdGuyYEYZE3Ka' \
    'GSdhEGKcp6g1A8O9' \
    'N9cbYBK6XOBDpR7S' \
    'true' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'Verify2faCodeV4' test.out

#- 357 PlatformTokenGrantV4
$PYTHON -m $MODULE 'iam-platform-token-grant-v4' \
    '93AE1Toj5vygVvLS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'PlatformTokenGrantV4' test.out

#- 358 SimultaneousLoginV4
$PYTHON -m $MODULE 'iam-simultaneous-login-v4' \
    'steam' \
    'rwQiU3DD0xZFH1fH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'SimultaneousLoginV4' test.out

#- 359 TokenGrantV4
$PYTHON -m $MODULE 'iam-token-grant-v4' \
    'urn:ietf:params:oauth:grant-type:extend_client_credentials' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'TokenGrantV4' test.out

#- 360 RequestTargetTokenResponseV4
$PYTHON -m $MODULE 'iam-request-target-token-response-v4' \
    'zffAL2DZ7gBhy77i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'RequestTargetTokenResponseV4' test.out

#- 361 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "fFvWenMNV00KVuLF", "policyId": "9WDnGO3bpQWmnS52", "policyVersionId": "ZuuuI7F1xpVrcoXz"}, {"isAccepted": true, "localizedPolicyVersionId": "OEGEDYfiGPYo2K3d", "policyId": "N3YBOJfvV6SuHovo", "policyVersionId": "Qlk5wL2oXDZ20Bw2"}, {"isAccepted": true, "localizedPolicyVersionId": "4tz6KUC4jXGj2G0G", "policyId": "Z3JBYi9bBKBRpdbL", "policyVersionId": "CiwxOx2XQn94xPqX"}], "authType": "EMAILPASSWD", "country": "ANBbEKQrgocpjGNe", "dateOfBirth": "nRlDORLvP7ynTuXz", "displayName": "afCqlMrrVIehVCf3", "emailAddress": "AwIzUdQ6sTrUg7Z0", "password": "SLrZraV3NLBUSrFn", "passwordMD5Sum": "zE6yR1wLTgjsnB2L", "uniqueDisplayName": "FVrZRrOntm2KjbfC", "username": "OuW3dBmFwUO7Y0xh", "verified": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'PublicCreateTestUserV4' test.out

#- 362 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "DdmjU11QIZtkSn8Q", "policyId": "RbA5V4gjWv1W6cqn", "policyVersionId": "vSuKswQ7vH8GScnP"}, {"isAccepted": true, "localizedPolicyVersionId": "QzRBY1UrefgmVFBV", "policyId": "z4KRCU0p4jIt01gz", "policyVersionId": "H17IcfJyGulmByN5"}, {"isAccepted": true, "localizedPolicyVersionId": "sJ98WRjqYieXRthQ", "policyId": "ZvzRi7pqpajYEHs9", "policyVersionId": "TIkcnrJ64BOKqywS"}], "authType": "EMAILPASSWD", "code": "hASFlYMVJtE2dAeC", "country": "7pF73y9eALKWinUJ", "dateOfBirth": "7bAuUJ7Fxg5LijlQ", "displayName": "TVq8Bh1p0NCKWNkL", "emailAddress": "U5ty3uQa7Fl3ZhSM", "password": "LtrwnjTJVDlh112b", "passwordMD5Sum": "yTYCDBnAvf8JpFuJ", "reachMinimumAge": true, "uniqueDisplayName": "ZistM75544PDlVK8", "username": "taScpV0NtCxDDz5r"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'PublicCreateUserV4' test.out

#- 363 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "0qhZath4b4HtwEYX", "policyId": "55pJNTX1sDjSWiSX", "policyVersionId": "sV5rJ8eZXZ1TLMZn"}, {"isAccepted": true, "localizedPolicyVersionId": "L3DQK45IAtbyUDDS", "policyId": "JSV8pzl1lfIR7jne", "policyVersionId": "tIJPGObyWCLyFPHa"}, {"isAccepted": true, "localizedPolicyVersionId": "XUT4fRbawD5yOvjg", "policyId": "OopQfbXmtF0WFH7F", "policyVersionId": "2InhxtynUjuBCxkb"}], "authType": "EMAILPASSWD", "code": "oF99xI1VVtVrVT6H", "country": "n8B2d1hZUnoQwg5u", "dateOfBirth": "qgoHaFyoczck0qJs", "displayName": "gZPfuelAiZBZcQGH", "emailAddress": "HGI7csI8ecZSvzXY", "password": "OytshBcKQytQagui", "passwordMD5Sum": "6lsKF28n7UC7y1MK", "reachMinimumAge": false, "uniqueDisplayName": "gsAj2Rmf1DXvAIkz", "username": "TRNRVyeEGu1ICOCm"}' \
    'LAmcaEFBKgy92LYq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'CreateUserFromInvitationV4' test.out

#- 364 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "tQcDN7OMCehk42ac", "country": "y8wsWaPyppR3ztPS", "dateOfBirth": "ALA8LlV2sccbVr6H", "displayName": "SiXVzrG4EdKn8eyp", "languageTag": "TzI497DG0ZNoJvvi", "uniqueDisplayName": "4Ys50iE7IjZoDzMm", "userName": "MgoMxZZ9AutWDfVO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'PublicUpdateUserV4' test.out

#- 365 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "INhql9CdDX4xiHpd", "emailAddress": "fKH35RWUUVEHCB5w"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'PublicUpdateUserEmailAddressV4' test.out

#- 366 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "zF6oLIrAwjAsgo51", "country": "XHJBG2PmyeFaBiT3", "dateOfBirth": "SyLHXZSyfjukWmkf", "displayName": "kiF2GZPuyWBVH66J", "emailAddress": "U1IICVNNRV4lBToT", "password": "cn1l44ebrKEKdeo7", "reachMinimumAge": true, "uniqueDisplayName": "5yCz9jVs1lYK1Mx9", "username": "rEFkDqb31AZzwiQB", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 367 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "UJgh74tyxkTR8ZCV", "password": "JtkxjBJrNeQRsqkk", "username": "KK2qxqzy4KSA5UtS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'PublicUpgradeHeadlessAccountV4' test.out

#- 368 PublicDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'PublicDisableMyAuthenticatorV4' test.out

#- 369 PublicEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'PublicEnableMyAuthenticatorV4' test.out

#- 370 PublicGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-public-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 371 PublicGetMyBackupCodesV4
eval_tap 0 371 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 372 PublicGenerateMyBackupCodesV4
eval_tap 0 372 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 373 PublicDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'PublicDisableMyBackupCodesV4' test.out

#- 374 PublicDownloadMyBackupCodesV4
eval_tap 0 374 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 375 PublicEnableMyBackupCodesV4
eval_tap 0 375 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 376 PublicGetBackupCodesV4
$PYTHON -m $MODULE 'iam-public-get-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'PublicGetBackupCodesV4' test.out

#- 377 PublicGenerateBackupCodesV4
$PYTHON -m $MODULE 'iam-public-generate-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'PublicGenerateBackupCodesV4' test.out

#- 378 PublicEnableBackupCodesV4
$PYTHON -m $MODULE 'iam-public-enable-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'PublicEnableBackupCodesV4' test.out

#- 379 PublicRemoveTrustedDeviceV4
$PYTHON -m $MODULE 'iam-public-remove-trusted-device-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'PublicRemoveTrustedDeviceV4' test.out

#- 380 PublicSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-public-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 380 'PublicSendMyMFAEmailCodeV4' test.out

#- 381 PublicDisableMyEmailV4
$PYTHON -m $MODULE 'iam-public-disable-my-email-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 381 'PublicDisableMyEmailV4' test.out

#- 382 PublicEnableMyEmailV4
$PYTHON -m $MODULE 'iam-public-enable-my-email-v4' \
    'XWjANSWIT9TLnuML' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'PublicEnableMyEmailV4' test.out

#- 383 PublicGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-public-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'PublicGetMyEnabledFactorsV4' test.out

#- 384 PublicMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-public-make-factor-my-default-v4' \
    'NJAEk3A6A6rYiIu8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'PublicMakeFactorMyDefaultV4' test.out

#- 385 PublicGetUserPublicInfoByUserIdV4
$PYTHON -m $MODULE 'iam-public-get-user-public-info-by-user-id-v4' \
    'eLdWykhBxLFnKnSY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 386 PublicInviteUserV4
$PYTHON -m $MODULE 'iam-public-invite-user-v4' \
    '{"additionalData": "C9yyBYepIqtrikdA", "emailAddress": "bdOT6iSRdEg8NYuc", "namespace": "4q5sJVzaKGDOULJb", "namespaceDisplayName": "jHphqjHGGAhfWaXq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'PublicInviteUserV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
