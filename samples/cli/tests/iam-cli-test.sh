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
iam-admin-update-input-validations '[{"field": "QRENjEEztx1WsYSi", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["nSBJroav91GXlvPG", "6bFYReVHQipcCx9Z", "w5D2L7vIYhGGSyEW"], "preferRegex": true, "regex": "ZJJ42d3PBddN8S48"}, "blockedWord": ["l9lyNApflxqMrj3o", "Zk03QXcKMDYDDxHS", "ZjtqXyJ58f7Gc26S"], "description": [{"language": "aiGVkydwYWQG26yU", "message": ["ZNmTBcvrbYCwZtxF", "HyPLtI8ilbyDPUIj", "88cekdqCt81P1ktf"]}, {"language": "Iovmv9gsR5cJcHm3", "message": ["SZLxoRDFuuuySj29", "a9LJE8HoRS1X2PFA", "AMwzHPxB1UskYs4Y"]}, {"language": "w20DOqOBSC2DKHRu", "message": ["PMMWH8Yb33T5UBJC", "jfcnLRfxeCSz9WEi", "8KlloeH0JT1yduat"]}], "isCustomRegex": true, "letterCase": "vQR3biBfsu4jmsRE", "maxLength": 47, "maxRepeatingAlphaNum": 53, "maxRepeatingSpecialCharacter": 82, "minCharType": 50, "minLength": 63, "profanityFilter": "QAk4mqrxzTtuLl4X", "regex": "lbGL8QOxtjzm8y2w", "specialCharacterLocation": "NhmwoYZyI4EFZKBc", "specialCharacters": ["YrCEAE7WIsfmx40N", "LRc6m8heKnWhzfe2", "NubeoKFeIaFQCYoD"]}}, {"field": "PICpnduEEQlULdJz", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["BkMNxvvKgAT8mJrY", "q6hRkloqxM3gpwxc", "fMy9XzjjI5YbsKoA"], "preferRegex": true, "regex": "L3sa13lk1dQBHO86"}, "blockedWord": ["IlBhnetU4RwTqUXl", "TDBzOuYsaZA2yyd4", "mbqoOfADMMAXFaY9"], "description": [{"language": "eKa699bRVhyaKwwr", "message": ["AP2aMlu7WtjCtoYe", "tOO847g8OudOfjnC", "uHZ3c46IjGa23YvY"]}, {"language": "mmDg7VYPXIuvUYTZ", "message": ["BRujIUE1Tq5jyAZv", "kRCMNFIurjh2imdb", "4rbkXj0ZwsVC0gL9"]}, {"language": "7ZVJSPqJiwv1qlYB", "message": ["1RSKs6gQxC3Gb7S0", "o4zGYY7KQI1AeFgP", "qaOkvo1aolB4lkKB"]}], "isCustomRegex": false, "letterCase": "EYOkQ1jMD3cym8xI", "maxLength": 10, "maxRepeatingAlphaNum": 83, "maxRepeatingSpecialCharacter": 22, "minCharType": 28, "minLength": 83, "profanityFilter": "0jJLHC9LxhvNXTwG", "regex": "BCtohLtl9Zuhytm5", "specialCharacterLocation": "UDrT6QXCs5SPBbRP", "specialCharacters": ["ZTF6oQAXVG7tnsZg", "5QgXjvyGJPN4eXbJ", "E5Vs2GcyomQoIXim"]}}, {"field": "BJehyxlNsjUgxBkF", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["SJtjX7ZshZyZl5x4", "bRXBHUTrDzZSKscf", "OcYu3dpCROYqUiGK"], "preferRegex": false, "regex": "VFCmpo6sPwVOEDSJ"}, "blockedWord": ["sEK5QpNhlI2iS5Ep", "GhhvXYck0upMzUYn", "b76tFkEORV3bu1bN"], "description": [{"language": "CtX7W40V6Do5sYad", "message": ["CCFrHHC3DpZxkrQD", "XuNFviMarv8mnfHK", "8CCmE2lPnsbD3SGE"]}, {"language": "dlwuUccE536ugBp3", "message": ["HBvepnDCjgyJlXe3", "6mgWjLfFmteue9nz", "J6fH24T805tVg8Jq"]}, {"language": "U0jZpjvsugAOS7u8", "message": ["RiWyerCSa8SRgwsA", "j1ik1jglaDXTvKCW", "wNTAhd2wrS0uPdjh"]}], "isCustomRegex": false, "letterCase": "wRVnwVBOqOHi8pWG", "maxLength": 6, "maxRepeatingAlphaNum": 55, "maxRepeatingSpecialCharacter": 69, "minCharType": 20, "minLength": 19, "profanityFilter": "uYhiqjRJOqB5F93z", "regex": "FQbJndUDpdONneAc", "specialCharacterLocation": "zbBdHb2slt71B1Sm", "specialCharacters": ["Zp2JZp50CnPb71OR", "YcmQbTU5JX8ccLjM", "XJRk0eaKQDOJvrTe"]}}]' --login_with_auth "Bearer foo"
iam-admin-reset-input-validations 'fglSs6g4iY9u02aC' --login_with_auth "Bearer foo"
iam-list-admins-v3 --login_with_auth "Bearer foo"
iam-admin-get-age-restriction-status-v3 --login_with_auth "Bearer foo"
iam-admin-update-age-restriction-config-v3 '{"ageRestriction": 80, "enable": true}' --login_with_auth "Bearer foo"
iam-admin-get-list-country-age-restriction-v3 --login_with_auth "Bearer foo"
iam-admin-update-country-age-restriction-v3 '{"ageRestriction": 16}' 'IWekp18lOC3mNqF7' --login_with_auth "Bearer foo"
iam-admin-get-banned-users-v3 --login_with_auth "Bearer foo"
iam-admin-ban-user-bulk-v3 '{"ban": "Bl0LcghVHfPEspxw", "comment": "hRON0bc1eMbEIjow", "endDate": "Lqc3ecjXJbZDKKox", "reason": "LE1Y3Dymtj3giPg4", "skipNotif": true, "userIds": ["5hOPjaf3H0tYighU", "0VUfcYHJbBfAKSiP", "W3VgsZXiR1DJ7HVW"]}' --login_with_auth "Bearer foo"
iam-admin-unban-user-bulk-v3 '{"bans": [{"banId": "qMkNSawQUWDFJvJB", "userId": "Wic7UkBeIXuqDuAX"}, {"banId": "I66bQ71w0deoV9Lx", "userId": "5RDA1l2XcrciYNEz"}, {"banId": "vSZIPkhSgORcz5S5", "userId": "BvmgBLxh4ijFnE3T"}]}' --login_with_auth "Bearer foo"
iam-admin-get-bans-type-with-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-get-clients-by-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-bulk-update-clients-v3 '{"clientIds": ["am69qSZ7PC6f6Qkm", "ZXElW9YfRSse6AAz", "3S4czz0QKFlAVmVL"], "clientUpdateRequest": {"audiences": ["u4AOec0z8eBeeoip", "68J1nsv4W2OJhtaf", "xMSJlHeb34sZKHcl"], "baseUri": "5LLLOexL4fZvWtND", "clientName": "2tcBFpX8lNtFEJ7t", "clientPermissions": [{"action": 27, "resource": "VrlzqQls1ozhLVA3", "schedAction": 22, "schedCron": "rBvvWm4udE0OXudX", "schedRange": ["gNne8kJATwlc6esU", "p6Sw1I98jeZQ7hfx", "nhLd3Knaknoed9DH"]}, {"action": 16, "resource": "uswVJnNnN7kAa7j0", "schedAction": 35, "schedCron": "garAdNJOIG36I6tR", "schedRange": ["bRcrEveMdAdiPKDU", "VSC00PYeDcagginx", "nFIna3yddcbsPheT"]}, {"action": 69, "resource": "CohViHA5CzgFSy8X", "schedAction": 69, "schedCron": "A3PrIfapq5AAeMe4", "schedRange": ["L3mDWORBVXTIIJM9", "XsYIIZxiXNMR9Bga", "WcFX3SUBhyoTsMWP"]}], "clientPlatform": "AxUMkawaGpAyrIwM", "deletable": false, "description": "YqwgK1Np5nodqpLm", "modulePermissions": [{"moduleId": "7FhJBNXzAFdO0Khq", "selectedGroups": [{"groupId": "f6kiTdSGv2LFjAKY", "selectedActions": [30, 58, 52]}, {"groupId": "bgsWqFWZX7kPBom8", "selectedActions": [64, 6, 66]}, {"groupId": "YT7DROCjtuzFMbAG", "selectedActions": [23, 75, 71]}]}, {"moduleId": "lpO2pqiXJF3WGRao", "selectedGroups": [{"groupId": "QomSJC4DdrKF7SUQ", "selectedActions": [85, 5, 77]}, {"groupId": "rM8rG0rH0zcswwVe", "selectedActions": [79, 96, 74]}, {"groupId": "lcIW32iK7MGt1ixY", "selectedActions": [36, 55, 41]}]}, {"moduleId": "1WoVeJIePF8ZrQzP", "selectedGroups": [{"groupId": "4zvtdxdbZUpd6FJt", "selectedActions": [69, 73, 51]}, {"groupId": "1pyVwyKQLY6FEO65", "selectedActions": [89, 37, 3]}, {"groupId": "6ghP1y4Zi7s7QBlk", "selectedActions": [35, 11, 37]}]}], "namespace": "44B1GZgKg4uKxaCg", "oauthAccessTokenExpiration": 5, "oauthAccessTokenExpirationTimeUnit": "ufPpzwj1QGIFmlVf", "oauthRefreshTokenExpiration": 50, "oauthRefreshTokenExpirationTimeUnit": "jvapseE9LN9bvhOr", "redirectUri": "HflIOd6X3viLvtEk", "scopes": ["4mTIpUA9gxo8SV38", "nEhoXmM2W7l6jHMA", "2rG3nakopAywelu0"], "skipLoginQueue": true, "twoFactorEnabled": false}}' --login_with_auth "Bearer foo"
iam-admin-create-client-v3 '{"audiences": ["V7usamANkZlOX9Sf", "o95HgXqKhTPkwfLM", "9uSybRzWek2gZvRr"], "baseUri": "vr0n9d9lvccKMLhr", "clientId": "TrcBE2ItBS3KtKZW", "clientName": "e8aoFzAyBME74HUt", "clientPermissions": [{"action": 18, "resource": "BOxrZDyvpcLYOWA8", "schedAction": 82, "schedCron": "52faXUr9Sk4lq2fa", "schedRange": ["BcAXXKlhvyH8paOJ", "txqMPpcVfRwNj547", "fH0XrKEDpEY8Vnoc"]}, {"action": 67, "resource": "Am4DZhl0bQxFJ3sW", "schedAction": 58, "schedCron": "Xphn50c9tNLDljhZ", "schedRange": ["2jxLRX3z46OCaGBe", "MfPlNos4yBRjrERH", "EonAZR8GmEu0q1p6"]}, {"action": 88, "resource": "Q5UBEU1QAOHfZiGh", "schedAction": 48, "schedCron": "EGVxYheR3j5mNZ6v", "schedRange": ["wv7K8Asvt1j1Rx59", "hesNWy2NvZ85DDKD", "AF8KDsBZOuYQJ03B"]}], "clientPlatform": "AHZ7c53q7akMpcmn", "deletable": false, "description": "mSEwdrkEnnqKzFsL", "modulePermissions": [{"moduleId": "fYalUlfwEQKjU7eH", "selectedGroups": [{"groupId": "GebSVu0LQ40kepEa", "selectedActions": [57, 30, 15]}, {"groupId": "dfiOMZfEhHr39pys", "selectedActions": [65, 95, 82]}, {"groupId": "8OhgfY9JQYGF4bYX", "selectedActions": [63, 62, 4]}]}, {"moduleId": "sJKQQewVLMUoAnaR", "selectedGroups": [{"groupId": "cYp7FUjfIGaffofl", "selectedActions": [62, 71, 82]}, {"groupId": "ByYqeKN0meGelYF5", "selectedActions": [46, 97, 100]}, {"groupId": "y8alncV7vWgSHdfo", "selectedActions": [27, 95, 86]}]}, {"moduleId": "ctPErqxyMyOK06Mq", "selectedGroups": [{"groupId": "QBErxgjVBycvU4Pb", "selectedActions": [25, 82, 89]}, {"groupId": "05oKqymxLD1Lcvw6", "selectedActions": [93, 68, 26]}, {"groupId": "1m2lJFRZ3ZprZ60z", "selectedActions": [80, 51, 19]}]}], "namespace": "m7z9noowmlTIKVow", "oauthAccessTokenExpiration": 16, "oauthAccessTokenExpirationTimeUnit": "kIf5weqZ18MH57l2", "oauthClientType": "Zsrh90ETtYmGukz3", "oauthRefreshTokenExpiration": 79, "oauthRefreshTokenExpirationTimeUnit": "ncw7wu9TmXfJWBPr", "parentNamespace": "x9Ns8eLzYEvwSWTa", "redirectUri": "LQjctvrK2jhsYpKP", "scopes": ["lXn77AtYoFzLAATP", "Y8P8P3cfoivvQxev", "ecWw7Rry0KK5rgAG"], "secret": "O0dW8rX2MVUGKSZ4", "skipLoginQueue": false, "twoFactorEnabled": false}' --login_with_auth "Bearer foo"
iam-admin-get-clientsby-namespaceby-idv3 'g4W1IS3Uv1BpWoJB' --login_with_auth "Bearer foo"
iam-admin-delete-client-v3 'aqdg2FHcunsS1lna' --login_with_auth "Bearer foo"
iam-admin-update-client-v3 '{"audiences": ["O2m9vqjhbeK2qN8g", "6x2PyYDo5R3hLiD5", "sf5y1JsxJNGmyt0S"], "baseUri": "QDUDoWBZVGLlkUet", "clientName": "zCAWc9x1aMjgGim5", "clientPermissions": [{"action": 94, "resource": "gEOaCgM6Yn6RugbN", "schedAction": 62, "schedCron": "f4czdt7zqmSKxOEQ", "schedRange": ["lVcx6GqsBq8vdhWV", "nuYLgpZehK0G2nmy", "uViB9kRTcSQdTnNY"]}, {"action": 67, "resource": "oI9FmYel0kOw72o8", "schedAction": 92, "schedCron": "kgk0jS6rDWUwfhKv", "schedRange": ["rf2AaH4yCWrHSppn", "IZkNnTn3rzH5NvAt", "cvNedgS1fUfKmihD"]}, {"action": 3, "resource": "sZoFS6xCOWMpyh9p", "schedAction": 79, "schedCron": "GTnwyEw6hIWDZrpP", "schedRange": ["7rz3ISW510kHr4is", "TKWjmv67nuHCXWfw", "nwGioVwVzmmBVVFf"]}], "clientPlatform": "pqx1AeLtzcPJ3jtD", "deletable": false, "description": "Bo4FUTH7CGfKSyxg", "modulePermissions": [{"moduleId": "RR1DiCqSMzpqIFGL", "selectedGroups": [{"groupId": "kDs7ACC1RgBfoNrH", "selectedActions": [23, 80, 66]}, {"groupId": "fuGaXsAuGsZaSHev", "selectedActions": [83, 61, 97]}, {"groupId": "TQNEI3kfabxJWWSI", "selectedActions": [27, 63, 57]}]}, {"moduleId": "CUo1NPpeFhUztXDg", "selectedGroups": [{"groupId": "B7n4C97uAPP8PATL", "selectedActions": [31, 96, 65]}, {"groupId": "pxeJlsBJT6Hh3OMj", "selectedActions": [55, 56, 18]}, {"groupId": "hvhf8Q0DtJMcYQdN", "selectedActions": [87, 48, 2]}]}, {"moduleId": "WG2HFnZlA6HKWW4f", "selectedGroups": [{"groupId": "I1IQcoBQELcNlZkq", "selectedActions": [93, 6, 35]}, {"groupId": "wmbwFEnAZaWsQJtR", "selectedActions": [29, 83, 1]}, {"groupId": "ixhtAoKiVm6URT95", "selectedActions": [15, 28, 94]}]}], "namespace": "UcvWB28MpusuhhDJ", "oauthAccessTokenExpiration": 56, "oauthAccessTokenExpirationTimeUnit": "slzgiWZEtyd56Lfx", "oauthRefreshTokenExpiration": 27, "oauthRefreshTokenExpirationTimeUnit": "hQ2aTjTDfKFDXC7e", "redirectUri": "GL5YhJDWh9YWqc0q", "scopes": ["gV6d9yOfIMLds2Db", "PcaoMdtRLTmSvTkQ", "QgB7exYvmHMxr5hP"], "skipLoginQueue": true, "twoFactorEnabled": true}' 'JJztJBg0tTJg46Ie' --login_with_auth "Bearer foo"
iam-admin-update-client-permission-v3 '{"permissions": [{"action": 47, "resource": "SfJiQFC2gXoda0kg"}, {"action": 22, "resource": "6yUSpSOAjHJWwfCj"}, {"action": 45, "resource": "wWkLob9gKLqs2nEZ"}]}' 'hpByfHZinxNfgPAw' --login_with_auth "Bearer foo"
iam-admin-add-client-permissions-v3 '{"permissions": [{"action": 21, "resource": "nSojV4jT65yclX2F"}, {"action": 40, "resource": "ptKaWNvPbpg7yrRv"}, {"action": 24, "resource": "fZ6rvgvEY3Hht1Sw"}]}' 'qTsKKKo37NHDOQe9' --login_with_auth "Bearer foo"
iam-admin-delete-client-permission-v3 '97' 'Ps3ztUIV0dS6hIH9' 'c4VfkyrwpuXxbaER' --login_with_auth "Bearer foo"
iam-admin-get-config-value-v3 'bfgPmi0eHkt1mr9E' --login_with_auth "Bearer foo"
iam-admin-get-country-list-v3 --login_with_auth "Bearer foo"
iam-admin-get-country-blacklist-v3 --login_with_auth "Bearer foo"
iam-admin-add-country-blacklist-v3 '{"blacklist": ["OIFg0dnWIYN2NVL7", "0Iw157g00jr9b8Mu", "YmmeKTmBNvGYxEQd"]}' --login_with_auth "Bearer foo"
iam-admin-get-login-allowlist-v3 --login_with_auth "Bearer foo"
iam-admin-update-login-allowlist-v3 '{"active": false, "roleIds": ["e8aEdd36xj6wySol", "tDxsbzxrlaKEfkoY", "jY2o6ouRW9UtNquw"]}' --login_with_auth "Bearer foo"
iam-retrieve-all-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-sso-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-third-party-login-platform-credential-v3 'C3WgumrIz4NhGztZ' --login_with_auth "Bearer foo"
iam-add-third-party-login-platform-credential-v3 '{"ACSURL": "pr4U4fwQIiLXgmRa", "AWSCognitoRegion": "svjO4lj8m3XEwP2b", "AWSCognitoUserPool": "4gd3xOeii8Jnmsse", "AllowedClients": ["p2xD2NY0kABeGs9y", "xahld1pO0Gyf5PO3", "COyMvczgEpzZ3Fbt"], "AppId": "xfhcRC7IVYa6iZ5u", "AuthorizationEndpoint": "FRYNn3SHiWxF0Ybu", "ClientId": "U5ar5qTLWUCy0Afg", "EmptyStrFieldList": ["c050XIZRW491e94m", "QjVOOBnIWhunElqZ", "Uodp3IhtCSHy1ei1"], "EnableServerLicenseValidation": false, "Environment": "m5x3B4t7WQnp8jXZ", "FederationMetadataURL": "edgt5cyNe27HLtwt", "GenericOauthFlow": true, "IncludePUID": true, "IsActive": false, "Issuer": "HAyNFxcVTKuAQTGh", "JWKSEndpoint": "5BxjWOozGoDtsUuY", "KeyID": "o5p8ED5QZAufwNa8", "LogoURL": "lzfjv9oYMXMjlVHY", "NetflixCertificates": {"encryptedPrivateKey": "1AHwF3vGoav7MK0P", "encryptedPrivateKeyName": "cLnEkcokKwcQ0baD", "publicCertificate": "T9OyJ2h23GUS2amU", "publicCertificateName": "7syGlElXdEAOrVSn", "rootCertificate": "LocLVVYamQc4wcG5", "rootCertificateName": "nDBLJoJHbiQ5duE5"}, "OrganizationId": "p4cfs2E41cK8QTwi", "PlatformName": "IAvxSvNDlmM5nQFM", "PrivateKey": "Gzs7fzjgyc44mEh9", "RedirectUri": "tRk8knYSV30lnroQ", "RegisteredDomains": [{"affectedClientIDs": ["ehMDli6t9unQLYXx", "m09wpGAbpEmDY9vL", "h3u6EDsUmrV6kH4O"], "domain": "otKwG3UC6XCnnZxF", "namespaces": ["8CmQr17W65br34rB", "BN9tU6TDm5GloFSK", "WM1eym5ydC6p25xC"], "roleId": "WTqUOYZENJ1QHZQx", "ssoCfg": {"googleKey": {"PRXH7uxBJEECQE1l": {}, "i3Bg7Jxc9pUnZmvh": {}, "idwCkZwqjYLfTiCO": {}}, "groupConfigs": [{"assignNamespaces": ["1NDBvQvRPnAz4VzW", "0CpoBCbyJsF5IjF1", "c0W338HS6CBgVRyi"], "group": "hYNZ84CVhziXV8Hw", "roleId": "SmvcvcDKF19yVRaf"}, {"assignNamespaces": ["CjOuSYht83AdvBaa", "gTiRJ8daGTVX3Bb7", "jlz5IfHgKjI9mwJS"], "group": "rN8jkIykR2zbaI6P", "roleId": "D7fEscShnGUGUtV9"}, {"assignNamespaces": ["GJ279GDbLNwjm3FK", "0nnX2poMfZ1hDHtb", "h4HtMlFgvh2Dp2So"], "group": "iIPp1yvfAHS0VgLu", "roleId": "11A3HTovFi4tPAGf"}]}}, {"affectedClientIDs": ["leyCA6jEtcqsnzoV", "ILjkwW61duF87aUy", "rdt4XSpWBAetsanz"], "domain": "qP8oxfrtbECD1CYP", "namespaces": ["waiBAxfYL8Avt70Z", "UT2fSk3LL0calqxE", "ewuGS469k2hG0WKt"], "roleId": "4sUmanYxM0UHZVNY", "ssoCfg": {"googleKey": {"zGMNIpWoSLkUrfuf": {}, "4U3WeYeA9t2ENKKW": {}, "rFtHIi1CMgKAOG5i": {}}, "groupConfigs": [{"assignNamespaces": ["DcCR5PbCvDLil8wj", "9cKM3Ar6MF35hCER", "4nGmWGgTJfHlJl4t"], "group": "HGa4XfZcd9CVnGqM", "roleId": "X9FieeEssWEUl07b"}, {"assignNamespaces": ["hwntCVqiYOJf5KwM", "ZQjzvjSozv6CTRDl", "0zp9CzHFwinkBNi4"], "group": "gvqgl6TZ9TGVPmv3", "roleId": "4h6T7EsufmfxKYB4"}, {"assignNamespaces": ["LM6H6QXmpZ9X3fUS", "R1l9xLPBsmAUrD9L", "1IiD6MlcEPhMDFzj"], "group": "HZ3sIhzOx2CXKlvI", "roleId": "omU3pIxM9n8D2eLM"}]}}, {"affectedClientIDs": ["e3lt9qfx2UDcgVE7", "L9FK6e0MrPc4vtxk", "9hVKlG56HlzGr7Xj"], "domain": "dyRJunZPkp6ccIBn", "namespaces": ["WyPw8mj7gyQ7XdIs", "zGRj46COPipH1MWV", "THG0qHJCWEfOJpZm"], "roleId": "9yEYWNGMy2pgSGSU", "ssoCfg": {"googleKey": {"OK68eqGJtWf1Ybgg": {}, "8rdwY9bmrvHmO07K": {}, "NqX9LM2IwEsdOGBX": {}}, "groupConfigs": [{"assignNamespaces": ["BwnzDX8v3xgC1Ge9", "PdbTTAJ2Gp1r0sVZ", "6LJAOddIL2l3hPjN"], "group": "DKv2LWfXqjr8fS79", "roleId": "En3wYowBdkaZ3y6i"}, {"assignNamespaces": ["38XQjLDRqkpiFK5B", "tiQ272Uo9UBJWodp", "dwsX1jorcyR0x3Yi"], "group": "HF8ITGPRQBCgIs1Q", "roleId": "2lzxl0yF5m77TTh4"}, {"assignNamespaces": ["gUoj8u2WRcLiEtzV", "lnkflfn7pHY48F1d", "l1q92m3iRlfnBAk0"], "group": "CwiAsR65yQ9ssuHd", "roleId": "GmxncCEr0KcgeqzG"}]}}], "RelyingParty": "bruNB72HHMkjzyBB", "SandboxId": "4UFKiaoV0VOem2yq", "Secret": "PsMFxKybPkbuS6x9", "TeamID": "cLJ1APnNlsa2bRBr", "TokenAuthenticationType": "27fVMWuAfDqLMR91", "TokenClaimsMapping": {"9IZPKOKiAVQXXOmq": "FHLbyXmgCNiXH8ue", "nbC5CphgMweexsIA": "P5vHLjBJ9iqMcBL4", "BzhDUjhKPwbwcvQU": "5kG8bXGFmPAnOkDi"}, "TokenEndpoint": "Jq4xQye7HqnVK3YV", "UserInfoEndpoint": "eOWs9mfVQh3jLBtn", "UserInfoHTTPMethod": "9pxpE7BYtzB0B4Cx", "googleAdminConsoleKey": "yQrUpIFvORxTi79D", "scopes": ["pSjb39ukcR6c2E2r", "3vk3IfAKEbqcNXSG", "CCvNowNmdpcJgF88"]}' 'ySNq4Mj7mulP4tQ6' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-credential-v3 'R1OqKVOTniBgLsNh' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-credential-v3 '{"ACSURL": "dgQ0JWZjNRSzOTqc", "AWSCognitoRegion": "VNX3ahvxw9gwwhTn", "AWSCognitoUserPool": "jN6wKZGW4y3f0R9s", "AllowedClients": ["2kndhhZhwAiLsZs4", "pmLDIQch4IjDq9aT", "3qZyI0rYsWucAkXs"], "AppId": "VJbXi7eRZa7WwIc8", "AuthorizationEndpoint": "95ImqK6tVsaUq3st", "ClientId": "Uh5J5Z9GiBiSAylX", "EmptyStrFieldList": ["5cS0IeHpWCugmfOL", "0QQpxsuD8PGqku59", "eFJrOXyDYz9vMUOP"], "EnableServerLicenseValidation": false, "Environment": "bkcTglbU86FyOjAp", "FederationMetadataURL": "NHBVfNOURcjY3YYT", "GenericOauthFlow": false, "IncludePUID": true, "IsActive": false, "Issuer": "3Ornyx34luLdvtsT", "JWKSEndpoint": "KXMjiw6gYPvfn2Qt", "KeyID": "9iyq3Nyk8ncu2Z3e", "LogoURL": "DHH9WaVO4iKhDcJ7", "NetflixCertificates": {"encryptedPrivateKey": "TCcNIsQ3PuppUxDS", "encryptedPrivateKeyName": "K8aOTGMudcxlCV4c", "publicCertificate": "NbJGQ57lPdinpjS2", "publicCertificateName": "DRfGt9GlyZVQ4X67", "rootCertificate": "tPZSTpPq3xjrElvv", "rootCertificateName": "Dgw0ag7kSWE0Hiqm"}, "OrganizationId": "5IuLryiEXqvUWDjU", "PlatformName": "1G0EVjVZw1ToLuPa", "PrivateKey": "kQN1MpOs1RVFrcg2", "RedirectUri": "CXxepx78fvsyhE2B", "RegisteredDomains": [{"affectedClientIDs": ["KtyTDSIM7mkmvZ7C", "msh4US8o4jfMANPp", "mZDdMiCxmuCCVuFj"], "domain": "S1GC1d2b92B4vEgj", "namespaces": ["3HOmhcWm428XejRF", "94NIY9nMrBZo0lNU", "BDShHD32vvL28FPw"], "roleId": "TiXfLcxDC9Ynd02m", "ssoCfg": {"googleKey": {"ECIQhfIhHtADUQ9z": {}, "imQTQT95pFJUAJsy": {}, "AfeKOufV4f15NohX": {}}, "groupConfigs": [{"assignNamespaces": ["u6opxQGRt6PqlkL0", "diRhLC10ih2EQfY3", "XCv4hdOa6FdZhNMd"], "group": "1onFjGRbxtABPXDm", "roleId": "gNEJBhgGq5GIDhNC"}, {"assignNamespaces": ["66szbCCf73IFbRkP", "SSITz4TjCrJHXGXk", "u2YVuOzhxHmnrrV9"], "group": "ZGWrZ05sxe6A6Rpm", "roleId": "KDebNkylbynkgT9v"}, {"assignNamespaces": ["ayLLiizac7Ge6zKJ", "dlt7rjF5RaJwvkWV", "co2LTo5ijlvDF8qB"], "group": "WCQ9dLWYyS8zdhMe", "roleId": "BXH8x6HdVfZVDAiU"}]}}, {"affectedClientIDs": ["6iJOF7JKZFNk2NKy", "59X8iOg2sVBiCoeC", "5weXJl7PeiMH8z8d"], "domain": "Vej8N2yv6VTnOK7x", "namespaces": ["AvM7tuL81lsR7xxS", "Vp3Gd2TK0HzYviTg", "Ymx82JVBRLPZ6Iz8"], "roleId": "tne5dbguBF6Gsvvd", "ssoCfg": {"googleKey": {"l8jHz9x7XZIjU4IK": {}, "9lOLaZaMphKCqTq3": {}, "EVheJjoEEXBLIxGn": {}}, "groupConfigs": [{"assignNamespaces": ["NuhoJM3WWPvvCiCf", "33ViEdqQpoGkUWNi", "zk5UcPAGv6c1ESC6"], "group": "hZYTYZbzf5aANNNs", "roleId": "5kgSZZNUHbIT9szA"}, {"assignNamespaces": ["pmWJO5vzzXZj08a6", "K1XRVfriSpPFnZBJ", "ZkDnEiyfa2LrnpZx"], "group": "NnLRH36bqS2oFY76", "roleId": "PU1AziBOHEAj1cT3"}, {"assignNamespaces": ["u6Zc2FbrTFznTgDI", "wZIRWf6T3by2kYSC", "dnFKLc0xcTjqjdcE"], "group": "fU61OJYMnW49rWyn", "roleId": "p1ck1vT90C6o86cS"}]}}, {"affectedClientIDs": ["RL9cgbUmulhe98oa", "FKlQicdrxVhrtwSd", "9QWVMYz7TU1TsxsC"], "domain": "hSclSkb5aBi9K9zy", "namespaces": ["v6gFZXI5nXJ7hLi6", "HweweRmyo91dIn7Q", "qXBDXJcrqKmXDwoE"], "roleId": "V6tCdrxw1KOPhuvH", "ssoCfg": {"googleKey": {"uYrGWDK41uMOC0mR": {}, "vSoaGk4ktF5wnJDg": {}, "9Q3WXiydCOInVols": {}}, "groupConfigs": [{"assignNamespaces": ["r6CHmj763vLwtYEJ", "TSiXjcY5ZPkv90ly", "KSTWLxSFZ0LpupEi"], "group": "5DbkVs3qFTi1t530", "roleId": "Wj1WfzIvc3VlSXrA"}, {"assignNamespaces": ["3XUGud4tVjmxEf4X", "vVhFJTxFHITBg9x4", "unq3eOMHIKeTyBG5"], "group": "dCUoExnKfV3869IN", "roleId": "4V1OdhH4GVU7Exlk"}, {"assignNamespaces": ["mc4xYiLjLyZrXr9B", "htzn8jAdTn6xBhrc", "iryLm67rkadH5Y41"], "group": "SLjCPrFa05Xl5TPC", "roleId": "5GODS44bmm7jPdKL"}]}}], "RelyingParty": "ddfdsUqjXVzW1Qqx", "SandboxId": "nWR5sheLgsAF4ctv", "Secret": "5guycGiq9j2EyIkn", "TeamID": "fLDpgHnMOn8nc3gU", "TokenAuthenticationType": "Z8ZFyyEr0KBXuJBq", "TokenClaimsMapping": {"K4QtEydPWLPBYiR3": "UbJc1ZYapx7C477e", "tqgfOJDUT0uKAPrA": "Rya2IMlNiXpF4qvs", "UUpHqi33TcBGkc0H": "jUcnkpU9oVzl2kBu"}, "TokenEndpoint": "LFXIeCEKZUTz3GvC", "UserInfoEndpoint": "AZ5j24acYHbrryHB", "UserInfoHTTPMethod": "6GO9zP3FaepA3b3Y", "googleAdminConsoleKey": "J9nJM6vtT27xv85K", "scopes": ["5MU2qmbeqaVemINd", "ClpF7OvlBIEgjse5", "kd6GEDo08yq5E5Hl"]}' 'eLoog4me2NBFp62x' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-domain-v3 '{"affectedClientIDs": ["lXvVcJerTPW02PWs", "HiKYArAxnKBfBfDl", "rQQuAc10DjjwMv4v"], "assignedNamespaces": ["rIPRtvhQIyLarjaL", "OKnX51yAB8Pa3uNG", "KhaLlJzJMSnJIIgs"], "domain": "AVmaGYxUX1B9oVuz", "roleId": "G2CnYX2YBF2g7TVt", "ssoCfg": {"googleKey": {"zYEHUodh3iUfBthb": {}, "epUCTWiZ1uqh7GAi": {}, "4FEIu44u83ZLRxYl": {}}, "groupConfigs": [{"assignNamespaces": ["Yqlpq03BGdIk4oEo", "gFVGR71rJOBy6lsj", "1AKGBjnHmaAu4YK8"], "group": "7DYAWWcbcbGWmKgE", "roleId": "8CZ4AELr5lraa5v5"}, {"assignNamespaces": ["P5Cj8hgFsqHC9h5J", "PiMEtgKuiGTYgwWv", "5XldL6rOVGcRAn51"], "group": "rVAQSxp4qTB54mKA", "roleId": "3V9DKlCeZ7mLYsHo"}, {"assignNamespaces": ["oOIaxIpb1cIOJPS3", "lJ80YJ41U4ooQ980", "ywmg1pWpWit1QC7F"], "group": "Ke0fnHUlmU1unGKM", "roleId": "0tgfeWy47bbwMI4g"}]}}' 'GmvK9gW596FwBNrF' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-domain-v3 '{"domain": "Xt3TAuKBwBcD12ae", "ssoGroups": ["6r3hHwya4NpdOzg3", "hr6ucHf7dbh2iKNU", "l0qJqzoKMRMG541P"]}' 'AiNjULsx4SnKNXLM' --login_with_auth "Bearer foo"
iam-partial-update-third-party-login-platform-domain-v3 '{"affectedClientIDs": ["UaDSwwQlnNRZJHBS", "B4fZWEFIZs28Ff1k", "Zp1Zktx3N7WNMYIf"], "assignedNamespaces": ["cDKbLu8pnK34oA1k", "eYXJvtggDdXjbdjM", "BahFZZGMTcqnWrIp"], "domain": "rOv0BJ9Sgl7H1sdH", "roleId": "2RIJz1eI7Q5pu9Pu", "ssoCfg": {"googleKey": {"tLf6IrvZoBGQbO4S": {}, "3rURGWUzPAE6SdV4": {}, "D5jftRl9rZmtQUvr": {}}, "groupConfigs": [{"assignNamespaces": ["o8TWwXWsz9TVmdMK", "EohKzuMYDUTLBeCi", "dXjuGgx8ncXejmeZ"], "group": "tzT0qj0ltsqfiZrt", "roleId": "hVvyX0OCKDJE3RMU"}, {"assignNamespaces": ["ddwSSgxCu8zru1Dh", "GAYOHR5BWa9VzIka", "QEl1iUProNB6hI6I"], "group": "pGcToWgFvdRhG9Nw", "roleId": "V3zDuqVlVTypcYPK"}, {"assignNamespaces": ["8IxrSZuxWl0Je4fJ", "IyFAm3DQht4JwnPS", "2urJqerobWMZGVL5"], "group": "KLTxahWlS6XdBaKS", "roleId": "LCgOOPXM6XTUh2dJ"}]}}' '90yqHDNacl4F9G6D' --login_with_auth "Bearer foo"
iam-retrieve-sso-login-platform-credential 'l5TFwBY6HKXAblkT' --login_with_auth "Bearer foo"
iam-add-sso-login-platform-credential '{"acsUrl": "8VGgSH8MGZGwiVj7", "apiKey": "eDTaka9ABfX1IByP", "appId": "EOuPhGspRi3bhPQv", "federationMetadataUrl": "BBJI5JxytpcubN4A", "isActive": true, "redirectUri": "UPFPscZsXeJOD4DM", "secret": "tqfIGiGJovgWSRxZ", "ssoUrl": "8N4UQ2fg3V1o2x0h"}' 'L5DuBDqMyIAzWze9' --login_with_auth "Bearer foo"
iam-delete-sso-login-platform-credential-v3 '4MEdJFAy2JTllJkR' --login_with_auth "Bearer foo"
iam-update-sso-platform-credential '{"acsUrl": "GB8jqJEd6eqqsBVy", "apiKey": "ONV0JRtozI0jpliC", "appId": "FQ6WgJpGPigdc5Vy", "federationMetadataUrl": "C4qvWjVac1cQvSxg", "isActive": true, "redirectUri": "UzxDgBlIbuzm7DzJ", "secret": "20NFRJIhFXR2dYpr", "ssoUrl": "PmbpuptECGd5cdXC"}' '2Sesc6y68whNBYl9' --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["iCqfW6rqGOQny4ij", "4ysYPonb59gQffkN", "OmubxEJr2qEAuJbp"]}' 'ZSrcbc4LWfKaY5c1' --login_with_auth "Bearer foo"
iam-admin-get-user-by-platform-user-idv3 'tP5TDuI5f6m4KC07' 'CnsZe32hqEcB1ExY' --login_with_auth "Bearer foo"
iam-admin-get-profile-update-strategy-v3 --login_with_auth "Bearer foo"
iam-admin-update-profile-update-strategy-v3 '{"config": {"minimumAllowedInterval": 80}, "type": "eXZOYwbwjMNdxKWl"}' 'username' --login_with_auth "Bearer foo"
iam-admin-get-role-override-config-v3 'GAME_ADMIN' --login_with_auth "Bearer foo"
iam-admin-update-role-override-config-v3 '{"additions": [{"actions": [10, 14, 28], "resource": "3eRvBZXN3cjIXmFW"}, {"actions": [89, 57, 73], "resource": "QiDTcNnZa6Zuxk6u"}, {"actions": [75, 69, 2], "resource": "XXdiC9ZDj4E4mv12"}], "exclusions": [{"actions": [64, 93, 81], "resource": "s7Nf95lGlPrf6obI"}, {"actions": [7, 17, 27], "resource": "rJ4PkMFtsnFfz8Ew"}, {"actions": [25, 34, 36], "resource": "fBuBSKLSQ4GvLtz5"}], "overrides": [{"actions": [60, 60, 17], "resource": "3rpBfBovqLwXBuT3"}, {"actions": [62, 62, 87], "resource": "YeRj17xGhaBKoUfi"}, {"actions": [70, 19, 19], "resource": "ZUMRf2VJetWsokvx"}], "replacements": [{"replacement": {"actions": [43, 56, 0], "resource": "HuTEczr9KjQ3ttz8"}, "target": "MTBt1xk9IyssSA8n"}, {"replacement": {"actions": [85, 3, 80], "resource": "PQjpzk2Tb7iYdmNZ"}, "target": "WosrsVBPZ64j0HUO"}, {"replacement": {"actions": [80, 41, 37], "resource": "lxcCKAru8pOaAVLD"}, "target": "B4k3JwkdaxR7GJpY"}]}' 'GAME_ADMIN' --login_with_auth "Bearer foo"
iam-admin-get-role-source-v3 'VIEW_ONLY' --login_with_auth "Bearer foo"
iam-admin-change-role-override-config-status-v3 '{"active": true}' 'VIEW_ONLY' --login_with_auth "Bearer foo"
iam-admin-get-role-namespace-permission-v3 'CPG181q9GA5DydC2' --login_with_auth "Bearer foo"
iam-get-admin-users-by-role-id-v3 'D8UT6KOc4VPDUR9a' --login_with_auth "Bearer foo"
iam-admin-query-tag-v3 --login_with_auth "Bearer foo"
iam-admin-create-tag-v3 '{"tagName": "yazqXRqegIUicYXX"}' --login_with_auth "Bearer foo"
iam-admin-update-tag-v3 '{"tagName": "zxsBFrUs9BYp6TgC"}' 'ejBd5o7iTST7R3Kb' --login_with_auth "Bearer foo"
iam-admin-delete-tag-v3 'bQGERMNpqWb51y5R' --login_with_auth "Bearer foo"
iam-admin-get-user-by-email-address-v3 --login_with_auth "Bearer foo"
iam-admin-bulk-update-users-v3 '{"updateRequest": {"skipLoginQueue": true}, "userIds": ["BqQsBpCJBIXLGYcw", "WVRK6UKk5ozrXA4H", "ZHNyq9odanhR1Zrm"]}' --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-ban-v3 '{"bulkUserId": ["3thUvV87yfkycLSV", "dleSaAylsmLYe2ph", "YOgT5kDTyPl3dKF7"]}' --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-user-i-ds-v3 '{"findByPublisherNamespace": true, "userIds": ["XEjrJMki8jvc3P8G", "wjg3IOH0SDHgYKqx", "JiFJdrmj5vhzgsJw"]}' --login_with_auth "Bearer foo"
iam-admin-bulk-get-users-platform '{"userIds": ["ex7wq8ZPlXNaUNgd", "Y2vfJuje5cPnmGjT", "vYa5Pqx1K7qcAoij"]}' --login_with_auth "Bearer foo"
iam-admin-cursor-get-user-v3 '{"cursor": {"cursorTime": "BPAp6EPb988NzxrD", "userId": "KVpULjjiw3NeVG4D"}, "fields": ["Ji9DaMrc0WFgKjE9", "45x2CPVYYG9WvoGm", "AmvaVV5YfxnUNcwj"], "limit": 36}' --login_with_auth "Bearer foo"
iam-admin-invite-user-v3 '{"emailAddresses": ["LNDvhB4Eoes9a6Xa", "JeRbzTPwD3jxF7vx", "RUY0ilrNoFT98Sgt"], "isAdmin": true, "languageTag": "d4Z5f8nfaKqdZFLb", "namespace": "ZEHxsDxeR6d7r1SQ", "roles": ["w80JfMpPrSqYypRU", "nq5o4ETeCUYG9ccT", "t7Wxw8OQ13t3uTw6"]}' --login_with_auth "Bearer foo"
iam-admin-query-third-platform-link-history-v3 'zQuoZcXQpoTOxe8y' --login_with_auth "Bearer foo"
iam-admin-list-users-v3 --login_with_auth "Bearer foo"
iam-admin-search-user-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-by-email-address-v3 '{"listEmailAddressRequest": ["1jorNsg9ZKYCKoIS", "yXtHzoWGdYohxMp3", "uOQIybqWfG9BJ6FV"]}' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v3 'KlbYHtbPtaxvagSl' --login_with_auth "Bearer foo"
iam-admin-update-user-v3 '{"avatarUrl": "pGgVTF6VeDAPOGBw", "country": "weyFfXEOEAEtbag8", "dateOfBirth": "2KgBgyCd5vjkfz3e", "displayName": "R4DtNp129hzBw3xL", "languageTag": "UcCEt0DzmkJq1sml", "skipLoginQueue": false, "tags": ["4Iu5KJ0ynxGBlacD", "CdFe8ATUqVxcSthr", "pnMUBsnUfuQIcSbU"], "uniqueDisplayName": "t5UGkInFGpuUsdtq", "userName": "4dOwNESzCEW9dUVh"}' 'ZjLftC3sCS8CpLCq' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v3 'PD9CeDEdCnnL6Kt1' --login_with_auth "Bearer foo"
iam-admin-ban-user-v3 '{"ban": "Bjj3b8QM8Rr45ULq", "comment": "XQgvwD3PsKDJiWxQ", "endDate": "BwaS7rDBf2S54phb", "reason": "dyGDt47f9GWRlE9h", "skipNotif": true}' 'zNtrThFa9XU8mosl' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-summary-v3 'uiHZJ7O8sAQ32wj9' --login_with_auth "Bearer foo"
iam-admin-update-user-ban-v3 '{"enabled": true, "skipNotif": false}' 'aDzsr9xYiWRuuzQJ' 'iLc1eI9w3JEhxPGb' --login_with_auth "Bearer foo"
iam-admin-send-verification-code-v3 '{"context": "Ek7s7gw07FlounC3", "emailAddress": "vJKBC7SwgoViPeIB", "languageTag": "4Ehy0Y5aSJVDginx", "upgradeToken": "AM77eY9C14FbfiI2"}' 'NPvl1kCY5bEokxXx' --login_with_auth "Bearer foo"
iam-admin-verify-account-v3 '{"Code": "kWZbjf7GZxaossQm", "ContactType": "jo69wohJFyTNk5FG", "LanguageTag": "UPhR4LEZvz3EjFR7", "validateOnly": true}' 'g5m4axDV5uTcYsoa' --login_with_auth "Bearer foo"
iam-get-user-verification-code 'hUrELQ1btjJOqQMg' --login_with_auth "Bearer foo"
iam-admin-get-user-deletion-status-v3 'ZWAU6E92nHJzvw7t' --login_with_auth "Bearer foo"
iam-admin-update-user-deletion-status-v3 '{"deletionDate": 26, "enabled": true}' '1JBrHRzEOtIxzPqb' --login_with_auth "Bearer foo"
iam-admin-list-user-all-platform-accounts-distinct-v3 '6n73m0jiaDH86d9r' --login_with_auth "Bearer foo"
iam-admin-upgrade-headless-account-v3 '{"code": "sKgzCsMulpB8HZUt", "country": "VVaJCiLgKOwrSfWh", "dateOfBirth": "T5B4WedopzwSluBt", "displayName": "RFPKThyGnbjmPDKF", "emailAddress": "S6u9FHuv1M3qfch4", "password": "SqIV6LQPHlaeYl4c", "uniqueDisplayName": "sFq65cU66yJaj4ov", "validateOnly": false}' 'gG40QyXzsOzgck07' --login_with_auth "Bearer foo"
iam-admin-delete-user-information-v3 '8IghoQBp2mWAOYks' --login_with_auth "Bearer foo"
iam-admin-get-user-login-histories-v3 'czxBS0OBCa2vWadL' --login_with_auth "Bearer foo"
iam-admin-reset-password-v3 '{"languageTag": "mQtYKmEMzicbuL2S", "mfaToken": "3RiW8dLTCBfGUdVE", "newPassword": "dvdQL7sVwcZ2Pofa", "oldPassword": "JoSqtrEOqxH46fRT"}' 'SZoDdT0fefo74eg3' --login_with_auth "Bearer foo"
iam-admin-update-user-permission-v3 '{"Permissions": [{"Action": 81, "Resource": "8luh4dpPRMDbUXBW", "SchedAction": 94, "SchedCron": "uNZ9LzNeJnBurh54", "SchedRange": ["CWbYb0Pebyt8b4DG", "scjwrizsFUgYwbaL", "vqvQ2NbmDITuymTB"]}, {"Action": 18, "Resource": "6JBcGp9Rx2RfcRhX", "SchedAction": 32, "SchedCron": "7Ax6115Kg9U8vrQJ", "SchedRange": ["XQxoIbVi2CLEk277", "Ivjj1A647XQ3koaA", "fZIim0sFPm1YN27b"]}, {"Action": 28, "Resource": "7TGkeHsYsW9oGBN1", "SchedAction": 31, "SchedCron": "KrKUMhJrASBh61hm", "SchedRange": ["WKSSrF35anDGvur1", "9V18oIrUKXttgAI2", "QdWJFLmoPEgd8EMs"]}]}' 'pOs8nkic9gj5vyUM' --login_with_auth "Bearer foo"
iam-admin-add-user-permissions-v3 '{"Permissions": [{"Action": 55, "Resource": "UK5fE3OufPSX3PdO", "SchedAction": 96, "SchedCron": "b88SbLOa21DiSFsm", "SchedRange": ["0XXQJWszvTQEuALz", "DNp1SZ58aDllwzTR", "Hak1MXxj7Esrg790"]}, {"Action": 85, "Resource": "nml5BidsK9dCEzhV", "SchedAction": 27, "SchedCron": "XXTUIggoH89QNmI1", "SchedRange": ["7UDb19R6H7r1ta3m", "7jK5pxe82pgFiAS6", "piIzmc8rKrKEPGSA"]}, {"Action": 5, "Resource": "RXzfjDZZBmOau6sy", "SchedAction": 25, "SchedCron": "Ctccv9Gv4tOcbnuC", "SchedRange": ["qf0lm6WBkIzjoSV3", "1tvmMB6jzrpRGESm", "ooHiCV4GUOnXpapX"]}]}' 'QGRakUbcG7PcR4ei' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-bulk-v3 '[{"Action": 95, "Resource": "iwoJcaRMEb15LBlT"}, {"Action": 99, "Resource": "KuIT5FwwHj0Ur5F2"}, {"Action": 85, "Resource": "Rqf3eRbZqBAoKGcV"}]' 'CdMiSNV4qBrt1kcL' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-v3 '25' 'iJpXIrgroixptZhc' 'kUTGkcBOE4qMcH1K' --login_with_auth "Bearer foo"
iam-admin-get-user-platform-accounts-v3 'yi8ZFvGcV8DY0XOk' --login_with_auth "Bearer foo"
iam-admin-list-all-distinct-platform-accounts-v3 'DstxZcY1HgAnZV4I' --login_with_auth "Bearer foo"
iam-admin-get-list-justice-platform-accounts 'OglVLqb9lGAJUg21' --login_with_auth "Bearer foo"
iam-admin-get-user-mapping 'Lt7JwgwMUSuC3Baj' 'y3BcEMCtQs2FcEcv' --login_with_auth "Bearer foo"
iam-admin-create-justice-user 'VAyId6Cp85HVDsZB' 'QgOnXuXsGThYZrmm' --login_with_auth "Bearer foo"
iam-admin-link-platform-account '{"platformId": "0wrFMnPpWgrQD4hE", "platformUserId": "k0OLjYsnignE7KcM"}' 'F7fuDbzRRYMNXWUs' --login_with_auth "Bearer foo"
iam-admin-get-user-link-histories-v3 'p1tOibJY9aL9ie6v' 'vMbiNURrlm88QlKy' --login_with_auth "Bearer foo"
iam-admin-platform-unlink-all-v3 'uoya4JgakZyUV7t7' '3VnSFbuxd4KYZ0jk' --login_with_auth "Bearer foo"
iam-admin-platform-link-v3 '0UZdhtnKu9oTc8pV' 'kiyGsj5JdXzRxfNE' 'jUMTs8WIObJBTsvs' --login_with_auth "Bearer foo"
iam-admin-delete-user-linking-restriction-by-platform-idv3 'w76uISRX0bKVoWto' 'UW1P7ocuBAldDSUS' --login_with_auth "Bearer foo"
iam-admin-get-third-party-platform-token-link-status-v3 '7Haa6unq1yQOSRvy' 'iLBRVtIDi2piIQFV' 'mzMidw70KSahpYZd' --login_with_auth "Bearer foo"
iam-admin-get-user-single-platform-account 'KZRyR9AX7JjxvNZh' 'M84DiZk6ySrB9SVF' --login_with_auth "Bearer foo"
iam-admin-delete-user-roles-v3 '["ctW7YS0OkL78XeEA", "tALFI3v8yha4pd5A", "7MYcpBD6lKNb8Rxv"]' 'N2u5J7baOeLH19fq' --login_with_auth "Bearer foo"
iam-admin-save-user-role-v3 '[{"namespace": "BwNbNe1ffYRtIvQa", "roleId": "KyevWYtZjK6J29v8"}, {"namespace": "MpBSpo3AKRmnJkzJ", "roleId": "HAckUyBksYQfDm0R"}, {"namespace": "NFwiz70tRVLMlHi8", "roleId": "i9gOVqajUWrgEsWD"}]' 'taKzn8dZwnnGeZsZ' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v3 'VgbPzPFbrOMZMgWk' 'FN7Tpkx6GcfyOg6Z' --login_with_auth "Bearer foo"
iam-admin-delete-user-role-v3 'Urrp9ubg9mndW2JK' 'mQafUs2bxYztOEyV' --login_with_auth "Bearer foo"
iam-admin-get-user-state-by-user-id-v3 'bKIf1ZbzgUwd8DHo' --login_with_auth "Bearer foo"
iam-admin-update-user-status-v3 '{"enabled": true, "reason": "lgjzIhpgOoIOD74V"}' '21HWDAfvXwdxbyp4' --login_with_auth "Bearer foo"
iam-admin-trustly-update-user-identity '{"emailAddress": "HAPbBbNPStVBUpKg", "password": "OssFkz0F36piDYXe"}' 'HZ7FHls3nyvconqb' --login_with_auth "Bearer foo"
iam-admin-verify-user-without-verification-code-v3 'HQqKLQKe3xmj6s0G' --login_with_auth "Bearer foo"
iam-admin-update-client-secret-v3 '{"newSecret": "qsWncp5LrqbiKudv"}' '9z75SzoCV8ZMi2o1' --login_with_auth "Bearer foo"
iam-admin-check-third-party-login-platform-availability-v3 'nR482D6gNClk9c87' --login_with_auth "Bearer foo"
iam-admin-get-roles-v3 --login_with_auth "Bearer foo"
iam-admin-create-role-v3 '{"adminRole": false, "deletable": false, "isWildcard": false, "managers": [{"displayName": "saPFC5zBW3ZgVZCj", "namespace": "9ObVGT0Scwl4kNmC", "userId": "i15XTJTgCNNH7RtG"}, {"displayName": "5Xmo9Q0Wb07N17fk", "namespace": "xZSc6VbE0AGcekjM", "userId": "NHuPXtz8tXxrmzaf"}, {"displayName": "MUguyDoN91uc28Ho", "namespace": "SpGt1g0GGbT4Hf2P", "userId": "PKOldkbgX9CWJKwX"}], "members": [{"displayName": "XSbv5eg9q86IaDFj", "namespace": "jx6uZerWbtwTX9gN", "userId": "RByjbE8lOLAfTXKL"}, {"displayName": "zbrddqcKLa7LevxN", "namespace": "HOSEhQRZIp693lRw", "userId": "tc43atCuCFxbfbz4"}, {"displayName": "aQERziPL4dHhOqG5", "namespace": "KDdUvk0LEi26Ls7m", "userId": "jRxNmvvNtjJNQepU"}], "permissions": [{"action": 93, "resource": "VrvMEPtpsSNcpK1Q", "schedAction": 22, "schedCron": "syfcH7WjP7HuGz3b", "schedRange": ["5WAEvdRF9bqMj4ro", "5B19VE838c7OydVw", "0zCqoMZvpIOO97Dm"]}, {"action": 88, "resource": "coRFok5d3AyGrZO8", "schedAction": 66, "schedCron": "zMhkk5PxsjqbCKpM", "schedRange": ["v2Yky9DYkD2sIllF", "tBtXJKG3rqBmILht", "Wm8RQvRUbUDSiefG"]}, {"action": 62, "resource": "TelFAadM9y66Drf4", "schedAction": 92, "schedCron": "rDlgC2nzS9SiGUjV", "schedRange": ["Aw4v3q6JRHcn7Kao", "CEkRdo6qHYIZWnXq", "Q1oHFJ9Q0vqsL9So"]}], "roleName": "mqWsGA76yxi0QzZW"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v3 'fmP2sx0KO5bEJaPn' --login_with_auth "Bearer foo"
iam-admin-delete-role-v3 'AFjsodyJQVVBrShG' --login_with_auth "Bearer foo"
iam-admin-update-role-v3 '{"deletable": false, "isWildcard": true, "roleName": "IIuqK8C403HgoXCR"}' '6XOMXwKdfqk8T4QH' --login_with_auth "Bearer foo"
iam-admin-get-role-admin-status-v3 'K30EX0FclpDl5Hsu' --login_with_auth "Bearer foo"
iam-admin-update-admin-role-status-v3 'racO5MnjnxD1OXkx' --login_with_auth "Bearer foo"
iam-admin-remove-role-admin-v3 'ShFVQTRekLfjmy8z' --login_with_auth "Bearer foo"
iam-admin-get-role-managers-v3 'osRCRgVwbrQKmb01' --login_with_auth "Bearer foo"
iam-admin-add-role-managers-v3 '{"managers": [{"displayName": "yA7U7dGMjupZkZQY", "namespace": "8CNyT4k3DIbfT22G", "userId": "5NpE130YWSgxpKWt"}, {"displayName": "dtdtVW9anENmxb9e", "namespace": "7vXZV3ig8Jg5VBye", "userId": "I3ycMcYYBixKJXCI"}, {"displayName": "SQdwec1m8BusV9tU", "namespace": "h74KVo6Xqjz2xUKL", "userId": "NWSmYyVvyelIJ8Qg"}]}' 'aLMqi836ULa7cfZl' --login_with_auth "Bearer foo"
iam-admin-remove-role-managers-v3 '{"managers": [{"displayName": "4VuY6rsZyo6CBRRn", "namespace": "oOikIxXKKIR6kPms", "userId": "wm5TCAU1cKApdJDn"}, {"displayName": "E73GLmSZns5owBho", "namespace": "Ug4LsGP6KLPXkvUv", "userId": "2XiXaBzsmaxjTZPl"}, {"displayName": "LitytGka7Kv5TacQ", "namespace": "KF4OlRGdmXxETLEQ", "userId": "rr3KCAV9alq3hK1G"}]}' '4kKooSNNUZuiynZ6' --login_with_auth "Bearer foo"
iam-admin-get-role-members-v3 '4IwncZPk82GF3eTC' --login_with_auth "Bearer foo"
iam-admin-add-role-members-v3 '{"members": [{"displayName": "0vzZUDj9dzGgGVxo", "namespace": "9OHgfHumyfuBNise", "userId": "cYbcOpR45VDlvSc0"}, {"displayName": "Mr7ImwCwGqOf0bNs", "namespace": "97KvKyj3MqS7Dcmt", "userId": "fh50eObbrmgjhWK0"}, {"displayName": "x0ZidAJ1CU1eD1La", "namespace": "16Bw3JbUnUDh5yGj", "userId": "jv4Mwrv2vancmR6Z"}]}' '7rb21A2E9pX0BWCM' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v3 '{"permissions": [{"action": 35, "resource": "A8bvXlDhG7BrorbK", "schedAction": 70, "schedCron": "SHrkoqv2mM6soMaT", "schedRange": ["vQq2a9YdFNtRVSO0", "js0hG9xmSnzd7zgU", "xAogcnGkXk17QPkJ"]}, {"action": 69, "resource": "spQD9IRIpDDubntP", "schedAction": 57, "schedCron": "G2uf6E8EajXLSAS8", "schedRange": ["MKMaxQ1QyJCpKedh", "uzI7G9NCKKXu1bqI", "2M5PmXfKnQ7BYGjC"]}, {"action": 96, "resource": "4ExObppC6CMYDm5g", "schedAction": 9, "schedCron": "0eUoOBd90h9EDqST", "schedRange": ["OfoNewWjwMWDKEt6", "JhbJ0fwTDaq6b5Rp", "MwhWPtndriXU9loO"]}]}' 'xpmEuwDVc12r0DVU' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v3 '{"permissions": [{"action": 66, "resource": "qSZdZ5C8mFI9Tnvz", "schedAction": 62, "schedCron": "CBuzUUwyI6Vtd4v9", "schedRange": ["k4fv3kMiuQ3DhsKL", "xjt5srPFxBgpFtDB", "mTLH9kP9U53z6joB"]}, {"action": 54, "resource": "ELgBe6dboSdhkBzA", "schedAction": 53, "schedCron": "q6eY4PBNHKPx62tH", "schedRange": ["xDb06ZFy3uglSp2U", "xvF2uLXWilRD7HD6", "LCgdFxRGj00RT6Lv"]}, {"action": 5, "resource": "Q8gIDRdD2wwMXwKV", "schedAction": 22, "schedCron": "GPhEJsc7rZpxaPHc", "schedRange": ["9r8eToFmkHJ6BPOK", "FLxIwKssw647YwDu", "dnGRufOUGfMjTU22"]}]}' '6l07jPlcYaqYM7Yf' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v3 '["BmhjI9Y28qVceS9U", "X48dKPCFUIeyYEym", "NXzNX6TGh4UdEwee"]' 'BsJEvBbAvCmlh6Z1' --login_with_auth "Bearer foo"
iam-admin-delete-role-permission-v3 '29' '1T8QwMNOAzXmyHEV' '4g9P6a280S5RNB5d' --login_with_auth "Bearer foo"
iam-admin-get-my-user-v3 --login_with_auth "Bearer foo"
iam-user-authentication-v3 'VCsB7xL4axSPgPCi' 'wLxCFLDixZwVtt3R' 'VTl0tR00oQgcHdGG' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-authentication-with-platform-link-v3 'K3x76U1EIcklttmr' 'pgF5szl0sMY8es36' 'r1FgR70eNLHkVrEF' 'd8xArWJuCAIfNBSH' --login_with_auth "Bearer foo"
iam-authenticate-and-link-forward-v3 'gpFNw9K9pmAIc6VS' 'fE9nbE2PMv12ZSRJ' 'kujxbCu1HFaj6Vxs' '3GuA4S1dS7H7yIS7' --login_with_auth "Bearer foo"
iam-public-get-system-config-v3 --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v3 'b5TSDRIoMg7Dc5AP' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-request-one-time-linking-code-v3 'zfzXDELJFaIaEMW5' --login_with_auth "Bearer foo"
iam-validate-one-time-linking-code-v3 'bhJyL72WDyhBsCCb' --login_with_auth "Bearer foo"
iam-request-token-by-one-time-link-code-response-v3 'nfihnXKxGxaupnTT' 'q9ihZkvFKfSHQh8I' --login_with_auth "Bearer foo"
iam-get-country-location-v3 --login_with_auth "Bearer foo"
iam-logout --login_with_auth "Bearer foo"
iam-request-token-exchange-code-v3 '9xk3sFl0cbuCRM69' --login_with_auth "Bearer foo"
iam-admin-retrieve-user-third-party-platform-token-v3 'XKkLwioRaKnWhlh8' '0BhYe2fJDS6T75Q4' --login_with_auth "Bearer foo"
iam-revoke-user-v3 'ulonMFjmYqE1wJhf' --login_with_auth "Bearer foo"
iam-authorize-v3 'ogWg2Apm0sUy18aW' 'code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-introspection-v3 'MSdOOsn2Nd8Jpa19' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-jwksv3 --login_with_auth "Bearer foo"
iam-send-mfa-authentication-code 'GJDK46Eehx7xasqM' 'Y9aulsL6NOV5agpS' '6A5mkufBpWVxIK9D' --login_with_auth "Bearer foo"
iam-change2fa-method '2bTcgaKoccaSwWcZ' 'mzCWGI1cIQcPWASh' --login_with_auth "Bearer foo"
iam-verify2fa-code 'IhieSKUf3zKbyQk2' 'vQTYX1xsth28NZZg' 'sXycuQNGIDeHlf6I' 'false' --login_with_auth "Bearer foo"
iam-verify2fa-code-forward 'p7qSiDvsfMUOpWv4' '6sXvpOjrpRo4mYrC' 'eQUnYoID2UqO0iAX' 'A9dB4ib8HDOJ8TNi' --login_with_auth "Bearer foo"
iam-retrieve-user-third-party-platform-token-v3 'P8KgEAj3dbRTI0i6' 'dO3zkbDseh4tJdoG' --login_with_auth "Bearer foo"
iam-auth-code-request-v3 'cwMBmegqVUaWMJBj' 'rV0p9A7tcHrV0MbJ' --login_with_auth "Bearer foo"
iam-platform-token-grant-v3 'Gr4drgkDuWS05m0p' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-revocation-list-v3 --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-revocation-v3 'GzazM2BUXnzUEWTi' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-simultaneous-login-v3 'epicgames' 'MJAf6AgbiEDMfCck' --login_with_auth "Bearer foo"
iam-token-grant-v3 'urn:ietf:params:oauth:grant-type:extend_client_credentials' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-verify-token-v3 'ogE5gcfF8AMGZ2FB' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-platform-authentication-v3 'S93Mg6TKwdRMraDL' 'rwh3d0ykRGkgqUNI' --login_with_auth "Bearer foo"
iam-platform-token-refresh-v3 'bJMJ9ABbKVWO2YED' 'iqkwKbpdk7wlDngN' --login_with_auth "Bearer foo"
iam-public-get-input-validations --login_with_auth "Bearer foo"
iam-public-get-input-validation-by-field 'iPPjpSAlZwFGpea5' --login_with_auth "Bearer foo"
iam-public-get-country-age-restriction-v3 'ObBB49Km4ClIQmkI' --login_with_auth "Bearer foo"
iam-public-get-config-value-v3 'dLCvNhZ6P8aqZ2yf' --login_with_auth "Bearer foo"
iam-public-get-country-list-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-public-v3 --login_with_auth "Bearer foo"
iam-retrieve-active-oidc-clients-public-v3 'rC1V7ZpJZPHCMqvc' --login_with_auth "Bearer foo"
iam-public-get-profile-update-strategy-v3 --login_with_auth "Bearer foo"
iam-public-get-async-status 'YmeDLYEzs2SQUdKr' --login_with_auth "Bearer foo"
iam-public-search-user-v3 --login_with_auth "Bearer foo"
iam-public-create-user-v3 '{"PasswordMD5Sum": "6vgqkjycqclNlBOR", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "UZOFzpFd6b5Jc5TE", "policyId": "THcup8GG0VCMTFJ6", "policyVersionId": "svTyo9RHget5hzB5"}, {"isAccepted": true, "localizedPolicyVersionId": "BDFopxUwkMuSqQnK", "policyId": "zDgDAtqE3kuybwTQ", "policyVersionId": "FYEJjIYwqfSRy8Gg"}, {"isAccepted": false, "localizedPolicyVersionId": "k77fd1GS5YkyhAiA", "policyId": "ItnWUmD225fp1egs", "policyVersionId": "x3ErheNwqd5pricl"}], "authType": "NNqLyrlzrJ4QHbfn", "code": "AdtkujxHff7n1yaN", "country": "CcjgFhS0URBhl0L5", "dateOfBirth": "FCbOn46W2B2uPQLr", "displayName": "t2t6bVpCgKvPXSDu", "emailAddress": "fmKh783cV54JsVBR", "password": "B0rY0xfWddACyHSm", "reachMinimumAge": false, "uniqueDisplayName": "0rkOHUkY5aSlqhYo"}' --login_with_auth "Bearer foo"
iam-check-user-availability 'SXbn6l5xAzc1nc3e' 'Fm950dtVAo7w4e3v' --login_with_auth "Bearer foo"
iam-public-send-registration-code '{"emailAddress": "5mh6Rum5pbgEt39u", "languageTag": "JQpgEtchTe3nt7t9"}' --login_with_auth "Bearer foo"
iam-public-verify-registration-code '{"code": "ztprSfW9OutADrNG", "emailAddress": "BWSJ1zQKxVmRTawj"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v3 '{"emailAddress": "iZPMoZZcyGEHxAKD", "languageTag": "Qher3usApPdJPn9e"}' --login_with_auth "Bearer foo"
iam-public-validate-user-input '{"displayName": "IdhIBvTTupABJ4Rw", "password": "H3EdKmYtbqQHNfIZ", "uniqueDisplayName": "wrMxf3EnzZVnkLT0", "username": "Lb85nmpdN26BY5YI"}' --login_with_auth "Bearer foo"
iam-get-admin-invitation-v3 '0jeO2zMDSy4kyqyK' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v3 '{"PasswordMD5Sum": "grtEPdXXlt8geCdi", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "u3iNvn7vLZ7h6alh", "policyId": "JNGZF07lsPP5OfHb", "policyVersionId": "XzWnVO2U4uyzZo1r"}, {"isAccepted": false, "localizedPolicyVersionId": "zwuDSdGl1A2vaNeD", "policyId": "iSqTfmAVg50kOdJa", "policyVersionId": "gEmTuaxlxgywkbdO"}, {"isAccepted": true, "localizedPolicyVersionId": "1DBdoKH6sREmmfwU", "policyId": "ZLZZS7snx0Q2Gd8m", "policyVersionId": "7Y3wiNloJfey3HXL"}], "authType": "6SjljNPTXA3qbg55", "code": "SyienCODZ0mnOpPT", "country": "VxEgBFzG8tlkxWKC", "dateOfBirth": "U1XN4gl7yHvEqpJS", "displayName": "rDXVwCkhOQ161TFj", "emailAddress": "ROYJm75VIuCOCkt2", "password": "W1DfI8QtgODk9K6D", "reachMinimumAge": false, "uniqueDisplayName": "a7CDRTcsAHzD3dZy"}' 'yWbUQpbcv3IwmL7a' --login_with_auth "Bearer foo"
iam-update-user-v3 '{"avatarUrl": "1K3zIUYJmdF1YtWN", "country": "SQlcMzxfppNCrscD", "dateOfBirth": "PbklTHcmgXsrVj3M", "displayName": "jml6BpCODWGOLMmC", "languageTag": "ZUeelXYyNrXweiCn", "uniqueDisplayName": "DldRPRfd6mLZ0GTJ", "userName": "wEjoZrRtaeWKMC8w"}' --login_with_auth "Bearer foo"
iam-public-partial-update-user-v3 '{"avatarUrl": "sOByQAMAgqFEzEt8", "country": "umj5XhKnw7MHDwFV", "dateOfBirth": "KUC2ecnpUDqvLQix", "displayName": "PKVSmWa8TGko16XT", "languageTag": "qHc0cM7ixq8Tjnxp", "uniqueDisplayName": "5Cl8ggaEmCcuK2hH", "userName": "viBEWpbusO6EyVqs"}' --login_with_auth "Bearer foo"
iam-public-send-verification-code-v3 '{"context": "tpgZpbz77y88rUFu", "emailAddress": "m2ZcA8iKcF0bkfjc", "languageTag": "TEFXcTwEtnHxP5pV", "upgradeToken": "tN4jNVIdruEA39uC"}' --login_with_auth "Bearer foo"
iam-public-user-verification-v3 '{"code": "JzsE8WObt6t0w8LO", "contactType": "BxE15JYj4IqWK09l", "languageTag": "4wkrzahXR1sDEDVK", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v3 '{"code": "sN7bRwcr16lW5Ywg", "country": "ZpjlMMtPWg8217m7", "dateOfBirth": "qNkQiKp2oac8QTNE", "displayName": "uBbeuQqm9wM7mgTt", "emailAddress": "UdPVcQijMBhs0kDP", "password": "6d3nuUZ41mSeS9Sn", "uniqueDisplayName": "GqhJOvykBcDpzD9z", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-verify-headless-account-v3 '{"emailAddress": "iNBE0HRsE0GHDOFj", "password": "rfqJcyxT2a7fCFAU"}' --login_with_auth "Bearer foo"
iam-public-update-password-v3 '{"languageTag": "zLELiM573TdtWjfV", "mfaToken": "ciuLnLsBKGsALPuC", "newPassword": "OyphUUAV95708zaP", "oldPassword": "0wpZgQEvFzox9wHo"}' --login_with_auth "Bearer foo"
iam-public-create-justice-user 'cX3DRWobEoGr8W97' --login_with_auth "Bearer foo"
iam-public-platform-link-v3 'KBedcr6PM51z7i0w' 'Q9egK2t46EG8I2lT' --login_with_auth "Bearer foo"
iam-public-platform-unlink-all-v3 'viKbOgVuN3nhkn6Q' --login_with_auth "Bearer foo"
iam-public-force-platform-link-v3 'IesNoYqvVsakylHi' 'kKkpOjqwgKvfXXs8' --login_with_auth "Bearer foo"
iam-public-web-link-platform 'pDqm31AZSRkuw6q8' --login_with_auth "Bearer foo"
iam-public-web-link-platform-establish 'FgqG46RsFK7eYlSU' '3vYcHZZjFegVnZOn' --login_with_auth "Bearer foo"
iam-public-process-web-link-platform-v3 '0tk4IATSIefcqNEn' '4IZ0Dv6b8WtaMVvL' --login_with_auth "Bearer foo"
iam-public-get-users-platform-infos-v3 '{"platformId": "bG04KKnh3jvW0Qp3", "userIds": ["kTyL4CsLwiWUMcpx", "n4B6XoTNMuqZTHwo", "1IAJQpb6r8ZeaSHw"]}' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"clientId": "QuiH3Ozu4G6bXxp0", "code": "gYZyF9fJBJkSOrF9", "emailAddress": "Dg4FcDwBGyBiHewZ", "languageTag": "kwEeuzBBRSknxyWk", "newPassword": "ZObuvig8sMuss76e"}' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 'zTrsDZNYUV48Oh6I' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 '45X7HvUtPYONZdFk' --login_with_auth "Bearer foo"
iam-public-get-user-information-v3 '75lkjQNHrjaboGom' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 'guUqeuZh5qtrRbNn' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 'GejdTGvZgN5hshSe' --login_with_auth "Bearer foo"
iam-public-list-justice-platform-accounts-v3 '5YmZXKEQLkM6o3eG' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "SP4Htmr90TqGf0Oy", "platformUserId": "qJ9ibJMmRgoxNwp1"}' 'lGkYoq8HP1TM0tef' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["VQPWX1NPO5Wn7rNG", "8rGp7Fadvo5EzpX0", "IttsRezyY9GB5sf9"], "requestId": "4ALBmvdncQkcZb8c"}' 'WdVH9bww15zZsaYr' --login_with_auth "Bearer foo"
iam-public-get-publisher-user-v3 'JAe5Kd5QB96ndlO6' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 'iPGC9RhzMC7V8BEp' 'hnRXnSpCzyb8Fkox' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 'QbrPngi87K58pQsw' --login_with_auth "Bearer foo"
iam-public-forgot-password-without-namespace-v3 '{"clientId": "qKLutINusOsa92F6", "emailAddress": "iwkJIYOLarmpWyvi", "languageTag": "b9CDW21ANrlpuXD9"}' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-public-send-code-forward-v3 '{"context": "H1u1CvzWPcZwkj1l", "emailAddress": "6bf2F9EXOBj7v8LH", "languageTag": "YivmD0ekycMKlwJT", "upgradeToken": "NL2UCWUtaAD7ZZx1"}' --login_with_auth "Bearer foo"
iam-public-get-link-headless-account-to-my-account-conflict-v3 'iefATWcDSqGYRMdz' --login_with_auth "Bearer foo"
iam-link-headless-account-to-my-account-v3 '{"chosenNamespaces": ["07xEJ40epssgJJC3", "CX0hpB1ZGMMo5DSo", "zCuFsrBMtoOeLfMC"], "oneTimeLinkCode": "YxSeeJOlxa395rgh"}' --login_with_auth "Bearer foo"
iam-public-get-my-redirection-after-link-v3 'ZwGhdZJkkGhYvXYM' --login_with_auth "Bearer foo"
iam-public-get-my-profile-allow-update-status-v3 --login_with_auth "Bearer foo"
iam-public-send-verification-link-v3 '{"languageTag": "IyaEMEqOpwetb82b"}' --login_with_auth "Bearer foo"
iam-public-get-openid-user-info-v3 --login_with_auth "Bearer foo"
iam-public-verify-user-by-link-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler '96rsH73hRfDgl29G' 'WKpItMt4GszRufkD' --login_with_auth "Bearer foo"
iam-login-sso-client 'FLYyNBPlMrkse9SG' --login_with_auth "Bearer foo"
iam-logout-sso-client 'cMuV5phhU315LUC6' --login_with_auth "Bearer foo"
iam-request-target-token-response-v3 'HSMQ32UznXNd6ve2' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-upgrade-and-authenticate-forward-v3 '9lqqtcLJW9eTJvKN' 'DFrx6LabyDnqXjXK' --login_with_auth "Bearer foo"
iam-admin-list-invitation-histories-v4 --login_with_auth "Bearer foo"
iam-admin-get-devices-by-user-v4 --login_with_auth "Bearer foo"
iam-admin-get-banned-devices-v4 --login_with_auth "Bearer foo"
iam-admin-get-user-device-bans-v4 'PIcxh0x7T6RQGnnW' --login_with_auth "Bearer foo"
iam-admin-ban-device-v4 '{"comment": "4ugGX6mKBbgTD9xL", "deviceId": "07ZzzIs3Jke34ZAU", "deviceType": "uLP897ooMLnemwKA", "enabled": true, "endDate": "l7sg7IfMH5Tu1ky1", "ext": {"ZYvyeHmfoFkUDP86": {}, "4shbnQ3bVvuvpsDJ": {}, "XPCWkX4Kpi8CJ88a": {}}, "reason": "MPGFFAQZbfbmVTEb"}' --login_with_auth "Bearer foo"
iam-admin-get-device-ban-v4 'iRq5Juikmpat75rV' --login_with_auth "Bearer foo"
iam-admin-update-device-ban-v4 '{"enabled": false}' 'fMCeNnu6OIG1PPLR' --login_with_auth "Bearer foo"
iam-admin-generate-report-v4 'DEXLXZWXvqNCHvNp' --login_with_auth "Bearer foo"
iam-admin-get-device-types-v4 --login_with_auth "Bearer foo"
iam-admin-get-device-bans-v4 'eMjMzguq6HFIqaqw' --login_with_auth "Bearer foo"
iam-admin-unban-device-v4 'H9J6JLb5f3SBMyJU' --login_with_auth "Bearer foo"
iam-admin-get-users-by-device-v4 'dwEBRrHAWUFqTooG' --login_with_auth "Bearer foo"
iam-admin-get-namespace-invitation-history-v4 --login_with_auth "Bearer foo"
iam-admin-get-namespace-user-invitation-history-v4 --login_with_auth "Bearer foo"
iam-admin-create-test-users-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "NffZENs9X0hFMdzr", "policyId": "yvhc1YjHmmulSBIE", "policyVersionId": "lc2CdRvBb0aGnMt6"}, {"isAccepted": false, "localizedPolicyVersionId": "5bWHb5sbX6asrjV7", "policyId": "XJUOtHlzXNHEPpzl", "policyVersionId": "Mlx7b2H2THLwZGik"}, {"isAccepted": false, "localizedPolicyVersionId": "A9gE6SrYKq6lcVOh", "policyId": "PJIcEHbiKHW7flVo", "policyVersionId": "lAWEMmQSPDTRqjlv"}], "count": 46, "userInfo": {"country": "W0CY0vAfbq8xoCur"}}' --login_with_auth "Bearer foo"
iam-admin-create-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "VjyOUpR3uUdgNlyU", "policyId": "4IJnqtrjCOsE8Vjv", "policyVersionId": "zhJwNX4bhqCjlwrm"}, {"isAccepted": true, "localizedPolicyVersionId": "MLMob1hUnIzIpUM8", "policyId": "KK1kGFN0NUNGKxdl", "policyVersionId": "AUDFQuGPzAuT7M6O"}, {"isAccepted": true, "localizedPolicyVersionId": "RxNg8djSb4Vt2vKQ", "policyId": "5vlCdI519Pf2iogw", "policyVersionId": "xM5DZM0dgozmco41"}], "authType": "EMAILPASSWD", "code": "xdYQg34WUV0WpmsQ", "country": "np1n4YGumTKOlDOy", "dateOfBirth": "5vhSkxERZ2AQ1jvX", "displayName": "YBar5RMmmGdWl0wp", "emailAddress": "j5tVfKU3D8WVPh0Z", "password": "7YiGE2cyzTMBY7Xd", "passwordMD5Sum": "0OoENg2Lw7uepmah", "reachMinimumAge": false, "uniqueDisplayName": "kPUBnB0ZEJH3ebM7", "username": "1Tg922xiBgHSka0P"}' --login_with_auth "Bearer foo"
iam-admin-bulk-update-user-account-type-v4 '{"testAccount": true, "userIds": ["RBeSc5uShoj3dGHM", "eoi5DBOsQ0Gax0iX", "05IT9Agsjl5NmnSH"]}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["hxNmCe4txY0MsPc9", "EMgf9JCJiEvhL8Zf", "wCVJW9yspUOyHC9e"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "KeXzrvzBllwzyC1a", "country": "TWEmPgoy4TkpEw4Z", "dateOfBirth": "eid4mRoFNxv10ckM", "displayName": "QVjKk3bWJ0ZuYSe3", "languageTag": "sI0x2hc8vaN1Off5", "skipLoginQueue": false, "tags": ["JMX7xSrz1EH6X2SM", "3xzsNrJzWBcdFlo7", "oAsOlfLB1J19b5rT"], "uniqueDisplayName": "fiL2P3r1a8KIJH33", "userName": "aKkPuWD59MgTy1HA"}' '58Jt5NaROjSKFEuZ' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "o2ElXYSS4ezBRSiO", "emailAddress": "yReviDaxlPdhwmcH"}' '03yoMxzRR6xd9rTh' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 '{"factor": "3ureaIbxM3Wev9pZ", "mfaToken": "QjWAN0tny16ZHZtu"}' 'SJGQCrM7JEMRPkdT' --login_with_auth "Bearer foo"
iam-admin-get-user-mfa-status-v4 'cAzkIlndN5xeayr3' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 'vUKMuIiz2MiAAKcv' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["AXnxnH0QIhoJRY80", "7VmBT4wZXQZZrSsu", "YiIPei0pXglJYnKk"], "roleId": "oCAZuolAWnxkImVb"}' 'DP0QX31gI7VmnGIR' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["MvXe6BiphIFe2bzr", "6qQw6fSESkM19OPM", "Bb12gpmShlmIt2nf"], "roleId": "hUaZGqjslu59GT2E"}' '6AacmZRXZm626POX' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["WVj3KP1mX0iYHXBU", "3Uk2tQm307IORTyH", "nLYDAAg1YA4kZURm"], "roleId": "oGgxVRMPf8g1rbhf"}' 'IMStMnSqrKWYOuIT' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "aD9WNKGhbLhjz1v0"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 'RBIO2rkJGmPaK6HE' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 'VIQJd3930TGewjRy' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "jap24esyjh6Wc3mi"}' 'gf2n6iQyr5cb5YL6' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 11, "resource": "T0gHAkltcR3eHFbi", "schedAction": 54, "schedCron": "i2NY26xrkPPdg3pX", "schedRange": ["jmtpNfCrIj9ntYo3", "dupUHNu8abrVVOKx", "r9Pa315FKDjG2ApS"]}, {"action": 97, "resource": "Tq4YIyZAFQ6lZfa2", "schedAction": 19, "schedCron": "VwSaoj1ugjr8mPkr", "schedRange": ["3tZ506ERSVy5M3rr", "kxu0U9h9gCNVZxHG", "xhZqNXJ6JXSh0Z3S"]}, {"action": 100, "resource": "QXDNHto74GcmVf0f", "schedAction": 3, "schedCron": "LFQejNZJNF2hm0Tq", "schedRange": ["BQprHn3whPKU5abn", "qw8fFa30pVbhr1BH", "h1arZAyuLcZoEkPp"]}]}' 'qKhP2jWnRTglw0gd' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 99, "resource": "k8zHR8VyCC0EQwE0", "schedAction": 4, "schedCron": "6fFQezJ5E3iYHIkn", "schedRange": ["vPcJkjRevVYfiExp", "AgoK9YDq1x3dkbJF", "DEBEOOvJ5BKeipIl"]}, {"action": 8, "resource": "B9P9GaukfCEIeSBL", "schedAction": 15, "schedCron": "pneDQCfwucHRL3o2", "schedRange": ["NstrL6TsJeRcE7Gu", "wKn63KIDTkUCqbbH", "GJGOTvKKRTHDntaF"]}, {"action": 17, "resource": "AuujPeP9N0vdVB5a", "schedAction": 0, "schedCron": "XkS3XQfMuzZh4AhZ", "schedRange": ["Re2hgU56xtyJtnbT", "DXu7FbleSP5PcdOu", "q0m0rvakR8rcwojL"]}]}' 'RjhcaJ56nGlYZ2to' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["d2BGBXjNyRCtPOr1", "FU3QZy3gdDms3kb1", "htW0UGJpwQZlXuzu"]' '3m9u67JjCDwg186h' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'GWKfO9MnoT3t99Hm' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["cxzjDhTrcBKtU956", "hOg8oukDVdweG0sF", "HxTHa2k60SzCqUgq"], "namespace": "1gLbcIMevTmC631p", "userId": "7q794bu49lINFTtE"}' 'RAXT2h3hcQ2wV3Zb' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "BTnNQnVUhA5WnzVZ", "userId": "dj8tsyzC4QaLXp3o"}' '4TDraEEaDNJbVd20' --login_with_auth "Bearer foo"
iam-admin-invite-user-new-v4 '{"assignedNamespaces": ["FVHevCjthJUb7jKu", "MrFaoLulzp3sZxIm", "VK5yh2LcM8LaMW0B"], "emailAddresses": ["yjsRUrAHNRkIcC4w", "NFzsbrtYvLh56AWX", "oMiowdWSs9DQ0VU1"], "isAdmin": true, "isNewStudio": true, "languageTag": "UT6mma833TDzk66i", "namespace": "x88sAUrXr7MXxCvy", "roleId": "y7caxz4MQrODLNlx"}' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "iEjQBCZx9DJ4V97S", "country": "JLlrwXmIGamRCARu", "dateOfBirth": "FLx4rV4CXVMrDYKe", "displayName": "2eTf1axo16GqT2vS", "languageTag": "LLiMvcu39YZJypWz", "skipLoginQueue": false, "tags": ["kbSUbOZ9WNl3apJm", "NAbl1g5ZmTTGYRbP", "4QVey9pEz1TV5cUt"], "uniqueDisplayName": "PBsw01i5Mf7WvbNS", "userName": "eeDNfUESLlwHv3Jg"}' --login_with_auth "Bearer foo"
iam-admin-disable-my-authenticator-v4 '{"factor": "teOLyKp8a1VqxXnR", "mfaToken": "hDd9TGkO6aIYqftw"}' --login_with_auth "Bearer foo"
iam-admin-enable-my-authenticator-v4 '1SrM2nhSEanfUYrM' --login_with_auth "Bearer foo"
iam-admin-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-backup-codes-v4 '{"factor": "U6A43UKGpvC1cr5T", "mfaToken": "1PSXhduTWchzXDv3"}' --login_with_auth "Bearer foo"
iam-admin-get-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-generate-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-enable-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-challenge-my-mfav4 --login_with_auth "Bearer foo"
iam-admin-send-my-mfa-email-code-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-email-v4 '{"factor": "TAtBjP4HSuiYCbG0", "mfaToken": "UyYUJmNL8p6AbdtU"}' --login_with_auth "Bearer foo"
iam-admin-enable-my-email-v4 '0CDrlQpKB8qoel2Q' --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 'K3aSOYdmMDikc3Fj' --login_with_auth "Bearer foo"
iam-admin-get-my-own-mfa-status-v4 --login_with_auth "Bearer foo"
iam-authentication-with-platform-link-v4 'm9HoQDemtiQvURYZ' 'CeF30RT9rBgM8o7l' 'xXq7TkdM7FVDCBcv' 'VegrZddP8lLQo6tH' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v4 'j4z4cAM4LMJfWNZI' --login_with_auth "Bearer foo"
iam-verify2fa-code-v4 'xAgBpeubprKX68jT' 'yRd3LrR1x6U1v6zS' 'Ljm9zmzUW0vPj90j' 'false' --login_with_auth "Bearer foo"
iam-platform-token-grant-v4 'SfMi2CPVGxjcdpdC' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-simultaneous-login-v4 'steam' 'oQ1f1AYq306Pysv4' --login_with_auth "Bearer foo"
iam-token-grant-v4 'urn:ietf:params:oauth:grant-type:login_queue_ticket' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-request-target-token-response-v4 '40Zrpn0vAD9YsPeD' --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v4 '{"pidType": "WrAVQZSvgWuCuLsU", "platformUserIds": ["GrVQAbhS54ZuQHKe", "rsDmJLUHAKtfXCKO", "na8DdjtZhh6ofsUo"]}' 'Rh6r0e0J6vyqPw7Y' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv4 'lmV3kES0Hi88UYgS' 'V40OvY7apPCrN5bE' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "5UcxuXXpt0YSPX04", "policyId": "uEIdAwgDobopbdJe", "policyVersionId": "VCiKs2vLyH9kcSBd"}, {"isAccepted": false, "localizedPolicyVersionId": "YUJPbvzn8TYoMDAa", "policyId": "UXSuBQdvdhJoT0WK", "policyVersionId": "5ngNUxDKfZYofPGU"}, {"isAccepted": false, "localizedPolicyVersionId": "ZX6plErw0Gb0ceCb", "policyId": "phW4YMhJ0S50bez9", "policyVersionId": "ZLHW882riiPfRQ3r"}], "authType": "EMAILPASSWD", "country": "0f5lwXvRNDBnmL1K", "dateOfBirth": "Qn77hiP1lzkzjYDw", "displayName": "6mLBordrJkD6vy60", "emailAddress": "uRMT1Xw9K9Yb68a8", "password": "ygYx2TqkhlqMnE9W", "passwordMD5Sum": "j90EQzOidrWnLrXq", "uniqueDisplayName": "ImgDf3GaJsdCZND0", "username": "wgYOilX1e1825ias", "verified": true}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "wlokbAFW8RgBUwBL", "policyId": "28BqM8UzvKqeoTiN", "policyVersionId": "KGRUMrimGAz6OhmH"}, {"isAccepted": true, "localizedPolicyVersionId": "pCdr3WzDm3hJdd6u", "policyId": "aO9TiTPnIh2iaIBp", "policyVersionId": "YC4txul6VKYlNYYl"}, {"isAccepted": true, "localizedPolicyVersionId": "CPMjr5M3vw1GqUjj", "policyId": "Fp6R8mYZwKftVqSE", "policyVersionId": "CsypS42NmYQ8HlHb"}], "authType": "EMAILPASSWD", "code": "nfs4tLVOYQCWMktm", "country": "iKd9vLPP0w52JRAZ", "dateOfBirth": "xMWdoleYNHXeOpaR", "displayName": "DwYLge851PbK2MFK", "emailAddress": "vw5TWjAh4gy41LLz", "password": "Q2IjY5PeNr4JmYxH", "passwordMD5Sum": "2qs28hePJjMp0TKK", "reachMinimumAge": true, "uniqueDisplayName": "stUmKdXiiTObNdqk", "username": "Wa13g3pgHx6uPf6j"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "gdDTDb3WdnOpzTrR", "policyId": "zCCafADJfWBspT3M", "policyVersionId": "LwJZquMQSPp5XD4S"}, {"isAccepted": false, "localizedPolicyVersionId": "WnyAaUaQBKFedL2u", "policyId": "duXvZUbQQ13FhD3N", "policyVersionId": "ExUFipJsUiDawAjg"}, {"isAccepted": false, "localizedPolicyVersionId": "FQk0VzWRNFNiUn2y", "policyId": "XMSCcHADYpS861c0", "policyVersionId": "CJ7LzpFvOSF6xKA6"}], "authType": "EMAILPASSWD", "code": "YZBkatNLc42eq0O6", "country": "VsXtOlQwj5xPvm7c", "dateOfBirth": "5nPR0Y1sffUaZ64d", "displayName": "Fpiv8o9Gw4QtKgyI", "emailAddress": "eySoUxoMrj2J4JGQ", "password": "ZAtyjTxnlmSyjEaF", "passwordMD5Sum": "H2DRN6HIEqIFEcS0", "reachMinimumAge": true, "uniqueDisplayName": "v8oYWPUS4Zu0SbTt", "username": "6M2XizikCh6q0yq2"}' 'WAHtL7IWE3MFqvfD' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "G5jvMOaXrDlEX42U", "country": "0syrGNhBmgT2q0kI", "dateOfBirth": "brJ2S5Pf1Lvg8kYE", "displayName": "VylINJpxFY8E6pU8", "languageTag": "eHjh0aTjIOaQt0sn", "uniqueDisplayName": "bE0yMvqF7TJ9uB0z", "userName": "ypjJiu7BIimNuwB3"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "hBVhuSMHhf5R2Mkx", "emailAddress": "QTAYGfE6hXZ7XLoW"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "CGf0dZEeXBd6mGG6", "country": "SHcZbX2wNnT6A9zo", "dateOfBirth": "smDnXoncy7NZQ4Pk", "displayName": "APXBCfkE1Fb0y94e", "emailAddress": "P7yh0zsKhR60HZwU", "password": "wk48XK7MXHbEwAvv", "reachMinimumAge": false, "uniqueDisplayName": "NzHhvxc4xAPZ86WN", "username": "nQOhusPn4466u8ag", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"dateOfBirth": "EFXUhGAwpYq1UqZy", "displayName": "dOB0MThZW6LwcAg5", "emailAddress": "7BYBVCbi0ifdPyKf", "password": "3SwHekWIz4rXlH5j", "uniqueDisplayName": "w99HxCjXWcaXBcfX", "username": "XeV7BXefsSgZxSYn"}' --login_with_auth "Bearer foo"
iam-public-disable-my-authenticator-v4 '{"factor": "VwXqF6K0WA76Kl2m", "mfaToken": "HHoz6qBQnEDgX49n"}' --login_with_auth "Bearer foo"
iam-public-enable-my-authenticator-v4 '1xTDFcmOm1sqdIWU' --login_with_auth "Bearer foo"
iam-public-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-public-disable-my-backup-codes-v4 '{"factor": "6ERylESgf5dXMrPo", "mfaToken": "YSohfrLyXMSrC62x"}' --login_with_auth "Bearer foo"
iam-public-get-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-generate-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-enable-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-challenge-my-mfav4 --login_with_auth "Bearer foo"
iam-public-remove-trusted-device-v4 --login_with_auth "Bearer foo"
iam-public-send-my-mfa-email-code-v4 --login_with_auth "Bearer foo"
iam-public-disable-my-email-v4 '{"factor": "YtDwflNGfufW5cWe", "mfaToken": "g6eSCypsceITTkJG"}' --login_with_auth "Bearer foo"
iam-public-enable-my-email-v4 'GCVF6LrILDLviUCz' --login_with_auth "Bearer foo"
iam-public-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-public-make-factor-my-default-v4 'mDAaW5xz1c7ZuZXU' --login_with_auth "Bearer foo"
iam-public-get-my-own-mfa-status-v4 --login_with_auth "Bearer foo"
iam-public-get-user-public-info-by-user-id-v4 'CBYnkY0LEBSYBdUS' --login_with_auth "Bearer foo"
iam-public-invite-user-v4 '{"additionalData": "iTOrhB8hVs29WOKm", "emailAddress": "ZRTtgycLzXz6lUMK", "languageTag": "i5mweMEZo2ZnL1Zg", "namespace": "2JfH4f73jAevOnES", "namespaceDisplayName": "6YJLlb2AfUEEBbqM"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-with-code-v4-forward '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "404mFw4HJv5T2kIQ", "policyId": "OecfLsYKTmUnKlrO", "policyVersionId": "sJmEwjGYN8VNPXNs"}, {"isAccepted": false, "localizedPolicyVersionId": "VSGQyTzhs9Asy4d6", "policyId": "29N4YnolVWA2dWxB", "policyVersionId": "s056jkPCUuE1pgdH"}, {"isAccepted": true, "localizedPolicyVersionId": "CWMXxVh8HTrKqVwn", "policyId": "pPn8N5xMRgU7cPqN", "policyVersionId": "ZrLCRRUysya4J3rv"}], "code": "TzMTMSwrNov2GW9i", "country": "54JY23AUWFTLq0W1", "dateOfBirth": "JqwKs1mO80L7IOHl", "displayName": "f6j8PZOzUiQKZqz5", "emailAddress": "NSp0B7LODN3Boi2s", "password": "SAO2n4MZQt753XQB", "reachMinimumAge": false, "uniqueDisplayName": "3rOW0guPoQbYzc1R", "username": "DVhs2lhdzxxgibuq", "validateOnly": false}' --login_with_auth "Bearer foo"
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
echo "1..435"

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
    '{"modules": [{"docLink": "uyW3cMz9YyduMomE", "groups": [{"group": "HcU15St4v8ry8Iyq", "groupId": "NVv0KVpXJTMx3Y8U", "permissions": [{"allowedActions": [25, 60, 67], "resource": "iqehObg3OZ9j0HDt"}, {"allowedActions": [2, 9, 34], "resource": "HD6iKBGm5Cj7RqnJ"}, {"allowedActions": [96, 26, 11], "resource": "roOeqE7fcCAeExeQ"}]}, {"group": "X43LpmdMiZeyIrA4", "groupId": "QUKSJgECzvaWUCA7", "permissions": [{"allowedActions": [46, 90, 75], "resource": "UMKSQjFdjqTaZFsW"}, {"allowedActions": [52, 99, 2], "resource": "oM1rNJLM0OOVG5cG"}, {"allowedActions": [58, 47, 68], "resource": "ENbWqlX7idzjpKDf"}]}, {"group": "wl6XlCF6YxFMD8tJ", "groupId": "QwZvUVInos5RK100", "permissions": [{"allowedActions": [49, 93, 69], "resource": "3QBt29AiRASsuFM4"}, {"allowedActions": [1, 39, 15], "resource": "B1STaab1UeibXg7R"}, {"allowedActions": [58, 9, 86], "resource": "5BtKcwj6PqqOgCim"}]}], "module": "r3ZQNBBkrXu9czsY", "moduleId": "r3cFeVw70xdNTuOd"}, {"docLink": "LKK0M2B2hbqJin37", "groups": [{"group": "P69t1KqeGz7qbPnX", "groupId": "EuOzzkoBmMR9C4qP", "permissions": [{"allowedActions": [33, 53, 72], "resource": "3zKsfjz1mFkyxoUz"}, {"allowedActions": [10, 79, 90], "resource": "FoXCOguSq2A4R3wD"}, {"allowedActions": [8, 38, 91], "resource": "nyPh5yNbYXmlAOi1"}]}, {"group": "SC3I1SjkH42LtyZK", "groupId": "rTJo0L5sHil4Q0mq", "permissions": [{"allowedActions": [1, 28, 61], "resource": "GatrjbJ5YT7uvqar"}, {"allowedActions": [94, 92, 44], "resource": "xUc2YgRpk2IFGIgI"}, {"allowedActions": [31, 76, 37], "resource": "MresGFfsH4aXCDhs"}]}, {"group": "hvEF8rHd250nyihc", "groupId": "UVGHQczI5ZoTRUkj", "permissions": [{"allowedActions": [68, 2, 28], "resource": "ocoGlPzdfxcC3rpW"}, {"allowedActions": [14, 90, 32], "resource": "cBXLwTfopqeZtHJn"}, {"allowedActions": [89, 19, 12], "resource": "Evsj5WcQ99M1yuXe"}]}], "module": "qV31LX2ehcMnM6Qt", "moduleId": "jzQjDlUMCGnxZwak"}, {"docLink": "7KHnzGASmVzePIro", "groups": [{"group": "z41oQCuXeTRyJQrN", "groupId": "LTcqLVTN5Qf4tjPG", "permissions": [{"allowedActions": [32, 49, 41], "resource": "3cEX8wTi1v2abpCW"}, {"allowedActions": [50, 14, 39], "resource": "dNphqe9fS1m77MAg"}, {"allowedActions": [21, 75, 92], "resource": "oZQPLhDSJx9jzxaR"}]}, {"group": "Kph4kiIFgS4fLqlr", "groupId": "KGiS3XxjkyNfj3Xg", "permissions": [{"allowedActions": [93, 90, 12], "resource": "TjI9oNBzgQ4CRwg0"}, {"allowedActions": [38, 74, 71], "resource": "VeSpMny0GrvKI5EV"}, {"allowedActions": [57, 86, 14], "resource": "ZFzLNsjdCFtKY0Ks"}]}, {"group": "xR0rCFkyiQZfMnTb", "groupId": "KdwNhiIP7dpJ8B8V", "permissions": [{"allowedActions": [46, 24, 64], "resource": "OCxqPrq9I3XJWBxT"}, {"allowedActions": [77, 1, 5], "resource": "pW9UlEqtzDd7Sgxd"}, {"allowedActions": [48, 91, 56], "resource": "JCe2ksG3nZE13H2f"}]}], "module": "ILFzOlAZbDQAEJLb", "moduleId": "VWH2XLIg3MgmdSvW"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
$PYTHON -m $MODULE 'iam-admin-delete-config-permissions-by-group' \
    '{"groupId": "p3h0xPsVY8qNwB2T", "moduleId": "Y4v9NNfQSYLFKSl3"}' \
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
    '[{"field": "FNFFJnt3rIwZdW02", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["Xi7BycDPckeGJUgU", "8bD5mGFFmKTTUxG0", "mpmFxxDNXGlGJvHf"], "preferRegex": true, "regex": "58h1ltyhiSGhfqXh"}, "blockedWord": ["xBJ7zLXioAGkWgSD", "dDQvpRfGe3z2rtjW", "pJAlKHF0ebxhJ117"], "description": [{"language": "6CeD4dWCp4wqlQJc", "message": ["ZroNQiefBnPluOIj", "ZyvlGDQGv6pNNowE", "uVVZM28w4mnYvvlt"]}, {"language": "1es7A4PFduN4gx0U", "message": ["C6eWKCFGS97Si6Xy", "LVPrkUxyZ1OH5Nn4", "nMT8QOyTuUSD9Imt"]}, {"language": "aPAocOQcpBWSNrCj", "message": ["SNEAdojkCMmYyTGO", "07foRZ6FujpIWo0q", "Jtqp4Q6XgICLgMHc"]}], "isCustomRegex": true, "letterCase": "1eE6sjWQllYsONpp", "maxLength": 87, "maxRepeatingAlphaNum": 66, "maxRepeatingSpecialCharacter": 99, "minCharType": 59, "minLength": 45, "profanityFilter": "CNiszHE69D1MMoaf", "regex": "6KlgRtwaM2IoyY1w", "specialCharacterLocation": "pIdjcAtTj1IMuuhx", "specialCharacters": ["xlulfmya73hX0a8R", "i85PA9wNpmrK5Y5h", "eA2ewWnFcqHxXP3k"]}}, {"field": "RhtrBcBofWTGYx2i", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["vxwaLM8HkVOW8PnL", "kgqkqYZWPZTgKagT", "zdcYcko7U3gH239L"], "preferRegex": false, "regex": "rNJvDiP2hNNEI8Qr"}, "blockedWord": ["Q6H1ro5CtU8UjgyC", "UpM1JBcTzf4dz1Bo", "jPoQg976409vFd5z"], "description": [{"language": "9r4nJWUvLp1wxGF7", "message": ["47468MXUq3uIffkI", "pPmrWVxNZUvkiU2j", "XSwsBBRopVl38d4N"]}, {"language": "ZGtk6EmWxC75M88T", "message": ["KhFYkA9aRNDe2IoP", "MSQKcg0OTT9JA0ll", "1RimBCiQwuyrI87u"]}, {"language": "SyXP6C0jXS8au2wc", "message": ["WYyj3JvHqXp4JR7x", "I59Z9tfGVsglnOxO", "XBfgBLuglkd9LIos"]}], "isCustomRegex": false, "letterCase": "L0fJOPYpnPqGlPnh", "maxLength": 56, "maxRepeatingAlphaNum": 61, "maxRepeatingSpecialCharacter": 82, "minCharType": 44, "minLength": 34, "profanityFilter": "lV0M2g6oreqyBzWz", "regex": "CgMMWZuD6tmIR28x", "specialCharacterLocation": "VxbtpSKOfiIP3S6p", "specialCharacters": ["ypZqISn3msrykQFt", "W8QGKFZLrIfqrZuu", "7IwKcT7sAsv2TKCb"]}}, {"field": "YMVkXEHmsHwIGGsu", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["t23pci6xEljer6aG", "Jx5OFp3jKEx4aSGd", "wTPX4ig3NVFFkP7O"], "preferRegex": false, "regex": "vsohRWDyGYIVFDbT"}, "blockedWord": ["vRYfpJ4wM9WZfOOx", "Azmsbhi5QJuc2SNB", "aOlXfgsgBd7MYLLo"], "description": [{"language": "PZrkjRm5Ki0orhXr", "message": ["ISEaPZHLQkTHvndQ", "sCKAO2JRz3CGwtuj", "kzxidLcAQWGVRg6D"]}, {"language": "Vso5TJCSugdo4XTm", "message": ["8t1YTWqItjNWXm9s", "raeMA78YSRS2fPy5", "fpbbbMIu9lu18jIM"]}, {"language": "BUM77XmemN8LO03m", "message": ["nFSq9jJTVFoFjxZj", "h5qUR1Pq4a4uaMfd", "0SQAfYIyzHL8jxak"]}], "isCustomRegex": true, "letterCase": "6g3PO4hKAeF4GUV5", "maxLength": 25, "maxRepeatingAlphaNum": 0, "maxRepeatingSpecialCharacter": 32, "minCharType": 26, "minLength": 34, "profanityFilter": "ZXoJ4gI4EQKO8xC4", "regex": "D0FsUo3IB2kX5REQ", "specialCharacterLocation": "ZsHyXzoIXNf0KbL9", "specialCharacters": ["HyJttdgfLGO3ummp", "llnV6B62P1Kazg73", "c6UpmA4ehxNIIlcr"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    'ZzgameT2mLkkAMjH' \
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
    '{"ageRestriction": 50, "enable": true}' \
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
    '{"ageRestriction": 71}' \
    'guGgbLLN3O7CEYjx' \
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
    '{"ban": "qElP5lA2FJ0iGLRT", "comment": "XGsC5mxxse4eeuMg", "endDate": "EctVEux2MSuwsEHl", "reason": "wdeJyhsHS6YqPudW", "skipNotif": true, "userIds": ["l2EFEb8GnsthmQ2Y", "6ZGOiqrg3lpqN5bO", "fnqJ5bzDRzbhMxfE"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "DE4TrtIHyyMq79Ed", "userId": "B9MxaF8QHGM2IuQY"}, {"banId": "BO8m0HgTth479W8r", "userId": "XqwGVIRWgTNHCka3"}, {"banId": "Wb5kH1BrLWUetP7n", "userId": "mESQDV3BD1nnEzoU"}]}' \
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
    '{"clientIds": ["lUWqP4ElzL44KEm3", "uHBMCP5ckjphURs4", "ksgsKJ2R6Jacwwu8"], "clientUpdateRequest": {"audiences": ["W1zvrKMRPvwA9k6y", "Jz03NETdywPqYerr", "pOm4M2pM4fIfcHBW"], "baseUri": "ZM50aHbPXRns3qwY", "clientName": "L6LwGlZGF7XQPLAc", "clientPermissions": [{"action": 72, "resource": "r8RcxRQR0NYdJzf3", "schedAction": 94, "schedCron": "ducB5y5iMdeBG7RE", "schedRange": ["G4meKEabfVXBJPIZ", "qZC5d6JuFdcfiNf0", "DOHKwxDF5GJhCjVH"]}, {"action": 17, "resource": "JV5oc5IFQsrwHqFq", "schedAction": 46, "schedCron": "dMpQhcLK0WTZbtmQ", "schedRange": ["kwC8azx3IRWme3C6", "p2r4D3NQdjrjkX3A", "MgK3JgZufzssA284"]}, {"action": 26, "resource": "hIpJ9b0Ap7CmSiKP", "schedAction": 19, "schedCron": "bE0ljQaBtb47V691", "schedRange": ["j0FZp2vjOXptxzx6", "kkaZYpl52sQR9Znp", "5d1eSwrG2GBBEWrD"]}], "clientPlatform": "bQ1ZzhDuLHq9LTBs", "deletable": true, "description": "aq5KBCsHlwNrfKJr", "modulePermissions": [{"moduleId": "kzwR40tfd9GFXCht", "selectedGroups": [{"groupId": "xB10d4Q8nlBthUSu", "selectedActions": [97, 100, 80]}, {"groupId": "rTdDq7IqbTVv8BLs", "selectedActions": [34, 22, 87]}, {"groupId": "SQVDp16qVIqXCK9d", "selectedActions": [91, 20, 22]}]}, {"moduleId": "JTbdJEe6mnkYAfw6", "selectedGroups": [{"groupId": "1kyKk0UXUF2523OT", "selectedActions": [44, 40, 83]}, {"groupId": "joU1kUqRedwIu1TS", "selectedActions": [89, 71, 36]}, {"groupId": "t6V8Bu7rIjGrxUMK", "selectedActions": [2, 22, 45]}]}, {"moduleId": "vYanGqEkn9OEVwLW", "selectedGroups": [{"groupId": "GT4MXhmzvRQb7c0v", "selectedActions": [25, 46, 19]}, {"groupId": "atSvtPbAFn8oWQcm", "selectedActions": [65, 78, 21]}, {"groupId": "QDlRFYMVfiAMa6Pc", "selectedActions": [30, 78, 28]}]}], "namespace": "fvikslpyL9BYLVVz", "oauthAccessTokenExpiration": 27, "oauthAccessTokenExpirationTimeUnit": "qMeJPCbs8jWmTteJ", "oauthRefreshTokenExpiration": 15, "oauthRefreshTokenExpirationTimeUnit": "eBOp0ilGQFwHUtZu", "redirectUri": "gblT3aIDKn9qJXnc", "scopes": ["m5igpAewbmnWk0E7", "YaPblcWEyNgvs5LE", "ZrQXzSQRWRs9EGnR"], "skipLoginQueue": true, "twoFactorEnabled": false}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
$PYTHON -m $MODULE 'iam-admin-create-client-v3' \
    '{"audiences": ["spWBfRnLcLbp7Omc", "rDJ7u1rrRPcnG89r", "nNW1Yjfn8lY4DnYR"], "baseUri": "xY8ZhHeb0CaPFDjr", "clientId": "SotKnpJWALpToj9r", "clientName": "gr5RffM5JXvPdzEp", "clientPermissions": [{"action": 60, "resource": "FUAHZaYSvsWiNJtq", "schedAction": 97, "schedCron": "ltZF6aSRmHU5iR3h", "schedRange": ["XIbzWPKOkzftOgDQ", "AWhulbrDf7q4cAnp", "mLiEu4CNtX2lnqi7"]}, {"action": 5, "resource": "bqioeoRIplY0DIzR", "schedAction": 59, "schedCron": "4uIXBZsEYogFWiH9", "schedRange": ["z4E8zmaZ5cg0REtU", "WY4fVIdqwCWF5wmb", "OubTxAAeDCowR3Me"]}, {"action": 58, "resource": "KdFg7N7piT8VcrXL", "schedAction": 72, "schedCron": "nuMNpKEIs3GC9VTK", "schedRange": ["7tkJWFpHt7MdKu9X", "wn5GHJDGatrYOMO9", "1CYEjX867n9PT9fR"]}], "clientPlatform": "7mMuBXPDKCriRKzT", "deletable": false, "description": "AVRnUVbxEJcKHE76", "modulePermissions": [{"moduleId": "4EwhQfxFKIOGT1WK", "selectedGroups": [{"groupId": "SmLoA0ILaESC1GJX", "selectedActions": [39, 30, 41]}, {"groupId": "Bwqh0TQXa2j7v3zQ", "selectedActions": [74, 69, 30]}, {"groupId": "XIlrMl2RAukCL26i", "selectedActions": [16, 52, 8]}]}, {"moduleId": "sFrmaGNoi3RPTgWo", "selectedGroups": [{"groupId": "tLNz0u8ySxA0yrjz", "selectedActions": [33, 38, 93]}, {"groupId": "e0EJnADXC2y0DY1E", "selectedActions": [56, 91, 55]}, {"groupId": "MK9oA4vK56dsYI5S", "selectedActions": [75, 29, 98]}]}, {"moduleId": "v3U2sKjIeyFS97dY", "selectedGroups": [{"groupId": "D7LkcTKYpCfl6HPy", "selectedActions": [97, 4, 70]}, {"groupId": "JfAV5iOfzwt3bpxR", "selectedActions": [81, 12, 40]}, {"groupId": "2MHGGedk0KzXRclO", "selectedActions": [6, 86, 65]}]}], "namespace": "YZQxBnttu4yW5etl", "oauthAccessTokenExpiration": 21, "oauthAccessTokenExpirationTimeUnit": "r5ZTcnVVOKMApTcW", "oauthClientType": "sFRUlWBp4gBs9Uuf", "oauthRefreshTokenExpiration": 13, "oauthRefreshTokenExpirationTimeUnit": "IjKzylqW8auyseP9", "parentNamespace": "wEEyYAnHPp4XzVL5", "redirectUri": "McglFCrjxqqxAYqX", "scopes": ["G2V3baMkZ9JCqBIk", "UID0EE9InZNLwwAh", "W2b5OHKtUv4lTkQN"], "secret": "jxhXdj1CG0EBgst9", "skipLoginQueue": true, "twoFactorEnabled": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    '8Ofl2oB8VTjF0pD3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'NHU8iYUOtG5gbQSK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["W2MdgCH4bWxRF6fB", "Pa6GOuV5z0p8jaJs", "2duQqawPrxi6F4el"], "baseUri": "hy9CZ94CAUVW8FoE", "clientName": "f8tjCjWc22qqDfNz", "clientPermissions": [{"action": 87, "resource": "jHwSDQHadmAo0lzh", "schedAction": 84, "schedCron": "KtdGTW4FILotv5yc", "schedRange": ["Ta0i6ifYP1zfgjsy", "3VRjX4qA4g9OGoWw", "1qnCAvdnAcokJ0rz"]}, {"action": 33, "resource": "bkWrlhtfTywRW4fm", "schedAction": 12, "schedCron": "ap6j73doCWxhubMX", "schedRange": ["bxNvT6wAffv4uzKA", "wiI4wTxNIefCmtrx", "Wu293551nQBNKcqC"]}, {"action": 20, "resource": "tPdJ8SY3qoogOxoP", "schedAction": 82, "schedCron": "vdIBJYyGURjEjnsl", "schedRange": ["EYM8ngVT1ewVxvgA", "ocOqsd5v5n7eXCo9", "gZWdxfIdW8fNAM5Y"]}], "clientPlatform": "dHivK2Q0WwolQy03", "deletable": false, "description": "paPeudUtKPJUmAvx", "modulePermissions": [{"moduleId": "BxJNPlvvYZw4MWzW", "selectedGroups": [{"groupId": "FTuNPf5JCSDyYy4e", "selectedActions": [33, 30, 30]}, {"groupId": "TZxSoZbQUnUxS6m6", "selectedActions": [60, 100, 9]}, {"groupId": "L3HDL4yx5I0euBsc", "selectedActions": [4, 45, 68]}]}, {"moduleId": "s25eiQO3oWdgXdm1", "selectedGroups": [{"groupId": "IxL1OtleUBqBO0Ze", "selectedActions": [47, 78, 80]}, {"groupId": "k9W6ZLVJzRpUsITf", "selectedActions": [98, 64, 36]}, {"groupId": "wLgT78nootfUs955", "selectedActions": [17, 50, 24]}]}, {"moduleId": "MKyED3qDO5HXp5oV", "selectedGroups": [{"groupId": "khESbHQ7hvTlzf7X", "selectedActions": [46, 82, 88]}, {"groupId": "GyWf3VujS7Bq5bcf", "selectedActions": [84, 80, 100]}, {"groupId": "fYFlt3JvDgMiyBGy", "selectedActions": [13, 27, 100]}]}], "namespace": "j17t3gHBXvjvziex", "oauthAccessTokenExpiration": 52, "oauthAccessTokenExpirationTimeUnit": "PlOGfFBlu2ZP0Iki", "oauthRefreshTokenExpiration": 61, "oauthRefreshTokenExpirationTimeUnit": "XGk6BoBmSLi0R7zD", "redirectUri": "FMoNTQmlS8lMlY8U", "scopes": ["jprhCxhzW6ZM7LkT", "VrtVJZVhxCVdjPut", "J8dkAVOJ5imghdfV"], "skipLoginQueue": false, "twoFactorEnabled": true}' \
    'jnjd66A1SQmWGSQL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 53, "resource": "q02W8tkTURUFmqNc"}, {"action": 6, "resource": "xhQqptccNorRls7E"}, {"action": 58, "resource": "gq91cpgvoDBgYfLB"}]}' \
    'dGNAZEvbvxqa0K7V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 97, "resource": "156hIg0g8HIxpzm9"}, {"action": 53, "resource": "zG7VK8sWEshmZf5f"}, {"action": 62, "resource": "wQNmCQmGCF963Cbs"}]}' \
    'OawlRBQJH6fNekhk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '44' \
    '77gxaj55huTA6Avm' \
    'W0567BFqbrPIuxKm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
$PYTHON -m $MODULE 'iam-admin-get-config-value-v3' \
    'BXLi6GpnqAeMvg3w' \
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
    '{"blacklist": ["0FQ1520WM3TxWXSd", "TiKdva2UREoBSFtC", "Ly2CqgCG7JwJCDqk"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'AdminAddCountryBlacklistV3' test.out

#- 137 AdminGetLoginAllowlistV3
$PYTHON -m $MODULE 'iam-admin-get-login-allowlist-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'AdminGetLoginAllowlistV3' test.out

#- 138 AdminUpdateLoginAllowlistV3
$PYTHON -m $MODULE 'iam-admin-update-login-allowlist-v3' \
    '{"active": true, "roleIds": ["T9g1f6P3D3rVcC2g", "6t42jE1Wad232YV7", "A2zHFGbN8AQaCaw9"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'AdminUpdateLoginAllowlistV3' test.out

#- 139 RetrieveAllThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-all-third-party-login-platform-credential-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'RetrieveAllThirdPartyLoginPlatformCredentialV3' test.out

#- 140 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3' test.out

#- 141 RetrieveAllSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-all-sso-login-platform-credential-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 142 RetrieveThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-third-party-login-platform-credential-v3' \
    'UF7cdSDd99DQZ7vn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 143 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "Tx8HDXTJWiyw17og", "AWSCognitoRegion": "zmbj4SLYDrZJvDLG", "AWSCognitoUserPool": "vn6qtroZcp16HKXX", "AllowedClients": ["1ft5nBA9xNIJVuMz", "04evSdE2FMcKd7c9", "4rEmIYuAT5OAcUwY"], "AppId": "HGmG5rNDBF1oU37v", "AuthorizationEndpoint": "jfyX5YLaM0wmi0i1", "ClientId": "WABBbq8IzZsMFLX9", "EmptyStrFieldList": ["ZhFXcFtfBS3ZIHof", "hwyM6Bw2sFGQ5DQo", "DwzrKPOZZnV3zR7Y"], "EnableServerLicenseValidation": true, "Environment": "zZ7aVhrkmhSOEozG", "FederationMetadataURL": "Ov8D0iVxzrec5kNw", "GenericOauthFlow": true, "IncludePUID": true, "IsActive": true, "Issuer": "srrB2pJ7V8BSrucj", "JWKSEndpoint": "O3zvSM5KeVNHU9Gc", "KeyID": "OivIfcCJt4U8VSgX", "LogoURL": "oi9Fw25b9qXzlIK2", "NetflixCertificates": {"encryptedPrivateKey": "G6AUjBCdf0Rp5e5I", "encryptedPrivateKeyName": "vFuN1oUsCnBmGMx5", "publicCertificate": "F6EhM3dKvIG9MR0h", "publicCertificateName": "TINvq1VR9SJUfQEX", "rootCertificate": "996Mh1sQ3Dw3uyjg", "rootCertificateName": "QNAs9188Qm3W1De2"}, "OrganizationId": "McGd10wefF0CJlH5", "PlatformName": "5RLEgeAsSpQdcmGH", "PrivateKey": "ZuRVQ8tzwqMayP8A", "RedirectUri": "3HGNI3BfjkFd6MHo", "RegisteredDomains": [{"affectedClientIDs": ["6gGQ5mChYoKD7yqC", "R03RovQZhwfjkq9i", "yTbyD3D01tRpuuyI"], "domain": "agSSzEL8H4euLufh", "namespaces": ["Qj2KP3LLxl9Hs2L2", "wlpKBVURxHefz77a", "9fntCNiHBRUNCPSr"], "roleId": "e5GmZzCQwilS3IxS", "ssoCfg": {"googleKey": {"jlyvR9PxG9Lji2Vc": {}, "88W8aLjIxVGpdOqg": {}, "uxvRwI9ZBTipMRlh": {}}, "groupConfigs": [{"assignNamespaces": ["K9DMMaI4ryVDvNar", "uZxwTfh9gEs6GF24", "7cbBLjUr5z03wxB3"], "group": "E9hrE9f9COFrOr6w", "roleId": "JDBwIDsJHNg6TvNG"}, {"assignNamespaces": ["jwI4TbTwBufUorJo", "uduhCEJ5XiKDIE9Y", "ugcupLxVBcRkfhRu"], "group": "qkOTHSia7oFd1fEm", "roleId": "DuyAsQGzwJR5poI7"}, {"assignNamespaces": ["18RQnj4imu6XFfRc", "WDXhq1YmGeygr2S4", "Yw8NmPaBeryzX2hO"], "group": "PVVFqVqxjq1iG3Ty", "roleId": "SOh8SI75oXbyq8FB"}]}}, {"affectedClientIDs": ["bur80QwnlgAVfqz6", "gQJh8sn0bVWRkvmA", "emh8lioBR7xTXcEI"], "domain": "Fod3lCzvjHzDHOrS", "namespaces": ["J1vbB7LRHd96dGLg", "kfrZveFMWAFT7l0l", "1jaOAMCzbsoIgmKw"], "roleId": "wMDQPjUIosq1l6xo", "ssoCfg": {"googleKey": {"0D4JRbNqO6IuP2PY": {}, "5hhX6uNah9JoHPj7": {}, "jFWxSv1lYylYAiZ8": {}}, "groupConfigs": [{"assignNamespaces": ["c7Zd7EUoezOLw8C1", "c5bBB3XZ7ColKwls", "NvtFuunQsvdXGlD4"], "group": "0xxIyVwYjn6dlC9K", "roleId": "fh9gHuloyce0cLJu"}, {"assignNamespaces": ["4ljPWlCWTuGO8Mnf", "OQu3wdT4Aodp95o1", "RkX7iW7VpCngWAv5"], "group": "DAG8dPdkKgQqjyzU", "roleId": "ZR2rFIAuALNhNCys"}, {"assignNamespaces": ["csMBRLsWadk2OQ42", "1q7Nb1vrKthVvU5o", "n065ApCkVN3QchuQ"], "group": "6pntxB648ss7rBnv", "roleId": "QHAM8gSdIybKUByH"}]}}, {"affectedClientIDs": ["BzfvgtRTPPzwJmKa", "LCx3gcidEALWe6RG", "5wWznu5AjwR1Z4fU"], "domain": "7ICcaQtuuKUw3dUw", "namespaces": ["WHhQW3I1y9tjRLVO", "XBMa0JiIe1AY0tUA", "7EKASk3USNLhOBlx"], "roleId": "RBLgohp8ByTi2F6A", "ssoCfg": {"googleKey": {"yUX8w77riPlPgJcL": {}, "beQf9MICxX7xKyCf": {}, "gwSPz14asyOdgn77": {}}, "groupConfigs": [{"assignNamespaces": ["gN8K1FlNkgbFE8U4", "meK5grmPBsFH71Vr", "hsISYtegQbNA2WQr"], "group": "HTkJT1VkChD3n0c1", "roleId": "ryAkRvdPR8gx2rX5"}, {"assignNamespaces": ["dck8NFKPgT6LMehg", "047axU5ktNywRIvO", "2Sgz30hejqdktHIO"], "group": "1VdtMSews1TrU4Fh", "roleId": "AfKDcDG5bMTba1tU"}, {"assignNamespaces": ["lFGcP6eL7EpWtPif", "mO0JK4dP1aZFiSkm", "hwVVMGkXNwMYwFyl"], "group": "jy5bYQdQ87hUHA0F", "roleId": "JZwP8GslMpx3m7lE"}]}}], "RelyingParty": "XTmnTbtjK9RsyoqT", "SandboxId": "3adB48Jxp2zaItg9", "Secret": "jTNZvpFEUI21aSaI", "TeamID": "sMyLKPPIZx0zdNAa", "TokenAuthenticationType": "gipZwiaBrFrXtGMj", "TokenClaimsMapping": {"ujfHZB1gMI1B8DXb": "37DffTZ7yQz337LL", "NCjIySe36SA5dxAT": "Lv5PkLvraRzChdjD", "Gdlk2A2jHbAPNGIn": "vbnf4ewKFFLoGggX"}, "TokenEndpoint": "4gQWyZocvYfr0Rnl", "UserInfoEndpoint": "02R1IVNnaK6KS71X", "UserInfoHTTPMethod": "s1BphA9BXpKYgF9O", "googleAdminConsoleKey": "uigDP0Vjmy7j2Brd", "scopes": ["CAm3slCwaBqHpE55", "sjxBGijw0dQtZNon", "MrPkzUe9SglAJGyZ"]}' \
    'S0I8FevJiT98HUBp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 144 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    '56Q4WETxtGMs5tPK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 145 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "PuK0K4PiMDTR7Lxi", "AWSCognitoRegion": "huOn57io0d9dG3yz", "AWSCognitoUserPool": "aNbGeASX83SLiIbA", "AllowedClients": ["P2qyUnHnfrEdDfY4", "TTxu8goZgsX4RwfM", "4qnUdcQqZ9F1uivP"], "AppId": "ob0YZEuXQACDDQry", "AuthorizationEndpoint": "Nf9VGxbOeJe4n9eU", "ClientId": "lBQZ2UGePWXbAyGi", "EmptyStrFieldList": ["Xa9nUsHCVicuJ7on", "rUXVlB6xNel4Bxb9", "KwFYqdhEVq3hbsAp"], "EnableServerLicenseValidation": false, "Environment": "WuVIROZuqdJBi8pk", "FederationMetadataURL": "n98VtLNkaIQJfkFD", "GenericOauthFlow": false, "IncludePUID": true, "IsActive": false, "Issuer": "wEPiunixlEAHZzHs", "JWKSEndpoint": "8x5oPSkZFIV2feXn", "KeyID": "TRlzAJy9oFOHB2KE", "LogoURL": "sIdtozVltBhoXE4w", "NetflixCertificates": {"encryptedPrivateKey": "gcYT5CdjaJuUzFIe", "encryptedPrivateKeyName": "qaVr1CE1gu6cYuzC", "publicCertificate": "77J4irvZ9tktWLtD", "publicCertificateName": "dlmVGK6iolEw6IIp", "rootCertificate": "Dc9X5ijmtDGvd9ES", "rootCertificateName": "dY0eTkBWA44Qqsi5"}, "OrganizationId": "yOjvl5sRN2ENn1RL", "PlatformName": "i5iMPnbg7o1zYpqU", "PrivateKey": "sliPyXZGYIW5ZDtW", "RedirectUri": "bdkzPP47RcUIi2Co", "RegisteredDomains": [{"affectedClientIDs": ["Nj4EG2emxKQk8cBr", "t5E8k8rzDZ08j6IC", "P75cm8YDChFi3zLv"], "domain": "fQWC85MxWxvW0veF", "namespaces": ["l3uU1aMD0mczWxc8", "f1s2QPMMZsf2dvKZ", "yHChRPHvdkcKW21B"], "roleId": "5EFtD2pYaKTz1gcE", "ssoCfg": {"googleKey": {"2XCwTkRUIX6IFHNm": {}, "B9mYBvtOwxjqyrjD": {}, "ApeN5eAfRqSgH5xI": {}}, "groupConfigs": [{"assignNamespaces": ["uBTYOdsvNyk52MQF", "kVVEf36S7yPgG48b", "k6PwH1tdEAJSqXA0"], "group": "Wv0zWGvkc6byp3mv", "roleId": "yYT3GuaZVTxBlw1I"}, {"assignNamespaces": ["WeXKFT4rfSbbSlDP", "Gf9Fn32SJNPZkEfk", "AcJTMS4pVRcCHIGf"], "group": "mCMTr9ACnI2sMrEg", "roleId": "l7ZR1HCkf2Sw78lL"}, {"assignNamespaces": ["GKjDHuXt358gzqRM", "uMPrIekxq58fikq8", "3hqJ7HP63Se6kVW5"], "group": "fkl60ImLBv6nUU0r", "roleId": "1rfX9stpvJUuyPdz"}]}}, {"affectedClientIDs": ["x8BM2wEgTtLRT5st", "wQFUEbTPQ8p7VMlx", "EXnqHwMyKpwphjUX"], "domain": "vM1GqMkZ44UXgdBq", "namespaces": ["tJaRyDlP9qIZJ5Kr", "x6KkHagEugKJxkU8", "Y58COtTNjnNSikJD"], "roleId": "g6ujKvq0CIa1YCK9", "ssoCfg": {"googleKey": {"PlMeQprfgLGkHX1t": {}, "dBjKmCBXETZwqdzA": {}, "X28DikGk8cWiX44a": {}}, "groupConfigs": [{"assignNamespaces": ["zSHcwicUVq2XPljT", "Zj5R0yZSVQ8SSeJ4", "qy4PIKleuV271bwZ"], "group": "4niLSzQnv0C00dtN", "roleId": "GGzbGYSYo9fY2EBZ"}, {"assignNamespaces": ["AHQXc4Xcae7VKl0A", "RzGEArlfE1NSmtcA", "DoZvd0La7P4JI4H7"], "group": "uDzkOHTdnUtdrRcs", "roleId": "3GeOsKPNlG7rEXi6"}, {"assignNamespaces": ["LEqJERpbxEq07txn", "vZZeAf7QBuZK5GJl", "Bncg8tQnJOKHC16x"], "group": "jJZ4kiU3N8556ll2", "roleId": "LQWpdESOBV7wZJsg"}]}}, {"affectedClientIDs": ["7wSv9lyRyTdYBUlj", "vBzvYNEtfgBFikt1", "8cQ677SotDEtU2xB"], "domain": "SEQ8rBKc2K6oJXxV", "namespaces": ["EfnaqX8NuZtRUTKU", "vR69PImy6CcwlqJ4", "MO3L8x1H5OgzHypg"], "roleId": "sSeKCvtPz7jagBG9", "ssoCfg": {"googleKey": {"a1TZ87ltClc3RDXF": {}, "5055tUlenimjIbm0": {}, "riCaNp8dUBDinAB6": {}}, "groupConfigs": [{"assignNamespaces": ["HqIWIi5Bvb1rcuEt", "WAF763kci7lT62BO", "Haso53W3U2Mu9ZGM"], "group": "Wou1U0RVCf3gMWDA", "roleId": "odCKqfqzeexHA70N"}, {"assignNamespaces": ["gJTxjtzgO7W3taRv", "J6lKWJwHO65aOFDw", "pqy7XOU3DwglyMGN"], "group": "ll4O8ELahcNJqRje", "roleId": "pck1l0qxRyQ2pi7x"}, {"assignNamespaces": ["uAufJakIPXOQznHZ", "Tj8oYfWObyNJKVSQ", "saCokoGynp6xcqNK"], "group": "JnAhrSt96OaARAjH", "roleId": "LGV3sNxS8uLBZiVR"}]}}], "RelyingParty": "YIyQLcslTEqgVNG8", "SandboxId": "AqktgvjwNJAwIpEy", "Secret": "2ZNpojZ24I2n25sm", "TeamID": "srmJFHGiYnyhbqxL", "TokenAuthenticationType": "uTZIxgiUaiyy0aWr", "TokenClaimsMapping": {"shpmb1C9Al7eWrbN": "RE0xyYPUZHyLGQ52", "IjGpRJCUJpscOTkW": "ETSJ04c5MGInO4yz", "nh2YpZvvmziSSiSp": "XeWOGayfRkQvoN06"}, "TokenEndpoint": "SpNOnuSksfm7hcIF", "UserInfoEndpoint": "dkdrwAcK2lUda9h9", "UserInfoHTTPMethod": "FgvfhiLEAkA7n651", "googleAdminConsoleKey": "6ydoRT1qZBrdTnGr", "scopes": ["wHeWoQXPFWFaKbDg", "rGkv8SVwLyS4VbHJ", "vD0lL7aZUY9d1Idu"]}' \
    'd8bjYeBVMr7zHYmR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 146 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["E4X36KUOdfEmoIYw", "SxxAsfwDMivWqHHG", "lnAnEu6EKYceTEqY"], "assignedNamespaces": ["udHlA4AxeEIfUxJ2", "xMSNNBxCeN3pGn46", "fGvodt413MRdG8qA"], "domain": "PiANv2Ar8yXV6qf6", "roleId": "v5SgcJPZPUh2nHQw", "ssoCfg": {"googleKey": {"pWi8HZ6C0VJ0fK2m": {}, "6lQ5Ao8TITYiHSR2": {}, "SEJh1YDedZdNqkXP": {}}, "groupConfigs": [{"assignNamespaces": ["WZfT8ZfdKp9q4nXu", "K0tJAYror2XdtSCG", "7ZExOoIpWzacOvwU"], "group": "snIbQM3ZAtyEWKWo", "roleId": "ZRUL7wS3HaMTXAX6"}, {"assignNamespaces": ["y0STTN2sBEijjjpv", "SzGkED0oweFYDBPy", "d1jJBxbrbuFay9PX"], "group": "gEQS4871QSmsspn5", "roleId": "sNfifK65tvaH9jwc"}, {"assignNamespaces": ["O48pthyYpBJDHIIx", "TIGI5EssYllIqjJz", "uQ8GglVgxjOGQGlH"], "group": "m8VTN56tJKwD8O07", "roleId": "L9GG1uenDihceaLd"}]}}' \
    'gPZI0fKW8LeQxIta' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 147 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "K6s3Hha69MgxjGJx", "ssoGroups": ["62mkfVlu4bGB1pyk", "0PpxXZDy5Pmbu7Rr", "D9a5mdlXTCL467xH"]}' \
    'bAiD3Pr3mXZO1Pnb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 148 PartialUpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-partial-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["SlfVRlAI8F2f3mEv", "09kAA5hnQtd4bciv", "HGIEplRpcHDWcIoJ"], "assignedNamespaces": ["45L0Ze3YamxKDSZT", "l4UiJSCbG4UmG3Tk", "MTzOcBIciiKwRs1E"], "domain": "7sH2G9MJ6F7Rr7O1", "roleId": "5jqeKssQpme6eyM4", "ssoCfg": {"googleKey": {"8tE7eJRsXNeveQXq": {}, "nFRYmEIX40XOUoLO": {}, "a7oDz00gxcoaH6u9": {}}, "groupConfigs": [{"assignNamespaces": ["TVf4DvEzpoPRiClZ", "6rlwX99AHMLHqguY", "ykVWzNwPcvGyieBs"], "group": "RUduW5lxSlorWEGN", "roleId": "5bPGSOSiiItrSrEJ"}, {"assignNamespaces": ["MBAIwTLkrMDFQfpQ", "9o0GJMTfqRRaZozM", "8xCBoaS2FMwfWNCb"], "group": "N5GelVOU0hHnsCl5", "roleId": "k6Jxh5mkmQzKg0jW"}, {"assignNamespaces": ["CjpGwh7pLAi5Jmzv", "M6JFKB8ikHpl3sNR", "aDEC2OkXA3WqypoO"], "group": "w0H2s0sibQNBz81z", "roleId": "RPntxpgi7tXIcNEc"}]}}' \
    'GJjOCXpuix5vnPeT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'PartialUpdateThirdPartyLoginPlatformDomainV3' test.out

#- 149 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    'u9evbRov7Bm40CtZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'RetrieveSSOLoginPlatformCredential' test.out

#- 150 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "iAxk43DGV1SCkw8U", "apiKey": "0d4FvVmPMtpRMWSQ", "appId": "8Szi1IrGidRmR5BG", "federationMetadataUrl": "RJhFwxmkGfPI3j4l", "isActive": true, "redirectUri": "PJFaFzkABC8zWMcY", "secret": "W5iRrw32FRg8y4rO", "ssoUrl": "uj7J6ijJbcycXmBc"}' \
    'rJLb7labyotifVk9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AddSSOLoginPlatformCredential' test.out

#- 151 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'KyqceGv0CEDTVSjI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 152 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "NYeKLowG7UQB9pXz", "apiKey": "uCK5qd2m8A5axixm", "appId": "9X9TXNhN8y1PVriI", "federationMetadataUrl": "yv9kjuiAGiXx47et", "isActive": true, "redirectUri": "ikLFggYDc2FMbzZo", "secret": "eKagnKf2Yifzvr9O", "ssoUrl": "qTsInGzHFpFXYJtH"}' \
    'tqwoIwQBeIALI8JN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'UpdateSSOPlatformCredential' test.out

#- 153 AdminListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["III4jrzrPsuMziNM", "8AB7RRxiZH3ngnit", "URdMjZLYCaeklQcF"]}' \
    'Y1QIk1h5EKvMGd6h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 154 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'Q2mHjmLu4oFlReHy' \
    '0JyZv7honqeiGTTq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'AdminGetUserByPlatformUserIDV3' test.out

#- 155 AdminGetProfileUpdateStrategyV3
$PYTHON -m $MODULE 'iam-admin-get-profile-update-strategy-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminGetProfileUpdateStrategyV3' test.out

#- 156 AdminUpdateProfileUpdateStrategyV3
$PYTHON -m $MODULE 'iam-admin-update-profile-update-strategy-v3' \
    '{"config": {"minimumAllowedInterval": 32}, "type": "5DyrPfBmpZIzSFUZ"}' \
    'dob' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'AdminUpdateProfileUpdateStrategyV3' test.out

#- 157 AdminGetRoleOverrideConfigV3
$PYTHON -m $MODULE 'iam-admin-get-role-override-config-v3' \
    'GAME_ADMIN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'AdminGetRoleOverrideConfigV3' test.out

#- 158 AdminUpdateRoleOverrideConfigV3
$PYTHON -m $MODULE 'iam-admin-update-role-override-config-v3' \
    '{"additions": [{"actions": [98, 82, 88], "resource": "UPIfvoXRO0CkW1Zc"}, {"actions": [13, 96, 45], "resource": "SbbnffBWRaJN1SjC"}, {"actions": [64, 50, 78], "resource": "VgxS54NNs3XdhMbQ"}], "exclusions": [{"actions": [84, 60, 44], "resource": "1znEWw9p7g4UsQCT"}, {"actions": [75, 86, 60], "resource": "J4Kj7Qyo9tUptiyZ"}, {"actions": [52, 90, 78], "resource": "X8Y4rxRWZPe4ZLAQ"}], "overrides": [{"actions": [100, 41, 99], "resource": "BJwxObZqMGxhffy9"}, {"actions": [4, 78, 70], "resource": "3BI51etn17OcmSVH"}, {"actions": [12, 45, 6], "resource": "tPVAwgvxYxXJTduZ"}], "replacements": [{"replacement": {"actions": [31, 1, 23], "resource": "nNYHREmm1cBuaRaG"}, "target": "eM8yxRfejqSbVgLd"}, {"replacement": {"actions": [5, 65, 58], "resource": "oyNFGpu5r2K0IvVg"}, "target": "5LwUygH98dzTL8az"}, {"replacement": {"actions": [74, 74, 59], "resource": "QJXwUApJWohXn01R"}, "target": "B7pu7BaONXyE5fID"}]}' \
    'GAME_ADMIN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminUpdateRoleOverrideConfigV3' test.out

#- 159 AdminGetRoleSourceV3
$PYTHON -m $MODULE 'iam-admin-get-role-source-v3' \
    'USER' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminGetRoleSourceV3' test.out

#- 160 AdminChangeRoleOverrideConfigStatusV3
$PYTHON -m $MODULE 'iam-admin-change-role-override-config-status-v3' \
    '{"active": true}' \
    'GAME_ADMIN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminChangeRoleOverrideConfigStatusV3' test.out

#- 161 AdminGetRoleNamespacePermissionV3
$PYTHON -m $MODULE 'iam-admin-get-role-namespace-permission-v3' \
    'hOlgcpcOIxqCMSpZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminGetRoleNamespacePermissionV3' test.out

#- 162 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'xby2J9vGOUeSeGb0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'GetAdminUsersByRoleIdV3' test.out

#- 163 AdminQueryTagV3
$PYTHON -m $MODULE 'iam-admin-query-tag-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AdminQueryTagV3' test.out

#- 164 AdminCreateTagV3
$PYTHON -m $MODULE 'iam-admin-create-tag-v3' \
    '{"tagName": "2vDPUpv5VEdIG82d"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminCreateTagV3' test.out

#- 165 AdminUpdateTagV3
$PYTHON -m $MODULE 'iam-admin-update-tag-v3' \
    '{"tagName": "pIbfxVFfdvKQVgPQ"}' \
    'w3MVXe4xBPDWHRHC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateTagV3' test.out

#- 166 AdminDeleteTagV3
$PYTHON -m $MODULE 'iam-admin-delete-tag-v3' \
    'CVDBRjPUQWYVxGQV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteTagV3' test.out

#- 167 AdminGetUserByEmailAddressV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-email-address-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminGetUserByEmailAddressV3' test.out

#- 168 AdminBulkUpdateUsersV3
$PYTHON -m $MODULE 'iam-admin-bulk-update-users-v3' \
    '{"updateRequest": {"skipLoginQueue": false}, "userIds": ["JlDDJ7z4Pb5jyGID", "39Ung1D57FjYKlJi", "RIvhej77OSPwdzMS"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminBulkUpdateUsersV3' test.out

#- 169 AdminGetBulkUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-bulk-user-ban-v3' \
    '{"bulkUserId": ["mrSvQdsAdTUGpd8K", "FrXKFA2gdjQCYoE8", "b0CZetLfpFNyp737"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminGetBulkUserBanV3' test.out

#- 170 AdminListUserIDByUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-user-i-ds-v3' \
    '{"findByPublisherNamespace": true, "userIds": ["rhOmR4zFjoJZVKZj", "OD2ePKAKYjJMVnYj", "2yKqavWpydepM3ap"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminListUserIDByUserIDsV3' test.out

#- 171 AdminBulkGetUsersPlatform
$PYTHON -m $MODULE 'iam-admin-bulk-get-users-platform' \
    '{"userIds": ["069B9Okr0xJ5XRZV", "oxPGOLVBIlFgTAsX", "gqx3mfB5ZwV25N7N"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminBulkGetUsersPlatform' test.out

#- 172 AdminCursorGetUserV3
$PYTHON -m $MODULE 'iam-admin-cursor-get-user-v3' \
    '{"cursor": {"cursorTime": "AvZdGuyYEYZE3KaG", "userId": "SdhEGKcp6g1A8O9N"}, "fields": ["9cbYBK6XOBDpR7SH", "93AE1Toj5vygVvLS", "JvdsGpmmUeMikW3s"], "limit": 69}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminCursorGetUserV3' test.out

#- 173 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["4zffAL2DZ7gBhy77", "iRVFfFvWenMNV00K", "VuLF9WDnGO3bpQWm"], "isAdmin": false, "languageTag": "CwKrt6wn3yVrRCh6", "namespace": "j7rpv8K8fBAeRa1R", "roles": ["6ksxLYGkOLgReff5", "IHxLJIemNHbzgAFj", "tjC7suvgIUkB2PAG"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminInviteUserV3' test.out

#- 174 AdminQueryThirdPlatformLinkHistoryV3
$PYTHON -m $MODULE 'iam-admin-query-third-platform-link-history-v3' \
    'JqOrkdlZB246OY0d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 175 AdminListUsersV3
$PYTHON -m $MODULE 'iam-admin-list-users-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminListUsersV3' test.out

#- 176 AdminSearchUserV3
$PYTHON -m $MODULE 'iam-admin-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminSearchUserV3' test.out

#- 177 AdminGetBulkUserByEmailAddressV3
$PYTHON -m $MODULE 'iam-admin-get-bulk-user-by-email-address-v3' \
    '{"listEmailAddressRequest": ["PVMd2WDUVEQTpfyA", "IoF7qsANBbEKQrgo", "cpjGNenRlDORLvP7"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminGetBulkUserByEmailAddressV3' test.out

#- 178 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'ynTuXzafCqlMrrVI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminGetUserByUserIdV3' test.out

#- 179 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "ehVCf3AwIzUdQ6sT", "country": "rUg7Z0SLrZraV3NL", "dateOfBirth": "BUSrFnzE6yR1wLTg", "displayName": "jsnB2LFVrZRrOntm", "languageTag": "2KjbfCOuW3dBmFwU", "skipLoginQueue": true, "tags": ["Y0xhMLwxgRpTSUpp", "vO3QG68KeD7QJQEE", "VDAg045BvtPd7ibB"], "uniqueDisplayName": "A3sd51mDooH53vib", "userName": "q3Qcrtt8L5dIebsw"}' \
    '7EjkMnJSziEA43Wq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminUpdateUserV3' test.out

#- 180 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'IMJdrqHIsJ98WRjq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AdminGetUserBanV3' test.out

#- 181 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "YieXRthQZvzRi7pq", "comment": "pajYEHs9TIkcnrJ6", "endDate": "4BOKqywS6DKNSeb2", "reason": "UMWOgVeYkCvqq0tO", "skipNotif": false}' \
    '5pEVG7sNihxpuuL7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminBanUserV3' test.out

#- 182 AdminGetUserBanSummaryV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-summary-v3' \
    'DJCxvzZnh8oBAk1M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserBanSummaryV3' test.out

#- 183 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": true, "skipNotif": true}' \
    'CKWNkLU5ty3uQa7F' \
    'l3ZhSMLtrwnjTJVD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminUpdateUserBanV3' test.out

#- 184 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "lh112byTYCDBnAvf", "emailAddress": "8JpFuJSZistM7554", "languageTag": "4PDlVK8taScpV0Nt", "upgradeToken": "CxDDz5rxt6LflBJj"}' \
    'okLAaL4oAF2lqx8y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminSendVerificationCodeV3' test.out

#- 185 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "neWKrOy4xcg30BqC", "ContactType": "5W7g7hiwumJTI3jl", "LanguageTag": "ZPjoCdGiIP6cB3Pj", "validateOnly": false}' \
    '3MJXIuLWYb2iHHVN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminVerifyAccountV3' test.out

#- 186 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    '0ZBgvrigXUT4fRba' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'GetUserVerificationCode' test.out

#- 187 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'wD5yOvjgOopQfbXm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminGetUserDeletionStatusV3' test.out

#- 188 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"deletionDate": 40, "enabled": false}' \
    'F0WFH7F2InhxtynU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserDeletionStatusV3' test.out

#- 189 AdminListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-admin-list-user-all-platform-accounts-distinct-v3' \
    'juBCxkb2oF99xI1V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 190 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "VtVrVT6Hn8B2d1hZ", "country": "UnoQwg5uqgoHaFyo", "dateOfBirth": "czck0qJsgZPfuelA", "displayName": "iZBZcQGHHGI7csI8", "emailAddress": "ecZSvzXYOytshBcK", "password": "QytQagui6lsKF28n", "uniqueDisplayName": "7UC7y1MKYVeoGFrD", "validateOnly": false}' \
    'mf1DXvAIkzTRNRVy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminUpgradeHeadlessAccountV3' test.out

#- 191 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'eEGu1ICOCmLAmcaE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminDeleteUserInformationV3' test.out

#- 192 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'FBKgy92LYqtQcDN7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminGetUserLoginHistoriesV3' test.out

#- 193 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "OMCehk42acy8wsWa", "mfaToken": "PyppR3ztPSALA8Ll", "newPassword": "V2sccbVr6HSiXVzr", "oldPassword": "G4EdKn8eypTzI497"}' \
    'DG0ZNoJvvi4Ys50i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminResetPasswordV3' test.out

#- 194 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 63, "Resource": "rGEr3cilJWhaW6jN", "SchedAction": 38, "SchedCron": "9AutWDfVOINhql9C", "SchedRange": ["dDX4xiHpdfKH35RW", "UUVEHCB5wzF6oLIr", "AwjAsgo51XHJBG2P"]}, {"Action": 26, "Resource": "Aevk3k14782W2oNo", "SchedAction": 11, "SchedCron": "X4m6wms9SPaHlqtD", "SchedRange": ["Pry2vMON7sdhlilf", "pDT8o2iFrYtGfCZC", "crvsV2I4X26p21iD"]}, {"Action": 57, "Resource": "jVs1lYK1Mx9rEFkD", "SchedAction": 34, "SchedCron": "ALS7cneNLItUJgh7", "SchedRange": ["4tyxkTR8ZCVJtkxj", "BJrNeQRsqkkKK2qx", "qzy4KSA5UtSXWjAN"]}]}' \
    'SWIT9TLnuMLNJAEk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminUpdateUserPermissionV3' test.out

#- 195 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 56, "Resource": "A6A6rYiIu8eLdWyk", "SchedAction": 15, "SchedCron": "Yqap7masUcayqmp7", "SchedRange": ["vhz1T6cSrZL2CgHx", "dmYDj9vZNgfI1AeY", "He8WPQGPclChxLfb"]}, {"Action": 66, "Resource": "rH6f2GDrNbLOjGz3", "SchedAction": 37, "SchedCron": "ct0ctEeH43wYuLnI", "SchedRange": ["7cTzIUERPlQI99hM", "c4NbiJWP5r9EwbIG", "MGJ70P9IqAyNlZ2O"]}, {"Action": 45, "Resource": "RwFPpXGlKR9ss8b8", "SchedAction": 43, "SchedCron": "JH8bO4GDHT6ZaUUk", "SchedRange": ["vlTKAhrxqHw7f813", "qNjzlcxXsmGGcJha", "uxfhVKIbRvUnyElH"]}]}' \
    'PuQE3Gc8bY4IH0OX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminAddUserPermissionsV3' test.out

#- 196 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 68, "Resource": "3YgWH9l7rv6XUSIN"}, {"Action": 6, "Resource": "kv8vxyg6giNKzeFn"}, {"Action": 24, "Resource": "wQPaHARrhjbEU5n0"}]' \
    'PNuFyKW95dJsGoBI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminDeleteUserPermissionBulkV3' test.out

#- 197 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '20' \
    'F5Ch8J2Qs990APOU' \
    '4hcdwlnsTap2RJpH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminDeleteUserPermissionV3' test.out

#- 198 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'tncLywP3WlLmNdQG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'AdminGetUserPlatformAccountsV3' test.out

#- 199 AdminListAllDistinctPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-list-all-distinct-platform-accounts-v3' \
    'k6vneHoB1PXO1vT1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 200 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'AonFO3syvkYd78Gs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'AdminGetListJusticePlatformAccounts' test.out

#- 201 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    'JGLbnb4Nvw7fnm4M' \
    'nOqnqNerQoHiDIJa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'AdminGetUserMapping' test.out

#- 202 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    'yvSNt8EQXsMbYi1y' \
    'EI9ychtyhjZSeDCK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'AdminCreateJusticeUser' test.out

#- 203 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "T4ilZB8apDTR3aL9", "platformUserId": "sunWp7V1s8LmXm0F"}' \
    'aJMIjgzU02nZWwBd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'AdminLinkPlatformAccount' test.out

#- 204 AdminGetUserLinkHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-link-histories-v3' \
    'EFpfccauYDc86pxK' \
    '9KhF4KRVPoIuzAuQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'AdminGetUserLinkHistoriesV3' test.out

#- 205 AdminPlatformUnlinkV3
eval_tap 0 205 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 206 AdminPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-all-v3' \
    'NjAfvOE2cVjFp1Ce' \
    'CEfaV4ZGGwbqOB4m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'AdminPlatformUnlinkAllV3' test.out

#- 207 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'D3E7AFHqlTTkL8cm' \
    'pA0sZ0tgeR4UV5SM' \
    'Z8GUvWZvoCmprkv7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'AdminPlatformLinkV3' test.out

#- 208 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 208 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 209 AdminDeleteUserLinkingRestrictionByPlatformIDV3
$PYTHON -m $MODULE 'iam-admin-delete-user-linking-restriction-by-platform-idv3' \
    'A8MRutCKCsqmx2zr' \
    'iOGB8b5qTFp3cIxO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 210 AdminGetThirdPartyPlatformTokenLinkStatusV3
$PYTHON -m $MODULE 'iam-admin-get-third-party-platform-token-link-status-v3' \
    'I33nt54i5hdAezed' \
    'cppbujZh1fYXF6R9' \
    'Rz3HVP2Y9WqSRiwV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 211 AdminGetUserSinglePlatformAccount
$PYTHON -m $MODULE 'iam-admin-get-user-single-platform-account' \
    '3UZg0UJLPMkeUwa6' \
    'OVKxCMxuf0P9r5f6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'AdminGetUserSinglePlatformAccount' test.out

#- 212 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["fdmyi4kQnOFbBtvB", "w81hUgtONCIoZ2rk", "omSj52mAIMo6EW9Q"]' \
    'hzU8FwQtZpfUoyoi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'AdminDeleteUserRolesV3' test.out

#- 213 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "UjmqOyQ7ammFgHpr", "roleId": "dM9viFWmezrQOWH0"}, {"namespace": "3zyr7kRbC31YMJfR", "roleId": "iD7djt1VeOFBDA3g"}, {"namespace": "vCRfoBijpbMblGWn", "roleId": "p94a6GKY0BrHiWs0"}]' \
    'B0RhxQtgVgbN8kr8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'AdminSaveUserRoleV3' test.out

#- 214 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    '72hJvrOCdAEZ2RHt' \
    '3uQ5nFrPXwxJZQpk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'AdminAddUserRoleV3' test.out

#- 215 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'eDHr0hjKBpDMIvK4' \
    'qfQ0pQIcYMBktqqA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'AdminDeleteUserRoleV3' test.out

#- 216 AdminGetUserStateByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-state-by-user-id-v3' \
    'AF6YG1dD1vECBb01' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'AdminGetUserStateByUserIdV3' test.out

#- 217 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": false, "reason": "FFhO5FcdTvIDQI2u"}' \
    'Ii2SNZKqlJZsdnY0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'AdminUpdateUserStatusV3' test.out

#- 218 AdminTrustlyUpdateUserIdentity
$PYTHON -m $MODULE 'iam-admin-trustly-update-user-identity' \
    '{"emailAddress": "4DIyosprZPBaERb7", "password": "U9kK4VctUmDhFVNa"}' \
    '0JYzTbdnOnEarWP4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'AdminTrustlyUpdateUserIdentity' test.out

#- 219 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'nrJ5fNESRVGeswvk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 220 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "zLNIITUJGj5FYaSg"}' \
    'ewLWHcBxz5LpdkRC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'AdminUpdateClientSecretV3' test.out

#- 221 AdminCheckThirdPartyLoginPlatformAvailabilityV3
$PYTHON -m $MODULE 'iam-admin-check-third-party-login-platform-availability-v3' \
    'AU8HhmXC68JFPdxh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 222 AdminGetRolesV3
$PYTHON -m $MODULE 'iam-admin-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'AdminGetRolesV3' test.out

#- 223 AdminCreateRoleV3
$PYTHON -m $MODULE 'iam-admin-create-role-v3' \
    '{"adminRole": true, "deletable": true, "isWildcard": true, "managers": [{"displayName": "Nyx1jjdxNePPAJ6Z", "namespace": "9UzqIhZZiK0QEG6C", "userId": "9w4lVRNOF1Bg6OHZ"}, {"displayName": "zvdZHoIm4tKNhPjN", "namespace": "IQGFxGwgnSiZtChE", "userId": "0uof77AAPI5tdPeF"}, {"displayName": "z9pGYsLNEGrfy9qH", "namespace": "KufJfk0MeG3qYJr6", "userId": "PuCVK9WmDAdpLVTV"}], "members": [{"displayName": "sj9pDiyybXY4v7JR", "namespace": "FMRaeIaQuPWPlkxe", "userId": "otrNakKGvOSvpmZZ"}, {"displayName": "dlNXdx2kWmSqodNZ", "namespace": "gfQyDVVkkqiMiRf2", "userId": "yCyM0Tp5GJHHbsLJ"}, {"displayName": "73mCPhhmUyIwgQS9", "namespace": "kVFUbeTeB9KgnFZQ", "userId": "9lVMNyCiytnfMoO1"}], "permissions": [{"action": 71, "resource": "ld9FJJ10goNq8uq7", "schedAction": 1, "schedCron": "Du28SRRAMaQFEzpp", "schedRange": ["eticckSUon7awfol", "07696uxp5ieMjjOf", "FSx3AJN97kUjwiCm"]}, {"action": 100, "resource": "TFJGOzAIAqpmkDdF", "schedAction": 91, "schedCron": "yrcGeRv27hj73Etu", "schedRange": ["fHuNIp0GXpM4nbG7", "aww2TANW1Or7TvLo", "L0wwHoRMNexBOron"]}, {"action": 85, "resource": "wIdUbp7xVMKfbAJf", "schedAction": 100, "schedCron": "crixULzSeTnUWGxx", "schedRange": ["fnMIDSCPr1m1Fg6t", "c250c2okDTem6o62", "xFY6TNqoLFFS4wB6"]}], "roleName": "Um7ir0n6O3vbYVjr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'AdminCreateRoleV3' test.out

#- 224 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'cErgoApAxyDnHjAx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'AdminGetRoleV3' test.out

#- 225 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    '7rZTvew0WVDSMNr2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'AdminDeleteRoleV3' test.out

#- 226 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": false, "isWildcard": true, "roleName": "7xZEEv7O1lwxVTRl"}' \
    'l0GIEUJtMC8NyV2H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'AdminUpdateRoleV3' test.out

#- 227 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    'LHZT3oYJlC4ie3In' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'AdminGetRoleAdminStatusV3' test.out

#- 228 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'nSA22NHTb4qXYyJU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'AdminUpdateAdminRoleStatusV3' test.out

#- 229 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'AlKlTwdJEPoemVtm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'AdminRemoveRoleAdminV3' test.out

#- 230 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'VXTs3tCu4F9IgDT2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'AdminGetRoleManagersV3' test.out

#- 231 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "tq2V2lMzfIQHCZ90", "namespace": "DqQgP6ynrQjYH0N2", "userId": "loTnRa0KiQWPxd1g"}, {"displayName": "qlwx9CE4WcsmYtCk", "namespace": "IgcwiDWQFghmIi6f", "userId": "phDw3p9QWqwTF2pO"}, {"displayName": "JsY86xAf5y1iy01F", "namespace": "kEEXlKiTIDgP7wuX", "userId": "QdfW99JglScoOlkk"}]}' \
    'BxiXf8OBQRqXWXQ3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'AdminAddRoleManagersV3' test.out

#- 232 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "JdXdFz8pc0EEziE5", "namespace": "yIvijq9ix16vo60j", "userId": "gvwV3C9hJ1kSZonK"}, {"displayName": "02WHGVKDcKulj3Pd", "namespace": "egy4G6LOpak8CYp6", "userId": "DPdukc04j6rbfBuK"}, {"displayName": "Bco1AeO3yvvBLZPB", "namespace": "uekeBe4Tvb3fHCIJ", "userId": "ZkwEcCRi2U7s2ZQA"}]}' \
    'arwH0c87v0PwZjyd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'AdminRemoveRoleManagersV3' test.out

#- 233 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'yzGDZM4zTTYI6O8c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'AdminGetRoleMembersV3' test.out

#- 234 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "oYDWUfcL1qsegBsr", "namespace": "NqeW5BxVe8iW7sGE", "userId": "LnMdXRqdGPzxXvZP"}, {"displayName": "trhjeVBnTrsYihhg", "namespace": "beAZoFncMUdmf8hD", "userId": "3nL1saQxLYrz08jh"}, {"displayName": "6Tyq7WUilXgtf5Uc", "namespace": "tyV3aSw4twReM5Dc", "userId": "Hde3fkHf7tH8WTOT"}]}' \
    'eBOcYhf6nGCnPjiI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'AdminAddRoleMembersV3' test.out

#- 235 AdminRemoveRoleMembersV3
eval_tap 0 235 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 236 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 2, "resource": "lRFnIekrQ99ecmen", "schedAction": 48, "schedCron": "CyQBqKxayGvw7MqO", "schedRange": ["sypCJmfRnW0spgvj", "t7eCLDu6PA3PRnQt", "B410iWT0SILVGXCW"]}, {"action": 88, "resource": "IULJlWXmQFlef1tS", "schedAction": 68, "schedCron": "PfF5DvveMdBsPt19", "schedRange": ["V2FkBPk0QLufK6ei", "T38raaRG1Fg0hfM5", "vQmahJlT5OUDEMwA"]}, {"action": 18, "resource": "1gTw8BJPFctwUMCR", "schedAction": 6, "schedCron": "kuOJekbO0sk7o1z3", "schedRange": ["7uuqLDQF12kYfBqe", "Qxos58kVk7F1KKOf", "FFLvER3xqCwUgKa4"]}]}' \
    'oCBoJDxGa1UuSr4e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'AdminUpdateRolePermissionsV3' test.out

#- 237 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 15, "resource": "KO8n42UuxEyfzZJs", "schedAction": 54, "schedCron": "d9sB6CV9KiWkbdpG", "schedRange": ["qWQIPK6mVytM5mBR", "T39gKYLk9DmjJh6P", "npTXWAUt8lgqNM4p"]}, {"action": 29, "resource": "kD7wAHMrv8zABDhY", "schedAction": 53, "schedCron": "lAuaBCdhzXb6cBMP", "schedRange": ["NMmjMi2uztFNfXg0", "UvwaZ0py16ShGomF", "zUappaaODZaZ6Vzz"]}, {"action": 39, "resource": "xerpjVPfktNnl8UY", "schedAction": 69, "schedCron": "VHJVaEnaycYsKkgX", "schedRange": ["0RMDxvlK9RnTEYv5", "eDhCxwy85vlhWw1R", "CgHr3f6UqFGCvsMF"]}]}' \
    'EFlXHBOK1RqtKYVO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'AdminAddRolePermissionsV3' test.out

#- 238 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["bVorIVWWLaVJwe2K", "Aca1aKeXUu9hINqK", "voYKio4M51vuaFyq"]' \
    'jQsTGmzItJIOkEIR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'AdminDeleteRolePermissionsV3' test.out

#- 239 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '38' \
    '6itDEsq0dHfYG6k8' \
    '53GERdJdphepF9df' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'AdminDeleteRolePermissionV3' test.out

#- 240 AdminGetMyUserV3
$PYTHON -m $MODULE 'iam-admin-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'AdminGetMyUserV3' test.out

#- 241 UserAuthenticationV3
$PYTHON -m $MODULE 'iam-user-authentication-v3' \
    'sng9FGGjJ0hRPUBF' \
    'xM2Fr3olO10RAyIZ' \
    's2VfCRhzfKDAGIAJ' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 241 'UserAuthenticationV3' test.out

#- 242 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    'uPhQcZwXRE9FOZUV' \
    'TfDc3w1tAXRrQtHk' \
    'm0Tthcx9W7PkFNVa' \
    '7czD4wybVjqOKrqY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'AuthenticationWithPlatformLinkV3' test.out

#- 243 AuthenticateAndLinkForwardV3
$PYTHON -m $MODULE 'iam-authenticate-and-link-forward-v3' \
    'GxcBxfjLUZHK0OO1' \
    'yQsMBQAdOfrtHWyG' \
    'g5TU3INkMgjsnP8i' \
    'tevmjTJjj5tfFQv3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'AuthenticateAndLinkForwardV3' test.out

#- 244 PublicGetSystemConfigV3
$PYTHON -m $MODULE 'iam-public-get-system-config-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'PublicGetSystemConfigV3' test.out

#- 245 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    '84ri6A7z0hsW0IHI' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 245 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 246 RequestOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-request-one-time-linking-code-v3' \
    'YvJ7PPgVaFwGhl5z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'RequestOneTimeLinkingCodeV3' test.out

#- 247 ValidateOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-validate-one-time-linking-code-v3' \
    'qkzEu41hVfVC7eLV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'ValidateOneTimeLinkingCodeV3' test.out

#- 248 RequestTokenByOneTimeLinkCodeResponseV3
$PYTHON -m $MODULE 'iam-request-token-by-one-time-link-code-response-v3' \
    'WGk0GjYReIZaDC2A' \
    'u2bEpymbJ4dPJmkd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 249 GetCountryLocationV3
$PYTHON -m $MODULE 'iam-get-country-location-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'GetCountryLocationV3' test.out

#- 250 Logout
$PYTHON -m $MODULE 'iam-logout' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'Logout' test.out

#- 251 RequestTokenExchangeCodeV3
$PYTHON -m $MODULE 'iam-request-token-exchange-code-v3' \
    'vyuDHFFstLhZzlet' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'RequestTokenExchangeCodeV3' test.out

#- 252 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'Cqa3lJMQ1sGlfqjD' \
    'BzOjNeq8JJhbi7QD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 253 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    '0RW0qgxO0Y6TFpFS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'RevokeUserV3' test.out

#- 254 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    'CsrhSGeeExZYnGcr' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 254 'AuthorizeV3' test.out

#- 255 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'HMKoTcIXeKZzZBo6' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 255 'TokenIntrospectionV3' test.out

#- 256 GetJWKSV3
$PYTHON -m $MODULE 'iam-get-jwksv3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'GetJWKSV3' test.out

#- 257 SendMFAAuthenticationCode
$PYTHON -m $MODULE 'iam-send-mfa-authentication-code' \
    'ARaQnNZQ1R0PGBFV' \
    'nc37aWVjM3iVKjr5' \
    'VDqakKdW767GAH1o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'SendMFAAuthenticationCode' test.out

#- 258 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    'iS1JuO7MNoFPtRhY' \
    'YIpNqVHbbCVwbitD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'Change2faMethod' test.out

#- 259 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    '5tWXZVvjYqrEXKUD' \
    'lmtixw9FtBVAWT8P' \
    'xL8674KYMeN2W2CN' \
    'true' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'Verify2faCode' test.out

#- 260 Verify2faCodeForward
$PYTHON -m $MODULE 'iam-verify2fa-code-forward' \
    'TIUep61ZsSiqW7I0' \
    '3oSwCfYpN9jkLCsM' \
    'YyyhEyBfFFZwkC1P' \
    'RjBWzTuXttDREDWb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'Verify2faCodeForward' test.out

#- 261 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'OM3xQaraaEVt3vsB' \
    'CXpIgQzkWzcBqVcu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 262 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'TTrIk6hU0mqdwBJa' \
    'x1jBd6Yng8ps5Xkn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'AuthCodeRequestV3' test.out

#- 263 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'DJZK5gFHyIOnLu9W' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 263 'PlatformTokenGrantV3' test.out

#- 264 GetRevocationListV3
$PYTHON -m $MODULE 'iam-get-revocation-list-v3' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 264 'GetRevocationListV3' test.out

#- 265 TokenRevocationV3
$PYTHON -m $MODULE 'iam-token-revocation-v3' \
    'BAS0qUswy0AnJZJd' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 265 'TokenRevocationV3' test.out

#- 266 SimultaneousLoginV3
$PYTHON -m $MODULE 'iam-simultaneous-login-v3' \
    'epicgames' \
    'rIn9hHHGg1cTZsJp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'SimultaneousLoginV3' test.out

#- 267 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'authorization_code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 267 'TokenGrantV3' test.out

#- 268 VerifyTokenV3
$PYTHON -m $MODULE 'iam-verify-token-v3' \
    'E9Czhnck3GnyPFQH' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 268 'VerifyTokenV3' test.out

#- 269 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'gn9jVE6QGkZ8AVze' \
    'iaDi67E3rTwN2LrT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'PlatformAuthenticationV3' test.out

#- 270 PlatformTokenRefreshV3
$PYTHON -m $MODULE 'iam-platform-token-refresh-v3' \
    '85Arfe6EweJxWANt' \
    '1bDay64EnFyFeW0o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'PlatformTokenRefreshV3' test.out

#- 271 PublicGetInputValidations
$PYTHON -m $MODULE 'iam-public-get-input-validations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'PublicGetInputValidations' test.out

#- 272 PublicGetInputValidationByField
$PYTHON -m $MODULE 'iam-public-get-input-validation-by-field' \
    'NhddKrrhzwz2PFXC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'PublicGetInputValidationByField' test.out

#- 273 PublicGetCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction-v3' \
    '33KjLNUFQJgCWV7d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'PublicGetCountryAgeRestrictionV3' test.out

#- 274 PublicGetConfigValueV3
$PYTHON -m $MODULE 'iam-public-get-config-value-v3' \
    'j8I5eVnflH2hnMV6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'PublicGetConfigValueV3' test.out

#- 275 PublicGetCountryListV3
$PYTHON -m $MODULE 'iam-public-get-country-list-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'PublicGetCountryListV3' test.out

#- 276 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-public-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 277 RetrieveActiveOIDCClientsPublicV3
$PYTHON -m $MODULE 'iam-retrieve-active-oidc-clients-public-v3' \
    'Yxtl5DKUhjBy9oWP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 278 PublicListUserIDByPlatformUserIDsV3
eval_tap 0 278 'PublicListUserIDByPlatformUserIDsV3 # SKIP deprecated' test.out

#- 279 PublicGetUserByPlatformUserIDV3
eval_tap 0 279 'PublicGetUserByPlatformUserIDV3 # SKIP deprecated' test.out

#- 280 PublicGetProfileUpdateStrategyV3
$PYTHON -m $MODULE 'iam-public-get-profile-update-strategy-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'PublicGetProfileUpdateStrategyV3' test.out

#- 281 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    'cMIQc5lRQojhJgpX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'PublicGetAsyncStatus' test.out

#- 282 PublicSearchUserV3
$PYTHON -m $MODULE 'iam-public-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'PublicSearchUserV3' test.out

#- 283 PublicCreateUserV3
$PYTHON -m $MODULE 'iam-public-create-user-v3' \
    '{"PasswordMD5Sum": "VCubdw0sPrgDKqHC", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "xsmACLFHrXWFobqn", "policyId": "DkfPAHNgVss4JzVK", "policyVersionId": "SusdLumoHh8TQWYk"}, {"isAccepted": true, "localizedPolicyVersionId": "vD3mUDwtTF1ATVQn", "policyId": "AexrRomTZFHX4cgt", "policyVersionId": "kxEx6tlxks0yGW8q"}, {"isAccepted": true, "localizedPolicyVersionId": "UxEikRyHC9VWMnzb", "policyId": "uNQNJxCbLEhfrPxI", "policyVersionId": "RdbUwkN6Tr6vRneC"}], "authType": "9JYmpKyZGtqWw67L", "code": "heLDvwZjthGMOB4H", "country": "FIzTlGBnpLBd02br", "dateOfBirth": "9OfMbjgS5WjduKix", "displayName": "zScfrHzGYC1TdLVD", "emailAddress": "BDxK6laOkeLBcprB", "password": "yjUr7w9w1xKUrLmQ", "reachMinimumAge": false, "uniqueDisplayName": "uUxSxI4yyrZIV9M2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'PublicCreateUserV3' test.out

#- 284 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    '2gRLsc6Jwt190s6y' \
    'FiDZs0wyldbDDnts' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'CheckUserAvailability' test.out

#- 285 PublicBulkGetUsers
eval_tap 0 285 'PublicBulkGetUsers # SKIP deprecated' test.out

#- 286 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "SQ8DEsKT6Mw5xDz8", "languageTag": "asARtI3TVV2QmlqR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'PublicSendRegistrationCode' test.out

#- 287 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "K5roG1oZArFJBUmM", "emailAddress": "x7nzK8rRAYvvynDP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'PublicVerifyRegistrationCode' test.out

#- 288 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "J9SMRzSo0RzUoSen", "languageTag": "8CjEhtRcnVsYOwyp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'PublicForgotPasswordV3' test.out

#- 289 PublicValidateUserInput
$PYTHON -m $MODULE 'iam-public-validate-user-input' \
    '{"displayName": "w6F21uYowkPNGANj", "password": "li9XZkbrkh3dQNtI", "uniqueDisplayName": "EwCcfPmWjX540aN2", "username": "pvOi5UG7agVhXIgo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'PublicValidateUserInput' test.out

#- 290 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    'HE9eEvIyV2DqxWhS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'GetAdminInvitationV3' test.out

#- 291 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"PasswordMD5Sum": "V3r9vk4HQDiwqJUZ", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "7HM6JB2P6ZjZh9eg", "policyId": "gvvmXZU7lVGZ6lIs", "policyVersionId": "17PXJ8KsgqGNM6sO"}, {"isAccepted": true, "localizedPolicyVersionId": "UwIv84zQjc88fKtD", "policyId": "QSbDQN21JlwPxpuU", "policyVersionId": "Zm1GVuI2Eihx6IJw"}, {"isAccepted": true, "localizedPolicyVersionId": "MtXYGoZGkBNXT0fe", "policyId": "u7KKPXunBZiqYaRe", "policyVersionId": "D04717oGCmrTUcZy"}], "authType": "3DDSxpWZV6J5QloY", "code": "CaB5ImpxpHJCcuqJ", "country": "R2TT3HEYBW8Aq2KV", "dateOfBirth": "QNFGaJEyBVlQ5iHl", "displayName": "TqgMzvj8sHLF7s3h", "emailAddress": "gmxOOzP7vteUYzMZ", "password": "zggFcJQkYueQLLJP", "reachMinimumAge": false, "uniqueDisplayName": "PVwWjIfhOXemeTgi"}' \
    'ENbhdRohucoiX0GA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'CreateUserFromInvitationV3' test.out

#- 292 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "QZEbNr6VtQiKwKuI", "country": "HMjiIjX7Eu0WCXd8", "dateOfBirth": "GX7ygT5qlBekxw9p", "displayName": "O3vyRviPljDYddTD", "languageTag": "wgc6onXfoDvjI9jf", "uniqueDisplayName": "JFTHcHvAfosnCXqJ", "userName": "plcwaBHILlCC7ovj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'UpdateUserV3' test.out

#- 293 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "EbjKrZ2d6IbWTfPp", "country": "lY43FQpfFWm8VMHj", "dateOfBirth": "C8qrxvZsJd3RBYL4", "displayName": "PAqdviBvToSQ7EqH", "languageTag": "UhHn1qP3G2kSIurS", "uniqueDisplayName": "OWI2donULQokdCSs", "userName": "p87x6Jfe5YAYJeb1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'PublicPartialUpdateUserV3' test.out

#- 294 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "GUdtB5G8NITA0g58", "emailAddress": "cqZn79u2grirdqEL", "languageTag": "bdqXaPlAMGm4h3Pb", "upgradeToken": "LHDa7uqaaxqXPKuN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'PublicSendVerificationCodeV3' test.out

#- 295 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "AeKKjcKgU263PawP", "contactType": "B10d4KCtC9mqs8uX", "languageTag": "BZ2Kxk4a5FeKFm3r", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'PublicUserVerificationV3' test.out

#- 296 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "m1JJwmCAjTwtCqKd", "country": "h92wuH9hLkAg90cQ", "dateOfBirth": "gXeZnKRP6Gdv2QY9", "displayName": "BadKJj4HkL0mk4HH", "emailAddress": "DzXcKJowQbOrgveL", "password": "e4hYQEGcivibNKS0", "uniqueDisplayName": "tBFxzru1A3Obcaij", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'PublicUpgradeHeadlessAccountV3' test.out

#- 297 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "GTIFWcZWKcGHG9MB", "password": "p1AEcNUzfWwpdraZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'PublicVerifyHeadlessAccountV3' test.out

#- 298 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "O1lfHzX5CHNiYaLY", "mfaToken": "UlRZSLj5xwmP8QMJ", "newPassword": "JJn2Lqw6aiKZbUJQ", "oldPassword": "92BTViMMFji1Gmfm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'PublicUpdatePasswordV3' test.out

#- 299 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'whN25xGSRRZnwlbM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'PublicCreateJusticeUser' test.out

#- 300 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'GheYVteLiiIKPjok' \
    'v6HMQOekLKHziTw5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'PublicPlatformLinkV3' test.out

#- 301 PublicPlatformUnlinkV3
eval_tap 0 301 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 302 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'M3KvzpUEcp3cp4fW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'PublicPlatformUnlinkAllV3' test.out

#- 303 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    'JlLrbVQceKy5JZK1' \
    'rVpGdpzlwFNJyyLo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'PublicForcePlatformLinkV3' test.out

#- 304 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'zi8eBqPD6pfcv9jG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'PublicWebLinkPlatform' test.out

#- 305 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'r7b2hHbaUEtBnsgg' \
    'bEVNmymBNr5C2BOj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'PublicWebLinkPlatformEstablish' test.out

#- 306 PublicProcessWebLinkPlatformV3
$PYTHON -m $MODULE 'iam-public-process-web-link-platform-v3' \
    'UiOQVEbp3z13pDy3' \
    '71QLVtDb6RZXatSi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'PublicProcessWebLinkPlatformV3' test.out

#- 307 PublicGetUsersPlatformInfosV3
$PYTHON -m $MODULE 'iam-public-get-users-platform-infos-v3' \
    '{"platformId": "mmKudqURkyz4E3EI", "userIds": ["1bSCYaa8JSNQdhrn", "vuDGFiT4U6WQQwsT", "HCgTvrGllrcttK4W"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'PublicGetUsersPlatformInfosV3' test.out

#- 308 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"clientId": "gzdUhB2YhKWidqRP", "code": "Q1hSmShNaSmVFsmF", "emailAddress": "W74DkabvmYAT6qTg", "languageTag": "6ZOaTNC1LAentTXW", "newPassword": "yBmb2Ir2yOaVvE1N"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'ResetPasswordV3' test.out

#- 309 PublicGetUserByUserIdV3
eval_tap 0 309 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 310 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    '52PwdeTQhMz99aZ3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'PublicGetUserBanHistoryV3' test.out

#- 311 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'fza0rlzqNhVNwgXB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 312 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    'CZr4m1UpizE7fm00' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'PublicGetUserInformationV3' test.out

#- 313 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'IB0YnQ5xpjcMxUGo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'PublicGetUserLoginHistoriesV3' test.out

#- 314 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'kG4VQKR0ItcCnXFR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'PublicGetUserPlatformAccountsV3' test.out

#- 315 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    'jhk7tzIHqZpgJqlw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'PublicListJusticePlatformAccountsV3' test.out

#- 316 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "441XUfp7AVnf8BzB", "platformUserId": "BqEvMtJopw2r5pKs"}' \
    'XnIYkKH6MNrEsOlI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'PublicLinkPlatformAccount' test.out

#- 317 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["Fw6Fqa6YXBlVXOvZ", "UgW2ZMVJhOyVaO1s", "gnJF31EULHtVtkZr"], "requestId": "E0YPmtE6fcv3nPRO"}' \
    'vD1FiqEUhsD6QxKz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'PublicForceLinkPlatformWithProgression' test.out

#- 318 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    'bZ7xvbLKNa3OJMFd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'PublicGetPublisherUserV3' test.out

#- 319 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'rQmX2OFLws9RV6lY' \
    '9IGsZjUsSUE7NuCY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 320 PublicGetRolesV3
$PYTHON -m $MODULE 'iam-public-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'PublicGetRolesV3' test.out

#- 321 PublicGetRoleV3
$PYTHON -m $MODULE 'iam-public-get-role-v3' \
    'EOWNkgUfe6pVMS5m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'PublicGetRoleV3' test.out

#- 322 PublicForgotPasswordWithoutNamespaceV3
$PYTHON -m $MODULE 'iam-public-forgot-password-without-namespace-v3' \
    '{"clientId": "8aRIev5s4q7Uwwra", "emailAddress": "CDr326Q66cxtjNTX", "languageTag": "sCsfA2pIWzC6nrUa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'PublicForgotPasswordWithoutNamespaceV3' test.out

#- 323 PublicGetMyUserV3
$PYTHON -m $MODULE 'iam-public-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'PublicGetMyUserV3' test.out

#- 324 PublicSendCodeForwardV3
$PYTHON -m $MODULE 'iam-public-send-code-forward-v3' \
    '{"context": "vXt7t0llsH39PXWt", "emailAddress": "k222GY7L58lP7drh", "languageTag": "fBjZFgaGUfhy5TZF", "upgradeToken": "oyfZ0XfCxPDcH66J"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'PublicSendCodeForwardV3' test.out

#- 325 PublicGetLinkHeadlessAccountToMyAccountConflictV3
$PYTHON -m $MODULE 'iam-public-get-link-headless-account-to-my-account-conflict-v3' \
    'WKmTRqrvfJIrFQWI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 326 LinkHeadlessAccountToMyAccountV3
$PYTHON -m $MODULE 'iam-link-headless-account-to-my-account-v3' \
    '{"chosenNamespaces": ["DC6PHVsnUueYd49O", "FDlbdIrxqxAtw8vL", "sYBHN6M7OpcFqK4F"], "oneTimeLinkCode": "BJG8BfuSzytkPE6m"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'LinkHeadlessAccountToMyAccountV3' test.out

#- 327 PublicGetMyRedirectionAfterLinkV3
$PYTHON -m $MODULE 'iam-public-get-my-redirection-after-link-v3' \
    'w3Zv0zD14WsQt5oi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'PublicGetMyRedirectionAfterLinkV3' test.out

#- 328 PublicGetMyProfileAllowUpdateStatusV3
$PYTHON -m $MODULE 'iam-public-get-my-profile-allow-update-status-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'PublicGetMyProfileAllowUpdateStatusV3' test.out

#- 329 PublicSendVerificationLinkV3
$PYTHON -m $MODULE 'iam-public-send-verification-link-v3' \
    '{"languageTag": "mAfS3Sh33TufYVdP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'PublicSendVerificationLinkV3' test.out

#- 330 PublicGetOpenidUserInfoV3
$PYTHON -m $MODULE 'iam-public-get-openid-user-info-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'PublicGetOpenidUserInfoV3' test.out

#- 331 PublicVerifyUserByLinkV3
$PYTHON -m $MODULE 'iam-public-verify-user-by-link-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'PublicVerifyUserByLinkV3' test.out

#- 332 PlatformAuthenticateSAMLV3Handler
$PYTHON -m $MODULE 'iam-platform-authenticate-samlv3-handler' \
    'wYmvZkT3zo8gxMqM' \
    '1wUdXsMjUbhRjnDr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'PlatformAuthenticateSAMLV3Handler' test.out

#- 333 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'YWlRfPpgHg36d9NP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'LoginSSOClient' test.out

#- 334 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    '5nNvzIlwtYI9wKX9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'LogoutSSOClient' test.out

#- 335 RequestTargetTokenResponseV3
$PYTHON -m $MODULE 'iam-request-target-token-response-v3' \
    'V1XxF2CFfEpf0qN2' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 335 'RequestTargetTokenResponseV3' test.out

#- 336 UpgradeAndAuthenticateForwardV3
$PYTHON -m $MODULE 'iam-upgrade-and-authenticate-forward-v3' \
    'twLYXq4HSEGpaUMm' \
    'dPXWaJRdn3WMdrhl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'UpgradeAndAuthenticateForwardV3' test.out

#- 337 AdminListInvitationHistoriesV4
$PYTHON -m $MODULE 'iam-admin-list-invitation-histories-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'AdminListInvitationHistoriesV4' test.out

#- 338 AdminGetDevicesByUserV4
$PYTHON -m $MODULE 'iam-admin-get-devices-by-user-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'AdminGetDevicesByUserV4' test.out

#- 339 AdminGetBannedDevicesV4
$PYTHON -m $MODULE 'iam-admin-get-banned-devices-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'AdminGetBannedDevicesV4' test.out

#- 340 AdminGetUserDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-user-device-bans-v4' \
    'WqCc54JfyGzMMHiV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'AdminGetUserDeviceBansV4' test.out

#- 341 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "Q6covYDuI4l1d9Ya", "deviceId": "LVuL1mLP65pId36F", "deviceType": "25c13PNqPn7XRlnq", "enabled": false, "endDate": "6bRVaiOL6Q5N2egL", "ext": {"XRiNNV5Fy4ilLbKz": {}, "QFBHQ0FHWOul5WKk": {}, "zjzRnLLFKGFSUC1s": {}}, "reason": "ZtVitkoRyEXWrhLN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'AdminBanDeviceV4' test.out

#- 342 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    'PUvlrOA50xGdlq3D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'AdminGetDeviceBanV4' test.out

#- 343 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": false}' \
    'K53tX2oxmEDDgGBg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'AdminUpdateDeviceBanV4' test.out

#- 344 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    'PWHmOLBLlsw2pDJD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'AdminGenerateReportV4' test.out

#- 345 AdminGetDeviceTypesV4
$PYTHON -m $MODULE 'iam-admin-get-device-types-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'AdminGetDeviceTypesV4' test.out

#- 346 AdminGetDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-device-bans-v4' \
    'LeJwzbVEEQ0D6RcL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'AdminGetDeviceBansV4' test.out

#- 347 AdminDecryptDeviceV4
eval_tap 0 347 'AdminDecryptDeviceV4 # SKIP deprecated' test.out

#- 348 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    'pRxXCStzvOyY1tNK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'AdminUnbanDeviceV4' test.out

#- 349 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    'AVWv5cGRm3WTx0oy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'AdminGetUsersByDeviceV4' test.out

#- 350 AdminGetNamespaceInvitationHistoryV4
$PYTHON -m $MODULE 'iam-admin-get-namespace-invitation-history-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'AdminGetNamespaceInvitationHistoryV4' test.out

#- 351 AdminGetNamespaceUserInvitationHistoryV4
$PYTHON -m $MODULE 'iam-admin-get-namespace-user-invitation-history-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 352 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "pRu5wP9CTLKxi1Bj", "policyId": "FMOIsJO7EUYasMTH", "policyVersionId": "GgaQ2UErhcMpuZW4"}, {"isAccepted": true, "localizedPolicyVersionId": "URTnJUdR3MUQnEeA", "policyId": "NANjqBdfMMU89e6C", "policyVersionId": "IBWn2Q3kMtF5tiwP"}, {"isAccepted": true, "localizedPolicyVersionId": "G0BvuCoP1hIpdIWa", "policyId": "jZTyB7k7Q9zNJHkX", "policyVersionId": "mHB9cu1ZdRIZ1hHC"}], "count": 32, "userInfo": {"country": "A9vXrqLxUCyNQUIT"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'AdminCreateTestUsersV4' test.out

#- 353 AdminCreateUserV4
$PYTHON -m $MODULE 'iam-admin-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "8jU9tfr6NkPjb60b", "policyId": "0Y8RDVgsQzaeOv7x", "policyVersionId": "B8GlNYJeVVZQH5C7"}, {"isAccepted": true, "localizedPolicyVersionId": "GaeCobrGOAvaYctX", "policyId": "d3jNOlJBjBMsJisM", "policyVersionId": "u1kQcGm0x3DmUahj"}, {"isAccepted": true, "localizedPolicyVersionId": "DOEmwpWiJYxvvQCH", "policyId": "IreoYDgNe1RyydtC", "policyVersionId": "Bznu3BT2fe68sGXF"}], "authType": "EMAILPASSWD", "code": "8vRJ3ebbfa3ep8cK", "country": "Nlb024FzQsBlwn2p", "dateOfBirth": "N8vqhPmlYgFAu9gD", "displayName": "8vsiDfzK1gMLvJ1K", "emailAddress": "qSZCanZaGzamJ8JZ", "password": "6lV9zpsDX7CWEoHK", "passwordMD5Sum": "3yLZSpydGfNnNFMf", "reachMinimumAge": false, "uniqueDisplayName": "pIPlcaufemZ4xlGt", "username": "Wc5UcGIGpI8YhyHk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'AdminCreateUserV4' test.out

#- 354 AdminBulkUpdateUserAccountTypeV4
$PYTHON -m $MODULE 'iam-admin-bulk-update-user-account-type-v4' \
    '{"testAccount": true, "userIds": ["dPYamt1NNvdmy7qa", "1StMbwcUsu3gJ0yH", "A6KDH87AmGMvChuh"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 355 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["xZJsDNCQEtOnYVE7", "i77NKczg6MaoVcix", "j92JkMWuFc2x9p8s"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'AdminBulkCheckValidUserIDV4' test.out

#- 356 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "ArSRypvu88WyRMMR", "country": "loXySTO9W3BEI4eB", "dateOfBirth": "0PHoEfIdFP0QarAd", "displayName": "oCQoVI26D2IdXV2R", "languageTag": "NnCRn6spzE0Dj97A", "skipLoginQueue": true, "tags": ["8A7NZLQPAny29oO2", "B8osfAcB6Pd2uPwz", "liHiPYuwUtR55gCT"], "uniqueDisplayName": "ACz3aLd0f0QGkwoI", "userName": "Qo88hLxgR5AJVEz4"}' \
    'FiSPgU3FLs6LbIww' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'AdminUpdateUserV4' test.out

#- 357 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "xFBW1RyUyU8GVL2T", "emailAddress": "VivHbcJX1mqJ4BtZ"}' \
    'CHdlmOzx9DrwT5dJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'AdminUpdateUserEmailAddressV4' test.out

#- 358 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    '{"factor": "MDgZPQtuRIVY69dh", "mfaToken": "Sr3JiNweUidBVB2v"}' \
    'TyC482FeT76mWyDr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'AdminDisableUserMFAV4' test.out

#- 359 AdminGetUserMFAStatusV4
$PYTHON -m $MODULE 'iam-admin-get-user-mfa-status-v4' \
    'mG0FHQOjtRg7ST2U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'AdminGetUserMFAStatusV4' test.out

#- 360 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'VRJN0qFJaGDiDmat' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'AdminListUserRolesV4' test.out

#- 361 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["CvCembJFNyIwxPt1", "9hjyI7ALyZHQ8V4A", "ejtUM6llcl5hdZoP"], "roleId": "hVcQ4wXeArPe089c"}' \
    'qMuV8MLxiTO3GhLJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'AdminUpdateUserRoleV4' test.out

#- 362 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["2qx2h93yz3Y7Ytgd", "QMhzpcpwawMF0j9I", "irMeP7fy5Y0RiyzW"], "roleId": "JZAZHklGmHH8I1l3"}' \
    'xgoVyEemJDvokY7U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'AdminAddUserRoleV4' test.out

#- 363 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["UVCHGWcVrHG4ehIh", "Jk597xUXpiOLFQFx", "Y4AHLzQnClUtkXb0"], "roleId": "SoMLqijtgLSGTnWH"}' \
    'CZ6XwqnOeIUKAIvQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'AdminRemoveUserRoleV4' test.out

#- 364 AdminGetRolesV4
$PYTHON -m $MODULE 'iam-admin-get-roles-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'AdminGetRolesV4' test.out

#- 365 AdminCreateRoleV4
$PYTHON -m $MODULE 'iam-admin-create-role-v4' \
    '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "tx56AwxAJU0XOoXF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'AdminCreateRoleV4' test.out

#- 366 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'pKZ7smOvhTDIdO6u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'AdminGetRoleV4' test.out

#- 367 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'gOFZPtLUvuPK7wBm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'AdminDeleteRoleV4' test.out

#- 368 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "lD14f0XIJh3uxrBG"}' \
    'EumeTG434DmlbwWu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'AdminUpdateRoleV4' test.out

#- 369 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 79, "resource": "pKPB4rzvo2R5Q7tM", "schedAction": 90, "schedCron": "YbPsF33KhfoL7PlF", "schedRange": ["t47mQAQQzQAxQ8GR", "gWKOBJYYXgFmEZ8k", "WtzrSIfMjxzBwWKz"]}, {"action": 72, "resource": "mwcYLuVxqvaL6vdJ", "schedAction": 36, "schedCron": "YSr7IVc2WJyX67v7", "schedRange": ["JTcrppNGl78VMGk3", "b5E1GgAqoQkgiht0", "lsg1U1DExMK4z32P"]}, {"action": 68, "resource": "3aQRTMzFLsBDzdO8", "schedAction": 70, "schedCron": "JTgwl3ZOMpzNQDtQ", "schedRange": ["NlDFMazvRX5v3UCo", "bMU8bzcaf0Qv0dFM", "nEcDHueqAKTjdRpg"]}]}' \
    'YeuitqLYJ7E9mP2B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'AdminUpdateRolePermissionsV4' test.out

#- 370 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 10, "resource": "9qEel6x5O5otpujf", "schedAction": 46, "schedCron": "iC34s0kTiXwPjN8E", "schedRange": ["3wXz4Q1L3hAG9xOO", "i4DVUYo37I8Mgh1D", "JARpi5KzpbDPfXdG"]}, {"action": 44, "resource": "YXcljy6EB8dB8wCi", "schedAction": 51, "schedCron": "q2y16Jp7HjPDG07X", "schedRange": ["wughkPLKDhdMf1o4", "pweyQyv10mRO0tK1", "CH6ozETFSgu96JYK"]}, {"action": 14, "resource": "rTxBgnOqH9lyv8wx", "schedAction": 1, "schedCron": "JosSHLipk5N6e79z", "schedRange": ["CfL2ar4zJmB2wifD", "A7LpND5zXLhrmEeB", "wTzs9QmLReEZ0r6n"]}]}' \
    '6anryoVkl4tChuDi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'AdminAddRolePermissionsV4' test.out

#- 371 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["bBIH1dyZPHtYHKqp", "l1Xk1CdFvYqfoYzB", "c16XXXuoJGXCyzA8"]' \
    'a5uh1LdVOaWOjRin' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'AdminDeleteRolePermissionsV4' test.out

#- 372 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'mMTxEz6bdDFDqRMy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'AdminListAssignedUsersV4' test.out

#- 373 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["TZOXYRC3gIRiYFpD", "lAEyVuvyXITMn2F8", "6xZRHxnOP02x00Sv"], "namespace": "R2yNPms1DdUL5bc6", "userId": "QMB9TtHXqeaYlaYm"}' \
    '2XGN51wxYTCHYaW7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'AdminAssignUserToRoleV4' test.out

#- 374 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "BAFZnpxmzs0AQYJn", "userId": "B9w4rkop7LL7Yqjh"}' \
    '4lgGGsrJv0EyLkZe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'AdminRevokeUserFromRoleV4' test.out

#- 375 AdminInviteUserNewV4
$PYTHON -m $MODULE 'iam-admin-invite-user-new-v4' \
    '{"assignedNamespaces": ["j5voHh0KRDJjPEF1", "LpvoOxT54t5Ffna7", "2ji4B86NKZ0tkEWA"], "emailAddresses": ["qM0EZhtIp1XL7HL2", "nKoPXxLMtU6hLliy", "7em6ox8O9f2ojEQr"], "isAdmin": false, "isNewStudio": false, "languageTag": "5LOpaGFJniJl9RPU", "namespace": "LWpWw5UQBldfnMF2", "roleId": "X9wbQz3euR4MhLQs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'AdminInviteUserNewV4' test.out

#- 376 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "8XliOoWqixFdv5aD", "country": "RSnCrIQ2kChyafmo", "dateOfBirth": "2nIKr9krylalbZWu", "displayName": "O0OVwGUgR3PEWI0N", "languageTag": "4k2W2caqaRVdR05r", "skipLoginQueue": false, "tags": ["QpBIY8LEEtCmsemV", "8gAHQaitMhleY83s", "h3B07O0XQWCZXaPi"], "uniqueDisplayName": "8oY6VkZP57PyBLX7", "userName": "knj7y5qEOp7hzPCx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'AdminUpdateMyUserV4' test.out

#- 377 AdminDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-disable-my-authenticator-v4' \
    '{"factor": "vetFhAgAkkEhd3Y1", "mfaToken": "6uyKwJ713r4F9WC3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'AdminDisableMyAuthenticatorV4' test.out

#- 378 AdminEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-enable-my-authenticator-v4' \
    '42Uggyr64isEfxbF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'AdminEnableMyAuthenticatorV4' test.out

#- 379 AdminGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-admin-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 380 AdminGetMyBackupCodesV4
eval_tap 0 380 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 381 AdminGenerateMyBackupCodesV4
eval_tap 0 381 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 382 AdminDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-disable-my-backup-codes-v4' \
    '{"factor": "EabmT6MmgebEkQ73", "mfaToken": "QcKQldxIqMgf2PaN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'AdminDisableMyBackupCodesV4' test.out

#- 383 AdminDownloadMyBackupCodesV4
eval_tap 0 383 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 384 AdminEnableMyBackupCodesV4
eval_tap 0 384 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 385 AdminGetBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-get-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'AdminGetBackupCodesV4' test.out

#- 386 AdminGenerateBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-generate-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'AdminGenerateBackupCodesV4' test.out

#- 387 AdminEnableBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-enable-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 387 'AdminEnableBackupCodesV4' test.out

#- 388 AdminChallengeMyMFAV4
$PYTHON -m $MODULE 'iam-admin-challenge-my-mfav4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 388 'AdminChallengeMyMFAV4' test.out

#- 389 AdminSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-admin-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 389 'AdminSendMyMFAEmailCodeV4' test.out

#- 390 AdminDisableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-disable-my-email-v4' \
    '{"factor": "JqIMDWJUW3I4SKjp", "mfaToken": "0NOc5dWAES7S7wBq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'AdminDisableMyEmailV4' test.out

#- 391 AdminEnableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-enable-my-email-v4' \
    'Be4F2z2u3wwUBB3K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 391 'AdminEnableMyEmailV4' test.out

#- 392 AdminGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-admin-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 392 'AdminGetMyEnabledFactorsV4' test.out

#- 393 AdminMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-admin-make-factor-my-default-v4' \
    'kzIBx4VA9ZxbKQDq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 393 'AdminMakeFactorMyDefaultV4' test.out

#- 394 AdminGetMyOwnMFAStatusV4
$PYTHON -m $MODULE 'iam-admin-get-my-own-mfa-status-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 394 'AdminGetMyOwnMFAStatusV4' test.out

#- 395 AdminGetMyMFAStatusV4
eval_tap 0 395 'AdminGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 396 AdminInviteUserV4
eval_tap 0 396 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 397 AuthenticationWithPlatformLinkV4
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v4' \
    'G7UJEMeseC0hnoI1' \
    'dph0xgVXvWuSKhoO' \
    'QCljoyZp9rrR7RJb' \
    'kDwkEjOWWCzn2paE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 397 'AuthenticationWithPlatformLinkV4' test.out

#- 398 GenerateTokenByNewHeadlessAccountV4
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v4' \
    'vjRIcSa260P2hpjh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 398 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 399 Verify2faCodeV4
$PYTHON -m $MODULE 'iam-verify2fa-code-v4' \
    'YQEdyLRX3etMjv8j' \
    'skCHfqF5uo9BT2Qq' \
    'CxWZGjDRc27d9a3A' \
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 399 'Verify2faCodeV4' test.out

#- 400 PlatformTokenGrantV4
$PYTHON -m $MODULE 'iam-platform-token-grant-v4' \
    'TbX0PZb0I9Qm4xKe' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 400 'PlatformTokenGrantV4' test.out

#- 401 SimultaneousLoginV4
$PYTHON -m $MODULE 'iam-simultaneous-login-v4' \
    'epicgames' \
    'INM4zHFF9ucrEcYD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 401 'SimultaneousLoginV4' test.out

#- 402 TokenGrantV4
$PYTHON -m $MODULE 'iam-token-grant-v4' \
    'client_credentials' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 402 'TokenGrantV4' test.out

#- 403 RequestTargetTokenResponseV4
$PYTHON -m $MODULE 'iam-request-target-token-response-v4' \
    'hjgrxoEVEIkvpWup' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 403 'RequestTargetTokenResponseV4' test.out

#- 404 PublicListUserIDByPlatformUserIDsV4
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v4' \
    '{"pidType": "GhtaU3oC1Ly7xHbA", "platformUserIds": ["N2Bdv1CfQOijhEI2", "1znti03vAJizEosj", "uIsTXKAQ4uWLCMgN"]}' \
    '7rU1yiWEODovRwzU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 404 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 405 PublicGetUserByPlatformUserIDV4
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv4' \
    '7QiANYIF1YbEZwEz' \
    'BNPCCnVKYp3EQx9p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 405 'PublicGetUserByPlatformUserIDV4' test.out

#- 406 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "ofiZZNcWBxK2ScBM", "policyId": "bpsjgGDmxpN0sNW3", "policyVersionId": "RHxioyNedQ1E2lQg"}, {"isAccepted": true, "localizedPolicyVersionId": "X5uOgZ3Msm86Jr35", "policyId": "oZQ3WcFld5DKwJoC", "policyVersionId": "rYrlOXZN7MoQZDN1"}, {"isAccepted": true, "localizedPolicyVersionId": "oPJurb0FVZK7sonu", "policyId": "zTm1gseYPsB00G8m", "policyVersionId": "oKbti7cqKdwnwTyT"}], "authType": "EMAILPASSWD", "country": "gxlU5MdUdF7gHdIf", "dateOfBirth": "6eMd0iVUmBrFwFIE", "displayName": "Sxo8uFqKtoZiVPtw", "emailAddress": "ECFgcQRsqYFtxbpK", "password": "YKp18TPWOixbTLfd", "passwordMD5Sum": "OF3VtCUZ0wN81CLC", "uniqueDisplayName": "324P82gdsOb5Jp6o", "username": "xvvtB4aireJSZc7C", "verified": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 406 'PublicCreateTestUserV4' test.out

#- 407 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "jp07DFR7IvEhnKAM", "policyId": "Sw1WGHPO22mCj7yF", "policyVersionId": "mbpItmTcMVUlRoYF"}, {"isAccepted": false, "localizedPolicyVersionId": "ivn5yFNSoKf7tdmV", "policyId": "ppuu6acpUdn8X5IZ", "policyVersionId": "jtFT6Bs8OO0CVqXF"}, {"isAccepted": false, "localizedPolicyVersionId": "bMzRd2Z2WjutGApt", "policyId": "SES09ZcFGPCokMwr", "policyVersionId": "tVvGhHzNdHMJys9g"}], "authType": "EMAILPASSWD", "code": "PxA5v9644D4d5jTj", "country": "zZ8KpdOxrQ8r5te5", "dateOfBirth": "FkJ58wQyrAb67d9k", "displayName": "C9MEhGrQVQ3yKCwV", "emailAddress": "9chX3evM1seGH9Zw", "password": "ZcLnJPavRNr3ysEp", "passwordMD5Sum": "4sIwslUQociDSNS6", "reachMinimumAge": false, "uniqueDisplayName": "0sySxhkhCpV5A2ZL", "username": "HG60X6LS9dYe42oi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 407 'PublicCreateUserV4' test.out

#- 408 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "LqYJevKKJR5KWRgH", "policyId": "uLJEAS7pSDlIS4N3", "policyVersionId": "VRydtvWZZFDNIc86"}, {"isAccepted": false, "localizedPolicyVersionId": "Kj3grgVdqSpg9xpX", "policyId": "Ch79kxpJyTba2Sx7", "policyVersionId": "lPUWhfLYtrkZ2V3j"}, {"isAccepted": true, "localizedPolicyVersionId": "bn27LOqX7FWHHlsx", "policyId": "NkfgF88XOEWI4jAR", "policyVersionId": "IQkIiA44zjyRqefU"}], "authType": "EMAILPASSWD", "code": "764xXmCkJL9p2OQ5", "country": "Ll9C3fSnntsqrUKR", "dateOfBirth": "EAt8zG7Mwy6qt1KR", "displayName": "lDGxhO1YbPoWmG71", "emailAddress": "4ZA04yxGcMcYyrom", "password": "MVFEaTLz3hmDX1C9", "passwordMD5Sum": "gHM8SS73LrEja3Xl", "reachMinimumAge": false, "uniqueDisplayName": "I38LyDyLTQxmA6nD", "username": "D3EFfeJdwskeVjYA"}' \
    'e1CNRQX4T37n6lgM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 408 'CreateUserFromInvitationV4' test.out

#- 409 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "V9tMXN2kDg7INFTJ", "country": "O4FUT152zR0PBTEv", "dateOfBirth": "M3TgMsAS5t3TYXNA", "displayName": "Gl1xy1H8Ag2XY2Tn", "languageTag": "yPCVsWzhPIeHkoUS", "uniqueDisplayName": "eT3lv51D9Vwsfzat", "userName": "v4JzfVNAJbSLBzqs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 409 'PublicUpdateUserV4' test.out

#- 410 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "2u1EntDzkQLgWQHX", "emailAddress": "c3bRYKbJGFP8HZNL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 410 'PublicUpdateUserEmailAddressV4' test.out

#- 411 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "J7aPbRMRrbKjoifZ", "country": "AWt13ISgdwAum4b3", "dateOfBirth": "t1Ph8xHfEAlyda8F", "displayName": "PutbAgA4OlQUCJsD", "emailAddress": "ilWhSc6XIxh1HqBg", "password": "5FhY2vclqnTbyZ7f", "reachMinimumAge": false, "uniqueDisplayName": "vmiZxdNpmibPCLiJ", "username": "aHXEyuLQOO6qVUih", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 411 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 412 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"dateOfBirth": "znsLFP3013gsIOAr", "displayName": "elbYwYTtGsRNij1b", "emailAddress": "UAIrKYw673JvA3st", "password": "Z6FN0omme6HiOrbu", "uniqueDisplayName": "q9cXar8FKACMfaES", "username": "KKo0RBtKDj9PgWnO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 412 'PublicUpgradeHeadlessAccountV4' test.out

#- 413 PublicDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-disable-my-authenticator-v4' \
    '{"factor": "DMMswus0ykKyOTFH", "mfaToken": "9npo1k2W89U6PA5B"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 413 'PublicDisableMyAuthenticatorV4' test.out

#- 414 PublicEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-enable-my-authenticator-v4' \
    'yr1VJKsNpin9ZAg5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 414 'PublicEnableMyAuthenticatorV4' test.out

#- 415 PublicGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-public-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 415 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 416 PublicGetMyBackupCodesV4
eval_tap 0 416 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 417 PublicGenerateMyBackupCodesV4
eval_tap 0 417 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 418 PublicDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-disable-my-backup-codes-v4' \
    '{"factor": "mDVmepTMiQqOA7Wi", "mfaToken": "Ii8k4T7A6suz0JPL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 418 'PublicDisableMyBackupCodesV4' test.out

#- 419 PublicDownloadMyBackupCodesV4
eval_tap 0 419 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 420 PublicEnableMyBackupCodesV4
eval_tap 0 420 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 421 PublicGetBackupCodesV4
$PYTHON -m $MODULE 'iam-public-get-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 421 'PublicGetBackupCodesV4' test.out

#- 422 PublicGenerateBackupCodesV4
$PYTHON -m $MODULE 'iam-public-generate-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 422 'PublicGenerateBackupCodesV4' test.out

#- 423 PublicEnableBackupCodesV4
$PYTHON -m $MODULE 'iam-public-enable-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 423 'PublicEnableBackupCodesV4' test.out

#- 424 PublicChallengeMyMFAV4
$PYTHON -m $MODULE 'iam-public-challenge-my-mfav4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 424 'PublicChallengeMyMFAV4' test.out

#- 425 PublicRemoveTrustedDeviceV4
$PYTHON -m $MODULE 'iam-public-remove-trusted-device-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 425 'PublicRemoveTrustedDeviceV4' test.out

#- 426 PublicSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-public-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 426 'PublicSendMyMFAEmailCodeV4' test.out

#- 427 PublicDisableMyEmailV4
$PYTHON -m $MODULE 'iam-public-disable-my-email-v4' \
    '{"factor": "hBV8H4Rs8p9AflDj", "mfaToken": "kRQna4afJC9mgf0b"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 427 'PublicDisableMyEmailV4' test.out

#- 428 PublicEnableMyEmailV4
$PYTHON -m $MODULE 'iam-public-enable-my-email-v4' \
    'lFr8NUmSdS49CybT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 428 'PublicEnableMyEmailV4' test.out

#- 429 PublicGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-public-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 429 'PublicGetMyEnabledFactorsV4' test.out

#- 430 PublicMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-public-make-factor-my-default-v4' \
    'erX6wW5HLYxM5DN6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 430 'PublicMakeFactorMyDefaultV4' test.out

#- 431 PublicGetMyOwnMFAStatusV4
$PYTHON -m $MODULE 'iam-public-get-my-own-mfa-status-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 431 'PublicGetMyOwnMFAStatusV4' test.out

#- 432 PublicGetMyMFAStatusV4
eval_tap 0 432 'PublicGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 433 PublicGetUserPublicInfoByUserIdV4
$PYTHON -m $MODULE 'iam-public-get-user-public-info-by-user-id-v4' \
    'DJmnjBd7q6U3V1i7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 433 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 434 PublicInviteUserV4
$PYTHON -m $MODULE 'iam-public-invite-user-v4' \
    '{"additionalData": "ip9ibQlReTecqcbg", "emailAddress": "gfeYn1FnvTuTrRI8", "languageTag": "Z87U0Y5R6IUWUGWD", "namespace": "cgSJ29TqsnbtXNBe", "namespaceDisplayName": "q2uoLHWsw0m7ZY46"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 434 'PublicInviteUserV4' test.out

#- 435 PublicUpgradeHeadlessWithCodeV4Forward
$PYTHON -m $MODULE 'iam-public-upgrade-headless-with-code-v4-forward' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "KN5EzSmB6aO1Jqyp", "policyId": "ofIkM1Wvc2CcOra4", "policyVersionId": "RXenU5naN6UuNARN"}, {"isAccepted": false, "localizedPolicyVersionId": "uxHzrR3PiHyAFfiw", "policyId": "Ii9bI2X8C6xnSImJ", "policyVersionId": "qwyGzE1BMLJmTvUJ"}, {"isAccepted": true, "localizedPolicyVersionId": "V0W2K8alZaxyEak0", "policyId": "2r4dRvrKr07n72ic", "policyVersionId": "Trg8RyI3bDBIKGiL"}], "code": "SqDVnEtbqHnY6D1Z", "country": "2oKGmRbhR6rnSjFQ", "dateOfBirth": "f699gOqEWjr9T9Uh", "displayName": "sGYJ3NLSVOdqFxY9", "emailAddress": "j8P8IFwNKh0Zni7P", "password": "6ZfRFkQolDEtyxyM", "reachMinimumAge": true, "uniqueDisplayName": "HBaKIf5hoyD0oT4c", "username": "sEU6rwlyAZXRltXT", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 435 'PublicUpgradeHeadlessWithCodeV4Forward' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
