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
iam-admin-bulk-update-clients-v3 '{"clientIds": ["g4xr0lCancUZGCHs", "ZYoLfR1KtOv7Zy0b", "65uvuKNuy0ytZQ7M"], "clientUpdateRequest": {"audiences": ["6Nzy1adnSKOLFKx1", "dX4LuWJu3pDMUAee", "Z97SBROPYuG6XqP6"], "baseUri": "oo7G73zdxTgOfnwI", "clientName": "dlNa29fDLh741Isl", "clientPermissions": [{"action": 75, "resource": "lHeb34sZKHcl5LLL", "schedAction": 83, "schedCron": "AoxyyQpRWCiiPDGQ", "schedRange": ["hNPEwiJCf2XJVrlz", "qQls1ozhLVA3kE8j", "KvgatOEBM70TdlNB"]}, {"action": 72, "resource": "8kJATwlc6esUp6Sw", "schedAction": 26, "schedCron": "I98jeZQ7hfxnhLd3", "schedRange": ["Knaknoed9DHhLOqQ", "GhCUr6iTrjyEgarA", "dNJOIG36I6tRbRcr"]}, {"action": 62, "resource": "BqFKHQkETJyTlUrw", "schedAction": 60, "schedCron": "PYeDcagginxnFIna", "schedRange": ["3yddcbsPheTH26IU", "JNvYuGRUvpZaHCuE", "SOiIZsMfB4ZH3mtg"]}], "clientPlatform": "WgU4pCAKxeE70Cau", "deletable": false, "description": "IZxiXNMR9BgaWcFX", "modulePermissions": [{"moduleId": "3SUBhyoTsMWPAxUM", "selectedGroups": [{"groupId": "kawaGpAyrIwMif3B", "selectedActions": [83, 75, 7]}, {"groupId": "1Np5nodqpLm7FhJB", "selectedActions": [80, 73, 51]}, {"groupId": "sQs6XNbjvqhnUVLW", "selectedActions": [42, 44, 30]}]}, {"moduleId": "LFjAKY7CbgsWqFWZ", "selectedGroups": [{"groupId": "X7kPBom8F9GLLTG8", "selectedActions": [32, 58, 14]}, {"groupId": "jtuzFMbAG9YI89hm", "selectedActions": [14, 34, 41]}, {"groupId": "iXJF3WGRaoQomSJC", "selectedActions": [61, 21, 6]}]}, {"moduleId": "EpstyVTBcrM8rG0r", "selectedGroups": [{"groupId": "H0zcswwVeMK6MbGI", "selectedActions": [97, 16, 71]}, {"groupId": "K7MGt1ixY5rA1WoV", "selectedActions": [9, 93, 73]}, {"groupId": "IMtpgkieDyF97lGd", "selectedActions": [80, 6, 16]}]}], "namespace": "bZUpd6FJtHJ1pyVw", "oauthAccessTokenExpiration": 51, "oauthAccessTokenExpirationTimeUnit": "9tmmOnYnOpas6ghP", "oauthRefreshTokenExpiration": 51, "oauthRefreshTokenExpirationTimeUnit": "LM8IlsHqffnrfsGl", "redirectUri": "fPaZKBwa3Ddb60uf", "scopes": ["Ppzwj1QGIFmlVf4j", "vapseE9LN9bvhOrH", "flIOd6X3viLvtEk4"], "skipLoginQueue": false, "twoFactorEnabled": false}}' --login_with_auth "Bearer foo"
iam-admin-create-client-v3 '{"audiences": ["RwrKt2ecozL0TOg5", "4vCE48L5oLF6M4lN", "a4JUMSHNgqRqCV7u"], "baseUri": "samANkZlOX9Sfo95", "clientId": "HgXqKhTPkwfLM9uS", "clientName": "ybRzWek2gZvRrvr0", "clientPermissions": [{"action": 28, "resource": "bSc6bWvgpVyW9dD1", "schedAction": 22, "schedCron": "E2ItBS3KtKZWe8ao", "schedRange": ["FzAyBME74HUtipUW", "YhWV1qx8CzPML52f", "aXUr9Sk4lq2faBcA"]}, {"action": 18, "resource": "XKlhvyH8paOJtxqM", "schedAction": 85, "schedCron": "k8aG40NlncceIZSw", "schedRange": ["gAIkgzh4pTU0Am4D", "Zhl0bQxFJ3sWCqQp", "Q2FbKPFMycMSQ4qf"]}, {"action": 54, "resource": "RX3z46OCaGBeMfPl", "schedAction": 80, "schedCron": "s6w3VifnKqmTSoGH", "schedRange": ["1XEfY6QAYn6WQ5UB", "EU1QAOHfZiGhxOdc", "uDXSxSc3aZPV87pn"]}], "clientPlatform": "a08gxefTYKhuxaEc", "deletable": true, "description": "4P7UckSC6ePeN8i4", "modulePermissions": [{"moduleId": "GrFES9z7xueHpATH", "selectedGroups": [{"groupId": "ccee9GXhKcjmSEwd", "selectedActions": [35, 36, 21]}, {"groupId": "op9v7aZK3h65hbN1", "selectedActions": [46, 53, 62]}, {"groupId": "fQSfQrtfF3TQN0Oc", "selectedActions": [81, 60, 77]}]}, {"moduleId": "kepEaC4dfiOMZfEh", "selectedGroups": [{"groupId": "Hr39pysFO3Zvc1BZ", "selectedActions": [66, 87, 67]}, {"groupId": "LyvfvHEsJKQQewVL", "selectedActions": [78, 16, 96]}, {"groupId": "ob44lONDDwMvgI0H", "selectedActions": [23, 10, 50]}]}, {"moduleId": "foflEIByYqeKN0me", "selectedGroups": [{"groupId": "GelYF5wWaDhukU4k", "selectedActions": [16, 100, 67]}, {"groupId": "gSHdfo07UctPErqx", "selectedActions": [50, 0, 78]}, {"groupId": "m1jxR7SETWjteoc8", "selectedActions": [10, 51, 12]}]}], "namespace": "cvU4PbmRDcrg0DjQ", "oauthAccessTokenExpiration": 19, "oauthAccessTokenExpirationTimeUnit": "D1Lcvw6T6mZEiwxx", "oauthClientType": "ElpMYSWIeVzm7z9n", "oauthRefreshTokenExpiration": 29, "oauthRefreshTokenExpirationTimeUnit": "94TSenE5hCFkIf5w", "parentNamespace": "eqZ18MH57l2Zsrh9", "redirectUri": "0ETtYmGukz3Mnlrj", "scopes": ["cHp6B8Vj7rXFgDnD", "kdZ9bpjb1tdA3Qhj", "CMW64f4XhIjSoTB2"], "secret": "NMKtezapPr2QEPx3", "skipLoginQueue": true, "twoFactorEnabled": false}' --login_with_auth "Bearer foo"
iam-admin-get-clientsby-namespaceby-idv3 'xBGtEJIYppuUSsKo' --login_with_auth "Bearer foo"
iam-admin-delete-client-v3 'Hw2hyd12uSE7BEv3' --login_with_auth "Bearer foo"
iam-admin-update-client-v3 '{"audiences": ["aevq6iohU1cg4W1I", "S3Uv1BpWoJBaqdg2", "FHcunsS1lnaO2m9v"], "baseUri": "qjhbeK2qN8g6x2Py", "clientName": "YDo5R3hLiD5sf5y1", "clientPermissions": [{"action": 72, "resource": "lsDd4M1F5qRIblS7", "schedAction": 81, "schedCron": "BZVGLlkUetzCAWc9", "schedRange": ["x1aMjgGim51T107X", "IZRZ7tZdIs0xf4cz", "dt7zqmSKxOEQlVcx"]}, {"action": 40, "resource": "GqsBq8vdhWVnuYLg", "schedAction": 31, "schedCron": "VXtoWAXhMlW4tLqX", "schedRange": ["7OICf5oD1e6oI9Fm", "Yel0kOw72o8Zkgk0", "jS6rDWUwfhKvrf2A"]}, {"action": 1, "resource": "xHv8SwyagYvDJ3w3", "schedAction": 95, "schedCron": "Tn3rzH5NvAtcvNed", "schedRange": ["gS1fUfKmihDbmu8e", "PWlQMVDXEHeiGTnw", "yEw6hIWDZrpP7rz3"]}], "clientPlatform": "ISW510kHr4isTKWj", "deletable": false, "description": "uC2m38kXrDZWlGVE", "modulePermissions": [{"moduleId": "9sJ4NpUtKp6M9I6n", "selectedGroups": [{"groupId": "EwnZhsjwJeGwaPSD", "selectedActions": [80, 96, 94]}, {"groupId": "z95OYKiqaZD63xe5", "selectedActions": [36, 33, 36]}, {"groupId": "SMzpqIFGLkDs7ACC", "selectedActions": [68, 89, 54]}]}, {"moduleId": "gBfoNrHlFi2qJLgm", "selectedGroups": [{"groupId": "BLE35YhyiDV90SeI", "selectedActions": [20, 50, 11]}, {"groupId": "ppBHoytVznCgNyx9", "selectedActions": [10, 32, 3]}, {"groupId": "eFhUztXDgB7n4C97", "selectedActions": [42, 20, 54]}]}, {"moduleId": "cj34uulU6FYBZsWF", "selectedGroups": [{"groupId": "br3RSP0W9nBhvhf8", "selectedActions": [88, 23, 3]}, {"groupId": "DtJMcYQdN66bswAg", "selectedActions": [40, 28, 23]}, {"groupId": "X4N1LQZmB61JMdtw", "selectedActions": [59, 62, 97]}]}], "namespace": "LcNlZkqTZrKgXNwv", "oauthAccessTokenExpiration": 25, "oauthAccessTokenExpirationTimeUnit": "AZaWsQJtRYoagRJK", "oauthRefreshTokenExpiration": 30, "oauthRefreshTokenExpirationTimeUnit": "PX9UcOvhPyE11TRT", "redirectUri": "2SKseoe8VLie0LBa", "scopes": ["36KNzjf005CXNGeh", "Q2aTjTDfKFDXC7eG", "L5YhJDWh9YWqc0qg"], "skipLoginQueue": false, "twoFactorEnabled": false}' 'yOfIMLds2DbPcaoM' --login_with_auth "Bearer foo"
iam-admin-update-client-permission-v3 '{"permissions": [{"action": 6, "resource": "hqciwIeShF9RKb9v"}, {"action": 45, "resource": "YvmHMxr5hPCJJztJ"}, {"action": 56, "resource": "6knjVwVnzaqSfJiQ"}]}' 'FC2gXoda0kg16yUS' --login_with_auth "Bearer foo"
iam-admin-add-client-permissions-v3 '{"permissions": [{"action": 31, "resource": "mwTERHclOdxIwqej"}, {"action": 48, "resource": "ob9gKLqs2nEZhpBy"}, {"action": 10, "resource": "Uav7k05HAQltnSoj"}]}' 'V4jT65yclX2FtAz0' --login_with_auth "Bearer foo"
iam-admin-delete-client-permission-v3 '43' 'WNvPbpg7yrRvXfZ6' 'rvgvEY3Hht1SwqTs' --login_with_auth "Bearer foo"
iam-admin-get-config-value-v3 'KKKo37NHDOQe91Ps' --login_with_auth "Bearer foo"
iam-admin-get-country-list-v3 --login_with_auth "Bearer foo"
iam-admin-get-country-blacklist-v3 --login_with_auth "Bearer foo"
iam-admin-add-country-blacklist-v3 '{"blacklist": ["3ztUIV0dS6hIH9c4", "VfkyrwpuXxbaERbf", "gPmi0eHkt1mr9EOI"]}' --login_with_auth "Bearer foo"
iam-retrieve-all-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-sso-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-third-party-login-platform-credential-v3 'Fg0dnWIYN2NVL70I' --login_with_auth "Bearer foo"
iam-add-third-party-login-platform-credential-v3 '{"ACSURL": "w157g00jr9b8MuYm", "AWSCognitoRegion": "meKTmBNvGYxEQdf3", "AWSCognitoUserPool": "ewoGGoY7xmFNAmjD", "AllowedClients": ["DCvs78mcMdiS76YA", "pGJ9ufwLYkqIgLuZ", "S6hsQryiEtOAbpeU"], "AppId": "Nf26UqkCfgCUYBn2", "AuthorizationEndpoint": "xaOBdPF0JmX8qwU1", "ClientId": "cTuHHPB5S3DvPRCz", "Environment": "BrVUxmDOj3cvRFaT", "FederationMetadataURL": "C11W0TGTCm4fZWuk", "GenericOauthFlow": true, "IsActive": false, "Issuer": "MvczgEpzZ3Fbtxfh", "JWKSEndpoint": "cRC7IVYa6iZ5uFRY", "KeyID": "Nn3SHiWxF0YbuU5a", "NetflixCertificates": {"encryptedPrivateKey": "r5qTLWUCy0Afgc05", "encryptedPrivateKeyName": "0XIZRW491e94mQjV", "publicCertificate": "OOBnIWhunElqZUod", "publicCertificateName": "p3IhtCSHy1ei1fIr", "rootCertificate": "PvfHnRN06EjRwEQl", "rootCertificateName": "NapJRfk4f9Zcw1pE"}, "OrganizationId": "HAyNFxcVTKuAQTGh", "PlatformName": "5BxjWOozGoDtsUuY", "RedirectUri": "o5p8ED5QZAufwNa8", "RegisteredDomains": [{"affectedClientIDs": ["lzfjv9oYMXMjlVHY", "1AHwF3vGoav7MK0P", "cLnEkcokKwcQ0baD"], "domain": "T9OyJ2h23GUS2amU", "namespaces": ["7syGlElXdEAOrVSn", "LocLVVYamQc4wcG5", "nDBLJoJHbiQ5duE5"], "roleId": "p4cfs2E41cK8QTwi"}, {"affectedClientIDs": ["IAvxSvNDlmM5nQFM", "Gzs7fzjgyc44mEh9", "tRk8knYSV30lnroQ"], "domain": "ehMDli6t9unQLYXx", "namespaces": ["m09wpGAbpEmDY9vL", "h3u6EDsUmrV6kH4O", "otKwG3UC6XCnnZxF"], "roleId": "8CmQr17W65br34rB"}, {"affectedClientIDs": ["BN9tU6TDm5GloFSK", "WM1eym5ydC6p25xC", "WTqUOYZENJ1QHZQx"], "domain": "PRXH7uxBJEECQE1l", "namespaces": ["i3Bg7Jxc9pUnZmvh", "idwCkZwqjYLfTiCO", "1NDBvQvRPnAz4VzW"], "roleId": "0CpoBCbyJsF5IjF1"}], "Secret": "c0W338HS6CBgVRyi", "TeamID": "hYNZ84CVhziXV8Hw", "TokenAuthenticationType": "SmvcvcDKF19yVRaf", "TokenClaimsMapping": {"CjOuSYht83AdvBaa": "gTiRJ8daGTVX3Bb7", "jlz5IfHgKjI9mwJS": "rN8jkIykR2zbaI6P", "D7fEscShnGUGUtV9": "GJ279GDbLNwjm3FK"}, "TokenEndpoint": "0nnX2poMfZ1hDHtb", "UserInfoEndpoint": "h4HtMlFgvh2Dp2So", "UserInfoHTTPMethod": "iIPp1yvfAHS0VgLu", "scopes": ["11A3HTovFi4tPAGf", "leyCA6jEtcqsnzoV", "ILjkwW61duF87aUy"]}' 'rdt4XSpWBAetsanz' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-credential-v3 'qP8oxfrtbECD1CYP' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-credential-v3 '{"ACSURL": "waiBAxfYL8Avt70Z", "AWSCognitoRegion": "UT2fSk3LL0calqxE", "AWSCognitoUserPool": "ewuGS469k2hG0WKt", "AllowedClients": ["4sUmanYxM0UHZVNY", "zGMNIpWoSLkUrfuf", "4U3WeYeA9t2ENKKW"], "AppId": "rFtHIi1CMgKAOG5i", "AuthorizationEndpoint": "DcCR5PbCvDLil8wj", "ClientId": "9cKM3Ar6MF35hCER", "Environment": "4nGmWGgTJfHlJl4t", "FederationMetadataURL": "HGa4XfZcd9CVnGqM", "GenericOauthFlow": false, "IsActive": false, "Issuer": "jfJKyFlM0u1uuoVd", "JWKSEndpoint": "n9yVoSlKNchPHNL4", "KeyID": "X3LLaGPGdqLE8Soh", "NetflixCertificates": {"encryptedPrivateKey": "hhuiTnJarYYkHBDd", "encryptedPrivateKeyName": "SzBXdxapwhd5IQYB", "publicCertificate": "QuxLvPuWYvE3fsNy", "publicCertificateName": "9Z9OhxXvCp9y7fLD", "rootCertificate": "2qfCXnlUnqxT1WsR", "rootCertificateName": "NMZcA92hzC7MNa8v"}, "OrganizationId": "Ve4MHX6AgMep90Ay", "PlatformName": "yUJyAK5PRMRMwdvl", "RedirectUri": "0hv6g62GxBW2tQF5", "RegisteredDomains": [{"affectedClientIDs": ["tkTjgJaMYvNQOsDa", "4bkcgepqtxjbrzte", "e7QLTGAak7Kaol01"], "domain": "DK97D2xnik42mite", "namespaces": ["R5eQAe1rzmmgqBPR", "md6mO4oI8KDqebm8", "3raNBJ5y7axEkvI4"], "roleId": "oxZEDxGiBnNbn0za"}, {"affectedClientIDs": ["f7CaOSlHXrUSA6sM", "JzA5mtqISQ83TTbt", "efXWznDe4LQdXfFB"], "domain": "ii2RAMEX5RMjBFVZ", "namespaces": ["GYzQqV8d9mDdUIoi", "IJFNxuNOmUSWw18T", "1IxVWCxdvPL9e4P0"], "roleId": "1vxP8xj1LyEirURE"}, {"affectedClientIDs": ["RnEMzpImW6sjAHyC", "K5tNanGBrkzUvck3", "xTtmOFMebS4AdlNz"], "domain": "wog2IhErkNhNcECW", "namespaces": ["wchW6zL9SkbLlrNX", "nGanMazb8jvRWenU", "RH48aJuALEcSqcE1"], "roleId": "5u6D31DjOsrs3CUY"}], "Secret": "ATdqnQGbqiqOkNeA", "TeamID": "Tj7eGjodd7CcJUrI", "TokenAuthenticationType": "6MAugK5kypNrp2nF", "TokenClaimsMapping": {"e9FmN86sK5LOq4ft": "5jGcMICPUYnfG6jl", "9U4jReteIMgzISom": "CsodJrhQW41q2Osp", "CZbt3Uta5I0uGcL1": "koyHjCH5olYLETRp"}, "TokenEndpoint": "ABAmO2EGvJ4UMS93", "UserInfoEndpoint": "yOxNInDByhnoluO6", "UserInfoHTTPMethod": "ti0QP2ssiJ66OzOj", "scopes": ["84O6tgohjtC7bzjP", "pucddXJ5zifF8y95", "9anrNSleywHbHig6"]}' 'IKWVZ77KeRWdECaF' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-domain-v3 '{"affectedClientIDs": ["GzfZ2hxcJ2Fnemn7", "M23SzUo4hNBDh9ZF", "P1OW0nXOErQPS4Vs"], "assignedNamespaces": ["RoYIK69yg9ADCGiX", "aLs2xjHkinOD975n", "ARHCmhNHSXuqIHsx"], "domain": "vaUoXDmwWsukxncu", "roleId": "D3QxCXMd00YBWCaV"}' 'VmM45mfIZsWhkS47' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-domain-v3 '{"domain": "6dGGJwJ00UH197MJ"}' '6zU7JLMQyMWzYQCA' --login_with_auth "Bearer foo"
iam-retrieve-sso-login-platform-credential 'aPJgoxGJoJaSzUtY' --login_with_auth "Bearer foo"
iam-add-sso-login-platform-credential '{"acsUrl": "4ZD0Xtb0U4pH16NU", "apiKey": "sVY21NVIs7NRen2Y", "appId": "3Ns0QJQeaWytPfds", "federationMetadataUrl": "1BYx0EaURydf8Zyy", "isActive": false, "redirectUri": "yDYz9vMUOPG0iHDT", "secret": "8QbF7gHPTPQbvLt2", "ssoUrl": "NRqJGIKzLyH1y72L"}' '13Ornyx34luLdvts' --login_with_auth "Bearer foo"
iam-delete-sso-login-platform-credential-v3 'TKXMjiw6gYPvfn2Q' --login_with_auth "Bearer foo"
iam-update-sso-platform-credential '{"acsUrl": "t9iyq3Nyk8ncu2Z3", "apiKey": "eDHH9WaVO4iKhDcJ", "appId": "7TCcNIsQ3PuppUxD", "federationMetadataUrl": "SK8aOTGMudcxlCV4", "isActive": false, "redirectUri": "iY3RRiLilmOGF6dL", "secret": "LIeIVIjMcdlbdRXT", "ssoUrl": "GIrdNL5gJPqTAjgq"}' 'aTHf1ANTJ9Yk997X' --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["kGOdC6ItxDT8p4n4", "XCFkD1AJLCwszbZx", "uHSgDOK8bjoF7bL2"]}' '635KbtZTGJpqgl2I' --login_with_auth "Bearer foo"
iam-admin-get-user-by-platform-user-idv3 'zNXGTuQPIDpor7t1' 'aJLNNz6QIVC9Mfuc' --login_with_auth "Bearer foo"
iam-get-admin-users-by-role-id-v3 '8VOsnmnlVljdWYmE' --login_with_auth "Bearer foo"
iam-admin-get-user-by-email-address-v3 --login_with_auth "Bearer foo"
iam-admin-bulk-update-users-v3 '{"updateRequest": {"skipLoginQueue": false}, "userIds": ["1GC1d2b92B4vEgj3", "HOmhcWm428XejRF9", "4NIY9nMrBZo0lNUB"]}' --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-ban-v3 '{"bulkUserId": ["DShHD32vvL28FPwT", "iXfLcxDC9Ynd02mE", "CIQhfIhHtADUQ9zi"]}' --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-user-i-ds-v3 '{"userIds": ["mQTQT95pFJUAJsyA", "feKOufV4f15NohXu", "6opxQGRt6PqlkL0d"]}' --login_with_auth "Bearer foo"
iam-admin-bulk-get-users-platform '{"userIds": ["iRhLC10ih2EQfY3X", "Cv4hdOa6FdZhNMd1", "onFjGRbxtABPXDmg"]}' --login_with_auth "Bearer foo"
iam-admin-invite-user-v3 '{"emailAddresses": ["NEJBhgGq5GIDhNC6", "6szbCCf73IFbRkPS", "SITz4TjCrJHXGXku"], "isAdmin": false, "namespace": "uOzhxHmnrrV9ZGWr", "roles": ["Z05sxe6A6RpmKDeb", "NkylbynkgT9vayLL", "iizac7Ge6zKJdlt7"]}' --login_with_auth "Bearer foo"
iam-admin-query-third-platform-link-history-v3 'rjF5RaJwvkWVco2L' --login_with_auth "Bearer foo"
iam-admin-list-users-v3 --login_with_auth "Bearer foo"
iam-admin-search-user-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-by-email-address-v3 '{"listEmailAddressRequest": ["To5ijlvDF8qBWCQ9", "dLWYyS8zdhMeBXH8", "x6HdVfZVDAiU6iJO"]}' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v3 'F7JKZFNk2NKy59X8' --login_with_auth "Bearer foo"
iam-admin-update-user-v3 '{"avatarUrl": "iOg2sVBiCoeC5weX", "country": "Jl7PeiMH8z8dVej8", "dateOfBirth": "N2yv6VTnOK7xAvM7", "displayName": "tuL81lsR7xxSVp3G", "languageTag": "d2TK0HzYviTgYmx8", "skipLoginQueue": false, "uniqueDisplayName": "JVBRLPZ6Iz8tne5d", "userName": "bguBF6Gsvvdl8jHz"}' '9x7XZIjU4IK9lOLa' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v3 'ZaMphKCqTq3EVheJ' --login_with_auth "Bearer foo"
iam-admin-ban-user-v3 '{"ban": "joEEXBLIxGnNuhoJ", "comment": "M3WWPvvCiCf33ViE", "endDate": "dqQpoGkUWNizk5Uc", "reason": "PAGv6c1ESC6hZYTY", "skipNotif": true}' 'bzf5aANNNs5kgSZZ' --login_with_auth "Bearer foo"
iam-admin-update-user-ban-v3 '{"enabled": false, "skipNotif": true}' 'IT9szApmWJO5vzzX' 'Zj08a6K1XRVfriSp' --login_with_auth "Bearer foo"
iam-admin-send-verification-code-v3 '{"context": "PFnZBJZkDnEiyfa2", "emailAddress": "LrnpZxNnLRH36bqS", "languageTag": "2oFY76PU1AziBOHE"}' 'Aj1cT3u6Zc2FbrTF' --login_with_auth "Bearer foo"
iam-admin-verify-account-v3 '{"Code": "znTgDIwZIRWf6T3b", "ContactType": "y2kYSCdnFKLc0xcT", "LanguageTag": "jqjdcEfU61OJYMnW", "validateOnly": true}' 'ZCg3XTc9vQe0dHJf' --login_with_auth "Bearer foo"
iam-get-user-verification-code 'F6KIuvnRCa9JktyB' --login_with_auth "Bearer foo"
iam-admin-get-user-deletion-status-v3 'dxkZKrEWFw9GYxji' --login_with_auth "Bearer foo"
iam-admin-update-user-deletion-status-v3 '{"deletionDate": 17, "enabled": true}' 'OQAD77ci0vfWVZoR' --login_with_auth "Bearer foo"
iam-admin-list-user-all-platform-accounts-distinct-v3 'RMPi57HyKKz5nyI6' --login_with_auth "Bearer foo"
iam-admin-upgrade-headless-account-v3 '{"code": "ulKNKoXa0dgx1Jgj", "country": "C56pda3YhtQxpCYM", "dateOfBirth": "E6x21pdX2QSPAd9s", "displayName": "xoLnWGP1PafIjLX8", "emailAddress": "ce0KbNN7Ycl2JfmQ", "password": "plvGjVQ4aebjfgGu", "uniqueDisplayName": "472oWJlfglLM4xjf", "validateOnly": false}' 'lsr6CHmj763vLwtY' --login_with_auth "Bearer foo"
iam-admin-delete-user-information-v3 'EJTSiXjcY5ZPkv90' --login_with_auth "Bearer foo"
iam-admin-get-user-login-histories-v3 'lyKSTWLxSFZ0Lpup' --login_with_auth "Bearer foo"
iam-admin-reset-password-v3 '{"languageTag": "Ei5DbkVs3qFTi1t5", "newPassword": "30Wj1WfzIvc3VlSX", "oldPassword": "rA3XUGud4tVjmxEf"}' '4XvVhFJTxFHITBg9' --login_with_auth "Bearer foo"
iam-admin-update-user-permission-v3 '{"Permissions": [{"Action": 48, "Resource": "ZvPb1kuUfNfUDe4g", "SchedAction": 34, "SchedCron": "dCUoExnKfV3869IN", "SchedRange": ["4V1OdhH4GVU7Exlk", "mc4xYiLjLyZrXr9B", "htzn8jAdTn6xBhrc"]}, {"Action": 17, "Resource": "Uvlrw2MwC1uuokpa", "SchedAction": 70, "SchedCron": "LjCPrFa05Xl5TPC5", "SchedRange": ["GODS44bmm7jPdKLd", "dfdsUqjXVzW1Qqxn", "WR5sheLgsAF4ctv5"]}, {"Action": 13, "Resource": "Q5nuJhatQPxR7dvB", "SchedAction": 98, "SchedCron": "DpgHnMOn8nc3gUZ8", "SchedRange": ["ZFyyEr0KBXuJBqK4", "QtEydPWLPBYiR3Ub", "Jc1ZYapx7C477etq"]}]}' 'gfOJDUT0uKAPrARy' --login_with_auth "Bearer foo"
iam-admin-add-user-permissions-v3 '{"Permissions": [{"Action": 1, "Resource": "7YbJM3bNLWHAbCZi", "SchedAction": 47, "SchedCron": "Hqi33TcBGkc0HjUc", "SchedRange": ["nkpU9oVzl2kBuLFX", "IeCEKZUTz3GvCAZ5", "j24acYHbrryHB6GO"]}, {"Action": 68, "Resource": "zP3FaepA3b3YJ9nJ", "SchedAction": 78, "SchedCron": "RPZFPNP56l1AT6OL", "SchedRange": ["KmZhCZxxPPdPwOtE", "uWBSO2jJepUnEEgj", "a2mIE2kLTnJwc5Xm"]}, {"Action": 21, "Resource": "4me2NBFp62xlXvVc", "SchedAction": 73, "SchedCron": "dG7xVPqBqe9RDQMB", "SchedRange": ["SYAFLqp8PF5hCcou", "kWpnbz4ys7j6lxuU", "3u2HEG0qfKegvFTD"]}]}' '1sPykS8YLmwtYgWG' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-bulk-v3 '[{"Action": 5, "Resource": "zJMSnJIIgsAVmaGY"}, {"Action": 48, "Resource": "bsF44VTsLDRzdq22"}, {"Action": 5, "Resource": "YBF2g7TVtzYEHUod"}]' 'h3iUfBthbepUCTWi' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-v3 '20' '1uqh7GAi4FEIu44u' '83ZLRxYlYqlpq03B' --login_with_auth "Bearer foo"
iam-admin-get-user-platform-accounts-v3 'GdIk4oEogFVGR71r' --login_with_auth "Bearer foo"
iam-admin-get-list-justice-platform-accounts 'JOBy6lsj1AKGBjnH' --login_with_auth "Bearer foo"
iam-admin-get-user-mapping 'maAu4YK87DYAWWcb' 'cbGWmKgE8CZ4AELr' --login_with_auth "Bearer foo"
iam-admin-create-justice-user '5lraa5v5P5Cj8hgF' 'sqHC9h5JPiMEtgKu' --login_with_auth "Bearer foo"
iam-admin-link-platform-account '{"platformId": "iGTYgwWv5XldL6rO", "platformUserId": "VGcRAn51rVAQSxp4"}' 'qTB54mKA3V9DKlCe' --login_with_auth "Bearer foo"
iam-admin-platform-unlink-v3 '{"platformNamespace": "Z7mLYsHooOIaxIpb"}' '1cIOJPS3lJ80YJ41' 'U4ooQ980ywmg1pWp' --login_with_auth "Bearer foo"
iam-admin-platform-unlink-all-v3 'Wit1QC7FKe0fnHUl' 'mU1unGKM0tgfeWy4' --login_with_auth "Bearer foo"
iam-admin-platform-link-v3 '7bbwMI4gGmvK9gW5' '96FwBNrFXt3TAuKB' 'wBcD12ae6r3hHwya' --login_with_auth "Bearer foo"
iam-admin-delete-user-linking-history-by-platform-idv3 '4NpdOzg3hr6ucHf7' 'dbh2iKNUl0qJqzoK' --login_with_auth "Bearer foo"
iam-admin-get-third-party-platform-token-link-status-v3 'MRMG541PAiNjULsx' '4SnKNXLMUaDSwwQl' 'nNRZJHBSB4fZWEFI' --login_with_auth "Bearer foo"
iam-admin-get-user-single-platform-account 'Zs28Ff1kZp1Zktx3' 'N7WNMYIfcDKbLu8p' --login_with_auth "Bearer foo"
iam-admin-delete-user-roles-v3 '["nK34oA1keYXJvtgg", "DdXjbdjMBahFZZGM", "TcqnWrIprOv0BJ9S"]' 'gl7H1sdH2RIJz1eI' --login_with_auth "Bearer foo"
iam-admin-save-user-role-v3 '[{"namespace": "7Q5pu9PutLf6IrvZ", "roleId": "oBGQbO4S3rURGWUz"}, {"namespace": "PAE6SdV4D5jftRl9", "roleId": "rZmtQUvro8TWwXWs"}, {"namespace": "z9TVmdMKEohKzuMY", "roleId": "DUTLBeCidXjuGgx8"}]' 'ncXejmeZtzT0qj0l' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v3 'tsqfiZrthVvyX0OC' 'KDJE3RMUddwSSgxC' --login_with_auth "Bearer foo"
iam-admin-delete-user-role-v3 'u8zru1DhGAYOHR5B' 'Wa9VzIkaQEl1iUPr' --login_with_auth "Bearer foo"
iam-admin-update-user-status-v3 '{"enabled": false, "reason": "T2sY3SsTnDQY7kKU"}' '2u06Q4veujxtyQEN' --login_with_auth "Bearer foo"
iam-admin-trustly-update-user-identity '{"emailAddress": "vJrBCqeg67d4RWOq", "password": "O4U0bitNQLzwRoWn"}' 'R0AbkCPY70FmvviV' --login_with_auth "Bearer foo"
iam-admin-verify-user-without-verification-code-v3 'IBbcujF8Vk5qb8Nh' --login_with_auth "Bearer foo"
iam-admin-update-client-secret-v3 '{"newSecret": "WWwaxyMchkt8l5IP"}' 'SrwrJl7wYIVw13NC' --login_with_auth "Bearer foo"
iam-admin-check-third-party-login-platform-availability-v3 'o9yXlbQ52FTHTCj6' --login_with_auth "Bearer foo"
iam-admin-get-roles-v3 --login_with_auth "Bearer foo"
iam-admin-create-role-v3 '{"adminRole": true, "deletable": true, "isWildcard": true, "managers": [{"displayName": "zT7TOpyiuvvQUm29", "namespace": "Iacq4XRLaA643nTM", "userId": "tXSAyejnny0Ju13b"}, {"displayName": "6o5uB2XM6IHy7EEv", "namespace": "HyLmcvrZZOdwe1x8", "userId": "RjU6Bi8JXE52sUBB"}, {"displayName": "q2SimQQoLbe5YOJv", "namespace": "xGRxUzrTwagH7BMT", "userId": "1IZKTdNFVBQ1crBX"}], "members": [{"displayName": "AupATO8uXsqVpdiW", "namespace": "o8SjDAM0Riw8wLYW", "userId": "3n4F3LD1EDwBXw5u"}, {"displayName": "BYeQZOzATNSV9E9y", "namespace": "yNb7yaLXzAVYymOu", "userId": "hCkZu4htrsf8eIFS"}, {"displayName": "ovTGXaMsq8ePN1oc", "namespace": "o2jx8Upe8SjMvpqM", "userId": "8puggOEdG47gD5i2"}], "permissions": [{"action": 81, "resource": "GOQny4ij4ysYPonb", "schedAction": 9, "schedCron": "gQffkNOmubxEJr2q", "schedRange": ["EAuJbpZSrcbc4LWf", "KaY5c1tP5TDuI5f6", "m4KC07CnsZe32hqE"]}, {"action": 4, "resource": "74tz6aeXZOYwbwjM", "schedAction": 81, "schedCron": "dMqGegcg3eRvBZXN", "schedRange": ["3cjIXmFWRJnj8xN7", "HDPTUEDPN1Kb4UTP", "WDXTSb55g8LSTs7N"]}, {"action": 11, "resource": "oOLl13j84P0KqirJ", "schedAction": 54, "schedCron": "PkMFtsnFfz8Ew0X8", "schedRange": ["fBuBSKLSQ4GvLtz5", "0D3rpBfBovqLwXBu", "T30EYeRj17xGhaBK"]}], "roleName": "oUfiHjGmCyPsKCJT"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v3 'v1ic9gvagF2cSuzt' --login_with_auth "Bearer foo"
iam-admin-delete-role-v3 'sJ5tj64gV7nmDk29' --login_with_auth "Bearer foo"
iam-admin-update-role-v3 '{"deletable": false, "isWildcard": true, "roleName": "cjSuz9vbNStqPtQm"}' 'QN6eKAGiZFCftT0R' --login_with_auth "Bearer foo"
iam-admin-get-role-admin-status-v3 'WECdjWYrnulxcCKA' --login_with_auth "Bearer foo"
iam-admin-update-admin-role-status-v3 'ru8pOaAVLDB4k3Jw' --login_with_auth "Bearer foo"
iam-admin-remove-role-admin-v3 'kdaxR7GJpYmuYCPG' --login_with_auth "Bearer foo"
iam-admin-get-role-managers-v3 '181q9GA5DydC2D8U' --login_with_auth "Bearer foo"
iam-admin-add-role-managers-v3 '{"managers": [{"displayName": "T6KOc4VPDUR9ayaz", "namespace": "qXRqegIUicYXXzxs", "userId": "BFrUs9BYp6TgCejB"}, {"displayName": "d5o7iTST7R3KbbQG", "namespace": "ERMNpqWb51y5RUzv", "userId": "MfTkPy0fGvTGgfLK"}, {"displayName": "sg0b1Bq78cE5O5pm", "namespace": "PnbiPJ9j4vxmbH3r", "userId": "VaauufxkPHElug48"}]}' 'TgfNu0rqXUOyToLP' --login_with_auth "Bearer foo"
iam-admin-remove-role-managers-v3 '{"managers": [{"displayName": "IREGIKlJt3EP9kKw", "namespace": "kENQ8VOHGwbADMfu", "userId": "Omh0lciRhVZ2DeoO"}, {"displayName": "DXMzLSrzoiBnYi5U", "namespace": "Ws3tYlYeMoCimJyS", "userId": "ocRvUWDOrFZKPNoN"}, {"displayName": "9AWtLK9TFgi9j2XM", "namespace": "h9WpifqjNjLOtNQt", "userId": "s2yxf6MLZJ2jZfZb"}]}' 'pTJezzriCDWXT59S' --login_with_auth "Bearer foo"
iam-admin-get-role-members-v3 'Ru0YqUxKDc84OMIz' --login_with_auth "Bearer foo"
iam-admin-add-role-members-v3 '{"members": [{"displayName": "vTScdbKBsAyJMz4I", "namespace": "LNDvhB4Eoes9a6Xa", "userId": "JeRbzTPwD3jxF7vx"}, {"displayName": "RUY0ilrNoFT98Sgt", "namespace": "Jd4Z5f8nfaKqdZFL", "userId": "bZEHxsDxeR6d7r1S"}, {"displayName": "Qw80JfMpPrSqYypR", "namespace": "Unq5o4ETeCUYG9cc", "userId": "Tt7Wxw8OQ13t3uTw"}]}' '6zQuoZcXQpoTOxe8' --login_with_auth "Bearer foo"
iam-admin-remove-role-members-v3 '{"members": [{"displayName": "y1jorNsg9ZKYCKoI", "namespace": "SyXtHzoWGdYohxMp", "userId": "3uOQIybqWfG9BJ6F"}, {"displayName": "VKlbYHtbPtaxvagS", "namespace": "lpGgVTF6VeDAPOGB", "userId": "wweyFfXEOEAEtbag"}, {"displayName": "82KgBgyCd5vjkfz3", "namespace": "eR4DtNp129hzBw3x", "userId": "LUcCEt0DzmkJq1sm"}]}' 'l5bYt76BNsi4giR9' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v3 '{"permissions": [{"action": 5, "resource": "34WpKKdzxoufCNlF", "schedAction": 30, "schedCron": "rpnMUBsnUfuQIcSb", "schedRange": ["Ut5UGkInFGpuUsdt", "q4dOwNESzCEW9dUV", "hZjLftC3sCS8CpLC"]}, {"action": 34, "resource": "zpUkNOBWydXV0Fi0", "schedAction": 57, "schedCron": "aFr8CDapjwNOl4k8", "schedRange": ["rVNrm8drv8QD2JOe", "2Ntz7EFvowPgIGue", "txFMqXCQMAqQ2ZRG"]}, {"action": 52, "resource": "z6rjDNo4rhjxUdMM", "schedAction": 17, "schedCron": "3WekqfWv04vvn9bk", "schedRange": ["5qr8qs2mqtnGAqXU", "jNypF6MMqWpdEJsP", "oaIbYz8cK5jlpJdr"]}]}' 'e5ur6yvWJDdvM7T7' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v3 '{"permissions": [{"action": 86, "resource": "Ehy0Y5aSJVDginxA", "schedAction": 80, "schedCron": "oiCXNjrdQL2jdx1e", "schedRange": ["Iba1sB0HsJ06Dzfb", "zRYt4OVUyumBeIqd", "QGZC5kM03HHijsQR"]}, {"action": 20, "resource": "hR4LEZvz3EjFR799", "schedAction": 96, "schedCron": "BQ1U6aFD3O2kXQSc", "schedRange": ["58zgZVl4gIF7v3qb", "Zu9M3OxqVAT4H1lR", "Z9Z1JBrHRzEOtIxz"]}, {"action": 85, "resource": "wRjD7jmQJeFPghqa", "schedAction": 26, "schedCron": "9rsKgzCsMulpB8HZ", "schedRange": ["UtVVaJCiLgKOwrSf", "WhT5B4WedopzwSlu", "BtRFPKThyGnbjmPD"]}]}' 'KFS6u9FHuv1M3qfc' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v3 '["h4SqIV6LQPHlaeYl", "4csFq65cU66yJaj4", "ovoKWE4EW0sw8v5p"]' 'eiuxoBJATauyD3XC' --login_with_auth "Bearer foo"
iam-admin-delete-role-permission-v3 '20' 'VMiyEvMf9yilUEuj' 'k6oqYo1HQYTFzwdO' --login_with_auth "Bearer foo"
iam-admin-get-my-user-v3 --login_with_auth "Bearer foo"
iam-user-authentication-v3 'MdupwD4O3uNbcIDc' 'IyvZbOy1T4hfwkuV' 'ykH4RpfmjIXFGZ5P' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-authentication-with-platform-link-v3 'KdbabJIkNnt9P1Tk' 'm08luh4dpPRMDbUX' 'BWTbpAogG2wlZkLh' 'uU5FI8NijFI0GKwJ' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v3 '3vfXlsAMy2Zp2UAG' --login_with_auth "Bearer foo"
iam-request-one-time-linking-code-v3 'xHnmSxvkG9UR5q9n' --login_with_auth "Bearer foo"
iam-validate-one-time-linking-code-v3 'eoW6JBcGp9Rx2Rfc' --login_with_auth "Bearer foo"
iam-request-token-by-one-time-link-code-response-v3 'RhXpmeeHdvphas9S' '7ivHEoLbUMM47f1U' --login_with_auth "Bearer foo"
iam-get-country-location-v3 --login_with_auth "Bearer foo"
iam-logout --login_with_auth "Bearer foo"
iam-request-token-exchange-code-v3 'reUpxEkXIbE1ETzR' --login_with_auth "Bearer foo"
iam-admin-retrieve-user-third-party-platform-token-v3 'JZKMavu4Ul2IaieE' 'bPSE7TGkeHsYsW9o' --login_with_auth "Bearer foo"
iam-revoke-user-v3 'GBN1pYMBwbPZTlMl' --login_with_auth "Bearer foo"
iam-authorize-v3 'UvFEiGprcNSQ9kEe' 'code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-introspection-v3 'BZ6FVrBzyhyhoS6a' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-jwksv3 --login_with_auth "Bearer foo"
iam-send-mfa-authentication-code '9oe0JaXFpff28uYb' 'e4Cf2HEHvVevhISj' 'btBJUK5fE3OufPSX' --login_with_auth "Bearer foo"
iam-change2fa-method '3PdOU2V9yw94oa8U' 'J34TIedV3HyoX4Vn' --login_with_auth "Bearer foo"
iam-verify2fa-code 'O2LpBU08wfnlHBXF' 'IqFUmgUSMM5au8GJ' 'T0mkVPI6zUtf3QaJ' 'true' --login_with_auth "Bearer foo"
iam-retrieve-user-third-party-platform-token-v3 'GrTNcXXTUIggoH89' 'QNmI17UDb19R6H7r' --login_with_auth "Bearer foo"
iam-auth-code-request-v3 '1ta3m7jK5pxe82pg' 'FiAS6piIzmc8rKrK' --login_with_auth "Bearer foo"
iam-platform-token-grant-v3 'EPGSAcong6eNERUf' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-revocation-list-v3 --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-revocation-v3 '8kjci1Ctccv9Gv4t' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-simultaneous-login-v3 'epicgames' 'cbnuCqf0lm6WBkIz' --login_with_auth "Bearer foo"
iam-token-grant-v3 'client_credentials' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-verify-token-v3 'r5kdazlypvt6lSLf' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-platform-authentication-v3 'U7HByGXPMqxj4hBg' 'VY3YAxZLKbcOdyjq' --login_with_auth "Bearer foo"
iam-platform-token-refresh-v3 'f6Q4oiwoJcaRMEb1' '5LBlTVufc5ZyODR2' --login_with_auth "Bearer foo"
iam-public-get-input-validations --login_with_auth "Bearer foo"
iam-public-get-input-validation-by-field 'NVyn4PRqf3eRbZqB' --login_with_auth "Bearer foo"
iam-public-get-country-age-restriction-v3 'AoKGcVCdMiSNV4qB' --login_with_auth "Bearer foo"
iam-public-get-config-value-v3 'rt1kcLmRv6EJtl5x' --login_with_auth "Bearer foo"
iam-public-get-country-list-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-public-v3 --login_with_auth "Bearer foo"
iam-retrieve-active-oidc-clients-public-v3 'Wnsb8oWq94RImNWV' --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["IJnhhwFDV1Vitaom", "vWTzdsW4N70wYS4K", "j7Yi2VvoQNW8Yc48"]}' '1dYdvGxJAMDRA1LF' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv3 '7jdWlekFwO94VBCV' '9qJhWva2FPBujX0g' --login_with_auth "Bearer foo"
iam-public-get-async-status 'eYCpGJM4sqsPNJMi' --login_with_auth "Bearer foo"
iam-public-search-user-v3 --login_with_auth "Bearer foo"
iam-public-create-user-v3 '{"PasswordMD5Sum": "ZXXOFwmGWAvNF0Z0", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "kwxUNYyNwGiKrknH", "policyId": "0Y5mrQgLC6D2qsFi", "policyVersionId": "QHglUQMZi5WjMZfO"}, {"isAccepted": false, "localizedPolicyVersionId": "9ie6vvMbiNURrlm8", "policyId": "8QlKyuoya4JgakZy", "policyVersionId": "UV7t73VnSFbuxd4K"}, {"isAccepted": false, "localizedPolicyVersionId": "z0hFFNbH6j2W4roZ", "policyId": "M2UKAXEEsL5D0oiF", "policyVersionId": "chQnVeq3g2AB2WIR"}], "authType": "UQmauIY5HXCZ0W4X", "code": "mWP0HzSdiylLhVYs", "country": "zm8xY33OQbumu2QH", "dateOfBirth": "LyZNuysyM4OfCzdQ", "displayName": "CXMAWnf87YPNOe9E", "emailAddress": "evf1fhMg1E2k7QLF", "password": "rVgtX7y0fPOieDCo", "reachMinimumAge": true, "uniqueDisplayName": "FctW7YS0OkL78XeE"}' --login_with_auth "Bearer foo"
iam-check-user-availability 'AtALFI3v8yha4pd5' 'A7MYcpBD6lKNb8Rx' --login_with_auth "Bearer foo"
iam-public-bulk-get-users '{"userIds": ["vN2u5J7baOeLH19f", "qBwNbNe1ffYRtIvQ", "aKyevWYtZjK6J29v"]}' --login_with_auth "Bearer foo"
iam-public-send-registration-code '{"emailAddress": "8MpBSpo3AKRmnJkz", "languageTag": "JHAckUyBksYQfDm0"}' --login_with_auth "Bearer foo"
iam-public-verify-registration-code '{"code": "RNFwiz70tRVLMlHi", "emailAddress": "8i9gOVqajUWrgEsW"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v3 '{"emailAddress": "DtaKzn8dZwnnGeZs", "languageTag": "ZVgbPzPFbrOMZMgW"}' --login_with_auth "Bearer foo"
iam-get-admin-invitation-v3 'kFN7Tpkx6GcfyOg6' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v3 '{"PasswordMD5Sum": "ZUrrp9ubg9mndW2J", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "mQafUs2bxYztOEyV", "policyId": "bKIf1ZbzgUwd8DHo", "policyVersionId": "CQykmXHYmkRlg7gY"}, {"isAccepted": true, "localizedPolicyVersionId": "21HWDAfvXwdxbyp4", "policyId": "HAPbBbNPStVBUpKg", "policyVersionId": "OssFkz0F36piDYXe"}, {"isAccepted": false, "localizedPolicyVersionId": "D6vl5eFdFfgK46Gj", "policyId": "CWaP8huTmnq3FGQn", "policyVersionId": "3Ahu5wxq6oJq4mCh"}], "authType": "mQHQhO9IKBXDFQfX", "code": "FD58sG6uDhFYlrzJ", "country": "BYSeMuJfQecutjS0", "dateOfBirth": "29BiJWOG1m7MKclr", "displayName": "5igjNTVItrH2X78h", "emailAddress": "xJgaVfw5Vnyq8OzT", "password": "E89WDNoMcOmbfJrC", "reachMinimumAge": true, "uniqueDisplayName": "Ij1haAosKglqaCXE"}' '9ytpIO8btO3OwNEG' --login_with_auth "Bearer foo"
iam-update-user-v3 '{"avatarUrl": "SW5TaW4to7QCY2NG", "country": "Gvi9kg3rMIzNmhJT", "dateOfBirth": "NQjKlwjfJ3TJ2xVp", "displayName": "ge70WsLfgbZieRvJ", "languageTag": "I5sT9DH3DfLCv8q4", "uniqueDisplayName": "Thmq09bBgPAYxrBE", "userName": "9jlnTgtgW33wDwD9"}' --login_with_auth "Bearer foo"
iam-public-partial-update-user-v3 '{"avatarUrl": "RKvQX4yFQFdrRoM6", "country": "FoqCYw7AlxO6qdFp", "dateOfBirth": "c71sSck3ggZWJlSl", "displayName": "CQMDji329PfVrvME", "languageTag": "PtpsSNcpK1QkB2Sy", "uniqueDisplayName": "8Ww79LVeVskqeUB7", "userName": "RSayqGFguhh3bvad"}' --login_with_auth "Bearer foo"
iam-public-send-verification-code-v3 '{"context": "RthdbVApebRA09rW", "emailAddress": "8i8krFWJhe03coRF", "languageTag": "ok5d3AyGrZO8GuoX"}' --login_with_auth "Bearer foo"
iam-public-user-verification-v3 '{"code": "NSoVEBG7VbBPUWip", "contactType": "z9C05YabFX4FCK5u", "languageTag": "cTFsAFzaO3yJpA3K", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v3 '{"code": "vRUbUDSiefGEdLuc", "country": "rtO2gCQD057DrDlg", "dateOfBirth": "C2nzS9SiGUjVAw4v", "displayName": "3q6JRHcn7KaoCEkR", "emailAddress": "do6qHYIZWnXqQ1oH", "password": "FJ9Q0vqsL9SomqWs", "uniqueDisplayName": "GA76yxi0QzZWfmP2", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-verify-headless-account-v3 '{"emailAddress": "OA8H9VeHv0L2Acm9", "password": "60EYQEuGJVl8xs1W"}' --login_with_auth "Bearer foo"
iam-public-update-password-v3 '{"languageTag": "Id9WlalqshF9Rh2o", "newPassword": "7GCQGPCxwEdkyuT3", "oldPassword": "MgzReRq0112ISArR"}' --login_with_auth "Bearer foo"
iam-public-create-justice-user 'OIodcmM6v2AEozWW' --login_with_auth "Bearer foo"
iam-public-platform-link-v3 'aYvBLE46bpuJip8J' 'yxJ39vrtuWWrqTZb' --login_with_auth "Bearer foo"
iam-public-platform-unlink-v3 '{"platformNamespace": "SqBSKp8AmgwhYzk3"}' '3J34fiTxK63OHpnU' --login_with_auth "Bearer foo"
iam-public-platform-unlink-all-v3 'CGBVfpctNFUsUQ6Z' --login_with_auth "Bearer foo"
iam-public-force-platform-link-v3 'XQcb2o1J5euLAbBg' 'ejqc0apxqZ209ByS' --login_with_auth "Bearer foo"
iam-public-web-link-platform 'n8aUaGlAyvIslt7N' --login_with_auth "Bearer foo"
iam-public-web-link-platform-establish '1qcxKs4nlf1MfqUZ' 'XkjHvcUOTlxNf09p' --login_with_auth "Bearer foo"
iam-public-process-web-link-platform-v3 'efgFIiJssShBKsQj' 'XvfQgQDt6ce8NDME' --login_with_auth "Bearer foo"
iam-public-get-users-platform-infos-v3 '{"platformId": "rA82FrR1GSogkewI", "userIds": ["zTOqKkcjRh3l2gAJ", "OTCbx7J3gNLIlTk3", "Bpclrk4hIRn0znIK"]}' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"code": "zAEAHQpBOgHEP5l9", "emailAddress": "4s7CbIJ7eHnVWObo", "newPassword": "MkyB7FTexsOZ0b2p"}' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 '3b63KrcwIcXMhGy8' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 '3Xit6boOLGCcg16D' --login_with_auth "Bearer foo"
iam-public-get-user-information-v3 'qwdQPQ9HkSSV8e1M' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 'gTTLS2FgarY903IN' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 'GIyEfRBEj7qms9AG' --login_with_auth "Bearer foo"
iam-public-list-justice-platform-accounts-v3 'QExPhgr9gGfC0Gjv' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "pgJfuBs1Vpqn47GV", "platformUserId": "ghTH2wToOnq9U5ly"}' 'W89Xwt3wmRTrDCjh' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["nKvsHezWTqgYPixt", "Hk6lWq6tEeUmU96F", "LEak0mJqjRYldcTp"], "requestId": "deCD9XPRi4bAQL7V"}' 'E2wL8Y4JFVUdzA8b' --login_with_auth "Bearer foo"
iam-public-get-publisher-user-v3 'vXlDhG7BrorbKIKu' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 'OXJPm5ztrr09CDA8' 'Ij5bGKSuopWQbaCv' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 'dPSq8Z27GpvHCDx5' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-public-get-link-headless-account-to-my-account-conflict-v3 '5JZ5z6gujpFzlPsp' --login_with_auth "Bearer foo"
iam-link-headless-account-to-my-account-v3 '{"chosenNamespaces": ["QD9IRIpDDubntPCF", "xfeoW2NdSWzOXjO1", "NQUqWHBW78XREZCi"], "oneTimeLinkCode": "TNAxq26gZrPqCsSD"}' --login_with_auth "Bearer foo"
iam-public-send-verification-link-v3 '{"languageTag": "spvgM16sZ6rjnkH4"}' --login_with_auth "Bearer foo"
iam-public-verify-user-by-link-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler 'ExObppC6CMYDm5ge' '659UDEOF6gp5Ufmj' --login_with_auth "Bearer foo"
iam-login-sso-client 'tiVbqJnZcrqrPye7' --login_with_auth "Bearer foo"
iam-logout-sso-client 'fCwi7Il2wIFlHm9N' --login_with_auth "Bearer foo"
iam-request-target-token-response-v3 '6owMHMtJy1Oqn59t' --login_with_auth "Bearer foo"
iam-admin-list-invitation-histories-v4 --login_with_auth "Bearer foo"
iam-admin-get-devices-by-user-v4 --login_with_auth "Bearer foo"
iam-admin-get-banned-devices-v4 --login_with_auth "Bearer foo"
iam-admin-get-user-device-bans-v4 'EGm9NYeUT5P0nx8T' --login_with_auth "Bearer foo"
iam-admin-ban-device-v4 '{"comment": "qSZdZ5C8mFI9Tnvz", "deviceId": "EqBNMF9CZvPxT5zb", "deviceType": "reMc9fBoU3RHNDFj", "enabled": true, "endDate": "KFrepy56eW1kmb15", "ext": {"QeIQF51c4MqJzDSv": {}, "ELgBe6dboSdhkBzA": {}, "zPkt1efGJeJaxyHY": {}}, "reason": "utgXucx85vHA009F"}' --login_with_auth "Bearer foo"
iam-admin-get-device-ban-v4 'Ab21jxeWXk80y9ux' --login_with_auth "Bearer foo"
iam-admin-update-device-ban-v4 '{"enabled": false}' 'LCgdFxRGj00RT6Lv' --login_with_auth "Bearer foo"
iam-admin-generate-report-v4 'cnGMJbJIYLssMvy9' --login_with_auth "Bearer foo"
iam-admin-get-device-types-v4 --login_with_auth "Bearer foo"
iam-admin-get-device-bans-v4 'gkfTMRrXVRcAVRDX' --login_with_auth "Bearer foo"
iam-admin-decrypt-device-v4 '6gmDfNfPGYYSTunM' --login_with_auth "Bearer foo"
iam-admin-unban-device-v4 'gt3C8hEguCqlMHiQ' --login_with_auth "Bearer foo"
iam-admin-get-users-by-device-v4 'N3HWJw9zIWsiP2JQ' --login_with_auth "Bearer foo"
iam-admin-get-namespace-invitation-history-v4 --login_with_auth "Bearer foo"
iam-admin-get-namespace-user-invitation-history-v4 --login_with_auth "Bearer foo"
iam-admin-create-test-users-v4 '{"count": 24}' --login_with_auth "Bearer foo"
iam-admin-create-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "eDrwEuTyM2qohglz", "policyId": "O8AEl6A9sh2x2ur2", "policyVersionId": "ccp7R7OqPqIjS4i0"}, {"isAccepted": true, "localizedPolicyVersionId": "9ytb3c8pVZ8GlU89", "policyId": "62e6gtn5pUARJM1T", "policyVersionId": "8QwMNOAzXmyHEV4g"}, {"isAccepted": false, "localizedPolicyVersionId": "P6a280S5RNB5dVCs", "policyId": "B7xL4axSPgPCiwLx", "policyVersionId": "CFLDixZwVtt3RVTl"}], "authType": "EMAILPASSWD", "code": "UnBBR84iAO7sBQt6", "country": "YJ2tWwF7RnP1oK3c", "dateOfBirth": "4RVfjB0zi3XrYZUi", "displayName": "N24ol1qqbalgizL9", "emailAddress": "7ycJV5YqE2myQzl7", "password": "X9fHr6WvBxmBvNj3", "passwordMD5Sum": "ktaDf9B22HGgxakP", "reachMinimumAge": true, "uniqueDisplayName": "Cu1HFaj6Vxs3GuA4", "username": "S1dS7H7yIS7b5TSD"}' --login_with_auth "Bearer foo"
iam-admin-bulk-update-user-account-type-v4 '{"testAccount": false, "userIds": ["oMg7Dc5APzfzXDEL", "JFaIaEMW5bhJyL72", "WDyhBsCCbnfihnXK"]}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["xGxaupnTTq9ihZkv", "FKfSHQh8I9xk3sFl", "0cbuCRM69XKkLwio"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "RaKnWhlh80BhYe2f", "country": "JDS6T75Q4ulonMFj", "dateOfBirth": "mYqE1wJhfogWg2Ap", "displayName": "m0sUy18aWn65Co0v", "languageTag": "dCk8so6JSaZAIadK", "skipLoginQueue": true, "uniqueDisplayName": "ehx7xasqMY9aulsL", "userName": "6NOV5agpS6A5mkuf"}' 'BpWVxIK9D2bTcgaK' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "occaSwWcZmzCWGI1", "emailAddress": "cIQcPWAShIhieSKU"}' 'f3zKbyQk2vQTYX1x' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 'sth28NZZgsXycuQN' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 'GIDeHlf6IcX1K9Jr' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["K6Or2xx7rLwrPoWi", "ywnxuDLLuIaSxolo", "IH1gBCWVFrvls0Zw"], "roleId": "osKhDlLfTKxpVOXv"}' 'GSrdkqddI3ezqu6F' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["B0sL2xt6fX9j7rhZ", "CAlDlVKBsLZiBRXs", "zE7CL1cQCSoqHvH7"], "roleId": "g63cOx6yrIw37pKO"}' 'LrF5i3gr3Cc4M2O7' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["NrTQO7KLdZDGwqx7", "T3l1ut2oyolliYsT", "JUmpscwLcUml3Kuo"], "roleId": "MKh7tprnacA34xmI"}' 'OjFLgKR4LjEWhOSc' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "pdk7wlDngNiPPjpS"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 'AlZwFGpea5ObBB49' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 'Km4ClIQmkIdLCvNh' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "aqZ2yfrC1V7ZpJZP"}' 'HCMqvcYmeDLYEzs2' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 92, "resource": "PSrXUS6jYI9lsQFD", "schedAction": 81, "schedCron": "3Df5qUZOFzpFd6b5", "schedRange": ["Jc5TETHcup8GG0VC", "MTFJ6svTyo9RHget", "5hzB52BDFopxUwkM"]}, {"action": 41, "resource": "LJdKMexeJc7NvgTS", "schedAction": 12, "schedCron": "ybwTQFYEJjIYwqfS", "schedRange": ["Ry8GgVk77fd1GS5Y", "kyhAiAItnWUmD225", "fp1egsx3ErheNwqd"]}, {"action": 62, "resource": "priclNNqLyrlzrJ4", "schedAction": 87, "schedCron": "agQuz86nc6jLF9DI", "schedRange": ["W2ncJJKpqmgvUTr8", "XAtpOqUQxzqJZiWi", "3KQffT5Tn61A1xW6"]}]}' 'okIqmd87ir9op4Yf' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 67, "resource": "sVBRB0rY0xfWddAC", "schedAction": 50, "schedCron": "zBJX0rkOHUkY5aSl", "schedRange": ["qhYoSXbn6l5xAzc1", "nc3eFm950dtVAo7w", "4e3v5mh6Rum5pbgE"]}, {"action": 39, "resource": "0HJ98tE4UyoQg0b0", "schedAction": 37, "schedCron": "7t9ztprSfW9OutAD", "schedRange": ["rNGBWSJ1zQKxVmRT", "awjiZPMoZZcyGEHx", "AKDQher3usApPdJP"]}, {"action": 26, "resource": "Bq23kyH9jQbHWkcV", "schedAction": 21, "schedCron": "RwH3EdKmYtbqQHNf", "schedRange": ["IZwrMxf3EnzZVnkL", "T0Lb85nmpdN26BY5", "YI0jeO2zMDSy4kyq"]}]}' 'yKgrtEPdXXlt8geC' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["diXu3iNvn7vLZ7h6", "alhJNGZF07lsPP5O", "fHbXzWnVO2U4uyzZ"]' 'o1rj0ZrLQjk4VoYf' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'Iksth24cZBpdDFfv' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["zeU5iqhx6zv7EURT", "NIoG1DBdoKH6sREm", "mfwUZLZZS7snx0Q2"], "namespace": "Gd8m7Y3wiNloJfey", "userId": "3HXL6SjljNPTXA3q"}' 'bg55SyienCODZ0mn' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "OpPTVxEgBFzG8tlk", "userId": "xWKCU1XN4gl7yHvE"}' 'qpJSrDXVwCkhOQ16' --login_with_auth "Bearer foo"
iam-admin-invite-user-new-v4 '{"assignedNamespaces": ["1TFjROYJm75VIuCO", "Ckt2W1DfI8QtgODk", "9K6DcMnyCPn1FylW"], "emailAddresses": ["daNV1VaZTkbbuWii", "A4UTDgS2SVEo5M80", "LLbku9GYH4ijqOVM"], "isAdmin": true, "isNewStudio": true, "namespace": "tCqkZfsSxAbDJ7sH", "roleId": "CLup8pmEosOXglQw"}' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "wdeLVpmXqRwVjc3W", "country": "2ANmE3VVsQ1fm9EU", "dateOfBirth": "diaRjuLsKZoqnpKw", "displayName": "hpZVdw5UMa8ymxtE", "languageTag": "FLwELCY2vIddlxnA", "skipLoginQueue": true, "uniqueDisplayName": "KUC2ecnpUDqvLQix", "userName": "PKVSmWa8TGko16XT"}' --login_with_auth "Bearer foo"
iam-admin-disable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-admin-enable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-admin-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-get-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-generate-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-enable-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-send-my-mfa-email-code-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-email-v4 --login_with_auth "Bearer foo"
iam-admin-enable-my-email-v4 'qHc0cM7ixq8Tjnxp' --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 '5Cl8ggaEmCcuK2hH' --login_with_auth "Bearer foo"
iam-authentication-with-platform-link-v4 'viBEWpbusO6EyVqs' 'tpgZpbz77y88rUFu' 'm2ZcA8iKcF0bkfjc' 'TEFXcTwEtnHxP5pV' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v4 'tN4jNVIdruEA39uC' --login_with_auth "Bearer foo"
iam-verify2fa-code-v4 'JzsE8WObt6t0w8LO' 'BxE15JYj4IqWK09l' '4wkrzahXR1sDEDVK' 'true' --login_with_auth "Bearer foo"
iam-platform-token-grant-v4 'sN7bRwcr16lW5Ywg' --login_with_auth "Bearer foo"
iam-simultaneous-login-v4 'epicgames' 'pjlMMtPWg8217m7q' --login_with_auth "Bearer foo"
iam-token-grant-v4 'urn:ietf:params:oauth:grant-type:login_queue_ticket' --login_with_auth "Bearer foo"
iam-request-target-token-response-v4 'Da9PDwhu31d8eOdt' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "beuQqm9wM7mgTtUd", "policyId": "PVcQijMBhs0kDP6d", "policyVersionId": "3nuUZ41mSeS9SnGq"}, {"isAccepted": false, "localizedPolicyVersionId": "LdbYEknHPKrZ7TiN", "policyId": "BE0HRsE0GHDOFjrf", "policyVersionId": "qJcyxT2a7fCFAUzL"}, {"isAccepted": true, "localizedPolicyVersionId": "Hip0eONFDgUPShG8", "policyId": "wwFKY9AMpcwJd4Sr", "policyVersionId": "igIxAhbFMZfxaznl"}], "authType": "EMAILPASSWD", "country": "ZgQEvFzox9wHocX3", "dateOfBirth": "DRWobEoGr8W97KBe", "displayName": "dcr6PM51z7i0wQ9e", "emailAddress": "gK2t46EG8I2lTviK", "password": "bOgVuN3nhkn6QIes", "passwordMD5Sum": "NoYqvVsakylHikKk", "uniqueDisplayName": "pOjqwgKvfXXs8pDq", "username": "m31AZSRkuw6q8Fgq", "verified": true}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "sFK7eYlSU3vYcHZZ", "policyId": "jFegVnZOn0tk4IAT", "policyVersionId": "SIefcqNEn4IZ0Dv6"}, {"isAccepted": false, "localizedPolicyVersionId": "sESaBOTHnbX9tC9P", "policyId": "QlFAGbMtEybfcAl0", "policyVersionId": "mnsAkRT2k0AzdgIu"}, {"isAccepted": false, "localizedPolicyVersionId": "MuqZTHwo1IAJQpb6", "policyId": "r8ZeaSHwQuiH3Ozu", "policyVersionId": "4G6bXxp0gYZyF9fJ"}], "authType": "EMAILPASSWD", "code": "J2boQqCCyJfThvCJ", "country": "ieqRSGN8Mm74HlSZ", "dateOfBirth": "zp4aEW4GkHG5OIVu", "displayName": "Gv47XJpkMiopQrVL", "emailAddress": "3ZZTVxqa9XM2gY14", "password": "iWk12Jffk8dwKNPU", "passwordMD5Sum": "OHNZxML3yoBM9qxd", "reachMinimumAge": true, "uniqueDisplayName": "PWz7sVnMxge2inL8", "username": "fBFP1ABaIKrEt8d3"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "M6o3eGSP4Htmr90T", "policyId": "qGf0OyqJ9ibJMmRg", "policyVersionId": "oxNwp1lGkYoq8HP1"}, {"isAccepted": true, "localizedPolicyVersionId": "M0tefVQPWX1NPO5W", "policyId": "n7rNG8rGp7Fadvo5", "policyVersionId": "EzpX0IttsRezyY9G"}, {"isAccepted": true, "localizedPolicyVersionId": "CrO4ZuoGZSxTzm8o", "policyId": "MSPIHPtqzIWIzg8p", "policyVersionId": "bjnt1iBV8DpbjGts"}], "authType": "EMAILPASSWD", "code": "UZDTfhAyZKhqilty", "country": "9NVlgxUmnfdOAmu1", "dateOfBirth": "dX1NqD20RUvvYeJZ", "displayName": "w6QZFN7wFCnqpvNe", "emailAddress": "sGiVnt9p2to7Yja1", "password": "soDE1K0SvGrMYwPm", "passwordMD5Sum": "PXC2LfL2m5rP2A20", "reachMinimumAge": true, "uniqueDisplayName": "j1l6bf2F9EXOBj7v", "username": "8LHYivmD0ekycMKl"}' 'wJTNL2UCWUtaAD7Z' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "Zx1iefATWcDSqGYR", "country": "Mdz07xEJ40epssgJ", "dateOfBirth": "JC3CX0hpB1ZGMMo5", "displayName": "DSozCuFsrBMtoOeL", "languageTag": "fMCYxSeeJOlxa395", "uniqueDisplayName": "rghZwGhdZJkkGhYv", "userName": "XYMIyaEMEqOpwetb"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "82b96rsH73hRfDgl", "emailAddress": "29GWKpItMt4GszRu"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "fkDFLYyNBPlMrkse", "country": "9SGcMuV5phhU315L", "dateOfBirth": "UC6HSMQ32UznXNd6", "displayName": "ve29lqqtcLJW9eTJ", "emailAddress": "vKNDFrx6LabyDnqX", "password": "jXKPIcxh0x7T6RQG", "reachMinimumAge": false, "uniqueDisplayName": "tovSMFw8X4zxbdfX", "username": "gunt1oMNZ68eovHS", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"emailAddress": "3xV3URIRVDYBd6hM", "password": "B0l7sg7IfMH5Tu1k", "username": "y1ZYvyeHmfoFkUDP"}' --login_with_auth "Bearer foo"
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
iam-public-enable-my-email-v4 '864shbnQ3bVvuvps' --login_with_auth "Bearer foo"
iam-public-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-public-make-factor-my-default-v4 'DJXPCWkX4Kpi8CJ8' --login_with_auth "Bearer foo"
iam-public-get-user-public-info-by-user-id-v4 '8aMPGFFAQZbfbmVT' --login_with_auth "Bearer foo"
iam-public-invite-user-v4 '{"additionalData": "EbiRq5Juikmpat75", "emailAddress": "rVbN9ZBtzJ33tCwv", "namespace": "8H1f451FVZ630HNB", "namespaceDisplayName": "YZSrz7pMjESLLMPK"}' --login_with_auth "Bearer foo"
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
echo "1..394"

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
    '{"modules": [{"docLink": "DXLki6Oz5Bygt8Q0", "groups": [{"group": "RjSf1srB7hGwGbUm", "groupId": "QmJHNffZENs9X0hF", "permissions": [{"allowedActions": [78, 7, 4], "resource": "zryvhc1YjHmmulSB"}, {"allowedActions": [71, 62, 69], "resource": "lc2CdRvBb0aGnMt6"}, {"allowedActions": [31, 95, 3], "resource": "IIuPLFAtcWhjAP57"}]}, {"group": "QbWvSSp71zEPPfmA", "groupId": "QiqRRC2caquMRtQO", "permissions": [{"allowedActions": [71, 94, 77], "resource": "FA9gE6SrYKq6lcVO"}, {"allowedActions": [15, 64, 85], "resource": "R3GUxdMuvmL0UBfw"}, {"allowedActions": [51, 53, 1], "resource": "WEMmQSPDTRqjlvwn"}]}, {"group": "nCA5tfK5ushaKTPV", "groupId": "jyOUpR3uUdgNlyU4", "permissions": [{"allowedActions": [71, 74, 73], "resource": "QwnXrmi6ya8u4sQP"}, {"allowedActions": [44, 47, 0], "resource": "NX4bhqCjlwrmsSRV"}, {"allowedActions": [2, 18, 14], "resource": "ic1FIMyF7CcNu2DY"}]}], "module": "n6E9Gk51kOTJZluT", "moduleId": "ekDMCGUJvERxNg8d"}, {"docLink": "jSb4Vt2vKQ5vlCdI", "groups": [{"group": "519Pf2iogwxM5DZM", "groupId": "0dgozmco41750xdY", "permissions": [{"allowedActions": [88, 8, 13], "resource": "ePkqg6Zt1Lr5BlO8"}, {"allowedActions": [76, 66, 77], "resource": "umTKOlDOy5vhSkxE"}, {"allowedActions": [89, 29, 12], "resource": "2AQ1jvXYBar5RMmm"}]}, {"group": "GdWl0wpj5tVfKU3D", "groupId": "8WVPh0Z7YiGE2cyz", "permissions": [{"allowedActions": [92, 53, 79], "resource": "vtRQvqJacXR2Rf4n"}, {"allowedActions": [30, 10, 31], "resource": "DFaEUkPUBnB0ZEJH"}, {"allowedActions": [77, 8, 53], "resource": "bM71Tg922xiBgHSk"}]}, {"group": "a0Pz7I1WkIa0oZ1n", "groupId": "XpW1l70pcZgIn4lP", "permissions": [{"allowedActions": [12, 16, 17], "resource": "HyMEHBzArbyW10Nk"}, {"allowedActions": [72, 68, 64], "resource": "hxNmCe4txY0MsPc9"}, {"allowedActions": [63, 1, 80], "resource": "ereFCPJU2wEzUYUT"}]}], "module": "mZ8JSMeNmRocp400", "moduleId": "RZe8Bzx9aGEI22BT"}, {"docLink": "CZs97TJI8GPrM24F", "groups": [{"group": "3celFgM62HQtgzQh", "groupId": "O3nR8j8DlP6OGbn8", "permissions": [{"allowedActions": [44, 25, 48], "resource": "fMYGLt1AjKhh3JMX"}, {"allowedActions": [79, 49, 100], "resource": "Srz1EH6X2SM3xzsN"}, {"allowedActions": [35, 7, 73], "resource": "lKNh6GTzKjsCqxx2"}]}, {"group": "4QM35bSkFrvGciNH", "groupId": "b7OY5YIpOLJW52uz", "permissions": [{"allowedActions": [5, 79, 32], "resource": "gTy1HA58Jt5NaROj"}, {"allowedActions": [91, 42, 75], "resource": "R47OzUGHeBKtpvyR"}, {"allowedActions": [81, 90, 13], "resource": "SiOyReviDaxlPdhw"}]}, {"group": "mcH03yoMxzRR6xd9", "groupId": "rTh3ureaIbxM3Wev", "permissions": [{"allowedActions": [6, 31, 72], "resource": "ZQjWAN0tny16ZHZt"}, {"allowedActions": [42, 84, 91], "resource": "9qOHaLwYnXxrz7sL"}, {"allowedActions": [26, 54, 85], "resource": "zkIlndN5xeayr3vU"}]}], "module": "KMuIiz2MiAAKcvAX", "moduleId": "nxnH0QIhoJRY807V"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
$PYTHON -m $MODULE 'iam-admin-delete-config-permissions-by-group' \
    '{"groupId": "mBT4wZXQZZrSsuYi", "moduleId": "IPei0pXglJYnKkoC"}' \
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
    '[{"field": "AZuolAWnxkImVbDP", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["I7VmnGIRMvXe6Bip", "hIFe2bzr6qQw6fSE", "SkM19OPMBb12gpmS"], "preferRegex": false, "regex": "NMu9QVrMeD4bD8gI"}, "blockedWord": ["SE34yIAZQeigiA3w", "BrmBYIlZeheP72AB", "8EO3YrlyrWowUpUD"], "description": [{"language": "VLlTtuJJsHZVsG6i", "message": ["zJZruOJvSRFLDSdj", "8elbtHvDU91DmHzw", "iqVPCJ5j18Ou3aY8"]}, {"language": "nceFU5GKmcEKp8AQ", "message": ["wqgJs6O0Qj0ccMkd", "z6zPz3BVHAqp4O9X", "Sjap24esyjh6Wc3m"]}, {"language": "igf2n6iQyr5cb5YL", "message": ["6fwBiaVPmmn0T5uz", "lmi2NY26xrkPPdg3", "pXjmtpNfCrIj9ntY"]}], "isCustomRegex": false, "letterCase": "TsdD4d3kSbTkHPMU", "maxLength": 44, "maxRepeatingAlphaNum": 49, "maxRepeatingSpecialCharacter": 83, "minCharType": 35, "minLength": 54, "regex": "9Pa315FKDjG2ApSV", "specialCharacterLocation": "94Jy6yCSXBqJqjAb", "specialCharacters": ["VwSaoj1ugjr8mPkr", "3tZ506ERSVy5M3rr", "kxu0U9h9gCNVZxHG"]}}, {"field": "xhZqNXJ6JXSh0Z3S", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["rJKmx1BT6iLFQejN", "ZJNF2hm0TqBQprHn", "3whPKU5abnqw8fFa"], "preferRegex": false, "regex": "pVbhr1BHh1arZAyu"}, "blockedWord": ["LcZoEkPpqKhP2jWn", "RTglw0gdWoE4esui", "Drquccz4J6fFQezJ"], "description": [{"language": "5E3iYHIknvPcJkjR", "message": ["evVYfiExpAgoK9YD", "q1x3dkbJFDEBEOOv", "J5BKeipIldsgB4hO"]}, {"language": "xb88WgKSLIpneDQC", "message": ["fwucHRL3o2NstrL6", "TsJeRcE7GuwKn63K", "IDTkUCqbbHGJGOTv"]}, {"language": "KKRTHDntaFiufH2Y", "message": ["R6QU7fj6w17arNs1", "2hOoLVM7UFnuJDze", "EkDxaVogxHrOon2O"]}], "isCustomRegex": false, "letterCase": "4Zw5QwVKWNy2tnF2", "maxLength": 80, "maxRepeatingAlphaNum": 1, "maxRepeatingSpecialCharacter": 18, "minCharType": 21, "minLength": 10, "regex": "R8rcwojLRjhcaJ56", "specialCharacterLocation": "nGlYZ2tod2BGBXjN", "specialCharacters": ["yRCtPOr1FU3QZy3g", "dDms3kb1htW0UGJp", "wQZlXuzu3m9u67Jj"]}}, {"field": "CDwg186hGWKfO9Mn", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["9HmcxzjDhTrcBKtU", "956hOg8oukDVdweG", "0sFHxTHa2k60SzCq"], "preferRegex": false, "regex": "sqdXfhZTTaCeqGv7"}, "blockedWord": ["meuQhJuq1C6JHkWM", "SUbqByWN2BCnRz9w", "2nur0B9jKaunAcyl"], "description": [{"language": "sau7wRQmL4i3eRyI", "message": ["ECEDa1I4lwXqwPfq", "3VzHQjtolx64w1gy", "vjacKtGqxMnoAXRl"]}, {"language": "cq0mYWKQYlqMmu2p", "message": ["vF6rP03bQaq1cT88", "H6RCW8gJmGzDlqxt", "LsR2AGOiPhNt2IdH"]}, {"language": "8aYYUT6mma833TDz", "message": ["k66ix88sAUrXr7MX", "xCvyy7caxz4MQrOD", "LNlxiEjQBCZx9DJ4"]}], "isCustomRegex": true, "letterCase": "SJLlrwXmIGamRCAR", "maxLength": 42, "maxRepeatingAlphaNum": 91, "maxRepeatingSpecialCharacter": 65, "minCharType": 80, "minLength": 77, "regex": "Df3zazm6p5Y1tkG9", "specialCharacterLocation": "WwU4Ty6Ch5QYyFju", "specialCharacters": ["BquE7xssm4hxczsk", "bSUbOZ9WNl3apJmN", "Abl1g5ZmTTGYRbP4"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    'QVey9pEz1TV5cUtP' \
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
    '{"ageRestriction": 56, "enable": true}' \
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
    '{"ageRestriction": 28}' \
    'w01i5Mf7WvbNSeeD' \
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
    '{"ban": "NfUESLlwHv3JgteO", "comment": "LyKp8a1VqxXnRhDd", "endDate": "9TGkO6aIYqftw1Sr", "reason": "M2nhSEanfUYrMU6A", "skipNotif": true, "userIds": ["3UKGpvC1cr5T1PSX", "hduTWchzXDv3TAtB", "jP4HSuiYCbG0UyYU"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "JmNL8p6AbdtU0CDr", "userId": "lQpKB8qoel2QK3aS"}, {"banId": "OYdmMDikc3Fjm9Ho", "userId": "QDemtiQvURYZCeF3"}, {"banId": "0RT9rBgM8o7lxXq7", "userId": "TkdM7FVDCBcvVegr"}]}' \
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

#- 125 AdminBulkUpdateClientsV3
$PYTHON -m $MODULE 'iam-admin-bulk-update-clients-v3' \
    '{"clientIds": ["ZddP8lLQo6tHj4z4", "cAM4LMJfWNZIxAgB", "peubprKX68jTyRd3"], "clientUpdateRequest": {"audiences": ["LrR1x6U1v6zSLjm9", "zmzUW0vPj90jmLTt", "5YQGawcomPoiYoQ1"], "baseUri": "f1AYq306Pysv4VPa", "clientName": "ZWolXypwucUqqqff", "clientPermissions": [{"action": 55, "resource": "iWi4yP3uqNcig6Yc", "schedAction": 60, "schedCron": "QAbhS54ZuQHKersD", "schedRange": ["mJLUHAKtfXCKOna8", "DdjtZhh6ofsUoRh6", "r0e0J6vyqPw7YlmV"]}, {"action": 23, "resource": "kES0Hi88UYgSV40O", "schedAction": 44, "schedCron": "V29QsQk100eu5Ucx", "schedRange": ["uXXpt0YSPX04uEId", "AwgDobopbdJeVCiK", "s2vLyH9kcSBdk7Mw"]}, {"action": 88, "resource": "bvzn8TYoMDAaUXSu", "schedAction": 57, "schedCron": "oAzWQDve0Z2G2N09", "schedRange": ["VIbbsz24fQKDZX6p", "lErw0Gb0ceCbphW4", "YMhJ0S50bez9ZLHW"]}], "clientPlatform": "882riiPfRQ3rJ0f5", "deletable": false, "description": "BvkehRn83B0nrW1q", "modulePermissions": [{"moduleId": "x3NJTugVWXz8dv7B", "selectedGroups": [{"groupId": "iEUqnzxs2deMF8UA", "selectedActions": [73, 71, 70]}, {"groupId": "w9K9Yb68a8ygYx2T", "selectedActions": [33, 64, 21]}, {"groupId": "3zHtZSd3QzXhkrN4", "selectedActions": [31, 7, 99]}]}, {"moduleId": "rWnLrXqImgDf3GaJ", "selectedGroups": [{"groupId": "sdCZND0wgYOilX1e", "selectedActions": [69, 59, 75]}, {"groupId": "5iasunESjcgr2drX", "selectedActions": [66, 57, 96]}, {"groupId": "NkKCySLA8cKCs0dF", "selectedActions": [93, 90, 17]}]}, {"moduleId": "Sa2OULZ0iOZJiOAh", "selectedGroups": [{"groupId": "1SpLhMF2Pav11FuU", "selectedActions": [17, 42, 1]}, {"groupId": "CRz8KgqgwijYxpGh", "selectedActions": [37, 59, 64]}, {"groupId": "4txul6VKYlNYYlHP", "selectedActions": [45, 59, 74]}]}], "namespace": "PMjr5M3vw1GqUjjF", "oauthAccessTokenExpiration": 31, "oauthAccessTokenExpirationTimeUnit": "JYwclb4gd4QgQut2", "oauthRefreshTokenExpiration": 15, "oauthRefreshTokenExpirationTimeUnit": "ypS42NmYQ8HlHbHn", "redirectUri": "fs4tLVOYQCWMktmi", "scopes": ["Kd9vLPP0w52JRAZx", "MWdoleYNHXeOpaRD", "wYLge851PbK2MFKv"], "skipLoginQueue": true, "twoFactorEnabled": true}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
$PYTHON -m $MODULE 'iam-admin-create-client-v3' \
    '{"audiences": ["5TWjAh4gy41LLzQ2", "IjY5PeNr4JmYxH2q", "s28hePJjMp0TKKUB"], "baseUri": "fPNI9f2oLWDPSZex", "clientId": "fKVxqdxmh5QWxuQu", "clientName": "I7gdDTDb3WdnOpzT", "clientPermissions": [{"action": 35, "resource": "2KOusNEHcI95GGdJ", "schedAction": 44, "schedCron": "MLwJZquMQSPp5XD4", "schedRange": ["S1ilfgff7Et4uY8n", "lBwGNHgfgwZwVMvs", "hGmsg6ZJYnkHDnHT"]}, {"action": 23, "resource": "jgHFQk0VzWRNFNiU", "schedAction": 27, "schedCron": "P027okM5E8tAajVS", "schedRange": ["vLRj306RDuaSixXE", "dloYZBkatNLc42eq", "0O6VsXtOlQwj5xPv"]}, {"action": 26, "resource": "75QboMHCtzEF9FSe", "schedAction": 13, "schedCron": "4dFpiv8o9Gw4QtKg", "schedRange": ["yIeySoUxoMrj2J4J", "GQZAtyjTxnlmSyjE", "aFH2DRN6HIEqIFEc"]}], "clientPlatform": "S0ynIMOYWpUYUQMo", "deletable": false, "description": "Tt6M2XizikCh6q0y", "modulePermissions": [{"moduleId": "q2WAHtL7IWE3MFqv", "selectedGroups": [{"groupId": "fDG5jvMOaXrDlEX4", "selectedActions": [96, 45, 3]}, {"groupId": "syrGNhBmgT2q0kIb", "selectedActions": [35, 73, 82]}, {"groupId": "2S5Pf1Lvg8kYEVyl", "selectedActions": [71, 77, 81]}]}, {"moduleId": "nnEvo25aEtdjls5o", "selectedGroups": [{"groupId": "adseJg7y4Q9CU3fj", "selectedActions": [91, 43, 89]}, {"groupId": "qF7TJ9uB0zypjJiu", "selectedActions": [56, 71, 77]}, {"groupId": "imNuwB3hBVhuSMHh", "selectedActions": [10, 35, 32]}]}, {"moduleId": "R2MkxQTAYGfE6hXZ", "selectedGroups": [{"groupId": "7XLoWCGf0dZEeXBd", "selectedActions": [26, 41, 67]}, {"groupId": "uedbBOd19DqZJRYV", "selectedActions": [53, 30, 30]}, {"groupId": "qNLmPAUIMwa2wYq6", "selectedActions": [61, 55, 38]}]}], "namespace": "PXBCfkE1Fb0y94eP", "oauthAccessTokenExpiration": 12, "oauthAccessTokenExpirationTimeUnit": "yh0zsKhR60HZwUwk", "oauthClientType": "48XK7MXHbEwAvvpE", "oauthRefreshTokenExpiration": 8, "oauthRefreshTokenExpirationTimeUnit": "Hhvxc4xAPZ86WNnQ", "parentNamespace": "OhusPn4466u8agb5", "redirectUri": "HPsBU0Eo6QJ9vBRJ", "scopes": ["4UP09fabC01Thm9f", "4AWpyiKVT3OvEujx", "5yjtQSCJaOHzpb62"], "secret": "3EciYoYOPVg6DLEZ", "skipLoginQueue": true, "twoFactorEnabled": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    'BXefsSgZxSYnVwXq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'F6K0WA76Kl2mHHoz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["6qBQnEDgX49n1xTD", "FcmOm1sqdIWU6ERy", "lESgf5dXMrPoYSoh"], "baseUri": "frLyXMSrC62xYtDw", "clientName": "flNGfufW5cWeg6eS", "clientPermissions": [{"action": 58, "resource": "QPa7PPx4Zi6WaC8w", "schedAction": 21, "schedCron": "LrILDLviUCzmDAaW", "schedRange": ["5xz1c7ZuZXUCBYnk", "Y0LEBSYBdUSiTOrh", "B8hVs29WOKmZRTtg"]}, {"action": 50, "resource": "93CCGBXv4fP4VPzh", "schedAction": 4, "schedCron": "EZo2ZnL1Zg2JfH4f", "schedRange": ["73jAevOnES6YJLlb", "2AfUEEBbqMMKvkOs", "R1fHUyirMVMOFES2"]}, {"action": 74, "resource": "LsYKTmUnKlrOsJmE", "schedAction": 46, "schedCron": "31cA0PwZxTIZVSGQ", "schedRange": ["yTzhs9Asy4d629N4", "YnolVWA2dWxBs056", "jkPCUuE1pgdHvlQK"]}], "clientPlatform": "iR7SDQUDavOlKT5E", "deletable": true, "description": "hJQq94Re5IM1akNK", "modulePermissions": [{"moduleId": "z9IltQUku3n32atB", "selectedGroups": [{"groupId": "0QPQPEp5UtwUWGt6", "selectedActions": [40, 96, 29]}, {"groupId": "WFTLq0W1JqwKs1mO", "selectedActions": [16, 53, 77]}, {"groupId": "Q1pwqnybvUIfuulm", "selectedActions": [8, 76, 9]}]}, {"moduleId": "Zqz5NSp0B7LODN3B", "selectedGroups": [{"groupId": "oi2sSAO2n4MZQt75", "selectedActions": [80, 87, 76]}, {"groupId": "B93rOW0guPoQbYzc", "selectedActions": [47, 88, 39]}, {"groupId": "DVhs2lhdzxxgibuq", "selectedActions": [96, 6, 43]}]}, {"moduleId": "gJMjIyGfiNBQy41M", "selectedGroups": [{"groupId": "1gzGCbaxw33rNbE4", "selectedActions": [2, 97, 2]}, {"groupId": "v0KVpXJTMx3Y8Um1", "selectedActions": [18, 8, 33]}, {"groupId": "rDCWcl3VSJENQope", "selectedActions": [68, 79, 61]}]}], "namespace": "FlgHKQIRtLfPngD8", "oauthAccessTokenExpiration": 11, "oauthAccessTokenExpirationTimeUnit": "roOeqE7fcCAeExeQ", "oauthRefreshTokenExpiration": 100, "oauthRefreshTokenExpirationTimeUnit": "43LpmdMiZeyIrA4Q", "redirectUri": "UKSJgECzvaWUCA7w", "scopes": ["Kru7ry3AQ2sEHvSx", "jWoM1rNJLM0OOVG5", "cG6XxENbWqlX7idz"], "skipLoginQueue": false, "twoFactorEnabled": false}' \
    'aCeNLYxMID9pqZ5r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 35, "resource": "8tJQwZvUVInos5RK"}, {"action": 43, "resource": "00yH89i8ZDPXRL8c"}, {"action": 3, "resource": "FM4ahGw7XcF1Qwzz"}]}' \
    '606UGXPhoNZlXMef' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 33, "resource": "AvS3TfKx6ByTygbt"}, {"action": 82, "resource": "9czsYr3cFeVw70xd"}, {"action": 80, "resource": "YxY6OhdkrYiCinoV"}]}' \
    'Ozo4Plv1IlTpEhjT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '65' \
    'bPnXEuOzzkoBmMR9' \
    'C4qPqJrAdh1HIk7v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
$PYTHON -m $MODULE 'iam-admin-get-config-value-v3' \
    'CEq7FQ2S5VeW9ddx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'AdminGetConfigValueV3' test.out

#- 134 AdminGetCountryListV3
$PYTHON -m $MODULE 'iam-admin-get-country-list-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'AdminGetCountryListV3' test.out

#- 135 AdminGetCountryBlacklistV3
$PYTHON -m $MODULE 'iam-admin-get-country-blacklist-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'AdminGetCountryBlacklistV3' test.out

#- 136 AdminAddCountryBlacklistV3
$PYTHON -m $MODULE 'iam-admin-add-country-blacklist-v3' \
    '{"blacklist": ["zLPV8wDjsnyPh5yN", "bYXmlAOi1SC3I1Sj", "kH42LtyZKrTJo0L5"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'AdminAddCountryBlacklistV3' test.out

#- 137 RetrieveAllThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-all-third-party-login-platform-credential-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'RetrieveAllThirdPartyLoginPlatformCredentialV3' test.out

#- 138 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3' test.out

#- 139 RetrieveAllSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-all-sso-login-platform-credential-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 140 RetrieveThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-third-party-login-platform-credential-v3' \
    'sHil4Q0mqa8Gatrj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 141 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "bJ5YT7uvqarTvrG1", "AWSCognitoRegion": "DXZAWlvz3c3XALMr", "AWSCognitoUserPool": "esGFfsH4aXCDhshv", "AllowedClients": ["EF8rHd250nyihcUV", "GHQczI5ZoTRUkjGo", "RkPs2SO9XrgXNIaU"], "AppId": "11cBXLwTfopqeZtH", "AuthorizationEndpoint": "JnRgaGfLMFbvyI5P", "ClientId": "ZGzVLcmZKKKYARap", "Environment": "e2tsNczam4Cdd1QY", "FederationMetadataURL": "vww4XDokltgq2vXt", "GenericOauthFlow": false, "IsActive": true, "Issuer": "Y6UhDJ4pe0s0Cuhl", "JWKSEndpoint": "3dU9b4seYCyiB4tD", "KeyID": "CWx3cEX8wTi1v2ab", "NetflixCertificates": {"encryptedPrivateKey": "pCWytPEi9Ze0hL9r", "encryptedPrivateKeyName": "PkV5GkSrcl2O47XV", "publicCertificate": "zU7qlNVk7qnmBS3X", "publicCertificateName": "KDhp1OkMcErmeH0l", "rootCertificate": "X1hj0LaXgQ94flh7", "rootCertificateName": "75AQfzNjQ7IuMSY2"}, "OrganizationId": "epRDJjDyMDKQhuTj", "PlatformName": "tQZyIiAmCL8bNTTf", "RedirectUri": "qLCv9DYBOProN4UW", "RegisteredDomains": [{"affectedClientIDs": ["bQaKFrTv4JWElmOC", "xqPrq9I3XJWBxTLc", "Oef8MgIwkrKFEtwE"], "domain": "SJCe2ksG3nZE13H2", "namespaces": ["fILFzOlAZbDQAEJL", "bVWH2XLIg3MgmdSv", "Wp3h0xPsVY8qNwB2"], "roleId": "TY4v9NNfQSYLFKSl"}, {"affectedClientIDs": ["3FNFFJnt3rIwZdW0", "2Su6aCnL816aH6gO", "BUIMeL0GL3aefSDM"], "domain": "E8X2MxILI42BJMPk", "namespaces": ["Zmay4Csye3iJLtjs", "u6ZJRCoDq3geuHFF", "aZzPIjETqcKN1gaQ"], "roleId": "4Bn0cPPtKaJlw31p"}, {"affectedClientIDs": ["dDrXQ47WSGyDCKF0", "LLhO3lGZ7eGOPj2X", "oFug8BUQUmPHnPum"], "domain": "cazKAna0ji757aND", "namespaces": ["FeKnQP2j2WsQImTw", "YkiuxzLrbJ0BkGzC", "NgesQlZZHIZH0iks"], "roleId": "6kx0adnimPyyzezs"}], "Secret": "HdFftHHR6xbcVVon", "TeamID": "wz27DWfGRVhbZTvC", "TokenAuthenticationType": "PrrZCTU5WUJizF69", "TokenClaimsMapping": {"PSsquWUafwbFPX15": "633pFgA7i9tqvfHm", "FvUZiUW5Y0CYw5OX": "SGwQkJuy9oLFcHHc", "raLXR2n9JQvq7NKW": "IHYsii3fCh7sieJj"}, "TokenEndpoint": "ZPAkiWumllU31uXP", "UserInfoEndpoint": "wYxedGHCIkmt4bfJ", "UserInfoHTTPMethod": "OhNaIT0pv7XeqO8g", "scopes": ["Y3c4SryWB4yRaDxv", "xwaLM8HkVOW8PnLk", "gqkqYZWPZTgKagTz"]}' \
    'dcYcko7U3gH239Lh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 142 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    'Rx2Laa2RdtVb6VgA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 143 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "5yFIH3s9UyeaFi8O", "AWSCognitoRegion": "E7BCK4FeVGrl5NpU", "AWSCognitoUserPool": "G9zblWEiHaUjyTHb", "AllowedClients": ["0sSlstb3slUe94Nx", "hXsVcqTYi1TMBMza", "OrxuKvtUVtqbDWnJ"], "AppId": "2i9TRmJOqIl7U12h", "AuthorizationEndpoint": "O5vpk9DOSgbsdGVP", "ClientId": "LD9A5NmuZDUV3yHu", "Environment": "rgOfba1XeoHYTNoR", "FederationMetadataURL": "ol84UlkxtP5Vok9s", "GenericOauthFlow": true, "IsActive": true, "Issuer": "g3tChsS3fFpaS1uq", "JWKSEndpoint": "1mH3oYfPK2QiAUhI", "KeyID": "fi17YrkWHNxiaNyq", "NetflixCertificates": {"encryptedPrivateKey": "Bfgw58Hx0XYL0fJO", "encryptedPrivateKeyName": "PYpnPqGlPnhBDOWq", "publicCertificate": "DU8N3DjVUt0n0jfy", "publicCertificateName": "DbtIXICLkK8ZvbnT", "rootCertificate": "g3znlg8nmzQx1RsY", "rootCertificateName": "hcRlv16Wwe8YK3lZ"}, "OrganizationId": "FslECI9QzuQcsjFe", "PlatformName": "hD6uTDYnqyNgN7Go", "RedirectUri": "eMsezFZsTBHkgcJ0", "RegisteredDomains": [{"affectedClientIDs": ["DcEt23pci6xEljer", "6aGJx5OFp3jKEx4a", "SGdwTPX4ig3NVFFk"], "domain": "P7O3F4vsohRWDyGY", "namespaces": ["IVFDbTvRYfpJ4wM9", "WZfOOxAzmsbhi5QJ", "uc2SNBaOlXfgsgBd"], "roleId": "7MYLLoPZrkjRm5Ki"}, {"affectedClientIDs": ["0orhXrISEaPZHLQk", "THvndQsCKAO2JRz3", "CGwtujkzxidLcAQW"], "domain": "GVRg6DVso5TJCSug", "namespaces": ["do4XTm8t1YTWqItj", "NWXm9sraeMA78YSR", "S2fPy5fpbbbMIu9l"], "roleId": "u18jIMBUM77XmemN"}, {"affectedClientIDs": ["8LO03mnFSq9jJTVF", "oFjxZjh5qUR1Pq4a", "4uaMfd0SQAfYIyzH"], "domain": "L8jxakuVu5r5B08V", "namespaces": ["ZxI4TU3apnZXoJ4g", "I4EQKO8xC4D0FsUo", "3IB2kX5REQZsHyXz"], "roleId": "oIXNf0KbL9HyJttd"}], "Secret": "gfLGO3ummpllnV6B", "TeamID": "62P1Kazg73c6UpmA", "TokenAuthenticationType": "4ehxNIIlcrZzgame", "TokenClaimsMapping": {"T2mLkkAMjHyI0e2A": "xj0nZHjmoKHJngwM", "e1AnQVj6QQjZtkNJ": "CnDSrsSey2BqOxgw", "CymCDYsuff3b7G5F": "DX4mu0qPHb9Ll2EF"}, "TokenEndpoint": "Eb8GnsthmQ2Y6ZGO", "UserInfoEndpoint": "iqrg3lpqN5bOfnqJ", "UserInfoHTTPMethod": "5bzDRzbhMxfEDE4T", "scopes": ["rtIHyyMq79EdB9Mx", "aF8QHGM2IuQYBO8m", "0HgTth479W8rXqwG"]}' \
    'VIRWgTNHCka3Wb5k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 144 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["H1BrLWUetP7nmESQ", "DV3BD1nnEzoUlUWq", "P4ElzL44KEm3uHBM"], "assignedNamespaces": ["CP5ckjphURs4ksgs", "KJ2R6Jacwwu8W1zv", "rKMRPvwA9k6yJz03"], "domain": "NETdywPqYerrpOm4", "roleId": "M2pM4fIfcHBWZM50"}' \
    'aHbPXRns3qwYL6Lw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 145 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "GlZGF7XQPLAcIL7F"}' \
    'vAMWqhyyNZH1Cduc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 146 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    'B5y5iMdeBG7REG4m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'RetrieveSSOLoginPlatformCredential' test.out

#- 147 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "eKEabfVXBJPIZqZC", "apiKey": "5d6JuFdcfiNf0DOH", "appId": "KwxDF5GJhCjVHiCn", "federationMetadataUrl": "2hTefT8gPFJ4WndM", "isActive": true, "redirectUri": "5mozeeOjIFQfXV3Y", "secret": "W3ug3nCXhD7FUz1i", "ssoUrl": "Oe0pHa0LmseIRXeo"}' \
    'erZAxbDPXU5xJBhI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'AddSSOLoginPlatformCredential' test.out

#- 148 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'pJ9b0Ap7CmSiKPjc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 149 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "wAw5GdxpvLfa4b4h", "apiKey": "TaZBGdX66DqPTdur", "appId": "R3MYda0Y0BCO4qPn", "federationMetadataUrl": "vxERWjKasq5zQ6uZ", "isActive": true, "redirectUri": "ZzhDuLHq9LTBstgu", "secret": "OdN0O7l3GbKPHdDT", "ssoUrl": "QDEEE2mTsn1NwJ71"}' \
    'szsNmnqZSWdEyOVY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'UpdateSSOPlatformCredential' test.out

#- 150 AdminListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["rTdDq7IqbTVv8BLs", "qQW8HSrEm5Y7jI23", "2SjktijiNzTUe8Kd"]}' \
    'izXmrmK0sCUsqxKo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 151 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'cHomtjoU1kUqRedw' \
    'Iu1TSRr6r8mzfMed' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'AdminGetUserByPlatformUserIDV3' test.out

#- 152 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'pcKhvHPlvYanGqEk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'GetAdminUsersByRoleIdV3' test.out

#- 153 AdminGetUserByEmailAddressV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-email-address-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AdminGetUserByEmailAddressV3' test.out

#- 154 AdminBulkUpdateUsersV3
$PYTHON -m $MODULE 'iam-admin-bulk-update-users-v3' \
    '{"updateRequest": {"skipLoginQueue": false}, "userIds": ["opdqGrqRZ124P7Pa", "uXTrpWAjwatSvtPb", "AFn8oWQcmFkkRX6E"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'AdminBulkUpdateUsersV3' test.out

#- 155 AdminGetBulkUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-bulk-user-ban-v3' \
    '{"bulkUserId": ["qadAEIzxld80Ynss", "7hc3VUxxZIgkTLqM", "eJPCbs8jWmTteJhw"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminGetBulkUserBanV3' test.out

#- 156 AdminListUserIDByUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-user-i-ds-v3' \
    '{"userIds": ["NbwHGG39YAZJ4HuL", "feTfFBTOFFMJ9pq5", "11jZcTK8zmMfyshY"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'AdminListUserIDByUserIDsV3' test.out

#- 157 AdminBulkGetUsersPlatform
$PYTHON -m $MODULE 'iam-admin-bulk-get-users-platform' \
    '{"userIds": ["k3b5cAFVo85r1b8Y", "p2QnuhQuIdvZdj6A", "spWBfRnLcLbp7Omc"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'AdminBulkGetUsersPlatform' test.out

#- 158 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["rDJ7u1rrRPcnG89r", "nNW1Yjfn8lY4DnYR", "xY8ZhHeb0CaPFDjr"], "isAdmin": true, "namespace": "otKnpJWALpToj9rg", "roles": ["r5RffM5JXvPdzEpD", "ln04F8BQjzobhDa8", "VxKOrfVfBRIfkStO"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminInviteUserV3' test.out

#- 159 AdminQueryThirdPlatformLinkHistoryV3
$PYTHON -m $MODULE 'iam-admin-query-third-platform-link-history-v3' \
    'qdXqhDMQ6tBLljC7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 160 AdminListUsersV3
$PYTHON -m $MODULE 'iam-admin-list-users-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminListUsersV3' test.out

#- 161 AdminSearchUserV3
$PYTHON -m $MODULE 'iam-admin-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminSearchUserV3' test.out

#- 162 AdminGetBulkUserByEmailAddressV3
$PYTHON -m $MODULE 'iam-admin-get-bulk-user-by-email-address-v3' \
    '{"listEmailAddressRequest": ["gcT3M1DArk4L80aX", "FY7SQkym9KvKMHK5", "fbqioeoRIplY0DIz"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminGetBulkUserByEmailAddressV3' test.out

#- 163 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'RCNAO6ZpqXJmPJso' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AdminGetUserByUserIdV3' test.out

#- 164 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "6M11LLZWKgWxn9YL", "country": "16HQdtAneXGgxNg3", "dateOfBirth": "3ZIUrIkfmdXVvaPQ", "displayName": "zzKdFg7N7piT8Vcr", "languageTag": "XLZnuMNpKEIs3GC9", "skipLoginQueue": true, "uniqueDisplayName": "K7tkJWFpHt7MdKu9", "userName": "Xwn5GHJDGatrYOMO"}' \
    '91CYEjX867n9PT9f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserV3' test.out

#- 165 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'R7mMuBXPDKCriRKz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminGetUserBanV3' test.out

#- 166 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "TZ7TXAVRnUVbxEJc", "comment": "KHE764EwhQfxFKIO", "endDate": "GT1WKSmLoA0ILaES", "reason": "C1GJXsoBwqh0TQXa", "skipNotif": false}' \
    '0vDgyoHXIlrMl2RA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminBanUserV3' test.out

#- 167 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": true, "skipNotif": false}' \
    'kCL26ihdMy9YCLNJ' \
    'Ekvq6SUSt8xd8EgE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminUpdateUserBanV3' test.out

#- 168 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "15XNuw6Y7sToQNku", "emailAddress": "ZzJ1XBxw01iBBQuk", "languageTag": "gQ94ZvPCWcMX0ov3"}' \
    'U2sKjIeyFS97dYD7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminSendVerificationCodeV3' test.out

#- 169 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "LkcTKYpCfl6HPy5c", "ContactType": "JfAV5iOfzwt3bpxR", "LanguageTag": "Nt6lKoMjCPtEKeBW", "validateOnly": false}' \
    'XdPYZQxBnttu4yW5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminVerifyAccountV3' test.out

#- 170 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'etl4Xk8Hd1lRtoPM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'GetUserVerificationCode' test.out

#- 171 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'vsu9oswEPTvzwwGn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminGetUserDeletionStatusV3' test.out

#- 172 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"deletionDate": 32, "enabled": true}' \
    'bx8MCIjKzylqW8au' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminUpdateUserDeletionStatusV3' test.out

#- 173 AdminListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-admin-list-user-all-platform-accounts-distinct-v3' \
    'yseP9wEEyYAnHPp4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 174 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "XzVL5McglFCrjxqq", "country": "xAYqXG2V3baMkZ9J", "dateOfBirth": "CqBIkUID0EE9InZN", "displayName": "LwwAhW2b5OHKtUv4", "emailAddress": "lTkQNjxhXdj1CG0E", "password": "Bgst9Qu8Ofl2oB8V", "uniqueDisplayName": "TjF0pD3NHU8iYUOt", "validateOnly": true}' \
    'gbQSKW2MdgCH4bWx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminUpgradeHeadlessAccountV3' test.out

#- 175 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'RF6fBPa6GOuV5z0p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminDeleteUserInformationV3' test.out

#- 176 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    '8jaJs2duQqawPrxi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminGetUserLoginHistoriesV3' test.out

#- 177 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "6F4elhy9CZ94CAUV", "newPassword": "W8FoEf8tjCjWc22q", "oldPassword": "qDfNz59jHwSDQHad"}' \
    'mAo0lzhPm7RmaOr6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminResetPasswordV3' test.out

#- 178 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 93, "Resource": "Lotv5ycTa0i6ifYP", "SchedAction": 53, "SchedCron": "wAopZL9Cw6K9h55m", "SchedRange": ["wUvhdBOgumV4wAsd", "4ifGd0bkWrlhtfTy", "wRW4fmg6btk3mAO4"]}, {"Action": 62, "Resource": "xhubMXbxNvT6wAff", "SchedAction": 44, "SchedCron": "lVDx9neFHWhDRJty", "SchedRange": ["YEt7ygZleAoUuVKn", "eoO10ytPdJ8SY3qo", "ogOxoPYvdIBJYyGU"]}, {"Action": 89, "Resource": "mjzLxllUrFYn7cSu", "SchedAction": 83, "SchedCron": "wVxvgAocOqsd5v5n", "SchedRange": ["7eXCo9gZWdxfIdW8", "fNAM5YdHivK2Q0Ww", "olQy037hJMOEv5W0"]}]}' \
    'v25yAObZIbrA8XAK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminUpdateUserPermissionV3' test.out

#- 179 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 75, "Resource": "Zw4MWzWFTuNPf5JC", "SchedAction": 91, "SchedCron": "PXaI1Jb75o2MFOa6", "SchedRange": ["xgPt69QROGDeJCyH", "vUsnLvXCSgQHvs25", "eiQO3oWdgXdm1IxL"]}, {"Action": 70, "Resource": "OtleUBqBO0Ze049k", "SchedAction": 100, "SchedCron": "UlGQsFpy9ZVlLIFw", "SchedRange": ["LgT78nootfUs9559", "ilm3cauhrw9Yn2z5", "cnbm7z2Aa24yBTw3"]}, {"Action": 46, "Resource": "XwQtVIYU87NgjDMc", "SchedAction": 74, "SchedCron": "cfPW4pPZB9YXltCx", "SchedRange": ["yztUnj17t3gHBXvj", "vziexzOLbOWbtcJU", "xM3AWyDkA5LmART6"]}]}' \
    'kulpM4SRtUE5P4kx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminAddUserPermissionsV3' test.out

#- 180 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 25, "Resource": "lMlY8UjprhCxhzW6"}, {"Action": 61, "Resource": "M7LkTVrtVJZVhxCV"}, {"Action": 7, "Resource": "i4mxc14iRfzJwKuc"}]' \
    '7EpiQEzz5N5osRYO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AdminDeleteUserPermissionBulkV3' test.out

#- 181 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '99' \
    'wbYh7q02W8tkTURU' \
    'FmqNc8xhQqptccNo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminDeleteUserPermissionV3' test.out

#- 182 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'rRls7EC3nDnhFvDl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserPlatformAccountsV3' test.out

#- 183 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'Fd7iyZpvWVJFK6Zu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminGetListJusticePlatformAccounts' test.out

#- 184 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    'vlzGCII156hIg0g8' \
    'HIxpzm9AcFhH4ZlY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminGetUserMapping' test.out

#- 185 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    'Y3rEuHMWwQNmCQmG' \
    'CF963CbsOawlRBQJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminCreateJusticeUser' test.out

#- 186 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "H6fNekhk077gxaj5", "platformUserId": "5huTA6AvmW0567BF"}' \
    'qbrPIuxKmBXLi6Gp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminLinkPlatformAccount' test.out

#- 187 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "nqAeMvg3w0FQ1520"}' \
    'WM3TxWXSdTiKdva2' \
    'UREoBSFtCLy2CqgC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminPlatformUnlinkV3' test.out

#- 188 AdminPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-all-v3' \
    'G7JwJCDqkzOdFwLJ' \
    'pIPxzLE1V9U1NgpH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminPlatformUnlinkAllV3' test.out

#- 189 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    '7Oc44yjRdfqZgv34' \
    'GqqjelcN0GJmPwUT' \
    'WMx0MiPAjnWIhFrq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminPlatformLinkV3' test.out

#- 190 AdminDeleteUserLinkingHistoryByPlatformIDV3
$PYTHON -m $MODULE 'iam-admin-delete-user-linking-history-by-platform-idv3' \
    'Sn4erXEtU1CaD8Aq' \
    'sMCGBNhmUt6fzYRn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminDeleteUserLinkingHistoryByPlatformIDV3' test.out

#- 191 AdminGetThirdPartyPlatformTokenLinkStatusV3
$PYTHON -m $MODULE 'iam-admin-get-third-party-platform-token-link-status-v3' \
    '85brTu8F7cuCPh1T' \
    'GZJmgWNHWnvOBRCt' \
    '4onqRo2PnMSRarKg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 192 AdminGetUserSinglePlatformAccount
$PYTHON -m $MODULE 'iam-admin-get-user-single-platform-account' \
    '4coy3AFpULIn21Nf' \
    '2FNgDWNC6yh7kgTH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminGetUserSinglePlatformAccount' test.out

#- 193 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["lrxKbsV4XtrI7SFB", "EgkwHifMHYI581Hb", "F7fMX9lDXYxGRJM9"]' \
    '2eX42WW2WKf5urEO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminDeleteUserRolesV3' test.out

#- 194 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "pASBicX3ZwzZ7aVh", "roleId": "rkmhSOEozGOv8D0i"}, {"namespace": "Vxzrec5kNwJAxm0R", "roleId": "dm9l6nIhG5SilDDI"}, {"namespace": "smj4h625dIsMKWBx", "roleId": "F9RAIrI81ZR2kNzh"}]' \
    '60RQNaTEhMXMepgz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminSaveUserRoleV3' test.out

#- 195 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    'Y9jLiAdMiQ7eDMke' \
    'BRMur18nCxiV9bQM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminAddUserRoleV3' test.out

#- 196 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'HpPbvflI3LkRc1Ng' \
    'ZaoYAaCCeRgtstsU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminDeleteUserRoleV3' test.out

#- 197 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": false, "reason": "Qecxo4bQZO3P2f8T"}' \
    'TOVf6jrr1OL606Qp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateUserStatusV3' test.out

#- 198 AdminTrustlyUpdateUserIdentity
$PYTHON -m $MODULE 'iam-admin-trustly-update-user-identity' \
    '{"emailAddress": "qCgxt0NgDSj1T6Ed", "password": "eYFmrLT0HbvS4kSS"}' \
    't3CyDgf6eFAiqSkH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'AdminTrustlyUpdateUserIdentity' test.out

#- 199 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'i0BR2ElF6z6eJKuO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 200 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "W61akRFizqxCmudS"}' \
    'XivAL3n478mhb2I2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'AdminUpdateClientSecretV3' test.out

#- 201 AdminCheckThirdPartyLoginPlatformAvailabilityV3
$PYTHON -m $MODULE 'iam-admin-check-third-party-login-platform-availability-v3' \
    'yBJeCJghTrk68FWF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 202 AdminGetRolesV3
$PYTHON -m $MODULE 'iam-admin-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'AdminGetRolesV3' test.out

#- 203 AdminCreateRoleV3
$PYTHON -m $MODULE 'iam-admin-create-role-v3' \
    '{"adminRole": true, "deletable": true, "isWildcard": true, "managers": [{"displayName": "L8H4euLufhQj2KP3", "namespace": "LLxl9Hs2L2wlpKBV", "userId": "URxHefz77a9fntCN"}, {"displayName": "iHBRUNCPSre5GmZz", "namespace": "CQwilS3IxSjlyvR9", "userId": "PxG9Lji2Vc88W8aL"}, {"displayName": "jIxVGpdOqguxvRwI", "namespace": "9ZBTipMRlhK9DMMa", "userId": "I4ryVDvNaruZxwTf"}], "members": [{"displayName": "h9gEs6GF247cbBLj", "namespace": "Ur5z03wxB3E9hrE9", "userId": "f9COFrOr6wJDBwID"}, {"displayName": "sJHNg6TvNGjwI4Tb", "namespace": "TwBufUorJouduhCE", "userId": "J5XiKDIE9YugcupL"}, {"displayName": "xVBcRkfhRuqkOTHS", "namespace": "ia7oFd1fEmDuyAsQ", "userId": "GzwJR5poI718RQnj"}], "permissions": [{"action": 57, "resource": "imu6XFfRcWDXhq1Y", "schedAction": 26, "schedCron": "G1LxLdySvyVqY8nx", "schedRange": ["BZbHcPHEFuEVP9bF", "07gnWDULkJPQR0UJ", "Mr8ouccGH0B4LCe2"]}, {"action": 15, "resource": "lgAVfqz6gQJh8sn0", "schedAction": 2, "schedCron": "9A88GDOUClGyzYgn", "schedRange": ["YTdim6PkRoq5TO65", "KWh8ztRJkXxUAj3j", "zZvEaY103YUIMuSj"]}, {"action": 60, "resource": "AFT7l0l1jaOAMCzb", "schedAction": 37, "schedCron": "qhISTBT1Gofv4Sua", "schedRange": ["Z8yCB9TVZnuzgvAZ", "JRm71EC3ENuvD8OP", "sp5Z3ez84KVB7HeW"]}], "roleName": "PnVeFdy5ezlCU6SG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'AdminCreateRoleV3' test.out

#- 204 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'zkMpTL2wxobjxAba' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'AdminGetRoleV3' test.out

#- 205 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'gqEmXn6U2VeV2emK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'AdminDeleteRoleV3' test.out

#- 206 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": false, "isWildcard": false, "roleName": "GlD40xxIyVwYjn6d"}' \
    'lC9Kfh9gHuloyce0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'AdminUpdateRoleV3' test.out

#- 207 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    'cLJu4ljPWlCWTuGO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'AdminGetRoleAdminStatusV3' test.out

#- 208 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    '8MnfOQu3wdT4Aodp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'AdminUpdateAdminRoleStatusV3' test.out

#- 209 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    '95o1RkX7iW7VpCng' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'AdminRemoveRoleAdminV3' test.out

#- 210 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'WAv5DAG8dPdkKgQq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'AdminGetRoleManagersV3' test.out

#- 211 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "jyzUZR2rFIAuALNh", "namespace": "NCyscsMBRLsWadk2", "userId": "OQ421q7Nb1vrKthV"}, {"displayName": "vU5on065ApCkVN3Q", "namespace": "chuQ6pntxB648ss7", "userId": "rBnvQHAM8gSdIybK"}, {"displayName": "UByHBzfvgtRTPPzw", "namespace": "JmKaLCx3gcidEALW", "userId": "e6RG5wWznu5AjwR1"}]}' \
    'Z4fU7ICcaQtuuKUw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'AdminAddRoleManagersV3' test.out

#- 212 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "3dUwWHhQW3I1y9tj", "namespace": "RLVOXBMa0JiIe1AY", "userId": "0tUA7EKASk3USNLh"}, {"displayName": "OBlxRBLgohp8ByTi", "namespace": "2F6AyUX8w77riPlP", "userId": "gJcLbeQf9MICxX7x"}, {"displayName": "KyCfgwSPz14asyOd", "namespace": "gn77gN8K1FlNkgbF", "userId": "E8U4meK5grmPBsFH"}]}' \
    '71VrhsISYtegQbNA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'AdminRemoveRoleManagersV3' test.out

#- 213 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    '2WQrHTkJT1VkChD3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'AdminGetRoleMembersV3' test.out

#- 214 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "n0c1ryAkRvdPR8gx", "namespace": "2rX5dck8NFKPgT6L", "userId": "Mehg047axU5ktNyw"}, {"displayName": "RIvO2Sgz30hejqdk", "namespace": "tHIO1VdtMSews1Tr", "userId": "U4FhAfKDcDG5bMTb"}, {"displayName": "a1tUlFGcP6eL7EpW", "namespace": "tPifmO0JK4dP1aZF", "userId": "iSkmhwVVMGkXNwMY"}]}' \
    'wFyljy5bYQdQ87hU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'AdminAddRoleMembersV3' test.out

#- 215 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "HA0FJZwP8GslMpx3", "namespace": "m7lEXTmnTbtjK9Rs", "userId": "yoqT3adB48Jxp2za"}, {"displayName": "Itg9jTNZvpFEUI21", "namespace": "aSaIsMyLKPPIZx0z", "userId": "dNAagipZwiaBrFrX"}, {"displayName": "tGMjujfHZB1gMI1B", "namespace": "8DXb37DffTZ7yQz3", "userId": "37LLNCjIySe36SA5"}]}' \
    'dxATLv5PkLvraRzC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'AdminRemoveRoleMembersV3' test.out

#- 216 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 14, "resource": "B5kMzKycYrhr4FnN", "schedAction": 52, "schedCron": "GInvbnf4ewKFFLoG", "schedRange": ["ggX4gQWyZocvYfr0", "Rnl02R1IVNnaK6KS", "71Xs1BphA9BXpKYg"]}, {"action": 65, "resource": "L6OooYoQn9iHEqWO", "schedAction": 35, "schedCron": "cVCUIOx90FQdwLi3", "schedRange": ["GOQkLtpuRNeT1CUL", "EMPaOU5nukycAUlk", "USZKUrsxNRzF3NaU"]}, {"action": 42, "resource": "p56Q4WETxtGMs5tP", "schedAction": 75, "schedCron": "JW8UU0RsB6dvrpmI", "schedRange": ["nhHYzVVlHGFSwjby", "6rMYkVQnZDUAbINR", "KQsxUO1YMxAndOj5"]}]}' \
    'O6IBwXJjgQjgLoJy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'AdminUpdateRolePermissionsV3' test.out

#- 217 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 33, "resource": "4qnUdcQqZ9F1uivP", "schedAction": 29, "schedCron": "12bSbPgOCWUogize", "schedRange": ["WOPUMrqgEIsMwNbf", "ti0LoTBcNzyoCSw1", "t653G3ydYmGzvx9b"]}, {"action": 91, "resource": "UXVlB6xNel4Bxb9K", "schedAction": 46, "schedCron": "tHeeXo7gOFVLZCBW", "schedRange": ["uVIROZuqdJBi8pkn", "98VtLNkaIQJfkFDh", "SeSGXtZU5SuIhMSa"]}, {"action": 60, "resource": "s8x5oPSkZFIV2feX", "schedAction": 28, "schedCron": "KpOxPrlG9svdqsiV", "schedRange": ["TqPbzY1yxl7zeEpm", "SPO6KwlJQlj9Ii2j", "ARwzowk9OoiPdnq9"]}]}' \
    'KBqBwiNCsnK8CcO1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'AdminAddRolePermissionsV3' test.out

#- 218 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["OHbpQZtwW3EwLre1", "bL4dJnkRLJbMvOGS", "d7uMrmQ2SaLd6M7T"]' \
    'M3wnJyExuo5z9RAc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'AdminDeleteRolePermissionsV3' test.out

#- 219 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '17' \
    'gYZb7cAakJpqN6eu' \
    'bdp49JFwXG0EvoSH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'AdminDeleteRolePermissionV3' test.out

#- 220 AdminGetMyUserV3
$PYTHON -m $MODULE 'iam-admin-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'AdminGetMyUserV3' test.out

#- 221 UserAuthenticationV3
$PYTHON -m $MODULE 'iam-user-authentication-v3' \
    'NC97eEyhnL1QH5Al' \
    'YRAqCAC2gy1WF9QL' \
    'NgDxAkwgfB8jIecO' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 221 'UserAuthenticationV3' test.out

#- 222 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    'x5ugNCDd6jW6fjtB' \
    'cO3fWq9qfmBv0XgJ' \
    'B6a7uykADFpinFcH' \
    '2ZMSYijqEuMfuYFU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'AuthenticationWithPlatformLinkV3' test.out

#- 223 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    'S079tOpZYM1XV0Op' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 224 RequestOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-request-one-time-linking-code-v3' \
    '0damycnTUOoMkOpp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'RequestOneTimeLinkingCodeV3' test.out

#- 225 ValidateOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-validate-one-time-linking-code-v3' \
    'ZNOkqxc42HKv5wvt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'ValidateOneTimeLinkingCodeV3' test.out

#- 226 RequestTokenByOneTimeLinkCodeResponseV3
$PYTHON -m $MODULE 'iam-request-token-by-one-time-link-code-response-v3' \
    'PJVsuzaBciSxwzuI' \
    'pGBYHTHoSVxgQCbp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 227 GetCountryLocationV3
$PYTHON -m $MODULE 'iam-get-country-location-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'GetCountryLocationV3' test.out

#- 228 Logout
$PYTHON -m $MODULE 'iam-logout' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'Logout' test.out

#- 229 RequestTokenExchangeCodeV3
$PYTHON -m $MODULE 'iam-request-token-exchange-code-v3' \
    'Zx5yMGIQ1ZxVIefY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'RequestTokenExchangeCodeV3' test.out

#- 230 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'lKBJyQMqUEfDikX6' \
    'yOlgZrn0I6T0hvcA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 231 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    'FTaSWR4VOGIY7hM6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'RevokeUserV3' test.out

#- 232 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    'uhonkAe0FdTSSElu' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 232 'AuthorizeV3' test.out

#- 233 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'eXKFT4rfSbbSlDPG' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 233 'TokenIntrospectionV3' test.out

#- 234 GetJWKSV3
$PYTHON -m $MODULE 'iam-get-jwksv3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'GetJWKSV3' test.out

#- 235 SendMFAAuthenticationCode
$PYTHON -m $MODULE 'iam-send-mfa-authentication-code' \
    'f9Fn32SJNPZkEfkA' \
    'cJTMS4pVRcCHIGfm' \
    'CMTr9ACnI2sMrEgl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'SendMFAAuthenticationCode' test.out

#- 236 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    '7ZR1HCkf2Sw78lLG' \
    'KjDHuXt358gzqRMu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'Change2faMethod' test.out

#- 237 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    'MPrIekxq58fikq83' \
    'hqJ7HP63Se6kVW5f' \
    'kl60ImLBv6nUU0r1' \
    'true' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'Verify2faCode' test.out

#- 238 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'yFgZhNpOTE4toH57' \
    'yr01N33p1Gha8Hwp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 239 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'agvERZI6Cqhcknhe' \
    'cNv2Tw6YKhVrYkMq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'AuthCodeRequestV3' test.out

#- 240 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'XkQ7qlaJjSYEseBY' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 240 'PlatformTokenGrantV3' test.out

#- 241 GetRevocationListV3
$PYTHON -m $MODULE 'iam-get-revocation-list-v3' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 241 'GetRevocationListV3' test.out

#- 242 TokenRevocationV3
$PYTHON -m $MODULE 'iam-token-revocation-v3' \
    'CFGoKpXx60GmEX9x' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 242 'TokenRevocationV3' test.out

#- 243 SimultaneousLoginV3
$PYTHON -m $MODULE 'iam-simultaneous-login-v3' \
    'steam' \
    'kHagEugKJxkU8Y58' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'SimultaneousLoginV3' test.out

#- 244 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'refresh_token' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 244 'TokenGrantV3' test.out

#- 245 VerifyTokenV3
$PYTHON -m $MODULE 'iam-verify-token-v3' \
    'wFJJhBRdq8BgAI81' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 245 'VerifyTokenV3' test.out

#- 246 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'k4Gr7jVVx5l3yrH9' \
    'HR4reG0HwUXxQTf5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'PlatformAuthenticationV3' test.out

#- 247 PlatformTokenRefreshV3
$PYTHON -m $MODULE 'iam-platform-token-refresh-v3' \
    'YpDUGYsJBEkYUrLv' \
    '4qUiTkFcLBrg2JB0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'PlatformTokenRefreshV3' test.out

#- 248 PublicGetInputValidations
$PYTHON -m $MODULE 'iam-public-get-input-validations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'PublicGetInputValidations' test.out

#- 249 PublicGetInputValidationByField
$PYTHON -m $MODULE 'iam-public-get-input-validation-by-field' \
    'WiCpVBwvAffJ3btt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'PublicGetInputValidationByField' test.out

#- 250 PublicGetCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction-v3' \
    '0PpQY3Pnnic80yEO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'PublicGetCountryAgeRestrictionV3' test.out

#- 251 PublicGetConfigValueV3
$PYTHON -m $MODULE 'iam-public-get-config-value-v3' \
    '8dL6Jh10XMUGeDav' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'PublicGetConfigValueV3' test.out

#- 252 PublicGetCountryListV3
$PYTHON -m $MODULE 'iam-public-get-country-list-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'PublicGetCountryListV3' test.out

#- 253 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-public-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 254 RetrieveActiveOIDCClientsPublicV3
$PYTHON -m $MODULE 'iam-retrieve-active-oidc-clients-public-v3' \
    'CKradJmJFUsU418v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 255 PublicListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["AlmfGg9NO1Z2DvnA", "xH3pS3jyCkGKltBN", "E2UbhNtH3yYg4Qnn"]}' \
    '2uhdw7C9Bx1LQOTC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 256 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    'bAPLC3iqrkyJFOVa' \
    'ewFcv9h31YxuZnoS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'PublicGetUserByPlatformUserIDV3' test.out

#- 257 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    'esWpLUHjGaIcZN28' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'PublicGetAsyncStatus' test.out

#- 258 PublicSearchUserV3
$PYTHON -m $MODULE 'iam-public-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'PublicSearchUserV3' test.out

#- 259 PublicCreateUserV3
$PYTHON -m $MODULE 'iam-public-create-user-v3' \
    '{"PasswordMD5Sum": "gH4Cd9xTdt2K1Czp", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "slNGnLYUYR0yOvJh", "policyId": "UjzcMtwINUlrhIpn", "policyVersionId": "lam2EefVopbpPhsa"}, {"isAccepted": false, "localizedPolicyVersionId": "yRyTdYBUljvBzvYN", "policyId": "EtfgBFikt18cQ677", "policyVersionId": "SotDEtU2xBSEQ8rB"}, {"isAccepted": false, "localizedPolicyVersionId": "eElQNESFLD8hCc9o", "policyId": "nSNjbQEqFGwnDG8k", "policyVersionId": "z4kvEv6tNjGRhrmR"}], "authType": "AxRGeIKGlCJmDXpj", "code": "yvLSHB1y3klHuAGn", "country": "idOyGuS0OG7ohiL2", "dateOfBirth": "943ClrNhEdxd24ZK", "displayName": "fvMf1T5FzYMf1jaC", "emailAddress": "gZosntPzP1vXXB92", "password": "q150WEIetOXMt37M", "reachMinimumAge": true, "uniqueDisplayName": "2Mu9ZGMWou1U0RVC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'PublicCreateUserV3' test.out

#- 260 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'f3gMWDAodCKqfqze' \
    'exHA70NgJTxjtzgO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'CheckUserAvailability' test.out

#- 261 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["7W3taRvJ6lKWJwHO", "65aOFDwpqy7XOU3D", "wglyMGNll4O8ELah"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'PublicBulkGetUsers' test.out

#- 262 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "cNJqRjepck1l0qxR", "languageTag": "yQ2pi7xuAufJakIP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'PublicSendRegistrationCode' test.out

#- 263 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "XOQznHZTj8oYfWOb", "emailAddress": "yNJKVSQsaCokoGyn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'PublicVerifyRegistrationCode' test.out

#- 264 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "p6xcqNKJnAhrSt96", "languageTag": "OaARAjHLGV3sNxS8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'PublicForgotPasswordV3' test.out

#- 265 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    'uLBZiVRYIyQLcslT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'GetAdminInvitationV3' test.out

#- 266 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"PasswordMD5Sum": "EqgVNG8AqktgvjwN", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "zOQOcAqBj0bXhOr9", "policyId": "OHt6zx1i2W3GY7td", "policyVersionId": "h8hHlQyMlgfkTsAT"}, {"isAccepted": false, "localizedPolicyVersionId": "y0aWrshpmb1C9Al7", "policyId": "eWrbNRE0xyYPUZHy", "policyVersionId": "LGQ52IjGpRJCUJps"}, {"isAccepted": false, "localizedPolicyVersionId": "w2EOq6BFjmN4OqKG", "policyId": "LRpNWzKZtZnxgywm", "policyVersionId": "r4CYNGm7Tk1mMyeN"}], "authType": "RsjQuDEgO3MEQNL6", "code": "ijLRvQOgoaBooTaw", "country": "HLMxhx9nC3o6pXU5", "dateOfBirth": "MDJLCB6WbXWIRpgj", "displayName": "ooaBVemsbkaXZQ6n", "emailAddress": "Tj9rZpkSntuOeaPA", "password": "yPeEGBepK1Ix4Swj", "reachMinimumAge": true, "uniqueDisplayName": "1Idud8bjYeBVMr7z"}' \
    'HYmRE4X36KUOdfEm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'CreateUserFromInvitationV3' test.out

#- 267 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "oIYwSxxAsfwDMivW", "country": "qHHGlnAnEu6EKYce", "dateOfBirth": "TEqYudHlA4AxeEIf", "displayName": "UxJ2xMSNNBxCeN3p", "languageTag": "Gn46fGvodt413MRd", "uniqueDisplayName": "G8qAPiANv2Ar8yXV", "userName": "6qf6v5SgcJPZPUh2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'UpdateUserV3' test.out

#- 268 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "nHQwpWi8HZ6C0VJ0", "country": "fK2m6lQ5Ao8TITYi", "dateOfBirth": "HSR2SEJh1YDedZdN", "displayName": "qkXPWZfT8ZfdKp9q", "languageTag": "4nXuK0tJAYror2Xd", "uniqueDisplayName": "tSCG7ZExOoIpWzac", "userName": "OvwUsnIbQM3ZAtyE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'PublicPartialUpdateUserV3' test.out

#- 269 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "WKWoZRUL7wS3HaMT", "emailAddress": "XAX6y0STTN2sBEij", "languageTag": "jjpvSzGkED0oweFY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'PublicSendVerificationCodeV3' test.out

#- 270 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "DBPyd1jJBxbrbuFa", "contactType": "y9PXgEQS4871QSms", "languageTag": "spn5sNfifK65tvaH", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'PublicUserVerificationV3' test.out

#- 271 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "8LAiIzuo321Ll90I", "country": "BFsSb3FsV2PnCs9R", "dateOfBirth": "0D5jZEwxcow6L7c3", "displayName": "COEP4AZx70uwV4Xg", "emailAddress": "vGTMHkXeEwuFJf7t", "password": "bq5KikDE7hWvT5bz", "uniqueDisplayName": "cfzIpL2pWB4Xsdrx", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'PublicUpgradeHeadlessAccountV3' test.out

#- 272 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "6kEAmKGNEmFPcUAL", "password": "NziO9Bz2wx4kDAm8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'PublicVerifyHeadlessAccountV3' test.out

#- 273 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "XIleiujtv2NdQTYo", "newPassword": "HZogW8lBvniHdARa", "oldPassword": "dfSoctA3GYO94ZOo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'PublicUpdatePasswordV3' test.out

#- 274 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    '94gS5DHLB65fxQ06' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'PublicCreateJusticeUser' test.out

#- 275 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'GwTmobiBnfrnq9kO' \
    'FBWhUTPiKR3qcbHL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'PublicPlatformLinkV3' test.out

#- 276 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "GplYsS3jsRZffCd0"}' \
    '0VrgPuNtOv3jbhGB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'PublicPlatformUnlinkV3' test.out

#- 277 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'uW8KcyPMfDWSEEpK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'PublicPlatformUnlinkAllV3' test.out

#- 278 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    'oJlmhMQUCx70QjYb' \
    'zemOTURzzAOIBarB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'PublicForcePlatformLinkV3' test.out

#- 279 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    '7kcer5SvPLeQZIpK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'PublicWebLinkPlatform' test.out

#- 280 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'FXgnsxx3c2bUsO7F' \
    'P8RmOstZAGDgiVsV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'PublicWebLinkPlatformEstablish' test.out

#- 281 PublicProcessWebLinkPlatformV3
$PYTHON -m $MODULE 'iam-public-process-web-link-platform-v3' \
    '2OttwJaMxPDIJ5hF' \
    'QHumFvPKqupHj72T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'PublicProcessWebLinkPlatformV3' test.out

#- 282 PublicGetUsersPlatformInfosV3
$PYTHON -m $MODULE 'iam-public-get-users-platform-infos-v3' \
    '{"platformId": "lLs964iABOgTKtna", "userIds": ["A7O35Iaytd9CsAMT", "ZC37xPXxnfggnZ3E", "Zp6wSAufwYirs9lw"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'PublicGetUsersPlatformInfosV3' test.out

#- 283 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "vPKd925u3fFLV0Ye", "emailAddress": "MrVaYSTRYGFzgLZ7", "newPassword": "gEypQf2Pn9A4gcbD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'ResetPasswordV3' test.out

#- 284 PublicGetUserByUserIdV3
eval_tap 0 284 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 285 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    'J0LmdnOPkIT1C6KG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'PublicGetUserBanHistoryV3' test.out

#- 286 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'TpA7JZ6xullPROSf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 287 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    'iW9zcxmgNfTHu3vk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'PublicGetUserInformationV3' test.out

#- 288 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'Zt9FgWckjNpHhM2Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'PublicGetUserLoginHistoriesV3' test.out

#- 289 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'Xp4N0ROmUCTrS7Gi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'PublicGetUserPlatformAccountsV3' test.out

#- 290 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    '9Iigk9vamO7Q2WQw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'PublicListJusticePlatformAccountsV3' test.out

#- 291 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "SWqSs05rjISy4B0X", "platformUserId": "9AJdkT7UYCV8agvw"}' \
    'OI2LlOQNRN132Rdg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'PublicLinkPlatformAccount' test.out

#- 292 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["wMXv9olKpRyWQim3", "qlART9mPPmYUvlkB", "GPJFaFzkABC8zWMc"], "requestId": "YW5iRrw32FRg8y4r"}' \
    'Ouj7J6ijJbcycXmB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'PublicForceLinkPlatformWithProgression' test.out

#- 293 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    'crJLb7labyotifVk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'PublicGetPublisherUserV3' test.out

#- 294 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    '9KyqceGv0CEDTVSj' \
    'INYeKLowG7UQB9pX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 295 PublicGetRolesV3
$PYTHON -m $MODULE 'iam-public-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'PublicGetRolesV3' test.out

#- 296 PublicGetRoleV3
$PYTHON -m $MODULE 'iam-public-get-role-v3' \
    'zuCK5qd2m8A5axix' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'PublicGetRoleV3' test.out

#- 297 PublicGetMyUserV3
$PYTHON -m $MODULE 'iam-public-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'PublicGetMyUserV3' test.out

#- 298 PublicGetLinkHeadlessAccountToMyAccountConflictV3
$PYTHON -m $MODULE 'iam-public-get-link-headless-account-to-my-account-conflict-v3' \
    'm9X9TXNhN8y1PVri' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 299 LinkHeadlessAccountToMyAccountV3
$PYTHON -m $MODULE 'iam-link-headless-account-to-my-account-v3' \
    '{"chosenNamespaces": ["Iyv9kjuiAGiXx47e", "tMikLFggYDc2FMbz", "ZoeKagnKf2Yifzvr"], "oneTimeLinkCode": "9OqTsInGzHFpFXYJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'LinkHeadlessAccountToMyAccountV3' test.out

#- 300 PublicSendVerificationLinkV3
$PYTHON -m $MODULE 'iam-public-send-verification-link-v3' \
    '{"languageTag": "tHtqwoIwQBeIALI8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'PublicSendVerificationLinkV3' test.out

#- 301 PublicVerifyUserByLinkV3
$PYTHON -m $MODULE 'iam-public-verify-user-by-link-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'PublicVerifyUserByLinkV3' test.out

#- 302 PlatformAuthenticateSAMLV3Handler
$PYTHON -m $MODULE 'iam-platform-authenticate-samlv3-handler' \
    'JNIII4jrzrPsuMzi' \
    'NM8AB7RRxiZH3ngn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'PlatformAuthenticateSAMLV3Handler' test.out

#- 303 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'itURdMjZLYCaeklQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'LoginSSOClient' test.out

#- 304 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'cFY1QIk1h5EKvMGd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'LogoutSSOClient' test.out

#- 305 RequestTargetTokenResponseV3
$PYTHON -m $MODULE 'iam-request-target-token-response-v3' \
    '6hQ2mHjmLu4oFlRe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'RequestTargetTokenResponseV3' test.out

#- 306 AdminListInvitationHistoriesV4
$PYTHON -m $MODULE 'iam-admin-list-invitation-histories-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'AdminListInvitationHistoriesV4' test.out

#- 307 AdminGetDevicesByUserV4
$PYTHON -m $MODULE 'iam-admin-get-devices-by-user-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'AdminGetDevicesByUserV4' test.out

#- 308 AdminGetBannedDevicesV4
$PYTHON -m $MODULE 'iam-admin-get-banned-devices-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'AdminGetBannedDevicesV4' test.out

#- 309 AdminGetUserDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-user-device-bans-v4' \
    'Hy0JyZv7honqeiGT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'AdminGetUserDeviceBansV4' test.out

#- 310 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "TqpgVsY1kPNdJiJX", "deviceId": "B3yjNUPIfvoXRO0C", "deviceType": "kW1ZcgUSbbnffBWR", "enabled": false, "endDate": "UV0jsjAyVgxS54NN", "ext": {"s3XdhMbQX9D1znEW": {}, "w9p7g4UsQCTKDh5n": {}, "9yc34xF8qFllM1LT": {}}, "reason": "rl4MP3Nl4T3ujvV7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'AdminBanDeviceV4' test.out

#- 311 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    'W6ADLtn7oInn1Bz3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'AdminGetDeviceBanV4' test.out

#- 312 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": true}' \
    'cHrLYfftad99JDcn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'AdminUpdateDeviceBanV4' test.out

#- 313 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    'n7f2d8SOWP2dw6Uy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'AdminGenerateReportV4' test.out

#- 314 AdminGetDeviceTypesV4
$PYTHON -m $MODULE 'iam-admin-get-device-types-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'AdminGetDeviceTypesV4' test.out

#- 315 AdminGetDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-device-bans-v4' \
    '88WpQalG38VOo82a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'AdminGetDeviceBansV4' test.out

#- 316 AdminDecryptDeviceV4
$PYTHON -m $MODULE 'iam-admin-decrypt-device-v4' \
    'LD9jUjuDITjifWRb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'AdminDecryptDeviceV4' test.out

#- 317 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    'mtK7MTxcCWnMiCLs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'AdminUnbanDeviceV4' test.out

#- 318 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    'jroKHPApA8GsGwyo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'AdminGetUsersByDeviceV4' test.out

#- 319 AdminGetNamespaceInvitationHistoryV4
$PYTHON -m $MODULE 'iam-admin-get-namespace-invitation-history-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'AdminGetNamespaceInvitationHistoryV4' test.out

#- 320 AdminGetNamespaceUserInvitationHistoryV4
$PYTHON -m $MODULE 'iam-admin-get-namespace-user-invitation-history-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 321 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"count": 5}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'AdminCreateTestUsersV4' test.out

#- 322 AdminCreateUserV4
$PYTHON -m $MODULE 'iam-admin-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "dzTL8azKCCNBZpwR", "policyId": "FNYxx2dr6DDuDHXc", "policyVersionId": "fvXPXJURX3XwhOlg"}, {"isAccepted": false, "localizedPolicyVersionId": "YVvEcEm53BYMBacQ", "policyId": "BIuDVs7U0AJtWPRt", "policyVersionId": "eszMTd0R5Fsrf9xb"}, {"isAccepted": false, "localizedPolicyVersionId": "FfdvKQVgPQw3MVXe", "policyId": "4xBPDWHRHCCVDBRj", "policyVersionId": "PUQWYVxGQVFJlDDJ"}], "authType": "EMAILPASSWD", "code": "z4Pb5jyGID39Ung1", "country": "D57FjYKlJiRIvhej", "dateOfBirth": "77OSPwdzMSmrSvQd", "displayName": "sAdTUGpd8KFrXKFA", "emailAddress": "2gdjQCYoE8b0CZet", "password": "LfpFNyp7375rhOmR", "passwordMD5Sum": "4zFjoJZVKZjOD2eP", "reachMinimumAge": false, "uniqueDisplayName": "AKYjJMVnYj2yKqav", "username": "WpydepM3ap069B9O"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'AdminCreateUserV4' test.out

#- 323 AdminBulkUpdateUserAccountTypeV4
$PYTHON -m $MODULE 'iam-admin-bulk-update-user-account-type-v4' \
    '{"testAccount": false, "userIds": ["FAq8oebnS4Y2zkGY", "Tr9yJIveX52r6Inl", "9VTJB9Al3mn2DsHD"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 324 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["HzSVJzhU5Z44zgZ1", "fieLdl3Y82DOj5kP", "uNRZZaUccuBYep9n"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'AdminBulkCheckValidUserIDV4' test.out

#- 325 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "7b17fsblalJrwQiU", "country": "3DD0xZFH1fHFLSr0", "dateOfBirth": "O4rEZTbFDj2L2Mcv", "displayName": "CrrR7h9uKLXDaRf3", "languageTag": "pxKtJbRY5luCwKrt", "skipLoginQueue": true, "uniqueDisplayName": "wn3yVrRCh6j7rpv8", "userName": "K8fBAeRa1R6ksxLY"}' \
    'GkOLgReff5IHxLJI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'AdminUpdateUserV4' test.out

#- 326 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "emNHbzgAFjtjC7su", "emailAddress": "vgIUkB2PAGJqOrkd"}' \
    'lZB246OY0dPVMd2W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'AdminUpdateUserEmailAddressV4' test.out

#- 327 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    'DUVEQTpfyAIoF7qs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'AdminDisableUserMFAV4' test.out

#- 328 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'ANBbEKQrgocpjGNe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'AdminListUserRolesV4' test.out

#- 329 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["nRlDORLvP7ynTuXz", "afCqlMrrVIehVCf3", "AwIzUdQ6sTrUg7Z0"], "roleId": "SLrZraV3NLBUSrFn"}' \
    'zE6yR1wLTgjsnB2L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'AdminUpdateUserRoleV4' test.out

#- 330 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["FVrZRrOntm2KjbfC", "OuW3dBmFwUO7Y0xh", "MLwxgRpTSUppvO3Q"], "roleId": "G68KeD7QJQEEVDAg"}' \
    '045BvtPd7ibBA3sd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'AdminAddUserRoleV4' test.out

#- 331 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["51mDooH53vibq3Qc", "rtt8L5dIebsw7Ejk", "MnJSziEA43WqIMJd"], "roleId": "rqHIsJ98WRjqYieX"}' \
    'RthQZvzRi7pqpajY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'AdminRemoveUserRoleV4' test.out

#- 332 AdminGetRolesV4
$PYTHON -m $MODULE 'iam-admin-get-roles-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'AdminGetRolesV4' test.out

#- 333 AdminCreateRoleV4
$PYTHON -m $MODULE 'iam-admin-create-role-v4' \
    '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "JKg9y86BgnBQtm5A"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'AdminCreateRoleV4' test.out

#- 334 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'ilVhASFlYMVJtE2d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'AdminGetRoleV4' test.out

#- 335 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'AeC7pF73y9eALKWi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'AdminDeleteRoleV4' test.out

#- 336 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "7bAuUJ7Fxg5LijlQ"}' \
    'TVq8Bh1p0NCKWNkL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'AdminUpdateRoleV4' test.out

#- 337 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 96, "resource": "VRUu5VbjwPa9rYgH", "schedAction": 1, "schedCron": "trwnjTJVDlh112by", "schedRange": ["TYCDBnAvf8JpFuJS", "ZistM75544PDlVK8", "taScpV0NtCxDDz5r"]}, {"action": 48, "resource": "0qhZath4b4HtwEYX", "schedAction": 53, "schedCron": "5pJNTX1sDjSWiSXs", "schedRange": ["V5rJ8eZXZ1TLMZnN", "L3DQK45IAtbyUDDS", "JSV8pzl1lfIR7jne"]}, {"action": 40, "resource": "Yb2iHHVN0ZBgvrig", "schedAction": 21, "schedCron": "UT4fRbawD5yOvjgO", "schedRange": ["opQfbXmtF0WFH7F2", "InhxtynUjuBCxkb2", "oF99xI1VVtVrVT6H"]}]}' \
    'n8B2d1hZUnoQwg5u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'AdminUpdateRolePermissionsV4' test.out

#- 338 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 35, "resource": "DEjxqhgYqmMqIdlR", "schedAction": 36, "schedCron": "ZPfuelAiZBZcQGHH", "schedRange": ["GI7csI8ecZSvzXYO", "ytshBcKQytQagui6", "lsKF28n7UC7y1MKY"]}, {"action": 98, "resource": "OgsAj2Rmf1DXvAIk", "schedAction": 51, "schedCron": "YgEZspOJ0NiZl6OV", "schedRange": ["LxKtkBpaCG8Nu5m4", "ctwUNV8ncebaJ0DC", "uIeEStt3PbyctX7H"]}, {"action": 58, "resource": "ALA8LlV2sccbVr6H", "schedAction": 91, "schedCron": "I2AdlqiyEJIQcbZJ", "schedRange": ["J3AhkrMi0bnppEJF", "ISze88rGEr3cilJW", "haW6jNsM94E2FQb6"]}]}' \
    'S0VmaTR7E3mkDSQk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'AdminAddRolePermissionsV4' test.out

#- 339 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["gVMhLbM6H1MnNSKd", "0KStITvGQtzwjGtG", "Tr238G8Aevk3k147"]' \
    '82W2oNo3X4m6wms9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'AdminDeleteRolePermissionsV4' test.out

#- 340 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'SPaHlqtDPry2vMON' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'AdminListAssignedUsersV4' test.out

#- 341 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["7sdhlilfpDT8o2iF", "rYtGfCZCcrvsV2I4", "X26p21iDBZGJ8ZML"], "namespace": "wPJ871nV5ALS7cne", "userId": "NLItUJgh74tyxkTR"}' \
    '8ZCVJtkxjBJrNeQR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'AdminAssignUserToRoleV4' test.out

#- 342 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "sqkkKK2qxqzy4KSA", "userId": "5UtSXWjANSWIT9TL"}' \
    'nuMLNJAEk3A6A6rY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'AdminRevokeUserFromRoleV4' test.out

#- 343 AdminInviteUserNewV4
$PYTHON -m $MODULE 'iam-admin-invite-user-new-v4' \
    '{"assignedNamespaces": ["iIu8eLdWykhBxLFn", "KnSYC9yyBYepIqtr", "ikdAbdOT6iSRdEg8"], "emailAddresses": ["NYuc4q5sJVzaKGDO", "ULJbjHphqjHGGAhf", "WaXqkA5fuVYOsMFo"], "isAdmin": true, "isNewStudio": true, "namespace": "EeH43wYuLnI7cTzI", "roleId": "UERPlQI99hMc4Nbi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'AdminInviteUserNewV4' test.out

#- 344 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "JWP5r9EwbIGMGJ70", "country": "P9IqAyNlZ2OwFSeb", "dateOfBirth": "BkXkaxtY97TMJH8b", "displayName": "O4GDHT6ZaUUkvlTK", "languageTag": "AhrxqHw7f813qNjz", "skipLoginQueue": false, "uniqueDisplayName": "FJZGnNa5yOM68r4W", "userName": "1fDZL80oPQ0s7QhC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'AdminUpdateMyUserV4' test.out

#- 345 AdminDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'AdminDisableMyAuthenticatorV4' test.out

#- 346 AdminEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'AdminEnableMyAuthenticatorV4' test.out

#- 347 AdminGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-admin-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 348 AdminGetMyBackupCodesV4
eval_tap 0 348 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 349 AdminGenerateMyBackupCodesV4
eval_tap 0 349 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 350 AdminDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'AdminDisableMyBackupCodesV4' test.out

#- 351 AdminDownloadMyBackupCodesV4
eval_tap 0 351 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 352 AdminEnableMyBackupCodesV4
eval_tap 0 352 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 353 AdminGetBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-get-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'AdminGetBackupCodesV4' test.out

#- 354 AdminGenerateBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-generate-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'AdminGenerateBackupCodesV4' test.out

#- 355 AdminEnableBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-enable-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'AdminEnableBackupCodesV4' test.out

#- 356 AdminSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-admin-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'AdminSendMyMFAEmailCodeV4' test.out

#- 357 AdminDisableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-disable-my-email-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'AdminDisableMyEmailV4' test.out

#- 358 AdminEnableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-enable-my-email-v4' \
    '8hgSgytNEojK3YgW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'AdminEnableMyEmailV4' test.out

#- 359 AdminGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-admin-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'AdminGetMyEnabledFactorsV4' test.out

#- 360 AdminMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-admin-make-factor-my-default-v4' \
    'H9l7rv6XUSINd4ke' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'AdminMakeFactorMyDefaultV4' test.out

#- 361 AdminInviteUserV4
eval_tap 0 361 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 362 AuthenticationWithPlatformLinkV4
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v4' \
    'Ceiw7P2PtUrPawQP' \
    'aHARrhjbEU5n0PNu' \
    'FyKW95dJsGoBIjCK' \
    'lD3axSivItV1txLI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'AuthenticationWithPlatformLinkV4' test.out

#- 363 GenerateTokenByNewHeadlessAccountV4
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v4' \
    'NmdHTGLtX6TN5ctY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 364 Verify2faCodeV4
$PYTHON -m $MODULE 'iam-verify2fa-code-v4' \
    'X1sZnYF3hWmCCIrP' \
    '0lJXexseo2e6BCNJ' \
    'TTRIHDKdVfOUr14y' \
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'Verify2faCodeV4' test.out

#- 365 PlatformTokenGrantV4
$PYTHON -m $MODULE 'iam-platform-token-grant-v4' \
    'H00n8MsRjaB8iurB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'PlatformTokenGrantV4' test.out

#- 366 SimultaneousLoginV4
$PYTHON -m $MODULE 'iam-simultaneous-login-v4' \
    'steam' \
    'W5jSJi0seeGJIqna' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'SimultaneousLoginV4' test.out

#- 367 TokenGrantV4
$PYTHON -m $MODULE 'iam-token-grant-v4' \
    'password' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'TokenGrantV4' test.out

#- 368 RequestTargetTokenResponseV4
$PYTHON -m $MODULE 'iam-request-target-token-response-v4' \
    '8EQXsMbYi1yEI9yc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'RequestTargetTokenResponseV4' test.out

#- 369 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "Euusf0eOzoSyKttY", "policyId": "wUUlMRG8vO0OSsJm", "policyVersionId": "hOJDUyyag9jBDJFJ"}, {"isAccepted": true, "localizedPolicyVersionId": "OEiWJ8cLrryS5a6A", "policyId": "4tL8YKMrUBL6dDTV", "policyVersionId": "wPIt1hrg2mhbI0ND"}, {"isAccepted": true, "localizedPolicyVersionId": "2cVjFp1CeCEfaV4Z", "policyId": "GGwbqOB4mD3E7AFH", "policyVersionId": "qlTTkL8cmpA0sZ0t"}], "authType": "EMAILPASSWD", "country": "9X4zFOvdRTpGmBUj", "dateOfBirth": "fEU9vL8H96tuVfQw", "displayName": "YIqDWqbPmwQw8J7n", "emailAddress": "a1POTXhXLRU5prAd", "password": "qnnPOiTVzAeQq6rn", "passwordMD5Sum": "WJoTpYoe2uHaWnO9", "uniqueDisplayName": "8YwqHZnEDkfmNbDT", "username": "MGgET2yS6C8a8L0v", "verified": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'PublicCreateTestUserV4' test.out

#- 370 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "0P9r5f6fdmyi4kQn", "policyId": "OFbBtvBw81hUgtON", "policyVersionId": "CIoZ2rkomSj52mAI"}, {"isAccepted": true, "localizedPolicyVersionId": "o6EW9QhzU8FwQtZp", "policyId": "fUoyoiUjmqOyQ7am", "policyVersionId": "mFgHprdM9viFWmez"}, {"isAccepted": true, "localizedPolicyVersionId": "hVy48YYg1AkRh3Nm", "policyId": "bRhMxKeIgwq1NZmx", "policyVersionId": "a0ghRG020QpWTNKs"}], "authType": "EMAILPASSWD", "code": "yK8EU8JYc00PA2ef", "country": "1jFeqQ8mBpTuvLTJ", "dateOfBirth": "UzwXJFaWW3JVdYpf", "displayName": "HOYoLva2c4JscEQf", "emailAddress": "BFZXcSXpU81S5H9X", "password": "sZyvZOFJ5RrFZYcw", "passwordMD5Sum": "fQ1Q2BbcjSpv6Nt1", "reachMinimumAge": false, "uniqueDisplayName": "Bb01VFFhO5FcdTvI", "username": "DQI2uIi2SNZKqlJZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'PublicCreateUserV4' test.out

#- 371 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "S9iGNElTpMlvRDZS", "policyId": "IuM0OXOHPluvsry8", "policyVersionId": "AKSZxOhUhl3Y0Esh"}, {"isAccepted": false, "localizedPolicyVersionId": "rWP4nrJ5fNESRVGe", "policyId": "swvkzLNIITUJGj5F", "policyVersionId": "YaSgewLWHcBxz5Lp"}, {"isAccepted": false, "localizedPolicyVersionId": "oHpV8E1xQZLa7Kw7", "policyId": "7UpCxNyx1jjdxNeP", "policyVersionId": "PAJ6Z9UzqIhZZiK0"}], "authType": "EMAILPASSWD", "code": "EG6C9w4lVRNOF1Bg", "country": "6OHZzvdZHoIm4tKN", "dateOfBirth": "hPjNIQGFxGwgnSiZ", "displayName": "tChE0uof77AAPI5t", "emailAddress": "dPeFz9pGYsLNEGrf", "password": "y9qHKufJfk0MeG3q", "passwordMD5Sum": "YJr6PuCVK9WmDAdp", "reachMinimumAge": false, "uniqueDisplayName": "VTVsj9pDiyybXY4v", "username": "7JRFMRaeIaQuPWPl"}' \
    'kxeotrNakKGvOSvp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'CreateUserFromInvitationV4' test.out

#- 372 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "mZZdlNXdx2kWmSqo", "country": "dNZgfQyDVVkkqiMi", "dateOfBirth": "Rf2yCyM0Tp5GJHHb", "displayName": "sLJ73mCPhhmUyIwg", "languageTag": "QS9kVFUbeTeB9Kgn", "uniqueDisplayName": "FZQ9lVMNyCiytnfM", "userName": "oO1I3KISTbn4yEa2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'PublicUpdateUserV4' test.out

#- 373 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "AaBRalz5HEm4Gant", "emailAddress": "6aqjKzWDAauqLKar"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'PublicUpdateUserEmailAddressV4' test.out

#- 374 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "cLQRQtC927GneBM8", "country": "LvzgyIVzGFBLJ5vb", "dateOfBirth": "C9NfLTFJGOzAIAqp", "displayName": "mkDdFSs4s7u1VUuL", "emailAddress": "menyxTQVkEg5wouU", "password": "Ka35m8oH9zCfw7mC", "reachMinimumAge": false, "uniqueDisplayName": "TvLoL0wwHoRMNexB", "username": "Oron8wIdUbp7xVMK", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 375 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "ZMcVFcrixULzSeTn", "password": "UWGxxfnMIDSCPr1m", "username": "1Fg6tc250c2okDTe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'PublicUpgradeHeadlessAccountV4' test.out

#- 376 PublicDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'PublicDisableMyAuthenticatorV4' test.out

#- 377 PublicEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'PublicEnableMyAuthenticatorV4' test.out

#- 378 PublicGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-public-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 379 PublicGetMyBackupCodesV4
eval_tap 0 379 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 380 PublicGenerateMyBackupCodesV4
eval_tap 0 380 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 381 PublicDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 381 'PublicDisableMyBackupCodesV4' test.out

#- 382 PublicDownloadMyBackupCodesV4
eval_tap 0 382 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 383 PublicEnableMyBackupCodesV4
eval_tap 0 383 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 384 PublicGetBackupCodesV4
$PYTHON -m $MODULE 'iam-public-get-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'PublicGetBackupCodesV4' test.out

#- 385 PublicGenerateBackupCodesV4
$PYTHON -m $MODULE 'iam-public-generate-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'PublicGenerateBackupCodesV4' test.out

#- 386 PublicEnableBackupCodesV4
$PYTHON -m $MODULE 'iam-public-enable-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'PublicEnableBackupCodesV4' test.out

#- 387 PublicRemoveTrustedDeviceV4
$PYTHON -m $MODULE 'iam-public-remove-trusted-device-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 387 'PublicRemoveTrustedDeviceV4' test.out

#- 388 PublicSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-public-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 388 'PublicSendMyMFAEmailCodeV4' test.out

#- 389 PublicDisableMyEmailV4
$PYTHON -m $MODULE 'iam-public-disable-my-email-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 389 'PublicDisableMyEmailV4' test.out

#- 390 PublicEnableMyEmailV4
$PYTHON -m $MODULE 'iam-public-enable-my-email-v4' \
    'm6o62xFY6TNqoLFF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'PublicEnableMyEmailV4' test.out

#- 391 PublicGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-public-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 391 'PublicGetMyEnabledFactorsV4' test.out

#- 392 PublicMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-public-make-factor-my-default-v4' \
    'S4wB6Um7ir0n6O3v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 392 'PublicMakeFactorMyDefaultV4' test.out

#- 393 PublicGetUserPublicInfoByUserIdV4
$PYTHON -m $MODULE 'iam-public-get-user-public-info-by-user-id-v4' \
    'bYVjrcErgoApAxyD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 393 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 394 PublicInviteUserV4
$PYTHON -m $MODULE 'iam-public-invite-user-v4' \
    '{"additionalData": "nHjAx7rZTvew0WVD", "emailAddress": "SMNr23LV7xZEEv7O", "namespace": "1lwxVTRll0GIEUJt", "namespaceDisplayName": "MC8NyV2HLHZT3oYJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 394 'PublicInviteUserV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
