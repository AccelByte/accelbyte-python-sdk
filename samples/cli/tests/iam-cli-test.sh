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
iam-add-third-party-login-platform-credential-v3 '{"ACSURL": "w157g00jr9b8MuYm", "AWSCognitoRegion": "meKTmBNvGYxEQdf3", "AWSCognitoUserPool": "ewoGGoY7xmFNAmjD", "AllowedClients": ["DCvs78mcMdiS76YA", "pGJ9ufwLYkqIgLuZ", "S6hsQryiEtOAbpeU"], "AppId": "Nf26UqkCfgCUYBn2", "AuthorizationEndpoint": "xaOBdPF0JmX8qwU1", "ClientId": "cTuHHPB5S3DvPRCz", "Environment": "BrVUxmDOj3cvRFaT", "FederationMetadataURL": "C11W0TGTCm4fZWuk", "GenericOauthFlow": true, "IsActive": false, "Issuer": "MvczgEpzZ3Fbtxfh", "JWKSEndpoint": "cRC7IVYa6iZ5uFRY", "KeyID": "Nn3SHiWxF0YbuU5a", "LogoURL": "r5qTLWUCy0Afgc05", "NetflixCertificates": {"encryptedPrivateKey": "0XIZRW491e94mQjV", "encryptedPrivateKeyName": "OOBnIWhunElqZUod", "publicCertificate": "p3IhtCSHy1ei1fIr", "publicCertificateName": "PvfHnRN06EjRwEQl", "rootCertificate": "NapJRfk4f9Zcw1pE", "rootCertificateName": "HAyNFxcVTKuAQTGh"}, "OrganizationId": "5BxjWOozGoDtsUuY", "PlatformName": "o5p8ED5QZAufwNa8", "RedirectUri": "lzfjv9oYMXMjlVHY", "RegisteredDomains": [{"affectedClientIDs": ["1AHwF3vGoav7MK0P", "cLnEkcokKwcQ0baD", "T9OyJ2h23GUS2amU"], "domain": "7syGlElXdEAOrVSn", "namespaces": ["LocLVVYamQc4wcG5", "nDBLJoJHbiQ5duE5", "p4cfs2E41cK8QTwi"], "roleId": "IAvxSvNDlmM5nQFM"}, {"affectedClientIDs": ["Gzs7fzjgyc44mEh9", "tRk8knYSV30lnroQ", "ehMDli6t9unQLYXx"], "domain": "m09wpGAbpEmDY9vL", "namespaces": ["h3u6EDsUmrV6kH4O", "otKwG3UC6XCnnZxF", "8CmQr17W65br34rB"], "roleId": "BN9tU6TDm5GloFSK"}, {"affectedClientIDs": ["WM1eym5ydC6p25xC", "WTqUOYZENJ1QHZQx", "PRXH7uxBJEECQE1l"], "domain": "i3Bg7Jxc9pUnZmvh", "namespaces": ["idwCkZwqjYLfTiCO", "1NDBvQvRPnAz4VzW", "0CpoBCbyJsF5IjF1"], "roleId": "c0W338HS6CBgVRyi"}], "Secret": "hYNZ84CVhziXV8Hw", "TeamID": "SmvcvcDKF19yVRaf", "TokenAuthenticationType": "CjOuSYht83AdvBaa", "TokenClaimsMapping": {"gTiRJ8daGTVX3Bb7": "jlz5IfHgKjI9mwJS", "rN8jkIykR2zbaI6P": "D7fEscShnGUGUtV9", "GJ279GDbLNwjm3FK": "0nnX2poMfZ1hDHtb"}, "TokenEndpoint": "h4HtMlFgvh2Dp2So", "UserInfoEndpoint": "iIPp1yvfAHS0VgLu", "UserInfoHTTPMethod": "11A3HTovFi4tPAGf", "scopes": ["leyCA6jEtcqsnzoV", "ILjkwW61duF87aUy", "rdt4XSpWBAetsanz"]}' 'qP8oxfrtbECD1CYP' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-credential-v3 'waiBAxfYL8Avt70Z' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-credential-v3 '{"ACSURL": "UT2fSk3LL0calqxE", "AWSCognitoRegion": "ewuGS469k2hG0WKt", "AWSCognitoUserPool": "4sUmanYxM0UHZVNY", "AllowedClients": ["zGMNIpWoSLkUrfuf", "4U3WeYeA9t2ENKKW", "rFtHIi1CMgKAOG5i"], "AppId": "DcCR5PbCvDLil8wj", "AuthorizationEndpoint": "9cKM3Ar6MF35hCER", "ClientId": "4nGmWGgTJfHlJl4t", "Environment": "HGa4XfZcd9CVnGqM", "FederationMetadataURL": "X9FieeEssWEUl07b", "GenericOauthFlow": false, "IsActive": true, "Issuer": "wntCVqiYOJf5KwMZ", "JWKSEndpoint": "QjzvjSozv6CTRDl0", "KeyID": "zp9CzHFwinkBNi4g", "LogoURL": "vqgl6TZ9TGVPmv34", "NetflixCertificates": {"encryptedPrivateKey": "h6T7EsufmfxKYB4L", "encryptedPrivateKeyName": "M6H6QXmpZ9X3fUSR", "publicCertificate": "1l9xLPBsmAUrD9L1", "publicCertificateName": "IiD6MlcEPhMDFzjH", "rootCertificate": "Z3sIhzOx2CXKlvIo", "rootCertificateName": "mU3pIxM9n8D2eLMe"}, "OrganizationId": "3lt9qfx2UDcgVE7L", "PlatformName": "9FK6e0MrPc4vtxk9", "RedirectUri": "hVKlG56HlzGr7Xjd", "RegisteredDomains": [{"affectedClientIDs": ["yRJunZPkp6ccIBnW", "yPw8mj7gyQ7XdIsz", "GRj46COPipH1MWVT"], "domain": "HG0qHJCWEfOJpZm9", "namespaces": ["yEYWNGMy2pgSGSUO", "K68eqGJtWf1Ybgg8", "rdwY9bmrvHmO07KN"], "roleId": "qX9LM2IwEsdOGBXB"}, {"affectedClientIDs": ["wnzDX8v3xgC1Ge9P", "dbTTAJ2Gp1r0sVZ6", "LJAOddIL2l3hPjND"], "domain": "Kv2LWfXqjr8fS79E", "namespaces": ["n3wYowBdkaZ3y6i3", "8XQjLDRqkpiFK5Bt", "iQ272Uo9UBJWodpd"], "roleId": "wsX1jorcyR0x3YiH"}, {"affectedClientIDs": ["F8ITGPRQBCgIs1Q2", "lzxl0yF5m77TTh4g", "Uoj8u2WRcLiEtzVl"], "domain": "nkflfn7pHY48F1dl", "namespaces": ["1q92m3iRlfnBAk0C", "wiAsR65yQ9ssuHdG", "mxncCEr0KcgeqzGb"], "roleId": "ruNB72HHMkjzyBB4"}], "Secret": "UFKiaoV0VOem2yqP", "TeamID": "sMFxKybPkbuS6x9c", "TokenAuthenticationType": "LJ1APnNlsa2bRBr2", "TokenClaimsMapping": {"7fVMWuAfDqLMR919": "IZPKOKiAVQXXOmqF", "HLbyXmgCNiXH8uen": "bC5CphgMweexsIAP", "5vHLjBJ9iqMcBL4B": "zhDUjhKPwbwcvQU5"}, "TokenEndpoint": "kG8bXGFmPAnOkDiJ", "UserInfoEndpoint": "q4xQye7HqnVK3YVe", "UserInfoHTTPMethod": "OWs9mfVQh3jLBtn9", "scopes": ["pxpE7BYtzB0B4Cxy", "QrUpIFvORxTi79Dp", "Sjb39ukcR6c2E2r3"]}' 'vk3IfAKEbqcNXSGC' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-domain-v3 '{"affectedClientIDs": ["CvNowNmdpcJgF88y", "SNq4Mj7mulP4tQ6R", "1OqKVOTniBgLsNhd"], "assignedNamespaces": ["gQ0JWZjNRSzOTqcV", "NX3ahvxw9gwwhTnj", "N6wKZGW4y3f0R9s2"], "domain": "kndhhZhwAiLsZs4p", "roleId": "mLDIQch4IjDq9aT3"}' 'qZyI0rYsWucAkXsV' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-domain-v3 '{"domain": "JbXi7eRZa7WwIc89"}' '5ImqK6tVsaUq3stU' --login_with_auth "Bearer foo"
iam-retrieve-sso-login-platform-credential 'h5J5Z9GiBiSAylX5' --login_with_auth "Bearer foo"
iam-add-sso-login-platform-credential '{"acsUrl": "cS0IeHpWCugmfOL0", "apiKey": "QQpxsuD8PGqku59e", "appId": "FJrOXyDYz9vMUOPG", "federationMetadataUrl": "0iHDT8QbF7gHPTPQ", "isActive": false, "redirectUri": "pNHBVfNOURcjY3YY", "secret": "T9oTynmfIuBWgJTN", "ssoUrl": "FfM8M0IW4oe8KDgy"}' '0xZfAcNg14Ws8TIP' --login_with_auth "Bearer foo"
iam-delete-sso-login-platform-credential-v3 '1LKiFQoLDvumfqrg' --login_with_auth "Bearer foo"
iam-update-sso-platform-credential '{"acsUrl": "Sfnx2h61X9dN1MGR", "apiKey": "XBJ6mVV7JS9qjNLw", "appId": "vI8JdiY3RRiLilmO", "federationMetadataUrl": "GF6dLLIeIVIjMcdl", "isActive": false, "redirectUri": "Q4X67tPZSTpPq3xj", "secret": "rElvvDgw0ag7kSWE", "ssoUrl": "0Hiqm5IuLryiEXqv"}' 'UWDjU1G0EVjVZw1T' --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["oLuPakQN1MpOs1RV", "Frcg2CXxepx78fvs", "yhE2BKtyTDSIM7mk"]}' 'mvZ7Cmsh4US8o4jf' --login_with_auth "Bearer foo"
iam-admin-get-user-by-platform-user-idv3 'MANPpmZDdMiCxmuC' 'CVuFjS1GC1d2b92B' --login_with_auth "Bearer foo"
iam-get-admin-users-by-role-id-v3 '4vEgj3HOmhcWm428' --login_with_auth "Bearer foo"
iam-admin-get-user-by-email-address-v3 --login_with_auth "Bearer foo"
iam-admin-bulk-update-users-v3 '{"updateRequest": {"skipLoginQueue": false}, "userIds": ["Pkz96vd80msqIm5b", "ufnBqrpLeqhwVhjn", "njKMEmtbiWsAQHbM"]}' --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-ban-v3 '{"bulkUserId": ["rKYi0Zxs5SWCqZXH", "LLa31oQf7BULnZDh", "utDM6BqguqD5xxGx"]}' --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-user-i-ds-v3 '{"userIds": ["BWtnTKUe2znsqPzP", "kwCBo2SwCUsTag4M", "LAo3m61P2xaNfmn8"]}' --login_with_auth "Bearer foo"
iam-admin-bulk-get-users-platform '{"userIds": ["Onb1a9gMz0F2UBRm", "MhAbUWmFhdYLWzMu", "v3zkUY0n0BAZkwbY"]}' --login_with_auth "Bearer foo"
iam-admin-invite-user-v3 '{"emailAddresses": ["kBLyO6A0FqfhnaB3", "YxKNdOTacCcJfIfX", "shuLUk5WdpxjZx5n"], "isAdmin": false, "namespace": "RpmKDebNkylbynkg", "roles": ["T9vayLLiizac7Ge6", "zKJdlt7rjF5RaJwv", "kWVco2LTo5ijlvDF"]}' --login_with_auth "Bearer foo"
iam-admin-query-third-platform-link-history-v3 '8qBWCQ9dLWYyS8zd' --login_with_auth "Bearer foo"
iam-admin-list-users-v3 --login_with_auth "Bearer foo"
iam-admin-search-user-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-by-email-address-v3 '{"listEmailAddressRequest": ["hMeBXH8x6HdVfZVD", "AiU6iJOF7JKZFNk2", "NKy59X8iOg2sVBiC"]}' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v3 'oeC5weXJl7PeiMH8' --login_with_auth "Bearer foo"
iam-admin-update-user-v3 '{"avatarUrl": "z8dVej8N2yv6VTnO", "country": "K7xAvM7tuL81lsR7", "dateOfBirth": "xxSVp3Gd2TK0HzYv", "displayName": "iTgYmx82JVBRLPZ6", "languageTag": "Iz8tne5dbguBF6Gs", "skipLoginQueue": true, "uniqueDisplayName": "jE2opXtdsJQeJ1to", "userName": "o0qvxphTLEEBGTtZ"}' 'yTjdKNKgYazujsmS' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v3 'mylT1YtxIq73aMb4' --login_with_auth "Bearer foo"
iam-admin-ban-user-v3 '{"ban": "8jISd97KORRhxSWL", "comment": "WLNfHRD3V15QaGGL", "endDate": "46LuxJF3sbeqWBdQ", "reason": "uWfgBAKx27MSBqab", "skipNotif": true}' 'XOGkkoMUZn1YXj5z' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-summary-v3 'FZeOCOR9NvBQZSJP' --login_with_auth "Bearer foo"
iam-admin-update-user-ban-v3 '{"enabled": false, "skipNotif": true}' 'DnEiyfa2LrnpZxNn' 'LRH36bqS2oFY76PU' --login_with_auth "Bearer foo"
iam-admin-send-verification-code-v3 '{"context": "1AziBOHEAj1cT3u6", "emailAddress": "Zc2FbrTFznTgDIwZ", "languageTag": "IRWf6T3by2kYSCdn"}' 'FKLc0xcTjqjdcEfU' --login_with_auth "Bearer foo"
iam-admin-verify-account-v3 '{"Code": "61OJYMnW49rWynp1", "ContactType": "ck1vT90C6o86cSRL", "LanguageTag": "9cgbUmulhe98oaFK", "validateOnly": false}' 'EWFw9GYxjiiOQAD7' --login_with_auth "Bearer foo"
iam-get-user-verification-code '7ci0vfWVZoRRMPi5' --login_with_auth "Bearer foo"
iam-admin-get-user-deletion-status-v3 '7HyKKz5nyI6ulKNK' --login_with_auth "Bearer foo"
iam-admin-update-user-deletion-status-v3 '{"deletionDate": 29, "enabled": false}' 'XI5nXJ7hLi6Hwewe' --login_with_auth "Bearer foo"
iam-admin-list-user-all-platform-accounts-distinct-v3 'Rmyo91dIn7QqXBDX' --login_with_auth "Bearer foo"
iam-admin-upgrade-headless-account-v3 '{"code": "JcrqKmXDwoEV6tCd", "country": "rxw1KOPhuvHuYrGW", "dateOfBirth": "DK41uMOC0mRvSoaG", "displayName": "k4ktF5wnJDg9Q3WX", "emailAddress": "iydCOInVolsr6CHm", "password": "j763vLwtYEJTSiXj", "uniqueDisplayName": "cY5ZPkv90lyKSTWL", "validateOnly": true}' 'tpaTxi7k489jRCn4' --login_with_auth "Bearer foo"
iam-admin-delete-user-information-v3 '8bvkCPfKofwXOIZZ' --login_with_auth "Bearer foo"
iam-admin-get-user-login-histories-v3 'QAJza84lKKmVOaTS' --login_with_auth "Bearer foo"
iam-admin-reset-password-v3 '{"languageTag": "6xBbNrSUAW2ak7IS", "newPassword": "DrBVg6NuDZvPb1ku", "oldPassword": "UfNfUDe4g7q6PHEa"}' 'qbzHvDDl1jiLw3XM' --login_with_auth "Bearer foo"
iam-admin-update-user-permission-v3 '{"Permissions": [{"Action": 67, "Resource": "H4GVU7Exlkmc4xYi", "SchedAction": 77, "SchedCron": "oaGouFu4hXONgUwJ", "SchedRange": ["nUpryDeRcpUvlrw2", "MwC1uuokpaIjL0Vx", "e5n9Lx3QcFo9gxOg"]}, {"Action": 43, "Resource": "bmm7jPdKLddfdsUq", "SchedAction": 19, "SchedCron": "KmCRRXBxlalCHtWl", "SchedRange": ["KxLpS8fLWoQ5nuJh", "atQPxR7dvBVC5zgO", "KLTDmHe8c1eJ9sde"]}, {"Action": 89, "Resource": "KBXuJBqK4QtEydPW", "SchedAction": 76, "SchedCron": "xBomQFPFWy5cwNPI", "SchedRange": ["6aFo0MVwDZCIXFNE", "L3uWVRz3V7YbJM3b", "NLWHAbCZixe2cQ6O"]}]}' '30lpzcBQMAEcNcJq' --login_with_auth "Bearer foo"
iam-admin-add-user-permissions-v3 '{"Permissions": [{"Action": 35, "Resource": "zl2kBuLFXIeCEKZU", "SchedAction": 94, "SchedCron": "H34B6wVd8ipcKDwQ", "SchedRange": ["eUWtjCC2UH6jzMO3", "AfmOS5mQNyRPZFPN", "P56l1AT6OLKmZhCZ"]}, {"Action": 49, "Resource": "emINdClpF7OvlBIE", "SchedAction": 14, "SchedCron": "JepUnEEgja2mIE2k", "SchedRange": ["LTnJwc5XmkCuL5W4", "tKt6G3j9LYdG7xVP", "qBqe9RDQMBSYAFLq"]}, {"Action": 31, "Resource": "BfDlrQQuAc10Djjw", "SchedAction": 78, "SchedCron": "ys7j6lxuU3u2HEG0", "SchedRange": ["qfKegvFTD1sPykS8", "YLmwtYgWGcA0h4G1", "LZ1HaX5UBMbsF44V"]}]}' 'TsLDRzdq22cbnyK3' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-bulk-v3 '[{"Action": 14, "Resource": "TVtzYEHUodh3iUfB"}, {"Action": 40, "Resource": "Pwc259HF9ejHaILQ"}, {"Action": 35, "Resource": "Ai4FEIu44u83ZLRx"}]' 'YlYqlpq03BGdIk4o' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-v3 '62' 'Elixc023dIvDiA0t' 'QWlHwBcTtztx3VAl' --login_with_auth "Bearer foo"
iam-admin-get-user-platform-accounts-v3 '6tXFbnATCzUOIzVc' --login_with_auth "Bearer foo"
iam-admin-get-list-justice-platform-accounts 'y9k3ie64Vnwa0ClG' --login_with_auth "Bearer foo"
iam-admin-get-user-mapping 'QJultJe32AiwKadE' 'oIVmprwPsa9YD92C' --login_with_auth "Bearer foo"
iam-admin-create-justice-user 'X0rITajpwHITGeHT' 'nqRbzBB9ZFgJbQ3F' --login_with_auth "Bearer foo"
iam-admin-link-platform-account '{"platformId": "j1umx4ItzkMJ7cud", "platformUserId": "f4r916GPrhn2etVI"}' 'QvRkQJAtDUH9tx60' --login_with_auth "Bearer foo"
iam-admin-platform-unlink-v3 '{"platformNamespace": "AehGz1ermJYXsYgL"}' '7TfyIlAwjTZdRZJJ' 'zWZwvTX2bamSCvX1' --login_with_auth "Bearer foo"
iam-admin-platform-unlink-all-v3 'nwvSWdDwD7WJHzgN' 'ZUKsI5y0mR3zMyTs' --login_with_auth "Bearer foo"
iam-admin-platform-link-v3 'ftKqnsIJctAdxyZV' 'KHA9DkaSOWgtg8yw' '8lHEbVDwBAqanOls' --login_with_auth "Bearer foo"
iam-admin-delete-user-linking-history-by-platform-idv3 'cRIWw82k5K5VTkdu' 'bkOFldMCQ98JH4n0' --login_with_auth "Bearer foo"
iam-admin-get-third-party-platform-token-link-status-v3 'JtgqzZv5kVu4S95m' 'j8YRvae4f4lhBPba' 'rbWEm8bVtZcfVCPd' --login_with_auth "Bearer foo"
iam-admin-get-user-single-platform-account 'Qhim9QKUAFTVYelI' 'lGJg9wdc8bihhWjf' --login_with_auth "Bearer foo"
iam-admin-delete-user-roles-v3 '["ZpfcFBUsnnDJlmD1", "iEokbUiYzCQh2iNT", "wtnohddMzMTQ9P7s"]' 'YLDWAJOA75K4BYJ2' --login_with_auth "Bearer foo"
iam-admin-save-user-role-v3 '[{"namespace": "fkqYJoF2FI3vyyqR", "roleId": "zc20O7FdsJP1G9ty"}, {"namespace": "BTfERXdvgD1Qf7Ot", "roleId": "2DkUt3yexZBRvxYn"}, {"namespace": "EBhXtAVxCd3meTrT", "roleId": "7cF9oVCh89wNOkKY"}]' 'ssVejcL3kR3hCGNg' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v3 'aJmuALlMQl9RLrth' 'bfp0VgweLlT2sY3S' --login_with_auth "Bearer foo"
iam-admin-delete-user-role-v3 'sTnDQY7kKU2u06Q4' 'veujxtyQENvJrBCq' --login_with_auth "Bearer foo"
iam-admin-update-user-status-v3 '{"enabled": false, "reason": "K8IxrSZuxWl0Je4f"}' 'JIyFAm3DQht4JwnP' --login_with_auth "Bearer foo"
iam-admin-trustly-update-user-identity '{"emailAddress": "S2urJqerobWMZGVL", "password": "5KLTxahWlS6XdBaK"}' 'SLCgOOPXM6XTUh2d' --login_with_auth "Bearer foo"
iam-admin-verify-user-without-verification-code-v3 'J90yqHDNacl4F9G6' --login_with_auth "Bearer foo"
iam-admin-update-client-secret-v3 '{"newSecret": "Dl5TFwBY6HKXAblk"}' 'T8VGgSH8MGZGwiVj' --login_with_auth "Bearer foo"
iam-admin-check-third-party-login-platform-availability-v3 '7eDTaka9ABfX1IBy' --login_with_auth "Bearer foo"
iam-admin-get-roles-v3 --login_with_auth "Bearer foo"
iam-admin-create-role-v3 '{"adminRole": true, "deletable": true, "isWildcard": false, "managers": [{"displayName": "OuPhGspRi3bhPQvB", "namespace": "BJI5JxytpcubN4AU", "userId": "UPFPscZsXeJOD4DM"}, {"displayName": "tqfIGiGJovgWSRxZ", "namespace": "8N4UQ2fg3V1o2x0h", "userId": "L5DuBDqMyIAzWze9"}, {"displayName": "4MEdJFAy2JTllJkR", "namespace": "GB8jqJEd6eqqsBVy", "userId": "ONV0JRtozI0jpliC"}], "members": [{"displayName": "FQ6WgJpGPigdc5Vy", "namespace": "C4qvWjVac1cQvSxg", "userId": "TNIUzxDgBlIbuzm7"}, {"displayName": "DzJ20NFRJIhFXR2d", "namespace": "YprPmbpuptECGd5c", "userId": "dXC2Sesc6y68whNB"}, {"displayName": "Yl9iCqfW6rqGOQny", "namespace": "4ij4ysYPonb59gQf", "userId": "fkNOmubxEJr2qEAu"}], "permissions": [{"action": 74, "resource": "M1vEx4gqDY6jwyKR", "schedAction": 47, "schedCron": "c1tP5TDuI5f6m4KC", "schedRange": ["07CnsZe32hqEcB1E", "xYMBb3ckvoaJYdMq", "Gegcg3eRvBZXN3cj"]}, {"action": 72, "resource": "5AVrtBQiDTcNnZa6", "schedAction": 95, "schedCron": "uxk6u6HXXdiC9ZDj", "schedRange": ["4E4mv12FNXypoOLl", "13j84P0KqirJ4PkM", "FtsnFfz8Ew0X8fBu"]}, {"action": 57, "resource": "PGaHP5SVPvRLiDi0", "schedAction": 26, "schedCron": "pBfBovqLwXBuT30E", "schedRange": ["YeRj17xGhaBKoUfi", "HjGmCyPsKCJTv1ic", "9gvagF2cSuztsJ5t"]}], "roleName": "j64gV7nmDk29mcjS"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v3 'uz9vbNStqPtQmQN6' --login_with_auth "Bearer foo"
iam-admin-delete-role-v3 'eKAGiZFCftT0RWEC' --login_with_auth "Bearer foo"
iam-admin-update-role-v3 '{"deletable": false, "isWildcard": false, "roleName": "jWYrnulxcCKAru8p"}' 'OaAVLDB4k3Jwkdax' --login_with_auth "Bearer foo"
iam-admin-get-role-admin-status-v3 'R7GJpYmuYCPG181q' --login_with_auth "Bearer foo"
iam-admin-update-admin-role-status-v3 '9GA5DydC2D8UT6KO' --login_with_auth "Bearer foo"
iam-admin-remove-role-admin-v3 'c4VPDUR9ayazqXRq' --login_with_auth "Bearer foo"
iam-admin-get-role-managers-v3 'egIUicYXXzxsBFrU' --login_with_auth "Bearer foo"
iam-admin-add-role-managers-v3 '{"managers": [{"displayName": "s9BYp6TgCejBd5o7", "namespace": "iTST7R3KbbQGERMN", "userId": "pqWb51y5RUzvMfTk"}, {"displayName": "Py0fGvTGgfLKsg0b", "namespace": "1Bq78cE5O5pmPnbi", "userId": "PJ9j4vxmbH3rVaau"}, {"displayName": "ufxkPHElug48TgfN", "namespace": "u0rqXUOyToLPIREG", "userId": "IKlJt3EP9kKwkENQ"}]}' '8VOHGwbADMfuOmh0' --login_with_auth "Bearer foo"
iam-admin-remove-role-managers-v3 '{"managers": [{"displayName": "lciRhVZ2DeoODXMz", "namespace": "LSrzoiBnYi5UWs3t", "userId": "YlYeMoCimJySocRv"}, {"displayName": "UWDOrFZKPNoN9AWt", "namespace": "LK9TFgi9j2XMh9Wp", "userId": "ifqjNjLOtNQts2yx"}, {"displayName": "f6MLZJ2jZfZbpTJe", "namespace": "zzriCDWXT59SRu0Y", "userId": "qUxKDc84OMIzvTSc"}]}' 'dbKBsAyJMz4ILNDv' --login_with_auth "Bearer foo"
iam-admin-get-role-members-v3 'hB4Eoes9a6XaJeRb' --login_with_auth "Bearer foo"
iam-admin-add-role-members-v3 '{"members": [{"displayName": "zTPwD3jxF7vxRUY0", "namespace": "ilrNoFT98SgtJd4Z", "userId": "5f8nfaKqdZFLbZEH"}, {"displayName": "xsDxeR6d7r1SQw80", "namespace": "JfMpPrSqYypRUnq5", "userId": "o4ETeCUYG9ccTt7W"}, {"displayName": "xw8OQ13t3uTw6zQu", "namespace": "oZcXQpoTOxe8y1jo", "userId": "rNsg9ZKYCKoISyXt"}]}' 'HzoWGdYohxMp3uOQ' --login_with_auth "Bearer foo"
iam-admin-remove-role-members-v3 '{"members": [{"displayName": "IybqWfG9BJ6FVKlb", "namespace": "YHtbPtaxvagSlpGg", "userId": "VTF6VeDAPOGBwwey"}, {"displayName": "FfXEOEAEtbag82Kg", "namespace": "BgyCd5vjkfz3eR4D", "userId": "tNp129hzBw3xLUcC"}, {"displayName": "Et0DzmkJq1sml5bY", "namespace": "t76BNsi4giR9434W", "userId": "pKKdzxoufCNlFoOc"}]}' 'WQQy4bjmQeEweoBH' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v3 '{"permissions": [{"action": 94, "resource": "UGkInFGpuUsdtq4d", "schedAction": 82, "schedCron": "EtAr5kKKAo9MM2Cq", "schedRange": ["m84jVi9kIpqgrzpU", "kNOBWydXV0Fi02aF", "r8CDapjwNOl4k8rV"]}, {"action": 80, "resource": "vwD3PsKDJiWxQBwa", "schedAction": 92, "schedCron": "z7EFvowPgIGuetxF", "schedRange": ["MqXCQMAqQ2ZRGzNt", "rThFa9XU8mosluiH", "ZJ7O8sAQ32wj9uaD"]}, {"action": 53, "resource": "r8qs2mqtnGAqXUjN", "schedAction": 49, "schedCron": "1eI9w3JEhxPGbEk7", "schedRange": ["s7gw07FlounC3vJK", "BC7SwgoViPeIB4Eh", "y0Y5aSJVDginxAM7"]}]}' '7eY9C14FbfiI2NPv' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v3 '{"permissions": [{"action": 24, "resource": "a1sB0HsJ06DzfbzR", "schedAction": 19, "schedCron": "t4OVUyumBeIqdQGZ", "schedRange": ["C5kM03HHijsQRj7N", "8IAjmsonjj0ZR50B", "Q1U6aFD3O2kXQSc5"]}, {"action": 96, "resource": "zgZVl4gIF7v3qbZu", "schedAction": 54, "schedCron": "M3OxqVAT4H1lRZ9Z", "schedRange": ["1JBrHRzEOtIxzPqb", "6n73m0jiaDH86d9r", "sKgzCsMulpB8HZUt"]}, {"action": 98, "resource": "7b9Z5BTsEA3EdmW8", "schedAction": 37, "schedCron": "5B4WedopzwSluBtR", "schedRange": ["FPKThyGnbjmPDKFS", "6u9FHuv1M3qfch4S", "qIV6LQPHlaeYl4cs"]}]}' 'Fq65cU66yJaj4ovo' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v3 '["KWE4EW0sw8v5peiu", "xoBJATauyD3XCXVM", "iyEvMf9yilUEujk6"]' 'oqYo1HQYTFzwdOMd' --login_with_auth "Bearer foo"
iam-admin-delete-role-permission-v3 '42' 'RiW8dLTCBfGUdVEd' 'vdQL7sVwcZ2PofaJ' --login_with_auth "Bearer foo"
iam-admin-get-my-user-v3 --login_with_auth "Bearer foo"
iam-user-authentication-v3 'oSqtrEOqxH46fRTS' 'ZoDdT0fefo74eg3N' 't2c0r4GqF0NHglOV' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-authentication-with-platform-link-v3 'uNZ9LzNeJnBurh54' 'CWbYb0Pebyt8b4DG' 'scjwrizsFUgYwbaL' 'vqvQ2NbmDITuymTB' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v3 'jn3d2sFzMS3QaVjZ' --login_with_auth "Bearer foo"
iam-request-one-time-linking-code-v3 'F7Ax6115Kg9U8vrQ' --login_with_auth "Bearer foo"
iam-validate-one-time-linking-code-v3 'JXQxoIbVi2CLEk27' --login_with_auth "Bearer foo"
iam-request-token-by-one-time-link-code-response-v3 '7Ivjj1A647XQ3koa' 'AfZIim0sFPm1YN27' --login_with_auth "Bearer foo"
iam-get-country-location-v3 --login_with_auth "Bearer foo"
iam-logout --login_with_auth "Bearer foo"
iam-request-token-exchange-code-v3 'bojDVaZLpx4kEWYk' --login_with_auth "Bearer foo"
iam-admin-retrieve-user-third-party-platform-token-v3 'O6KrKUMhJrASBh61' 'hmWKSSrF35anDGvu' --login_with_auth "Bearer foo"
iam-revoke-user-v3 'r19V18oIrUKXttgA' --login_with_auth "Bearer foo"
iam-authorize-v3 'I2QdWJFLmoPEgd8E' 'code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-introspection-v3 'spOs8nkic9gj5vyU' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-jwksv3 --login_with_auth "Bearer foo"
iam-send-mfa-authentication-code 'MAAmIHYbsxG5N066' 'FXb88SbLOa21DiSF' 'sm0XXQJWszvTQEuA' --login_with_auth "Bearer foo"
iam-change2fa-method 'LzDNp1SZ58aDllwz' 'TRHak1MXxj7Esrg7' --login_with_auth "Bearer foo"
iam-verify2fa-code '900nml5BidsK9dCE' 'zhVnOv0PQbVIaKiH' 'foeorY7A1otGFyv2' 'false' --login_with_auth "Bearer foo"
iam-retrieve-user-third-party-platform-token-v3 'MjbEr50qGdCZIc6E' 'FqBKxbS7Q2OgRucL' --login_with_auth "Bearer foo"
iam-auth-code-request-v3 '1jwRXzfjDZZBmOau' '6syme06c6SKLc2mE' --login_with_auth "Bearer foo"
iam-platform-token-grant-v3 'C3IXl5XCbkOfHaGr' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-revocation-list-v3 --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-revocation-v3 '5kdazlypvt6lSLfU' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-simultaneous-login-v3 'steam' 'HByGXPMqxj4hBgVY' --login_with_auth "Bearer foo"
iam-token-grant-v3 'client_credentials' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-verify-token-v3 'YAxZLKbcOdyjqf6Q' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-platform-authentication-v3 '4oiwoJcaRMEb15LB' 'lTVufc5ZyODR2NVy' --login_with_auth "Bearer foo"
iam-platform-token-refresh-v3 'n4PRqf3eRbZqBAoK' 'GcVCdMiSNV4qBrt1' --login_with_auth "Bearer foo"
iam-public-get-input-validations --login_with_auth "Bearer foo"
iam-public-get-input-validation-by-field 'kcLmRv6EJtl5xWns' --login_with_auth "Bearer foo"
iam-public-get-country-age-restriction-v3 'b8oWq94RImNWVIJn' --login_with_auth "Bearer foo"
iam-public-get-config-value-v3 'hhwFDV1VitaomvWT' --login_with_auth "Bearer foo"
iam-public-get-country-list-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-public-v3 --login_with_auth "Bearer foo"
iam-retrieve-active-oidc-clients-public-v3 'zdsW4N70wYS4Kj7Y' --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["i2VvoQNW8Yc481dY", "dvGxJAMDRA1LF7jd", "WlekFwO94VBCV9qJ"]}' 'hWva2FPBujX0geYC' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv3 'pGJM4sqsPNJMiZXX' 'OFwmGWAvNF0Z0Gkw' --login_with_auth "Bearer foo"
iam-public-get-async-status 'xUNYyNwGiKrknH0Y' --login_with_auth "Bearer foo"
iam-public-search-user-v3 --login_with_auth "Bearer foo"
iam-public-create-user-v3 '{"PasswordMD5Sum": "5mrQgLC6D2qsFiQH", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "WUsp1tOibJY9aL9i", "policyId": "e6vvMbiNURrlm88Q", "policyVersionId": "lKyuoya4JgakZyUV"}, {"isAccepted": true, "localizedPolicyVersionId": "t73VnSFbuxd4KYZ0", "policyId": "jk0UZdhtnKu9oTc8", "policyVersionId": "pVkiyGsj5JdXzRxf"}, {"isAccepted": false, "localizedPolicyVersionId": "EjUMTs8WIObJBTsv", "policyId": "sw76uISRX0bKVoWt", "policyVersionId": "oUW1P7ocuBAldDSU"}], "authType": "S7Haa6unq1yQOSRv", "code": "yiLBRVtIDi2piIQF", "country": "VmzMidw70KSahpYZ", "dateOfBirth": "dKZRyR9AX7JjxvNZ", "displayName": "hM84DiZk6ySrB9SV", "emailAddress": "FctW7YS0OkL78XeE", "password": "AtALFI3v8yha4pd5", "reachMinimumAge": true, "uniqueDisplayName": "3SBafnKNiMPbFkFG"}' --login_with_auth "Bearer foo"
iam-check-user-availability 'A85W3HJkqgS2B37w' 'woPYOHiIsxmsLBPB' --login_with_auth "Bearer foo"
iam-public-bulk-get-users '{"userIds": ["JuNLnWRrtW870qD8", "8ZcduZSe7W20UZcD", "aiq0nEZ7PyhqFJkD"]}' --login_with_auth "Bearer foo"
iam-public-send-registration-code '{"emailAddress": "ClOsKmfsgJdmzsDP", "languageTag": "sWh1k0cQ08NG6dX2"}' --login_with_auth "Bearer foo"
iam-public-verify-registration-code '{"code": "TZkil67kRngoUa83", "emailAddress": "ECh1gqPeS193TNNz"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v3 '{"emailAddress": "ot3sVli3GN2XTrFi", "languageTag": "bRAhzzEWzWlTY70q"}' --login_with_auth "Bearer foo"
iam-get-admin-invitation-v3 'dgJRvpZrSpWX3KEe' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v3 '{"PasswordMD5Sum": "2BjV00ReCXFffjJJ", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "CQykmXHYmkRlg7gY", "policyId": "s6unPYQ9jNQN1di1", "policyVersionId": "ldhOh6HvjnYuV7Nf"}, {"isAccepted": true, "localizedPolicyVersionId": "OssFkz0F36piDYXe", "policyId": "HZ7FHls3nyvconqb", "policyVersionId": "HQqKLQKe3xmj6s0G"}, {"isAccepted": true, "localizedPolicyVersionId": "3FGQn3Ahu5wxq6oJ", "policyId": "q4mChmQHQhO9IKBX", "policyVersionId": "DFQfXFD58sG6uDhF"}], "authType": "YlrzJBYSeMuJfQec", "code": "utjS029BiJWOG1m7", "country": "MKclr5igjNTVItrH", "dateOfBirth": "2X78hxJgaVfw5Vny", "displayName": "q8OzTE89WDNoMcOm", "emailAddress": "bfJrCJQIj1haAosK", "password": "glqaCXE9ytpIO8bt", "reachMinimumAge": false, "uniqueDisplayName": "3OwNEGSW5TaW4to7"}' 'QCY2NGGvi9kg3rMI' --login_with_auth "Bearer foo"
iam-update-user-v3 '{"avatarUrl": "zNmhJTNQjKlwjfJ3", "country": "TJ2xVpge70WsLfgb", "dateOfBirth": "ZieRvJI5sT9DH3Df", "displayName": "LCv8q4Thmq09bBgP", "languageTag": "AYxrBE9jlnTgtgW3", "uniqueDisplayName": "3wDwD9RKvQX4yFQF", "userName": "drRoM6FoqCYw7Alx"}' --login_with_auth "Bearer foo"
iam-public-partial-update-user-v3 '{"avatarUrl": "O6qdFpc71sSck3gg", "country": "ZWJlSlCQMDji329P", "dateOfBirth": "fVrvMEPtpsSNcpK1", "displayName": "QkB2Sy8Ww79LVeVs", "languageTag": "kqeUB7RSayqGFguh", "uniqueDisplayName": "h3bvadRthdbVApeb", "userName": "RA09rW8i8krFWJhe"}' --login_with_auth "Bearer foo"
iam-public-send-verification-code-v3 '{"context": "03coRFok5d3AyGrZ", "emailAddress": "O8GuoXNSoVEBG7Vb", "languageTag": "BPUWipz9C05YabFX"}' --login_with_auth "Bearer foo"
iam-public-user-verification-v3 '{"code": "4FCK5ucTFsAFzaO3", "contactType": "yJpA3KMxBlrRytER", "languageTag": "1qdTelFAadM9y66D", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v3 '{"code": "57DrDlgC2nzS9SiG", "country": "UjVAw4v3q6JRHcn7", "dateOfBirth": "KaoCEkRdo6qHYIZW", "displayName": "nXqQ1oHFJ9Q0vqsL", "emailAddress": "9SomqWsGA76yxi0Q", "password": "zZWfmP2sx0KO5bEJ", "uniqueDisplayName": "aPnAFjsodyJQVVBr", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-verify-headless-account-v3 '{"emailAddress": "l8xs1WId9Wlalqsh", "password": "F9Rh2o7GCQGPCxwE"}' --login_with_auth "Bearer foo"
iam-public-update-password-v3 '{"languageTag": "dkyuT3MgzReRq011", "newPassword": "2ISArROIodcmM6v2", "oldPassword": "AEozWWaYvBLE46bp"}' --login_with_auth "Bearer foo"
iam-public-create-justice-user 'uJip8JyxJ39vrtuW' --login_with_auth "Bearer foo"
iam-public-platform-link-v3 'WrqTZbSqBSKp8Amg' 'whYzk33J34fiTxK6' --login_with_auth "Bearer foo"
iam-public-platform-unlink-v3 '{"platformNamespace": "3OHpnUCGBVfpctNF"}' 'UsUQ6ZXQcb2o1J5e' --login_with_auth "Bearer foo"
iam-public-platform-unlink-all-v3 'uLAbBgejqc0apxqZ' --login_with_auth "Bearer foo"
iam-public-force-platform-link-v3 '209BySn8aUaGlAyv' 'Islt7N1qcxKs4nlf' --login_with_auth "Bearer foo"
iam-public-web-link-platform '1MfqUZXkjHvcUOTl' --login_with_auth "Bearer foo"
iam-public-web-link-platform-establish 'xNf09pefgFIiJssS' 'hBKsQjXvfQgQDt6c' --login_with_auth "Bearer foo"
iam-public-process-web-link-platform-v3 'e8NDMErA82FrR1GS' 'ogkewIzTOqKkcjRh' --login_with_auth "Bearer foo"
iam-public-get-users-platform-infos-v3 '{"platformId": "3l2gAJOTCbx7J3gN", "userIds": ["LIlTk3Bpclrk4hIR", "n0znIKzAEAHQpBOg", "HEP5l94s7CbIJ7eH"]}' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"code": "nVWOboMkyB7FTexs", "emailAddress": "OZ0b2p3b63KrcwIc", "newPassword": "XMhGy83Xit6boOLG"}' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 'Ccg16DqwdQPQ9HkS' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 'SV8e1MgTTLS2Fgar' --login_with_auth "Bearer foo"
iam-public-get-user-information-v3 'Y903INGIyEfRBEj7' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 'qms9AGQExPhgr9gG' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 'fC0GjvpgJfuBs1Vp' --login_with_auth "Bearer foo"
iam-public-list-justice-platform-accounts-v3 'qn47GVghTH2wToOn' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "q9U5lyW89Xwt3wmR", "platformUserId": "TrDCjhnKvsHezWTq"}' 'gYPixtHk6lWq6tEe' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["UmU96FLEak0mJqjR", "YldcTpdeCD9XPRi4", "bAQL7VE2wL8Y4JFV"], "requestId": "UdzA8bvXlDhG7Bro"}' 'rbKIKuOXJPm5ztrr' --login_with_auth "Bearer foo"
iam-public-get-publisher-user-v3 '09CDA8Ij5bGKSuop' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 'WQbaCvdPSq8Z27Gp' 'vHCDx55JZ5z6gujp' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 'FzlPspQD9IRIpDDu' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-public-get-link-headless-account-to-my-account-conflict-v3 'bntPCFxfeoW2NdSW' --login_with_auth "Bearer foo"
iam-link-headless-account-to-my-account-v3 '{"chosenNamespaces": ["zOXjO1NQUqWHBW78", "XREZCiTNAxq26gZr", "PqCsSDspvgM16sZ6"], "oneTimeLinkCode": "rjnkH4ExObppC6CM"}' --login_with_auth "Bearer foo"
iam-public-send-verification-link-v3 '{"languageTag": "YDm5ge659UDEOF6g"}' --login_with_auth "Bearer foo"
iam-public-verify-user-by-link-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler 'p5UfmjtiVbqJnZcr' 'qrPye7fCwi7Il2wI' --login_with_auth "Bearer foo"
iam-login-sso-client 'FlHm9N6owMHMtJy1' --login_with_auth "Bearer foo"
iam-logout-sso-client 'Oqn59tEGm9NYeUT5' --login_with_auth "Bearer foo"
iam-request-target-token-response-v3 'P0nx8TqSZdZ5C8mF' --login_with_auth "Bearer foo"
iam-admin-list-invitation-histories-v4 --login_with_auth "Bearer foo"
iam-admin-get-devices-by-user-v4 --login_with_auth "Bearer foo"
iam-admin-get-banned-devices-v4 --login_with_auth "Bearer foo"
iam-admin-get-user-device-bans-v4 'I9TnvzEqBNMF9CZv' --login_with_auth "Bearer foo"
iam-admin-ban-device-v4 '{"comment": "PxT5zbreMc9fBoU3", "deviceId": "RHNDFjLKFrepy56e", "deviceType": "W1kmb15QeIQF51c4", "enabled": true, "endDate": "z6joBAhAlJGI2YYb", "ext": {"6ajBjgq6eY4PBNHK": {}, "Px62tHxDb06ZFy3u": {}, "glSp2UxvF2uLXWil": {}}, "reason": "RD7HD6LCgdFxRGj0"}' --login_with_auth "Bearer foo"
iam-admin-get-device-ban-v4 '0RT6LvcnGMJbJIYL' --login_with_auth "Bearer foo"
iam-admin-update-device-ban-v4 '{"enabled": true}' 'wMXwKVXGPhEJsc7r' --login_with_auth "Bearer foo"
iam-admin-generate-report-v4 'ZpxaPHc9r8eToFmk' --login_with_auth "Bearer foo"
iam-admin-get-device-types-v4 --login_with_auth "Bearer foo"
iam-admin-get-device-bans-v4 'HJ6BPOKFLxIwKssw' --login_with_auth "Bearer foo"
iam-admin-decrypt-device-v4 '647YwDudnGRufOUG' --login_with_auth "Bearer foo"
iam-admin-unban-device-v4 'fMjTU226l07jPlcY' --login_with_auth "Bearer foo"
iam-admin-get-users-by-device-v4 'aqYM7YfBmhjI9Y28' --login_with_auth "Bearer foo"
iam-admin-get-namespace-invitation-history-v4 --login_with_auth "Bearer foo"
iam-admin-get-namespace-user-invitation-history-v4 --login_with_auth "Bearer foo"
iam-admin-create-test-users-v4 '{"count": 34}' --login_with_auth "Bearer foo"
iam-admin-create-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "VceS9UX48dKPCFUI", "policyId": "eyYEymNXzNX6TGh4", "policyVersionId": "UdEweeBsJEvBbAvC"}, {"isAccepted": false, "localizedPolicyVersionId": "pUARJM1T8QwMNOAz", "policyId": "XmyHEV4g9P6a280S", "policyVersionId": "5RNB5dVCsB7xL4ax"}, {"isAccepted": false, "localizedPolicyVersionId": "47CAT7cBP0918JaE", "policyId": "BQBP766LUnBBR84i", "policyVersionId": "AO7sBQt6YJ2tWwF7"}], "authType": "EMAILPASSWD", "code": "nP1oK3c4RVfjB0zi", "country": "3XrYZUiN24ol1qqb", "dateOfBirth": "algizL97ycJV5YqE", "displayName": "2myQzl7X9fHr6WvB", "emailAddress": "xmBvNj3ktaDf9B22", "password": "HGgxakPt7IYzaZUT", "passwordMD5Sum": "mvsEzLPnnGsnfmBe", "reachMinimumAge": true, "uniqueDisplayName": "S7b5TSDRIoMg7Dc5", "username": "APzfzXDELJFaIaEM"}' --login_with_auth "Bearer foo"
iam-admin-bulk-update-user-account-type-v4 '{"testAccount": false, "userIds": ["aQzEb39sZTdFfC8x", "5aHLsXHlm1RJTTy9", "JrNz1K5M1qgFddYv"]}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["ifGHawNx6yhniEHL", "bEQKc0aUvrKXDIjY", "C4df9qswSlpCI8Dh"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "jlxUyrs3OSesE5p0", "country": "DwUj2HKUvPYUcQBx", "dateOfBirth": "MSdOOsn2Nd8Jpa19", "displayName": "GJDK46Eehx7xasqM", "languageTag": "Y9aulsL6NOV5agpS", "skipLoginQueue": true, "uniqueDisplayName": "UeKKlPKtE6gnYxmk", "userName": "mCWbs5qugklBUS6u"}' 'wWrCQt86Jrg8tLAJ' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "WpcyNkUvqn6eXr6F", "emailAddress": "NbKJ05Orya6LSSUl"}' 'ugIAknXcSaVYcAYp' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 '7qSiDvsfMUOpWv46' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 'sXvpOjrpRo4mYrCe' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["QUnYoID2UqO0iAXA", "9dB4ib8HDOJ8TNiP", "8KgEAj3dbRTI0i6d"], "roleId": "O3zkbDseh4tJdoGc"}' 'wMBmegqVUaWMJBjr' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["V0p9A7tcHrV0MbJG", "r4drgkDuWS05m0pG", "zazM2BUXnzUEWTiK"], "roleId": "MJAf6AgbiEDMfCck"}' 'WogE5gcfF8AMGZ2F' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["BS93Mg6TKwdRMraD", "Lrwh3d0ykRGkgqUN", "IbJMJ9ABbKVWO2YE"], "roleId": "DiqkwKbpdk7wlDng"}' 'NiPPjpSAlZwFGpea' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "BB49Km4ClIQmkIdL"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 'CvNhZ6P8aqZ2yfrC' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 '1V7ZpJZPHCMqvcYm' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "0VTiTP4PSrXUS6jY"}' 'I9lsQFD43Df5qUZO' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 65, "resource": "kjsxYtgxplHTPLzy", "schedAction": 27, "schedCron": "p8GG0VCMTFJ6svTy", "schedRange": ["o9RHget5hzB52BDF", "opxUwkMuSqQnKzDg", "DAtqE3kuybwTQFYE"]}, {"action": 73, "resource": "8NA4cGUaDfy9XnH2", "schedAction": 36, "schedCron": "fd1GS5YkyhAiAItn", "schedRange": ["WUmD225fp1egsx3E", "rheNwqd5priclNNq", "LyrlzrJ4QHbfnAdt"]}, {"action": 20, "resource": "c6jLF9DIW2ncJJKp", "schedAction": 33, "schedCron": "FhS0URBhl0L5FCbO", "schedRange": ["n46W2B2uPQLrt2t6", "bVpCgKvPXSDufmKh", "783cV54JsVBRB0rY"]}]}' '0xfWddACyHSmo4KX' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 69, "resource": "TPO3K1k5ZM8btmGs", "schedAction": 13, "schedCron": "l5xAzc1nc3eFm950", "schedRange": ["dtVAo7w4e3v5mh6R", "um5pbgEt39uJQpgE", "tchTe3nt7t9ztprS"]}, {"action": 10, "resource": "5LKmkQ7YBhsOuJ0y", "schedAction": 31, "schedCron": "QKxVmRTawjiZPMoZ", "schedRange": ["ZcyGEHxAKDQher3u", "sApPdJPn9eIdhIBv", "TTupABJ4RwH3EdKm"]}, {"action": 43, "resource": "tbqQHNfIZwrMxf3E", "schedAction": 28, "schedCron": "JKySnC0cfPl3Z2zS", "schedRange": ["Bbs4PAV72u8AxE2I", "QeoxYV4UcYzswAGp", "XqQxctuVaqPJGAHE"]}]}' 'ZmuQrZ8GaQ4OZ2nD' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["odm4TNs8mAj6IKSY", "FdJwgZsRPOzwuDSd", "Gl1A2vaNeDiSqTfm"]' 'AVg50kOdJagEmTua' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'xlxgywkbdOsyxX1t' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["fW488oYUT4jyCVJ0", "V8obTlGVThz4bm41", "oIcV33yjPxibDjfF"], "namespace": "7JkjCVpZKMxkFkBt", "userId": "XMU6KRIm5xBoIi99"}' 'ctgFXasxp5h780kt' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "jQw2yXzaQWaF2PqU", "userId": "fbpMpRl6xRyV19cb"}' 'orUHeCpqnZ5NW623' --login_with_auth "Bearer foo"
iam-admin-invite-user-new-v4 '{"assignedNamespaces": ["WWn2ZJY3QvRa7CDR", "TcsAHzD3dZyyWbUQ", "pbcv3IwmL7a1K3zI"], "emailAddresses": ["UYJmdF1YtWNSQlcM", "zxfppNCrscDPbklT", "HcmgXsrVj3Mjml6B"], "isAdmin": true, "isNewStudio": false, "namespace": "CODWGOLMmCZUeelX", "roleId": "YyNrXweiCnDldRPR"}' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "fd6mLZ0GTJwEjoZr", "country": "RtaeWKMC8wsOByQA", "dateOfBirth": "MAgqFEzEt8umj5Xh", "displayName": "Knw7MHDwFVKUC2ec", "languageTag": "npUDqvLQixPKVSmW", "skipLoginQueue": false, "uniqueDisplayName": "jWH9dFmOHW0j9suu", "userName": "kPE4JwQONQ2vCbMn"}' --login_with_auth "Bearer foo"
iam-admin-disable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-admin-enable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-admin-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-get-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-generate-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-enable-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-send-my-mfa-email-code-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-email-v4 --login_with_auth "Bearer foo"
iam-admin-enable-my-email-v4 '0Oia336uiiMTAduc' --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 'tvUfVwLahtRedh1S' --login_with_auth "Bearer foo"
iam-authentication-with-platform-link-v4 'iZlOpIQ8GL7jBF1R' '5OexAPzCG6ZKQClG' 'c1636nbfM3J9G40Y' '62bCo941ALznQuHV' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v4 'skfCjUK8GeX4Q0B2' --login_with_auth "Bearer foo"
iam-verify2fa-code-v4 'Cj0oOmBmXu1KiTTi' 'z7yrIvQj2isN7bRw' 'cr16lW5YwgZpjlMM' 'true' --login_with_auth "Bearer foo"
iam-platform-token-grant-v4 'nGptHUplxzaDa9PD' --login_with_auth "Bearer foo"
iam-simultaneous-login-v4 'steam' '2oac8QTNEuBbeuQq' --login_with_auth "Bearer foo"
iam-token-grant-v4 'client_credentials' --login_with_auth "Bearer foo"
iam-request-target-token-response-v4 'DD6OGkuLs9gNpNon' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "Bhs0kDP6d3nuUZ41", "policyId": "mSeS9SnGqhJOvykB", "policyVersionId": "cDpzD9zh6dtPK4fV"}, {"isAccepted": true, "localizedPolicyVersionId": "DOFjrfqJcyxT2a7f", "policyId": "CFAUzLELiM573Tdt", "policyVersionId": "WjfVciuLnLsBKGsA"}, {"isAccepted": true, "localizedPolicyVersionId": "PuCOyphUUAV95708", "policyId": "zaP0wpZgQEvFzox9", "policyVersionId": "wHocX3DRWobEoGr8"}], "authType": "EMAILPASSWD", "country": "97KBedcr6PM51z7i", "dateOfBirth": "0wQ9egK2t46EG8I2", "displayName": "lTviKbOgVuN3nhkn", "emailAddress": "6QIesNoYqvVsakyl", "password": "HikKkpOjqwgKvfXX", "passwordMD5Sum": "s8pDqm31AZSRkuw6", "uniqueDisplayName": "q8FgqG46RsFK7eYl", "username": "SU3vYcHZZjFegVnZ", "verified": false}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "0tk4IATSIefcqNEn", "policyId": "4IZ0Dv6b8WtaMVvL", "policyVersionId": "bG04KKnh3jvW0Qp3"}, {"isAccepted": false, "localizedPolicyVersionId": "ybfcAl0mnsAkRT2k", "policyId": "0AzdgIunRkTxsGdr", "policyVersionId": "pNELM8Lfkut0wnT2"}, {"isAccepted": true, "localizedPolicyVersionId": "wh59RGSbBMh7jpsz", "policyId": "uVk6iPdJ2boQqCCy", "policyVersionId": "JfThvCJieqRSGN8M"}], "authType": "EMAILPASSWD", "code": "EeuzBBRSknxyWkZO", "country": "buvig8sMuss76ezT", "dateOfBirth": "rsDZNYUV48Oh6I45", "displayName": "X7HvUtPYONZdFk75", "emailAddress": "lkjQNHrjaboGomgu", "password": "UqeuZh5qtrRbNnGe", "passwordMD5Sum": "jdTGvZgN5hshSe5Y", "reachMinimumAge": false, "uniqueDisplayName": "KrEt8d3o7cTS9OII", "username": "MErnNTLXHrsOFsbh"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "ow4iaYKy0IjsDgbJ", "policyId": "37DN2lDvdh7okHl1", "policyVersionId": "wMht2Izq7TCUJhDs"}, {"isAccepted": true, "localizedPolicyVersionId": "7Fadvo5EzpX0Itts", "policyId": "RezyY9GB5sf94ALB", "policyVersionId": "mvdncQkcZb8cWdVH"}, {"isAccepted": false, "localizedPolicyVersionId": "WIzg8pbjnt1iBV8D", "policyId": "pbjGts4UZDTfhAyZ", "policyVersionId": "Khqilty9NVlgxUmn"}], "authType": "EMAILPASSWD", "code": "pCzyb8FkoxQbrPng", "country": "i87K58pQswqKLutI", "dateOfBirth": "NusOsa92F6iwkJIY", "displayName": "OLarmpWyvib9CDW2", "emailAddress": "1ANrlpuXD9H1u1Cv", "password": "zWPcZwkj1l6bf2F9", "passwordMD5Sum": "EXOBj7v8LHYivmD0", "reachMinimumAge": false, "uniqueDisplayName": "PyahppgxJhk4EdTZ", "username": "000rS92594HLvWFs"}' 'XHtMP0k9L5dREQbC' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "qfh0gpABFBER6WNc", "country": "DOsRzBkf9A6HjCnF", "dateOfBirth": "RdSihcvszzQLZBkt", "displayName": "k0siMup01kyaFwwD", "languageTag": "7wecuQb4GNQHVZMK", "uniqueDisplayName": "GBnzh4suaGIzttTn", "userName": "cVBf5g3oeuHiNyLk"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "fPQPmjUkvSs5YmIe", "emailAddress": "jozmG5HlrIfMAvvp"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "kAHRJHZyfrXZmiJX", "country": "4CjKCeIRIr997KKp", "dateOfBirth": "JXTLbYWpqeXjaf1f", "displayName": "5fjNMZjKJ05puX31", "emailAddress": "97WrMnJtovSMFw8X", "password": "4zxbdfXgunt1oMNZ", "reachMinimumAge": false, "uniqueDisplayName": "ke34ZAUuLP897ooM", "username": "LnemwKAvgDXNrFEE", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"emailAddress": "u1ky1ZYvyeHmfoFk", "password": "UDP864shbnQ3bVvu", "username": "vpsDJXPCWkX4Kpi8"}' --login_with_auth "Bearer foo"
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
iam-public-enable-my-email-v4 'CJ88aMPGFFAQZbfb' --login_with_auth "Bearer foo"
iam-public-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-public-make-factor-my-default-v4 'mVTEbiRq5Juikmpa' --login_with_auth "Bearer foo"
iam-public-get-user-public-info-by-user-id-v4 't75rVbN9ZBtzJ33t' --login_with_auth "Bearer foo"
iam-public-invite-user-v4 '{"additionalData": "Cwv8H1f451FVZ630", "emailAddress": "HNBYZSrz7pMjESLL", "namespace": "MPKDXLki6Oz5Bygt", "namespaceDisplayName": "8Q0RjSf1srB7hGwG"}' --login_with_auth "Bearer foo"
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
echo "1..395"

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
    '{"modules": [{"docLink": "bUmQmJHNffZENs9X", "groups": [{"group": "0hFMdzryvhc1YjHm", "groupId": "mulSBIElc2CdRvBb", "permissions": [{"allowedActions": [0, 39, 67], "resource": "hJSu2pUIIuPLFAtc"}, {"allowedActions": [100, 38, 16], "resource": "rjV7XJUOtHlzXNHE"}, {"allowedActions": [86, 85, 31], "resource": "PfmAQiqRRC2caquM"}]}, {"group": "RtQOILcaDqUITBHQ", "groupId": "R5ISNoFR3GUxdMuv", "permissions": [{"allowedActions": [26, 100, 78], "resource": "7flVolAWEMmQSPDT"}, {"allowedActions": [89, 2, 33], "resource": "8s3GW0CY0vAfbq8x"}, {"allowedActions": [29, 0, 58], "resource": "KTPVjyOUpR3uUdgN"}]}, {"group": "lyU4IJnqtrjCOsE8", "groupId": "VjvzhJwNX4bhqCjl", "permissions": [{"allowedActions": [47, 73, 36], "resource": "W3MLMob1hUnIzIpU"}, {"allowedActions": [80, 58, 75], "resource": "cNu2DYn6E9Gk51kO"}, {"allowedActions": [93, 96, 72], "resource": "DFQuGPzAuT7M6OBr"}]}], "module": "NwioKnXPVZaDcXsV", "moduleId": "1TnsZioDiBgprzah"}, {"docLink": "PB0FKMa0YeyNBQWU", "groups": [{"group": "HDBnBeePkqg6Zt1L", "groupId": "r5BlO8K6LH4dSaa8", "permissions": [{"allowedActions": [50, 68, 44], "resource": "ug51ZTogG0N7Hvnu"}, {"allowedActions": [34, 1, 35], "resource": "kJ1kpHcQtnIc9z70"}, {"allowedActions": [77, 11, 65], "resource": "KU3D8WVPh0Z7YiGE"}]}, {"group": "2cyzTMBY7Xd0OoEN", "groupId": "g2Lw7uepmahXojVZ", "permissions": [{"allowedActions": [26, 53, 56], "resource": "2zMU9jLzNV3GaG43"}, {"allowedActions": [90, 47, 17], "resource": "nlRPrEAYqRBeSc5u"}, {"allowedActions": [92, 14, 30], "resource": "oj3dGHMeoi5DBOsQ"}]}, {"group": "0Gax0iX05IT9Agsj", "groupId": "l5NmnSHhxNmCe4tx", "permissions": [{"allowedActions": [79, 69, 37], "resource": "YVEiaereFCPJU2wE"}, {"allowedActions": [52, 95, 11], "resource": "UTmZ8JSMeNmRocp4"}, {"allowedActions": [75, 10, 89], "resource": "XzrvzBllwzyC1aTW"}]}], "module": "EmPgoy4TkpEw4Zei", "moduleId": "d4mRoFNxv10ckMQV"}, {"docLink": "jKk3bWJ0ZuYSe3sI", "groups": [{"group": "0x2hc8vaN1Off5gR", "groupId": "ZZMW3huAIzBPWBYK", "permissions": [{"allowedActions": [55, 53, 62], "resource": "sNrJzWBcdFlo7oAs"}, {"allowedActions": [83, 47, 23], "resource": "x24QM35bSkFrvGci"}, {"allowedActions": [80, 68, 36], "resource": "b7OY5YIpOLJW52uz"}]}, {"group": "3c8pz63M0g4xXT5T", "groupId": "s4e0uR47OzUGHeBK", "permissions": [{"allowedActions": [40, 91, 32], "resource": "4ezBRSiOyReviDax"}, {"allowedActions": [23, 95, 86], "resource": "iDGXgh8BKcLqtRZ9"}, {"allowedActions": [49, 76, 6], "resource": "uR8OEyICvwgwBFeh"}]}, {"group": "wtdJLdn3R2wo8beV", "groupId": "QvgeP9qOHaLwYnXx", "permissions": [{"allowedActions": [35, 85, 52], "resource": "kdTcAzkIlndN5xea"}, {"allowedActions": [51, 35, 87], "resource": "3vUKMuIiz2MiAAKc"}, {"allowedActions": [44, 83, 54], "resource": "zz9p57qSpHerzO87"}]}], "module": "cg7TqtMiQgi7Aj28", "moduleId": "qCRbwwZc4ZS1NMkr"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
$PYTHON -m $MODULE 'iam-admin-delete-config-permissions-by-group' \
    '{"groupId": "nHs1Iyhwqk140Mol", "moduleId": "IrnlkRVbcX435TDY"}' \
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
    '[{"field": "pkk2Gza6DrSycoph", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["fSESkM19OPMBb12g", "pmShlmIt2nfhUaZG", "qjslu59GT2E6Aacm"], "preferRegex": true, "regex": "RXZm626POXWVj3KP"}, "blockedWord": ["1mX0iYHXBU3Uk2tQ", "m307IORTyHnLYDAA", "g1YA4kZURmoGgxVR"], "description": [{"language": "MPf8g1rbhfIMStMn", "message": ["SqrKWYOuITlYS2RY", "aD9WNKGhbLhjz1v0", "RBIO2rkJGmPaK6HE"]}, {"language": "VIQJd3930TGewjRy", "message": ["fo4nWVZZbKFsKOmg", "EhjH2wFzCpxxJLfA", "g5cFT0gHAkltcR3e"]}, {"language": "HFbiAluHv7Hssd05", "message": ["pHBJX5ln8PZbYVD8", "RiaTsdD4d3kSbTkH", "PMUvOAUXkw36cr2W"]}], "isCustomRegex": true, "letterCase": "qS7Tq4YIyZAFQ6lZ", "maxLength": 11, "maxRepeatingAlphaNum": 18, "maxRepeatingSpecialCharacter": 0, "minCharType": 54, "minLength": 4, "regex": "jdNvpWf32JS1av9V", "specialCharacterLocation": "NpVLT0LvqcfSdO1n", "specialCharacters": ["AjY5FvADb3GUQgci", "632w6LUrHuKBoNTp", "PQXDNHto74GcmVf0"]}}, {"field": "fbCU9QdPuWeMEeL0", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["g4W1eAmDxP23qstM", "uikKc6VNU8570siW", "m3V9sirE0JOQxWeH"], "preferRegex": true, "regex": "2jWnRTglw0gdWoE4"}, "blockedWord": ["esuiDrquccz4J6fF", "QezJ5E3iYHIknvPc", "JkjRevVYfiExpAgo"], "description": [{"language": "K9YDq1x3dkbJFDEB", "message": ["EOOvJ5BKeipIldsg", "B4hOxb88WgKSLIpn", "eDQCfwucHRL3o2Ns"]}, {"language": "trL6TsJeRcE7GuwK", "message": ["n63KIDTkUCqbbHGJ", "GOTvKKRTHDntaFiu", "fH2YR6QU7fj6w17a"]}, {"language": "rNs12hOoLVM7UFnu", "message": ["JDzeEkDxaVogxHrO", "on2OW4Zw5QwVKWNy", "2tnF2MifJR4hr4gd"]}], "isCustomRegex": false, "letterCase": "DujYnVnFK6gB6ZxC", "maxLength": 55, "maxRepeatingAlphaNum": 49, "maxRepeatingSpecialCharacter": 67, "minCharType": 55, "minLength": 95, "regex": "XjNyRCtPOr1FU3QZ", "specialCharacterLocation": "y3gdDms3kb1htW0U", "specialCharacters": ["GJpwQZlXuzu3m9u6", "7JjCDwg186hGWKfO", "9MnoT3t99HmcxzjD"]}}, {"field": "hTrcBKtU956hOg8o", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["E7M36mI9u3EeZtLQ", "ij2JXsqdXfhZTTaC", "eqGv7meuQhJuq1C6"], "preferRegex": false, "regex": "FTtERAXT2h3hcQ2w"}, "blockedWord": ["V3ZbBTnNQnVUhA5W", "nzVZdj8tsyzC4QaL", "Xp3o4TDraEEaDNJb"], "description": [{"language": "Vd20FVHevCjthJUb", "message": ["7jKuMrFaoLulzp3s", "ZxImVK5yh2LcM8La", "MW0ByjsRUrAHNRkI"]}, {"language": "cC4wNFzsbrtYvLh5", "message": ["6AWXoMiowdWSs9DQ", "0VU1HED9CGo9aUXj", "3rh0UyqxVWlIMY5t"]}, {"language": "TJw4KV104MtMhKHm", "message": ["SjqPuQZX5KjdNrEw", "fWo2MwulLg4bsO4Y", "HEYLjTSNDf3zazm6"]}], "isCustomRegex": true, "letterCase": "MrDYKe2eTf1axo16", "maxLength": 67, "maxRepeatingAlphaNum": 34, "maxRepeatingSpecialCharacter": 88, "minCharType": 94, "minLength": 51, "regex": "vSLLiMvcu39YZJyp", "specialCharacterLocation": "WzpNXgnoKIz8O8Ng", "specialCharacters": ["lJtZTh280vflFMxI", "hlIT8AgyZJ16MMd2", "bzOrTn2huwPgyUzB"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    'UWiKoNGtvyk5xEfr' \
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
    '{"ageRestriction": 72, "enable": true}' \
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
    'xKsw5Xl7ZZrDZdbu' \
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
    '{"ban": "vCFBaVcohewKkVuG", "comment": "v9fQXkErF0drbYrr", "endDate": "FQP6rW62CtetBW3p", "reason": "vAJJieHhveGg97PY", "skipNotif": true, "userIds": ["AtBjP4HSuiYCbG0U", "yYUJmNL8p6AbdtU0", "CDrlQpKB8qoel2QK"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "3aSOYdmMDikc3Fjm", "userId": "9HoQDemtiQvURYZC"}, {"banId": "eF30RT9rBgM8o7lx", "userId": "Xq7TkdM7FVDCBcvV"}, {"banId": "egrZddP8lLQo6tHj", "userId": "4z4cAM4LMJfWNZIx"}]}' \
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
    '{"clientIds": ["AgBpeubprKX68jTy", "Rd3LrR1x6U1v6zSL", "jm9zmzUW0vPj90jm"], "clientUpdateRequest": {"audiences": ["LTt5YQGawcomPoiY", "oQ1f1AYq306Pysv4", "VPaZWolXypwucUqq"], "baseUri": "qff2iWi4yP3uqNci", "clientName": "g6YcDA8Z3g62oGYw", "clientPermissions": [{"action": 21, "resource": "ersDmJLUHAKtfXCK", "schedAction": 84, "schedCron": "bdvUMDZeO4U55wdC", "schedRange": ["pVpnENiTc9NESV22", "eRBElD4K2Cy1tJcP", "AEkCeV29QsQk100e"]}, {"action": 42, "resource": "hmuHgKeWizEpw1zN", "schedAction": 42, "schedCron": "mOYgGhHMz9dddLWJ", "schedRange": ["WDuSYtCaIv4Lp91w", "YUJPbvzn8TYoMDAa", "UXSuBQdvdhJoT0WK"]}, {"action": 27, "resource": "N09VIbbsz24fQKDZ", "schedAction": 1, "schedCron": "6plErw0Gb0ceCbph", "schedRange": ["W4YMhJ0S50bez9ZL", "HW882riiPfRQ3rJ0", "f5lwXvRNDBnmL1KQ"]}], "clientPlatform": "n77hiP1lzkzjYDw6", "deletable": false, "description": "7BiEUqnzxs2deMF8", "modulePermissions": [{"moduleId": "UAJIHEZv5zyUUyNJ", "selectedGroups": [{"groupId": "kvA5xF3zHtZSd3Qz", "selectedActions": [16, 62, 22]}, {"groupId": "QzOidrWnLrXqImgD", "selectedActions": [12, 28, 17]}, {"groupId": "GaJsdCZND0wgYOil", "selectedActions": [83, 57, 10]}]}, {"moduleId": "LHCKmLBaIwlokbAF", "selectedGroups": [{"groupId": "W8RgBUwBL28BqM8U", "selectedActions": [51, 58, 44]}, {"groupId": "s0dFYRSa2OULZ0iO", "selectedActions": [55, 73, 53]}, {"groupId": "iOAh1SpLhMF2Pav1", "selectedActions": [14, 64, 73]}]}, {"moduleId": "uU8iXCRz8Kgqgwij", "selectedGroups": [{"groupId": "YxpGhsFArq6lolbj", "selectedActions": [80, 87, 74]}, {"groupId": "YlHPwKDpJmkeoAkp", "selectedActions": [33, 96, 20]}, {"groupId": "pgyJYwclb4gd4QgQ", "selectedActions": [42, 62, 40]}]}], "namespace": "CsypS42NmYQ8HlHb", "oauthAccessTokenExpiration": 68, "oauthAccessTokenExpirationTimeUnit": "qytieXpIZfr5XDq9", "oauthRefreshTokenExpiration": 7, "oauthRefreshTokenExpirationTimeUnit": "iKd9vLPP0w52JRAZ", "redirectUri": "xMWdoleYNHXeOpaR", "scopes": ["DwYLge851PbK2MFK", "vw5TWjAh4gy41LLz", "Q2IjY5PeNr4JmYxH"], "skipLoginQueue": true, "twoFactorEnabled": true}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
$PYTHON -m $MODULE 'iam-admin-create-client-v3' \
    '{"audiences": ["zCYRVmbfzwUmsy0s", "tUmKdXiiTObNdqkW", "a13g3pgHx6uPf6jQ"], "baseUri": "ZcYerH933X7iXEEM", "clientId": "2KOusNEHcI95GGdJ", "clientName": "vucDbs6UdccuM2yk", "clientPermissions": [{"action": 89, "resource": "S1ilfgff7Et4uY8n", "schedAction": 23, "schedCron": "2uduXvZUbQQ13FhD", "schedRange": ["3NExUFipJsUiDawA", "jgHFQk0VzWRNFNiU", "n2yXMSCcHADYpS86"]}, {"action": 44, "resource": "c0CJ7LzpFvOSF6xK", "schedAction": 55, "schedCron": "loYZBkatNLc42eq0", "schedRange": ["O6VsXtOlQwj5xPvm", "7c5nPR0Y1sffUaZ6", "4dFpiv8o9Gw4QtKg"]}, {"action": 51, "resource": "nWR30MdBZezfwc3H", "schedAction": 88, "schedCron": "qSbMq4GLj8aGsH0q", "schedRange": ["E5p601ak59yFSfdZ", "Iv8oYWPUS4Zu0SbT", "t6M2XizikCh6q0yq"]}], "clientPlatform": "2WAHtL7IWE3MFqvf", "deletable": true, "description": "tOjW1iSYQbcebBd5", "modulePermissions": [{"moduleId": "wb5H3qppoCiHMD4i", "selectedGroups": [{"groupId": "BK2O7qYtOHV5hnpj", "selectedActions": [5, 97, 50]}, {"groupId": "CNLnnEvo25aEtdjl", "selectedActions": [37, 18, 16]}, {"groupId": "oadseJg7y4Q9CU3f", "selectedActions": [18, 80, 91]}]}, {"moduleId": "vqF7TJ9uB0zypjJi", "selectedGroups": [{"groupId": "u7BIimNuwB3hBVhu", "selectedActions": [91, 6, 78]}, {"groupId": "w3prp0UHlWUxkBef", "selectedActions": [15, 48, 15]}, {"groupId": "Rtrqbv56oqwnCLVc", "selectedActions": [56, 34, 6]}]}, {"moduleId": "HZuuedbBOd19DqZJ", "selectedGroups": [{"groupId": "RYV1oqNLmPAUIMwa", "selectedActions": [46, 87, 33]}, {"groupId": "PkAPXBCfkE1Fb0y9", "selectedActions": [70, 8, 28]}, {"groupId": "P7yh0zsKhR60HZwU", "selectedActions": [46, 22, 79]}]}], "namespace": "XK7MXHbEwAvvpEeH", "oauthAccessTokenExpiration": 14, "oauthAccessTokenExpirationTimeUnit": "vxc4xAPZ86WNnQOh", "oauthClientType": "usPn4466u8agb5HP", "oauthRefreshTokenExpiration": 39, "oauthRefreshTokenExpirationTimeUnit": "hGAwpYq1UqZydOB0", "parentNamespace": "MThZW6LwcAg57BYB", "redirectUri": "VCbi0ifdPyKf3SwH", "scopes": ["ekWIz4rXlH5jw99H", "xCjXWcaXBcfXXeV7", "BXefsSgZxSYnVwXq"], "secret": "F6K0WA76Kl2mHHoz", "skipLoginQueue": true, "twoFactorEnabled": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    'BQnEDgX49n1xTDFc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'mOm1sqdIWU6ERylE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["Sgf5dXMrPoYSohfr", "LyXMSrC62xYtDwfl", "NGfufW5cWeg6eSCy"], "baseUri": "psceITTkJGGCVF6L", "clientName": "rILDLviUCzmDAaW5", "clientPermissions": [{"action": 48, "resource": "RYuXnPNJgayPFcyU", "schedAction": 27, "schedCron": "LEBSYBdUSiTOrhB8", "schedRange": ["hVs29WOKmZRTtgyc", "LzXz6lUMKi5mweME", "Zo2ZnL1Zg2JfH4f7"]}, {"action": 22, "resource": "jAevOnES6YJLlb2A", "schedAction": 12, "schedCron": "eRNHIqK5PT404mFw", "schedRange": ["4HJv5T2kIQOecfLs", "YKTmUnKlrOsJmEwj", "GYN8VNPXNsmwTV8i"]}, {"action": 26, "resource": "zhs9Asy4d629N4Yn", "schedAction": 30, "schedCron": "sQuWUBBHZonSmzF8", "schedRange": ["31vlCiZAZHCWMXxV", "h8HTrKqVwnpPn8N5", "xMRgU7cPqNZrLCRR"]}], "clientPlatform": "Uysya4J3rvTzMTMS", "deletable": true, "description": "0QPQPEp5UtwUWGt6", "modulePermissions": [{"moduleId": "tooHP5kAww01zalT", "selectedGroups": [{"groupId": "ddhAQ1pwqnybvUIf", "selectedActions": [42, 53, 41]}, {"groupId": "UiQKZqz5NSp0B7LO", "selectedActions": [61, 82, 4]}, {"groupId": "Boi2sSAO2n4MZQt7", "selectedActions": [80, 87, 76]}]}, {"moduleId": "B93rOW0guPoQbYzc", "selectedGroups": [{"groupId": "1RDVhs2lhdzxxgib", "selectedActions": [43, 5, 34]}, {"groupId": "wdgJMjIyGfiNBQy4", "selectedActions": [62, 79, 68]}, {"groupId": "1gzGCbaxw33rNbE4", "selectedActions": [2, 97, 2]}]}, {"moduleId": "v0KVpXJTMx3Y8Um1", "selectedGroups": [{"groupId": "iqehObg3OZ9j0HDt", "selectedActions": [2, 9, 34]}, {"groupId": "HD6iKBGm5Cj7RqnJ", "selectedActions": [96, 26, 11]}, {"groupId": "roOeqE7fcCAeExeQ", "selectedActions": [100, 2, 76]}]}], "namespace": "EjPyq35BWDoc3qNc", "oauthAccessTokenExpiration": 87, "oauthAccessTokenExpirationTimeUnit": "JgECzvaWUCA7wKru", "oauthRefreshTokenExpiration": 92, "oauthRefreshTokenExpirationTimeUnit": "ry3AQ2sEHvSxjWoM", "redirectUri": "1rNJLM0OOVG5cG6X", "scopes": ["xENbWqlX7idzjpKD", "fwl6XlCF6YxFMD8t", "JQwZvUVInos5RK10"], "skipLoginQueue": false, "twoFactorEnabled": true}' \
    'T3QBt29AiRASsuFM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 27, "resource": "ahGw7XcF1Qwzz606"}, {"action": 96, "resource": "RCe5BtKcwj6PqqOg"}, {"action": 59, "resource": "3TfKx6ByTygbtOtc"}]}' \
    'QS4Cmgw1wRUnIVYx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 83, "resource": "6OhdkrYiCinoVOzo"}, {"action": 86, "resource": "P69t1KqeGz7qbPnX"}, {"action": 62, "resource": "UNvQAn2LuMjLqwmV"}]}' \
    'z3zKsfjz1mFkyxoU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '52' \
    'Q2S5VeW9ddxzLPV8' \
    'wDjsnyPh5yNbYXml' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
$PYTHON -m $MODULE 'iam-admin-get-config-value-v3' \
    'AOi1SC3I1SjkH42L' \
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
    '{"blacklist": ["tyZKrTJo0L5sHil4", "Q0mqa8GatrjbJ5YT", "7uvqarTvrG1DXZAW"]}' \
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
    'lvz3c3XALMresGFf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 141 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "sH4aXCDhshvEF8rH", "AWSCognitoRegion": "d250nyihcUVGHQcz", "AWSCognitoUserPool": "I5ZoTRUkjGoRkPs2", "AllowedClients": ["SO9XrgXNIaU11cBX", "LwTfopqeZtHJnRga", "GfLMFbvyI5PZGzVL"], "AppId": "cmZKKKYARape2tsN", "AuthorizationEndpoint": "czam4Cdd1QYvww4X", "ClientId": "Dokltgq2vXtUnY6U", "Environment": "hDJ4pe0s0Cuhl3dU", "FederationMetadataURL": "9b4seYCyiB4tDCWx", "GenericOauthFlow": false, "IsActive": true, "Issuer": "yxb1of79zVTWIfgd", "JWKSEndpoint": "Nphqe9fS1m77MAg4", "KeyID": "KoZQPLhDSJx9jzxa", "LogoURL": "RKph4kiIFgS4fLql", "NetflixCertificates": {"encryptedPrivateKey": "rKGiS3XxjkyNfj3X", "encryptedPrivateKeyName": "gTRTjI9oNBzgQ4CR", "publicCertificate": "wg0sKVeSpMny0Grv", "publicCertificateName": "KI5EVB9ZFzLNsjdC", "rootCertificate": "FtKY0KsxR0rCFkyi", "rootCertificateName": "QZfMnTbKdwNhiIP7"}, "OrganizationId": "dpJ8B8VwFQnVco2o", "PlatformName": "Cn1KvJmbjapW9UlE", "RedirectUri": "qtzDd7SgxdxB5kvt", "RegisteredDomains": [{"affectedClientIDs": ["M8ah9bPsksceGUEX", "8ERZcKSYLo6y7yJM", "owQ6LpHCvCYTgX9J"], "domain": "QwErzjtuP9pUUv7q", "namespaces": ["efNMFsZAIqak1zi0", "JSa5cRn31D8ubfdX", "i7BycDPckeGJUgU8"], "roleId": "bD5mGFFmKTTUxG0m"}, {"affectedClientIDs": ["pmFxxDNXGlGJvHf5", "58h1ltyhiSGhfqXh", "xBJ7zLXioAGkWgSD"], "domain": "dDQvpRfGe3z2rtjW", "namespaces": ["pJAlKHF0ebxhJ117", "6CeD4dWCp4wqlQJc", "ZroNQiefBnPluOIj"], "roleId": "ZyvlGDQGv6pNNowE"}, {"affectedClientIDs": ["uVVZM28w4mnYvvlt", "1es7A4PFduN4gx0U", "C6eWKCFGS97Si6Xy"], "domain": "LVPrkUxyZ1OH5Nn4", "namespaces": ["nMT8QOyTuUSD9Imt", "aPAocOQcpBWSNrCj", "SNEAdojkCMmYyTGO"], "roleId": "07foRZ6FujpIWo0q"}], "Secret": "Jtqp4Q6XgICLgMHc", "TeamID": "P1eE6sjWQllYsONp", "TokenAuthenticationType": "p6QGW56CNiszHE69", "TokenClaimsMapping": {"D1MMoaf6KlgRtwaM": "2IoyY1wpIdjcAtTj", "1IMuuhxxlulfmya7": "3hX0a8Ri85PA9wNp", "mrK5Y5heA2ewWnFc": "qHxXP3kRhtrBcBof"}, "TokenEndpoint": "WTGYx2ihgioL8VvE", "UserInfoEndpoint": "zHGTt9emdCLmzJbd", "UserInfoHTTPMethod": "kykVAnmnRfUilcKA", "scopes": ["84d9pMsl7zrNJvDi", "P2hNNEI8QrQ6H1ro", "5CtU8UjgyCUpM1JB"]}' \
    'cTzf4dz1BojPoQg9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 142 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    '76409vFd5z9r4nJW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 143 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "UvLp1wxGF747468M", "AWSCognitoRegion": "XUq3uIffkIpPmrWV", "AWSCognitoUserPool": "xNZUvkiU2jXSwsBB", "AllowedClients": ["RopVl38d4NZGtk6E", "mWxC75M88TKhFYkA", "9aRNDe2IoPMSQKcg"], "AppId": "0OTT9JA0ll1RimBC", "AuthorizationEndpoint": "iQwuyrI87uSyXP6C", "ClientId": "0jXS8au2wcWYyj3J", "Environment": "vHqXp4JR7xI59Z9t", "FederationMetadataURL": "fGVsglnOxOXBfgBL", "GenericOauthFlow": true, "IsActive": false, "Issuer": "glkd9LIoshGnFSuH", "JWKSEndpoint": "mrqej8PRppYY1vlV", "KeyID": "0M2g6oreqyBzWzCg", "LogoURL": "MMWZuD6tmIR28xVx", "NetflixCertificates": {"encryptedPrivateKey": "btpSKOfiIP3S6pyp", "encryptedPrivateKeyName": "ZqISn3msrykQFtW8", "publicCertificate": "QGKFZLrIfqrZuu7I", "publicCertificateName": "wKcT7sAsv2TKCbYM", "rootCertificate": "VkXEHmsHwIGGsusS", "rootCertificateName": "0zZRODEKPdudZsLa"}, "OrganizationId": "f8aZrXW84dt0TSTm", "PlatformName": "y7XF26K2U7xttUz8", "RedirectUri": "nWKJjv06PuffHghA", "RegisteredDomains": [{"affectedClientIDs": ["QfAsYXVzBenLtaAo", "YyRfiCWrm3s1Ah3T", "II70MIcBMJ04508j"], "domain": "Kedx0CVRpd7SwZw2", "namespaces": ["UkjDzJ4NuMMgI13n", "plXaUQV5QEvKElLf", "bB7gwwAR1xFrnyir"], "roleId": "w3iJt5iA3JS2xeaJ"}, {"affectedClientIDs": ["08JrSHPqdhKHn6Zj", "ZMdr1C2TIQzRJY7U", "fYSrdN0JVz4U43Ec"], "domain": "V1FRyeeqehMNeRYK", "namespaces": ["eMbL0G4v5D6ylZgu", "O918X7rLoexHBMBM", "MAYokSWFwajRGUyk"], "roleId": "lfLVY6g3PO4hKAeF"}, {"affectedClientIDs": ["4GUV5m96qcCJsVOW", "tu5RPsqd66ImBEuh", "naxZVf6MD9r1y5Ih"], "domain": "r531Kajxq7lzuVRV", "namespaces": ["EvhKIbrq1xsGpdob", "Yun8hcO55hVjfWyK", "02w5QytAmkanukAz"], "roleId": "AMaRvIUhUwguGgbL"}], "Secret": "LN3O7CEYjxqElP5l", "TeamID": "A2FJ0iGLRTXGsC5m", "TokenAuthenticationType": "xxse4eeuMgEctVEu", "TokenClaimsMapping": {"x2MSuwsEHlwdeJyh": "sHS6YqPudWviQsUL", "L1txfX9tqFSkGXoI": "cFN5JL9M53Mg0MzW", "S9usxxnMhjv66DyE": "D4prRVibTATxd7Mz"}, "TokenEndpoint": "jv1gSj8kcNhoqcRZ", "UserInfoEndpoint": "RNATojM7daV0VwR3", "UserInfoHTTPMethod": "yNKDtMqMrAGpdyF6", "scopes": ["WDHn3ePBxQNz2IUE", "HMzl5jhwVDsuzwJ4", "v50eoaIBrTh0EKkJ"]}' \
    'ioUpvGnkcHgCfaWz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 144 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["PUvCnfqsPGgJZyRw", "igaMu07Zek8WObpf", "0FHYfViEj70KYKIf"], "assignedNamespaces": ["Ft4GYjUt4F1ZVy2q", "FfSr3psWjOyHLyKe", "2foqsVIfgBTr8Rcx"], "domain": "RQR0NYdJzf3TMhSa", "roleId": "ynVs05nZC4Os7hqI"}' \
    'H2NgARSG3QQNGNH2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 145 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "K0UuJdeGNquQnaXp"}' \
    'DQ5rU2taDWh9JV5o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 146 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    'c5IFQsrwHqFqwVA5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'RetrieveSSOLoginPlatformCredential' test.out

#- 147 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "mozeeOjIFQfXV3YW", "apiKey": "3ug3nCXhD7FUz1iO", "appId": "e0pHa0LmseIRXeoe", "federationMetadataUrl": "rZAxbDPXU5xJBhIp", "isActive": true, "redirectUri": "9b0Ap7CmSiKPjcwA", "secret": "w5GdxpvLfa4b4hTa", "ssoUrl": "ZBGdX66DqPTdurR3"}' \
    'MYda0Y0BCO4qPnvx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'AddSSOLoginPlatformCredential' test.out

#- 148 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'ERWjKasq5zQ6uZNw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 149 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "KjnX7vDIqpcjmaq5", "apiKey": "KBCsHlwNrfKJrkzw", "appId": "R40tfd9GFXChtxB1", "federationMetadataUrl": "0d4Q8nlBthUSu4WN", "isActive": false, "redirectUri": "TdDq7IqbTVv8BLsq", "secret": "QW8HSrEm5Y7jI232", "ssoUrl": "SjktijiNzTUe8Kdi"}' \
    'zXmrmK0sCUsqxKoc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'UpdateSSOPlatformCredential' test.out

#- 150 AdminListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["HomtjoU1kUqRedwI", "u1TSRr6r8mzfMedp", "cKhvHPlvYanGqEkn"]}' \
    '9OEVwLWGT4MXhmzv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 151 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'RQb7c0vmjWq9fQqz' \
    'ulLGfQMqSLQDlRFY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'AdminGetUserByPlatformUserIDV3' test.out

#- 152 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'MVfiAMa6Pco7Mfvi' \
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
    '{"updateRequest": {"skipLoginQueue": false}, "userIds": ["hc3VUxxZIgkTLqMe", "JPCbs8jWmTteJhwN", "bwHGG39YAZJ4HuLf"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'AdminBulkUpdateUsersV3' test.out

#- 155 AdminGetBulkUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-bulk-user-ban-v3' \
    '{"bulkUserId": ["eTfFBTOFFMJ9pq51", "1jZcTK8zmMfyshYk", "3b5cAFVo85r1b8Yp"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminGetBulkUserBanV3' test.out

#- 156 AdminListUserIDByUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-user-i-ds-v3' \
    '{"userIds": ["2QnuhQuIdvZdj6As", "pWBfRnLcLbp7Omcr", "DJ7u1rrRPcnG89rn"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'AdminListUserIDByUserIDsV3' test.out

#- 157 AdminBulkGetUsersPlatform
$PYTHON -m $MODULE 'iam-admin-bulk-get-users-platform' \
    '{"userIds": ["NW1Yjfn8lY4DnYRx", "Y8ZhHeb0CaPFDjrS", "otKnpJWALpToj9rg"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'AdminBulkGetUsersPlatform' test.out

#- 158 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["r5RffM5JXvPdzEpD", "ln04F8BQjzobhDa8", "VxKOrfVfBRIfkStO"], "isAdmin": true, "namespace": "XIbzWPKOkzftOgDQ", "roles": ["AWhulbrDf7q4cAnp", "mLiEu4CNtX2lnqi7", "cHTSdGoLZbC3UJru"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminInviteUserV3' test.out

#- 159 AdminQueryThirdPlatformLinkHistoryV3
$PYTHON -m $MODULE 'iam-admin-query-third-platform-link-history-v3' \
    'U4uIXBZsEYogFWiH' \
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
    '{"listEmailAddressRequest": ["9z4E8zmaZ5cg0REt", "UWY4fVIdqwCWF5wm", "bOubTxAAeDCowR3M"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminGetBulkUserByEmailAddressV3' test.out

#- 163 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'eCNL1oNrF3SmgudQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AdminGetUserByUserIdV3' test.out

#- 164 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "usJLsPlW7ZyORFkN", "country": "9EbKbTbrDzNgVEcw", "dateOfBirth": "0lxRam16O6v4VjJf", "displayName": "40LjUdORELVXUFQy", "languageTag": "Vlt9jmxmxpfp41k1", "skipLoginQueue": true, "uniqueDisplayName": "zTZ7TXAVRnUVbxEJ", "userName": "cKHE764EwhQfxFKI"}' \
    'OGT1WKSmLoA0ILaE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserV3' test.out

#- 165 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'SC1GJXsoBwqh0TQX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminGetUserBanV3' test.out

#- 166 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "a2j7v3zQJoQLTAlW", "comment": "75icIKUpXazsFrma", "endDate": "GNoi3RPTgWotLNz0", "reason": "u8ySxA0yrjz4q7e0", "skipNotif": true}' \
    'NkuZzJ1XBxw01iBB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminBanUserV3' test.out

#- 167 AdminGetUserBanSummaryV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-summary-v3' \
    'QukgQ94ZvPCWcMX0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminGetUserBanSummaryV3' test.out

#- 168 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": false, "skipNotif": true}' \
    '5pDANyJ184miBhdV' \
    'Jt81fmLSyGuu5rbJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminUpdateUserBanV3' test.out

#- 169 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "VIwRMtwApGbXnR3y", "emailAddress": "C6f2MHGGedk0KzXR", "languageTag": "clOXdPYZQxBnttu4"}' \
    'yW5etl4Xk8Hd1lRt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminSendVerificationCodeV3' test.out

#- 170 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "oPMvsu9oswEPTvzw", "ContactType": "wGnpbx8MCIjKzylq", "LanguageTag": "W8auyseP9wEEyYAn", "validateOnly": true}' \
    'ykRqSPYZgPm4JLsX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminVerifyAccountV3' test.out

#- 171 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'VtBOEetHsxAJ8Ny1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'GetUserVerificationCode' test.out

#- 172 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'LRkPU9hrl5nkpEdB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminGetUserDeletionStatusV3' test.out

#- 173 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"deletionDate": 9, "enabled": false}' \
    'wwAhW2b5OHKtUv4l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminUpdateUserDeletionStatusV3' test.out

#- 174 AdminListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-admin-list-user-all-platform-accounts-distinct-v3' \
    'TkQNjxhXdj1CG0EB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 175 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "gst9Qu8Ofl2oB8VT", "country": "jF0pD3NHU8iYUOtG", "dateOfBirth": "5gbQSKW2MdgCH4bW", "displayName": "xRF6fBPa6GOuV5z0", "emailAddress": "p8jaJs2duQqawPrx", "password": "i6F4elhy9CZ94CAU", "uniqueDisplayName": "VW8FoEf8tjCjWc22", "validateOnly": true}' \
    '021cHN3QbzVuJZH3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminUpgradeHeadlessAccountV3' test.out

#- 176 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'k54cExxWKtdGTW4F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminDeleteUserInformationV3' test.out

#- 177 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'ILotv5ycTa0i6ifY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminGetUserLoginHistoriesV3' test.out

#- 178 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "P1zfgjsy3VRjX4qA", "newPassword": "4g9OGoWw1qnCAvdn", "oldPassword": "AcokJ0rzqX2KJcYH"}' \
    'giFDxclBXap6j73d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminResetPasswordV3' test.out

#- 179 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 30, "Resource": "O4EtB0hn2x1oTOX5", "SchedAction": 13, "SchedCron": "ffv4uzKAwiI4wTxN", "SchedRange": ["IefCmtrxWu293551", "nQBNKcqCkUXRj8gQ", "HEe4CO370OsbzRKK"]}, {"Action": 85, "Resource": "GURjEjnslEYM8ngV", "SchedAction": 93, "SchedCron": "SuO7NxKHUHg0c4X7", "SchedRange": ["fHdITmN9opaF0kh3", "pCRB3infEVxArF7T", "B6A6a71zAJpaPeud"]}, {"Action": 96, "Resource": "W0v25yAObZIbrA8X", "SchedAction": 55, "SchedCron": "vYZw4MWzWFTuNPf5", "SchedRange": ["JCSDyYy4e5qoTZxS", "oZbQUnUxS6m68WL3", "HDL4yx5I0euBsccH"]}]}' \
    'PA2v9XP9enfEX7ll' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminUpdateUserPermissionV3' test.out

#- 180 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 30, "Resource": "xL1OtleUBqBO0Ze0", "SchedAction": 78, "SchedCron": "9k9W6ZLVJzRpUsIT", "SchedRange": ["fVruDukun42zPZvO", "d4yZyMKyED3qDO5H", "Xp5oVkhESbHQ7hvT"]}, {"Action": 23, "Resource": "Tw3wfNGyWf3VujS7", "SchedAction": 57, "SchedCron": "DMcJxfMfYFlt3JvD", "SchedRange": ["gMiyBGygWFTAY3Th", "5mOwPCPKVPlOGfFB", "lu2ZP0IkiYXGk6Bo"]}, {"Action": 57, "Resource": "RT6kulpM4SRtUE5P", "SchedAction": 24, "SchedCron": "kxmHtFbjqurHix0Q", "SchedRange": ["YycDH5we2Mx0sYCn", "YPT4i4mxc14iRfzJ", "wKuc7EpiQEzz5N5o"]}]}' \
    'sRYO7wbYh7q02W8t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AdminAddUserPermissionsV3' test.out

#- 181 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 22, "Resource": "X5lB80k2smdkBS2M"}, {"Action": 0, "Resource": "ccNorRls7EC3nDnh"}, {"Action": 65, "Resource": "gvoDBgYfLBdGNAZE"}]' \
    'vbvxqa0K7VUbjUnz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminDeleteUserPermissionBulkV3' test.out

#- 182 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '16' \
    '0g8HIxpzm9AcFhH4' \
    'ZlYY3rEuHMWwQNmC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminDeleteUserPermissionV3' test.out

#- 183 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'QmGCF963CbsOawlR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminGetUserPlatformAccountsV3' test.out

#- 184 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'BQJH6fNekhk077gx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminGetListJusticePlatformAccounts' test.out

#- 185 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    'aj55huTA6AvmW056' \
    '7BFqbrPIuxKmBXLi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminGetUserMapping' test.out

#- 186 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    '6GpnqAeMvg3w0FQ1' \
    '520WM3TxWXSdTiKd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminCreateJusticeUser' test.out

#- 187 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "va2UREoBSFtCLy2C", "platformUserId": "qgCG7JwJCDqkzOdF"}' \
    'wLJpIPxzLE1V9U1N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminLinkPlatformAccount' test.out

#- 188 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "gpH7Oc44yjRdfqZg"}' \
    'v34GqqjelcN0GJmP' \
    'wUTWMx0MiPAjnWIh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminPlatformUnlinkV3' test.out

#- 189 AdminPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-all-v3' \
    'FrqSn4erXEtU1CaD' \
    '8AqsMCGBNhmUt6fz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminPlatformUnlinkAllV3' test.out

#- 190 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'YRn85brTu8F7cuCP' \
    'h1TGZJmgWNHWnvOB' \
    'RCt4onqRo2PnMSRa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminPlatformLinkV3' test.out

#- 191 AdminDeleteUserLinkingHistoryByPlatformIDV3
$PYTHON -m $MODULE 'iam-admin-delete-user-linking-history-by-platform-idv3' \
    'rKg4coy3AFpULIn2' \
    '1Nf2FNgDWNC6yh7k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminDeleteUserLinkingHistoryByPlatformIDV3' test.out

#- 192 AdminGetThirdPartyPlatformTokenLinkStatusV3
$PYTHON -m $MODULE 'iam-admin-get-third-party-platform-token-link-status-v3' \
    'gTHlrxKbsV4XtrI7' \
    'SFBEgkwHifMHYI58' \
    '1HbF7fMX9lDXYxGR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 193 AdminGetUserSinglePlatformAccount
$PYTHON -m $MODULE 'iam-admin-get-user-single-platform-account' \
    'JM92eX42WW2WKf5u' \
    'rEOpASBicX3ZwzZ7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminGetUserSinglePlatformAccount' test.out

#- 194 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["aVhrkmhSOEozGOv8", "D0iVxzrec5kNwJAx", "m0Rdm9l6nIhG5Sil"]' \
    'DDIsmj4h625dIsMK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminDeleteUserRolesV3' test.out

#- 195 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "WBxF9RAIrI81ZR2k", "roleId": "Nzh60RQNaTEhMXMe"}, {"namespace": "pgzY9jLiAdMiQ7eD", "roleId": "MkeBRMur18nCxiV9"}, {"namespace": "bQMHpPbvflI3LkRc", "roleId": "1NgZaoYAaCCeRgts"}]' \
    'tsU3Qecxo4bQZO3P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminSaveUserRoleV3' test.out

#- 196 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    '2f8TTOVf6jrr1OL6' \
    '06QpqCgxt0NgDSj1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminAddUserRoleV3' test.out

#- 197 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'T6EdeYFmrLT0HbvS' \
    '4kSSt3CyDgf6eFAi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminDeleteUserRoleV3' test.out

#- 198 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": true, "reason": "HGNI3BfjkFd6MHo6"}' \
    'gGQ5mChYoKD7yqCR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'AdminUpdateUserStatusV3' test.out

#- 199 AdminTrustlyUpdateUserIdentity
$PYTHON -m $MODULE 'iam-admin-trustly-update-user-identity' \
    '{"emailAddress": "03RovQZhwfjkq9iy", "password": "TbyD3D01tRpuuyIa"}' \
    'gSSzEL8H4euLufhQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'AdminTrustlyUpdateUserIdentity' test.out

#- 200 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'j2KP3LLxl9Hs2L2w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 201 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "lpKBVURxHefz77a9"}' \
    'fntCNiHBRUNCPSre' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'AdminUpdateClientSecretV3' test.out

#- 202 AdminCheckThirdPartyLoginPlatformAvailabilityV3
$PYTHON -m $MODULE 'iam-admin-check-third-party-login-platform-availability-v3' \
    '5GmZzCQwilS3IxSj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 203 AdminGetRolesV3
$PYTHON -m $MODULE 'iam-admin-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'AdminGetRolesV3' test.out

#- 204 AdminCreateRoleV3
$PYTHON -m $MODULE 'iam-admin-create-role-v3' \
    '{"adminRole": false, "deletable": true, "isWildcard": true, "managers": [{"displayName": "vR9PxG9Lji2Vc88W", "namespace": "8aLjIxVGpdOqguxv", "userId": "RwI9ZBTipMRlhK9D"}, {"displayName": "MMaI4ryVDvNaruZx", "namespace": "wTfh9gEs6GF247cb", "userId": "BLjUr5z03wxB3E9h"}, {"displayName": "rE9f9COFrOr6wJDB", "namespace": "wIDsJHNg6TvNGjwI", "userId": "4TbTwBufUorJoudu"}], "members": [{"displayName": "hCEJ5XiKDIE9Yugc", "namespace": "upLxVBcRkfhRuqkO", "userId": "THSia7oFd1fEmDuy"}, {"displayName": "AsQGzwJR5poI718R", "namespace": "Qnj4imu6XFfRcWDX", "userId": "hq1YmGeygr2S4Yw8"}, {"displayName": "NmPaBeryzX2hOPVV", "namespace": "FqVqxjq1iG3TySOh", "userId": "8SI75oXbyq8FBbur"}], "permissions": [{"action": 76, "resource": "0QwnlgAVfqz6gQJh", "schedAction": 38, "schedCron": "nT89A88GDOUClGyz", "schedRange": ["YgnYTdim6PkRoq5T", "O65KWh8ztRJkXxUA", "j3jzZvEaY103YUIM"]}, {"action": 41, "resource": "FMWAFT7l0l1jaOAM", "schedAction": 57, "schedCron": "JqQqhISTBT1Gofv4", "schedRange": ["SuaZ8yCB9TVZnuzg", "vAZJRm71EC3ENuvD", "8OPsp5Z3ez84KVB7"]}, {"action": 69, "resource": "lYylYAiZ8c7Zd7EU", "schedAction": 30, "schedCron": "SGzkMpTL2wxobjxA", "schedRange": ["bagqEmXn6U2VeV2e", "mK3JecJA4skqCbPx", "RkIAFQh9yDdoLE2s"]}], "roleName": "7mrVrmTJwtBTzQTr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'AdminCreateRoleV3' test.out

#- 205 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'No1LcWNf7xHpi1JZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'AdminGetRoleV3' test.out

#- 206 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'JjIRtCfqDHSlo54z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'AdminDeleteRoleV3' test.out

#- 207 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": false, "isWildcard": false, "roleName": "CngWAv5DAG8dPdkK"}' \
    'gQqjyzUZR2rFIAuA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'AdminUpdateRoleV3' test.out

#- 208 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    'LNhNCyscsMBRLsWa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'AdminGetRoleAdminStatusV3' test.out

#- 209 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'dk2OQ421q7Nb1vrK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'AdminUpdateAdminRoleStatusV3' test.out

#- 210 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'thVvU5on065ApCkV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'AdminRemoveRoleAdminV3' test.out

#- 211 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'N3QchuQ6pntxB648' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'AdminGetRoleManagersV3' test.out

#- 212 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "ss7rBnvQHAM8gSdI", "namespace": "ybKUByHBzfvgtRTP", "userId": "PzwJmKaLCx3gcidE"}, {"displayName": "ALWe6RG5wWznu5Aj", "namespace": "wR1Z4fU7ICcaQtuu", "userId": "KUw3dUwWHhQW3I1y"}, {"displayName": "9tjRLVOXBMa0JiIe", "namespace": "1AY0tUA7EKASk3US", "userId": "NLhOBlxRBLgohp8B"}]}' \
    'yTi2F6AyUX8w77ri' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'AdminAddRoleManagersV3' test.out

#- 213 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "PlPgJcLbeQf9MICx", "namespace": "X7xKyCfgwSPz14as", "userId": "yOdgn77gN8K1FlNk"}, {"displayName": "gbFE8U4meK5grmPB", "namespace": "sFH71VrhsISYtegQ", "userId": "bNA2WQrHTkJT1VkC"}, {"displayName": "hD3n0c1ryAkRvdPR", "namespace": "8gx2rX5dck8NFKPg", "userId": "T6LMehg047axU5kt"}]}' \
    'NywRIvO2Sgz30hej' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'AdminRemoveRoleManagersV3' test.out

#- 214 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'qdktHIO1VdtMSews' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'AdminGetRoleMembersV3' test.out

#- 215 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "1TrU4FhAfKDcDG5b", "namespace": "MTba1tUlFGcP6eL7", "userId": "EpWtPifmO0JK4dP1"}, {"displayName": "aZFiSkmhwVVMGkXN", "namespace": "wMYwFyljy5bYQdQ8", "userId": "7hUHA0FJZwP8GslM"}, {"displayName": "px3m7lEXTmnTbtjK", "namespace": "9RsyoqT3adB48Jxp", "userId": "2zaItg9jTNZvpFEU"}]}' \
    'I21aSaIsMyLKPPIZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'AdminAddRoleMembersV3' test.out

#- 216 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "x0zdNAagipZwiaBr", "namespace": "FrXtGMjujfHZB1gM", "userId": "I1B8DXb37DffTZ7y"}, {"displayName": "Qz337LLNCjIySe36", "namespace": "SA5dxATLv5PkLvra", "userId": "RzChdjDGdlk2A2jH"}, {"displayName": "bAPNGInvbnf4ewKF", "namespace": "FLoGggX4gQWyZocv", "userId": "Yfr0Rnl02R1IVNna"}]}' \
    'K6KS71Xs1BphA9BX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'AdminRemoveRoleMembersV3' test.out

#- 217 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 31, "resource": "yod5L6OooYoQn9iH", "schedAction": 62, "schedCron": "7j2BrdCAm3slCwaB", "schedRange": ["qHpE55sjxBGijw0d", "QtZNonMrPkzUe9Sg", "lAJGyZS0I8FevJiT"]}, {"action": 80, "resource": "HUBp56Q4WETxtGMs", "schedAction": 63, "schedCron": "tPKPuK0K4PiMDTR7", "schedRange": ["LxihuOn57io0d9dG", "3yzaNbGeASX83SLi", "IbAP2qyUnHnfrEdD"]}, {"action": 10, "resource": "j5O6IBwXJjgQjgLo", "schedAction": 73, "schedCron": "fM4qnUdcQqZ9F1ui", "schedRange": ["vPob0YZEuXQACDDQ", "ryNf9VGxbOeJe4n9", "eUlBQZ2UGePWXbAy"]}]}' \
    'GiXa9nUsHCVicuJ7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'AdminUpdateRolePermissionsV3' test.out

#- 218 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 30, "resource": "9bSqqyAPha5b6PQT", "schedAction": 85, "schedCron": "9KwFYqdhEVq3hbsA", "schedRange": ["peASfR0ljKxqZcLu", "hwNDvValv3bkoMXN", "zl1ywEPiunixlEAH"]}, {"action": 91, "resource": "zHs8x5oPSkZFIV2f", "schedAction": 10, "schedCron": "NeKpOxPrlG9svdqs", "schedRange": ["iVTqPbzY1yxl7zeE", "pmSPO6KwlJQlj9Ii", "2jARwzowk9OoiPdn"]}, {"action": 34, "resource": "zC77J4irvZ9tktWL", "schedAction": 40, "schedCron": "1OHbpQZtwW3EwLre", "schedRange": ["1bL4dJnkRLJbMvOG", "Sd7uMrmQ2SaLd6M7", "TM3wnJyExuo5z9RA"]}]}' \
    'cYgYZb7cAakJpqN6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'AdminAddRolePermissionsV3' test.out

#- 219 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["eubdp49JFwXG0Evo", "SHNC97eEyhnL1QH5", "AlYRAqCAC2gy1WF9"]' \
    'QLNgDxAkwgfB8jIe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'AdminDeleteRolePermissionsV3' test.out

#- 220 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '5' \
    'CP75cm8YDChFi3zL' \
    'vfQWC85MxWxvW0ve' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'AdminDeleteRolePermissionV3' test.out

#- 221 AdminGetMyUserV3
$PYTHON -m $MODULE 'iam-admin-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'AdminGetMyUserV3' test.out

#- 222 UserAuthenticationV3
$PYTHON -m $MODULE 'iam-user-authentication-v3' \
    'Fl3uU1aMD0mczWxc' \
    '8f1s2QPMMZsf2dvK' \
    'ZyHChRPHvdkcKW21' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 222 'UserAuthenticationV3' test.out

#- 223 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    'B5EFtD2pYaKTz1gc' \
    'E2XCwTkRUIX6IFHN' \
    'mB9mYBvtOwxjqyrj' \
    'DApeN5eAfRqSgH5x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'AuthenticationWithPlatformLinkV3' test.out

#- 224 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    'IuBTYOdsvNyk52MQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 225 RequestOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-request-one-time-linking-code-v3' \
    'FkVVEf36S7yPgG48' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'RequestOneTimeLinkingCodeV3' test.out

#- 226 ValidateOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-validate-one-time-linking-code-v3' \
    'bk6PwH1tdEAJSqXA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'ValidateOneTimeLinkingCodeV3' test.out

#- 227 RequestTokenByOneTimeLinkCodeResponseV3
$PYTHON -m $MODULE 'iam-request-token-by-one-time-link-code-response-v3' \
    '0Wv0zWGvkc6byp3m' \
    'vyYT3GuaZVTxBlw1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 228 GetCountryLocationV3
$PYTHON -m $MODULE 'iam-get-country-location-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'GetCountryLocationV3' test.out

#- 229 Logout
$PYTHON -m $MODULE 'iam-logout' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'Logout' test.out

#- 230 RequestTokenExchangeCodeV3
$PYTHON -m $MODULE 'iam-request-token-exchange-code-v3' \
    'IWeXKFT4rfSbbSlD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'RequestTokenExchangeCodeV3' test.out

#- 231 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'PGf9Fn32SJNPZkEf' \
    'kAcJTMS4pVRcCHIG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 232 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    'fmCMTr9ACnI2sMrE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'RevokeUserV3' test.out

#- 233 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    'gl7ZR1HCkf2Sw78l' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 233 'AuthorizeV3' test.out

#- 234 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'KjDHuXt358gzqRMu' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 234 'TokenIntrospectionV3' test.out

#- 235 GetJWKSV3
$PYTHON -m $MODULE 'iam-get-jwksv3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'GetJWKSV3' test.out

#- 236 SendMFAAuthenticationCode
$PYTHON -m $MODULE 'iam-send-mfa-authentication-code' \
    'MPrIekxq58fikq83' \
    'hqJ7HP63Se6kVW5f' \
    'kl60ImLBv6nUU0r1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'SendMFAAuthenticationCode' test.out

#- 237 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    'rfX9stpvJUuyPdzx' \
    '8BM2wEgTtLRT5stw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'Change2faMethod' test.out

#- 238 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    'QFUEbTPQ8p7VMlxE' \
    'XnqHwMyKpwphjUXv' \
    'M1GqMkZ44UXgdBqt' \
    'true' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'Verify2faCode' test.out

#- 239 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'aRyDlP9qIZJ5Krx6' \
    'KkHagEugKJxkU8Y5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 240 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    '8COtTNjnNSikJDg6' \
    'ujKvq0CIa1YCK9Pl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'AuthCodeRequestV3' test.out

#- 241 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'MeQprfgLGkHX1tdB' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 241 'PlatformTokenGrantV3' test.out

#- 242 GetRevocationListV3
$PYTHON -m $MODULE 'iam-get-revocation-list-v3' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 242 'GetRevocationListV3' test.out

#- 243 TokenRevocationV3
$PYTHON -m $MODULE 'iam-token-revocation-v3' \
    'jKmCBXETZwqdzAX2' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 243 'TokenRevocationV3' test.out

#- 244 SimultaneousLoginV3
$PYTHON -m $MODULE 'iam-simultaneous-login-v3' \
    'steam' \
    'DikGk8cWiX44azSH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'SimultaneousLoginV3' test.out

#- 245 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'authorization_code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 245 'TokenGrantV3' test.out

#- 246 VerifyTokenV3
$PYTHON -m $MODULE 'iam-verify-token-v3' \
    'WiCpVBwvAffJ3btt' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 246 'VerifyTokenV3' test.out

#- 247 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    '0PpQY3Pnnic80yEO' \
    '8dL6Jh10XMUGeDav' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'PlatformAuthenticationV3' test.out

#- 248 PlatformTokenRefreshV3
$PYTHON -m $MODULE 'iam-platform-token-refresh-v3' \
    'CKradJmJFUsU418v' \
    'AlmfGg9NO1Z2DvnA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'PlatformTokenRefreshV3' test.out

#- 249 PublicGetInputValidations
$PYTHON -m $MODULE 'iam-public-get-input-validations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'PublicGetInputValidations' test.out

#- 250 PublicGetInputValidationByField
$PYTHON -m $MODULE 'iam-public-get-input-validation-by-field' \
    'xH3pS3jyCkGKltBN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'PublicGetInputValidationByField' test.out

#- 251 PublicGetCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction-v3' \
    'E2UbhNtH3yYg4Qnn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'PublicGetCountryAgeRestrictionV3' test.out

#- 252 PublicGetConfigValueV3
$PYTHON -m $MODULE 'iam-public-get-config-value-v3' \
    '2uhdw7C9Bx1LQOTC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'PublicGetConfigValueV3' test.out

#- 253 PublicGetCountryListV3
$PYTHON -m $MODULE 'iam-public-get-country-list-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'PublicGetCountryListV3' test.out

#- 254 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-public-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 255 RetrieveActiveOIDCClientsPublicV3
$PYTHON -m $MODULE 'iam-retrieve-active-oidc-clients-public-v3' \
    'bAPLC3iqrkyJFOVa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 256 PublicListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["ewFcv9h31YxuZnoS", "esWpLUHjGaIcZN28", "gH4Cd9xTdt2K1Czp"]}' \
    'QWslNGnLYUYR0yOv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 257 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    'JhUjzcMtwINUlrhI' \
    'pnlam2EefVopbpPh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'PublicGetUserByPlatformUserIDV3' test.out

#- 258 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    'sana0uXG7GUTV1Bw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'PublicGetAsyncStatus' test.out

#- 259 PublicSearchUserV3
$PYTHON -m $MODULE 'iam-public-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'PublicSearchUserV3' test.out

#- 260 PublicCreateUserV3
$PYTHON -m $MODULE 'iam-public-create-user-v3' \
    '{"PasswordMD5Sum": "gkLDj4pjVktyoNSs", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "77SotDEtU2xBSEQ8", "policyId": "rBKc2K6oJXxVEfna", "policyVersionId": "qX8NuZtRUTKUvR69"}, {"isAccepted": false, "localizedPolicyVersionId": "kz4kvEv6tNjGRhrm", "policyId": "RAxRGeIKGlCJmDXp", "policyVersionId": "jyvLSHB1y3klHuAG"}, {"isAccepted": false, "localizedPolicyVersionId": "tClc3RDXF5055tUl", "policyId": "enimjIbm0riCaNp8", "policyVersionId": "dUBDinAB6HqIWIi5"}], "authType": "Bvb1rcuEtWAF763k", "code": "ci7lT62BOHaso53W", "country": "3U2Mu9ZGMWou1U0R", "dateOfBirth": "VCf3gMWDAodCKqfq", "displayName": "zeexHA70NgJTxjtz", "emailAddress": "gO7W3taRvJ6lKWJw", "password": "HO65aOFDwpqy7XOU", "reachMinimumAge": false, "uniqueDisplayName": "DwglyMGNll4O8ELa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'PublicCreateUserV3' test.out

#- 261 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'hcNJqRjepck1l0qx' \
    'RyQ2pi7xuAufJakI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'CheckUserAvailability' test.out

#- 262 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["PXOQznHZTj8oYfWO", "byNJKVSQsaCokoGy", "np6xcqNKJnAhrSt9"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'PublicBulkGetUsers' test.out

#- 263 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "6OaARAjHLGV3sNxS", "languageTag": "8uLBZiVRYIyQLcsl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'PublicSendRegistrationCode' test.out

#- 264 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "TEqgVNG8Aqktgvjw", "emailAddress": "NJAwIpEy2ZNpojZ2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'PublicVerifyRegistrationCode' test.out

#- 265 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "4I2n25smsrmJFHGi", "languageTag": "YnyhbqxLuTZIxgiU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'PublicForgotPasswordV3' test.out

#- 266 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    'aiyy0aWrshpmb1C9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'GetAdminInvitationV3' test.out

#- 267 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"PasswordMD5Sum": "Al7eWrbNRE0xyYPU", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "G6jZzoYIFAvYfT8X", "policyId": "Qw2EOq6BFjmN4OqK", "policyVersionId": "GLRpNWzKZtZnxgyw"}, {"isAccepted": false, "localizedPolicyVersionId": "SSiSpXeWOGayfRkQ", "policyId": "voN06SpNOnuSksfm", "policyVersionId": "7hcIFdkdrwAcK2lU"}, {"isAccepted": false, "localizedPolicyVersionId": "HLMxhx9nC3o6pXU5", "policyId": "MDJLCB6WbXWIRpgj", "policyVersionId": "ooaBVemsbkaXZQ6n"}], "authType": "Tj9rZpkSntuOeaPA", "code": "yPeEGBepK1Ix4Swj", "country": "CYjCHniVSn1gYGal", "dateOfBirth": "5NrBtT0om9OlGzpF", "displayName": "25qu98RhktX6qwkX", "emailAddress": "bCLbh8t0zPkQWRUl", "password": "gE0kxzFMq9ttbEHA", "reachMinimumAge": true, "uniqueDisplayName": "UxJ2xMSNNBxCeN3p"}' \
    'Gn46fGvodt413MRd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'CreateUserFromInvitationV3' test.out

#- 268 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "G8qAPiANv2Ar8yXV", "country": "6qf6v5SgcJPZPUh2", "dateOfBirth": "nHQwpWi8HZ6C0VJ0", "displayName": "fK2m6lQ5Ao8TITYi", "languageTag": "HSR2SEJh1YDedZdN", "uniqueDisplayName": "qkXPWZfT8ZfdKp9q", "userName": "4nXuK0tJAYror2Xd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'UpdateUserV3' test.out

#- 269 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "tSCG7ZExOoIpWzac", "country": "OvwUsnIbQM3ZAtyE", "dateOfBirth": "WKWoZRUL7wS3HaMT", "displayName": "XAX6y0STTN2sBEij", "languageTag": "jjpvSzGkED0oweFY", "uniqueDisplayName": "DBPyd1jJBxbrbuFa", "userName": "y9PXgEQS4871QSms"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'PublicPartialUpdateUserV3' test.out

#- 270 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "spn5sNfifK65tvaH", "emailAddress": "9jwcO48pthyYpBJD", "languageTag": "HIIxTIGI5EssYllI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'PublicSendVerificationCodeV3' test.out

#- 271 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "qjJzuQ8GglVgxjOG", "contactType": "QGlHm8VTN56tJKwD", "languageTag": "8O07L9GG1uenDihc", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'PublicUserVerificationV3' test.out

#- 272 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "tbq5KikDE7hWvT5b", "country": "zcfzIpL2pWB4Xsdr", "dateOfBirth": "xIF6kEAmKGNEmFPc", "displayName": "UALNziO9Bz2wx4kD", "emailAddress": "Am8XIleiujtv2NdQ", "password": "TYoHZogW8lBvniHd", "uniqueDisplayName": "ARadfSoctA3GYO94", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'PublicUpgradeHeadlessAccountV3' test.out

#- 273 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "Oo94gS5DHLB65fxQ", "password": "06GwTmobiBnfrnq9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'PublicVerifyHeadlessAccountV3' test.out

#- 274 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "kOFBWhUTPiKR3qcb", "newPassword": "HLGplYsS3jsRZffC", "oldPassword": "d00VrgPuNtOv3jbh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'PublicUpdatePasswordV3' test.out

#- 275 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'GBuW8KcyPMfDWSEE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'PublicCreateJusticeUser' test.out

#- 276 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'pKoJlmhMQUCx70Qj' \
    'YbzemOTURzzAOIBa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'PublicPlatformLinkV3' test.out

#- 277 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "rB7kcer5SvPLeQZI"}' \
    'pKFXgnsxx3c2bUsO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'PublicPlatformUnlinkV3' test.out

#- 278 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    '7FP8RmOstZAGDgiV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'PublicPlatformUnlinkAllV3' test.out

#- 279 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    'sV2OttwJaMxPDIJ5' \
    'hFQHumFvPKqupHj7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'PublicForcePlatformLinkV3' test.out

#- 280 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    '2TlLs964iABOgTKt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'PublicWebLinkPlatform' test.out

#- 281 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'naA7O35Iaytd9CsA' \
    'MTZC37xPXxnfggnZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'PublicWebLinkPlatformEstablish' test.out

#- 282 PublicProcessWebLinkPlatformV3
$PYTHON -m $MODULE 'iam-public-process-web-link-platform-v3' \
    '3EZp6wSAufwYirs9' \
    'lwvPKd925u3fFLV0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'PublicProcessWebLinkPlatformV3' test.out

#- 283 PublicGetUsersPlatformInfosV3
$PYTHON -m $MODULE 'iam-public-get-users-platform-infos-v3' \
    '{"platformId": "YeMrVaYSTRYGFzgL", "userIds": ["Z7gEypQf2Pn9A4gc", "bDJ0LmdnOPkIT1C6", "KGTpA7JZ6xullPRO"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'PublicGetUsersPlatformInfosV3' test.out

#- 284 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "SfiW9zcxmgNfTHu3", "emailAddress": "vkZt9FgWckjNpHhM", "newPassword": "2ZXp4N0ROmUCTrS7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'ResetPasswordV3' test.out

#- 285 PublicGetUserByUserIdV3
eval_tap 0 285 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 286 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    'Gi9Iigk9vamO7Q2W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'PublicGetUserBanHistoryV3' test.out

#- 287 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'QwSWqSs05rjISy4B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 288 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    '0X9AJdkT7UYCV8ag' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'PublicGetUserInformationV3' test.out

#- 289 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'vwOI2LlOQNRN132R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'PublicGetUserLoginHistoriesV3' test.out

#- 290 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'dgwMXv9olKpRyWQi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'PublicGetUserPlatformAccountsV3' test.out

#- 291 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    'm3qlART9mPPmYUvl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'PublicListJusticePlatformAccountsV3' test.out

#- 292 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "kBGPJFaFzkABC8zW", "platformUserId": "McYW5iRrw32FRg8y"}' \
    '4rOuj7J6ijJbcycX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'PublicLinkPlatformAccount' test.out

#- 293 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["mBcrJLb7labyotif", "Vk9KyqceGv0CEDTV", "SjINYeKLowG7UQB9"], "requestId": "pXzuCK5qd2m8A5ax"}' \
    'ixm9X9TXNhN8y1PV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'PublicForceLinkPlatformWithProgression' test.out

#- 294 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    'riIyv9kjuiAGiXx4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'PublicGetPublisherUserV3' test.out

#- 295 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    '7etMikLFggYDc2FM' \
    'bzZoeKagnKf2Yifz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 296 PublicGetRolesV3
$PYTHON -m $MODULE 'iam-public-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'PublicGetRolesV3' test.out

#- 297 PublicGetRoleV3
$PYTHON -m $MODULE 'iam-public-get-role-v3' \
    'vr9OqTsInGzHFpFX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'PublicGetRoleV3' test.out

#- 298 PublicGetMyUserV3
$PYTHON -m $MODULE 'iam-public-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'PublicGetMyUserV3' test.out

#- 299 PublicGetLinkHeadlessAccountToMyAccountConflictV3
$PYTHON -m $MODULE 'iam-public-get-link-headless-account-to-my-account-conflict-v3' \
    'YJtHtqwoIwQBeIAL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 300 LinkHeadlessAccountToMyAccountV3
$PYTHON -m $MODULE 'iam-link-headless-account-to-my-account-v3' \
    '{"chosenNamespaces": ["I8JNIII4jrzrPsuM", "ziNM8AB7RRxiZH3n", "gnitURdMjZLYCaek"], "oneTimeLinkCode": "lQcFY1QIk1h5EKvM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'LinkHeadlessAccountToMyAccountV3' test.out

#- 301 PublicSendVerificationLinkV3
$PYTHON -m $MODULE 'iam-public-send-verification-link-v3' \
    '{"languageTag": "Gd6hQ2mHjmLu4oFl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'PublicSendVerificationLinkV3' test.out

#- 302 PublicVerifyUserByLinkV3
$PYTHON -m $MODULE 'iam-public-verify-user-by-link-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'PublicVerifyUserByLinkV3' test.out

#- 303 PlatformAuthenticateSAMLV3Handler
$PYTHON -m $MODULE 'iam-platform-authenticate-samlv3-handler' \
    'ReHy0JyZv7honqei' \
    'GTTqpgVsY1kPNdJi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'PlatformAuthenticateSAMLV3Handler' test.out

#- 304 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'JXB3yjNUPIfvoXRO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'LoginSSOClient' test.out

#- 305 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    '0CkW1ZcgUSbbnffB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'LogoutSSOClient' test.out

#- 306 RequestTargetTokenResponseV3
$PYTHON -m $MODULE 'iam-request-target-token-response-v3' \
    'WRaJN1SjCFLDNJfA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'RequestTargetTokenResponseV3' test.out

#- 307 AdminListInvitationHistoriesV4
$PYTHON -m $MODULE 'iam-admin-list-invitation-histories-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'AdminListInvitationHistoriesV4' test.out

#- 308 AdminGetDevicesByUserV4
$PYTHON -m $MODULE 'iam-admin-get-devices-by-user-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'AdminGetDevicesByUserV4' test.out

#- 309 AdminGetBannedDevicesV4
$PYTHON -m $MODULE 'iam-admin-get-banned-devices-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'AdminGetBannedDevicesV4' test.out

#- 310 AdminGetUserDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-user-device-bans-v4' \
    'hJGwSYEZjEb0Pv35' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'AdminGetUserDeviceBansV4' test.out

#- 311 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "fEk9s11bFXkf7rQJ", "deviceId": "4Kj7Qyo9tUptiyZz", "deviceType": "RX8Y4rxRWZPe4ZLA", "enabled": true, "endDate": "W6ADLtn7oInn1Bz3", "ext": {"wM3BI51etn17OcmS": {}, "VHZ6wtPVAwgvxYxX": {}, "JTduZp1nNYHREmm1": {}}, "reason": "cBuaRaGeM8yxRfej"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'AdminBanDeviceV4' test.out

#- 312 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    'qSbVgLd1FoyNFGpu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'AdminGetDeviceBanV4' test.out

#- 313 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": false}' \
    'r2K0IvVg5LwUygH9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'AdminUpdateDeviceBanV4' test.out

#- 314 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    '8dzTL8azKCCNBZpw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'AdminGenerateReportV4' test.out

#- 315 AdminGetDeviceTypesV4
$PYTHON -m $MODULE 'iam-admin-get-device-types-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'AdminGetDeviceTypesV4' test.out

#- 316 AdminGetDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-device-bans-v4' \
    'RFNYxx2dr6DDuDHX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'AdminGetDeviceBansV4' test.out

#- 317 AdminDecryptDeviceV4
$PYTHON -m $MODULE 'iam-admin-decrypt-device-v4' \
    'cfvXPXJURX3XwhOl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'AdminDecryptDeviceV4' test.out

#- 318 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    'gcpcOIxqCMSpZxby' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'AdminUnbanDeviceV4' test.out

#- 319 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    '2J9vGOUeSeGb02vD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'AdminGetUsersByDeviceV4' test.out

#- 320 AdminGetNamespaceInvitationHistoryV4
$PYTHON -m $MODULE 'iam-admin-get-namespace-invitation-history-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'AdminGetNamespaceInvitationHistoryV4' test.out

#- 321 AdminGetNamespaceUserInvitationHistoryV4
$PYTHON -m $MODULE 'iam-admin-get-namespace-user-invitation-history-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 322 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"count": 85}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'AdminCreateTestUsersV4' test.out

#- 323 AdminCreateUserV4
$PYTHON -m $MODULE 'iam-admin-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "Upv5VEdIG82dpIbf", "policyId": "xVFfdvKQVgPQw3MV", "policyVersionId": "Xe4xBPDWHRHCCVDB"}, {"isAccepted": false, "localizedPolicyVersionId": "jPUQWYVxGQVFJlDD", "policyId": "J7z4Pb5jyGID39Un", "policyVersionId": "g1D57FjYKlJiRIvh"}, {"isAccepted": false, "localizedPolicyVersionId": "Cbi2llksf6GA8vTt", "policyId": "92kldCoyRdiOikUd", "policyVersionId": "qGocLYBaRC7T5qSl"}], "authType": "EMAILPASSWD", "code": "WN3ncPkqiTKzz72P", "country": "KXjShM2DvesmMIbi", "dateOfBirth": "QfaHxl2YUNRLRjgK", "displayName": "qSSYgZnVfa8govtt", "emailAddress": "lpFAq8oebnS4Y2zk", "password": "GYTr9yJIveX52r6I", "passwordMD5Sum": "nl9VTJB9Al3mn2Ds", "reachMinimumAge": true, "uniqueDisplayName": "DHzSVJzhU5Z44zgZ", "username": "1fieLdl3Y82DOj5k"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'AdminCreateUserV4' test.out

#- 324 AdminBulkUpdateUserAccountTypeV4
$PYTHON -m $MODULE 'iam-admin-bulk-update-user-account-type-v4' \
    '{"testAccount": true, "userIds": ["XOBDpR7SH93AE1To", "j5vygVvLSJvdsGpm", "mUeMikW3s54zffAL"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 325 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["2DZ7gBhy77iRVFfF", "vWenMNV00KVuLF9W", "DnGO3bpQWmnS52Zu"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'AdminBulkCheckValidUserIDV4' test.out

#- 326 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "uuI7F1xpVrcoXzSO", "country": "EGEDYfiGPYo2K3dN", "dateOfBirth": "3YBOJfvV6SuHovoQ", "displayName": "lk5wL2oXDZ20Bw2H", "languageTag": "4tz6KUC4jXGj2G0G", "skipLoginQueue": false, "uniqueDisplayName": "3JBYi9bBKBRpdbLC", "userName": "iwxOx2XQn94xPqXh"}' \
    'qeNMDGA3O5hQAl6U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'AdminUpdateUserV4' test.out

#- 327 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "2g9imVMh3i7j095r", "emailAddress": "DL6lEuB1ZIMIs1dF"}' \
    'vYokH9t2u8ZZnyHK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'AdminUpdateUserEmailAddressV4' test.out

#- 328 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    'kk6Gh25tEcX9GegD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'AdminDisableUserMFAV4' test.out

#- 329 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'nrYz0GFpSVdxFsXA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'AdminListUserRolesV4' test.out

#- 330 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["p1roclyXllFitPam", "SKRzDIZgSk6suS90", "ZbDdmjU11QIZtkSn"], "roleId": "8QRbA5V4gjWv1W6c"}' \
    'qnvSuKswQ7vH8GSc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'AdminUpdateUserRoleV4' test.out

#- 331 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["nP5QzRBY1UrefgmV", "FBVz4KRCU0p4jIt0", "1gzH17IcfJyGulmB"], "roleId": "yN5rcDA3Wcv9ouAL"}' \
    'jgLZZzLU9w8MJRIz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'AdminAddUserRoleV4' test.out

#- 332 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["IgJKg9y86BgnBQtm", "5AilVhASFlYMVJtE", "2dAeC7pF73y9eALK"], "roleId": "WinUJ7bAuUJ7Fxg5"}' \
    'LijlQTVq8Bh1p0NC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'AdminRemoveUserRoleV4' test.out

#- 333 AdminGetRolesV4
$PYTHON -m $MODULE 'iam-admin-get-roles-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'AdminGetRolesV4' test.out

#- 334 AdminCreateRoleV4
$PYTHON -m $MODULE 'iam-admin-create-role-v4' \
    '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "kLU5ty3uQa7Fl3Zh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'AdminCreateRoleV4' test.out

#- 335 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'SMLtrwnjTJVDlh11' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'AdminGetRoleV4' test.out

#- 336 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    '2byTYCDBnAvf8JpF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'AdminDeleteRoleV4' test.out

#- 337 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "SZistM75544PDlVK"}' \
    '8taScpV0NtCxDDz5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'AdminUpdateRoleV4' test.out

#- 338 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 35, "resource": "k0qhZath4b4HtwEY", "schedAction": 30, "schedCron": "55pJNTX1sDjSWiSX", "schedRange": ["sV5rJ8eZXZ1TLMZn", "NL3DQK45IAtbyUDD", "SJSV8pzl1lfIR7jn"]}, {"action": 10, "resource": "WYb2iHHVN0ZBgvri", "schedAction": 13, "schedCron": "xkKxEDvSoi2X9Syg", "schedRange": ["vMG8QAaWUhIguMvK", "DOrx0wQXKEroyKz2", "reP63EVHT72VuhoG"]}, {"action": 86, "resource": "Hn8B2d1hZUnoQwg5", "schedAction": 42, "schedCron": "5DEjxqhgYqmMqIdl", "schedRange": ["RrQmuILkeRUafUDP", "5b6BWfm7cYCpDIJG", "42ILhUoCh8lmKKoc"]}]}' \
    'C5Ea29JhfFGN964J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'AdminUpdateRolePermissionsV4' test.out

#- 339 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 100, "resource": "VeoGFrDb8unXv1iE", "schedAction": 51, "schedCron": "YgEZspOJ0NiZl6OV", "schedRange": ["LxKtkBpaCG8Nu5m4", "ctwUNV8ncebaJ0DC", "uIeEStt3PbyctX7H"]}, {"action": 58, "resource": "ALA8LlV2sccbVr6H", "schedAction": 91, "schedCron": "I2AdlqiyEJIQcbZJ", "schedRange": ["J3AhkrMi0bnppEJF", "ISze88rGEr3cilJW", "haW6jNsM94E2FQb6"]}, {"action": 91, "resource": "Nhql9CdDX4xiHpdf", "schedAction": 75, "schedCron": "VMhLbM6H1MnNSKd0", "schedRange": ["KStITvGQtzwjGtGT", "r238G8Aevk3k1478", "2W2oNo3X4m6wms9S"]}]}' \
    'PaHlqtDPry2vMON7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'AdminAddRolePermissionsV4' test.out

#- 340 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["sdhlilfpDT8o2iFr", "YtGfCZCcrvsV2I4X", "26p21iDBZGJ8ZMLw"]' \
    'PJ871nV5ALS7cneN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'AdminDeleteRolePermissionsV4' test.out

#- 341 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'LItUJgh74tyxkTR8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'AdminListAssignedUsersV4' test.out

#- 342 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["ZCVJtkxjBJrNeQRs", "qkkKK2qxqzy4KSA5", "UtSXWjANSWIT9TLn"], "namespace": "uMLNJAEk3A6A6rYi", "userId": "Iu8eLdWykhBxLFnK"}' \
    'nSYC9yyBYepIqtri' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'AdminAssignUserToRoleV4' test.out

#- 343 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "kdAbdOT6iSRdEg8N", "userId": "Yuc4q5sJVzaKGDOU"}' \
    'LJbjHphqjHGGAhfW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'AdminRevokeUserFromRoleV4' test.out

#- 344 AdminInviteUserNewV4
$PYTHON -m $MODULE 'iam-admin-invite-user-new-v4' \
    '{"assignedNamespaces": ["aXqkA5fuVYOsMFo9", "tnqa4LEWGg1r4nW4", "pBcPPaiaM1og5rxU"], "emailAddresses": ["jGPKKLMoAy1stmxP", "Fz0i1IK3QzkcRwFP", "pXGlKR9ss8b8udl6"], "isAdmin": false, "isNewStudio": false, "namespace": "GDHT6ZaUUkvlTKAh", "roleId": "rxqHw7f813qNjzlc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'AdminInviteUserNewV4' test.out

#- 345 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "xXsmGGcJhauxfhVK", "country": "IbRvUnyElHPuQE3G", "dateOfBirth": "c8bY4IH0OXHZP6VV", "displayName": "B7qjDHMS49dkv8vx", "languageTag": "yg6giNKzeFnlgGRg", "skipLoginQueue": true, "uniqueDisplayName": "K3SeYvULYNIhs5PZ", "userName": "GTJmgofq7nlF5Ch8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'AdminUpdateMyUserV4' test.out

#- 346 AdminDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'AdminDisableMyAuthenticatorV4' test.out

#- 347 AdminEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'AdminEnableMyAuthenticatorV4' test.out

#- 348 AdminGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-admin-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 349 AdminGetMyBackupCodesV4
eval_tap 0 349 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 350 AdminGenerateMyBackupCodesV4
eval_tap 0 350 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 351 AdminDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'AdminDisableMyBackupCodesV4' test.out

#- 352 AdminDownloadMyBackupCodesV4
eval_tap 0 352 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 353 AdminEnableMyBackupCodesV4
eval_tap 0 353 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 354 AdminGetBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-get-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'AdminGetBackupCodesV4' test.out

#- 355 AdminGenerateBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-generate-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'AdminGenerateBackupCodesV4' test.out

#- 356 AdminEnableBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-enable-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'AdminEnableBackupCodesV4' test.out

#- 357 AdminSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-admin-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'AdminSendMyMFAEmailCodeV4' test.out

#- 358 AdminDisableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-disable-my-email-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'AdminDisableMyEmailV4' test.out

#- 359 AdminEnableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-enable-my-email-v4' \
    'J2Qs990APOU4hcdw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'AdminEnableMyEmailV4' test.out

#- 360 AdminGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-admin-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'AdminGetMyEnabledFactorsV4' test.out

#- 361 AdminMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-admin-make-factor-my-default-v4' \
    'lnsTap2RJpHtncLy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'AdminMakeFactorMyDefaultV4' test.out

#- 362 AdminInviteUserV4
eval_tap 0 362 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 363 AuthenticationWithPlatformLinkV4
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v4' \
    'wP3WlLmNdQGk6vne' \
    'HoB1PXO1vT1AonFO' \
    '3syvkYd78GsJGLbn' \
    'b4Nvw7fnm4MnOqnq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'AuthenticationWithPlatformLinkV4' test.out

#- 364 GenerateTokenByNewHeadlessAccountV4
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v4' \
    'NerQoHiDIJayvSNt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 365 Verify2faCodeV4
$PYTHON -m $MODULE 'iam-verify2fa-code-v4' \
    '8EQXsMbYi1yEI9yc' \
    'htyhjZSeDCKT4ilZ' \
    'B8apDTR3aL9sunWp' \
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'Verify2faCodeV4' test.out

#- 366 PlatformTokenGrantV4
$PYTHON -m $MODULE 'iam-platform-token-grant-v4' \
    'V1s8LmXm0FaJMIjg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'PlatformTokenGrantV4' test.out

#- 367 SimultaneousLoginV4
$PYTHON -m $MODULE 'iam-simultaneous-login-v4' \
    'steam' \
    'OEiWJ8cLrryS5a6A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'SimultaneousLoginV4' test.out

#- 368 TokenGrantV4
$PYTHON -m $MODULE 'iam-token-grant-v4' \
    'password' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'TokenGrantV4' test.out

#- 369 RequestTargetTokenResponseV4
$PYTHON -m $MODULE 'iam-request-target-token-response-v4' \
    'tL8YKMrUBL6dDTVw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'RequestTargetTokenResponseV4' test.out

#- 370 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "t1hrg2mhbI0NDshb", "policyId": "7ZzQuBPyNi1GhZHE", "policyVersionId": "j6p5grjk5wzdksOU"}, {"isAccepted": false, "localizedPolicyVersionId": "TkL8cmpA0sZ0tgeR", "policyId": "4UV5SMZ8GUvWZvoC", "policyVersionId": "mprkv7A8MRutCKCs"}, {"isAccepted": true, "localizedPolicyVersionId": "DWqbPmwQw8J7na1P", "policyId": "OTXhXLRU5prAdqnn", "policyVersionId": "POiTVzAeQq6rnWJo"}], "authType": "EMAILPASSWD", "country": "F6R9Rz3HVP2Y9WqS", "dateOfBirth": "RiwV3UZg0UJLPMke", "displayName": "Uwa6OVKxCMxuf0P9", "emailAddress": "r5f6fdmyi4kQnOFb", "password": "BtvBw81hUgtONCIo", "passwordMD5Sum": "Z2rkomSj52mAIMo6", "uniqueDisplayName": "EW9QhzU8FwQtZpfU", "username": "oyoiUjmqOyQ7ammF", "verified": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'PublicCreateTestUserV4' test.out

#- 371 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "z0GqDZN7ftHOhVy4", "policyId": "8YYg1AkRh3NmbRhM", "policyVersionId": "xKeIgwq1NZmxa0gh"}, {"isAccepted": false, "localizedPolicyVersionId": "G020QpWTNKsVyK8E", "policyId": "U8JYc00PA2ef1jFe", "policyVersionId": "qQ8mBpTuvLTJUzwX"}, {"isAccepted": false, "localizedPolicyVersionId": "hJvrOCdAEZ2RHt3u", "policyId": "Q5nFrPXwxJZQpkeD", "policyVersionId": "Hr0hjKBpDMIvK4qf"}], "authType": "EMAILPASSWD", "code": "RrFZYcwfQ1Q2Bbcj", "country": "Spv6Nt1oz4tdgfKu", "dateOfBirth": "4bmK8kOKcEoCRjQJ", "displayName": "lPY3p42OS9iGNElT", "emailAddress": "pMlvRDZSIuM0OXOH", "password": "Pluvsry8AKSZxOhU", "passwordMD5Sum": "hl3Y0EshaG0uDiJN", "reachMinimumAge": false, "uniqueDisplayName": "uxK22saWaGvrzBdL", "username": "vFUBZDnVrcwbsD0R"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'PublicCreateUserV4' test.out

#- 372 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "cBxz5LpdkRCAU8Hh", "policyId": "mXC68JFPdxhvBKee", "policyVersionId": "6wG66YPD4vNdENY1"}, {"isAccepted": true, "localizedPolicyVersionId": "IhZZiK0QEG6C9w4l", "policyId": "VRNOF1Bg6OHZzvdZ", "policyVersionId": "HoIm4tKNhPjNIQGF"}, {"isAccepted": true, "localizedPolicyVersionId": "nWlS9Sfjh0htyVaG", "policyId": "j4y9ahS7h7XVlmc5", "policyVersionId": "Rs5FVQSIqObR55tV"}], "authType": "EMAILPASSWD", "code": "BlN1iFvw0GSLBmie", "country": "8SJckSRbu7hgmUm7", "dateOfBirth": "RVCUREDdoGatGQ1S", "displayName": "eOXsg4jofp9PvlQ1", "emailAddress": "xdmr4JDpvZgvPGHj", "password": "V7MNTpM7fSods1zd", "passwordMD5Sum": "VT0aWj58Othvd3jz", "reachMinimumAge": false, "uniqueDisplayName": "DAf40gKSizvmxts5", "username": "HSQvRAPG9JoVSLrb"}' \
    's5niXkjpkOgRCC7q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'CreateUserFromInvitationV4' test.out

#- 373 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "fz5jV7NTRYld9FJJ", "country": "10goNq8uq79Du28S", "dateOfBirth": "RRAMaQFEzppeticc", "displayName": "kSUon7awfol07696", "languageTag": "uxp5ieMjjOfFSx3A", "uniqueDisplayName": "JN97kUjwiCmWQvbr", "userName": "xQpUSnos6QiHyrcG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'PublicUpdateUserV4' test.out

#- 374 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "eRv27hj73EtufHuN", "emailAddress": "Ip0GXpM4nbG7aww2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'PublicUpdateUserEmailAddressV4' test.out

#- 375 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "TANW1Or7TvLoL0ww", "country": "HoRMNexBOron8wId", "dateOfBirth": "Ubp7xVMKfbAJfW4i", "displayName": "MIC52NUedhhkME18", "emailAddress": "qGpSsyEPDWHcqfYp", "password": "2EFxEaEHCGtg812N", "reachMinimumAge": false, "uniqueDisplayName": "TNqoLFFS4wB6Um7i", "username": "r0n6O3vbYVjrcErg", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 376 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "pao5jo9nJoKEb8tH", "password": "mFwLGan2SrKckNxL", "username": "WH6rjhRL9uxoV5Oe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'PublicUpgradeHeadlessAccountV4' test.out

#- 377 PublicDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-disable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'PublicDisableMyAuthenticatorV4' test.out

#- 378 PublicEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'PublicEnableMyAuthenticatorV4' test.out

#- 379 PublicGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-public-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 380 PublicGetMyBackupCodesV4
eval_tap 0 380 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 381 PublicGenerateMyBackupCodesV4
eval_tap 0 381 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 382 PublicDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-disable-my-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'PublicDisableMyBackupCodesV4' test.out

#- 383 PublicDownloadMyBackupCodesV4
eval_tap 0 383 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 384 PublicEnableMyBackupCodesV4
eval_tap 0 384 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 385 PublicGetBackupCodesV4
$PYTHON -m $MODULE 'iam-public-get-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'PublicGetBackupCodesV4' test.out

#- 386 PublicGenerateBackupCodesV4
$PYTHON -m $MODULE 'iam-public-generate-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'PublicGenerateBackupCodesV4' test.out

#- 387 PublicEnableBackupCodesV4
$PYTHON -m $MODULE 'iam-public-enable-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 387 'PublicEnableBackupCodesV4' test.out

#- 388 PublicRemoveTrustedDeviceV4
$PYTHON -m $MODULE 'iam-public-remove-trusted-device-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 388 'PublicRemoveTrustedDeviceV4' test.out

#- 389 PublicSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-public-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 389 'PublicSendMyMFAEmailCodeV4' test.out

#- 390 PublicDisableMyEmailV4
$PYTHON -m $MODULE 'iam-public-disable-my-email-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'PublicDisableMyEmailV4' test.out

#- 391 PublicEnableMyEmailV4
$PYTHON -m $MODULE 'iam-public-enable-my-email-v4' \
    '8ktlePEo1xBuRSv6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 391 'PublicEnableMyEmailV4' test.out

#- 392 PublicGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-public-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 392 'PublicGetMyEnabledFactorsV4' test.out

#- 393 PublicMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-public-make-factor-my-default-v4' \
    'VizgtOXZy9cQ6B07' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 393 'PublicMakeFactorMyDefaultV4' test.out

#- 394 PublicGetUserPublicInfoByUserIdV4
$PYTHON -m $MODULE 'iam-public-get-user-public-info-by-user-id-v4' \
    '4dTJZqeOllKQNwJU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 394 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 395 PublicInviteUserV4
$PYTHON -m $MODULE 'iam-public-invite-user-v4' \
    '{"additionalData": "GtC0tAhxn1ay6ruu", "emailAddress": "7PYWHODRb6skOj0l", "namespace": "fYFGnQCAWidWPjYg", "namespaceDisplayName": "yebU6rHFirnUpZ9U"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 395 'PublicInviteUserV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
