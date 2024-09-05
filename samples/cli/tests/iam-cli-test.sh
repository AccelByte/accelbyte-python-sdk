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
iam-retrieve-all-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-sso-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-third-party-login-platform-credential-v3 'f3ewoGGoY7xmFNAm' --login_with_auth "Bearer foo"
iam-add-third-party-login-platform-credential-v3 '{"ACSURL": "jDDCvs78mcMdiS76", "AWSCognitoRegion": "YApGJ9ufwLYkqIgL", "AWSCognitoUserPool": "uZS6hsQryiEtOAbp", "AllowedClients": ["eUNf26UqkCfgCUYB", "n2xaOBdPF0JmX8qw", "U1cTuHHPB5S3DvPR"], "AppId": "CzBrVUxmDOj3cvRF", "AuthorizationEndpoint": "aTC11W0TGTCm4fZW", "ClientId": "uk6pQxDQpKqxLGeM", "EmptyStrFieldList": ["vr9TsvcMQ7dBsaIe", "cRxIsZvD6rmzVr5X", "T1Nxw0v1dMQ9Rrbk"], "EnableServerLicenseValidation": false, "Environment": "C2cVWf6ttvbU1PO6", "FederationMetadataURL": "ApCD2VXidT7w0Oc1", "GenericOauthFlow": false, "IncludePUID": false, "IsActive": false, "Issuer": "WXBPp17PAewqSm5x", "JWKSEndpoint": "3B4t7WQnp8jXZedg", "KeyID": "t5cyNe27HLtwtVOa", "LogoURL": "xgP6Jbct8puMybYG", "NetflixCertificates": {"encryptedPrivateKey": "xD9IPmmsLmu3kaPj", "encryptedPrivateKeyName": "0O4zd8Tb7cUNGPTB", "publicCertificate": "xiFFCrn7djjs69FT", "publicCertificateName": "FVGUVhvKhJCmeisq", "rootCertificate": "l14mUHVbMPimNhcZ", "rootCertificateName": "sU3VAdMDcb4qlkiF"}, "OrganizationId": "AamqvZI2KwjqPBiW", "PlatformName": "Xade41s3rH34mB2y", "RedirectUri": "PlRpWjmHZAAvKTH8", "RegisteredDomains": [{"affectedClientIDs": ["MuqIg0CzkguwuJCW", "7EEFB67AODbi9Bzu", "pBsFpYc77GtRUcCF"], "domain": "eY5g4XgBsbfzqxBP", "namespaces": ["Ne8ae1Il4aAtEbu4", "IjGdqthRxTjQ7gkZ", "EY8rG0q0Q2Qd2JzR"], "roleId": "bkF2I03dIjvBbA6b"}, {"affectedClientIDs": ["fbYaJCJjfk2TUvn9", "5FhO7VW3mbDVMDu8", "7t0ldWf7iSGIiKFt"], "domain": "Wtn4Yr2svKM6pqLG", "namespaces": ["Z0TBujELAUK6mQ5i", "Zgbwwm5iGzXtcknr", "gidKupvXO6aj4hCm"], "roleId": "TC34jxW4pIDwdqXp"}, {"affectedClientIDs": ["mRmut9H9XyWI8bp8", "fQxRuX91uYmtrHJb", "EGTUj7YjERL1rEQG"], "domain": "02zccA8wvLsWUNd6", "namespaces": ["lPKvqDejvqklTSvD", "wuOrP9lzpiX0VuFp", "Zum7izxe7NPzjOa8"], "roleId": "E7wY76PxLv9HBEUe"}], "Secret": "89AwEw1HO4FnKtx4", "TeamID": "XLKAmlDr19uJ3nq6", "TokenAuthenticationType": "VerzVCcI8y3Cz0Yq", "TokenClaimsMapping": {"CKUh5RD9vNAp4jin": "FpnQ5xF9wwbvMZye", "DeRnVfPUa6xVVBcq": "3wZpFIYeAg79HcLJ", "XJ7mpVI6eTYAjdPl": "CiQQC35cj4KyOVgv"}, "TokenEndpoint": "nWbfRJtsB7cUQZ2Q", "UserInfoEndpoint": "UAxJrINPXppPNO3A", "UserInfoHTTPMethod": "fmXcgwC3IN6tvKgL", "scopes": ["B9QmJIOq9dP5szG7", "1utjsQ4CrRb9gUCe", "Vz7fWbZIdhevfZvy"]}' 'V7AcodcZwKjYDdmJ' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-credential-v3 'Olzwm9Su4FnS98Qq' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-credential-v3 '{"ACSURL": "ftSjq7sn8yreciPL", "AWSCognitoRegion": "fkVyyJsbGpO6Jgeh", "AWSCognitoUserPool": "DJxEN7JlZc8LMq1o", "AllowedClients": ["2jZWu4yA3r0u4q1b", "THXIjfJKyFlM0u1u", "uoVdn9yVoSlKNchP"], "AppId": "HNL4X3LLaGPGdqLE", "AuthorizationEndpoint": "8SohhhuiTnJarYYk", "ClientId": "HBDdSzBXdxapwhd5", "EmptyStrFieldList": ["IQYBQuxLvPuWYvE3", "fsNy9Z9OhxXvCp9y", "7fLD2qfCXnlUnqxT"], "EnableServerLicenseValidation": false, "Environment": "sRNMZcA92hzC7MNa", "FederationMetadataURL": "8vVe4MHX6AgMep90", "GenericOauthFlow": true, "IncludePUID": true, "IsActive": false, "Issuer": "yUJyAK5PRMRMwdvl", "JWKSEndpoint": "0hv6g62GxBW2tQF5", "KeyID": "tkTjgJaMYvNQOsDa", "LogoURL": "4bkcgepqtxjbrzte", "NetflixCertificates": {"encryptedPrivateKey": "e7QLTGAak7Kaol01", "encryptedPrivateKeyName": "DK97D2xnik42mite", "publicCertificate": "R5eQAe1rzmmgqBPR", "publicCertificateName": "md6mO4oI8KDqebm8", "rootCertificate": "3raNBJ5y7axEkvI4", "rootCertificateName": "oxZEDxGiBnNbn0za"}, "OrganizationId": "f7CaOSlHXrUSA6sM", "PlatformName": "JzA5mtqISQ83TTbt", "RedirectUri": "efXWznDe4LQdXfFB", "RegisteredDomains": [{"affectedClientIDs": ["ii2RAMEX5RMjBFVZ", "GYzQqV8d9mDdUIoi", "IJFNxuNOmUSWw18T"], "domain": "1IxVWCxdvPL9e4P0", "namespaces": ["1vxP8xj1LyEirURE", "RnEMzpImW6sjAHyC", "K5tNanGBrkzUvck3"], "roleId": "xTtmOFMebS4AdlNz"}, {"affectedClientIDs": ["wog2IhErkNhNcECW", "wchW6zL9SkbLlrNX", "nGanMazb8jvRWenU"], "domain": "RH48aJuALEcSqcE1", "namespaces": ["5u6D31DjOsrs3CUY", "ATdqnQGbqiqOkNeA", "Tj7eGjodd7CcJUrI"], "roleId": "6MAugK5kypNrp2nF"}, {"affectedClientIDs": ["e9FmN86sK5LOq4ft", "5jGcMICPUYnfG6jl", "9U4jReteIMgzISom"], "domain": "CsodJrhQW41q2Osp", "namespaces": ["CZbt3Uta5I0uGcL1", "koyHjCH5olYLETRp", "ABAmO2EGvJ4UMS93"], "roleId": "yOxNInDByhnoluO6"}], "Secret": "ti0QP2ssiJ66OzOj", "TeamID": "84O6tgohjtC7bzjP", "TokenAuthenticationType": "pucddXJ5zifF8y95", "TokenClaimsMapping": {"9anrNSleywHbHig6": "IKWVZ77KeRWdECaF", "GzfZ2hxcJ2Fnemn7": "M23SzUo4hNBDh9ZF", "P1OW0nXOErQPS4Vs": "RoYIK69yg9ADCGiX"}, "TokenEndpoint": "aLs2xjHkinOD975n", "UserInfoEndpoint": "ARHCmhNHSXuqIHsx", "UserInfoHTTPMethod": "vaUoXDmwWsukxncu", "scopes": ["D3QxCXMd00YBWCaV", "VmM45mfIZsWhkS47", "6dGGJwJ00UH197MJ"]}' '6zU7JLMQyMWzYQCA' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-domain-v3 '{"affectedClientIDs": ["aPJgoxGJoJaSzUtY", "4ZD0Xtb0U4pH16NU", "sVY21NVIs7NRen2Y"], "assignedNamespaces": ["3Ns0QJQeaWytPfds", "1BYx0EaURydf8Zyy", "ZeHAWGgJUbUJRMbk"], "domain": "cTglbU86FyOjApNH", "roleId": "BVfNOURcjY3YYT9o"}' 'TynmfIuBWgJTNFfM' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-domain-v3 '{"domain": "8M0IW4oe8KDgy0xZ"}' 'fAcNg14Ws8TIP1LK' --login_with_auth "Bearer foo"
iam-retrieve-sso-login-platform-credential 'iFQoLDvumfqrgSfn' --login_with_auth "Bearer foo"
iam-add-sso-login-platform-credential '{"acsUrl": "x2h61X9dN1MGRXBJ", "apiKey": "6mVV7JS9qjNLwvI8", "appId": "JdiY3RRiLilmOGF6", "federationMetadataUrl": "dLLIeIVIjMcdlbdR", "isActive": true, "redirectUri": "IrdNL5gJPqTAjgqa", "secret": "THf1ANTJ9Yk997Xk", "ssoUrl": "GOdC6ItxDT8p4n4X"}' 'CFkD1AJLCwszbZxu' --login_with_auth "Bearer foo"
iam-delete-sso-login-platform-credential-v3 'HSgDOK8bjoF7bL26' --login_with_auth "Bearer foo"
iam-update-sso-platform-credential '{"acsUrl": "35KbtZTGJpqgl2Iz", "apiKey": "NXGTuQPIDpor7t1a", "appId": "JLNNz6QIVC9Mfuc8", "federationMetadataUrl": "VOsnmnlVljdWYmEL", "isActive": false, "redirectUri": "1GC1d2b92B4vEgj3", "secret": "HOmhcWm428XejRF9", "ssoUrl": "4NIY9nMrBZo0lNUB"}' 'DShHD32vvL28FPwT' --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["iXfLcxDC9Ynd02mE", "CIQhfIhHtADUQ9zi", "mQTQT95pFJUAJsyA"]}' 'feKOufV4f15NohXu' --login_with_auth "Bearer foo"
iam-admin-get-user-by-platform-user-idv3 '6opxQGRt6PqlkL0d' 'iRhLC10ih2EQfY3X' --login_with_auth "Bearer foo"
iam-admin-get-role-override-config-v3 'USER' --login_with_auth "Bearer foo"
iam-admin-update-role-override-config-v3 '{"additions": [{"actions": [43, 86, 16], "resource": "2xaNfmn8Onb1a9gM"}, {"actions": [52, 67, 89], "resource": "F2UBRmMhAbUWmFhd"}, {"actions": [67, 77, 34], "resource": "WzMuv3zkUY0n0BAZ"}], "exclusions": [{"actions": [21, 47, 71], "resource": "bYkBLyO6A0Fqfhna"}, {"actions": [57, 69, 67], "resource": "xKNdOTacCcJfIfXs"}, {"actions": [15, 98, 42], "resource": "9ZGWrZ05sxe6A6Rp"}], "overrides": [{"actions": [24, 15, 74], "resource": "PUTKbonoucNmzwOZ"}, {"actions": [83, 50, 74], "resource": "LLiizac7Ge6zKJdl"}, {"actions": [40, 21, 39], "resource": "rjF5RaJwvkWVco2L"}], "replacements": [{"replacement": {"actions": [94, 30, 94], "resource": "ijlvDF8qBWCQ9dLW"}, "target": "YyS8zdhMeBXH8x6H"}, {"replacement": {"actions": [7, 97, 22], "resource": "fZVDAiU6iJOF7JKZ"}, "target": "FNk2NKy59X8iOg2s"}, {"replacement": {"actions": [97, 23, 56], "resource": "rJ81lHvv9rqvEoM8"}, "target": "YmVjAkO3HKsEp6Kl"}]}' 'USER' --login_with_auth "Bearer foo"
iam-admin-get-role-source-v3 'GAME_ADMIN' --login_with_auth "Bearer foo"
iam-admin-change-role-override-config-status-v3 '{"active": true}' 'VIEW_ONLY' --login_with_auth "Bearer foo"
iam-admin-get-role-namespace-permission-v3 'W4djrexcbHdEtoQv' --login_with_auth "Bearer foo"
iam-get-admin-users-by-role-id-v3 'pV344RctmTozCi8H' --login_with_auth "Bearer foo"
iam-admin-get-user-by-email-address-v3 --login_with_auth "Bearer foo"
iam-admin-bulk-update-users-v3 '{"updateRequest": {"skipLoginQueue": false}, "userIds": ["iTgYmx82JVBRLPZ6", "Iz8tne5dbguBF6Gs", "vvdl8jHz9x7XZIjU"]}' --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-ban-v3 '{"bulkUserId": ["4IK9lOLaZaMphKCq", "Tq3EVheJjoEEXBLI", "xGnNuhoJM3WWPvvC"]}' --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-user-i-ds-v3 '{"userIds": ["iCf33ViEdqQpoGkU", "WNizk5UcPAGv6c1E", "SC6hZYTYZbzf5aAN"]}' --login_with_auth "Bearer foo"
iam-admin-bulk-get-users-platform '{"userIds": ["NNs5kgSZZNUHbIT9", "szApmWJO5vzzXZj0", "8a6K1XRVfriSpPFn"]}' --login_with_auth "Bearer foo"
iam-admin-invite-user-v3 '{"emailAddresses": ["ZBJZkDnEiyfa2Lrn", "pZxNnLRH36bqS2oF", "Y76PU1AziBOHEAj1"], "isAdmin": false, "languageTag": "kDcos5uVJ0BJfZ0j", "namespace": "vA54CSqZFDsO1skR", "roles": ["jOU1SMfQVQa6blj9", "Rdd85bdYUumPKVSZ", "Cg3XTc9vQe0dHJfF"]}' --login_with_auth "Bearer foo"
iam-admin-query-third-platform-link-history-v3 '6KIuvnRCa9JktyBd' --login_with_auth "Bearer foo"
iam-admin-list-users-v3 --login_with_auth "Bearer foo"
iam-admin-search-user-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-by-email-address-v3 '{"listEmailAddressRequest": ["xkZKrEWFw9GYxjii", "OQAD77ci0vfWVZoR", "RMPi57HyKKz5nyI6"]}' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v3 'ulKNKoXa0dgx1Jgj' --login_with_auth "Bearer foo"
iam-admin-update-user-v3 '{"avatarUrl": "C56pda3YhtQxpCYM", "country": "E6x21pdX2QSPAd9s", "dateOfBirth": "xoLnWGP1PafIjLX8", "displayName": "ce0KbNN7Ycl2JfmQ", "languageTag": "plvGjVQ4aebjfgGu", "skipLoginQueue": true, "uniqueDisplayName": "72oWJlfglLM4xjfk", "userName": "NL4lU6jaGfsD1cfs"}' 'wmeFpvtDtetoQVFL' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v3 '8LNW11vtpaTxi7k4' --login_with_auth "Bearer foo"
iam-admin-ban-user-v3 '{"ban": "89jRCn48bvkCPfKo", "comment": "fwXOIZZQAJza84lK", "endDate": "KmVOaTS6xBbNrSUA", "reason": "W2ak7ISDrBVg6NuD", "skipNotif": true}' 'unq3eOMHIKeTyBG5' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-summary-v3 'dCUoExnKfV3869IN' --login_with_auth "Bearer foo"
iam-admin-update-user-ban-v3 '{"enabled": true, "skipNotif": false}' 'MGBA6JXDpA1tIC45' 'C0oaGouFu4hXONgU' --login_with_auth "Bearer foo"
iam-admin-send-verification-code-v3 '{"context": "wJnUpryDeRcpUvlr", "emailAddress": "w2MwC1uuokpaIjL0", "languageTag": "Vxe5n9Lx3QcFo9gx"}' 'OgvDc7xMrRKvw8IS' --login_with_auth "Bearer foo"
iam-admin-verify-account-v3 '{"Code": "P2WKmCRRXBxlalCH", "ContactType": "tWlKxLpS8fLWoQ5n", "LanguageTag": "uJhatQPxR7dvBVC5", "validateOnly": true}' 'HnMOn8nc3gUZ8ZFy' --login_with_auth "Bearer foo"
iam-get-user-verification-code 'yEr0KBXuJBqK4QtE' --login_with_auth "Bearer foo"
iam-admin-get-user-deletion-status-v3 'ydPWLPBYiR3UbJc1' --login_with_auth "Bearer foo"
iam-admin-update-user-deletion-status-v3 '{"deletionDate": 47, "enabled": false}' 'PI6aFo0MVwDZCIXF' --login_with_auth "Bearer foo"
iam-admin-list-user-all-platform-accounts-distinct-v3 'NEL3uWVRz3V7YbJM' --login_with_auth "Bearer foo"
iam-admin-upgrade-headless-account-v3 '{"code": "3bNLWHAbCZixe2cQ", "country": "6O30lpzcBQMAEcNc", "dateOfBirth": "JqrKxnMzSYoc4Zji", "displayName": "MY4H34B6wVd8ipcK", "emailAddress": "DwQeUWtjCC2UH6jz", "password": "MO3AfmOS5mQNyRPZ", "uniqueDisplayName": "FPNP56l1AT6OLKmZ", "validateOnly": false}' 'qaVemINdClpF7Ovl' --login_with_auth "Bearer foo"
iam-admin-delete-user-information-v3 'BIEgjse5kd6GEDo0' --login_with_auth "Bearer foo"
iam-admin-get-user-login-histories-v3 '8yq5E5HleLoog4me' --login_with_auth "Bearer foo"
iam-admin-reset-password-v3 '{"languageTag": "2NBFp62xlXvVcJer", "mfaToken": "TPW02PWsHiKYArAx", "newPassword": "nKBfBfDlrQQuAc10", "oldPassword": "DjjwMv4vrIPRtvhQ"}' 'IyLarjaLOKnX51yA' --login_with_auth "Bearer foo"
iam-admin-update-user-permission-v3 '{"Permissions": [{"Action": 56, "Resource": "ykS8YLmwtYgWGcA0", "SchedAction": 16, "SchedCron": "SnJIIgsAVmaGYxUX", "SchedRange": ["1B9oVuzG2CnYX2YB", "F2g7TVtzYEHUodh3", "iUfBthbepUCTWiZ1"]}, {"Action": 42, "Resource": "aILQruAuYyJLYGqM", "SchedAction": 45, "SchedCron": "ZLRxYlYqlpq03BGd", "SchedRange": ["Ik4oEogFVGR71rJO", "By6lsj1AKGBjnHma", "Au4YK87DYAWWcbcb"]}, {"Action": 67, "Resource": "IzVcy9k3ie64Vnwa", "SchedAction": 1, "SchedCron": "ClGQJultJe32AiwK", "SchedRange": ["adEoIVmprwPsa9YD", "92CX0rITajpwHITG", "eHTnqRbzBB9ZFgJb"]}]}' 'Q3Fj1umx4ItzkMJ7' --login_with_auth "Bearer foo"
iam-admin-add-user-permissions-v3 '{"Permissions": [{"Action": 5, "Resource": "YsHooOIaxIpb1cIO", "SchedAction": 72, "SchedCron": "VIQvRkQJAtDUH9tx", "SchedRange": ["60AehGz1ermJYXsY", "gL7TfyIlAwjTZdRZ", "JJzWZwvTX2bamSCv"]}, {"Action": 70, "Resource": "1nwvSWdDwD7WJHzg", "SchedAction": 81, "SchedCron": "rFXt3TAuKBwBcD12", "SchedRange": ["ae6r3hHwya4NpdOz", "g3hr6ucHf7dbh2iK", "NUl0qJqzoKMRMG54"]}, {"Action": 6, "Resource": "PAiNjULsx4SnKNXL", "SchedAction": 78, "SchedCron": "kOFldMCQ98JH4n0J", "SchedRange": ["tgqzZv5kVu4S95mj", "8YRvae4f4lhBPbar", "bWEm8bVtZcfVCPdQ"]}]}' 'him9QKUAFTVYelIl' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-bulk-v3 '[{"Action": 66, "Resource": "BahFZZGMTcqnWrIp"}, {"Action": 35, "Resource": "fcFBUsnnDJlmD1iE"}, {"Action": 29, "Resource": "RIJz1eI7Q5pu9Put"}]' 'Lf6IrvZoBGQbO4S3' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-v3 '35' 'WAJOA75K4BYJ2fkq' 'YJoF2FI3vyyqRzc2' --login_with_auth "Bearer foo"
iam-admin-get-user-platform-accounts-v3 '0O7FdsJP1G9tyBTf' --login_with_auth "Bearer foo"
iam-admin-list-all-distinct-platform-accounts-v3 'ERXdvgD1Qf7Ot2Dk' --login_with_auth "Bearer foo"
iam-admin-get-list-justice-platform-accounts 'Ut3yexZBRvxYnEBh' --login_with_auth "Bearer foo"
iam-admin-get-user-mapping 'XtAVxCd3meTrT7cF' '9oVCh89wNOkKYssV' --login_with_auth "Bearer foo"
iam-admin-create-justice-user 'ejcL3kR3hCGNgaJm' 'uALlMQl9RLrthbfp' --login_with_auth "Bearer foo"
iam-admin-link-platform-account '{"platformId": "0VgweLlT2sY3SsTn", "platformUserId": "DQY7kKU2u06Q4veu"}' 'jxtyQENvJrBCqeg6' --login_with_auth "Bearer foo"
iam-admin-get-user-link-histories-v3 '7d4RWOqO4U0bitNQ' 'LzwRoWnR0AbkCPY7' --login_with_auth "Bearer foo"
iam-admin-platform-unlink-all-v3 '0FmvviVIBbcujF8V' 'k5qb8NhWWwaxyMch' --login_with_auth "Bearer foo"
iam-admin-platform-link-v3 'kt8l5IPSrwrJl7wY' 'IVw13NCo9yXlbQ52' 'FTHTCj6SEAzT7TOp' --login_with_auth "Bearer foo"
iam-admin-delete-user-linking-restriction-by-platform-idv3 'yiuvvQUm29Iacq4X' 'RLaA643nTMtXSAye' --login_with_auth "Bearer foo"
iam-admin-get-third-party-platform-token-link-status-v3 'jnny0Ju13b6o5uB2' 'XM6IHy7EEvHyLmcv' 'rZZOdwe1x8RjU6Bi' --login_with_auth "Bearer foo"
iam-admin-get-user-single-platform-account '8JXE52sUBBq2SimQ' 'QoLbe5YOJvxGRxUz' --login_with_auth "Bearer foo"
iam-admin-delete-user-roles-v3 '["rTwagH7BMT1IZKTd", "NFVBQ1crBXAupATO", "8uXsqVpdiWo8SjDA"]' 'M0Riw8wLYW3n4F3L' --login_with_auth "Bearer foo"
iam-admin-save-user-role-v3 '[{"namespace": "D1EDwBXw5uBYeQZO", "roleId": "zATNSV9E9yyNb7ya"}, {"namespace": "LXzAVYymOuhCkZu4", "roleId": "htrsf8eIFSovTGXa"}, {"namespace": "Msq8ePN1oco2jx8U", "roleId": "pe8SjMvpqM8puggO"}]' 'EdG47gD5i2Ni6AnW' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v3 'n3NdEPhNHSH7eKDf' 'RcngEpTnRUQr3RLO' --login_with_auth "Bearer foo"
iam-admin-delete-user-role-v3 'M1vEx4gqDY6jwyKR' 'xhkLe5zohg9s9utR' --login_with_auth "Bearer foo"
iam-admin-update-user-status-v3 '{"enabled": true, "reason": "7CnsZe32hqEcB1Ex"}' 'YMBb3ckvoaJYdMqG' --login_with_auth "Bearer foo"
iam-admin-trustly-update-user-identity '{"emailAddress": "egcg3eRvBZXN3cjI", "password": "XmFWRJnj8xN7HDPT"}' 'UEDPN1Kb4UTPWDXT' --login_with_auth "Bearer foo"
iam-admin-verify-user-without-verification-code-v3 'Sb55g8LSTs7Nf95l' --login_with_auth "Bearer foo"
iam-admin-update-client-secret-v3 '{"newSecret": "GlPrf6obIdnI6Ag7"}' 'eUYcYJ4QzXCmqr6g' --login_with_auth "Bearer foo"
iam-admin-check-third-party-login-platform-availability-v3 'mPGaHP5SVPvRLiDi' --login_with_auth "Bearer foo"
iam-admin-get-roles-v3 --login_with_auth "Bearer foo"
iam-admin-create-role-v3 '{"adminRole": true, "deletable": false, "isWildcard": true, "managers": [{"displayName": "NHb6Lx8eq8SGNwEQ", "namespace": "O8dYXvBSYvJBwb6C", "userId": "jZUMRf2VJetWsokv"}, {"displayName": "x3BHuTEczr9KjQ3t", "namespace": "tz8MTBt1xk9IyssS", "userId": "A8nP5PQjpzk2Tb7i"}, {"displayName": "YdmNZWosrsVBPZ64", "namespace": "j0HUONscofwYLQcD", "userId": "vkaEIIPoJT83zEGX"}], "members": [{"displayName": "mVBZLyrH9J7Boysm", "namespace": "aORLkP5hc2Fh04JT", "userId": "sqDTynCewqJligLl"}, {"displayName": "RxOelKykICRxF6Ht", "namespace": "lER2txs4qrNARATn", "userId": "6KXOutlYBbLhL8KX"}, {"displayName": "x25FZfQIodVBqQsB", "namespace": "pCJBIXLGYcwWVRK6", "userId": "UKk5ozrXA4HZHNyq"}], "permissions": [{"action": 85, "resource": "odanhR1Zrm3thUvV", "schedAction": 11, "schedCron": "7yfkycLSVdleSaAy", "schedRange": ["lsmLYe2phYOgT5kD", "TyPl3dKF7NXEjrJM", "ki8jvc3P8Gwjg3IO"]}, {"action": 69, "resource": "iRhVZ2DeoODXMzLS", "schedAction": 35, "schedCron": "j5vhzgsJwex7wq8Z", "schedRange": ["PlXNaUNgdY2vfJuj", "e5cPnmGjTvYa5Pqx", "1K7qcAoijBPAp6EP"]}, {"action": 3, "resource": "jNjLOtNQts2yxf6M", "schedAction": 77, "schedCron": "w3NeVG4DJi9DaMrc", "schedRange": ["0WFgKjE945x2CPVY", "YG9WvoGmAmvaVV5Y", "fxnUNcwjr7gSGhnf"]}], "roleName": "uF4WZiQVICVpWd3U"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v3 'M08gMXhdf3juXW4J' --login_with_auth "Bearer foo"
iam-admin-delete-role-v3 'prIb3CJCAtvSG8Cf' --login_with_auth "Bearer foo"
iam-admin-update-role-v3 '{"deletable": false, "isWildcard": false, "roleName": "9dzOJDGCTHIOFjeX"}' 'bsSgR43kIDzxBwqR' --login_with_auth "Bearer foo"
iam-admin-get-role-admin-status-v3 'JTzrHNZWUsq5lQo2' --login_with_auth "Bearer foo"
iam-admin-update-admin-role-status-v3 'jy29EJigqYhyVhUR' --login_with_auth "Bearer foo"
iam-admin-remove-role-admin-v3 'x1yPeczRpdk0HATG' --login_with_auth "Bearer foo"
iam-admin-get-role-managers-v3 'ylx2JG2KNGfhzfCT' --login_with_auth "Bearer foo"
iam-admin-add-role-managers-v3 '{"managers": [{"displayName": "xxrsRRLee3TcJ7DQ", "namespace": "Ii45aCDHN9mVug2z", "userId": "kVf6KgpKOcn3tMD9"}, {"displayName": "UT67bOwugFDa6wUQ", "namespace": "vehKqwCh86XmRkCE", "userId": "cfHDCdl59Wp9A3tX"}, {"displayName": "Gve6DdK6uvg8f2cI", "namespace": "oByk9fxtvsgeAxo5", "userId": "7nKAbZpsbJ4Iu5KJ"}]}' '0ynxGBlacDCdFe8A' --login_with_auth "Bearer foo"
iam-admin-remove-role-managers-v3 '{"managers": [{"displayName": "TUqVxcSthrpnMUBs", "namespace": "nUfuQIcSbUt5UGkI", "userId": "nFGpuUsdtq4dOwNE"}, {"displayName": "SzCEW9dUVhZjLftC", "namespace": "3sCS8CpLCqPD9CeD", "userId": "EdCnnL6Kt1Bjj3b8"}, {"displayName": "QM8Rr45ULqXQgvwD", "namespace": "3PsKDJiWxQBwaS7r", "userId": "DBf2S54phbdyGDt4"}]}' '7f9GWRlE9hqz6rjD' --login_with_auth "Bearer foo"
iam-admin-get-role-members-v3 'No4rhjxUdMM83Wek' --login_with_auth "Bearer foo"
iam-admin-add-role-members-v3 '{"members": [{"displayName": "qfWv04vvn9bk5qr8", "namespace": "qs2mqtnGAqXUjNyp", "userId": "F6MMqWpdEJsPoaIb"}, {"displayName": "Yz8cK5jlpJdre5ur", "namespace": "6yvWJDdvM7T7PX2v", "userId": "amIRZHzsIYOCUoiC"}, {"displayName": "XNjrdQL2jdx1eIba", "namespace": "1sB0HsJ06DzfbzRY", "userId": "t4OVUyumBeIqdQGZ"}]}' 'C5kM03HHijsQRj7N' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v3 '{"permissions": [{"action": 78, "resource": "IAjmsonjj0ZR50BQ", "schedAction": 25, "schedCron": "U6aFD3O2kXQSc58z", "schedRange": ["gZVl4gIF7v3qbZu9", "M3OxqVAT4H1lRZ9Z", "1JBrHRzEOtIxzPqb"]}, {"action": 59, "resource": "n73m0jiaDH86d9rs", "schedAction": 75, "schedCron": "y0X48eT7Mluexk87", "schedRange": ["b9Z5BTsEA3EdmW8s", "aabP4xRowfNojzPX", "I2v0prR3OEey0MkZ"]}, {"action": 45, "resource": "u9FHuv1M3qfch4Sq", "schedAction": 71, "schedCron": "GEg5fNzBVrjo3g8C", "schedRange": ["fRwtyl1HeT7VEPgG", "40QyXzsOzgck078I", "ghoQBp2mWAOYkscz"]}]}' 'xBS0OBCa2vWadLmQ' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v3 '{"permissions": [{"action": 40, "resource": "Yo1HQYTFzwdOMdup", "schedAction": 47, "schedCron": "W8dLTCBfGUdVEdvd", "schedRange": ["QL7sVwcZ2PofaJoS", "qtrEOqxH46fRTSZo", "DdT0fefo74eg3Nt2"]}, {"action": 5, "resource": "h4dpPRMDbUXBWTbp", "schedAction": 54, "schedCron": "9LzNeJnBurh54CWb", "schedRange": ["Yb0Pebyt8b4DGscj", "wrizsFUgYwbaLvqv", "Q2NbmDITuymTBjn3"]}, {"action": 6, "resource": "cGp9Rx2RfcRhXpme", "schedAction": 8, "schedCron": "6115Kg9U8vrQJXQx", "schedRange": ["oIbVi2CLEk277Ivj", "j1A647XQ3koaAfZI", "im0sFPm1YN27bojD"]}]}' 'VaZLpx4kEWYkO6Kr' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v3 '["KUMhJrASBh61hmWK", "SSrF35anDGvur19V", "18oIrUKXttgAI2Qd"]' 'WJFLmoPEgd8EMspO' --login_with_auth "Bearer foo"
iam-admin-delete-role-permission-v3 '38' 'EHvVevhISjbtBJUK' '5fE3OufPSX3PdOU2' --login_with_auth "Bearer foo"
iam-admin-get-my-user-v3 --login_with_auth "Bearer foo"
iam-user-authentication-v3 'V9yw94oa8UJ34TIe' 'dV3HyoX4VnO2LpBU' '08wfnlHBXFIqFUmg' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-authentication-with-platform-link-v3 'USMM5au8GJT0mkVP' 'I6zUtf3QaJPGrTNc' 'XXTUIggoH89QNmI1' '7UDb19R6H7r1ta3m' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v3 '7jK5pxe82pgFiAS6' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-request-one-time-linking-code-v3 'piIzmc8rKrKEPGSA' --login_with_auth "Bearer foo"
iam-validate-one-time-linking-code-v3 'cong6eNERUf8kjci' --login_with_auth "Bearer foo"
iam-request-token-by-one-time-link-code-response-v3 '1Ctccv9Gv4tOcbnu' 'Cqf0lm6WBkIzjoSV' --login_with_auth "Bearer foo"
iam-get-country-location-v3 --login_with_auth "Bearer foo"
iam-logout --login_with_auth "Bearer foo"
iam-request-token-exchange-code-v3 '31tvmMB6jzrpRGES' --login_with_auth "Bearer foo"
iam-admin-retrieve-user-third-party-platform-token-v3 'mooHiCV4GUOnXpap' 'XQGRakUbcG7PcR4e' --login_with_auth "Bearer foo"
iam-revoke-user-v3 'iU3Idi55jNrGNT2V' --login_with_auth "Bearer foo"
iam-authorize-v3 'HTKuIT5FwwHj0Ur5' 'code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-introspection-v3 'GTTD81xhNP4t6kYB' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-jwksv3 --login_with_auth "Bearer foo"
iam-send-mfa-authentication-code 'UjyXAn3bWQF6QcAi' 'JpXIrgroixptZhck' 'UTGkcBOE4qMcH1Ky' --login_with_auth "Bearer foo"
iam-change2fa-method 'i8ZFvGcV8DY0XOkD' 'stxZcY1HgAnZV4IO' --login_with_auth "Bearer foo"
iam-verify2fa-code 'glVLqb9lGAJUg21L' 't7JwgwMUSuC3Bajy' '3BcEMCtQs2FcEcvV' 'true' --login_with_auth "Bearer foo"
iam-retrieve-user-third-party-platform-token-v3 'FPBujX0geYCpGJM4' 'sqsPNJMiZXXOFwmG' --login_with_auth "Bearer foo"
iam-auth-code-request-v3 'WAvNF0Z0GkwxUNYy' 'NwGiKrknH0Y5mrQg' --login_with_auth "Bearer foo"
iam-platform-token-grant-v3 'LC6D2qsFiQHglUQM' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-revocation-list-v3 --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-revocation-v3 'Zi5WjMZfOadpgegC' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-simultaneous-login-v3 'epicgames' 'jTdi1Ehr8OtqpNJ9' --login_with_auth "Bearer foo"
iam-token-grant-v3 'authorization_code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-verify-token-v3 '8TuNy4ejmVA3vMCs' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-platform-authentication-v3 'GyPd12B8QNUz0hFF' 'NbH6j2W4roZM2UKA' --login_with_auth "Bearer foo"
iam-platform-token-refresh-v3 'XEEsL5D0oiFchQnV' 'eq3g2AB2WIRUQmau' --login_with_auth "Bearer foo"
iam-public-get-input-validations --login_with_auth "Bearer foo"
iam-public-get-input-validation-by-field 'IY5HXCZ0W4XmWP0H' --login_with_auth "Bearer foo"
iam-public-get-country-age-restriction-v3 'zSdiylLhVYszm8xY' --login_with_auth "Bearer foo"
iam-public-get-config-value-v3 '33OQbumu2QHLyZNu' --login_with_auth "Bearer foo"
iam-public-get-country-list-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-public-v3 --login_with_auth "Bearer foo"
iam-retrieve-active-oidc-clients-public-v3 'ysyM4OfCzdQCXMAW' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv3 'nf87YPNOe9Eevf1f' 'hMg1E2k7QLFrVgtX' --login_with_auth "Bearer foo"
iam-public-get-async-status '7y0fPOieDCow2zXy' --login_with_auth "Bearer foo"
iam-public-search-user-v3 --login_with_auth "Bearer foo"
iam-public-create-user-v3 '{"PasswordMD5Sum": "FFVpM87yqEwEacQM", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "3v8yha4pd5A7MYcp", "policyId": "BD6lKNb8RxvN2u5J", "policyVersionId": "7baOeLH19fqBwNbN"}, {"isAccepted": false, "localizedPolicyVersionId": "iIsxmsLBPBJuNLnW", "policyId": "RrtW870qD88ZcduZ", "policyVersionId": "Se7W20UZcDaiq0nE"}, {"isAccepted": true, "localizedPolicyVersionId": "7PyhqFJkDClOsKmf", "policyId": "sgJdmzsDPsWh1k0c", "policyVersionId": "Q08NG6dX2TZkil67"}], "authType": "kRngoUa83ECh1gqP", "code": "eS193TNNzot3sVli", "country": "3GN2XTrFibRAhzzE", "dateOfBirth": "WzWlTY70qdgJRvpZ", "displayName": "rSpWX3KEe2BjV00R", "emailAddress": "eCXFffjJJxlgjzIh", "password": "pgOoIOD74V21HWDA", "reachMinimumAge": false, "uniqueDisplayName": "9jNQN1di1ldhOh6H"}' --login_with_auth "Bearer foo"
iam-check-user-availability 'vjnYuV7NfC4A2ODi' 'Zhbfb8QqCyK1XH9D' --login_with_auth "Bearer foo"
iam-public-bulk-get-users '{"userIds": ["6vl5eFdFfgK46GjC", "WaP8huTmnq3FGQn3", "Ahu5wxq6oJq4mChm"]}' --login_with_auth "Bearer foo"
iam-public-send-registration-code '{"emailAddress": "QHQhO9IKBXDFQfXF", "languageTag": "D58sG6uDhFYlrzJB"}' --login_with_auth "Bearer foo"
iam-public-verify-registration-code '{"code": "YSeMuJfQecutjS02", "emailAddress": "9BiJWOG1m7MKclr5"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v3 '{"emailAddress": "igjNTVItrH2X78hx", "languageTag": "JgaVfw5Vnyq8OzTE"}' --login_with_auth "Bearer foo"
iam-public-validate-user-input '{"displayName": "89WDNoMcOmbfJrCJ", "password": "QIj1haAosKglqaCX", "uniqueDisplayName": "E9ytpIO8btO3OwNE", "username": "GSW5TaW4to7QCY2N"}' --login_with_auth "Bearer foo"
iam-get-admin-invitation-v3 'GGvi9kg3rMIzNmhJ' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v3 '{"PasswordMD5Sum": "TNQjKlwjfJ3TJ2xV", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "erWbtwTX9gNRByjb", "policyId": "E8lOLAfTXKLzbrdd", "policyVersionId": "qcKLa7LevxNHOSEh"}, {"isAccepted": false, "localizedPolicyVersionId": "ZIp693lRwtc43atC", "policyId": "uCFxbfbz4aQERziP", "policyVersionId": "L4dHhOqG5KDdUvk0"}, {"isAccepted": true, "localizedPolicyVersionId": "sSck3ggZWJlSlCQM", "policyId": "Dji329PfVrvMEPtp", "policyVersionId": "sSNcpK1QkB2Sy8Ww"}], "authType": "79LVeVskqeUB7RSa", "code": "yqGFguhh3bvadRth", "country": "dbVApebRA09rW8i8", "dateOfBirth": "krFWJhe03coRFok5", "displayName": "d3AyGrZO8GuoXNSo", "emailAddress": "VEBG7VbBPUWipz9C", "password": "05YabFX4FCK5ucTF", "reachMinimumAge": true, "uniqueDisplayName": "3rqBmILhtWm8RQvR"}' 'UbUDSiefGEdLucrt' --login_with_auth "Bearer foo"
iam-update-user-v3 '{"avatarUrl": "O2gCQD057DrDlgC2", "country": "nzS9SiGUjVAw4v3q", "dateOfBirth": "6JRHcn7KaoCEkRdo", "displayName": "6qHYIZWnXqQ1oHFJ", "languageTag": "9Q0vqsL9SomqWsGA", "uniqueDisplayName": "76yxi0QzZWfmP2sx", "userName": "0KO5bEJaPnAFjsod"}' --login_with_auth "Bearer foo"
iam-public-partial-update-user-v3 '{"avatarUrl": "yJQVVBrShGbIIuqK", "country": "8C403HgoXCR6XOMX", "dateOfBirth": "wKdfqk8T4QHK30EX", "displayName": "0FclpDl5HsuracO5", "languageTag": "MnjnxD1OXkxShFVQ", "uniqueDisplayName": "TRekLfjmy8zosRCR", "userName": "gVwbrQKmb01yA7U7"}' --login_with_auth "Bearer foo"
iam-public-send-verification-code-v3 '{"context": "dGMjupZkZQY8CNyT", "emailAddress": "4k3DIbfT22G5NpE1", "languageTag": "30YWSgxpKWtdtdtV"}' --login_with_auth "Bearer foo"
iam-public-user-verification-v3 '{"code": "W9anENmxb9e7vXZV", "contactType": "3ig8Jg5VByeI3ycM", "languageTag": "cYYBixKJXCISQdwe", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v3 '{"code": "cxKs4nlf1MfqUZXk", "country": "jHvcUOTlxNf09pef", "dateOfBirth": "gFIiJssShBKsQjXv", "displayName": "fQgQDt6ce8NDMErA", "emailAddress": "82FrR1GSogkewIzT", "password": "OqKkcjRh3l2gAJOT", "uniqueDisplayName": "Cbx7J3gNLIlTk3Bp", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-verify-headless-account-v3 '{"emailAddress": "SZns5owBhoUg4LsG", "password": "P6KLPXkvUv2XiXaB"}' --login_with_auth "Bearer foo"
iam-public-update-password-v3 '{"languageTag": "zsmaxjTZPlLitytG", "mfaToken": "ka7Kv5TacQKF4OlR", "newPassword": "GdmXxETLEQrr3KCA", "oldPassword": "V9alq3hK1G4kKooS"}' --login_with_auth "Bearer foo"
iam-public-create-justice-user 'NNUZuiynZ64IwncZ' --login_with_auth "Bearer foo"
iam-public-platform-link-v3 'Pk82GF3eTC0vzZUD' 'j9dzGgGVxo9OHgfH' --login_with_auth "Bearer foo"
iam-public-platform-unlink-all-v3 'umyfuBNisecYbcOp' --login_with_auth "Bearer foo"
iam-public-force-platform-link-v3 'R45VDlvSc0Mr7Imw' 'CwGqOf0bNs97KvKy' --login_with_auth "Bearer foo"
iam-public-web-link-platform 'j3MqS7Dcmtfh50eO' --login_with_auth "Bearer foo"
iam-public-web-link-platform-establish 'bbrmgjhWK0x0ZidA' 'J1CU1eD1La16Bw3J' --login_with_auth "Bearer foo"
iam-public-process-web-link-platform-v3 'bUnUDh5yGjjv4Mwr' 'v2vancmR6Z7rb21A' --login_with_auth "Bearer foo"
iam-public-get-users-platform-infos-v3 '{"platformId": "2E9pX0BWCMqPsRk5", "userIds": ["htdM5T3fDSrSHrko", "qv2mM6soMaTvQq2a", "9YdFNtRVSO0js0hG"]}' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"clientId": "9xmSnzd7zgUxAogc", "code": "nGkXk17QPkJHRhmL", "emailAddress": "KQuQVFSKiXl8G2uf", "languageTag": "6E8EajXLSAS8MKMa", "newPassword": "xQ1QyJCpKedhuzI7"}' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 'G9NCKKXu1bqI2M5P' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 'mXfKnQ7BYGjCUDMO' --login_with_auth "Bearer foo"
iam-public-get-user-information-v3 'rbmoRvWnfmGFy0eU' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 'oOBd90h9EDqSTOfo' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 'NewWjwMWDKEt6Jhb' --login_with_auth "Bearer foo"
iam-public-list-justice-platform-accounts-v3 'J0fwTDaq6b5RpMwh' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "WPtndriXU9loOxpm", "platformUserId": "EuwDVc12r0DVUGgG"}' 'HkapTCafFMdvYiCB' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["uzUUwyI6Vtd4v9k4", "fv3kMiuQ3DhsKLxj", "t5srPFxBgpFtDBmT"], "requestId": "LH9kP9U53z6joBAh"}' 'AlJGI2YYb6ajBjgq' --login_with_auth "Bearer foo"
iam-public-get-publisher-user-v3 '6eY4PBNHKPx62tHx' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 'Db06ZFy3uglSp2Ux' 'vF2uLXWilRD7HD6L' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 'CgdFxRGj00RT6Lvc' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-public-get-link-headless-account-to-my-account-conflict-v3 'nGMJbJIYLssMvy9g' --login_with_auth "Bearer foo"
iam-link-headless-account-to-my-account-v3 '{"chosenNamespaces": ["kfTMRrXVRcAVRDX6", "gmDfNfPGYYSTunMg", "t3C8hEguCqlMHiQN"], "oneTimeLinkCode": "3HWJw9zIWsiP2JQ2"}' --login_with_auth "Bearer foo"
iam-public-send-verification-link-v3 '{"languageTag": "4meDrwEuTyM2qohg"}' --login_with_auth "Bearer foo"
iam-public-verify-user-by-link-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler 'lzO8AEl6A9sh2x2u' 'r2ccp7R7OqPqIjS4' --login_with_auth "Bearer foo"
iam-login-sso-client 'i0N9ytb3c8pVZ8Gl' --login_with_auth "Bearer foo"
iam-logout-sso-client 'U8962e6gtn5pUARJ' --login_with_auth "Bearer foo"
iam-request-target-token-response-v3 'M1T8QwMNOAzXmyHE' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-admin-list-invitation-histories-v4 --login_with_auth "Bearer foo"
iam-admin-get-devices-by-user-v4 --login_with_auth "Bearer foo"
iam-admin-get-banned-devices-v4 --login_with_auth "Bearer foo"
iam-admin-get-user-device-bans-v4 'V4g9P6a280S5RNB5' --login_with_auth "Bearer foo"
iam-admin-ban-device-v4 '{"comment": "dVCsB7xL4axSPgPC", "deviceId": "iwLxCFLDixZwVtt3", "deviceType": "RVTl0tR00oQgcHdG", "enabled": true, "endDate": "K3x76U1EIcklttmr", "ext": {"pgF5szl0sMY8es36": {}, "r1FgR70eNLHkVrEF": {}, "d8xArWJuCAIfNBSH": {}}, "reason": "gpFNw9K9pmAIc6VS"}' --login_with_auth "Bearer foo"
iam-admin-get-device-ban-v4 'fE9nbE2PMv12ZSRJ' --login_with_auth "Bearer foo"
iam-admin-update-device-ban-v4 '{"enabled": false}' 'xakPt7IYzaZUTmvs' --login_with_auth "Bearer foo"
iam-admin-generate-report-v4 'EzLPnnGsnfmBerp8' --login_with_auth "Bearer foo"
iam-admin-get-device-types-v4 --login_with_auth "Bearer foo"
iam-admin-get-device-bans-v4 '4qjwzWpCF1vyamjs' --login_with_auth "Bearer foo"
iam-admin-decrypt-device-v4 'EzwtLPxK1os4qR8L' --login_with_auth "Bearer foo"
iam-admin-unban-device-v4 'aQzEb39sZTdFfC8x' --login_with_auth "Bearer foo"
iam-admin-get-users-by-device-v4 '5aHLsXHlm1RJTTy9' --login_with_auth "Bearer foo"
iam-admin-get-namespace-invitation-history-v4 --login_with_auth "Bearer foo"
iam-admin-get-namespace-user-invitation-history-v4 --login_with_auth "Bearer foo"
iam-admin-create-test-users-v4 '{"count": 73}' --login_with_auth "Bearer foo"
iam-admin-create-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "ihZkvFKfSHQh8I9x", "policyId": "k3sFl0cbuCRM69XK", "policyVersionId": "kLwioRaKnWhlh80B"}, {"isAccepted": false, "localizedPolicyVersionId": "df9qswSlpCI8Dhjl", "policyId": "xUyrs3OSesE5p0Dw", "policyVersionId": "Uj2HKUvPYUcQBxMS"}, {"isAccepted": false, "localizedPolicyVersionId": "Co0vdCk8so6JSaZA", "policyId": "IadKDEZywonA2SrE", "policyVersionId": "dN2tmGuX6r0gBVUU"}], "authType": "EMAILPASSWD", "code": "mkufBpWVxIK9D2bT", "country": "cgaKoccaSwWcZmzC", "dateOfBirth": "WGI1cIQcPWAShIhi", "displayName": "eSKUf3zKbyQk2vQT", "emailAddress": "YX1xsth28NZZgsXy", "password": "cuQNGIDeHlf6IcX1", "passwordMD5Sum": "K9JrK6Or2xx7rLwr", "reachMinimumAge": true, "uniqueDisplayName": "oWiywnxuDLLuIaSx", "username": "oloIH1gBCWVFrvls"}' --login_with_auth "Bearer foo"
iam-admin-bulk-update-user-account-type-v4 '{"testAccount": false, "userIds": ["wosKhDlLfTKxpVOX", "vGSrdkqddI3ezqu6", "FB0sL2xt6fX9j7rh"]}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["ZCAlDlVKBsLZiBRX", "szE7CL1cQCSoqHvH", "7g63cOx6yrIw37pK"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "OLrF5i3gr3Cc4M2O", "country": "7NrTQO7KLdZDGwqx", "dateOfBirth": "7T3l1ut2oyolliYs", "displayName": "TJUmpscwLcUml3Ku", "languageTag": "oMKh7tprnacA34xm", "skipLoginQueue": true, "uniqueDisplayName": "jFLgKR4LjEWhOScv", "userName": "tQ92iD02YMvEUNfo"}' 'L7JCcMo7GxxXdbYC' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "RexPekTsQxMTfaSo", "emailAddress": "t7aohFYy4VxwHIJ9"}' 'gzxqAw4vBGQAeh0V' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 'TiTP4PSrXUS6jYI9' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 'lsQFD43Df5qUZOFz' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["pFd6b5Jc5TETHcup", "8GG0VCMTFJ6svTyo", "9RHget5hzB52BDFo"], "roleId": "pxUwkMuSqQnKzDgD"}' 'AtqE3kuybwTQFYEJ' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["jIYwqfSRy8GgVk77", "fd1GS5YkyhAiAItn", "WUmD225fp1egsx3E"], "roleId": "rheNwqd5priclNNq"}' 'LyrlzrJ4QHbfnAdt' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["kujxHff7n1yaNCcj", "gFhS0URBhl0L5FCb", "On46W2B2uPQLrt2t"], "roleId": "6bVpCgKvPXSDufmK"}' 'h783cV54JsVBRB0r' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "DgykA8zBJX0rkOHU"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 'kY5aSlqhYoSXbn6l' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 '5xAzc1nc3eFm950d' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "fE2g6jXV7oai2oDm"}' '9FaP0HJ98tE4UyoQ' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 13, "resource": "e3nt7t9ztprSfW9O", "schedAction": 42, "schedCron": "kQ7YBhsOuJ0ypkkt", "schedRange": ["2G4eFh2YNsdoxpLT", "BM9Q8t829Ido1Jyv", "eSRiBq23kyH9jQbH"]}, {"action": 99, "resource": "ABJ4RwH3EdKmYtbq", "schedAction": 87, "schedCron": "IKBc7OYTylFRAJKy", "schedRange": ["SnC0cfPl3Z2zSBbs", "4PAV72u8AxE2IQeo", "xYV4UcYzswAGpXqQ"]}, {"action": 48, "resource": "geCdiXu3iNvn7vLZ", "schedAction": 35, "schedCron": "h6alhJNGZF07lsPP", "schedRange": ["5OfHbXzWnVO2U4uy", "zZo1rj0ZrLQjk4Vo", "YfIksth24cZBpdDF"]}]}' 'fvzeU5iqhx6zv7EU' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 89, "resource": "wkbdOsyxX1tfW488", "schedAction": 28, "schedCron": "mmfwUZLZZS7snx0Q", "schedRange": ["2Gd8m7Y3wiNloJfe", "y3HXL6SjljNPTXA3", "qbg55SyienCODZ0m"]}, {"action": 28, "resource": "Im5xBoIi99ctgFXa", "schedAction": 37, "schedCron": "xWKCU1XN4gl7yHvE", "schedRange": ["qpJSrDXVwCkhOQ16", "1TFjROYJm75VIuCO", "Ckt2W1DfI8QtgODk"]}, {"action": 75, "resource": "QvRa7CDRTcsAHzD3", "schedAction": 7, "schedCron": "NV1VaZTkbbuWiiA4", "schedRange": ["UTDgS2SVEo5M80LL", "bku9GYH4ijqOVM50", "tCqkZfsSxAbDJ7sH"]}]}' 'CLup8pmEosOXglQw' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["wdeLVpmXqRwVjc3W", "2ANmE3VVsQ1fm9EU", "diaRjuLsKZoqnpKw"]' 'hpZVdw5UMa8ymxtE' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'FLwELCY2vIddlxnA' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["1VynioJcAPwVHUGc", "s1ACMvoY4jWH9dFm", "OHW0j9suukPE4JwQ"], "namespace": "ONQ2vCbMn0Oia336", "userId": "uiiMTAductvUfVwL"}' 'ahtRedh1SiZlOpIQ' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "8GL7jBF1R5OexAPz", "userId": "CG6ZKQClGc1636nb"}' 'fM3J9G40Y62bCo94' --login_with_auth "Bearer foo"
iam-admin-invite-user-new-v4 '{"assignedNamespaces": ["1ALznQuHVskfCjUK", "8GeX4Q0B2Cj0oOmB", "mXu1KiTTiz7yrIvQ"], "emailAddresses": ["j2isN7bRwcr16lW5", "YwgZpjlMMtPWg821", "7m7qNkQiKp2oac8Q"], "isAdmin": false, "isNewStudio": true, "languageTag": "dtrfq6ECDD6OGkuL", "namespace": "s9gNpNon6DKW9A6A", "roleId": "mnQTNFidImWONTvC"}' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "PMGLdbYEknHPKrZ7", "country": "TiNBE0HRsE0GHDOF", "dateOfBirth": "jrfqJcyxT2a7fCFA", "displayName": "UzLELiM573TdtWjf", "languageTag": "VciuLnLsBKGsALPu", "skipLoginQueue": true, "uniqueDisplayName": "4SrigIxAhbFMZfxa", "userName": "znlDQbzTiFrQB1yU"}' --login_with_auth "Bearer foo"
iam-admin-disable-my-authenticator-v4 '{"mfaToken": "onirH4URx3NkKQBY"}' --login_with_auth "Bearer foo"
iam-admin-enable-my-authenticator-v4 'rlUaMiFEWUT8cAFO' --login_with_auth "Bearer foo"
iam-admin-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-backup-codes-v4 '{"mfaToken": "5zEw8GENEJYPKxxO"}' --login_with_auth "Bearer foo"
iam-admin-get-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-generate-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-enable-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-challenge-my-mfav4 --login_with_auth "Bearer foo"
iam-admin-send-my-mfa-email-code-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-email-v4 '{"mfaToken": "w7xNQ98IEbc9YITN"}' --login_with_auth "Bearer foo"
iam-admin-enable-my-email-v4 '98j4P2AGeidXRRnI' --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 'AJfKVjOn6rtILNJV' --login_with_auth "Bearer foo"
iam-admin-get-my-own-mfa-status-v4 --login_with_auth "Bearer foo"
iam-authentication-with-platform-link-v4 'v2DLLUyBt5hDs45s' 'iG30Lv9iGa5mkZjn' 'RXVcg6AByNpBo2JY' 'kwLdmR97u9MVUii4' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v4 'KpYcb1AUsESaBOTH' --login_with_auth "Bearer foo"
iam-verify2fa-code-v4 'nbX9tC9PQlFAGbMt' 'EybfcAl0mnsAkRT2' 'k0AzdgIunRkTxsGd' 'true' --login_with_auth "Bearer foo"
iam-platform-token-grant-v4 '1IAJQpb6r8ZeaSHw' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-simultaneous-login-v4 'steam' 'wh59RGSbBMh7jpsz' --login_with_auth "Bearer foo"
iam-token-grant-v4 'password' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-request-target-token-response-v4 'ZyF9fJBJkSOrF9Dg' --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v4 '{"platformUserIds": ["4FcDwBGyBiHewZkw", "EeuzBBRSknxyWkZO", "buvig8sMuss76ezT"]}' 'rsDZNYUV48Oh6I45' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "vUtPYONZdFk75lkj", "policyId": "QNHrjaboGomguUqe", "policyVersionId": "uZh5qtrRbNnGejdT"}, {"isAccepted": false, "localizedPolicyVersionId": "vZgN5hshSe5YmZXK", "policyId": "EQLkM6o3eGSP4Htm", "policyVersionId": "r90TqGf0OyqJ9ibJ"}, {"isAccepted": false, "localizedPolicyVersionId": "mRgoxNwp1lGkYoq8", "policyId": "HP1TM0tefVQPWX1N", "policyVersionId": "PO5Wn7rNG8rGp7Fa"}], "authType": "EMAILPASSWD", "country": "S09VyQB1vR1mx6K1", "dateOfBirth": "7GL1CrO4ZuoGZSxT", "displayName": "zm8oMSPIHPtqzIWI", "emailAddress": "zg8pbjnt1iBV8Dpb", "password": "jGts4UZDTfhAyZKh", "passwordMD5Sum": "qilty9NVlgxUmnfd", "uniqueDisplayName": "OAmu1dX1NqD20RUv", "username": "vYeJZw6QZFN7wFCn", "verified": true}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "pvNesGiVnt9p2to7", "policyId": "Yja1soDE1K0SvGrM", "policyVersionId": "YwPmPXC2LfL2m5rP"}, {"isAccepted": false, "localizedPolicyVersionId": "A20t6foPPH94SUin", "policyId": "Y5diUlqgvY7dPPya", "policyVersionId": "hppgxJhk4EdTZ000"}, {"isAccepted": true, "localizedPolicyVersionId": "D7ZZx1iefATWcDSq", "policyId": "GYRMdz07xEJ40eps", "policyVersionId": "sgJJC3CX0hpB1ZGM"}], "authType": "EMAILPASSWD", "code": "o5DSozCuFsrBMtoO", "country": "eLfMCYxSeeJOlxa3", "dateOfBirth": "95rghZwGhdZJkkGh", "displayName": "YvXYMIyaEMEqOpwe", "emailAddress": "tb82b96rsH73hRfD", "password": "gl29GWKpItMt4Gsz", "passwordMD5Sum": "RufkDFLYyNBPlMrk", "reachMinimumAge": true, "uniqueDisplayName": "5HlrIfMAvvpkAHRJ", "username": "HZyfrXZmiJX4CjKC"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "6ve29lqqtcLJW9eT", "policyId": "JvKNDFrx6LabyDnq", "policyVersionId": "XjXKPIcxh0x7T6RQ"}, {"isAccepted": false, "localizedPolicyVersionId": "tovSMFw8X4zxbdfX", "policyId": "gunt1oMNZ68eovHS", "policyVersionId": "H3xV3URIRVDYBd6h"}, {"isAccepted": true, "localizedPolicyVersionId": "AvgDXNrFEE4Jf4hQ", "policyId": "psLOcLtZw0efmEVc", "policyVersionId": "W7mxbS5UOoICxQMi"}], "authType": "EMAILPASSWD", "code": "JXPCWkX4Kpi8CJ88", "country": "aMPGFFAQZbfbmVTE", "dateOfBirth": "biRq5Juikmpat75r", "displayName": "VbN9ZBtzJ33tCwv8", "emailAddress": "H1f451FVZ630HNBY", "password": "ZSrz7pMjESLLMPKD", "passwordMD5Sum": "XLki6Oz5Bygt8Q0R", "reachMinimumAge": false, "uniqueDisplayName": "UdwEBRrHAWUFqToo", "username": "GGnPEgY0t7QQWl42"}' 'byOwXgKyPhXmcysa' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "e8HpWH4xiz3fWthJ", "country": "Su2pUIIuPLFAtcWh", "dateOfBirth": "jAP57QbWvSSp71zE", "displayName": "PPfmAQiqRRC2caqu", "languageTag": "MRtQOILcaDqUITBH", "uniqueDisplayName": "QR5ISNoFR3GUxdMu", "userName": "vmL0UBfwzaaeP3Wd"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "0Wrb8s3GW0CY0vAf", "emailAddress": "bq8xoCurq4lpHXrb"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "VBh60NUA2aKQwnXr", "country": "mi6ya8u4sQPvaf1A", "dateOfBirth": "cweR7tJW3MLMob1h", "displayName": "UnIzIpUM8KK1kGFN", "emailAddress": "0NUNGKxdlAUDFQuG", "password": "PzAuT7M6OBrNwioK", "reachMinimumAge": false, "uniqueDisplayName": "Sb4Vt2vKQ5vlCdI5", "username": "19Pf2iogwxM5DZM0", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"emailAddress": "a0YeyNBQWUHDBnBe", "password": "ePkqg6Zt1Lr5BlO8", "username": "K6LH4dSaa8XYHug5"}' --login_with_auth "Bearer foo"
iam-public-disable-my-authenticator-v4 '{"mfaToken": "1ZTogG0N7Hvnuq1k"}' --login_with_auth "Bearer foo"
iam-public-enable-my-authenticator-v4 'J1kpHcQtnIc9z70L' --login_with_auth "Bearer foo"
iam-public-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-public-disable-my-backup-codes-v4 '{"mfaToken": "FQMI0oZuEjY0rNBb"}' --login_with_auth "Bearer foo"
iam-public-get-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-generate-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-enable-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-challenge-my-mfav4 --login_with_auth "Bearer foo"
iam-public-remove-trusted-device-v4 --login_with_auth "Bearer foo"
iam-public-send-my-mfa-email-code-v4 --login_with_auth "Bearer foo"
iam-public-disable-my-email-v4 '{"mfaToken": "bB9txAvtRQvqJacX"}' --login_with_auth "Bearer foo"
iam-public-enable-my-email-v4 'R2Rf4noXDFaEUkPU' --login_with_auth "Bearer foo"
iam-public-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-public-make-factor-my-default-v4 'BnB0ZEJH3ebM71Tg' --login_with_auth "Bearer foo"
iam-public-get-my-own-mfa-status-v4 --login_with_auth "Bearer foo"
iam-public-get-user-public-info-by-user-id-v4 '922xiBgHSka0Pz7I' --login_with_auth "Bearer foo"
iam-public-invite-user-v4 '{"additionalData": "1WkIa0oZ1nXpW1l7", "emailAddress": "0pcZgIn4lPghHyME", "languageTag": "HBzArbyW10NkJFQx", "namespace": "uMHnfOlX6HYVEiae", "namespaceDisplayName": "reFCPJU2wEzUYUTm"}' --login_with_auth "Bearer foo"
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
echo "1..411"

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
    '{"modules": [{"docLink": "Z8JSMeNmRocp400R", "groups": [{"group": "Ze8Bzx9aGEI22BTC", "groupId": "Zs97TJI8GPrM24F3", "permissions": [{"allowedActions": [5, 9, 24], "resource": "lFgM62HQtgzQhO3n"}, {"allowedActions": [89, 2, 19], "resource": "WJ0ZuYSe3sI0x2hc"}, {"allowedActions": [77, 44, 40], "resource": "aN1Off5gRZZMW3hu"}]}, {"group": "AIzBPWBYKAEFTdlK", "groupId": "Nh6GTzKjsCqxx24Q", "permissions": [{"allowedActions": [80, 73, 3], "resource": "b5rTfiL2P3r1a8KI"}, {"allowedActions": [72, 70, 69], "resource": "pOLJW52uz3c8pz63"}, {"allowedActions": [78, 69, 54], "resource": "g4xXT5Ts4e0uR47O"}]}, {"group": "zUGHeBKtpvyRNgjZ", "groupId": "kdDppvEJiUiDGXgh", "permissions": [{"allowedActions": [56, 75, 50], "resource": "cLqtRZ93LuR8OEyI"}, {"allowedActions": [59, 9, 43], "resource": "aIbxM3Wev9pZQjWA"}, {"allowedActions": [81, 45, 41], "resource": "o8beVQvgeP9qOHaL"}]}], "module": "wYnXxrz7sLmP70Lx", "moduleId": "N0f3JA27Qz5SjzQf"}, {"docLink": "OLYu9O46OOzz9p57", "groups": [{"group": "qSpHerzO87cg7Tqt", "groupId": "MiQgi7Aj28qCRbww", "permissions": [{"allowedActions": [32, 5, 13], "resource": "ZS1NMkrnHs1Iyhwq"}, {"allowedActions": [21, 48, 21], "resource": "40MolIrnlkRVbcX4"}, {"allowedActions": [27, 66, 94], "resource": "IRMvXe6BiphIFe2b"}]}, {"group": "zr6qQw6fSESkM19O", "groupId": "PMBb12gpmShlmIt2", "permissions": [{"allowedActions": [27, 36, 10], "resource": "MeD4bD8gISE34yIA"}, {"allowedActions": [87, 53, 9], "resource": "acmZRXZm626POXWV"}, {"allowedActions": [18, 9, 86], "resource": "KP1mX0iYHXBU3Uk2"}]}, {"group": "tQm307IORTyHnLYD", "groupId": "AAg1YA4kZURmoGgx", "permissions": [{"allowedActions": [97, 60, 89], "resource": "Sdj8elbtHvDU91Dm"}, {"allowedActions": [68, 91, 51], "resource": "qrKWYOuITlYS2RYa"}, {"allowedActions": [59, 28, 99], "resource": "ceFU5GKmcEKp8AQw"}]}], "module": "qgJs6O0Qj0ccMkdz", "moduleId": "6zPz3BVHAqp4O9XS"}, {"docLink": "jap24esyjh6Wc3mi", "groups": [{"group": "gf2n6iQyr5cb5YL6", "groupId": "fwBiaVPmmn0T5uzl", "permissions": [{"allowedActions": [26, 54, 17], "resource": "luHv7Hssd05pHBJX"}, {"allowedActions": [25, 24, 40], "resource": "n8PZbYVD8RiaTsdD"}, {"allowedActions": [95, 6, 69], "resource": "3kSbTkHPMUvOAUXk"}]}, {"group": "w36cr2WJQqS7Tq4Y", "groupId": "IyZAFQ6lZfa2jdNv", "permissions": [{"allowedActions": [31, 30, 99], "resource": "j1ugjr8mPkr3tZ50"}, {"allowedActions": [76, 63, 44], "resource": "RSVy5M3rrkxu0U9h"}, {"allowedActions": [3, 14, 59], "resource": "GUQgci632w6LUrHu"}]}, {"group": "KBoNTpPQXDNHto74", "groupId": "GcmVf0fbCU9QdPuW", "permissions": [{"allowedActions": [10, 64, 79], "resource": "2hm0TqBQprHn3whP"}, {"allowedActions": [74, 61, 95], "resource": "xP23qstMuikKc6VN"}, {"allowedActions": [95, 35, 57], "resource": "70siWm3V9sirE0JO"}]}], "module": "QxWeHypqCWMDPRI2", "moduleId": "cCk8zHR8VyCC0EQw"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
$PYTHON -m $MODULE 'iam-admin-delete-config-permissions-by-group' \
    '{"groupId": "E0cXokXbwKDtVmrY", "moduleId": "Qu7hZvHfiT9s9pK8"}' \
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
    '[{"field": "HuUY1QQHQ0NCEddJ", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["01vD7lNLxlpvqaB9", "P9GaukfCEIeSBLhT", "fzigzHcRuJgYaj4I"], "preferRegex": true, "regex": "Dzyh1N0JEKNoMtHv"}, "blockedWord": ["jM7X1fjzknv2HZMI", "L2P2bh14LroFTnAu", "ujPeP9N0vdVB5a2X"], "description": [{"language": "kS3XQfMuzZh4AhZR", "message": ["e2hgU56xtyJtnbTD", "Xu7FbleSP5PcdOuq", "0m0rvakR8rcwojLR"]}, {"language": "jhcaJ56nGlYZ2tod", "message": ["2BGBXjNyRCtPOr1F", "U3QZy3gdDms3kb1h", "tW0UGJpwQZlXuzu3"]}, {"language": "m9u67JjCDwg186hG", "message": ["WKfO9MnoT3t99Hmc", "xzjDhTrcBKtU956h", "Og8oukDVdweG0sFH"]}], "isCustomRegex": true, "letterCase": "u3EeZtLQij2JXsqd", "maxLength": 77, "maxRepeatingAlphaNum": 11, "maxRepeatingSpecialCharacter": 2, "minCharType": 15, "minLength": 6, "profanityFilter": "ZTTaCeqGv7meuQhJ", "regex": "uq1C6JHkWMSUbqBy", "specialCharacterLocation": "WN2BCnRz9w2nur0B", "specialCharacters": ["9jKaunAcylsau7wR", "QmL4i3eRyIECEDa1", "I4lwXqwPfq3VzHQj"]}}, {"field": "tolx64w1gyvjacKt", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["noAXRlcq0mYWKQYl", "qMmu2pvF6rP03bQa", "q1cT88H6RCW8gJmG"], "preferRegex": true, "regex": "Lh56AWXoMiowdWSs"}, "blockedWord": ["9DQ0VU1HED9CGo9a", "UXj3rh0UyqxVWlIM", "Y5tTJw4KV104MtMh"], "description": [{"language": "KHmSjqPuQZX5KjdN", "message": ["rEwfWo2MwulLg4bs", "O4YHEYLjTSNDf3za", "zm6p5Y1tkG9WwU4T"]}, {"language": "y6Ch5QYyFjuBquE7", "message": ["xssm4hxczskbSUbO", "Z9WNl3apJmNAbl1g", "5ZmTTGYRbP4QVey9"]}, {"language": "pEz1TV5cUtPBsw01", "message": ["i5Mf7WvbNSeeDNfU", "ESLlwHv3JgteOLyK", "p8a1VqxXnRhDd9TG"]}], "isCustomRegex": false, "letterCase": "ohewKkVuGv9fQXkE", "maxLength": 35, "maxRepeatingAlphaNum": 92, "maxRepeatingSpecialCharacter": 65, "minCharType": 62, "minLength": 0, "profanityFilter": "drbYrrFQP6rW62Ct", "regex": "etBW3pvAJJieHhve", "specialCharacterLocation": "Gg97PY0txzvYwv7a", "specialCharacters": ["tn9EQv2Oj8TFNeGt", "JGjKbMgCeuAYuzrm", "bWofEaKStqdKu4RO"]}}, {"field": "nONpJ849chqeiUGQ", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["ZCeF30RT9rBgM8o7", "lxXq7TkdM7FVDCBc", "vVegrZddP8lLQo6t"], "preferRegex": false, "regex": "y7F82Adu9BYRHrVT"}, "blockedWord": ["ehrqgvEtEs2LpE0q", "fbvdU8hlDoC9Fnxq", "BlPBYJ7X6uVy7FWT"], "description": [{"language": "SfMi2CPVGxjcdpdC", "message": ["qVeePMSqb8y8qJTU", "QY40Zrpn0vAD9YsP", "eDWrAVQZSvgWuCuL"]}, {"language": "sUGrVQAbhS54ZuQH", "message": ["KersDmJLUHAKtfXC", "KOna8DdjtZhh6ofs", "UoRh6r0e0J6vyqPw"]}, {"language": "7YlmV3kES0Hi88UY", "message": ["gSV40OvY7apPCrN5", "bEhmuHgKeWizEpw1", "zN0mOYgGhHMz9ddd"]}], "isCustomRegex": false, "letterCase": "JWDuSYtCaIv4Lp91", "maxLength": 45, "maxRepeatingAlphaNum": 21, "maxRepeatingSpecialCharacter": 95, "minCharType": 79, "minLength": 72, "profanityFilter": "wQzn28Le5neohqhC", "regex": "zroAzWQDve0Z2G2N", "specialCharacterLocation": "09VIbbsz24fQKDZX", "specialCharacters": ["6plErw0Gb0ceCbph", "W4YMhJ0S50bez9ZL", "HW882riiPfRQ3rJ0"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    'f5lwXvRNDBnmL1KQ' \
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
    '{"ageRestriction": 27, "enable": true}' \
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
    '{"ageRestriction": 48}' \
    'hiP1lzkzjYDw6mLB' \
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
    '{"ban": "ordrJkD6vy60uRMT", "comment": "1Xw9K9Yb68a8ygYx", "endDate": "2TqkhlqMnE9Wj90E", "reason": "QzOidrWnLrXqImgD", "skipNotif": false, "userIds": ["ni1YfIgLZ4YIzElr", "LZOBLHCKmLBaIwlo", "kbAFW8RgBUwBL28B"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "qM8UzvKqeoTiNKGR", "userId": "UMrimGAz6OhmHOpC"}, {"banId": "dr3WzDm3hJdd6uaO", "userId": "9TiTPnIh2iaIBpYC"}, {"banId": "4txul6VKYlNYYlHP", "userId": "wKDpJmkeoAkp3Z4p"}]}' \
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
    '{"clientIds": ["gyJYwclb4gd4QgQu", "t2hiPuDdOPHcN9dr", "wqytieXpIZfr5XDq"], "clientUpdateRequest": {"audiences": ["9dGLHjtgE2bTXJxC", "CFqPNDqWrpkWnnov", "a15WVuE5cYVP9tQS"], "baseUri": "a27BnPyq3I1BLtGE", "clientName": "ZDRNkk4DJUofJXK8", "clientPermissions": [{"action": 89, "resource": "H2qs28hePJjMp0TK", "schedAction": 76, "schedCron": "y0stUmKdXiiTObNd", "schedRange": ["qkWa13g3pgHx6uPf", "6jQZcYerH933X7iX", "EEM2KOusNEHcI95G"]}, {"action": 66, "resource": "pT3MLwJZquMQSPp5", "schedAction": 49, "schedCron": "D4S1ilfgff7Et4uY", "schedRange": ["8nlBwGNHgfgwZwVM", "vshGmsg6ZJYnkHDn", "HTlRugM7a2UZgees"]}, {"action": 17, "resource": "iUn2yXMSCcHADYpS", "schedAction": 98, "schedCron": "61c0CJ7LzpFvOSF6", "schedRange": ["xKA6yrnvXY5dDwne", "ac75C6S2eHsH4Y84", "hL75QboMHCtzEF9F"]}], "clientPlatform": "Seg6WYgtfuqJHrs4", "deletable": false, "description": "KgyIeySoUxoMrj2J", "modulePermissions": [{"moduleId": "4JGQZAtyjTxnlmSy", "selectedGroups": [{"groupId": "jEaFH2DRN6HIEqIF", "selectedActions": [63, 10, 4]}, {"groupId": "dZIv8oYWPUS4Zu0S", "selectedActions": [3, 29, 92]}, {"groupId": "iKT57rmbjEnimeR7", "selectedActions": [63, 64, 99]}]}, {"moduleId": "Bz43E9FkOPVu2fDt", "selectedGroups": [{"groupId": "OjW1iSYQbcebBd5w", "selectedActions": [3, 38, 50]}, {"groupId": "H3qppoCiHMD4iBK2", "selectedActions": [82, 92, 33]}, {"groupId": "5Pf1Lvg8kYEVylIN", "selectedActions": [72, 27, 32]}]}, {"moduleId": "Evo25aEtdjls5oad", "selectedGroups": [{"groupId": "seJg7y4Q9CU3fjSR", "selectedActions": [0, 65, 61]}, {"groupId": "TJ9uB0zypjJiu7BI", "selectedActions": [17, 75, 26]}, {"groupId": "IhNU43K8bihdw3pr", "selectedActions": [32, 90, 95]}]}], "namespace": "MkxQTAYGfE6hXZ7X", "oauthAccessTokenExpiration": 78, "oauthAccessTokenExpirationTimeUnit": "v56oqwnCLVc2qHZu", "oauthRefreshTokenExpiration": 42, "oauthRefreshTokenExpirationTimeUnit": "G6SHcZbX2wNnT6A9", "redirectUri": "zosmDnXoncy7NZQ4", "scopes": ["PkAPXBCfkE1Fb0y9", "4eP7yh0zsKhR60HZ", "wUwk48XK7MXHbEwA"], "skipLoginQueue": true, "twoFactorEnabled": true}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
$PYTHON -m $MODULE 'iam-admin-create-client-v3' \
    '{"audiences": ["cNzHhvxc4xAPZ86W", "NnQOhusPn4466u8a", "gb5HPsBU0Eo6QJ9v"], "baseUri": "BRJ4UP09fabC01Th", "clientId": "m9f4AWpyiKVT3OvE", "clientName": "ujx5yjtQSCJaOHzp", "clientPermissions": [{"action": 3, "resource": "jw99HxCjXWcaXBcf", "schedAction": 63, "schedCron": "XeV7BXefsSgZxSYn", "schedRange": ["VwXqF6K0WA76Kl2m", "HHoz6qBQnEDgX49n", "1xTDFcmOm1sqdIWU"]}, {"action": 83, "resource": "ERylESgf5dXMrPoY", "schedAction": 90, "schedCron": "Memsp7o3F2LQw7Y2", "schedRange": ["VdSxgXez7VvS0C9J", "LVQQPa7PPx4Zi6Wa", "C8wk7HMbJhNwZgf5"]}, {"action": 27, "resource": "AaW5xz1c7ZuZXUCB", "schedAction": 65, "schedCron": "nkY0LEBSYBdUSiTO", "schedRange": ["rhB8hVs29WOKmZRT", "tgycLzXz6lUMKi5m", "weMEZo2ZnL1Zg2Jf"]}], "clientPlatform": "H4f73jAevOnES6YJ", "deletable": false, "description": "xgOzeRNHIqK5PT40", "modulePermissions": [{"moduleId": "4mFw4HJv5T2kIQOe", "selectedGroups": [{"groupId": "cfLsYKTmUnKlrOsJ", "selectedActions": [26, 63, 13]}, {"groupId": "wjGYN8VNPXNsmwTV", "selectedActions": [50, 16, 93]}, {"groupId": "mJHNI0l6jJVzF1Oi", "selectedActions": [30, 37, 23]}]}, {"moduleId": "QuWUBBHZonSmzF83", "selectedGroups": [{"groupId": "1vlCiZAZHCWMXxVh", "selectedActions": [60, 69, 87]}, {"groupId": "TrKqVwnpPn8N5xMR", "selectedActions": [12, 34, 95]}, {"groupId": "94Re5IM1akNKz9Il", "selectedActions": [39, 87, 73]}]}, {"moduleId": "Uku3n32atB0QPQPE", "selectedGroups": [{"groupId": "p5UtwUWGt6tooHP5", "selectedActions": [20, 54, 100]}, {"groupId": "ww01zalTddhAQ1pw", "selectedActions": [34, 23, 27]}, {"groupId": "f6j8PZOzUiQKZqz5", "selectedActions": [80, 86, 91]}]}], "namespace": "bn7lttd21cS6IVE4", "oauthAccessTokenExpiration": 11, "oauthAccessTokenExpirationTimeUnit": "O2n4MZQt753XQB93", "oauthClientType": "rOW0guPoQbYzc1RD", "oauthRefreshTokenExpiration": 97, "oauthRefreshTokenExpirationTimeUnit": "AXoDoFkmA3fgzcwd", "parentNamespace": "gJMjIyGfiNBQy41M", "redirectUri": "1gzGCbaxw33rNbE4", "scopes": ["bbDU4FMTbQaANJOO", "DGerDCWcl3VSJENQ", "opeHD6iKBGm5Cj7R"], "secret": "qnJUmfDmofxvN8pR", "skipLoginQueue": false, "twoFactorEnabled": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    'ExeQX43LpmdMiZey' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'IrA4QUKSJgECzvaW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["UCA7wKru7ry3AQ2s", "EHvSxjWoM1rNJLM0", "OOVG5cG6XxENbWql"], "baseUri": "X7idzjpKDfwl6XlC", "clientName": "F6YxFMD8tJQwZvUV", "clientPermissions": [{"action": 70, "resource": "LhzylaquioT3QBt2", "schedAction": 60, "schedCron": "AiRASsuFM4ahGw7X", "schedRange": ["cF1Qwzz606UGXPho", "NZlXMef7AvS3TfKx", "6ByTygbtOtcQS4Cm"]}, {"action": 13, "resource": "FeVw70xdNTuOdLKK", "schedAction": 36, "schedCron": "M2B2hbqJin37P69t", "schedRange": ["1KqeGz7qbPnXEuOz", "zkoBmMR9C4qPqJrA", "dh1HIk7vCEq7FQ2S"]}, {"action": 29, "resource": "VeW9ddxzLPV8wDjs", "schedAction": 28, "schedCron": "kNfHJtA3QiX9Zvty", "schedRange": ["dbaVb0scd97A0GP6", "djn2Ps3IVT5hUZ3c", "nDq0ddZG0EpfGAqH"]}], "clientPlatform": "KcSxUc2YgRpk2IFG", "deletable": false, "description": "XALMresGFfsH4aXC", "modulePermissions": [{"moduleId": "DhshvEF8rHd250ny", "selectedGroups": [{"groupId": "ihcUVGHQczI5ZoTR", "selectedActions": [95, 84, 21]}, {"groupId": "JhbocoGlPzdfxcC3", "selectedActions": [36, 72, 32]}, {"groupId": "aU11cBXLwTfopqeZ", "selectedActions": [39, 79, 69]}]}, {"moduleId": "3JXjEvsj5WcQ99M1", "selectedGroups": [{"groupId": "yuXeqV31LX2ehcMn", "selectedActions": [80, 9, 87]}, {"groupId": "tsNczam4Cdd1QYvw", "selectedActions": [46, 21, 75]}, {"groupId": "Dokltgq2vXtUnY6U", "selectedActions": [14, 61, 30]}]}, {"moduleId": "J4pe0s0Cuhl3dU9b", "selectedGroups": [{"groupId": "4seYCyiB4tDCWx3c", "selectedActions": [62, 49, 47]}, {"groupId": "8wTi1v2abpCWytPE", "selectedActions": [17, 16, 34]}, {"groupId": "Ze0hL9rPkV5GkSrc", "selectedActions": [24, 85, 78]}]}], "namespace": "O47XVzU7qlNVk7qn", "oauthAccessTokenExpiration": 25, "oauthAccessTokenExpirationTimeUnit": "iIFgS4fLqlrKGiS3", "oauthRefreshTokenExpiration": 8, "oauthRefreshTokenExpirationTimeUnit": "xjkyNfj3XgTRTjI9", "redirectUri": "oNBzgQ4CRwg0sKVe", "scopes": ["SpMny0GrvKI5EVB9", "ZFzLNsjdCFtKY0Ks", "xR0rCFkyiQZfMnTb"], "skipLoginQueue": false, "twoFactorEnabled": true}' \
    'WbQaKFrTv4JWElmO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 59, "resource": "nVco2oCn1KvJmbja"}, {"action": 31, "resource": "Oef8MgIwkrKFEtwE"}, {"action": 91, "resource": "B5kvtM8ah9bPsksc"}]}' \
    'eGUEX8ERZcKSYLo6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 51, "resource": "VWH2XLIg3MgmdSvW"}, {"action": 32, "resource": "gX9JQwErzjtuP9pU"}, {"action": 96, "resource": "4v9NNfQSYLFKSl3F"}]}' \
    'NFFJnt3rIwZdW02S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '42' \
    'fdXi7BycDPckeGJU' \
    'gU8bD5mGFFmKTTUx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
$PYTHON -m $MODULE 'iam-admin-get-config-value-v3' \
    'G0mpmFxxDNXGlGJv' \
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
    '{"blacklist": ["Hf558h1ltyhiSGhf", "qXhxBJ7zLXioAGkW", "gSDdDQvpRfGe3z2r"]}' \
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
    'tjWpJAlKHF0ebxhJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 141 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "1176CeD4dWCp4wql", "AWSCognitoRegion": "QJcZroNQiefBnPlu", "AWSCognitoUserPool": "OIjZyvlGDQGv6pNN", "AllowedClients": ["owEuVVZM28w4mnYv", "vlt1es7A4PFduN4g", "x0UC6eWKCFGS97Si"], "AppId": "6XyLVPrkUxyZ1OH5", "AuthorizationEndpoint": "Nn4nMT8QOyTuUSD9", "ClientId": "ImtaPAocOQcpBWSN", "EmptyStrFieldList": ["rCjSNEAdojkCMmYy", "TGO07foRZ6FujpIW", "o0qJtqp4Q6XgICLg"], "EnableServerLicenseValidation": true, "Environment": "HcP1eE6sjWQllYsO", "FederationMetadataURL": "Npp6QGW56CNiszHE", "GenericOauthFlow": false, "IncludePUID": true, "IsActive": true, "Issuer": "1MMoaf6KlgRtwaM2", "JWKSEndpoint": "IoyY1wpIdjcAtTj1", "KeyID": "IMuuhxxlulfmya73", "LogoURL": "hX0a8Ri85PA9wNpm", "NetflixCertificates": {"encryptedPrivateKey": "rK5Y5heA2ewWnFcq", "encryptedPrivateKeyName": "HxXP3kRhtrBcBofW", "publicCertificate": "TGYx2ihgioL8VvEz", "publicCertificateName": "HGTt9emdCLmzJbdk", "rootCertificate": "ykVAnmnRfUilcKA8", "rootCertificateName": "4d9pMsl7zrNJvDiP"}, "OrganizationId": "2hNNEI8QrQ6H1ro5", "PlatformName": "CtU8UjgyCUpM1JBc", "RedirectUri": "Tzf4dz1BojPoQg97", "RegisteredDomains": [{"affectedClientIDs": ["6409vFd5z9r4nJWU", "vLp1wxGF747468MX", "Uq3uIffkIpPmrWVx"], "domain": "NZUvkiU2jXSwsBBR", "namespaces": ["opVl38d4NZGtk6Em", "WxC75M88TKhFYkA9", "aRNDe2IoPMSQKcg0"], "roleId": "OTT9JA0ll1RimBCi"}, {"affectedClientIDs": ["QwuyrI87uSyXP6C0", "jXS8au2wcWYyj3Jv", "HqXp4JR7xI59Z9tf"], "domain": "GVsglnOxOXBfgBLu", "namespaces": ["glkd9LIoshGnFSuH", "mrqej8PRppYY1vlV", "0M2g6oreqyBzWzCg"], "roleId": "MMWZuD6tmIR28xVx"}, {"affectedClientIDs": ["btpSKOfiIP3S6pyp", "ZqISn3msrykQFtW8", "QGKFZLrIfqrZuu7I"], "domain": "wKcT7sAsv2TKCbYM", "namespaces": ["VkXEHmsHwIGGsusS", "0zZRODEKPdudZsLa", "f8aZrXW84dt0TSTm"], "roleId": "y7XF26K2U7xttUz8"}], "Secret": "nWKJjv06PuffHghA", "TeamID": "QfAsYXVzBenLtaAo", "TokenAuthenticationType": "YyRfiCWrm3s1Ah3T", "TokenClaimsMapping": {"II70MIcBMJ04508j": "Kedx0CVRpd7SwZw2", "UkjDzJ4NuMMgI13n": "plXaUQV5QEvKElLf", "bB7gwwAR1xFrnyir": "w3iJt5iA3JS2xeaJ"}, "TokenEndpoint": "08JrSHPqdhKHn6Zj", "UserInfoEndpoint": "ZMdr1C2TIQzRJY7U", "UserInfoHTTPMethod": "fYSrdN0JVz4U43Ec", "scopes": ["V1FRyeeqehMNeRYK", "eMbL0G4v5D6ylZgu", "O918X7rLoexHBMBM"]}' \
    'MAYokSWFwajRGUyk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 142 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    'lfLVY6g3PO4hKAeF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 143 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "4GUV5m96qcCJsVOW", "AWSCognitoRegion": "tu5RPsqd66ImBEuh", "AWSCognitoUserPool": "naxZVf6MD9r1y5Ih", "AllowedClients": ["r531Kajxq7lzuVRV", "EvhKIbrq1xsGpdob", "Yun8hcO55hVjfWyK"], "AppId": "02w5QytAmkanukAz", "AuthorizationEndpoint": "AMaRvIUhUwguGgbL", "ClientId": "LN3O7CEYjxqElP5l", "EmptyStrFieldList": ["A2FJ0iGLRTXGsC5m", "xxse4eeuMgEctVEu", "x2MSuwsEHlwdeJyh"], "EnableServerLicenseValidation": true, "Environment": "4mu0qPHb9Ll2EFEb", "FederationMetadataURL": "8GnsthmQ2Y6ZGOiq", "GenericOauthFlow": true, "IncludePUID": false, "IsActive": false, "Issuer": "JL9M53Mg0MzWS9us", "JWKSEndpoint": "xxnMhjv66DyED4pr", "KeyID": "RVibTATxd7Mzjv1g", "LogoURL": "Sj8kcNhoqcRZRNAT", "NetflixCertificates": {"encryptedPrivateKey": "ojM7daV0VwR3yNKD", "encryptedPrivateKeyName": "tMqMrAGpdyF6WDHn", "publicCertificate": "3ePBxQNz2IUEHMzl", "publicCertificateName": "5jhwVDsuzwJ4v50e", "rootCertificate": "oaIBrTh0EKkJioUp", "rootCertificateName": "vGnkcHgCfaWzPUvC"}, "OrganizationId": "nfqsPGgJZyRwigaM", "PlatformName": "u07Zek8WObpf0FHY", "RedirectUri": "fViEj70KYKIfFt4G", "RegisteredDomains": [{"affectedClientIDs": ["YjUt4F1ZVy2qFfSr", "3psWjOyHLyKe2foq", "sVIfgBTr8RcxRQR0"], "domain": "NYdJzf3TMhSaynVs", "namespaces": ["05nZC4Os7hqIH2Ng", "ARSG3QQNGNH2K0Uu", "JdeGNquQnaXpDQ5r"], "roleId": "U2taDWh9JV5oc5IF"}, {"affectedClientIDs": ["QsrwHqFqwVA5moze", "eOjIFQfXV3YW3ug3", "nCXhD7FUz1iOe0pH"], "domain": "a0LmseIRXeoerZAx", "namespaces": ["bDPXU5xJBhIpJ9b0", "Ap7CmSiKPjcwAw5G", "dxpvLfa4b4hTaZBG"], "roleId": "dX66DqPTdurR3MYd"}, {"affectedClientIDs": ["a0Y0BCO4qPnvxERW", "jKasq5zQ6uZNwKjn", "X7vDIqpcjmaq5KBC"], "domain": "sHlwNrfKJrkzwR40", "namespaces": ["tfd9GFXChtxB10d4", "Q8nlBthUSu4WNfTv", "D5UcES1eLMZs9lSQ"], "roleId": "VDp16qVIqXCK9dS5"}], "Secret": "JTbdJEe6mnkYAfw6", "TeamID": "1kyKk0UXUF2523OT", "TokenAuthenticationType": "vOmfVNJNDaSO3FEk", "TokenClaimsMapping": {"k4It6V8Bu7rIjGrx": "UMKbv60ixUuUhopd", "qGrqRZ124P7PauXT": "rpWAjwatSvtPbAFn", "8oWQcmFkkRX6Eqad": "AEIzxld80Ynss7hc"}, "TokenEndpoint": "3VUxxZIgkTLqMeJP", "UserInfoEndpoint": "Cbs8jWmTteJhwNbw", "UserInfoHTTPMethod": "HGG39YAZJ4HuLfeT", "scopes": ["fFBTOFFMJ9pq511j", "ZcTK8zmMfyshYk3b", "5cAFVo85r1b8Yp2Q"]}' \
    'nuhQuIdvZdj6AspW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 144 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["BfRnLcLbp7OmcrDJ", "7u1rrRPcnG89rnNW", "1Yjfn8lY4DnYRxY8"], "assignedNamespaces": ["ZhHeb0CaPFDjrSot", "KnpJWALpToj9rgr5", "RffM5JXvPdzEpDln"], "domain": "04F8BQjzobhDa8Vx", "roleId": "KOrfVfBRIfkStOqd"}' \
    'XqhDMQ6tBLljC7gc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 145 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "T3M1DArk4L80aXFY"}' \
    '7SQkym9KvKMHK5fb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 146 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    'qioeoRIplY0DIzRC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'RetrieveSSOLoginPlatformCredential' test.out

#- 147 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "NAO6ZpqXJmPJso6M", "apiKey": "11LLZWKgWxn9YL16", "appId": "HQdtAneXGgxNg33Z", "federationMetadataUrl": "IUrIkfmdXVvaPQzz", "isActive": false, "redirectUri": "L1oNrF3SmgudQusJ", "secret": "LsPlW7ZyORFkN9Eb", "ssoUrl": "KbTbrDzNgVEcw0lx"}' \
    'Ram16O6v4VjJf40L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'AddSSOLoginPlatformCredential' test.out

#- 148 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'jUdORELVXUFQyVlt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 149 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "9jmxmxpfp41k1uDg", "apiKey": "59PhdUXShabwyYCx", "appId": "THrDel8oThvr8CUE", "federationMetadataUrl": "zw4zL1QeR3EYXBFp", "isActive": true, "redirectUri": "soBwqh0TQXa2j7v3", "secret": "zQJoQLTAlW75icIK", "ssoUrl": "UpXazsFrmaGNoi3R"}' \
    'PTgWotLNz0u8ySxA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'UpdateSSOPlatformCredential' test.out

#- 150 AdminListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["0yrjz4q7e0EJnADX", "C2y0DY1E1SMK9oA4", "vK56dsYI5SKV5pDA"]}' \
    'NyJ184miBhdVJt81' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 151 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'fmLSyGuu5rbJVIwR' \
    'MtwApGbXnR3yC6f2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'AdminGetUserByPlatformUserIDV3' test.out

#- 152 AdminGetRoleOverrideConfigV3
$PYTHON -m $MODULE 'iam-admin-get-role-override-config-v3' \
    'VIEW_ONLY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'AdminGetRoleOverrideConfigV3' test.out

#- 153 AdminUpdateRoleOverrideConfigV3
$PYTHON -m $MODULE 'iam-admin-update-role-override-config-v3' \
    '{"additions": [{"actions": [23, 68, 75], "resource": "GGedk0KzXRclOXdP"}, {"actions": [28, 87, 94], "resource": "xBnttu4yW5etl4Xk"}, {"actions": [68, 6, 92], "resource": "1lRtoPMvsu9oswEP"}], "exclusions": [{"actions": [93, 24, 45], "resource": "WBp4gBs9UufgsVbG"}, {"actions": [24, 94, 33], "resource": "Ue3jbuQ7HMPO4ozK"}, {"actions": [68, 84, 32], "resource": "ykRqSPYZgPm4JLsX"}], "overrides": [{"actions": [97, 34, 39], "resource": "xAYqXG2V3baMkZ9J"}, {"actions": [58, 22, 33], "resource": "PU9hrl5nkpEdBe8b"}, {"actions": [47, 99, 54], "resource": "dok4UnUEOyP0cPZf"}], "replacements": [{"replacement": {"actions": [80, 84, 19], "resource": "volfI0mqZctohLhe"}, "target": "RaQkfMLFW9B7jHZr"}, {"replacement": {"actions": [29, 80, 15], "resource": "HU8iYUOtG5gbQSKW"}, "target": "2MdgCH4bWxRF6fBP"}, {"replacement": {"actions": [1, 80, 66], "resource": "dMkdg9TMwxNcQ6Ck"}, "target": "Vi8fqVPRqNbF5yLn"}]}' \
    'VIEW_ONLY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AdminUpdateRoleOverrideConfigV3' test.out

#- 154 AdminGetRoleSourceV3
$PYTHON -m $MODULE 'iam-admin-get-role-source-v3' \
    'GAME_ADMIN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'AdminGetRoleSourceV3' test.out

#- 155 AdminChangeRoleOverrideConfigStatusV3
$PYTHON -m $MODULE 'iam-admin-change-role-override-config-status-v3' \
    '{"active": true}' \
    'USER' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminChangeRoleOverrideConfigStatusV3' test.out

#- 156 AdminGetRoleNamespacePermissionV3
$PYTHON -m $MODULE 'iam-admin-get-role-namespace-permission-v3' \
    'AUVW8FoEf8tjCjWc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'AdminGetRoleNamespacePermissionV3' test.out

#- 157 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    '22qqDfNz59jHwSDQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'GetAdminUsersByRoleIdV3' test.out

#- 158 AdminGetUserByEmailAddressV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-email-address-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserByEmailAddressV3' test.out

#- 159 AdminBulkUpdateUsersV3
$PYTHON -m $MODULE 'iam-admin-bulk-update-users-v3' \
    '{"updateRequest": {"skipLoginQueue": false}, "userIds": ["3k54cExxWKtdGTW4", "FILotv5ycTa0i6if", "YP1zfgjsy3VRjX4q"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminBulkUpdateUsersV3' test.out

#- 160 AdminGetBulkUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-bulk-user-ban-v3' \
    '{"bulkUserId": ["A4g9OGoWw1qnCAvd", "nAcokJ0rzqX2KJcY", "HgiFDxclBXap6j73"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminGetBulkUserBanV3' test.out

#- 161 AdminListUserIDByUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-user-i-ds-v3' \
    '{"userIds": ["doCWxhubMXbxNvT6", "wAffv4uzKAwiI4wT", "xNIefCmtrxWu2935"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminListUserIDByUserIDsV3' test.out

#- 162 AdminBulkGetUsersPlatform
$PYTHON -m $MODULE 'iam-admin-bulk-get-users-platform' \
    '{"userIds": ["51nQBNKcqCkUXRj8", "gQHEe4CO370OsbzR", "KKPd6mjzLxllUrFY"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminBulkGetUsersPlatform' test.out

#- 163 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["n7cSuO7NxKHUHg0c", "4X7fHdITmN9opaF0", "kh3pCRB3infEVxAr"], "isAdmin": true, "languageTag": "WwolQy037hJMOEv5", "namespace": "W0v25yAObZIbrA8X", "roles": ["AKKWMDebehSjpt0w", "rfWPXaI1Jb75o2MF", "Oa6xgPt69QROGDeJ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AdminInviteUserV3' test.out

#- 164 AdminQueryThirdPlatformLinkHistoryV3
$PYTHON -m $MODULE 'iam-admin-query-third-platform-link-history-v3' \
    'CyHvUsnLvXCSgQHv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 165 AdminListUsersV3
$PYTHON -m $MODULE 'iam-admin-list-users-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminListUsersV3' test.out

#- 166 AdminSearchUserV3
$PYTHON -m $MODULE 'iam-admin-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminSearchUserV3' test.out

#- 167 AdminGetBulkUserByEmailAddressV3
$PYTHON -m $MODULE 'iam-admin-get-bulk-user-by-email-address-v3' \
    '{"listEmailAddressRequest": ["s25eiQO3oWdgXdm1", "IxL1OtleUBqBO0Ze", "049k9W6ZLVJzRpUs"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminGetBulkUserByEmailAddressV3' test.out

#- 168 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'ITfVruDukun42zPZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserByUserIdV3' test.out

#- 169 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "vOd4yZyMKyED3qDO", "country": "5HXp5oVkhESbHQ7h", "dateOfBirth": "vTlzf7XwQtVIYU87", "displayName": "NgjDMcJxfMfYFlt3", "languageTag": "JvDgMiyBGygWFTAY", "skipLoginQueue": false, "uniqueDisplayName": "Th5mOwPCPKVPlOGf", "userName": "FBlu2ZP0IkiYXGk6"}' \
    'BoBmSLi0R7zDFMoN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminUpdateUserV3' test.out

#- 170 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'TQmlS8lMlY8Ujprh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminGetUserBanV3' test.out

#- 171 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "CxhzW6ZM7LkTVrtV", "comment": "JZVhxCVdjPutJ8dk", "endDate": "AVOJ5imghdfVhjnj", "reason": "d66A1SQmWGSQLAVP", "skipNotif": true}' \
    'W8tkTURUFmqNc8xh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminBanUserV3' test.out

#- 172 AdminGetUserBanSummaryV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-summary-v3' \
    'QqptccNorRls7EC3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminGetUserBanSummaryV3' test.out

#- 173 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": false, "skipNotif": true}' \
    '1cpgvoDBgYfLBdGN' \
    'AZEvbvxqa0K7VUbj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminUpdateUserBanV3' test.out

#- 174 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "UnzirnEsxSE4vBzG", "emailAddress": "7VK8sWEshmZf5fEd", "languageTag": "vjbyJPQ1qdRcJjsm"}' \
    'e1OukIfIZVH8q8sv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminSendVerificationCodeV3' test.out

#- 175 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "V5hMOSfpyJkJlmJm", "ContactType": "TkFvB7wkY6nuUEGJ", "LanguageTag": "3k0HGtpK43uORGRE", "validateOnly": true}' \
    '1520WM3TxWXSdTiK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminVerifyAccountV3' test.out

#- 176 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'dva2UREoBSFtCLy2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'GetUserVerificationCode' test.out

#- 177 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'CqgCG7JwJCDqkzOd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminGetUserDeletionStatusV3' test.out

#- 178 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"deletionDate": 64, "enabled": true}' \
    'f6P3D3rVcC2g6t42' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminUpdateUserDeletionStatusV3' test.out

#- 179 AdminListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-admin-list-user-all-platform-accounts-distinct-v3' \
    'jE1Wad232YV7A2zH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 180 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "FGbN8AQaCaw9UF7c", "country": "dSDd99DQZ7vnTx8H", "dateOfBirth": "DXTJWiyw17ogzmbj", "displayName": "4SLYDrZJvDLGvn6q", "emailAddress": "troZcp16HKXX1ft5", "password": "nBA9xNIJVuMz04ev", "uniqueDisplayName": "SdE2FMcKd7c94rEm", "validateOnly": false}' \
    'uAT5OAcUwYHGmG5r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AdminUpgradeHeadlessAccountV3' test.out

#- 181 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'NDBF1oU37vjfyX5Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminDeleteUserInformationV3' test.out

#- 182 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'LaM0wmi0i1WABBbq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserLoginHistoriesV3' test.out

#- 183 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "8IzZsMFLX9ZhFXcF", "mfaToken": "tfBS3ZIHofhwyM6B", "newPassword": "w2sFGQ5DQoDwzrKP", "oldPassword": "OZZnV3zR7YxSu6ad"}' \
    'docg10Hy9jx7gBHT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminResetPasswordV3' test.out

#- 184 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 83, "Resource": "Vxzrec5kNwJAxm0R", "SchedAction": 7, "SchedCron": "2pJ7V8BSrucjO3zv", "SchedRange": ["SM5KeVNHU9GcOivI", "fcCJt4U8VSgXoi9F", "w25b9qXzlIK2G6AU"]}, {"Action": 19, "Resource": "9jLiAdMiQ7eDMkeB", "SchedAction": 89, "SchedCron": "oUsCnBmGMx5F6EhM", "SchedRange": ["3dKvIG9MR0hTINvq", "1VR9SJUfQEX996Mh", "1sQ3Dw3uyjgQNAs9"]}, {"Action": 83, "Resource": "88Qm3W1De2McGd10", "SchedAction": 46, "SchedCron": "gxt0NgDSj1T6EdeY", "SchedRange": ["FmrLT0HbvS4kSSt3", "CyDgf6eFAiqSkHi0", "BR2ElF6z6eJKuOW6"]}]}' \
    '1akRFizqxCmudSXi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminUpdateUserPermissionV3' test.out

#- 185 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 43, "Resource": "Zhwfjkq9iyTbyD3D", "SchedAction": 9, "SchedCron": "1tRpuuyIagSSzEL8", "SchedRange": ["H4euLufhQj2KP3LL", "xl9Hs2L2wlpKBVUR", "xHefz77a9fntCNiH"]}, {"Action": 57, "Resource": "ssUeHiVDXzSJ8kbF", "SchedAction": 53, "SchedCron": "ilS3IxSjlyvR9PxG", "SchedRange": ["9Lji2Vc88W8aLjIx", "VGpdOqguxvRwI9ZB", "TipMRlhK9DMMaI4r"]}, {"Action": 51, "Resource": "94BrMSP31wAkVH75", "SchedAction": 96, "SchedCron": "s6GF247cbBLjUr5z", "SchedRange": ["03wxB3E9hrE9f9CO", "FrOr6wJDBwIDsJHN", "g6TvNGjwI4TbTwBu"]}]}' \
    'fUorJouduhCEJ5Xi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminAddUserPermissionsV3' test.out

#- 186 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 75, "Resource": "L9gYHEV3wnTZTvYY"}, {"Action": 12, "Resource": "kfhRuqkOTHSia7oF"}, {"Action": 8, "Resource": "5wNYlFiliYmBrqrO"}]' \
    'c0NIligBrOkBljwR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteUserPermissionBulkV3' test.out

#- 187 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '63' \
    'FfRcWDXhq1YmGeyg' \
    'r2S4Yw8NmPaBeryz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminDeleteUserPermissionV3' test.out

#- 188 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'X2hOPVVFqVqxjq1i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminGetUserPlatformAccountsV3' test.out

#- 189 AdminListAllDistinctPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-list-all-distinct-platform-accounts-v3' \
    'G3TySOh8SI75oXby' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 190 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'q8FBbur80QwnlgAV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminGetListJusticePlatformAccounts' test.out

#- 191 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    'fqz6gQJh8sn0bVWR' \
    'kvmAemh8lioBR7xT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminGetUserMapping' test.out

#- 192 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    'XcEIFod3lCzvjHzD' \
    'HOrSJ1vbB7LRHd96' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminCreateJusticeUser' test.out

#- 193 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "dGLgkfrZveFMWAFT", "platformUserId": "7l0l1jaOAMCzbsoI"}' \
    'gmKwwMDQPjUIosq1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminLinkPlatformAccount' test.out

#- 194 AdminGetUserLinkHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-link-histories-v3' \
    'l6xo0D4JRbNqO6Iu' \
    'P2PY5hhX6uNah9Jo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminGetUserLinkHistoriesV3' test.out

#- 195 AdminPlatformUnlinkV3
eval_tap 0 195 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 196 AdminPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-all-v3' \
    'HPj7jFWxSv1lYylY' \
    'AiZ8c7Zd7EUoezOL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminPlatformUnlinkAllV3' test.out

#- 197 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'w8C1c5bBB3XZ7Col' \
    'KwlsNvtFuunQsvdX' \
    'GlD40xxIyVwYjn6d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminPlatformLinkV3' test.out

#- 198 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 198 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 199 AdminDeleteUserLinkingRestrictionByPlatformIDV3
$PYTHON -m $MODULE 'iam-admin-delete-user-linking-restriction-by-platform-idv3' \
    'lC9Kfh9gHuloyce0' \
    'cLJu4ljPWlCWTuGO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 200 AdminGetThirdPartyPlatformTokenLinkStatusV3
$PYTHON -m $MODULE 'iam-admin-get-third-party-platform-token-link-status-v3' \
    '8MnfOQu3wdT4Aodp' \
    '95o1RkX7iW7VpCng' \
    'WAv5DAG8dPdkKgQq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 201 AdminGetUserSinglePlatformAccount
$PYTHON -m $MODULE 'iam-admin-get-user-single-platform-account' \
    'jyzUZR2rFIAuALNh' \
    'NCyscsMBRLsWadk2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'AdminGetUserSinglePlatformAccount' test.out

#- 202 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["OQ421q7Nb1vrKthV", "vU5on065ApCkVN3Q", "chuQ6pntxB648ss7"]' \
    'rBnvQHAM8gSdIybK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'AdminDeleteUserRolesV3' test.out

#- 203 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "UByHBzfvgtRTPPzw", "roleId": "JmKaLCx3gcidEALW"}, {"namespace": "e6RG5wWznu5AjwR1", "roleId": "Z4fU7ICcaQtuuKUw"}, {"namespace": "3dUwWHhQW3I1y9tj", "roleId": "RLVOXBMa0JiIe1AY"}]' \
    '0tUA7EKASk3USNLh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'AdminSaveUserRoleV3' test.out

#- 204 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    'OBlxRBLgohp8ByTi' \
    '2F6AyUX8w77riPlP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'AdminAddUserRoleV3' test.out

#- 205 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'gJcLbeQf9MICxX7x' \
    'KyCfgwSPz14asyOd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'AdminDeleteUserRoleV3' test.out

#- 206 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": false, "reason": "Zg30pagfP0FfOMBO"}' \
    'peQT4zYIbU4i9mLy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'AdminUpdateUserStatusV3' test.out

#- 207 AdminTrustlyUpdateUserIdentity
$PYTHON -m $MODULE 'iam-admin-trustly-update-user-identity' \
    '{"emailAddress": "X46Alt08rrnG8y2S", "password": "cXkwjpAp82pGcxvX"}' \
    'aG9LzHpMS53jllop' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'AdminTrustlyUpdateUserIdentity' test.out

#- 208 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'wirRo3A8WxnR0YaM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 209 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "sF3f5KLtpTSsPMGD"}' \
    'ZTOwEP5Bhh0NStWI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'AdminUpdateClientSecretV3' test.out

#- 210 AdminCheckThirdPartyLoginPlatformAvailabilityV3
$PYTHON -m $MODULE 'iam-admin-check-third-party-login-platform-availability-v3' \
    'ggmhfAzVdNYP7Ao1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 211 AdminGetRolesV3
$PYTHON -m $MODULE 'iam-admin-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'AdminGetRolesV3' test.out

#- 212 AdminCreateRoleV3
$PYTHON -m $MODULE 'iam-admin-create-role-v3' \
    '{"adminRole": true, "deletable": false, "isWildcard": false, "managers": [{"displayName": "AfKDcDG5bMTba1tU", "namespace": "lFGcP6eL7EpWtPif", "userId": "mO0JK4dP1aZFiSkm"}, {"displayName": "hwVVMGkXNwMYwFyl", "namespace": "jy5bYQdQ87hUHA0F", "userId": "JZwP8GslMpx3m7lE"}, {"displayName": "XTmnTbtjK9RsyoqT", "namespace": "3adB48Jxp2zaItg9", "userId": "jTNZvpFEUI21aSaI"}], "members": [{"displayName": "sMyLKPPIZx0zdNAa", "namespace": "gipZwiaBrFrXtGMj", "userId": "ujfHZB1gMI1B8DXb"}, {"displayName": "37DffTZ7yQz337LL", "namespace": "NCjIySe36SA5dxAT", "userId": "Lv5PkLvraRzChdjD"}, {"displayName": "Gdlk2A2jHbAPNGIn", "namespace": "vbnf4ewKFFLoGggX", "userId": "4gQWyZocvYfr0Rnl"}], "permissions": [{"action": 99, "resource": "2R1IVNnaK6KS71Xs", "schedAction": 69, "schedCron": "BphA9BXpKYgF9Oui", "schedRange": ["gDP0Vjmy7j2BrdCA", "m3slCwaBqHpE55sj", "xBGijw0dQtZNonMr"]}, {"action": 85, "resource": "OU5nukycAUlkUSZK", "schedAction": 96, "schedCron": "8FevJiT98HUBp56Q", "schedRange": ["4WETxtGMs5tPKPuK", "0K4PiMDTR7LxihuO", "n57io0d9dG3yzaNb"]}, {"action": 66, "resource": "kVQnZDUAbINRKQsx", "schedAction": 96, "schedCron": "UnHnfrEdDfY4TTxu", "schedRange": ["8goZgsX4RwfM4qnU", "dcQqZ9F1uivPob0Y", "ZEuXQACDDQryNf9V"]}], "roleName": "GxbOeJe4n9eUlBQZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'AdminCreateRoleV3' test.out

#- 213 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    '2UGePWXbAyGiXa9n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'AdminGetRoleV3' test.out

#- 214 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'UsHCVicuJ7onrUXV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'AdminDeleteRoleV3' test.out

#- 215 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": false, "isWildcard": true, "roleName": "B6xNel4Bxb9KwFYq"}' \
    'dhEVq3hbsApeASfR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'AdminUpdateRoleV3' test.out

#- 216 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    '0ljKxqZcLuhwNDvV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'AdminGetRoleAdminStatusV3' test.out

#- 217 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'alv3bkoMXNzl1ywE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'AdminUpdateAdminRoleStatusV3' test.out

#- 218 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'PiunixlEAHZzHs8x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'AdminRemoveRoleAdminV3' test.out

#- 219 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    '5oPSkZFIV2feXnTR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'AdminGetRoleManagersV3' test.out

#- 220 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "lzAJy9oFOHB2KEsI", "namespace": "dtozVltBhoXE4wgc", "userId": "YT5CdjaJuUzFIeqa"}, {"displayName": "Vr1CE1gu6cYuzC77", "namespace": "J4irvZ9tktWLtDdl", "userId": "mVGK6iolEw6IIpDc"}, {"displayName": "9X5ijmtDGvd9ESdY", "namespace": "0eTkBWA44Qqsi5yO", "userId": "jvl5sRN2ENn1RLi5"}]}' \
    'iMPnbg7o1zYpqUsl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'AdminAddRoleManagersV3' test.out

#- 221 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "iPyXZGYIW5ZDtWbd", "namespace": "kzPP47RcUIi2CoNj", "userId": "4EG2emxKQk8cBrt5"}, {"displayName": "E8k8rzDZ08j6ICP7", "namespace": "5cm8YDChFi3zLvfQ", "userId": "WC85MxWxvW0veFl3"}, {"displayName": "uU1aMD0mczWxc8f1", "namespace": "s2QPMMZsf2dvKZyH", "userId": "ChRPHvdkcKW21B5E"}]}' \
    'FtD2pYaKTz1gcE2X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'AdminRemoveRoleManagersV3' test.out

#- 222 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'CwTkRUIX6IFHNmB9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'AdminGetRoleMembersV3' test.out

#- 223 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "mYBvtOwxjqyrjDAp", "namespace": "eN5eAfRqSgH5xIuB", "userId": "TYOdsvNyk52MQFkV"}, {"displayName": "VEf36S7yPgG48bk6", "namespace": "PwH1tdEAJSqXA0Wv", "userId": "0zWGvkc6byp3mvyY"}, {"displayName": "T3GuaZVTxBlw1IWe", "namespace": "XKFT4rfSbbSlDPGf", "userId": "9Fn32SJNPZkEfkAc"}]}' \
    'JTMS4pVRcCHIGfmC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'AdminAddRoleMembersV3' test.out

#- 224 AdminRemoveRoleMembersV3
eval_tap 0 224 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 225 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 79, "resource": "FjRh8mLFTJLveQSD", "schedAction": 100, "schedCron": "R1HCkf2Sw78lLGKj", "schedRange": ["DHuXt358gzqRMuMP", "rIekxq58fikq83hq", "J7HP63Se6kVW5fkl"]}, {"action": 98, "resource": "0ImLBv6nUU0r1rfX", "schedAction": 39, "schedCron": "hNpOTE4toH57yr01", "schedRange": ["N33p1Gha8HwpagvE", "RZI6CqhcknhecNv2", "Tw6YKhVrYkMqXkQ7"]}, {"action": 33, "resource": "kZ44UXgdBqtJaRyD", "schedAction": 23, "schedCron": "pXx60GmEX9x2BYpy", "schedRange": ["KEBQ7TW7lZvDbwFJ", "JhBRdq8BgAI81k4G", "r7jVVx5l3yrH9HR4"]}]}' \
    'reG0HwUXxQTf5YpD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'AdminUpdateRolePermissionsV3' test.out

#- 226 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 96, "resource": "XETZwqdzAX28DikG", "schedAction": 21, "schedCron": "TkFcLBrg2JB0WiCp", "schedRange": ["VBwvAffJ3btt0PpQ", "Y3Pnnic80yEO8dL6", "Jh10XMUGeDavCKra"]}, {"action": 6, "resource": "v0C00dtNGGzbGYSY", "schedAction": 29, "schedCron": "g9NO1Z2DvnAxH3pS", "schedRange": ["3jyCkGKltBNE2Ubh", "NtH3yYg4Qnn2uhdw", "7C9Bx1LQOTCbAPLC"]}, {"action": 95, "resource": "iqrkyJFOVaewFcv9", "schedAction": 14, "schedCron": "7rEXi6LEqJERpbxE", "schedRange": ["q07txnvZZeAf7QBu", "ZK5GJlBncg8tQnJO", "KHC16xjJZ4kiU3N8"]}]}' \
    '556ll2LQWpdESOBV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'AdminAddRolePermissionsV3' test.out

#- 227 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["7wZJsg7wSv9lyRyT", "dYBUljvBzvYNEtfg", "BFikt18cQ677SotD"]' \
    'EtU2xBSEQ8rBKc2K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'AdminDeleteRolePermissionsV3' test.out

#- 228 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '87' \
    'oJXxVEfnaqX8NuZt' \
    'RUTKUvR69PImy6Cc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'AdminDeleteRolePermissionV3' test.out

#- 229 AdminGetMyUserV3
$PYTHON -m $MODULE 'iam-admin-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'AdminGetMyUserV3' test.out

#- 230 UserAuthenticationV3
$PYTHON -m $MODULE 'iam-user-authentication-v3' \
    'wlqJ4MO3L8x1H5Og' \
    'zHypgsSeKCvtPz7j' \
    'agBG9a1TZ87ltClc' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 230 'UserAuthenticationV3' test.out

#- 231 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    '3RDXF5055tUlenim' \
    'jIbm0riCaNp8dUBD' \
    'inAB6HqIWIi5Bvb1' \
    'rcuEtWAF763kci7l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'AuthenticationWithPlatformLinkV3' test.out

#- 232 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    'T62BOHaso53W3U2M' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 232 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 233 RequestOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-request-one-time-linking-code-v3' \
    'u9ZGMWou1U0RVCf3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'RequestOneTimeLinkingCodeV3' test.out

#- 234 ValidateOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-validate-one-time-linking-code-v3' \
    'gMWDAodCKqfqzeex' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'ValidateOneTimeLinkingCodeV3' test.out

#- 235 RequestTokenByOneTimeLinkCodeResponseV3
$PYTHON -m $MODULE 'iam-request-token-by-one-time-link-code-response-v3' \
    'HA70NgJTxjtzgO7W' \
    '3taRvJ6lKWJwHO65' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 236 GetCountryLocationV3
$PYTHON -m $MODULE 'iam-get-country-location-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'GetCountryLocationV3' test.out

#- 237 Logout
$PYTHON -m $MODULE 'iam-logout' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'Logout' test.out

#- 238 RequestTokenExchangeCodeV3
$PYTHON -m $MODULE 'iam-request-token-exchange-code-v3' \
    'aOFDwpqy7XOU3Dwg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'RequestTokenExchangeCodeV3' test.out

#- 239 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'lyMGNll4O8ELahcN' \
    'JqRjepck1l0qxRyQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 240 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    '2pi7xuAufJakIPXO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'RevokeUserV3' test.out

#- 241 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    'QznHZTj8oYfWObyN' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 241 'AuthorizeV3' test.out

#- 242 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'KVSQsaCokoGynp6x' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 242 'TokenIntrospectionV3' test.out

#- 243 GetJWKSV3
$PYTHON -m $MODULE 'iam-get-jwksv3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'GetJWKSV3' test.out

#- 244 SendMFAAuthenticationCode
$PYTHON -m $MODULE 'iam-send-mfa-authentication-code' \
    'cqNKJnAhrSt96OaA' \
    'RAjHLGV3sNxS8uLB' \
    'ZiVRYIyQLcslTEqg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'SendMFAAuthenticationCode' test.out

#- 245 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    'VNG8AqktgvjwNJAw' \
    'IpEy2ZNpojZ24I2n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'Change2faMethod' test.out

#- 246 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    '25smsrmJFHGiYnyh' \
    'bqxLuTZIxgiUaiyy' \
    '0aWrshpmb1C9Al7e' \
    'true' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'Verify2faCode' test.out

#- 247 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'rbNRE0xyYPUZHyLG' \
    'Q52IjGpRJCUJpscO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 248 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'TkWETSJ04c5MGInO' \
    '4yznh2YpZvvmziSS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'AuthCodeRequestV3' test.out

#- 249 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'iSpXeWOGayfRkQvo' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 249 'PlatformTokenGrantV3' test.out

#- 250 GetRevocationListV3
$PYTHON -m $MODULE 'iam-get-revocation-list-v3' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 250 'GetRevocationListV3' test.out

#- 251 TokenRevocationV3
$PYTHON -m $MODULE 'iam-token-revocation-v3' \
    'N06SpNOnuSksfm7h' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 251 'TokenRevocationV3' test.out

#- 252 SimultaneousLoginV3
$PYTHON -m $MODULE 'iam-simultaneous-login-v3' \
    'epicgames' \
    'LRvQOgoaBooTawHL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'SimultaneousLoginV3' test.out

#- 253 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'urn:ietf:params:oauth:grant-type:extend_client_credentials' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 253 'TokenGrantV3' test.out

#- 254 VerifyTokenV3
$PYTHON -m $MODULE 'iam-verify-token-v3' \
    'h9FgvfhiLEAkA7n6' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 254 'VerifyTokenV3' test.out

#- 255 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    '516ydoRT1qZBrdTn' \
    'GrwHeWoQXPFWFaKb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'PlatformAuthenticationV3' test.out

#- 256 PlatformTokenRefreshV3
$PYTHON -m $MODULE 'iam-platform-token-refresh-v3' \
    'DgrGkv8SVwLyS4Vb' \
    'HJvD0lL7aZUY9d1I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'PlatformTokenRefreshV3' test.out

#- 257 PublicGetInputValidations
$PYTHON -m $MODULE 'iam-public-get-input-validations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'PublicGetInputValidations' test.out

#- 258 PublicGetInputValidationByField
$PYTHON -m $MODULE 'iam-public-get-input-validation-by-field' \
    'dud8bjYeBVMr7zHY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'PublicGetInputValidationByField' test.out

#- 259 PublicGetCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction-v3' \
    'mRE4X36KUOdfEmoI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'PublicGetCountryAgeRestrictionV3' test.out

#- 260 PublicGetConfigValueV3
$PYTHON -m $MODULE 'iam-public-get-config-value-v3' \
    'YwSxxAsfwDMivWqH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'PublicGetConfigValueV3' test.out

#- 261 PublicGetCountryListV3
$PYTHON -m $MODULE 'iam-public-get-country-list-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'PublicGetCountryListV3' test.out

#- 262 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-public-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 263 RetrieveActiveOIDCClientsPublicV3
$PYTHON -m $MODULE 'iam-retrieve-active-oidc-clients-public-v3' \
    'HGlnAnEu6EKYceTE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 264 PublicListUserIDByPlatformUserIDsV3
eval_tap 0 264 'PublicListUserIDByPlatformUserIDsV3 # SKIP deprecated' test.out

#- 265 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    'qYudHlA4AxeEIfUx' \
    'J2xMSNNBxCeN3pGn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'PublicGetUserByPlatformUserIDV3' test.out

#- 266 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    '46fGvodt413MRdG8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'PublicGetAsyncStatus' test.out

#- 267 PublicSearchUserV3
$PYTHON -m $MODULE 'iam-public-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'PublicSearchUserV3' test.out

#- 268 PublicCreateUserV3
$PYTHON -m $MODULE 'iam-public-create-user-v3' \
    '{"PasswordMD5Sum": "qAPiANv2Ar8yXV6q", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "vcUYDeWPZ8yhwQ0g", "policyId": "Idj1lTJdNLmAvEdE", "policyVersionId": "BVAU3rbkv8V98cup"}, {"isAccepted": true, "localizedPolicyVersionId": "5WsiuITRMSPOUfWQ", "policyId": "wr4PYf48r66MaTox", "policyVersionId": "Biliy2vtRkpqL6Kr"}, {"isAccepted": true, "localizedPolicyVersionId": "cNz83J57t6OcYPQ5", "policyId": "bk5IeuAi3zWFGorC", "policyVersionId": "bncoj5RvEtXiKyUG"}], "authType": "dNfMiwgSvsTRmJsO", "code": "m0wVFyHvFhRMCFJu", "country": "A0DEMgykqqjoHTpI", "dateOfBirth": "PMSRAuPI7mSZQ5UD", "displayName": "m1q51PlW2HG8LAiI", "emailAddress": "zuo321Ll90IBFsSb", "password": "3FsV2PnCs9R0D5jZ", "reachMinimumAge": true, "uniqueDisplayName": "GglVgxjOGQGlHm8V"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'PublicCreateUserV3' test.out

#- 269 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'TN56tJKwD8O07L9G' \
    'G1uenDihceaLdgPZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'CheckUserAvailability' test.out

#- 270 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["I0fKW8LeQxItaK6s", "3Hha69MgxjGJx62m", "kfVlu4bGB1pyk0Pp"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'PublicBulkGetUsers' test.out

#- 271 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "xXZDy5Pmbu7RrD9a", "languageTag": "5mdlXTCL467xHbAi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'PublicSendRegistrationCode' test.out

#- 272 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "D3Pr3mXZO1PnbSlf", "emailAddress": "VRlAI8F2f3mEv09k"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'PublicVerifyRegistrationCode' test.out

#- 273 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "AA5hnQtd4bcivHGI", "languageTag": "EplRpcHDWcIoJ45L"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'PublicForgotPasswordV3' test.out

#- 274 PublicValidateUserInput
$PYTHON -m $MODULE 'iam-public-validate-user-input' \
    '{"displayName": "0Ze3YamxKDSZTl4U", "password": "iJSCbG4UmG3TkMTz", "uniqueDisplayName": "OcBIciiKwRs1E7sH", "username": "2G9MJ6F7Rr7O15jq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'PublicValidateUserInput' test.out

#- 275 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    'eKssQpme6eyM48tE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'GetAdminInvitationV3' test.out

#- 276 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"PasswordMD5Sum": "7eJRsXNeveQXqnFR", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "mEIX40XOUoLOa7oD", "policyId": "z00gxcoaH6u9TVf4", "policyVersionId": "DvEzpoPRiClZ6rlw"}, {"isAccepted": false, "localizedPolicyVersionId": "9AHMLHqguYykVWzN", "policyId": "wPcvGyieBsRUduW5", "policyVersionId": "lxSlorWEGN5bPGSO"}, {"isAccepted": true, "localizedPolicyVersionId": "iiItrSrEJMBAIwTL", "policyId": "krMDFQfpQ9o0GJMT", "policyVersionId": "fqRRaZozM8xCBoaS"}], "authType": "2FMwfWNCbN5GelVO", "code": "U0hHnsCl5k6Jxh5m", "country": "kmQzKg0jWCjpGwh7", "dateOfBirth": "pLAi5JmzvM6JFKB8", "displayName": "ikHpl3sNRaDEC2Ok", "emailAddress": "XA3WqypoOw0H2s0s", "password": "ibQNBz81zRPntxpg", "reachMinimumAge": false, "uniqueDisplayName": "UCTrS7Gi9Iigk9va"}' \
    'mO7Q2WQwSWqSs05r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'CreateUserFromInvitationV3' test.out

#- 277 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "jISy4B0X9AJdkT7U", "country": "YCV8agvwOI2LlOQN", "dateOfBirth": "RN132RdgwMXv9olK", "displayName": "pRyWQim3qlART9mP", "languageTag": "PmYUvlkBGPJFaFzk", "uniqueDisplayName": "ABC8zWMcYW5iRrw3", "userName": "2FRg8y4rOuj7J6ij"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'UpdateUserV3' test.out

#- 278 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "JbcycXmBcrJLb7la", "country": "byotifVk9KyqceGv", "dateOfBirth": "0CEDTVSjINYeKLow", "displayName": "G7UQB9pXzuCK5qd2", "languageTag": "m8A5axixm9X9TXNh", "uniqueDisplayName": "N8y1PVriIyv9kjui", "userName": "AGiXx47etMikLFgg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'PublicPartialUpdateUserV3' test.out

#- 279 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "YDc2FMbzZoeKagnK", "emailAddress": "f2Yifzvr9OqTsInG", "languageTag": "zHFpFXYJtHtqwoIw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'PublicSendVerificationCodeV3' test.out

#- 280 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "QBeIALI8JNIII4jr", "contactType": "zrPsuMziNM8AB7RR", "languageTag": "xiZH3ngnitURdMjZ", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'PublicUserVerificationV3' test.out

#- 281 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "CaeklQcFY1QIk1h5", "country": "EKvMGd6hQ2mHjmLu", "dateOfBirth": "4oFlReHy0JyZv7ho", "displayName": "nqeiGTTqpgVsY1kP", "emailAddress": "NdJiJXB3yjNUPIfv", "password": "oXRO0CkW1ZcgUSbb", "uniqueDisplayName": "nffBWRaJN1SjCFLD", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'PublicUpgradeHeadlessAccountV3' test.out

#- 282 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "JfAhJGwSYEZjEb0P", "password": "v35fEk9s11bFXkf7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'PublicVerifyHeadlessAccountV3' test.out

#- 283 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "rQJ4Kj7Qyo9tUpti", "mfaToken": "yZzRX8Y4rxRWZPe4", "newPassword": "ZLAQWuBJwxObZqMG", "oldPassword": "xhffy9cHrLYfftad"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'PublicUpdatePasswordV3' test.out

#- 284 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    '99JDcnn7f2d8SOWP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'PublicCreateJusticeUser' test.out

#- 285 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    '2dw6Uy88WpQalG38' \
    'VOo82aLD9jUjuDIT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'PublicPlatformLinkV3' test.out

#- 286 PublicPlatformUnlinkV3
eval_tap 0 286 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 287 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'jifWRbmtK7MTxcCW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'PublicPlatformUnlinkAllV3' test.out

#- 288 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    'nMiCLsjroKHPApA8' \
    'GsGwyocvY9NePjLJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'PublicForcePlatformLinkV3' test.out

#- 289 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'QJXwUApJWohXn01R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'PublicWebLinkPlatform' test.out

#- 290 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'B7pu7BaONXyE5fID' \
    'bsMi48xOYVvEcEm5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'PublicWebLinkPlatformEstablish' test.out

#- 291 PublicProcessWebLinkPlatformV3
$PYTHON -m $MODULE 'iam-public-process-web-link-platform-v3' \
    '3BYMBacQBIuDVs7U' \
    '0AJtWPRteszMTd0R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'PublicProcessWebLinkPlatformV3' test.out

#- 292 PublicGetUsersPlatformInfosV3
$PYTHON -m $MODULE 'iam-public-get-users-platform-infos-v3' \
    '{"platformId": "5Fsrf9xbVfgvG617", "userIds": ["GmxzClkR3M6Twpwq", "3nLwxnJKjOo9fvfX", "F1VsikD3IphQQiRc"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'PublicGetUsersPlatformInfosV3' test.out

#- 293 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"clientId": "OtsthUwgQzNHUZ0l", "code": "1FRfOjJUmCbi2llk", "emailAddress": "sf6GA8vTt92kldCo", "languageTag": "yRdiOikUdqGocLYB", "newPassword": "aRC7T5qSl7WN3ncP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'ResetPasswordV3' test.out

#- 294 PublicGetUserByUserIdV3
eval_tap 0 294 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 295 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    'kqiTKzz72PKXjShM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'PublicGetUserBanHistoryV3' test.out

#- 296 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    '2DvesmMIbiQfaHxl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 297 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    '2YUNRLRjgKqSSYgZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'PublicGetUserInformationV3' test.out

#- 298 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'nVfa8govttlpFAq8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'PublicGetUserLoginHistoriesV3' test.out

#- 299 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'oebnS4Y2zkGYTr9y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'PublicGetUserPlatformAccountsV3' test.out

#- 300 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    'JIveX52r6Inl9VTJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'PublicListJusticePlatformAccountsV3' test.out

#- 301 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "B9Al3mn2DsHDHzSV", "platformUserId": "JzhU5Z44zgZ1fieL"}' \
    'dl3Y82DOj5kPuNRZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'PublicLinkPlatformAccount' test.out

#- 302 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["ZaUccuBYep9n7b17", "fsblalJrwQiU3DD0", "xZFH1fHFLSr0O4rE"], "requestId": "ZTbFDj2L2McvCrrR"}' \
    '7h9uKLXDaRf3pxKt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'PublicForceLinkPlatformWithProgression' test.out

#- 303 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    'JbRY5luCwKrt6wn3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'PublicGetPublisherUserV3' test.out

#- 304 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'yVrRCh6j7rpv8K8f' \
    'BAeRa1R6ksxLYGkO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 305 PublicGetRolesV3
$PYTHON -m $MODULE 'iam-public-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'PublicGetRolesV3' test.out

#- 306 PublicGetRoleV3
$PYTHON -m $MODULE 'iam-public-get-role-v3' \
    'LgReff5IHxLJIemN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'PublicGetRoleV3' test.out

#- 307 PublicGetMyUserV3
$PYTHON -m $MODULE 'iam-public-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'PublicGetMyUserV3' test.out

#- 308 PublicGetLinkHeadlessAccountToMyAccountConflictV3
$PYTHON -m $MODULE 'iam-public-get-link-headless-account-to-my-account-conflict-v3' \
    'HbzgAFjtjC7suvgI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 309 LinkHeadlessAccountToMyAccountV3
$PYTHON -m $MODULE 'iam-link-headless-account-to-my-account-v3' \
    '{"chosenNamespaces": ["UkB2PAGJqOrkdlZB", "246OY0dPVMd2WDUV", "EQTpfyAIoF7qsANB"], "oneTimeLinkCode": "bEKQrgocpjGNenRl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'LinkHeadlessAccountToMyAccountV3' test.out

#- 310 PublicSendVerificationLinkV3
$PYTHON -m $MODULE 'iam-public-send-verification-link-v3' \
    '{"languageTag": "DORLvP7ynTuXzafC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'PublicSendVerificationLinkV3' test.out

#- 311 PublicVerifyUserByLinkV3
$PYTHON -m $MODULE 'iam-public-verify-user-by-link-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'PublicVerifyUserByLinkV3' test.out

#- 312 PlatformAuthenticateSAMLV3Handler
$PYTHON -m $MODULE 'iam-platform-authenticate-samlv3-handler' \
    'qlMrrVIehVCf3AwI' \
    'zUdQ6sTrUg7Z0SLr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'PlatformAuthenticateSAMLV3Handler' test.out

#- 313 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'ZraV3NLBUSrFnzE6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'LoginSSOClient' test.out

#- 314 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'yR1wLTgjsnB2LFVr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'LogoutSSOClient' test.out

#- 315 RequestTargetTokenResponseV3
$PYTHON -m $MODULE 'iam-request-target-token-response-v3' \
    'ZRrOntm2KjbfCOuW' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 315 'RequestTargetTokenResponseV3' test.out

#- 316 AdminListInvitationHistoriesV4
$PYTHON -m $MODULE 'iam-admin-list-invitation-histories-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'AdminListInvitationHistoriesV4' test.out

#- 317 AdminGetDevicesByUserV4
$PYTHON -m $MODULE 'iam-admin-get-devices-by-user-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'AdminGetDevicesByUserV4' test.out

#- 318 AdminGetBannedDevicesV4
$PYTHON -m $MODULE 'iam-admin-get-banned-devices-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'AdminGetBannedDevicesV4' test.out

#- 319 AdminGetUserDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-user-device-bans-v4' \
    '3dBmFwUO7Y0xhMLw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'AdminGetUserDeviceBansV4' test.out

#- 320 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "xgRpTSUppvO3QG68", "deviceId": "KeD7QJQEEVDAg045", "deviceType": "BvtPd7ibBA3sd51m", "enabled": true, "endDate": "QzRBY1UrefgmVFBV", "ext": {"z4KRCU0p4jIt01gz": {}, "H17IcfJyGulmByN5": {}, "rcDA3Wcv9ouALjgL": {}}, "reason": "ZZzLU9w8MJRIzIgJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'AdminBanDeviceV4' test.out

#- 321 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    'Kg9y86BgnBQtm5Ai' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'AdminGetDeviceBanV4' test.out

#- 322 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": false}' \
    '6DKNSeb2UMWOgVeY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'AdminUpdateDeviceBanV4' test.out

#- 323 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    'kCvqq0tO15pEVG7s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'AdminGenerateReportV4' test.out

#- 324 AdminGetDeviceTypesV4
$PYTHON -m $MODULE 'iam-admin-get-device-types-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'AdminGetDeviceTypesV4' test.out

#- 325 AdminGetDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-device-bans-v4' \
    'NihxpuuL7DJCxvzZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'AdminGetDeviceBansV4' test.out

#- 326 AdminDecryptDeviceV4
$PYTHON -m $MODULE 'iam-admin-decrypt-device-v4' \
    'nh8oBAk1MNCAUmdn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'AdminDecryptDeviceV4' test.out

#- 327 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    'LaVRUu5VbjwPa9rY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'AdminUnbanDeviceV4' test.out

#- 328 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    'gHaxeTT3ebuaYPNB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'AdminGetUsersByDeviceV4' test.out

#- 329 AdminGetNamespaceInvitationHistoryV4
$PYTHON -m $MODULE 'iam-admin-get-namespace-invitation-history-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'AdminGetNamespaceInvitationHistoryV4' test.out

#- 330 AdminGetNamespaceUserInvitationHistoryV4
$PYTHON -m $MODULE 'iam-admin-get-namespace-user-invitation-history-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 331 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"count": 31}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'AdminCreateTestUsersV4' test.out

#- 332 AdminCreateUserV4
$PYTHON -m $MODULE 'iam-admin-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "9wA4LxO2n7WJQFzB", "policyId": "CD9S03D7JLsIM3VO", "policyVersionId": "MRvvqkXDMPzOB08t"}, {"isAccepted": true, "localizedPolicyVersionId": "rxt6LflBJjokLAaL", "policyId": "4oAF2lqx8yneWKrO", "policyVersionId": "y4xcg30BqC5W7g7h"}, {"isAccepted": false, "localizedPolicyVersionId": "nNL3DQK45IAtbyUD", "policyId": "DSJSV8pzl1lfIR7j", "policyVersionId": "netIJPGObyWCLyFP"}], "authType": "EMAILPASSWD", "code": "axkKxEDvSoi2X9Sy", "country": "gvMG8QAaWUhIguMv", "dateOfBirth": "KDOrx0wQXKEroyKz", "displayName": "2reP63EVHT72Vuho", "emailAddress": "GP2IFXGU5hujEfCM", "password": "t95DEjxqhgYqmMqI", "passwordMD5Sum": "dlRrQmuILkeRUafU", "reachMinimumAge": true, "uniqueDisplayName": "GHHGI7csI8ecZSvz", "username": "XYOytshBcKQytQag"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'AdminCreateUserV4' test.out

#- 333 AdminBulkUpdateUserAccountTypeV4
$PYTHON -m $MODULE 'iam-admin-bulk-update-user-account-type-v4' \
    '{"testAccount": true, "userIds": ["cC5Ea29JhfFGN964", "J8WOgsAj2Rmf1DXv", "AIkzTRNRVyeEGu1I"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 334 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["COCmLAmcaEFBKgy9", "2LYqtQcDN7OMCehk", "42acy8wsWaPyppR3"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'AdminBulkCheckValidUserIDV4' test.out

#- 335 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "ztPSALA8LlV2sccb", "country": "Vr6HSiXVzrG4EdKn", "dateOfBirth": "8eypTzI497DG0ZNo", "displayName": "Jvvi4Ys50iE7IjZo", "languageTag": "DzMmMgoMxZZ9AutW", "skipLoginQueue": true, "uniqueDisplayName": "FQb6S0VmaTR7E3mk", "userName": "DSQkgVMhLbM6H1Mn"}' \
    'NSKd0KStITvGQtzw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'AdminUpdateUserV4' test.out

#- 336 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "jGtGTr238G8Aevk3", "emailAddress": "k14782W2oNo3X4m6"}' \
    'wms9SPaHlqtDPry2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'AdminUpdateUserEmailAddressV4' test.out

#- 337 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    'vMON7sdhlilfpDT8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'AdminDisableUserMFAV4' test.out

#- 338 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'o2iFrYtGfCZCcrvs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'AdminListUserRolesV4' test.out

#- 339 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["V2I4X26p21iDBZGJ", "8ZMLwPJ871nV5ALS", "7cneNLItUJgh74ty"], "roleId": "xkTR8ZCVJtkxjBJr"}' \
    'NeQRsqkkKK2qxqzy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'AdminUpdateUserRoleV4' test.out

#- 340 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["4KSA5UtSXWjANSWI", "T9TLnuMLNJAEk3A6", "A6rYiIu8eLdWykhB"], "roleId": "xLFnKnSYC9yyBYep"}' \
    'IqtrikdAbdOT6iSR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'AdminAddUserRoleV4' test.out

#- 341 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["dEg8NYuc4q5sJVza", "KGDOULJbjHphqjHG", "GAhfWaXqkA5fuVYO"], "roleId": "sMFo9tnqa4LEWGg1"}' \
    'r4nW4pBcPPaiaM1o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'AdminRemoveUserRoleV4' test.out

#- 342 AdminGetRolesV4
$PYTHON -m $MODULE 'iam-admin-get-roles-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'AdminGetRolesV4' test.out

#- 343 AdminCreateRoleV4
$PYTHON -m $MODULE 'iam-admin-create-role-v4' \
    '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "NbiJWP5r9EwbIGMG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'AdminCreateRoleV4' test.out

#- 344 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'J70P9IqAyNlZ2OwF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'AdminGetRoleV4' test.out

#- 345 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'SebBkXkaxtY97TMJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'AdminDeleteRoleV4' test.out

#- 346 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "O4GDHT6ZaUUkvlTK"}' \
    'AhrxqHw7f813qNjz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'AdminUpdateRoleV4' test.out

#- 347 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 24, "resource": "FJZGnNa5yOM68r4W", "schedAction": 75, "schedCron": "fDZL80oPQ0s7QhC8", "schedRange": ["hgSgytNEojK3YgWH", "9l7rv6XUSINd4keC", "eiw7P2PtUrPawQPa"]}, {"action": 70, "resource": "YK3SeYvULYNIhs5P", "schedAction": 75, "schedCron": "GTJmgofq7nlF5Ch8", "schedRange": ["J2Qs990APOU4hcdw", "lnsTap2RJpHtncLy", "wP3WlLmNdQGk6vne"]}, {"action": 68, "resource": "Xexseo2e6BCNJTTR", "schedAction": 71, "schedCron": "syvkYd78GsJGLbnb", "schedRange": ["4Nvw7fnm4MnOqnqN", "erQoHiDIJayvSNt8", "EQXsMbYi1yEI9ych"]}]}' \
    'tyhjZSeDCKT4ilZB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'AdminUpdateRolePermissionsV4' test.out

#- 348 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 96, "resource": "apDTR3aL9sunWp7V", "schedAction": 72, "schedCron": "s8LmXm0FaJMIjgzU", "schedRange": ["02nZWwBdEFpfccau", "YDc86pxK9KhF4KRV", "PoIuzAuQNjAfvOE2"]}, {"action": 4, "resource": "b7ZzQuBPyNi1GhZH", "schedAction": 63, "schedCron": "wbqOB4mD3E7AFHql", "schedRange": ["TTkL8cmpA0sZ0tge", "R4UV5SMZ8GUvWZvo", "Cmprkv7A8MRutCKC"]}, {"action": 39, "resource": "qDWqbPmwQw8J7na1", "schedAction": 84, "schedCron": "p3cIxOI33nt54i5h", "schedRange": ["dAezedcppbujZh1f", "YXF6R9Rz3HVP2Y9W", "qSRiwV3UZg0UJLPM"]}]}' \
    'keUwa6OVKxCMxuf0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'AdminAddRolePermissionsV4' test.out

#- 349 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["P9r5f6fdmyi4kQnO", "FbBtvBw81hUgtONC", "IoZ2rkomSj52mAIM"]' \
    'o6EW9QhzU8FwQtZp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'AdminDeleteRolePermissionsV4' test.out

#- 350 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'fUoyoiUjmqOyQ7am' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'AdminListAssignedUsersV4' test.out

#- 351 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["mFgHprdM9viFWmez", "rQOWH03zyr7kRbC3", "1YMJfRiD7djt1VeO"], "namespace": "FBDA3gvCRfoBijpb", "userId": "MblGWnp94a6GKY0B"}' \
    'rHiWs0B0RhxQtgVg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'AdminAssignUserToRoleV4' test.out

#- 352 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "bN8kr872hJvrOCdA", "userId": "EZ2RHt3uQ5nFrPXw"}' \
    'xJZQpkeDHr0hjKBp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'AdminRevokeUserFromRoleV4' test.out

#- 353 AdminInviteUserNewV4
$PYTHON -m $MODULE 'iam-admin-invite-user-new-v4' \
    '{"assignedNamespaces": ["DMIvK4qfQ0pQIcYM", "BktqqAAF6YG1dD1v", "ECBb01VFFhO5FcdT"], "emailAddresses": ["vIDQI2uIi2SNZKql", "JZsdnY04DIyosprZ", "PBaERb7U9kK4VctU"], "isAdmin": false, "isNewStudio": true, "languageTag": "DhFVNa0JYzTbdnOn", "namespace": "EarWP4nrJ5fNESRV", "roleId": "GeswvkzLNIITUJGj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'AdminInviteUserNewV4' test.out

#- 354 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "5FYaSgewLWHcBxz5", "country": "LpdkRCAU8HhmXC68", "dateOfBirth": "JFPdxhvBKee6wG66", "displayName": "YPD4vNdENY1r1rI0", "languageTag": "T97qA1OiblWlz2LX", "skipLoginQueue": true, "uniqueDisplayName": "qcONcJIsYRQz97fR", "userName": "WI17eNP3Y2nWlS9S"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'AdminUpdateMyUserV4' test.out

#- 355 AdminDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-disable-my-authenticator-v4' \
    '{"mfaToken": "fjh0htyVaGj4y9ah"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'AdminDisableMyAuthenticatorV4' test.out

#- 356 AdminEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-enable-my-authenticator-v4' \
    'S7h7XVlmc5Rs5FVQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'AdminEnableMyAuthenticatorV4' test.out

#- 357 AdminGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-admin-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 358 AdminGetMyBackupCodesV4
eval_tap 0 358 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 359 AdminGenerateMyBackupCodesV4
eval_tap 0 359 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 360 AdminDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-disable-my-backup-codes-v4' \
    '{"mfaToken": "SIqObR55tV0BlN1i"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'AdminDisableMyBackupCodesV4' test.out

#- 361 AdminDownloadMyBackupCodesV4
eval_tap 0 361 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 362 AdminEnableMyBackupCodesV4
eval_tap 0 362 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 363 AdminGetBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-get-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'AdminGetBackupCodesV4' test.out

#- 364 AdminGenerateBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-generate-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'AdminGenerateBackupCodesV4' test.out

#- 365 AdminEnableBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-enable-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'AdminEnableBackupCodesV4' test.out

#- 366 AdminChallengeMyMFAV4
$PYTHON -m $MODULE 'iam-admin-challenge-my-mfav4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'AdminChallengeMyMFAV4' test.out

#- 367 AdminSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-admin-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'AdminSendMyMFAEmailCodeV4' test.out

#- 368 AdminDisableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-disable-my-email-v4' \
    '{"mfaToken": "Fvw0GSLBmie8SJck"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'AdminDisableMyEmailV4' test.out

#- 369 AdminEnableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-enable-my-email-v4' \
    'SRbu7hgmUm7RVCUR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'AdminEnableMyEmailV4' test.out

#- 370 AdminGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-admin-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'AdminGetMyEnabledFactorsV4' test.out

#- 371 AdminMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-admin-make-factor-my-default-v4' \
    'EDdoGatGQ1SeOXsg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'AdminMakeFactorMyDefaultV4' test.out

#- 372 AdminGetMyOwnMFAStatusV4
$PYTHON -m $MODULE 'iam-admin-get-my-own-mfa-status-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'AdminGetMyOwnMFAStatusV4' test.out

#- 373 AdminGetMyMFAStatusV4
eval_tap 0 373 'AdminGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 374 AdminInviteUserV4
eval_tap 0 374 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 375 AuthenticationWithPlatformLinkV4
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v4' \
    '4jofp9PvlQ1xdmr4' \
    'JDpvZgvPGHjV7MNT' \
    'pM7fSods1zdVT0aW' \
    'j58Othvd3jzMDAf4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'AuthenticationWithPlatformLinkV4' test.out

#- 376 GenerateTokenByNewHeadlessAccountV4
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v4' \
    '0gKSizvmxts5HSQv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 377 Verify2faCodeV4
$PYTHON -m $MODULE 'iam-verify2fa-code-v4' \
    'RAPG9JoVSLrbs5ni' \
    'XkjpkOgRCC7qfz5j' \
    'V7NTRYld9FJJ10go' \
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'Verify2faCodeV4' test.out

#- 378 PlatformTokenGrantV4
$PYTHON -m $MODULE 'iam-platform-token-grant-v4' \
    'q8uq79Du28SRRAMa' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 378 'PlatformTokenGrantV4' test.out

#- 379 SimultaneousLoginV4
$PYTHON -m $MODULE 'iam-simultaneous-login-v4' \
    'steam' \
    'FEzppeticckSUon7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'SimultaneousLoginV4' test.out

#- 380 TokenGrantV4
$PYTHON -m $MODULE 'iam-token-grant-v4' \
    'authorization_code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 380 'TokenGrantV4' test.out

#- 381 RequestTargetTokenResponseV4
$PYTHON -m $MODULE 'iam-request-target-token-response-v4' \
    'cLQRQtC927GneBM8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 381 'RequestTargetTokenResponseV4' test.out

#- 382 PublicListUserIDByPlatformUserIDsV4
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v4' \
    '{"platformUserIds": ["LvzgyIVzGFBLJ5vb", "C9NfLTFJGOzAIAqp", "mkDdFSs4s7u1VUuL"]}' \
    'menyxTQVkEg5wouU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 383 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "nbG7aww2TANW1Or7", "policyId": "TvLoL0wwHoRMNexB", "policyVersionId": "Oron8wIdUbp7xVMK"}, {"isAccepted": false, "localizedPolicyVersionId": "ZMcVFcrixULzSeTn", "policyId": "UWGxxfnMIDSCPr1m", "policyVersionId": "1Fg6tc250c2okDTe"}, {"isAccepted": false, "localizedPolicyVersionId": "Gtg812NQb5Glh8sr", "policyId": "TlTj61WdV2XUo1BO", "policyVersionId": "1rE7E12Fapao5jo9"}], "authType": "EMAILPASSWD", "country": "HjAx7rZTvew0WVDS", "dateOfBirth": "MNr23LV7xZEEv7O1", "displayName": "lwxVTRll0GIEUJtM", "emailAddress": "C8NyV2HLHZT3oYJl", "password": "C4ie3InnSA22NHTb", "passwordMD5Sum": "4qXYyJUAlKlTwdJE", "uniqueDisplayName": "PoemVtmVXTs3tCu4", "username": "F9IgDT2tq2V2lMzf", "verified": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'PublicCreateTestUserV4' test.out

#- 384 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "CZ90DqQgP6ynrQjY", "policyId": "H0N2loTnRa0KiQWP", "policyVersionId": "xd1gqlwx9CE4Wcsm"}, {"isAccepted": true, "localizedPolicyVersionId": "tCkIgcwiDWQFghmI", "policyId": "i6fphDw3p9QWqwTF", "policyVersionId": "2pOJsY86xAf5y1iy"}, {"isAccepted": false, "localizedPolicyVersionId": "1FkEEXlKiTIDgP7w", "policyId": "uXQdfW99JglScoOl", "policyVersionId": "kkBxiXf8OBQRqXWX"}], "authType": "EMAILPASSWD", "code": "EDRuYBnWiEsOnDfI", "country": "AN04f5kSONmw1BDq", "dateOfBirth": "qSctLL4WfGq8JCDn", "displayName": "wGWgccuzuc6QDRMG", "emailAddress": "dBPbUyHTYPS8CGKX", "password": "Gon2ecc65YAFLweD", "passwordMD5Sum": "9Z7U2lNkorrw9QH3", "reachMinimumAge": true, "uniqueDisplayName": "keBe4Tvb3fHCIJZk", "username": "wEcCRi2U7s2ZQAar"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'PublicCreateUserV4' test.out

#- 385 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "OF9VV7JgCOm4wL72", "policyId": "9Hma0nCdCEFcf2do", "policyVersionId": "BrfHiHXXgvu496H0"}, {"isAccepted": true, "localizedPolicyVersionId": "5BxVe8iW7sGELnMd", "policyId": "XRqdGPzxXvZPtrhj", "policyVersionId": "eVBnTrsYihhgbeAZ"}, {"isAccepted": false, "localizedPolicyVersionId": "qKD8HJ4X0DetCeJ4", "policyId": "x0wf5mQx6Hs7M5ap", "policyVersionId": "PMc8ZR3bPCJ5n5s6"}], "authType": "EMAILPASSWD", "code": "Sw4twReM5DcHde3f", "country": "kHf7tH8WTOTeBOcY", "dateOfBirth": "hf6nGCnPjiIbJifs", "displayName": "0arKxCcNv8FQCyQB", "emailAddress": "qKxayGvw7MqOsypC", "password": "JmfRnW0spgvjt7eC", "passwordMD5Sum": "LDu6PA3PRnQtB410", "reachMinimumAge": false, "uniqueDisplayName": "R4S3iac6vLeoIULJ", "username": "lWXmQFlef1tSHJf6"}' \
    'sVpwAAKKqmTy0ZSy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'CreateUserFromInvitationV4' test.out

#- 386 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "J7IIUXlBlZMQeSnO", "country": "g5gf1SwrbpmoF4Dv", "dateOfBirth": "NA1wo9IAxV5C71gT", "displayName": "w8BJPFctwUMCRdxX", "languageTag": "OBu3TWmHDVmCGFoD", "uniqueDisplayName": "7aNFj9wORAVqRuNs", "userName": "XxRu4EQqR3KbYWtF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'PublicUpdateUserV4' test.out

#- 387 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "zplXVk36IpbGquPn", "emailAddress": "IPwR1BinZ4ULwAKO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 387 'PublicUpdateUserEmailAddressV4' test.out

#- 388 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "8n42UuxEyfzZJsZd", "country": "9sB6CV9KiWkbdpGq", "dateOfBirth": "WQIPK6mVytM5mBRT", "displayName": "39gKYLk9DmjJh6Pn", "emailAddress": "pTXWAUt8lgqNM4po", "password": "GEvIKCe3MrLxmnjm", "reachMinimumAge": false, "uniqueDisplayName": "Vxvs3ugNvvgI2k1P", "username": "9nQxzj3AnmpWfje5", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 388 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 389 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "vwaZ0py16ShGomFz", "password": "UappaaODZaZ6Vzzt", "username": "nntoxwsNtNxWoH5w"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 389 'PublicUpgradeHeadlessAccountV4' test.out

#- 390 PublicDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-disable-my-authenticator-v4' \
    '{"mfaToken": "VHJVaEnaycYsKkgX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'PublicDisableMyAuthenticatorV4' test.out

#- 391 PublicEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-enable-my-authenticator-v4' \
    '0RMDxvlK9RnTEYv5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 391 'PublicEnableMyAuthenticatorV4' test.out

#- 392 PublicGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-public-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 392 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 393 PublicGetMyBackupCodesV4
eval_tap 0 393 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 394 PublicGenerateMyBackupCodesV4
eval_tap 0 394 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 395 PublicDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-disable-my-backup-codes-v4' \
    '{"mfaToken": "eDhCxwy85vlhWw1R"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 395 'PublicDisableMyBackupCodesV4' test.out

#- 396 PublicDownloadMyBackupCodesV4
eval_tap 0 396 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 397 PublicEnableMyBackupCodesV4
eval_tap 0 397 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 398 PublicGetBackupCodesV4
$PYTHON -m $MODULE 'iam-public-get-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 398 'PublicGetBackupCodesV4' test.out

#- 399 PublicGenerateBackupCodesV4
$PYTHON -m $MODULE 'iam-public-generate-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 399 'PublicGenerateBackupCodesV4' test.out

#- 400 PublicEnableBackupCodesV4
$PYTHON -m $MODULE 'iam-public-enable-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 400 'PublicEnableBackupCodesV4' test.out

#- 401 PublicChallengeMyMFAV4
$PYTHON -m $MODULE 'iam-public-challenge-my-mfav4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 401 'PublicChallengeMyMFAV4' test.out

#- 402 PublicRemoveTrustedDeviceV4
$PYTHON -m $MODULE 'iam-public-remove-trusted-device-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 402 'PublicRemoveTrustedDeviceV4' test.out

#- 403 PublicSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-public-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 403 'PublicSendMyMFAEmailCodeV4' test.out

#- 404 PublicDisableMyEmailV4
$PYTHON -m $MODULE 'iam-public-disable-my-email-v4' \
    '{"mfaToken": "CgHr3f6UqFGCvsMF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 404 'PublicDisableMyEmailV4' test.out

#- 405 PublicEnableMyEmailV4
$PYTHON -m $MODULE 'iam-public-enable-my-email-v4' \
    'EFlXHBOK1RqtKYVO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 405 'PublicEnableMyEmailV4' test.out

#- 406 PublicGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-public-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 406 'PublicGetMyEnabledFactorsV4' test.out

#- 407 PublicMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-public-make-factor-my-default-v4' \
    'bVorIVWWLaVJwe2K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 407 'PublicMakeFactorMyDefaultV4' test.out

#- 408 PublicGetMyOwnMFAStatusV4
$PYTHON -m $MODULE 'iam-public-get-my-own-mfa-status-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 408 'PublicGetMyOwnMFAStatusV4' test.out

#- 409 PublicGetMyMFAStatusV4
eval_tap 0 409 'PublicGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 410 PublicGetUserPublicInfoByUserIdV4
$PYTHON -m $MODULE 'iam-public-get-user-public-info-by-user-id-v4' \
    'Aca1aKeXUu9hINqK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 410 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 411 PublicInviteUserV4
$PYTHON -m $MODULE 'iam-public-invite-user-v4' \
    '{"additionalData": "voYKio4M51vuaFyq", "emailAddress": "jQsTGmzItJIOkEIR", "languageTag": "sSWOV8LyivYbMG9L", "namespace": "XPbBh2E3wFchP3zT", "namespaceDisplayName": "ymfVfny2M0KsS08c"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 411 'PublicInviteUserV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
